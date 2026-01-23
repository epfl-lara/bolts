; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!172358 () Bool)

(assert start!172358)

(declare-fun b!1748041 () Bool)

(declare-fun b_free!48107 () Bool)

(declare-fun b_next!48811 () Bool)

(assert (=> b!1748041 (= b_free!48107 (not b_next!48811))))

(declare-fun tp!497282 () Bool)

(declare-fun b_and!130331 () Bool)

(assert (=> b!1748041 (= tp!497282 b_and!130331)))

(declare-fun b_free!48109 () Bool)

(declare-fun b_next!48813 () Bool)

(assert (=> b!1748041 (= b_free!48109 (not b_next!48813))))

(declare-fun tp!497281 () Bool)

(declare-fun b_and!130333 () Bool)

(assert (=> b!1748041 (= tp!497281 b_and!130333)))

(declare-fun b!1748017 () Bool)

(declare-fun b_free!48111 () Bool)

(declare-fun b_next!48815 () Bool)

(assert (=> b!1748017 (= b_free!48111 (not b_next!48815))))

(declare-fun tp!497287 () Bool)

(declare-fun b_and!130335 () Bool)

(assert (=> b!1748017 (= tp!497287 b_and!130335)))

(declare-fun b_free!48113 () Bool)

(declare-fun b_next!48817 () Bool)

(assert (=> b!1748017 (= b_free!48113 (not b_next!48817))))

(declare-fun tp!497284 () Bool)

(declare-fun b_and!130337 () Bool)

(assert (=> b!1748017 (= tp!497284 b_and!130337)))

(declare-fun b!1748035 () Bool)

(declare-fun b_free!48115 () Bool)

(declare-fun b_next!48819 () Bool)

(assert (=> b!1748035 (= b_free!48115 (not b_next!48819))))

(declare-fun tp!497286 () Bool)

(declare-fun b_and!130339 () Bool)

(assert (=> b!1748035 (= tp!497286 b_and!130339)))

(declare-fun b_free!48117 () Bool)

(declare-fun b_next!48821 () Bool)

(assert (=> b!1748035 (= b_free!48117 (not b_next!48821))))

(declare-fun tp!497285 () Bool)

(declare-fun b_and!130341 () Bool)

(assert (=> b!1748035 (= tp!497285 b_and!130341)))

(declare-fun b!1748052 () Bool)

(declare-fun e!1118607 () Bool)

(assert (=> b!1748052 (= e!1118607 true)))

(declare-fun b!1748051 () Bool)

(declare-fun e!1118606 () Bool)

(assert (=> b!1748051 (= e!1118606 e!1118607)))

(declare-fun b!1748050 () Bool)

(declare-fun e!1118605 () Bool)

(assert (=> b!1748050 (= e!1118605 e!1118606)))

(declare-fun b!1748018 () Bool)

(assert (=> b!1748018 e!1118605))

(assert (= b!1748051 b!1748052))

(assert (= b!1748050 b!1748051))

(assert (= b!1748018 b!1748050))

(declare-fun lambda!69794 () Int)

(declare-fun order!12019 () Int)

(declare-fun order!12021 () Int)

(declare-datatypes ((List!19276 0))(
  ( (Nil!19206) (Cons!19206 (h!24607 (_ BitVec 16)) (t!162523 List!19276)) )
))
(declare-datatypes ((TokenValue!3513 0))(
  ( (FloatLiteralValue!7026 (text!25036 List!19276)) (TokenValueExt!3512 (__x!12328 Int)) (Broken!17565 (value!107202 List!19276)) (Object!3582) (End!3513) (Def!3513) (Underscore!3513) (Match!3513) (Else!3513) (Error!3513) (Case!3513) (If!3513) (Extends!3513) (Abstract!3513) (Class!3513) (Val!3513) (DelimiterValue!7026 (del!3573 List!19276)) (KeywordValue!3519 (value!107203 List!19276)) (CommentValue!7026 (value!107204 List!19276)) (WhitespaceValue!7026 (value!107205 List!19276)) (IndentationValue!3513 (value!107206 List!19276)) (String!21896) (Int32!3513) (Broken!17566 (value!107207 List!19276)) (Boolean!3514) (Unit!33284) (OperatorValue!3516 (op!3573 List!19276)) (IdentifierValue!7026 (value!107208 List!19276)) (IdentifierValue!7027 (value!107209 List!19276)) (WhitespaceValue!7027 (value!107210 List!19276)) (True!7026) (False!7026) (Broken!17567 (value!107211 List!19276)) (Broken!17568 (value!107212 List!19276)) (True!7027) (RightBrace!3513) (RightBracket!3513) (Colon!3513) (Null!3513) (Comma!3513) (LeftBracket!3513) (False!7027) (LeftBrace!3513) (ImaginaryLiteralValue!3513 (text!25037 List!19276)) (StringLiteralValue!10539 (value!107213 List!19276)) (EOFValue!3513 (value!107214 List!19276)) (IdentValue!3513 (value!107215 List!19276)) (DelimiterValue!7027 (value!107216 List!19276)) (DedentValue!3513 (value!107217 List!19276)) (NewLineValue!3513 (value!107218 List!19276)) (IntegerValue!10539 (value!107219 (_ BitVec 32)) (text!25038 List!19276)) (IntegerValue!10540 (value!107220 Int) (text!25039 List!19276)) (Times!3513) (Or!3513) (Equal!3513) (Minus!3513) (Broken!17569 (value!107221 List!19276)) (And!3513) (Div!3513) (LessEqual!3513) (Mod!3513) (Concat!8264) (Not!3513) (Plus!3513) (SpaceValue!3513 (value!107222 List!19276)) (IntegerValue!10541 (value!107223 Int) (text!25040 List!19276)) (StringLiteralValue!10540 (text!25041 List!19276)) (FloatLiteralValue!7027 (text!25042 List!19276)) (BytesLiteralValue!3513 (value!107224 List!19276)) (CommentValue!7027 (value!107225 List!19276)) (StringLiteralValue!10541 (value!107226 List!19276)) (ErrorTokenValue!3513 (msg!3574 List!19276)) )
))
(declare-datatypes ((C!9676 0))(
  ( (C!9677 (val!5434 Int)) )
))
(declare-datatypes ((List!19277 0))(
  ( (Nil!19207) (Cons!19207 (h!24608 C!9676) (t!162524 List!19277)) )
))
(declare-datatypes ((Regex!4751 0))(
  ( (ElementMatch!4751 (c!285186 C!9676)) (Concat!8265 (regOne!10014 Regex!4751) (regTwo!10014 Regex!4751)) (EmptyExpr!4751) (Star!4751 (reg!5080 Regex!4751)) (EmptyLang!4751) (Union!4751 (regOne!10015 Regex!4751) (regTwo!10015 Regex!4751)) )
))
(declare-datatypes ((String!21897 0))(
  ( (String!21898 (value!107227 String)) )
))
(declare-datatypes ((IArray!12783 0))(
  ( (IArray!12784 (innerList!6449 List!19277)) )
))
(declare-datatypes ((Conc!6389 0))(
  ( (Node!6389 (left!15358 Conc!6389) (right!15688 Conc!6389) (csize!13008 Int) (cheight!6600 Int)) (Leaf!9321 (xs!9265 IArray!12783) (csize!13009 Int)) (Empty!6389) )
))
(declare-datatypes ((BalanceConc!12722 0))(
  ( (BalanceConc!12723 (c!285187 Conc!6389)) )
))
(declare-datatypes ((TokenValueInjection!6686 0))(
  ( (TokenValueInjection!6687 (toValue!4938 Int) (toChars!4797 Int)) )
))
(declare-datatypes ((Rule!6646 0))(
  ( (Rule!6647 (regex!3423 Regex!4751) (tag!3771 String!21897) (isSeparator!3423 Bool) (transformation!3423 TokenValueInjection!6686)) )
))
(declare-datatypes ((Token!6412 0))(
  ( (Token!6413 (value!107228 TokenValue!3513) (rule!5429 Rule!6646) (size!15254 Int) (originalCharacters!4237 List!19277)) )
))
(declare-datatypes ((tuple2!18850 0))(
  ( (tuple2!18851 (_1!10827 Token!6412) (_2!10827 List!19277)) )
))
(declare-fun lt!673905 () tuple2!18850)

(declare-fun dynLambda!9114 (Int Int) Int)

(declare-fun dynLambda!9115 (Int Int) Int)

(assert (=> b!1748052 (< (dynLambda!9114 order!12019 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) (dynLambda!9115 order!12021 lambda!69794))))

(declare-fun order!12023 () Int)

(declare-fun dynLambda!9116 (Int Int) Int)

(assert (=> b!1748052 (< (dynLambda!9116 order!12023 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) (dynLambda!9115 order!12021 lambda!69794))))

(declare-fun b!1748014 () Bool)

(declare-fun e!1118576 () Bool)

(declare-fun tp_is_empty!7745 () Bool)

(declare-fun tp!497280 () Bool)

(assert (=> b!1748014 (= e!1118576 (and tp_is_empty!7745 tp!497280))))

(declare-fun b!1748015 () Bool)

(declare-fun token!523 () Token!6412)

(declare-fun tp!497277 () Bool)

(declare-fun e!1118585 () Bool)

(declare-fun e!1118588 () Bool)

(declare-fun inv!21 (TokenValue!3513) Bool)

(assert (=> b!1748015 (= e!1118585 (and (inv!21 (value!107228 token!523)) e!1118588 tp!497277))))

(declare-fun e!1118577 () Bool)

(declare-fun tp!497283 () Bool)

(declare-fun b!1748016 () Bool)

(declare-fun e!1118580 () Bool)

(declare-fun rule!422 () Rule!6646)

(declare-fun inv!24892 (String!21897) Bool)

(declare-fun inv!24897 (TokenValueInjection!6686) Bool)

(assert (=> b!1748016 (= e!1118577 (and tp!497283 (inv!24892 (tag!3771 rule!422)) (inv!24897 (transformation!3423 rule!422)) e!1118580))))

(declare-fun e!1118596 () Bool)

(assert (=> b!1748017 (= e!1118596 (and tp!497287 tp!497284))))

(declare-fun e!1118589 () Bool)

(declare-fun e!1118593 () Bool)

(assert (=> b!1748018 (= e!1118589 e!1118593)))

(declare-fun res!786067 () Bool)

(assert (=> b!1748018 (=> res!786067 e!1118593)))

(declare-fun Forall!792 (Int) Bool)

(assert (=> b!1748018 (= res!786067 (not (Forall!792 lambda!69794)))))

(declare-datatypes ((Unit!33285 0))(
  ( (Unit!33286) )
))
(declare-fun lt!673915 () Unit!33285)

(declare-fun lemmaInv!624 (TokenValueInjection!6686) Unit!33285)

(assert (=> b!1748018 (= lt!673915 (lemmaInv!624 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))))))

(declare-fun b!1748019 () Bool)

(declare-fun e!1118586 () Bool)

(assert (=> b!1748019 (= e!1118593 e!1118586)))

(declare-fun res!786070 () Bool)

(assert (=> b!1748019 (=> res!786070 e!1118586)))

(declare-fun lt!673911 () BalanceConc!12722)

(declare-fun lt!673917 () List!19277)

(declare-fun list!7780 (BalanceConc!12722) List!19277)

(declare-fun dynLambda!9117 (Int TokenValue!3513) BalanceConc!12722)

(declare-fun dynLambda!9118 (Int BalanceConc!12722) TokenValue!3513)

(assert (=> b!1748019 (= res!786070 (not (= (list!7780 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911))) lt!673917)))))

(declare-fun lt!673916 () Unit!33285)

(declare-fun lemmaSemiInverse!563 (TokenValueInjection!6686 BalanceConc!12722) Unit!33285)

(assert (=> b!1748019 (= lt!673916 (lemmaSemiInverse!563 (transformation!3423 (rule!5429 (_1!10827 lt!673905))) lt!673911))))

(declare-fun b!1748020 () Bool)

(declare-fun e!1118582 () Bool)

(declare-fun e!1118598 () Bool)

(assert (=> b!1748020 (= e!1118582 e!1118598)))

(declare-fun res!786058 () Bool)

(assert (=> b!1748020 (=> (not res!786058) (not e!1118598))))

(declare-fun lt!673920 () tuple2!18850)

(assert (=> b!1748020 (= res!786058 (= (_1!10827 lt!673920) token!523))))

(declare-datatypes ((Option!3870 0))(
  ( (None!3869) (Some!3869 (v!25310 tuple2!18850)) )
))
(declare-fun lt!673926 () Option!3870)

(declare-fun get!5799 (Option!3870) tuple2!18850)

(assert (=> b!1748020 (= lt!673920 (get!5799 lt!673926))))

(declare-fun b!1748021 () Bool)

(declare-fun res!786071 () Bool)

(declare-fun e!1118597 () Bool)

(assert (=> b!1748021 (=> res!786071 e!1118597)))

(declare-fun suffix!1421 () List!19277)

(declare-fun isEmpty!12103 (List!19277) Bool)

(assert (=> b!1748021 (= res!786071 (isEmpty!12103 suffix!1421))))

(declare-fun b!1748022 () Bool)

(declare-fun res!786066 () Bool)

(assert (=> b!1748022 (=> res!786066 e!1118589)))

(declare-fun matchR!2225 (Regex!4751 List!19277) Bool)

(assert (=> b!1748022 (= res!786066 (not (matchR!2225 (regex!3423 (rule!5429 (_1!10827 lt!673905))) lt!673917)))))

(declare-fun res!786069 () Bool)

(declare-fun e!1118579 () Bool)

(assert (=> start!172358 (=> (not res!786069) (not e!1118579))))

(declare-datatypes ((LexerInterface!3052 0))(
  ( (LexerInterfaceExt!3049 (__x!12329 Int)) (Lexer!3050) )
))
(declare-fun thiss!24550 () LexerInterface!3052)

(get-info :version)

(assert (=> start!172358 (= res!786069 ((_ is Lexer!3050) thiss!24550))))

(assert (=> start!172358 e!1118579))

(assert (=> start!172358 e!1118576))

(assert (=> start!172358 e!1118577))

(assert (=> start!172358 true))

(declare-fun inv!24898 (Token!6412) Bool)

(assert (=> start!172358 (and (inv!24898 token!523) e!1118585)))

(declare-fun e!1118578 () Bool)

(assert (=> start!172358 e!1118578))

(declare-fun b!1748023 () Bool)

(declare-fun res!786059 () Bool)

(assert (=> b!1748023 (=> (not res!786059) (not e!1118579))))

(declare-datatypes ((List!19278 0))(
  ( (Nil!19208) (Cons!19208 (h!24609 Rule!6646) (t!162525 List!19278)) )
))
(declare-fun rules!3447 () List!19278)

(declare-fun isEmpty!12104 (List!19278) Bool)

(assert (=> b!1748023 (= res!786059 (not (isEmpty!12104 rules!3447)))))

(declare-fun b!1748024 () Bool)

(declare-fun res!786057 () Bool)

(assert (=> b!1748024 (=> res!786057 e!1118586)))

(assert (=> b!1748024 (= res!786057 (not (= lt!673911 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (value!107228 (_1!10827 lt!673905))))))))

(declare-fun b!1748025 () Bool)

(declare-fun e!1118581 () Bool)

(declare-fun tp!497279 () Bool)

(assert (=> b!1748025 (= e!1118578 (and e!1118581 tp!497279))))

(declare-fun b!1748026 () Bool)

(declare-fun e!1118591 () Bool)

(assert (=> b!1748026 (= e!1118586 e!1118591)))

(declare-fun res!786065 () Bool)

(assert (=> b!1748026 (=> res!786065 e!1118591)))

(declare-fun lt!673919 () Option!3870)

(declare-fun apply!5224 (TokenValueInjection!6686 BalanceConc!12722) TokenValue!3513)

(declare-fun size!15255 (BalanceConc!12722) Int)

(assert (=> b!1748026 (= res!786065 (not (= lt!673919 (Some!3869 (tuple2!18851 (Token!6413 (apply!5224 (transformation!3423 (rule!5429 (_1!10827 lt!673905))) lt!673911) (rule!5429 (_1!10827 lt!673905)) (size!15255 lt!673911) lt!673917) (_2!10827 lt!673905))))))))

(declare-fun lt!673923 () Unit!33285)

(declare-fun lemmaCharactersSize!483 (Token!6412) Unit!33285)

(assert (=> b!1748026 (= lt!673923 (lemmaCharactersSize!483 (_1!10827 lt!673905)))))

(declare-fun lt!673927 () Unit!33285)

(declare-fun lemmaEqSameImage!336 (TokenValueInjection!6686 BalanceConc!12722 BalanceConc!12722) Unit!33285)

(declare-fun seqFromList!2393 (List!19277) BalanceConc!12722)

(assert (=> b!1748026 (= lt!673927 (lemmaEqSameImage!336 (transformation!3423 (rule!5429 (_1!10827 lt!673905))) lt!673911 (seqFromList!2393 (originalCharacters!4237 (_1!10827 lt!673905)))))))

(declare-fun b!1748027 () Bool)

(declare-fun res!786061 () Bool)

(assert (=> b!1748027 (=> (not res!786061) (not e!1118579))))

(declare-fun rulesInvariant!2721 (LexerInterface!3052 List!19278) Bool)

(assert (=> b!1748027 (= res!786061 (rulesInvariant!2721 thiss!24550 rules!3447))))

(declare-fun b!1748028 () Bool)

(declare-fun res!786056 () Bool)

(assert (=> b!1748028 (=> (not res!786056) (not e!1118598))))

(assert (=> b!1748028 (= res!786056 (isEmpty!12103 (_2!10827 lt!673920)))))

(declare-fun b!1748029 () Bool)

(assert (=> b!1748029 (= e!1118598 (not e!1118597))))

(declare-fun res!786064 () Bool)

(assert (=> b!1748029 (=> res!786064 e!1118597)))

(declare-fun lt!673907 () List!19277)

(assert (=> b!1748029 (= res!786064 (not (matchR!2225 (regex!3423 rule!422) lt!673907)))))

(declare-fun ruleValid!922 (LexerInterface!3052 Rule!6646) Bool)

(assert (=> b!1748029 (ruleValid!922 thiss!24550 rule!422)))

(declare-fun lt!673913 () Unit!33285)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!446 (LexerInterface!3052 Rule!6646 List!19278) Unit!33285)

(assert (=> b!1748029 (= lt!673913 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!446 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1748030 () Bool)

(declare-fun res!786068 () Bool)

(assert (=> b!1748030 (=> res!786068 e!1118597)))

(declare-fun prefixMatch!636 (Regex!4751 List!19277) Bool)

(declare-fun rulesRegex!781 (LexerInterface!3052 List!19278) Regex!4751)

(declare-fun ++!5248 (List!19277 List!19277) List!19277)

(declare-fun head!4018 (List!19277) C!9676)

(assert (=> b!1748030 (= res!786068 (prefixMatch!636 (rulesRegex!781 thiss!24550 rules!3447) (++!5248 lt!673907 (Cons!19207 (head!4018 suffix!1421) Nil!19207))))))

(declare-fun b!1748031 () Bool)

(declare-fun e!1118583 () Bool)

(declare-fun lt!673912 () Rule!6646)

(assert (=> b!1748031 (= e!1118583 (= (rule!5429 (_1!10827 lt!673905)) lt!673912))))

(declare-fun tp!497278 () Bool)

(declare-fun b!1748032 () Bool)

(assert (=> b!1748032 (= e!1118588 (and tp!497278 (inv!24892 (tag!3771 (rule!5429 token!523))) (inv!24897 (transformation!3423 (rule!5429 token!523))) e!1118596))))

(declare-fun b!1748033 () Bool)

(assert (=> b!1748033 (= e!1118579 e!1118582)))

(declare-fun res!786073 () Bool)

(assert (=> b!1748033 (=> (not res!786073) (not e!1118582))))

(declare-fun isDefined!3213 (Option!3870) Bool)

(assert (=> b!1748033 (= res!786073 (isDefined!3213 lt!673926))))

(declare-fun maxPrefix!1606 (LexerInterface!3052 List!19278 List!19277) Option!3870)

(assert (=> b!1748033 (= lt!673926 (maxPrefix!1606 thiss!24550 rules!3447 lt!673907))))

(declare-fun charsOf!2072 (Token!6412) BalanceConc!12722)

(assert (=> b!1748033 (= lt!673907 (list!7780 (charsOf!2072 token!523)))))

(declare-fun b!1748034 () Bool)

(assert (=> b!1748034 (= e!1118597 e!1118589)))

(declare-fun res!786062 () Bool)

(assert (=> b!1748034 (=> res!786062 e!1118589)))

(declare-fun lt!673906 () List!19277)

(declare-fun isPrefix!1664 (List!19277 List!19277) Bool)

(assert (=> b!1748034 (= res!786062 (not (isPrefix!1664 lt!673917 lt!673906)))))

(assert (=> b!1748034 (isPrefix!1664 lt!673917 (++!5248 lt!673917 (_2!10827 lt!673905)))))

(declare-fun lt!673910 () Unit!33285)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1174 (List!19277 List!19277) Unit!33285)

(assert (=> b!1748034 (= lt!673910 (lemmaConcatTwoListThenFirstIsPrefix!1174 lt!673917 (_2!10827 lt!673905)))))

(assert (=> b!1748034 (= lt!673917 (list!7780 lt!673911))))

(assert (=> b!1748034 (= lt!673911 (charsOf!2072 (_1!10827 lt!673905)))))

(declare-fun e!1118594 () Bool)

(assert (=> b!1748034 e!1118594))

(declare-fun res!786074 () Bool)

(assert (=> b!1748034 (=> (not res!786074) (not e!1118594))))

(declare-datatypes ((Option!3871 0))(
  ( (None!3870) (Some!3870 (v!25311 Rule!6646)) )
))
(declare-fun lt!673914 () Option!3871)

(declare-fun isDefined!3214 (Option!3871) Bool)

(assert (=> b!1748034 (= res!786074 (isDefined!3214 lt!673914))))

(declare-fun getRuleFromTag!473 (LexerInterface!3052 List!19278 String!21897) Option!3871)

(assert (=> b!1748034 (= lt!673914 (getRuleFromTag!473 thiss!24550 rules!3447 (tag!3771 (rule!5429 (_1!10827 lt!673905)))))))

(declare-fun lt!673909 () Unit!33285)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!473 (LexerInterface!3052 List!19278 List!19277 Token!6412) Unit!33285)

(assert (=> b!1748034 (= lt!673909 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!473 thiss!24550 rules!3447 lt!673906 (_1!10827 lt!673905)))))

(assert (=> b!1748034 (= lt!673905 (get!5799 lt!673919))))

(declare-fun lt!673918 () Unit!33285)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!576 (LexerInterface!3052 List!19278 List!19277 List!19277) Unit!33285)

(assert (=> b!1748034 (= lt!673918 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!576 thiss!24550 rules!3447 lt!673907 suffix!1421))))

(assert (=> b!1748034 (= lt!673919 (maxPrefix!1606 thiss!24550 rules!3447 lt!673906))))

(assert (=> b!1748034 (isPrefix!1664 lt!673907 lt!673906)))

(declare-fun lt!673904 () Unit!33285)

(assert (=> b!1748034 (= lt!673904 (lemmaConcatTwoListThenFirstIsPrefix!1174 lt!673907 suffix!1421))))

(assert (=> b!1748034 (= lt!673906 (++!5248 lt!673907 suffix!1421))))

(declare-fun e!1118590 () Bool)

(assert (=> b!1748035 (= e!1118590 (and tp!497286 tp!497285))))

(declare-fun lt!673921 () Option!3870)

(declare-fun b!1748036 () Bool)

(declare-fun lt!673922 () List!19277)

(assert (=> b!1748036 (= e!1118591 (or (not (= lt!673922 (_2!10827 lt!673905))) (= lt!673921 (Some!3869 (tuple2!18851 (_1!10827 lt!673905) lt!673922)))))))

(assert (=> b!1748036 (= (_2!10827 lt!673905) lt!673922)))

(declare-fun lt!673924 () Unit!33285)

(declare-fun lemmaSamePrefixThenSameSuffix!794 (List!19277 List!19277 List!19277 List!19277 List!19277) Unit!33285)

(assert (=> b!1748036 (= lt!673924 (lemmaSamePrefixThenSameSuffix!794 lt!673917 (_2!10827 lt!673905) lt!673917 lt!673922 lt!673906))))

(declare-fun getSuffix!844 (List!19277 List!19277) List!19277)

(assert (=> b!1748036 (= lt!673922 (getSuffix!844 lt!673906 lt!673917))))

(declare-fun lt!673925 () TokenValue!3513)

(declare-fun lt!673908 () Int)

(assert (=> b!1748036 (= lt!673921 (Some!3869 (tuple2!18851 (Token!6413 lt!673925 (rule!5429 (_1!10827 lt!673905)) lt!673908 lt!673917) (_2!10827 lt!673905))))))

(declare-fun maxPrefixOneRule!978 (LexerInterface!3052 Rule!6646 List!19277) Option!3870)

(assert (=> b!1748036 (= lt!673921 (maxPrefixOneRule!978 thiss!24550 (rule!5429 (_1!10827 lt!673905)) lt!673906))))

(declare-fun size!15256 (List!19277) Int)

(assert (=> b!1748036 (= lt!673908 (size!15256 lt!673917))))

(assert (=> b!1748036 (= lt!673925 (apply!5224 (transformation!3423 (rule!5429 (_1!10827 lt!673905))) (seqFromList!2393 lt!673917)))))

(declare-fun lt!673928 () Unit!33285)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!367 (LexerInterface!3052 List!19278 List!19277 List!19277 List!19277 Rule!6646) Unit!33285)

(assert (=> b!1748036 (= lt!673928 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!367 thiss!24550 rules!3447 lt!673917 lt!673906 (_2!10827 lt!673905) (rule!5429 (_1!10827 lt!673905))))))

(declare-fun b!1748037 () Bool)

(declare-fun res!786063 () Bool)

(assert (=> b!1748037 (=> (not res!786063) (not e!1118579))))

(declare-fun contains!3449 (List!19278 Rule!6646) Bool)

(assert (=> b!1748037 (= res!786063 (contains!3449 rules!3447 rule!422))))

(declare-fun b!1748038 () Bool)

(assert (=> b!1748038 (= e!1118594 e!1118583)))

(declare-fun res!786072 () Bool)

(assert (=> b!1748038 (=> (not res!786072) (not e!1118583))))

(assert (=> b!1748038 (= res!786072 (matchR!2225 (regex!3423 lt!673912) (list!7780 (charsOf!2072 (_1!10827 lt!673905)))))))

(declare-fun get!5800 (Option!3871) Rule!6646)

(assert (=> b!1748038 (= lt!673912 (get!5800 lt!673914))))

(declare-fun b!1748039 () Bool)

(declare-fun res!786060 () Bool)

(assert (=> b!1748039 (=> (not res!786060) (not e!1118598))))

(assert (=> b!1748039 (= res!786060 (= (rule!5429 token!523) rule!422))))

(declare-fun tp!497288 () Bool)

(declare-fun b!1748040 () Bool)

(assert (=> b!1748040 (= e!1118581 (and tp!497288 (inv!24892 (tag!3771 (h!24609 rules!3447))) (inv!24897 (transformation!3423 (h!24609 rules!3447))) e!1118590))))

(assert (=> b!1748041 (= e!1118580 (and tp!497282 tp!497281))))

(assert (= (and start!172358 res!786069) b!1748023))

(assert (= (and b!1748023 res!786059) b!1748027))

(assert (= (and b!1748027 res!786061) b!1748037))

(assert (= (and b!1748037 res!786063) b!1748033))

(assert (= (and b!1748033 res!786073) b!1748020))

(assert (= (and b!1748020 res!786058) b!1748028))

(assert (= (and b!1748028 res!786056) b!1748039))

(assert (= (and b!1748039 res!786060) b!1748029))

(assert (= (and b!1748029 (not res!786064)) b!1748021))

(assert (= (and b!1748021 (not res!786071)) b!1748030))

(assert (= (and b!1748030 (not res!786068)) b!1748034))

(assert (= (and b!1748034 res!786074) b!1748038))

(assert (= (and b!1748038 res!786072) b!1748031))

(assert (= (and b!1748034 (not res!786062)) b!1748022))

(assert (= (and b!1748022 (not res!786066)) b!1748018))

(assert (= (and b!1748018 (not res!786067)) b!1748019))

(assert (= (and b!1748019 (not res!786070)) b!1748024))

(assert (= (and b!1748024 (not res!786057)) b!1748026))

(assert (= (and b!1748026 (not res!786065)) b!1748036))

(assert (= (and start!172358 ((_ is Cons!19207) suffix!1421)) b!1748014))

(assert (= b!1748016 b!1748041))

(assert (= start!172358 b!1748016))

(assert (= b!1748032 b!1748017))

(assert (= b!1748015 b!1748032))

(assert (= start!172358 b!1748015))

(assert (= b!1748040 b!1748035))

(assert (= b!1748025 b!1748040))

(assert (= (and start!172358 ((_ is Cons!19208) rules!3447)) b!1748025))

(declare-fun b_lambda!56111 () Bool)

(assert (=> (not b_lambda!56111) (not b!1748019)))

(declare-fun t!162506 () Bool)

(declare-fun tb!104657 () Bool)

(assert (=> (and b!1748041 (= (toChars!4797 (transformation!3423 rule!422)) (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) t!162506) tb!104657))

(declare-fun tp!497291 () Bool)

(declare-fun b!1748057 () Bool)

(declare-fun e!1118610 () Bool)

(declare-fun inv!24899 (Conc!6389) Bool)

(assert (=> b!1748057 (= e!1118610 (and (inv!24899 (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911)))) tp!497291))))

(declare-fun result!125884 () Bool)

(declare-fun inv!24900 (BalanceConc!12722) Bool)

(assert (=> tb!104657 (= result!125884 (and (inv!24900 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911))) e!1118610))))

(assert (= tb!104657 b!1748057))

(declare-fun m!2160665 () Bool)

(assert (=> b!1748057 m!2160665))

(declare-fun m!2160667 () Bool)

(assert (=> tb!104657 m!2160667))

(assert (=> b!1748019 t!162506))

(declare-fun b_and!130343 () Bool)

(assert (= b_and!130333 (and (=> t!162506 result!125884) b_and!130343)))

(declare-fun t!162508 () Bool)

(declare-fun tb!104659 () Bool)

(assert (=> (and b!1748017 (= (toChars!4797 (transformation!3423 (rule!5429 token!523))) (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) t!162508) tb!104659))

(declare-fun result!125888 () Bool)

(assert (= result!125888 result!125884))

(assert (=> b!1748019 t!162508))

(declare-fun b_and!130345 () Bool)

(assert (= b_and!130337 (and (=> t!162508 result!125888) b_and!130345)))

(declare-fun t!162510 () Bool)

(declare-fun tb!104661 () Bool)

(assert (=> (and b!1748035 (= (toChars!4797 (transformation!3423 (h!24609 rules!3447))) (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) t!162510) tb!104661))

(declare-fun result!125890 () Bool)

(assert (= result!125890 result!125884))

(assert (=> b!1748019 t!162510))

(declare-fun b_and!130347 () Bool)

(assert (= b_and!130341 (and (=> t!162510 result!125890) b_and!130347)))

(declare-fun b_lambda!56113 () Bool)

(assert (=> (not b_lambda!56113) (not b!1748019)))

(declare-fun tb!104663 () Bool)

(declare-fun t!162512 () Bool)

(assert (=> (and b!1748041 (= (toValue!4938 (transformation!3423 rule!422)) (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) t!162512) tb!104663))

(declare-fun result!125892 () Bool)

(assert (=> tb!104663 (= result!125892 (inv!21 (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911)))))

(declare-fun m!2160669 () Bool)

(assert (=> tb!104663 m!2160669))

(assert (=> b!1748019 t!162512))

(declare-fun b_and!130349 () Bool)

(assert (= b_and!130331 (and (=> t!162512 result!125892) b_and!130349)))

(declare-fun t!162514 () Bool)

(declare-fun tb!104665 () Bool)

(assert (=> (and b!1748017 (= (toValue!4938 (transformation!3423 (rule!5429 token!523))) (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) t!162514) tb!104665))

(declare-fun result!125896 () Bool)

(assert (= result!125896 result!125892))

(assert (=> b!1748019 t!162514))

(declare-fun b_and!130351 () Bool)

(assert (= b_and!130335 (and (=> t!162514 result!125896) b_and!130351)))

(declare-fun t!162516 () Bool)

(declare-fun tb!104667 () Bool)

(assert (=> (and b!1748035 (= (toValue!4938 (transformation!3423 (h!24609 rules!3447))) (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) t!162516) tb!104667))

(declare-fun result!125898 () Bool)

(assert (= result!125898 result!125892))

(assert (=> b!1748019 t!162516))

(declare-fun b_and!130353 () Bool)

(assert (= b_and!130339 (and (=> t!162516 result!125898) b_and!130353)))

(declare-fun b_lambda!56115 () Bool)

(assert (=> (not b_lambda!56115) (not b!1748024)))

(declare-fun tb!104669 () Bool)

(declare-fun t!162518 () Bool)

(assert (=> (and b!1748041 (= (toChars!4797 (transformation!3423 rule!422)) (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) t!162518) tb!104669))

(declare-fun b!1748060 () Bool)

(declare-fun e!1118614 () Bool)

(declare-fun tp!497292 () Bool)

(assert (=> b!1748060 (= e!1118614 (and (inv!24899 (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (value!107228 (_1!10827 lt!673905))))) tp!497292))))

(declare-fun result!125900 () Bool)

(assert (=> tb!104669 (= result!125900 (and (inv!24900 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (value!107228 (_1!10827 lt!673905)))) e!1118614))))

(assert (= tb!104669 b!1748060))

(declare-fun m!2160671 () Bool)

(assert (=> b!1748060 m!2160671))

(declare-fun m!2160673 () Bool)

(assert (=> tb!104669 m!2160673))

(assert (=> b!1748024 t!162518))

(declare-fun b_and!130355 () Bool)

(assert (= b_and!130343 (and (=> t!162518 result!125900) b_and!130355)))

(declare-fun tb!104671 () Bool)

(declare-fun t!162520 () Bool)

(assert (=> (and b!1748017 (= (toChars!4797 (transformation!3423 (rule!5429 token!523))) (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) t!162520) tb!104671))

(declare-fun result!125902 () Bool)

(assert (= result!125902 result!125900))

(assert (=> b!1748024 t!162520))

(declare-fun b_and!130357 () Bool)

(assert (= b_and!130345 (and (=> t!162520 result!125902) b_and!130357)))

(declare-fun tb!104673 () Bool)

(declare-fun t!162522 () Bool)

(assert (=> (and b!1748035 (= (toChars!4797 (transformation!3423 (h!24609 rules!3447))) (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) t!162522) tb!104673))

(declare-fun result!125904 () Bool)

(assert (= result!125904 result!125900))

(assert (=> b!1748024 t!162522))

(declare-fun b_and!130359 () Bool)

(assert (= b_and!130347 (and (=> t!162522 result!125904) b_and!130359)))

(declare-fun m!2160675 () Bool)

(assert (=> b!1748029 m!2160675))

(declare-fun m!2160677 () Bool)

(assert (=> b!1748029 m!2160677))

(declare-fun m!2160679 () Bool)

(assert (=> b!1748029 m!2160679))

(declare-fun m!2160681 () Bool)

(assert (=> b!1748019 m!2160681))

(assert (=> b!1748019 m!2160681))

(declare-fun m!2160683 () Bool)

(assert (=> b!1748019 m!2160683))

(assert (=> b!1748019 m!2160683))

(declare-fun m!2160685 () Bool)

(assert (=> b!1748019 m!2160685))

(declare-fun m!2160687 () Bool)

(assert (=> b!1748019 m!2160687))

(declare-fun m!2160689 () Bool)

(assert (=> b!1748020 m!2160689))

(declare-fun m!2160691 () Bool)

(assert (=> b!1748034 m!2160691))

(declare-fun m!2160693 () Bool)

(assert (=> b!1748034 m!2160693))

(declare-fun m!2160695 () Bool)

(assert (=> b!1748034 m!2160695))

(declare-fun m!2160697 () Bool)

(assert (=> b!1748034 m!2160697))

(declare-fun m!2160699 () Bool)

(assert (=> b!1748034 m!2160699))

(declare-fun m!2160701 () Bool)

(assert (=> b!1748034 m!2160701))

(declare-fun m!2160703 () Bool)

(assert (=> b!1748034 m!2160703))

(declare-fun m!2160705 () Bool)

(assert (=> b!1748034 m!2160705))

(declare-fun m!2160707 () Bool)

(assert (=> b!1748034 m!2160707))

(declare-fun m!2160709 () Bool)

(assert (=> b!1748034 m!2160709))

(assert (=> b!1748034 m!2160701))

(declare-fun m!2160711 () Bool)

(assert (=> b!1748034 m!2160711))

(declare-fun m!2160713 () Bool)

(assert (=> b!1748034 m!2160713))

(declare-fun m!2160715 () Bool)

(assert (=> b!1748034 m!2160715))

(declare-fun m!2160717 () Bool)

(assert (=> b!1748034 m!2160717))

(declare-fun m!2160719 () Bool)

(assert (=> b!1748034 m!2160719))

(declare-fun m!2160721 () Bool)

(assert (=> b!1748021 m!2160721))

(declare-fun m!2160723 () Bool)

(assert (=> b!1748026 m!2160723))

(declare-fun m!2160725 () Bool)

(assert (=> b!1748026 m!2160725))

(declare-fun m!2160727 () Bool)

(assert (=> b!1748026 m!2160727))

(declare-fun m!2160729 () Bool)

(assert (=> b!1748026 m!2160729))

(assert (=> b!1748026 m!2160725))

(declare-fun m!2160731 () Bool)

(assert (=> b!1748026 m!2160731))

(declare-fun m!2160733 () Bool)

(assert (=> b!1748037 m!2160733))

(declare-fun m!2160735 () Bool)

(assert (=> b!1748023 m!2160735))

(declare-fun m!2160737 () Bool)

(assert (=> b!1748022 m!2160737))

(declare-fun m!2160739 () Bool)

(assert (=> b!1748036 m!2160739))

(declare-fun m!2160741 () Bool)

(assert (=> b!1748036 m!2160741))

(declare-fun m!2160743 () Bool)

(assert (=> b!1748036 m!2160743))

(declare-fun m!2160745 () Bool)

(assert (=> b!1748036 m!2160745))

(declare-fun m!2160747 () Bool)

(assert (=> b!1748036 m!2160747))

(assert (=> b!1748036 m!2160741))

(declare-fun m!2160749 () Bool)

(assert (=> b!1748036 m!2160749))

(declare-fun m!2160751 () Bool)

(assert (=> b!1748036 m!2160751))

(declare-fun m!2160753 () Bool)

(assert (=> b!1748030 m!2160753))

(declare-fun m!2160755 () Bool)

(assert (=> b!1748030 m!2160755))

(declare-fun m!2160757 () Bool)

(assert (=> b!1748030 m!2160757))

(assert (=> b!1748030 m!2160753))

(assert (=> b!1748030 m!2160757))

(declare-fun m!2160759 () Bool)

(assert (=> b!1748030 m!2160759))

(assert (=> b!1748038 m!2160695))

(assert (=> b!1748038 m!2160695))

(declare-fun m!2160761 () Bool)

(assert (=> b!1748038 m!2160761))

(assert (=> b!1748038 m!2160761))

(declare-fun m!2160763 () Bool)

(assert (=> b!1748038 m!2160763))

(declare-fun m!2160765 () Bool)

(assert (=> b!1748038 m!2160765))

(declare-fun m!2160767 () Bool)

(assert (=> b!1748027 m!2160767))

(declare-fun m!2160769 () Bool)

(assert (=> start!172358 m!2160769))

(declare-fun m!2160771 () Bool)

(assert (=> b!1748016 m!2160771))

(declare-fun m!2160773 () Bool)

(assert (=> b!1748016 m!2160773))

(declare-fun m!2160775 () Bool)

(assert (=> b!1748040 m!2160775))

(declare-fun m!2160777 () Bool)

(assert (=> b!1748040 m!2160777))

(declare-fun m!2160779 () Bool)

(assert (=> b!1748015 m!2160779))

(declare-fun m!2160781 () Bool)

(assert (=> b!1748018 m!2160781))

(declare-fun m!2160783 () Bool)

(assert (=> b!1748018 m!2160783))

(declare-fun m!2160785 () Bool)

(assert (=> b!1748033 m!2160785))

(declare-fun m!2160787 () Bool)

(assert (=> b!1748033 m!2160787))

(declare-fun m!2160789 () Bool)

(assert (=> b!1748033 m!2160789))

(assert (=> b!1748033 m!2160789))

(declare-fun m!2160791 () Bool)

(assert (=> b!1748033 m!2160791))

(declare-fun m!2160793 () Bool)

(assert (=> b!1748032 m!2160793))

(declare-fun m!2160795 () Bool)

(assert (=> b!1748032 m!2160795))

(declare-fun m!2160797 () Bool)

(assert (=> b!1748024 m!2160797))

(declare-fun m!2160799 () Bool)

(assert (=> b!1748028 m!2160799))

(check-sat (not b!1748021) (not b!1748023) (not b!1748060) (not b!1748030) (not b!1748019) b_and!130357 (not tb!104657) (not tb!104669) b_and!130349 tp_is_empty!7745 (not b!1748022) (not b_next!48811) b_and!130359 (not b!1748020) (not b_next!48819) (not b_next!48813) (not tb!104663) (not b_lambda!56111) (not start!172358) (not b!1748034) (not b!1748016) (not b!1748040) (not b!1748025) (not b_next!48817) (not b_next!48815) (not b!1748038) (not b!1748028) (not b!1748026) (not b_lambda!56115) (not b!1748032) (not b!1748015) (not b!1748033) (not b!1748037) (not b!1748057) (not b!1748027) b_and!130351 (not b!1748014) b_and!130353 (not b!1748029) (not b_lambda!56113) (not b!1748036) (not b_next!48821) (not b!1748018) b_and!130355)
(check-sat b_and!130357 b_and!130351 b_and!130349 b_and!130353 (not b_next!48821) (not b_next!48811) b_and!130355 b_and!130359 (not b_next!48819) (not b_next!48813) (not b_next!48817) (not b_next!48815))
(get-model)

(declare-fun d!534380 () Bool)

(declare-fun choose!10782 (Int) Bool)

(assert (=> d!534380 (= (Forall!792 lambda!69794) (choose!10782 lambda!69794))))

(declare-fun bs!403439 () Bool)

(assert (= bs!403439 d!534380))

(declare-fun m!2160817 () Bool)

(assert (=> bs!403439 m!2160817))

(assert (=> b!1748018 d!534380))

(declare-fun d!534382 () Bool)

(declare-fun e!1118623 () Bool)

(assert (=> d!534382 e!1118623))

(declare-fun res!786077 () Bool)

(assert (=> d!534382 (=> (not res!786077) (not e!1118623))))

(declare-fun semiInverseModEq!1356 (Int Int) Bool)

(assert (=> d!534382 (= res!786077 (semiInverseModEq!1356 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))))))

(declare-fun Unit!33287 () Unit!33285)

(assert (=> d!534382 (= (lemmaInv!624 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) Unit!33287)))

(declare-fun b!1748075 () Bool)

(declare-fun equivClasses!1297 (Int Int) Bool)

(assert (=> b!1748075 (= e!1118623 (equivClasses!1297 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))))))

(assert (= (and d!534382 res!786077) b!1748075))

(declare-fun m!2160819 () Bool)

(assert (=> d!534382 m!2160819))

(declare-fun m!2160821 () Bool)

(assert (=> b!1748075 m!2160821))

(assert (=> b!1748018 d!534382))

(declare-fun d!534384 () Bool)

(declare-fun isBalanced!1996 (Conc!6389) Bool)

(assert (=> d!534384 (= (inv!24900 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911))) (isBalanced!1996 (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911)))))))

(declare-fun bs!403440 () Bool)

(assert (= bs!403440 d!534384))

(declare-fun m!2160823 () Bool)

(assert (=> bs!403440 m!2160823))

(assert (=> tb!104657 d!534384))

(declare-fun b!1748086 () Bool)

(declare-fun e!1118632 () Bool)

(declare-fun inv!16 (TokenValue!3513) Bool)

(assert (=> b!1748086 (= e!1118632 (inv!16 (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911)))))

(declare-fun d!534386 () Bool)

(declare-fun c!285198 () Bool)

(assert (=> d!534386 (= c!285198 ((_ is IntegerValue!10539) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911)))))

(assert (=> d!534386 (= (inv!21 (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911)) e!1118632)))

(declare-fun b!1748087 () Bool)

(declare-fun e!1118631 () Bool)

(declare-fun inv!15 (TokenValue!3513) Bool)

(assert (=> b!1748087 (= e!1118631 (inv!15 (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911)))))

(declare-fun b!1748088 () Bool)

(declare-fun res!786080 () Bool)

(assert (=> b!1748088 (=> res!786080 e!1118631)))

(assert (=> b!1748088 (= res!786080 (not ((_ is IntegerValue!10541) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911))))))

(declare-fun e!1118630 () Bool)

(assert (=> b!1748088 (= e!1118630 e!1118631)))

(declare-fun b!1748089 () Bool)

(assert (=> b!1748089 (= e!1118632 e!1118630)))

(declare-fun c!285199 () Bool)

(assert (=> b!1748089 (= c!285199 ((_ is IntegerValue!10540) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911)))))

(declare-fun b!1748090 () Bool)

(declare-fun inv!17 (TokenValue!3513) Bool)

(assert (=> b!1748090 (= e!1118630 (inv!17 (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911)))))

(assert (= (and d!534386 c!285198) b!1748086))

(assert (= (and d!534386 (not c!285198)) b!1748089))

(assert (= (and b!1748089 c!285199) b!1748090))

(assert (= (and b!1748089 (not c!285199)) b!1748088))

(assert (= (and b!1748088 (not res!786080)) b!1748087))

(declare-fun m!2160825 () Bool)

(assert (=> b!1748086 m!2160825))

(declare-fun m!2160827 () Bool)

(assert (=> b!1748087 m!2160827))

(declare-fun m!2160829 () Bool)

(assert (=> b!1748090 m!2160829))

(assert (=> tb!104663 d!534386))

(declare-fun d!534388 () Bool)

(declare-fun list!7781 (Conc!6389) List!19277)

(assert (=> d!534388 (= (list!7780 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911))) (list!7781 (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911)))))))

(declare-fun bs!403441 () Bool)

(assert (= bs!403441 d!534388))

(declare-fun m!2160831 () Bool)

(assert (=> bs!403441 m!2160831))

(assert (=> b!1748019 d!534388))

(declare-fun bs!403442 () Bool)

(declare-fun d!534390 () Bool)

(assert (= bs!403442 (and d!534390 b!1748018)))

(declare-fun lambda!69797 () Int)

(assert (=> bs!403442 (= lambda!69797 lambda!69794)))

(declare-fun b!1748113 () Bool)

(declare-fun e!1118643 () Bool)

(assert (=> b!1748113 (= e!1118643 true)))

(assert (=> d!534390 e!1118643))

(assert (= d!534390 b!1748113))

(assert (=> b!1748113 (< (dynLambda!9114 order!12019 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) (dynLambda!9115 order!12021 lambda!69797))))

(assert (=> b!1748113 (< (dynLambda!9116 order!12023 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) (dynLambda!9115 order!12021 lambda!69797))))

(assert (=> d!534390 (= (list!7780 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911))) (list!7780 lt!673911))))

(declare-fun lt!673943 () Unit!33285)

(declare-fun ForallOf!295 (Int BalanceConc!12722) Unit!33285)

(assert (=> d!534390 (= lt!673943 (ForallOf!295 lambda!69797 lt!673911))))

(assert (=> d!534390 (= (lemmaSemiInverse!563 (transformation!3423 (rule!5429 (_1!10827 lt!673905))) lt!673911) lt!673943)))

(declare-fun b_lambda!56117 () Bool)

(assert (=> (not b_lambda!56117) (not d!534390)))

(assert (=> d!534390 t!162506))

(declare-fun b_and!130361 () Bool)

(assert (= b_and!130355 (and (=> t!162506 result!125884) b_and!130361)))

(assert (=> d!534390 t!162508))

(declare-fun b_and!130363 () Bool)

(assert (= b_and!130357 (and (=> t!162508 result!125888) b_and!130363)))

(assert (=> d!534390 t!162510))

(declare-fun b_and!130365 () Bool)

(assert (= b_and!130359 (and (=> t!162510 result!125890) b_and!130365)))

(declare-fun b_lambda!56119 () Bool)

(assert (=> (not b_lambda!56119) (not d!534390)))

(assert (=> d!534390 t!162512))

(declare-fun b_and!130367 () Bool)

(assert (= b_and!130349 (and (=> t!162512 result!125892) b_and!130367)))

(assert (=> d!534390 t!162514))

(declare-fun b_and!130369 () Bool)

(assert (= b_and!130351 (and (=> t!162514 result!125896) b_and!130369)))

(assert (=> d!534390 t!162516))

(declare-fun b_and!130371 () Bool)

(assert (= b_and!130353 (and (=> t!162516 result!125898) b_and!130371)))

(assert (=> d!534390 m!2160681))

(assert (=> d!534390 m!2160703))

(declare-fun m!2160833 () Bool)

(assert (=> d!534390 m!2160833))

(assert (=> d!534390 m!2160683))

(assert (=> d!534390 m!2160685))

(assert (=> d!534390 m!2160681))

(assert (=> d!534390 m!2160683))

(assert (=> b!1748019 d!534390))

(declare-fun d!534392 () Bool)

(declare-fun c!285206 () Bool)

(assert (=> d!534392 (= c!285206 ((_ is Node!6389) (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (value!107228 (_1!10827 lt!673905))))))))

(declare-fun e!1118652 () Bool)

(assert (=> d!534392 (= (inv!24899 (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (value!107228 (_1!10827 lt!673905))))) e!1118652)))

(declare-fun b!1748129 () Bool)

(declare-fun inv!24903 (Conc!6389) Bool)

(assert (=> b!1748129 (= e!1118652 (inv!24903 (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (value!107228 (_1!10827 lt!673905))))))))

(declare-fun b!1748130 () Bool)

(declare-fun e!1118653 () Bool)

(assert (=> b!1748130 (= e!1118652 e!1118653)))

(declare-fun res!786104 () Bool)

(assert (=> b!1748130 (= res!786104 (not ((_ is Leaf!9321) (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (value!107228 (_1!10827 lt!673905)))))))))

(assert (=> b!1748130 (=> res!786104 e!1118653)))

(declare-fun b!1748131 () Bool)

(declare-fun inv!24904 (Conc!6389) Bool)

(assert (=> b!1748131 (= e!1118653 (inv!24904 (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (value!107228 (_1!10827 lt!673905))))))))

(assert (= (and d!534392 c!285206) b!1748129))

(assert (= (and d!534392 (not c!285206)) b!1748130))

(assert (= (and b!1748130 (not res!786104)) b!1748131))

(declare-fun m!2160877 () Bool)

(assert (=> b!1748129 m!2160877))

(declare-fun m!2160881 () Bool)

(assert (=> b!1748131 m!2160881))

(assert (=> b!1748060 d!534392))

(declare-fun d!534396 () Bool)

(assert (=> d!534396 (= (inv!24892 (tag!3771 (h!24609 rules!3447))) (= (mod (str.len (value!107227 (tag!3771 (h!24609 rules!3447)))) 2) 0))))

(assert (=> b!1748040 d!534396))

(declare-fun d!534398 () Bool)

(declare-fun res!786109 () Bool)

(declare-fun e!1118663 () Bool)

(assert (=> d!534398 (=> (not res!786109) (not e!1118663))))

(assert (=> d!534398 (= res!786109 (semiInverseModEq!1356 (toChars!4797 (transformation!3423 (h!24609 rules!3447))) (toValue!4938 (transformation!3423 (h!24609 rules!3447)))))))

(assert (=> d!534398 (= (inv!24897 (transformation!3423 (h!24609 rules!3447))) e!1118663)))

(declare-fun b!1748144 () Bool)

(assert (=> b!1748144 (= e!1118663 (equivClasses!1297 (toChars!4797 (transformation!3423 (h!24609 rules!3447))) (toValue!4938 (transformation!3423 (h!24609 rules!3447)))))))

(assert (= (and d!534398 res!786109) b!1748144))

(declare-fun m!2160887 () Bool)

(assert (=> d!534398 m!2160887))

(declare-fun m!2160889 () Bool)

(assert (=> b!1748144 m!2160889))

(assert (=> b!1748040 d!534398))

(declare-fun d!534402 () Bool)

(declare-fun lt!673961 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2761 (List!19278) (InoxSet Rule!6646))

(assert (=> d!534402 (= lt!673961 (select (content!2761 rules!3447) rule!422))))

(declare-fun e!1118672 () Bool)

(assert (=> d!534402 (= lt!673961 e!1118672)))

(declare-fun res!786116 () Bool)

(assert (=> d!534402 (=> (not res!786116) (not e!1118672))))

(assert (=> d!534402 (= res!786116 ((_ is Cons!19208) rules!3447))))

(assert (=> d!534402 (= (contains!3449 rules!3447 rule!422) lt!673961)))

(declare-fun b!1748154 () Bool)

(declare-fun e!1118671 () Bool)

(assert (=> b!1748154 (= e!1118672 e!1118671)))

(declare-fun res!786115 () Bool)

(assert (=> b!1748154 (=> res!786115 e!1118671)))

(assert (=> b!1748154 (= res!786115 (= (h!24609 rules!3447) rule!422))))

(declare-fun b!1748155 () Bool)

(assert (=> b!1748155 (= e!1118671 (contains!3449 (t!162525 rules!3447) rule!422))))

(assert (= (and d!534402 res!786116) b!1748154))

(assert (= (and b!1748154 (not res!786115)) b!1748155))

(declare-fun m!2160899 () Bool)

(assert (=> d!534402 m!2160899))

(declare-fun m!2160901 () Bool)

(assert (=> d!534402 m!2160901))

(declare-fun m!2160903 () Bool)

(assert (=> b!1748155 m!2160903))

(assert (=> b!1748037 d!534402))

(declare-fun b!1748156 () Bool)

(declare-fun e!1118675 () Bool)

(assert (=> b!1748156 (= e!1118675 (inv!16 (value!107228 token!523)))))

(declare-fun d!534408 () Bool)

(declare-fun c!285213 () Bool)

(assert (=> d!534408 (= c!285213 ((_ is IntegerValue!10539) (value!107228 token!523)))))

(assert (=> d!534408 (= (inv!21 (value!107228 token!523)) e!1118675)))

(declare-fun b!1748157 () Bool)

(declare-fun e!1118674 () Bool)

(assert (=> b!1748157 (= e!1118674 (inv!15 (value!107228 token!523)))))

(declare-fun b!1748158 () Bool)

(declare-fun res!786117 () Bool)

(assert (=> b!1748158 (=> res!786117 e!1118674)))

(assert (=> b!1748158 (= res!786117 (not ((_ is IntegerValue!10541) (value!107228 token!523))))))

(declare-fun e!1118673 () Bool)

(assert (=> b!1748158 (= e!1118673 e!1118674)))

(declare-fun b!1748159 () Bool)

(assert (=> b!1748159 (= e!1118675 e!1118673)))

(declare-fun c!285214 () Bool)

(assert (=> b!1748159 (= c!285214 ((_ is IntegerValue!10540) (value!107228 token!523)))))

(declare-fun b!1748160 () Bool)

(assert (=> b!1748160 (= e!1118673 (inv!17 (value!107228 token!523)))))

(assert (= (and d!534408 c!285213) b!1748156))

(assert (= (and d!534408 (not c!285213)) b!1748159))

(assert (= (and b!1748159 c!285214) b!1748160))

(assert (= (and b!1748159 (not c!285214)) b!1748158))

(assert (= (and b!1748158 (not res!786117)) b!1748157))

(declare-fun m!2160905 () Bool)

(assert (=> b!1748156 m!2160905))

(declare-fun m!2160907 () Bool)

(assert (=> b!1748157 m!2160907))

(declare-fun m!2160909 () Bool)

(assert (=> b!1748160 m!2160909))

(assert (=> b!1748015 d!534408))

(declare-fun d!534410 () Bool)

(declare-fun fromListB!1092 (List!19277) BalanceConc!12722)

(assert (=> d!534410 (= (seqFromList!2393 lt!673917) (fromListB!1092 lt!673917))))

(declare-fun bs!403444 () Bool)

(assert (= bs!403444 d!534410))

(declare-fun m!2160911 () Bool)

(assert (=> bs!403444 m!2160911))

(assert (=> b!1748036 d!534410))

(declare-fun d!534412 () Bool)

(declare-fun lt!673967 () List!19277)

(assert (=> d!534412 (= (++!5248 lt!673917 lt!673967) lt!673906)))

(declare-fun e!1118701 () List!19277)

(assert (=> d!534412 (= lt!673967 e!1118701)))

(declare-fun c!285226 () Bool)

(assert (=> d!534412 (= c!285226 ((_ is Cons!19207) lt!673917))))

(assert (=> d!534412 (>= (size!15256 lt!673906) (size!15256 lt!673917))))

(assert (=> d!534412 (= (getSuffix!844 lt!673906 lt!673917) lt!673967)))

(declare-fun b!1748211 () Bool)

(declare-fun tail!2613 (List!19277) List!19277)

(assert (=> b!1748211 (= e!1118701 (getSuffix!844 (tail!2613 lt!673906) (t!162524 lt!673917)))))

(declare-fun b!1748212 () Bool)

(assert (=> b!1748212 (= e!1118701 lt!673906)))

(assert (= (and d!534412 c!285226) b!1748211))

(assert (= (and d!534412 (not c!285226)) b!1748212))

(declare-fun m!2160929 () Bool)

(assert (=> d!534412 m!2160929))

(declare-fun m!2160931 () Bool)

(assert (=> d!534412 m!2160931))

(assert (=> d!534412 m!2160739))

(declare-fun m!2160933 () Bool)

(assert (=> b!1748211 m!2160933))

(assert (=> b!1748211 m!2160933))

(declare-fun m!2160935 () Bool)

(assert (=> b!1748211 m!2160935))

(assert (=> b!1748036 d!534412))

(declare-fun d!534418 () Bool)

(assert (=> d!534418 (= (_2!10827 lt!673905) lt!673922)))

(declare-fun lt!673973 () Unit!33285)

(declare-fun choose!10783 (List!19277 List!19277 List!19277 List!19277 List!19277) Unit!33285)

(assert (=> d!534418 (= lt!673973 (choose!10783 lt!673917 (_2!10827 lt!673905) lt!673917 lt!673922 lt!673906))))

(assert (=> d!534418 (isPrefix!1664 lt!673917 lt!673906)))

(assert (=> d!534418 (= (lemmaSamePrefixThenSameSuffix!794 lt!673917 (_2!10827 lt!673905) lt!673917 lt!673922 lt!673906) lt!673973)))

(declare-fun bs!403446 () Bool)

(assert (= bs!403446 d!534418))

(declare-fun m!2160939 () Bool)

(assert (=> bs!403446 m!2160939))

(assert (=> bs!403446 m!2160691))

(assert (=> b!1748036 d!534418))

(declare-fun d!534422 () Bool)

(assert (=> d!534422 (= (maxPrefixOneRule!978 thiss!24550 (rule!5429 (_1!10827 lt!673905)) lt!673906) (Some!3869 (tuple2!18851 (Token!6413 (apply!5224 (transformation!3423 (rule!5429 (_1!10827 lt!673905))) (seqFromList!2393 lt!673917)) (rule!5429 (_1!10827 lt!673905)) (size!15256 lt!673917) lt!673917) (_2!10827 lt!673905))))))

(declare-fun lt!673985 () Unit!33285)

(declare-fun choose!10784 (LexerInterface!3052 List!19278 List!19277 List!19277 List!19277 Rule!6646) Unit!33285)

(assert (=> d!534422 (= lt!673985 (choose!10784 thiss!24550 rules!3447 lt!673917 lt!673906 (_2!10827 lt!673905) (rule!5429 (_1!10827 lt!673905))))))

(assert (=> d!534422 (not (isEmpty!12104 rules!3447))))

(assert (=> d!534422 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!367 thiss!24550 rules!3447 lt!673917 lt!673906 (_2!10827 lt!673905) (rule!5429 (_1!10827 lt!673905))) lt!673985)))

(declare-fun bs!403451 () Bool)

(assert (= bs!403451 d!534422))

(assert (=> bs!403451 m!2160739))

(assert (=> bs!403451 m!2160735))

(assert (=> bs!403451 m!2160741))

(assert (=> bs!403451 m!2160749))

(assert (=> bs!403451 m!2160747))

(assert (=> bs!403451 m!2160741))

(declare-fun m!2160993 () Bool)

(assert (=> bs!403451 m!2160993))

(assert (=> b!1748036 d!534422))

(declare-fun b!1748325 () Bool)

(declare-fun e!1118766 () Option!3870)

(assert (=> b!1748325 (= e!1118766 None!3869)))

(declare-fun d!534450 () Bool)

(declare-fun e!1118767 () Bool)

(assert (=> d!534450 e!1118767))

(declare-fun res!786215 () Bool)

(assert (=> d!534450 (=> res!786215 e!1118767)))

(declare-fun lt!674018 () Option!3870)

(declare-fun isEmpty!12106 (Option!3870) Bool)

(assert (=> d!534450 (= res!786215 (isEmpty!12106 lt!674018))))

(assert (=> d!534450 (= lt!674018 e!1118766)))

(declare-fun c!285247 () Bool)

(declare-datatypes ((tuple2!18854 0))(
  ( (tuple2!18855 (_1!10829 List!19277) (_2!10829 List!19277)) )
))
(declare-fun lt!674017 () tuple2!18854)

(assert (=> d!534450 (= c!285247 (isEmpty!12103 (_1!10829 lt!674017)))))

(declare-fun findLongestMatch!356 (Regex!4751 List!19277) tuple2!18854)

(assert (=> d!534450 (= lt!674017 (findLongestMatch!356 (regex!3423 (rule!5429 (_1!10827 lt!673905))) lt!673906))))

(assert (=> d!534450 (ruleValid!922 thiss!24550 (rule!5429 (_1!10827 lt!673905)))))

(assert (=> d!534450 (= (maxPrefixOneRule!978 thiss!24550 (rule!5429 (_1!10827 lt!673905)) lt!673906) lt!674018)))

(declare-fun b!1748326 () Bool)

(declare-fun e!1118768 () Bool)

(assert (=> b!1748326 (= e!1118767 e!1118768)))

(declare-fun res!786214 () Bool)

(assert (=> b!1748326 (=> (not res!786214) (not e!1118768))))

(assert (=> b!1748326 (= res!786214 (matchR!2225 (regex!3423 (rule!5429 (_1!10827 lt!673905))) (list!7780 (charsOf!2072 (_1!10827 (get!5799 lt!674018))))))))

(declare-fun b!1748327 () Bool)

(assert (=> b!1748327 (= e!1118766 (Some!3869 (tuple2!18851 (Token!6413 (apply!5224 (transformation!3423 (rule!5429 (_1!10827 lt!673905))) (seqFromList!2393 (_1!10829 lt!674017))) (rule!5429 (_1!10827 lt!673905)) (size!15255 (seqFromList!2393 (_1!10829 lt!674017))) (_1!10829 lt!674017)) (_2!10829 lt!674017))))))

(declare-fun lt!674016 () Unit!33285)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!413 (Regex!4751 List!19277) Unit!33285)

(assert (=> b!1748327 (= lt!674016 (longestMatchIsAcceptedByMatchOrIsEmpty!413 (regex!3423 (rule!5429 (_1!10827 lt!673905))) lt!673906))))

(declare-fun res!786212 () Bool)

(declare-fun findLongestMatchInner!429 (Regex!4751 List!19277 Int List!19277 List!19277 Int) tuple2!18854)

(assert (=> b!1748327 (= res!786212 (isEmpty!12103 (_1!10829 (findLongestMatchInner!429 (regex!3423 (rule!5429 (_1!10827 lt!673905))) Nil!19207 (size!15256 Nil!19207) lt!673906 lt!673906 (size!15256 lt!673906)))))))

(declare-fun e!1118769 () Bool)

(assert (=> b!1748327 (=> res!786212 e!1118769)))

(assert (=> b!1748327 e!1118769))

(declare-fun lt!674020 () Unit!33285)

(assert (=> b!1748327 (= lt!674020 lt!674016)))

(declare-fun lt!674019 () Unit!33285)

(assert (=> b!1748327 (= lt!674019 (lemmaSemiInverse!563 (transformation!3423 (rule!5429 (_1!10827 lt!673905))) (seqFromList!2393 (_1!10829 lt!674017))))))

(declare-fun b!1748328 () Bool)

(assert (=> b!1748328 (= e!1118768 (= (size!15254 (_1!10827 (get!5799 lt!674018))) (size!15256 (originalCharacters!4237 (_1!10827 (get!5799 lt!674018))))))))

(declare-fun b!1748329 () Bool)

(declare-fun res!786210 () Bool)

(assert (=> b!1748329 (=> (not res!786210) (not e!1118768))))

(assert (=> b!1748329 (= res!786210 (= (rule!5429 (_1!10827 (get!5799 lt!674018))) (rule!5429 (_1!10827 lt!673905))))))

(declare-fun b!1748330 () Bool)

(declare-fun res!786213 () Bool)

(assert (=> b!1748330 (=> (not res!786213) (not e!1118768))))

(assert (=> b!1748330 (= res!786213 (< (size!15256 (_2!10827 (get!5799 lt!674018))) (size!15256 lt!673906)))))

(declare-fun b!1748331 () Bool)

(declare-fun res!786216 () Bool)

(assert (=> b!1748331 (=> (not res!786216) (not e!1118768))))

(assert (=> b!1748331 (= res!786216 (= (value!107228 (_1!10827 (get!5799 lt!674018))) (apply!5224 (transformation!3423 (rule!5429 (_1!10827 (get!5799 lt!674018)))) (seqFromList!2393 (originalCharacters!4237 (_1!10827 (get!5799 lt!674018)))))))))

(declare-fun b!1748332 () Bool)

(assert (=> b!1748332 (= e!1118769 (matchR!2225 (regex!3423 (rule!5429 (_1!10827 lt!673905))) (_1!10829 (findLongestMatchInner!429 (regex!3423 (rule!5429 (_1!10827 lt!673905))) Nil!19207 (size!15256 Nil!19207) lt!673906 lt!673906 (size!15256 lt!673906)))))))

(declare-fun b!1748333 () Bool)

(declare-fun res!786211 () Bool)

(assert (=> b!1748333 (=> (not res!786211) (not e!1118768))))

(assert (=> b!1748333 (= res!786211 (= (++!5248 (list!7780 (charsOf!2072 (_1!10827 (get!5799 lt!674018)))) (_2!10827 (get!5799 lt!674018))) lt!673906))))

(assert (= (and d!534450 c!285247) b!1748325))

(assert (= (and d!534450 (not c!285247)) b!1748327))

(assert (= (and b!1748327 (not res!786212)) b!1748332))

(assert (= (and d!534450 (not res!786215)) b!1748326))

(assert (= (and b!1748326 res!786214) b!1748333))

(assert (= (and b!1748333 res!786211) b!1748330))

(assert (= (and b!1748330 res!786213) b!1748329))

(assert (= (and b!1748329 res!786210) b!1748331))

(assert (= (and b!1748331 res!786216) b!1748328))

(declare-fun m!2161049 () Bool)

(assert (=> b!1748332 m!2161049))

(assert (=> b!1748332 m!2160931))

(assert (=> b!1748332 m!2161049))

(assert (=> b!1748332 m!2160931))

(declare-fun m!2161051 () Bool)

(assert (=> b!1748332 m!2161051))

(declare-fun m!2161053 () Bool)

(assert (=> b!1748332 m!2161053))

(declare-fun m!2161055 () Bool)

(assert (=> b!1748330 m!2161055))

(declare-fun m!2161057 () Bool)

(assert (=> b!1748330 m!2161057))

(assert (=> b!1748330 m!2160931))

(assert (=> b!1748329 m!2161055))

(assert (=> b!1748331 m!2161055))

(declare-fun m!2161059 () Bool)

(assert (=> b!1748331 m!2161059))

(assert (=> b!1748331 m!2161059))

(declare-fun m!2161061 () Bool)

(assert (=> b!1748331 m!2161061))

(assert (=> b!1748327 m!2161049))

(declare-fun m!2161063 () Bool)

(assert (=> b!1748327 m!2161063))

(declare-fun m!2161065 () Bool)

(assert (=> b!1748327 m!2161065))

(declare-fun m!2161067 () Bool)

(assert (=> b!1748327 m!2161067))

(declare-fun m!2161069 () Bool)

(assert (=> b!1748327 m!2161069))

(assert (=> b!1748327 m!2160931))

(assert (=> b!1748327 m!2161063))

(declare-fun m!2161071 () Bool)

(assert (=> b!1748327 m!2161071))

(assert (=> b!1748327 m!2161049))

(assert (=> b!1748327 m!2160931))

(assert (=> b!1748327 m!2161051))

(assert (=> b!1748327 m!2161063))

(assert (=> b!1748327 m!2161063))

(declare-fun m!2161073 () Bool)

(assert (=> b!1748327 m!2161073))

(assert (=> b!1748326 m!2161055))

(declare-fun m!2161075 () Bool)

(assert (=> b!1748326 m!2161075))

(assert (=> b!1748326 m!2161075))

(declare-fun m!2161077 () Bool)

(assert (=> b!1748326 m!2161077))

(assert (=> b!1748326 m!2161077))

(declare-fun m!2161079 () Bool)

(assert (=> b!1748326 m!2161079))

(assert (=> b!1748328 m!2161055))

(declare-fun m!2161081 () Bool)

(assert (=> b!1748328 m!2161081))

(assert (=> b!1748333 m!2161055))

(assert (=> b!1748333 m!2161075))

(assert (=> b!1748333 m!2161075))

(assert (=> b!1748333 m!2161077))

(assert (=> b!1748333 m!2161077))

(declare-fun m!2161083 () Bool)

(assert (=> b!1748333 m!2161083))

(declare-fun m!2161085 () Bool)

(assert (=> d!534450 m!2161085))

(declare-fun m!2161087 () Bool)

(assert (=> d!534450 m!2161087))

(declare-fun m!2161089 () Bool)

(assert (=> d!534450 m!2161089))

(declare-fun m!2161091 () Bool)

(assert (=> d!534450 m!2161091))

(assert (=> b!1748036 d!534450))

(declare-fun d!534476 () Bool)

(declare-fun lt!674028 () Int)

(assert (=> d!534476 (>= lt!674028 0)))

(declare-fun e!1118775 () Int)

(assert (=> d!534476 (= lt!674028 e!1118775)))

(declare-fun c!285251 () Bool)

(assert (=> d!534476 (= c!285251 ((_ is Nil!19207) lt!673917))))

(assert (=> d!534476 (= (size!15256 lt!673917) lt!674028)))

(declare-fun b!1748347 () Bool)

(assert (=> b!1748347 (= e!1118775 0)))

(declare-fun b!1748348 () Bool)

(assert (=> b!1748348 (= e!1118775 (+ 1 (size!15256 (t!162524 lt!673917))))))

(assert (= (and d!534476 c!285251) b!1748347))

(assert (= (and d!534476 (not c!285251)) b!1748348))

(declare-fun m!2161093 () Bool)

(assert (=> b!1748348 m!2161093))

(assert (=> b!1748036 d!534476))

(declare-fun d!534478 () Bool)

(assert (=> d!534478 (= (apply!5224 (transformation!3423 (rule!5429 (_1!10827 lt!673905))) (seqFromList!2393 lt!673917)) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (seqFromList!2393 lt!673917)))))

(declare-fun b_lambda!56133 () Bool)

(assert (=> (not b_lambda!56133) (not d!534478)))

(declare-fun tb!104687 () Bool)

(declare-fun t!162539 () Bool)

(assert (=> (and b!1748041 (= (toValue!4938 (transformation!3423 rule!422)) (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) t!162539) tb!104687))

(declare-fun result!125918 () Bool)

(assert (=> tb!104687 (= result!125918 (inv!21 (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (seqFromList!2393 lt!673917))))))

(declare-fun m!2161111 () Bool)

(assert (=> tb!104687 m!2161111))

(assert (=> d!534478 t!162539))

(declare-fun b_and!130409 () Bool)

(assert (= b_and!130367 (and (=> t!162539 result!125918) b_and!130409)))

(declare-fun tb!104689 () Bool)

(declare-fun t!162541 () Bool)

(assert (=> (and b!1748017 (= (toValue!4938 (transformation!3423 (rule!5429 token!523))) (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) t!162541) tb!104689))

(declare-fun result!125920 () Bool)

(assert (= result!125920 result!125918))

(assert (=> d!534478 t!162541))

(declare-fun b_and!130411 () Bool)

(assert (= b_and!130369 (and (=> t!162541 result!125920) b_and!130411)))

(declare-fun tb!104691 () Bool)

(declare-fun t!162543 () Bool)

(assert (=> (and b!1748035 (= (toValue!4938 (transformation!3423 (h!24609 rules!3447))) (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) t!162543) tb!104691))

(declare-fun result!125922 () Bool)

(assert (= result!125922 result!125918))

(assert (=> d!534478 t!162543))

(declare-fun b_and!130413 () Bool)

(assert (= b_and!130371 (and (=> t!162543 result!125922) b_and!130413)))

(assert (=> d!534478 m!2160741))

(declare-fun m!2161119 () Bool)

(assert (=> d!534478 m!2161119))

(assert (=> b!1748036 d!534478))

(declare-fun b!1748395 () Bool)

(declare-fun e!1118806 () Bool)

(declare-fun e!1118808 () Bool)

(assert (=> b!1748395 (= e!1118806 e!1118808)))

(declare-fun res!786257 () Bool)

(assert (=> b!1748395 (=> res!786257 e!1118808)))

(declare-fun call!110363 () Bool)

(assert (=> b!1748395 (= res!786257 call!110363)))

(declare-fun b!1748396 () Bool)

(declare-fun res!786258 () Bool)

(declare-fun e!1118804 () Bool)

(assert (=> b!1748396 (=> res!786258 e!1118804)))

(assert (=> b!1748396 (= res!786258 (not ((_ is ElementMatch!4751) (regex!3423 lt!673912))))))

(declare-fun e!1118805 () Bool)

(assert (=> b!1748396 (= e!1118805 e!1118804)))

(declare-fun b!1748397 () Bool)

(declare-fun res!786253 () Bool)

(declare-fun e!1118802 () Bool)

(assert (=> b!1748397 (=> (not res!786253) (not e!1118802))))

(assert (=> b!1748397 (= res!786253 (isEmpty!12103 (tail!2613 (list!7780 (charsOf!2072 (_1!10827 lt!673905))))))))

(declare-fun b!1748398 () Bool)

(assert (=> b!1748398 (= e!1118808 (not (= (head!4018 (list!7780 (charsOf!2072 (_1!10827 lt!673905)))) (c!285186 (regex!3423 lt!673912)))))))

(declare-fun b!1748399 () Bool)

(declare-fun e!1118803 () Bool)

(declare-fun derivativeStep!1212 (Regex!4751 C!9676) Regex!4751)

(assert (=> b!1748399 (= e!1118803 (matchR!2225 (derivativeStep!1212 (regex!3423 lt!673912) (head!4018 (list!7780 (charsOf!2072 (_1!10827 lt!673905))))) (tail!2613 (list!7780 (charsOf!2072 (_1!10827 lt!673905))))))))

(declare-fun b!1748400 () Bool)

(declare-fun lt!674039 () Bool)

(assert (=> b!1748400 (= e!1118805 (not lt!674039))))

(declare-fun b!1748401 () Bool)

(declare-fun res!786255 () Bool)

(assert (=> b!1748401 (=> res!786255 e!1118804)))

(assert (=> b!1748401 (= res!786255 e!1118802)))

(declare-fun res!786251 () Bool)

(assert (=> b!1748401 (=> (not res!786251) (not e!1118802))))

(assert (=> b!1748401 (= res!786251 lt!674039)))

(declare-fun b!1748402 () Bool)

(assert (=> b!1748402 (= e!1118804 e!1118806)))

(declare-fun res!786254 () Bool)

(assert (=> b!1748402 (=> (not res!786254) (not e!1118806))))

(assert (=> b!1748402 (= res!786254 (not lt!674039))))

(declare-fun d!534480 () Bool)

(declare-fun e!1118807 () Bool)

(assert (=> d!534480 e!1118807))

(declare-fun c!285261 () Bool)

(assert (=> d!534480 (= c!285261 ((_ is EmptyExpr!4751) (regex!3423 lt!673912)))))

(assert (=> d!534480 (= lt!674039 e!1118803)))

(declare-fun c!285263 () Bool)

(assert (=> d!534480 (= c!285263 (isEmpty!12103 (list!7780 (charsOf!2072 (_1!10827 lt!673905)))))))

(declare-fun validRegex!1917 (Regex!4751) Bool)

(assert (=> d!534480 (validRegex!1917 (regex!3423 lt!673912))))

(assert (=> d!534480 (= (matchR!2225 (regex!3423 lt!673912) (list!7780 (charsOf!2072 (_1!10827 lt!673905)))) lt!674039)))

(declare-fun b!1748403 () Bool)

(declare-fun res!786256 () Bool)

(assert (=> b!1748403 (=> (not res!786256) (not e!1118802))))

(assert (=> b!1748403 (= res!786256 (not call!110363))))

(declare-fun b!1748404 () Bool)

(assert (=> b!1748404 (= e!1118807 e!1118805)))

(declare-fun c!285262 () Bool)

(assert (=> b!1748404 (= c!285262 ((_ is EmptyLang!4751) (regex!3423 lt!673912)))))

(declare-fun b!1748405 () Bool)

(assert (=> b!1748405 (= e!1118802 (= (head!4018 (list!7780 (charsOf!2072 (_1!10827 lt!673905)))) (c!285186 (regex!3423 lt!673912))))))

(declare-fun bm!110358 () Bool)

(assert (=> bm!110358 (= call!110363 (isEmpty!12103 (list!7780 (charsOf!2072 (_1!10827 lt!673905)))))))

(declare-fun b!1748406 () Bool)

(assert (=> b!1748406 (= e!1118807 (= lt!674039 call!110363))))

(declare-fun b!1748407 () Bool)

(declare-fun res!786252 () Bool)

(assert (=> b!1748407 (=> res!786252 e!1118808)))

(assert (=> b!1748407 (= res!786252 (not (isEmpty!12103 (tail!2613 (list!7780 (charsOf!2072 (_1!10827 lt!673905)))))))))

(declare-fun b!1748408 () Bool)

(declare-fun nullable!1443 (Regex!4751) Bool)

(assert (=> b!1748408 (= e!1118803 (nullable!1443 (regex!3423 lt!673912)))))

(assert (= (and d!534480 c!285263) b!1748408))

(assert (= (and d!534480 (not c!285263)) b!1748399))

(assert (= (and d!534480 c!285261) b!1748406))

(assert (= (and d!534480 (not c!285261)) b!1748404))

(assert (= (and b!1748404 c!285262) b!1748400))

(assert (= (and b!1748404 (not c!285262)) b!1748396))

(assert (= (and b!1748396 (not res!786258)) b!1748401))

(assert (= (and b!1748401 res!786251) b!1748403))

(assert (= (and b!1748403 res!786256) b!1748397))

(assert (= (and b!1748397 res!786253) b!1748405))

(assert (= (and b!1748401 (not res!786255)) b!1748402))

(assert (= (and b!1748402 res!786254) b!1748395))

(assert (= (and b!1748395 (not res!786257)) b!1748407))

(assert (= (and b!1748407 (not res!786252)) b!1748398))

(assert (= (or b!1748406 b!1748395 b!1748403) bm!110358))

(assert (=> d!534480 m!2160761))

(declare-fun m!2161169 () Bool)

(assert (=> d!534480 m!2161169))

(declare-fun m!2161171 () Bool)

(assert (=> d!534480 m!2161171))

(assert (=> b!1748398 m!2160761))

(declare-fun m!2161173 () Bool)

(assert (=> b!1748398 m!2161173))

(assert (=> b!1748399 m!2160761))

(assert (=> b!1748399 m!2161173))

(assert (=> b!1748399 m!2161173))

(declare-fun m!2161175 () Bool)

(assert (=> b!1748399 m!2161175))

(assert (=> b!1748399 m!2160761))

(declare-fun m!2161177 () Bool)

(assert (=> b!1748399 m!2161177))

(assert (=> b!1748399 m!2161175))

(assert (=> b!1748399 m!2161177))

(declare-fun m!2161179 () Bool)

(assert (=> b!1748399 m!2161179))

(assert (=> b!1748405 m!2160761))

(assert (=> b!1748405 m!2161173))

(assert (=> b!1748407 m!2160761))

(assert (=> b!1748407 m!2161177))

(assert (=> b!1748407 m!2161177))

(declare-fun m!2161181 () Bool)

(assert (=> b!1748407 m!2161181))

(assert (=> bm!110358 m!2160761))

(assert (=> bm!110358 m!2161169))

(assert (=> b!1748397 m!2160761))

(assert (=> b!1748397 m!2161177))

(assert (=> b!1748397 m!2161177))

(assert (=> b!1748397 m!2161181))

(declare-fun m!2161183 () Bool)

(assert (=> b!1748408 m!2161183))

(assert (=> b!1748038 d!534480))

(declare-fun d!534502 () Bool)

(assert (=> d!534502 (= (list!7780 (charsOf!2072 (_1!10827 lt!673905))) (list!7781 (c!285187 (charsOf!2072 (_1!10827 lt!673905)))))))

(declare-fun bs!403460 () Bool)

(assert (= bs!403460 d!534502))

(declare-fun m!2161185 () Bool)

(assert (=> bs!403460 m!2161185))

(assert (=> b!1748038 d!534502))

(declare-fun d!534504 () Bool)

(declare-fun lt!674042 () BalanceConc!12722)

(assert (=> d!534504 (= (list!7780 lt!674042) (originalCharacters!4237 (_1!10827 lt!673905)))))

(assert (=> d!534504 (= lt!674042 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (value!107228 (_1!10827 lt!673905))))))

(assert (=> d!534504 (= (charsOf!2072 (_1!10827 lt!673905)) lt!674042)))

(declare-fun b_lambda!56139 () Bool)

(assert (=> (not b_lambda!56139) (not d!534504)))

(assert (=> d!534504 t!162518))

(declare-fun b_and!130427 () Bool)

(assert (= b_and!130361 (and (=> t!162518 result!125900) b_and!130427)))

(assert (=> d!534504 t!162520))

(declare-fun b_and!130429 () Bool)

(assert (= b_and!130363 (and (=> t!162520 result!125902) b_and!130429)))

(assert (=> d!534504 t!162522))

(declare-fun b_and!130431 () Bool)

(assert (= b_and!130365 (and (=> t!162522 result!125904) b_and!130431)))

(declare-fun m!2161187 () Bool)

(assert (=> d!534504 m!2161187))

(assert (=> d!534504 m!2160797))

(assert (=> b!1748038 d!534504))

(declare-fun d!534506 () Bool)

(assert (=> d!534506 (= (get!5800 lt!673914) (v!25311 lt!673914))))

(assert (=> b!1748038 d!534506))

(declare-fun d!534508 () Bool)

(assert (=> d!534508 (= (inv!24892 (tag!3771 rule!422)) (= (mod (str.len (value!107227 (tag!3771 rule!422))) 2) 0))))

(assert (=> b!1748016 d!534508))

(declare-fun d!534510 () Bool)

(declare-fun res!786259 () Bool)

(declare-fun e!1118809 () Bool)

(assert (=> d!534510 (=> (not res!786259) (not e!1118809))))

(assert (=> d!534510 (= res!786259 (semiInverseModEq!1356 (toChars!4797 (transformation!3423 rule!422)) (toValue!4938 (transformation!3423 rule!422))))))

(assert (=> d!534510 (= (inv!24897 (transformation!3423 rule!422)) e!1118809)))

(declare-fun b!1748409 () Bool)

(assert (=> b!1748409 (= e!1118809 (equivClasses!1297 (toChars!4797 (transformation!3423 rule!422)) (toValue!4938 (transformation!3423 rule!422))))))

(assert (= (and d!534510 res!786259) b!1748409))

(declare-fun m!2161189 () Bool)

(assert (=> d!534510 m!2161189))

(declare-fun m!2161191 () Bool)

(assert (=> b!1748409 m!2161191))

(assert (=> b!1748016 d!534510))

(declare-fun d!534512 () Bool)

(assert (=> d!534512 (= (isEmpty!12104 rules!3447) ((_ is Nil!19208) rules!3447))))

(assert (=> b!1748023 d!534512))

(declare-fun d!534514 () Bool)

(assert (=> d!534514 (= (isEmpty!12103 suffix!1421) ((_ is Nil!19207) suffix!1421))))

(assert (=> b!1748021 d!534514))

(declare-fun d!534516 () Bool)

(assert (=> d!534516 (= (get!5799 lt!673926) (v!25310 lt!673926))))

(assert (=> b!1748020 d!534516))

(declare-fun b!1748414 () Bool)

(declare-fun e!1118816 () Bool)

(declare-fun e!1118818 () Bool)

(assert (=> b!1748414 (= e!1118816 e!1118818)))

(declare-fun res!786270 () Bool)

(assert (=> b!1748414 (=> res!786270 e!1118818)))

(declare-fun call!110364 () Bool)

(assert (=> b!1748414 (= res!786270 call!110364)))

(declare-fun b!1748415 () Bool)

(declare-fun res!786271 () Bool)

(declare-fun e!1118814 () Bool)

(assert (=> b!1748415 (=> res!786271 e!1118814)))

(assert (=> b!1748415 (= res!786271 (not ((_ is ElementMatch!4751) (regex!3423 (rule!5429 (_1!10827 lt!673905))))))))

(declare-fun e!1118815 () Bool)

(assert (=> b!1748415 (= e!1118815 e!1118814)))

(declare-fun b!1748416 () Bool)

(declare-fun res!786266 () Bool)

(declare-fun e!1118812 () Bool)

(assert (=> b!1748416 (=> (not res!786266) (not e!1118812))))

(assert (=> b!1748416 (= res!786266 (isEmpty!12103 (tail!2613 lt!673917)))))

(declare-fun b!1748417 () Bool)

(assert (=> b!1748417 (= e!1118818 (not (= (head!4018 lt!673917) (c!285186 (regex!3423 (rule!5429 (_1!10827 lt!673905)))))))))

(declare-fun b!1748418 () Bool)

(declare-fun e!1118813 () Bool)

(assert (=> b!1748418 (= e!1118813 (matchR!2225 (derivativeStep!1212 (regex!3423 (rule!5429 (_1!10827 lt!673905))) (head!4018 lt!673917)) (tail!2613 lt!673917)))))

(declare-fun b!1748419 () Bool)

(declare-fun lt!674045 () Bool)

(assert (=> b!1748419 (= e!1118815 (not lt!674045))))

(declare-fun b!1748420 () Bool)

(declare-fun res!786268 () Bool)

(assert (=> b!1748420 (=> res!786268 e!1118814)))

(assert (=> b!1748420 (= res!786268 e!1118812)))

(declare-fun res!786264 () Bool)

(assert (=> b!1748420 (=> (not res!786264) (not e!1118812))))

(assert (=> b!1748420 (= res!786264 lt!674045)))

(declare-fun b!1748421 () Bool)

(assert (=> b!1748421 (= e!1118814 e!1118816)))

(declare-fun res!786267 () Bool)

(assert (=> b!1748421 (=> (not res!786267) (not e!1118816))))

(assert (=> b!1748421 (= res!786267 (not lt!674045))))

(declare-fun d!534518 () Bool)

(declare-fun e!1118817 () Bool)

(assert (=> d!534518 e!1118817))

(declare-fun c!285264 () Bool)

(assert (=> d!534518 (= c!285264 ((_ is EmptyExpr!4751) (regex!3423 (rule!5429 (_1!10827 lt!673905)))))))

(assert (=> d!534518 (= lt!674045 e!1118813)))

(declare-fun c!285266 () Bool)

(assert (=> d!534518 (= c!285266 (isEmpty!12103 lt!673917))))

(assert (=> d!534518 (validRegex!1917 (regex!3423 (rule!5429 (_1!10827 lt!673905))))))

(assert (=> d!534518 (= (matchR!2225 (regex!3423 (rule!5429 (_1!10827 lt!673905))) lt!673917) lt!674045)))

(declare-fun b!1748422 () Bool)

(declare-fun res!786269 () Bool)

(assert (=> b!1748422 (=> (not res!786269) (not e!1118812))))

(assert (=> b!1748422 (= res!786269 (not call!110364))))

(declare-fun b!1748423 () Bool)

(assert (=> b!1748423 (= e!1118817 e!1118815)))

(declare-fun c!285265 () Bool)

(assert (=> b!1748423 (= c!285265 ((_ is EmptyLang!4751) (regex!3423 (rule!5429 (_1!10827 lt!673905)))))))

(declare-fun b!1748424 () Bool)

(assert (=> b!1748424 (= e!1118812 (= (head!4018 lt!673917) (c!285186 (regex!3423 (rule!5429 (_1!10827 lt!673905))))))))

(declare-fun bm!110359 () Bool)

(assert (=> bm!110359 (= call!110364 (isEmpty!12103 lt!673917))))

(declare-fun b!1748425 () Bool)

(assert (=> b!1748425 (= e!1118817 (= lt!674045 call!110364))))

(declare-fun b!1748426 () Bool)

(declare-fun res!786265 () Bool)

(assert (=> b!1748426 (=> res!786265 e!1118818)))

(assert (=> b!1748426 (= res!786265 (not (isEmpty!12103 (tail!2613 lt!673917))))))

(declare-fun b!1748427 () Bool)

(assert (=> b!1748427 (= e!1118813 (nullable!1443 (regex!3423 (rule!5429 (_1!10827 lt!673905)))))))

(assert (= (and d!534518 c!285266) b!1748427))

(assert (= (and d!534518 (not c!285266)) b!1748418))

(assert (= (and d!534518 c!285264) b!1748425))

(assert (= (and d!534518 (not c!285264)) b!1748423))

(assert (= (and b!1748423 c!285265) b!1748419))

(assert (= (and b!1748423 (not c!285265)) b!1748415))

(assert (= (and b!1748415 (not res!786271)) b!1748420))

(assert (= (and b!1748420 res!786264) b!1748422))

(assert (= (and b!1748422 res!786269) b!1748416))

(assert (= (and b!1748416 res!786266) b!1748424))

(assert (= (and b!1748420 (not res!786268)) b!1748421))

(assert (= (and b!1748421 res!786267) b!1748414))

(assert (= (and b!1748414 (not res!786270)) b!1748426))

(assert (= (and b!1748426 (not res!786265)) b!1748417))

(assert (= (or b!1748425 b!1748414 b!1748422) bm!110359))

(declare-fun m!2161193 () Bool)

(assert (=> d!534518 m!2161193))

(declare-fun m!2161195 () Bool)

(assert (=> d!534518 m!2161195))

(declare-fun m!2161197 () Bool)

(assert (=> b!1748417 m!2161197))

(assert (=> b!1748418 m!2161197))

(assert (=> b!1748418 m!2161197))

(declare-fun m!2161199 () Bool)

(assert (=> b!1748418 m!2161199))

(declare-fun m!2161201 () Bool)

(assert (=> b!1748418 m!2161201))

(assert (=> b!1748418 m!2161199))

(assert (=> b!1748418 m!2161201))

(declare-fun m!2161203 () Bool)

(assert (=> b!1748418 m!2161203))

(assert (=> b!1748424 m!2161197))

(assert (=> b!1748426 m!2161201))

(assert (=> b!1748426 m!2161201))

(declare-fun m!2161205 () Bool)

(assert (=> b!1748426 m!2161205))

(assert (=> bm!110359 m!2161193))

(assert (=> b!1748416 m!2161201))

(assert (=> b!1748416 m!2161201))

(assert (=> b!1748416 m!2161205))

(declare-fun m!2161207 () Bool)

(assert (=> b!1748427 m!2161207))

(assert (=> b!1748022 d!534518))

(declare-fun b!1748428 () Bool)

(declare-fun e!1118823 () Bool)

(declare-fun e!1118825 () Bool)

(assert (=> b!1748428 (= e!1118823 e!1118825)))

(declare-fun res!786278 () Bool)

(assert (=> b!1748428 (=> res!786278 e!1118825)))

(declare-fun call!110365 () Bool)

(assert (=> b!1748428 (= res!786278 call!110365)))

(declare-fun b!1748429 () Bool)

(declare-fun res!786279 () Bool)

(declare-fun e!1118821 () Bool)

(assert (=> b!1748429 (=> res!786279 e!1118821)))

(assert (=> b!1748429 (= res!786279 (not ((_ is ElementMatch!4751) (regex!3423 rule!422))))))

(declare-fun e!1118822 () Bool)

(assert (=> b!1748429 (= e!1118822 e!1118821)))

(declare-fun b!1748430 () Bool)

(declare-fun res!786274 () Bool)

(declare-fun e!1118819 () Bool)

(assert (=> b!1748430 (=> (not res!786274) (not e!1118819))))

(assert (=> b!1748430 (= res!786274 (isEmpty!12103 (tail!2613 lt!673907)))))

(declare-fun b!1748431 () Bool)

(assert (=> b!1748431 (= e!1118825 (not (= (head!4018 lt!673907) (c!285186 (regex!3423 rule!422)))))))

(declare-fun b!1748432 () Bool)

(declare-fun e!1118820 () Bool)

(assert (=> b!1748432 (= e!1118820 (matchR!2225 (derivativeStep!1212 (regex!3423 rule!422) (head!4018 lt!673907)) (tail!2613 lt!673907)))))

(declare-fun b!1748433 () Bool)

(declare-fun lt!674046 () Bool)

(assert (=> b!1748433 (= e!1118822 (not lt!674046))))

(declare-fun b!1748434 () Bool)

(declare-fun res!786276 () Bool)

(assert (=> b!1748434 (=> res!786276 e!1118821)))

(assert (=> b!1748434 (= res!786276 e!1118819)))

(declare-fun res!786272 () Bool)

(assert (=> b!1748434 (=> (not res!786272) (not e!1118819))))

(assert (=> b!1748434 (= res!786272 lt!674046)))

(declare-fun b!1748435 () Bool)

(assert (=> b!1748435 (= e!1118821 e!1118823)))

(declare-fun res!786275 () Bool)

(assert (=> b!1748435 (=> (not res!786275) (not e!1118823))))

(assert (=> b!1748435 (= res!786275 (not lt!674046))))

(declare-fun d!534520 () Bool)

(declare-fun e!1118824 () Bool)

(assert (=> d!534520 e!1118824))

(declare-fun c!285267 () Bool)

(assert (=> d!534520 (= c!285267 ((_ is EmptyExpr!4751) (regex!3423 rule!422)))))

(assert (=> d!534520 (= lt!674046 e!1118820)))

(declare-fun c!285269 () Bool)

(assert (=> d!534520 (= c!285269 (isEmpty!12103 lt!673907))))

(assert (=> d!534520 (validRegex!1917 (regex!3423 rule!422))))

(assert (=> d!534520 (= (matchR!2225 (regex!3423 rule!422) lt!673907) lt!674046)))

(declare-fun b!1748436 () Bool)

(declare-fun res!786277 () Bool)

(assert (=> b!1748436 (=> (not res!786277) (not e!1118819))))

(assert (=> b!1748436 (= res!786277 (not call!110365))))

(declare-fun b!1748437 () Bool)

(assert (=> b!1748437 (= e!1118824 e!1118822)))

(declare-fun c!285268 () Bool)

(assert (=> b!1748437 (= c!285268 ((_ is EmptyLang!4751) (regex!3423 rule!422)))))

(declare-fun b!1748438 () Bool)

(assert (=> b!1748438 (= e!1118819 (= (head!4018 lt!673907) (c!285186 (regex!3423 rule!422))))))

(declare-fun bm!110360 () Bool)

(assert (=> bm!110360 (= call!110365 (isEmpty!12103 lt!673907))))

(declare-fun b!1748439 () Bool)

(assert (=> b!1748439 (= e!1118824 (= lt!674046 call!110365))))

(declare-fun b!1748440 () Bool)

(declare-fun res!786273 () Bool)

(assert (=> b!1748440 (=> res!786273 e!1118825)))

(assert (=> b!1748440 (= res!786273 (not (isEmpty!12103 (tail!2613 lt!673907))))))

(declare-fun b!1748441 () Bool)

(assert (=> b!1748441 (= e!1118820 (nullable!1443 (regex!3423 rule!422)))))

(assert (= (and d!534520 c!285269) b!1748441))

(assert (= (and d!534520 (not c!285269)) b!1748432))

(assert (= (and d!534520 c!285267) b!1748439))

(assert (= (and d!534520 (not c!285267)) b!1748437))

(assert (= (and b!1748437 c!285268) b!1748433))

(assert (= (and b!1748437 (not c!285268)) b!1748429))

(assert (= (and b!1748429 (not res!786279)) b!1748434))

(assert (= (and b!1748434 res!786272) b!1748436))

(assert (= (and b!1748436 res!786277) b!1748430))

(assert (= (and b!1748430 res!786274) b!1748438))

(assert (= (and b!1748434 (not res!786276)) b!1748435))

(assert (= (and b!1748435 res!786275) b!1748428))

(assert (= (and b!1748428 (not res!786278)) b!1748440))

(assert (= (and b!1748440 (not res!786273)) b!1748431))

(assert (= (or b!1748439 b!1748428 b!1748436) bm!110360))

(declare-fun m!2161209 () Bool)

(assert (=> d!534520 m!2161209))

(declare-fun m!2161215 () Bool)

(assert (=> d!534520 m!2161215))

(declare-fun m!2161217 () Bool)

(assert (=> b!1748431 m!2161217))

(assert (=> b!1748432 m!2161217))

(assert (=> b!1748432 m!2161217))

(declare-fun m!2161219 () Bool)

(assert (=> b!1748432 m!2161219))

(declare-fun m!2161222 () Bool)

(assert (=> b!1748432 m!2161222))

(assert (=> b!1748432 m!2161219))

(assert (=> b!1748432 m!2161222))

(declare-fun m!2161225 () Bool)

(assert (=> b!1748432 m!2161225))

(assert (=> b!1748438 m!2161217))

(assert (=> b!1748440 m!2161222))

(assert (=> b!1748440 m!2161222))

(declare-fun m!2161227 () Bool)

(assert (=> b!1748440 m!2161227))

(assert (=> bm!110360 m!2161209))

(assert (=> b!1748430 m!2161222))

(assert (=> b!1748430 m!2161222))

(assert (=> b!1748430 m!2161227))

(declare-fun m!2161231 () Bool)

(assert (=> b!1748441 m!2161231))

(assert (=> b!1748029 d!534520))

(declare-fun d!534522 () Bool)

(declare-fun res!786288 () Bool)

(declare-fun e!1118831 () Bool)

(assert (=> d!534522 (=> (not res!786288) (not e!1118831))))

(assert (=> d!534522 (= res!786288 (validRegex!1917 (regex!3423 rule!422)))))

(assert (=> d!534522 (= (ruleValid!922 thiss!24550 rule!422) e!1118831)))

(declare-fun b!1748452 () Bool)

(declare-fun res!786289 () Bool)

(assert (=> b!1748452 (=> (not res!786289) (not e!1118831))))

(assert (=> b!1748452 (= res!786289 (not (nullable!1443 (regex!3423 rule!422))))))

(declare-fun b!1748453 () Bool)

(assert (=> b!1748453 (= e!1118831 (not (= (tag!3771 rule!422) (String!21898 ""))))))

(assert (= (and d!534522 res!786288) b!1748452))

(assert (= (and b!1748452 res!786289) b!1748453))

(assert (=> d!534522 m!2161215))

(assert (=> b!1748452 m!2161231))

(assert (=> b!1748029 d!534522))

(declare-fun d!534534 () Bool)

(assert (=> d!534534 (ruleValid!922 thiss!24550 rule!422)))

(declare-fun lt!674051 () Unit!33285)

(declare-fun choose!10786 (LexerInterface!3052 Rule!6646 List!19278) Unit!33285)

(assert (=> d!534534 (= lt!674051 (choose!10786 thiss!24550 rule!422 rules!3447))))

(assert (=> d!534534 (contains!3449 rules!3447 rule!422)))

(assert (=> d!534534 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!446 thiss!24550 rule!422 rules!3447) lt!674051)))

(declare-fun bs!403463 () Bool)

(assert (= bs!403463 d!534534))

(assert (=> bs!403463 m!2160677))

(declare-fun m!2161247 () Bool)

(assert (=> bs!403463 m!2161247))

(assert (=> bs!403463 m!2160733))

(assert (=> b!1748029 d!534534))

(declare-fun d!534536 () Bool)

(assert (=> d!534536 (= (isEmpty!12103 (_2!10827 lt!673920)) ((_ is Nil!19207) (_2!10827 lt!673920)))))

(assert (=> b!1748028 d!534536))

(declare-fun d!534538 () Bool)

(declare-fun c!285273 () Bool)

(assert (=> d!534538 (= c!285273 (isEmpty!12103 (++!5248 lt!673907 (Cons!19207 (head!4018 suffix!1421) Nil!19207))))))

(declare-fun e!1118834 () Bool)

(assert (=> d!534538 (= (prefixMatch!636 (rulesRegex!781 thiss!24550 rules!3447) (++!5248 lt!673907 (Cons!19207 (head!4018 suffix!1421) Nil!19207))) e!1118834)))

(declare-fun b!1748458 () Bool)

(declare-fun lostCause!554 (Regex!4751) Bool)

(assert (=> b!1748458 (= e!1118834 (not (lostCause!554 (rulesRegex!781 thiss!24550 rules!3447))))))

(declare-fun b!1748459 () Bool)

(assert (=> b!1748459 (= e!1118834 (prefixMatch!636 (derivativeStep!1212 (rulesRegex!781 thiss!24550 rules!3447) (head!4018 (++!5248 lt!673907 (Cons!19207 (head!4018 suffix!1421) Nil!19207)))) (tail!2613 (++!5248 lt!673907 (Cons!19207 (head!4018 suffix!1421) Nil!19207)))))))

(assert (= (and d!534538 c!285273) b!1748458))

(assert (= (and d!534538 (not c!285273)) b!1748459))

(assert (=> d!534538 m!2160757))

(declare-fun m!2161249 () Bool)

(assert (=> d!534538 m!2161249))

(assert (=> b!1748458 m!2160753))

(declare-fun m!2161251 () Bool)

(assert (=> b!1748458 m!2161251))

(assert (=> b!1748459 m!2160757))

(declare-fun m!2161253 () Bool)

(assert (=> b!1748459 m!2161253))

(assert (=> b!1748459 m!2160753))

(assert (=> b!1748459 m!2161253))

(declare-fun m!2161255 () Bool)

(assert (=> b!1748459 m!2161255))

(assert (=> b!1748459 m!2160757))

(declare-fun m!2161257 () Bool)

(assert (=> b!1748459 m!2161257))

(assert (=> b!1748459 m!2161255))

(assert (=> b!1748459 m!2161257))

(declare-fun m!2161259 () Bool)

(assert (=> b!1748459 m!2161259))

(assert (=> b!1748030 d!534538))

(declare-fun d!534540 () Bool)

(declare-fun lt!674060 () Unit!33285)

(declare-fun lemma!367 (List!19278 LexerInterface!3052 List!19278) Unit!33285)

(assert (=> d!534540 (= lt!674060 (lemma!367 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69809 () Int)

(declare-datatypes ((List!19281 0))(
  ( (Nil!19211) (Cons!19211 (h!24612 Regex!4751) (t!162588 List!19281)) )
))
(declare-fun generalisedUnion!375 (List!19281) Regex!4751)

(declare-fun map!3958 (List!19278 Int) List!19281)

(assert (=> d!534540 (= (rulesRegex!781 thiss!24550 rules!3447) (generalisedUnion!375 (map!3958 rules!3447 lambda!69809)))))

(declare-fun bs!403464 () Bool)

(assert (= bs!403464 d!534540))

(declare-fun m!2161261 () Bool)

(assert (=> bs!403464 m!2161261))

(declare-fun m!2161263 () Bool)

(assert (=> bs!403464 m!2161263))

(assert (=> bs!403464 m!2161263))

(declare-fun m!2161265 () Bool)

(assert (=> bs!403464 m!2161265))

(assert (=> b!1748030 d!534540))

(declare-fun b!1748496 () Bool)

(declare-fun res!786308 () Bool)

(declare-fun e!1118858 () Bool)

(assert (=> b!1748496 (=> (not res!786308) (not e!1118858))))

(declare-fun lt!674068 () List!19277)

(assert (=> b!1748496 (= res!786308 (= (size!15256 lt!674068) (+ (size!15256 lt!673907) (size!15256 (Cons!19207 (head!4018 suffix!1421) Nil!19207)))))))

(declare-fun b!1748497 () Bool)

(assert (=> b!1748497 (= e!1118858 (or (not (= (Cons!19207 (head!4018 suffix!1421) Nil!19207) Nil!19207)) (= lt!674068 lt!673907)))))

(declare-fun b!1748495 () Bool)

(declare-fun e!1118857 () List!19277)

(assert (=> b!1748495 (= e!1118857 (Cons!19207 (h!24608 lt!673907) (++!5248 (t!162524 lt!673907) (Cons!19207 (head!4018 suffix!1421) Nil!19207))))))

(declare-fun b!1748494 () Bool)

(assert (=> b!1748494 (= e!1118857 (Cons!19207 (head!4018 suffix!1421) Nil!19207))))

(declare-fun d!534542 () Bool)

(assert (=> d!534542 e!1118858))

(declare-fun res!786309 () Bool)

(assert (=> d!534542 (=> (not res!786309) (not e!1118858))))

(declare-fun content!2763 (List!19277) (InoxSet C!9676))

(assert (=> d!534542 (= res!786309 (= (content!2763 lt!674068) ((_ map or) (content!2763 lt!673907) (content!2763 (Cons!19207 (head!4018 suffix!1421) Nil!19207)))))))

(assert (=> d!534542 (= lt!674068 e!1118857)))

(declare-fun c!285282 () Bool)

(assert (=> d!534542 (= c!285282 ((_ is Nil!19207) lt!673907))))

(assert (=> d!534542 (= (++!5248 lt!673907 (Cons!19207 (head!4018 suffix!1421) Nil!19207)) lt!674068)))

(assert (= (and d!534542 c!285282) b!1748494))

(assert (= (and d!534542 (not c!285282)) b!1748495))

(assert (= (and d!534542 res!786309) b!1748496))

(assert (= (and b!1748496 res!786308) b!1748497))

(declare-fun m!2161279 () Bool)

(assert (=> b!1748496 m!2161279))

(declare-fun m!2161281 () Bool)

(assert (=> b!1748496 m!2161281))

(declare-fun m!2161283 () Bool)

(assert (=> b!1748496 m!2161283))

(declare-fun m!2161285 () Bool)

(assert (=> b!1748495 m!2161285))

(declare-fun m!2161287 () Bool)

(assert (=> d!534542 m!2161287))

(declare-fun m!2161289 () Bool)

(assert (=> d!534542 m!2161289))

(declare-fun m!2161291 () Bool)

(assert (=> d!534542 m!2161291))

(assert (=> b!1748030 d!534542))

(declare-fun d!534546 () Bool)

(assert (=> d!534546 (= (head!4018 suffix!1421) (h!24608 suffix!1421))))

(assert (=> b!1748030 d!534546))

(declare-fun d!534550 () Bool)

(declare-fun res!786326 () Bool)

(declare-fun e!1118870 () Bool)

(assert (=> d!534550 (=> (not res!786326) (not e!1118870))))

(assert (=> d!534550 (= res!786326 (not (isEmpty!12103 (originalCharacters!4237 token!523))))))

(assert (=> d!534550 (= (inv!24898 token!523) e!1118870)))

(declare-fun b!1748514 () Bool)

(declare-fun res!786327 () Bool)

(assert (=> b!1748514 (=> (not res!786327) (not e!1118870))))

(assert (=> b!1748514 (= res!786327 (= (originalCharacters!4237 token!523) (list!7780 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 token!523))) (value!107228 token!523)))))))

(declare-fun b!1748515 () Bool)

(assert (=> b!1748515 (= e!1118870 (= (size!15254 token!523) (size!15256 (originalCharacters!4237 token!523))))))

(assert (= (and d!534550 res!786326) b!1748514))

(assert (= (and b!1748514 res!786327) b!1748515))

(declare-fun b_lambda!56141 () Bool)

(assert (=> (not b_lambda!56141) (not b!1748514)))

(declare-fun t!162551 () Bool)

(declare-fun tb!104699 () Bool)

(assert (=> (and b!1748041 (= (toChars!4797 (transformation!3423 rule!422)) (toChars!4797 (transformation!3423 (rule!5429 token!523)))) t!162551) tb!104699))

(declare-fun b!1748516 () Bool)

(declare-fun e!1118871 () Bool)

(declare-fun tp!497294 () Bool)

(assert (=> b!1748516 (= e!1118871 (and (inv!24899 (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 token!523))) (value!107228 token!523)))) tp!497294))))

(declare-fun result!125930 () Bool)

(assert (=> tb!104699 (= result!125930 (and (inv!24900 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 token!523))) (value!107228 token!523))) e!1118871))))

(assert (= tb!104699 b!1748516))

(declare-fun m!2161307 () Bool)

(assert (=> b!1748516 m!2161307))

(declare-fun m!2161309 () Bool)

(assert (=> tb!104699 m!2161309))

(assert (=> b!1748514 t!162551))

(declare-fun b_and!130433 () Bool)

(assert (= b_and!130427 (and (=> t!162551 result!125930) b_and!130433)))

(declare-fun t!162553 () Bool)

(declare-fun tb!104701 () Bool)

(assert (=> (and b!1748017 (= (toChars!4797 (transformation!3423 (rule!5429 token!523))) (toChars!4797 (transformation!3423 (rule!5429 token!523)))) t!162553) tb!104701))

(declare-fun result!125932 () Bool)

(assert (= result!125932 result!125930))

(assert (=> b!1748514 t!162553))

(declare-fun b_and!130435 () Bool)

(assert (= b_and!130429 (and (=> t!162553 result!125932) b_and!130435)))

(declare-fun t!162555 () Bool)

(declare-fun tb!104703 () Bool)

(assert (=> (and b!1748035 (= (toChars!4797 (transformation!3423 (h!24609 rules!3447))) (toChars!4797 (transformation!3423 (rule!5429 token!523)))) t!162555) tb!104703))

(declare-fun result!125934 () Bool)

(assert (= result!125934 result!125930))

(assert (=> b!1748514 t!162555))

(declare-fun b_and!130437 () Bool)

(assert (= b_and!130431 (and (=> t!162555 result!125934) b_and!130437)))

(declare-fun m!2161311 () Bool)

(assert (=> d!534550 m!2161311))

(declare-fun m!2161313 () Bool)

(assert (=> b!1748514 m!2161313))

(assert (=> b!1748514 m!2161313))

(declare-fun m!2161315 () Bool)

(assert (=> b!1748514 m!2161315))

(declare-fun m!2161317 () Bool)

(assert (=> b!1748515 m!2161317))

(assert (=> start!172358 d!534550))

(declare-fun d!534556 () Bool)

(declare-fun lt!674074 () Int)

(assert (=> d!534556 (= lt!674074 (size!15256 (list!7780 lt!673911)))))

(declare-fun size!15258 (Conc!6389) Int)

(assert (=> d!534556 (= lt!674074 (size!15258 (c!285187 lt!673911)))))

(assert (=> d!534556 (= (size!15255 lt!673911) lt!674074)))

(declare-fun bs!403465 () Bool)

(assert (= bs!403465 d!534556))

(assert (=> bs!403465 m!2160703))

(assert (=> bs!403465 m!2160703))

(declare-fun m!2161319 () Bool)

(assert (=> bs!403465 m!2161319))

(declare-fun m!2161321 () Bool)

(assert (=> bs!403465 m!2161321))

(assert (=> b!1748026 d!534556))

(declare-fun d!534558 () Bool)

(assert (=> d!534558 (= (size!15254 (_1!10827 lt!673905)) (size!15256 (originalCharacters!4237 (_1!10827 lt!673905))))))

(declare-fun Unit!33290 () Unit!33285)

(assert (=> d!534558 (= (lemmaCharactersSize!483 (_1!10827 lt!673905)) Unit!33290)))

(declare-fun bs!403466 () Bool)

(assert (= bs!403466 d!534558))

(declare-fun m!2161323 () Bool)

(assert (=> bs!403466 m!2161323))

(assert (=> b!1748026 d!534558))

(declare-fun d!534560 () Bool)

(assert (=> d!534560 (= (seqFromList!2393 (originalCharacters!4237 (_1!10827 lt!673905))) (fromListB!1092 (originalCharacters!4237 (_1!10827 lt!673905))))))

(declare-fun bs!403467 () Bool)

(assert (= bs!403467 d!534560))

(declare-fun m!2161325 () Bool)

(assert (=> bs!403467 m!2161325))

(assert (=> b!1748026 d!534560))

(declare-fun d!534562 () Bool)

(assert (=> d!534562 (= (apply!5224 (transformation!3423 (rule!5429 (_1!10827 lt!673905))) lt!673911) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911))))

(declare-fun b_lambda!56143 () Bool)

(assert (=> (not b_lambda!56143) (not d!534562)))

(assert (=> d!534562 t!162512))

(declare-fun b_and!130439 () Bool)

(assert (= b_and!130409 (and (=> t!162512 result!125892) b_and!130439)))

(assert (=> d!534562 t!162514))

(declare-fun b_and!130441 () Bool)

(assert (= b_and!130411 (and (=> t!162514 result!125896) b_and!130441)))

(assert (=> d!534562 t!162516))

(declare-fun b_and!130443 () Bool)

(assert (= b_and!130413 (and (=> t!162516 result!125898) b_and!130443)))

(assert (=> d!534562 m!2160681))

(assert (=> b!1748026 d!534562))

(declare-fun b!1748523 () Bool)

(declare-fun e!1118876 () Bool)

(assert (=> b!1748523 (= e!1118876 true)))

(declare-fun d!534564 () Bool)

(assert (=> d!534564 e!1118876))

(assert (= d!534564 b!1748523))

(declare-fun lambda!69812 () Int)

(declare-fun order!12027 () Int)

(declare-fun dynLambda!9120 (Int Int) Int)

(assert (=> b!1748523 (< (dynLambda!9114 order!12019 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) (dynLambda!9120 order!12027 lambda!69812))))

(assert (=> b!1748523 (< (dynLambda!9116 order!12023 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) (dynLambda!9120 order!12027 lambda!69812))))

(assert (=> d!534564 (= (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (seqFromList!2393 (originalCharacters!4237 (_1!10827 lt!673905)))))))

(declare-fun lt!674077 () Unit!33285)

(declare-fun Forall2of!105 (Int BalanceConc!12722 BalanceConc!12722) Unit!33285)

(assert (=> d!534564 (= lt!674077 (Forall2of!105 lambda!69812 lt!673911 (seqFromList!2393 (originalCharacters!4237 (_1!10827 lt!673905)))))))

(assert (=> d!534564 (= (list!7780 lt!673911) (list!7780 (seqFromList!2393 (originalCharacters!4237 (_1!10827 lt!673905)))))))

(assert (=> d!534564 (= (lemmaEqSameImage!336 (transformation!3423 (rule!5429 (_1!10827 lt!673905))) lt!673911 (seqFromList!2393 (originalCharacters!4237 (_1!10827 lt!673905)))) lt!674077)))

(declare-fun b_lambda!56145 () Bool)

(assert (=> (not b_lambda!56145) (not d!534564)))

(assert (=> d!534564 t!162512))

(declare-fun b_and!130445 () Bool)

(assert (= b_and!130439 (and (=> t!162512 result!125892) b_and!130445)))

(assert (=> d!534564 t!162514))

(declare-fun b_and!130447 () Bool)

(assert (= b_and!130441 (and (=> t!162514 result!125896) b_and!130447)))

(assert (=> d!534564 t!162516))

(declare-fun b_and!130449 () Bool)

(assert (= b_and!130443 (and (=> t!162516 result!125898) b_and!130449)))

(declare-fun b_lambda!56147 () Bool)

(assert (=> (not b_lambda!56147) (not d!534564)))

(declare-fun t!162557 () Bool)

(declare-fun tb!104705 () Bool)

(assert (=> (and b!1748041 (= (toValue!4938 (transformation!3423 rule!422)) (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) t!162557) tb!104705))

(declare-fun result!125936 () Bool)

(assert (=> tb!104705 (= result!125936 (inv!21 (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (seqFromList!2393 (originalCharacters!4237 (_1!10827 lt!673905))))))))

(declare-fun m!2161327 () Bool)

(assert (=> tb!104705 m!2161327))

(assert (=> d!534564 t!162557))

(declare-fun b_and!130451 () Bool)

(assert (= b_and!130445 (and (=> t!162557 result!125936) b_and!130451)))

(declare-fun tb!104707 () Bool)

(declare-fun t!162559 () Bool)

(assert (=> (and b!1748017 (= (toValue!4938 (transformation!3423 (rule!5429 token!523))) (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) t!162559) tb!104707))

(declare-fun result!125938 () Bool)

(assert (= result!125938 result!125936))

(assert (=> d!534564 t!162559))

(declare-fun b_and!130453 () Bool)

(assert (= b_and!130447 (and (=> t!162559 result!125938) b_and!130453)))

(declare-fun t!162561 () Bool)

(declare-fun tb!104709 () Bool)

(assert (=> (and b!1748035 (= (toValue!4938 (transformation!3423 (h!24609 rules!3447))) (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) t!162561) tb!104709))

(declare-fun result!125940 () Bool)

(assert (= result!125940 result!125936))

(assert (=> d!534564 t!162561))

(declare-fun b_and!130455 () Bool)

(assert (= b_and!130449 (and (=> t!162561 result!125940) b_and!130455)))

(assert (=> d!534564 m!2160725))

(declare-fun m!2161329 () Bool)

(assert (=> d!534564 m!2161329))

(assert (=> d!534564 m!2160703))

(assert (=> d!534564 m!2160681))

(assert (=> d!534564 m!2160725))

(declare-fun m!2161331 () Bool)

(assert (=> d!534564 m!2161331))

(assert (=> d!534564 m!2160725))

(declare-fun m!2161333 () Bool)

(assert (=> d!534564 m!2161333))

(assert (=> b!1748026 d!534564))

(declare-fun d!534566 () Bool)

(declare-fun res!786332 () Bool)

(declare-fun e!1118880 () Bool)

(assert (=> d!534566 (=> (not res!786332) (not e!1118880))))

(declare-fun rulesValid!1283 (LexerInterface!3052 List!19278) Bool)

(assert (=> d!534566 (= res!786332 (rulesValid!1283 thiss!24550 rules!3447))))

(assert (=> d!534566 (= (rulesInvariant!2721 thiss!24550 rules!3447) e!1118880)))

(declare-fun b!1748526 () Bool)

(declare-datatypes ((List!19282 0))(
  ( (Nil!19212) (Cons!19212 (h!24613 String!21897) (t!162589 List!19282)) )
))
(declare-fun noDuplicateTag!1283 (LexerInterface!3052 List!19278 List!19282) Bool)

(assert (=> b!1748526 (= e!1118880 (noDuplicateTag!1283 thiss!24550 rules!3447 Nil!19212))))

(assert (= (and d!534566 res!786332) b!1748526))

(declare-fun m!2161335 () Bool)

(assert (=> d!534566 m!2161335))

(declare-fun m!2161337 () Bool)

(assert (=> b!1748526 m!2161337))

(assert (=> b!1748027 d!534566))

(declare-fun d!534568 () Bool)

(declare-fun c!285283 () Bool)

(assert (=> d!534568 (= c!285283 ((_ is Node!6389) (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911)))))))

(declare-fun e!1118881 () Bool)

(assert (=> d!534568 (= (inv!24899 (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911)))) e!1118881)))

(declare-fun b!1748527 () Bool)

(assert (=> b!1748527 (= e!1118881 (inv!24903 (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911)))))))

(declare-fun b!1748528 () Bool)

(declare-fun e!1118882 () Bool)

(assert (=> b!1748528 (= e!1118881 e!1118882)))

(declare-fun res!786333 () Bool)

(assert (=> b!1748528 (= res!786333 (not ((_ is Leaf!9321) (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911))))))))

(assert (=> b!1748528 (=> res!786333 e!1118882)))

(declare-fun b!1748529 () Bool)

(assert (=> b!1748529 (= e!1118882 (inv!24904 (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911)))))))

(assert (= (and d!534568 c!285283) b!1748527))

(assert (= (and d!534568 (not c!285283)) b!1748528))

(assert (= (and b!1748528 (not res!786333)) b!1748529))

(declare-fun m!2161339 () Bool)

(assert (=> b!1748527 m!2161339))

(declare-fun m!2161341 () Bool)

(assert (=> b!1748529 m!2161341))

(assert (=> b!1748057 d!534568))

(declare-fun b!1748532 () Bool)

(declare-fun res!786334 () Bool)

(declare-fun e!1118884 () Bool)

(assert (=> b!1748532 (=> (not res!786334) (not e!1118884))))

(declare-fun lt!674078 () List!19277)

(assert (=> b!1748532 (= res!786334 (= (size!15256 lt!674078) (+ (size!15256 lt!673917) (size!15256 (_2!10827 lt!673905)))))))

(declare-fun b!1748533 () Bool)

(assert (=> b!1748533 (= e!1118884 (or (not (= (_2!10827 lt!673905) Nil!19207)) (= lt!674078 lt!673917)))))

(declare-fun b!1748531 () Bool)

(declare-fun e!1118883 () List!19277)

(assert (=> b!1748531 (= e!1118883 (Cons!19207 (h!24608 lt!673917) (++!5248 (t!162524 lt!673917) (_2!10827 lt!673905))))))

(declare-fun b!1748530 () Bool)

(assert (=> b!1748530 (= e!1118883 (_2!10827 lt!673905))))

(declare-fun d!534570 () Bool)

(assert (=> d!534570 e!1118884))

(declare-fun res!786335 () Bool)

(assert (=> d!534570 (=> (not res!786335) (not e!1118884))))

(assert (=> d!534570 (= res!786335 (= (content!2763 lt!674078) ((_ map or) (content!2763 lt!673917) (content!2763 (_2!10827 lt!673905)))))))

(assert (=> d!534570 (= lt!674078 e!1118883)))

(declare-fun c!285284 () Bool)

(assert (=> d!534570 (= c!285284 ((_ is Nil!19207) lt!673917))))

(assert (=> d!534570 (= (++!5248 lt!673917 (_2!10827 lt!673905)) lt!674078)))

(assert (= (and d!534570 c!285284) b!1748530))

(assert (= (and d!534570 (not c!285284)) b!1748531))

(assert (= (and d!534570 res!786335) b!1748532))

(assert (= (and b!1748532 res!786334) b!1748533))

(declare-fun m!2161343 () Bool)

(assert (=> b!1748532 m!2161343))

(assert (=> b!1748532 m!2160739))

(declare-fun m!2161345 () Bool)

(assert (=> b!1748532 m!2161345))

(declare-fun m!2161347 () Bool)

(assert (=> b!1748531 m!2161347))

(declare-fun m!2161349 () Bool)

(assert (=> d!534570 m!2161349))

(declare-fun m!2161351 () Bool)

(assert (=> d!534570 m!2161351))

(declare-fun m!2161353 () Bool)

(assert (=> d!534570 m!2161353))

(assert (=> b!1748034 d!534570))

(declare-fun d!534572 () Bool)

(assert (=> d!534572 (= (get!5799 lt!673919) (v!25310 lt!673919))))

(assert (=> b!1748034 d!534572))

(declare-fun b!1748543 () Bool)

(declare-fun res!786347 () Bool)

(declare-fun e!1118892 () Bool)

(assert (=> b!1748543 (=> (not res!786347) (not e!1118892))))

(assert (=> b!1748543 (= res!786347 (= (head!4018 lt!673917) (head!4018 lt!673906)))))

(declare-fun d!534574 () Bool)

(declare-fun e!1118893 () Bool)

(assert (=> d!534574 e!1118893))

(declare-fun res!786346 () Bool)

(assert (=> d!534574 (=> res!786346 e!1118893)))

(declare-fun lt!674081 () Bool)

(assert (=> d!534574 (= res!786346 (not lt!674081))))

(declare-fun e!1118891 () Bool)

(assert (=> d!534574 (= lt!674081 e!1118891)))

(declare-fun res!786344 () Bool)

(assert (=> d!534574 (=> res!786344 e!1118891)))

(assert (=> d!534574 (= res!786344 ((_ is Nil!19207) lt!673917))))

(assert (=> d!534574 (= (isPrefix!1664 lt!673917 lt!673906) lt!674081)))

(declare-fun b!1748544 () Bool)

(assert (=> b!1748544 (= e!1118892 (isPrefix!1664 (tail!2613 lt!673917) (tail!2613 lt!673906)))))

(declare-fun b!1748542 () Bool)

(assert (=> b!1748542 (= e!1118891 e!1118892)))

(declare-fun res!786345 () Bool)

(assert (=> b!1748542 (=> (not res!786345) (not e!1118892))))

(assert (=> b!1748542 (= res!786345 (not ((_ is Nil!19207) lt!673906)))))

(declare-fun b!1748545 () Bool)

(assert (=> b!1748545 (= e!1118893 (>= (size!15256 lt!673906) (size!15256 lt!673917)))))

(assert (= (and d!534574 (not res!786344)) b!1748542))

(assert (= (and b!1748542 res!786345) b!1748543))

(assert (= (and b!1748543 res!786347) b!1748544))

(assert (= (and d!534574 (not res!786346)) b!1748545))

(assert (=> b!1748543 m!2161197))

(declare-fun m!2161355 () Bool)

(assert (=> b!1748543 m!2161355))

(assert (=> b!1748544 m!2161201))

(assert (=> b!1748544 m!2160933))

(assert (=> b!1748544 m!2161201))

(assert (=> b!1748544 m!2160933))

(declare-fun m!2161357 () Bool)

(assert (=> b!1748544 m!2161357))

(assert (=> b!1748545 m!2160931))

(assert (=> b!1748545 m!2160739))

(assert (=> b!1748034 d!534574))

(declare-fun b!1748558 () Bool)

(declare-fun e!1118902 () Option!3871)

(assert (=> b!1748558 (= e!1118902 None!3870)))

(declare-fun b!1748559 () Bool)

(declare-fun e!1118903 () Bool)

(declare-fun e!1118904 () Bool)

(assert (=> b!1748559 (= e!1118903 e!1118904)))

(declare-fun res!786352 () Bool)

(assert (=> b!1748559 (=> (not res!786352) (not e!1118904))))

(declare-fun lt!674088 () Option!3871)

(assert (=> b!1748559 (= res!786352 (contains!3449 rules!3447 (get!5800 lt!674088)))))

(declare-fun b!1748560 () Bool)

(declare-fun e!1118905 () Option!3871)

(assert (=> b!1748560 (= e!1118905 e!1118902)))

(declare-fun c!285290 () Bool)

(assert (=> b!1748560 (= c!285290 (and ((_ is Cons!19208) rules!3447) (not (= (tag!3771 (h!24609 rules!3447)) (tag!3771 (rule!5429 (_1!10827 lt!673905)))))))))

(declare-fun b!1748561 () Bool)

(declare-fun lt!674089 () Unit!33285)

(declare-fun lt!674090 () Unit!33285)

(assert (=> b!1748561 (= lt!674089 lt!674090)))

(assert (=> b!1748561 (rulesInvariant!2721 thiss!24550 (t!162525 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!172 (LexerInterface!3052 Rule!6646 List!19278) Unit!33285)

(assert (=> b!1748561 (= lt!674090 (lemmaInvariantOnRulesThenOnTail!172 thiss!24550 (h!24609 rules!3447) (t!162525 rules!3447)))))

(assert (=> b!1748561 (= e!1118902 (getRuleFromTag!473 thiss!24550 (t!162525 rules!3447) (tag!3771 (rule!5429 (_1!10827 lt!673905)))))))

(declare-fun b!1748562 () Bool)

(assert (=> b!1748562 (= e!1118904 (= (tag!3771 (get!5800 lt!674088)) (tag!3771 (rule!5429 (_1!10827 lt!673905)))))))

(declare-fun b!1748563 () Bool)

(assert (=> b!1748563 (= e!1118905 (Some!3870 (h!24609 rules!3447)))))

(declare-fun d!534576 () Bool)

(assert (=> d!534576 e!1118903))

(declare-fun res!786353 () Bool)

(assert (=> d!534576 (=> res!786353 e!1118903)))

(declare-fun isEmpty!12108 (Option!3871) Bool)

(assert (=> d!534576 (= res!786353 (isEmpty!12108 lt!674088))))

(assert (=> d!534576 (= lt!674088 e!1118905)))

(declare-fun c!285289 () Bool)

(assert (=> d!534576 (= c!285289 (and ((_ is Cons!19208) rules!3447) (= (tag!3771 (h!24609 rules!3447)) (tag!3771 (rule!5429 (_1!10827 lt!673905))))))))

(assert (=> d!534576 (rulesInvariant!2721 thiss!24550 rules!3447)))

(assert (=> d!534576 (= (getRuleFromTag!473 thiss!24550 rules!3447 (tag!3771 (rule!5429 (_1!10827 lt!673905)))) lt!674088)))

(assert (= (and d!534576 c!285289) b!1748563))

(assert (= (and d!534576 (not c!285289)) b!1748560))

(assert (= (and b!1748560 c!285290) b!1748561))

(assert (= (and b!1748560 (not c!285290)) b!1748558))

(assert (= (and d!534576 (not res!786353)) b!1748559))

(assert (= (and b!1748559 res!786352) b!1748562))

(declare-fun m!2161359 () Bool)

(assert (=> b!1748559 m!2161359))

(assert (=> b!1748559 m!2161359))

(declare-fun m!2161361 () Bool)

(assert (=> b!1748559 m!2161361))

(declare-fun m!2161363 () Bool)

(assert (=> b!1748561 m!2161363))

(declare-fun m!2161365 () Bool)

(assert (=> b!1748561 m!2161365))

(declare-fun m!2161367 () Bool)

(assert (=> b!1748561 m!2161367))

(assert (=> b!1748562 m!2161359))

(declare-fun m!2161369 () Bool)

(assert (=> d!534576 m!2161369))

(assert (=> d!534576 m!2160767))

(assert (=> b!1748034 d!534576))

(declare-fun d!534578 () Bool)

(assert (=> d!534578 (isPrefix!1664 lt!673917 (++!5248 lt!673917 (_2!10827 lt!673905)))))

(declare-fun lt!674093 () Unit!33285)

(declare-fun choose!10789 (List!19277 List!19277) Unit!33285)

(assert (=> d!534578 (= lt!674093 (choose!10789 lt!673917 (_2!10827 lt!673905)))))

(assert (=> d!534578 (= (lemmaConcatTwoListThenFirstIsPrefix!1174 lt!673917 (_2!10827 lt!673905)) lt!674093)))

(declare-fun bs!403468 () Bool)

(assert (= bs!403468 d!534578))

(assert (=> bs!403468 m!2160701))

(assert (=> bs!403468 m!2160701))

(assert (=> bs!403468 m!2160711))

(declare-fun m!2161371 () Bool)

(assert (=> bs!403468 m!2161371))

(assert (=> b!1748034 d!534578))

(declare-fun b!1748660 () Bool)

(declare-fun e!1118954 () Unit!33285)

(declare-fun Unit!33292 () Unit!33285)

(assert (=> b!1748660 (= e!1118954 Unit!33292)))

(declare-fun d!534580 () Bool)

(assert (=> d!534580 (isDefined!3213 (maxPrefix!1606 thiss!24550 rules!3447 (++!5248 lt!673907 suffix!1421)))))

(declare-fun lt!674194 () Unit!33285)

(assert (=> d!534580 (= lt!674194 e!1118954)))

(declare-fun c!285298 () Bool)

(assert (=> d!534580 (= c!285298 (isEmpty!12106 (maxPrefix!1606 thiss!24550 rules!3447 (++!5248 lt!673907 suffix!1421))))))

(declare-fun lt!674190 () Unit!33285)

(declare-fun lt!674195 () Unit!33285)

(assert (=> d!534580 (= lt!674190 lt!674195)))

(declare-fun e!1118955 () Bool)

(assert (=> d!534580 e!1118955))

(declare-fun res!786381 () Bool)

(assert (=> d!534580 (=> (not res!786381) (not e!1118955))))

(declare-fun lt!674202 () Token!6412)

(assert (=> d!534580 (= res!786381 (isDefined!3214 (getRuleFromTag!473 thiss!24550 rules!3447 (tag!3771 (rule!5429 lt!674202)))))))

(assert (=> d!534580 (= lt!674195 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!473 thiss!24550 rules!3447 lt!673907 lt!674202))))

(declare-fun lt!674199 () Unit!33285)

(declare-fun lt!674197 () Unit!33285)

(assert (=> d!534580 (= lt!674199 lt!674197)))

(declare-fun lt!674187 () List!19277)

(assert (=> d!534580 (isPrefix!1664 lt!674187 (++!5248 lt!673907 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!293 (List!19277 List!19277 List!19277) Unit!33285)

(assert (=> d!534580 (= lt!674197 (lemmaPrefixStaysPrefixWhenAddingToSuffix!293 lt!674187 lt!673907 suffix!1421))))

(assert (=> d!534580 (= lt!674187 (list!7780 (charsOf!2072 lt!674202)))))

(declare-fun lt!674192 () Unit!33285)

(declare-fun lt!674196 () Unit!33285)

(assert (=> d!534580 (= lt!674192 lt!674196)))

(declare-fun lt!674191 () List!19277)

(declare-fun lt!674200 () List!19277)

(assert (=> d!534580 (isPrefix!1664 lt!674191 (++!5248 lt!674191 lt!674200))))

(assert (=> d!534580 (= lt!674196 (lemmaConcatTwoListThenFirstIsPrefix!1174 lt!674191 lt!674200))))

(assert (=> d!534580 (= lt!674200 (_2!10827 (get!5799 (maxPrefix!1606 thiss!24550 rules!3447 lt!673907))))))

(assert (=> d!534580 (= lt!674191 (list!7780 (charsOf!2072 lt!674202)))))

(declare-datatypes ((List!19284 0))(
  ( (Nil!19214) (Cons!19214 (h!24615 Token!6412) (t!162591 List!19284)) )
))
(declare-fun head!4020 (List!19284) Token!6412)

(declare-datatypes ((IArray!12787 0))(
  ( (IArray!12788 (innerList!6451 List!19284)) )
))
(declare-datatypes ((Conc!6391 0))(
  ( (Node!6391 (left!15360 Conc!6391) (right!15690 Conc!6391) (csize!13012 Int) (cheight!6602 Int)) (Leaf!9323 (xs!9267 IArray!12787) (csize!13013 Int)) (Empty!6391) )
))
(declare-datatypes ((BalanceConc!12726 0))(
  ( (BalanceConc!12727 (c!285305 Conc!6391)) )
))
(declare-fun list!7784 (BalanceConc!12726) List!19284)

(declare-datatypes ((tuple2!18858 0))(
  ( (tuple2!18859 (_1!10831 BalanceConc!12726) (_2!10831 BalanceConc!12722)) )
))
(declare-fun lex!1432 (LexerInterface!3052 List!19278 BalanceConc!12722) tuple2!18858)

(assert (=> d!534580 (= lt!674202 (head!4020 (list!7784 (_1!10831 (lex!1432 thiss!24550 rules!3447 (seqFromList!2393 lt!673907))))))))

(assert (=> d!534580 (not (isEmpty!12104 rules!3447))))

(assert (=> d!534580 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!576 thiss!24550 rules!3447 lt!673907 suffix!1421) lt!674194)))

(declare-fun b!1748658 () Bool)

(assert (=> b!1748658 (= e!1118955 (= (rule!5429 lt!674202) (get!5800 (getRuleFromTag!473 thiss!24550 rules!3447 (tag!3771 (rule!5429 lt!674202))))))))

(declare-fun b!1748657 () Bool)

(declare-fun res!786380 () Bool)

(assert (=> b!1748657 (=> (not res!786380) (not e!1118955))))

(assert (=> b!1748657 (= res!786380 (matchR!2225 (regex!3423 (get!5800 (getRuleFromTag!473 thiss!24550 rules!3447 (tag!3771 (rule!5429 lt!674202))))) (list!7780 (charsOf!2072 lt!674202))))))

(declare-fun b!1748659 () Bool)

(declare-fun Unit!33294 () Unit!33285)

(assert (=> b!1748659 (= e!1118954 Unit!33294)))

(declare-fun lt!674198 () List!19277)

(assert (=> b!1748659 (= lt!674198 (++!5248 lt!673907 suffix!1421))))

(declare-fun lt!674193 () Unit!33285)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!301 (LexerInterface!3052 Rule!6646 List!19278 List!19277) Unit!33285)

(assert (=> b!1748659 (= lt!674193 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!301 thiss!24550 (rule!5429 lt!674202) rules!3447 lt!674198))))

(assert (=> b!1748659 (isEmpty!12106 (maxPrefixOneRule!978 thiss!24550 (rule!5429 lt!674202) lt!674198))))

(declare-fun lt!674186 () Unit!33285)

(assert (=> b!1748659 (= lt!674186 lt!674193)))

(declare-fun lt!674201 () List!19277)

(assert (=> b!1748659 (= lt!674201 (list!7780 (charsOf!2072 lt!674202)))))

(declare-fun lt!674188 () Unit!33285)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!297 (LexerInterface!3052 Rule!6646 List!19277 List!19277) Unit!33285)

(assert (=> b!1748659 (= lt!674188 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!297 thiss!24550 (rule!5429 lt!674202) lt!674201 (++!5248 lt!673907 suffix!1421)))))

(assert (=> b!1748659 (not (matchR!2225 (regex!3423 (rule!5429 lt!674202)) lt!674201))))

(declare-fun lt!674189 () Unit!33285)

(assert (=> b!1748659 (= lt!674189 lt!674188)))

(assert (=> b!1748659 false))

(assert (= (and d!534580 res!786381) b!1748657))

(assert (= (and b!1748657 res!786380) b!1748658))

(assert (= (and d!534580 c!285298) b!1748659))

(assert (= (and d!534580 (not c!285298)) b!1748660))

(assert (=> d!534580 m!2160693))

(declare-fun m!2161493 () Bool)

(assert (=> d!534580 m!2161493))

(declare-fun m!2161495 () Bool)

(assert (=> d!534580 m!2161495))

(declare-fun m!2161497 () Bool)

(assert (=> d!534580 m!2161497))

(assert (=> d!534580 m!2160787))

(declare-fun m!2161499 () Bool)

(assert (=> d!534580 m!2161499))

(declare-fun m!2161501 () Bool)

(assert (=> d!534580 m!2161501))

(assert (=> d!534580 m!2161495))

(declare-fun m!2161503 () Bool)

(assert (=> d!534580 m!2161503))

(declare-fun m!2161505 () Bool)

(assert (=> d!534580 m!2161505))

(declare-fun m!2161507 () Bool)

(assert (=> d!534580 m!2161507))

(declare-fun m!2161509 () Bool)

(assert (=> d!534580 m!2161509))

(assert (=> d!534580 m!2161503))

(declare-fun m!2161511 () Bool)

(assert (=> d!534580 m!2161511))

(declare-fun m!2161513 () Bool)

(assert (=> d!534580 m!2161513))

(declare-fun m!2161515 () Bool)

(assert (=> d!534580 m!2161515))

(declare-fun m!2161517 () Bool)

(assert (=> d!534580 m!2161517))

(declare-fun m!2161519 () Bool)

(assert (=> d!534580 m!2161519))

(assert (=> d!534580 m!2161507))

(declare-fun m!2161521 () Bool)

(assert (=> d!534580 m!2161521))

(assert (=> d!534580 m!2161513))

(assert (=> d!534580 m!2160693))

(assert (=> d!534580 m!2161503))

(assert (=> d!534580 m!2160693))

(assert (=> d!534580 m!2161509))

(declare-fun m!2161523 () Bool)

(assert (=> d!534580 m!2161523))

(assert (=> d!534580 m!2160787))

(declare-fun m!2161525 () Bool)

(assert (=> d!534580 m!2161525))

(assert (=> d!534580 m!2161499))

(assert (=> d!534580 m!2160735))

(declare-fun m!2161527 () Bool)

(assert (=> d!534580 m!2161527))

(assert (=> b!1748658 m!2161499))

(assert (=> b!1748658 m!2161499))

(declare-fun m!2161529 () Bool)

(assert (=> b!1748658 m!2161529))

(assert (=> b!1748657 m!2161499))

(assert (=> b!1748657 m!2161529))

(assert (=> b!1748657 m!2161509))

(assert (=> b!1748657 m!2161523))

(assert (=> b!1748657 m!2161509))

(assert (=> b!1748657 m!2161523))

(declare-fun m!2161531 () Bool)

(assert (=> b!1748657 m!2161531))

(assert (=> b!1748657 m!2161499))

(declare-fun m!2161533 () Bool)

(assert (=> b!1748659 m!2161533))

(declare-fun m!2161535 () Bool)

(assert (=> b!1748659 m!2161535))

(assert (=> b!1748659 m!2160693))

(declare-fun m!2161537 () Bool)

(assert (=> b!1748659 m!2161537))

(assert (=> b!1748659 m!2161509))

(assert (=> b!1748659 m!2161535))

(declare-fun m!2161539 () Bool)

(assert (=> b!1748659 m!2161539))

(declare-fun m!2161541 () Bool)

(assert (=> b!1748659 m!2161541))

(assert (=> b!1748659 m!2160693))

(assert (=> b!1748659 m!2161509))

(assert (=> b!1748659 m!2161523))

(assert (=> b!1748034 d!534580))

(declare-fun b!1748662 () Bool)

(declare-fun res!786385 () Bool)

(declare-fun e!1118957 () Bool)

(assert (=> b!1748662 (=> (not res!786385) (not e!1118957))))

(assert (=> b!1748662 (= res!786385 (= (head!4018 lt!673907) (head!4018 lt!673906)))))

(declare-fun d!534596 () Bool)

(declare-fun e!1118958 () Bool)

(assert (=> d!534596 e!1118958))

(declare-fun res!786384 () Bool)

(assert (=> d!534596 (=> res!786384 e!1118958)))

(declare-fun lt!674203 () Bool)

(assert (=> d!534596 (= res!786384 (not lt!674203))))

(declare-fun e!1118956 () Bool)

(assert (=> d!534596 (= lt!674203 e!1118956)))

(declare-fun res!786382 () Bool)

(assert (=> d!534596 (=> res!786382 e!1118956)))

(assert (=> d!534596 (= res!786382 ((_ is Nil!19207) lt!673907))))

(assert (=> d!534596 (= (isPrefix!1664 lt!673907 lt!673906) lt!674203)))

(declare-fun b!1748663 () Bool)

(assert (=> b!1748663 (= e!1118957 (isPrefix!1664 (tail!2613 lt!673907) (tail!2613 lt!673906)))))

(declare-fun b!1748661 () Bool)

(assert (=> b!1748661 (= e!1118956 e!1118957)))

(declare-fun res!786383 () Bool)

(assert (=> b!1748661 (=> (not res!786383) (not e!1118957))))

(assert (=> b!1748661 (= res!786383 (not ((_ is Nil!19207) lt!673906)))))

(declare-fun b!1748664 () Bool)

(assert (=> b!1748664 (= e!1118958 (>= (size!15256 lt!673906) (size!15256 lt!673907)))))

(assert (= (and d!534596 (not res!786382)) b!1748661))

(assert (= (and b!1748661 res!786383) b!1748662))

(assert (= (and b!1748662 res!786385) b!1748663))

(assert (= (and d!534596 (not res!786384)) b!1748664))

(assert (=> b!1748662 m!2161217))

(assert (=> b!1748662 m!2161355))

(assert (=> b!1748663 m!2161222))

(assert (=> b!1748663 m!2160933))

(assert (=> b!1748663 m!2161222))

(assert (=> b!1748663 m!2160933))

(declare-fun m!2161543 () Bool)

(assert (=> b!1748663 m!2161543))

(assert (=> b!1748664 m!2160931))

(assert (=> b!1748664 m!2161281))

(assert (=> b!1748034 d!534596))

(declare-fun b!1748666 () Bool)

(declare-fun res!786389 () Bool)

(declare-fun e!1118960 () Bool)

(assert (=> b!1748666 (=> (not res!786389) (not e!1118960))))

(assert (=> b!1748666 (= res!786389 (= (head!4018 lt!673917) (head!4018 (++!5248 lt!673917 (_2!10827 lt!673905)))))))

(declare-fun d!534598 () Bool)

(declare-fun e!1118961 () Bool)

(assert (=> d!534598 e!1118961))

(declare-fun res!786388 () Bool)

(assert (=> d!534598 (=> res!786388 e!1118961)))

(declare-fun lt!674204 () Bool)

(assert (=> d!534598 (= res!786388 (not lt!674204))))

(declare-fun e!1118959 () Bool)

(assert (=> d!534598 (= lt!674204 e!1118959)))

(declare-fun res!786386 () Bool)

(assert (=> d!534598 (=> res!786386 e!1118959)))

(assert (=> d!534598 (= res!786386 ((_ is Nil!19207) lt!673917))))

(assert (=> d!534598 (= (isPrefix!1664 lt!673917 (++!5248 lt!673917 (_2!10827 lt!673905))) lt!674204)))

(declare-fun b!1748667 () Bool)

(assert (=> b!1748667 (= e!1118960 (isPrefix!1664 (tail!2613 lt!673917) (tail!2613 (++!5248 lt!673917 (_2!10827 lt!673905)))))))

(declare-fun b!1748665 () Bool)

(assert (=> b!1748665 (= e!1118959 e!1118960)))

(declare-fun res!786387 () Bool)

(assert (=> b!1748665 (=> (not res!786387) (not e!1118960))))

(assert (=> b!1748665 (= res!786387 (not ((_ is Nil!19207) (++!5248 lt!673917 (_2!10827 lt!673905)))))))

(declare-fun b!1748668 () Bool)

(assert (=> b!1748668 (= e!1118961 (>= (size!15256 (++!5248 lt!673917 (_2!10827 lt!673905))) (size!15256 lt!673917)))))

(assert (= (and d!534598 (not res!786386)) b!1748665))

(assert (= (and b!1748665 res!786387) b!1748666))

(assert (= (and b!1748666 res!786389) b!1748667))

(assert (= (and d!534598 (not res!786388)) b!1748668))

(assert (=> b!1748666 m!2161197))

(assert (=> b!1748666 m!2160701))

(declare-fun m!2161545 () Bool)

(assert (=> b!1748666 m!2161545))

(assert (=> b!1748667 m!2161201))

(assert (=> b!1748667 m!2160701))

(declare-fun m!2161547 () Bool)

(assert (=> b!1748667 m!2161547))

(assert (=> b!1748667 m!2161201))

(assert (=> b!1748667 m!2161547))

(declare-fun m!2161549 () Bool)

(assert (=> b!1748667 m!2161549))

(assert (=> b!1748668 m!2160701))

(declare-fun m!2161551 () Bool)

(assert (=> b!1748668 m!2161551))

(assert (=> b!1748668 m!2160739))

(assert (=> b!1748034 d!534598))

(declare-fun d!534600 () Bool)

(declare-fun e!1118964 () Bool)

(assert (=> d!534600 e!1118964))

(declare-fun res!786394 () Bool)

(assert (=> d!534600 (=> (not res!786394) (not e!1118964))))

(assert (=> d!534600 (= res!786394 (isDefined!3214 (getRuleFromTag!473 thiss!24550 rules!3447 (tag!3771 (rule!5429 (_1!10827 lt!673905))))))))

(declare-fun lt!674207 () Unit!33285)

(declare-fun choose!10790 (LexerInterface!3052 List!19278 List!19277 Token!6412) Unit!33285)

(assert (=> d!534600 (= lt!674207 (choose!10790 thiss!24550 rules!3447 lt!673906 (_1!10827 lt!673905)))))

(assert (=> d!534600 (rulesInvariant!2721 thiss!24550 rules!3447)))

(assert (=> d!534600 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!473 thiss!24550 rules!3447 lt!673906 (_1!10827 lt!673905)) lt!674207)))

(declare-fun b!1748673 () Bool)

(declare-fun res!786395 () Bool)

(assert (=> b!1748673 (=> (not res!786395) (not e!1118964))))

(assert (=> b!1748673 (= res!786395 (matchR!2225 (regex!3423 (get!5800 (getRuleFromTag!473 thiss!24550 rules!3447 (tag!3771 (rule!5429 (_1!10827 lt!673905)))))) (list!7780 (charsOf!2072 (_1!10827 lt!673905)))))))

(declare-fun b!1748674 () Bool)

(assert (=> b!1748674 (= e!1118964 (= (rule!5429 (_1!10827 lt!673905)) (get!5800 (getRuleFromTag!473 thiss!24550 rules!3447 (tag!3771 (rule!5429 (_1!10827 lt!673905)))))))))

(assert (= (and d!534600 res!786394) b!1748673))

(assert (= (and b!1748673 res!786395) b!1748674))

(assert (=> d!534600 m!2160697))

(assert (=> d!534600 m!2160697))

(declare-fun m!2161553 () Bool)

(assert (=> d!534600 m!2161553))

(declare-fun m!2161555 () Bool)

(assert (=> d!534600 m!2161555))

(assert (=> d!534600 m!2160767))

(assert (=> b!1748673 m!2160761))

(declare-fun m!2161557 () Bool)

(assert (=> b!1748673 m!2161557))

(assert (=> b!1748673 m!2160695))

(assert (=> b!1748673 m!2160697))

(declare-fun m!2161559 () Bool)

(assert (=> b!1748673 m!2161559))

(assert (=> b!1748673 m!2160695))

(assert (=> b!1748673 m!2160761))

(assert (=> b!1748673 m!2160697))

(assert (=> b!1748674 m!2160697))

(assert (=> b!1748674 m!2160697))

(assert (=> b!1748674 m!2161559))

(assert (=> b!1748034 d!534600))

(declare-fun b!1748677 () Bool)

(declare-fun res!786396 () Bool)

(declare-fun e!1118966 () Bool)

(assert (=> b!1748677 (=> (not res!786396) (not e!1118966))))

(declare-fun lt!674208 () List!19277)

(assert (=> b!1748677 (= res!786396 (= (size!15256 lt!674208) (+ (size!15256 lt!673907) (size!15256 suffix!1421))))))

(declare-fun b!1748678 () Bool)

(assert (=> b!1748678 (= e!1118966 (or (not (= suffix!1421 Nil!19207)) (= lt!674208 lt!673907)))))

(declare-fun b!1748676 () Bool)

(declare-fun e!1118965 () List!19277)

(assert (=> b!1748676 (= e!1118965 (Cons!19207 (h!24608 lt!673907) (++!5248 (t!162524 lt!673907) suffix!1421)))))

(declare-fun b!1748675 () Bool)

(assert (=> b!1748675 (= e!1118965 suffix!1421)))

(declare-fun d!534602 () Bool)

(assert (=> d!534602 e!1118966))

(declare-fun res!786397 () Bool)

(assert (=> d!534602 (=> (not res!786397) (not e!1118966))))

(assert (=> d!534602 (= res!786397 (= (content!2763 lt!674208) ((_ map or) (content!2763 lt!673907) (content!2763 suffix!1421))))))

(assert (=> d!534602 (= lt!674208 e!1118965)))

(declare-fun c!285299 () Bool)

(assert (=> d!534602 (= c!285299 ((_ is Nil!19207) lt!673907))))

(assert (=> d!534602 (= (++!5248 lt!673907 suffix!1421) lt!674208)))

(assert (= (and d!534602 c!285299) b!1748675))

(assert (= (and d!534602 (not c!285299)) b!1748676))

(assert (= (and d!534602 res!786397) b!1748677))

(assert (= (and b!1748677 res!786396) b!1748678))

(declare-fun m!2161561 () Bool)

(assert (=> b!1748677 m!2161561))

(assert (=> b!1748677 m!2161281))

(declare-fun m!2161563 () Bool)

(assert (=> b!1748677 m!2161563))

(declare-fun m!2161565 () Bool)

(assert (=> b!1748676 m!2161565))

(declare-fun m!2161567 () Bool)

(assert (=> d!534602 m!2161567))

(assert (=> d!534602 m!2161289))

(declare-fun m!2161569 () Bool)

(assert (=> d!534602 m!2161569))

(assert (=> b!1748034 d!534602))

(declare-fun b!1748697 () Bool)

(declare-fun res!786413 () Bool)

(declare-fun e!1118975 () Bool)

(assert (=> b!1748697 (=> (not res!786413) (not e!1118975))))

(declare-fun lt!674222 () Option!3870)

(assert (=> b!1748697 (= res!786413 (= (++!5248 (list!7780 (charsOf!2072 (_1!10827 (get!5799 lt!674222)))) (_2!10827 (get!5799 lt!674222))) lt!673906))))

(declare-fun bm!110364 () Bool)

(declare-fun call!110369 () Option!3870)

(assert (=> bm!110364 (= call!110369 (maxPrefixOneRule!978 thiss!24550 (h!24609 rules!3447) lt!673906))))

(declare-fun b!1748698 () Bool)

(declare-fun e!1118974 () Option!3870)

(declare-fun lt!674220 () Option!3870)

(declare-fun lt!674219 () Option!3870)

(assert (=> b!1748698 (= e!1118974 (ite (and ((_ is None!3869) lt!674220) ((_ is None!3869) lt!674219)) None!3869 (ite ((_ is None!3869) lt!674219) lt!674220 (ite ((_ is None!3869) lt!674220) lt!674219 (ite (>= (size!15254 (_1!10827 (v!25310 lt!674220))) (size!15254 (_1!10827 (v!25310 lt!674219)))) lt!674220 lt!674219)))))))

(assert (=> b!1748698 (= lt!674220 call!110369)))

(assert (=> b!1748698 (= lt!674219 (maxPrefix!1606 thiss!24550 (t!162525 rules!3447) lt!673906))))

(declare-fun b!1748699 () Bool)

(declare-fun e!1118973 () Bool)

(assert (=> b!1748699 (= e!1118973 e!1118975)))

(declare-fun res!786412 () Bool)

(assert (=> b!1748699 (=> (not res!786412) (not e!1118975))))

(assert (=> b!1748699 (= res!786412 (isDefined!3213 lt!674222))))

(declare-fun b!1748700 () Bool)

(assert (=> b!1748700 (= e!1118974 call!110369)))

(declare-fun b!1748701 () Bool)

(declare-fun res!786418 () Bool)

(assert (=> b!1748701 (=> (not res!786418) (not e!1118975))))

(assert (=> b!1748701 (= res!786418 (= (value!107228 (_1!10827 (get!5799 lt!674222))) (apply!5224 (transformation!3423 (rule!5429 (_1!10827 (get!5799 lt!674222)))) (seqFromList!2393 (originalCharacters!4237 (_1!10827 (get!5799 lt!674222)))))))))

(declare-fun b!1748702 () Bool)

(declare-fun res!786414 () Bool)

(assert (=> b!1748702 (=> (not res!786414) (not e!1118975))))

(assert (=> b!1748702 (= res!786414 (matchR!2225 (regex!3423 (rule!5429 (_1!10827 (get!5799 lt!674222)))) (list!7780 (charsOf!2072 (_1!10827 (get!5799 lt!674222))))))))

(declare-fun b!1748703 () Bool)

(assert (=> b!1748703 (= e!1118975 (contains!3449 rules!3447 (rule!5429 (_1!10827 (get!5799 lt!674222)))))))

(declare-fun b!1748704 () Bool)

(declare-fun res!786416 () Bool)

(assert (=> b!1748704 (=> (not res!786416) (not e!1118975))))

(assert (=> b!1748704 (= res!786416 (< (size!15256 (_2!10827 (get!5799 lt!674222))) (size!15256 lt!673906)))))

(declare-fun d!534604 () Bool)

(assert (=> d!534604 e!1118973))

(declare-fun res!786415 () Bool)

(assert (=> d!534604 (=> res!786415 e!1118973)))

(assert (=> d!534604 (= res!786415 (isEmpty!12106 lt!674222))))

(assert (=> d!534604 (= lt!674222 e!1118974)))

(declare-fun c!285302 () Bool)

(assert (=> d!534604 (= c!285302 (and ((_ is Cons!19208) rules!3447) ((_ is Nil!19208) (t!162525 rules!3447))))))

(declare-fun lt!674223 () Unit!33285)

(declare-fun lt!674221 () Unit!33285)

(assert (=> d!534604 (= lt!674223 lt!674221)))

(assert (=> d!534604 (isPrefix!1664 lt!673906 lt!673906)))

(declare-fun lemmaIsPrefixRefl!1109 (List!19277 List!19277) Unit!33285)

(assert (=> d!534604 (= lt!674221 (lemmaIsPrefixRefl!1109 lt!673906 lt!673906))))

(declare-fun rulesValidInductive!1146 (LexerInterface!3052 List!19278) Bool)

(assert (=> d!534604 (rulesValidInductive!1146 thiss!24550 rules!3447)))

(assert (=> d!534604 (= (maxPrefix!1606 thiss!24550 rules!3447 lt!673906) lt!674222)))

(declare-fun b!1748705 () Bool)

(declare-fun res!786417 () Bool)

(assert (=> b!1748705 (=> (not res!786417) (not e!1118975))))

(assert (=> b!1748705 (= res!786417 (= (list!7780 (charsOf!2072 (_1!10827 (get!5799 lt!674222)))) (originalCharacters!4237 (_1!10827 (get!5799 lt!674222)))))))

(assert (= (and d!534604 c!285302) b!1748700))

(assert (= (and d!534604 (not c!285302)) b!1748698))

(assert (= (or b!1748700 b!1748698) bm!110364))

(assert (= (and d!534604 (not res!786415)) b!1748699))

(assert (= (and b!1748699 res!786412) b!1748705))

(assert (= (and b!1748705 res!786417) b!1748704))

(assert (= (and b!1748704 res!786416) b!1748697))

(assert (= (and b!1748697 res!786413) b!1748701))

(assert (= (and b!1748701 res!786418) b!1748702))

(assert (= (and b!1748702 res!786414) b!1748703))

(declare-fun m!2161571 () Bool)

(assert (=> b!1748704 m!2161571))

(declare-fun m!2161573 () Bool)

(assert (=> b!1748704 m!2161573))

(assert (=> b!1748704 m!2160931))

(assert (=> b!1748701 m!2161571))

(declare-fun m!2161575 () Bool)

(assert (=> b!1748701 m!2161575))

(assert (=> b!1748701 m!2161575))

(declare-fun m!2161577 () Bool)

(assert (=> b!1748701 m!2161577))

(assert (=> b!1748703 m!2161571))

(declare-fun m!2161579 () Bool)

(assert (=> b!1748703 m!2161579))

(declare-fun m!2161581 () Bool)

(assert (=> b!1748698 m!2161581))

(assert (=> b!1748702 m!2161571))

(declare-fun m!2161583 () Bool)

(assert (=> b!1748702 m!2161583))

(assert (=> b!1748702 m!2161583))

(declare-fun m!2161585 () Bool)

(assert (=> b!1748702 m!2161585))

(assert (=> b!1748702 m!2161585))

(declare-fun m!2161587 () Bool)

(assert (=> b!1748702 m!2161587))

(declare-fun m!2161589 () Bool)

(assert (=> b!1748699 m!2161589))

(assert (=> b!1748705 m!2161571))

(assert (=> b!1748705 m!2161583))

(assert (=> b!1748705 m!2161583))

(assert (=> b!1748705 m!2161585))

(declare-fun m!2161591 () Bool)

(assert (=> d!534604 m!2161591))

(declare-fun m!2161593 () Bool)

(assert (=> d!534604 m!2161593))

(declare-fun m!2161595 () Bool)

(assert (=> d!534604 m!2161595))

(declare-fun m!2161597 () Bool)

(assert (=> d!534604 m!2161597))

(declare-fun m!2161599 () Bool)

(assert (=> bm!110364 m!2161599))

(assert (=> b!1748697 m!2161571))

(assert (=> b!1748697 m!2161583))

(assert (=> b!1748697 m!2161583))

(assert (=> b!1748697 m!2161585))

(assert (=> b!1748697 m!2161585))

(declare-fun m!2161601 () Bool)

(assert (=> b!1748697 m!2161601))

(assert (=> b!1748034 d!534604))

(assert (=> b!1748034 d!534504))

(declare-fun d!534606 () Bool)

(assert (=> d!534606 (= (list!7780 lt!673911) (list!7781 (c!285187 lt!673911)))))

(declare-fun bs!403470 () Bool)

(assert (= bs!403470 d!534606))

(declare-fun m!2161603 () Bool)

(assert (=> bs!403470 m!2161603))

(assert (=> b!1748034 d!534606))

(declare-fun d!534608 () Bool)

(assert (=> d!534608 (isPrefix!1664 lt!673907 (++!5248 lt!673907 suffix!1421))))

(declare-fun lt!674224 () Unit!33285)

(assert (=> d!534608 (= lt!674224 (choose!10789 lt!673907 suffix!1421))))

(assert (=> d!534608 (= (lemmaConcatTwoListThenFirstIsPrefix!1174 lt!673907 suffix!1421) lt!674224)))

(declare-fun bs!403471 () Bool)

(assert (= bs!403471 d!534608))

(assert (=> bs!403471 m!2160693))

(assert (=> bs!403471 m!2160693))

(declare-fun m!2161605 () Bool)

(assert (=> bs!403471 m!2161605))

(declare-fun m!2161607 () Bool)

(assert (=> bs!403471 m!2161607))

(assert (=> b!1748034 d!534608))

(declare-fun d!534610 () Bool)

(assert (=> d!534610 (= (isDefined!3214 lt!673914) (not (isEmpty!12108 lt!673914)))))

(declare-fun bs!403472 () Bool)

(assert (= bs!403472 d!534610))

(declare-fun m!2161609 () Bool)

(assert (=> bs!403472 m!2161609))

(assert (=> b!1748034 d!534610))

(declare-fun d!534612 () Bool)

(assert (=> d!534612 (= (inv!24900 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (value!107228 (_1!10827 lt!673905)))) (isBalanced!1996 (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (value!107228 (_1!10827 lt!673905))))))))

(declare-fun bs!403473 () Bool)

(assert (= bs!403473 d!534612))

(declare-fun m!2161611 () Bool)

(assert (=> bs!403473 m!2161611))

(assert (=> tb!104669 d!534612))

(declare-fun d!534614 () Bool)

(assert (=> d!534614 (= (isDefined!3213 lt!673926) (not (isEmpty!12106 lt!673926)))))

(declare-fun bs!403474 () Bool)

(assert (= bs!403474 d!534614))

(declare-fun m!2161613 () Bool)

(assert (=> bs!403474 m!2161613))

(assert (=> b!1748033 d!534614))

(declare-fun b!1748706 () Bool)

(declare-fun res!786420 () Bool)

(declare-fun e!1118978 () Bool)

(assert (=> b!1748706 (=> (not res!786420) (not e!1118978))))

(declare-fun lt!674228 () Option!3870)

(assert (=> b!1748706 (= res!786420 (= (++!5248 (list!7780 (charsOf!2072 (_1!10827 (get!5799 lt!674228)))) (_2!10827 (get!5799 lt!674228))) lt!673907))))

(declare-fun call!110370 () Option!3870)

(declare-fun bm!110365 () Bool)

(assert (=> bm!110365 (= call!110370 (maxPrefixOneRule!978 thiss!24550 (h!24609 rules!3447) lt!673907))))

(declare-fun b!1748707 () Bool)

(declare-fun e!1118977 () Option!3870)

(declare-fun lt!674226 () Option!3870)

(declare-fun lt!674225 () Option!3870)

(assert (=> b!1748707 (= e!1118977 (ite (and ((_ is None!3869) lt!674226) ((_ is None!3869) lt!674225)) None!3869 (ite ((_ is None!3869) lt!674225) lt!674226 (ite ((_ is None!3869) lt!674226) lt!674225 (ite (>= (size!15254 (_1!10827 (v!25310 lt!674226))) (size!15254 (_1!10827 (v!25310 lt!674225)))) lt!674226 lt!674225)))))))

(assert (=> b!1748707 (= lt!674226 call!110370)))

(assert (=> b!1748707 (= lt!674225 (maxPrefix!1606 thiss!24550 (t!162525 rules!3447) lt!673907))))

(declare-fun b!1748708 () Bool)

(declare-fun e!1118976 () Bool)

(assert (=> b!1748708 (= e!1118976 e!1118978)))

(declare-fun res!786419 () Bool)

(assert (=> b!1748708 (=> (not res!786419) (not e!1118978))))

(assert (=> b!1748708 (= res!786419 (isDefined!3213 lt!674228))))

(declare-fun b!1748709 () Bool)

(assert (=> b!1748709 (= e!1118977 call!110370)))

(declare-fun b!1748710 () Bool)

(declare-fun res!786425 () Bool)

(assert (=> b!1748710 (=> (not res!786425) (not e!1118978))))

(assert (=> b!1748710 (= res!786425 (= (value!107228 (_1!10827 (get!5799 lt!674228))) (apply!5224 (transformation!3423 (rule!5429 (_1!10827 (get!5799 lt!674228)))) (seqFromList!2393 (originalCharacters!4237 (_1!10827 (get!5799 lt!674228)))))))))

(declare-fun b!1748711 () Bool)

(declare-fun res!786421 () Bool)

(assert (=> b!1748711 (=> (not res!786421) (not e!1118978))))

(assert (=> b!1748711 (= res!786421 (matchR!2225 (regex!3423 (rule!5429 (_1!10827 (get!5799 lt!674228)))) (list!7780 (charsOf!2072 (_1!10827 (get!5799 lt!674228))))))))

(declare-fun b!1748712 () Bool)

(assert (=> b!1748712 (= e!1118978 (contains!3449 rules!3447 (rule!5429 (_1!10827 (get!5799 lt!674228)))))))

(declare-fun b!1748713 () Bool)

(declare-fun res!786423 () Bool)

(assert (=> b!1748713 (=> (not res!786423) (not e!1118978))))

(assert (=> b!1748713 (= res!786423 (< (size!15256 (_2!10827 (get!5799 lt!674228))) (size!15256 lt!673907)))))

(declare-fun d!534616 () Bool)

(assert (=> d!534616 e!1118976))

(declare-fun res!786422 () Bool)

(assert (=> d!534616 (=> res!786422 e!1118976)))

(assert (=> d!534616 (= res!786422 (isEmpty!12106 lt!674228))))

(assert (=> d!534616 (= lt!674228 e!1118977)))

(declare-fun c!285303 () Bool)

(assert (=> d!534616 (= c!285303 (and ((_ is Cons!19208) rules!3447) ((_ is Nil!19208) (t!162525 rules!3447))))))

(declare-fun lt!674229 () Unit!33285)

(declare-fun lt!674227 () Unit!33285)

(assert (=> d!534616 (= lt!674229 lt!674227)))

(assert (=> d!534616 (isPrefix!1664 lt!673907 lt!673907)))

(assert (=> d!534616 (= lt!674227 (lemmaIsPrefixRefl!1109 lt!673907 lt!673907))))

(assert (=> d!534616 (rulesValidInductive!1146 thiss!24550 rules!3447)))

(assert (=> d!534616 (= (maxPrefix!1606 thiss!24550 rules!3447 lt!673907) lt!674228)))

(declare-fun b!1748714 () Bool)

(declare-fun res!786424 () Bool)

(assert (=> b!1748714 (=> (not res!786424) (not e!1118978))))

(assert (=> b!1748714 (= res!786424 (= (list!7780 (charsOf!2072 (_1!10827 (get!5799 lt!674228)))) (originalCharacters!4237 (_1!10827 (get!5799 lt!674228)))))))

(assert (= (and d!534616 c!285303) b!1748709))

(assert (= (and d!534616 (not c!285303)) b!1748707))

(assert (= (or b!1748709 b!1748707) bm!110365))

(assert (= (and d!534616 (not res!786422)) b!1748708))

(assert (= (and b!1748708 res!786419) b!1748714))

(assert (= (and b!1748714 res!786424) b!1748713))

(assert (= (and b!1748713 res!786423) b!1748706))

(assert (= (and b!1748706 res!786420) b!1748710))

(assert (= (and b!1748710 res!786425) b!1748711))

(assert (= (and b!1748711 res!786421) b!1748712))

(declare-fun m!2161615 () Bool)

(assert (=> b!1748713 m!2161615))

(declare-fun m!2161617 () Bool)

(assert (=> b!1748713 m!2161617))

(assert (=> b!1748713 m!2161281))

(assert (=> b!1748710 m!2161615))

(declare-fun m!2161619 () Bool)

(assert (=> b!1748710 m!2161619))

(assert (=> b!1748710 m!2161619))

(declare-fun m!2161621 () Bool)

(assert (=> b!1748710 m!2161621))

(assert (=> b!1748712 m!2161615))

(declare-fun m!2161623 () Bool)

(assert (=> b!1748712 m!2161623))

(declare-fun m!2161625 () Bool)

(assert (=> b!1748707 m!2161625))

(assert (=> b!1748711 m!2161615))

(declare-fun m!2161627 () Bool)

(assert (=> b!1748711 m!2161627))

(assert (=> b!1748711 m!2161627))

(declare-fun m!2161629 () Bool)

(assert (=> b!1748711 m!2161629))

(assert (=> b!1748711 m!2161629))

(declare-fun m!2161631 () Bool)

(assert (=> b!1748711 m!2161631))

(declare-fun m!2161633 () Bool)

(assert (=> b!1748708 m!2161633))

(assert (=> b!1748714 m!2161615))

(assert (=> b!1748714 m!2161627))

(assert (=> b!1748714 m!2161627))

(assert (=> b!1748714 m!2161629))

(declare-fun m!2161635 () Bool)

(assert (=> d!534616 m!2161635))

(declare-fun m!2161637 () Bool)

(assert (=> d!534616 m!2161637))

(declare-fun m!2161639 () Bool)

(assert (=> d!534616 m!2161639))

(assert (=> d!534616 m!2161597))

(declare-fun m!2161641 () Bool)

(assert (=> bm!110365 m!2161641))

(assert (=> b!1748706 m!2161615))

(assert (=> b!1748706 m!2161627))

(assert (=> b!1748706 m!2161627))

(assert (=> b!1748706 m!2161629))

(assert (=> b!1748706 m!2161629))

(declare-fun m!2161643 () Bool)

(assert (=> b!1748706 m!2161643))

(assert (=> b!1748033 d!534616))

(declare-fun d!534618 () Bool)

(assert (=> d!534618 (= (list!7780 (charsOf!2072 token!523)) (list!7781 (c!285187 (charsOf!2072 token!523))))))

(declare-fun bs!403475 () Bool)

(assert (= bs!403475 d!534618))

(declare-fun m!2161645 () Bool)

(assert (=> bs!403475 m!2161645))

(assert (=> b!1748033 d!534618))

(declare-fun d!534620 () Bool)

(declare-fun lt!674230 () BalanceConc!12722)

(assert (=> d!534620 (= (list!7780 lt!674230) (originalCharacters!4237 token!523))))

(assert (=> d!534620 (= lt!674230 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 token!523))) (value!107228 token!523)))))

(assert (=> d!534620 (= (charsOf!2072 token!523) lt!674230)))

(declare-fun b_lambda!56161 () Bool)

(assert (=> (not b_lambda!56161) (not d!534620)))

(assert (=> d!534620 t!162551))

(declare-fun b_and!130467 () Bool)

(assert (= b_and!130433 (and (=> t!162551 result!125930) b_and!130467)))

(assert (=> d!534620 t!162553))

(declare-fun b_and!130469 () Bool)

(assert (= b_and!130435 (and (=> t!162553 result!125932) b_and!130469)))

(assert (=> d!534620 t!162555))

(declare-fun b_and!130471 () Bool)

(assert (= b_and!130437 (and (=> t!162555 result!125934) b_and!130471)))

(declare-fun m!2161647 () Bool)

(assert (=> d!534620 m!2161647))

(assert (=> d!534620 m!2161313))

(assert (=> b!1748033 d!534620))

(declare-fun d!534622 () Bool)

(assert (=> d!534622 (= (inv!24892 (tag!3771 (rule!5429 token!523))) (= (mod (str.len (value!107227 (tag!3771 (rule!5429 token!523)))) 2) 0))))

(assert (=> b!1748032 d!534622))

(declare-fun d!534624 () Bool)

(declare-fun res!786426 () Bool)

(declare-fun e!1118979 () Bool)

(assert (=> d!534624 (=> (not res!786426) (not e!1118979))))

(assert (=> d!534624 (= res!786426 (semiInverseModEq!1356 (toChars!4797 (transformation!3423 (rule!5429 token!523))) (toValue!4938 (transformation!3423 (rule!5429 token!523)))))))

(assert (=> d!534624 (= (inv!24897 (transformation!3423 (rule!5429 token!523))) e!1118979)))

(declare-fun b!1748715 () Bool)

(assert (=> b!1748715 (= e!1118979 (equivClasses!1297 (toChars!4797 (transformation!3423 (rule!5429 token!523))) (toValue!4938 (transformation!3423 (rule!5429 token!523)))))))

(assert (= (and d!534624 res!786426) b!1748715))

(declare-fun m!2161649 () Bool)

(assert (=> d!534624 m!2161649))

(declare-fun m!2161651 () Bool)

(assert (=> b!1748715 m!2161651))

(assert (=> b!1748032 d!534624))

(declare-fun tp!497355 () Bool)

(declare-fun b!1748724 () Bool)

(declare-fun tp!497356 () Bool)

(declare-fun e!1118984 () Bool)

(assert (=> b!1748724 (= e!1118984 (and (inv!24899 (left!15358 (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911))))) tp!497355 (inv!24899 (right!15688 (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911))))) tp!497356))))

(declare-fun b!1748726 () Bool)

(declare-fun e!1118985 () Bool)

(declare-fun tp!497354 () Bool)

(assert (=> b!1748726 (= e!1118985 tp!497354)))

(declare-fun b!1748725 () Bool)

(declare-fun inv!24906 (IArray!12783) Bool)

(assert (=> b!1748725 (= e!1118984 (and (inv!24906 (xs!9265 (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911))))) e!1118985))))

(assert (=> b!1748057 (= tp!497291 (and (inv!24899 (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911)))) e!1118984))))

(assert (= (and b!1748057 ((_ is Node!6389) (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911))))) b!1748724))

(assert (= b!1748725 b!1748726))

(assert (= (and b!1748057 ((_ is Leaf!9321) (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (dynLambda!9118 (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) lt!673911))))) b!1748725))

(declare-fun m!2161653 () Bool)

(assert (=> b!1748724 m!2161653))

(declare-fun m!2161655 () Bool)

(assert (=> b!1748724 m!2161655))

(declare-fun m!2161657 () Bool)

(assert (=> b!1748725 m!2161657))

(assert (=> b!1748057 m!2160665))

(declare-fun b!1748737 () Bool)

(declare-fun b_free!48123 () Bool)

(declare-fun b_next!48827 () Bool)

(assert (=> b!1748737 (= b_free!48123 (not b_next!48827))))

(declare-fun t!162575 () Bool)

(declare-fun tb!104723 () Bool)

(assert (=> (and b!1748737 (= (toValue!4938 (transformation!3423 (h!24609 (t!162525 rules!3447)))) (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) t!162575) tb!104723))

(declare-fun result!125966 () Bool)

(assert (= result!125966 result!125918))

(assert (=> d!534478 t!162575))

(declare-fun t!162577 () Bool)

(declare-fun tb!104725 () Bool)

(assert (=> (and b!1748737 (= (toValue!4938 (transformation!3423 (h!24609 (t!162525 rules!3447)))) (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) t!162577) tb!104725))

(declare-fun result!125968 () Bool)

(assert (= result!125968 result!125892))

(assert (=> d!534562 t!162577))

(assert (=> d!534390 t!162577))

(declare-fun t!162579 () Bool)

(declare-fun tb!104727 () Bool)

(assert (=> (and b!1748737 (= (toValue!4938 (transformation!3423 (h!24609 (t!162525 rules!3447)))) (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) t!162579) tb!104727))

(declare-fun result!125970 () Bool)

(assert (= result!125970 result!125936))

(assert (=> d!534564 t!162579))

(assert (=> d!534564 t!162577))

(assert (=> b!1748019 t!162577))

(declare-fun b_and!130473 () Bool)

(declare-fun tp!497368 () Bool)

(assert (=> b!1748737 (= tp!497368 (and (=> t!162579 result!125970) (=> t!162577 result!125968) (=> t!162575 result!125966) b_and!130473))))

(declare-fun b_free!48125 () Bool)

(declare-fun b_next!48829 () Bool)

(assert (=> b!1748737 (= b_free!48125 (not b_next!48829))))

(declare-fun tb!104729 () Bool)

(declare-fun t!162581 () Bool)

(assert (=> (and b!1748737 (= (toChars!4797 (transformation!3423 (h!24609 (t!162525 rules!3447)))) (toChars!4797 (transformation!3423 (rule!5429 token!523)))) t!162581) tb!104729))

(declare-fun result!125972 () Bool)

(assert (= result!125972 result!125930))

(assert (=> d!534620 t!162581))

(declare-fun tb!104731 () Bool)

(declare-fun t!162583 () Bool)

(assert (=> (and b!1748737 (= (toChars!4797 (transformation!3423 (h!24609 (t!162525 rules!3447)))) (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) t!162583) tb!104731))

(declare-fun result!125974 () Bool)

(assert (= result!125974 result!125900))

(assert (=> d!534504 t!162583))

(declare-fun t!162585 () Bool)

(declare-fun tb!104733 () Bool)

(assert (=> (and b!1748737 (= (toChars!4797 (transformation!3423 (h!24609 (t!162525 rules!3447)))) (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905))))) t!162585) tb!104733))

(declare-fun result!125976 () Bool)

(assert (= result!125976 result!125884))

(assert (=> d!534390 t!162585))

(assert (=> b!1748024 t!162583))

(assert (=> b!1748514 t!162581))

(assert (=> b!1748019 t!162585))

(declare-fun tp!497365 () Bool)

(declare-fun b_and!130475 () Bool)

(assert (=> b!1748737 (= tp!497365 (and (=> t!162583 result!125974) (=> t!162581 result!125972) (=> t!162585 result!125976) b_and!130475))))

(declare-fun e!1118997 () Bool)

(assert (=> b!1748737 (= e!1118997 (and tp!497368 tp!497365))))

(declare-fun e!1118996 () Bool)

(declare-fun tp!497366 () Bool)

(declare-fun b!1748736 () Bool)

(assert (=> b!1748736 (= e!1118996 (and tp!497366 (inv!24892 (tag!3771 (h!24609 (t!162525 rules!3447)))) (inv!24897 (transformation!3423 (h!24609 (t!162525 rules!3447)))) e!1118997))))

(declare-fun b!1748735 () Bool)

(declare-fun e!1118994 () Bool)

(declare-fun tp!497367 () Bool)

(assert (=> b!1748735 (= e!1118994 (and e!1118996 tp!497367))))

(assert (=> b!1748025 (= tp!497279 e!1118994)))

(assert (= b!1748736 b!1748737))

(assert (= b!1748735 b!1748736))

(assert (= (and b!1748025 ((_ is Cons!19208) (t!162525 rules!3447))) b!1748735))

(declare-fun m!2161659 () Bool)

(assert (=> b!1748736 m!2161659))

(declare-fun m!2161661 () Bool)

(assert (=> b!1748736 m!2161661))

(declare-fun b!1748742 () Bool)

(declare-fun e!1119000 () Bool)

(declare-fun tp!497371 () Bool)

(assert (=> b!1748742 (= e!1119000 (and tp_is_empty!7745 tp!497371))))

(assert (=> b!1748014 (= tp!497280 e!1119000)))

(assert (= (and b!1748014 ((_ is Cons!19207) (t!162524 suffix!1421))) b!1748742))

(declare-fun b!1748743 () Bool)

(declare-fun tp!497374 () Bool)

(declare-fun e!1119001 () Bool)

(declare-fun tp!497373 () Bool)

(assert (=> b!1748743 (= e!1119001 (and (inv!24899 (left!15358 (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (value!107228 (_1!10827 lt!673905)))))) tp!497373 (inv!24899 (right!15688 (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (value!107228 (_1!10827 lt!673905)))))) tp!497374))))

(declare-fun b!1748745 () Bool)

(declare-fun e!1119002 () Bool)

(declare-fun tp!497372 () Bool)

(assert (=> b!1748745 (= e!1119002 tp!497372)))

(declare-fun b!1748744 () Bool)

(assert (=> b!1748744 (= e!1119001 (and (inv!24906 (xs!9265 (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (value!107228 (_1!10827 lt!673905)))))) e!1119002))))

(assert (=> b!1748060 (= tp!497292 (and (inv!24899 (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (value!107228 (_1!10827 lt!673905))))) e!1119001))))

(assert (= (and b!1748060 ((_ is Node!6389) (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (value!107228 (_1!10827 lt!673905)))))) b!1748743))

(assert (= b!1748744 b!1748745))

(assert (= (and b!1748060 ((_ is Leaf!9321) (c!285187 (dynLambda!9117 (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))) (value!107228 (_1!10827 lt!673905)))))) b!1748744))

(declare-fun m!2161663 () Bool)

(assert (=> b!1748743 m!2161663))

(declare-fun m!2161665 () Bool)

(assert (=> b!1748743 m!2161665))

(declare-fun m!2161667 () Bool)

(assert (=> b!1748744 m!2161667))

(assert (=> b!1748060 m!2160671))

(declare-fun b!1748756 () Bool)

(declare-fun e!1119005 () Bool)

(assert (=> b!1748756 (= e!1119005 tp_is_empty!7745)))

(declare-fun b!1748757 () Bool)

(declare-fun tp!497387 () Bool)

(declare-fun tp!497386 () Bool)

(assert (=> b!1748757 (= e!1119005 (and tp!497387 tp!497386))))

(assert (=> b!1748040 (= tp!497288 e!1119005)))

(declare-fun b!1748758 () Bool)

(declare-fun tp!497388 () Bool)

(assert (=> b!1748758 (= e!1119005 tp!497388)))

(declare-fun b!1748759 () Bool)

(declare-fun tp!497385 () Bool)

(declare-fun tp!497389 () Bool)

(assert (=> b!1748759 (= e!1119005 (and tp!497385 tp!497389))))

(assert (= (and b!1748040 ((_ is ElementMatch!4751) (regex!3423 (h!24609 rules!3447)))) b!1748756))

(assert (= (and b!1748040 ((_ is Concat!8265) (regex!3423 (h!24609 rules!3447)))) b!1748757))

(assert (= (and b!1748040 ((_ is Star!4751) (regex!3423 (h!24609 rules!3447)))) b!1748758))

(assert (= (and b!1748040 ((_ is Union!4751) (regex!3423 (h!24609 rules!3447)))) b!1748759))

(declare-fun b!1748760 () Bool)

(declare-fun e!1119006 () Bool)

(declare-fun tp!497390 () Bool)

(assert (=> b!1748760 (= e!1119006 (and tp_is_empty!7745 tp!497390))))

(assert (=> b!1748015 (= tp!497277 e!1119006)))

(assert (= (and b!1748015 ((_ is Cons!19207) (originalCharacters!4237 token!523))) b!1748760))

(declare-fun b!1748761 () Bool)

(declare-fun e!1119007 () Bool)

(assert (=> b!1748761 (= e!1119007 tp_is_empty!7745)))

(declare-fun b!1748762 () Bool)

(declare-fun tp!497393 () Bool)

(declare-fun tp!497392 () Bool)

(assert (=> b!1748762 (= e!1119007 (and tp!497393 tp!497392))))

(assert (=> b!1748032 (= tp!497278 e!1119007)))

(declare-fun b!1748763 () Bool)

(declare-fun tp!497394 () Bool)

(assert (=> b!1748763 (= e!1119007 tp!497394)))

(declare-fun b!1748764 () Bool)

(declare-fun tp!497391 () Bool)

(declare-fun tp!497395 () Bool)

(assert (=> b!1748764 (= e!1119007 (and tp!497391 tp!497395))))

(assert (= (and b!1748032 ((_ is ElementMatch!4751) (regex!3423 (rule!5429 token!523)))) b!1748761))

(assert (= (and b!1748032 ((_ is Concat!8265) (regex!3423 (rule!5429 token!523)))) b!1748762))

(assert (= (and b!1748032 ((_ is Star!4751) (regex!3423 (rule!5429 token!523)))) b!1748763))

(assert (= (and b!1748032 ((_ is Union!4751) (regex!3423 (rule!5429 token!523)))) b!1748764))

(declare-fun b!1748765 () Bool)

(declare-fun e!1119008 () Bool)

(assert (=> b!1748765 (= e!1119008 tp_is_empty!7745)))

(declare-fun b!1748766 () Bool)

(declare-fun tp!497398 () Bool)

(declare-fun tp!497397 () Bool)

(assert (=> b!1748766 (= e!1119008 (and tp!497398 tp!497397))))

(assert (=> b!1748016 (= tp!497283 e!1119008)))

(declare-fun b!1748767 () Bool)

(declare-fun tp!497399 () Bool)

(assert (=> b!1748767 (= e!1119008 tp!497399)))

(declare-fun b!1748768 () Bool)

(declare-fun tp!497396 () Bool)

(declare-fun tp!497400 () Bool)

(assert (=> b!1748768 (= e!1119008 (and tp!497396 tp!497400))))

(assert (= (and b!1748016 ((_ is ElementMatch!4751) (regex!3423 rule!422))) b!1748765))

(assert (= (and b!1748016 ((_ is Concat!8265) (regex!3423 rule!422))) b!1748766))

(assert (= (and b!1748016 ((_ is Star!4751) (regex!3423 rule!422))) b!1748767))

(assert (= (and b!1748016 ((_ is Union!4751) (regex!3423 rule!422))) b!1748768))

(declare-fun b_lambda!56163 () Bool)

(assert (= b_lambda!56141 (or (and b!1748041 b_free!48109 (= (toChars!4797 (transformation!3423 rule!422)) (toChars!4797 (transformation!3423 (rule!5429 token!523))))) (and b!1748017 b_free!48113) (and b!1748035 b_free!48117 (= (toChars!4797 (transformation!3423 (h!24609 rules!3447))) (toChars!4797 (transformation!3423 (rule!5429 token!523))))) (and b!1748737 b_free!48125 (= (toChars!4797 (transformation!3423 (h!24609 (t!162525 rules!3447)))) (toChars!4797 (transformation!3423 (rule!5429 token!523))))) b_lambda!56163)))

(declare-fun b_lambda!56165 () Bool)

(assert (= b_lambda!56161 (or (and b!1748041 b_free!48109 (= (toChars!4797 (transformation!3423 rule!422)) (toChars!4797 (transformation!3423 (rule!5429 token!523))))) (and b!1748017 b_free!48113) (and b!1748035 b_free!48117 (= (toChars!4797 (transformation!3423 (h!24609 rules!3447))) (toChars!4797 (transformation!3423 (rule!5429 token!523))))) (and b!1748737 b_free!48125 (= (toChars!4797 (transformation!3423 (h!24609 (t!162525 rules!3447)))) (toChars!4797 (transformation!3423 (rule!5429 token!523))))) b_lambda!56165)))

(declare-fun b_lambda!56167 () Bool)

(assert (= b_lambda!56115 (or (and b!1748041 b_free!48109 (= (toChars!4797 (transformation!3423 rule!422)) (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))))) (and b!1748017 b_free!48113 (= (toChars!4797 (transformation!3423 (rule!5429 token!523))) (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))))) (and b!1748035 b_free!48117 (= (toChars!4797 (transformation!3423 (h!24609 rules!3447))) (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))))) (and b!1748737 b_free!48125 (= (toChars!4797 (transformation!3423 (h!24609 (t!162525 rules!3447)))) (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))))) b_lambda!56167)))

(declare-fun b_lambda!56169 () Bool)

(assert (= b_lambda!56111 (or (and b!1748041 b_free!48109 (= (toChars!4797 (transformation!3423 rule!422)) (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))))) (and b!1748017 b_free!48113 (= (toChars!4797 (transformation!3423 (rule!5429 token!523))) (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))))) (and b!1748035 b_free!48117 (= (toChars!4797 (transformation!3423 (h!24609 rules!3447))) (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))))) (and b!1748737 b_free!48125 (= (toChars!4797 (transformation!3423 (h!24609 (t!162525 rules!3447)))) (toChars!4797 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))))) b_lambda!56169)))

(declare-fun b_lambda!56171 () Bool)

(assert (= b_lambda!56113 (or (and b!1748041 b_free!48107 (= (toValue!4938 (transformation!3423 rule!422)) (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))))) (and b!1748017 b_free!48111 (= (toValue!4938 (transformation!3423 (rule!5429 token!523))) (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))))) (and b!1748035 b_free!48115 (= (toValue!4938 (transformation!3423 (h!24609 rules!3447))) (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))))) (and b!1748737 b_free!48123 (= (toValue!4938 (transformation!3423 (h!24609 (t!162525 rules!3447)))) (toValue!4938 (transformation!3423 (rule!5429 (_1!10827 lt!673905)))))) b_lambda!56171)))

(check-sat (not b!1748702) (not b!1748526) (not b!1748333) (not d!534564) (not b!1748760) (not b!1748701) (not d!534606) (not d!534612) (not d!534608) (not b!1748514) (not b!1748156) (not d!534604) (not b!1748438) (not b!1748160) (not b!1748086) (not d!534534) (not b_lambda!56117) (not b!1748440) (not d!534556) (not d!534398) (not b!1748743) (not b!1748662) (not b!1748515) (not b!1748767) (not b!1748424) (not tb!104705) (not b!1748348) (not b!1748677) (not d!534402) (not d!534610) (not b!1748724) (not b!1748697) (not b!1748663) (not d!534518) (not d!534418) (not d!534410) (not b!1748087) (not b!1748330) (not b!1748745) (not b!1748726) b_and!130469 (not b!1748712) (not b!1748668) (not b!1748060) (not b!1748706) (not d!534382) (not b!1748418) (not b_next!48817) (not b_lambda!56163) (not b!1748759) (not b_next!48815) (not b!1748399) (not b!1748157) (not b!1748408) (not b!1748708) (not b!1748531) (not b_lambda!56119) (not b!1748666) (not b_lambda!56147) (not b!1748407) (not b!1748768) (not b!1748673) (not d!534560) (not d!534384) (not b!1748707) (not b!1748713) (not bm!110360) (not b!1748328) (not b!1748664) (not b!1748211) (not b!1748762) (not d!534570) (not b!1748329) (not b!1748459) (not b!1748496) (not d!534390) (not d!534538) (not b!1748545) (not b!1748698) (not d!534620) (not b!1748744) (not b!1748561) (not b!1748516) (not b!1748057) (not b_next!48827) (not bm!110364) (not b!1748427) (not b!1748327) (not b!1748705) (not b!1748458) b_and!130453 (not d!534504) (not b_lambda!56167) (not b!1748658) (not bm!110358) (not b!1748543) (not d!534618) (not d!534614) (not b!1748398) (not d!534510) b_and!130473 (not b!1748715) (not b!1748417) (not b!1748131) (not d!534616) (not b!1748326) (not b!1748075) (not d!534602) (not b!1748441) (not b!1748704) (not b_lambda!56139) (not b!1748703) (not b!1748144) (not bm!110359) (not d!534542) (not b!1748426) (not b!1748764) (not tb!104699) tp_is_empty!7745 (not b_next!48829) (not b!1748529) (not b!1748699) (not b!1748562) (not b!1748735) (not d!534520) (not d!534522) (not d!534422) b_and!130467 (not d!534412) (not b!1748452) (not b_lambda!56171) (not b!1748674) (not b!1748527) (not b_lambda!56165) (not b!1748431) b_and!130475 (not b!1748657) (not bm!110365) (not d!534624) (not b!1748659) b_and!130471 (not b!1748710) (not b_next!48821) (not d!534576) (not d!534580) (not d!534388) (not d!534450) (not b!1748763) (not d!534550) (not b!1748090) (not b!1748725) (not b!1748667) (not d!534558) (not b_next!48811) (not b!1748430) (not b_lambda!56169) (not tb!104687) (not b!1748405) (not d!534380) (not b!1748766) (not b!1748742) (not b_lambda!56145) (not b!1748332) (not b_lambda!56143) (not b!1748559) (not b!1748155) (not b!1748409) (not d!534502) (not d!534540) b_and!130451 (not b!1748544) (not b!1748676) (not b!1748331) (not b_next!48819) b_and!130455 (not b!1748532) (not b!1748711) (not b!1748416) (not b!1748129) (not d!534566) (not b_next!48813) (not b!1748758) (not b!1748714) (not b!1748432) (not d!534600) (not b!1748495) (not b!1748736) (not b!1748757) (not b!1748397) (not d!534578) (not b_lambda!56133) (not d!534480))
(check-sat b_and!130469 (not b_next!48827) b_and!130453 b_and!130473 (not b_next!48829) b_and!130467 b_and!130475 (not b_next!48811) b_and!130451 (not b_next!48813) (not b_next!48817) (not b_next!48815) b_and!130471 (not b_next!48821) (not b_next!48819) b_and!130455)

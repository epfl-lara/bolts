; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!156880 () Bool)

(assert start!156880)

(declare-fun b!1640625 () Bool)

(declare-fun b_free!44431 () Bool)

(declare-fun b_next!45135 () Bool)

(assert (=> b!1640625 (= b_free!44431 (not b_next!45135))))

(declare-fun tp!475444 () Bool)

(declare-fun b_and!116293 () Bool)

(assert (=> b!1640625 (= tp!475444 b_and!116293)))

(declare-fun b_free!44433 () Bool)

(declare-fun b_next!45137 () Bool)

(assert (=> b!1640625 (= b_free!44433 (not b_next!45137))))

(declare-fun tp!475446 () Bool)

(declare-fun b_and!116295 () Bool)

(assert (=> b!1640625 (= tp!475446 b_and!116295)))

(declare-fun b!1640631 () Bool)

(declare-fun b_free!44435 () Bool)

(declare-fun b_next!45139 () Bool)

(assert (=> b!1640631 (= b_free!44435 (not b_next!45139))))

(declare-fun tp!475451 () Bool)

(declare-fun b_and!116297 () Bool)

(assert (=> b!1640631 (= tp!475451 b_and!116297)))

(declare-fun b_free!44437 () Bool)

(declare-fun b_next!45141 () Bool)

(assert (=> b!1640631 (= b_free!44437 (not b_next!45141))))

(declare-fun tp!475445 () Bool)

(declare-fun b_and!116299 () Bool)

(assert (=> b!1640631 (= tp!475445 b_and!116299)))

(declare-fun b!1640623 () Bool)

(declare-fun e!1052153 () Bool)

(declare-fun e!1052152 () Bool)

(assert (=> b!1640623 (= e!1052153 e!1052152)))

(declare-fun res!735082 () Bool)

(assert (=> b!1640623 (=> (not res!735082) (not e!1052152))))

(declare-datatypes ((C!9202 0))(
  ( (C!9203 (val!5197 Int)) )
))
(declare-datatypes ((List!18143 0))(
  ( (Nil!18073) (Cons!18073 (h!23474 C!9202) (t!149994 List!18143)) )
))
(declare-fun lt!602865 () List!18143)

(declare-fun lt!602860 () List!18143)

(assert (=> b!1640623 (= res!735082 (= lt!602865 lt!602860))))

(declare-fun lt!602864 () List!18143)

(declare-fun lt!602861 () List!18143)

(declare-fun ++!4857 (List!18143 List!18143) List!18143)

(assert (=> b!1640623 (= lt!602860 (++!4857 lt!602864 lt!602861))))

(declare-datatypes ((IArray!12045 0))(
  ( (IArray!12046 (innerList!6080 List!18143)) )
))
(declare-datatypes ((Conc!6020 0))(
  ( (Node!6020 (left!14491 Conc!6020) (right!14821 Conc!6020) (csize!12270 Int) (cheight!6231 Int)) (Leaf!8834 (xs!8856 IArray!12045) (csize!12271 Int)) (Empty!6020) )
))
(declare-datatypes ((BalanceConc!11984 0))(
  ( (BalanceConc!11985 (c!266837 Conc!6020)) )
))
(declare-fun lt!602857 () BalanceConc!11984)

(declare-fun list!7139 (BalanceConc!11984) List!18143)

(assert (=> b!1640623 (= lt!602865 (list!7139 lt!602857))))

(declare-fun lt!602858 () BalanceConc!11984)

(assert (=> b!1640623 (= lt!602861 (list!7139 lt!602858))))

(declare-datatypes ((List!18144 0))(
  ( (Nil!18074) (Cons!18074 (h!23475 (_ BitVec 16)) (t!149995 List!18144)) )
))
(declare-datatypes ((TokenValue!3276 0))(
  ( (FloatLiteralValue!6552 (text!23377 List!18144)) (TokenValueExt!3275 (__x!11854 Int)) (Broken!16380 (value!100449 List!18144)) (Object!3345) (End!3276) (Def!3276) (Underscore!3276) (Match!3276) (Else!3276) (Error!3276) (Case!3276) (If!3276) (Extends!3276) (Abstract!3276) (Class!3276) (Val!3276) (DelimiterValue!6552 (del!3336 List!18144)) (KeywordValue!3282 (value!100450 List!18144)) (CommentValue!6552 (value!100451 List!18144)) (WhitespaceValue!6552 (value!100452 List!18144)) (IndentationValue!3276 (value!100453 List!18144)) (String!20713) (Int32!3276) (Broken!16381 (value!100454 List!18144)) (Boolean!3277) (Unit!29682) (OperatorValue!3279 (op!3336 List!18144)) (IdentifierValue!6552 (value!100455 List!18144)) (IdentifierValue!6553 (value!100456 List!18144)) (WhitespaceValue!6553 (value!100457 List!18144)) (True!6552) (False!6552) (Broken!16382 (value!100458 List!18144)) (Broken!16383 (value!100459 List!18144)) (True!6553) (RightBrace!3276) (RightBracket!3276) (Colon!3276) (Null!3276) (Comma!3276) (LeftBracket!3276) (False!6553) (LeftBrace!3276) (ImaginaryLiteralValue!3276 (text!23378 List!18144)) (StringLiteralValue!9828 (value!100460 List!18144)) (EOFValue!3276 (value!100461 List!18144)) (IdentValue!3276 (value!100462 List!18144)) (DelimiterValue!6553 (value!100463 List!18144)) (DedentValue!3276 (value!100464 List!18144)) (NewLineValue!3276 (value!100465 List!18144)) (IntegerValue!9828 (value!100466 (_ BitVec 32)) (text!23379 List!18144)) (IntegerValue!9829 (value!100467 Int) (text!23380 List!18144)) (Times!3276) (Or!3276) (Equal!3276) (Minus!3276) (Broken!16384 (value!100468 List!18144)) (And!3276) (Div!3276) (LessEqual!3276) (Mod!3276) (Concat!7790) (Not!3276) (Plus!3276) (SpaceValue!3276 (value!100469 List!18144)) (IntegerValue!9830 (value!100470 Int) (text!23381 List!18144)) (StringLiteralValue!9829 (text!23382 List!18144)) (FloatLiteralValue!6553 (text!23383 List!18144)) (BytesLiteralValue!3276 (value!100471 List!18144)) (CommentValue!6553 (value!100472 List!18144)) (StringLiteralValue!9830 (value!100473 List!18144)) (ErrorTokenValue!3276 (msg!3337 List!18144)) )
))
(declare-datatypes ((Regex!4514 0))(
  ( (ElementMatch!4514 (c!266838 C!9202)) (Concat!7791 (regOne!9540 Regex!4514) (regTwo!9540 Regex!4514)) (EmptyExpr!4514) (Star!4514 (reg!4843 Regex!4514)) (EmptyLang!4514) (Union!4514 (regOne!9541 Regex!4514) (regTwo!9541 Regex!4514)) )
))
(declare-datatypes ((String!20714 0))(
  ( (String!20715 (value!100474 String)) )
))
(declare-datatypes ((TokenValueInjection!6212 0))(
  ( (TokenValueInjection!6213 (toValue!4621 Int) (toChars!4480 Int)) )
))
(declare-datatypes ((Rule!6172 0))(
  ( (Rule!6173 (regex!3186 Regex!4514) (tag!3466 String!20714) (isSeparator!3186 Bool) (transformation!3186 TokenValueInjection!6212)) )
))
(declare-datatypes ((Token!5938 0))(
  ( (Token!5939 (value!100475 TokenValue!3276) (rule!5034 Rule!6172) (size!14395 Int) (originalCharacters!4000 List!18143)) )
))
(declare-datatypes ((List!18145 0))(
  ( (Nil!18075) (Cons!18075 (h!23476 Token!5938) (t!149996 List!18145)) )
))
(declare-fun tokens!457 () List!18145)

(declare-fun charsOf!1835 (Token!5938) BalanceConc!11984)

(assert (=> b!1640623 (= lt!602864 (list!7139 (charsOf!1835 (h!23476 tokens!457))))))

(declare-datatypes ((List!18146 0))(
  ( (Nil!18076) (Cons!18076 (h!23477 Rule!6172) (t!149997 List!18146)) )
))
(declare-fun rules!1846 () List!18146)

(declare-datatypes ((IArray!12047 0))(
  ( (IArray!12048 (innerList!6081 List!18145)) )
))
(declare-datatypes ((Conc!6021 0))(
  ( (Node!6021 (left!14492 Conc!6021) (right!14822 Conc!6021) (csize!12272 Int) (cheight!6232 Int)) (Leaf!8835 (xs!8857 IArray!12047) (csize!12273 Int)) (Empty!6021) )
))
(declare-datatypes ((BalanceConc!11986 0))(
  ( (BalanceConc!11987 (c!266839 Conc!6021)) )
))
(declare-datatypes ((tuple2!17724 0))(
  ( (tuple2!17725 (_1!10264 BalanceConc!11986) (_2!10264 BalanceConc!11984)) )
))
(declare-fun lt!602859 () tuple2!17724)

(declare-datatypes ((LexerInterface!2815 0))(
  ( (LexerInterfaceExt!2812 (__x!11855 Int)) (Lexer!2813) )
))
(declare-fun thiss!17113 () LexerInterface!2815)

(declare-fun lex!1299 (LexerInterface!2815 List!18146 BalanceConc!11984) tuple2!17724)

(assert (=> b!1640623 (= lt!602859 (lex!1299 thiss!17113 rules!1846 lt!602858))))

(declare-fun print!1346 (LexerInterface!2815 BalanceConc!11986) BalanceConc!11984)

(declare-fun seqFromList!2119 (List!18145) BalanceConc!11986)

(assert (=> b!1640623 (= lt!602858 (print!1346 thiss!17113 (seqFromList!2119 (t!149996 tokens!457))))))

(assert (=> b!1640623 (= lt!602857 (print!1346 thiss!17113 (seqFromList!2119 tokens!457)))))

(declare-fun e!1052147 () Bool)

(assert (=> b!1640625 (= e!1052147 (and tp!475444 tp!475446))))

(declare-fun b!1640626 () Bool)

(declare-fun tp!475450 () Bool)

(declare-fun e!1052155 () Bool)

(declare-fun inv!23422 (String!20714) Bool)

(declare-fun inv!23425 (TokenValueInjection!6212) Bool)

(assert (=> b!1640626 (= e!1052155 (and tp!475450 (inv!23422 (tag!3466 (h!23477 rules!1846))) (inv!23425 (transformation!3186 (h!23477 rules!1846))) e!1052147))))

(declare-fun b!1640627 () Bool)

(declare-fun res!735086 () Bool)

(assert (=> b!1640627 (=> (not res!735086) (not e!1052153))))

(declare-fun isEmpty!11106 (List!18146) Bool)

(assert (=> b!1640627 (= res!735086 (not (isEmpty!11106 rules!1846)))))

(declare-fun b!1640628 () Bool)

(declare-fun e!1052145 () Bool)

(declare-fun e!1052156 () Bool)

(declare-fun tp!475443 () Bool)

(declare-fun inv!21 (TokenValue!3276) Bool)

(assert (=> b!1640628 (= e!1052145 (and (inv!21 (value!100475 (h!23476 tokens!457))) e!1052156 tp!475443))))

(declare-fun b!1640629 () Bool)

(declare-fun res!735085 () Bool)

(assert (=> b!1640629 (=> (not res!735085) (not e!1052153))))

(assert (=> b!1640629 (= res!735085 (and (not (is-Nil!18075 tokens!457)) (not (is-Nil!18075 (t!149996 tokens!457)))))))

(declare-fun tp!475449 () Bool)

(declare-fun b!1640630 () Bool)

(declare-fun e!1052151 () Bool)

(declare-fun inv!23426 (Token!5938) Bool)

(assert (=> b!1640630 (= e!1052151 (and (inv!23426 (h!23476 tokens!457)) e!1052145 tp!475449))))

(declare-fun e!1052146 () Bool)

(assert (=> b!1640631 (= e!1052146 (and tp!475451 tp!475445))))

(declare-fun b!1640632 () Bool)

(declare-fun e!1052148 () Bool)

(declare-fun tp!475447 () Bool)

(assert (=> b!1640632 (= e!1052148 (and e!1052155 tp!475447))))

(declare-fun tp!475448 () Bool)

(declare-fun b!1640624 () Bool)

(assert (=> b!1640624 (= e!1052156 (and tp!475448 (inv!23422 (tag!3466 (rule!5034 (h!23476 tokens!457)))) (inv!23425 (transformation!3186 (rule!5034 (h!23476 tokens!457)))) e!1052146))))

(declare-fun res!735083 () Bool)

(assert (=> start!156880 (=> (not res!735083) (not e!1052153))))

(assert (=> start!156880 (= res!735083 (is-Lexer!2813 thiss!17113))))

(assert (=> start!156880 e!1052153))

(assert (=> start!156880 true))

(assert (=> start!156880 e!1052148))

(assert (=> start!156880 e!1052151))

(declare-fun b!1640633 () Bool)

(declare-fun res!735084 () Bool)

(assert (=> b!1640633 (=> (not res!735084) (not e!1052153))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!508 (LexerInterface!2815 List!18145 List!18146) Bool)

(assert (=> b!1640633 (= res!735084 (tokensListTwoByTwoPredicateSeparableList!508 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1640634 () Bool)

(declare-fun res!735080 () Bool)

(assert (=> b!1640634 (=> (not res!735080) (not e!1052153))))

(declare-fun rulesInvariant!2484 (LexerInterface!2815 List!18146) Bool)

(assert (=> b!1640634 (= res!735080 (rulesInvariant!2484 thiss!17113 rules!1846))))

(declare-fun b!1640635 () Bool)

(declare-fun res!735081 () Bool)

(assert (=> b!1640635 (=> (not res!735081) (not e!1052153))))

(declare-fun rulesProduceEachTokenIndividuallyList!1017 (LexerInterface!2815 List!18146 List!18145) Bool)

(assert (=> b!1640635 (= res!735081 (rulesProduceEachTokenIndividuallyList!1017 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1640636 () Bool)

(declare-fun list!7140 (BalanceConc!11986) List!18145)

(assert (=> b!1640636 (= e!1052152 (not (= (list!7140 (_1!10264 lt!602859)) (t!149996 tokens!457))))))

(declare-datatypes ((Unit!29683 0))(
  ( (Unit!29684) )
))
(declare-fun lt!602862 () Unit!29683)

(declare-fun theoremInvertabilityWhenTokenListSeparable!258 (LexerInterface!2815 List!18146 List!18145) Unit!29683)

(assert (=> b!1640636 (= lt!602862 (theoremInvertabilityWhenTokenListSeparable!258 thiss!17113 rules!1846 (t!149996 tokens!457)))))

(declare-fun isPrefix!1444 (List!18143 List!18143) Bool)

(assert (=> b!1640636 (isPrefix!1444 lt!602864 lt!602860)))

(declare-fun lt!602863 () Unit!29683)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!969 (List!18143 List!18143) Unit!29683)

(assert (=> b!1640636 (= lt!602863 (lemmaConcatTwoListThenFirstIsPrefix!969 lt!602864 lt!602861))))

(assert (= (and start!156880 res!735083) b!1640627))

(assert (= (and b!1640627 res!735086) b!1640634))

(assert (= (and b!1640634 res!735080) b!1640635))

(assert (= (and b!1640635 res!735081) b!1640633))

(assert (= (and b!1640633 res!735084) b!1640629))

(assert (= (and b!1640629 res!735085) b!1640623))

(assert (= (and b!1640623 res!735082) b!1640636))

(assert (= b!1640626 b!1640625))

(assert (= b!1640632 b!1640626))

(assert (= (and start!156880 (is-Cons!18076 rules!1846)) b!1640632))

(assert (= b!1640624 b!1640631))

(assert (= b!1640628 b!1640624))

(assert (= b!1640630 b!1640628))

(assert (= (and start!156880 (is-Cons!18075 tokens!457)) b!1640630))

(declare-fun m!1980909 () Bool)

(assert (=> b!1640628 m!1980909))

(declare-fun m!1980911 () Bool)

(assert (=> b!1640633 m!1980911))

(declare-fun m!1980913 () Bool)

(assert (=> b!1640626 m!1980913))

(declare-fun m!1980915 () Bool)

(assert (=> b!1640626 m!1980915))

(declare-fun m!1980917 () Bool)

(assert (=> b!1640630 m!1980917))

(declare-fun m!1980919 () Bool)

(assert (=> b!1640635 m!1980919))

(declare-fun m!1980921 () Bool)

(assert (=> b!1640636 m!1980921))

(declare-fun m!1980923 () Bool)

(assert (=> b!1640636 m!1980923))

(declare-fun m!1980925 () Bool)

(assert (=> b!1640636 m!1980925))

(declare-fun m!1980927 () Bool)

(assert (=> b!1640636 m!1980927))

(declare-fun m!1980929 () Bool)

(assert (=> b!1640624 m!1980929))

(declare-fun m!1980931 () Bool)

(assert (=> b!1640624 m!1980931))

(declare-fun m!1980933 () Bool)

(assert (=> b!1640623 m!1980933))

(declare-fun m!1980935 () Bool)

(assert (=> b!1640623 m!1980935))

(declare-fun m!1980937 () Bool)

(assert (=> b!1640623 m!1980937))

(declare-fun m!1980939 () Bool)

(assert (=> b!1640623 m!1980939))

(declare-fun m!1980941 () Bool)

(assert (=> b!1640623 m!1980941))

(assert (=> b!1640623 m!1980933))

(declare-fun m!1980943 () Bool)

(assert (=> b!1640623 m!1980943))

(assert (=> b!1640623 m!1980935))

(declare-fun m!1980945 () Bool)

(assert (=> b!1640623 m!1980945))

(declare-fun m!1980947 () Bool)

(assert (=> b!1640623 m!1980947))

(assert (=> b!1640623 m!1980945))

(declare-fun m!1980949 () Bool)

(assert (=> b!1640623 m!1980949))

(declare-fun m!1980951 () Bool)

(assert (=> b!1640623 m!1980951))

(declare-fun m!1980953 () Bool)

(assert (=> b!1640634 m!1980953))

(declare-fun m!1980955 () Bool)

(assert (=> b!1640627 m!1980955))

(push 1)

(assert (not b!1640630))

(assert (not b_next!45139))

(assert (not b!1640623))

(assert (not b!1640628))

(assert (not b!1640635))

(assert (not b!1640626))

(assert (not b!1640624))

(assert (not b!1640634))

(assert b_and!116295)

(assert b_and!116299)

(assert b_and!116297)

(assert (not b!1640633))

(assert (not b_next!45135))

(assert (not b_next!45137))

(assert b_and!116293)

(assert (not b!1640632))

(assert (not b_next!45141))

(assert (not b!1640636))

(assert (not b!1640627))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!45135))

(assert (not b_next!45139))

(assert (not b_next!45141))

(assert b_and!116295)

(assert b_and!116299)

(assert b_and!116297)

(assert (not b_next!45137))

(assert b_and!116293)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!493844 () Bool)

(declare-fun res!735115 () Bool)

(declare-fun e!1052195 () Bool)

(assert (=> d!493844 (=> (not res!735115) (not e!1052195))))

(declare-fun isEmpty!11108 (List!18143) Bool)

(assert (=> d!493844 (= res!735115 (not (isEmpty!11108 (originalCharacters!4000 (h!23476 tokens!457)))))))

(assert (=> d!493844 (= (inv!23426 (h!23476 tokens!457)) e!1052195)))

(declare-fun b!1640683 () Bool)

(declare-fun res!735116 () Bool)

(assert (=> b!1640683 (=> (not res!735116) (not e!1052195))))

(declare-fun dynLambda!8056 (Int TokenValue!3276) BalanceConc!11984)

(assert (=> b!1640683 (= res!735116 (= (originalCharacters!4000 (h!23476 tokens!457)) (list!7139 (dynLambda!8056 (toChars!4480 (transformation!3186 (rule!5034 (h!23476 tokens!457)))) (value!100475 (h!23476 tokens!457))))))))

(declare-fun b!1640684 () Bool)

(declare-fun size!14397 (List!18143) Int)

(assert (=> b!1640684 (= e!1052195 (= (size!14395 (h!23476 tokens!457)) (size!14397 (originalCharacters!4000 (h!23476 tokens!457)))))))

(assert (= (and d!493844 res!735115) b!1640683))

(assert (= (and b!1640683 res!735116) b!1640684))

(declare-fun b_lambda!51549 () Bool)

(assert (=> (not b_lambda!51549) (not b!1640683)))

(declare-fun t!150003 () Bool)

(declare-fun tb!93927 () Bool)

(assert (=> (and b!1640625 (= (toChars!4480 (transformation!3186 (h!23477 rules!1846))) (toChars!4480 (transformation!3186 (rule!5034 (h!23476 tokens!457))))) t!150003) tb!93927))

(declare-fun b!1640689 () Bool)

(declare-fun e!1052198 () Bool)

(declare-fun tp!475481 () Bool)

(declare-fun inv!23429 (Conc!6020) Bool)

(assert (=> b!1640689 (= e!1052198 (and (inv!23429 (c!266837 (dynLambda!8056 (toChars!4480 (transformation!3186 (rule!5034 (h!23476 tokens!457)))) (value!100475 (h!23476 tokens!457))))) tp!475481))))

(declare-fun result!113378 () Bool)

(declare-fun inv!23430 (BalanceConc!11984) Bool)

(assert (=> tb!93927 (= result!113378 (and (inv!23430 (dynLambda!8056 (toChars!4480 (transformation!3186 (rule!5034 (h!23476 tokens!457)))) (value!100475 (h!23476 tokens!457)))) e!1052198))))

(assert (= tb!93927 b!1640689))

(declare-fun m!1981005 () Bool)

(assert (=> b!1640689 m!1981005))

(declare-fun m!1981007 () Bool)

(assert (=> tb!93927 m!1981007))

(assert (=> b!1640683 t!150003))

(declare-fun b_and!116309 () Bool)

(assert (= b_and!116295 (and (=> t!150003 result!113378) b_and!116309)))

(declare-fun t!150005 () Bool)

(declare-fun tb!93929 () Bool)

(assert (=> (and b!1640631 (= (toChars!4480 (transformation!3186 (rule!5034 (h!23476 tokens!457)))) (toChars!4480 (transformation!3186 (rule!5034 (h!23476 tokens!457))))) t!150005) tb!93929))

(declare-fun result!113382 () Bool)

(assert (= result!113382 result!113378))

(assert (=> b!1640683 t!150005))

(declare-fun b_and!116311 () Bool)

(assert (= b_and!116299 (and (=> t!150005 result!113382) b_and!116311)))

(declare-fun m!1981009 () Bool)

(assert (=> d!493844 m!1981009))

(declare-fun m!1981011 () Bool)

(assert (=> b!1640683 m!1981011))

(assert (=> b!1640683 m!1981011))

(declare-fun m!1981013 () Bool)

(assert (=> b!1640683 m!1981013))

(declare-fun m!1981015 () Bool)

(assert (=> b!1640684 m!1981015))

(assert (=> b!1640630 d!493844))

(declare-fun d!493846 () Bool)

(declare-fun list!7143 (Conc!6021) List!18145)

(assert (=> d!493846 (= (list!7140 (_1!10264 lt!602859)) (list!7143 (c!266839 (_1!10264 lt!602859))))))

(declare-fun bs!395646 () Bool)

(assert (= bs!395646 d!493846))

(declare-fun m!1981017 () Bool)

(assert (=> bs!395646 m!1981017))

(assert (=> b!1640636 d!493846))

(declare-fun d!493848 () Bool)

(declare-fun e!1052217 () Bool)

(assert (=> d!493848 e!1052217))

(declare-fun res!735130 () Bool)

(assert (=> d!493848 (=> (not res!735130) (not e!1052217))))

(assert (=> d!493848 (= res!735130 (= (list!7140 (_1!10264 (lex!1299 thiss!17113 rules!1846 (print!1346 thiss!17113 (seqFromList!2119 (t!149996 tokens!457)))))) (t!149996 tokens!457)))))

(declare-fun lt!602966 () Unit!29683)

(declare-fun e!1052216 () Unit!29683)

(assert (=> d!493848 (= lt!602966 e!1052216)))

(declare-fun c!266852 () Bool)

(assert (=> d!493848 (= c!266852 (or (is-Nil!18075 (t!149996 tokens!457)) (is-Nil!18075 (t!149996 (t!149996 tokens!457)))))))

(assert (=> d!493848 (not (isEmpty!11106 rules!1846))))

(assert (=> d!493848 (= (theoremInvertabilityWhenTokenListSeparable!258 thiss!17113 rules!1846 (t!149996 tokens!457)) lt!602966)))

(declare-fun b!1640715 () Bool)

(declare-fun Unit!29688 () Unit!29683)

(assert (=> b!1640715 (= e!1052216 Unit!29688)))

(declare-fun b!1640716 () Bool)

(declare-fun Unit!29689 () Unit!29683)

(assert (=> b!1640716 (= e!1052216 Unit!29689)))

(declare-fun lt!602955 () BalanceConc!11984)

(assert (=> b!1640716 (= lt!602955 (print!1346 thiss!17113 (seqFromList!2119 (t!149996 tokens!457))))))

(declare-fun lt!602965 () BalanceConc!11984)

(assert (=> b!1640716 (= lt!602965 (print!1346 thiss!17113 (seqFromList!2119 (t!149996 (t!149996 tokens!457)))))))

(declare-fun lt!602949 () tuple2!17724)

(assert (=> b!1640716 (= lt!602949 (lex!1299 thiss!17113 rules!1846 lt!602965))))

(declare-fun lt!602970 () List!18143)

(assert (=> b!1640716 (= lt!602970 (list!7139 (charsOf!1835 (h!23476 (t!149996 tokens!457)))))))

(declare-fun lt!602959 () List!18143)

(assert (=> b!1640716 (= lt!602959 (list!7139 lt!602965))))

(declare-fun lt!602953 () Unit!29683)

(assert (=> b!1640716 (= lt!602953 (lemmaConcatTwoListThenFirstIsPrefix!969 lt!602970 lt!602959))))

(assert (=> b!1640716 (isPrefix!1444 lt!602970 (++!4857 lt!602970 lt!602959))))

(declare-fun lt!602951 () Unit!29683)

(assert (=> b!1640716 (= lt!602951 lt!602953)))

(declare-fun lt!602960 () Unit!29683)

(assert (=> b!1640716 (= lt!602960 (theoremInvertabilityWhenTokenListSeparable!258 thiss!17113 rules!1846 (t!149996 (t!149996 tokens!457))))))

(declare-fun lt!602972 () Unit!29683)

(declare-fun seqFromListBHdTlConstructive!261 (Token!5938 List!18145 BalanceConc!11986) Unit!29683)

(assert (=> b!1640716 (= lt!602972 (seqFromListBHdTlConstructive!261 (h!23476 (t!149996 (t!149996 tokens!457))) (t!149996 (t!149996 (t!149996 tokens!457))) (_1!10264 lt!602949)))))

(declare-fun prepend!732 (BalanceConc!11986 Token!5938) BalanceConc!11986)

(assert (=> b!1640716 (= (list!7140 (_1!10264 lt!602949)) (list!7140 (prepend!732 (seqFromList!2119 (t!149996 (t!149996 (t!149996 tokens!457)))) (h!23476 (t!149996 (t!149996 tokens!457))))))))

(declare-fun lt!602968 () Unit!29683)

(assert (=> b!1640716 (= lt!602968 lt!602972)))

(declare-datatypes ((tuple2!17728 0))(
  ( (tuple2!17729 (_1!10266 Token!5938) (_2!10266 List!18143)) )
))
(declare-datatypes ((Option!3415 0))(
  ( (None!3414) (Some!3414 (v!24521 tuple2!17728)) )
))
(declare-fun lt!602947 () Option!3415)

(declare-fun maxPrefix!1379 (LexerInterface!2815 List!18146 List!18143) Option!3415)

(assert (=> b!1640716 (= lt!602947 (maxPrefix!1379 thiss!17113 rules!1846 (list!7139 lt!602955)))))

(declare-fun singletonSeq!1650 (Token!5938) BalanceConc!11986)

(declare-fun printTailRec!868 (LexerInterface!2815 BalanceConc!11986 Int BalanceConc!11984) BalanceConc!11984)

(assert (=> b!1640716 (= (print!1346 thiss!17113 (singletonSeq!1650 (h!23476 (t!149996 tokens!457)))) (printTailRec!868 thiss!17113 (singletonSeq!1650 (h!23476 (t!149996 tokens!457))) 0 (BalanceConc!11985 Empty!6020)))))

(declare-fun lt!602957 () Unit!29683)

(declare-fun Unit!29690 () Unit!29683)

(assert (=> b!1640716 (= lt!602957 Unit!29690)))

(declare-fun lt!602956 () Unit!29683)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!387 (LexerInterface!2815 List!18146 List!18143 List!18143) Unit!29683)

(assert (=> b!1640716 (= lt!602956 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!387 thiss!17113 rules!1846 (list!7139 (charsOf!1835 (h!23476 (t!149996 tokens!457)))) (list!7139 lt!602965)))))

(assert (=> b!1640716 (= (list!7139 (charsOf!1835 (h!23476 (t!149996 tokens!457)))) (originalCharacters!4000 (h!23476 (t!149996 tokens!457))))))

(declare-fun lt!602961 () Unit!29683)

(declare-fun Unit!29691 () Unit!29683)

(assert (=> b!1640716 (= lt!602961 Unit!29691)))

(declare-fun singletonSeq!1651 (C!9202) BalanceConc!11984)

(declare-fun apply!4705 (BalanceConc!11984 Int) C!9202)

(declare-fun head!3566 (List!18143) C!9202)

(assert (=> b!1640716 (= (list!7139 (singletonSeq!1651 (apply!4705 (charsOf!1835 (h!23476 (t!149996 (t!149996 tokens!457)))) 0))) (Cons!18073 (head!3566 (originalCharacters!4000 (h!23476 (t!149996 (t!149996 tokens!457))))) Nil!18073))))

(declare-fun lt!602971 () Unit!29683)

(declare-fun Unit!29692 () Unit!29683)

(assert (=> b!1640716 (= lt!602971 Unit!29692)))

(assert (=> b!1640716 (= (list!7139 (singletonSeq!1651 (apply!4705 (charsOf!1835 (h!23476 (t!149996 (t!149996 tokens!457)))) 0))) (Cons!18073 (head!3566 (list!7139 lt!602965)) Nil!18073))))

(declare-fun lt!602950 () Unit!29683)

(declare-fun Unit!29693 () Unit!29683)

(assert (=> b!1640716 (= lt!602950 Unit!29693)))

(declare-fun head!3567 (BalanceConc!11984) C!9202)

(assert (=> b!1640716 (= (list!7139 (singletonSeq!1651 (apply!4705 (charsOf!1835 (h!23476 (t!149996 (t!149996 tokens!457)))) 0))) (Cons!18073 (head!3567 lt!602965) Nil!18073))))

(declare-fun lt!602954 () Unit!29683)

(declare-fun Unit!29694 () Unit!29683)

(assert (=> b!1640716 (= lt!602954 Unit!29694)))

(declare-fun isDefined!2778 (Option!3415) Bool)

(assert (=> b!1640716 (isDefined!2778 (maxPrefix!1379 thiss!17113 rules!1846 (originalCharacters!4000 (h!23476 (t!149996 tokens!457)))))))

(declare-fun lt!602963 () Unit!29683)

(declare-fun Unit!29695 () Unit!29683)

(assert (=> b!1640716 (= lt!602963 Unit!29695)))

(assert (=> b!1640716 (isDefined!2778 (maxPrefix!1379 thiss!17113 rules!1846 (list!7139 (charsOf!1835 (h!23476 (t!149996 tokens!457))))))))

(declare-fun lt!602962 () Unit!29683)

(declare-fun Unit!29696 () Unit!29683)

(assert (=> b!1640716 (= lt!602962 Unit!29696)))

(declare-fun lt!602952 () Unit!29683)

(declare-fun Unit!29697 () Unit!29683)

(assert (=> b!1640716 (= lt!602952 Unit!29697)))

(declare-fun get!5256 (Option!3415) tuple2!17728)

(assert (=> b!1640716 (= (_1!10266 (get!5256 (maxPrefix!1379 thiss!17113 rules!1846 (list!7139 (charsOf!1835 (h!23476 (t!149996 tokens!457))))))) (h!23476 (t!149996 tokens!457)))))

(declare-fun lt!602969 () Unit!29683)

(declare-fun Unit!29698 () Unit!29683)

(assert (=> b!1640716 (= lt!602969 Unit!29698)))

(assert (=> b!1640716 (isEmpty!11108 (_2!10266 (get!5256 (maxPrefix!1379 thiss!17113 rules!1846 (list!7139 (charsOf!1835 (h!23476 (t!149996 tokens!457))))))))))

(declare-fun lt!602958 () Unit!29683)

(declare-fun Unit!29699 () Unit!29683)

(assert (=> b!1640716 (= lt!602958 Unit!29699)))

(declare-fun matchR!2011 (Regex!4514 List!18143) Bool)

(assert (=> b!1640716 (matchR!2011 (regex!3186 (rule!5034 (h!23476 (t!149996 tokens!457)))) (list!7139 (charsOf!1835 (h!23476 (t!149996 tokens!457)))))))

(declare-fun lt!602948 () Unit!29683)

(declare-fun Unit!29700 () Unit!29683)

(assert (=> b!1640716 (= lt!602948 Unit!29700)))

(assert (=> b!1640716 (= (rule!5034 (h!23476 (t!149996 tokens!457))) (rule!5034 (h!23476 (t!149996 tokens!457))))))

(declare-fun lt!602964 () Unit!29683)

(declare-fun Unit!29701 () Unit!29683)

(assert (=> b!1640716 (= lt!602964 Unit!29701)))

(declare-fun lt!602967 () Unit!29683)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!149 (LexerInterface!2815 List!18146 Token!5938 Rule!6172 List!18143) Unit!29683)

(assert (=> b!1640716 (= lt!602967 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!149 thiss!17113 rules!1846 (h!23476 (t!149996 tokens!457)) (rule!5034 (h!23476 (t!149996 tokens!457))) (list!7139 lt!602965)))))

(declare-fun b!1640717 () Bool)

(declare-fun isEmpty!11109 (BalanceConc!11984) Bool)

(assert (=> b!1640717 (= e!1052217 (isEmpty!11109 (_2!10264 (lex!1299 thiss!17113 rules!1846 (print!1346 thiss!17113 (seqFromList!2119 (t!149996 tokens!457)))))))))

(assert (= (and d!493848 c!266852) b!1640715))

(assert (= (and d!493848 (not c!266852)) b!1640716))

(assert (= (and d!493848 res!735130) b!1640717))

(declare-fun m!1981025 () Bool)

(assert (=> d!493848 m!1981025))

(assert (=> d!493848 m!1980947))

(declare-fun m!1981027 () Bool)

(assert (=> d!493848 m!1981027))

(assert (=> d!493848 m!1980945))

(assert (=> d!493848 m!1980947))

(assert (=> d!493848 m!1980945))

(assert (=> d!493848 m!1980955))

(declare-fun m!1981029 () Bool)

(assert (=> b!1640716 m!1981029))

(declare-fun m!1981031 () Bool)

(assert (=> b!1640716 m!1981031))

(assert (=> b!1640716 m!1981031))

(declare-fun m!1981033 () Bool)

(assert (=> b!1640716 m!1981033))

(declare-fun m!1981035 () Bool)

(assert (=> b!1640716 m!1981035))

(declare-fun m!1981037 () Bool)

(assert (=> b!1640716 m!1981037))

(declare-fun m!1981039 () Bool)

(assert (=> b!1640716 m!1981039))

(declare-fun m!1981041 () Bool)

(assert (=> b!1640716 m!1981041))

(declare-fun m!1981043 () Bool)

(assert (=> b!1640716 m!1981043))

(declare-fun m!1981045 () Bool)

(assert (=> b!1640716 m!1981045))

(declare-fun m!1981047 () Bool)

(assert (=> b!1640716 m!1981047))

(declare-fun m!1981049 () Bool)

(assert (=> b!1640716 m!1981049))

(assert (=> b!1640716 m!1981029))

(declare-fun m!1981051 () Bool)

(assert (=> b!1640716 m!1981051))

(declare-fun m!1981053 () Bool)

(assert (=> b!1640716 m!1981053))

(assert (=> b!1640716 m!1981037))

(declare-fun m!1981055 () Bool)

(assert (=> b!1640716 m!1981055))

(declare-fun m!1981057 () Bool)

(assert (=> b!1640716 m!1981057))

(declare-fun m!1981059 () Bool)

(assert (=> b!1640716 m!1981059))

(assert (=> b!1640716 m!1981029))

(declare-fun m!1981061 () Bool)

(assert (=> b!1640716 m!1981061))

(assert (=> b!1640716 m!1981051))

(declare-fun m!1981063 () Bool)

(assert (=> b!1640716 m!1981063))

(declare-fun m!1981065 () Bool)

(assert (=> b!1640716 m!1981065))

(declare-fun m!1981067 () Bool)

(assert (=> b!1640716 m!1981067))

(assert (=> b!1640716 m!1981049))

(declare-fun m!1981069 () Bool)

(assert (=> b!1640716 m!1981069))

(declare-fun m!1981071 () Bool)

(assert (=> b!1640716 m!1981071))

(declare-fun m!1981073 () Bool)

(assert (=> b!1640716 m!1981073))

(declare-fun m!1981075 () Bool)

(assert (=> b!1640716 m!1981075))

(declare-fun m!1981077 () Bool)

(assert (=> b!1640716 m!1981077))

(assert (=> b!1640716 m!1981051))

(assert (=> b!1640716 m!1981043))

(declare-fun m!1981079 () Bool)

(assert (=> b!1640716 m!1981079))

(declare-fun m!1981081 () Bool)

(assert (=> b!1640716 m!1981081))

(assert (=> b!1640716 m!1981031))

(declare-fun m!1981083 () Bool)

(assert (=> b!1640716 m!1981083))

(declare-fun m!1981085 () Bool)

(assert (=> b!1640716 m!1981085))

(assert (=> b!1640716 m!1981043))

(assert (=> b!1640716 m!1980945))

(assert (=> b!1640716 m!1980947))

(assert (=> b!1640716 m!1981081))

(declare-fun m!1981087 () Bool)

(assert (=> b!1640716 m!1981087))

(assert (=> b!1640716 m!1981055))

(declare-fun m!1981089 () Bool)

(assert (=> b!1640716 m!1981089))

(declare-fun m!1981091 () Bool)

(assert (=> b!1640716 m!1981091))

(assert (=> b!1640716 m!1981065))

(assert (=> b!1640716 m!1981035))

(assert (=> b!1640716 m!1981051))

(declare-fun m!1981093 () Bool)

(assert (=> b!1640716 m!1981093))

(assert (=> b!1640716 m!1981071))

(assert (=> b!1640716 m!1981059))

(assert (=> b!1640716 m!1981047))

(assert (=> b!1640716 m!1981075))

(declare-fun m!1981095 () Bool)

(assert (=> b!1640716 m!1981095))

(declare-fun m!1981097 () Bool)

(assert (=> b!1640716 m!1981097))

(assert (=> b!1640716 m!1980945))

(assert (=> b!1640716 m!1981029))

(declare-fun m!1981099 () Bool)

(assert (=> b!1640716 m!1981099))

(assert (=> b!1640717 m!1980945))

(assert (=> b!1640717 m!1980945))

(assert (=> b!1640717 m!1980947))

(assert (=> b!1640717 m!1980947))

(assert (=> b!1640717 m!1981027))

(declare-fun m!1981101 () Bool)

(assert (=> b!1640717 m!1981101))

(assert (=> b!1640636 d!493848))

(declare-fun d!493854 () Bool)

(declare-fun e!1052225 () Bool)

(assert (=> d!493854 e!1052225))

(declare-fun res!735141 () Bool)

(assert (=> d!493854 (=> res!735141 e!1052225)))

(declare-fun lt!602975 () Bool)

(assert (=> d!493854 (= res!735141 (not lt!602975))))

(declare-fun e!1052224 () Bool)

(assert (=> d!493854 (= lt!602975 e!1052224)))

(declare-fun res!735139 () Bool)

(assert (=> d!493854 (=> res!735139 e!1052224)))

(assert (=> d!493854 (= res!735139 (is-Nil!18073 lt!602864))))

(assert (=> d!493854 (= (isPrefix!1444 lt!602864 lt!602860) lt!602975)))

(declare-fun b!1640728 () Bool)

(declare-fun e!1052226 () Bool)

(declare-fun tail!2405 (List!18143) List!18143)

(assert (=> b!1640728 (= e!1052226 (isPrefix!1444 (tail!2405 lt!602864) (tail!2405 lt!602860)))))

(declare-fun b!1640726 () Bool)

(assert (=> b!1640726 (= e!1052224 e!1052226)))

(declare-fun res!735142 () Bool)

(assert (=> b!1640726 (=> (not res!735142) (not e!1052226))))

(assert (=> b!1640726 (= res!735142 (not (is-Nil!18073 lt!602860)))))

(declare-fun b!1640729 () Bool)

(assert (=> b!1640729 (= e!1052225 (>= (size!14397 lt!602860) (size!14397 lt!602864)))))

(declare-fun b!1640727 () Bool)

(declare-fun res!735140 () Bool)

(assert (=> b!1640727 (=> (not res!735140) (not e!1052226))))

(assert (=> b!1640727 (= res!735140 (= (head!3566 lt!602864) (head!3566 lt!602860)))))

(assert (= (and d!493854 (not res!735139)) b!1640726))

(assert (= (and b!1640726 res!735142) b!1640727))

(assert (= (and b!1640727 res!735140) b!1640728))

(assert (= (and d!493854 (not res!735141)) b!1640729))

(declare-fun m!1981103 () Bool)

(assert (=> b!1640728 m!1981103))

(declare-fun m!1981105 () Bool)

(assert (=> b!1640728 m!1981105))

(assert (=> b!1640728 m!1981103))

(assert (=> b!1640728 m!1981105))

(declare-fun m!1981107 () Bool)

(assert (=> b!1640728 m!1981107))

(declare-fun m!1981109 () Bool)

(assert (=> b!1640729 m!1981109))

(declare-fun m!1981111 () Bool)

(assert (=> b!1640729 m!1981111))

(declare-fun m!1981113 () Bool)

(assert (=> b!1640727 m!1981113))

(declare-fun m!1981115 () Bool)

(assert (=> b!1640727 m!1981115))

(assert (=> b!1640636 d!493854))

(declare-fun d!493856 () Bool)

(assert (=> d!493856 (isPrefix!1444 lt!602864 (++!4857 lt!602864 lt!602861))))

(declare-fun lt!602978 () Unit!29683)

(declare-fun choose!9843 (List!18143 List!18143) Unit!29683)

(assert (=> d!493856 (= lt!602978 (choose!9843 lt!602864 lt!602861))))

(assert (=> d!493856 (= (lemmaConcatTwoListThenFirstIsPrefix!969 lt!602864 lt!602861) lt!602978)))

(declare-fun bs!395647 () Bool)

(assert (= bs!395647 d!493856))

(assert (=> bs!395647 m!1980951))

(assert (=> bs!395647 m!1980951))

(declare-fun m!1981117 () Bool)

(assert (=> bs!395647 m!1981117))

(declare-fun m!1981119 () Bool)

(assert (=> bs!395647 m!1981119))

(assert (=> b!1640636 d!493856))

(declare-fun d!493858 () Bool)

(declare-fun res!735145 () Bool)

(declare-fun e!1052229 () Bool)

(assert (=> d!493858 (=> (not res!735145) (not e!1052229))))

(declare-fun rulesValid!1149 (LexerInterface!2815 List!18146) Bool)

(assert (=> d!493858 (= res!735145 (rulesValid!1149 thiss!17113 rules!1846))))

(assert (=> d!493858 (= (rulesInvariant!2484 thiss!17113 rules!1846) e!1052229)))

(declare-fun b!1640732 () Bool)

(declare-datatypes ((List!18151 0))(
  ( (Nil!18081) (Cons!18081 (h!23482 String!20714) (t!150018 List!18151)) )
))
(declare-fun noDuplicateTag!1149 (LexerInterface!2815 List!18146 List!18151) Bool)

(assert (=> b!1640732 (= e!1052229 (noDuplicateTag!1149 thiss!17113 rules!1846 Nil!18081))))

(assert (= (and d!493858 res!735145) b!1640732))

(declare-fun m!1981121 () Bool)

(assert (=> d!493858 m!1981121))

(declare-fun m!1981123 () Bool)

(assert (=> b!1640732 m!1981123))

(assert (=> b!1640634 d!493858))

(declare-fun d!493860 () Bool)

(assert (=> d!493860 (= (inv!23422 (tag!3466 (rule!5034 (h!23476 tokens!457)))) (= (mod (str.len (value!100474 (tag!3466 (rule!5034 (h!23476 tokens!457))))) 2) 0))))

(assert (=> b!1640624 d!493860))

(declare-fun d!493862 () Bool)

(declare-fun res!735148 () Bool)

(declare-fun e!1052232 () Bool)

(assert (=> d!493862 (=> (not res!735148) (not e!1052232))))

(declare-fun semiInverseModEq!1221 (Int Int) Bool)

(assert (=> d!493862 (= res!735148 (semiInverseModEq!1221 (toChars!4480 (transformation!3186 (rule!5034 (h!23476 tokens!457)))) (toValue!4621 (transformation!3186 (rule!5034 (h!23476 tokens!457))))))))

(assert (=> d!493862 (= (inv!23425 (transformation!3186 (rule!5034 (h!23476 tokens!457)))) e!1052232)))

(declare-fun b!1640735 () Bool)

(declare-fun equivClasses!1162 (Int Int) Bool)

(assert (=> b!1640735 (= e!1052232 (equivClasses!1162 (toChars!4480 (transformation!3186 (rule!5034 (h!23476 tokens!457)))) (toValue!4621 (transformation!3186 (rule!5034 (h!23476 tokens!457))))))))

(assert (= (and d!493862 res!735148) b!1640735))

(declare-fun m!1981125 () Bool)

(assert (=> d!493862 m!1981125))

(declare-fun m!1981127 () Bool)

(assert (=> b!1640735 m!1981127))

(assert (=> b!1640624 d!493862))

(declare-fun b!1640806 () Bool)

(declare-fun e!1052283 () Bool)

(assert (=> b!1640806 (= e!1052283 true)))

(declare-fun b!1640805 () Bool)

(declare-fun e!1052282 () Bool)

(assert (=> b!1640805 (= e!1052282 e!1052283)))

(declare-fun b!1640804 () Bool)

(declare-fun e!1052281 () Bool)

(assert (=> b!1640804 (= e!1052281 e!1052282)))

(declare-fun d!493864 () Bool)

(assert (=> d!493864 e!1052281))

(assert (= b!1640805 b!1640806))

(assert (= b!1640804 b!1640805))

(assert (= (and d!493864 (is-Cons!18076 rules!1846)) b!1640804))

(declare-fun order!10727 () Int)

(declare-fun order!10729 () Int)

(declare-fun lambda!67490 () Int)

(declare-fun dynLambda!8057 (Int Int) Int)

(declare-fun dynLambda!8058 (Int Int) Int)

(assert (=> b!1640806 (< (dynLambda!8057 order!10727 (toValue!4621 (transformation!3186 (h!23477 rules!1846)))) (dynLambda!8058 order!10729 lambda!67490))))

(declare-fun order!10731 () Int)

(declare-fun dynLambda!8059 (Int Int) Int)

(assert (=> b!1640806 (< (dynLambda!8059 order!10731 (toChars!4480 (transformation!3186 (h!23477 rules!1846)))) (dynLambda!8058 order!10729 lambda!67490))))

(assert (=> d!493864 true))

(declare-fun lt!602995 () Bool)

(declare-fun forall!4119 (List!18145 Int) Bool)

(assert (=> d!493864 (= lt!602995 (forall!4119 tokens!457 lambda!67490))))

(declare-fun e!1052271 () Bool)

(assert (=> d!493864 (= lt!602995 e!1052271)))

(declare-fun res!735175 () Bool)

(assert (=> d!493864 (=> res!735175 e!1052271)))

(assert (=> d!493864 (= res!735175 (not (is-Cons!18075 tokens!457)))))

(assert (=> d!493864 (not (isEmpty!11106 rules!1846))))

(assert (=> d!493864 (= (rulesProduceEachTokenIndividuallyList!1017 thiss!17113 rules!1846 tokens!457) lt!602995)))

(declare-fun b!1640791 () Bool)

(declare-fun e!1052270 () Bool)

(assert (=> b!1640791 (= e!1052271 e!1052270)))

(declare-fun res!735174 () Bool)

(assert (=> b!1640791 (=> (not res!735174) (not e!1052270))))

(declare-fun rulesProduceIndividualToken!1467 (LexerInterface!2815 List!18146 Token!5938) Bool)

(assert (=> b!1640791 (= res!735174 (rulesProduceIndividualToken!1467 thiss!17113 rules!1846 (h!23476 tokens!457)))))

(declare-fun b!1640792 () Bool)

(assert (=> b!1640792 (= e!1052270 (rulesProduceEachTokenIndividuallyList!1017 thiss!17113 rules!1846 (t!149996 tokens!457)))))

(assert (= (and d!493864 (not res!735175)) b!1640791))

(assert (= (and b!1640791 res!735174) b!1640792))

(declare-fun m!1981213 () Bool)

(assert (=> d!493864 m!1981213))

(assert (=> d!493864 m!1980955))

(declare-fun m!1981215 () Bool)

(assert (=> b!1640791 m!1981215))

(declare-fun m!1981217 () Bool)

(assert (=> b!1640792 m!1981217))

(assert (=> b!1640635 d!493864))

(declare-fun d!493902 () Bool)

(declare-fun res!735183 () Bool)

(declare-fun e!1052288 () Bool)

(assert (=> d!493902 (=> res!735183 e!1052288)))

(assert (=> d!493902 (= res!735183 (or (not (is-Cons!18075 tokens!457)) (not (is-Cons!18075 (t!149996 tokens!457)))))))

(assert (=> d!493902 (= (tokensListTwoByTwoPredicateSeparableList!508 thiss!17113 tokens!457 rules!1846) e!1052288)))

(declare-fun b!1640813 () Bool)

(declare-fun e!1052289 () Bool)

(assert (=> b!1640813 (= e!1052288 e!1052289)))

(declare-fun res!735184 () Bool)

(assert (=> b!1640813 (=> (not res!735184) (not e!1052289))))

(declare-fun separableTokensPredicate!757 (LexerInterface!2815 Token!5938 Token!5938 List!18146) Bool)

(assert (=> b!1640813 (= res!735184 (separableTokensPredicate!757 thiss!17113 (h!23476 tokens!457) (h!23476 (t!149996 tokens!457)) rules!1846))))

(declare-fun lt!603014 () Unit!29683)

(declare-fun Unit!29702 () Unit!29683)

(assert (=> b!1640813 (= lt!603014 Unit!29702)))

(declare-fun size!14398 (BalanceConc!11984) Int)

(assert (=> b!1640813 (> (size!14398 (charsOf!1835 (h!23476 (t!149996 tokens!457)))) 0)))

(declare-fun lt!603016 () Unit!29683)

(declare-fun Unit!29703 () Unit!29683)

(assert (=> b!1640813 (= lt!603016 Unit!29703)))

(assert (=> b!1640813 (rulesProduceIndividualToken!1467 thiss!17113 rules!1846 (h!23476 (t!149996 tokens!457)))))

(declare-fun lt!603011 () Unit!29683)

(declare-fun Unit!29704 () Unit!29683)

(assert (=> b!1640813 (= lt!603011 Unit!29704)))

(assert (=> b!1640813 (rulesProduceIndividualToken!1467 thiss!17113 rules!1846 (h!23476 tokens!457))))

(declare-fun lt!603010 () Unit!29683)

(declare-fun lt!603012 () Unit!29683)

(assert (=> b!1640813 (= lt!603010 lt!603012)))

(assert (=> b!1640813 (rulesProduceIndividualToken!1467 thiss!17113 rules!1846 (h!23476 (t!149996 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!586 (LexerInterface!2815 List!18146 List!18145 Token!5938) Unit!29683)

(assert (=> b!1640813 (= lt!603012 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!586 thiss!17113 rules!1846 tokens!457 (h!23476 (t!149996 tokens!457))))))

(declare-fun lt!603013 () Unit!29683)

(declare-fun lt!603015 () Unit!29683)

(assert (=> b!1640813 (= lt!603013 lt!603015)))

(assert (=> b!1640813 (rulesProduceIndividualToken!1467 thiss!17113 rules!1846 (h!23476 tokens!457))))

(assert (=> b!1640813 (= lt!603015 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!586 thiss!17113 rules!1846 tokens!457 (h!23476 tokens!457)))))

(declare-fun b!1640814 () Bool)

(assert (=> b!1640814 (= e!1052289 (tokensListTwoByTwoPredicateSeparableList!508 thiss!17113 (Cons!18075 (h!23476 (t!149996 tokens!457)) (t!149996 (t!149996 tokens!457))) rules!1846))))

(assert (= (and d!493902 (not res!735183)) b!1640813))

(assert (= (and b!1640813 res!735184) b!1640814))

(declare-fun m!1981219 () Bool)

(assert (=> b!1640813 m!1981219))

(declare-fun m!1981221 () Bool)

(assert (=> b!1640813 m!1981221))

(declare-fun m!1981223 () Bool)

(assert (=> b!1640813 m!1981223))

(assert (=> b!1640813 m!1981059))

(assert (=> b!1640813 m!1981059))

(declare-fun m!1981225 () Bool)

(assert (=> b!1640813 m!1981225))

(assert (=> b!1640813 m!1981215))

(declare-fun m!1981227 () Bool)

(assert (=> b!1640813 m!1981227))

(declare-fun m!1981229 () Bool)

(assert (=> b!1640814 m!1981229))

(assert (=> b!1640633 d!493902))

(declare-fun d!493904 () Bool)

(declare-fun c!266864 () Bool)

(assert (=> d!493904 (= c!266864 (is-IntegerValue!9828 (value!100475 (h!23476 tokens!457))))))

(declare-fun e!1052298 () Bool)

(assert (=> d!493904 (= (inv!21 (value!100475 (h!23476 tokens!457))) e!1052298)))

(declare-fun b!1640825 () Bool)

(declare-fun e!1052297 () Bool)

(declare-fun inv!15 (TokenValue!3276) Bool)

(assert (=> b!1640825 (= e!1052297 (inv!15 (value!100475 (h!23476 tokens!457))))))

(declare-fun b!1640826 () Bool)

(declare-fun e!1052296 () Bool)

(assert (=> b!1640826 (= e!1052298 e!1052296)))

(declare-fun c!266863 () Bool)

(assert (=> b!1640826 (= c!266863 (is-IntegerValue!9829 (value!100475 (h!23476 tokens!457))))))

(declare-fun b!1640827 () Bool)

(declare-fun inv!16 (TokenValue!3276) Bool)

(assert (=> b!1640827 (= e!1052298 (inv!16 (value!100475 (h!23476 tokens!457))))))

(declare-fun b!1640828 () Bool)

(declare-fun inv!17 (TokenValue!3276) Bool)

(assert (=> b!1640828 (= e!1052296 (inv!17 (value!100475 (h!23476 tokens!457))))))

(declare-fun b!1640829 () Bool)

(declare-fun res!735187 () Bool)

(assert (=> b!1640829 (=> res!735187 e!1052297)))

(assert (=> b!1640829 (= res!735187 (not (is-IntegerValue!9830 (value!100475 (h!23476 tokens!457)))))))

(assert (=> b!1640829 (= e!1052296 e!1052297)))

(assert (= (and d!493904 c!266864) b!1640827))

(assert (= (and d!493904 (not c!266864)) b!1640826))

(assert (= (and b!1640826 c!266863) b!1640828))

(assert (= (and b!1640826 (not c!266863)) b!1640829))

(assert (= (and b!1640829 (not res!735187)) b!1640825))

(declare-fun m!1981231 () Bool)

(assert (=> b!1640825 m!1981231))

(declare-fun m!1981233 () Bool)

(assert (=> b!1640827 m!1981233))

(declare-fun m!1981235 () Bool)

(assert (=> b!1640828 m!1981235))

(assert (=> b!1640628 d!493904))

(declare-fun d!493906 () Bool)

(declare-fun list!7144 (Conc!6020) List!18143)

(assert (=> d!493906 (= (list!7139 lt!602857) (list!7144 (c!266837 lt!602857)))))

(declare-fun bs!395656 () Bool)

(assert (= bs!395656 d!493906))

(declare-fun m!1981237 () Bool)

(assert (=> bs!395656 m!1981237))

(assert (=> b!1640623 d!493906))

(declare-fun d!493908 () Bool)

(declare-fun lt!603019 () BalanceConc!11984)

(declare-fun printList!930 (LexerInterface!2815 List!18145) List!18143)

(assert (=> d!493908 (= (list!7139 lt!603019) (printList!930 thiss!17113 (list!7140 (seqFromList!2119 (t!149996 tokens!457)))))))

(assert (=> d!493908 (= lt!603019 (printTailRec!868 thiss!17113 (seqFromList!2119 (t!149996 tokens!457)) 0 (BalanceConc!11985 Empty!6020)))))

(assert (=> d!493908 (= (print!1346 thiss!17113 (seqFromList!2119 (t!149996 tokens!457))) lt!603019)))

(declare-fun bs!395657 () Bool)

(assert (= bs!395657 d!493908))

(declare-fun m!1981239 () Bool)

(assert (=> bs!395657 m!1981239))

(assert (=> bs!395657 m!1980945))

(declare-fun m!1981241 () Bool)

(assert (=> bs!395657 m!1981241))

(assert (=> bs!395657 m!1981241))

(declare-fun m!1981243 () Bool)

(assert (=> bs!395657 m!1981243))

(assert (=> bs!395657 m!1980945))

(declare-fun m!1981245 () Bool)

(assert (=> bs!395657 m!1981245))

(assert (=> b!1640623 d!493908))

(declare-fun d!493910 () Bool)

(declare-fun fromListB!934 (List!18145) BalanceConc!11986)

(assert (=> d!493910 (= (seqFromList!2119 tokens!457) (fromListB!934 tokens!457))))

(declare-fun bs!395658 () Bool)

(assert (= bs!395658 d!493910))

(declare-fun m!1981247 () Bool)

(assert (=> bs!395658 m!1981247))

(assert (=> b!1640623 d!493910))

(declare-fun lt!603022 () List!18143)

(declare-fun b!1640841 () Bool)

(declare-fun e!1052303 () Bool)

(assert (=> b!1640841 (= e!1052303 (or (not (= lt!602861 Nil!18073)) (= lt!603022 lt!602864)))))

(declare-fun b!1640839 () Bool)

(declare-fun e!1052304 () List!18143)

(assert (=> b!1640839 (= e!1052304 (Cons!18073 (h!23474 lt!602864) (++!4857 (t!149994 lt!602864) lt!602861)))))

(declare-fun b!1640838 () Bool)

(assert (=> b!1640838 (= e!1052304 lt!602861)))

(declare-fun d!493912 () Bool)

(assert (=> d!493912 e!1052303))

(declare-fun res!735192 () Bool)

(assert (=> d!493912 (=> (not res!735192) (not e!1052303))))

(declare-fun content!2500 (List!18143) (Set C!9202))

(assert (=> d!493912 (= res!735192 (= (content!2500 lt!603022) (set.union (content!2500 lt!602864) (content!2500 lt!602861))))))

(assert (=> d!493912 (= lt!603022 e!1052304)))

(declare-fun c!266867 () Bool)

(assert (=> d!493912 (= c!266867 (is-Nil!18073 lt!602864))))

(assert (=> d!493912 (= (++!4857 lt!602864 lt!602861) lt!603022)))

(declare-fun b!1640840 () Bool)

(declare-fun res!735193 () Bool)

(assert (=> b!1640840 (=> (not res!735193) (not e!1052303))))

(assert (=> b!1640840 (= res!735193 (= (size!14397 lt!603022) (+ (size!14397 lt!602864) (size!14397 lt!602861))))))

(assert (= (and d!493912 c!266867) b!1640838))

(assert (= (and d!493912 (not c!266867)) b!1640839))

(assert (= (and d!493912 res!735192) b!1640840))

(assert (= (and b!1640840 res!735193) b!1640841))

(declare-fun m!1981249 () Bool)

(assert (=> b!1640839 m!1981249))

(declare-fun m!1981251 () Bool)

(assert (=> d!493912 m!1981251))

(declare-fun m!1981253 () Bool)

(assert (=> d!493912 m!1981253))

(declare-fun m!1981255 () Bool)

(assert (=> d!493912 m!1981255))

(declare-fun m!1981257 () Bool)

(assert (=> b!1640840 m!1981257))

(assert (=> b!1640840 m!1981111))

(declare-fun m!1981259 () Bool)

(assert (=> b!1640840 m!1981259))

(assert (=> b!1640623 d!493912))

(declare-fun d!493914 () Bool)

(declare-fun lt!603025 () BalanceConc!11984)

(assert (=> d!493914 (= (list!7139 lt!603025) (originalCharacters!4000 (h!23476 tokens!457)))))

(assert (=> d!493914 (= lt!603025 (dynLambda!8056 (toChars!4480 (transformation!3186 (rule!5034 (h!23476 tokens!457)))) (value!100475 (h!23476 tokens!457))))))

(assert (=> d!493914 (= (charsOf!1835 (h!23476 tokens!457)) lt!603025)))

(declare-fun b_lambda!51553 () Bool)

(assert (=> (not b_lambda!51553) (not d!493914)))

(assert (=> d!493914 t!150003))

(declare-fun b_and!116317 () Bool)

(assert (= b_and!116309 (and (=> t!150003 result!113378) b_and!116317)))

(assert (=> d!493914 t!150005))

(declare-fun b_and!116319 () Bool)

(assert (= b_and!116311 (and (=> t!150005 result!113382) b_and!116319)))

(declare-fun m!1981261 () Bool)

(assert (=> d!493914 m!1981261))

(assert (=> d!493914 m!1981011))

(assert (=> b!1640623 d!493914))

(declare-fun d!493916 () Bool)

(assert (=> d!493916 (= (list!7139 (charsOf!1835 (h!23476 tokens!457))) (list!7144 (c!266837 (charsOf!1835 (h!23476 tokens!457)))))))

(declare-fun bs!395659 () Bool)

(assert (= bs!395659 d!493916))

(declare-fun m!1981263 () Bool)

(assert (=> bs!395659 m!1981263))

(assert (=> b!1640623 d!493916))

(declare-fun d!493918 () Bool)

(declare-fun lt!603026 () BalanceConc!11984)

(assert (=> d!493918 (= (list!7139 lt!603026) (printList!930 thiss!17113 (list!7140 (seqFromList!2119 tokens!457))))))

(assert (=> d!493918 (= lt!603026 (printTailRec!868 thiss!17113 (seqFromList!2119 tokens!457) 0 (BalanceConc!11985 Empty!6020)))))

(assert (=> d!493918 (= (print!1346 thiss!17113 (seqFromList!2119 tokens!457)) lt!603026)))

(declare-fun bs!395660 () Bool)

(assert (= bs!395660 d!493918))

(declare-fun m!1981265 () Bool)

(assert (=> bs!395660 m!1981265))

(assert (=> bs!395660 m!1980935))

(declare-fun m!1981267 () Bool)

(assert (=> bs!395660 m!1981267))

(assert (=> bs!395660 m!1981267))

(declare-fun m!1981269 () Bool)

(assert (=> bs!395660 m!1981269))

(assert (=> bs!395660 m!1980935))

(declare-fun m!1981271 () Bool)

(assert (=> bs!395660 m!1981271))

(assert (=> b!1640623 d!493918))

(declare-fun d!493920 () Bool)

(assert (=> d!493920 (= (list!7139 lt!602858) (list!7144 (c!266837 lt!602858)))))

(declare-fun bs!395661 () Bool)

(assert (= bs!395661 d!493920))

(declare-fun m!1981273 () Bool)

(assert (=> bs!395661 m!1981273))

(assert (=> b!1640623 d!493920))

(declare-fun d!493922 () Bool)

(assert (=> d!493922 (= (seqFromList!2119 (t!149996 tokens!457)) (fromListB!934 (t!149996 tokens!457)))))

(declare-fun bs!395662 () Bool)

(assert (= bs!395662 d!493922))

(declare-fun m!1981275 () Bool)

(assert (=> bs!395662 m!1981275))

(assert (=> b!1640623 d!493922))

(declare-fun b!1640852 () Bool)

(declare-fun e!1052311 () Bool)

(declare-fun lt!603029 () tuple2!17724)

(assert (=> b!1640852 (= e!1052311 (= (_2!10264 lt!603029) lt!602858))))

(declare-fun b!1640853 () Bool)

(declare-fun res!735202 () Bool)

(declare-fun e!1052312 () Bool)

(assert (=> b!1640853 (=> (not res!735202) (not e!1052312))))

(declare-datatypes ((tuple2!17730 0))(
  ( (tuple2!17731 (_1!10267 List!18145) (_2!10267 List!18143)) )
))
(declare-fun lexList!850 (LexerInterface!2815 List!18146 List!18143) tuple2!17730)

(assert (=> b!1640853 (= res!735202 (= (list!7140 (_1!10264 lt!603029)) (_1!10267 (lexList!850 thiss!17113 rules!1846 (list!7139 lt!602858)))))))

(declare-fun d!493924 () Bool)

(assert (=> d!493924 e!1052312))

(declare-fun res!735201 () Bool)

(assert (=> d!493924 (=> (not res!735201) (not e!1052312))))

(assert (=> d!493924 (= res!735201 e!1052311)))

(declare-fun c!266870 () Bool)

(declare-fun size!14399 (BalanceConc!11986) Int)

(assert (=> d!493924 (= c!266870 (> (size!14399 (_1!10264 lt!603029)) 0))))

(declare-fun lexTailRecV2!573 (LexerInterface!2815 List!18146 BalanceConc!11984 BalanceConc!11984 BalanceConc!11984 BalanceConc!11986) tuple2!17724)

(assert (=> d!493924 (= lt!603029 (lexTailRecV2!573 thiss!17113 rules!1846 lt!602858 (BalanceConc!11985 Empty!6020) lt!602858 (BalanceConc!11987 Empty!6021)))))

(assert (=> d!493924 (= (lex!1299 thiss!17113 rules!1846 lt!602858) lt!603029)))

(declare-fun b!1640854 () Bool)

(declare-fun e!1052313 () Bool)

(declare-fun isEmpty!11110 (BalanceConc!11986) Bool)

(assert (=> b!1640854 (= e!1052313 (not (isEmpty!11110 (_1!10264 lt!603029))))))

(declare-fun b!1640855 () Bool)

(assert (=> b!1640855 (= e!1052312 (= (list!7139 (_2!10264 lt!603029)) (_2!10267 (lexList!850 thiss!17113 rules!1846 (list!7139 lt!602858)))))))

(declare-fun b!1640856 () Bool)

(assert (=> b!1640856 (= e!1052311 e!1052313)))

(declare-fun res!735200 () Bool)

(assert (=> b!1640856 (= res!735200 (< (size!14398 (_2!10264 lt!603029)) (size!14398 lt!602858)))))

(assert (=> b!1640856 (=> (not res!735200) (not e!1052313))))

(assert (= (and d!493924 c!266870) b!1640856))

(assert (= (and d!493924 (not c!266870)) b!1640852))

(assert (= (and b!1640856 res!735200) b!1640854))

(assert (= (and d!493924 res!735201) b!1640853))

(assert (= (and b!1640853 res!735202) b!1640855))

(declare-fun m!1981277 () Bool)

(assert (=> b!1640855 m!1981277))

(assert (=> b!1640855 m!1980941))

(assert (=> b!1640855 m!1980941))

(declare-fun m!1981279 () Bool)

(assert (=> b!1640855 m!1981279))

(declare-fun m!1981281 () Bool)

(assert (=> b!1640856 m!1981281))

(declare-fun m!1981283 () Bool)

(assert (=> b!1640856 m!1981283))

(declare-fun m!1981285 () Bool)

(assert (=> d!493924 m!1981285))

(declare-fun m!1981287 () Bool)

(assert (=> d!493924 m!1981287))

(declare-fun m!1981289 () Bool)

(assert (=> b!1640853 m!1981289))

(assert (=> b!1640853 m!1980941))

(assert (=> b!1640853 m!1980941))

(assert (=> b!1640853 m!1981279))

(declare-fun m!1981291 () Bool)

(assert (=> b!1640854 m!1981291))

(assert (=> b!1640623 d!493924))

(declare-fun d!493926 () Bool)

(assert (=> d!493926 (= (inv!23422 (tag!3466 (h!23477 rules!1846))) (= (mod (str.len (value!100474 (tag!3466 (h!23477 rules!1846)))) 2) 0))))

(assert (=> b!1640626 d!493926))

(declare-fun d!493928 () Bool)

(declare-fun res!735203 () Bool)

(declare-fun e!1052314 () Bool)

(assert (=> d!493928 (=> (not res!735203) (not e!1052314))))

(assert (=> d!493928 (= res!735203 (semiInverseModEq!1221 (toChars!4480 (transformation!3186 (h!23477 rules!1846))) (toValue!4621 (transformation!3186 (h!23477 rules!1846)))))))

(assert (=> d!493928 (= (inv!23425 (transformation!3186 (h!23477 rules!1846))) e!1052314)))

(declare-fun b!1640857 () Bool)

(assert (=> b!1640857 (= e!1052314 (equivClasses!1162 (toChars!4480 (transformation!3186 (h!23477 rules!1846))) (toValue!4621 (transformation!3186 (h!23477 rules!1846)))))))

(assert (= (and d!493928 res!735203) b!1640857))

(declare-fun m!1981293 () Bool)

(assert (=> d!493928 m!1981293))

(declare-fun m!1981295 () Bool)

(assert (=> b!1640857 m!1981295))

(assert (=> b!1640626 d!493928))

(declare-fun d!493930 () Bool)

(assert (=> d!493930 (= (isEmpty!11106 rules!1846) (is-Nil!18076 rules!1846))))

(assert (=> b!1640627 d!493930))

(declare-fun b!1640871 () Bool)

(declare-fun b_free!44447 () Bool)

(declare-fun b_next!45151 () Bool)

(assert (=> b!1640871 (= b_free!44447 (not b_next!45151))))

(declare-fun tp!475496 () Bool)

(declare-fun b_and!116321 () Bool)

(assert (=> b!1640871 (= tp!475496 b_and!116321)))

(declare-fun b_free!44449 () Bool)

(declare-fun b_next!45153 () Bool)

(assert (=> b!1640871 (= b_free!44449 (not b_next!45153))))

(declare-fun t!150015 () Bool)

(declare-fun tb!93935 () Bool)

(assert (=> (and b!1640871 (= (toChars!4480 (transformation!3186 (rule!5034 (h!23476 (t!149996 tokens!457))))) (toChars!4480 (transformation!3186 (rule!5034 (h!23476 tokens!457))))) t!150015) tb!93935))

(declare-fun result!113392 () Bool)

(assert (= result!113392 result!113378))

(assert (=> b!1640683 t!150015))

(assert (=> d!493914 t!150015))

(declare-fun b_and!116323 () Bool)

(declare-fun tp!475499 () Bool)

(assert (=> b!1640871 (= tp!475499 (and (=> t!150015 result!113392) b_and!116323))))

(declare-fun e!1052329 () Bool)

(declare-fun b!1640868 () Bool)

(declare-fun tp!475498 () Bool)

(declare-fun e!1052330 () Bool)

(assert (=> b!1640868 (= e!1052329 (and (inv!23426 (h!23476 (t!149996 tokens!457))) e!1052330 tp!475498))))

(declare-fun tp!475495 () Bool)

(declare-fun b!1640869 () Bool)

(declare-fun e!1052327 () Bool)

(assert (=> b!1640869 (= e!1052330 (and (inv!21 (value!100475 (h!23476 (t!149996 tokens!457)))) e!1052327 tp!475495))))

(declare-fun e!1052328 () Bool)

(assert (=> b!1640871 (= e!1052328 (and tp!475496 tp!475499))))

(declare-fun tp!475497 () Bool)

(declare-fun b!1640870 () Bool)

(assert (=> b!1640870 (= e!1052327 (and tp!475497 (inv!23422 (tag!3466 (rule!5034 (h!23476 (t!149996 tokens!457))))) (inv!23425 (transformation!3186 (rule!5034 (h!23476 (t!149996 tokens!457))))) e!1052328))))

(assert (=> b!1640630 (= tp!475449 e!1052329)))

(assert (= b!1640870 b!1640871))

(assert (= b!1640869 b!1640870))

(assert (= b!1640868 b!1640869))

(assert (= (and b!1640630 (is-Cons!18075 (t!149996 tokens!457))) b!1640868))

(declare-fun m!1981297 () Bool)

(assert (=> b!1640868 m!1981297))

(declare-fun m!1981299 () Bool)

(assert (=> b!1640869 m!1981299))

(declare-fun m!1981301 () Bool)

(assert (=> b!1640870 m!1981301))

(declare-fun m!1981303 () Bool)

(assert (=> b!1640870 m!1981303))

(declare-fun b!1640882 () Bool)

(declare-fun e!1052335 () Bool)

(declare-fun tp_is_empty!7323 () Bool)

(assert (=> b!1640882 (= e!1052335 tp_is_empty!7323)))

(declare-fun b!1640884 () Bool)

(declare-fun tp!475512 () Bool)

(assert (=> b!1640884 (= e!1052335 tp!475512)))

(declare-fun b!1640883 () Bool)

(declare-fun tp!475511 () Bool)

(declare-fun tp!475513 () Bool)

(assert (=> b!1640883 (= e!1052335 (and tp!475511 tp!475513))))

(declare-fun b!1640885 () Bool)

(declare-fun tp!475510 () Bool)

(declare-fun tp!475514 () Bool)

(assert (=> b!1640885 (= e!1052335 (and tp!475510 tp!475514))))

(assert (=> b!1640624 (= tp!475448 e!1052335)))

(assert (= (and b!1640624 (is-ElementMatch!4514 (regex!3186 (rule!5034 (h!23476 tokens!457))))) b!1640882))

(assert (= (and b!1640624 (is-Concat!7791 (regex!3186 (rule!5034 (h!23476 tokens!457))))) b!1640883))

(assert (= (and b!1640624 (is-Star!4514 (regex!3186 (rule!5034 (h!23476 tokens!457))))) b!1640884))

(assert (= (and b!1640624 (is-Union!4514 (regex!3186 (rule!5034 (h!23476 tokens!457))))) b!1640885))

(declare-fun b!1640890 () Bool)

(declare-fun e!1052338 () Bool)

(declare-fun tp!475517 () Bool)

(assert (=> b!1640890 (= e!1052338 (and tp_is_empty!7323 tp!475517))))

(assert (=> b!1640628 (= tp!475443 e!1052338)))

(assert (= (and b!1640628 (is-Cons!18073 (originalCharacters!4000 (h!23476 tokens!457)))) b!1640890))

(declare-fun b!1640891 () Bool)

(declare-fun e!1052339 () Bool)

(assert (=> b!1640891 (= e!1052339 tp_is_empty!7323)))

(declare-fun b!1640893 () Bool)

(declare-fun tp!475520 () Bool)

(assert (=> b!1640893 (= e!1052339 tp!475520)))

(declare-fun b!1640892 () Bool)

(declare-fun tp!475519 () Bool)

(declare-fun tp!475521 () Bool)

(assert (=> b!1640892 (= e!1052339 (and tp!475519 tp!475521))))

(declare-fun b!1640894 () Bool)

(declare-fun tp!475518 () Bool)

(declare-fun tp!475522 () Bool)

(assert (=> b!1640894 (= e!1052339 (and tp!475518 tp!475522))))

(assert (=> b!1640626 (= tp!475450 e!1052339)))

(assert (= (and b!1640626 (is-ElementMatch!4514 (regex!3186 (h!23477 rules!1846)))) b!1640891))

(assert (= (and b!1640626 (is-Concat!7791 (regex!3186 (h!23477 rules!1846)))) b!1640892))

(assert (= (and b!1640626 (is-Star!4514 (regex!3186 (h!23477 rules!1846)))) b!1640893))

(assert (= (and b!1640626 (is-Union!4514 (regex!3186 (h!23477 rules!1846)))) b!1640894))

(declare-fun b!1640905 () Bool)

(declare-fun b_free!44451 () Bool)

(declare-fun b_next!45155 () Bool)

(assert (=> b!1640905 (= b_free!44451 (not b_next!45155))))

(declare-fun tp!475531 () Bool)

(declare-fun b_and!116325 () Bool)

(assert (=> b!1640905 (= tp!475531 b_and!116325)))

(declare-fun b_free!44453 () Bool)

(declare-fun b_next!45157 () Bool)

(assert (=> b!1640905 (= b_free!44453 (not b_next!45157))))

(declare-fun tb!93937 () Bool)

(declare-fun t!150017 () Bool)

(assert (=> (and b!1640905 (= (toChars!4480 (transformation!3186 (h!23477 (t!149997 rules!1846)))) (toChars!4480 (transformation!3186 (rule!5034 (h!23476 tokens!457))))) t!150017) tb!93937))

(declare-fun result!113400 () Bool)

(assert (= result!113400 result!113378))

(assert (=> b!1640683 t!150017))

(assert (=> d!493914 t!150017))

(declare-fun b_and!116327 () Bool)

(declare-fun tp!475534 () Bool)

(assert (=> b!1640905 (= tp!475534 (and (=> t!150017 result!113400) b_and!116327))))

(declare-fun e!1052348 () Bool)

(assert (=> b!1640905 (= e!1052348 (and tp!475531 tp!475534))))

(declare-fun e!1052350 () Bool)

(declare-fun b!1640904 () Bool)

(declare-fun tp!475532 () Bool)

(assert (=> b!1640904 (= e!1052350 (and tp!475532 (inv!23422 (tag!3466 (h!23477 (t!149997 rules!1846)))) (inv!23425 (transformation!3186 (h!23477 (t!149997 rules!1846)))) e!1052348))))

(declare-fun b!1640903 () Bool)

(declare-fun e!1052349 () Bool)

(declare-fun tp!475533 () Bool)

(assert (=> b!1640903 (= e!1052349 (and e!1052350 tp!475533))))

(assert (=> b!1640632 (= tp!475447 e!1052349)))

(assert (= b!1640904 b!1640905))

(assert (= b!1640903 b!1640904))

(assert (= (and b!1640632 (is-Cons!18076 (t!149997 rules!1846))) b!1640903))

(declare-fun m!1981305 () Bool)

(assert (=> b!1640904 m!1981305))

(declare-fun m!1981307 () Bool)

(assert (=> b!1640904 m!1981307))

(declare-fun b_lambda!51555 () Bool)

(assert (= b_lambda!51549 (or (and b!1640625 b_free!44433 (= (toChars!4480 (transformation!3186 (h!23477 rules!1846))) (toChars!4480 (transformation!3186 (rule!5034 (h!23476 tokens!457)))))) (and b!1640631 b_free!44437) (and b!1640871 b_free!44449 (= (toChars!4480 (transformation!3186 (rule!5034 (h!23476 (t!149996 tokens!457))))) (toChars!4480 (transformation!3186 (rule!5034 (h!23476 tokens!457)))))) (and b!1640905 b_free!44453 (= (toChars!4480 (transformation!3186 (h!23477 (t!149997 rules!1846)))) (toChars!4480 (transformation!3186 (rule!5034 (h!23476 tokens!457)))))) b_lambda!51555)))

(declare-fun b_lambda!51557 () Bool)

(assert (= b_lambda!51553 (or (and b!1640625 b_free!44433 (= (toChars!4480 (transformation!3186 (h!23477 rules!1846))) (toChars!4480 (transformation!3186 (rule!5034 (h!23476 tokens!457)))))) (and b!1640631 b_free!44437) (and b!1640871 b_free!44449 (= (toChars!4480 (transformation!3186 (rule!5034 (h!23476 (t!149996 tokens!457))))) (toChars!4480 (transformation!3186 (rule!5034 (h!23476 tokens!457)))))) (and b!1640905 b_free!44453 (= (toChars!4480 (transformation!3186 (h!23477 (t!149997 rules!1846)))) (toChars!4480 (transformation!3186 (rule!5034 (h!23476 tokens!457)))))) b_lambda!51557)))

(push 1)

(assert (not b!1640868))

(assert (not b!1640814))

(assert (not b!1640856))

(assert (not b!1640728))

(assert (not b!1640890))

(assert (not b!1640904))

(assert (not b_next!45157))

(assert (not b!1640854))

(assert (not b!1640840))

(assert (not d!493862))

(assert (not b_next!45151))

(assert (not d!493906))

(assert (not d!493856))

(assert (not b_next!45135))

(assert (not tb!93927))

(assert (not b!1640804))

(assert (not b!1640892))

(assert (not b!1640870))

(assert (not b!1640791))

(assert (not b_next!45139))

(assert (not b_lambda!51555))

(assert b_and!116321)

(assert (not b!1640828))

(assert (not b!1640894))

(assert (not b!1640869))

(assert (not b!1640857))

(assert (not b_next!45137))

(assert b_and!116293)

(assert b_and!116327)

(assert (not d!493916))

(assert (not d!493848))

(assert (not b!1640903))

(assert tp_is_empty!7323)

(assert (not b!1640855))

(assert (not d!493846))

(assert (not b!1640885))

(assert (not b!1640827))

(assert b_and!116323)

(assert (not d!493864))

(assert (not b!1640729))

(assert (not b_lambda!51557))

(assert b_and!116319)

(assert (not b_next!45141))

(assert (not d!493918))

(assert (not b!1640825))

(assert (not b_next!45153))

(assert (not d!493844))

(assert b_and!116325)

(assert (not b!1640716))

(assert (not b!1640884))

(assert (not b!1640727))

(assert (not b!1640893))

(assert (not b!1640683))

(assert (not d!493922))

(assert (not b_next!45155))

(assert (not b!1640813))

(assert b_and!116317)

(assert (not b!1640689))

(assert (not b!1640883))

(assert (not b!1640839))

(assert (not b!1640684))

(assert (not d!493858))

(assert (not d!493920))

(assert (not d!493914))

(assert (not d!493910))

(assert (not b!1640792))

(assert (not b!1640717))

(assert (not d!493924))

(assert (not d!493928))

(assert (not b!1640853))

(assert (not d!493908))

(assert (not b!1640735))

(assert b_and!116297)

(assert (not d!493912))

(assert (not b!1640732))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!45157))

(assert (not b_next!45139))

(assert b_and!116321)

(assert b_and!116323)

(assert (not b_next!45155))

(assert b_and!116317)

(assert b_and!116297)

(assert (not b_next!45151))

(assert (not b_next!45135))

(assert (not b_next!45137))

(assert b_and!116293)

(assert b_and!116327)

(assert b_and!116319)

(assert (not b_next!45141))

(assert (not b_next!45153))

(assert b_and!116325)

(check-sat)

(pop 1)


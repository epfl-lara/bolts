; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!537172 () Bool)

(assert start!537172)

(declare-fun b!5095514 () Bool)

(declare-fun b_free!133411 () Bool)

(declare-fun b_next!134201 () Bool)

(assert (=> b!5095514 (= b_free!133411 (not b_next!134201))))

(declare-fun tp!1420817 () Bool)

(declare-fun b_and!350295 () Bool)

(assert (=> b!5095514 (= tp!1420817 b_and!350295)))

(declare-fun b_free!133413 () Bool)

(declare-fun b_next!134203 () Bool)

(assert (=> b!5095514 (= b_free!133413 (not b_next!134203))))

(declare-fun tp!1420816 () Bool)

(declare-fun b_and!350297 () Bool)

(assert (=> b!5095514 (= tp!1420816 b_and!350297)))

(declare-fun b!5095506 () Bool)

(declare-fun e!3177868 () Bool)

(declare-fun tp_is_empty!37237 () Bool)

(declare-fun tp!1420814 () Bool)

(assert (=> b!5095506 (= e!3177868 (and tp_is_empty!37237 tp!1420814))))

(declare-fun tp!1420818 () Bool)

(declare-fun e!3177869 () Bool)

(declare-datatypes ((List!58752 0))(
  ( (Nil!58628) (Cons!58628 (h!65076 (_ BitVec 16)) (t!371707 List!58752)) )
))
(declare-datatypes ((TokenValue!8825 0))(
  ( (FloatLiteralValue!17650 (text!62220 List!58752)) (TokenValueExt!8824 (__x!34939 Int)) (Broken!44125 (value!272849 List!58752)) (Object!8948) (End!8825) (Def!8825) (Underscore!8825) (Match!8825) (Else!8825) (Error!8825) (Case!8825) (If!8825) (Extends!8825) (Abstract!8825) (Class!8825) (Val!8825) (DelimiterValue!17650 (del!8885 List!58752)) (KeywordValue!8831 (value!272850 List!58752)) (CommentValue!17650 (value!272851 List!58752)) (WhitespaceValue!17650 (value!272852 List!58752)) (IndentationValue!8825 (value!272853 List!58752)) (String!67048) (Int32!8825) (Broken!44126 (value!272854 List!58752)) (Boolean!8826) (Unit!149669) (OperatorValue!8828 (op!8885 List!58752)) (IdentifierValue!17650 (value!272855 List!58752)) (IdentifierValue!17651 (value!272856 List!58752)) (WhitespaceValue!17651 (value!272857 List!58752)) (True!17650) (False!17650) (Broken!44127 (value!272858 List!58752)) (Broken!44128 (value!272859 List!58752)) (True!17651) (RightBrace!8825) (RightBracket!8825) (Colon!8825) (Null!8825) (Comma!8825) (LeftBracket!8825) (False!17651) (LeftBrace!8825) (ImaginaryLiteralValue!8825 (text!62221 List!58752)) (StringLiteralValue!26475 (value!272860 List!58752)) (EOFValue!8825 (value!272861 List!58752)) (IdentValue!8825 (value!272862 List!58752)) (DelimiterValue!17651 (value!272863 List!58752)) (DedentValue!8825 (value!272864 List!58752)) (NewLineValue!8825 (value!272865 List!58752)) (IntegerValue!26475 (value!272866 (_ BitVec 32)) (text!62222 List!58752)) (IntegerValue!26476 (value!272867 Int) (text!62223 List!58752)) (Times!8825) (Or!8825) (Equal!8825) (Minus!8825) (Broken!44129 (value!272868 List!58752)) (And!8825) (Div!8825) (LessEqual!8825) (Mod!8825) (Concat!22811) (Not!8825) (Plus!8825) (SpaceValue!8825 (value!272869 List!58752)) (IntegerValue!26477 (value!272870 Int) (text!62224 List!58752)) (StringLiteralValue!26476 (text!62225 List!58752)) (FloatLiteralValue!17651 (text!62226 List!58752)) (BytesLiteralValue!8825 (value!272871 List!58752)) (CommentValue!17651 (value!272872 List!58752)) (StringLiteralValue!26477 (value!272873 List!58752)) (ErrorTokenValue!8825 (msg!8886 List!58752)) )
))
(declare-datatypes ((C!28230 0))(
  ( (C!28231 (val!23767 Int)) )
))
(declare-datatypes ((List!58753 0))(
  ( (Nil!58629) (Cons!58629 (h!65077 C!28230) (t!371708 List!58753)) )
))
(declare-datatypes ((IArray!31427 0))(
  ( (IArray!31428 (innerList!15771 List!58753)) )
))
(declare-datatypes ((Conc!15683 0))(
  ( (Node!15683 (left!43045 Conc!15683) (right!43375 Conc!15683) (csize!31596 Int) (cheight!15894 Int)) (Leaf!26030 (xs!19065 IArray!31427) (csize!31597 Int)) (Empty!15683) )
))
(declare-datatypes ((BalanceConc!30484 0))(
  ( (BalanceConc!30485 (c!875581 Conc!15683)) )
))
(declare-datatypes ((String!67049 0))(
  ( (String!67050 (value!272874 String)) )
))
(declare-datatypes ((TokenValueInjection!16958 0))(
  ( (TokenValueInjection!16959 (toValue!11534 Int) (toChars!11393 Int)) )
))
(declare-datatypes ((Regex!13986 0))(
  ( (ElementMatch!13986 (c!875582 C!28230)) (Concat!22812 (regOne!28484 Regex!13986) (regTwo!28484 Regex!13986)) (EmptyExpr!13986) (Star!13986 (reg!14315 Regex!13986)) (EmptyLang!13986) (Union!13986 (regOne!28485 Regex!13986) (regTwo!28485 Regex!13986)) )
))
(declare-datatypes ((Rule!16822 0))(
  ( (Rule!16823 (regex!8511 Regex!13986) (tag!9375 String!67049) (isSeparator!8511 Bool) (transformation!8511 TokenValueInjection!16958)) )
))
(declare-datatypes ((List!58754 0))(
  ( (Nil!58630) (Cons!58630 (h!65078 Rule!16822) (t!371709 List!58754)) )
))
(declare-fun rulesArg!145 () List!58754)

(declare-fun b!5095507 () Bool)

(declare-fun e!3177874 () Bool)

(declare-fun inv!78120 (String!67049) Bool)

(declare-fun inv!78123 (TokenValueInjection!16958) Bool)

(assert (=> b!5095507 (= e!3177869 (and tp!1420818 (inv!78120 (tag!9375 (h!65078 rulesArg!145))) (inv!78123 (transformation!8511 (h!65078 rulesArg!145))) e!3177874))))

(declare-fun b!5095508 () Bool)

(declare-fun e!3177873 () Bool)

(declare-fun e!3177871 () Bool)

(assert (=> b!5095508 (= e!3177873 (not e!3177871))))

(declare-fun res!2168608 () Bool)

(assert (=> b!5095508 (=> res!2168608 e!3177871)))

(assert (=> b!5095508 (= res!2168608 (or (and (is-Cons!58630 rulesArg!145) (is-Nil!58630 (t!371709 rulesArg!145))) (not (is-Cons!58630 rulesArg!145))))))

(declare-fun input!1210 () List!58753)

(declare-fun isPrefix!5407 (List!58753 List!58753) Bool)

(assert (=> b!5095508 (isPrefix!5407 input!1210 input!1210)))

(declare-datatypes ((Unit!149670 0))(
  ( (Unit!149671) )
))
(declare-fun lt!2093641 () Unit!149670)

(declare-fun lemmaIsPrefixRefl!3666 (List!58753 List!58753) Unit!149670)

(assert (=> b!5095508 (= lt!2093641 (lemmaIsPrefixRefl!3666 input!1210 input!1210))))

(declare-fun b!5095509 () Bool)

(declare-fun e!3177872 () Bool)

(declare-fun tp!1420815 () Bool)

(assert (=> b!5095509 (= e!3177872 (and e!3177869 tp!1420815))))

(declare-fun b!5095510 () Bool)

(declare-fun e!3177867 () Bool)

(assert (=> b!5095510 (= e!3177871 e!3177867)))

(declare-fun res!2168611 () Bool)

(assert (=> b!5095510 (=> res!2168611 e!3177867)))

(declare-datatypes ((Token!15462 0))(
  ( (Token!15463 (value!272875 TokenValue!8825) (rule!11793 Rule!16822) (size!39284 Int) (originalCharacters!8762 List!58753)) )
))
(declare-datatypes ((tuple2!63356 0))(
  ( (tuple2!63357 (_1!34981 Token!15462) (_2!34981 List!58753)) )
))
(declare-datatypes ((Option!14640 0))(
  ( (None!14639) (Some!14639 (v!50652 tuple2!63356)) )
))
(declare-fun lt!2093643 () Option!14640)

(declare-fun lt!2093642 () Option!14640)

(assert (=> b!5095510 (= res!2168611 (or (and (is-None!14639 lt!2093643) (is-None!14639 lt!2093642)) (is-None!14639 lt!2093642) (is-None!14639 lt!2093643) (>= (size!39284 (_1!34981 (v!50652 lt!2093643))) (size!39284 (_1!34981 (v!50652 lt!2093642))))))))

(declare-datatypes ((LexerInterface!8103 0))(
  ( (LexerInterfaceExt!8100 (__x!34940 Int)) (Lexer!8101) )
))
(declare-fun thiss!14775 () LexerInterface!8103)

(declare-fun maxPrefixZipper!806 (LexerInterface!8103 List!58754 List!58753) Option!14640)

(assert (=> b!5095510 (= lt!2093642 (maxPrefixZipper!806 thiss!14775 (t!371709 rulesArg!145) input!1210))))

(declare-fun maxPrefixOneRuleZipper!327 (LexerInterface!8103 Rule!16822 List!58753) Option!14640)

(assert (=> b!5095510 (= lt!2093643 (maxPrefixOneRuleZipper!327 thiss!14775 (h!65078 rulesArg!145) input!1210))))

(declare-fun res!2168612 () Bool)

(assert (=> start!537172 (=> (not res!2168612) (not e!3177873))))

(assert (=> start!537172 (= res!2168612 (is-Lexer!8101 thiss!14775))))

(assert (=> start!537172 e!3177873))

(assert (=> start!537172 true))

(assert (=> start!537172 e!3177872))

(assert (=> start!537172 e!3177868))

(declare-fun b!5095511 () Bool)

(declare-fun res!2168609 () Bool)

(assert (=> b!5095511 (=> (not res!2168609) (not e!3177873))))

(declare-fun rulesValidInductive!3336 (LexerInterface!8103 List!58754) Bool)

(assert (=> b!5095511 (= res!2168609 (rulesValidInductive!3336 thiss!14775 rulesArg!145))))

(declare-fun b!5095512 () Bool)

(declare-fun maxPrefix!4680 (LexerInterface!8103 List!58754 List!58753) Option!14640)

(assert (=> b!5095512 (= e!3177867 (= lt!2093642 (maxPrefix!4680 thiss!14775 rulesArg!145 input!1210)))))

(declare-fun b!5095513 () Bool)

(declare-fun res!2168610 () Bool)

(assert (=> b!5095513 (=> (not res!2168610) (not e!3177873))))

(declare-fun isEmpty!31736 (List!58754) Bool)

(assert (=> b!5095513 (= res!2168610 (not (isEmpty!31736 rulesArg!145)))))

(assert (=> b!5095514 (= e!3177874 (and tp!1420817 tp!1420816))))

(assert (= (and start!537172 res!2168612) b!5095511))

(assert (= (and b!5095511 res!2168609) b!5095513))

(assert (= (and b!5095513 res!2168610) b!5095508))

(assert (= (and b!5095508 (not res!2168608)) b!5095510))

(assert (= (and b!5095510 (not res!2168611)) b!5095512))

(assert (= b!5095507 b!5095514))

(assert (= b!5095509 b!5095507))

(assert (= (and start!537172 (is-Cons!58630 rulesArg!145)) b!5095509))

(assert (= (and start!537172 (is-Cons!58629 input!1210)) b!5095506))

(declare-fun m!6153036 () Bool)

(assert (=> b!5095510 m!6153036))

(declare-fun m!6153038 () Bool)

(assert (=> b!5095510 m!6153038))

(declare-fun m!6153040 () Bool)

(assert (=> b!5095511 m!6153040))

(declare-fun m!6153042 () Bool)

(assert (=> b!5095512 m!6153042))

(declare-fun m!6153044 () Bool)

(assert (=> b!5095507 m!6153044))

(declare-fun m!6153046 () Bool)

(assert (=> b!5095507 m!6153046))

(declare-fun m!6153048 () Bool)

(assert (=> b!5095508 m!6153048))

(declare-fun m!6153050 () Bool)

(assert (=> b!5095508 m!6153050))

(declare-fun m!6153052 () Bool)

(assert (=> b!5095513 m!6153052))

(push 1)

(assert (not b!5095513))

(assert (not b!5095511))

(assert (not b!5095508))

(assert (not b_next!134203))

(assert tp_is_empty!37237)

(assert (not b!5095506))

(assert b_and!350295)

(assert b_and!350297)

(assert (not b!5095507))

(assert (not b!5095509))

(assert (not b!5095510))

(assert (not b_next!134201))

(assert (not b!5095512))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350297)

(assert b_and!350295)

(assert (not b_next!134201))

(assert (not b_next!134203))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1648997 () Bool)

(assert (=> d!1648997 true))

(declare-fun lt!2093663 () Bool)

(declare-fun lambda!249883 () Int)

(declare-fun forall!13478 (List!58754 Int) Bool)

(assert (=> d!1648997 (= lt!2093663 (forall!13478 rulesArg!145 lambda!249883))))

(declare-fun e!3177916 () Bool)

(assert (=> d!1648997 (= lt!2093663 e!3177916)))

(declare-fun res!2168660 () Bool)

(assert (=> d!1648997 (=> res!2168660 e!3177916)))

(assert (=> d!1648997 (= res!2168660 (not (is-Cons!58630 rulesArg!145)))))

(assert (=> d!1648997 (= (rulesValidInductive!3336 thiss!14775 rulesArg!145) lt!2093663)))

(declare-fun b!5095562 () Bool)

(declare-fun e!3177917 () Bool)

(assert (=> b!5095562 (= e!3177916 e!3177917)))

(declare-fun res!2168659 () Bool)

(assert (=> b!5095562 (=> (not res!2168659) (not e!3177917))))

(declare-fun ruleValid!3905 (LexerInterface!8103 Rule!16822) Bool)

(assert (=> b!5095562 (= res!2168659 (ruleValid!3905 thiss!14775 (h!65078 rulesArg!145)))))

(declare-fun b!5095563 () Bool)

(assert (=> b!5095563 (= e!3177917 (rulesValidInductive!3336 thiss!14775 (t!371709 rulesArg!145)))))

(assert (= (and d!1648997 (not res!2168660)) b!5095562))

(assert (= (and b!5095562 res!2168659) b!5095563))

(declare-fun m!6153082 () Bool)

(assert (=> d!1648997 m!6153082))

(declare-fun m!6153084 () Bool)

(assert (=> b!5095562 m!6153084))

(declare-fun m!6153086 () Bool)

(assert (=> b!5095563 m!6153086))

(assert (=> b!5095511 d!1648997))

(declare-fun d!1649007 () Bool)

(assert (=> d!1649007 (= (inv!78120 (tag!9375 (h!65078 rulesArg!145))) (= (mod (str.len (value!272874 (tag!9375 (h!65078 rulesArg!145)))) 2) 0))))

(assert (=> b!5095507 d!1649007))

(declare-fun d!1649009 () Bool)

(declare-fun res!2168663 () Bool)

(declare-fun e!3177920 () Bool)

(assert (=> d!1649009 (=> (not res!2168663) (not e!3177920))))

(declare-fun semiInverseModEq!3791 (Int Int) Bool)

(assert (=> d!1649009 (= res!2168663 (semiInverseModEq!3791 (toChars!11393 (transformation!8511 (h!65078 rulesArg!145))) (toValue!11534 (transformation!8511 (h!65078 rulesArg!145)))))))

(assert (=> d!1649009 (= (inv!78123 (transformation!8511 (h!65078 rulesArg!145))) e!3177920)))

(declare-fun b!5095568 () Bool)

(declare-fun equivClasses!3606 (Int Int) Bool)

(assert (=> b!5095568 (= e!3177920 (equivClasses!3606 (toChars!11393 (transformation!8511 (h!65078 rulesArg!145))) (toValue!11534 (transformation!8511 (h!65078 rulesArg!145)))))))

(assert (= (and d!1649009 res!2168663) b!5095568))

(declare-fun m!6153088 () Bool)

(assert (=> d!1649009 m!6153088))

(declare-fun m!6153090 () Bool)

(assert (=> b!5095568 m!6153090))

(assert (=> b!5095507 d!1649009))

(declare-fun d!1649011 () Bool)

(declare-fun e!3177928 () Bool)

(assert (=> d!1649011 e!3177928))

(declare-fun res!2168679 () Bool)

(assert (=> d!1649011 (=> res!2168679 e!3177928)))

(declare-fun lt!2093677 () Option!14640)

(declare-fun isEmpty!31738 (Option!14640) Bool)

(assert (=> d!1649011 (= res!2168679 (isEmpty!31738 lt!2093677))))

(declare-fun e!3177929 () Option!14640)

(assert (=> d!1649011 (= lt!2093677 e!3177929)))

(declare-fun c!875588 () Bool)

(assert (=> d!1649011 (= c!875588 (and (is-Cons!58630 rulesArg!145) (is-Nil!58630 (t!371709 rulesArg!145))))))

(declare-fun lt!2093678 () Unit!149670)

(declare-fun lt!2093676 () Unit!149670)

(assert (=> d!1649011 (= lt!2093678 lt!2093676)))

(assert (=> d!1649011 (isPrefix!5407 input!1210 input!1210)))

(assert (=> d!1649011 (= lt!2093676 (lemmaIsPrefixRefl!3666 input!1210 input!1210))))

(assert (=> d!1649011 (rulesValidInductive!3336 thiss!14775 rulesArg!145)))

(assert (=> d!1649011 (= (maxPrefix!4680 thiss!14775 rulesArg!145 input!1210) lt!2093677)))

(declare-fun b!5095587 () Bool)

(declare-fun res!2168678 () Bool)

(declare-fun e!3177927 () Bool)

(assert (=> b!5095587 (=> (not res!2168678) (not e!3177927))))

(declare-fun list!19143 (BalanceConc!30484) List!58753)

(declare-fun charsOf!5477 (Token!15462) BalanceConc!30484)

(declare-fun get!20352 (Option!14640) tuple2!63356)

(assert (=> b!5095587 (= res!2168678 (= (list!19143 (charsOf!5477 (_1!34981 (get!20352 lt!2093677)))) (originalCharacters!8762 (_1!34981 (get!20352 lt!2093677)))))))

(declare-fun bm!354777 () Bool)

(declare-fun call!354782 () Option!14640)

(declare-fun maxPrefixOneRule!3705 (LexerInterface!8103 Rule!16822 List!58753) Option!14640)

(assert (=> bm!354777 (= call!354782 (maxPrefixOneRule!3705 thiss!14775 (h!65078 rulesArg!145) input!1210))))

(declare-fun b!5095588 () Bool)

(declare-fun res!2168683 () Bool)

(assert (=> b!5095588 (=> (not res!2168683) (not e!3177927))))

(declare-fun apply!14294 (TokenValueInjection!16958 BalanceConc!30484) TokenValue!8825)

(declare-fun seqFromList!6112 (List!58753) BalanceConc!30484)

(assert (=> b!5095588 (= res!2168683 (= (value!272875 (_1!34981 (get!20352 lt!2093677))) (apply!14294 (transformation!8511 (rule!11793 (_1!34981 (get!20352 lt!2093677)))) (seqFromList!6112 (originalCharacters!8762 (_1!34981 (get!20352 lt!2093677)))))))))

(declare-fun b!5095589 () Bool)

(declare-fun res!2168684 () Bool)

(assert (=> b!5095589 (=> (not res!2168684) (not e!3177927))))

(declare-fun matchR!6794 (Regex!13986 List!58753) Bool)

(assert (=> b!5095589 (= res!2168684 (matchR!6794 (regex!8511 (rule!11793 (_1!34981 (get!20352 lt!2093677)))) (list!19143 (charsOf!5477 (_1!34981 (get!20352 lt!2093677))))))))

(declare-fun b!5095590 () Bool)

(declare-fun contains!19604 (List!58754 Rule!16822) Bool)

(assert (=> b!5095590 (= e!3177927 (contains!19604 rulesArg!145 (rule!11793 (_1!34981 (get!20352 lt!2093677)))))))

(declare-fun b!5095591 () Bool)

(assert (=> b!5095591 (= e!3177929 call!354782)))

(declare-fun b!5095592 () Bool)

(declare-fun lt!2093674 () Option!14640)

(declare-fun lt!2093675 () Option!14640)

(assert (=> b!5095592 (= e!3177929 (ite (and (is-None!14639 lt!2093674) (is-None!14639 lt!2093675)) None!14639 (ite (is-None!14639 lt!2093675) lt!2093674 (ite (is-None!14639 lt!2093674) lt!2093675 (ite (>= (size!39284 (_1!34981 (v!50652 lt!2093674))) (size!39284 (_1!34981 (v!50652 lt!2093675)))) lt!2093674 lt!2093675)))))))

(assert (=> b!5095592 (= lt!2093674 call!354782)))

(assert (=> b!5095592 (= lt!2093675 (maxPrefix!4680 thiss!14775 (t!371709 rulesArg!145) input!1210))))

(declare-fun b!5095593 () Bool)

(declare-fun res!2168682 () Bool)

(assert (=> b!5095593 (=> (not res!2168682) (not e!3177927))))

(declare-fun size!39286 (List!58753) Int)

(assert (=> b!5095593 (= res!2168682 (< (size!39286 (_2!34981 (get!20352 lt!2093677))) (size!39286 input!1210)))))

(declare-fun b!5095594 () Bool)

(assert (=> b!5095594 (= e!3177928 e!3177927)))

(declare-fun res!2168680 () Bool)

(assert (=> b!5095594 (=> (not res!2168680) (not e!3177927))))

(declare-fun isDefined!11503 (Option!14640) Bool)

(assert (=> b!5095594 (= res!2168680 (isDefined!11503 lt!2093677))))

(declare-fun b!5095595 () Bool)

(declare-fun res!2168681 () Bool)

(assert (=> b!5095595 (=> (not res!2168681) (not e!3177927))))

(declare-fun ++!12854 (List!58753 List!58753) List!58753)

(assert (=> b!5095595 (= res!2168681 (= (++!12854 (list!19143 (charsOf!5477 (_1!34981 (get!20352 lt!2093677)))) (_2!34981 (get!20352 lt!2093677))) input!1210))))

(assert (= (and d!1649011 c!875588) b!5095591))

(assert (= (and d!1649011 (not c!875588)) b!5095592))

(assert (= (or b!5095591 b!5095592) bm!354777))

(assert (= (and d!1649011 (not res!2168679)) b!5095594))

(assert (= (and b!5095594 res!2168680) b!5095587))

(assert (= (and b!5095587 res!2168678) b!5095593))

(assert (= (and b!5095593 res!2168682) b!5095595))

(assert (= (and b!5095595 res!2168681) b!5095588))

(assert (= (and b!5095588 res!2168683) b!5095589))

(assert (= (and b!5095589 res!2168684) b!5095590))

(declare-fun m!6153092 () Bool)

(assert (=> b!5095589 m!6153092))

(declare-fun m!6153094 () Bool)

(assert (=> b!5095589 m!6153094))

(assert (=> b!5095589 m!6153094))

(declare-fun m!6153096 () Bool)

(assert (=> b!5095589 m!6153096))

(assert (=> b!5095589 m!6153096))

(declare-fun m!6153098 () Bool)

(assert (=> b!5095589 m!6153098))

(declare-fun m!6153100 () Bool)

(assert (=> b!5095592 m!6153100))

(assert (=> b!5095595 m!6153092))

(assert (=> b!5095595 m!6153094))

(assert (=> b!5095595 m!6153094))

(assert (=> b!5095595 m!6153096))

(assert (=> b!5095595 m!6153096))

(declare-fun m!6153102 () Bool)

(assert (=> b!5095595 m!6153102))

(assert (=> b!5095593 m!6153092))

(declare-fun m!6153104 () Bool)

(assert (=> b!5095593 m!6153104))

(declare-fun m!6153106 () Bool)

(assert (=> b!5095593 m!6153106))

(declare-fun m!6153108 () Bool)

(assert (=> bm!354777 m!6153108))

(assert (=> b!5095587 m!6153092))

(assert (=> b!5095587 m!6153094))

(assert (=> b!5095587 m!6153094))

(assert (=> b!5095587 m!6153096))

(declare-fun m!6153110 () Bool)

(assert (=> b!5095594 m!6153110))

(assert (=> b!5095588 m!6153092))

(declare-fun m!6153112 () Bool)

(assert (=> b!5095588 m!6153112))

(assert (=> b!5095588 m!6153112))

(declare-fun m!6153114 () Bool)

(assert (=> b!5095588 m!6153114))

(declare-fun m!6153116 () Bool)

(assert (=> d!1649011 m!6153116))

(assert (=> d!1649011 m!6153048))

(assert (=> d!1649011 m!6153050))

(assert (=> d!1649011 m!6153040))

(assert (=> b!5095590 m!6153092))

(declare-fun m!6153118 () Bool)

(assert (=> b!5095590 m!6153118))

(assert (=> b!5095512 d!1649011))

(declare-fun b!5095605 () Bool)

(declare-fun res!2168693 () Bool)

(declare-fun e!3177936 () Bool)

(assert (=> b!5095605 (=> (not res!2168693) (not e!3177936))))

(declare-fun head!10822 (List!58753) C!28230)

(assert (=> b!5095605 (= res!2168693 (= (head!10822 input!1210) (head!10822 input!1210)))))

(declare-fun b!5095606 () Bool)

(declare-fun tail!9977 (List!58753) List!58753)

(assert (=> b!5095606 (= e!3177936 (isPrefix!5407 (tail!9977 input!1210) (tail!9977 input!1210)))))

(declare-fun b!5095607 () Bool)

(declare-fun e!3177937 () Bool)

(assert (=> b!5095607 (= e!3177937 (>= (size!39286 input!1210) (size!39286 input!1210)))))

(declare-fun b!5095604 () Bool)

(declare-fun e!3177938 () Bool)

(assert (=> b!5095604 (= e!3177938 e!3177936)))

(declare-fun res!2168694 () Bool)

(assert (=> b!5095604 (=> (not res!2168694) (not e!3177936))))

(assert (=> b!5095604 (= res!2168694 (not (is-Nil!58629 input!1210)))))

(declare-fun d!1649013 () Bool)

(assert (=> d!1649013 e!3177937))

(declare-fun res!2168695 () Bool)

(assert (=> d!1649013 (=> res!2168695 e!3177937)))

(declare-fun lt!2093681 () Bool)

(assert (=> d!1649013 (= res!2168695 (not lt!2093681))))

(assert (=> d!1649013 (= lt!2093681 e!3177938)))

(declare-fun res!2168696 () Bool)

(assert (=> d!1649013 (=> res!2168696 e!3177938)))

(assert (=> d!1649013 (= res!2168696 (is-Nil!58629 input!1210))))

(assert (=> d!1649013 (= (isPrefix!5407 input!1210 input!1210) lt!2093681)))

(assert (= (and d!1649013 (not res!2168696)) b!5095604))

(assert (= (and b!5095604 res!2168694) b!5095605))

(assert (= (and b!5095605 res!2168693) b!5095606))

(assert (= (and d!1649013 (not res!2168695)) b!5095607))

(declare-fun m!6153120 () Bool)

(assert (=> b!5095605 m!6153120))

(assert (=> b!5095605 m!6153120))

(declare-fun m!6153122 () Bool)

(assert (=> b!5095606 m!6153122))

(assert (=> b!5095606 m!6153122))

(assert (=> b!5095606 m!6153122))

(assert (=> b!5095606 m!6153122))

(declare-fun m!6153124 () Bool)

(assert (=> b!5095606 m!6153124))

(assert (=> b!5095607 m!6153106))

(assert (=> b!5095607 m!6153106))

(assert (=> b!5095508 d!1649013))

(declare-fun d!1649015 () Bool)

(assert (=> d!1649015 (isPrefix!5407 input!1210 input!1210)))

(declare-fun lt!2093684 () Unit!149670)

(declare-fun choose!37309 (List!58753 List!58753) Unit!149670)

(assert (=> d!1649015 (= lt!2093684 (choose!37309 input!1210 input!1210))))

(assert (=> d!1649015 (= (lemmaIsPrefixRefl!3666 input!1210 input!1210) lt!2093684)))

(declare-fun bs!1191318 () Bool)

(assert (= bs!1191318 d!1649015))

(assert (=> bs!1191318 m!6153048))

(declare-fun m!6153126 () Bool)

(assert (=> bs!1191318 m!6153126))

(assert (=> b!5095508 d!1649015))

(declare-fun d!1649017 () Bool)

(assert (=> d!1649017 (= (isEmpty!31736 rulesArg!145) (is-Nil!58630 rulesArg!145))))

(assert (=> b!5095513 d!1649017))

(declare-fun d!1649019 () Bool)

(declare-fun lt!2093696 () Option!14640)

(assert (=> d!1649019 (= lt!2093696 (maxPrefix!4680 thiss!14775 (t!371709 rulesArg!145) input!1210))))

(declare-fun e!3177941 () Option!14640)

(assert (=> d!1649019 (= lt!2093696 e!3177941)))

(declare-fun c!875591 () Bool)

(assert (=> d!1649019 (= c!875591 (and (is-Cons!58630 (t!371709 rulesArg!145)) (is-Nil!58630 (t!371709 (t!371709 rulesArg!145)))))))

(declare-fun lt!2093695 () Unit!149670)

(declare-fun lt!2093697 () Unit!149670)

(assert (=> d!1649019 (= lt!2093695 lt!2093697)))

(assert (=> d!1649019 (isPrefix!5407 input!1210 input!1210)))

(assert (=> d!1649019 (= lt!2093697 (lemmaIsPrefixRefl!3666 input!1210 input!1210))))

(assert (=> d!1649019 (rulesValidInductive!3336 thiss!14775 (t!371709 rulesArg!145))))

(assert (=> d!1649019 (= (maxPrefixZipper!806 thiss!14775 (t!371709 rulesArg!145) input!1210) lt!2093696)))

(declare-fun call!354785 () Option!14640)

(declare-fun bm!354780 () Bool)

(assert (=> bm!354780 (= call!354785 (maxPrefixOneRuleZipper!327 thiss!14775 (h!65078 (t!371709 rulesArg!145)) input!1210))))

(declare-fun b!5095612 () Bool)

(assert (=> b!5095612 (= e!3177941 call!354785)))

(declare-fun b!5095613 () Bool)

(declare-fun lt!2093699 () Option!14640)

(declare-fun lt!2093698 () Option!14640)

(assert (=> b!5095613 (= e!3177941 (ite (and (is-None!14639 lt!2093699) (is-None!14639 lt!2093698)) None!14639 (ite (is-None!14639 lt!2093698) lt!2093699 (ite (is-None!14639 lt!2093699) lt!2093698 (ite (>= (size!39284 (_1!34981 (v!50652 lt!2093699))) (size!39284 (_1!34981 (v!50652 lt!2093698)))) lt!2093699 lt!2093698)))))))

(assert (=> b!5095613 (= lt!2093699 call!354785)))

(assert (=> b!5095613 (= lt!2093698 (maxPrefixZipper!806 thiss!14775 (t!371709 (t!371709 rulesArg!145)) input!1210))))

(assert (= (and d!1649019 c!875591) b!5095612))

(assert (= (and d!1649019 (not c!875591)) b!5095613))

(assert (= (or b!5095612 b!5095613) bm!354780))

(assert (=> d!1649019 m!6153100))

(assert (=> d!1649019 m!6153048))

(assert (=> d!1649019 m!6153050))

(assert (=> d!1649019 m!6153086))

(declare-fun m!6153128 () Bool)

(assert (=> bm!354780 m!6153128))

(declare-fun m!6153130 () Bool)

(assert (=> b!5095613 m!6153130))

(assert (=> b!5095510 d!1649019))

(declare-fun d!1649021 () Bool)

(declare-fun lt!2093729 () Option!14640)

(assert (=> d!1649021 (= lt!2093729 (maxPrefixOneRule!3705 thiss!14775 (h!65078 rulesArg!145) input!1210))))

(declare-fun e!3177951 () Option!14640)

(assert (=> d!1649021 (= lt!2093729 e!3177951)))

(declare-fun c!875597 () Bool)

(declare-datatypes ((tuple2!63360 0))(
  ( (tuple2!63361 (_1!34983 List!58753) (_2!34983 List!58753)) )
))
(declare-fun lt!2093728 () tuple2!63360)

(declare-fun isEmpty!31739 (List!58753) Bool)

(assert (=> d!1649021 (= c!875597 (isEmpty!31739 (_1!34983 lt!2093728)))))

(declare-fun findLongestMatchWithZipper!111 (Regex!13986 List!58753) tuple2!63360)

(assert (=> d!1649021 (= lt!2093728 (findLongestMatchWithZipper!111 (regex!8511 (h!65078 rulesArg!145)) input!1210))))

(assert (=> d!1649021 (ruleValid!3905 thiss!14775 (h!65078 rulesArg!145))))

(assert (=> d!1649021 (= (maxPrefixOneRuleZipper!327 thiss!14775 (h!65078 rulesArg!145) input!1210) lt!2093729)))

(declare-fun b!5095630 () Bool)

(assert (=> b!5095630 (= e!3177951 None!14639)))

(declare-fun b!5095631 () Bool)

(assert (=> b!5095631 (= e!3177951 (Some!14639 (tuple2!63357 (Token!15463 (apply!14294 (transformation!8511 (h!65078 rulesArg!145)) (seqFromList!6112 (_1!34983 lt!2093728))) (h!65078 rulesArg!145) (size!39286 (_1!34983 lt!2093728)) (_1!34983 lt!2093728)) (_2!34983 lt!2093728))))))

(declare-fun lt!2093732 () Unit!149670)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1972 (Regex!13986 List!58753) Unit!149670)

(assert (=> b!5095631 (= lt!2093732 (longestMatchIsAcceptedByMatchOrIsEmpty!1972 (regex!8511 (h!65078 rulesArg!145)) input!1210))))

(declare-fun res!2168701 () Bool)

(declare-fun findLongestMatchInner!2019 (Regex!13986 List!58753 Int List!58753 List!58753 Int) tuple2!63360)

(assert (=> b!5095631 (= res!2168701 (isEmpty!31739 (_1!34983 (findLongestMatchInner!2019 (regex!8511 (h!65078 rulesArg!145)) Nil!58629 (size!39286 Nil!58629) input!1210 input!1210 (size!39286 input!1210)))))))

(declare-fun e!3177952 () Bool)

(assert (=> b!5095631 (=> res!2168701 e!3177952)))

(assert (=> b!5095631 e!3177952))

(declare-fun lt!2093733 () Unit!149670)

(assert (=> b!5095631 (= lt!2093733 lt!2093732)))

(declare-fun lt!2093730 () Unit!149670)

(declare-fun lemmaInv!1412 (TokenValueInjection!16958) Unit!149670)

(assert (=> b!5095631 (= lt!2093730 (lemmaInv!1412 (transformation!8511 (h!65078 rulesArg!145))))))

(declare-fun lt!2093731 () Unit!149670)

(declare-fun lemmaSemiInverse!2645 (TokenValueInjection!16958 BalanceConc!30484) Unit!149670)

(assert (=> b!5095631 (= lt!2093731 (lemmaSemiInverse!2645 (transformation!8511 (h!65078 rulesArg!145)) (seqFromList!6112 (_1!34983 lt!2093728))))))

(declare-fun b!5095632 () Bool)

(assert (=> b!5095632 (= e!3177952 (matchR!6794 (regex!8511 (h!65078 rulesArg!145)) (_1!34983 (findLongestMatchInner!2019 (regex!8511 (h!65078 rulesArg!145)) Nil!58629 (size!39286 Nil!58629) input!1210 input!1210 (size!39286 input!1210)))))))

(assert (= (and d!1649021 c!875597) b!5095630))

(assert (= (and d!1649021 (not c!875597)) b!5095631))

(assert (= (and b!5095631 (not res!2168701)) b!5095632))

(assert (=> d!1649021 m!6153108))

(declare-fun m!6153144 () Bool)

(assert (=> d!1649021 m!6153144))

(declare-fun m!6153146 () Bool)

(assert (=> d!1649021 m!6153146))

(assert (=> d!1649021 m!6153084))

(declare-fun m!6153148 () Bool)

(assert (=> b!5095631 m!6153148))

(declare-fun m!6153150 () Bool)

(assert (=> b!5095631 m!6153150))

(declare-fun m!6153152 () Bool)

(assert (=> b!5095631 m!6153152))

(declare-fun m!6153154 () Bool)

(assert (=> b!5095631 m!6153154))

(declare-fun m!6153156 () Bool)

(assert (=> b!5095631 m!6153156))

(assert (=> b!5095631 m!6153150))

(assert (=> b!5095631 m!6153106))

(declare-fun m!6153158 () Bool)

(assert (=> b!5095631 m!6153158))

(assert (=> b!5095631 m!6153148))

(declare-fun m!6153160 () Bool)

(assert (=> b!5095631 m!6153160))

(assert (=> b!5095631 m!6153148))

(declare-fun m!6153162 () Bool)

(assert (=> b!5095631 m!6153162))

(declare-fun m!6153164 () Bool)

(assert (=> b!5095631 m!6153164))

(assert (=> b!5095631 m!6153106))

(assert (=> b!5095632 m!6153150))

(assert (=> b!5095632 m!6153106))

(assert (=> b!5095632 m!6153150))

(assert (=> b!5095632 m!6153106))

(assert (=> b!5095632 m!6153158))

(declare-fun m!6153166 () Bool)

(assert (=> b!5095632 m!6153166))

(assert (=> b!5095510 d!1649021))

(declare-fun b!5095637 () Bool)

(declare-fun e!3177955 () Bool)

(declare-fun tp!1420836 () Bool)

(assert (=> b!5095637 (= e!3177955 (and tp_is_empty!37237 tp!1420836))))

(assert (=> b!5095506 (= tp!1420814 e!3177955)))

(assert (= (and b!5095506 (is-Cons!58629 (t!371708 input!1210))) b!5095637))

(declare-fun b!5095650 () Bool)

(declare-fun e!3177958 () Bool)

(declare-fun tp!1420850 () Bool)

(assert (=> b!5095650 (= e!3177958 tp!1420850)))

(declare-fun b!5095651 () Bool)

(declare-fun tp!1420851 () Bool)

(declare-fun tp!1420849 () Bool)

(assert (=> b!5095651 (= e!3177958 (and tp!1420851 tp!1420849))))

(declare-fun b!5095648 () Bool)

(assert (=> b!5095648 (= e!3177958 tp_is_empty!37237)))

(declare-fun b!5095649 () Bool)

(declare-fun tp!1420848 () Bool)

(declare-fun tp!1420847 () Bool)

(assert (=> b!5095649 (= e!3177958 (and tp!1420848 tp!1420847))))

(assert (=> b!5095507 (= tp!1420818 e!3177958)))

(assert (= (and b!5095507 (is-ElementMatch!13986 (regex!8511 (h!65078 rulesArg!145)))) b!5095648))

(assert (= (and b!5095507 (is-Concat!22812 (regex!8511 (h!65078 rulesArg!145)))) b!5095649))

(assert (= (and b!5095507 (is-Star!13986 (regex!8511 (h!65078 rulesArg!145)))) b!5095650))

(assert (= (and b!5095507 (is-Union!13986 (regex!8511 (h!65078 rulesArg!145)))) b!5095651))

(declare-fun b!5095662 () Bool)

(declare-fun b_free!133419 () Bool)

(declare-fun b_next!134209 () Bool)

(assert (=> b!5095662 (= b_free!133419 (not b_next!134209))))

(declare-fun tp!1420862 () Bool)

(declare-fun b_and!350303 () Bool)

(assert (=> b!5095662 (= tp!1420862 b_and!350303)))

(declare-fun b_free!133421 () Bool)

(declare-fun b_next!134211 () Bool)

(assert (=> b!5095662 (= b_free!133421 (not b_next!134211))))

(declare-fun tp!1420860 () Bool)

(declare-fun b_and!350305 () Bool)

(assert (=> b!5095662 (= tp!1420860 b_and!350305)))

(declare-fun e!3177967 () Bool)

(assert (=> b!5095662 (= e!3177967 (and tp!1420862 tp!1420860))))

(declare-fun e!3177969 () Bool)

(declare-fun b!5095661 () Bool)

(declare-fun tp!1420863 () Bool)

(assert (=> b!5095661 (= e!3177969 (and tp!1420863 (inv!78120 (tag!9375 (h!65078 (t!371709 rulesArg!145)))) (inv!78123 (transformation!8511 (h!65078 (t!371709 rulesArg!145)))) e!3177967))))

(declare-fun b!5095660 () Bool)

(declare-fun e!3177968 () Bool)

(declare-fun tp!1420861 () Bool)

(assert (=> b!5095660 (= e!3177968 (and e!3177969 tp!1420861))))

(assert (=> b!5095509 (= tp!1420815 e!3177968)))

(assert (= b!5095661 b!5095662))

(assert (= b!5095660 b!5095661))

(assert (= (and b!5095509 (is-Cons!58630 (t!371709 rulesArg!145))) b!5095660))

(declare-fun m!6153168 () Bool)

(assert (=> b!5095661 m!6153168))

(declare-fun m!6153170 () Bool)

(assert (=> b!5095661 m!6153170))

(push 1)

(assert (not b!5095605))

(assert (not b!5095632))

(assert (not b!5095606))

(assert (not b_next!134209))

(assert b_and!350297)

(assert b_and!350303)

(assert (not b!5095590))

(assert (not b!5095592))

(assert (not b!5095649))

(assert (not b!5095650))

(assert (not b!5095637))

(assert (not d!1649015))

(assert (not b!5095661))

(assert (not b!5095587))

(assert (not bm!354780))

(assert (not b!5095589))

(assert (not b!5095563))

(assert (not b_next!134211))

(assert (not b!5095568))

(assert (not d!1648997))

(assert (not b!5095651))

(assert (not d!1649021))

(assert (not b!5095613))

(assert (not b_next!134203))

(assert tp_is_empty!37237)

(assert (not d!1649009))

(assert (not d!1649019))

(assert (not b!5095562))

(assert b_and!350295)

(assert (not b!5095660))

(assert (not b!5095594))

(assert (not b_next!134201))

(assert (not b!5095631))

(assert (not b!5095595))

(assert (not b!5095593))

(assert (not b!5095607))

(assert (not bm!354777))

(assert (not b!5095588))

(assert b_and!350305)

(assert (not d!1649011))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!134211))

(assert (not b_next!134203))

(assert (not b_next!134209))

(assert b_and!350295)

(assert b_and!350297)

(assert (not b_next!134201))

(assert b_and!350303)

(assert b_and!350305)

(check-sat)

(pop 1)


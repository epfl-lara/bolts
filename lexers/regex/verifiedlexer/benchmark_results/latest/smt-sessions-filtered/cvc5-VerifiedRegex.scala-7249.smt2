; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!386054 () Bool)

(assert start!386054)

(declare-fun b!4083751 () Bool)

(declare-fun b_free!114065 () Bool)

(declare-fun b_next!114769 () Bool)

(assert (=> b!4083751 (= b_free!114065 (not b_next!114769))))

(declare-fun tp!1236487 () Bool)

(declare-fun b_and!314311 () Bool)

(assert (=> b!4083751 (= tp!1236487 b_and!314311)))

(declare-fun b_free!114067 () Bool)

(declare-fun b_next!114771 () Bool)

(assert (=> b!4083751 (= b_free!114067 (not b_next!114771))))

(declare-fun tp!1236490 () Bool)

(declare-fun b_and!314313 () Bool)

(assert (=> b!4083751 (= tp!1236490 b_and!314313)))

(declare-fun b!4083744 () Bool)

(declare-fun b_free!114069 () Bool)

(declare-fun b_next!114773 () Bool)

(assert (=> b!4083744 (= b_free!114069 (not b_next!114773))))

(declare-fun tp!1236493 () Bool)

(declare-fun b_and!314315 () Bool)

(assert (=> b!4083744 (= tp!1236493 b_and!314315)))

(declare-fun b_free!114071 () Bool)

(declare-fun b_next!114775 () Bool)

(assert (=> b!4083744 (= b_free!114071 (not b_next!114775))))

(declare-fun tp!1236492 () Bool)

(declare-fun b_and!314317 () Bool)

(assert (=> b!4083744 (= tp!1236492 b_and!314317)))

(declare-fun b!4083743 () Bool)

(declare-fun e!2534619 () Bool)

(declare-fun tp_is_empty!20951 () Bool)

(declare-fun tp!1236489 () Bool)

(assert (=> b!4083743 (= e!2534619 (and tp_is_empty!20951 tp!1236489))))

(declare-fun e!2534611 () Bool)

(assert (=> b!4083744 (= e!2534611 (and tp!1236493 tp!1236492))))

(declare-fun b!4083745 () Bool)

(declare-fun res!1668552 () Bool)

(declare-fun e!2534614 () Bool)

(assert (=> b!4083745 (=> (not res!1668552) (not e!2534614))))

(declare-datatypes ((List!43896 0))(
  ( (Nil!43772) (Cons!43772 (h!49192 (_ BitVec 16)) (t!337951 List!43896)) )
))
(declare-datatypes ((TokenValue!7299 0))(
  ( (FloatLiteralValue!14598 (text!51538 List!43896)) (TokenValueExt!7298 (__x!26815 Int)) (Broken!36495 (value!222094 List!43896)) (Object!7422) (End!7299) (Def!7299) (Underscore!7299) (Match!7299) (Else!7299) (Error!7299) (Case!7299) (If!7299) (Extends!7299) (Abstract!7299) (Class!7299) (Val!7299) (DelimiterValue!14598 (del!7359 List!43896)) (KeywordValue!7305 (value!222095 List!43896)) (CommentValue!14598 (value!222096 List!43896)) (WhitespaceValue!14598 (value!222097 List!43896)) (IndentationValue!7299 (value!222098 List!43896)) (String!50246) (Int32!7299) (Broken!36496 (value!222099 List!43896)) (Boolean!7300) (Unit!63297) (OperatorValue!7302 (op!7359 List!43896)) (IdentifierValue!14598 (value!222100 List!43896)) (IdentifierValue!14599 (value!222101 List!43896)) (WhitespaceValue!14599 (value!222102 List!43896)) (True!14598) (False!14598) (Broken!36497 (value!222103 List!43896)) (Broken!36498 (value!222104 List!43896)) (True!14599) (RightBrace!7299) (RightBracket!7299) (Colon!7299) (Null!7299) (Comma!7299) (LeftBracket!7299) (False!14599) (LeftBrace!7299) (ImaginaryLiteralValue!7299 (text!51539 List!43896)) (StringLiteralValue!21897 (value!222105 List!43896)) (EOFValue!7299 (value!222106 List!43896)) (IdentValue!7299 (value!222107 List!43896)) (DelimiterValue!14599 (value!222108 List!43896)) (DedentValue!7299 (value!222109 List!43896)) (NewLineValue!7299 (value!222110 List!43896)) (IntegerValue!21897 (value!222111 (_ BitVec 32)) (text!51540 List!43896)) (IntegerValue!21898 (value!222112 Int) (text!51541 List!43896)) (Times!7299) (Or!7299) (Equal!7299) (Minus!7299) (Broken!36499 (value!222113 List!43896)) (And!7299) (Div!7299) (LessEqual!7299) (Mod!7299) (Concat!19273) (Not!7299) (Plus!7299) (SpaceValue!7299 (value!222114 List!43896)) (IntegerValue!21899 (value!222115 Int) (text!51542 List!43896)) (StringLiteralValue!21898 (text!51543 List!43896)) (FloatLiteralValue!14599 (text!51544 List!43896)) (BytesLiteralValue!7299 (value!222116 List!43896)) (CommentValue!14599 (value!222117 List!43896)) (StringLiteralValue!21899 (value!222118 List!43896)) (ErrorTokenValue!7299 (msg!7360 List!43896)) )
))
(declare-datatypes ((C!24134 0))(
  ( (C!24135 (val!14177 Int)) )
))
(declare-datatypes ((Regex!11974 0))(
  ( (ElementMatch!11974 (c!704059 C!24134)) (Concat!19274 (regOne!24460 Regex!11974) (regTwo!24460 Regex!11974)) (EmptyExpr!11974) (Star!11974 (reg!12303 Regex!11974)) (EmptyLang!11974) (Union!11974 (regOne!24461 Regex!11974) (regTwo!24461 Regex!11974)) )
))
(declare-datatypes ((String!50247 0))(
  ( (String!50248 (value!222119 String)) )
))
(declare-datatypes ((List!43897 0))(
  ( (Nil!43773) (Cons!43773 (h!49193 C!24134) (t!337952 List!43897)) )
))
(declare-datatypes ((IArray!26565 0))(
  ( (IArray!26566 (innerList!13340 List!43897)) )
))
(declare-datatypes ((Conc!13280 0))(
  ( (Node!13280 (left!32901 Conc!13280) (right!33231 Conc!13280) (csize!26790 Int) (cheight!13491 Int)) (Leaf!20530 (xs!16586 IArray!26565) (csize!26791 Int)) (Empty!13280) )
))
(declare-datatypes ((BalanceConc!26154 0))(
  ( (BalanceConc!26155 (c!704060 Conc!13280)) )
))
(declare-datatypes ((TokenValueInjection!14026 0))(
  ( (TokenValueInjection!14027 (toValue!9645 Int) (toChars!9504 Int)) )
))
(declare-datatypes ((Rule!13938 0))(
  ( (Rule!13939 (regex!7069 Regex!11974) (tag!7929 String!50247) (isSeparator!7069 Bool) (transformation!7069 TokenValueInjection!14026)) )
))
(declare-datatypes ((List!43898 0))(
  ( (Nil!43774) (Cons!43774 (h!49194 Rule!13938) (t!337953 List!43898)) )
))
(declare-fun rules!3870 () List!43898)

(declare-fun isEmpty!26166 (List!43898) Bool)

(assert (=> b!4083745 (= res!1668552 (not (isEmpty!26166 rules!3870)))))

(declare-fun res!1668555 () Bool)

(assert (=> start!386054 (=> (not res!1668555) (not e!2534614))))

(declare-datatypes ((LexerInterface!6658 0))(
  ( (LexerInterfaceExt!6655 (__x!26816 Int)) (Lexer!6656) )
))
(declare-fun thiss!26199 () LexerInterface!6658)

(assert (=> start!386054 (= res!1668555 (is-Lexer!6656 thiss!26199))))

(assert (=> start!386054 e!2534614))

(assert (=> start!386054 true))

(assert (=> start!386054 e!2534619))

(declare-fun e!2534615 () Bool)

(assert (=> start!386054 e!2534615))

(declare-fun e!2534613 () Bool)

(assert (=> start!386054 e!2534613))

(declare-fun e!2534616 () Bool)

(assert (=> start!386054 e!2534616))

(declare-fun e!2534609 () Bool)

(assert (=> start!386054 e!2534609))

(declare-fun e!2534607 () Bool)

(declare-fun tp!1236491 () Bool)

(declare-fun e!2534610 () Bool)

(declare-fun b!4083746 () Bool)

(declare-fun inv!58445 (String!50247) Bool)

(declare-fun inv!58448 (TokenValueInjection!14026) Bool)

(assert (=> b!4083746 (= e!2534607 (and tp!1236491 (inv!58445 (tag!7929 (h!49194 rules!3870))) (inv!58448 (transformation!7069 (h!49194 rules!3870))) e!2534610))))

(declare-fun b!4083747 () Bool)

(declare-fun e!2534618 () Bool)

(declare-datatypes ((Token!13264 0))(
  ( (Token!13265 (value!222120 TokenValue!7299) (rule!10193 Rule!13938) (size!32693 Int) (originalCharacters!7663 List!43897)) )
))
(declare-fun lt!1460850 () Token!13264)

(declare-fun inv!58449 (Token!13264) Bool)

(assert (=> b!4083747 (= e!2534618 (inv!58449 lt!1460850))))

(declare-fun b!4083748 () Bool)

(declare-fun res!1668553 () Bool)

(assert (=> b!4083748 (=> (not res!1668553) (not e!2534614))))

(declare-fun rulesInvariant!6001 (LexerInterface!6658 List!43898) Bool)

(assert (=> b!4083748 (= res!1668553 (rulesInvariant!6001 thiss!26199 rules!3870))))

(declare-fun b!4083749 () Bool)

(declare-fun tp!1236486 () Bool)

(assert (=> b!4083749 (= e!2534616 (and tp_is_empty!20951 tp!1236486))))

(declare-fun b!4083750 () Bool)

(declare-fun e!2534612 () Bool)

(assert (=> b!4083750 (= e!2534612 (not e!2534618))))

(declare-fun res!1668554 () Bool)

(assert (=> b!4083750 (=> res!1668554 e!2534618)))

(declare-fun r!4213 () Rule!13938)

(declare-fun p!2988 () List!43897)

(declare-fun matchR!5915 (Regex!11974 List!43897) Bool)

(assert (=> b!4083750 (= res!1668554 (not (matchR!5915 (regex!7069 r!4213) p!2988)))))

(declare-fun ruleValid!2989 (LexerInterface!6658 Rule!13938) Bool)

(assert (=> b!4083750 (ruleValid!2989 thiss!26199 r!4213)))

(declare-datatypes ((Unit!63298 0))(
  ( (Unit!63299) )
))
(declare-fun lt!1460852 () Unit!63298)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2055 (LexerInterface!6658 Rule!13938 List!43898) Unit!63298)

(assert (=> b!4083750 (= lt!1460852 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2055 thiss!26199 r!4213 rules!3870))))

(assert (=> b!4083751 (= e!2534610 (and tp!1236487 tp!1236490))))

(declare-fun b!4083752 () Bool)

(declare-fun res!1668557 () Bool)

(assert (=> b!4083752 (=> (not res!1668557) (not e!2534614))))

(declare-fun isEmpty!26167 (List!43897) Bool)

(assert (=> b!4083752 (= res!1668557 (not (isEmpty!26167 p!2988)))))

(declare-fun b!4083753 () Bool)

(declare-fun res!1668551 () Bool)

(assert (=> b!4083753 (=> (not res!1668551) (not e!2534614))))

(declare-fun suffix!1518 () List!43897)

(declare-fun input!3411 () List!43897)

(declare-fun ++!11475 (List!43897 List!43897) List!43897)

(assert (=> b!4083753 (= res!1668551 (= input!3411 (++!11475 p!2988 suffix!1518)))))

(declare-fun b!4083754 () Bool)

(declare-fun tp!1236488 () Bool)

(assert (=> b!4083754 (= e!2534613 (and tp_is_empty!20951 tp!1236488))))

(declare-fun b!4083755 () Bool)

(declare-fun res!1668556 () Bool)

(assert (=> b!4083755 (=> (not res!1668556) (not e!2534614))))

(declare-fun contains!8742 (List!43898 Rule!13938) Bool)

(assert (=> b!4083755 (= res!1668556 (contains!8742 rules!3870 r!4213))))

(declare-fun b!4083756 () Bool)

(declare-fun tp!1236485 () Bool)

(assert (=> b!4083756 (= e!2534609 (and tp!1236485 (inv!58445 (tag!7929 r!4213)) (inv!58448 (transformation!7069 r!4213)) e!2534611))))

(declare-fun b!4083757 () Bool)

(declare-fun tp!1236494 () Bool)

(assert (=> b!4083757 (= e!2534615 (and e!2534607 tp!1236494))))

(declare-fun b!4083758 () Bool)

(assert (=> b!4083758 (= e!2534614 e!2534612)))

(declare-fun res!1668558 () Bool)

(assert (=> b!4083758 (=> (not res!1668558) (not e!2534612))))

(declare-datatypes ((tuple2!42716 0))(
  ( (tuple2!42717 (_1!24492 Token!13264) (_2!24492 List!43897)) )
))
(declare-datatypes ((Option!9475 0))(
  ( (None!9474) (Some!9474 (v!39944 tuple2!42716)) )
))
(declare-fun maxPrefix!3948 (LexerInterface!6658 List!43898 List!43897) Option!9475)

(assert (=> b!4083758 (= res!1668558 (= (maxPrefix!3948 thiss!26199 rules!3870 input!3411) (Some!9474 (tuple2!42717 lt!1460850 suffix!1518))))))

(declare-fun lt!1460851 () BalanceConc!26154)

(declare-fun apply!10252 (TokenValueInjection!14026 BalanceConc!26154) TokenValue!7299)

(declare-fun size!32694 (List!43897) Int)

(assert (=> b!4083758 (= lt!1460850 (Token!13265 (apply!10252 (transformation!7069 r!4213) lt!1460851) r!4213 (size!32694 p!2988) p!2988))))

(declare-fun lt!1460853 () Unit!63298)

(declare-fun lemmaSemiInverse!2036 (TokenValueInjection!14026 BalanceConc!26154) Unit!63298)

(assert (=> b!4083758 (= lt!1460853 (lemmaSemiInverse!2036 (transformation!7069 r!4213) lt!1460851))))

(declare-fun seqFromList!5286 (List!43897) BalanceConc!26154)

(assert (=> b!4083758 (= lt!1460851 (seqFromList!5286 p!2988))))

(assert (= (and start!386054 res!1668555) b!4083745))

(assert (= (and b!4083745 res!1668552) b!4083748))

(assert (= (and b!4083748 res!1668553) b!4083755))

(assert (= (and b!4083755 res!1668556) b!4083753))

(assert (= (and b!4083753 res!1668551) b!4083752))

(assert (= (and b!4083752 res!1668557) b!4083758))

(assert (= (and b!4083758 res!1668558) b!4083750))

(assert (= (and b!4083750 (not res!1668554)) b!4083747))

(assert (= (and start!386054 (is-Cons!43773 suffix!1518)) b!4083743))

(assert (= b!4083746 b!4083751))

(assert (= b!4083757 b!4083746))

(assert (= (and start!386054 (is-Cons!43774 rules!3870)) b!4083757))

(assert (= (and start!386054 (is-Cons!43773 p!2988)) b!4083754))

(assert (= (and start!386054 (is-Cons!43773 input!3411)) b!4083749))

(assert (= b!4083756 b!4083744))

(assert (= start!386054 b!4083756))

(declare-fun m!4690861 () Bool)

(assert (=> b!4083747 m!4690861))

(declare-fun m!4690863 () Bool)

(assert (=> b!4083756 m!4690863))

(declare-fun m!4690865 () Bool)

(assert (=> b!4083756 m!4690865))

(declare-fun m!4690867 () Bool)

(assert (=> b!4083748 m!4690867))

(declare-fun m!4690869 () Bool)

(assert (=> b!4083753 m!4690869))

(declare-fun m!4690871 () Bool)

(assert (=> b!4083755 m!4690871))

(declare-fun m!4690873 () Bool)

(assert (=> b!4083746 m!4690873))

(declare-fun m!4690875 () Bool)

(assert (=> b!4083746 m!4690875))

(declare-fun m!4690877 () Bool)

(assert (=> b!4083758 m!4690877))

(declare-fun m!4690879 () Bool)

(assert (=> b!4083758 m!4690879))

(declare-fun m!4690881 () Bool)

(assert (=> b!4083758 m!4690881))

(declare-fun m!4690883 () Bool)

(assert (=> b!4083758 m!4690883))

(declare-fun m!4690885 () Bool)

(assert (=> b!4083758 m!4690885))

(declare-fun m!4690887 () Bool)

(assert (=> b!4083750 m!4690887))

(declare-fun m!4690889 () Bool)

(assert (=> b!4083750 m!4690889))

(declare-fun m!4690891 () Bool)

(assert (=> b!4083750 m!4690891))

(declare-fun m!4690893 () Bool)

(assert (=> b!4083752 m!4690893))

(declare-fun m!4690895 () Bool)

(assert (=> b!4083745 m!4690895))

(push 1)

(assert (not b_next!114771))

(assert (not b!4083750))

(assert (not b!4083757))

(assert (not b!4083752))

(assert b_and!314317)

(assert (not b!4083747))

(assert tp_is_empty!20951)

(assert (not b!4083758))

(assert (not b!4083756))

(assert (not b!4083746))

(assert b_and!314315)

(assert (not b!4083754))

(assert (not b!4083753))

(assert (not b_next!114769))

(assert (not b!4083748))

(assert b_and!314311)

(assert (not b!4083743))

(assert (not b_next!114775))

(assert b_and!314313)

(assert (not b!4083749))

(assert (not b!4083745))

(assert (not b!4083755))

(assert (not b_next!114773))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!114771))

(assert (not b_next!114769))

(assert b_and!314311)

(assert b_and!314317)

(assert b_and!314315)

(assert (not b_next!114773))

(assert (not b_next!114775))

(assert b_and!314313)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1212690 () Bool)

(declare-fun res!1668591 () Bool)

(declare-fun e!2534661 () Bool)

(assert (=> d!1212690 (=> (not res!1668591) (not e!2534661))))

(assert (=> d!1212690 (= res!1668591 (not (isEmpty!26167 (originalCharacters!7663 lt!1460850))))))

(assert (=> d!1212690 (= (inv!58449 lt!1460850) e!2534661)))

(declare-fun b!4083811 () Bool)

(declare-fun res!1668592 () Bool)

(assert (=> b!4083811 (=> (not res!1668592) (not e!2534661))))

(declare-fun list!16259 (BalanceConc!26154) List!43897)

(declare-fun dynLambda!18671 (Int TokenValue!7299) BalanceConc!26154)

(assert (=> b!4083811 (= res!1668592 (= (originalCharacters!7663 lt!1460850) (list!16259 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))) (value!222120 lt!1460850)))))))

(declare-fun b!4083812 () Bool)

(assert (=> b!4083812 (= e!2534661 (= (size!32693 lt!1460850) (size!32694 (originalCharacters!7663 lt!1460850))))))

(assert (= (and d!1212690 res!1668591) b!4083811))

(assert (= (and b!4083811 res!1668592) b!4083812))

(declare-fun b_lambda!119495 () Bool)

(assert (=> (not b_lambda!119495) (not b!4083811)))

(declare-fun tb!245281 () Bool)

(declare-fun t!337958 () Bool)

(assert (=> (and b!4083751 (= (toChars!9504 (transformation!7069 (h!49194 rules!3870))) (toChars!9504 (transformation!7069 (rule!10193 lt!1460850)))) t!337958) tb!245281))

(declare-fun b!4083817 () Bool)

(declare-fun e!2534664 () Bool)

(declare-fun tp!1236527 () Bool)

(declare-fun inv!58452 (Conc!13280) Bool)

(assert (=> b!4083817 (= e!2534664 (and (inv!58452 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))) (value!222120 lt!1460850)))) tp!1236527))))

(declare-fun result!297578 () Bool)

(declare-fun inv!58453 (BalanceConc!26154) Bool)

(assert (=> tb!245281 (= result!297578 (and (inv!58453 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))) (value!222120 lt!1460850))) e!2534664))))

(assert (= tb!245281 b!4083817))

(declare-fun m!4690933 () Bool)

(assert (=> b!4083817 m!4690933))

(declare-fun m!4690935 () Bool)

(assert (=> tb!245281 m!4690935))

(assert (=> b!4083811 t!337958))

(declare-fun b_and!314327 () Bool)

(assert (= b_and!314313 (and (=> t!337958 result!297578) b_and!314327)))

(declare-fun tb!245283 () Bool)

(declare-fun t!337960 () Bool)

(assert (=> (and b!4083744 (= (toChars!9504 (transformation!7069 r!4213)) (toChars!9504 (transformation!7069 (rule!10193 lt!1460850)))) t!337960) tb!245283))

(declare-fun result!297582 () Bool)

(assert (= result!297582 result!297578))

(assert (=> b!4083811 t!337960))

(declare-fun b_and!314329 () Bool)

(assert (= b_and!314317 (and (=> t!337960 result!297582) b_and!314329)))

(declare-fun m!4690937 () Bool)

(assert (=> d!1212690 m!4690937))

(declare-fun m!4690939 () Bool)

(assert (=> b!4083811 m!4690939))

(assert (=> b!4083811 m!4690939))

(declare-fun m!4690941 () Bool)

(assert (=> b!4083811 m!4690941))

(declare-fun m!4690943 () Bool)

(assert (=> b!4083812 m!4690943))

(assert (=> b!4083747 d!1212690))

(declare-fun d!1212694 () Bool)

(assert (=> d!1212694 (= (isEmpty!26167 p!2988) (is-Nil!43773 p!2988))))

(assert (=> b!4083752 d!1212694))

(declare-fun d!1212696 () Bool)

(assert (=> d!1212696 (= (inv!58445 (tag!7929 (h!49194 rules!3870))) (= (mod (str.len (value!222119 (tag!7929 (h!49194 rules!3870)))) 2) 0))))

(assert (=> b!4083746 d!1212696))

(declare-fun d!1212700 () Bool)

(declare-fun res!1668604 () Bool)

(declare-fun e!2534673 () Bool)

(assert (=> d!1212700 (=> (not res!1668604) (not e!2534673))))

(declare-fun semiInverseModEq!3031 (Int Int) Bool)

(assert (=> d!1212700 (= res!1668604 (semiInverseModEq!3031 (toChars!9504 (transformation!7069 (h!49194 rules!3870))) (toValue!9645 (transformation!7069 (h!49194 rules!3870)))))))

(assert (=> d!1212700 (= (inv!58448 (transformation!7069 (h!49194 rules!3870))) e!2534673)))

(declare-fun b!4083829 () Bool)

(declare-fun equivClasses!2930 (Int Int) Bool)

(assert (=> b!4083829 (= e!2534673 (equivClasses!2930 (toChars!9504 (transformation!7069 (h!49194 rules!3870))) (toValue!9645 (transformation!7069 (h!49194 rules!3870)))))))

(assert (= (and d!1212700 res!1668604) b!4083829))

(declare-fun m!4690949 () Bool)

(assert (=> d!1212700 m!4690949))

(declare-fun m!4690951 () Bool)

(assert (=> b!4083829 m!4690951))

(assert (=> b!4083746 d!1212700))

(declare-fun d!1212702 () Bool)

(assert (=> d!1212702 (= (inv!58445 (tag!7929 r!4213)) (= (mod (str.len (value!222119 (tag!7929 r!4213))) 2) 0))))

(assert (=> b!4083756 d!1212702))

(declare-fun d!1212704 () Bool)

(declare-fun res!1668605 () Bool)

(declare-fun e!2534676 () Bool)

(assert (=> d!1212704 (=> (not res!1668605) (not e!2534676))))

(assert (=> d!1212704 (= res!1668605 (semiInverseModEq!3031 (toChars!9504 (transformation!7069 r!4213)) (toValue!9645 (transformation!7069 r!4213))))))

(assert (=> d!1212704 (= (inv!58448 (transformation!7069 r!4213)) e!2534676)))

(declare-fun b!4083834 () Bool)

(assert (=> b!4083834 (= e!2534676 (equivClasses!2930 (toChars!9504 (transformation!7069 r!4213)) (toValue!9645 (transformation!7069 r!4213))))))

(assert (= (and d!1212704 res!1668605) b!4083834))

(declare-fun m!4690953 () Bool)

(assert (=> d!1212704 m!4690953))

(declare-fun m!4690955 () Bool)

(assert (=> b!4083834 m!4690955))

(assert (=> b!4083756 d!1212704))

(declare-fun d!1212706 () Bool)

(assert (=> d!1212706 (= (isEmpty!26166 rules!3870) (is-Nil!43774 rules!3870))))

(assert (=> b!4083745 d!1212706))

(declare-fun b!4083879 () Bool)

(declare-fun e!2534703 () Bool)

(declare-fun lt!1460871 () Bool)

(assert (=> b!4083879 (= e!2534703 (not lt!1460871))))

(declare-fun b!4083880 () Bool)

(declare-fun res!1668633 () Bool)

(declare-fun e!2534704 () Bool)

(assert (=> b!4083880 (=> res!1668633 e!2534704)))

(declare-fun e!2534702 () Bool)

(assert (=> b!4083880 (= res!1668633 e!2534702)))

(declare-fun res!1668637 () Bool)

(assert (=> b!4083880 (=> (not res!1668637) (not e!2534702))))

(assert (=> b!4083880 (= res!1668637 lt!1460871)))

(declare-fun b!4083881 () Bool)

(declare-fun res!1668631 () Bool)

(declare-fun e!2534701 () Bool)

(assert (=> b!4083881 (=> res!1668631 e!2534701)))

(declare-fun tail!6364 (List!43897) List!43897)

(assert (=> b!4083881 (= res!1668631 (not (isEmpty!26167 (tail!6364 p!2988))))))

(declare-fun b!4083882 () Bool)

(declare-fun res!1668638 () Bool)

(assert (=> b!4083882 (=> (not res!1668638) (not e!2534702))))

(declare-fun call!288731 () Bool)

(assert (=> b!4083882 (= res!1668638 (not call!288731))))

(declare-fun b!4083883 () Bool)

(declare-fun e!2534706 () Bool)

(assert (=> b!4083883 (= e!2534706 e!2534703)))

(declare-fun c!704074 () Bool)

(assert (=> b!4083883 (= c!704074 (is-EmptyLang!11974 (regex!7069 r!4213)))))

(declare-fun b!4083884 () Bool)

(declare-fun e!2534705 () Bool)

(assert (=> b!4083884 (= e!2534705 e!2534701)))

(declare-fun res!1668634 () Bool)

(assert (=> b!4083884 (=> res!1668634 e!2534701)))

(assert (=> b!4083884 (= res!1668634 call!288731)))

(declare-fun b!4083885 () Bool)

(assert (=> b!4083885 (= e!2534706 (= lt!1460871 call!288731))))

(declare-fun b!4083887 () Bool)

(declare-fun res!1668636 () Bool)

(assert (=> b!4083887 (=> (not res!1668636) (not e!2534702))))

(assert (=> b!4083887 (= res!1668636 (isEmpty!26167 (tail!6364 p!2988)))))

(declare-fun b!4083888 () Bool)

(declare-fun res!1668635 () Bool)

(assert (=> b!4083888 (=> res!1668635 e!2534704)))

(assert (=> b!4083888 (= res!1668635 (not (is-ElementMatch!11974 (regex!7069 r!4213))))))

(assert (=> b!4083888 (= e!2534703 e!2534704)))

(declare-fun b!4083889 () Bool)

(assert (=> b!4083889 (= e!2534704 e!2534705)))

(declare-fun res!1668632 () Bool)

(assert (=> b!4083889 (=> (not res!1668632) (not e!2534705))))

(assert (=> b!4083889 (= res!1668632 (not lt!1460871))))

(declare-fun d!1212708 () Bool)

(assert (=> d!1212708 e!2534706))

(declare-fun c!704073 () Bool)

(assert (=> d!1212708 (= c!704073 (is-EmptyExpr!11974 (regex!7069 r!4213)))))

(declare-fun e!2534707 () Bool)

(assert (=> d!1212708 (= lt!1460871 e!2534707)))

(declare-fun c!704075 () Bool)

(assert (=> d!1212708 (= c!704075 (isEmpty!26167 p!2988))))

(declare-fun validRegex!5419 (Regex!11974) Bool)

(assert (=> d!1212708 (validRegex!5419 (regex!7069 r!4213))))

(assert (=> d!1212708 (= (matchR!5915 (regex!7069 r!4213) p!2988) lt!1460871)))

(declare-fun b!4083886 () Bool)

(declare-fun derivativeStep!3620 (Regex!11974 C!24134) Regex!11974)

(declare-fun head!8630 (List!43897) C!24134)

(assert (=> b!4083886 (= e!2534707 (matchR!5915 (derivativeStep!3620 (regex!7069 r!4213) (head!8630 p!2988)) (tail!6364 p!2988)))))

(declare-fun b!4083890 () Bool)

(assert (=> b!4083890 (= e!2534702 (= (head!8630 p!2988) (c!704059 (regex!7069 r!4213))))))

(declare-fun b!4083891 () Bool)

(assert (=> b!4083891 (= e!2534701 (not (= (head!8630 p!2988) (c!704059 (regex!7069 r!4213)))))))

(declare-fun b!4083892 () Bool)

(declare-fun nullable!4219 (Regex!11974) Bool)

(assert (=> b!4083892 (= e!2534707 (nullable!4219 (regex!7069 r!4213)))))

(declare-fun bm!288726 () Bool)

(assert (=> bm!288726 (= call!288731 (isEmpty!26167 p!2988))))

(assert (= (and d!1212708 c!704075) b!4083892))

(assert (= (and d!1212708 (not c!704075)) b!4083886))

(assert (= (and d!1212708 c!704073) b!4083885))

(assert (= (and d!1212708 (not c!704073)) b!4083883))

(assert (= (and b!4083883 c!704074) b!4083879))

(assert (= (and b!4083883 (not c!704074)) b!4083888))

(assert (= (and b!4083888 (not res!1668635)) b!4083880))

(assert (= (and b!4083880 res!1668637) b!4083882))

(assert (= (and b!4083882 res!1668638) b!4083887))

(assert (= (and b!4083887 res!1668636) b!4083890))

(assert (= (and b!4083880 (not res!1668633)) b!4083889))

(assert (= (and b!4083889 res!1668632) b!4083884))

(assert (= (and b!4083884 (not res!1668634)) b!4083881))

(assert (= (and b!4083881 (not res!1668631)) b!4083891))

(assert (= (or b!4083885 b!4083882 b!4083884) bm!288726))

(declare-fun m!4690985 () Bool)

(assert (=> b!4083881 m!4690985))

(assert (=> b!4083881 m!4690985))

(declare-fun m!4690987 () Bool)

(assert (=> b!4083881 m!4690987))

(assert (=> d!1212708 m!4690893))

(declare-fun m!4690989 () Bool)

(assert (=> d!1212708 m!4690989))

(declare-fun m!4690991 () Bool)

(assert (=> b!4083891 m!4690991))

(assert (=> bm!288726 m!4690893))

(assert (=> b!4083890 m!4690991))

(assert (=> b!4083886 m!4690991))

(assert (=> b!4083886 m!4690991))

(declare-fun m!4690993 () Bool)

(assert (=> b!4083886 m!4690993))

(assert (=> b!4083886 m!4690985))

(assert (=> b!4083886 m!4690993))

(assert (=> b!4083886 m!4690985))

(declare-fun m!4690995 () Bool)

(assert (=> b!4083886 m!4690995))

(declare-fun m!4690997 () Bool)

(assert (=> b!4083892 m!4690997))

(assert (=> b!4083887 m!4690985))

(assert (=> b!4083887 m!4690985))

(assert (=> b!4083887 m!4690987))

(assert (=> b!4083750 d!1212708))

(declare-fun d!1212718 () Bool)

(declare-fun res!1668643 () Bool)

(declare-fun e!2534710 () Bool)

(assert (=> d!1212718 (=> (not res!1668643) (not e!2534710))))

(assert (=> d!1212718 (= res!1668643 (validRegex!5419 (regex!7069 r!4213)))))

(assert (=> d!1212718 (= (ruleValid!2989 thiss!26199 r!4213) e!2534710)))

(declare-fun b!4083897 () Bool)

(declare-fun res!1668644 () Bool)

(assert (=> b!4083897 (=> (not res!1668644) (not e!2534710))))

(assert (=> b!4083897 (= res!1668644 (not (nullable!4219 (regex!7069 r!4213))))))

(declare-fun b!4083898 () Bool)

(assert (=> b!4083898 (= e!2534710 (not (= (tag!7929 r!4213) (String!50248 ""))))))

(assert (= (and d!1212718 res!1668643) b!4083897))

(assert (= (and b!4083897 res!1668644) b!4083898))

(assert (=> d!1212718 m!4690989))

(assert (=> b!4083897 m!4690997))

(assert (=> b!4083750 d!1212718))

(declare-fun d!1212720 () Bool)

(assert (=> d!1212720 (ruleValid!2989 thiss!26199 r!4213)))

(declare-fun lt!1460874 () Unit!63298)

(declare-fun choose!24931 (LexerInterface!6658 Rule!13938 List!43898) Unit!63298)

(assert (=> d!1212720 (= lt!1460874 (choose!24931 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1212720 (contains!8742 rules!3870 r!4213)))

(assert (=> d!1212720 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2055 thiss!26199 r!4213 rules!3870) lt!1460874)))

(declare-fun bs!592985 () Bool)

(assert (= bs!592985 d!1212720))

(assert (=> bs!592985 m!4690889))

(declare-fun m!4690999 () Bool)

(assert (=> bs!592985 m!4690999))

(assert (=> bs!592985 m!4690871))

(assert (=> b!4083750 d!1212720))

(declare-fun d!1212722 () Bool)

(declare-fun lt!1460877 () Bool)

(declare-fun content!6724 (List!43898) (Set Rule!13938))

(assert (=> d!1212722 (= lt!1460877 (set.member r!4213 (content!6724 rules!3870)))))

(declare-fun e!2534715 () Bool)

(assert (=> d!1212722 (= lt!1460877 e!2534715)))

(declare-fun res!1668650 () Bool)

(assert (=> d!1212722 (=> (not res!1668650) (not e!2534715))))

(assert (=> d!1212722 (= res!1668650 (is-Cons!43774 rules!3870))))

(assert (=> d!1212722 (= (contains!8742 rules!3870 r!4213) lt!1460877)))

(declare-fun b!4083903 () Bool)

(declare-fun e!2534716 () Bool)

(assert (=> b!4083903 (= e!2534715 e!2534716)))

(declare-fun res!1668649 () Bool)

(assert (=> b!4083903 (=> res!1668649 e!2534716)))

(assert (=> b!4083903 (= res!1668649 (= (h!49194 rules!3870) r!4213))))

(declare-fun b!4083904 () Bool)

(assert (=> b!4083904 (= e!2534716 (contains!8742 (t!337953 rules!3870) r!4213))))

(assert (= (and d!1212722 res!1668650) b!4083903))

(assert (= (and b!4083903 (not res!1668649)) b!4083904))

(declare-fun m!4691001 () Bool)

(assert (=> d!1212722 m!4691001))

(declare-fun m!4691003 () Bool)

(assert (=> d!1212722 m!4691003))

(declare-fun m!4691005 () Bool)

(assert (=> b!4083904 m!4691005))

(assert (=> b!4083755 d!1212722))

(declare-fun d!1212724 () Bool)

(declare-fun res!1668653 () Bool)

(declare-fun e!2534719 () Bool)

(assert (=> d!1212724 (=> (not res!1668653) (not e!2534719))))

(declare-fun rulesValid!2765 (LexerInterface!6658 List!43898) Bool)

(assert (=> d!1212724 (= res!1668653 (rulesValid!2765 thiss!26199 rules!3870))))

(assert (=> d!1212724 (= (rulesInvariant!6001 thiss!26199 rules!3870) e!2534719)))

(declare-fun b!4083907 () Bool)

(declare-datatypes ((List!43902 0))(
  ( (Nil!43778) (Cons!43778 (h!49198 String!50247) (t!337987 List!43902)) )
))
(declare-fun noDuplicateTag!2766 (LexerInterface!6658 List!43898 List!43902) Bool)

(assert (=> b!4083907 (= e!2534719 (noDuplicateTag!2766 thiss!26199 rules!3870 Nil!43778))))

(assert (= (and d!1212724 res!1668653) b!4083907))

(declare-fun m!4691007 () Bool)

(assert (=> d!1212724 m!4691007))

(declare-fun m!4691009 () Bool)

(assert (=> b!4083907 m!4691009))

(assert (=> b!4083748 d!1212724))

(declare-fun b!4083919 () Bool)

(declare-fun e!2534724 () Bool)

(declare-fun lt!1460880 () List!43897)

(assert (=> b!4083919 (= e!2534724 (or (not (= suffix!1518 Nil!43773)) (= lt!1460880 p!2988)))))

(declare-fun b!4083917 () Bool)

(declare-fun e!2534725 () List!43897)

(assert (=> b!4083917 (= e!2534725 (Cons!43773 (h!49193 p!2988) (++!11475 (t!337952 p!2988) suffix!1518)))))

(declare-fun d!1212726 () Bool)

(assert (=> d!1212726 e!2534724))

(declare-fun res!1668658 () Bool)

(assert (=> d!1212726 (=> (not res!1668658) (not e!2534724))))

(declare-fun content!6725 (List!43897) (Set C!24134))

(assert (=> d!1212726 (= res!1668658 (= (content!6725 lt!1460880) (set.union (content!6725 p!2988) (content!6725 suffix!1518))))))

(assert (=> d!1212726 (= lt!1460880 e!2534725)))

(declare-fun c!704078 () Bool)

(assert (=> d!1212726 (= c!704078 (is-Nil!43773 p!2988))))

(assert (=> d!1212726 (= (++!11475 p!2988 suffix!1518) lt!1460880)))

(declare-fun b!4083916 () Bool)

(assert (=> b!4083916 (= e!2534725 suffix!1518)))

(declare-fun b!4083918 () Bool)

(declare-fun res!1668659 () Bool)

(assert (=> b!4083918 (=> (not res!1668659) (not e!2534724))))

(assert (=> b!4083918 (= res!1668659 (= (size!32694 lt!1460880) (+ (size!32694 p!2988) (size!32694 suffix!1518))))))

(assert (= (and d!1212726 c!704078) b!4083916))

(assert (= (and d!1212726 (not c!704078)) b!4083917))

(assert (= (and d!1212726 res!1668658) b!4083918))

(assert (= (and b!4083918 res!1668659) b!4083919))

(declare-fun m!4691011 () Bool)

(assert (=> b!4083917 m!4691011))

(declare-fun m!4691013 () Bool)

(assert (=> d!1212726 m!4691013))

(declare-fun m!4691015 () Bool)

(assert (=> d!1212726 m!4691015))

(declare-fun m!4691017 () Bool)

(assert (=> d!1212726 m!4691017))

(declare-fun m!4691019 () Bool)

(assert (=> b!4083918 m!4691019))

(assert (=> b!4083918 m!4690885))

(declare-fun m!4691021 () Bool)

(assert (=> b!4083918 m!4691021))

(assert (=> b!4083753 d!1212726))

(declare-fun b!4083969 () Bool)

(declare-fun res!1668698 () Bool)

(declare-fun e!2534746 () Bool)

(assert (=> b!4083969 (=> (not res!1668698) (not e!2534746))))

(declare-fun lt!1460910 () Option!9475)

(declare-fun charsOf!4837 (Token!13264) BalanceConc!26154)

(declare-fun get!14356 (Option!9475) tuple2!42716)

(assert (=> b!4083969 (= res!1668698 (= (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460910)))) (originalCharacters!7663 (_1!24492 (get!14356 lt!1460910)))))))

(declare-fun bm!288732 () Bool)

(declare-fun call!288737 () Option!9475)

(declare-fun maxPrefixOneRule!2936 (LexerInterface!6658 Rule!13938 List!43897) Option!9475)

(assert (=> bm!288732 (= call!288737 (maxPrefixOneRule!2936 thiss!26199 (h!49194 rules!3870) input!3411))))

(declare-fun b!4083971 () Bool)

(declare-fun res!1668700 () Bool)

(assert (=> b!4083971 (=> (not res!1668700) (not e!2534746))))

(assert (=> b!4083971 (= res!1668700 (= (value!222120 (_1!24492 (get!14356 lt!1460910))) (apply!10252 (transformation!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910)))) (seqFromList!5286 (originalCharacters!7663 (_1!24492 (get!14356 lt!1460910)))))))))

(declare-fun b!4083973 () Bool)

(declare-fun res!1668701 () Bool)

(assert (=> b!4083973 (=> (not res!1668701) (not e!2534746))))

(assert (=> b!4083973 (= res!1668701 (= (++!11475 (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460910)))) (_2!24492 (get!14356 lt!1460910))) input!3411))))

(declare-fun b!4083974 () Bool)

(declare-fun e!2534743 () Bool)

(assert (=> b!4083974 (= e!2534743 e!2534746)))

(declare-fun res!1668696 () Bool)

(assert (=> b!4083974 (=> (not res!1668696) (not e!2534746))))

(declare-fun isDefined!7173 (Option!9475) Bool)

(assert (=> b!4083974 (= res!1668696 (isDefined!7173 lt!1460910))))

(declare-fun b!4083975 () Bool)

(declare-fun res!1668697 () Bool)

(assert (=> b!4083975 (=> (not res!1668697) (not e!2534746))))

(assert (=> b!4083975 (= res!1668697 (matchR!5915 (regex!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910)))) (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460910))))))))

(declare-fun b!4083976 () Bool)

(declare-fun res!1668699 () Bool)

(assert (=> b!4083976 (=> (not res!1668699) (not e!2534746))))

(assert (=> b!4083976 (= res!1668699 (< (size!32694 (_2!24492 (get!14356 lt!1460910))) (size!32694 input!3411)))))

(declare-fun b!4083977 () Bool)

(declare-fun e!2534744 () Option!9475)

(declare-fun lt!1460909 () Option!9475)

(declare-fun lt!1460908 () Option!9475)

(assert (=> b!4083977 (= e!2534744 (ite (and (is-None!9474 lt!1460909) (is-None!9474 lt!1460908)) None!9474 (ite (is-None!9474 lt!1460908) lt!1460909 (ite (is-None!9474 lt!1460909) lt!1460908 (ite (>= (size!32693 (_1!24492 (v!39944 lt!1460909))) (size!32693 (_1!24492 (v!39944 lt!1460908)))) lt!1460909 lt!1460908)))))))

(assert (=> b!4083977 (= lt!1460909 call!288737)))

(assert (=> b!4083977 (= lt!1460908 (maxPrefix!3948 thiss!26199 (t!337953 rules!3870) input!3411))))

(declare-fun d!1212728 () Bool)

(assert (=> d!1212728 e!2534743))

(declare-fun res!1668695 () Bool)

(assert (=> d!1212728 (=> res!1668695 e!2534743)))

(declare-fun isEmpty!26170 (Option!9475) Bool)

(assert (=> d!1212728 (= res!1668695 (isEmpty!26170 lt!1460910))))

(assert (=> d!1212728 (= lt!1460910 e!2534744)))

(declare-fun c!704086 () Bool)

(assert (=> d!1212728 (= c!704086 (and (is-Cons!43774 rules!3870) (is-Nil!43774 (t!337953 rules!3870))))))

(declare-fun lt!1460913 () Unit!63298)

(declare-fun lt!1460911 () Unit!63298)

(assert (=> d!1212728 (= lt!1460913 lt!1460911)))

(declare-fun isPrefix!4124 (List!43897 List!43897) Bool)

(assert (=> d!1212728 (isPrefix!4124 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2675 (List!43897 List!43897) Unit!63298)

(assert (=> d!1212728 (= lt!1460911 (lemmaIsPrefixRefl!2675 input!3411 input!3411))))

(declare-fun rulesValidInductive!2606 (LexerInterface!6658 List!43898) Bool)

(assert (=> d!1212728 (rulesValidInductive!2606 thiss!26199 rules!3870)))

(assert (=> d!1212728 (= (maxPrefix!3948 thiss!26199 rules!3870 input!3411) lt!1460910)))

(declare-fun b!4083978 () Bool)

(assert (=> b!4083978 (= e!2534744 call!288737)))

(declare-fun b!4083979 () Bool)

(assert (=> b!4083979 (= e!2534746 (contains!8742 rules!3870 (rule!10193 (_1!24492 (get!14356 lt!1460910)))))))

(assert (= (and d!1212728 c!704086) b!4083978))

(assert (= (and d!1212728 (not c!704086)) b!4083977))

(assert (= (or b!4083978 b!4083977) bm!288732))

(assert (= (and d!1212728 (not res!1668695)) b!4083974))

(assert (= (and b!4083974 res!1668696) b!4083969))

(assert (= (and b!4083969 res!1668698) b!4083976))

(assert (= (and b!4083976 res!1668699) b!4083973))

(assert (= (and b!4083973 res!1668701) b!4083971))

(assert (= (and b!4083971 res!1668700) b!4083975))

(assert (= (and b!4083975 res!1668697) b!4083979))

(declare-fun m!4691059 () Bool)

(assert (=> b!4083971 m!4691059))

(declare-fun m!4691061 () Bool)

(assert (=> b!4083971 m!4691061))

(assert (=> b!4083971 m!4691061))

(declare-fun m!4691063 () Bool)

(assert (=> b!4083971 m!4691063))

(declare-fun m!4691065 () Bool)

(assert (=> b!4083977 m!4691065))

(assert (=> b!4083979 m!4691059))

(declare-fun m!4691067 () Bool)

(assert (=> b!4083979 m!4691067))

(assert (=> b!4083976 m!4691059))

(declare-fun m!4691069 () Bool)

(assert (=> b!4083976 m!4691069))

(declare-fun m!4691071 () Bool)

(assert (=> b!4083976 m!4691071))

(assert (=> b!4083969 m!4691059))

(declare-fun m!4691073 () Bool)

(assert (=> b!4083969 m!4691073))

(assert (=> b!4083969 m!4691073))

(declare-fun m!4691075 () Bool)

(assert (=> b!4083969 m!4691075))

(assert (=> b!4083975 m!4691059))

(assert (=> b!4083975 m!4691073))

(assert (=> b!4083975 m!4691073))

(assert (=> b!4083975 m!4691075))

(assert (=> b!4083975 m!4691075))

(declare-fun m!4691077 () Bool)

(assert (=> b!4083975 m!4691077))

(assert (=> b!4083973 m!4691059))

(assert (=> b!4083973 m!4691073))

(assert (=> b!4083973 m!4691073))

(assert (=> b!4083973 m!4691075))

(assert (=> b!4083973 m!4691075))

(declare-fun m!4691079 () Bool)

(assert (=> b!4083973 m!4691079))

(declare-fun m!4691081 () Bool)

(assert (=> d!1212728 m!4691081))

(declare-fun m!4691083 () Bool)

(assert (=> d!1212728 m!4691083))

(declare-fun m!4691085 () Bool)

(assert (=> d!1212728 m!4691085))

(declare-fun m!4691087 () Bool)

(assert (=> d!1212728 m!4691087))

(declare-fun m!4691089 () Bool)

(assert (=> b!4083974 m!4691089))

(declare-fun m!4691091 () Bool)

(assert (=> bm!288732 m!4691091))

(assert (=> b!4083758 d!1212728))

(declare-fun d!1212734 () Bool)

(declare-fun lt!1460916 () Int)

(assert (=> d!1212734 (>= lt!1460916 0)))

(declare-fun e!2534749 () Int)

(assert (=> d!1212734 (= lt!1460916 e!2534749)))

(declare-fun c!704090 () Bool)

(assert (=> d!1212734 (= c!704090 (is-Nil!43773 p!2988))))

(assert (=> d!1212734 (= (size!32694 p!2988) lt!1460916)))

(declare-fun b!4083984 () Bool)

(assert (=> b!4083984 (= e!2534749 0)))

(declare-fun b!4083985 () Bool)

(assert (=> b!4083985 (= e!2534749 (+ 1 (size!32694 (t!337952 p!2988))))))

(assert (= (and d!1212734 c!704090) b!4083984))

(assert (= (and d!1212734 (not c!704090)) b!4083985))

(declare-fun m!4691095 () Bool)

(assert (=> b!4083985 m!4691095))

(assert (=> b!4083758 d!1212734))

(declare-fun b!4083990 () Bool)

(declare-fun e!2534752 () Bool)

(assert (=> b!4083990 (= e!2534752 true)))

(declare-fun d!1212738 () Bool)

(assert (=> d!1212738 e!2534752))

(assert (= d!1212738 b!4083990))

(declare-fun lambda!127850 () Int)

(declare-fun order!22953 () Int)

(declare-fun order!22951 () Int)

(declare-fun dynLambda!18672 (Int Int) Int)

(declare-fun dynLambda!18673 (Int Int) Int)

(assert (=> b!4083990 (< (dynLambda!18672 order!22951 (toValue!9645 (transformation!7069 r!4213))) (dynLambda!18673 order!22953 lambda!127850))))

(declare-fun order!22955 () Int)

(declare-fun dynLambda!18674 (Int Int) Int)

(assert (=> b!4083990 (< (dynLambda!18674 order!22955 (toChars!9504 (transformation!7069 r!4213))) (dynLambda!18673 order!22953 lambda!127850))))

(declare-fun dynLambda!18675 (Int BalanceConc!26154) TokenValue!7299)

(assert (=> d!1212738 (= (list!16259 (dynLambda!18671 (toChars!9504 (transformation!7069 r!4213)) (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851))) (list!16259 lt!1460851))))

(declare-fun lt!1460921 () Unit!63298)

(declare-fun ForallOf!870 (Int BalanceConc!26154) Unit!63298)

(assert (=> d!1212738 (= lt!1460921 (ForallOf!870 lambda!127850 lt!1460851))))

(assert (=> d!1212738 (= (lemmaSemiInverse!2036 (transformation!7069 r!4213) lt!1460851) lt!1460921)))

(declare-fun b_lambda!119499 () Bool)

(assert (=> (not b_lambda!119499) (not d!1212738)))

(declare-fun t!337966 () Bool)

(declare-fun tb!245289 () Bool)

(assert (=> (and b!4083751 (= (toChars!9504 (transformation!7069 (h!49194 rules!3870))) (toChars!9504 (transformation!7069 r!4213))) t!337966) tb!245289))

(declare-fun tp!1236531 () Bool)

(declare-fun b!4083991 () Bool)

(declare-fun e!2534753 () Bool)

(assert (=> b!4083991 (= e!2534753 (and (inv!58452 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 r!4213)) (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851)))) tp!1236531))))

(declare-fun result!297590 () Bool)

(assert (=> tb!245289 (= result!297590 (and (inv!58453 (dynLambda!18671 (toChars!9504 (transformation!7069 r!4213)) (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851))) e!2534753))))

(assert (= tb!245289 b!4083991))

(declare-fun m!4691097 () Bool)

(assert (=> b!4083991 m!4691097))

(declare-fun m!4691099 () Bool)

(assert (=> tb!245289 m!4691099))

(assert (=> d!1212738 t!337966))

(declare-fun b_and!314335 () Bool)

(assert (= b_and!314327 (and (=> t!337966 result!297590) b_and!314335)))

(declare-fun t!337968 () Bool)

(declare-fun tb!245291 () Bool)

(assert (=> (and b!4083744 (= (toChars!9504 (transformation!7069 r!4213)) (toChars!9504 (transformation!7069 r!4213))) t!337968) tb!245291))

(declare-fun result!297592 () Bool)

(assert (= result!297592 result!297590))

(assert (=> d!1212738 t!337968))

(declare-fun b_and!314337 () Bool)

(assert (= b_and!314329 (and (=> t!337968 result!297592) b_and!314337)))

(declare-fun b_lambda!119501 () Bool)

(assert (=> (not b_lambda!119501) (not d!1212738)))

(declare-fun t!337970 () Bool)

(declare-fun tb!245293 () Bool)

(assert (=> (and b!4083751 (= (toValue!9645 (transformation!7069 (h!49194 rules!3870))) (toValue!9645 (transformation!7069 r!4213))) t!337970) tb!245293))

(declare-fun result!297594 () Bool)

(declare-fun inv!21 (TokenValue!7299) Bool)

(assert (=> tb!245293 (= result!297594 (inv!21 (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851)))))

(declare-fun m!4691101 () Bool)

(assert (=> tb!245293 m!4691101))

(assert (=> d!1212738 t!337970))

(declare-fun b_and!314339 () Bool)

(assert (= b_and!314311 (and (=> t!337970 result!297594) b_and!314339)))

(declare-fun t!337972 () Bool)

(declare-fun tb!245295 () Bool)

(assert (=> (and b!4083744 (= (toValue!9645 (transformation!7069 r!4213)) (toValue!9645 (transformation!7069 r!4213))) t!337972) tb!245295))

(declare-fun result!297598 () Bool)

(assert (= result!297598 result!297594))

(assert (=> d!1212738 t!337972))

(declare-fun b_and!314341 () Bool)

(assert (= b_and!314315 (and (=> t!337972 result!297598) b_and!314341)))

(declare-fun m!4691103 () Bool)

(assert (=> d!1212738 m!4691103))

(declare-fun m!4691105 () Bool)

(assert (=> d!1212738 m!4691105))

(declare-fun m!4691107 () Bool)

(assert (=> d!1212738 m!4691107))

(assert (=> d!1212738 m!4691107))

(declare-fun m!4691109 () Bool)

(assert (=> d!1212738 m!4691109))

(assert (=> d!1212738 m!4691109))

(declare-fun m!4691111 () Bool)

(assert (=> d!1212738 m!4691111))

(assert (=> b!4083758 d!1212738))

(declare-fun d!1212740 () Bool)

(assert (=> d!1212740 (= (apply!10252 (transformation!7069 r!4213) lt!1460851) (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851))))

(declare-fun b_lambda!119503 () Bool)

(assert (=> (not b_lambda!119503) (not d!1212740)))

(assert (=> d!1212740 t!337970))

(declare-fun b_and!314343 () Bool)

(assert (= b_and!314339 (and (=> t!337970 result!297594) b_and!314343)))

(assert (=> d!1212740 t!337972))

(declare-fun b_and!314345 () Bool)

(assert (= b_and!314341 (and (=> t!337972 result!297598) b_and!314345)))

(assert (=> d!1212740 m!4691107))

(assert (=> b!4083758 d!1212740))

(declare-fun d!1212742 () Bool)

(declare-fun fromListB!2417 (List!43897) BalanceConc!26154)

(assert (=> d!1212742 (= (seqFromList!5286 p!2988) (fromListB!2417 p!2988))))

(declare-fun bs!592987 () Bool)

(assert (= bs!592987 d!1212742))

(declare-fun m!4691113 () Bool)

(assert (=> bs!592987 m!4691113))

(assert (=> b!4083758 d!1212742))

(declare-fun b!4084004 () Bool)

(declare-fun b_free!114081 () Bool)

(declare-fun b_next!114785 () Bool)

(assert (=> b!4084004 (= b_free!114081 (not b_next!114785))))

(declare-fun t!337974 () Bool)

(declare-fun tb!245297 () Bool)

(assert (=> (and b!4084004 (= (toValue!9645 (transformation!7069 (h!49194 (t!337953 rules!3870)))) (toValue!9645 (transformation!7069 r!4213))) t!337974) tb!245297))

(declare-fun result!297602 () Bool)

(assert (= result!297602 result!297594))

(assert (=> d!1212738 t!337974))

(assert (=> d!1212740 t!337974))

(declare-fun b_and!314347 () Bool)

(declare-fun tp!1236541 () Bool)

(assert (=> b!4084004 (= tp!1236541 (and (=> t!337974 result!297602) b_and!314347))))

(declare-fun b_free!114083 () Bool)

(declare-fun b_next!114787 () Bool)

(assert (=> b!4084004 (= b_free!114083 (not b_next!114787))))

(declare-fun tb!245299 () Bool)

(declare-fun t!337976 () Bool)

(assert (=> (and b!4084004 (= (toChars!9504 (transformation!7069 (h!49194 (t!337953 rules!3870)))) (toChars!9504 (transformation!7069 (rule!10193 lt!1460850)))) t!337976) tb!245299))

(declare-fun result!297604 () Bool)

(assert (= result!297604 result!297578))

(assert (=> b!4083811 t!337976))

(declare-fun tb!245301 () Bool)

(declare-fun t!337978 () Bool)

(assert (=> (and b!4084004 (= (toChars!9504 (transformation!7069 (h!49194 (t!337953 rules!3870)))) (toChars!9504 (transformation!7069 r!4213))) t!337978) tb!245301))

(declare-fun result!297606 () Bool)

(assert (= result!297606 result!297590))

(assert (=> d!1212738 t!337978))

(declare-fun tp!1236540 () Bool)

(declare-fun b_and!314349 () Bool)

(assert (=> b!4084004 (= tp!1236540 (and (=> t!337976 result!297604) (=> t!337978 result!297606) b_and!314349))))

(declare-fun e!2534765 () Bool)

(assert (=> b!4084004 (= e!2534765 (and tp!1236541 tp!1236540))))

(declare-fun e!2534767 () Bool)

(declare-fun b!4084003 () Bool)

(declare-fun tp!1236542 () Bool)

(assert (=> b!4084003 (= e!2534767 (and tp!1236542 (inv!58445 (tag!7929 (h!49194 (t!337953 rules!3870)))) (inv!58448 (transformation!7069 (h!49194 (t!337953 rules!3870)))) e!2534765))))

(declare-fun b!4084002 () Bool)

(declare-fun e!2534766 () Bool)

(declare-fun tp!1236543 () Bool)

(assert (=> b!4084002 (= e!2534766 (and e!2534767 tp!1236543))))

(assert (=> b!4083757 (= tp!1236494 e!2534766)))

(assert (= b!4084003 b!4084004))

(assert (= b!4084002 b!4084003))

(assert (= (and b!4083757 (is-Cons!43774 (t!337953 rules!3870))) b!4084002))

(declare-fun m!4691115 () Bool)

(assert (=> b!4084003 m!4691115))

(declare-fun m!4691117 () Bool)

(assert (=> b!4084003 m!4691117))

(declare-fun b!4084015 () Bool)

(declare-fun e!2534771 () Bool)

(assert (=> b!4084015 (= e!2534771 tp_is_empty!20951)))

(declare-fun b!4084018 () Bool)

(declare-fun tp!1236556 () Bool)

(declare-fun tp!1236557 () Bool)

(assert (=> b!4084018 (= e!2534771 (and tp!1236556 tp!1236557))))

(declare-fun b!4084016 () Bool)

(declare-fun tp!1236555 () Bool)

(declare-fun tp!1236554 () Bool)

(assert (=> b!4084016 (= e!2534771 (and tp!1236555 tp!1236554))))

(assert (=> b!4083746 (= tp!1236491 e!2534771)))

(declare-fun b!4084017 () Bool)

(declare-fun tp!1236558 () Bool)

(assert (=> b!4084017 (= e!2534771 tp!1236558)))

(assert (= (and b!4083746 (is-ElementMatch!11974 (regex!7069 (h!49194 rules!3870)))) b!4084015))

(assert (= (and b!4083746 (is-Concat!19274 (regex!7069 (h!49194 rules!3870)))) b!4084016))

(assert (= (and b!4083746 (is-Star!11974 (regex!7069 (h!49194 rules!3870)))) b!4084017))

(assert (= (and b!4083746 (is-Union!11974 (regex!7069 (h!49194 rules!3870)))) b!4084018))

(declare-fun b!4084019 () Bool)

(declare-fun e!2534772 () Bool)

(assert (=> b!4084019 (= e!2534772 tp_is_empty!20951)))

(declare-fun b!4084022 () Bool)

(declare-fun tp!1236561 () Bool)

(declare-fun tp!1236562 () Bool)

(assert (=> b!4084022 (= e!2534772 (and tp!1236561 tp!1236562))))

(declare-fun b!4084020 () Bool)

(declare-fun tp!1236560 () Bool)

(declare-fun tp!1236559 () Bool)

(assert (=> b!4084020 (= e!2534772 (and tp!1236560 tp!1236559))))

(assert (=> b!4083756 (= tp!1236485 e!2534772)))

(declare-fun b!4084021 () Bool)

(declare-fun tp!1236563 () Bool)

(assert (=> b!4084021 (= e!2534772 tp!1236563)))

(assert (= (and b!4083756 (is-ElementMatch!11974 (regex!7069 r!4213))) b!4084019))

(assert (= (and b!4083756 (is-Concat!19274 (regex!7069 r!4213))) b!4084020))

(assert (= (and b!4083756 (is-Star!11974 (regex!7069 r!4213))) b!4084021))

(assert (= (and b!4083756 (is-Union!11974 (regex!7069 r!4213))) b!4084022))

(declare-fun b!4084027 () Bool)

(declare-fun e!2534775 () Bool)

(declare-fun tp!1236566 () Bool)

(assert (=> b!4084027 (= e!2534775 (and tp_is_empty!20951 tp!1236566))))

(assert (=> b!4083749 (= tp!1236486 e!2534775)))

(assert (= (and b!4083749 (is-Cons!43773 (t!337952 input!3411))) b!4084027))

(declare-fun b!4084028 () Bool)

(declare-fun e!2534776 () Bool)

(declare-fun tp!1236567 () Bool)

(assert (=> b!4084028 (= e!2534776 (and tp_is_empty!20951 tp!1236567))))

(assert (=> b!4083754 (= tp!1236488 e!2534776)))

(assert (= (and b!4083754 (is-Cons!43773 (t!337952 p!2988))) b!4084028))

(declare-fun b!4084029 () Bool)

(declare-fun e!2534777 () Bool)

(declare-fun tp!1236568 () Bool)

(assert (=> b!4084029 (= e!2534777 (and tp_is_empty!20951 tp!1236568))))

(assert (=> b!4083743 (= tp!1236489 e!2534777)))

(assert (= (and b!4083743 (is-Cons!43773 (t!337952 suffix!1518))) b!4084029))

(declare-fun b_lambda!119505 () Bool)

(assert (= b_lambda!119499 (or (and b!4083751 b_free!114067 (= (toChars!9504 (transformation!7069 (h!49194 rules!3870))) (toChars!9504 (transformation!7069 r!4213)))) (and b!4083744 b_free!114071) (and b!4084004 b_free!114083 (= (toChars!9504 (transformation!7069 (h!49194 (t!337953 rules!3870)))) (toChars!9504 (transformation!7069 r!4213)))) b_lambda!119505)))

(declare-fun b_lambda!119507 () Bool)

(assert (= b_lambda!119503 (or (and b!4083751 b_free!114065 (= (toValue!9645 (transformation!7069 (h!49194 rules!3870))) (toValue!9645 (transformation!7069 r!4213)))) (and b!4083744 b_free!114069) (and b!4084004 b_free!114081 (= (toValue!9645 (transformation!7069 (h!49194 (t!337953 rules!3870)))) (toValue!9645 (transformation!7069 r!4213)))) b_lambda!119507)))

(declare-fun b_lambda!119509 () Bool)

(assert (= b_lambda!119501 (or (and b!4083751 b_free!114065 (= (toValue!9645 (transformation!7069 (h!49194 rules!3870))) (toValue!9645 (transformation!7069 r!4213)))) (and b!4083744 b_free!114069) (and b!4084004 b_free!114081 (= (toValue!9645 (transformation!7069 (h!49194 (t!337953 rules!3870)))) (toValue!9645 (transformation!7069 r!4213)))) b_lambda!119509)))

(push 1)

(assert (not b!4083971))

(assert (not b!4084016))

(assert (not b!4083979))

(assert (not b_lambda!119509))

(assert tp_is_empty!20951)

(assert (not b!4084028))

(assert b_and!314347)

(assert (not b!4083977))

(assert (not b_next!114771))

(assert (not d!1212690))

(assert (not b!4083886))

(assert (not b!4083973))

(assert (not bm!288726))

(assert b_and!314345)

(assert (not d!1212720))

(assert (not b_next!114769))

(assert (not b!4084002))

(assert (not tb!245281))

(assert (not b!4083974))

(assert (not b!4083976))

(assert b_and!314335)

(assert (not d!1212718))

(assert (not d!1212742))

(assert (not b_lambda!119495))

(assert (not d!1212726))

(assert (not d!1212704))

(assert (not b_next!114787))

(assert b_and!314343)

(assert (not b!4084018))

(assert (not b!4083917))

(assert (not b!4084021))

(assert (not b!4083904))

(assert (not b!4083969))

(assert (not d!1212722))

(assert (not b!4083975))

(assert (not b!4083887))

(assert (not b!4083891))

(assert (not b_next!114775))

(assert (not b!4083890))

(assert (not b_lambda!119505))

(assert (not b!4083811))

(assert (not d!1212728))

(assert (not b_lambda!119507))

(assert (not b!4083991))

(assert (not b!4083834))

(assert (not bm!288732))

(assert (not tb!245289))

(assert (not b!4083881))

(assert (not b!4083812))

(assert b_and!314349)

(assert (not b!4083985))

(assert (not b!4083918))

(assert (not b!4084029))

(assert (not d!1212708))

(assert (not b!4084022))

(assert (not b!4083897))

(assert (not b!4084017))

(assert (not tb!245293))

(assert (not d!1212700))

(assert (not b!4083817))

(assert (not d!1212738))

(assert (not b!4083892))

(assert (not b!4083829))

(assert (not b!4084003))

(assert (not b!4084020))

(assert (not b_next!114785))

(assert (not b!4084027))

(assert b_and!314337)

(assert (not d!1212724))

(assert (not b!4083907))

(assert (not b_next!114773))

(check-sat)

(pop 1)

(push 1)

(assert b_and!314335)

(assert (not b_next!114775))

(assert b_and!314349)

(assert (not b_next!114785))

(assert b_and!314337)

(assert (not b_next!114773))

(assert b_and!314347)

(assert (not b_next!114771))

(assert b_and!314345)

(assert (not b_next!114769))

(assert (not b_next!114787))

(assert b_and!314343)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1212762 () Bool)

(declare-fun lt!1460932 () Int)

(assert (=> d!1212762 (>= lt!1460932 0)))

(declare-fun e!2534837 () Int)

(assert (=> d!1212762 (= lt!1460932 e!2534837)))

(declare-fun c!704102 () Bool)

(assert (=> d!1212762 (= c!704102 (is-Nil!43773 (originalCharacters!7663 lt!1460850)))))

(assert (=> d!1212762 (= (size!32694 (originalCharacters!7663 lt!1460850)) lt!1460932)))

(declare-fun b!4084129 () Bool)

(assert (=> b!4084129 (= e!2534837 0)))

(declare-fun b!4084130 () Bool)

(assert (=> b!4084130 (= e!2534837 (+ 1 (size!32694 (t!337952 (originalCharacters!7663 lt!1460850)))))))

(assert (= (and d!1212762 c!704102) b!4084129))

(assert (= (and d!1212762 (not c!704102)) b!4084130))

(declare-fun m!4691165 () Bool)

(assert (=> b!4084130 m!4691165))

(assert (=> b!4083812 d!1212762))

(declare-fun b!4084134 () Bool)

(declare-fun lt!1460933 () List!43897)

(declare-fun e!2534838 () Bool)

(assert (=> b!4084134 (= e!2534838 (or (not (= suffix!1518 Nil!43773)) (= lt!1460933 (t!337952 p!2988))))))

(declare-fun b!4084132 () Bool)

(declare-fun e!2534839 () List!43897)

(assert (=> b!4084132 (= e!2534839 (Cons!43773 (h!49193 (t!337952 p!2988)) (++!11475 (t!337952 (t!337952 p!2988)) suffix!1518)))))

(declare-fun d!1212764 () Bool)

(assert (=> d!1212764 e!2534838))

(declare-fun res!1668739 () Bool)

(assert (=> d!1212764 (=> (not res!1668739) (not e!2534838))))

(assert (=> d!1212764 (= res!1668739 (= (content!6725 lt!1460933) (set.union (content!6725 (t!337952 p!2988)) (content!6725 suffix!1518))))))

(assert (=> d!1212764 (= lt!1460933 e!2534839)))

(declare-fun c!704103 () Bool)

(assert (=> d!1212764 (= c!704103 (is-Nil!43773 (t!337952 p!2988)))))

(assert (=> d!1212764 (= (++!11475 (t!337952 p!2988) suffix!1518) lt!1460933)))

(declare-fun b!4084131 () Bool)

(assert (=> b!4084131 (= e!2534839 suffix!1518)))

(declare-fun b!4084133 () Bool)

(declare-fun res!1668740 () Bool)

(assert (=> b!4084133 (=> (not res!1668740) (not e!2534838))))

(assert (=> b!4084133 (= res!1668740 (= (size!32694 lt!1460933) (+ (size!32694 (t!337952 p!2988)) (size!32694 suffix!1518))))))

(assert (= (and d!1212764 c!704103) b!4084131))

(assert (= (and d!1212764 (not c!704103)) b!4084132))

(assert (= (and d!1212764 res!1668739) b!4084133))

(assert (= (and b!4084133 res!1668740) b!4084134))

(declare-fun m!4691167 () Bool)

(assert (=> b!4084132 m!4691167))

(declare-fun m!4691169 () Bool)

(assert (=> d!1212764 m!4691169))

(declare-fun m!4691171 () Bool)

(assert (=> d!1212764 m!4691171))

(assert (=> d!1212764 m!4691017))

(declare-fun m!4691173 () Bool)

(assert (=> b!4084133 m!4691173))

(assert (=> b!4084133 m!4691095))

(assert (=> b!4084133 m!4691021))

(assert (=> b!4083917 d!1212764))

(declare-fun d!1212766 () Bool)

(assert (=> d!1212766 (= (get!14356 lt!1460910) (v!39944 lt!1460910))))

(assert (=> b!4083971 d!1212766))

(declare-fun d!1212768 () Bool)

(assert (=> d!1212768 (= (apply!10252 (transformation!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910)))) (seqFromList!5286 (originalCharacters!7663 (_1!24492 (get!14356 lt!1460910))))) (dynLambda!18675 (toValue!9645 (transformation!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910))))) (seqFromList!5286 (originalCharacters!7663 (_1!24492 (get!14356 lt!1460910))))))))

(declare-fun b_lambda!119523 () Bool)

(assert (=> (not b_lambda!119523) (not d!1212768)))

(declare-fun t!337996 () Bool)

(declare-fun tb!245317 () Bool)

(assert (=> (and b!4083751 (= (toValue!9645 (transformation!7069 (h!49194 rules!3870))) (toValue!9645 (transformation!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910)))))) t!337996) tb!245317))

(declare-fun result!297634 () Bool)

(assert (=> tb!245317 (= result!297634 (inv!21 (dynLambda!18675 (toValue!9645 (transformation!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910))))) (seqFromList!5286 (originalCharacters!7663 (_1!24492 (get!14356 lt!1460910)))))))))

(declare-fun m!4691175 () Bool)

(assert (=> tb!245317 m!4691175))

(assert (=> d!1212768 t!337996))

(declare-fun b_and!314367 () Bool)

(assert (= b_and!314343 (and (=> t!337996 result!297634) b_and!314367)))

(declare-fun tb!245319 () Bool)

(declare-fun t!337998 () Bool)

(assert (=> (and b!4083744 (= (toValue!9645 (transformation!7069 r!4213)) (toValue!9645 (transformation!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910)))))) t!337998) tb!245319))

(declare-fun result!297636 () Bool)

(assert (= result!297636 result!297634))

(assert (=> d!1212768 t!337998))

(declare-fun b_and!314369 () Bool)

(assert (= b_and!314345 (and (=> t!337998 result!297636) b_and!314369)))

(declare-fun t!338000 () Bool)

(declare-fun tb!245321 () Bool)

(assert (=> (and b!4084004 (= (toValue!9645 (transformation!7069 (h!49194 (t!337953 rules!3870)))) (toValue!9645 (transformation!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910)))))) t!338000) tb!245321))

(declare-fun result!297638 () Bool)

(assert (= result!297638 result!297634))

(assert (=> d!1212768 t!338000))

(declare-fun b_and!314371 () Bool)

(assert (= b_and!314347 (and (=> t!338000 result!297638) b_and!314371)))

(assert (=> d!1212768 m!4691061))

(declare-fun m!4691177 () Bool)

(assert (=> d!1212768 m!4691177))

(assert (=> b!4083971 d!1212768))

(declare-fun d!1212770 () Bool)

(assert (=> d!1212770 (= (seqFromList!5286 (originalCharacters!7663 (_1!24492 (get!14356 lt!1460910)))) (fromListB!2417 (originalCharacters!7663 (_1!24492 (get!14356 lt!1460910)))))))

(declare-fun bs!592989 () Bool)

(assert (= bs!592989 d!1212770))

(declare-fun m!4691179 () Bool)

(assert (=> bs!592989 m!4691179))

(assert (=> b!4083971 d!1212770))

(declare-fun d!1212772 () Bool)

(declare-fun list!16261 (Conc!13280) List!43897)

(assert (=> d!1212772 (= (list!16259 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))) (value!222120 lt!1460850))) (list!16261 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))) (value!222120 lt!1460850)))))))

(declare-fun bs!592990 () Bool)

(assert (= bs!592990 d!1212772))

(declare-fun m!4691181 () Bool)

(assert (=> bs!592990 m!4691181))

(assert (=> b!4083811 d!1212772))

(declare-fun d!1212774 () Bool)

(assert (=> d!1212774 (= (isDefined!7173 lt!1460910) (not (isEmpty!26170 lt!1460910)))))

(declare-fun bs!592991 () Bool)

(assert (= bs!592991 d!1212774))

(assert (=> bs!592991 m!4691081))

(assert (=> b!4083974 d!1212774))

(declare-fun d!1212776 () Bool)

(declare-fun lt!1460934 () Int)

(assert (=> d!1212776 (>= lt!1460934 0)))

(declare-fun e!2534841 () Int)

(assert (=> d!1212776 (= lt!1460934 e!2534841)))

(declare-fun c!704104 () Bool)

(assert (=> d!1212776 (= c!704104 (is-Nil!43773 lt!1460880))))

(assert (=> d!1212776 (= (size!32694 lt!1460880) lt!1460934)))

(declare-fun b!4084135 () Bool)

(assert (=> b!4084135 (= e!2534841 0)))

(declare-fun b!4084136 () Bool)

(assert (=> b!4084136 (= e!2534841 (+ 1 (size!32694 (t!337952 lt!1460880))))))

(assert (= (and d!1212776 c!704104) b!4084135))

(assert (= (and d!1212776 (not c!704104)) b!4084136))

(declare-fun m!4691183 () Bool)

(assert (=> b!4084136 m!4691183))

(assert (=> b!4083918 d!1212776))

(assert (=> b!4083918 d!1212734))

(declare-fun d!1212778 () Bool)

(declare-fun lt!1460935 () Int)

(assert (=> d!1212778 (>= lt!1460935 0)))

(declare-fun e!2534842 () Int)

(assert (=> d!1212778 (= lt!1460935 e!2534842)))

(declare-fun c!704105 () Bool)

(assert (=> d!1212778 (= c!704105 (is-Nil!43773 suffix!1518))))

(assert (=> d!1212778 (= (size!32694 suffix!1518) lt!1460935)))

(declare-fun b!4084137 () Bool)

(assert (=> b!4084137 (= e!2534842 0)))

(declare-fun b!4084138 () Bool)

(assert (=> b!4084138 (= e!2534842 (+ 1 (size!32694 (t!337952 suffix!1518))))))

(assert (= (and d!1212778 c!704105) b!4084137))

(assert (= (and d!1212778 (not c!704105)) b!4084138))

(declare-fun m!4691185 () Bool)

(assert (=> b!4084138 m!4691185))

(assert (=> b!4083918 d!1212778))

(declare-fun d!1212780 () Bool)

(declare-fun c!704108 () Bool)

(assert (=> d!1212780 (= c!704108 (is-Nil!43774 rules!3870))))

(declare-fun e!2534845 () (Set Rule!13938))

(assert (=> d!1212780 (= (content!6724 rules!3870) e!2534845)))

(declare-fun b!4084143 () Bool)

(assert (=> b!4084143 (= e!2534845 (as set.empty (Set Rule!13938)))))

(declare-fun b!4084144 () Bool)

(assert (=> b!4084144 (= e!2534845 (set.union (set.insert (h!49194 rules!3870) (as set.empty (Set Rule!13938))) (content!6724 (t!337953 rules!3870))))))

(assert (= (and d!1212780 c!704108) b!4084143))

(assert (= (and d!1212780 (not c!704108)) b!4084144))

(declare-fun m!4691187 () Bool)

(assert (=> b!4084144 m!4691187))

(declare-fun m!4691189 () Bool)

(assert (=> b!4084144 m!4691189))

(assert (=> d!1212722 d!1212780))

(declare-fun b!4084148 () Bool)

(declare-fun e!2534846 () Bool)

(declare-fun lt!1460936 () List!43897)

(assert (=> b!4084148 (= e!2534846 (or (not (= (_2!24492 (get!14356 lt!1460910)) Nil!43773)) (= lt!1460936 (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460910)))))))))

(declare-fun b!4084146 () Bool)

(declare-fun e!2534847 () List!43897)

(assert (=> b!4084146 (= e!2534847 (Cons!43773 (h!49193 (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460910))))) (++!11475 (t!337952 (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460910))))) (_2!24492 (get!14356 lt!1460910)))))))

(declare-fun d!1212782 () Bool)

(assert (=> d!1212782 e!2534846))

(declare-fun res!1668741 () Bool)

(assert (=> d!1212782 (=> (not res!1668741) (not e!2534846))))

(assert (=> d!1212782 (= res!1668741 (= (content!6725 lt!1460936) (set.union (content!6725 (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460910))))) (content!6725 (_2!24492 (get!14356 lt!1460910))))))))

(assert (=> d!1212782 (= lt!1460936 e!2534847)))

(declare-fun c!704109 () Bool)

(assert (=> d!1212782 (= c!704109 (is-Nil!43773 (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460910))))))))

(assert (=> d!1212782 (= (++!11475 (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460910)))) (_2!24492 (get!14356 lt!1460910))) lt!1460936)))

(declare-fun b!4084145 () Bool)

(assert (=> b!4084145 (= e!2534847 (_2!24492 (get!14356 lt!1460910)))))

(declare-fun b!4084147 () Bool)

(declare-fun res!1668742 () Bool)

(assert (=> b!4084147 (=> (not res!1668742) (not e!2534846))))

(assert (=> b!4084147 (= res!1668742 (= (size!32694 lt!1460936) (+ (size!32694 (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460910))))) (size!32694 (_2!24492 (get!14356 lt!1460910))))))))

(assert (= (and d!1212782 c!704109) b!4084145))

(assert (= (and d!1212782 (not c!704109)) b!4084146))

(assert (= (and d!1212782 res!1668741) b!4084147))

(assert (= (and b!4084147 res!1668742) b!4084148))

(declare-fun m!4691191 () Bool)

(assert (=> b!4084146 m!4691191))

(declare-fun m!4691193 () Bool)

(assert (=> d!1212782 m!4691193))

(assert (=> d!1212782 m!4691075))

(declare-fun m!4691195 () Bool)

(assert (=> d!1212782 m!4691195))

(declare-fun m!4691197 () Bool)

(assert (=> d!1212782 m!4691197))

(declare-fun m!4691199 () Bool)

(assert (=> b!4084147 m!4691199))

(assert (=> b!4084147 m!4691075))

(declare-fun m!4691201 () Bool)

(assert (=> b!4084147 m!4691201))

(assert (=> b!4084147 m!4691069))

(assert (=> b!4083973 d!1212782))

(declare-fun d!1212784 () Bool)

(assert (=> d!1212784 (= (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460910)))) (list!16261 (c!704060 (charsOf!4837 (_1!24492 (get!14356 lt!1460910))))))))

(declare-fun bs!592992 () Bool)

(assert (= bs!592992 d!1212784))

(declare-fun m!4691203 () Bool)

(assert (=> bs!592992 m!4691203))

(assert (=> b!4083973 d!1212784))

(declare-fun d!1212786 () Bool)

(declare-fun lt!1460939 () BalanceConc!26154)

(assert (=> d!1212786 (= (list!16259 lt!1460939) (originalCharacters!7663 (_1!24492 (get!14356 lt!1460910))))))

(assert (=> d!1212786 (= lt!1460939 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910))))) (value!222120 (_1!24492 (get!14356 lt!1460910)))))))

(assert (=> d!1212786 (= (charsOf!4837 (_1!24492 (get!14356 lt!1460910))) lt!1460939)))

(declare-fun b_lambda!119525 () Bool)

(assert (=> (not b_lambda!119525) (not d!1212786)))

(declare-fun t!338002 () Bool)

(declare-fun tb!245323 () Bool)

(assert (=> (and b!4083751 (= (toChars!9504 (transformation!7069 (h!49194 rules!3870))) (toChars!9504 (transformation!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910)))))) t!338002) tb!245323))

(declare-fun b!4084149 () Bool)

(declare-fun e!2534848 () Bool)

(declare-fun tp!1236607 () Bool)

(assert (=> b!4084149 (= e!2534848 (and (inv!58452 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910))))) (value!222120 (_1!24492 (get!14356 lt!1460910)))))) tp!1236607))))

(declare-fun result!297640 () Bool)

(assert (=> tb!245323 (= result!297640 (and (inv!58453 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910))))) (value!222120 (_1!24492 (get!14356 lt!1460910))))) e!2534848))))

(assert (= tb!245323 b!4084149))

(declare-fun m!4691205 () Bool)

(assert (=> b!4084149 m!4691205))

(declare-fun m!4691207 () Bool)

(assert (=> tb!245323 m!4691207))

(assert (=> d!1212786 t!338002))

(declare-fun b_and!314373 () Bool)

(assert (= b_and!314335 (and (=> t!338002 result!297640) b_and!314373)))

(declare-fun tb!245325 () Bool)

(declare-fun t!338004 () Bool)

(assert (=> (and b!4083744 (= (toChars!9504 (transformation!7069 r!4213)) (toChars!9504 (transformation!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910)))))) t!338004) tb!245325))

(declare-fun result!297642 () Bool)

(assert (= result!297642 result!297640))

(assert (=> d!1212786 t!338004))

(declare-fun b_and!314375 () Bool)

(assert (= b_and!314337 (and (=> t!338004 result!297642) b_and!314375)))

(declare-fun t!338006 () Bool)

(declare-fun tb!245327 () Bool)

(assert (=> (and b!4084004 (= (toChars!9504 (transformation!7069 (h!49194 (t!337953 rules!3870)))) (toChars!9504 (transformation!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910)))))) t!338006) tb!245327))

(declare-fun result!297644 () Bool)

(assert (= result!297644 result!297640))

(assert (=> d!1212786 t!338006))

(declare-fun b_and!314377 () Bool)

(assert (= b_and!314349 (and (=> t!338006 result!297644) b_and!314377)))

(declare-fun m!4691209 () Bool)

(assert (=> d!1212786 m!4691209))

(declare-fun m!4691211 () Bool)

(assert (=> d!1212786 m!4691211))

(assert (=> b!4083973 d!1212786))

(assert (=> b!4083973 d!1212766))

(declare-fun d!1212788 () Bool)

(declare-fun lt!1460940 () Bool)

(assert (=> d!1212788 (= lt!1460940 (set.member r!4213 (content!6724 (t!337953 rules!3870))))))

(declare-fun e!2534849 () Bool)

(assert (=> d!1212788 (= lt!1460940 e!2534849)))

(declare-fun res!1668744 () Bool)

(assert (=> d!1212788 (=> (not res!1668744) (not e!2534849))))

(assert (=> d!1212788 (= res!1668744 (is-Cons!43774 (t!337953 rules!3870)))))

(assert (=> d!1212788 (= (contains!8742 (t!337953 rules!3870) r!4213) lt!1460940)))

(declare-fun b!4084150 () Bool)

(declare-fun e!2534850 () Bool)

(assert (=> b!4084150 (= e!2534849 e!2534850)))

(declare-fun res!1668743 () Bool)

(assert (=> b!4084150 (=> res!1668743 e!2534850)))

(assert (=> b!4084150 (= res!1668743 (= (h!49194 (t!337953 rules!3870)) r!4213))))

(declare-fun b!4084151 () Bool)

(assert (=> b!4084151 (= e!2534850 (contains!8742 (t!337953 (t!337953 rules!3870)) r!4213))))

(assert (= (and d!1212788 res!1668744) b!4084150))

(assert (= (and b!4084150 (not res!1668743)) b!4084151))

(assert (=> d!1212788 m!4691189))

(declare-fun m!4691213 () Bool)

(assert (=> d!1212788 m!4691213))

(declare-fun m!4691215 () Bool)

(assert (=> b!4084151 m!4691215))

(assert (=> b!4083904 d!1212788))

(declare-fun b!4084152 () Bool)

(declare-fun res!1668748 () Bool)

(declare-fun e!2534853 () Bool)

(assert (=> b!4084152 (=> (not res!1668748) (not e!2534853))))

(declare-fun lt!1460943 () Option!9475)

(assert (=> b!4084152 (= res!1668748 (= (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460943)))) (originalCharacters!7663 (_1!24492 (get!14356 lt!1460943)))))))

(declare-fun call!288741 () Option!9475)

(declare-fun bm!288736 () Bool)

(assert (=> bm!288736 (= call!288741 (maxPrefixOneRule!2936 thiss!26199 (h!49194 (t!337953 rules!3870)) input!3411))))

(declare-fun b!4084153 () Bool)

(declare-fun res!1668750 () Bool)

(assert (=> b!4084153 (=> (not res!1668750) (not e!2534853))))

(assert (=> b!4084153 (= res!1668750 (= (value!222120 (_1!24492 (get!14356 lt!1460943))) (apply!10252 (transformation!7069 (rule!10193 (_1!24492 (get!14356 lt!1460943)))) (seqFromList!5286 (originalCharacters!7663 (_1!24492 (get!14356 lt!1460943)))))))))

(declare-fun b!4084154 () Bool)

(declare-fun res!1668751 () Bool)

(assert (=> b!4084154 (=> (not res!1668751) (not e!2534853))))

(assert (=> b!4084154 (= res!1668751 (= (++!11475 (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460943)))) (_2!24492 (get!14356 lt!1460943))) input!3411))))

(declare-fun b!4084155 () Bool)

(declare-fun e!2534851 () Bool)

(assert (=> b!4084155 (= e!2534851 e!2534853)))

(declare-fun res!1668746 () Bool)

(assert (=> b!4084155 (=> (not res!1668746) (not e!2534853))))

(assert (=> b!4084155 (= res!1668746 (isDefined!7173 lt!1460943))))

(declare-fun b!4084156 () Bool)

(declare-fun res!1668747 () Bool)

(assert (=> b!4084156 (=> (not res!1668747) (not e!2534853))))

(assert (=> b!4084156 (= res!1668747 (matchR!5915 (regex!7069 (rule!10193 (_1!24492 (get!14356 lt!1460943)))) (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460943))))))))

(declare-fun b!4084157 () Bool)

(declare-fun res!1668749 () Bool)

(assert (=> b!4084157 (=> (not res!1668749) (not e!2534853))))

(assert (=> b!4084157 (= res!1668749 (< (size!32694 (_2!24492 (get!14356 lt!1460943))) (size!32694 input!3411)))))

(declare-fun b!4084158 () Bool)

(declare-fun e!2534852 () Option!9475)

(declare-fun lt!1460942 () Option!9475)

(declare-fun lt!1460941 () Option!9475)

(assert (=> b!4084158 (= e!2534852 (ite (and (is-None!9474 lt!1460942) (is-None!9474 lt!1460941)) None!9474 (ite (is-None!9474 lt!1460941) lt!1460942 (ite (is-None!9474 lt!1460942) lt!1460941 (ite (>= (size!32693 (_1!24492 (v!39944 lt!1460942))) (size!32693 (_1!24492 (v!39944 lt!1460941)))) lt!1460942 lt!1460941)))))))

(assert (=> b!4084158 (= lt!1460942 call!288741)))

(assert (=> b!4084158 (= lt!1460941 (maxPrefix!3948 thiss!26199 (t!337953 (t!337953 rules!3870)) input!3411))))

(declare-fun d!1212790 () Bool)

(assert (=> d!1212790 e!2534851))

(declare-fun res!1668745 () Bool)

(assert (=> d!1212790 (=> res!1668745 e!2534851)))

(assert (=> d!1212790 (= res!1668745 (isEmpty!26170 lt!1460943))))

(assert (=> d!1212790 (= lt!1460943 e!2534852)))

(declare-fun c!704110 () Bool)

(assert (=> d!1212790 (= c!704110 (and (is-Cons!43774 (t!337953 rules!3870)) (is-Nil!43774 (t!337953 (t!337953 rules!3870)))))))

(declare-fun lt!1460945 () Unit!63298)

(declare-fun lt!1460944 () Unit!63298)

(assert (=> d!1212790 (= lt!1460945 lt!1460944)))

(assert (=> d!1212790 (isPrefix!4124 input!3411 input!3411)))

(assert (=> d!1212790 (= lt!1460944 (lemmaIsPrefixRefl!2675 input!3411 input!3411))))

(assert (=> d!1212790 (rulesValidInductive!2606 thiss!26199 (t!337953 rules!3870))))

(assert (=> d!1212790 (= (maxPrefix!3948 thiss!26199 (t!337953 rules!3870) input!3411) lt!1460943)))

(declare-fun b!4084159 () Bool)

(assert (=> b!4084159 (= e!2534852 call!288741)))

(declare-fun b!4084160 () Bool)

(assert (=> b!4084160 (= e!2534853 (contains!8742 (t!337953 rules!3870) (rule!10193 (_1!24492 (get!14356 lt!1460943)))))))

(assert (= (and d!1212790 c!704110) b!4084159))

(assert (= (and d!1212790 (not c!704110)) b!4084158))

(assert (= (or b!4084159 b!4084158) bm!288736))

(assert (= (and d!1212790 (not res!1668745)) b!4084155))

(assert (= (and b!4084155 res!1668746) b!4084152))

(assert (= (and b!4084152 res!1668748) b!4084157))

(assert (= (and b!4084157 res!1668749) b!4084154))

(assert (= (and b!4084154 res!1668751) b!4084153))

(assert (= (and b!4084153 res!1668750) b!4084156))

(assert (= (and b!4084156 res!1668747) b!4084160))

(declare-fun m!4691217 () Bool)

(assert (=> b!4084153 m!4691217))

(declare-fun m!4691219 () Bool)

(assert (=> b!4084153 m!4691219))

(assert (=> b!4084153 m!4691219))

(declare-fun m!4691221 () Bool)

(assert (=> b!4084153 m!4691221))

(declare-fun m!4691223 () Bool)

(assert (=> b!4084158 m!4691223))

(assert (=> b!4084160 m!4691217))

(declare-fun m!4691225 () Bool)

(assert (=> b!4084160 m!4691225))

(assert (=> b!4084157 m!4691217))

(declare-fun m!4691227 () Bool)

(assert (=> b!4084157 m!4691227))

(assert (=> b!4084157 m!4691071))

(assert (=> b!4084152 m!4691217))

(declare-fun m!4691229 () Bool)

(assert (=> b!4084152 m!4691229))

(assert (=> b!4084152 m!4691229))

(declare-fun m!4691231 () Bool)

(assert (=> b!4084152 m!4691231))

(assert (=> b!4084156 m!4691217))

(assert (=> b!4084156 m!4691229))

(assert (=> b!4084156 m!4691229))

(assert (=> b!4084156 m!4691231))

(assert (=> b!4084156 m!4691231))

(declare-fun m!4691233 () Bool)

(assert (=> b!4084156 m!4691233))

(assert (=> b!4084154 m!4691217))

(assert (=> b!4084154 m!4691229))

(assert (=> b!4084154 m!4691229))

(assert (=> b!4084154 m!4691231))

(assert (=> b!4084154 m!4691231))

(declare-fun m!4691235 () Bool)

(assert (=> b!4084154 m!4691235))

(declare-fun m!4691237 () Bool)

(assert (=> d!1212790 m!4691237))

(assert (=> d!1212790 m!4691083))

(assert (=> d!1212790 m!4691085))

(declare-fun m!4691239 () Bool)

(assert (=> d!1212790 m!4691239))

(declare-fun m!4691241 () Bool)

(assert (=> b!4084155 m!4691241))

(declare-fun m!4691243 () Bool)

(assert (=> bm!288736 m!4691243))

(assert (=> b!4083977 d!1212790))

(declare-fun d!1212792 () Bool)

(declare-fun lt!1460946 () Int)

(assert (=> d!1212792 (>= lt!1460946 0)))

(declare-fun e!2534854 () Int)

(assert (=> d!1212792 (= lt!1460946 e!2534854)))

(declare-fun c!704111 () Bool)

(assert (=> d!1212792 (= c!704111 (is-Nil!43773 (_2!24492 (get!14356 lt!1460910))))))

(assert (=> d!1212792 (= (size!32694 (_2!24492 (get!14356 lt!1460910))) lt!1460946)))

(declare-fun b!4084161 () Bool)

(assert (=> b!4084161 (= e!2534854 0)))

(declare-fun b!4084162 () Bool)

(assert (=> b!4084162 (= e!2534854 (+ 1 (size!32694 (t!337952 (_2!24492 (get!14356 lt!1460910))))))))

(assert (= (and d!1212792 c!704111) b!4084161))

(assert (= (and d!1212792 (not c!704111)) b!4084162))

(declare-fun m!4691245 () Bool)

(assert (=> b!4084162 m!4691245))

(assert (=> b!4083976 d!1212792))

(assert (=> b!4083976 d!1212766))

(declare-fun d!1212794 () Bool)

(declare-fun lt!1460947 () Int)

(assert (=> d!1212794 (>= lt!1460947 0)))

(declare-fun e!2534855 () Int)

(assert (=> d!1212794 (= lt!1460947 e!2534855)))

(declare-fun c!704112 () Bool)

(assert (=> d!1212794 (= c!704112 (is-Nil!43773 input!3411))))

(assert (=> d!1212794 (= (size!32694 input!3411) lt!1460947)))

(declare-fun b!4084163 () Bool)

(assert (=> b!4084163 (= e!2534855 0)))

(declare-fun b!4084164 () Bool)

(assert (=> b!4084164 (= e!2534855 (+ 1 (size!32694 (t!337952 input!3411))))))

(assert (= (and d!1212794 c!704112) b!4084163))

(assert (= (and d!1212794 (not c!704112)) b!4084164))

(declare-fun m!4691247 () Bool)

(assert (=> b!4084164 m!4691247))

(assert (=> b!4083976 d!1212794))

(declare-fun d!1212796 () Bool)

(declare-fun res!1668756 () Bool)

(declare-fun e!2534860 () Bool)

(assert (=> d!1212796 (=> res!1668756 e!2534860)))

(assert (=> d!1212796 (= res!1668756 (is-Nil!43774 rules!3870))))

(assert (=> d!1212796 (= (noDuplicateTag!2766 thiss!26199 rules!3870 Nil!43778) e!2534860)))

(declare-fun b!4084169 () Bool)

(declare-fun e!2534861 () Bool)

(assert (=> b!4084169 (= e!2534860 e!2534861)))

(declare-fun res!1668757 () Bool)

(assert (=> b!4084169 (=> (not res!1668757) (not e!2534861))))

(declare-fun contains!8744 (List!43902 String!50247) Bool)

(assert (=> b!4084169 (= res!1668757 (not (contains!8744 Nil!43778 (tag!7929 (h!49194 rules!3870)))))))

(declare-fun b!4084170 () Bool)

(assert (=> b!4084170 (= e!2534861 (noDuplicateTag!2766 thiss!26199 (t!337953 rules!3870) (Cons!43778 (tag!7929 (h!49194 rules!3870)) Nil!43778)))))

(assert (= (and d!1212796 (not res!1668756)) b!4084169))

(assert (= (and b!4084169 res!1668757) b!4084170))

(declare-fun m!4691249 () Bool)

(assert (=> b!4084169 m!4691249))

(declare-fun m!4691251 () Bool)

(assert (=> b!4084170 m!4691251))

(assert (=> b!4083907 d!1212796))

(declare-fun d!1212798 () Bool)

(assert (=> d!1212798 true))

(declare-fun lambda!127856 () Int)

(declare-fun order!22963 () Int)

(declare-fun dynLambda!18681 (Int Int) Int)

(assert (=> d!1212798 (< (dynLambda!18672 order!22951 (toValue!9645 (transformation!7069 (h!49194 rules!3870)))) (dynLambda!18681 order!22963 lambda!127856))))

(declare-fun Forall2!1108 (Int) Bool)

(assert (=> d!1212798 (= (equivClasses!2930 (toChars!9504 (transformation!7069 (h!49194 rules!3870))) (toValue!9645 (transformation!7069 (h!49194 rules!3870)))) (Forall2!1108 lambda!127856))))

(declare-fun bs!592993 () Bool)

(assert (= bs!592993 d!1212798))

(declare-fun m!4691253 () Bool)

(assert (=> bs!592993 m!4691253))

(assert (=> b!4083829 d!1212798))

(declare-fun d!1212800 () Bool)

(assert (=> d!1212800 (= (isEmpty!26167 (tail!6364 p!2988)) (is-Nil!43773 (tail!6364 p!2988)))))

(assert (=> b!4083881 d!1212800))

(declare-fun d!1212802 () Bool)

(assert (=> d!1212802 (= (tail!6364 p!2988) (t!337952 p!2988))))

(assert (=> b!4083881 d!1212802))

(declare-fun d!1212804 () Bool)

(declare-fun c!704115 () Bool)

(assert (=> d!1212804 (= c!704115 (is-Node!13280 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))) (value!222120 lt!1460850)))))))

(declare-fun e!2534868 () Bool)

(assert (=> d!1212804 (= (inv!58452 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))) (value!222120 lt!1460850)))) e!2534868)))

(declare-fun b!4084181 () Bool)

(declare-fun inv!58456 (Conc!13280) Bool)

(assert (=> b!4084181 (= e!2534868 (inv!58456 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))) (value!222120 lt!1460850)))))))

(declare-fun b!4084182 () Bool)

(declare-fun e!2534869 () Bool)

(assert (=> b!4084182 (= e!2534868 e!2534869)))

(declare-fun res!1668762 () Bool)

(assert (=> b!4084182 (= res!1668762 (not (is-Leaf!20530 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))) (value!222120 lt!1460850))))))))

(assert (=> b!4084182 (=> res!1668762 e!2534869)))

(declare-fun b!4084183 () Bool)

(declare-fun inv!58457 (Conc!13280) Bool)

(assert (=> b!4084183 (= e!2534869 (inv!58457 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))) (value!222120 lt!1460850)))))))

(assert (= (and d!1212804 c!704115) b!4084181))

(assert (= (and d!1212804 (not c!704115)) b!4084182))

(assert (= (and b!4084182 (not res!1668762)) b!4084183))

(declare-fun m!4691255 () Bool)

(assert (=> b!4084181 m!4691255))

(declare-fun m!4691257 () Bool)

(assert (=> b!4084183 m!4691257))

(assert (=> b!4083817 d!1212804))

(declare-fun b!4084184 () Bool)

(declare-fun e!2534872 () Bool)

(declare-fun lt!1460948 () Bool)

(assert (=> b!4084184 (= e!2534872 (not lt!1460948))))

(declare-fun b!4084185 () Bool)

(declare-fun res!1668765 () Bool)

(declare-fun e!2534873 () Bool)

(assert (=> b!4084185 (=> res!1668765 e!2534873)))

(declare-fun e!2534871 () Bool)

(assert (=> b!4084185 (= res!1668765 e!2534871)))

(declare-fun res!1668769 () Bool)

(assert (=> b!4084185 (=> (not res!1668769) (not e!2534871))))

(assert (=> b!4084185 (= res!1668769 lt!1460948)))

(declare-fun b!4084186 () Bool)

(declare-fun res!1668763 () Bool)

(declare-fun e!2534870 () Bool)

(assert (=> b!4084186 (=> res!1668763 e!2534870)))

(assert (=> b!4084186 (= res!1668763 (not (isEmpty!26167 (tail!6364 (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460910))))))))))

(declare-fun b!4084187 () Bool)

(declare-fun res!1668770 () Bool)

(assert (=> b!4084187 (=> (not res!1668770) (not e!2534871))))

(declare-fun call!288742 () Bool)

(assert (=> b!4084187 (= res!1668770 (not call!288742))))

(declare-fun b!4084188 () Bool)

(declare-fun e!2534875 () Bool)

(assert (=> b!4084188 (= e!2534875 e!2534872)))

(declare-fun c!704117 () Bool)

(assert (=> b!4084188 (= c!704117 (is-EmptyLang!11974 (regex!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910))))))))

(declare-fun b!4084189 () Bool)

(declare-fun e!2534874 () Bool)

(assert (=> b!4084189 (= e!2534874 e!2534870)))

(declare-fun res!1668766 () Bool)

(assert (=> b!4084189 (=> res!1668766 e!2534870)))

(assert (=> b!4084189 (= res!1668766 call!288742)))

(declare-fun b!4084190 () Bool)

(assert (=> b!4084190 (= e!2534875 (= lt!1460948 call!288742))))

(declare-fun b!4084192 () Bool)

(declare-fun res!1668768 () Bool)

(assert (=> b!4084192 (=> (not res!1668768) (not e!2534871))))

(assert (=> b!4084192 (= res!1668768 (isEmpty!26167 (tail!6364 (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460910)))))))))

(declare-fun b!4084193 () Bool)

(declare-fun res!1668767 () Bool)

(assert (=> b!4084193 (=> res!1668767 e!2534873)))

(assert (=> b!4084193 (= res!1668767 (not (is-ElementMatch!11974 (regex!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910)))))))))

(assert (=> b!4084193 (= e!2534872 e!2534873)))

(declare-fun b!4084194 () Bool)

(assert (=> b!4084194 (= e!2534873 e!2534874)))

(declare-fun res!1668764 () Bool)

(assert (=> b!4084194 (=> (not res!1668764) (not e!2534874))))

(assert (=> b!4084194 (= res!1668764 (not lt!1460948))))

(declare-fun d!1212806 () Bool)

(assert (=> d!1212806 e!2534875))

(declare-fun c!704116 () Bool)

(assert (=> d!1212806 (= c!704116 (is-EmptyExpr!11974 (regex!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910))))))))

(declare-fun e!2534876 () Bool)

(assert (=> d!1212806 (= lt!1460948 e!2534876)))

(declare-fun c!704118 () Bool)

(assert (=> d!1212806 (= c!704118 (isEmpty!26167 (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460910))))))))

(assert (=> d!1212806 (validRegex!5419 (regex!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910)))))))

(assert (=> d!1212806 (= (matchR!5915 (regex!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910)))) (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460910))))) lt!1460948)))

(declare-fun b!4084191 () Bool)

(assert (=> b!4084191 (= e!2534876 (matchR!5915 (derivativeStep!3620 (regex!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910)))) (head!8630 (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460910)))))) (tail!6364 (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460910)))))))))

(declare-fun b!4084195 () Bool)

(assert (=> b!4084195 (= e!2534871 (= (head!8630 (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460910))))) (c!704059 (regex!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910)))))))))

(declare-fun b!4084196 () Bool)

(assert (=> b!4084196 (= e!2534870 (not (= (head!8630 (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460910))))) (c!704059 (regex!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910))))))))))

(declare-fun b!4084197 () Bool)

(assert (=> b!4084197 (= e!2534876 (nullable!4219 (regex!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910))))))))

(declare-fun bm!288737 () Bool)

(assert (=> bm!288737 (= call!288742 (isEmpty!26167 (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460910))))))))

(assert (= (and d!1212806 c!704118) b!4084197))

(assert (= (and d!1212806 (not c!704118)) b!4084191))

(assert (= (and d!1212806 c!704116) b!4084190))

(assert (= (and d!1212806 (not c!704116)) b!4084188))

(assert (= (and b!4084188 c!704117) b!4084184))

(assert (= (and b!4084188 (not c!704117)) b!4084193))

(assert (= (and b!4084193 (not res!1668767)) b!4084185))

(assert (= (and b!4084185 res!1668769) b!4084187))

(assert (= (and b!4084187 res!1668770) b!4084192))

(assert (= (and b!4084192 res!1668768) b!4084195))

(assert (= (and b!4084185 (not res!1668765)) b!4084194))

(assert (= (and b!4084194 res!1668764) b!4084189))

(assert (= (and b!4084189 (not res!1668766)) b!4084186))

(assert (= (and b!4084186 (not res!1668763)) b!4084196))

(assert (= (or b!4084190 b!4084187 b!4084189) bm!288737))

(assert (=> b!4084186 m!4691075))

(declare-fun m!4691259 () Bool)

(assert (=> b!4084186 m!4691259))

(assert (=> b!4084186 m!4691259))

(declare-fun m!4691261 () Bool)

(assert (=> b!4084186 m!4691261))

(assert (=> d!1212806 m!4691075))

(declare-fun m!4691263 () Bool)

(assert (=> d!1212806 m!4691263))

(declare-fun m!4691265 () Bool)

(assert (=> d!1212806 m!4691265))

(assert (=> b!4084196 m!4691075))

(declare-fun m!4691267 () Bool)

(assert (=> b!4084196 m!4691267))

(assert (=> bm!288737 m!4691075))

(assert (=> bm!288737 m!4691263))

(assert (=> b!4084195 m!4691075))

(assert (=> b!4084195 m!4691267))

(assert (=> b!4084191 m!4691075))

(assert (=> b!4084191 m!4691267))

(assert (=> b!4084191 m!4691267))

(declare-fun m!4691269 () Bool)

(assert (=> b!4084191 m!4691269))

(assert (=> b!4084191 m!4691075))

(assert (=> b!4084191 m!4691259))

(assert (=> b!4084191 m!4691269))

(assert (=> b!4084191 m!4691259))

(declare-fun m!4691271 () Bool)

(assert (=> b!4084191 m!4691271))

(declare-fun m!4691273 () Bool)

(assert (=> b!4084197 m!4691273))

(assert (=> b!4084192 m!4691075))

(assert (=> b!4084192 m!4691259))

(assert (=> b!4084192 m!4691259))

(assert (=> b!4084192 m!4691261))

(assert (=> b!4083975 d!1212806))

(assert (=> b!4083975 d!1212766))

(assert (=> b!4083975 d!1212784))

(assert (=> b!4083975 d!1212786))

(declare-fun d!1212808 () Bool)

(declare-fun isBalanced!3697 (Conc!13280) Bool)

(assert (=> d!1212808 (= (inv!58453 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))) (value!222120 lt!1460850))) (isBalanced!3697 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))) (value!222120 lt!1460850)))))))

(declare-fun bs!592994 () Bool)

(assert (= bs!592994 d!1212808))

(declare-fun m!4691275 () Bool)

(assert (=> bs!592994 m!4691275))

(assert (=> tb!245281 d!1212808))

(declare-fun bs!592995 () Bool)

(declare-fun d!1212810 () Bool)

(assert (= bs!592995 (and d!1212810 d!1212738)))

(declare-fun lambda!127859 () Int)

(assert (=> bs!592995 (= lambda!127859 lambda!127850)))

(assert (=> d!1212810 true))

(assert (=> d!1212810 (< (dynLambda!18674 order!22955 (toChars!9504 (transformation!7069 r!4213))) (dynLambda!18673 order!22953 lambda!127859))))

(assert (=> d!1212810 true))

(assert (=> d!1212810 (< (dynLambda!18672 order!22951 (toValue!9645 (transformation!7069 r!4213))) (dynLambda!18673 order!22953 lambda!127859))))

(declare-fun Forall!1508 (Int) Bool)

(assert (=> d!1212810 (= (semiInverseModEq!3031 (toChars!9504 (transformation!7069 r!4213)) (toValue!9645 (transformation!7069 r!4213))) (Forall!1508 lambda!127859))))

(declare-fun bs!592996 () Bool)

(assert (= bs!592996 d!1212810))

(declare-fun m!4691277 () Bool)

(assert (=> bs!592996 m!4691277))

(assert (=> d!1212704 d!1212810))

(declare-fun d!1212812 () Bool)

(declare-fun lt!1460949 () Bool)

(assert (=> d!1212812 (= lt!1460949 (set.member (rule!10193 (_1!24492 (get!14356 lt!1460910))) (content!6724 rules!3870)))))

(declare-fun e!2534877 () Bool)

(assert (=> d!1212812 (= lt!1460949 e!2534877)))

(declare-fun res!1668772 () Bool)

(assert (=> d!1212812 (=> (not res!1668772) (not e!2534877))))

(assert (=> d!1212812 (= res!1668772 (is-Cons!43774 rules!3870))))

(assert (=> d!1212812 (= (contains!8742 rules!3870 (rule!10193 (_1!24492 (get!14356 lt!1460910)))) lt!1460949)))

(declare-fun b!4084202 () Bool)

(declare-fun e!2534878 () Bool)

(assert (=> b!4084202 (= e!2534877 e!2534878)))

(declare-fun res!1668771 () Bool)

(assert (=> b!4084202 (=> res!1668771 e!2534878)))

(assert (=> b!4084202 (= res!1668771 (= (h!49194 rules!3870) (rule!10193 (_1!24492 (get!14356 lt!1460910)))))))

(declare-fun b!4084203 () Bool)

(assert (=> b!4084203 (= e!2534878 (contains!8742 (t!337953 rules!3870) (rule!10193 (_1!24492 (get!14356 lt!1460910)))))))

(assert (= (and d!1212812 res!1668772) b!4084202))

(assert (= (and b!4084202 (not res!1668771)) b!4084203))

(assert (=> d!1212812 m!4691001))

(declare-fun m!4691279 () Bool)

(assert (=> d!1212812 m!4691279))

(declare-fun m!4691281 () Bool)

(assert (=> b!4084203 m!4691281))

(assert (=> b!4083979 d!1212812))

(assert (=> b!4083979 d!1212766))

(declare-fun d!1212814 () Bool)

(declare-fun nullableFct!1179 (Regex!11974) Bool)

(assert (=> d!1212814 (= (nullable!4219 (regex!7069 r!4213)) (nullableFct!1179 (regex!7069 r!4213)))))

(declare-fun bs!592997 () Bool)

(assert (= bs!592997 d!1212814))

(declare-fun m!4691283 () Bool)

(assert (=> bs!592997 m!4691283))

(assert (=> b!4083897 d!1212814))

(declare-fun d!1212816 () Bool)

(assert (=> d!1212816 (= (isEmpty!26167 (originalCharacters!7663 lt!1460850)) (is-Nil!43773 (originalCharacters!7663 lt!1460850)))))

(assert (=> d!1212690 d!1212816))

(declare-fun d!1212818 () Bool)

(declare-fun c!704121 () Bool)

(assert (=> d!1212818 (= c!704121 (is-Nil!43773 lt!1460880))))

(declare-fun e!2534881 () (Set C!24134))

(assert (=> d!1212818 (= (content!6725 lt!1460880) e!2534881)))

(declare-fun b!4084208 () Bool)

(assert (=> b!4084208 (= e!2534881 (as set.empty (Set C!24134)))))

(declare-fun b!4084209 () Bool)

(assert (=> b!4084209 (= e!2534881 (set.union (set.insert (h!49193 lt!1460880) (as set.empty (Set C!24134))) (content!6725 (t!337952 lt!1460880))))))

(assert (= (and d!1212818 c!704121) b!4084208))

(assert (= (and d!1212818 (not c!704121)) b!4084209))

(declare-fun m!4691285 () Bool)

(assert (=> b!4084209 m!4691285))

(declare-fun m!4691287 () Bool)

(assert (=> b!4084209 m!4691287))

(assert (=> d!1212726 d!1212818))

(declare-fun d!1212820 () Bool)

(declare-fun c!704122 () Bool)

(assert (=> d!1212820 (= c!704122 (is-Nil!43773 p!2988))))

(declare-fun e!2534882 () (Set C!24134))

(assert (=> d!1212820 (= (content!6725 p!2988) e!2534882)))

(declare-fun b!4084210 () Bool)

(assert (=> b!4084210 (= e!2534882 (as set.empty (Set C!24134)))))

(declare-fun b!4084211 () Bool)

(assert (=> b!4084211 (= e!2534882 (set.union (set.insert (h!49193 p!2988) (as set.empty (Set C!24134))) (content!6725 (t!337952 p!2988))))))

(assert (= (and d!1212820 c!704122) b!4084210))

(assert (= (and d!1212820 (not c!704122)) b!4084211))

(declare-fun m!4691289 () Bool)

(assert (=> b!4084211 m!4691289))

(assert (=> b!4084211 m!4691171))

(assert (=> d!1212726 d!1212820))

(declare-fun d!1212822 () Bool)

(declare-fun c!704123 () Bool)

(assert (=> d!1212822 (= c!704123 (is-Nil!43773 suffix!1518))))

(declare-fun e!2534883 () (Set C!24134))

(assert (=> d!1212822 (= (content!6725 suffix!1518) e!2534883)))

(declare-fun b!4084212 () Bool)

(assert (=> b!4084212 (= e!2534883 (as set.empty (Set C!24134)))))

(declare-fun b!4084213 () Bool)

(assert (=> b!4084213 (= e!2534883 (set.union (set.insert (h!49193 suffix!1518) (as set.empty (Set C!24134))) (content!6725 (t!337952 suffix!1518))))))

(assert (= (and d!1212822 c!704123) b!4084212))

(assert (= (and d!1212822 (not c!704123)) b!4084213))

(declare-fun m!4691291 () Bool)

(assert (=> b!4084213 m!4691291))

(declare-fun m!4691293 () Bool)

(assert (=> b!4084213 m!4691293))

(assert (=> d!1212726 d!1212822))

(declare-fun bs!592998 () Bool)

(declare-fun d!1212824 () Bool)

(assert (= bs!592998 (and d!1212824 d!1212798)))

(declare-fun lambda!127860 () Int)

(assert (=> bs!592998 (= (= (toValue!9645 (transformation!7069 r!4213)) (toValue!9645 (transformation!7069 (h!49194 rules!3870)))) (= lambda!127860 lambda!127856))))

(assert (=> d!1212824 true))

(assert (=> d!1212824 (< (dynLambda!18672 order!22951 (toValue!9645 (transformation!7069 r!4213))) (dynLambda!18681 order!22963 lambda!127860))))

(assert (=> d!1212824 (= (equivClasses!2930 (toChars!9504 (transformation!7069 r!4213)) (toValue!9645 (transformation!7069 r!4213))) (Forall2!1108 lambda!127860))))

(declare-fun bs!592999 () Bool)

(assert (= bs!592999 d!1212824))

(declare-fun m!4691295 () Bool)

(assert (=> bs!592999 m!4691295))

(assert (=> b!4083834 d!1212824))

(assert (=> d!1212720 d!1212718))

(declare-fun d!1212826 () Bool)

(assert (=> d!1212826 (ruleValid!2989 thiss!26199 r!4213)))

(assert (=> d!1212826 true))

(declare-fun _$65!1555 () Unit!63298)

(assert (=> d!1212826 (= (choose!24931 thiss!26199 r!4213 rules!3870) _$65!1555)))

(declare-fun bs!593000 () Bool)

(assert (= bs!593000 d!1212826))

(assert (=> bs!593000 m!4690889))

(assert (=> d!1212720 d!1212826))

(assert (=> d!1212720 d!1212722))

(declare-fun b!4084232 () Bool)

(declare-fun e!2534904 () Bool)

(declare-fun e!2534900 () Bool)

(assert (=> b!4084232 (= e!2534904 e!2534900)))

(declare-fun res!1668784 () Bool)

(assert (=> b!4084232 (=> (not res!1668784) (not e!2534900))))

(declare-fun call!288751 () Bool)

(assert (=> b!4084232 (= res!1668784 call!288751)))

(declare-fun b!4084233 () Bool)

(declare-fun e!2534898 () Bool)

(declare-fun call!288750 () Bool)

(assert (=> b!4084233 (= e!2534898 call!288750)))

(declare-fun bm!288744 () Bool)

(assert (=> bm!288744 (= call!288751 call!288750)))

(declare-fun d!1212828 () Bool)

(declare-fun res!1668783 () Bool)

(declare-fun e!2534901 () Bool)

(assert (=> d!1212828 (=> res!1668783 e!2534901)))

(assert (=> d!1212828 (= res!1668783 (is-ElementMatch!11974 (regex!7069 r!4213)))))

(assert (=> d!1212828 (= (validRegex!5419 (regex!7069 r!4213)) e!2534901)))

(declare-fun b!4084234 () Bool)

(declare-fun e!2534902 () Bool)

(declare-fun e!2534903 () Bool)

(assert (=> b!4084234 (= e!2534902 e!2534903)))

(declare-fun c!704129 () Bool)

(assert (=> b!4084234 (= c!704129 (is-Union!11974 (regex!7069 r!4213)))))

(declare-fun b!4084235 () Bool)

(declare-fun res!1668787 () Bool)

(declare-fun e!2534899 () Bool)

(assert (=> b!4084235 (=> (not res!1668787) (not e!2534899))))

(assert (=> b!4084235 (= res!1668787 call!288751)))

(assert (=> b!4084235 (= e!2534903 e!2534899)))

(declare-fun bm!288745 () Bool)

(declare-fun c!704128 () Bool)

(assert (=> bm!288745 (= call!288750 (validRegex!5419 (ite c!704128 (reg!12303 (regex!7069 r!4213)) (ite c!704129 (regOne!24461 (regex!7069 r!4213)) (regOne!24460 (regex!7069 r!4213))))))))

(declare-fun b!4084236 () Bool)

(assert (=> b!4084236 (= e!2534902 e!2534898)))

(declare-fun res!1668786 () Bool)

(assert (=> b!4084236 (= res!1668786 (not (nullable!4219 (reg!12303 (regex!7069 r!4213)))))))

(assert (=> b!4084236 (=> (not res!1668786) (not e!2534898))))

(declare-fun b!4084237 () Bool)

(declare-fun res!1668785 () Bool)

(assert (=> b!4084237 (=> res!1668785 e!2534904)))

(assert (=> b!4084237 (= res!1668785 (not (is-Concat!19274 (regex!7069 r!4213))))))

(assert (=> b!4084237 (= e!2534903 e!2534904)))

(declare-fun bm!288746 () Bool)

(declare-fun call!288749 () Bool)

(assert (=> bm!288746 (= call!288749 (validRegex!5419 (ite c!704129 (regTwo!24461 (regex!7069 r!4213)) (regTwo!24460 (regex!7069 r!4213)))))))

(declare-fun b!4084238 () Bool)

(assert (=> b!4084238 (= e!2534901 e!2534902)))

(assert (=> b!4084238 (= c!704128 (is-Star!11974 (regex!7069 r!4213)))))

(declare-fun b!4084239 () Bool)

(assert (=> b!4084239 (= e!2534900 call!288749)))

(declare-fun b!4084240 () Bool)

(assert (=> b!4084240 (= e!2534899 call!288749)))

(assert (= (and d!1212828 (not res!1668783)) b!4084238))

(assert (= (and b!4084238 c!704128) b!4084236))

(assert (= (and b!4084238 (not c!704128)) b!4084234))

(assert (= (and b!4084236 res!1668786) b!4084233))

(assert (= (and b!4084234 c!704129) b!4084235))

(assert (= (and b!4084234 (not c!704129)) b!4084237))

(assert (= (and b!4084235 res!1668787) b!4084240))

(assert (= (and b!4084237 (not res!1668785)) b!4084232))

(assert (= (and b!4084232 res!1668784) b!4084239))

(assert (= (or b!4084240 b!4084239) bm!288746))

(assert (= (or b!4084235 b!4084232) bm!288744))

(assert (= (or b!4084233 bm!288744) bm!288745))

(declare-fun m!4691297 () Bool)

(assert (=> bm!288745 m!4691297))

(declare-fun m!4691299 () Bool)

(assert (=> b!4084236 m!4691299))

(declare-fun m!4691301 () Bool)

(assert (=> bm!288746 m!4691301))

(assert (=> d!1212718 d!1212828))

(assert (=> b!4083887 d!1212800))

(assert (=> b!4083887 d!1212802))

(assert (=> d!1212708 d!1212694))

(assert (=> d!1212708 d!1212828))

(declare-fun d!1212830 () Bool)

(declare-fun lt!1460950 () Int)

(assert (=> d!1212830 (>= lt!1460950 0)))

(declare-fun e!2534905 () Int)

(assert (=> d!1212830 (= lt!1460950 e!2534905)))

(declare-fun c!704130 () Bool)

(assert (=> d!1212830 (= c!704130 (is-Nil!43773 (t!337952 p!2988)))))

(assert (=> d!1212830 (= (size!32694 (t!337952 p!2988)) lt!1460950)))

(declare-fun b!4084241 () Bool)

(assert (=> b!4084241 (= e!2534905 0)))

(declare-fun b!4084242 () Bool)

(assert (=> b!4084242 (= e!2534905 (+ 1 (size!32694 (t!337952 (t!337952 p!2988)))))))

(assert (= (and d!1212830 c!704130) b!4084241))

(assert (= (and d!1212830 (not c!704130)) b!4084242))

(declare-fun m!4691303 () Bool)

(assert (=> b!4084242 m!4691303))

(assert (=> b!4083985 d!1212830))

(declare-fun d!1212832 () Bool)

(assert (=> d!1212832 (= (inv!58453 (dynLambda!18671 (toChars!9504 (transformation!7069 r!4213)) (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851))) (isBalanced!3697 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 r!4213)) (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851)))))))

(declare-fun bs!593001 () Bool)

(assert (= bs!593001 d!1212832))

(declare-fun m!4691305 () Bool)

(assert (=> bs!593001 m!4691305))

(assert (=> tb!245289 d!1212832))

(declare-fun b!4084243 () Bool)

(declare-fun e!2534908 () Bool)

(declare-fun lt!1460951 () Bool)

(assert (=> b!4084243 (= e!2534908 (not lt!1460951))))

(declare-fun b!4084244 () Bool)

(declare-fun res!1668790 () Bool)

(declare-fun e!2534909 () Bool)

(assert (=> b!4084244 (=> res!1668790 e!2534909)))

(declare-fun e!2534907 () Bool)

(assert (=> b!4084244 (= res!1668790 e!2534907)))

(declare-fun res!1668794 () Bool)

(assert (=> b!4084244 (=> (not res!1668794) (not e!2534907))))

(assert (=> b!4084244 (= res!1668794 lt!1460951)))

(declare-fun b!4084245 () Bool)

(declare-fun res!1668788 () Bool)

(declare-fun e!2534906 () Bool)

(assert (=> b!4084245 (=> res!1668788 e!2534906)))

(assert (=> b!4084245 (= res!1668788 (not (isEmpty!26167 (tail!6364 (tail!6364 p!2988)))))))

(declare-fun b!4084246 () Bool)

(declare-fun res!1668795 () Bool)

(assert (=> b!4084246 (=> (not res!1668795) (not e!2534907))))

(declare-fun call!288752 () Bool)

(assert (=> b!4084246 (= res!1668795 (not call!288752))))

(declare-fun b!4084247 () Bool)

(declare-fun e!2534911 () Bool)

(assert (=> b!4084247 (= e!2534911 e!2534908)))

(declare-fun c!704132 () Bool)

(assert (=> b!4084247 (= c!704132 (is-EmptyLang!11974 (derivativeStep!3620 (regex!7069 r!4213) (head!8630 p!2988))))))

(declare-fun b!4084248 () Bool)

(declare-fun e!2534910 () Bool)

(assert (=> b!4084248 (= e!2534910 e!2534906)))

(declare-fun res!1668791 () Bool)

(assert (=> b!4084248 (=> res!1668791 e!2534906)))

(assert (=> b!4084248 (= res!1668791 call!288752)))

(declare-fun b!4084249 () Bool)

(assert (=> b!4084249 (= e!2534911 (= lt!1460951 call!288752))))

(declare-fun b!4084251 () Bool)

(declare-fun res!1668793 () Bool)

(assert (=> b!4084251 (=> (not res!1668793) (not e!2534907))))

(assert (=> b!4084251 (= res!1668793 (isEmpty!26167 (tail!6364 (tail!6364 p!2988))))))

(declare-fun b!4084252 () Bool)

(declare-fun res!1668792 () Bool)

(assert (=> b!4084252 (=> res!1668792 e!2534909)))

(assert (=> b!4084252 (= res!1668792 (not (is-ElementMatch!11974 (derivativeStep!3620 (regex!7069 r!4213) (head!8630 p!2988)))))))

(assert (=> b!4084252 (= e!2534908 e!2534909)))

(declare-fun b!4084253 () Bool)

(assert (=> b!4084253 (= e!2534909 e!2534910)))

(declare-fun res!1668789 () Bool)

(assert (=> b!4084253 (=> (not res!1668789) (not e!2534910))))

(assert (=> b!4084253 (= res!1668789 (not lt!1460951))))

(declare-fun d!1212834 () Bool)

(assert (=> d!1212834 e!2534911))

(declare-fun c!704131 () Bool)

(assert (=> d!1212834 (= c!704131 (is-EmptyExpr!11974 (derivativeStep!3620 (regex!7069 r!4213) (head!8630 p!2988))))))

(declare-fun e!2534912 () Bool)

(assert (=> d!1212834 (= lt!1460951 e!2534912)))

(declare-fun c!704133 () Bool)

(assert (=> d!1212834 (= c!704133 (isEmpty!26167 (tail!6364 p!2988)))))

(assert (=> d!1212834 (validRegex!5419 (derivativeStep!3620 (regex!7069 r!4213) (head!8630 p!2988)))))

(assert (=> d!1212834 (= (matchR!5915 (derivativeStep!3620 (regex!7069 r!4213) (head!8630 p!2988)) (tail!6364 p!2988)) lt!1460951)))

(declare-fun b!4084250 () Bool)

(assert (=> b!4084250 (= e!2534912 (matchR!5915 (derivativeStep!3620 (derivativeStep!3620 (regex!7069 r!4213) (head!8630 p!2988)) (head!8630 (tail!6364 p!2988))) (tail!6364 (tail!6364 p!2988))))))

(declare-fun b!4084254 () Bool)

(assert (=> b!4084254 (= e!2534907 (= (head!8630 (tail!6364 p!2988)) (c!704059 (derivativeStep!3620 (regex!7069 r!4213) (head!8630 p!2988)))))))

(declare-fun b!4084255 () Bool)

(assert (=> b!4084255 (= e!2534906 (not (= (head!8630 (tail!6364 p!2988)) (c!704059 (derivativeStep!3620 (regex!7069 r!4213) (head!8630 p!2988))))))))

(declare-fun b!4084256 () Bool)

(assert (=> b!4084256 (= e!2534912 (nullable!4219 (derivativeStep!3620 (regex!7069 r!4213) (head!8630 p!2988))))))

(declare-fun bm!288747 () Bool)

(assert (=> bm!288747 (= call!288752 (isEmpty!26167 (tail!6364 p!2988)))))

(assert (= (and d!1212834 c!704133) b!4084256))

(assert (= (and d!1212834 (not c!704133)) b!4084250))

(assert (= (and d!1212834 c!704131) b!4084249))

(assert (= (and d!1212834 (not c!704131)) b!4084247))

(assert (= (and b!4084247 c!704132) b!4084243))

(assert (= (and b!4084247 (not c!704132)) b!4084252))

(assert (= (and b!4084252 (not res!1668792)) b!4084244))

(assert (= (and b!4084244 res!1668794) b!4084246))

(assert (= (and b!4084246 res!1668795) b!4084251))

(assert (= (and b!4084251 res!1668793) b!4084254))

(assert (= (and b!4084244 (not res!1668790)) b!4084253))

(assert (= (and b!4084253 res!1668789) b!4084248))

(assert (= (and b!4084248 (not res!1668791)) b!4084245))

(assert (= (and b!4084245 (not res!1668788)) b!4084255))

(assert (= (or b!4084249 b!4084246 b!4084248) bm!288747))

(assert (=> b!4084245 m!4690985))

(declare-fun m!4691307 () Bool)

(assert (=> b!4084245 m!4691307))

(assert (=> b!4084245 m!4691307))

(declare-fun m!4691309 () Bool)

(assert (=> b!4084245 m!4691309))

(assert (=> d!1212834 m!4690985))

(assert (=> d!1212834 m!4690987))

(assert (=> d!1212834 m!4690993))

(declare-fun m!4691311 () Bool)

(assert (=> d!1212834 m!4691311))

(assert (=> b!4084255 m!4690985))

(declare-fun m!4691313 () Bool)

(assert (=> b!4084255 m!4691313))

(assert (=> bm!288747 m!4690985))

(assert (=> bm!288747 m!4690987))

(assert (=> b!4084254 m!4690985))

(assert (=> b!4084254 m!4691313))

(assert (=> b!4084250 m!4690985))

(assert (=> b!4084250 m!4691313))

(assert (=> b!4084250 m!4690993))

(assert (=> b!4084250 m!4691313))

(declare-fun m!4691315 () Bool)

(assert (=> b!4084250 m!4691315))

(assert (=> b!4084250 m!4690985))

(assert (=> b!4084250 m!4691307))

(assert (=> b!4084250 m!4691315))

(assert (=> b!4084250 m!4691307))

(declare-fun m!4691317 () Bool)

(assert (=> b!4084250 m!4691317))

(assert (=> b!4084256 m!4690993))

(declare-fun m!4691319 () Bool)

(assert (=> b!4084256 m!4691319))

(assert (=> b!4084251 m!4690985))

(assert (=> b!4084251 m!4691307))

(assert (=> b!4084251 m!4691307))

(assert (=> b!4084251 m!4691309))

(assert (=> b!4083886 d!1212834))

(declare-fun d!1212836 () Bool)

(declare-fun lt!1460954 () Regex!11974)

(assert (=> d!1212836 (validRegex!5419 lt!1460954)))

(declare-fun e!2534924 () Regex!11974)

(assert (=> d!1212836 (= lt!1460954 e!2534924)))

(declare-fun c!704147 () Bool)

(assert (=> d!1212836 (= c!704147 (or (is-EmptyExpr!11974 (regex!7069 r!4213)) (is-EmptyLang!11974 (regex!7069 r!4213))))))

(assert (=> d!1212836 (validRegex!5419 (regex!7069 r!4213))))

(assert (=> d!1212836 (= (derivativeStep!3620 (regex!7069 r!4213) (head!8630 p!2988)) lt!1460954)))

(declare-fun b!4084277 () Bool)

(declare-fun e!2534925 () Regex!11974)

(declare-fun call!288764 () Regex!11974)

(assert (=> b!4084277 (= e!2534925 (Union!11974 (Concat!19274 call!288764 (regTwo!24460 (regex!7069 r!4213))) EmptyLang!11974))))

(declare-fun b!4084278 () Bool)

(declare-fun c!704146 () Bool)

(assert (=> b!4084278 (= c!704146 (is-Union!11974 (regex!7069 r!4213)))))

(declare-fun e!2534927 () Regex!11974)

(declare-fun e!2534923 () Regex!11974)

(assert (=> b!4084278 (= e!2534927 e!2534923)))

(declare-fun bm!288756 () Bool)

(declare-fun call!288763 () Regex!11974)

(declare-fun call!288761 () Regex!11974)

(assert (=> bm!288756 (= call!288763 call!288761)))

(declare-fun b!4084279 () Bool)

(assert (=> b!4084279 (= e!2534927 (ite (= (head!8630 p!2988) (c!704059 (regex!7069 r!4213))) EmptyExpr!11974 EmptyLang!11974))))

(declare-fun bm!288757 () Bool)

(declare-fun c!704144 () Bool)

(assert (=> bm!288757 (= call!288761 (derivativeStep!3620 (ite c!704146 (regTwo!24461 (regex!7069 r!4213)) (ite c!704144 (reg!12303 (regex!7069 r!4213)) (regOne!24460 (regex!7069 r!4213)))) (head!8630 p!2988)))))

(declare-fun b!4084280 () Bool)

(declare-fun c!704148 () Bool)

(assert (=> b!4084280 (= c!704148 (nullable!4219 (regOne!24460 (regex!7069 r!4213))))))

(declare-fun e!2534926 () Regex!11974)

(assert (=> b!4084280 (= e!2534926 e!2534925)))

(declare-fun b!4084281 () Bool)

(assert (=> b!4084281 (= e!2534924 e!2534927)))

(declare-fun c!704145 () Bool)

(assert (=> b!4084281 (= c!704145 (is-ElementMatch!11974 (regex!7069 r!4213)))))

(declare-fun b!4084282 () Bool)

(declare-fun call!288762 () Regex!11974)

(assert (=> b!4084282 (= e!2534923 (Union!11974 call!288762 call!288761))))

(declare-fun b!4084283 () Bool)

(assert (=> b!4084283 (= e!2534924 EmptyLang!11974)))

(declare-fun b!4084284 () Bool)

(assert (=> b!4084284 (= e!2534925 (Union!11974 (Concat!19274 call!288764 (regTwo!24460 (regex!7069 r!4213))) call!288762))))

(declare-fun bm!288758 () Bool)

(assert (=> bm!288758 (= call!288762 (derivativeStep!3620 (ite c!704146 (regOne!24461 (regex!7069 r!4213)) (regTwo!24460 (regex!7069 r!4213))) (head!8630 p!2988)))))

(declare-fun b!4084285 () Bool)

(assert (=> b!4084285 (= e!2534926 (Concat!19274 call!288763 (regex!7069 r!4213)))))

(declare-fun bm!288759 () Bool)

(assert (=> bm!288759 (= call!288764 call!288763)))

(declare-fun b!4084286 () Bool)

(assert (=> b!4084286 (= e!2534923 e!2534926)))

(assert (=> b!4084286 (= c!704144 (is-Star!11974 (regex!7069 r!4213)))))

(assert (= (and d!1212836 c!704147) b!4084283))

(assert (= (and d!1212836 (not c!704147)) b!4084281))

(assert (= (and b!4084281 c!704145) b!4084279))

(assert (= (and b!4084281 (not c!704145)) b!4084278))

(assert (= (and b!4084278 c!704146) b!4084282))

(assert (= (and b!4084278 (not c!704146)) b!4084286))

(assert (= (and b!4084286 c!704144) b!4084285))

(assert (= (and b!4084286 (not c!704144)) b!4084280))

(assert (= (and b!4084280 c!704148) b!4084284))

(assert (= (and b!4084280 (not c!704148)) b!4084277))

(assert (= (or b!4084284 b!4084277) bm!288759))

(assert (= (or b!4084285 bm!288759) bm!288756))

(assert (= (or b!4084282 b!4084284) bm!288758))

(assert (= (or b!4084282 bm!288756) bm!288757))

(declare-fun m!4691321 () Bool)

(assert (=> d!1212836 m!4691321))

(assert (=> d!1212836 m!4690989))

(assert (=> bm!288757 m!4690991))

(declare-fun m!4691323 () Bool)

(assert (=> bm!288757 m!4691323))

(declare-fun m!4691325 () Bool)

(assert (=> b!4084280 m!4691325))

(assert (=> bm!288758 m!4690991))

(declare-fun m!4691327 () Bool)

(assert (=> bm!288758 m!4691327))

(assert (=> b!4083886 d!1212836))

(declare-fun d!1212838 () Bool)

(assert (=> d!1212838 (= (head!8630 p!2988) (h!49193 p!2988))))

(assert (=> b!4083886 d!1212838))

(assert (=> b!4083886 d!1212802))

(declare-fun d!1212840 () Bool)

(assert (=> d!1212840 true))

(declare-fun lt!1460957 () Bool)

(assert (=> d!1212840 (= lt!1460957 (rulesValidInductive!2606 thiss!26199 rules!3870))))

(declare-fun lambda!127863 () Int)

(declare-fun forall!8405 (List!43898 Int) Bool)

(assert (=> d!1212840 (= lt!1460957 (forall!8405 rules!3870 lambda!127863))))

(assert (=> d!1212840 (= (rulesValid!2765 thiss!26199 rules!3870) lt!1460957)))

(declare-fun bs!593002 () Bool)

(assert (= bs!593002 d!1212840))

(assert (=> bs!593002 m!4691087))

(declare-fun m!4691329 () Bool)

(assert (=> bs!593002 m!4691329))

(assert (=> d!1212724 d!1212840))

(declare-fun b!4084299 () Bool)

(declare-fun e!2534935 () Bool)

(declare-fun inv!17 (TokenValue!7299) Bool)

(assert (=> b!4084299 (= e!2534935 (inv!17 (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851)))))

(declare-fun b!4084300 () Bool)

(declare-fun res!1668798 () Bool)

(declare-fun e!2534936 () Bool)

(assert (=> b!4084300 (=> res!1668798 e!2534936)))

(assert (=> b!4084300 (= res!1668798 (not (is-IntegerValue!21899 (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851))))))

(assert (=> b!4084300 (= e!2534935 e!2534936)))

(declare-fun b!4084301 () Bool)

(declare-fun inv!15 (TokenValue!7299) Bool)

(assert (=> b!4084301 (= e!2534936 (inv!15 (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851)))))

(declare-fun b!4084302 () Bool)

(declare-fun e!2534934 () Bool)

(assert (=> b!4084302 (= e!2534934 e!2534935)))

(declare-fun c!704154 () Bool)

(assert (=> b!4084302 (= c!704154 (is-IntegerValue!21898 (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851)))))

(declare-fun d!1212842 () Bool)

(declare-fun c!704153 () Bool)

(assert (=> d!1212842 (= c!704153 (is-IntegerValue!21897 (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851)))))

(assert (=> d!1212842 (= (inv!21 (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851)) e!2534934)))

(declare-fun b!4084303 () Bool)

(declare-fun inv!16 (TokenValue!7299) Bool)

(assert (=> b!4084303 (= e!2534934 (inv!16 (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851)))))

(assert (= (and d!1212842 c!704153) b!4084303))

(assert (= (and d!1212842 (not c!704153)) b!4084302))

(assert (= (and b!4084302 c!704154) b!4084299))

(assert (= (and b!4084302 (not c!704154)) b!4084300))

(assert (= (and b!4084300 (not res!1668798)) b!4084301))

(declare-fun m!4691331 () Bool)

(assert (=> b!4084299 m!4691331))

(declare-fun m!4691333 () Bool)

(assert (=> b!4084301 m!4691333))

(declare-fun m!4691335 () Bool)

(assert (=> b!4084303 m!4691335))

(assert (=> tb!245293 d!1212842))

(assert (=> b!4083891 d!1212838))

(declare-fun d!1212844 () Bool)

(assert (=> d!1212844 (= (list!16259 (dynLambda!18671 (toChars!9504 (transformation!7069 r!4213)) (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851))) (list!16261 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 r!4213)) (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851)))))))

(declare-fun bs!593003 () Bool)

(assert (= bs!593003 d!1212844))

(declare-fun m!4691337 () Bool)

(assert (=> bs!593003 m!4691337))

(assert (=> d!1212738 d!1212844))

(declare-fun d!1212846 () Bool)

(assert (=> d!1212846 (= (list!16259 lt!1460851) (list!16261 (c!704060 lt!1460851)))))

(declare-fun bs!593004 () Bool)

(assert (= bs!593004 d!1212846))

(declare-fun m!4691339 () Bool)

(assert (=> bs!593004 m!4691339))

(assert (=> d!1212738 d!1212846))

(declare-fun d!1212848 () Bool)

(declare-fun dynLambda!18682 (Int BalanceConc!26154) Bool)

(assert (=> d!1212848 (dynLambda!18682 lambda!127850 lt!1460851)))

(declare-fun lt!1460960 () Unit!63298)

(declare-fun choose!24933 (Int BalanceConc!26154) Unit!63298)

(assert (=> d!1212848 (= lt!1460960 (choose!24933 lambda!127850 lt!1460851))))

(assert (=> d!1212848 (Forall!1508 lambda!127850)))

(assert (=> d!1212848 (= (ForallOf!870 lambda!127850 lt!1460851) lt!1460960)))

(declare-fun b_lambda!119527 () Bool)

(assert (=> (not b_lambda!119527) (not d!1212848)))

(declare-fun bs!593005 () Bool)

(assert (= bs!593005 d!1212848))

(declare-fun m!4691341 () Bool)

(assert (=> bs!593005 m!4691341))

(declare-fun m!4691343 () Bool)

(assert (=> bs!593005 m!4691343))

(declare-fun m!4691345 () Bool)

(assert (=> bs!593005 m!4691345))

(assert (=> d!1212738 d!1212848))

(assert (=> b!4083890 d!1212838))

(declare-fun d!1212850 () Bool)

(assert (=> d!1212850 (= (isEmpty!26170 lt!1460910) (not (is-Some!9474 lt!1460910)))))

(assert (=> d!1212728 d!1212850))

(declare-fun b!4084312 () Bool)

(declare-fun e!2534945 () Bool)

(declare-fun e!2534943 () Bool)

(assert (=> b!4084312 (= e!2534945 e!2534943)))

(declare-fun res!1668810 () Bool)

(assert (=> b!4084312 (=> (not res!1668810) (not e!2534943))))

(assert (=> b!4084312 (= res!1668810 (not (is-Nil!43773 input!3411)))))

(declare-fun d!1212852 () Bool)

(declare-fun e!2534944 () Bool)

(assert (=> d!1212852 e!2534944))

(declare-fun res!1668809 () Bool)

(assert (=> d!1212852 (=> res!1668809 e!2534944)))

(declare-fun lt!1460963 () Bool)

(assert (=> d!1212852 (= res!1668809 (not lt!1460963))))

(assert (=> d!1212852 (= lt!1460963 e!2534945)))

(declare-fun res!1668808 () Bool)

(assert (=> d!1212852 (=> res!1668808 e!2534945)))

(assert (=> d!1212852 (= res!1668808 (is-Nil!43773 input!3411))))

(assert (=> d!1212852 (= (isPrefix!4124 input!3411 input!3411) lt!1460963)))

(declare-fun b!4084313 () Bool)

(declare-fun res!1668807 () Bool)

(assert (=> b!4084313 (=> (not res!1668807) (not e!2534943))))

(assert (=> b!4084313 (= res!1668807 (= (head!8630 input!3411) (head!8630 input!3411)))))

(declare-fun b!4084314 () Bool)

(assert (=> b!4084314 (= e!2534943 (isPrefix!4124 (tail!6364 input!3411) (tail!6364 input!3411)))))

(declare-fun b!4084315 () Bool)

(assert (=> b!4084315 (= e!2534944 (>= (size!32694 input!3411) (size!32694 input!3411)))))

(assert (= (and d!1212852 (not res!1668808)) b!4084312))

(assert (= (and b!4084312 res!1668810) b!4084313))

(assert (= (and b!4084313 res!1668807) b!4084314))

(assert (= (and d!1212852 (not res!1668809)) b!4084315))

(declare-fun m!4691347 () Bool)

(assert (=> b!4084313 m!4691347))

(assert (=> b!4084313 m!4691347))

(declare-fun m!4691349 () Bool)

(assert (=> b!4084314 m!4691349))

(assert (=> b!4084314 m!4691349))

(assert (=> b!4084314 m!4691349))

(assert (=> b!4084314 m!4691349))

(declare-fun m!4691351 () Bool)

(assert (=> b!4084314 m!4691351))

(assert (=> b!4084315 m!4691071))

(assert (=> b!4084315 m!4691071))

(assert (=> d!1212728 d!1212852))

(declare-fun d!1212854 () Bool)

(assert (=> d!1212854 (isPrefix!4124 input!3411 input!3411)))

(declare-fun lt!1460966 () Unit!63298)

(declare-fun choose!24934 (List!43897 List!43897) Unit!63298)

(assert (=> d!1212854 (= lt!1460966 (choose!24934 input!3411 input!3411))))

(assert (=> d!1212854 (= (lemmaIsPrefixRefl!2675 input!3411 input!3411) lt!1460966)))

(declare-fun bs!593006 () Bool)

(assert (= bs!593006 d!1212854))

(assert (=> bs!593006 m!4691083))

(declare-fun m!4691353 () Bool)

(assert (=> bs!593006 m!4691353))

(assert (=> d!1212728 d!1212854))

(declare-fun bs!593007 () Bool)

(declare-fun d!1212856 () Bool)

(assert (= bs!593007 (and d!1212856 d!1212840)))

(declare-fun lambda!127866 () Int)

(assert (=> bs!593007 (= lambda!127866 lambda!127863)))

(assert (=> d!1212856 true))

(declare-fun lt!1460969 () Bool)

(assert (=> d!1212856 (= lt!1460969 (forall!8405 rules!3870 lambda!127866))))

(declare-fun e!2534950 () Bool)

(assert (=> d!1212856 (= lt!1460969 e!2534950)))

(declare-fun res!1668816 () Bool)

(assert (=> d!1212856 (=> res!1668816 e!2534950)))

(assert (=> d!1212856 (= res!1668816 (not (is-Cons!43774 rules!3870)))))

(assert (=> d!1212856 (= (rulesValidInductive!2606 thiss!26199 rules!3870) lt!1460969)))

(declare-fun b!4084320 () Bool)

(declare-fun e!2534951 () Bool)

(assert (=> b!4084320 (= e!2534950 e!2534951)))

(declare-fun res!1668815 () Bool)

(assert (=> b!4084320 (=> (not res!1668815) (not e!2534951))))

(assert (=> b!4084320 (= res!1668815 (ruleValid!2989 thiss!26199 (h!49194 rules!3870)))))

(declare-fun b!4084321 () Bool)

(assert (=> b!4084321 (= e!2534951 (rulesValidInductive!2606 thiss!26199 (t!337953 rules!3870)))))

(assert (= (and d!1212856 (not res!1668816)) b!4084320))

(assert (= (and b!4084320 res!1668815) b!4084321))

(declare-fun m!4691355 () Bool)

(assert (=> d!1212856 m!4691355))

(declare-fun m!4691357 () Bool)

(assert (=> b!4084320 m!4691357))

(assert (=> b!4084321 m!4691239))

(assert (=> d!1212728 d!1212856))

(assert (=> bm!288726 d!1212694))

(assert (=> b!4083892 d!1212814))

(declare-fun d!1212858 () Bool)

(declare-fun c!704155 () Bool)

(assert (=> d!1212858 (= c!704155 (is-Node!13280 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 r!4213)) (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851)))))))

(declare-fun e!2534952 () Bool)

(assert (=> d!1212858 (= (inv!58452 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 r!4213)) (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851)))) e!2534952)))

(declare-fun b!4084322 () Bool)

(assert (=> b!4084322 (= e!2534952 (inv!58456 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 r!4213)) (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851)))))))

(declare-fun b!4084323 () Bool)

(declare-fun e!2534953 () Bool)

(assert (=> b!4084323 (= e!2534952 e!2534953)))

(declare-fun res!1668817 () Bool)

(assert (=> b!4084323 (= res!1668817 (not (is-Leaf!20530 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 r!4213)) (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851))))))))

(assert (=> b!4084323 (=> res!1668817 e!2534953)))

(declare-fun b!4084324 () Bool)

(assert (=> b!4084324 (= e!2534953 (inv!58457 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 r!4213)) (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851)))))))

(assert (= (and d!1212858 c!704155) b!4084322))

(assert (= (and d!1212858 (not c!704155)) b!4084323))

(assert (= (and b!4084323 (not res!1668817)) b!4084324))

(declare-fun m!4691359 () Bool)

(assert (=> b!4084322 m!4691359))

(declare-fun m!4691361 () Bool)

(assert (=> b!4084324 m!4691361))

(assert (=> b!4083991 d!1212858))

(declare-fun bs!593008 () Bool)

(declare-fun d!1212860 () Bool)

(assert (= bs!593008 (and d!1212860 d!1212738)))

(declare-fun lambda!127867 () Int)

(assert (=> bs!593008 (= (and (= (toChars!9504 (transformation!7069 (h!49194 rules!3870))) (toChars!9504 (transformation!7069 r!4213))) (= (toValue!9645 (transformation!7069 (h!49194 rules!3870))) (toValue!9645 (transformation!7069 r!4213)))) (= lambda!127867 lambda!127850))))

(declare-fun bs!593009 () Bool)

(assert (= bs!593009 (and d!1212860 d!1212810)))

(assert (=> bs!593009 (= (and (= (toChars!9504 (transformation!7069 (h!49194 rules!3870))) (toChars!9504 (transformation!7069 r!4213))) (= (toValue!9645 (transformation!7069 (h!49194 rules!3870))) (toValue!9645 (transformation!7069 r!4213)))) (= lambda!127867 lambda!127859))))

(assert (=> d!1212860 true))

(assert (=> d!1212860 (< (dynLambda!18674 order!22955 (toChars!9504 (transformation!7069 (h!49194 rules!3870)))) (dynLambda!18673 order!22953 lambda!127867))))

(assert (=> d!1212860 true))

(assert (=> d!1212860 (< (dynLambda!18672 order!22951 (toValue!9645 (transformation!7069 (h!49194 rules!3870)))) (dynLambda!18673 order!22953 lambda!127867))))

(assert (=> d!1212860 (= (semiInverseModEq!3031 (toChars!9504 (transformation!7069 (h!49194 rules!3870))) (toValue!9645 (transformation!7069 (h!49194 rules!3870)))) (Forall!1508 lambda!127867))))

(declare-fun bs!593010 () Bool)

(assert (= bs!593010 d!1212860))

(declare-fun m!4691363 () Bool)

(assert (=> bs!593010 m!4691363))

(assert (=> d!1212700 d!1212860))

(declare-fun d!1212862 () Bool)

(assert (=> d!1212862 (= (inv!58445 (tag!7929 (h!49194 (t!337953 rules!3870)))) (= (mod (str.len (value!222119 (tag!7929 (h!49194 (t!337953 rules!3870))))) 2) 0))))

(assert (=> b!4084003 d!1212862))

(declare-fun d!1212864 () Bool)

(declare-fun res!1668818 () Bool)

(declare-fun e!2534954 () Bool)

(assert (=> d!1212864 (=> (not res!1668818) (not e!2534954))))

(assert (=> d!1212864 (= res!1668818 (semiInverseModEq!3031 (toChars!9504 (transformation!7069 (h!49194 (t!337953 rules!3870)))) (toValue!9645 (transformation!7069 (h!49194 (t!337953 rules!3870))))))))

(assert (=> d!1212864 (= (inv!58448 (transformation!7069 (h!49194 (t!337953 rules!3870)))) e!2534954)))

(declare-fun b!4084325 () Bool)

(assert (=> b!4084325 (= e!2534954 (equivClasses!2930 (toChars!9504 (transformation!7069 (h!49194 (t!337953 rules!3870)))) (toValue!9645 (transformation!7069 (h!49194 (t!337953 rules!3870))))))))

(assert (= (and d!1212864 res!1668818) b!4084325))

(declare-fun m!4691365 () Bool)

(assert (=> d!1212864 m!4691365))

(declare-fun m!4691367 () Bool)

(assert (=> b!4084325 m!4691367))

(assert (=> b!4084003 d!1212864))

(declare-fun b!4084344 () Bool)

(declare-fun res!1668835 () Bool)

(declare-fun e!2534963 () Bool)

(assert (=> b!4084344 (=> (not res!1668835) (not e!2534963))))

(declare-fun lt!1460983 () Option!9475)

(assert (=> b!4084344 (= res!1668835 (= (value!222120 (_1!24492 (get!14356 lt!1460983))) (apply!10252 (transformation!7069 (rule!10193 (_1!24492 (get!14356 lt!1460983)))) (seqFromList!5286 (originalCharacters!7663 (_1!24492 (get!14356 lt!1460983)))))))))

(declare-fun b!4084345 () Bool)

(declare-fun e!2534965 () Option!9475)

(declare-datatypes ((tuple2!42720 0))(
  ( (tuple2!42721 (_1!24494 List!43897) (_2!24494 List!43897)) )
))
(declare-fun lt!1460981 () tuple2!42720)

(declare-fun size!32697 (BalanceConc!26154) Int)

(assert (=> b!4084345 (= e!2534965 (Some!9474 (tuple2!42717 (Token!13265 (apply!10252 (transformation!7069 (h!49194 rules!3870)) (seqFromList!5286 (_1!24494 lt!1460981))) (h!49194 rules!3870) (size!32697 (seqFromList!5286 (_1!24494 lt!1460981))) (_1!24494 lt!1460981)) (_2!24494 lt!1460981))))))

(declare-fun lt!1460982 () Unit!63298)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1417 (Regex!11974 List!43897) Unit!63298)

(assert (=> b!4084345 (= lt!1460982 (longestMatchIsAcceptedByMatchOrIsEmpty!1417 (regex!7069 (h!49194 rules!3870)) input!3411))))

(declare-fun res!1668833 () Bool)

(declare-fun findLongestMatchInner!1444 (Regex!11974 List!43897 Int List!43897 List!43897 Int) tuple2!42720)

(assert (=> b!4084345 (= res!1668833 (isEmpty!26167 (_1!24494 (findLongestMatchInner!1444 (regex!7069 (h!49194 rules!3870)) Nil!43773 (size!32694 Nil!43773) input!3411 input!3411 (size!32694 input!3411)))))))

(declare-fun e!2534964 () Bool)

(assert (=> b!4084345 (=> res!1668833 e!2534964)))

(assert (=> b!4084345 e!2534964))

(declare-fun lt!1460980 () Unit!63298)

(assert (=> b!4084345 (= lt!1460980 lt!1460982)))

(declare-fun lt!1460984 () Unit!63298)

(assert (=> b!4084345 (= lt!1460984 (lemmaSemiInverse!2036 (transformation!7069 (h!49194 rules!3870)) (seqFromList!5286 (_1!24494 lt!1460981))))))

(declare-fun b!4084346 () Bool)

(declare-fun res!1668834 () Bool)

(assert (=> b!4084346 (=> (not res!1668834) (not e!2534963))))

(assert (=> b!4084346 (= res!1668834 (= (rule!10193 (_1!24492 (get!14356 lt!1460983))) (h!49194 rules!3870)))))

(declare-fun d!1212866 () Bool)

(declare-fun e!2534966 () Bool)

(assert (=> d!1212866 e!2534966))

(declare-fun res!1668839 () Bool)

(assert (=> d!1212866 (=> res!1668839 e!2534966)))

(assert (=> d!1212866 (= res!1668839 (isEmpty!26170 lt!1460983))))

(assert (=> d!1212866 (= lt!1460983 e!2534965)))

(declare-fun c!704158 () Bool)

(assert (=> d!1212866 (= c!704158 (isEmpty!26167 (_1!24494 lt!1460981)))))

(declare-fun findLongestMatch!1357 (Regex!11974 List!43897) tuple2!42720)

(assert (=> d!1212866 (= lt!1460981 (findLongestMatch!1357 (regex!7069 (h!49194 rules!3870)) input!3411))))

(assert (=> d!1212866 (ruleValid!2989 thiss!26199 (h!49194 rules!3870))))

(assert (=> d!1212866 (= (maxPrefixOneRule!2936 thiss!26199 (h!49194 rules!3870) input!3411) lt!1460983)))

(declare-fun b!4084347 () Bool)

(declare-fun res!1668838 () Bool)

(assert (=> b!4084347 (=> (not res!1668838) (not e!2534963))))

(assert (=> b!4084347 (= res!1668838 (= (++!11475 (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460983)))) (_2!24492 (get!14356 lt!1460983))) input!3411))))

(declare-fun b!4084348 () Bool)

(assert (=> b!4084348 (= e!2534964 (matchR!5915 (regex!7069 (h!49194 rules!3870)) (_1!24494 (findLongestMatchInner!1444 (regex!7069 (h!49194 rules!3870)) Nil!43773 (size!32694 Nil!43773) input!3411 input!3411 (size!32694 input!3411)))))))

(declare-fun b!4084349 () Bool)

(assert (=> b!4084349 (= e!2534966 e!2534963)))

(declare-fun res!1668836 () Bool)

(assert (=> b!4084349 (=> (not res!1668836) (not e!2534963))))

(assert (=> b!4084349 (= res!1668836 (matchR!5915 (regex!7069 (h!49194 rules!3870)) (list!16259 (charsOf!4837 (_1!24492 (get!14356 lt!1460983))))))))

(declare-fun b!4084350 () Bool)

(declare-fun res!1668837 () Bool)

(assert (=> b!4084350 (=> (not res!1668837) (not e!2534963))))

(assert (=> b!4084350 (= res!1668837 (< (size!32694 (_2!24492 (get!14356 lt!1460983))) (size!32694 input!3411)))))

(declare-fun b!4084351 () Bool)

(assert (=> b!4084351 (= e!2534965 None!9474)))

(declare-fun b!4084352 () Bool)

(assert (=> b!4084352 (= e!2534963 (= (size!32693 (_1!24492 (get!14356 lt!1460983))) (size!32694 (originalCharacters!7663 (_1!24492 (get!14356 lt!1460983))))))))

(assert (= (and d!1212866 c!704158) b!4084351))

(assert (= (and d!1212866 (not c!704158)) b!4084345))

(assert (= (and b!4084345 (not res!1668833)) b!4084348))

(assert (= (and d!1212866 (not res!1668839)) b!4084349))

(assert (= (and b!4084349 res!1668836) b!4084347))

(assert (= (and b!4084347 res!1668838) b!4084350))

(assert (= (and b!4084350 res!1668837) b!4084346))

(assert (= (and b!4084346 res!1668834) b!4084344))

(assert (= (and b!4084344 res!1668835) b!4084352))

(declare-fun m!4691369 () Bool)

(assert (=> b!4084345 m!4691369))

(declare-fun m!4691371 () Bool)

(assert (=> b!4084345 m!4691371))

(declare-fun m!4691373 () Bool)

(assert (=> b!4084345 m!4691373))

(assert (=> b!4084345 m!4691373))

(declare-fun m!4691375 () Bool)

(assert (=> b!4084345 m!4691375))

(declare-fun m!4691377 () Bool)

(assert (=> b!4084345 m!4691377))

(assert (=> b!4084345 m!4691373))

(declare-fun m!4691379 () Bool)

(assert (=> b!4084345 m!4691379))

(assert (=> b!4084345 m!4691373))

(declare-fun m!4691381 () Bool)

(assert (=> b!4084345 m!4691381))

(assert (=> b!4084345 m!4691071))

(assert (=> b!4084345 m!4691377))

(assert (=> b!4084345 m!4691071))

(declare-fun m!4691383 () Bool)

(assert (=> b!4084345 m!4691383))

(assert (=> b!4084348 m!4691377))

(assert (=> b!4084348 m!4691071))

(assert (=> b!4084348 m!4691377))

(assert (=> b!4084348 m!4691071))

(assert (=> b!4084348 m!4691383))

(declare-fun m!4691385 () Bool)

(assert (=> b!4084348 m!4691385))

(declare-fun m!4691387 () Bool)

(assert (=> b!4084346 m!4691387))

(assert (=> b!4084350 m!4691387))

(declare-fun m!4691389 () Bool)

(assert (=> b!4084350 m!4691389))

(assert (=> b!4084350 m!4691071))

(assert (=> b!4084344 m!4691387))

(declare-fun m!4691391 () Bool)

(assert (=> b!4084344 m!4691391))

(assert (=> b!4084344 m!4691391))

(declare-fun m!4691393 () Bool)

(assert (=> b!4084344 m!4691393))

(assert (=> b!4084352 m!4691387))

(declare-fun m!4691395 () Bool)

(assert (=> b!4084352 m!4691395))

(declare-fun m!4691397 () Bool)

(assert (=> d!1212866 m!4691397))

(declare-fun m!4691399 () Bool)

(assert (=> d!1212866 m!4691399))

(declare-fun m!4691401 () Bool)

(assert (=> d!1212866 m!4691401))

(assert (=> d!1212866 m!4691357))

(assert (=> b!4084347 m!4691387))

(declare-fun m!4691403 () Bool)

(assert (=> b!4084347 m!4691403))

(assert (=> b!4084347 m!4691403))

(declare-fun m!4691405 () Bool)

(assert (=> b!4084347 m!4691405))

(assert (=> b!4084347 m!4691405))

(declare-fun m!4691407 () Bool)

(assert (=> b!4084347 m!4691407))

(assert (=> b!4084349 m!4691387))

(assert (=> b!4084349 m!4691403))

(assert (=> b!4084349 m!4691403))

(assert (=> b!4084349 m!4691405))

(assert (=> b!4084349 m!4691405))

(declare-fun m!4691409 () Bool)

(assert (=> b!4084349 m!4691409))

(assert (=> bm!288732 d!1212866))

(assert (=> b!4083969 d!1212784))

(assert (=> b!4083969 d!1212786))

(assert (=> b!4083969 d!1212766))

(declare-fun d!1212868 () Bool)

(declare-fun e!2534969 () Bool)

(assert (=> d!1212868 e!2534969))

(declare-fun res!1668842 () Bool)

(assert (=> d!1212868 (=> (not res!1668842) (not e!2534969))))

(declare-fun lt!1460987 () BalanceConc!26154)

(assert (=> d!1212868 (= res!1668842 (= (list!16259 lt!1460987) p!2988))))

(declare-fun fromList!877 (List!43897) Conc!13280)

(assert (=> d!1212868 (= lt!1460987 (BalanceConc!26155 (fromList!877 p!2988)))))

(assert (=> d!1212868 (= (fromListB!2417 p!2988) lt!1460987)))

(declare-fun b!4084355 () Bool)

(assert (=> b!4084355 (= e!2534969 (isBalanced!3697 (fromList!877 p!2988)))))

(assert (= (and d!1212868 res!1668842) b!4084355))

(declare-fun m!4691411 () Bool)

(assert (=> d!1212868 m!4691411))

(declare-fun m!4691413 () Bool)

(assert (=> d!1212868 m!4691413))

(assert (=> b!4084355 m!4691413))

(assert (=> b!4084355 m!4691413))

(declare-fun m!4691415 () Bool)

(assert (=> b!4084355 m!4691415))

(assert (=> d!1212742 d!1212868))

(declare-fun b!4084356 () Bool)

(declare-fun e!2534970 () Bool)

(assert (=> b!4084356 (= e!2534970 tp_is_empty!20951)))

(declare-fun b!4084359 () Bool)

(declare-fun tp!1236610 () Bool)

(declare-fun tp!1236611 () Bool)

(assert (=> b!4084359 (= e!2534970 (and tp!1236610 tp!1236611))))

(declare-fun b!4084357 () Bool)

(declare-fun tp!1236609 () Bool)

(declare-fun tp!1236608 () Bool)

(assert (=> b!4084357 (= e!2534970 (and tp!1236609 tp!1236608))))

(assert (=> b!4084020 (= tp!1236560 e!2534970)))

(declare-fun b!4084358 () Bool)

(declare-fun tp!1236612 () Bool)

(assert (=> b!4084358 (= e!2534970 tp!1236612)))

(assert (= (and b!4084020 (is-ElementMatch!11974 (regOne!24460 (regex!7069 r!4213)))) b!4084356))

(assert (= (and b!4084020 (is-Concat!19274 (regOne!24460 (regex!7069 r!4213)))) b!4084357))

(assert (= (and b!4084020 (is-Star!11974 (regOne!24460 (regex!7069 r!4213)))) b!4084358))

(assert (= (and b!4084020 (is-Union!11974 (regOne!24460 (regex!7069 r!4213)))) b!4084359))

(declare-fun b!4084360 () Bool)

(declare-fun e!2534971 () Bool)

(assert (=> b!4084360 (= e!2534971 tp_is_empty!20951)))

(declare-fun b!4084363 () Bool)

(declare-fun tp!1236615 () Bool)

(declare-fun tp!1236616 () Bool)

(assert (=> b!4084363 (= e!2534971 (and tp!1236615 tp!1236616))))

(declare-fun b!4084361 () Bool)

(declare-fun tp!1236614 () Bool)

(declare-fun tp!1236613 () Bool)

(assert (=> b!4084361 (= e!2534971 (and tp!1236614 tp!1236613))))

(assert (=> b!4084020 (= tp!1236559 e!2534971)))

(declare-fun b!4084362 () Bool)

(declare-fun tp!1236617 () Bool)

(assert (=> b!4084362 (= e!2534971 tp!1236617)))

(assert (= (and b!4084020 (is-ElementMatch!11974 (regTwo!24460 (regex!7069 r!4213)))) b!4084360))

(assert (= (and b!4084020 (is-Concat!19274 (regTwo!24460 (regex!7069 r!4213)))) b!4084361))

(assert (= (and b!4084020 (is-Star!11974 (regTwo!24460 (regex!7069 r!4213)))) b!4084362))

(assert (= (and b!4084020 (is-Union!11974 (regTwo!24460 (regex!7069 r!4213)))) b!4084363))

(declare-fun b!4084364 () Bool)

(declare-fun e!2534972 () Bool)

(assert (=> b!4084364 (= e!2534972 tp_is_empty!20951)))

(declare-fun b!4084367 () Bool)

(declare-fun tp!1236620 () Bool)

(declare-fun tp!1236621 () Bool)

(assert (=> b!4084367 (= e!2534972 (and tp!1236620 tp!1236621))))

(declare-fun b!4084365 () Bool)

(declare-fun tp!1236619 () Bool)

(declare-fun tp!1236618 () Bool)

(assert (=> b!4084365 (= e!2534972 (and tp!1236619 tp!1236618))))

(assert (=> b!4084021 (= tp!1236563 e!2534972)))

(declare-fun b!4084366 () Bool)

(declare-fun tp!1236622 () Bool)

(assert (=> b!4084366 (= e!2534972 tp!1236622)))

(assert (= (and b!4084021 (is-ElementMatch!11974 (reg!12303 (regex!7069 r!4213)))) b!4084364))

(assert (= (and b!4084021 (is-Concat!19274 (reg!12303 (regex!7069 r!4213)))) b!4084365))

(assert (= (and b!4084021 (is-Star!11974 (reg!12303 (regex!7069 r!4213)))) b!4084366))

(assert (= (and b!4084021 (is-Union!11974 (reg!12303 (regex!7069 r!4213)))) b!4084367))

(declare-fun b!4084368 () Bool)

(declare-fun e!2534973 () Bool)

(assert (=> b!4084368 (= e!2534973 tp_is_empty!20951)))

(declare-fun b!4084371 () Bool)

(declare-fun tp!1236625 () Bool)

(declare-fun tp!1236626 () Bool)

(assert (=> b!4084371 (= e!2534973 (and tp!1236625 tp!1236626))))

(declare-fun b!4084369 () Bool)

(declare-fun tp!1236624 () Bool)

(declare-fun tp!1236623 () Bool)

(assert (=> b!4084369 (= e!2534973 (and tp!1236624 tp!1236623))))

(assert (=> b!4084016 (= tp!1236555 e!2534973)))

(declare-fun b!4084370 () Bool)

(declare-fun tp!1236627 () Bool)

(assert (=> b!4084370 (= e!2534973 tp!1236627)))

(assert (= (and b!4084016 (is-ElementMatch!11974 (regOne!24460 (regex!7069 (h!49194 rules!3870))))) b!4084368))

(assert (= (and b!4084016 (is-Concat!19274 (regOne!24460 (regex!7069 (h!49194 rules!3870))))) b!4084369))

(assert (= (and b!4084016 (is-Star!11974 (regOne!24460 (regex!7069 (h!49194 rules!3870))))) b!4084370))

(assert (= (and b!4084016 (is-Union!11974 (regOne!24460 (regex!7069 (h!49194 rules!3870))))) b!4084371))

(declare-fun b!4084372 () Bool)

(declare-fun e!2534974 () Bool)

(assert (=> b!4084372 (= e!2534974 tp_is_empty!20951)))

(declare-fun b!4084375 () Bool)

(declare-fun tp!1236630 () Bool)

(declare-fun tp!1236631 () Bool)

(assert (=> b!4084375 (= e!2534974 (and tp!1236630 tp!1236631))))

(declare-fun b!4084373 () Bool)

(declare-fun tp!1236629 () Bool)

(declare-fun tp!1236628 () Bool)

(assert (=> b!4084373 (= e!2534974 (and tp!1236629 tp!1236628))))

(assert (=> b!4084016 (= tp!1236554 e!2534974)))

(declare-fun b!4084374 () Bool)

(declare-fun tp!1236632 () Bool)

(assert (=> b!4084374 (= e!2534974 tp!1236632)))

(assert (= (and b!4084016 (is-ElementMatch!11974 (regTwo!24460 (regex!7069 (h!49194 rules!3870))))) b!4084372))

(assert (= (and b!4084016 (is-Concat!19274 (regTwo!24460 (regex!7069 (h!49194 rules!3870))))) b!4084373))

(assert (= (and b!4084016 (is-Star!11974 (regTwo!24460 (regex!7069 (h!49194 rules!3870))))) b!4084374))

(assert (= (and b!4084016 (is-Union!11974 (regTwo!24460 (regex!7069 (h!49194 rules!3870))))) b!4084375))

(declare-fun b!4084376 () Bool)

(declare-fun e!2534975 () Bool)

(declare-fun tp!1236633 () Bool)

(assert (=> b!4084376 (= e!2534975 (and tp_is_empty!20951 tp!1236633))))

(assert (=> b!4084028 (= tp!1236567 e!2534975)))

(assert (= (and b!4084028 (is-Cons!43773 (t!337952 (t!337952 p!2988)))) b!4084376))

(declare-fun b!4084377 () Bool)

(declare-fun e!2534976 () Bool)

(assert (=> b!4084377 (= e!2534976 tp_is_empty!20951)))

(declare-fun b!4084380 () Bool)

(declare-fun tp!1236636 () Bool)

(declare-fun tp!1236637 () Bool)

(assert (=> b!4084380 (= e!2534976 (and tp!1236636 tp!1236637))))

(declare-fun b!4084378 () Bool)

(declare-fun tp!1236635 () Bool)

(declare-fun tp!1236634 () Bool)

(assert (=> b!4084378 (= e!2534976 (and tp!1236635 tp!1236634))))

(assert (=> b!4084018 (= tp!1236556 e!2534976)))

(declare-fun b!4084379 () Bool)

(declare-fun tp!1236638 () Bool)

(assert (=> b!4084379 (= e!2534976 tp!1236638)))

(assert (= (and b!4084018 (is-ElementMatch!11974 (regOne!24461 (regex!7069 (h!49194 rules!3870))))) b!4084377))

(assert (= (and b!4084018 (is-Concat!19274 (regOne!24461 (regex!7069 (h!49194 rules!3870))))) b!4084378))

(assert (= (and b!4084018 (is-Star!11974 (regOne!24461 (regex!7069 (h!49194 rules!3870))))) b!4084379))

(assert (= (and b!4084018 (is-Union!11974 (regOne!24461 (regex!7069 (h!49194 rules!3870))))) b!4084380))

(declare-fun b!4084381 () Bool)

(declare-fun e!2534977 () Bool)

(assert (=> b!4084381 (= e!2534977 tp_is_empty!20951)))

(declare-fun b!4084384 () Bool)

(declare-fun tp!1236641 () Bool)

(declare-fun tp!1236642 () Bool)

(assert (=> b!4084384 (= e!2534977 (and tp!1236641 tp!1236642))))

(declare-fun b!4084382 () Bool)

(declare-fun tp!1236640 () Bool)

(declare-fun tp!1236639 () Bool)

(assert (=> b!4084382 (= e!2534977 (and tp!1236640 tp!1236639))))

(assert (=> b!4084018 (= tp!1236557 e!2534977)))

(declare-fun b!4084383 () Bool)

(declare-fun tp!1236643 () Bool)

(assert (=> b!4084383 (= e!2534977 tp!1236643)))

(assert (= (and b!4084018 (is-ElementMatch!11974 (regTwo!24461 (regex!7069 (h!49194 rules!3870))))) b!4084381))

(assert (= (and b!4084018 (is-Concat!19274 (regTwo!24461 (regex!7069 (h!49194 rules!3870))))) b!4084382))

(assert (= (and b!4084018 (is-Star!11974 (regTwo!24461 (regex!7069 (h!49194 rules!3870))))) b!4084383))

(assert (= (and b!4084018 (is-Union!11974 (regTwo!24461 (regex!7069 (h!49194 rules!3870))))) b!4084384))

(declare-fun e!2534982 () Bool)

(declare-fun tp!1236650 () Bool)

(declare-fun tp!1236651 () Bool)

(declare-fun b!4084393 () Bool)

(assert (=> b!4084393 (= e!2534982 (and (inv!58452 (left!32901 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 r!4213)) (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851))))) tp!1236651 (inv!58452 (right!33231 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 r!4213)) (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851))))) tp!1236650))))

(declare-fun b!4084395 () Bool)

(declare-fun e!2534983 () Bool)

(declare-fun tp!1236652 () Bool)

(assert (=> b!4084395 (= e!2534983 tp!1236652)))

(declare-fun b!4084394 () Bool)

(declare-fun inv!58458 (IArray!26565) Bool)

(assert (=> b!4084394 (= e!2534982 (and (inv!58458 (xs!16586 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 r!4213)) (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851))))) e!2534983))))

(assert (=> b!4083991 (= tp!1236531 (and (inv!58452 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 r!4213)) (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851)))) e!2534982))))

(assert (= (and b!4083991 (is-Node!13280 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 r!4213)) (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851))))) b!4084393))

(assert (= b!4084394 b!4084395))

(assert (= (and b!4083991 (is-Leaf!20530 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 r!4213)) (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851))))) b!4084394))

(declare-fun m!4691417 () Bool)

(assert (=> b!4084393 m!4691417))

(declare-fun m!4691419 () Bool)

(assert (=> b!4084393 m!4691419))

(declare-fun m!4691421 () Bool)

(assert (=> b!4084394 m!4691421))

(assert (=> b!4083991 m!4691097))

(declare-fun b!4084396 () Bool)

(declare-fun e!2534984 () Bool)

(declare-fun tp!1236653 () Bool)

(assert (=> b!4084396 (= e!2534984 (and tp_is_empty!20951 tp!1236653))))

(assert (=> b!4084029 (= tp!1236568 e!2534984)))

(assert (= (and b!4084029 (is-Cons!43773 (t!337952 (t!337952 suffix!1518)))) b!4084396))

(declare-fun b!4084397 () Bool)

(declare-fun e!2534985 () Bool)

(assert (=> b!4084397 (= e!2534985 tp_is_empty!20951)))

(declare-fun b!4084400 () Bool)

(declare-fun tp!1236656 () Bool)

(declare-fun tp!1236657 () Bool)

(assert (=> b!4084400 (= e!2534985 (and tp!1236656 tp!1236657))))

(declare-fun b!4084398 () Bool)

(declare-fun tp!1236655 () Bool)

(declare-fun tp!1236654 () Bool)

(assert (=> b!4084398 (= e!2534985 (and tp!1236655 tp!1236654))))

(assert (=> b!4084017 (= tp!1236558 e!2534985)))

(declare-fun b!4084399 () Bool)

(declare-fun tp!1236658 () Bool)

(assert (=> b!4084399 (= e!2534985 tp!1236658)))

(assert (= (and b!4084017 (is-ElementMatch!11974 (reg!12303 (regex!7069 (h!49194 rules!3870))))) b!4084397))

(assert (= (and b!4084017 (is-Concat!19274 (reg!12303 (regex!7069 (h!49194 rules!3870))))) b!4084398))

(assert (= (and b!4084017 (is-Star!11974 (reg!12303 (regex!7069 (h!49194 rules!3870))))) b!4084399))

(assert (= (and b!4084017 (is-Union!11974 (reg!12303 (regex!7069 (h!49194 rules!3870))))) b!4084400))

(declare-fun tp!1236659 () Bool)

(declare-fun b!4084401 () Bool)

(declare-fun e!2534986 () Bool)

(declare-fun tp!1236660 () Bool)

(assert (=> b!4084401 (= e!2534986 (and (inv!58452 (left!32901 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))) (value!222120 lt!1460850))))) tp!1236660 (inv!58452 (right!33231 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))) (value!222120 lt!1460850))))) tp!1236659))))

(declare-fun b!4084403 () Bool)

(declare-fun e!2534987 () Bool)

(declare-fun tp!1236661 () Bool)

(assert (=> b!4084403 (= e!2534987 tp!1236661)))

(declare-fun b!4084402 () Bool)

(assert (=> b!4084402 (= e!2534986 (and (inv!58458 (xs!16586 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))) (value!222120 lt!1460850))))) e!2534987))))

(assert (=> b!4083817 (= tp!1236527 (and (inv!58452 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))) (value!222120 lt!1460850)))) e!2534986))))

(assert (= (and b!4083817 (is-Node!13280 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))) (value!222120 lt!1460850))))) b!4084401))

(assert (= b!4084402 b!4084403))

(assert (= (and b!4083817 (is-Leaf!20530 (c!704060 (dynLambda!18671 (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))) (value!222120 lt!1460850))))) b!4084402))

(declare-fun m!4691423 () Bool)

(assert (=> b!4084401 m!4691423))

(declare-fun m!4691425 () Bool)

(assert (=> b!4084401 m!4691425))

(declare-fun m!4691427 () Bool)

(assert (=> b!4084402 m!4691427))

(assert (=> b!4083817 m!4690933))

(declare-fun b!4084404 () Bool)

(declare-fun e!2534988 () Bool)

(assert (=> b!4084404 (= e!2534988 tp_is_empty!20951)))

(declare-fun b!4084407 () Bool)

(declare-fun tp!1236664 () Bool)

(declare-fun tp!1236665 () Bool)

(assert (=> b!4084407 (= e!2534988 (and tp!1236664 tp!1236665))))

(declare-fun b!4084405 () Bool)

(declare-fun tp!1236663 () Bool)

(declare-fun tp!1236662 () Bool)

(assert (=> b!4084405 (= e!2534988 (and tp!1236663 tp!1236662))))

(assert (=> b!4084022 (= tp!1236561 e!2534988)))

(declare-fun b!4084406 () Bool)

(declare-fun tp!1236666 () Bool)

(assert (=> b!4084406 (= e!2534988 tp!1236666)))

(assert (= (and b!4084022 (is-ElementMatch!11974 (regOne!24461 (regex!7069 r!4213)))) b!4084404))

(assert (= (and b!4084022 (is-Concat!19274 (regOne!24461 (regex!7069 r!4213)))) b!4084405))

(assert (= (and b!4084022 (is-Star!11974 (regOne!24461 (regex!7069 r!4213)))) b!4084406))

(assert (= (and b!4084022 (is-Union!11974 (regOne!24461 (regex!7069 r!4213)))) b!4084407))

(declare-fun b!4084408 () Bool)

(declare-fun e!2534989 () Bool)

(assert (=> b!4084408 (= e!2534989 tp_is_empty!20951)))

(declare-fun b!4084411 () Bool)

(declare-fun tp!1236669 () Bool)

(declare-fun tp!1236670 () Bool)

(assert (=> b!4084411 (= e!2534989 (and tp!1236669 tp!1236670))))

(declare-fun b!4084409 () Bool)

(declare-fun tp!1236668 () Bool)

(declare-fun tp!1236667 () Bool)

(assert (=> b!4084409 (= e!2534989 (and tp!1236668 tp!1236667))))

(assert (=> b!4084022 (= tp!1236562 e!2534989)))

(declare-fun b!4084410 () Bool)

(declare-fun tp!1236671 () Bool)

(assert (=> b!4084410 (= e!2534989 tp!1236671)))

(assert (= (and b!4084022 (is-ElementMatch!11974 (regTwo!24461 (regex!7069 r!4213)))) b!4084408))

(assert (= (and b!4084022 (is-Concat!19274 (regTwo!24461 (regex!7069 r!4213)))) b!4084409))

(assert (= (and b!4084022 (is-Star!11974 (regTwo!24461 (regex!7069 r!4213)))) b!4084410))

(assert (= (and b!4084022 (is-Union!11974 (regTwo!24461 (regex!7069 r!4213)))) b!4084411))

(declare-fun b!4084412 () Bool)

(declare-fun e!2534990 () Bool)

(assert (=> b!4084412 (= e!2534990 tp_is_empty!20951)))

(declare-fun b!4084415 () Bool)

(declare-fun tp!1236674 () Bool)

(declare-fun tp!1236675 () Bool)

(assert (=> b!4084415 (= e!2534990 (and tp!1236674 tp!1236675))))

(declare-fun b!4084413 () Bool)

(declare-fun tp!1236673 () Bool)

(declare-fun tp!1236672 () Bool)

(assert (=> b!4084413 (= e!2534990 (and tp!1236673 tp!1236672))))

(assert (=> b!4084003 (= tp!1236542 e!2534990)))

(declare-fun b!4084414 () Bool)

(declare-fun tp!1236676 () Bool)

(assert (=> b!4084414 (= e!2534990 tp!1236676)))

(assert (= (and b!4084003 (is-ElementMatch!11974 (regex!7069 (h!49194 (t!337953 rules!3870))))) b!4084412))

(assert (= (and b!4084003 (is-Concat!19274 (regex!7069 (h!49194 (t!337953 rules!3870))))) b!4084413))

(assert (= (and b!4084003 (is-Star!11974 (regex!7069 (h!49194 (t!337953 rules!3870))))) b!4084414))

(assert (= (and b!4084003 (is-Union!11974 (regex!7069 (h!49194 (t!337953 rules!3870))))) b!4084415))

(declare-fun b!4084418 () Bool)

(declare-fun b_free!114089 () Bool)

(declare-fun b_next!114793 () Bool)

(assert (=> b!4084418 (= b_free!114089 (not b_next!114793))))

(declare-fun t!338008 () Bool)

(declare-fun tb!245329 () Bool)

(assert (=> (and b!4084418 (= (toValue!9645 (transformation!7069 (h!49194 (t!337953 (t!337953 rules!3870))))) (toValue!9645 (transformation!7069 r!4213))) t!338008) tb!245329))

(declare-fun result!297648 () Bool)

(assert (= result!297648 result!297594))

(assert (=> d!1212738 t!338008))

(assert (=> d!1212740 t!338008))

(declare-fun t!338010 () Bool)

(declare-fun tb!245331 () Bool)

(assert (=> (and b!4084418 (= (toValue!9645 (transformation!7069 (h!49194 (t!337953 (t!337953 rules!3870))))) (toValue!9645 (transformation!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910)))))) t!338010) tb!245331))

(declare-fun result!297650 () Bool)

(assert (= result!297650 result!297634))

(assert (=> d!1212768 t!338010))

(declare-fun b_and!314379 () Bool)

(declare-fun tp!1236678 () Bool)

(assert (=> b!4084418 (= tp!1236678 (and (=> t!338008 result!297648) (=> t!338010 result!297650) b_and!314379))))

(declare-fun b_free!114091 () Bool)

(declare-fun b_next!114795 () Bool)

(assert (=> b!4084418 (= b_free!114091 (not b_next!114795))))

(declare-fun t!338012 () Bool)

(declare-fun tb!245333 () Bool)

(assert (=> (and b!4084418 (= (toChars!9504 (transformation!7069 (h!49194 (t!337953 (t!337953 rules!3870))))) (toChars!9504 (transformation!7069 (rule!10193 lt!1460850)))) t!338012) tb!245333))

(declare-fun result!297652 () Bool)

(assert (= result!297652 result!297578))

(assert (=> b!4083811 t!338012))

(declare-fun t!338014 () Bool)

(declare-fun tb!245335 () Bool)

(assert (=> (and b!4084418 (= (toChars!9504 (transformation!7069 (h!49194 (t!337953 (t!337953 rules!3870))))) (toChars!9504 (transformation!7069 r!4213))) t!338014) tb!245335))

(declare-fun result!297654 () Bool)

(assert (= result!297654 result!297590))

(assert (=> d!1212738 t!338014))

(declare-fun tb!245337 () Bool)

(declare-fun t!338016 () Bool)

(assert (=> (and b!4084418 (= (toChars!9504 (transformation!7069 (h!49194 (t!337953 (t!337953 rules!3870))))) (toChars!9504 (transformation!7069 (rule!10193 (_1!24492 (get!14356 lt!1460910)))))) t!338016) tb!245337))

(declare-fun result!297656 () Bool)

(assert (= result!297656 result!297640))

(assert (=> d!1212786 t!338016))

(declare-fun b_and!314381 () Bool)

(declare-fun tp!1236677 () Bool)

(assert (=> b!4084418 (= tp!1236677 (and (=> t!338012 result!297652) (=> t!338014 result!297654) (=> t!338016 result!297656) b_and!314381))))

(declare-fun e!2534991 () Bool)

(assert (=> b!4084418 (= e!2534991 (and tp!1236678 tp!1236677))))

(declare-fun b!4084417 () Bool)

(declare-fun tp!1236679 () Bool)

(declare-fun e!2534993 () Bool)

(assert (=> b!4084417 (= e!2534993 (and tp!1236679 (inv!58445 (tag!7929 (h!49194 (t!337953 (t!337953 rules!3870))))) (inv!58448 (transformation!7069 (h!49194 (t!337953 (t!337953 rules!3870))))) e!2534991))))

(declare-fun b!4084416 () Bool)

(declare-fun e!2534992 () Bool)

(declare-fun tp!1236680 () Bool)

(assert (=> b!4084416 (= e!2534992 (and e!2534993 tp!1236680))))

(assert (=> b!4084002 (= tp!1236543 e!2534992)))

(assert (= b!4084417 b!4084418))

(assert (= b!4084416 b!4084417))

(assert (= (and b!4084002 (is-Cons!43774 (t!337953 (t!337953 rules!3870)))) b!4084416))

(declare-fun m!4691429 () Bool)

(assert (=> b!4084417 m!4691429))

(declare-fun m!4691431 () Bool)

(assert (=> b!4084417 m!4691431))

(declare-fun b!4084419 () Bool)

(declare-fun e!2534995 () Bool)

(declare-fun tp!1236681 () Bool)

(assert (=> b!4084419 (= e!2534995 (and tp_is_empty!20951 tp!1236681))))

(assert (=> b!4084027 (= tp!1236566 e!2534995)))

(assert (= (and b!4084027 (is-Cons!43773 (t!337952 (t!337952 input!3411)))) b!4084419))

(declare-fun b_lambda!119529 () Bool)

(assert (= b_lambda!119527 (or d!1212738 b_lambda!119529)))

(declare-fun bs!593011 () Bool)

(declare-fun d!1212870 () Bool)

(assert (= bs!593011 (and d!1212870 d!1212738)))

(assert (=> bs!593011 (= (dynLambda!18682 lambda!127850 lt!1460851) (= (list!16259 (dynLambda!18671 (toChars!9504 (transformation!7069 r!4213)) (dynLambda!18675 (toValue!9645 (transformation!7069 r!4213)) lt!1460851))) (list!16259 lt!1460851)))))

(declare-fun b_lambda!119533 () Bool)

(assert (=> (not b_lambda!119533) (not bs!593011)))

(assert (=> bs!593011 t!337966))

(declare-fun b_and!314383 () Bool)

(assert (= b_and!314373 (and (=> t!337966 result!297590) b_and!314383)))

(assert (=> bs!593011 t!337968))

(declare-fun b_and!314385 () Bool)

(assert (= b_and!314375 (and (=> t!337968 result!297592) b_and!314385)))

(assert (=> bs!593011 t!337978))

(declare-fun b_and!314387 () Bool)

(assert (= b_and!314377 (and (=> t!337978 result!297606) b_and!314387)))

(assert (=> bs!593011 t!338014))

(declare-fun b_and!314389 () Bool)

(assert (= b_and!314381 (and (=> t!338014 result!297654) b_and!314389)))

(declare-fun b_lambda!119535 () Bool)

(assert (=> (not b_lambda!119535) (not bs!593011)))

(assert (=> bs!593011 t!337970))

(declare-fun b_and!314391 () Bool)

(assert (= b_and!314367 (and (=> t!337970 result!297594) b_and!314391)))

(assert (=> bs!593011 t!337972))

(declare-fun b_and!314393 () Bool)

(assert (= b_and!314369 (and (=> t!337972 result!297598) b_and!314393)))

(assert (=> bs!593011 t!337974))

(declare-fun b_and!314395 () Bool)

(assert (= b_and!314371 (and (=> t!337974 result!297602) b_and!314395)))

(assert (=> bs!593011 t!338008))

(declare-fun b_and!314397 () Bool)

(assert (= b_and!314379 (and (=> t!338008 result!297648) b_and!314397)))

(assert (=> bs!593011 m!4691107))

(assert (=> bs!593011 m!4691107))

(assert (=> bs!593011 m!4691109))

(assert (=> bs!593011 m!4691109))

(assert (=> bs!593011 m!4691111))

(assert (=> bs!593011 m!4691103))

(assert (=> d!1212848 d!1212870))

(declare-fun b_lambda!119531 () Bool)

(assert (= b_lambda!119495 (or (and b!4083751 b_free!114067 (= (toChars!9504 (transformation!7069 (h!49194 rules!3870))) (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))))) (and b!4083744 b_free!114071 (= (toChars!9504 (transformation!7069 r!4213)) (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))))) (and b!4084004 b_free!114083 (= (toChars!9504 (transformation!7069 (h!49194 (t!337953 rules!3870)))) (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))))) (and b!4084418 b_free!114091 (= (toChars!9504 (transformation!7069 (h!49194 (t!337953 (t!337953 rules!3870))))) (toChars!9504 (transformation!7069 (rule!10193 lt!1460850))))) b_lambda!119531)))

(push 1)

(assert (not b_lambda!119525))

(assert (not b!4084416))

(assert (not d!1212774))

(assert (not d!1212772))

(assert (not b!4084413))

(assert (not b_next!114771))

(assert (not b!4084410))

(assert (not b!4084160))

(assert (not b!4084347))

(assert (not b!4084396))

(assert (not b!4084254))

(assert (not d!1212790))

(assert (not b!4084395))

(assert (not b_lambda!119523))

(assert (not b!4084255))

(assert (not b!4084345))

(assert (not b!4084192))

(assert b_and!314393)

(assert (not b_next!114769))

(assert (not b!4084325))

(assert (not d!1212832))

(assert b_and!314397)

(assert (not b_lambda!119535))

(assert (not b!4084314))

(assert (not b!4084170))

(assert (not bm!288747))

(assert (not b!4084352))

(assert (not b!4084153))

(assert (not b!4084357))

(assert (not d!1212856))

(assert (not b!4084394))

(assert (not b!4084164))

(assert (not b!4084211))

(assert (not bm!288758))

(assert (not b!4084162))

(assert (not b!4084322))

(assert (not b!4084371))

(assert (not b!4084378))

(assert (not b!4084236))

(assert b_and!314385)

(assert (not b!4084186))

(assert b_and!314391)

(assert (not b!4084195))

(assert (not b!4084398))

(assert (not b!4084133))

(assert (not tb!245317))

(assert (not b!4084181))

(assert (not b!4084301))

(assert (not b!4084209))

(assert (not b!4084147))

(assert (not b!4084321))

(assert (not b!4084415))

(assert (not d!1212854))

(assert (not b_next!114787))

(assert (not b!4084146))

(assert (not b!4084320))

(assert (not b!4084369))

(assert (not d!1212840))

(assert (not b!4084362))

(assert (not d!1212812))

(assert (not b!4084370))

(assert (not b!4084358))

(assert (not b!4084359))

(assert (not b!4084379))

(assert (not d!1212868))

(assert (not b!4084406))

(assert (not bs!593011))

(assert (not bm!288746))

(assert (not b!4084382))

(assert (not b!4084169))

(assert (not b!4084405))

(assert (not b!4084251))

(assert (not b!4084373))

(assert (not b!4084303))

(assert (not b!4084203))

(assert (not b!4084183))

(assert (not b!4084402))

(assert (not d!1212770))

(assert (not b!4084191))

(assert (not b!4084355))

(assert (not b!4084414))

(assert (not d!1212788))

(assert (not b!4084393))

(assert (not bm!288737))

(assert (not bm!288757))

(assert (not d!1212798))

(assert (not b!4084156))

(assert (not b!4084154))

(assert (not b!4084280))

(assert (not b!4084144))

(assert (not bm!288745))

(assert (not d!1212864))

(assert (not b!4084242))

(assert (not b_lambda!119509))

(assert (not b!4084130))

(assert (not b!4084399))

(assert tp_is_empty!20951)

(assert (not b!4084400))

(assert (not b!4084213))

(assert (not d!1212836))

(assert (not b!4084350))

(assert (not b!4084383))

(assert (not b!4084349))

(assert (not d!1212786))

(assert (not b!4084407))

(assert (not b!4084250))

(assert (not b!4084313))

(assert (not b!4084197))

(assert (not b_next!114795))

(assert (not b_next!114775))

(assert (not d!1212824))

(assert (not b!4084384))

(assert (not b_lambda!119505))

(assert (not b!4084375))

(assert (not bm!288736))

(assert (not b!4084299))

(assert (not b!4084157))

(assert (not b!4084245))

(assert (not d!1212826))

(assert (not b_lambda!119507))

(assert (not d!1212806))

(assert (not b!4084409))

(assert (not b!4084374))

(assert (not b!4083991))

(assert (not b!4084361))

(assert (not d!1212848))

(assert (not b!4084348))

(assert (not b!4084365))

(assert (not d!1212860))

(assert b_and!314395)

(assert (not d!1212834))

(assert (not b!4084366))

(assert (not b!4084196))

(assert (not b!4084136))

(assert (not b!4084401))

(assert (not b!4084376))

(assert (not b_lambda!119529))

(assert (not b!4084403))

(assert (not b!4084363))

(assert (not b!4084132))

(assert (not d!1212866))

(assert (not b!4084419))

(assert (not b!4084158))

(assert (not d!1212814))

(assert (not d!1212764))

(assert (not b!4084417))

(assert b_and!314389)

(assert (not tb!245323))

(assert (not d!1212844))

(assert (not b!4084346))

(assert (not d!1212782))

(assert (not b!4084152))

(assert (not b_lambda!119531))

(assert (not b!4084324))

(assert (not b!4084411))

(assert (not b!4083817))

(assert (not b!4084367))

(assert (not b!4084380))

(assert (not b_lambda!119533))

(assert (not b!4084155))

(assert b_and!314387)

(assert (not b!4084315))

(assert (not b_next!114785))

(assert (not b!4084138))

(assert (not d!1212784))

(assert (not b!4084149))

(assert (not b!4084256))

(assert (not d!1212846))

(assert (not b_next!114793))

(assert (not d!1212810))

(assert (not b!4084344))

(assert b_and!314383)

(assert (not b_next!114773))

(assert (not b!4084151))

(assert (not d!1212808))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!114771))

(assert b_and!314397)

(assert b_and!314385)

(assert b_and!314391)

(assert (not b_next!114787))

(assert b_and!314395)

(assert b_and!314389)

(assert b_and!314393)

(assert (not b_next!114769))

(assert (not b_next!114795))

(assert (not b_next!114775))

(assert b_and!314387)

(assert (not b_next!114785))

(assert (not b_next!114793))

(assert b_and!314383)

(assert (not b_next!114773))

(check-sat)

(pop 1)


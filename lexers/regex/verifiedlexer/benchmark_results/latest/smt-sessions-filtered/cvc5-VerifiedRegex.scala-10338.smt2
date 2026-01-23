; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!536918 () Bool)

(assert start!536918)

(declare-fun b!5093893 () Bool)

(declare-fun b_free!133315 () Bool)

(declare-fun b_next!134105 () Bool)

(assert (=> b!5093893 (= b_free!133315 (not b_next!134105))))

(declare-fun tp!1420157 () Bool)

(declare-fun b_and!350199 () Bool)

(assert (=> b!5093893 (= tp!1420157 b_and!350199)))

(declare-fun b_free!133317 () Bool)

(declare-fun b_next!134107 () Bool)

(assert (=> b!5093893 (= b_free!133317 (not b_next!134107))))

(declare-fun tp!1420154 () Bool)

(declare-fun b_and!350201 () Bool)

(assert (=> b!5093893 (= tp!1420154 b_and!350201)))

(declare-fun b!5093892 () Bool)

(declare-fun e!3176798 () Bool)

(declare-datatypes ((List!58704 0))(
  ( (Nil!58580) (Cons!58580 (h!65028 (_ BitVec 16)) (t!371659 List!58704)) )
))
(declare-datatypes ((TokenValue!8809 0))(
  ( (FloatLiteralValue!17618 (text!62108 List!58704)) (TokenValueExt!8808 (__x!34907 Int)) (Broken!44045 (value!272393 List!58704)) (Object!8932) (End!8809) (Def!8809) (Underscore!8809) (Match!8809) (Else!8809) (Error!8809) (Case!8809) (If!8809) (Extends!8809) (Abstract!8809) (Class!8809) (Val!8809) (DelimiterValue!17618 (del!8869 List!58704)) (KeywordValue!8815 (value!272394 List!58704)) (CommentValue!17618 (value!272395 List!58704)) (WhitespaceValue!17618 (value!272396 List!58704)) (IndentationValue!8809 (value!272397 List!58704)) (String!66968) (Int32!8809) (Broken!44046 (value!272398 List!58704)) (Boolean!8810) (Unit!149621) (OperatorValue!8812 (op!8869 List!58704)) (IdentifierValue!17618 (value!272399 List!58704)) (IdentifierValue!17619 (value!272400 List!58704)) (WhitespaceValue!17619 (value!272401 List!58704)) (True!17618) (False!17618) (Broken!44047 (value!272402 List!58704)) (Broken!44048 (value!272403 List!58704)) (True!17619) (RightBrace!8809) (RightBracket!8809) (Colon!8809) (Null!8809) (Comma!8809) (LeftBracket!8809) (False!17619) (LeftBrace!8809) (ImaginaryLiteralValue!8809 (text!62109 List!58704)) (StringLiteralValue!26427 (value!272404 List!58704)) (EOFValue!8809 (value!272405 List!58704)) (IdentValue!8809 (value!272406 List!58704)) (DelimiterValue!17619 (value!272407 List!58704)) (DedentValue!8809 (value!272408 List!58704)) (NewLineValue!8809 (value!272409 List!58704)) (IntegerValue!26427 (value!272410 (_ BitVec 32)) (text!62110 List!58704)) (IntegerValue!26428 (value!272411 Int) (text!62111 List!58704)) (Times!8809) (Or!8809) (Equal!8809) (Minus!8809) (Broken!44049 (value!272412 List!58704)) (And!8809) (Div!8809) (LessEqual!8809) (Mod!8809) (Concat!22779) (Not!8809) (Plus!8809) (SpaceValue!8809 (value!272413 List!58704)) (IntegerValue!26429 (value!272414 Int) (text!62112 List!58704)) (StringLiteralValue!26428 (text!62113 List!58704)) (FloatLiteralValue!17619 (text!62114 List!58704)) (BytesLiteralValue!8809 (value!272415 List!58704)) (CommentValue!17619 (value!272416 List!58704)) (StringLiteralValue!26429 (value!272417 List!58704)) (ErrorTokenValue!8809 (msg!8870 List!58704)) )
))
(declare-datatypes ((C!28198 0))(
  ( (C!28199 (val!23751 Int)) )
))
(declare-datatypes ((List!58705 0))(
  ( (Nil!58581) (Cons!58581 (h!65029 C!28198) (t!371660 List!58705)) )
))
(declare-datatypes ((IArray!31395 0))(
  ( (IArray!31396 (innerList!15755 List!58705)) )
))
(declare-datatypes ((Conc!15667 0))(
  ( (Node!15667 (left!42993 Conc!15667) (right!43323 Conc!15667) (csize!31564 Int) (cheight!15878 Int)) (Leaf!26006 (xs!19049 IArray!31395) (csize!31565 Int)) (Empty!15667) )
))
(declare-datatypes ((BalanceConc!30452 0))(
  ( (BalanceConc!30453 (c!875428 Conc!15667)) )
))
(declare-datatypes ((TokenValueInjection!16926 0))(
  ( (TokenValueInjection!16927 (toValue!11518 Int) (toChars!11377 Int)) )
))
(declare-datatypes ((Regex!13970 0))(
  ( (ElementMatch!13970 (c!875429 C!28198)) (Concat!22780 (regOne!28452 Regex!13970) (regTwo!28452 Regex!13970)) (EmptyExpr!13970) (Star!13970 (reg!14299 Regex!13970)) (EmptyLang!13970) (Union!13970 (regOne!28453 Regex!13970) (regTwo!28453 Regex!13970)) )
))
(declare-datatypes ((String!66969 0))(
  ( (String!66970 (value!272418 String)) )
))
(declare-datatypes ((Rule!16790 0))(
  ( (Rule!16791 (regex!8495 Regex!13970) (tag!9359 String!66969) (isSeparator!8495 Bool) (transformation!8495 TokenValueInjection!16926)) )
))
(declare-datatypes ((List!58706 0))(
  ( (Nil!58582) (Cons!58582 (h!65030 Rule!16790) (t!371661 List!58706)) )
))
(declare-fun rulesArg!145 () List!58706)

(declare-fun isEmpty!31707 (List!58706) Bool)

(assert (=> b!5093892 (= e!3176798 (not (isEmpty!31707 (t!371661 rulesArg!145))))))

(declare-fun res!2167790 () Bool)

(declare-fun e!3176799 () Bool)

(assert (=> start!536918 (=> (not res!2167790) (not e!3176799))))

(declare-datatypes ((LexerInterface!8087 0))(
  ( (LexerInterfaceExt!8084 (__x!34908 Int)) (Lexer!8085) )
))
(declare-fun thiss!14775 () LexerInterface!8087)

(assert (=> start!536918 (= res!2167790 (is-Lexer!8085 thiss!14775))))

(assert (=> start!536918 e!3176799))

(assert (=> start!536918 true))

(declare-fun e!3176794 () Bool)

(assert (=> start!536918 e!3176794))

(declare-fun e!3176800 () Bool)

(assert (=> start!536918 e!3176800))

(declare-fun e!3176795 () Bool)

(assert (=> b!5093893 (= e!3176795 (and tp!1420157 tp!1420154))))

(declare-fun tp!1420156 () Bool)

(declare-fun e!3176793 () Bool)

(declare-fun b!5093894 () Bool)

(declare-fun inv!78080 (String!66969) Bool)

(declare-fun inv!78083 (TokenValueInjection!16926) Bool)

(assert (=> b!5093894 (= e!3176793 (and tp!1420156 (inv!78080 (tag!9359 (h!65030 rulesArg!145))) (inv!78083 (transformation!8495 (h!65030 rulesArg!145))) e!3176795))))

(declare-fun b!5093895 () Bool)

(declare-fun e!3176796 () Bool)

(assert (=> b!5093895 (= e!3176799 (not e!3176796))))

(declare-fun res!2167794 () Bool)

(assert (=> b!5093895 (=> res!2167794 e!3176796)))

(assert (=> b!5093895 (= res!2167794 (or (and (is-Cons!58582 rulesArg!145) (is-Nil!58582 (t!371661 rulesArg!145))) (not (is-Cons!58582 rulesArg!145))))))

(declare-fun input!1210 () List!58705)

(declare-fun isPrefix!5391 (List!58705 List!58705) Bool)

(assert (=> b!5093895 (isPrefix!5391 input!1210 input!1210)))

(declare-datatypes ((Unit!149622 0))(
  ( (Unit!149623) )
))
(declare-fun lt!2092862 () Unit!149622)

(declare-fun lemmaIsPrefixRefl!3650 (List!58705 List!58705) Unit!149622)

(assert (=> b!5093895 (= lt!2092862 (lemmaIsPrefixRefl!3650 input!1210 input!1210))))

(declare-fun b!5093896 () Bool)

(declare-fun tp_is_empty!37205 () Bool)

(declare-fun tp!1420158 () Bool)

(assert (=> b!5093896 (= e!3176800 (and tp_is_empty!37205 tp!1420158))))

(declare-fun b!5093897 () Bool)

(assert (=> b!5093897 (= e!3176796 e!3176798)))

(declare-fun res!2167791 () Bool)

(assert (=> b!5093897 (=> res!2167791 e!3176798)))

(declare-fun rulesValidInductive!3320 (LexerInterface!8087 List!58706) Bool)

(assert (=> b!5093897 (= res!2167791 (not (rulesValidInductive!3320 thiss!14775 (t!371661 rulesArg!145))))))

(declare-datatypes ((Token!15430 0))(
  ( (Token!15431 (value!272419 TokenValue!8809) (rule!11763 Rule!16790) (size!39258 Int) (originalCharacters!8746 List!58705)) )
))
(declare-datatypes ((tuple2!63308 0))(
  ( (tuple2!63309 (_1!34957 Token!15430) (_2!34957 List!58705)) )
))
(declare-datatypes ((Option!14624 0))(
  ( (None!14623) (Some!14623 (v!50636 tuple2!63308)) )
))
(declare-fun lt!2092861 () Option!14624)

(declare-fun maxPrefixOneRuleZipper!311 (LexerInterface!8087 Rule!16790 List!58705) Option!14624)

(assert (=> b!5093897 (= lt!2092861 (maxPrefixOneRuleZipper!311 thiss!14775 (h!65030 rulesArg!145) input!1210))))

(declare-fun b!5093898 () Bool)

(declare-fun res!2167793 () Bool)

(assert (=> b!5093898 (=> (not res!2167793) (not e!3176799))))

(assert (=> b!5093898 (= res!2167793 (rulesValidInductive!3320 thiss!14775 rulesArg!145))))

(declare-fun b!5093899 () Bool)

(declare-fun res!2167792 () Bool)

(assert (=> b!5093899 (=> (not res!2167792) (not e!3176799))))

(assert (=> b!5093899 (= res!2167792 (not (isEmpty!31707 rulesArg!145)))))

(declare-fun b!5093900 () Bool)

(declare-fun tp!1420155 () Bool)

(assert (=> b!5093900 (= e!3176794 (and e!3176793 tp!1420155))))

(assert (= (and start!536918 res!2167790) b!5093898))

(assert (= (and b!5093898 res!2167793) b!5093899))

(assert (= (and b!5093899 res!2167792) b!5093895))

(assert (= (and b!5093895 (not res!2167794)) b!5093897))

(assert (= (and b!5093897 (not res!2167791)) b!5093892))

(assert (= b!5093894 b!5093893))

(assert (= b!5093900 b!5093894))

(assert (= (and start!536918 (is-Cons!58582 rulesArg!145)) b!5093900))

(assert (= (and start!536918 (is-Cons!58581 input!1210)) b!5093896))

(declare-fun m!6151862 () Bool)

(assert (=> b!5093892 m!6151862))

(declare-fun m!6151864 () Bool)

(assert (=> b!5093898 m!6151864))

(declare-fun m!6151866 () Bool)

(assert (=> b!5093894 m!6151866))

(declare-fun m!6151868 () Bool)

(assert (=> b!5093894 m!6151868))

(declare-fun m!6151870 () Bool)

(assert (=> b!5093895 m!6151870))

(declare-fun m!6151872 () Bool)

(assert (=> b!5093895 m!6151872))

(declare-fun m!6151874 () Bool)

(assert (=> b!5093897 m!6151874))

(declare-fun m!6151876 () Bool)

(assert (=> b!5093897 m!6151876))

(declare-fun m!6151878 () Bool)

(assert (=> b!5093899 m!6151878))

(push 1)

(assert (not b!5093892))

(assert (not b!5093900))

(assert (not b!5093896))

(assert b_and!350201)

(assert (not b_next!134107))

(assert (not b!5093899))

(assert (not b!5093894))

(assert b_and!350199)

(assert (not b!5093898))

(assert (not b_next!134105))

(assert (not b!5093897))

(assert tp_is_empty!37205)

(assert (not b!5093895))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350201)

(assert b_and!350199)

(assert (not b_next!134105))

(assert (not b_next!134107))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1648755 () Bool)

(assert (=> d!1648755 (= (isEmpty!31707 rulesArg!145) (is-Nil!58582 rulesArg!145))))

(assert (=> b!5093899 d!1648755))

(declare-fun d!1648757 () Bool)

(assert (=> d!1648757 true))

(declare-fun lt!2092873 () Bool)

(declare-fun lambda!249839 () Int)

(declare-fun forall!13471 (List!58706 Int) Bool)

(assert (=> d!1648757 (= lt!2092873 (forall!13471 rulesArg!145 lambda!249839))))

(declare-fun e!3176834 () Bool)

(assert (=> d!1648757 (= lt!2092873 e!3176834)))

(declare-fun res!2167825 () Bool)

(assert (=> d!1648757 (=> res!2167825 e!3176834)))

(assert (=> d!1648757 (= res!2167825 (not (is-Cons!58582 rulesArg!145)))))

(assert (=> d!1648757 (= (rulesValidInductive!3320 thiss!14775 rulesArg!145) lt!2092873)))

(declare-fun b!5093936 () Bool)

(declare-fun e!3176833 () Bool)

(assert (=> b!5093936 (= e!3176834 e!3176833)))

(declare-fun res!2167824 () Bool)

(assert (=> b!5093936 (=> (not res!2167824) (not e!3176833))))

(declare-fun ruleValid!3897 (LexerInterface!8087 Rule!16790) Bool)

(assert (=> b!5093936 (= res!2167824 (ruleValid!3897 thiss!14775 (h!65030 rulesArg!145)))))

(declare-fun b!5093937 () Bool)

(assert (=> b!5093937 (= e!3176833 (rulesValidInductive!3320 thiss!14775 (t!371661 rulesArg!145)))))

(assert (= (and d!1648757 (not res!2167825)) b!5093936))

(assert (= (and b!5093936 res!2167824) b!5093937))

(declare-fun m!6151898 () Bool)

(assert (=> d!1648757 m!6151898))

(declare-fun m!6151900 () Bool)

(assert (=> b!5093936 m!6151900))

(assert (=> b!5093937 m!6151874))

(assert (=> b!5093898 d!1648757))

(declare-fun d!1648763 () Bool)

(assert (=> d!1648763 (= (isEmpty!31707 (t!371661 rulesArg!145)) (is-Nil!58582 (t!371661 rulesArg!145)))))

(assert (=> b!5093892 d!1648763))

(declare-fun bs!1191285 () Bool)

(declare-fun d!1648765 () Bool)

(assert (= bs!1191285 (and d!1648765 d!1648757)))

(declare-fun lambda!249840 () Int)

(assert (=> bs!1191285 (= lambda!249840 lambda!249839)))

(assert (=> d!1648765 true))

(declare-fun lt!2092874 () Bool)

(assert (=> d!1648765 (= lt!2092874 (forall!13471 (t!371661 rulesArg!145) lambda!249840))))

(declare-fun e!3176836 () Bool)

(assert (=> d!1648765 (= lt!2092874 e!3176836)))

(declare-fun res!2167827 () Bool)

(assert (=> d!1648765 (=> res!2167827 e!3176836)))

(assert (=> d!1648765 (= res!2167827 (not (is-Cons!58582 (t!371661 rulesArg!145))))))

(assert (=> d!1648765 (= (rulesValidInductive!3320 thiss!14775 (t!371661 rulesArg!145)) lt!2092874)))

(declare-fun b!5093940 () Bool)

(declare-fun e!3176835 () Bool)

(assert (=> b!5093940 (= e!3176836 e!3176835)))

(declare-fun res!2167826 () Bool)

(assert (=> b!5093940 (=> (not res!2167826) (not e!3176835))))

(assert (=> b!5093940 (= res!2167826 (ruleValid!3897 thiss!14775 (h!65030 (t!371661 rulesArg!145))))))

(declare-fun b!5093941 () Bool)

(assert (=> b!5093941 (= e!3176835 (rulesValidInductive!3320 thiss!14775 (t!371661 (t!371661 rulesArg!145))))))

(assert (= (and d!1648765 (not res!2167827)) b!5093940))

(assert (= (and b!5093940 res!2167826) b!5093941))

(declare-fun m!6151902 () Bool)

(assert (=> d!1648765 m!6151902))

(declare-fun m!6151904 () Bool)

(assert (=> b!5093940 m!6151904))

(declare-fun m!6151906 () Bool)

(assert (=> b!5093941 m!6151906))

(assert (=> b!5093897 d!1648765))

(declare-fun d!1648767 () Bool)

(declare-fun lt!2092898 () Option!14624)

(declare-fun maxPrefixOneRule!3697 (LexerInterface!8087 Rule!16790 List!58705) Option!14624)

(assert (=> d!1648767 (= lt!2092898 (maxPrefixOneRule!3697 thiss!14775 (h!65030 rulesArg!145) input!1210))))

(declare-fun e!3176852 () Option!14624)

(assert (=> d!1648767 (= lt!2092898 e!3176852)))

(declare-fun c!875435 () Bool)

(declare-datatypes ((tuple2!63312 0))(
  ( (tuple2!63313 (_1!34959 List!58705) (_2!34959 List!58705)) )
))
(declare-fun lt!2092894 () tuple2!63312)

(declare-fun isEmpty!31709 (List!58705) Bool)

(assert (=> d!1648767 (= c!875435 (isEmpty!31709 (_1!34959 lt!2092894)))))

(declare-fun findLongestMatchWithZipper!103 (Regex!13970 List!58705) tuple2!63312)

(assert (=> d!1648767 (= lt!2092894 (findLongestMatchWithZipper!103 (regex!8495 (h!65030 rulesArg!145)) input!1210))))

(assert (=> d!1648767 (ruleValid!3897 thiss!14775 (h!65030 rulesArg!145))))

(assert (=> d!1648767 (= (maxPrefixOneRuleZipper!311 thiss!14775 (h!65030 rulesArg!145) input!1210) lt!2092898)))

(declare-fun b!5093964 () Bool)

(assert (=> b!5093964 (= e!3176852 None!14623)))

(declare-fun b!5093965 () Bool)

(declare-fun apply!14286 (TokenValueInjection!16926 BalanceConc!30452) TokenValue!8809)

(declare-fun seqFromList!6104 (List!58705) BalanceConc!30452)

(declare-fun size!39260 (List!58705) Int)

(assert (=> b!5093965 (= e!3176852 (Some!14623 (tuple2!63309 (Token!15431 (apply!14286 (transformation!8495 (h!65030 rulesArg!145)) (seqFromList!6104 (_1!34959 lt!2092894))) (h!65030 rulesArg!145) (size!39260 (_1!34959 lt!2092894)) (_1!34959 lt!2092894)) (_2!34959 lt!2092894))))))

(declare-fun lt!2092893 () Unit!149622)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1964 (Regex!13970 List!58705) Unit!149622)

(assert (=> b!5093965 (= lt!2092893 (longestMatchIsAcceptedByMatchOrIsEmpty!1964 (regex!8495 (h!65030 rulesArg!145)) input!1210))))

(declare-fun res!2167844 () Bool)

(declare-fun findLongestMatchInner!2011 (Regex!13970 List!58705 Int List!58705 List!58705 Int) tuple2!63312)

(assert (=> b!5093965 (= res!2167844 (isEmpty!31709 (_1!34959 (findLongestMatchInner!2011 (regex!8495 (h!65030 rulesArg!145)) Nil!58581 (size!39260 Nil!58581) input!1210 input!1210 (size!39260 input!1210)))))))

(declare-fun e!3176853 () Bool)

(assert (=> b!5093965 (=> res!2167844 e!3176853)))

(assert (=> b!5093965 e!3176853))

(declare-fun lt!2092896 () Unit!149622)

(assert (=> b!5093965 (= lt!2092896 lt!2092893)))

(declare-fun lt!2092895 () Unit!149622)

(declare-fun lemmaInv!1404 (TokenValueInjection!16926) Unit!149622)

(assert (=> b!5093965 (= lt!2092895 (lemmaInv!1404 (transformation!8495 (h!65030 rulesArg!145))))))

(declare-fun lt!2092897 () Unit!149622)

(declare-fun lemmaSemiInverse!2637 (TokenValueInjection!16926 BalanceConc!30452) Unit!149622)

(assert (=> b!5093965 (= lt!2092897 (lemmaSemiInverse!2637 (transformation!8495 (h!65030 rulesArg!145)) (seqFromList!6104 (_1!34959 lt!2092894))))))

(declare-fun b!5093966 () Bool)

(declare-fun matchR!6786 (Regex!13970 List!58705) Bool)

(assert (=> b!5093966 (= e!3176853 (matchR!6786 (regex!8495 (h!65030 rulesArg!145)) (_1!34959 (findLongestMatchInner!2011 (regex!8495 (h!65030 rulesArg!145)) Nil!58581 (size!39260 Nil!58581) input!1210 input!1210 (size!39260 input!1210)))))))

(assert (= (and d!1648767 c!875435) b!5093964))

(assert (= (and d!1648767 (not c!875435)) b!5093965))

(assert (= (and b!5093965 (not res!2167844)) b!5093966))

(declare-fun m!6151922 () Bool)

(assert (=> d!1648767 m!6151922))

(declare-fun m!6151924 () Bool)

(assert (=> d!1648767 m!6151924))

(declare-fun m!6151926 () Bool)

(assert (=> d!1648767 m!6151926))

(assert (=> d!1648767 m!6151900))

(declare-fun m!6151928 () Bool)

(assert (=> b!5093965 m!6151928))

(declare-fun m!6151930 () Bool)

(assert (=> b!5093965 m!6151930))

(declare-fun m!6151932 () Bool)

(assert (=> b!5093965 m!6151932))

(declare-fun m!6151934 () Bool)

(assert (=> b!5093965 m!6151934))

(declare-fun m!6151936 () Bool)

(assert (=> b!5093965 m!6151936))

(assert (=> b!5093965 m!6151932))

(declare-fun m!6151938 () Bool)

(assert (=> b!5093965 m!6151938))

(assert (=> b!5093965 m!6151928))

(assert (=> b!5093965 m!6151930))

(declare-fun m!6151940 () Bool)

(assert (=> b!5093965 m!6151940))

(assert (=> b!5093965 m!6151932))

(declare-fun m!6151942 () Bool)

(assert (=> b!5093965 m!6151942))

(declare-fun m!6151944 () Bool)

(assert (=> b!5093965 m!6151944))

(declare-fun m!6151946 () Bool)

(assert (=> b!5093965 m!6151946))

(assert (=> b!5093966 m!6151928))

(assert (=> b!5093966 m!6151930))

(assert (=> b!5093966 m!6151928))

(assert (=> b!5093966 m!6151930))

(assert (=> b!5093966 m!6151940))

(declare-fun m!6151948 () Bool)

(assert (=> b!5093966 m!6151948))

(assert (=> b!5093897 d!1648767))

(declare-fun b!5093980 () Bool)

(declare-fun e!3176865 () Bool)

(declare-fun e!3176867 () Bool)

(assert (=> b!5093980 (= e!3176865 e!3176867)))

(declare-fun res!2167859 () Bool)

(assert (=> b!5093980 (=> (not res!2167859) (not e!3176867))))

(assert (=> b!5093980 (= res!2167859 (not (is-Nil!58581 input!1210)))))

(declare-fun b!5093982 () Bool)

(declare-fun tail!9969 (List!58705) List!58705)

(assert (=> b!5093982 (= e!3176867 (isPrefix!5391 (tail!9969 input!1210) (tail!9969 input!1210)))))

(declare-fun b!5093981 () Bool)

(declare-fun res!2167861 () Bool)

(assert (=> b!5093981 (=> (not res!2167861) (not e!3176867))))

(declare-fun head!10814 (List!58705) C!28198)

(assert (=> b!5093981 (= res!2167861 (= (head!10814 input!1210) (head!10814 input!1210)))))

(declare-fun b!5093983 () Bool)

(declare-fun e!3176866 () Bool)

(assert (=> b!5093983 (= e!3176866 (>= (size!39260 input!1210) (size!39260 input!1210)))))

(declare-fun d!1648779 () Bool)

(assert (=> d!1648779 e!3176866))

(declare-fun res!2167858 () Bool)

(assert (=> d!1648779 (=> res!2167858 e!3176866)))

(declare-fun lt!2092903 () Bool)

(assert (=> d!1648779 (= res!2167858 (not lt!2092903))))

(assert (=> d!1648779 (= lt!2092903 e!3176865)))

(declare-fun res!2167860 () Bool)

(assert (=> d!1648779 (=> res!2167860 e!3176865)))

(assert (=> d!1648779 (= res!2167860 (is-Nil!58581 input!1210))))

(assert (=> d!1648779 (= (isPrefix!5391 input!1210 input!1210) lt!2092903)))

(assert (= (and d!1648779 (not res!2167860)) b!5093980))

(assert (= (and b!5093980 res!2167859) b!5093981))

(assert (= (and b!5093981 res!2167861) b!5093982))

(assert (= (and d!1648779 (not res!2167858)) b!5093983))

(declare-fun m!6151960 () Bool)

(assert (=> b!5093982 m!6151960))

(assert (=> b!5093982 m!6151960))

(assert (=> b!5093982 m!6151960))

(assert (=> b!5093982 m!6151960))

(declare-fun m!6151962 () Bool)

(assert (=> b!5093982 m!6151962))

(declare-fun m!6151964 () Bool)

(assert (=> b!5093981 m!6151964))

(assert (=> b!5093981 m!6151964))

(assert (=> b!5093983 m!6151930))

(assert (=> b!5093983 m!6151930))

(assert (=> b!5093895 d!1648779))

(declare-fun d!1648785 () Bool)

(assert (=> d!1648785 (isPrefix!5391 input!1210 input!1210)))

(declare-fun lt!2092906 () Unit!149622)

(declare-fun choose!37301 (List!58705 List!58705) Unit!149622)

(assert (=> d!1648785 (= lt!2092906 (choose!37301 input!1210 input!1210))))

(assert (=> d!1648785 (= (lemmaIsPrefixRefl!3650 input!1210 input!1210) lt!2092906)))

(declare-fun bs!1191288 () Bool)

(assert (= bs!1191288 d!1648785))

(assert (=> bs!1191288 m!6151870))

(declare-fun m!6151966 () Bool)

(assert (=> bs!1191288 m!6151966))

(assert (=> b!5093895 d!1648785))

(declare-fun d!1648787 () Bool)

(assert (=> d!1648787 (= (inv!78080 (tag!9359 (h!65030 rulesArg!145))) (= (mod (str.len (value!272418 (tag!9359 (h!65030 rulesArg!145)))) 2) 0))))

(assert (=> b!5093894 d!1648787))

(declare-fun d!1648789 () Bool)

(declare-fun res!2167864 () Bool)

(declare-fun e!3176870 () Bool)

(assert (=> d!1648789 (=> (not res!2167864) (not e!3176870))))

(declare-fun semiInverseModEq!3784 (Int Int) Bool)

(assert (=> d!1648789 (= res!2167864 (semiInverseModEq!3784 (toChars!11377 (transformation!8495 (h!65030 rulesArg!145))) (toValue!11518 (transformation!8495 (h!65030 rulesArg!145)))))))

(assert (=> d!1648789 (= (inv!78083 (transformation!8495 (h!65030 rulesArg!145))) e!3176870)))

(declare-fun b!5093986 () Bool)

(declare-fun equivClasses!3599 (Int Int) Bool)

(assert (=> b!5093986 (= e!3176870 (equivClasses!3599 (toChars!11377 (transformation!8495 (h!65030 rulesArg!145))) (toValue!11518 (transformation!8495 (h!65030 rulesArg!145)))))))

(assert (= (and d!1648789 res!2167864) b!5093986))

(declare-fun m!6151968 () Bool)

(assert (=> d!1648789 m!6151968))

(declare-fun m!6151970 () Bool)

(assert (=> b!5093986 m!6151970))

(assert (=> b!5093894 d!1648789))

(declare-fun b!5093991 () Bool)

(declare-fun e!3176873 () Bool)

(declare-fun tp!1420176 () Bool)

(assert (=> b!5093991 (= e!3176873 (and tp_is_empty!37205 tp!1420176))))

(assert (=> b!5093896 (= tp!1420158 e!3176873)))

(assert (= (and b!5093896 (is-Cons!58581 (t!371660 input!1210))) b!5093991))

(declare-fun b!5094002 () Bool)

(declare-fun b_free!133323 () Bool)

(declare-fun b_next!134113 () Bool)

(assert (=> b!5094002 (= b_free!133323 (not b_next!134113))))

(declare-fun tp!1420187 () Bool)

(declare-fun b_and!350207 () Bool)

(assert (=> b!5094002 (= tp!1420187 b_and!350207)))

(declare-fun b_free!133325 () Bool)

(declare-fun b_next!134115 () Bool)

(assert (=> b!5094002 (= b_free!133325 (not b_next!134115))))

(declare-fun tp!1420188 () Bool)

(declare-fun b_and!350209 () Bool)

(assert (=> b!5094002 (= tp!1420188 b_and!350209)))

(declare-fun e!3176883 () Bool)

(assert (=> b!5094002 (= e!3176883 (and tp!1420187 tp!1420188))))

(declare-fun e!3176882 () Bool)

(declare-fun tp!1420185 () Bool)

(declare-fun b!5094001 () Bool)

(assert (=> b!5094001 (= e!3176882 (and tp!1420185 (inv!78080 (tag!9359 (h!65030 (t!371661 rulesArg!145)))) (inv!78083 (transformation!8495 (h!65030 (t!371661 rulesArg!145)))) e!3176883))))

(declare-fun b!5094000 () Bool)

(declare-fun e!3176885 () Bool)

(declare-fun tp!1420186 () Bool)

(assert (=> b!5094000 (= e!3176885 (and e!3176882 tp!1420186))))

(assert (=> b!5093900 (= tp!1420155 e!3176885)))

(assert (= b!5094001 b!5094002))

(assert (= b!5094000 b!5094001))

(assert (= (and b!5093900 (is-Cons!58582 (t!371661 rulesArg!145))) b!5094000))

(declare-fun m!6151972 () Bool)

(assert (=> b!5094001 m!6151972))

(declare-fun m!6151974 () Bool)

(assert (=> b!5094001 m!6151974))

(declare-fun b!5094013 () Bool)

(declare-fun e!3176888 () Bool)

(assert (=> b!5094013 (= e!3176888 tp_is_empty!37205)))

(declare-fun b!5094016 () Bool)

(declare-fun tp!1420203 () Bool)

(declare-fun tp!1420199 () Bool)

(assert (=> b!5094016 (= e!3176888 (and tp!1420203 tp!1420199))))

(declare-fun b!5094014 () Bool)

(declare-fun tp!1420200 () Bool)

(declare-fun tp!1420201 () Bool)

(assert (=> b!5094014 (= e!3176888 (and tp!1420200 tp!1420201))))

(assert (=> b!5093894 (= tp!1420156 e!3176888)))

(declare-fun b!5094015 () Bool)

(declare-fun tp!1420202 () Bool)

(assert (=> b!5094015 (= e!3176888 tp!1420202)))

(assert (= (and b!5093894 (is-ElementMatch!13970 (regex!8495 (h!65030 rulesArg!145)))) b!5094013))

(assert (= (and b!5093894 (is-Concat!22780 (regex!8495 (h!65030 rulesArg!145)))) b!5094014))

(assert (= (and b!5093894 (is-Star!13970 (regex!8495 (h!65030 rulesArg!145)))) b!5094015))

(assert (= (and b!5093894 (is-Union!13970 (regex!8495 (h!65030 rulesArg!145)))) b!5094016))

(push 1)

(assert (not b!5093982))

(assert (not b!5093965))

(assert (not d!1648767))

(assert b_and!350207)

(assert (not b!5093936))

(assert b_and!350201)

(assert b_and!350209)

(assert (not b!5093986))

(assert (not b_next!134105))

(assert (not b!5094014))

(assert b_and!350199)

(assert (not b!5093981))

(assert tp_is_empty!37205)

(assert (not b!5094015))

(assert (not d!1648765))

(assert (not b!5093940))

(assert (not b_next!134115))

(assert (not b_next!134113))

(assert (not b!5093991))

(assert (not d!1648789))

(assert (not b_next!134107))

(assert (not d!1648785))

(assert (not d!1648757))

(assert (not b!5093983))

(assert (not b!5093937))

(assert (not b!5094000))

(assert (not b!5093966))

(assert (not b!5094016))

(assert (not b!5093941))

(assert (not b!5094001))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350207)

(assert b_and!350201)

(assert (not b_next!134107))

(assert b_and!350209)

(assert (not b_next!134105))

(assert b_and!350199)

(assert (not b_next!134115))

(assert (not b_next!134113))

(check-sat)

(pop 1)


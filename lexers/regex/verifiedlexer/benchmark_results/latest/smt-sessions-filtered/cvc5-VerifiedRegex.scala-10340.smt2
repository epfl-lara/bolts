; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!536954 () Bool)

(assert start!536954)

(declare-fun b!5094124 () Bool)

(declare-fun b_free!133335 () Bool)

(declare-fun b_next!134125 () Bool)

(assert (=> b!5094124 (= b_free!133335 (not b_next!134125))))

(declare-fun tp!1420275 () Bool)

(declare-fun b_and!350219 () Bool)

(assert (=> b!5094124 (= tp!1420275 b_and!350219)))

(declare-fun b_free!133337 () Bool)

(declare-fun b_next!134127 () Bool)

(assert (=> b!5094124 (= b_free!133337 (not b_next!134127))))

(declare-fun tp!1420277 () Bool)

(declare-fun b_and!350221 () Bool)

(assert (=> b!5094124 (= tp!1420277 b_and!350221)))

(declare-fun res!2167900 () Bool)

(declare-fun e!3176974 () Bool)

(assert (=> start!536954 (=> (not res!2167900) (not e!3176974))))

(declare-datatypes ((LexerInterface!8091 0))(
  ( (LexerInterfaceExt!8088 (__x!34915 Int)) (Lexer!8089) )
))
(declare-fun thiss!14775 () LexerInterface!8091)

(assert (=> start!536954 (= res!2167900 (is-Lexer!8089 thiss!14775))))

(assert (=> start!536954 e!3176974))

(assert (=> start!536954 true))

(declare-fun e!3176970 () Bool)

(assert (=> start!536954 e!3176970))

(declare-fun e!3176971 () Bool)

(assert (=> start!536954 e!3176971))

(declare-fun b!5094120 () Bool)

(declare-fun e!3176969 () Bool)

(declare-fun tp!1420278 () Bool)

(assert (=> b!5094120 (= e!3176970 (and e!3176969 tp!1420278))))

(declare-fun b!5094121 () Bool)

(declare-fun tp_is_empty!37213 () Bool)

(declare-fun tp!1420274 () Bool)

(assert (=> b!5094121 (= e!3176971 (and tp_is_empty!37213 tp!1420274))))

(declare-fun b!5094122 () Bool)

(declare-fun res!2167902 () Bool)

(assert (=> b!5094122 (=> (not res!2167902) (not e!3176974))))

(declare-datatypes ((List!58716 0))(
  ( (Nil!58592) (Cons!58592 (h!65040 (_ BitVec 16)) (t!371671 List!58716)) )
))
(declare-datatypes ((TokenValue!8813 0))(
  ( (FloatLiteralValue!17626 (text!62136 List!58716)) (TokenValueExt!8812 (__x!34916 Int)) (Broken!44065 (value!272507 List!58716)) (Object!8936) (End!8813) (Def!8813) (Underscore!8813) (Match!8813) (Else!8813) (Error!8813) (Case!8813) (If!8813) (Extends!8813) (Abstract!8813) (Class!8813) (Val!8813) (DelimiterValue!17626 (del!8873 List!58716)) (KeywordValue!8819 (value!272508 List!58716)) (CommentValue!17626 (value!272509 List!58716)) (WhitespaceValue!17626 (value!272510 List!58716)) (IndentationValue!8813 (value!272511 List!58716)) (String!66988) (Int32!8813) (Broken!44066 (value!272512 List!58716)) (Boolean!8814) (Unit!149633) (OperatorValue!8816 (op!8873 List!58716)) (IdentifierValue!17626 (value!272513 List!58716)) (IdentifierValue!17627 (value!272514 List!58716)) (WhitespaceValue!17627 (value!272515 List!58716)) (True!17626) (False!17626) (Broken!44067 (value!272516 List!58716)) (Broken!44068 (value!272517 List!58716)) (True!17627) (RightBrace!8813) (RightBracket!8813) (Colon!8813) (Null!8813) (Comma!8813) (LeftBracket!8813) (False!17627) (LeftBrace!8813) (ImaginaryLiteralValue!8813 (text!62137 List!58716)) (StringLiteralValue!26439 (value!272518 List!58716)) (EOFValue!8813 (value!272519 List!58716)) (IdentValue!8813 (value!272520 List!58716)) (DelimiterValue!17627 (value!272521 List!58716)) (DedentValue!8813 (value!272522 List!58716)) (NewLineValue!8813 (value!272523 List!58716)) (IntegerValue!26439 (value!272524 (_ BitVec 32)) (text!62138 List!58716)) (IntegerValue!26440 (value!272525 Int) (text!62139 List!58716)) (Times!8813) (Or!8813) (Equal!8813) (Minus!8813) (Broken!44069 (value!272526 List!58716)) (And!8813) (Div!8813) (LessEqual!8813) (Mod!8813) (Concat!22787) (Not!8813) (Plus!8813) (SpaceValue!8813 (value!272527 List!58716)) (IntegerValue!26441 (value!272528 Int) (text!62140 List!58716)) (StringLiteralValue!26440 (text!62141 List!58716)) (FloatLiteralValue!17627 (text!62142 List!58716)) (BytesLiteralValue!8813 (value!272529 List!58716)) (CommentValue!17627 (value!272530 List!58716)) (StringLiteralValue!26441 (value!272531 List!58716)) (ErrorTokenValue!8813 (msg!8874 List!58716)) )
))
(declare-datatypes ((C!28206 0))(
  ( (C!28207 (val!23755 Int)) )
))
(declare-datatypes ((List!58717 0))(
  ( (Nil!58593) (Cons!58593 (h!65041 C!28206) (t!371672 List!58717)) )
))
(declare-datatypes ((IArray!31403 0))(
  ( (IArray!31404 (innerList!15759 List!58717)) )
))
(declare-datatypes ((Conc!15671 0))(
  ( (Node!15671 (left!43003 Conc!15671) (right!43333 Conc!15671) (csize!31572 Int) (cheight!15882 Int)) (Leaf!26012 (xs!19053 IArray!31403) (csize!31573 Int)) (Empty!15671) )
))
(declare-datatypes ((BalanceConc!30460 0))(
  ( (BalanceConc!30461 (c!875447 Conc!15671)) )
))
(declare-datatypes ((TokenValueInjection!16934 0))(
  ( (TokenValueInjection!16935 (toValue!11522 Int) (toChars!11381 Int)) )
))
(declare-datatypes ((Regex!13974 0))(
  ( (ElementMatch!13974 (c!875448 C!28206)) (Concat!22788 (regOne!28460 Regex!13974) (regTwo!28460 Regex!13974)) (EmptyExpr!13974) (Star!13974 (reg!14303 Regex!13974)) (EmptyLang!13974) (Union!13974 (regOne!28461 Regex!13974) (regTwo!28461 Regex!13974)) )
))
(declare-datatypes ((String!66989 0))(
  ( (String!66990 (value!272532 String)) )
))
(declare-datatypes ((Rule!16798 0))(
  ( (Rule!16799 (regex!8499 Regex!13974) (tag!9363 String!66989) (isSeparator!8499 Bool) (transformation!8499 TokenValueInjection!16934)) )
))
(declare-datatypes ((List!58718 0))(
  ( (Nil!58594) (Cons!58594 (h!65042 Rule!16798) (t!371673 List!58718)) )
))
(declare-fun rulesArg!145 () List!58718)

(declare-fun isEmpty!31712 (List!58718) Bool)

(assert (=> b!5094122 (= res!2167902 (not (isEmpty!31712 rulesArg!145)))))

(declare-fun e!3176972 () Bool)

(declare-fun tp!1420276 () Bool)

(declare-fun b!5094123 () Bool)

(declare-fun inv!78090 (String!66989) Bool)

(declare-fun inv!78093 (TokenValueInjection!16934) Bool)

(assert (=> b!5094123 (= e!3176969 (and tp!1420276 (inv!78090 (tag!9363 (h!65042 rulesArg!145))) (inv!78093 (transformation!8499 (h!65042 rulesArg!145))) e!3176972))))

(assert (=> b!5094124 (= e!3176972 (and tp!1420275 tp!1420277))))

(declare-fun b!5094125 () Bool)

(declare-fun res!2167903 () Bool)

(assert (=> b!5094125 (=> (not res!2167903) (not e!3176974))))

(declare-fun rulesValidInductive!3324 (LexerInterface!8091 List!58718) Bool)

(assert (=> b!5094125 (= res!2167903 (rulesValidInductive!3324 thiss!14775 rulesArg!145))))

(declare-fun b!5094126 () Bool)

(declare-fun e!3176975 () Bool)

(declare-fun input!1210 () List!58717)

(declare-datatypes ((Token!15438 0))(
  ( (Token!15439 (value!272533 TokenValue!8813) (rule!11769 Rule!16798) (size!39263 Int) (originalCharacters!8750 List!58717)) )
))
(declare-datatypes ((tuple2!63318 0))(
  ( (tuple2!63319 (_1!34962 Token!15438) (_2!34962 List!58717)) )
))
(declare-datatypes ((Option!14628 0))(
  ( (None!14627) (Some!14627 (v!50640 tuple2!63318)) )
))
(declare-fun maxPrefixOneRuleZipper!315 (LexerInterface!8091 Rule!16798 List!58717) Option!14628)

(declare-fun maxPrefix!4670 (LexerInterface!8091 List!58718 List!58717) Option!14628)

(assert (=> b!5094126 (= e!3176975 (= (maxPrefixOneRuleZipper!315 thiss!14775 (h!65042 rulesArg!145) input!1210) (maxPrefix!4670 thiss!14775 rulesArg!145 input!1210)))))

(declare-fun b!5094127 () Bool)

(assert (=> b!5094127 (= e!3176974 (not e!3176975))))

(declare-fun res!2167901 () Bool)

(assert (=> b!5094127 (=> res!2167901 e!3176975)))

(assert (=> b!5094127 (= res!2167901 (or (not (is-Cons!58594 rulesArg!145)) (not (is-Nil!58594 (t!371673 rulesArg!145)))))))

(declare-fun isPrefix!5395 (List!58717 List!58717) Bool)

(assert (=> b!5094127 (isPrefix!5395 input!1210 input!1210)))

(declare-datatypes ((Unit!149634 0))(
  ( (Unit!149635) )
))
(declare-fun lt!2092945 () Unit!149634)

(declare-fun lemmaIsPrefixRefl!3654 (List!58717 List!58717) Unit!149634)

(assert (=> b!5094127 (= lt!2092945 (lemmaIsPrefixRefl!3654 input!1210 input!1210))))

(assert (= (and start!536954 res!2167900) b!5094125))

(assert (= (and b!5094125 res!2167903) b!5094122))

(assert (= (and b!5094122 res!2167902) b!5094127))

(assert (= (and b!5094127 (not res!2167901)) b!5094126))

(assert (= b!5094123 b!5094124))

(assert (= b!5094120 b!5094123))

(assert (= (and start!536954 (is-Cons!58594 rulesArg!145)) b!5094120))

(assert (= (and start!536954 (is-Cons!58593 input!1210)) b!5094121))

(declare-fun m!6152008 () Bool)

(assert (=> b!5094127 m!6152008))

(declare-fun m!6152010 () Bool)

(assert (=> b!5094127 m!6152010))

(declare-fun m!6152012 () Bool)

(assert (=> b!5094125 m!6152012))

(declare-fun m!6152014 () Bool)

(assert (=> b!5094122 m!6152014))

(declare-fun m!6152016 () Bool)

(assert (=> b!5094126 m!6152016))

(declare-fun m!6152018 () Bool)

(assert (=> b!5094126 m!6152018))

(declare-fun m!6152020 () Bool)

(assert (=> b!5094123 m!6152020))

(declare-fun m!6152022 () Bool)

(assert (=> b!5094123 m!6152022))

(push 1)

(assert b_and!350219)

(assert (not b!5094120))

(assert (not b_next!134127))

(assert (not b_next!134125))

(assert (not b!5094121))

(assert (not b!5094125))

(assert b_and!350221)

(assert tp_is_empty!37213)

(assert (not b!5094122))

(assert (not b!5094123))

(assert (not b!5094127))

(assert (not b!5094126))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350221)

(assert b_and!350219)

(assert (not b_next!134125))

(assert (not b_next!134127))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1648793 () Bool)

(declare-fun lt!2092964 () Option!14628)

(declare-fun maxPrefixOneRule!3698 (LexerInterface!8091 Rule!16798 List!58717) Option!14628)

(assert (=> d!1648793 (= lt!2092964 (maxPrefixOneRule!3698 thiss!14775 (h!65042 rulesArg!145) input!1210))))

(declare-fun e!3177001 () Option!14628)

(assert (=> d!1648793 (= lt!2092964 e!3177001)))

(declare-fun c!875454 () Bool)

(declare-datatypes ((tuple2!63322 0))(
  ( (tuple2!63323 (_1!34964 List!58717) (_2!34964 List!58717)) )
))
(declare-fun lt!2092962 () tuple2!63322)

(declare-fun isEmpty!31714 (List!58717) Bool)

(assert (=> d!1648793 (= c!875454 (isEmpty!31714 (_1!34964 lt!2092962)))))

(declare-fun findLongestMatchWithZipper!104 (Regex!13974 List!58717) tuple2!63322)

(assert (=> d!1648793 (= lt!2092962 (findLongestMatchWithZipper!104 (regex!8499 (h!65042 rulesArg!145)) input!1210))))

(declare-fun ruleValid!3898 (LexerInterface!8091 Rule!16798) Bool)

(assert (=> d!1648793 (ruleValid!3898 thiss!14775 (h!65042 rulesArg!145))))

(assert (=> d!1648793 (= (maxPrefixOneRuleZipper!315 thiss!14775 (h!65042 rulesArg!145) input!1210) lt!2092964)))

(declare-fun b!5094158 () Bool)

(assert (=> b!5094158 (= e!3177001 None!14627)))

(declare-fun b!5094159 () Bool)

(declare-fun apply!14287 (TokenValueInjection!16934 BalanceConc!30460) TokenValue!8813)

(declare-fun seqFromList!6105 (List!58717) BalanceConc!30460)

(declare-fun size!39265 (List!58717) Int)

(assert (=> b!5094159 (= e!3177001 (Some!14627 (tuple2!63319 (Token!15439 (apply!14287 (transformation!8499 (h!65042 rulesArg!145)) (seqFromList!6105 (_1!34964 lt!2092962))) (h!65042 rulesArg!145) (size!39265 (_1!34964 lt!2092962)) (_1!34964 lt!2092962)) (_2!34964 lt!2092962))))))

(declare-fun lt!2092963 () Unit!149634)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1965 (Regex!13974 List!58717) Unit!149634)

(assert (=> b!5094159 (= lt!2092963 (longestMatchIsAcceptedByMatchOrIsEmpty!1965 (regex!8499 (h!65042 rulesArg!145)) input!1210))))

(declare-fun res!2167922 () Bool)

(declare-fun findLongestMatchInner!2012 (Regex!13974 List!58717 Int List!58717 List!58717 Int) tuple2!63322)

(assert (=> b!5094159 (= res!2167922 (isEmpty!31714 (_1!34964 (findLongestMatchInner!2012 (regex!8499 (h!65042 rulesArg!145)) Nil!58593 (size!39265 Nil!58593) input!1210 input!1210 (size!39265 input!1210)))))))

(declare-fun e!3177002 () Bool)

(assert (=> b!5094159 (=> res!2167922 e!3177002)))

(assert (=> b!5094159 e!3177002))

(declare-fun lt!2092966 () Unit!149634)

(assert (=> b!5094159 (= lt!2092966 lt!2092963)))

(declare-fun lt!2092965 () Unit!149634)

(declare-fun lemmaInv!1405 (TokenValueInjection!16934) Unit!149634)

(assert (=> b!5094159 (= lt!2092965 (lemmaInv!1405 (transformation!8499 (h!65042 rulesArg!145))))))

(declare-fun lt!2092961 () Unit!149634)

(declare-fun lemmaSemiInverse!2638 (TokenValueInjection!16934 BalanceConc!30460) Unit!149634)

(assert (=> b!5094159 (= lt!2092961 (lemmaSemiInverse!2638 (transformation!8499 (h!65042 rulesArg!145)) (seqFromList!6105 (_1!34964 lt!2092962))))))

(declare-fun b!5094160 () Bool)

(declare-fun matchR!6787 (Regex!13974 List!58717) Bool)

(assert (=> b!5094160 (= e!3177002 (matchR!6787 (regex!8499 (h!65042 rulesArg!145)) (_1!34964 (findLongestMatchInner!2012 (regex!8499 (h!65042 rulesArg!145)) Nil!58593 (size!39265 Nil!58593) input!1210 input!1210 (size!39265 input!1210)))))))

(assert (= (and d!1648793 c!875454) b!5094158))

(assert (= (and d!1648793 (not c!875454)) b!5094159))

(assert (= (and b!5094159 (not res!2167922)) b!5094160))

(declare-fun m!6152040 () Bool)

(assert (=> d!1648793 m!6152040))

(declare-fun m!6152042 () Bool)

(assert (=> d!1648793 m!6152042))

(declare-fun m!6152044 () Bool)

(assert (=> d!1648793 m!6152044))

(declare-fun m!6152046 () Bool)

(assert (=> d!1648793 m!6152046))

(declare-fun m!6152048 () Bool)

(assert (=> b!5094159 m!6152048))

(declare-fun m!6152050 () Bool)

(assert (=> b!5094159 m!6152050))

(declare-fun m!6152052 () Bool)

(assert (=> b!5094159 m!6152052))

(declare-fun m!6152054 () Bool)

(assert (=> b!5094159 m!6152054))

(assert (=> b!5094159 m!6152050))

(assert (=> b!5094159 m!6152050))

(declare-fun m!6152056 () Bool)

(assert (=> b!5094159 m!6152056))

(declare-fun m!6152058 () Bool)

(assert (=> b!5094159 m!6152058))

(declare-fun m!6152060 () Bool)

(assert (=> b!5094159 m!6152060))

(declare-fun m!6152062 () Bool)

(assert (=> b!5094159 m!6152062))

(assert (=> b!5094159 m!6152048))

(assert (=> b!5094159 m!6152054))

(declare-fun m!6152064 () Bool)

(assert (=> b!5094159 m!6152064))

(declare-fun m!6152066 () Bool)

(assert (=> b!5094159 m!6152066))

(assert (=> b!5094160 m!6152048))

(assert (=> b!5094160 m!6152054))

(assert (=> b!5094160 m!6152048))

(assert (=> b!5094160 m!6152054))

(assert (=> b!5094160 m!6152064))

(declare-fun m!6152068 () Bool)

(assert (=> b!5094160 m!6152068))

(assert (=> b!5094126 d!1648793))

(declare-fun b!5094179 () Bool)

(declare-fun e!3177011 () Bool)

(declare-fun lt!2092977 () Option!14628)

(declare-fun contains!19599 (List!58718 Rule!16798) Bool)

(declare-fun get!20341 (Option!14628) tuple2!63318)

(assert (=> b!5094179 (= e!3177011 (contains!19599 rulesArg!145 (rule!11769 (_1!34962 (get!20341 lt!2092977)))))))

(declare-fun b!5094180 () Bool)

(declare-fun res!2167937 () Bool)

(assert (=> b!5094180 (=> (not res!2167937) (not e!3177011))))

(declare-fun list!19138 (BalanceConc!30460) List!58717)

(declare-fun charsOf!5472 (Token!15438) BalanceConc!30460)

(assert (=> b!5094180 (= res!2167937 (matchR!6787 (regex!8499 (rule!11769 (_1!34962 (get!20341 lt!2092977)))) (list!19138 (charsOf!5472 (_1!34962 (get!20341 lt!2092977))))))))

(declare-fun b!5094181 () Bool)

(declare-fun e!3177010 () Bool)

(assert (=> b!5094181 (= e!3177010 e!3177011)))

(declare-fun res!2167939 () Bool)

(assert (=> b!5094181 (=> (not res!2167939) (not e!3177011))))

(declare-fun isDefined!11498 (Option!14628) Bool)

(assert (=> b!5094181 (= res!2167939 (isDefined!11498 lt!2092977))))

(declare-fun b!5094182 () Bool)

(declare-fun res!2167942 () Bool)

(assert (=> b!5094182 (=> (not res!2167942) (not e!3177011))))

(assert (=> b!5094182 (= res!2167942 (= (list!19138 (charsOf!5472 (_1!34962 (get!20341 lt!2092977)))) (originalCharacters!8750 (_1!34962 (get!20341 lt!2092977)))))))

(declare-fun b!5094183 () Bool)

(declare-fun res!2167938 () Bool)

(assert (=> b!5094183 (=> (not res!2167938) (not e!3177011))))

(assert (=> b!5094183 (= res!2167938 (< (size!39265 (_2!34962 (get!20341 lt!2092977))) (size!39265 input!1210)))))

(declare-fun b!5094184 () Bool)

(declare-fun e!3177009 () Option!14628)

(declare-fun call!354728 () Option!14628)

(assert (=> b!5094184 (= e!3177009 call!354728)))

(declare-fun bm!354723 () Bool)

(assert (=> bm!354723 (= call!354728 (maxPrefixOneRule!3698 thiss!14775 (h!65042 rulesArg!145) input!1210))))

(declare-fun d!1648797 () Bool)

(assert (=> d!1648797 e!3177010))

(declare-fun res!2167941 () Bool)

(assert (=> d!1648797 (=> res!2167941 e!3177010)))

(declare-fun isEmpty!31715 (Option!14628) Bool)

(assert (=> d!1648797 (= res!2167941 (isEmpty!31715 lt!2092977))))

(assert (=> d!1648797 (= lt!2092977 e!3177009)))

(declare-fun c!875457 () Bool)

(assert (=> d!1648797 (= c!875457 (and (is-Cons!58594 rulesArg!145) (is-Nil!58594 (t!371673 rulesArg!145))))))

(declare-fun lt!2092978 () Unit!149634)

(declare-fun lt!2092980 () Unit!149634)

(assert (=> d!1648797 (= lt!2092978 lt!2092980)))

(assert (=> d!1648797 (isPrefix!5395 input!1210 input!1210)))

(assert (=> d!1648797 (= lt!2092980 (lemmaIsPrefixRefl!3654 input!1210 input!1210))))

(assert (=> d!1648797 (rulesValidInductive!3324 thiss!14775 rulesArg!145)))

(assert (=> d!1648797 (= (maxPrefix!4670 thiss!14775 rulesArg!145 input!1210) lt!2092977)))

(declare-fun b!5094185 () Bool)

(declare-fun res!2167940 () Bool)

(assert (=> b!5094185 (=> (not res!2167940) (not e!3177011))))

(declare-fun ++!12849 (List!58717 List!58717) List!58717)

(assert (=> b!5094185 (= res!2167940 (= (++!12849 (list!19138 (charsOf!5472 (_1!34962 (get!20341 lt!2092977)))) (_2!34962 (get!20341 lt!2092977))) input!1210))))

(declare-fun b!5094186 () Bool)

(declare-fun lt!2092981 () Option!14628)

(declare-fun lt!2092979 () Option!14628)

(assert (=> b!5094186 (= e!3177009 (ite (and (is-None!14627 lt!2092981) (is-None!14627 lt!2092979)) None!14627 (ite (is-None!14627 lt!2092979) lt!2092981 (ite (is-None!14627 lt!2092981) lt!2092979 (ite (>= (size!39263 (_1!34962 (v!50640 lt!2092981))) (size!39263 (_1!34962 (v!50640 lt!2092979)))) lt!2092981 lt!2092979)))))))

(assert (=> b!5094186 (= lt!2092981 call!354728)))

(assert (=> b!5094186 (= lt!2092979 (maxPrefix!4670 thiss!14775 (t!371673 rulesArg!145) input!1210))))

(declare-fun b!5094187 () Bool)

(declare-fun res!2167943 () Bool)

(assert (=> b!5094187 (=> (not res!2167943) (not e!3177011))))

(assert (=> b!5094187 (= res!2167943 (= (value!272533 (_1!34962 (get!20341 lt!2092977))) (apply!14287 (transformation!8499 (rule!11769 (_1!34962 (get!20341 lt!2092977)))) (seqFromList!6105 (originalCharacters!8750 (_1!34962 (get!20341 lt!2092977)))))))))

(assert (= (and d!1648797 c!875457) b!5094184))

(assert (= (and d!1648797 (not c!875457)) b!5094186))

(assert (= (or b!5094184 b!5094186) bm!354723))

(assert (= (and d!1648797 (not res!2167941)) b!5094181))

(assert (= (and b!5094181 res!2167939) b!5094182))

(assert (= (and b!5094182 res!2167942) b!5094183))

(assert (= (and b!5094183 res!2167938) b!5094185))

(assert (= (and b!5094185 res!2167940) b!5094187))

(assert (= (and b!5094187 res!2167943) b!5094180))

(assert (= (and b!5094180 res!2167937) b!5094179))

(declare-fun m!6152070 () Bool)

(assert (=> b!5094182 m!6152070))

(declare-fun m!6152072 () Bool)

(assert (=> b!5094182 m!6152072))

(assert (=> b!5094182 m!6152072))

(declare-fun m!6152074 () Bool)

(assert (=> b!5094182 m!6152074))

(assert (=> b!5094180 m!6152070))

(assert (=> b!5094180 m!6152072))

(assert (=> b!5094180 m!6152072))

(assert (=> b!5094180 m!6152074))

(assert (=> b!5094180 m!6152074))

(declare-fun m!6152076 () Bool)

(assert (=> b!5094180 m!6152076))

(assert (=> b!5094183 m!6152070))

(declare-fun m!6152078 () Bool)

(assert (=> b!5094183 m!6152078))

(assert (=> b!5094183 m!6152054))

(declare-fun m!6152080 () Bool)

(assert (=> b!5094186 m!6152080))

(assert (=> b!5094185 m!6152070))

(assert (=> b!5094185 m!6152072))

(assert (=> b!5094185 m!6152072))

(assert (=> b!5094185 m!6152074))

(assert (=> b!5094185 m!6152074))

(declare-fun m!6152082 () Bool)

(assert (=> b!5094185 m!6152082))

(assert (=> b!5094179 m!6152070))

(declare-fun m!6152084 () Bool)

(assert (=> b!5094179 m!6152084))

(assert (=> bm!354723 m!6152040))

(declare-fun m!6152086 () Bool)

(assert (=> b!5094181 m!6152086))

(assert (=> b!5094187 m!6152070))

(declare-fun m!6152088 () Bool)

(assert (=> b!5094187 m!6152088))

(assert (=> b!5094187 m!6152088))

(declare-fun m!6152090 () Bool)

(assert (=> b!5094187 m!6152090))

(declare-fun m!6152092 () Bool)

(assert (=> d!1648797 m!6152092))

(assert (=> d!1648797 m!6152008))

(assert (=> d!1648797 m!6152010))

(assert (=> d!1648797 m!6152012))

(assert (=> b!5094126 d!1648797))

(declare-fun d!1648799 () Bool)

(assert (=> d!1648799 true))

(declare-fun lt!2093025 () Bool)

(declare-fun lambda!249847 () Int)

(declare-fun forall!13472 (List!58718 Int) Bool)

(assert (=> d!1648799 (= lt!2093025 (forall!13472 rulesArg!145 lambda!249847))))

(declare-fun e!3177044 () Bool)

(assert (=> d!1648799 (= lt!2093025 e!3177044)))

(declare-fun res!2167989 () Bool)

(assert (=> d!1648799 (=> res!2167989 e!3177044)))

(assert (=> d!1648799 (= res!2167989 (not (is-Cons!58594 rulesArg!145)))))

(assert (=> d!1648799 (= (rulesValidInductive!3324 thiss!14775 rulesArg!145) lt!2093025)))

(declare-fun b!5094244 () Bool)

(declare-fun e!3177045 () Bool)

(assert (=> b!5094244 (= e!3177044 e!3177045)))

(declare-fun res!2167988 () Bool)

(assert (=> b!5094244 (=> (not res!2167988) (not e!3177045))))

(assert (=> b!5094244 (= res!2167988 (ruleValid!3898 thiss!14775 (h!65042 rulesArg!145)))))

(declare-fun b!5094245 () Bool)

(assert (=> b!5094245 (= e!3177045 (rulesValidInductive!3324 thiss!14775 (t!371673 rulesArg!145)))))

(assert (= (and d!1648799 (not res!2167989)) b!5094244))

(assert (= (and b!5094244 res!2167988) b!5094245))

(declare-fun m!6152156 () Bool)

(assert (=> d!1648799 m!6152156))

(assert (=> b!5094244 m!6152046))

(declare-fun m!6152158 () Bool)

(assert (=> b!5094245 m!6152158))

(assert (=> b!5094125 d!1648799))

(declare-fun d!1648809 () Bool)

(assert (=> d!1648809 (= (inv!78090 (tag!9363 (h!65042 rulesArg!145))) (= (mod (str.len (value!272532 (tag!9363 (h!65042 rulesArg!145)))) 2) 0))))

(assert (=> b!5094123 d!1648809))

(declare-fun d!1648811 () Bool)

(declare-fun res!2167992 () Bool)

(declare-fun e!3177048 () Bool)

(assert (=> d!1648811 (=> (not res!2167992) (not e!3177048))))

(declare-fun semiInverseModEq!3785 (Int Int) Bool)

(assert (=> d!1648811 (= res!2167992 (semiInverseModEq!3785 (toChars!11381 (transformation!8499 (h!65042 rulesArg!145))) (toValue!11522 (transformation!8499 (h!65042 rulesArg!145)))))))

(assert (=> d!1648811 (= (inv!78093 (transformation!8499 (h!65042 rulesArg!145))) e!3177048)))

(declare-fun b!5094250 () Bool)

(declare-fun equivClasses!3600 (Int Int) Bool)

(assert (=> b!5094250 (= e!3177048 (equivClasses!3600 (toChars!11381 (transformation!8499 (h!65042 rulesArg!145))) (toValue!11522 (transformation!8499 (h!65042 rulesArg!145)))))))

(assert (= (and d!1648811 res!2167992) b!5094250))

(declare-fun m!6152160 () Bool)

(assert (=> d!1648811 m!6152160))

(declare-fun m!6152162 () Bool)

(assert (=> b!5094250 m!6152162))

(assert (=> b!5094123 d!1648811))

(declare-fun d!1648813 () Bool)

(assert (=> d!1648813 (= (isEmpty!31712 rulesArg!145) (is-Nil!58594 rulesArg!145))))

(assert (=> b!5094122 d!1648813))

(declare-fun b!5094259 () Bool)

(declare-fun e!3177057 () Bool)

(declare-fun e!3177055 () Bool)

(assert (=> b!5094259 (= e!3177057 e!3177055)))

(declare-fun res!2168003 () Bool)

(assert (=> b!5094259 (=> (not res!2168003) (not e!3177055))))

(assert (=> b!5094259 (= res!2168003 (not (is-Nil!58593 input!1210)))))

(declare-fun b!5094262 () Bool)

(declare-fun e!3177056 () Bool)

(assert (=> b!5094262 (= e!3177056 (>= (size!39265 input!1210) (size!39265 input!1210)))))

(declare-fun b!5094260 () Bool)

(declare-fun res!2168001 () Bool)

(assert (=> b!5094260 (=> (not res!2168001) (not e!3177055))))

(declare-fun head!10815 (List!58717) C!28206)

(assert (=> b!5094260 (= res!2168001 (= (head!10815 input!1210) (head!10815 input!1210)))))

(declare-fun b!5094261 () Bool)

(declare-fun tail!9970 (List!58717) List!58717)

(assert (=> b!5094261 (= e!3177055 (isPrefix!5395 (tail!9970 input!1210) (tail!9970 input!1210)))))

(declare-fun d!1648815 () Bool)

(assert (=> d!1648815 e!3177056))

(declare-fun res!2168004 () Bool)

(assert (=> d!1648815 (=> res!2168004 e!3177056)))

(declare-fun lt!2093028 () Bool)

(assert (=> d!1648815 (= res!2168004 (not lt!2093028))))

(assert (=> d!1648815 (= lt!2093028 e!3177057)))

(declare-fun res!2168002 () Bool)

(assert (=> d!1648815 (=> res!2168002 e!3177057)))

(assert (=> d!1648815 (= res!2168002 (is-Nil!58593 input!1210))))

(assert (=> d!1648815 (= (isPrefix!5395 input!1210 input!1210) lt!2093028)))

(assert (= (and d!1648815 (not res!2168002)) b!5094259))

(assert (= (and b!5094259 res!2168003) b!5094260))

(assert (= (and b!5094260 res!2168001) b!5094261))

(assert (= (and d!1648815 (not res!2168004)) b!5094262))

(assert (=> b!5094262 m!6152054))

(assert (=> b!5094262 m!6152054))

(declare-fun m!6152164 () Bool)

(assert (=> b!5094260 m!6152164))

(assert (=> b!5094260 m!6152164))

(declare-fun m!6152166 () Bool)

(assert (=> b!5094261 m!6152166))

(assert (=> b!5094261 m!6152166))

(assert (=> b!5094261 m!6152166))

(assert (=> b!5094261 m!6152166))

(declare-fun m!6152168 () Bool)

(assert (=> b!5094261 m!6152168))

(assert (=> b!5094127 d!1648815))

(declare-fun d!1648817 () Bool)

(assert (=> d!1648817 (isPrefix!5395 input!1210 input!1210)))

(declare-fun lt!2093031 () Unit!149634)

(declare-fun choose!37302 (List!58717 List!58717) Unit!149634)

(assert (=> d!1648817 (= lt!2093031 (choose!37302 input!1210 input!1210))))

(assert (=> d!1648817 (= (lemmaIsPrefixRefl!3654 input!1210 input!1210) lt!2093031)))

(declare-fun bs!1191294 () Bool)

(assert (= bs!1191294 d!1648817))

(assert (=> bs!1191294 m!6152008))

(declare-fun m!6152170 () Bool)

(assert (=> bs!1191294 m!6152170))

(assert (=> b!5094127 d!1648817))

(declare-fun b!5094267 () Bool)

(declare-fun e!3177060 () Bool)

(declare-fun tp!1420296 () Bool)

(assert (=> b!5094267 (= e!3177060 (and tp_is_empty!37213 tp!1420296))))

(assert (=> b!5094121 (= tp!1420274 e!3177060)))

(assert (= (and b!5094121 (is-Cons!58593 (t!371672 input!1210))) b!5094267))

(declare-fun b!5094278 () Bool)

(declare-fun b_free!133343 () Bool)

(declare-fun b_next!134133 () Bool)

(assert (=> b!5094278 (= b_free!133343 (not b_next!134133))))

(declare-fun tp!1420307 () Bool)

(declare-fun b_and!350227 () Bool)

(assert (=> b!5094278 (= tp!1420307 b_and!350227)))

(declare-fun b_free!133345 () Bool)

(declare-fun b_next!134135 () Bool)

(assert (=> b!5094278 (= b_free!133345 (not b_next!134135))))

(declare-fun tp!1420305 () Bool)

(declare-fun b_and!350229 () Bool)

(assert (=> b!5094278 (= tp!1420305 b_and!350229)))

(declare-fun e!3177072 () Bool)

(assert (=> b!5094278 (= e!3177072 (and tp!1420307 tp!1420305))))

(declare-fun tp!1420306 () Bool)

(declare-fun e!3177071 () Bool)

(declare-fun b!5094277 () Bool)

(assert (=> b!5094277 (= e!3177071 (and tp!1420306 (inv!78090 (tag!9363 (h!65042 (t!371673 rulesArg!145)))) (inv!78093 (transformation!8499 (h!65042 (t!371673 rulesArg!145)))) e!3177072))))

(declare-fun b!5094276 () Bool)

(declare-fun e!3177069 () Bool)

(declare-fun tp!1420308 () Bool)

(assert (=> b!5094276 (= e!3177069 (and e!3177071 tp!1420308))))

(assert (=> b!5094120 (= tp!1420278 e!3177069)))

(assert (= b!5094277 b!5094278))

(assert (= b!5094276 b!5094277))

(assert (= (and b!5094120 (is-Cons!58594 (t!371673 rulesArg!145))) b!5094276))

(declare-fun m!6152172 () Bool)

(assert (=> b!5094277 m!6152172))

(declare-fun m!6152174 () Bool)

(assert (=> b!5094277 m!6152174))

(declare-fun b!5094289 () Bool)

(declare-fun e!3177075 () Bool)

(assert (=> b!5094289 (= e!3177075 tp_is_empty!37213)))

(assert (=> b!5094123 (= tp!1420276 e!3177075)))

(declare-fun b!5094291 () Bool)

(declare-fun tp!1420323 () Bool)

(assert (=> b!5094291 (= e!3177075 tp!1420323)))

(declare-fun b!5094290 () Bool)

(declare-fun tp!1420319 () Bool)

(declare-fun tp!1420321 () Bool)

(assert (=> b!5094290 (= e!3177075 (and tp!1420319 tp!1420321))))

(declare-fun b!5094292 () Bool)

(declare-fun tp!1420322 () Bool)

(declare-fun tp!1420320 () Bool)

(assert (=> b!5094292 (= e!3177075 (and tp!1420322 tp!1420320))))

(assert (= (and b!5094123 (is-ElementMatch!13974 (regex!8499 (h!65042 rulesArg!145)))) b!5094289))

(assert (= (and b!5094123 (is-Concat!22788 (regex!8499 (h!65042 rulesArg!145)))) b!5094290))

(assert (= (and b!5094123 (is-Star!13974 (regex!8499 (h!65042 rulesArg!145)))) b!5094291))

(assert (= (and b!5094123 (is-Union!13974 (regex!8499 (h!65042 rulesArg!145)))) b!5094292))

(push 1)

(assert (not b!5094291))

(assert (not b!5094276))

(assert (not b!5094185))

(assert (not b_next!134135))

(assert (not b!5094245))

(assert (not b!5094262))

(assert tp_is_empty!37213)

(assert (not b!5094186))

(assert (not b!5094183))

(assert (not b_next!134133))

(assert b_and!350219)

(assert (not b!5094277))

(assert (not d!1648797))

(assert (not b!5094261))

(assert (not b!5094244))

(assert (not b!5094250))

(assert (not b!5094181))

(assert (not b_next!134127))

(assert (not b!5094267))

(assert (not b!5094160))

(assert (not b!5094159))

(assert (not b!5094290))

(assert (not b!5094260))

(assert (not b!5094180))

(assert b_and!350227)

(assert (not b!5094187))

(assert (not b_next!134125))

(assert (not b!5094179))

(assert (not b!5094182))

(assert b_and!350221)

(assert (not bm!354723))

(assert (not b!5094292))

(assert (not d!1648817))

(assert (not d!1648799))

(assert b_and!350229)

(assert (not d!1648811))

(assert (not d!1648793))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350219)

(assert (not b_next!134127))

(assert (not b_next!134135))

(assert b_and!350227)

(assert (not b_next!134125))

(assert b_and!350221)

(assert b_and!350229)

(assert (not b_next!134133))

(check-sat)

(pop 1)


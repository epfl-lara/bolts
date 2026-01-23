; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!746804 () Bool)

(assert start!746804)

(declare-fun b!7910926 () Bool)

(declare-fun b_free!135207 () Bool)

(declare-fun b_next!135997 () Bool)

(assert (=> b!7910926 (= b_free!135207 (not b_next!135997))))

(declare-fun tp!2356537 () Bool)

(declare-fun b_and!353511 () Bool)

(assert (=> b!7910926 (= tp!2356537 b_and!353511)))

(declare-fun b_free!135209 () Bool)

(declare-fun b_next!135999 () Bool)

(assert (=> b!7910926 (= b_free!135209 (not b_next!135999))))

(declare-fun tp!2356540 () Bool)

(declare-fun b_and!353513 () Bool)

(assert (=> b!7910926 (= tp!2356540 b_and!353513)))

(declare-fun b!7910918 () Bool)

(declare-fun res!3139898 () Bool)

(declare-fun e!4669833 () Bool)

(assert (=> b!7910918 (=> (not res!3139898) (not e!4669833))))

(declare-datatypes ((LexerInterface!8258 0))(
  ( (LexerInterfaceExt!8255 (__x!35251 Int)) (Lexer!8256) )
))
(declare-fun thiss!15815 () LexerInterface!8258)

(declare-datatypes ((List!74493 0))(
  ( (Nil!74369) (Cons!74369 (h!80817 (_ BitVec 16)) (t!389890 List!74493)) )
))
(declare-datatypes ((C!43068 0))(
  ( (C!43069 (val!31998 Int)) )
))
(declare-datatypes ((List!74494 0))(
  ( (Nil!74370) (Cons!74370 (h!80818 C!43068) (t!389891 List!74494)) )
))
(declare-datatypes ((IArray!31741 0))(
  ( (IArray!31742 (innerList!15928 List!74494)) )
))
(declare-datatypes ((Conc!15840 0))(
  ( (Node!15840 (left!56752 Conc!15840) (right!57082 Conc!15840) (csize!31910 Int) (cheight!16051 Int)) (Leaf!30141 (xs!19222 IArray!31741) (csize!31911 Int)) (Empty!15840) )
))
(declare-datatypes ((BalanceConc!30798 0))(
  ( (BalanceConc!30799 (c!1451379 Conc!15840)) )
))
(declare-datatypes ((TokenValue!8982 0))(
  ( (FloatLiteralValue!17964 (text!63319 List!74493)) (TokenValueExt!8981 (__x!35252 Int)) (Broken!44910 (value!288932 List!74493)) (Object!9105) (End!8982) (Def!8982) (Underscore!8982) (Match!8982) (Else!8982) (Error!8982) (Case!8982) (If!8982) (Extends!8982) (Abstract!8982) (Class!8982) (Val!8982) (DelimiterValue!17964 (del!9042 List!74493)) (KeywordValue!8988 (value!288933 List!74493)) (CommentValue!17964 (value!288934 List!74493)) (WhitespaceValue!17964 (value!288935 List!74493)) (IndentationValue!8982 (value!288936 List!74493)) (String!83331) (Int32!8982) (Broken!44911 (value!288937 List!74493)) (Boolean!8983) (Unit!169423) (OperatorValue!8985 (op!9042 List!74493)) (IdentifierValue!17964 (value!288938 List!74493)) (IdentifierValue!17965 (value!288939 List!74493)) (WhitespaceValue!17965 (value!288940 List!74493)) (True!17964) (False!17964) (Broken!44912 (value!288941 List!74493)) (Broken!44913 (value!288942 List!74493)) (True!17965) (RightBrace!8982) (RightBracket!8982) (Colon!8982) (Null!8982) (Comma!8982) (LeftBracket!8982) (False!17965) (LeftBrace!8982) (ImaginaryLiteralValue!8982 (text!63320 List!74493)) (StringLiteralValue!26946 (value!288943 List!74493)) (EOFValue!8982 (value!288944 List!74493)) (IdentValue!8982 (value!288945 List!74493)) (DelimiterValue!17965 (value!288946 List!74493)) (DedentValue!8982 (value!288947 List!74493)) (NewLineValue!8982 (value!288948 List!74493)) (IntegerValue!26946 (value!288949 (_ BitVec 32)) (text!63321 List!74493)) (IntegerValue!26947 (value!288950 Int) (text!63322 List!74493)) (Times!8982) (Or!8982) (Equal!8982) (Minus!8982) (Broken!44914 (value!288951 List!74493)) (And!8982) (Div!8982) (LessEqual!8982) (Mod!8982) (Concat!30351) (Not!8982) (Plus!8982) (SpaceValue!8982 (value!288952 List!74493)) (IntegerValue!26948 (value!288953 Int) (text!63323 List!74493)) (StringLiteralValue!26947 (text!63324 List!74493)) (FloatLiteralValue!17965 (text!63325 List!74493)) (BytesLiteralValue!8982 (value!288954 List!74493)) (CommentValue!17965 (value!288955 List!74493)) (StringLiteralValue!26948 (value!288956 List!74493)) (ErrorTokenValue!8982 (msg!9043 List!74493)) )
))
(declare-datatypes ((String!83332 0))(
  ( (String!83333 (value!288957 String)) )
))
(declare-datatypes ((Regex!21369 0))(
  ( (ElementMatch!21369 (c!1451380 C!43068)) (Concat!30352 (regOne!43250 Regex!21369) (regTwo!43250 Regex!21369)) (EmptyExpr!21369) (Star!21369 (reg!21698 Regex!21369)) (EmptyLang!21369) (Union!21369 (regOne!43251 Regex!21369) (regTwo!43251 Regex!21369)) )
))
(declare-datatypes ((TokenValueInjection!17272 0))(
  ( (TokenValueInjection!17273 (toValue!11723 Int) (toChars!11582 Int)) )
))
(declare-datatypes ((Rule!17132 0))(
  ( (Rule!17133 (regex!8666 Regex!21369) (tag!9530 String!83332) (isSeparator!8666 Bool) (transformation!8666 TokenValueInjection!17272)) )
))
(declare-fun rule!156 () Rule!17132)

(declare-fun ruleValid!3977 (LexerInterface!8258 Rule!17132) Bool)

(assert (=> b!7910918 (= res!3139898 (ruleValid!3977 thiss!15815 rule!156))))

(declare-fun b!7910919 () Bool)

(declare-fun e!4669829 () Bool)

(declare-datatypes ((tuple2!70430 0))(
  ( (tuple2!70431 (_1!38518 List!74494) (_2!38518 List!74494)) )
))
(declare-fun lt!2687243 () tuple2!70430)

(declare-fun matchR!10690 (Regex!21369 List!74494) Bool)

(assert (=> b!7910919 (= e!4669829 (matchR!10690 (regex!8666 rule!156) (_1!38518 lt!2687243)))))

(declare-fun b!7910920 () Bool)

(declare-fun res!3139896 () Bool)

(declare-fun e!4669828 () Bool)

(assert (=> b!7910920 (=> res!3139896 e!4669828)))

(declare-fun lt!2687238 () List!74494)

(declare-fun input!1480 () List!74494)

(declare-datatypes ((Token!15744 0))(
  ( (Token!15745 (value!288958 TokenValue!8982) (rule!11966 Rule!17132) (size!43144 Int) (originalCharacters!8903 List!74494)) )
))
(declare-datatypes ((tuple2!70432 0))(
  ( (tuple2!70433 (_1!38519 Token!15744) (_2!38519 List!74494)) )
))
(declare-fun lt!2687240 () tuple2!70432)

(declare-fun ++!18212 (List!74494 List!74494) List!74494)

(assert (=> b!7910920 (= res!3139896 (not (= (++!18212 lt!2687238 (_2!38519 lt!2687240)) input!1480)))))

(declare-fun e!4669834 () Bool)

(declare-fun b!7910921 () Bool)

(declare-fun e!4669831 () Bool)

(declare-fun tp!2356539 () Bool)

(declare-fun inv!95421 (String!83332) Bool)

(declare-fun inv!95423 (TokenValueInjection!17272) Bool)

(assert (=> b!7910921 (= e!4669834 (and tp!2356539 (inv!95421 (tag!9530 rule!156)) (inv!95423 (transformation!8666 rule!156)) e!4669831))))

(declare-fun res!3139894 () Bool)

(assert (=> start!746804 (=> (not res!3139894) (not e!4669833))))

(get-info :version)

(assert (=> start!746804 (= res!3139894 ((_ is Lexer!8256) thiss!15815))))

(assert (=> start!746804 e!4669833))

(assert (=> start!746804 true))

(assert (=> start!746804 e!4669834))

(declare-fun e!4669830 () Bool)

(assert (=> start!746804 e!4669830))

(declare-fun b!7910922 () Bool)

(declare-fun e!4669836 () Bool)

(assert (=> b!7910922 (= e!4669833 e!4669836)))

(declare-fun res!3139892 () Bool)

(assert (=> b!7910922 (=> (not res!3139892) (not e!4669836))))

(declare-fun lt!2687239 () tuple2!70430)

(declare-fun isEmpty!42702 (List!74494) Bool)

(assert (=> b!7910922 (= res!3139892 (not (isEmpty!42702 (_1!38518 lt!2687239))))))

(declare-fun findLongestMatch!1959 (Regex!21369 List!74494) tuple2!70430)

(assert (=> b!7910922 (= lt!2687239 (findLongestMatch!1959 (regex!8666 rule!156) input!1480))))

(declare-fun b!7910923 () Bool)

(declare-datatypes ((Option!17944 0))(
  ( (None!17943) (Some!17943 (v!55100 tuple2!70432)) )
))
(declare-fun lt!2687244 () Option!17944)

(declare-fun isDefined!14502 (Option!17944) Bool)

(assert (=> b!7910923 (= e!4669828 (isDefined!14502 lt!2687244))))

(declare-fun b!7910924 () Bool)

(declare-fun e!4669835 () Bool)

(assert (=> b!7910924 (= e!4669835 e!4669828)))

(declare-fun res!3139895 () Bool)

(assert (=> b!7910924 (=> res!3139895 e!4669828)))

(assert (=> b!7910924 (= res!3139895 (not (matchR!10690 (regex!8666 rule!156) lt!2687238)))))

(declare-fun list!19316 (BalanceConc!30798) List!74494)

(declare-fun charsOf!5604 (Token!15744) BalanceConc!30798)

(assert (=> b!7910924 (= lt!2687238 (list!19316 (charsOf!5604 (_1!38519 lt!2687240))))))

(declare-fun get!26747 (Option!17944) tuple2!70432)

(assert (=> b!7910924 (= lt!2687240 (get!26747 lt!2687244))))

(declare-fun b!7910925 () Bool)

(declare-fun tp_is_empty!53113 () Bool)

(declare-fun tp!2356538 () Bool)

(assert (=> b!7910925 (= e!4669830 (and tp_is_empty!53113 tp!2356538))))

(assert (=> b!7910926 (= e!4669831 (and tp!2356537 tp!2356540))))

(declare-fun b!7910927 () Bool)

(assert (=> b!7910927 (= e!4669836 (not e!4669835))))

(declare-fun res!3139891 () Bool)

(assert (=> b!7910927 (=> res!3139891 e!4669835)))

(declare-fun isEmpty!42703 (Option!17944) Bool)

(assert (=> b!7910927 (= res!3139891 (isEmpty!42703 lt!2687244))))

(declare-fun lt!2687237 () BalanceConc!30798)

(declare-fun apply!14375 (TokenValueInjection!17272 BalanceConc!30798) TokenValue!8982)

(declare-fun size!43145 (BalanceConc!30798) Int)

(assert (=> b!7910927 (= lt!2687244 (Some!17943 (tuple2!70433 (Token!15745 (apply!14375 (transformation!8666 rule!156) lt!2687237) rule!156 (size!43145 lt!2687237) (_1!38518 lt!2687239)) (_2!38518 lt!2687239))))))

(declare-datatypes ((Unit!169424 0))(
  ( (Unit!169425) )
))
(declare-fun lt!2687242 () Unit!169424)

(declare-fun lemmaSemiInverse!2686 (TokenValueInjection!17272 BalanceConc!30798) Unit!169424)

(assert (=> b!7910927 (= lt!2687242 (lemmaSemiInverse!2686 (transformation!8666 rule!156) lt!2687237))))

(declare-fun seqFromList!6193 (List!74494) BalanceConc!30798)

(assert (=> b!7910927 (= lt!2687237 (seqFromList!6193 (_1!38518 lt!2687239)))))

(assert (=> b!7910927 e!4669829))

(declare-fun res!3139897 () Bool)

(assert (=> b!7910927 (=> res!3139897 e!4669829)))

(assert (=> b!7910927 (= res!3139897 (isEmpty!42702 (_1!38518 lt!2687243)))))

(declare-fun lt!2687241 () Int)

(declare-fun lt!2687246 () Int)

(declare-fun findLongestMatchInner!2176 (Regex!21369 List!74494 Int List!74494 List!74494 Int) tuple2!70430)

(assert (=> b!7910927 (= lt!2687243 (findLongestMatchInner!2176 (regex!8666 rule!156) Nil!74370 lt!2687241 input!1480 input!1480 lt!2687246))))

(declare-fun size!43146 (List!74494) Int)

(assert (=> b!7910927 (= lt!2687246 (size!43146 input!1480))))

(assert (=> b!7910927 (= lt!2687241 (size!43146 Nil!74370))))

(declare-fun lt!2687245 () Unit!169424)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2139 (Regex!21369 List!74494) Unit!169424)

(assert (=> b!7910927 (= lt!2687245 (longestMatchIsAcceptedByMatchOrIsEmpty!2139 (regex!8666 rule!156) input!1480))))

(declare-fun b!7910928 () Bool)

(declare-fun res!3139893 () Bool)

(assert (=> b!7910928 (=> res!3139893 e!4669828)))

(assert (=> b!7910928 (= res!3139893 (>= (size!43146 (_2!38519 lt!2687240)) lt!2687246))))

(assert (= (and start!746804 res!3139894) b!7910918))

(assert (= (and b!7910918 res!3139898) b!7910922))

(assert (= (and b!7910922 res!3139892) b!7910927))

(assert (= (and b!7910927 (not res!3139897)) b!7910919))

(assert (= (and b!7910927 (not res!3139891)) b!7910924))

(assert (= (and b!7910924 (not res!3139895)) b!7910920))

(assert (= (and b!7910920 (not res!3139896)) b!7910928))

(assert (= (and b!7910928 (not res!3139893)) b!7910923))

(assert (= b!7910921 b!7910926))

(assert (= start!746804 b!7910921))

(assert (= (and start!746804 ((_ is Cons!74370) input!1480)) b!7910925))

(declare-fun m!8284494 () Bool)

(assert (=> b!7910921 m!8284494))

(declare-fun m!8284496 () Bool)

(assert (=> b!7910921 m!8284496))

(declare-fun m!8284498 () Bool)

(assert (=> b!7910923 m!8284498))

(declare-fun m!8284500 () Bool)

(assert (=> b!7910920 m!8284500))

(declare-fun m!8284502 () Bool)

(assert (=> b!7910919 m!8284502))

(declare-fun m!8284504 () Bool)

(assert (=> b!7910918 m!8284504))

(declare-fun m!8284506 () Bool)

(assert (=> b!7910928 m!8284506))

(declare-fun m!8284508 () Bool)

(assert (=> b!7910924 m!8284508))

(declare-fun m!8284510 () Bool)

(assert (=> b!7910924 m!8284510))

(assert (=> b!7910924 m!8284510))

(declare-fun m!8284512 () Bool)

(assert (=> b!7910924 m!8284512))

(declare-fun m!8284514 () Bool)

(assert (=> b!7910924 m!8284514))

(declare-fun m!8284516 () Bool)

(assert (=> b!7910927 m!8284516))

(declare-fun m!8284518 () Bool)

(assert (=> b!7910927 m!8284518))

(declare-fun m!8284520 () Bool)

(assert (=> b!7910927 m!8284520))

(declare-fun m!8284522 () Bool)

(assert (=> b!7910927 m!8284522))

(declare-fun m!8284524 () Bool)

(assert (=> b!7910927 m!8284524))

(declare-fun m!8284526 () Bool)

(assert (=> b!7910927 m!8284526))

(declare-fun m!8284528 () Bool)

(assert (=> b!7910927 m!8284528))

(declare-fun m!8284530 () Bool)

(assert (=> b!7910927 m!8284530))

(declare-fun m!8284532 () Bool)

(assert (=> b!7910927 m!8284532))

(declare-fun m!8284534 () Bool)

(assert (=> b!7910927 m!8284534))

(declare-fun m!8284536 () Bool)

(assert (=> b!7910922 m!8284536))

(declare-fun m!8284538 () Bool)

(assert (=> b!7910922 m!8284538))

(check-sat tp_is_empty!53113 (not b!7910927) (not b!7910919) (not b!7910921) (not b!7910923) (not b!7910918) (not b!7910925) b_and!353513 (not b!7910922) (not b!7910924) (not b_next!135999) (not b_next!135997) (not b!7910928) (not b!7910920) b_and!353511)
(check-sat b_and!353511 b_and!353513 (not b_next!135997) (not b_next!135999))
(get-model)

(declare-fun b!7910939 () Bool)

(declare-fun res!3139909 () Bool)

(declare-fun e!4669842 () Bool)

(assert (=> b!7910939 (=> (not res!3139909) (not e!4669842))))

(declare-fun lt!2687249 () List!74494)

(assert (=> b!7910939 (= res!3139909 (= (size!43146 lt!2687249) (+ (size!43146 lt!2687238) (size!43146 (_2!38519 lt!2687240)))))))

(declare-fun d!2360201 () Bool)

(assert (=> d!2360201 e!4669842))

(declare-fun res!3139910 () Bool)

(assert (=> d!2360201 (=> (not res!3139910) (not e!4669842))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15749 (List!74494) (InoxSet C!43068))

(assert (=> d!2360201 (= res!3139910 (= (content!15749 lt!2687249) ((_ map or) (content!15749 lt!2687238) (content!15749 (_2!38519 lt!2687240)))))))

(declare-fun e!4669841 () List!74494)

(assert (=> d!2360201 (= lt!2687249 e!4669841)))

(declare-fun c!1451383 () Bool)

(assert (=> d!2360201 (= c!1451383 ((_ is Nil!74370) lt!2687238))))

(assert (=> d!2360201 (= (++!18212 lt!2687238 (_2!38519 lt!2687240)) lt!2687249)))

(declare-fun b!7910938 () Bool)

(assert (=> b!7910938 (= e!4669841 (Cons!74370 (h!80818 lt!2687238) (++!18212 (t!389891 lt!2687238) (_2!38519 lt!2687240))))))

(declare-fun b!7910940 () Bool)

(assert (=> b!7910940 (= e!4669842 (or (not (= (_2!38519 lt!2687240) Nil!74370)) (= lt!2687249 lt!2687238)))))

(declare-fun b!7910937 () Bool)

(assert (=> b!7910937 (= e!4669841 (_2!38519 lt!2687240))))

(assert (= (and d!2360201 c!1451383) b!7910937))

(assert (= (and d!2360201 (not c!1451383)) b!7910938))

(assert (= (and d!2360201 res!3139910) b!7910939))

(assert (= (and b!7910939 res!3139909) b!7910940))

(declare-fun m!8284540 () Bool)

(assert (=> b!7910939 m!8284540))

(declare-fun m!8284542 () Bool)

(assert (=> b!7910939 m!8284542))

(assert (=> b!7910939 m!8284506))

(declare-fun m!8284544 () Bool)

(assert (=> d!2360201 m!8284544))

(declare-fun m!8284546 () Bool)

(assert (=> d!2360201 m!8284546))

(declare-fun m!8284548 () Bool)

(assert (=> d!2360201 m!8284548))

(declare-fun m!8284550 () Bool)

(assert (=> b!7910938 m!8284550))

(assert (=> b!7910920 d!2360201))

(declare-fun d!2360205 () Bool)

(declare-fun lt!2687254 () Int)

(assert (=> d!2360205 (>= lt!2687254 0)))

(declare-fun e!4669859 () Int)

(assert (=> d!2360205 (= lt!2687254 e!4669859)))

(declare-fun c!1451392 () Bool)

(assert (=> d!2360205 (= c!1451392 ((_ is Nil!74370) Nil!74370))))

(assert (=> d!2360205 (= (size!43146 Nil!74370) lt!2687254)))

(declare-fun b!7910973 () Bool)

(assert (=> b!7910973 (= e!4669859 0)))

(declare-fun b!7910974 () Bool)

(assert (=> b!7910974 (= e!4669859 (+ 1 (size!43146 (t!389891 Nil!74370))))))

(assert (= (and d!2360205 c!1451392) b!7910973))

(assert (= (and d!2360205 (not c!1451392)) b!7910974))

(declare-fun m!8284552 () Bool)

(assert (=> b!7910974 m!8284552))

(assert (=> b!7910927 d!2360205))

(declare-fun d!2360207 () Bool)

(declare-fun lt!2687258 () Int)

(assert (=> d!2360207 (= lt!2687258 (size!43146 (list!19316 lt!2687237)))))

(declare-fun size!43148 (Conc!15840) Int)

(assert (=> d!2360207 (= lt!2687258 (size!43148 (c!1451379 lt!2687237)))))

(assert (=> d!2360207 (= (size!43145 lt!2687237) lt!2687258)))

(declare-fun bs!1968252 () Bool)

(assert (= bs!1968252 d!2360207))

(declare-fun m!8284568 () Bool)

(assert (=> bs!1968252 m!8284568))

(assert (=> bs!1968252 m!8284568))

(declare-fun m!8284570 () Bool)

(assert (=> bs!1968252 m!8284570))

(declare-fun m!8284572 () Bool)

(assert (=> bs!1968252 m!8284572))

(assert (=> b!7910927 d!2360207))

(declare-fun d!2360211 () Bool)

(declare-fun dynLambda!30153 (Int BalanceConc!30798) TokenValue!8982)

(assert (=> d!2360211 (= (apply!14375 (transformation!8666 rule!156) lt!2687237) (dynLambda!30153 (toValue!11723 (transformation!8666 rule!156)) lt!2687237))))

(declare-fun b_lambda!290039 () Bool)

(assert (=> (not b_lambda!290039) (not d!2360211)))

(declare-fun t!389893 () Bool)

(declare-fun tb!263235 () Bool)

(assert (=> (and b!7910926 (= (toValue!11723 (transformation!8666 rule!156)) (toValue!11723 (transformation!8666 rule!156))) t!389893) tb!263235))

(declare-fun result!360562 () Bool)

(declare-fun inv!21 (TokenValue!8982) Bool)

(assert (=> tb!263235 (= result!360562 (inv!21 (dynLambda!30153 (toValue!11723 (transformation!8666 rule!156)) lt!2687237)))))

(declare-fun m!8284586 () Bool)

(assert (=> tb!263235 m!8284586))

(assert (=> d!2360211 t!389893))

(declare-fun b_and!353515 () Bool)

(assert (= b_and!353511 (and (=> t!389893 result!360562) b_and!353515)))

(declare-fun m!8284588 () Bool)

(assert (=> d!2360211 m!8284588))

(assert (=> b!7910927 d!2360211))

(declare-fun d!2360215 () Bool)

(declare-fun e!4669886 () Bool)

(assert (=> d!2360215 e!4669886))

(declare-fun res!3139943 () Bool)

(assert (=> d!2360215 (=> res!3139943 e!4669886)))

(assert (=> d!2360215 (= res!3139943 (isEmpty!42702 (_1!38518 (findLongestMatchInner!2176 (regex!8666 rule!156) Nil!74370 (size!43146 Nil!74370) input!1480 input!1480 (size!43146 input!1480)))))))

(declare-fun lt!2687269 () Unit!169424)

(declare-fun choose!59745 (Regex!21369 List!74494) Unit!169424)

(assert (=> d!2360215 (= lt!2687269 (choose!59745 (regex!8666 rule!156) input!1480))))

(declare-fun validRegex!11675 (Regex!21369) Bool)

(assert (=> d!2360215 (validRegex!11675 (regex!8666 rule!156))))

(assert (=> d!2360215 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2139 (regex!8666 rule!156) input!1480) lt!2687269)))

(declare-fun b!7911017 () Bool)

(assert (=> b!7911017 (= e!4669886 (matchR!10690 (regex!8666 rule!156) (_1!38518 (findLongestMatchInner!2176 (regex!8666 rule!156) Nil!74370 (size!43146 Nil!74370) input!1480 input!1480 (size!43146 input!1480)))))))

(assert (= (and d!2360215 (not res!3139943)) b!7911017))

(declare-fun m!8284602 () Bool)

(assert (=> d!2360215 m!8284602))

(assert (=> d!2360215 m!8284516))

(assert (=> d!2360215 m!8284534))

(declare-fun m!8284604 () Bool)

(assert (=> d!2360215 m!8284604))

(declare-fun m!8284606 () Bool)

(assert (=> d!2360215 m!8284606))

(assert (=> d!2360215 m!8284534))

(assert (=> d!2360215 m!8284516))

(declare-fun m!8284608 () Bool)

(assert (=> d!2360215 m!8284608))

(assert (=> b!7911017 m!8284516))

(assert (=> b!7911017 m!8284534))

(assert (=> b!7911017 m!8284516))

(assert (=> b!7911017 m!8284534))

(assert (=> b!7911017 m!8284604))

(declare-fun m!8284610 () Bool)

(assert (=> b!7911017 m!8284610))

(assert (=> b!7910927 d!2360215))

(declare-fun b!7911074 () Bool)

(declare-fun e!4669919 () Bool)

(assert (=> b!7911074 (= e!4669919 true)))

(declare-fun d!2360229 () Bool)

(assert (=> d!2360229 e!4669919))

(assert (= d!2360229 b!7911074))

(declare-fun order!29911 () Int)

(declare-fun order!29913 () Int)

(declare-fun lambda!472569 () Int)

(declare-fun dynLambda!30154 (Int Int) Int)

(declare-fun dynLambda!30155 (Int Int) Int)

(assert (=> b!7911074 (< (dynLambda!30154 order!29911 (toValue!11723 (transformation!8666 rule!156))) (dynLambda!30155 order!29913 lambda!472569))))

(declare-fun order!29915 () Int)

(declare-fun dynLambda!30156 (Int Int) Int)

(assert (=> b!7911074 (< (dynLambda!30156 order!29915 (toChars!11582 (transformation!8666 rule!156))) (dynLambda!30155 order!29913 lambda!472569))))

(declare-fun dynLambda!30157 (Int TokenValue!8982) BalanceConc!30798)

(assert (=> d!2360229 (= (list!19316 (dynLambda!30157 (toChars!11582 (transformation!8666 rule!156)) (dynLambda!30153 (toValue!11723 (transformation!8666 rule!156)) lt!2687237))) (list!19316 lt!2687237))))

(declare-fun lt!2687359 () Unit!169424)

(declare-fun ForallOf!1312 (Int BalanceConc!30798) Unit!169424)

(assert (=> d!2360229 (= lt!2687359 (ForallOf!1312 lambda!472569 lt!2687237))))

(assert (=> d!2360229 (= (lemmaSemiInverse!2686 (transformation!8666 rule!156) lt!2687237) lt!2687359)))

(declare-fun b_lambda!290047 () Bool)

(assert (=> (not b_lambda!290047) (not d!2360229)))

(declare-fun t!389899 () Bool)

(declare-fun tb!263241 () Bool)

(assert (=> (and b!7910926 (= (toChars!11582 (transformation!8666 rule!156)) (toChars!11582 (transformation!8666 rule!156))) t!389899) tb!263241))

(declare-fun e!4669922 () Bool)

(declare-fun tp!2356546 () Bool)

(declare-fun b!7911079 () Bool)

(declare-fun inv!95426 (Conc!15840) Bool)

(assert (=> b!7911079 (= e!4669922 (and (inv!95426 (c!1451379 (dynLambda!30157 (toChars!11582 (transformation!8666 rule!156)) (dynLambda!30153 (toValue!11723 (transformation!8666 rule!156)) lt!2687237)))) tp!2356546))))

(declare-fun result!360574 () Bool)

(declare-fun inv!95427 (BalanceConc!30798) Bool)

(assert (=> tb!263241 (= result!360574 (and (inv!95427 (dynLambda!30157 (toChars!11582 (transformation!8666 rule!156)) (dynLambda!30153 (toValue!11723 (transformation!8666 rule!156)) lt!2687237))) e!4669922))))

(assert (= tb!263241 b!7911079))

(declare-fun m!8284680 () Bool)

(assert (=> b!7911079 m!8284680))

(declare-fun m!8284682 () Bool)

(assert (=> tb!263241 m!8284682))

(assert (=> d!2360229 t!389899))

(declare-fun b_and!353523 () Bool)

(assert (= b_and!353513 (and (=> t!389899 result!360574) b_and!353523)))

(declare-fun b_lambda!290049 () Bool)

(assert (=> (not b_lambda!290049) (not d!2360229)))

(assert (=> d!2360229 t!389893))

(declare-fun b_and!353525 () Bool)

(assert (= b_and!353515 (and (=> t!389893 result!360562) b_and!353525)))

(declare-fun m!8284684 () Bool)

(assert (=> d!2360229 m!8284684))

(declare-fun m!8284686 () Bool)

(assert (=> d!2360229 m!8284686))

(assert (=> d!2360229 m!8284588))

(declare-fun m!8284688 () Bool)

(assert (=> d!2360229 m!8284688))

(assert (=> d!2360229 m!8284588))

(assert (=> d!2360229 m!8284684))

(assert (=> d!2360229 m!8284568))

(assert (=> b!7910927 d!2360229))

(declare-fun d!2360239 () Bool)

(assert (=> d!2360239 (= (isEmpty!42703 lt!2687244) (not ((_ is Some!17943) lt!2687244)))))

(assert (=> b!7910927 d!2360239))

(declare-fun d!2360241 () Bool)

(declare-fun lt!2687363 () Int)

(assert (=> d!2360241 (>= lt!2687363 0)))

(declare-fun e!4669923 () Int)

(assert (=> d!2360241 (= lt!2687363 e!4669923)))

(declare-fun c!1451424 () Bool)

(assert (=> d!2360241 (= c!1451424 ((_ is Nil!74370) input!1480))))

(assert (=> d!2360241 (= (size!43146 input!1480) lt!2687363)))

(declare-fun b!7911080 () Bool)

(assert (=> b!7911080 (= e!4669923 0)))

(declare-fun b!7911081 () Bool)

(assert (=> b!7911081 (= e!4669923 (+ 1 (size!43146 (t!389891 input!1480))))))

(assert (= (and d!2360241 c!1451424) b!7911080))

(assert (= (and d!2360241 (not c!1451424)) b!7911081))

(declare-fun m!8284690 () Bool)

(assert (=> b!7911081 m!8284690))

(assert (=> b!7910927 d!2360241))

(declare-fun bm!733782 () Bool)

(declare-fun call!733791 () Unit!169424)

(declare-fun lemmaIsPrefixRefl!3993 (List!74494 List!74494) Unit!169424)

(assert (=> bm!733782 (= call!733791 (lemmaIsPrefixRefl!3993 input!1480 input!1480))))

(declare-fun b!7911156 () Bool)

(declare-fun c!1451442 () Bool)

(declare-fun call!733790 () Bool)

(assert (=> b!7911156 (= c!1451442 call!733790)))

(declare-fun lt!2687464 () Unit!169424)

(declare-fun lt!2687462 () Unit!169424)

(assert (=> b!7911156 (= lt!2687464 lt!2687462)))

(assert (=> b!7911156 (= input!1480 Nil!74370)))

(declare-fun call!733794 () Unit!169424)

(assert (=> b!7911156 (= lt!2687462 call!733794)))

(declare-fun lt!2687471 () Unit!169424)

(declare-fun lt!2687477 () Unit!169424)

(assert (=> b!7911156 (= lt!2687471 lt!2687477)))

(declare-fun call!733788 () Bool)

(assert (=> b!7911156 call!733788))

(assert (=> b!7911156 (= lt!2687477 call!733791)))

(declare-fun e!4669966 () tuple2!70430)

(declare-fun e!4669970 () tuple2!70430)

(assert (=> b!7911156 (= e!4669966 e!4669970)))

(declare-fun b!7911157 () Bool)

(declare-fun e!4669967 () tuple2!70430)

(assert (=> b!7911157 (= e!4669967 e!4669966)))

(declare-fun c!1451444 () Bool)

(assert (=> b!7911157 (= c!1451444 (= lt!2687241 lt!2687246))))

(declare-fun call!733792 () tuple2!70430)

(declare-fun lt!2687478 () List!74494)

(declare-fun call!733789 () Regex!21369)

(declare-fun call!733787 () List!74494)

(declare-fun bm!733783 () Bool)

(assert (=> bm!733783 (= call!733792 (findLongestMatchInner!2176 call!733789 lt!2687478 (+ lt!2687241 1) call!733787 input!1480 lt!2687246))))

(declare-fun bm!733784 () Bool)

(declare-fun tail!15716 (List!74494) List!74494)

(assert (=> bm!733784 (= call!733787 (tail!15716 input!1480))))

(declare-fun bm!733785 () Bool)

(declare-fun nullable!9510 (Regex!21369) Bool)

(assert (=> bm!733785 (= call!733790 (nullable!9510 (regex!8666 rule!156)))))

(declare-fun b!7911158 () Bool)

(declare-fun e!4669963 () Unit!169424)

(declare-fun Unit!169429 () Unit!169424)

(assert (=> b!7911158 (= e!4669963 Unit!169429)))

(declare-fun lt!2687474 () Unit!169424)

(assert (=> b!7911158 (= lt!2687474 call!733791)))

(assert (=> b!7911158 call!733788))

(declare-fun lt!2687476 () Unit!169424)

(assert (=> b!7911158 (= lt!2687476 lt!2687474)))

(declare-fun lt!2687460 () Unit!169424)

(assert (=> b!7911158 (= lt!2687460 call!733794)))

(assert (=> b!7911158 (= input!1480 Nil!74370)))

(declare-fun lt!2687451 () Unit!169424)

(assert (=> b!7911158 (= lt!2687451 lt!2687460)))

(assert (=> b!7911158 false))

(declare-fun b!7911159 () Bool)

(declare-fun Unit!169430 () Unit!169424)

(assert (=> b!7911159 (= e!4669963 Unit!169430)))

(declare-fun b!7911160 () Bool)

(assert (=> b!7911160 (= e!4669967 (tuple2!70431 Nil!74370 input!1480))))

(declare-fun bm!733786 () Bool)

(declare-fun isPrefix!6481 (List!74494 List!74494) Bool)

(assert (=> bm!733786 (= call!733788 (isPrefix!6481 input!1480 input!1480))))

(declare-fun bm!733787 () Bool)

(declare-fun call!733793 () C!43068)

(declare-fun derivativeStep!6452 (Regex!21369 C!43068) Regex!21369)

(assert (=> bm!733787 (= call!733789 (derivativeStep!6452 (regex!8666 rule!156) call!733793))))

(declare-fun bm!733788 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1574 (List!74494 List!74494 List!74494) Unit!169424)

(assert (=> bm!733788 (= call!733794 (lemmaIsPrefixSameLengthThenSameList!1574 input!1480 Nil!74370 input!1480))))

(declare-fun b!7911161 () Bool)

(declare-fun c!1451445 () Bool)

(assert (=> b!7911161 (= c!1451445 call!733790)))

(declare-fun lt!2687457 () Unit!169424)

(declare-fun lt!2687475 () Unit!169424)

(assert (=> b!7911161 (= lt!2687457 lt!2687475)))

(declare-fun lt!2687461 () C!43068)

(declare-fun lt!2687452 () List!74494)

(assert (=> b!7911161 (= (++!18212 (++!18212 Nil!74370 (Cons!74370 lt!2687461 Nil!74370)) lt!2687452) input!1480)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3481 (List!74494 C!43068 List!74494 List!74494) Unit!169424)

(assert (=> b!7911161 (= lt!2687475 (lemmaMoveElementToOtherListKeepsConcatEq!3481 Nil!74370 lt!2687461 lt!2687452 input!1480))))

(assert (=> b!7911161 (= lt!2687452 (tail!15716 input!1480))))

(declare-fun head!16173 (List!74494) C!43068)

(assert (=> b!7911161 (= lt!2687461 (head!16173 input!1480))))

(declare-fun lt!2687468 () Unit!169424)

(declare-fun lt!2687455 () Unit!169424)

(assert (=> b!7911161 (= lt!2687468 lt!2687455)))

(declare-fun getSuffix!3694 (List!74494 List!74494) List!74494)

(assert (=> b!7911161 (isPrefix!6481 (++!18212 Nil!74370 (Cons!74370 (head!16173 (getSuffix!3694 input!1480 Nil!74370)) Nil!74370)) input!1480)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1259 (List!74494 List!74494) Unit!169424)

(assert (=> b!7911161 (= lt!2687455 (lemmaAddHeadSuffixToPrefixStillPrefix!1259 Nil!74370 input!1480))))

(declare-fun lt!2687469 () Unit!169424)

(declare-fun lt!2687458 () Unit!169424)

(assert (=> b!7911161 (= lt!2687469 lt!2687458)))

(assert (=> b!7911161 (= lt!2687458 (lemmaAddHeadSuffixToPrefixStillPrefix!1259 Nil!74370 input!1480))))

(assert (=> b!7911161 (= lt!2687478 (++!18212 Nil!74370 (Cons!74370 (head!16173 input!1480) Nil!74370)))))

(declare-fun lt!2687472 () Unit!169424)

(assert (=> b!7911161 (= lt!2687472 e!4669963)))

(declare-fun c!1451443 () Bool)

(assert (=> b!7911161 (= c!1451443 (= (size!43146 Nil!74370) (size!43146 input!1480)))))

(declare-fun lt!2687453 () Unit!169424)

(declare-fun lt!2687466 () Unit!169424)

(assert (=> b!7911161 (= lt!2687453 lt!2687466)))

(assert (=> b!7911161 (<= (size!43146 Nil!74370) (size!43146 input!1480))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1039 (List!74494 List!74494) Unit!169424)

(assert (=> b!7911161 (= lt!2687466 (lemmaIsPrefixThenSmallerEqSize!1039 Nil!74370 input!1480))))

(declare-fun e!4669964 () tuple2!70430)

(assert (=> b!7911161 (= e!4669966 e!4669964)))

(declare-fun b!7911162 () Bool)

(declare-fun e!4669969 () Bool)

(declare-fun e!4669968 () Bool)

(assert (=> b!7911162 (= e!4669969 e!4669968)))

(declare-fun res!3139974 () Bool)

(assert (=> b!7911162 (=> res!3139974 e!4669968)))

(declare-fun lt!2687465 () tuple2!70430)

(assert (=> b!7911162 (= res!3139974 (isEmpty!42702 (_1!38518 lt!2687465)))))

(declare-fun b!7911163 () Bool)

(declare-fun e!4669965 () tuple2!70430)

(declare-fun lt!2687459 () tuple2!70430)

(assert (=> b!7911163 (= e!4669965 lt!2687459)))

(declare-fun d!2360243 () Bool)

(assert (=> d!2360243 e!4669969))

(declare-fun res!3139975 () Bool)

(assert (=> d!2360243 (=> (not res!3139975) (not e!4669969))))

(assert (=> d!2360243 (= res!3139975 (= (++!18212 (_1!38518 lt!2687465) (_2!38518 lt!2687465)) input!1480))))

(assert (=> d!2360243 (= lt!2687465 e!4669967)))

(declare-fun c!1451441 () Bool)

(declare-fun lostCause!1926 (Regex!21369) Bool)

(assert (=> d!2360243 (= c!1451441 (lostCause!1926 (regex!8666 rule!156)))))

(declare-fun lt!2687454 () Unit!169424)

(declare-fun Unit!169431 () Unit!169424)

(assert (=> d!2360243 (= lt!2687454 Unit!169431)))

(assert (=> d!2360243 (= (getSuffix!3694 input!1480 Nil!74370) input!1480)))

(declare-fun lt!2687456 () Unit!169424)

(declare-fun lt!2687470 () Unit!169424)

(assert (=> d!2360243 (= lt!2687456 lt!2687470)))

(declare-fun lt!2687473 () List!74494)

(assert (=> d!2360243 (= input!1480 lt!2687473)))

(declare-fun lemmaSamePrefixThenSameSuffix!2942 (List!74494 List!74494 List!74494 List!74494 List!74494) Unit!169424)

(assert (=> d!2360243 (= lt!2687470 (lemmaSamePrefixThenSameSuffix!2942 Nil!74370 input!1480 Nil!74370 lt!2687473 input!1480))))

(assert (=> d!2360243 (= lt!2687473 (getSuffix!3694 input!1480 Nil!74370))))

(declare-fun lt!2687463 () Unit!169424)

(declare-fun lt!2687467 () Unit!169424)

(assert (=> d!2360243 (= lt!2687463 lt!2687467)))

(assert (=> d!2360243 (isPrefix!6481 Nil!74370 (++!18212 Nil!74370 input!1480))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3804 (List!74494 List!74494) Unit!169424)

(assert (=> d!2360243 (= lt!2687467 (lemmaConcatTwoListThenFirstIsPrefix!3804 Nil!74370 input!1480))))

(assert (=> d!2360243 (validRegex!11675 (regex!8666 rule!156))))

(assert (=> d!2360243 (= (findLongestMatchInner!2176 (regex!8666 rule!156) Nil!74370 lt!2687241 input!1480 input!1480 lt!2687246) lt!2687465)))

(declare-fun b!7911164 () Bool)

(assert (=> b!7911164 (= e!4669968 (>= (size!43146 (_1!38518 lt!2687465)) (size!43146 Nil!74370)))))

(declare-fun b!7911165 () Bool)

(assert (=> b!7911165 (= e!4669965 (tuple2!70431 Nil!74370 input!1480))))

(declare-fun b!7911166 () Bool)

(assert (=> b!7911166 (= e!4669970 (tuple2!70431 Nil!74370 Nil!74370))))

(declare-fun bm!733789 () Bool)

(assert (=> bm!733789 (= call!733793 (head!16173 input!1480))))

(declare-fun b!7911167 () Bool)

(assert (=> b!7911167 (= e!4669970 (tuple2!70431 Nil!74370 input!1480))))

(declare-fun b!7911168 () Bool)

(assert (=> b!7911168 (= e!4669964 call!733792)))

(declare-fun b!7911169 () Bool)

(assert (=> b!7911169 (= e!4669964 e!4669965)))

(assert (=> b!7911169 (= lt!2687459 call!733792)))

(declare-fun c!1451440 () Bool)

(assert (=> b!7911169 (= c!1451440 (isEmpty!42702 (_1!38518 lt!2687459)))))

(assert (= (and d!2360243 c!1451441) b!7911160))

(assert (= (and d!2360243 (not c!1451441)) b!7911157))

(assert (= (and b!7911157 c!1451444) b!7911156))

(assert (= (and b!7911157 (not c!1451444)) b!7911161))

(assert (= (and b!7911156 c!1451442) b!7911166))

(assert (= (and b!7911156 (not c!1451442)) b!7911167))

(assert (= (and b!7911161 c!1451443) b!7911158))

(assert (= (and b!7911161 (not c!1451443)) b!7911159))

(assert (= (and b!7911161 c!1451445) b!7911169))

(assert (= (and b!7911161 (not c!1451445)) b!7911168))

(assert (= (and b!7911169 c!1451440) b!7911165))

(assert (= (and b!7911169 (not c!1451440)) b!7911163))

(assert (= (or b!7911169 b!7911168) bm!733789))

(assert (= (or b!7911169 b!7911168) bm!733784))

(assert (= (or b!7911169 b!7911168) bm!733787))

(assert (= (or b!7911169 b!7911168) bm!733783))

(assert (= (or b!7911156 b!7911161) bm!733785))

(assert (= (or b!7911156 b!7911158) bm!733786))

(assert (= (or b!7911156 b!7911158) bm!733782))

(assert (= (or b!7911156 b!7911158) bm!733788))

(assert (= (and d!2360243 res!3139975) b!7911162))

(assert (= (and b!7911162 (not res!3139974)) b!7911164))

(declare-fun m!8284742 () Bool)

(assert (=> b!7911162 m!8284742))

(declare-fun m!8284744 () Bool)

(assert (=> bm!733788 m!8284744))

(declare-fun m!8284746 () Bool)

(assert (=> bm!733787 m!8284746))

(declare-fun m!8284748 () Bool)

(assert (=> b!7911169 m!8284748))

(declare-fun m!8284750 () Bool)

(assert (=> b!7911161 m!8284750))

(declare-fun m!8284752 () Bool)

(assert (=> b!7911161 m!8284752))

(assert (=> b!7911161 m!8284516))

(declare-fun m!8284754 () Bool)

(assert (=> b!7911161 m!8284754))

(declare-fun m!8284756 () Bool)

(assert (=> b!7911161 m!8284756))

(assert (=> b!7911161 m!8284754))

(declare-fun m!8284758 () Bool)

(assert (=> b!7911161 m!8284758))

(assert (=> b!7911161 m!8284534))

(declare-fun m!8284760 () Bool)

(assert (=> b!7911161 m!8284760))

(declare-fun m!8284762 () Bool)

(assert (=> b!7911161 m!8284762))

(assert (=> b!7911161 m!8284756))

(declare-fun m!8284764 () Bool)

(assert (=> b!7911161 m!8284764))

(declare-fun m!8284766 () Bool)

(assert (=> b!7911161 m!8284766))

(declare-fun m!8284768 () Bool)

(assert (=> b!7911161 m!8284768))

(assert (=> b!7911161 m!8284766))

(declare-fun m!8284770 () Bool)

(assert (=> b!7911161 m!8284770))

(declare-fun m!8284772 () Bool)

(assert (=> b!7911161 m!8284772))

(declare-fun m!8284774 () Bool)

(assert (=> bm!733785 m!8284774))

(assert (=> bm!733784 m!8284752))

(declare-fun m!8284776 () Bool)

(assert (=> bm!733783 m!8284776))

(declare-fun m!8284778 () Bool)

(assert (=> bm!733782 m!8284778))

(assert (=> bm!733789 m!8284762))

(declare-fun m!8284780 () Bool)

(assert (=> b!7911164 m!8284780))

(assert (=> b!7911164 m!8284516))

(declare-fun m!8284782 () Bool)

(assert (=> d!2360243 m!8284782))

(declare-fun m!8284784 () Bool)

(assert (=> d!2360243 m!8284784))

(assert (=> d!2360243 m!8284784))

(declare-fun m!8284786 () Bool)

(assert (=> d!2360243 m!8284786))

(assert (=> d!2360243 m!8284606))

(declare-fun m!8284788 () Bool)

(assert (=> d!2360243 m!8284788))

(declare-fun m!8284790 () Bool)

(assert (=> d!2360243 m!8284790))

(declare-fun m!8284792 () Bool)

(assert (=> d!2360243 m!8284792))

(assert (=> d!2360243 m!8284766))

(declare-fun m!8284794 () Bool)

(assert (=> bm!733786 m!8284794))

(assert (=> b!7910927 d!2360243))

(declare-fun d!2360265 () Bool)

(assert (=> d!2360265 (= (isEmpty!42702 (_1!38518 lt!2687243)) ((_ is Nil!74370) (_1!38518 lt!2687243)))))

(assert (=> b!7910927 d!2360265))

(declare-fun d!2360267 () Bool)

(declare-fun fromListB!2798 (List!74494) BalanceConc!30798)

(assert (=> d!2360267 (= (seqFromList!6193 (_1!38518 lt!2687239)) (fromListB!2798 (_1!38518 lt!2687239)))))

(declare-fun bs!1968258 () Bool)

(assert (= bs!1968258 d!2360267))

(declare-fun m!8284796 () Bool)

(assert (=> bs!1968258 m!8284796))

(assert (=> b!7910927 d!2360267))

(declare-fun d!2360269 () Bool)

(assert (=> d!2360269 (= (inv!95421 (tag!9530 rule!156)) (= (mod (str.len (value!288957 (tag!9530 rule!156))) 2) 0))))

(assert (=> b!7910921 d!2360269))

(declare-fun d!2360271 () Bool)

(declare-fun res!3139978 () Bool)

(declare-fun e!4669973 () Bool)

(assert (=> d!2360271 (=> (not res!3139978) (not e!4669973))))

(declare-fun semiInverseModEq!3840 (Int Int) Bool)

(assert (=> d!2360271 (= res!3139978 (semiInverseModEq!3840 (toChars!11582 (transformation!8666 rule!156)) (toValue!11723 (transformation!8666 rule!156))))))

(assert (=> d!2360271 (= (inv!95423 (transformation!8666 rule!156)) e!4669973)))

(declare-fun b!7911172 () Bool)

(declare-fun equivClasses!3655 (Int Int) Bool)

(assert (=> b!7911172 (= e!4669973 (equivClasses!3655 (toChars!11582 (transformation!8666 rule!156)) (toValue!11723 (transformation!8666 rule!156))))))

(assert (= (and d!2360271 res!3139978) b!7911172))

(declare-fun m!8284798 () Bool)

(assert (=> d!2360271 m!8284798))

(declare-fun m!8284800 () Bool)

(assert (=> b!7911172 m!8284800))

(assert (=> b!7910921 d!2360271))

(declare-fun d!2360273 () Bool)

(declare-fun lt!2687479 () Int)

(assert (=> d!2360273 (>= lt!2687479 0)))

(declare-fun e!4669974 () Int)

(assert (=> d!2360273 (= lt!2687479 e!4669974)))

(declare-fun c!1451446 () Bool)

(assert (=> d!2360273 (= c!1451446 ((_ is Nil!74370) (_2!38519 lt!2687240)))))

(assert (=> d!2360273 (= (size!43146 (_2!38519 lt!2687240)) lt!2687479)))

(declare-fun b!7911173 () Bool)

(assert (=> b!7911173 (= e!4669974 0)))

(declare-fun b!7911174 () Bool)

(assert (=> b!7911174 (= e!4669974 (+ 1 (size!43146 (t!389891 (_2!38519 lt!2687240)))))))

(assert (= (and d!2360273 c!1451446) b!7911173))

(assert (= (and d!2360273 (not c!1451446)) b!7911174))

(declare-fun m!8284802 () Bool)

(assert (=> b!7911174 m!8284802))

(assert (=> b!7910928 d!2360273))

(declare-fun d!2360275 () Bool)

(assert (=> d!2360275 (= (isDefined!14502 lt!2687244) (not (isEmpty!42703 lt!2687244)))))

(declare-fun bs!1968259 () Bool)

(assert (= bs!1968259 d!2360275))

(assert (=> bs!1968259 m!8284532))

(assert (=> b!7910923 d!2360275))

(declare-fun d!2360277 () Bool)

(assert (=> d!2360277 (= (isEmpty!42702 (_1!38518 lt!2687239)) ((_ is Nil!74370) (_1!38518 lt!2687239)))))

(assert (=> b!7910922 d!2360277))

(declare-fun d!2360279 () Bool)

(declare-fun lt!2687496 () tuple2!70430)

(assert (=> d!2360279 (= (++!18212 (_1!38518 lt!2687496) (_2!38518 lt!2687496)) input!1480)))

(declare-fun sizeTr!463 (List!74494 Int) Int)

(assert (=> d!2360279 (= lt!2687496 (findLongestMatchInner!2176 (regex!8666 rule!156) Nil!74370 0 input!1480 input!1480 (sizeTr!463 input!1480 0)))))

(declare-fun lt!2687503 () Unit!169424)

(declare-fun lt!2687500 () Unit!169424)

(assert (=> d!2360279 (= lt!2687503 lt!2687500)))

(declare-fun lt!2687502 () List!74494)

(declare-fun lt!2687497 () Int)

(assert (=> d!2360279 (= (sizeTr!463 lt!2687502 lt!2687497) (+ (size!43146 lt!2687502) lt!2687497))))

(declare-fun lemmaSizeTrEqualsSize!462 (List!74494 Int) Unit!169424)

(assert (=> d!2360279 (= lt!2687500 (lemmaSizeTrEqualsSize!462 lt!2687502 lt!2687497))))

(assert (=> d!2360279 (= lt!2687497 0)))

(assert (=> d!2360279 (= lt!2687502 Nil!74370)))

(declare-fun lt!2687499 () Unit!169424)

(declare-fun lt!2687501 () Unit!169424)

(assert (=> d!2360279 (= lt!2687499 lt!2687501)))

(declare-fun lt!2687498 () Int)

(assert (=> d!2360279 (= (sizeTr!463 input!1480 lt!2687498) (+ (size!43146 input!1480) lt!2687498))))

(assert (=> d!2360279 (= lt!2687501 (lemmaSizeTrEqualsSize!462 input!1480 lt!2687498))))

(assert (=> d!2360279 (= lt!2687498 0)))

(assert (=> d!2360279 (validRegex!11675 (regex!8666 rule!156))))

(assert (=> d!2360279 (= (findLongestMatch!1959 (regex!8666 rule!156) input!1480) lt!2687496)))

(declare-fun bs!1968260 () Bool)

(assert (= bs!1968260 d!2360279))

(declare-fun m!8284804 () Bool)

(assert (=> bs!1968260 m!8284804))

(declare-fun m!8284806 () Bool)

(assert (=> bs!1968260 m!8284806))

(assert (=> bs!1968260 m!8284606))

(declare-fun m!8284808 () Bool)

(assert (=> bs!1968260 m!8284808))

(assert (=> bs!1968260 m!8284534))

(declare-fun m!8284810 () Bool)

(assert (=> bs!1968260 m!8284810))

(declare-fun m!8284812 () Bool)

(assert (=> bs!1968260 m!8284812))

(declare-fun m!8284814 () Bool)

(assert (=> bs!1968260 m!8284814))

(declare-fun m!8284816 () Bool)

(assert (=> bs!1968260 m!8284816))

(assert (=> bs!1968260 m!8284816))

(declare-fun m!8284818 () Bool)

(assert (=> bs!1968260 m!8284818))

(assert (=> b!7910922 d!2360279))

(declare-fun b!7911203 () Bool)

(declare-fun e!4669994 () Bool)

(declare-fun lt!2687506 () Bool)

(assert (=> b!7911203 (= e!4669994 (not lt!2687506))))

(declare-fun b!7911204 () Bool)

(declare-fun res!3140000 () Bool)

(declare-fun e!4669990 () Bool)

(assert (=> b!7911204 (=> (not res!3140000) (not e!4669990))))

(assert (=> b!7911204 (= res!3140000 (isEmpty!42702 (tail!15716 lt!2687238)))))

(declare-fun b!7911205 () Bool)

(declare-fun res!3139995 () Bool)

(declare-fun e!4669992 () Bool)

(assert (=> b!7911205 (=> res!3139995 e!4669992)))

(assert (=> b!7911205 (= res!3139995 (not ((_ is ElementMatch!21369) (regex!8666 rule!156))))))

(assert (=> b!7911205 (= e!4669994 e!4669992)))

(declare-fun b!7911206 () Bool)

(declare-fun e!4669995 () Bool)

(declare-fun call!733797 () Bool)

(assert (=> b!7911206 (= e!4669995 (= lt!2687506 call!733797))))

(declare-fun b!7911207 () Bool)

(assert (=> b!7911207 (= e!4669990 (= (head!16173 lt!2687238) (c!1451380 (regex!8666 rule!156))))))

(declare-fun b!7911208 () Bool)

(declare-fun res!3139997 () Bool)

(declare-fun e!4669993 () Bool)

(assert (=> b!7911208 (=> res!3139997 e!4669993)))

(assert (=> b!7911208 (= res!3139997 (not (isEmpty!42702 (tail!15716 lt!2687238))))))

(declare-fun d!2360281 () Bool)

(assert (=> d!2360281 e!4669995))

(declare-fun c!1451455 () Bool)

(assert (=> d!2360281 (= c!1451455 ((_ is EmptyExpr!21369) (regex!8666 rule!156)))))

(declare-fun e!4669991 () Bool)

(assert (=> d!2360281 (= lt!2687506 e!4669991)))

(declare-fun c!1451453 () Bool)

(assert (=> d!2360281 (= c!1451453 (isEmpty!42702 lt!2687238))))

(assert (=> d!2360281 (validRegex!11675 (regex!8666 rule!156))))

(assert (=> d!2360281 (= (matchR!10690 (regex!8666 rule!156) lt!2687238) lt!2687506)))

(declare-fun bm!733792 () Bool)

(assert (=> bm!733792 (= call!733797 (isEmpty!42702 lt!2687238))))

(declare-fun b!7911209 () Bool)

(declare-fun res!3139996 () Bool)

(assert (=> b!7911209 (=> res!3139996 e!4669992)))

(assert (=> b!7911209 (= res!3139996 e!4669990)))

(declare-fun res!3139999 () Bool)

(assert (=> b!7911209 (=> (not res!3139999) (not e!4669990))))

(assert (=> b!7911209 (= res!3139999 lt!2687506)))

(declare-fun b!7911210 () Bool)

(declare-fun res!3139998 () Bool)

(assert (=> b!7911210 (=> (not res!3139998) (not e!4669990))))

(assert (=> b!7911210 (= res!3139998 (not call!733797))))

(declare-fun b!7911211 () Bool)

(assert (=> b!7911211 (= e!4669995 e!4669994)))

(declare-fun c!1451454 () Bool)

(assert (=> b!7911211 (= c!1451454 ((_ is EmptyLang!21369) (regex!8666 rule!156)))))

(declare-fun b!7911212 () Bool)

(assert (=> b!7911212 (= e!4669991 (nullable!9510 (regex!8666 rule!156)))))

(declare-fun b!7911213 () Bool)

(assert (=> b!7911213 (= e!4669993 (not (= (head!16173 lt!2687238) (c!1451380 (regex!8666 rule!156)))))))

(declare-fun b!7911214 () Bool)

(declare-fun e!4669989 () Bool)

(assert (=> b!7911214 (= e!4669989 e!4669993)))

(declare-fun res!3140002 () Bool)

(assert (=> b!7911214 (=> res!3140002 e!4669993)))

(assert (=> b!7911214 (= res!3140002 call!733797)))

(declare-fun b!7911215 () Bool)

(assert (=> b!7911215 (= e!4669991 (matchR!10690 (derivativeStep!6452 (regex!8666 rule!156) (head!16173 lt!2687238)) (tail!15716 lt!2687238)))))

(declare-fun b!7911216 () Bool)

(assert (=> b!7911216 (= e!4669992 e!4669989)))

(declare-fun res!3140001 () Bool)

(assert (=> b!7911216 (=> (not res!3140001) (not e!4669989))))

(assert (=> b!7911216 (= res!3140001 (not lt!2687506))))

(assert (= (and d!2360281 c!1451453) b!7911212))

(assert (= (and d!2360281 (not c!1451453)) b!7911215))

(assert (= (and d!2360281 c!1451455) b!7911206))

(assert (= (and d!2360281 (not c!1451455)) b!7911211))

(assert (= (and b!7911211 c!1451454) b!7911203))

(assert (= (and b!7911211 (not c!1451454)) b!7911205))

(assert (= (and b!7911205 (not res!3139995)) b!7911209))

(assert (= (and b!7911209 res!3139999) b!7911210))

(assert (= (and b!7911210 res!3139998) b!7911204))

(assert (= (and b!7911204 res!3140000) b!7911207))

(assert (= (and b!7911209 (not res!3139996)) b!7911216))

(assert (= (and b!7911216 res!3140001) b!7911214))

(assert (= (and b!7911214 (not res!3140002)) b!7911208))

(assert (= (and b!7911208 (not res!3139997)) b!7911213))

(assert (= (or b!7911206 b!7911210 b!7911214) bm!733792))

(declare-fun m!8284820 () Bool)

(assert (=> b!7911208 m!8284820))

(assert (=> b!7911208 m!8284820))

(declare-fun m!8284822 () Bool)

(assert (=> b!7911208 m!8284822))

(declare-fun m!8284824 () Bool)

(assert (=> b!7911215 m!8284824))

(assert (=> b!7911215 m!8284824))

(declare-fun m!8284826 () Bool)

(assert (=> b!7911215 m!8284826))

(assert (=> b!7911215 m!8284820))

(assert (=> b!7911215 m!8284826))

(assert (=> b!7911215 m!8284820))

(declare-fun m!8284828 () Bool)

(assert (=> b!7911215 m!8284828))

(assert (=> b!7911207 m!8284824))

(assert (=> b!7911213 m!8284824))

(assert (=> b!7911204 m!8284820))

(assert (=> b!7911204 m!8284820))

(assert (=> b!7911204 m!8284822))

(declare-fun m!8284830 () Bool)

(assert (=> d!2360281 m!8284830))

(assert (=> d!2360281 m!8284606))

(assert (=> bm!733792 m!8284830))

(assert (=> b!7911212 m!8284774))

(assert (=> b!7910924 d!2360281))

(declare-fun d!2360283 () Bool)

(declare-fun list!19318 (Conc!15840) List!74494)

(assert (=> d!2360283 (= (list!19316 (charsOf!5604 (_1!38519 lt!2687240))) (list!19318 (c!1451379 (charsOf!5604 (_1!38519 lt!2687240)))))))

(declare-fun bs!1968261 () Bool)

(assert (= bs!1968261 d!2360283))

(declare-fun m!8284832 () Bool)

(assert (=> bs!1968261 m!8284832))

(assert (=> b!7910924 d!2360283))

(declare-fun d!2360285 () Bool)

(declare-fun lt!2687509 () BalanceConc!30798)

(assert (=> d!2360285 (= (list!19316 lt!2687509) (originalCharacters!8903 (_1!38519 lt!2687240)))))

(assert (=> d!2360285 (= lt!2687509 (dynLambda!30157 (toChars!11582 (transformation!8666 (rule!11966 (_1!38519 lt!2687240)))) (value!288958 (_1!38519 lt!2687240))))))

(assert (=> d!2360285 (= (charsOf!5604 (_1!38519 lt!2687240)) lt!2687509)))

(declare-fun b_lambda!290059 () Bool)

(assert (=> (not b_lambda!290059) (not d!2360285)))

(declare-fun tb!263245 () Bool)

(declare-fun t!389903 () Bool)

(assert (=> (and b!7910926 (= (toChars!11582 (transformation!8666 rule!156)) (toChars!11582 (transformation!8666 (rule!11966 (_1!38519 lt!2687240))))) t!389903) tb!263245))

(declare-fun b!7911217 () Bool)

(declare-fun e!4669996 () Bool)

(declare-fun tp!2356566 () Bool)

(assert (=> b!7911217 (= e!4669996 (and (inv!95426 (c!1451379 (dynLambda!30157 (toChars!11582 (transformation!8666 (rule!11966 (_1!38519 lt!2687240)))) (value!288958 (_1!38519 lt!2687240))))) tp!2356566))))

(declare-fun result!360584 () Bool)

(assert (=> tb!263245 (= result!360584 (and (inv!95427 (dynLambda!30157 (toChars!11582 (transformation!8666 (rule!11966 (_1!38519 lt!2687240)))) (value!288958 (_1!38519 lt!2687240)))) e!4669996))))

(assert (= tb!263245 b!7911217))

(declare-fun m!8284834 () Bool)

(assert (=> b!7911217 m!8284834))

(declare-fun m!8284836 () Bool)

(assert (=> tb!263245 m!8284836))

(assert (=> d!2360285 t!389903))

(declare-fun b_and!353529 () Bool)

(assert (= b_and!353523 (and (=> t!389903 result!360584) b_and!353529)))

(declare-fun m!8284838 () Bool)

(assert (=> d!2360285 m!8284838))

(declare-fun m!8284840 () Bool)

(assert (=> d!2360285 m!8284840))

(assert (=> b!7910924 d!2360285))

(declare-fun d!2360287 () Bool)

(assert (=> d!2360287 (= (get!26747 lt!2687244) (v!55100 lt!2687244))))

(assert (=> b!7910924 d!2360287))

(declare-fun b!7911218 () Bool)

(declare-fun e!4670002 () Bool)

(declare-fun lt!2687510 () Bool)

(assert (=> b!7911218 (= e!4670002 (not lt!2687510))))

(declare-fun b!7911219 () Bool)

(declare-fun res!3140008 () Bool)

(declare-fun e!4669998 () Bool)

(assert (=> b!7911219 (=> (not res!3140008) (not e!4669998))))

(assert (=> b!7911219 (= res!3140008 (isEmpty!42702 (tail!15716 (_1!38518 lt!2687243))))))

(declare-fun b!7911220 () Bool)

(declare-fun res!3140003 () Bool)

(declare-fun e!4670000 () Bool)

(assert (=> b!7911220 (=> res!3140003 e!4670000)))

(assert (=> b!7911220 (= res!3140003 (not ((_ is ElementMatch!21369) (regex!8666 rule!156))))))

(assert (=> b!7911220 (= e!4670002 e!4670000)))

(declare-fun b!7911221 () Bool)

(declare-fun e!4670003 () Bool)

(declare-fun call!733798 () Bool)

(assert (=> b!7911221 (= e!4670003 (= lt!2687510 call!733798))))

(declare-fun b!7911222 () Bool)

(assert (=> b!7911222 (= e!4669998 (= (head!16173 (_1!38518 lt!2687243)) (c!1451380 (regex!8666 rule!156))))))

(declare-fun b!7911223 () Bool)

(declare-fun res!3140005 () Bool)

(declare-fun e!4670001 () Bool)

(assert (=> b!7911223 (=> res!3140005 e!4670001)))

(assert (=> b!7911223 (= res!3140005 (not (isEmpty!42702 (tail!15716 (_1!38518 lt!2687243)))))))

(declare-fun d!2360289 () Bool)

(assert (=> d!2360289 e!4670003))

(declare-fun c!1451458 () Bool)

(assert (=> d!2360289 (= c!1451458 ((_ is EmptyExpr!21369) (regex!8666 rule!156)))))

(declare-fun e!4669999 () Bool)

(assert (=> d!2360289 (= lt!2687510 e!4669999)))

(declare-fun c!1451456 () Bool)

(assert (=> d!2360289 (= c!1451456 (isEmpty!42702 (_1!38518 lt!2687243)))))

(assert (=> d!2360289 (validRegex!11675 (regex!8666 rule!156))))

(assert (=> d!2360289 (= (matchR!10690 (regex!8666 rule!156) (_1!38518 lt!2687243)) lt!2687510)))

(declare-fun bm!733793 () Bool)

(assert (=> bm!733793 (= call!733798 (isEmpty!42702 (_1!38518 lt!2687243)))))

(declare-fun b!7911224 () Bool)

(declare-fun res!3140004 () Bool)

(assert (=> b!7911224 (=> res!3140004 e!4670000)))

(assert (=> b!7911224 (= res!3140004 e!4669998)))

(declare-fun res!3140007 () Bool)

(assert (=> b!7911224 (=> (not res!3140007) (not e!4669998))))

(assert (=> b!7911224 (= res!3140007 lt!2687510)))

(declare-fun b!7911225 () Bool)

(declare-fun res!3140006 () Bool)

(assert (=> b!7911225 (=> (not res!3140006) (not e!4669998))))

(assert (=> b!7911225 (= res!3140006 (not call!733798))))

(declare-fun b!7911226 () Bool)

(assert (=> b!7911226 (= e!4670003 e!4670002)))

(declare-fun c!1451457 () Bool)

(assert (=> b!7911226 (= c!1451457 ((_ is EmptyLang!21369) (regex!8666 rule!156)))))

(declare-fun b!7911227 () Bool)

(assert (=> b!7911227 (= e!4669999 (nullable!9510 (regex!8666 rule!156)))))

(declare-fun b!7911228 () Bool)

(assert (=> b!7911228 (= e!4670001 (not (= (head!16173 (_1!38518 lt!2687243)) (c!1451380 (regex!8666 rule!156)))))))

(declare-fun b!7911229 () Bool)

(declare-fun e!4669997 () Bool)

(assert (=> b!7911229 (= e!4669997 e!4670001)))

(declare-fun res!3140010 () Bool)

(assert (=> b!7911229 (=> res!3140010 e!4670001)))

(assert (=> b!7911229 (= res!3140010 call!733798)))

(declare-fun b!7911230 () Bool)

(assert (=> b!7911230 (= e!4669999 (matchR!10690 (derivativeStep!6452 (regex!8666 rule!156) (head!16173 (_1!38518 lt!2687243))) (tail!15716 (_1!38518 lt!2687243))))))

(declare-fun b!7911231 () Bool)

(assert (=> b!7911231 (= e!4670000 e!4669997)))

(declare-fun res!3140009 () Bool)

(assert (=> b!7911231 (=> (not res!3140009) (not e!4669997))))

(assert (=> b!7911231 (= res!3140009 (not lt!2687510))))

(assert (= (and d!2360289 c!1451456) b!7911227))

(assert (= (and d!2360289 (not c!1451456)) b!7911230))

(assert (= (and d!2360289 c!1451458) b!7911221))

(assert (= (and d!2360289 (not c!1451458)) b!7911226))

(assert (= (and b!7911226 c!1451457) b!7911218))

(assert (= (and b!7911226 (not c!1451457)) b!7911220))

(assert (= (and b!7911220 (not res!3140003)) b!7911224))

(assert (= (and b!7911224 res!3140007) b!7911225))

(assert (= (and b!7911225 res!3140006) b!7911219))

(assert (= (and b!7911219 res!3140008) b!7911222))

(assert (= (and b!7911224 (not res!3140004)) b!7911231))

(assert (= (and b!7911231 res!3140009) b!7911229))

(assert (= (and b!7911229 (not res!3140010)) b!7911223))

(assert (= (and b!7911223 (not res!3140005)) b!7911228))

(assert (= (or b!7911221 b!7911225 b!7911229) bm!733793))

(declare-fun m!8284842 () Bool)

(assert (=> b!7911223 m!8284842))

(assert (=> b!7911223 m!8284842))

(declare-fun m!8284844 () Bool)

(assert (=> b!7911223 m!8284844))

(declare-fun m!8284846 () Bool)

(assert (=> b!7911230 m!8284846))

(assert (=> b!7911230 m!8284846))

(declare-fun m!8284848 () Bool)

(assert (=> b!7911230 m!8284848))

(assert (=> b!7911230 m!8284842))

(assert (=> b!7911230 m!8284848))

(assert (=> b!7911230 m!8284842))

(declare-fun m!8284850 () Bool)

(assert (=> b!7911230 m!8284850))

(assert (=> b!7911222 m!8284846))

(assert (=> b!7911228 m!8284846))

(assert (=> b!7911219 m!8284842))

(assert (=> b!7911219 m!8284842))

(assert (=> b!7911219 m!8284844))

(assert (=> d!2360289 m!8284526))

(assert (=> d!2360289 m!8284606))

(assert (=> bm!733793 m!8284526))

(assert (=> b!7911227 m!8284774))

(assert (=> b!7910919 d!2360289))

(declare-fun d!2360291 () Bool)

(declare-fun res!3140015 () Bool)

(declare-fun e!4670006 () Bool)

(assert (=> d!2360291 (=> (not res!3140015) (not e!4670006))))

(assert (=> d!2360291 (= res!3140015 (validRegex!11675 (regex!8666 rule!156)))))

(assert (=> d!2360291 (= (ruleValid!3977 thiss!15815 rule!156) e!4670006)))

(declare-fun b!7911236 () Bool)

(declare-fun res!3140016 () Bool)

(assert (=> b!7911236 (=> (not res!3140016) (not e!4670006))))

(assert (=> b!7911236 (= res!3140016 (not (nullable!9510 (regex!8666 rule!156))))))

(declare-fun b!7911237 () Bool)

(assert (=> b!7911237 (= e!4670006 (not (= (tag!9530 rule!156) (String!83333 ""))))))

(assert (= (and d!2360291 res!3140015) b!7911236))

(assert (= (and b!7911236 res!3140016) b!7911237))

(assert (=> d!2360291 m!8284606))

(assert (=> b!7911236 m!8284774))

(assert (=> b!7910918 d!2360291))

(declare-fun b!7911242 () Bool)

(declare-fun e!4670009 () Bool)

(declare-fun tp!2356569 () Bool)

(assert (=> b!7911242 (= e!4670009 (and tp_is_empty!53113 tp!2356569))))

(assert (=> b!7910925 (= tp!2356538 e!4670009)))

(assert (= (and b!7910925 ((_ is Cons!74370) (t!389891 input!1480))) b!7911242))

(declare-fun b!7911254 () Bool)

(declare-fun e!4670012 () Bool)

(declare-fun tp!2356583 () Bool)

(declare-fun tp!2356580 () Bool)

(assert (=> b!7911254 (= e!4670012 (and tp!2356583 tp!2356580))))

(declare-fun b!7911256 () Bool)

(declare-fun tp!2356581 () Bool)

(declare-fun tp!2356584 () Bool)

(assert (=> b!7911256 (= e!4670012 (and tp!2356581 tp!2356584))))

(assert (=> b!7910921 (= tp!2356539 e!4670012)))

(declare-fun b!7911255 () Bool)

(declare-fun tp!2356582 () Bool)

(assert (=> b!7911255 (= e!4670012 tp!2356582)))

(declare-fun b!7911253 () Bool)

(assert (=> b!7911253 (= e!4670012 tp_is_empty!53113)))

(assert (= (and b!7910921 ((_ is ElementMatch!21369) (regex!8666 rule!156))) b!7911253))

(assert (= (and b!7910921 ((_ is Concat!30352) (regex!8666 rule!156))) b!7911254))

(assert (= (and b!7910921 ((_ is Star!21369) (regex!8666 rule!156))) b!7911255))

(assert (= (and b!7910921 ((_ is Union!21369) (regex!8666 rule!156))) b!7911256))

(declare-fun b_lambda!290061 () Bool)

(assert (= b_lambda!290047 (or (and b!7910926 b_free!135209) b_lambda!290061)))

(declare-fun b_lambda!290063 () Bool)

(assert (= b_lambda!290039 (or (and b!7910926 b_free!135207) b_lambda!290063)))

(declare-fun b_lambda!290065 () Bool)

(assert (= b_lambda!290049 (or (and b!7910926 b_free!135207) b_lambda!290065)))

(check-sat (not b!7911236) (not b!7911174) b_and!353525 (not b!7911217) (not d!2360291) (not b!7911255) (not d!2360283) (not b!7911230) (not d!2360267) (not tb!263241) (not b!7911227) (not bm!733786) (not d!2360271) (not bm!733782) (not d!2360201) (not b!7911213) (not b!7911204) tp_is_empty!53113 (not b!7911161) (not b!7911164) (not b!7911228) (not b_next!135997) (not b!7911215) (not b_next!135999) (not bm!733784) (not bm!733787) (not b!7911242) (not tb!263245) (not b_lambda!290063) (not b!7911172) (not b!7911254) (not b!7911017) (not d!2360285) (not b!7910974) (not b_lambda!290059) (not d!2360243) (not b_lambda!290065) (not b!7911256) (not b!7911222) (not b_lambda!290061) (not b!7911081) (not b!7911208) (not b!7911079) (not d!2360207) (not b!7911223) (not bm!733788) (not b!7911219) (not b!7911207) (not bm!733789) (not bm!733792) (not b!7911212) (not d!2360281) (not tb!263235) (not d!2360279) (not bm!733785) (not d!2360275) (not b!7910938) (not d!2360229) (not d!2360215) (not b!7911169) (not b!7910939) b_and!353529 (not b!7911162) (not bm!733793) (not bm!733783) (not d!2360289))
(check-sat b_and!353525 b_and!353529 (not b_next!135997) (not b_next!135999))

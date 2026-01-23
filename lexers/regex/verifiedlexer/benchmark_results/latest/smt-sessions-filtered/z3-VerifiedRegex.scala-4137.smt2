; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!221928 () Bool)

(assert start!221928)

(declare-fun b!2270248 () Bool)

(declare-fun b_free!67485 () Bool)

(declare-fun b_next!68189 () Bool)

(assert (=> b!2270248 (= b_free!67485 (not b_next!68189))))

(declare-fun tp!718787 () Bool)

(declare-fun b_and!178873 () Bool)

(assert (=> b!2270248 (= tp!718787 b_and!178873)))

(declare-fun b_free!67487 () Bool)

(declare-fun b_next!68191 () Bool)

(assert (=> b!2270248 (= b_free!67487 (not b_next!68191))))

(declare-fun tp!718780 () Bool)

(declare-fun b_and!178875 () Bool)

(assert (=> b!2270248 (= tp!718780 b_and!178875)))

(declare-fun b!2270230 () Bool)

(declare-fun b_free!67489 () Bool)

(declare-fun b_next!68193 () Bool)

(assert (=> b!2270230 (= b_free!67489 (not b_next!68193))))

(declare-fun tp!718785 () Bool)

(declare-fun b_and!178877 () Bool)

(assert (=> b!2270230 (= tp!718785 b_and!178877)))

(declare-fun b_free!67491 () Bool)

(declare-fun b_next!68195 () Bool)

(assert (=> b!2270230 (= b_free!67491 (not b_next!68195))))

(declare-fun tp!718789 () Bool)

(declare-fun b_and!178879 () Bool)

(assert (=> b!2270230 (= tp!718789 b_and!178879)))

(declare-fun b!2270227 () Bool)

(declare-fun b_free!67493 () Bool)

(declare-fun b_next!68197 () Bool)

(assert (=> b!2270227 (= b_free!67493 (not b_next!68197))))

(declare-fun tp!718781 () Bool)

(declare-fun b_and!178881 () Bool)

(assert (=> b!2270227 (= tp!718781 b_and!178881)))

(declare-fun b_free!67495 () Bool)

(declare-fun b_next!68199 () Bool)

(assert (=> b!2270227 (= b_free!67495 (not b_next!68199))))

(declare-fun tp!718776 () Bool)

(declare-fun b_and!178883 () Bool)

(assert (=> b!2270227 (= tp!718776 b_and!178883)))

(declare-fun b!2270235 () Bool)

(declare-fun b_free!67497 () Bool)

(declare-fun b_next!68201 () Bool)

(assert (=> b!2270235 (= b_free!67497 (not b_next!68201))))

(declare-fun tp!718777 () Bool)

(declare-fun b_and!178885 () Bool)

(assert (=> b!2270235 (= tp!718777 b_and!178885)))

(declare-fun b_free!67499 () Bool)

(declare-fun b_next!68203 () Bool)

(assert (=> b!2270235 (= b_free!67499 (not b_next!68203))))

(declare-fun tp!718791 () Bool)

(declare-fun b_and!178887 () Bool)

(assert (=> b!2270235 (= tp!718791 b_and!178887)))

(declare-fun b!2270223 () Bool)

(declare-fun res!970537 () Bool)

(declare-fun e!1454105 () Bool)

(assert (=> b!2270223 (=> (not res!970537) (not e!1454105))))

(declare-datatypes ((C!13452 0))(
  ( (C!13453 (val!7774 Int)) )
))
(declare-datatypes ((List!27095 0))(
  ( (Nil!27001) (Cons!27001 (h!32402 C!13452) (t!202505 List!27095)) )
))
(declare-fun otherP!12 () List!27095)

(declare-fun input!1722 () List!27095)

(declare-fun isPrefix!2295 (List!27095 List!27095) Bool)

(assert (=> b!2270223 (= res!970537 (isPrefix!2295 otherP!12 input!1722))))

(declare-fun b!2270224 () Bool)

(declare-fun res!970534 () Bool)

(declare-fun e!1454107 () Bool)

(assert (=> b!2270224 (=> (not res!970534) (not e!1454107))))

(declare-datatypes ((List!27096 0))(
  ( (Nil!27002) (Cons!27002 (h!32403 (_ BitVec 16)) (t!202506 List!27096)) )
))
(declare-datatypes ((TokenValue!4467 0))(
  ( (FloatLiteralValue!8934 (text!31714 List!27096)) (TokenValueExt!4466 (__x!17994 Int)) (Broken!22335 (value!136486 List!27096)) (Object!4560) (End!4467) (Def!4467) (Underscore!4467) (Match!4467) (Else!4467) (Error!4467) (Case!4467) (If!4467) (Extends!4467) (Abstract!4467) (Class!4467) (Val!4467) (DelimiterValue!8934 (del!4527 List!27096)) (KeywordValue!4473 (value!136487 List!27096)) (CommentValue!8934 (value!136488 List!27096)) (WhitespaceValue!8934 (value!136489 List!27096)) (IndentationValue!4467 (value!136490 List!27096)) (String!29438) (Int32!4467) (Broken!22336 (value!136491 List!27096)) (Boolean!4468) (Unit!39949) (OperatorValue!4470 (op!4527 List!27096)) (IdentifierValue!8934 (value!136492 List!27096)) (IdentifierValue!8935 (value!136493 List!27096)) (WhitespaceValue!8935 (value!136494 List!27096)) (True!8934) (False!8934) (Broken!22337 (value!136495 List!27096)) (Broken!22338 (value!136496 List!27096)) (True!8935) (RightBrace!4467) (RightBracket!4467) (Colon!4467) (Null!4467) (Comma!4467) (LeftBracket!4467) (False!8935) (LeftBrace!4467) (ImaginaryLiteralValue!4467 (text!31715 List!27096)) (StringLiteralValue!13401 (value!136497 List!27096)) (EOFValue!4467 (value!136498 List!27096)) (IdentValue!4467 (value!136499 List!27096)) (DelimiterValue!8935 (value!136500 List!27096)) (DedentValue!4467 (value!136501 List!27096)) (NewLineValue!4467 (value!136502 List!27096)) (IntegerValue!13401 (value!136503 (_ BitVec 32)) (text!31716 List!27096)) (IntegerValue!13402 (value!136504 Int) (text!31717 List!27096)) (Times!4467) (Or!4467) (Equal!4467) (Minus!4467) (Broken!22339 (value!136505 List!27096)) (And!4467) (Div!4467) (LessEqual!4467) (Mod!4467) (Concat!11120) (Not!4467) (Plus!4467) (SpaceValue!4467 (value!136506 List!27096)) (IntegerValue!13403 (value!136507 Int) (text!31718 List!27096)) (StringLiteralValue!13402 (text!31719 List!27096)) (FloatLiteralValue!8935 (text!31720 List!27096)) (BytesLiteralValue!4467 (value!136508 List!27096)) (CommentValue!8935 (value!136509 List!27096)) (StringLiteralValue!13403 (value!136510 List!27096)) (ErrorTokenValue!4467 (msg!4528 List!27096)) )
))
(declare-datatypes ((IArray!17521 0))(
  ( (IArray!17522 (innerList!8818 List!27095)) )
))
(declare-datatypes ((Conc!8758 0))(
  ( (Node!8758 (left!20487 Conc!8758) (right!20817 Conc!8758) (csize!17746 Int) (cheight!8969 Int)) (Leaf!12896 (xs!11700 IArray!17521) (csize!17747 Int)) (Empty!8758) )
))
(declare-datatypes ((BalanceConc!17244 0))(
  ( (BalanceConc!17245 (c!360418 Conc!8758)) )
))
(declare-datatypes ((String!29439 0))(
  ( (String!29440 (value!136511 String)) )
))
(declare-datatypes ((Regex!6653 0))(
  ( (ElementMatch!6653 (c!360419 C!13452)) (Concat!11121 (regOne!13818 Regex!6653) (regTwo!13818 Regex!6653)) (EmptyExpr!6653) (Star!6653 (reg!6982 Regex!6653)) (EmptyLang!6653) (Union!6653 (regOne!13819 Regex!6653) (regTwo!13819 Regex!6653)) )
))
(declare-datatypes ((TokenValueInjection!8474 0))(
  ( (TokenValueInjection!8475 (toValue!6067 Int) (toChars!5926 Int)) )
))
(declare-datatypes ((Rule!8410 0))(
  ( (Rule!8411 (regex!4305 Regex!6653) (tag!4795 String!29439) (isSeparator!4305 Bool) (transformation!4305 TokenValueInjection!8474)) )
))
(declare-datatypes ((List!27097 0))(
  ( (Nil!27003) (Cons!27003 (h!32404 Rule!8410) (t!202507 List!27097)) )
))
(declare-fun rules!1750 () List!27097)

(declare-fun r!2363 () Rule!8410)

(declare-fun contains!4667 (List!27097 Rule!8410) Bool)

(assert (=> b!2270224 (= res!970534 (contains!4667 rules!1750 r!2363))))

(declare-fun res!970540 () Bool)

(assert (=> start!221928 (=> (not res!970540) (not e!1454107))))

(declare-datatypes ((LexerInterface!3902 0))(
  ( (LexerInterfaceExt!3899 (__x!17995 Int)) (Lexer!3900) )
))
(declare-fun thiss!16613 () LexerInterface!3902)

(get-info :version)

(assert (=> start!221928 (= res!970540 ((_ is Lexer!3900) thiss!16613))))

(assert (=> start!221928 e!1454107))

(assert (=> start!221928 true))

(declare-fun e!1454111 () Bool)

(assert (=> start!221928 e!1454111))

(declare-fun e!1454112 () Bool)

(assert (=> start!221928 e!1454112))

(declare-fun e!1454097 () Bool)

(assert (=> start!221928 e!1454097))

(declare-fun e!1454090 () Bool)

(assert (=> start!221928 e!1454090))

(declare-fun e!1454108 () Bool)

(assert (=> start!221928 e!1454108))

(declare-fun e!1454114 () Bool)

(assert (=> start!221928 e!1454114))

(declare-fun e!1454096 () Bool)

(assert (=> start!221928 e!1454096))

(declare-fun b!2270225 () Bool)

(declare-fun e!1454103 () Bool)

(declare-datatypes ((Token!8088 0))(
  ( (Token!8089 (value!136512 TokenValue!4467) (rule!6623 Rule!8410) (size!21192 Int) (originalCharacters!5075 List!27095)) )
))
(declare-datatypes ((List!27098 0))(
  ( (Nil!27004) (Cons!27004 (h!32405 Token!8088) (t!202508 List!27098)) )
))
(declare-fun tokens!456 () List!27098)

(declare-fun head!4898 (List!27098) Token!8088)

(assert (=> b!2270225 (= e!1454103 (= (rule!6623 (head!4898 tokens!456)) r!2363))))

(declare-fun b!2270226 () Bool)

(declare-fun res!970536 () Bool)

(assert (=> b!2270226 (=> (not res!970536) (not e!1454105))))

(declare-fun otherR!12 () Rule!8410)

(assert (=> b!2270226 (= res!970536 (not (= r!2363 otherR!12)))))

(declare-fun e!1454115 () Bool)

(assert (=> b!2270227 (= e!1454115 (and tp!718781 tp!718776))))

(declare-fun b!2270228 () Bool)

(declare-fun e!1454109 () Bool)

(declare-fun rulesValidInductive!1503 (LexerInterface!3902 List!27097) Bool)

(assert (=> b!2270228 (= e!1454109 (rulesValidInductive!1503 thiss!16613 rules!1750))))

(declare-fun b!2270229 () Bool)

(declare-fun tp_is_empty!10527 () Bool)

(declare-fun tp!718788 () Bool)

(assert (=> b!2270229 (= e!1454097 (and tp_is_empty!10527 tp!718788))))

(declare-fun e!1454095 () Bool)

(assert (=> b!2270230 (= e!1454095 (and tp!718785 tp!718789))))

(declare-fun b!2270231 () Bool)

(declare-fun e!1454092 () Bool)

(assert (=> b!2270231 (= e!1454092 e!1454105)))

(declare-fun res!970539 () Bool)

(assert (=> b!2270231 (=> (not res!970539) (not e!1454105))))

(declare-fun e!1454098 () Bool)

(assert (=> b!2270231 (= res!970539 e!1454098)))

(declare-fun res!970531 () Bool)

(assert (=> b!2270231 (=> res!970531 e!1454098)))

(declare-fun lt!843403 () Bool)

(assert (=> b!2270231 (= res!970531 lt!843403)))

(declare-fun isEmpty!15291 (List!27098) Bool)

(assert (=> b!2270231 (= lt!843403 (isEmpty!15291 tokens!456))))

(declare-fun b!2270232 () Bool)

(declare-fun e!1454101 () Bool)

(declare-fun tp!718782 () Bool)

(assert (=> b!2270232 (= e!1454108 (and e!1454101 tp!718782))))

(declare-fun tp!718775 () Bool)

(declare-fun e!1454093 () Bool)

(declare-fun b!2270233 () Bool)

(declare-fun inv!36554 (String!29439) Bool)

(declare-fun inv!36557 (TokenValueInjection!8474) Bool)

(assert (=> b!2270233 (= e!1454114 (and tp!718775 (inv!36554 (tag!4795 r!2363)) (inv!36557 (transformation!4305 r!2363)) e!1454093))))

(declare-fun b!2270234 () Bool)

(assert (=> b!2270234 (= e!1454107 e!1454092)))

(declare-fun res!970533 () Bool)

(assert (=> b!2270234 (=> (not res!970533) (not e!1454092))))

(declare-datatypes ((IArray!17523 0))(
  ( (IArray!17524 (innerList!8819 List!27098)) )
))
(declare-datatypes ((Conc!8759 0))(
  ( (Node!8759 (left!20488 Conc!8759) (right!20818 Conc!8759) (csize!17748 Int) (cheight!8970 Int)) (Leaf!12897 (xs!11701 IArray!17523) (csize!17749 Int)) (Empty!8759) )
))
(declare-datatypes ((BalanceConc!17246 0))(
  ( (BalanceConc!17247 (c!360420 Conc!8759)) )
))
(declare-datatypes ((tuple2!26668 0))(
  ( (tuple2!26669 (_1!15844 BalanceConc!17246) (_2!15844 BalanceConc!17244)) )
))
(declare-fun lt!843402 () tuple2!26668)

(declare-fun suffix!886 () List!27095)

(declare-datatypes ((tuple2!26670 0))(
  ( (tuple2!26671 (_1!15845 List!27098) (_2!15845 List!27095)) )
))
(declare-fun list!10465 (BalanceConc!17246) List!27098)

(declare-fun list!10466 (BalanceConc!17244) List!27095)

(assert (=> b!2270234 (= res!970533 (= (tuple2!26671 (list!10465 (_1!15844 lt!843402)) (list!10466 (_2!15844 lt!843402))) (tuple2!26671 tokens!456 suffix!886)))))

(declare-fun lex!1741 (LexerInterface!3902 List!27097 BalanceConc!17244) tuple2!26668)

(declare-fun seqFromList!3009 (List!27095) BalanceConc!17244)

(assert (=> b!2270234 (= lt!843402 (lex!1741 thiss!16613 rules!1750 (seqFromList!3009 input!1722)))))

(declare-fun e!1454094 () Bool)

(assert (=> b!2270235 (= e!1454094 (and tp!718777 tp!718791))))

(declare-fun b!2270236 () Bool)

(declare-fun res!970541 () Bool)

(assert (=> b!2270236 (=> (not res!970541) (not e!1454107))))

(declare-fun rulesInvariant!3404 (LexerInterface!3902 List!27097) Bool)

(assert (=> b!2270236 (= res!970541 (rulesInvariant!3404 thiss!16613 rules!1750))))

(declare-fun b!2270237 () Bool)

(declare-fun e!1454110 () Bool)

(declare-fun tp!718784 () Bool)

(assert (=> b!2270237 (= e!1454110 (and tp!718784 (inv!36554 (tag!4795 (rule!6623 (h!32405 tokens!456)))) (inv!36557 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) e!1454115))))

(declare-fun b!2270238 () Bool)

(declare-fun res!970529 () Bool)

(assert (=> b!2270238 (=> (not res!970529) (not e!1454105))))

(assert (=> b!2270238 (= res!970529 e!1454103)))

(declare-fun res!970538 () Bool)

(assert (=> b!2270238 (=> res!970538 e!1454103)))

(assert (=> b!2270238 (= res!970538 lt!843403)))

(declare-fun b!2270239 () Bool)

(declare-fun size!21193 (BalanceConc!17244) Int)

(declare-fun charsOf!2693 (Token!8088) BalanceConc!17244)

(declare-fun size!21194 (List!27095) Int)

(assert (=> b!2270239 (= e!1454098 (<= (size!21193 (charsOf!2693 (head!4898 tokens!456))) (size!21194 otherP!12)))))

(declare-fun b!2270240 () Bool)

(declare-fun tp!718783 () Bool)

(assert (=> b!2270240 (= e!1454112 (and tp!718783 (inv!36554 (tag!4795 otherR!12)) (inv!36557 (transformation!4305 otherR!12)) e!1454094))))

(declare-fun b!2270241 () Bool)

(assert (=> b!2270241 (= e!1454105 (not e!1454109))))

(declare-fun res!970530 () Bool)

(assert (=> b!2270241 (=> res!970530 e!1454109)))

(declare-fun e!1454102 () Bool)

(assert (=> b!2270241 (= res!970530 e!1454102)))

(declare-fun res!970528 () Bool)

(assert (=> b!2270241 (=> (not res!970528) (not e!1454102))))

(assert (=> b!2270241 (= res!970528 (not lt!843403))))

(declare-fun ruleValid!1395 (LexerInterface!3902 Rule!8410) Bool)

(assert (=> b!2270241 (ruleValid!1395 thiss!16613 r!2363)))

(declare-datatypes ((Unit!39950 0))(
  ( (Unit!39951) )
))
(declare-fun lt!843404 () Unit!39950)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!800 (LexerInterface!3902 Rule!8410 List!27097) Unit!39950)

(assert (=> b!2270241 (= lt!843404 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!800 thiss!16613 r!2363 rules!1750))))

(declare-fun tp!718778 () Bool)

(declare-fun b!2270242 () Bool)

(declare-fun e!1454104 () Bool)

(declare-fun inv!36558 (Token!8088) Bool)

(assert (=> b!2270242 (= e!1454096 (and (inv!36558 (h!32405 tokens!456)) e!1454104 tp!718778))))

(declare-fun b!2270243 () Bool)

(declare-fun tp!718790 () Bool)

(assert (=> b!2270243 (= e!1454101 (and tp!718790 (inv!36554 (tag!4795 (h!32404 rules!1750))) (inv!36557 (transformation!4305 (h!32404 rules!1750))) e!1454095))))

(declare-fun b!2270244 () Bool)

(declare-fun tp!718774 () Bool)

(assert (=> b!2270244 (= e!1454090 (and tp_is_empty!10527 tp!718774))))

(declare-fun b!2270245 () Bool)

(declare-fun res!970532 () Bool)

(assert (=> b!2270245 (=> (not res!970532) (not e!1454107))))

(assert (=> b!2270245 (= res!970532 (contains!4667 rules!1750 otherR!12))))

(declare-fun b!2270246 () Bool)

(declare-fun tp!718779 () Bool)

(assert (=> b!2270246 (= e!1454111 (and tp_is_empty!10527 tp!718779))))

(declare-fun b!2270247 () Bool)

(declare-fun res!970535 () Bool)

(assert (=> b!2270247 (=> (not res!970535) (not e!1454107))))

(declare-fun isEmpty!15292 (List!27097) Bool)

(assert (=> b!2270247 (= res!970535 (not (isEmpty!15292 rules!1750)))))

(assert (=> b!2270248 (= e!1454093 (and tp!718787 tp!718780))))

(declare-fun b!2270249 () Bool)

(declare-fun matchR!2910 (Regex!6653 List!27095) Bool)

(assert (=> b!2270249 (= e!1454102 (not (matchR!2910 (regex!4305 r!2363) (list!10466 (charsOf!2693 (head!4898 tokens!456))))))))

(declare-fun b!2270250 () Bool)

(declare-fun tp!718786 () Bool)

(declare-fun inv!21 (TokenValue!4467) Bool)

(assert (=> b!2270250 (= e!1454104 (and (inv!21 (value!136512 (h!32405 tokens!456))) e!1454110 tp!718786))))

(assert (= (and start!221928 res!970540) b!2270247))

(assert (= (and b!2270247 res!970535) b!2270236))

(assert (= (and b!2270236 res!970541) b!2270224))

(assert (= (and b!2270224 res!970534) b!2270245))

(assert (= (and b!2270245 res!970532) b!2270234))

(assert (= (and b!2270234 res!970533) b!2270231))

(assert (= (and b!2270231 (not res!970531)) b!2270239))

(assert (= (and b!2270231 res!970539) b!2270238))

(assert (= (and b!2270238 (not res!970538)) b!2270225))

(assert (= (and b!2270238 res!970529) b!2270223))

(assert (= (and b!2270223 res!970537) b!2270226))

(assert (= (and b!2270226 res!970536) b!2270241))

(assert (= (and b!2270241 res!970528) b!2270249))

(assert (= (and b!2270241 (not res!970530)) b!2270228))

(assert (= (and start!221928 ((_ is Cons!27001) input!1722)) b!2270246))

(assert (= b!2270240 b!2270235))

(assert (= start!221928 b!2270240))

(assert (= (and start!221928 ((_ is Cons!27001) suffix!886)) b!2270229))

(assert (= (and start!221928 ((_ is Cons!27001) otherP!12)) b!2270244))

(assert (= b!2270243 b!2270230))

(assert (= b!2270232 b!2270243))

(assert (= (and start!221928 ((_ is Cons!27003) rules!1750)) b!2270232))

(assert (= b!2270233 b!2270248))

(assert (= start!221928 b!2270233))

(assert (= b!2270237 b!2270227))

(assert (= b!2270250 b!2270237))

(assert (= b!2270242 b!2270250))

(assert (= (and start!221928 ((_ is Cons!27004) tokens!456)) b!2270242))

(declare-fun m!2699053 () Bool)

(assert (=> b!2270249 m!2699053))

(assert (=> b!2270249 m!2699053))

(declare-fun m!2699055 () Bool)

(assert (=> b!2270249 m!2699055))

(assert (=> b!2270249 m!2699055))

(declare-fun m!2699057 () Bool)

(assert (=> b!2270249 m!2699057))

(assert (=> b!2270249 m!2699057))

(declare-fun m!2699059 () Bool)

(assert (=> b!2270249 m!2699059))

(declare-fun m!2699061 () Bool)

(assert (=> b!2270236 m!2699061))

(declare-fun m!2699063 () Bool)

(assert (=> b!2270224 m!2699063))

(declare-fun m!2699065 () Bool)

(assert (=> b!2270241 m!2699065))

(declare-fun m!2699067 () Bool)

(assert (=> b!2270241 m!2699067))

(declare-fun m!2699069 () Bool)

(assert (=> b!2270243 m!2699069))

(declare-fun m!2699071 () Bool)

(assert (=> b!2270243 m!2699071))

(declare-fun m!2699073 () Bool)

(assert (=> b!2270237 m!2699073))

(declare-fun m!2699075 () Bool)

(assert (=> b!2270237 m!2699075))

(declare-fun m!2699077 () Bool)

(assert (=> b!2270242 m!2699077))

(declare-fun m!2699079 () Bool)

(assert (=> b!2270240 m!2699079))

(declare-fun m!2699081 () Bool)

(assert (=> b!2270240 m!2699081))

(declare-fun m!2699083 () Bool)

(assert (=> b!2270245 m!2699083))

(declare-fun m!2699085 () Bool)

(assert (=> b!2270231 m!2699085))

(declare-fun m!2699087 () Bool)

(assert (=> b!2270228 m!2699087))

(assert (=> b!2270225 m!2699053))

(declare-fun m!2699089 () Bool)

(assert (=> b!2270223 m!2699089))

(assert (=> b!2270239 m!2699053))

(assert (=> b!2270239 m!2699053))

(assert (=> b!2270239 m!2699055))

(assert (=> b!2270239 m!2699055))

(declare-fun m!2699091 () Bool)

(assert (=> b!2270239 m!2699091))

(declare-fun m!2699093 () Bool)

(assert (=> b!2270239 m!2699093))

(declare-fun m!2699095 () Bool)

(assert (=> b!2270247 m!2699095))

(declare-fun m!2699097 () Bool)

(assert (=> b!2270250 m!2699097))

(declare-fun m!2699099 () Bool)

(assert (=> b!2270234 m!2699099))

(declare-fun m!2699101 () Bool)

(assert (=> b!2270234 m!2699101))

(declare-fun m!2699103 () Bool)

(assert (=> b!2270234 m!2699103))

(assert (=> b!2270234 m!2699103))

(declare-fun m!2699105 () Bool)

(assert (=> b!2270234 m!2699105))

(declare-fun m!2699107 () Bool)

(assert (=> b!2270233 m!2699107))

(declare-fun m!2699109 () Bool)

(assert (=> b!2270233 m!2699109))

(check-sat (not b!2270236) (not b_next!68191) b_and!178873 (not b!2270228) (not b!2270244) (not b!2270242) (not b!2270249) (not b!2270231) b_and!178887 b_and!178879 tp_is_empty!10527 b_and!178885 (not b!2270223) (not b!2270225) b_and!178881 b_and!178877 (not b!2270243) (not b_next!68203) b_and!178875 (not b_next!68199) (not b!2270245) (not b!2270247) (not b!2270233) (not b!2270240) (not b!2270232) (not b!2270234) (not b!2270237) (not b_next!68201) (not b_next!68189) (not b!2270224) (not b!2270250) (not b_next!68195) (not b_next!68193) (not b!2270229) b_and!178883 (not b!2270239) (not b_next!68197) (not b!2270241) (not b!2270246))
(check-sat b_and!178881 b_and!178877 (not b_next!68191) b_and!178873 (not b_next!68195) (not b_next!68197) b_and!178887 b_and!178879 b_and!178885 (not b_next!68203) b_and!178875 (not b_next!68199) (not b_next!68201) (not b_next!68189) (not b_next!68193) b_and!178883)
(get-model)

(declare-fun b!2270272 () Bool)

(declare-fun e!1454133 () Bool)

(declare-fun e!1454131 () Bool)

(assert (=> b!2270272 (= e!1454133 e!1454131)))

(declare-fun res!970566 () Bool)

(assert (=> b!2270272 (=> (not res!970566) (not e!1454131))))

(assert (=> b!2270272 (= res!970566 (not ((_ is Nil!27001) input!1722)))))

(declare-fun b!2270275 () Bool)

(declare-fun e!1454132 () Bool)

(assert (=> b!2270275 (= e!1454132 (>= (size!21194 input!1722) (size!21194 otherP!12)))))

(declare-fun b!2270274 () Bool)

(declare-fun tail!3275 (List!27095) List!27095)

(assert (=> b!2270274 (= e!1454131 (isPrefix!2295 (tail!3275 otherP!12) (tail!3275 input!1722)))))

(declare-fun b!2270273 () Bool)

(declare-fun res!970563 () Bool)

(assert (=> b!2270273 (=> (not res!970563) (not e!1454131))))

(declare-fun head!4900 (List!27095) C!13452)

(assert (=> b!2270273 (= res!970563 (= (head!4900 otherP!12) (head!4900 input!1722)))))

(declare-fun d!671986 () Bool)

(assert (=> d!671986 e!1454132))

(declare-fun res!970565 () Bool)

(assert (=> d!671986 (=> res!970565 e!1454132)))

(declare-fun lt!843407 () Bool)

(assert (=> d!671986 (= res!970565 (not lt!843407))))

(assert (=> d!671986 (= lt!843407 e!1454133)))

(declare-fun res!970564 () Bool)

(assert (=> d!671986 (=> res!970564 e!1454133)))

(assert (=> d!671986 (= res!970564 ((_ is Nil!27001) otherP!12))))

(assert (=> d!671986 (= (isPrefix!2295 otherP!12 input!1722) lt!843407)))

(assert (= (and d!671986 (not res!970564)) b!2270272))

(assert (= (and b!2270272 res!970566) b!2270273))

(assert (= (and b!2270273 res!970563) b!2270274))

(assert (= (and d!671986 (not res!970565)) b!2270275))

(declare-fun m!2699121 () Bool)

(assert (=> b!2270275 m!2699121))

(assert (=> b!2270275 m!2699093))

(declare-fun m!2699123 () Bool)

(assert (=> b!2270274 m!2699123))

(declare-fun m!2699125 () Bool)

(assert (=> b!2270274 m!2699125))

(assert (=> b!2270274 m!2699123))

(assert (=> b!2270274 m!2699125))

(declare-fun m!2699127 () Bool)

(assert (=> b!2270274 m!2699127))

(declare-fun m!2699129 () Bool)

(assert (=> b!2270273 m!2699129))

(declare-fun m!2699131 () Bool)

(assert (=> b!2270273 m!2699131))

(assert (=> b!2270223 d!671986))

(declare-fun d!672000 () Bool)

(declare-fun list!10469 (Conc!8759) List!27098)

(assert (=> d!672000 (= (list!10465 (_1!15844 lt!843402)) (list!10469 (c!360420 (_1!15844 lt!843402))))))

(declare-fun bs!455942 () Bool)

(assert (= bs!455942 d!672000))

(declare-fun m!2699133 () Bool)

(assert (=> bs!455942 m!2699133))

(assert (=> b!2270234 d!672000))

(declare-fun d!672002 () Bool)

(declare-fun list!10470 (Conc!8758) List!27095)

(assert (=> d!672002 (= (list!10466 (_2!15844 lt!843402)) (list!10470 (c!360418 (_2!15844 lt!843402))))))

(declare-fun bs!455943 () Bool)

(assert (= bs!455943 d!672002))

(declare-fun m!2699147 () Bool)

(assert (=> bs!455943 m!2699147))

(assert (=> b!2270234 d!672002))

(declare-fun b!2270399 () Bool)

(declare-fun e!1454210 () Bool)

(declare-fun lt!843437 () tuple2!26668)

(assert (=> b!2270399 (= e!1454210 (= (_2!15844 lt!843437) (seqFromList!3009 input!1722)))))

(declare-fun b!2270400 () Bool)

(declare-fun e!1454212 () Bool)

(declare-fun isEmpty!15295 (BalanceConc!17246) Bool)

(assert (=> b!2270400 (= e!1454212 (not (isEmpty!15295 (_1!15844 lt!843437))))))

(declare-fun d!672006 () Bool)

(declare-fun e!1454211 () Bool)

(assert (=> d!672006 e!1454211))

(declare-fun res!970646 () Bool)

(assert (=> d!672006 (=> (not res!970646) (not e!1454211))))

(assert (=> d!672006 (= res!970646 e!1454210)))

(declare-fun c!360444 () Bool)

(declare-fun size!21197 (BalanceConc!17246) Int)

(assert (=> d!672006 (= c!360444 (> (size!21197 (_1!15844 lt!843437)) 0))))

(declare-fun lexTailRecV2!753 (LexerInterface!3902 List!27097 BalanceConc!17244 BalanceConc!17244 BalanceConc!17244 BalanceConc!17246) tuple2!26668)

(assert (=> d!672006 (= lt!843437 (lexTailRecV2!753 thiss!16613 rules!1750 (seqFromList!3009 input!1722) (BalanceConc!17245 Empty!8758) (seqFromList!3009 input!1722) (BalanceConc!17247 Empty!8759)))))

(assert (=> d!672006 (= (lex!1741 thiss!16613 rules!1750 (seqFromList!3009 input!1722)) lt!843437)))

(declare-fun b!2270401 () Bool)

(declare-fun res!970647 () Bool)

(assert (=> b!2270401 (=> (not res!970647) (not e!1454211))))

(declare-fun lexList!1078 (LexerInterface!3902 List!27097 List!27095) tuple2!26670)

(assert (=> b!2270401 (= res!970647 (= (list!10465 (_1!15844 lt!843437)) (_1!15845 (lexList!1078 thiss!16613 rules!1750 (list!10466 (seqFromList!3009 input!1722))))))))

(declare-fun b!2270402 () Bool)

(assert (=> b!2270402 (= e!1454211 (= (list!10466 (_2!15844 lt!843437)) (_2!15845 (lexList!1078 thiss!16613 rules!1750 (list!10466 (seqFromList!3009 input!1722))))))))

(declare-fun b!2270403 () Bool)

(assert (=> b!2270403 (= e!1454210 e!1454212)))

(declare-fun res!970648 () Bool)

(assert (=> b!2270403 (= res!970648 (< (size!21193 (_2!15844 lt!843437)) (size!21193 (seqFromList!3009 input!1722))))))

(assert (=> b!2270403 (=> (not res!970648) (not e!1454212))))

(assert (= (and d!672006 c!360444) b!2270403))

(assert (= (and d!672006 (not c!360444)) b!2270399))

(assert (= (and b!2270403 res!970648) b!2270400))

(assert (= (and d!672006 res!970646) b!2270401))

(assert (= (and b!2270401 res!970647) b!2270402))

(declare-fun m!2699241 () Bool)

(assert (=> b!2270402 m!2699241))

(assert (=> b!2270402 m!2699103))

(declare-fun m!2699243 () Bool)

(assert (=> b!2270402 m!2699243))

(assert (=> b!2270402 m!2699243))

(declare-fun m!2699245 () Bool)

(assert (=> b!2270402 m!2699245))

(declare-fun m!2699247 () Bool)

(assert (=> b!2270400 m!2699247))

(declare-fun m!2699249 () Bool)

(assert (=> b!2270401 m!2699249))

(assert (=> b!2270401 m!2699103))

(assert (=> b!2270401 m!2699243))

(assert (=> b!2270401 m!2699243))

(assert (=> b!2270401 m!2699245))

(declare-fun m!2699251 () Bool)

(assert (=> d!672006 m!2699251))

(assert (=> d!672006 m!2699103))

(assert (=> d!672006 m!2699103))

(declare-fun m!2699253 () Bool)

(assert (=> d!672006 m!2699253))

(declare-fun m!2699255 () Bool)

(assert (=> b!2270403 m!2699255))

(assert (=> b!2270403 m!2699103))

(declare-fun m!2699257 () Bool)

(assert (=> b!2270403 m!2699257))

(assert (=> b!2270234 d!672006))

(declare-fun d!672050 () Bool)

(declare-fun fromListB!1344 (List!27095) BalanceConc!17244)

(assert (=> d!672050 (= (seqFromList!3009 input!1722) (fromListB!1344 input!1722))))

(declare-fun bs!455950 () Bool)

(assert (= bs!455950 d!672050))

(declare-fun m!2699259 () Bool)

(assert (=> bs!455950 m!2699259))

(assert (=> b!2270234 d!672050))

(declare-fun d!672052 () Bool)

(declare-fun lt!843440 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3600 (List!27097) (InoxSet Rule!8410))

(assert (=> d!672052 (= lt!843440 (select (content!3600 rules!1750) otherR!12))))

(declare-fun e!1454218 () Bool)

(assert (=> d!672052 (= lt!843440 e!1454218)))

(declare-fun res!970654 () Bool)

(assert (=> d!672052 (=> (not res!970654) (not e!1454218))))

(assert (=> d!672052 (= res!970654 ((_ is Cons!27003) rules!1750))))

(assert (=> d!672052 (= (contains!4667 rules!1750 otherR!12) lt!843440)))

(declare-fun b!2270408 () Bool)

(declare-fun e!1454217 () Bool)

(assert (=> b!2270408 (= e!1454218 e!1454217)))

(declare-fun res!970653 () Bool)

(assert (=> b!2270408 (=> res!970653 e!1454217)))

(assert (=> b!2270408 (= res!970653 (= (h!32404 rules!1750) otherR!12))))

(declare-fun b!2270409 () Bool)

(assert (=> b!2270409 (= e!1454217 (contains!4667 (t!202507 rules!1750) otherR!12))))

(assert (= (and d!672052 res!970654) b!2270408))

(assert (= (and b!2270408 (not res!970653)) b!2270409))

(declare-fun m!2699261 () Bool)

(assert (=> d!672052 m!2699261))

(declare-fun m!2699263 () Bool)

(assert (=> d!672052 m!2699263))

(declare-fun m!2699265 () Bool)

(assert (=> b!2270409 m!2699265))

(assert (=> b!2270245 d!672052))

(declare-fun d!672054 () Bool)

(declare-fun lt!843441 () Bool)

(assert (=> d!672054 (= lt!843441 (select (content!3600 rules!1750) r!2363))))

(declare-fun e!1454220 () Bool)

(assert (=> d!672054 (= lt!843441 e!1454220)))

(declare-fun res!970656 () Bool)

(assert (=> d!672054 (=> (not res!970656) (not e!1454220))))

(assert (=> d!672054 (= res!970656 ((_ is Cons!27003) rules!1750))))

(assert (=> d!672054 (= (contains!4667 rules!1750 r!2363) lt!843441)))

(declare-fun b!2270410 () Bool)

(declare-fun e!1454219 () Bool)

(assert (=> b!2270410 (= e!1454220 e!1454219)))

(declare-fun res!970655 () Bool)

(assert (=> b!2270410 (=> res!970655 e!1454219)))

(assert (=> b!2270410 (= res!970655 (= (h!32404 rules!1750) r!2363))))

(declare-fun b!2270411 () Bool)

(assert (=> b!2270411 (= e!1454219 (contains!4667 (t!202507 rules!1750) r!2363))))

(assert (= (and d!672054 res!970656) b!2270410))

(assert (= (and b!2270410 (not res!970655)) b!2270411))

(assert (=> d!672054 m!2699261))

(declare-fun m!2699267 () Bool)

(assert (=> d!672054 m!2699267))

(declare-fun m!2699269 () Bool)

(assert (=> b!2270411 m!2699269))

(assert (=> b!2270224 d!672054))

(declare-fun d!672056 () Bool)

(assert (=> d!672056 (= (head!4898 tokens!456) (h!32405 tokens!456))))

(assert (=> b!2270225 d!672056))

(declare-fun d!672058 () Bool)

(assert (=> d!672058 (= (isEmpty!15291 tokens!456) ((_ is Nil!27004) tokens!456))))

(assert (=> b!2270231 d!672058))

(declare-fun d!672060 () Bool)

(declare-fun res!970661 () Bool)

(declare-fun e!1454223 () Bool)

(assert (=> d!672060 (=> (not res!970661) (not e!1454223))))

(declare-fun isEmpty!15296 (List!27095) Bool)

(assert (=> d!672060 (= res!970661 (not (isEmpty!15296 (originalCharacters!5075 (h!32405 tokens!456)))))))

(assert (=> d!672060 (= (inv!36558 (h!32405 tokens!456)) e!1454223)))

(declare-fun b!2270416 () Bool)

(declare-fun res!970662 () Bool)

(assert (=> b!2270416 (=> (not res!970662) (not e!1454223))))

(declare-fun dynLambda!11703 (Int TokenValue!4467) BalanceConc!17244)

(assert (=> b!2270416 (= res!970662 (= (originalCharacters!5075 (h!32405 tokens!456)) (list!10466 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (value!136512 (h!32405 tokens!456))))))))

(declare-fun b!2270417 () Bool)

(assert (=> b!2270417 (= e!1454223 (= (size!21192 (h!32405 tokens!456)) (size!21194 (originalCharacters!5075 (h!32405 tokens!456)))))))

(assert (= (and d!672060 res!970661) b!2270416))

(assert (= (and b!2270416 res!970662) b!2270417))

(declare-fun b_lambda!72349 () Bool)

(assert (=> (not b_lambda!72349) (not b!2270416)))

(declare-fun t!202526 () Bool)

(declare-fun tb!134719 () Bool)

(assert (=> (and b!2270248 (= (toChars!5926 (transformation!4305 r!2363)) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456))))) t!202526) tb!134719))

(declare-fun b!2270422 () Bool)

(declare-fun e!1454226 () Bool)

(declare-fun tp!718798 () Bool)

(declare-fun inv!36561 (Conc!8758) Bool)

(assert (=> b!2270422 (= e!1454226 (and (inv!36561 (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (value!136512 (h!32405 tokens!456))))) tp!718798))))

(declare-fun result!164252 () Bool)

(declare-fun inv!36562 (BalanceConc!17244) Bool)

(assert (=> tb!134719 (= result!164252 (and (inv!36562 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (value!136512 (h!32405 tokens!456)))) e!1454226))))

(assert (= tb!134719 b!2270422))

(declare-fun m!2699271 () Bool)

(assert (=> b!2270422 m!2699271))

(declare-fun m!2699273 () Bool)

(assert (=> tb!134719 m!2699273))

(assert (=> b!2270416 t!202526))

(declare-fun b_and!178905 () Bool)

(assert (= b_and!178875 (and (=> t!202526 result!164252) b_and!178905)))

(declare-fun tb!134721 () Bool)

(declare-fun t!202528 () Bool)

(assert (=> (and b!2270230 (= (toChars!5926 (transformation!4305 (h!32404 rules!1750))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456))))) t!202528) tb!134721))

(declare-fun result!164256 () Bool)

(assert (= result!164256 result!164252))

(assert (=> b!2270416 t!202528))

(declare-fun b_and!178907 () Bool)

(assert (= b_and!178879 (and (=> t!202528 result!164256) b_and!178907)))

(declare-fun t!202530 () Bool)

(declare-fun tb!134723 () Bool)

(assert (=> (and b!2270227 (= (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456))))) t!202530) tb!134723))

(declare-fun result!164258 () Bool)

(assert (= result!164258 result!164252))

(assert (=> b!2270416 t!202530))

(declare-fun b_and!178909 () Bool)

(assert (= b_and!178883 (and (=> t!202530 result!164258) b_and!178909)))

(declare-fun t!202532 () Bool)

(declare-fun tb!134725 () Bool)

(assert (=> (and b!2270235 (= (toChars!5926 (transformation!4305 otherR!12)) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456))))) t!202532) tb!134725))

(declare-fun result!164260 () Bool)

(assert (= result!164260 result!164252))

(assert (=> b!2270416 t!202532))

(declare-fun b_and!178911 () Bool)

(assert (= b_and!178887 (and (=> t!202532 result!164260) b_and!178911)))

(declare-fun m!2699275 () Bool)

(assert (=> d!672060 m!2699275))

(declare-fun m!2699277 () Bool)

(assert (=> b!2270416 m!2699277))

(assert (=> b!2270416 m!2699277))

(declare-fun m!2699279 () Bool)

(assert (=> b!2270416 m!2699279))

(declare-fun m!2699281 () Bool)

(assert (=> b!2270417 m!2699281))

(assert (=> b!2270242 d!672060))

(declare-fun d!672062 () Bool)

(assert (=> d!672062 (= (inv!36554 (tag!4795 (h!32404 rules!1750))) (= (mod (str.len (value!136511 (tag!4795 (h!32404 rules!1750)))) 2) 0))))

(assert (=> b!2270243 d!672062))

(declare-fun d!672064 () Bool)

(declare-fun res!970665 () Bool)

(declare-fun e!1454229 () Bool)

(assert (=> d!672064 (=> (not res!970665) (not e!1454229))))

(declare-fun semiInverseModEq!1734 (Int Int) Bool)

(assert (=> d!672064 (= res!970665 (semiInverseModEq!1734 (toChars!5926 (transformation!4305 (h!32404 rules!1750))) (toValue!6067 (transformation!4305 (h!32404 rules!1750)))))))

(assert (=> d!672064 (= (inv!36557 (transformation!4305 (h!32404 rules!1750))) e!1454229)))

(declare-fun b!2270425 () Bool)

(declare-fun equivClasses!1653 (Int Int) Bool)

(assert (=> b!2270425 (= e!1454229 (equivClasses!1653 (toChars!5926 (transformation!4305 (h!32404 rules!1750))) (toValue!6067 (transformation!4305 (h!32404 rules!1750)))))))

(assert (= (and d!672064 res!970665) b!2270425))

(declare-fun m!2699283 () Bool)

(assert (=> d!672064 m!2699283))

(declare-fun m!2699285 () Bool)

(assert (=> b!2270425 m!2699285))

(assert (=> b!2270243 d!672064))

(declare-fun d!672066 () Bool)

(assert (=> d!672066 (= (inv!36554 (tag!4795 r!2363)) (= (mod (str.len (value!136511 (tag!4795 r!2363))) 2) 0))))

(assert (=> b!2270233 d!672066))

(declare-fun d!672068 () Bool)

(declare-fun res!970666 () Bool)

(declare-fun e!1454230 () Bool)

(assert (=> d!672068 (=> (not res!970666) (not e!1454230))))

(assert (=> d!672068 (= res!970666 (semiInverseModEq!1734 (toChars!5926 (transformation!4305 r!2363)) (toValue!6067 (transformation!4305 r!2363))))))

(assert (=> d!672068 (= (inv!36557 (transformation!4305 r!2363)) e!1454230)))

(declare-fun b!2270426 () Bool)

(assert (=> b!2270426 (= e!1454230 (equivClasses!1653 (toChars!5926 (transformation!4305 r!2363)) (toValue!6067 (transformation!4305 r!2363))))))

(assert (= (and d!672068 res!970666) b!2270426))

(declare-fun m!2699287 () Bool)

(assert (=> d!672068 m!2699287))

(declare-fun m!2699289 () Bool)

(assert (=> b!2270426 m!2699289))

(assert (=> b!2270233 d!672068))

(declare-fun d!672070 () Bool)

(assert (=> d!672070 true))

(declare-fun lt!843445 () Bool)

(declare-fun lambda!85469 () Int)

(declare-fun forall!5480 (List!27097 Int) Bool)

(assert (=> d!672070 (= lt!843445 (forall!5480 rules!1750 lambda!85469))))

(declare-fun e!1454283 () Bool)

(assert (=> d!672070 (= lt!843445 e!1454283)))

(declare-fun res!970677 () Bool)

(assert (=> d!672070 (=> res!970677 e!1454283)))

(assert (=> d!672070 (= res!970677 (not ((_ is Cons!27003) rules!1750)))))

(assert (=> d!672070 (= (rulesValidInductive!1503 thiss!16613 rules!1750) lt!843445)))

(declare-fun b!2270497 () Bool)

(declare-fun e!1454282 () Bool)

(assert (=> b!2270497 (= e!1454283 e!1454282)))

(declare-fun res!970676 () Bool)

(assert (=> b!2270497 (=> (not res!970676) (not e!1454282))))

(assert (=> b!2270497 (= res!970676 (ruleValid!1395 thiss!16613 (h!32404 rules!1750)))))

(declare-fun b!2270498 () Bool)

(assert (=> b!2270498 (= e!1454282 (rulesValidInductive!1503 thiss!16613 (t!202507 rules!1750)))))

(assert (= (and d!672070 (not res!970677)) b!2270497))

(assert (= (and b!2270497 res!970676) b!2270498))

(declare-fun m!2699313 () Bool)

(assert (=> d!672070 m!2699313))

(declare-fun m!2699315 () Bool)

(assert (=> b!2270497 m!2699315))

(declare-fun m!2699317 () Bool)

(assert (=> b!2270498 m!2699317))

(assert (=> b!2270228 d!672070))

(declare-fun d!672074 () Bool)

(declare-fun lt!843448 () Int)

(assert (=> d!672074 (= lt!843448 (size!21194 (list!10466 (charsOf!2693 (head!4898 tokens!456)))))))

(declare-fun size!21198 (Conc!8758) Int)

(assert (=> d!672074 (= lt!843448 (size!21198 (c!360418 (charsOf!2693 (head!4898 tokens!456)))))))

(assert (=> d!672074 (= (size!21193 (charsOf!2693 (head!4898 tokens!456))) lt!843448)))

(declare-fun bs!455951 () Bool)

(assert (= bs!455951 d!672074))

(assert (=> bs!455951 m!2699055))

(assert (=> bs!455951 m!2699057))

(assert (=> bs!455951 m!2699057))

(declare-fun m!2699319 () Bool)

(assert (=> bs!455951 m!2699319))

(declare-fun m!2699321 () Bool)

(assert (=> bs!455951 m!2699321))

(assert (=> b!2270239 d!672074))

(declare-fun d!672076 () Bool)

(declare-fun lt!843451 () BalanceConc!17244)

(assert (=> d!672076 (= (list!10466 lt!843451) (originalCharacters!5075 (head!4898 tokens!456)))))

(assert (=> d!672076 (= lt!843451 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))) (value!136512 (head!4898 tokens!456))))))

(assert (=> d!672076 (= (charsOf!2693 (head!4898 tokens!456)) lt!843451)))

(declare-fun b_lambda!72353 () Bool)

(assert (=> (not b_lambda!72353) (not d!672076)))

(declare-fun t!202542 () Bool)

(declare-fun tb!134735 () Bool)

(assert (=> (and b!2270248 (= (toChars!5926 (transformation!4305 r!2363)) (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456))))) t!202542) tb!134735))

(declare-fun b!2270501 () Bool)

(declare-fun e!1454284 () Bool)

(declare-fun tp!718862 () Bool)

(assert (=> b!2270501 (= e!1454284 (and (inv!36561 (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))) (value!136512 (head!4898 tokens!456))))) tp!718862))))

(declare-fun result!164278 () Bool)

(assert (=> tb!134735 (= result!164278 (and (inv!36562 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))) (value!136512 (head!4898 tokens!456)))) e!1454284))))

(assert (= tb!134735 b!2270501))

(declare-fun m!2699323 () Bool)

(assert (=> b!2270501 m!2699323))

(declare-fun m!2699325 () Bool)

(assert (=> tb!134735 m!2699325))

(assert (=> d!672076 t!202542))

(declare-fun b_and!178921 () Bool)

(assert (= b_and!178905 (and (=> t!202542 result!164278) b_and!178921)))

(declare-fun t!202544 () Bool)

(declare-fun tb!134737 () Bool)

(assert (=> (and b!2270230 (= (toChars!5926 (transformation!4305 (h!32404 rules!1750))) (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456))))) t!202544) tb!134737))

(declare-fun result!164280 () Bool)

(assert (= result!164280 result!164278))

(assert (=> d!672076 t!202544))

(declare-fun b_and!178923 () Bool)

(assert (= b_and!178907 (and (=> t!202544 result!164280) b_and!178923)))

(declare-fun t!202546 () Bool)

(declare-fun tb!134739 () Bool)

(assert (=> (and b!2270227 (= (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456))))) t!202546) tb!134739))

(declare-fun result!164282 () Bool)

(assert (= result!164282 result!164278))

(assert (=> d!672076 t!202546))

(declare-fun b_and!178925 () Bool)

(assert (= b_and!178909 (and (=> t!202546 result!164282) b_and!178925)))

(declare-fun tb!134741 () Bool)

(declare-fun t!202548 () Bool)

(assert (=> (and b!2270235 (= (toChars!5926 (transformation!4305 otherR!12)) (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456))))) t!202548) tb!134741))

(declare-fun result!164284 () Bool)

(assert (= result!164284 result!164278))

(assert (=> d!672076 t!202548))

(declare-fun b_and!178927 () Bool)

(assert (= b_and!178911 (and (=> t!202548 result!164284) b_and!178927)))

(declare-fun m!2699327 () Bool)

(assert (=> d!672076 m!2699327))

(declare-fun m!2699329 () Bool)

(assert (=> d!672076 m!2699329))

(assert (=> b!2270239 d!672076))

(assert (=> b!2270239 d!672056))

(declare-fun d!672078 () Bool)

(declare-fun lt!843454 () Int)

(assert (=> d!672078 (>= lt!843454 0)))

(declare-fun e!1454287 () Int)

(assert (=> d!672078 (= lt!843454 e!1454287)))

(declare-fun c!360447 () Bool)

(assert (=> d!672078 (= c!360447 ((_ is Nil!27001) otherP!12))))

(assert (=> d!672078 (= (size!21194 otherP!12) lt!843454)))

(declare-fun b!2270506 () Bool)

(assert (=> b!2270506 (= e!1454287 0)))

(declare-fun b!2270507 () Bool)

(assert (=> b!2270507 (= e!1454287 (+ 1 (size!21194 (t!202505 otherP!12))))))

(assert (= (and d!672078 c!360447) b!2270506))

(assert (= (and d!672078 (not c!360447)) b!2270507))

(declare-fun m!2699331 () Bool)

(assert (=> b!2270507 m!2699331))

(assert (=> b!2270239 d!672078))

(declare-fun b!2270518 () Bool)

(declare-fun e!1454294 () Bool)

(declare-fun inv!15 (TokenValue!4467) Bool)

(assert (=> b!2270518 (= e!1454294 (inv!15 (value!136512 (h!32405 tokens!456))))))

(declare-fun b!2270519 () Bool)

(declare-fun res!970680 () Bool)

(assert (=> b!2270519 (=> res!970680 e!1454294)))

(assert (=> b!2270519 (= res!970680 (not ((_ is IntegerValue!13403) (value!136512 (h!32405 tokens!456)))))))

(declare-fun e!1454296 () Bool)

(assert (=> b!2270519 (= e!1454296 e!1454294)))

(declare-fun b!2270520 () Bool)

(declare-fun inv!17 (TokenValue!4467) Bool)

(assert (=> b!2270520 (= e!1454296 (inv!17 (value!136512 (h!32405 tokens!456))))))

(declare-fun b!2270521 () Bool)

(declare-fun e!1454295 () Bool)

(declare-fun inv!16 (TokenValue!4467) Bool)

(assert (=> b!2270521 (= e!1454295 (inv!16 (value!136512 (h!32405 tokens!456))))))

(declare-fun d!672080 () Bool)

(declare-fun c!360452 () Bool)

(assert (=> d!672080 (= c!360452 ((_ is IntegerValue!13401) (value!136512 (h!32405 tokens!456))))))

(assert (=> d!672080 (= (inv!21 (value!136512 (h!32405 tokens!456))) e!1454295)))

(declare-fun b!2270522 () Bool)

(assert (=> b!2270522 (= e!1454295 e!1454296)))

(declare-fun c!360453 () Bool)

(assert (=> b!2270522 (= c!360453 ((_ is IntegerValue!13402) (value!136512 (h!32405 tokens!456))))))

(assert (= (and d!672080 c!360452) b!2270521))

(assert (= (and d!672080 (not c!360452)) b!2270522))

(assert (= (and b!2270522 c!360453) b!2270520))

(assert (= (and b!2270522 (not c!360453)) b!2270519))

(assert (= (and b!2270519 (not res!970680)) b!2270518))

(declare-fun m!2699333 () Bool)

(assert (=> b!2270518 m!2699333))

(declare-fun m!2699335 () Bool)

(assert (=> b!2270520 m!2699335))

(declare-fun m!2699337 () Bool)

(assert (=> b!2270521 m!2699337))

(assert (=> b!2270250 d!672080))

(declare-fun d!672082 () Bool)

(assert (=> d!672082 (= (inv!36554 (tag!4795 otherR!12)) (= (mod (str.len (value!136511 (tag!4795 otherR!12))) 2) 0))))

(assert (=> b!2270240 d!672082))

(declare-fun d!672084 () Bool)

(declare-fun res!970681 () Bool)

(declare-fun e!1454297 () Bool)

(assert (=> d!672084 (=> (not res!970681) (not e!1454297))))

(assert (=> d!672084 (= res!970681 (semiInverseModEq!1734 (toChars!5926 (transformation!4305 otherR!12)) (toValue!6067 (transformation!4305 otherR!12))))))

(assert (=> d!672084 (= (inv!36557 (transformation!4305 otherR!12)) e!1454297)))

(declare-fun b!2270523 () Bool)

(assert (=> b!2270523 (= e!1454297 (equivClasses!1653 (toChars!5926 (transformation!4305 otherR!12)) (toValue!6067 (transformation!4305 otherR!12))))))

(assert (= (and d!672084 res!970681) b!2270523))

(declare-fun m!2699339 () Bool)

(assert (=> d!672084 m!2699339))

(declare-fun m!2699341 () Bool)

(assert (=> b!2270523 m!2699341))

(assert (=> b!2270240 d!672084))

(declare-fun d!672086 () Bool)

(declare-fun res!970686 () Bool)

(declare-fun e!1454300 () Bool)

(assert (=> d!672086 (=> (not res!970686) (not e!1454300))))

(declare-fun validRegex!2494 (Regex!6653) Bool)

(assert (=> d!672086 (= res!970686 (validRegex!2494 (regex!4305 r!2363)))))

(assert (=> d!672086 (= (ruleValid!1395 thiss!16613 r!2363) e!1454300)))

(declare-fun b!2270528 () Bool)

(declare-fun res!970687 () Bool)

(assert (=> b!2270528 (=> (not res!970687) (not e!1454300))))

(declare-fun nullable!1832 (Regex!6653) Bool)

(assert (=> b!2270528 (= res!970687 (not (nullable!1832 (regex!4305 r!2363))))))

(declare-fun b!2270529 () Bool)

(assert (=> b!2270529 (= e!1454300 (not (= (tag!4795 r!2363) (String!29440 ""))))))

(assert (= (and d!672086 res!970686) b!2270528))

(assert (= (and b!2270528 res!970687) b!2270529))

(declare-fun m!2699343 () Bool)

(assert (=> d!672086 m!2699343))

(declare-fun m!2699345 () Bool)

(assert (=> b!2270528 m!2699345))

(assert (=> b!2270241 d!672086))

(declare-fun d!672088 () Bool)

(assert (=> d!672088 (ruleValid!1395 thiss!16613 r!2363)))

(declare-fun lt!843457 () Unit!39950)

(declare-fun choose!13266 (LexerInterface!3902 Rule!8410 List!27097) Unit!39950)

(assert (=> d!672088 (= lt!843457 (choose!13266 thiss!16613 r!2363 rules!1750))))

(assert (=> d!672088 (contains!4667 rules!1750 r!2363)))

(assert (=> d!672088 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!800 thiss!16613 r!2363 rules!1750) lt!843457)))

(declare-fun bs!455952 () Bool)

(assert (= bs!455952 d!672088))

(assert (=> bs!455952 m!2699065))

(declare-fun m!2699347 () Bool)

(assert (=> bs!455952 m!2699347))

(assert (=> bs!455952 m!2699063))

(assert (=> b!2270241 d!672088))

(declare-fun d!672090 () Bool)

(declare-fun res!970690 () Bool)

(declare-fun e!1454303 () Bool)

(assert (=> d!672090 (=> (not res!970690) (not e!1454303))))

(declare-fun rulesValid!1578 (LexerInterface!3902 List!27097) Bool)

(assert (=> d!672090 (= res!970690 (rulesValid!1578 thiss!16613 rules!1750))))

(assert (=> d!672090 (= (rulesInvariant!3404 thiss!16613 rules!1750) e!1454303)))

(declare-fun b!2270532 () Bool)

(declare-datatypes ((List!27100 0))(
  ( (Nil!27006) (Cons!27006 (h!32407 String!29439) (t!202558 List!27100)) )
))
(declare-fun noDuplicateTag!1576 (LexerInterface!3902 List!27097 List!27100) Bool)

(assert (=> b!2270532 (= e!1454303 (noDuplicateTag!1576 thiss!16613 rules!1750 Nil!27006))))

(assert (= (and d!672090 res!970690) b!2270532))

(declare-fun m!2699349 () Bool)

(assert (=> d!672090 m!2699349))

(declare-fun m!2699351 () Bool)

(assert (=> b!2270532 m!2699351))

(assert (=> b!2270236 d!672090))

(declare-fun d!672092 () Bool)

(assert (=> d!672092 (= (isEmpty!15292 rules!1750) ((_ is Nil!27003) rules!1750))))

(assert (=> b!2270247 d!672092))

(declare-fun d!672094 () Bool)

(assert (=> d!672094 (= (inv!36554 (tag!4795 (rule!6623 (h!32405 tokens!456)))) (= (mod (str.len (value!136511 (tag!4795 (rule!6623 (h!32405 tokens!456))))) 2) 0))))

(assert (=> b!2270237 d!672094))

(declare-fun d!672096 () Bool)

(declare-fun res!970691 () Bool)

(declare-fun e!1454304 () Bool)

(assert (=> d!672096 (=> (not res!970691) (not e!1454304))))

(assert (=> d!672096 (= res!970691 (semiInverseModEq!1734 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (toValue!6067 (transformation!4305 (rule!6623 (h!32405 tokens!456))))))))

(assert (=> d!672096 (= (inv!36557 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) e!1454304)))

(declare-fun b!2270533 () Bool)

(assert (=> b!2270533 (= e!1454304 (equivClasses!1653 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (toValue!6067 (transformation!4305 (rule!6623 (h!32405 tokens!456))))))))

(assert (= (and d!672096 res!970691) b!2270533))

(declare-fun m!2699353 () Bool)

(assert (=> d!672096 m!2699353))

(declare-fun m!2699355 () Bool)

(assert (=> b!2270533 m!2699355))

(assert (=> b!2270237 d!672096))

(declare-fun b!2270562 () Bool)

(declare-fun res!970708 () Bool)

(declare-fun e!1454320 () Bool)

(assert (=> b!2270562 (=> (not res!970708) (not e!1454320))))

(assert (=> b!2270562 (= res!970708 (isEmpty!15296 (tail!3275 (list!10466 (charsOf!2693 (head!4898 tokens!456))))))))

(declare-fun b!2270563 () Bool)

(assert (=> b!2270563 (= e!1454320 (= (head!4900 (list!10466 (charsOf!2693 (head!4898 tokens!456)))) (c!360419 (regex!4305 r!2363))))))

(declare-fun b!2270564 () Bool)

(declare-fun e!1454325 () Bool)

(assert (=> b!2270564 (= e!1454325 (not (= (head!4900 (list!10466 (charsOf!2693 (head!4898 tokens!456)))) (c!360419 (regex!4305 r!2363)))))))

(declare-fun b!2270565 () Bool)

(declare-fun e!1454322 () Bool)

(declare-fun lt!843460 () Bool)

(declare-fun call!136084 () Bool)

(assert (=> b!2270565 (= e!1454322 (= lt!843460 call!136084))))

(declare-fun b!2270567 () Bool)

(declare-fun e!1454321 () Bool)

(declare-fun e!1454324 () Bool)

(assert (=> b!2270567 (= e!1454321 e!1454324)))

(declare-fun res!970709 () Bool)

(assert (=> b!2270567 (=> (not res!970709) (not e!1454324))))

(assert (=> b!2270567 (= res!970709 (not lt!843460))))

(declare-fun b!2270568 () Bool)

(assert (=> b!2270568 (= e!1454324 e!1454325)))

(declare-fun res!970710 () Bool)

(assert (=> b!2270568 (=> res!970710 e!1454325)))

(assert (=> b!2270568 (= res!970710 call!136084)))

(declare-fun b!2270569 () Bool)

(declare-fun e!1454323 () Bool)

(assert (=> b!2270569 (= e!1454322 e!1454323)))

(declare-fun c!360460 () Bool)

(assert (=> b!2270569 (= c!360460 ((_ is EmptyLang!6653) (regex!4305 r!2363)))))

(declare-fun b!2270570 () Bool)

(declare-fun res!970715 () Bool)

(assert (=> b!2270570 (=> res!970715 e!1454321)))

(assert (=> b!2270570 (= res!970715 (not ((_ is ElementMatch!6653) (regex!4305 r!2363))))))

(assert (=> b!2270570 (= e!1454323 e!1454321)))

(declare-fun b!2270571 () Bool)

(declare-fun res!970711 () Bool)

(assert (=> b!2270571 (=> res!970711 e!1454321)))

(assert (=> b!2270571 (= res!970711 e!1454320)))

(declare-fun res!970714 () Bool)

(assert (=> b!2270571 (=> (not res!970714) (not e!1454320))))

(assert (=> b!2270571 (= res!970714 lt!843460)))

(declare-fun d!672098 () Bool)

(assert (=> d!672098 e!1454322))

(declare-fun c!360461 () Bool)

(assert (=> d!672098 (= c!360461 ((_ is EmptyExpr!6653) (regex!4305 r!2363)))))

(declare-fun e!1454319 () Bool)

(assert (=> d!672098 (= lt!843460 e!1454319)))

(declare-fun c!360462 () Bool)

(assert (=> d!672098 (= c!360462 (isEmpty!15296 (list!10466 (charsOf!2693 (head!4898 tokens!456)))))))

(assert (=> d!672098 (validRegex!2494 (regex!4305 r!2363))))

(assert (=> d!672098 (= (matchR!2910 (regex!4305 r!2363) (list!10466 (charsOf!2693 (head!4898 tokens!456)))) lt!843460)))

(declare-fun b!2270566 () Bool)

(assert (=> b!2270566 (= e!1454319 (nullable!1832 (regex!4305 r!2363)))))

(declare-fun b!2270572 () Bool)

(declare-fun res!970713 () Bool)

(assert (=> b!2270572 (=> res!970713 e!1454325)))

(assert (=> b!2270572 (= res!970713 (not (isEmpty!15296 (tail!3275 (list!10466 (charsOf!2693 (head!4898 tokens!456)))))))))

(declare-fun b!2270573 () Bool)

(assert (=> b!2270573 (= e!1454323 (not lt!843460))))

(declare-fun b!2270574 () Bool)

(declare-fun res!970712 () Bool)

(assert (=> b!2270574 (=> (not res!970712) (not e!1454320))))

(assert (=> b!2270574 (= res!970712 (not call!136084))))

(declare-fun bm!136079 () Bool)

(assert (=> bm!136079 (= call!136084 (isEmpty!15296 (list!10466 (charsOf!2693 (head!4898 tokens!456)))))))

(declare-fun b!2270575 () Bool)

(declare-fun derivativeStep!1492 (Regex!6653 C!13452) Regex!6653)

(assert (=> b!2270575 (= e!1454319 (matchR!2910 (derivativeStep!1492 (regex!4305 r!2363) (head!4900 (list!10466 (charsOf!2693 (head!4898 tokens!456))))) (tail!3275 (list!10466 (charsOf!2693 (head!4898 tokens!456))))))))

(assert (= (and d!672098 c!360462) b!2270566))

(assert (= (and d!672098 (not c!360462)) b!2270575))

(assert (= (and d!672098 c!360461) b!2270565))

(assert (= (and d!672098 (not c!360461)) b!2270569))

(assert (= (and b!2270569 c!360460) b!2270573))

(assert (= (and b!2270569 (not c!360460)) b!2270570))

(assert (= (and b!2270570 (not res!970715)) b!2270571))

(assert (= (and b!2270571 res!970714) b!2270574))

(assert (= (and b!2270574 res!970712) b!2270562))

(assert (= (and b!2270562 res!970708) b!2270563))

(assert (= (and b!2270571 (not res!970711)) b!2270567))

(assert (= (and b!2270567 res!970709) b!2270568))

(assert (= (and b!2270568 (not res!970710)) b!2270572))

(assert (= (and b!2270572 (not res!970713)) b!2270564))

(assert (= (or b!2270565 b!2270568 b!2270574) bm!136079))

(assert (=> b!2270563 m!2699057))

(declare-fun m!2699357 () Bool)

(assert (=> b!2270563 m!2699357))

(assert (=> d!672098 m!2699057))

(declare-fun m!2699359 () Bool)

(assert (=> d!672098 m!2699359))

(assert (=> d!672098 m!2699343))

(assert (=> b!2270572 m!2699057))

(declare-fun m!2699361 () Bool)

(assert (=> b!2270572 m!2699361))

(assert (=> b!2270572 m!2699361))

(declare-fun m!2699363 () Bool)

(assert (=> b!2270572 m!2699363))

(assert (=> b!2270566 m!2699345))

(assert (=> b!2270575 m!2699057))

(assert (=> b!2270575 m!2699357))

(assert (=> b!2270575 m!2699357))

(declare-fun m!2699365 () Bool)

(assert (=> b!2270575 m!2699365))

(assert (=> b!2270575 m!2699057))

(assert (=> b!2270575 m!2699361))

(assert (=> b!2270575 m!2699365))

(assert (=> b!2270575 m!2699361))

(declare-fun m!2699367 () Bool)

(assert (=> b!2270575 m!2699367))

(assert (=> b!2270562 m!2699057))

(assert (=> b!2270562 m!2699361))

(assert (=> b!2270562 m!2699361))

(assert (=> b!2270562 m!2699363))

(assert (=> bm!136079 m!2699057))

(assert (=> bm!136079 m!2699359))

(assert (=> b!2270564 m!2699057))

(assert (=> b!2270564 m!2699357))

(assert (=> b!2270249 d!672098))

(declare-fun d!672100 () Bool)

(assert (=> d!672100 (= (list!10466 (charsOf!2693 (head!4898 tokens!456))) (list!10470 (c!360418 (charsOf!2693 (head!4898 tokens!456)))))))

(declare-fun bs!455953 () Bool)

(assert (= bs!455953 d!672100))

(declare-fun m!2699369 () Bool)

(assert (=> bs!455953 m!2699369))

(assert (=> b!2270249 d!672100))

(assert (=> b!2270249 d!672076))

(assert (=> b!2270249 d!672056))

(declare-fun b!2270580 () Bool)

(declare-fun e!1454328 () Bool)

(declare-fun tp!718865 () Bool)

(assert (=> b!2270580 (= e!1454328 (and tp_is_empty!10527 tp!718865))))

(assert (=> b!2270244 (= tp!718774 e!1454328)))

(assert (= (and b!2270244 ((_ is Cons!27001) (t!202505 otherP!12))) b!2270580))

(declare-fun b!2270581 () Bool)

(declare-fun e!1454329 () Bool)

(declare-fun tp!718866 () Bool)

(assert (=> b!2270581 (= e!1454329 (and tp_is_empty!10527 tp!718866))))

(assert (=> b!2270246 (= tp!718779 e!1454329)))

(assert (= (and b!2270246 ((_ is Cons!27001) (t!202505 input!1722))) b!2270581))

(declare-fun b!2270595 () Bool)

(declare-fun b_free!67509 () Bool)

(declare-fun b_next!68213 () Bool)

(assert (=> b!2270595 (= b_free!67509 (not b_next!68213))))

(declare-fun tp!718877 () Bool)

(declare-fun b_and!178929 () Bool)

(assert (=> b!2270595 (= tp!718877 b_and!178929)))

(declare-fun b_free!67511 () Bool)

(declare-fun b_next!68215 () Bool)

(assert (=> b!2270595 (= b_free!67511 (not b_next!68215))))

(declare-fun t!202550 () Bool)

(declare-fun tb!134743 () Bool)

(assert (=> (and b!2270595 (= (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456))))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456))))) t!202550) tb!134743))

(declare-fun result!164290 () Bool)

(assert (= result!164290 result!164252))

(assert (=> b!2270416 t!202550))

(declare-fun t!202552 () Bool)

(declare-fun tb!134745 () Bool)

(assert (=> (and b!2270595 (= (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456))))) (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456))))) t!202552) tb!134745))

(declare-fun result!164292 () Bool)

(assert (= result!164292 result!164278))

(assert (=> d!672076 t!202552))

(declare-fun b_and!178931 () Bool)

(declare-fun tp!718880 () Bool)

(assert (=> b!2270595 (= tp!718880 (and (=> t!202550 result!164290) (=> t!202552 result!164292) b_and!178931))))

(declare-fun e!1454344 () Bool)

(declare-fun e!1454346 () Bool)

(declare-fun tp!718879 () Bool)

(declare-fun b!2270593 () Bool)

(assert (=> b!2270593 (= e!1454346 (and (inv!21 (value!136512 (h!32405 (t!202508 tokens!456)))) e!1454344 tp!718879))))

(declare-fun b!2270594 () Bool)

(declare-fun tp!718878 () Bool)

(declare-fun e!1454342 () Bool)

(assert (=> b!2270594 (= e!1454344 (and tp!718878 (inv!36554 (tag!4795 (rule!6623 (h!32405 (t!202508 tokens!456))))) (inv!36557 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456))))) e!1454342))))

(declare-fun e!1454345 () Bool)

(assert (=> b!2270242 (= tp!718778 e!1454345)))

(declare-fun tp!718881 () Bool)

(declare-fun b!2270592 () Bool)

(assert (=> b!2270592 (= e!1454345 (and (inv!36558 (h!32405 (t!202508 tokens!456))) e!1454346 tp!718881))))

(assert (=> b!2270595 (= e!1454342 (and tp!718877 tp!718880))))

(assert (= b!2270594 b!2270595))

(assert (= b!2270593 b!2270594))

(assert (= b!2270592 b!2270593))

(assert (= (and b!2270242 ((_ is Cons!27004) (t!202508 tokens!456))) b!2270592))

(declare-fun m!2699371 () Bool)

(assert (=> b!2270593 m!2699371))

(declare-fun m!2699373 () Bool)

(assert (=> b!2270594 m!2699373))

(declare-fun m!2699375 () Bool)

(assert (=> b!2270594 m!2699375))

(declare-fun m!2699377 () Bool)

(assert (=> b!2270592 m!2699377))

(declare-fun b!2270606 () Bool)

(declare-fun b_free!67513 () Bool)

(declare-fun b_next!68217 () Bool)

(assert (=> b!2270606 (= b_free!67513 (not b_next!68217))))

(declare-fun tp!718891 () Bool)

(declare-fun b_and!178933 () Bool)

(assert (=> b!2270606 (= tp!718891 b_and!178933)))

(declare-fun b_free!67515 () Bool)

(declare-fun b_next!68219 () Bool)

(assert (=> b!2270606 (= b_free!67515 (not b_next!68219))))

(declare-fun tb!134747 () Bool)

(declare-fun t!202554 () Bool)

(assert (=> (and b!2270606 (= (toChars!5926 (transformation!4305 (h!32404 (t!202507 rules!1750)))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456))))) t!202554) tb!134747))

(declare-fun result!164296 () Bool)

(assert (= result!164296 result!164252))

(assert (=> b!2270416 t!202554))

(declare-fun tb!134749 () Bool)

(declare-fun t!202556 () Bool)

(assert (=> (and b!2270606 (= (toChars!5926 (transformation!4305 (h!32404 (t!202507 rules!1750)))) (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456))))) t!202556) tb!134749))

(declare-fun result!164298 () Bool)

(assert (= result!164298 result!164278))

(assert (=> d!672076 t!202556))

(declare-fun b_and!178935 () Bool)

(declare-fun tp!718892 () Bool)

(assert (=> b!2270606 (= tp!718892 (and (=> t!202554 result!164296) (=> t!202556 result!164298) b_and!178935))))

(declare-fun e!1454358 () Bool)

(assert (=> b!2270606 (= e!1454358 (and tp!718891 tp!718892))))

(declare-fun tp!718893 () Bool)

(declare-fun b!2270605 () Bool)

(declare-fun e!1454356 () Bool)

(assert (=> b!2270605 (= e!1454356 (and tp!718893 (inv!36554 (tag!4795 (h!32404 (t!202507 rules!1750)))) (inv!36557 (transformation!4305 (h!32404 (t!202507 rules!1750)))) e!1454358))))

(declare-fun b!2270604 () Bool)

(declare-fun e!1454357 () Bool)

(declare-fun tp!718890 () Bool)

(assert (=> b!2270604 (= e!1454357 (and e!1454356 tp!718890))))

(assert (=> b!2270232 (= tp!718782 e!1454357)))

(assert (= b!2270605 b!2270606))

(assert (= b!2270604 b!2270605))

(assert (= (and b!2270232 ((_ is Cons!27003) (t!202507 rules!1750))) b!2270604))

(declare-fun m!2699379 () Bool)

(assert (=> b!2270605 m!2699379))

(declare-fun m!2699381 () Bool)

(assert (=> b!2270605 m!2699381))

(declare-fun e!1454362 () Bool)

(assert (=> b!2270243 (= tp!718790 e!1454362)))

(declare-fun b!2270618 () Bool)

(declare-fun tp!718904 () Bool)

(declare-fun tp!718908 () Bool)

(assert (=> b!2270618 (= e!1454362 (and tp!718904 tp!718908))))

(declare-fun b!2270617 () Bool)

(assert (=> b!2270617 (= e!1454362 tp_is_empty!10527)))

(declare-fun b!2270620 () Bool)

(declare-fun tp!718906 () Bool)

(declare-fun tp!718907 () Bool)

(assert (=> b!2270620 (= e!1454362 (and tp!718906 tp!718907))))

(declare-fun b!2270619 () Bool)

(declare-fun tp!718905 () Bool)

(assert (=> b!2270619 (= e!1454362 tp!718905)))

(assert (= (and b!2270243 ((_ is ElementMatch!6653) (regex!4305 (h!32404 rules!1750)))) b!2270617))

(assert (= (and b!2270243 ((_ is Concat!11121) (regex!4305 (h!32404 rules!1750)))) b!2270618))

(assert (= (and b!2270243 ((_ is Star!6653) (regex!4305 (h!32404 rules!1750)))) b!2270619))

(assert (= (and b!2270243 ((_ is Union!6653) (regex!4305 (h!32404 rules!1750)))) b!2270620))

(declare-fun e!1454363 () Bool)

(assert (=> b!2270233 (= tp!718775 e!1454363)))

(declare-fun b!2270622 () Bool)

(declare-fun tp!718909 () Bool)

(declare-fun tp!718913 () Bool)

(assert (=> b!2270622 (= e!1454363 (and tp!718909 tp!718913))))

(declare-fun b!2270621 () Bool)

(assert (=> b!2270621 (= e!1454363 tp_is_empty!10527)))

(declare-fun b!2270624 () Bool)

(declare-fun tp!718911 () Bool)

(declare-fun tp!718912 () Bool)

(assert (=> b!2270624 (= e!1454363 (and tp!718911 tp!718912))))

(declare-fun b!2270623 () Bool)

(declare-fun tp!718910 () Bool)

(assert (=> b!2270623 (= e!1454363 tp!718910)))

(assert (= (and b!2270233 ((_ is ElementMatch!6653) (regex!4305 r!2363))) b!2270621))

(assert (= (and b!2270233 ((_ is Concat!11121) (regex!4305 r!2363))) b!2270622))

(assert (= (and b!2270233 ((_ is Star!6653) (regex!4305 r!2363))) b!2270623))

(assert (= (and b!2270233 ((_ is Union!6653) (regex!4305 r!2363))) b!2270624))

(declare-fun b!2270625 () Bool)

(declare-fun e!1454364 () Bool)

(declare-fun tp!718914 () Bool)

(assert (=> b!2270625 (= e!1454364 (and tp_is_empty!10527 tp!718914))))

(assert (=> b!2270250 (= tp!718786 e!1454364)))

(assert (= (and b!2270250 ((_ is Cons!27001) (originalCharacters!5075 (h!32405 tokens!456)))) b!2270625))

(declare-fun b!2270626 () Bool)

(declare-fun e!1454365 () Bool)

(declare-fun tp!718915 () Bool)

(assert (=> b!2270626 (= e!1454365 (and tp_is_empty!10527 tp!718915))))

(assert (=> b!2270229 (= tp!718788 e!1454365)))

(assert (= (and b!2270229 ((_ is Cons!27001) (t!202505 suffix!886))) b!2270626))

(declare-fun e!1454366 () Bool)

(assert (=> b!2270240 (= tp!718783 e!1454366)))

(declare-fun b!2270628 () Bool)

(declare-fun tp!718916 () Bool)

(declare-fun tp!718920 () Bool)

(assert (=> b!2270628 (= e!1454366 (and tp!718916 tp!718920))))

(declare-fun b!2270627 () Bool)

(assert (=> b!2270627 (= e!1454366 tp_is_empty!10527)))

(declare-fun b!2270630 () Bool)

(declare-fun tp!718918 () Bool)

(declare-fun tp!718919 () Bool)

(assert (=> b!2270630 (= e!1454366 (and tp!718918 tp!718919))))

(declare-fun b!2270629 () Bool)

(declare-fun tp!718917 () Bool)

(assert (=> b!2270629 (= e!1454366 tp!718917)))

(assert (= (and b!2270240 ((_ is ElementMatch!6653) (regex!4305 otherR!12))) b!2270627))

(assert (= (and b!2270240 ((_ is Concat!11121) (regex!4305 otherR!12))) b!2270628))

(assert (= (and b!2270240 ((_ is Star!6653) (regex!4305 otherR!12))) b!2270629))

(assert (= (and b!2270240 ((_ is Union!6653) (regex!4305 otherR!12))) b!2270630))

(declare-fun e!1454367 () Bool)

(assert (=> b!2270237 (= tp!718784 e!1454367)))

(declare-fun b!2270632 () Bool)

(declare-fun tp!718921 () Bool)

(declare-fun tp!718925 () Bool)

(assert (=> b!2270632 (= e!1454367 (and tp!718921 tp!718925))))

(declare-fun b!2270631 () Bool)

(assert (=> b!2270631 (= e!1454367 tp_is_empty!10527)))

(declare-fun b!2270634 () Bool)

(declare-fun tp!718923 () Bool)

(declare-fun tp!718924 () Bool)

(assert (=> b!2270634 (= e!1454367 (and tp!718923 tp!718924))))

(declare-fun b!2270633 () Bool)

(declare-fun tp!718922 () Bool)

(assert (=> b!2270633 (= e!1454367 tp!718922)))

(assert (= (and b!2270237 ((_ is ElementMatch!6653) (regex!4305 (rule!6623 (h!32405 tokens!456))))) b!2270631))

(assert (= (and b!2270237 ((_ is Concat!11121) (regex!4305 (rule!6623 (h!32405 tokens!456))))) b!2270632))

(assert (= (and b!2270237 ((_ is Star!6653) (regex!4305 (rule!6623 (h!32405 tokens!456))))) b!2270633))

(assert (= (and b!2270237 ((_ is Union!6653) (regex!4305 (rule!6623 (h!32405 tokens!456))))) b!2270634))

(declare-fun b_lambda!72355 () Bool)

(assert (= b_lambda!72349 (or (and b!2270235 b_free!67499 (= (toChars!5926 (transformation!4305 otherR!12)) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))))) (and b!2270595 b_free!67511 (= (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456))))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))))) (and b!2270227 b_free!67495) (and b!2270606 b_free!67515 (= (toChars!5926 (transformation!4305 (h!32404 (t!202507 rules!1750)))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))))) (and b!2270248 b_free!67487 (= (toChars!5926 (transformation!4305 r!2363)) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))))) (and b!2270230 b_free!67491 (= (toChars!5926 (transformation!4305 (h!32404 rules!1750))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))))) b_lambda!72355)))

(check-sat (not b!2270628) b_and!178935 (not b!2270624) (not d!672076) (not b!2270403) (not b_next!68193) b_and!178925 tp_is_empty!10527 b_and!178885 (not b!2270605) (not d!672100) b_and!178881 (not b_next!68219) (not b!2270528) b_and!178921 (not b!2270409) b_and!178877 (not b!2270416) (not b!2270623) (not b!2270520) (not b_next!68203) (not b!2270630) (not b_next!68199) (not b!2270562) (not b!2270563) (not b!2270422) (not b!2270618) (not b!2270629) (not d!672064) (not d!672050) (not b!2270594) (not b!2270581) (not b!2270275) (not d!672088) (not d!672006) (not b!2270401) (not d!672000) b_and!178933 (not b!2270425) (not b!2270604) b_and!178923 (not b!2270533) (not b_lambda!72355) (not b!2270620) (not b_lambda!72353) (not b!2270402) (not d!672054) (not b_next!68191) (not b!2270523) (not b!2270497) (not b!2270566) (not b!2270564) (not d!672090) (not b!2270498) (not d!672098) (not d!672096) b_and!178873 (not d!672086) (not d!672084) (not d!672002) (not b!2270274) (not b!2270593) (not d!672074) (not b!2270507) b_and!178931 (not d!672060) (not b!2270634) (not b!2270532) (not b!2270619) (not b_next!68201) (not b_next!68189) (not b!2270400) (not bm!136079) (not tb!134719) b_and!178927 (not b!2270417) (not b!2270633) (not d!672068) (not b_next!68195) (not b!2270625) (not b!2270580) (not b!2270632) (not b!2270592) (not b!2270411) (not b!2270622) (not b!2270501) (not d!672052) (not b_next!68197) (not b!2270273) (not b!2270426) (not b!2270521) (not b_next!68215) (not b!2270518) (not b_next!68213) (not b!2270575) b_and!178929 (not b_next!68217) (not b!2270572) (not b!2270626) (not tb!134735) (not d!672070))
(check-sat b_and!178885 b_and!178933 b_and!178923 (not b_next!68191) b_and!178873 b_and!178935 b_and!178931 (not b_next!68193) (not b_next!68197) b_and!178925 (not b_next!68217) b_and!178881 (not b_next!68219) b_and!178877 b_and!178921 (not b_next!68203) (not b_next!68199) (not b_next!68201) (not b_next!68189) b_and!178927 (not b_next!68195) (not b_next!68215) (not b_next!68213) b_and!178929)
(get-model)

(declare-fun d!672110 () Bool)

(declare-fun nullableFct!436 (Regex!6653) Bool)

(assert (=> d!672110 (= (nullable!1832 (regex!4305 r!2363)) (nullableFct!436 (regex!4305 r!2363)))))

(declare-fun bs!455956 () Bool)

(assert (= bs!455956 d!672110))

(declare-fun m!2699407 () Bool)

(assert (=> bs!455956 m!2699407))

(assert (=> b!2270566 d!672110))

(declare-fun bs!455957 () Bool)

(declare-fun d!672116 () Bool)

(assert (= bs!455957 (and d!672116 d!672070)))

(declare-fun lambda!85470 () Int)

(assert (=> bs!455957 (= lambda!85470 lambda!85469)))

(assert (=> d!672116 true))

(declare-fun lt!843461 () Bool)

(assert (=> d!672116 (= lt!843461 (forall!5480 (t!202507 rules!1750) lambda!85470))))

(declare-fun e!1454377 () Bool)

(assert (=> d!672116 (= lt!843461 e!1454377)))

(declare-fun res!970723 () Bool)

(assert (=> d!672116 (=> res!970723 e!1454377)))

(assert (=> d!672116 (= res!970723 (not ((_ is Cons!27003) (t!202507 rules!1750))))))

(assert (=> d!672116 (= (rulesValidInductive!1503 thiss!16613 (t!202507 rules!1750)) lt!843461)))

(declare-fun b!2270650 () Bool)

(declare-fun e!1454376 () Bool)

(assert (=> b!2270650 (= e!1454377 e!1454376)))

(declare-fun res!970722 () Bool)

(assert (=> b!2270650 (=> (not res!970722) (not e!1454376))))

(assert (=> b!2270650 (= res!970722 (ruleValid!1395 thiss!16613 (h!32404 (t!202507 rules!1750))))))

(declare-fun b!2270651 () Bool)

(assert (=> b!2270651 (= e!1454376 (rulesValidInductive!1503 thiss!16613 (t!202507 (t!202507 rules!1750))))))

(assert (= (and d!672116 (not res!970723)) b!2270650))

(assert (= (and b!2270650 res!970722) b!2270651))

(declare-fun m!2699409 () Bool)

(assert (=> d!672116 m!2699409))

(declare-fun m!2699411 () Bool)

(assert (=> b!2270650 m!2699411))

(declare-fun m!2699413 () Bool)

(assert (=> b!2270651 m!2699413))

(assert (=> b!2270498 d!672116))

(declare-fun d!672118 () Bool)

(declare-fun lt!843462 () Bool)

(assert (=> d!672118 (= lt!843462 (select (content!3600 (t!202507 rules!1750)) r!2363))))

(declare-fun e!1454379 () Bool)

(assert (=> d!672118 (= lt!843462 e!1454379)))

(declare-fun res!970725 () Bool)

(assert (=> d!672118 (=> (not res!970725) (not e!1454379))))

(assert (=> d!672118 (= res!970725 ((_ is Cons!27003) (t!202507 rules!1750)))))

(assert (=> d!672118 (= (contains!4667 (t!202507 rules!1750) r!2363) lt!843462)))

(declare-fun b!2270652 () Bool)

(declare-fun e!1454378 () Bool)

(assert (=> b!2270652 (= e!1454379 e!1454378)))

(declare-fun res!970724 () Bool)

(assert (=> b!2270652 (=> res!970724 e!1454378)))

(assert (=> b!2270652 (= res!970724 (= (h!32404 (t!202507 rules!1750)) r!2363))))

(declare-fun b!2270653 () Bool)

(assert (=> b!2270653 (= e!1454378 (contains!4667 (t!202507 (t!202507 rules!1750)) r!2363))))

(assert (= (and d!672118 res!970725) b!2270652))

(assert (= (and b!2270652 (not res!970724)) b!2270653))

(declare-fun m!2699415 () Bool)

(assert (=> d!672118 m!2699415))

(declare-fun m!2699417 () Bool)

(assert (=> d!672118 m!2699417))

(declare-fun m!2699419 () Bool)

(assert (=> b!2270653 m!2699419))

(assert (=> b!2270411 d!672118))

(declare-fun d!672120 () Bool)

(declare-fun lt!843465 () Int)

(declare-fun size!21199 (List!27098) Int)

(assert (=> d!672120 (= lt!843465 (size!21199 (list!10465 (_1!15844 lt!843437))))))

(declare-fun size!21200 (Conc!8759) Int)

(assert (=> d!672120 (= lt!843465 (size!21200 (c!360420 (_1!15844 lt!843437))))))

(assert (=> d!672120 (= (size!21197 (_1!15844 lt!843437)) lt!843465)))

(declare-fun bs!455958 () Bool)

(assert (= bs!455958 d!672120))

(assert (=> bs!455958 m!2699249))

(assert (=> bs!455958 m!2699249))

(declare-fun m!2699421 () Bool)

(assert (=> bs!455958 m!2699421))

(declare-fun m!2699423 () Bool)

(assert (=> bs!455958 m!2699423))

(assert (=> d!672006 d!672120))

(declare-fun d!672122 () Bool)

(declare-fun e!1454406 () Bool)

(assert (=> d!672122 e!1454406))

(declare-fun res!970737 () Bool)

(assert (=> d!672122 (=> (not res!970737) (not e!1454406))))

(declare-fun lt!843572 () tuple2!26668)

(declare-fun lexRec!526 (LexerInterface!3902 List!27097 BalanceConc!17244) tuple2!26668)

(assert (=> d!672122 (= res!970737 (= (list!10465 (_1!15844 lt!843572)) (list!10465 (_1!15844 (lexRec!526 thiss!16613 rules!1750 (seqFromList!3009 input!1722))))))))

(declare-fun e!1454403 () tuple2!26668)

(assert (=> d!672122 (= lt!843572 e!1454403)))

(declare-fun c!360482 () Bool)

(declare-datatypes ((tuple2!26672 0))(
  ( (tuple2!26673 (_1!15846 Token!8088) (_2!15846 BalanceConc!17244)) )
))
(declare-datatypes ((Option!5282 0))(
  ( (None!5281) (Some!5281 (v!30329 tuple2!26672)) )
))
(declare-fun lt!843556 () Option!5282)

(assert (=> d!672122 (= c!360482 ((_ is Some!5281) lt!843556))))

(declare-fun maxPrefixZipperSequenceV2!396 (LexerInterface!3902 List!27097 BalanceConc!17244 BalanceConc!17244) Option!5282)

(assert (=> d!672122 (= lt!843556 (maxPrefixZipperSequenceV2!396 thiss!16613 rules!1750 (seqFromList!3009 input!1722) (seqFromList!3009 input!1722)))))

(declare-fun lt!843562 () Unit!39950)

(declare-fun lt!843555 () Unit!39950)

(assert (=> d!672122 (= lt!843562 lt!843555)))

(declare-fun lt!843563 () List!27095)

(declare-fun lt!843578 () List!27095)

(declare-fun isSuffix!762 (List!27095 List!27095) Bool)

(declare-fun ++!6580 (List!27095 List!27095) List!27095)

(assert (=> d!672122 (isSuffix!762 lt!843563 (++!6580 lt!843578 lt!843563))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!456 (List!27095 List!27095) Unit!39950)

(assert (=> d!672122 (= lt!843555 (lemmaConcatTwoListThenFSndIsSuffix!456 lt!843578 lt!843563))))

(assert (=> d!672122 (= lt!843563 (list!10466 (seqFromList!3009 input!1722)))))

(assert (=> d!672122 (= lt!843578 (list!10466 (BalanceConc!17245 Empty!8758)))))

(assert (=> d!672122 (= (lexTailRecV2!753 thiss!16613 rules!1750 (seqFromList!3009 input!1722) (BalanceConc!17245 Empty!8758) (seqFromList!3009 input!1722) (BalanceConc!17247 Empty!8759)) lt!843572)))

(declare-fun b!2270695 () Bool)

(assert (=> b!2270695 (= e!1454403 (tuple2!26669 (BalanceConc!17247 Empty!8759) (seqFromList!3009 input!1722)))))

(declare-fun b!2270696 () Bool)

(declare-fun e!1454405 () tuple2!26668)

(assert (=> b!2270696 (= e!1454405 (tuple2!26669 (BalanceConc!17247 Empty!8759) (seqFromList!3009 input!1722)))))

(declare-fun b!2270697 () Bool)

(assert (=> b!2270697 (= e!1454406 (= (list!10466 (_2!15844 lt!843572)) (list!10466 (_2!15844 (lexRec!526 thiss!16613 rules!1750 (seqFromList!3009 input!1722))))))))

(declare-fun lt!843583 () Option!5282)

(declare-fun b!2270698 () Bool)

(declare-fun lt!843579 () tuple2!26668)

(assert (=> b!2270698 (= lt!843579 (lexRec!526 thiss!16613 rules!1750 (_2!15846 (v!30329 lt!843583))))))

(declare-fun prepend!996 (BalanceConc!17246 Token!8088) BalanceConc!17246)

(assert (=> b!2270698 (= e!1454405 (tuple2!26669 (prepend!996 (_1!15844 lt!843579) (_1!15846 (v!30329 lt!843583))) (_2!15844 lt!843579)))))

(declare-fun b!2270699 () Bool)

(declare-fun e!1454404 () tuple2!26668)

(declare-fun lt!843580 () BalanceConc!17244)

(assert (=> b!2270699 (= e!1454404 (tuple2!26669 (BalanceConc!17247 Empty!8759) lt!843580))))

(declare-fun lt!843575 () tuple2!26668)

(declare-fun lt!843561 () Option!5282)

(declare-fun b!2270700 () Bool)

(assert (=> b!2270700 (= lt!843575 (lexRec!526 thiss!16613 rules!1750 (_2!15846 (v!30329 lt!843561))))))

(assert (=> b!2270700 (= e!1454404 (tuple2!26669 (prepend!996 (_1!15844 lt!843575) (_1!15846 (v!30329 lt!843561))) (_2!15844 lt!843575)))))

(declare-fun lt!843551 () BalanceConc!17244)

(declare-fun b!2270701 () Bool)

(declare-fun append!689 (BalanceConc!17246 Token!8088) BalanceConc!17246)

(assert (=> b!2270701 (= e!1454403 (lexTailRecV2!753 thiss!16613 rules!1750 (seqFromList!3009 input!1722) lt!843551 (_2!15846 (v!30329 lt!843556)) (append!689 (BalanceConc!17247 Empty!8759) (_1!15846 (v!30329 lt!843556)))))))

(declare-fun lt!843566 () tuple2!26668)

(assert (=> b!2270701 (= lt!843566 (lexRec!526 thiss!16613 rules!1750 (_2!15846 (v!30329 lt!843556))))))

(declare-fun lt!843581 () List!27095)

(assert (=> b!2270701 (= lt!843581 (list!10466 (BalanceConc!17245 Empty!8758)))))

(declare-fun lt!843553 () List!27095)

(assert (=> b!2270701 (= lt!843553 (list!10466 (charsOf!2693 (_1!15846 (v!30329 lt!843556)))))))

(declare-fun lt!843573 () List!27095)

(assert (=> b!2270701 (= lt!843573 (list!10466 (_2!15846 (v!30329 lt!843556))))))

(declare-fun lt!843558 () Unit!39950)

(declare-fun lemmaConcatAssociativity!1364 (List!27095 List!27095 List!27095) Unit!39950)

(assert (=> b!2270701 (= lt!843558 (lemmaConcatAssociativity!1364 lt!843581 lt!843553 lt!843573))))

(assert (=> b!2270701 (= (++!6580 (++!6580 lt!843581 lt!843553) lt!843573) (++!6580 lt!843581 (++!6580 lt!843553 lt!843573)))))

(declare-fun lt!843565 () Unit!39950)

(assert (=> b!2270701 (= lt!843565 lt!843558)))

(declare-fun maxPrefixZipperSequence!861 (LexerInterface!3902 List!27097 BalanceConc!17244) Option!5282)

(assert (=> b!2270701 (= lt!843583 (maxPrefixZipperSequence!861 thiss!16613 rules!1750 (seqFromList!3009 input!1722)))))

(declare-fun c!360481 () Bool)

(assert (=> b!2270701 (= c!360481 ((_ is Some!5281) lt!843583))))

(assert (=> b!2270701 (= (lexRec!526 thiss!16613 rules!1750 (seqFromList!3009 input!1722)) e!1454405)))

(declare-fun lt!843577 () Unit!39950)

(declare-fun Unit!39952 () Unit!39950)

(assert (=> b!2270701 (= lt!843577 Unit!39952)))

(declare-fun lt!843564 () List!27098)

(assert (=> b!2270701 (= lt!843564 (list!10465 (BalanceConc!17247 Empty!8759)))))

(declare-fun lt!843567 () List!27098)

(assert (=> b!2270701 (= lt!843567 (Cons!27004 (_1!15846 (v!30329 lt!843556)) Nil!27004))))

(declare-fun lt!843557 () List!27098)

(assert (=> b!2270701 (= lt!843557 (list!10465 (_1!15844 lt!843566)))))

(declare-fun lt!843574 () Unit!39950)

(declare-fun lemmaConcatAssociativity!1365 (List!27098 List!27098 List!27098) Unit!39950)

(assert (=> b!2270701 (= lt!843574 (lemmaConcatAssociativity!1365 lt!843564 lt!843567 lt!843557))))

(declare-fun ++!6582 (List!27098 List!27098) List!27098)

(assert (=> b!2270701 (= (++!6582 (++!6582 lt!843564 lt!843567) lt!843557) (++!6582 lt!843564 (++!6582 lt!843567 lt!843557)))))

(declare-fun lt!843569 () Unit!39950)

(assert (=> b!2270701 (= lt!843569 lt!843574)))

(declare-fun lt!843571 () List!27095)

(assert (=> b!2270701 (= lt!843571 (++!6580 (list!10466 (BalanceConc!17245 Empty!8758)) (list!10466 (charsOf!2693 (_1!15846 (v!30329 lt!843556))))))))

(declare-fun lt!843568 () List!27095)

(assert (=> b!2270701 (= lt!843568 (list!10466 (_2!15846 (v!30329 lt!843556))))))

(declare-fun lt!843570 () List!27098)

(assert (=> b!2270701 (= lt!843570 (list!10465 (append!689 (BalanceConc!17247 Empty!8759) (_1!15846 (v!30329 lt!843556)))))))

(declare-fun lt!843560 () Unit!39950)

(declare-fun lemmaLexThenLexPrefix!340 (LexerInterface!3902 List!27097 List!27095 List!27095 List!27098 List!27098 List!27095) Unit!39950)

(assert (=> b!2270701 (= lt!843560 (lemmaLexThenLexPrefix!340 thiss!16613 rules!1750 lt!843571 lt!843568 lt!843570 (list!10465 (_1!15844 lt!843566)) (list!10466 (_2!15844 lt!843566))))))

(assert (=> b!2270701 (= (lexList!1078 thiss!16613 rules!1750 lt!843571) (tuple2!26671 lt!843570 Nil!27001))))

(declare-fun lt!843550 () Unit!39950)

(assert (=> b!2270701 (= lt!843550 lt!843560)))

(declare-fun ++!6583 (BalanceConc!17244 BalanceConc!17244) BalanceConc!17244)

(assert (=> b!2270701 (= lt!843580 (++!6583 (BalanceConc!17245 Empty!8758) (charsOf!2693 (_1!15846 (v!30329 lt!843556)))))))

(assert (=> b!2270701 (= lt!843561 (maxPrefixZipperSequence!861 thiss!16613 rules!1750 lt!843580))))

(declare-fun c!360483 () Bool)

(assert (=> b!2270701 (= c!360483 ((_ is Some!5281) lt!843561))))

(assert (=> b!2270701 (= (lexRec!526 thiss!16613 rules!1750 (++!6583 (BalanceConc!17245 Empty!8758) (charsOf!2693 (_1!15846 (v!30329 lt!843556))))) e!1454404)))

(declare-fun lt!843576 () Unit!39950)

(declare-fun Unit!39953 () Unit!39950)

(assert (=> b!2270701 (= lt!843576 Unit!39953)))

(assert (=> b!2270701 (= lt!843551 (++!6583 (BalanceConc!17245 Empty!8758) (charsOf!2693 (_1!15846 (v!30329 lt!843556)))))))

(declare-fun lt!843552 () List!27095)

(assert (=> b!2270701 (= lt!843552 (list!10466 lt!843551))))

(declare-fun lt!843582 () List!27095)

(assert (=> b!2270701 (= lt!843582 (list!10466 (_2!15846 (v!30329 lt!843556))))))

(declare-fun lt!843559 () Unit!39950)

(assert (=> b!2270701 (= lt!843559 (lemmaConcatTwoListThenFSndIsSuffix!456 lt!843552 lt!843582))))

(assert (=> b!2270701 (isSuffix!762 lt!843582 (++!6580 lt!843552 lt!843582))))

(declare-fun lt!843554 () Unit!39950)

(assert (=> b!2270701 (= lt!843554 lt!843559)))

(assert (= (and d!672122 c!360482) b!2270701))

(assert (= (and d!672122 (not c!360482)) b!2270695))

(assert (= (and b!2270701 c!360481) b!2270698))

(assert (= (and b!2270701 (not c!360481)) b!2270696))

(assert (= (and b!2270701 c!360483) b!2270700))

(assert (= (and b!2270701 (not c!360483)) b!2270699))

(assert (= (and d!672122 res!970737) b!2270697))

(declare-fun m!2699469 () Bool)

(assert (=> b!2270697 m!2699469))

(assert (=> b!2270697 m!2699103))

(declare-fun m!2699471 () Bool)

(assert (=> b!2270697 m!2699471))

(declare-fun m!2699473 () Bool)

(assert (=> b!2270697 m!2699473))

(declare-fun m!2699475 () Bool)

(assert (=> b!2270701 m!2699475))

(declare-fun m!2699477 () Bool)

(assert (=> b!2270701 m!2699477))

(declare-fun m!2699479 () Bool)

(assert (=> b!2270701 m!2699479))

(declare-fun m!2699481 () Bool)

(assert (=> b!2270701 m!2699481))

(assert (=> b!2270701 m!2699475))

(declare-fun m!2699483 () Bool)

(assert (=> b!2270701 m!2699483))

(declare-fun m!2699485 () Bool)

(assert (=> b!2270701 m!2699485))

(declare-fun m!2699487 () Bool)

(assert (=> b!2270701 m!2699487))

(assert (=> b!2270701 m!2699479))

(declare-fun m!2699489 () Bool)

(assert (=> b!2270701 m!2699489))

(declare-fun m!2699491 () Bool)

(assert (=> b!2270701 m!2699491))

(declare-fun m!2699493 () Bool)

(assert (=> b!2270701 m!2699493))

(assert (=> b!2270701 m!2699491))

(declare-fun m!2699495 () Bool)

(assert (=> b!2270701 m!2699495))

(declare-fun m!2699497 () Bool)

(assert (=> b!2270701 m!2699497))

(declare-fun m!2699499 () Bool)

(assert (=> b!2270701 m!2699499))

(declare-fun m!2699501 () Bool)

(assert (=> b!2270701 m!2699501))

(assert (=> b!2270701 m!2699103))

(assert (=> b!2270701 m!2699471))

(declare-fun m!2699503 () Bool)

(assert (=> b!2270701 m!2699503))

(declare-fun m!2699505 () Bool)

(assert (=> b!2270701 m!2699505))

(declare-fun m!2699507 () Bool)

(assert (=> b!2270701 m!2699507))

(declare-fun m!2699509 () Bool)

(assert (=> b!2270701 m!2699509))

(assert (=> b!2270701 m!2699505))

(assert (=> b!2270701 m!2699103))

(assert (=> b!2270701 m!2699475))

(declare-fun m!2699511 () Bool)

(assert (=> b!2270701 m!2699511))

(declare-fun m!2699513 () Bool)

(assert (=> b!2270701 m!2699513))

(assert (=> b!2270701 m!2699497))

(declare-fun m!2699515 () Bool)

(assert (=> b!2270701 m!2699515))

(declare-fun m!2699517 () Bool)

(assert (=> b!2270701 m!2699517))

(declare-fun m!2699519 () Bool)

(assert (=> b!2270701 m!2699519))

(declare-fun m!2699521 () Bool)

(assert (=> b!2270701 m!2699521))

(assert (=> b!2270701 m!2699493))

(declare-fun m!2699523 () Bool)

(assert (=> b!2270701 m!2699523))

(declare-fun m!2699525 () Bool)

(assert (=> b!2270701 m!2699525))

(declare-fun m!2699527 () Bool)

(assert (=> b!2270701 m!2699527))

(assert (=> b!2270701 m!2699103))

(declare-fun m!2699529 () Bool)

(assert (=> b!2270701 m!2699529))

(assert (=> b!2270701 m!2699481))

(assert (=> b!2270701 m!2699513))

(declare-fun m!2699531 () Bool)

(assert (=> b!2270701 m!2699531))

(assert (=> b!2270701 m!2699517))

(declare-fun m!2699533 () Bool)

(assert (=> b!2270701 m!2699533))

(assert (=> b!2270701 m!2699477))

(assert (=> b!2270701 m!2699499))

(assert (=> b!2270701 m!2699477))

(assert (=> b!2270701 m!2699523))

(declare-fun m!2699535 () Bool)

(assert (=> b!2270701 m!2699535))

(declare-fun m!2699537 () Bool)

(assert (=> b!2270701 m!2699537))

(declare-fun m!2699539 () Bool)

(assert (=> b!2270698 m!2699539))

(declare-fun m!2699541 () Bool)

(assert (=> b!2270698 m!2699541))

(assert (=> d!672122 m!2699103))

(assert (=> d!672122 m!2699471))

(declare-fun m!2699543 () Bool)

(assert (=> d!672122 m!2699543))

(assert (=> d!672122 m!2699103))

(assert (=> d!672122 m!2699103))

(declare-fun m!2699545 () Bool)

(assert (=> d!672122 m!2699545))

(declare-fun m!2699547 () Bool)

(assert (=> d!672122 m!2699547))

(declare-fun m!2699549 () Bool)

(assert (=> d!672122 m!2699549))

(assert (=> d!672122 m!2699549))

(declare-fun m!2699551 () Bool)

(assert (=> d!672122 m!2699551))

(assert (=> d!672122 m!2699493))

(declare-fun m!2699553 () Bool)

(assert (=> d!672122 m!2699553))

(assert (=> d!672122 m!2699103))

(assert (=> d!672122 m!2699243))

(declare-fun m!2699555 () Bool)

(assert (=> b!2270700 m!2699555))

(declare-fun m!2699557 () Bool)

(assert (=> b!2270700 m!2699557))

(assert (=> d!672006 d!672122))

(declare-fun d!672154 () Bool)

(assert (=> d!672154 (= (head!4900 (list!10466 (charsOf!2693 (head!4898 tokens!456)))) (h!32402 (list!10466 (charsOf!2693 (head!4898 tokens!456)))))))

(assert (=> b!2270564 d!672154))

(declare-fun d!672156 () Bool)

(declare-fun isBalanced!2666 (Conc!8758) Bool)

(assert (=> d!672156 (= (inv!36562 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))) (value!136512 (head!4898 tokens!456)))) (isBalanced!2666 (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))) (value!136512 (head!4898 tokens!456))))))))

(declare-fun bs!455967 () Bool)

(assert (= bs!455967 d!672156))

(declare-fun m!2699559 () Bool)

(assert (=> bs!455967 m!2699559))

(assert (=> tb!134735 d!672156))

(declare-fun d!672158 () Bool)

(assert (=> d!672158 true))

(declare-fun order!15059 () Int)

(declare-fun order!15057 () Int)

(declare-fun lambda!85480 () Int)

(declare-fun dynLambda!11707 (Int Int) Int)

(declare-fun dynLambda!11708 (Int Int) Int)

(assert (=> d!672158 (< (dynLambda!11707 order!15057 (toValue!6067 (transformation!4305 (rule!6623 (h!32405 tokens!456))))) (dynLambda!11708 order!15059 lambda!85480))))

(declare-fun Forall2!693 (Int) Bool)

(assert (=> d!672158 (= (equivClasses!1653 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (toValue!6067 (transformation!4305 (rule!6623 (h!32405 tokens!456))))) (Forall2!693 lambda!85480))))

(declare-fun bs!455968 () Bool)

(assert (= bs!455968 d!672158))

(declare-fun m!2699561 () Bool)

(assert (=> bs!455968 m!2699561))

(assert (=> b!2270533 d!672158))

(declare-fun d!672160 () Bool)

(declare-fun c!360486 () Bool)

(assert (=> d!672160 (= c!360486 ((_ is Nil!27003) rules!1750))))

(declare-fun e!1454411 () (InoxSet Rule!8410))

(assert (=> d!672160 (= (content!3600 rules!1750) e!1454411)))

(declare-fun b!2270710 () Bool)

(assert (=> b!2270710 (= e!1454411 ((as const (Array Rule!8410 Bool)) false))))

(declare-fun b!2270711 () Bool)

(assert (=> b!2270711 (= e!1454411 ((_ map or) (store ((as const (Array Rule!8410 Bool)) false) (h!32404 rules!1750) true) (content!3600 (t!202507 rules!1750))))))

(assert (= (and d!672160 c!360486) b!2270710))

(assert (= (and d!672160 (not c!360486)) b!2270711))

(declare-fun m!2699563 () Bool)

(assert (=> b!2270711 m!2699563))

(assert (=> b!2270711 m!2699415))

(assert (=> d!672052 d!672160))

(assert (=> d!672088 d!672086))

(declare-fun d!672162 () Bool)

(assert (=> d!672162 (ruleValid!1395 thiss!16613 r!2363)))

(assert (=> d!672162 true))

(declare-fun _$65!1084 () Unit!39950)

(assert (=> d!672162 (= (choose!13266 thiss!16613 r!2363 rules!1750) _$65!1084)))

(declare-fun bs!455969 () Bool)

(assert (= bs!455969 d!672162))

(assert (=> bs!455969 m!2699065))

(assert (=> d!672088 d!672162))

(assert (=> d!672088 d!672054))

(declare-fun bs!455970 () Bool)

(declare-fun d!672164 () Bool)

(assert (= bs!455970 (and d!672164 d!672070)))

(declare-fun lambda!85483 () Int)

(assert (=> bs!455970 (= lambda!85483 lambda!85469)))

(declare-fun bs!455971 () Bool)

(assert (= bs!455971 (and d!672164 d!672116)))

(assert (=> bs!455971 (= lambda!85483 lambda!85470)))

(assert (=> d!672164 true))

(declare-fun lt!843586 () Bool)

(assert (=> d!672164 (= lt!843586 (rulesValidInductive!1503 thiss!16613 rules!1750))))

(assert (=> d!672164 (= lt!843586 (forall!5480 rules!1750 lambda!85483))))

(assert (=> d!672164 (= (rulesValid!1578 thiss!16613 rules!1750) lt!843586)))

(declare-fun bs!455972 () Bool)

(assert (= bs!455972 d!672164))

(assert (=> bs!455972 m!2699087))

(declare-fun m!2699565 () Bool)

(assert (=> bs!455972 m!2699565))

(assert (=> d!672090 d!672164))

(declare-fun d!672166 () Bool)

(assert (=> d!672166 (= (list!10466 (_2!15844 lt!843437)) (list!10470 (c!360418 (_2!15844 lt!843437))))))

(declare-fun bs!455973 () Bool)

(assert (= bs!455973 d!672166))

(declare-fun m!2699567 () Bool)

(assert (=> bs!455973 m!2699567))

(assert (=> b!2270402 d!672166))

(declare-fun b!2270730 () Bool)

(declare-fun e!1454422 () Bool)

(declare-fun e!1454423 () Bool)

(assert (=> b!2270730 (= e!1454422 e!1454423)))

(declare-fun res!970742 () Bool)

(declare-fun lt!843647 () tuple2!26670)

(assert (=> b!2270730 (= res!970742 (< (size!21194 (_2!15845 lt!843647)) (size!21194 (list!10466 (seqFromList!3009 input!1722)))))))

(assert (=> b!2270730 (=> (not res!970742) (not e!1454423))))

(declare-fun b!2270731 () Bool)

(declare-fun e!1454424 () tuple2!26670)

(declare-datatypes ((tuple2!26676 0))(
  ( (tuple2!26677 (_1!15848 Token!8088) (_2!15848 List!27095)) )
))
(declare-datatypes ((Option!5284 0))(
  ( (None!5283) (Some!5283 (v!30331 tuple2!26676)) )
))
(declare-fun lt!843648 () Option!5284)

(declare-fun lt!843651 () tuple2!26670)

(assert (=> b!2270731 (= e!1454424 (tuple2!26671 (Cons!27004 (_1!15848 (v!30331 lt!843648)) (_1!15845 lt!843651)) (_2!15845 lt!843651)))))

(assert (=> b!2270731 (= lt!843651 (lexList!1078 thiss!16613 rules!1750 (_2!15848 (v!30331 lt!843648))))))

(declare-fun b!2270732 () Bool)

(assert (=> b!2270732 (= e!1454424 (tuple2!26671 Nil!27004 (list!10466 (seqFromList!3009 input!1722))))))

(declare-fun b!2270733 () Bool)

(assert (=> b!2270733 (= e!1454422 (= (_2!15845 lt!843647) (list!10466 (seqFromList!3009 input!1722))))))

(declare-fun b!2270734 () Bool)

(assert (=> b!2270734 (= e!1454423 (not (isEmpty!15291 (_1!15845 lt!843647))))))

(declare-fun d!672168 () Bool)

(assert (=> d!672168 e!1454422))

(declare-fun c!360496 () Bool)

(assert (=> d!672168 (= c!360496 (> (size!21199 (_1!15845 lt!843647)) 0))))

(assert (=> d!672168 (= lt!843647 e!1454424)))

(declare-fun c!360495 () Bool)

(assert (=> d!672168 (= c!360495 ((_ is Some!5283) lt!843648))))

(declare-fun maxPrefix!2172 (LexerInterface!3902 List!27097 List!27095) Option!5284)

(assert (=> d!672168 (= lt!843648 (maxPrefix!2172 thiss!16613 rules!1750 (list!10466 (seqFromList!3009 input!1722))))))

(assert (=> d!672168 (= (lexList!1078 thiss!16613 rules!1750 (list!10466 (seqFromList!3009 input!1722))) lt!843647)))

(assert (= (and d!672168 c!360495) b!2270731))

(assert (= (and d!672168 (not c!360495)) b!2270732))

(assert (= (and d!672168 c!360496) b!2270730))

(assert (= (and d!672168 (not c!360496)) b!2270733))

(assert (= (and b!2270730 res!970742) b!2270734))

(declare-fun m!2699569 () Bool)

(assert (=> b!2270730 m!2699569))

(assert (=> b!2270730 m!2699243))

(declare-fun m!2699571 () Bool)

(assert (=> b!2270730 m!2699571))

(declare-fun m!2699573 () Bool)

(assert (=> b!2270731 m!2699573))

(declare-fun m!2699575 () Bool)

(assert (=> b!2270734 m!2699575))

(declare-fun m!2699577 () Bool)

(assert (=> d!672168 m!2699577))

(assert (=> d!672168 m!2699243))

(declare-fun m!2699579 () Bool)

(assert (=> d!672168 m!2699579))

(assert (=> b!2270402 d!672168))

(declare-fun d!672170 () Bool)

(assert (=> d!672170 (= (list!10466 (seqFromList!3009 input!1722)) (list!10470 (c!360418 (seqFromList!3009 input!1722))))))

(declare-fun bs!455974 () Bool)

(assert (= bs!455974 d!672170))

(declare-fun m!2699581 () Bool)

(assert (=> bs!455974 m!2699581))

(assert (=> b!2270402 d!672170))

(declare-fun d!672172 () Bool)

(declare-fun e!1454431 () Bool)

(assert (=> d!672172 e!1454431))

(declare-fun res!970747 () Bool)

(assert (=> d!672172 (=> (not res!970747) (not e!1454431))))

(declare-fun lt!843666 () BalanceConc!17244)

(assert (=> d!672172 (= res!970747 (= (list!10466 lt!843666) input!1722))))

(declare-fun fromList!523 (List!27095) Conc!8758)

(assert (=> d!672172 (= lt!843666 (BalanceConc!17245 (fromList!523 input!1722)))))

(assert (=> d!672172 (= (fromListB!1344 input!1722) lt!843666)))

(declare-fun b!2270743 () Bool)

(assert (=> b!2270743 (= e!1454431 (isBalanced!2666 (fromList!523 input!1722)))))

(assert (= (and d!672172 res!970747) b!2270743))

(declare-fun m!2699583 () Bool)

(assert (=> d!672172 m!2699583))

(declare-fun m!2699585 () Bool)

(assert (=> d!672172 m!2699585))

(assert (=> b!2270743 m!2699585))

(assert (=> b!2270743 m!2699585))

(declare-fun m!2699587 () Bool)

(assert (=> b!2270743 m!2699587))

(assert (=> d!672050 d!672172))

(declare-fun d!672174 () Bool)

(assert (=> d!672174 true))

(declare-fun order!15063 () Int)

(declare-fun order!15061 () Int)

(declare-fun lambda!85486 () Int)

(declare-fun dynLambda!11710 (Int Int) Int)

(declare-fun dynLambda!11711 (Int Int) Int)

(assert (=> d!672174 (< (dynLambda!11710 order!15061 (toChars!5926 (transformation!4305 r!2363))) (dynLambda!11711 order!15063 lambda!85486))))

(assert (=> d!672174 true))

(assert (=> d!672174 (< (dynLambda!11707 order!15057 (toValue!6067 (transformation!4305 r!2363))) (dynLambda!11711 order!15063 lambda!85486))))

(declare-fun Forall!1077 (Int) Bool)

(assert (=> d!672174 (= (semiInverseModEq!1734 (toChars!5926 (transformation!4305 r!2363)) (toValue!6067 (transformation!4305 r!2363))) (Forall!1077 lambda!85486))))

(declare-fun bs!455975 () Bool)

(assert (= bs!455975 d!672174))

(declare-fun m!2699589 () Bool)

(assert (=> bs!455975 m!2699589))

(assert (=> d!672068 d!672174))

(declare-fun d!672176 () Bool)

(declare-fun charsToBigInt!1 (List!27096) Int)

(assert (=> d!672176 (= (inv!17 (value!136512 (h!32405 tokens!456))) (= (charsToBigInt!1 (text!31717 (value!136512 (h!32405 tokens!456)))) (value!136504 (value!136512 (h!32405 tokens!456)))))))

(declare-fun bs!455976 () Bool)

(assert (= bs!455976 d!672176))

(declare-fun m!2699591 () Bool)

(assert (=> bs!455976 m!2699591))

(assert (=> b!2270520 d!672176))

(declare-fun d!672178 () Bool)

(declare-fun lt!843667 () Int)

(assert (=> d!672178 (>= lt!843667 0)))

(declare-fun e!1454432 () Int)

(assert (=> d!672178 (= lt!843667 e!1454432)))

(declare-fun c!360500 () Bool)

(assert (=> d!672178 (= c!360500 ((_ is Nil!27001) (list!10466 (charsOf!2693 (head!4898 tokens!456)))))))

(assert (=> d!672178 (= (size!21194 (list!10466 (charsOf!2693 (head!4898 tokens!456)))) lt!843667)))

(declare-fun b!2270748 () Bool)

(assert (=> b!2270748 (= e!1454432 0)))

(declare-fun b!2270749 () Bool)

(assert (=> b!2270749 (= e!1454432 (+ 1 (size!21194 (t!202505 (list!10466 (charsOf!2693 (head!4898 tokens!456)))))))))

(assert (= (and d!672178 c!360500) b!2270748))

(assert (= (and d!672178 (not c!360500)) b!2270749))

(declare-fun m!2699593 () Bool)

(assert (=> b!2270749 m!2699593))

(assert (=> d!672074 d!672178))

(assert (=> d!672074 d!672100))

(declare-fun d!672180 () Bool)

(declare-fun lt!843670 () Int)

(assert (=> d!672180 (= lt!843670 (size!21194 (list!10470 (c!360418 (charsOf!2693 (head!4898 tokens!456))))))))

(assert (=> d!672180 (= lt!843670 (ite ((_ is Empty!8758) (c!360418 (charsOf!2693 (head!4898 tokens!456)))) 0 (ite ((_ is Leaf!12896) (c!360418 (charsOf!2693 (head!4898 tokens!456)))) (csize!17747 (c!360418 (charsOf!2693 (head!4898 tokens!456)))) (csize!17746 (c!360418 (charsOf!2693 (head!4898 tokens!456)))))))))

(assert (=> d!672180 (= (size!21198 (c!360418 (charsOf!2693 (head!4898 tokens!456)))) lt!843670)))

(declare-fun bs!455977 () Bool)

(assert (= bs!455977 d!672180))

(assert (=> bs!455977 m!2699369))

(assert (=> bs!455977 m!2699369))

(declare-fun m!2699595 () Bool)

(assert (=> bs!455977 m!2699595))

(assert (=> d!672074 d!672180))

(declare-fun b!2270775 () Bool)

(declare-fun res!970763 () Bool)

(declare-fun e!1454457 () Bool)

(assert (=> b!2270775 (=> res!970763 e!1454457)))

(assert (=> b!2270775 (= res!970763 (not ((_ is Concat!11121) (regex!4305 r!2363))))))

(declare-fun e!1454456 () Bool)

(assert (=> b!2270775 (= e!1454456 e!1454457)))

(declare-fun b!2270776 () Bool)

(declare-fun e!1454454 () Bool)

(declare-fun call!136092 () Bool)

(assert (=> b!2270776 (= e!1454454 call!136092)))

(declare-fun bm!136086 () Bool)

(declare-fun call!136091 () Bool)

(declare-fun c!360508 () Bool)

(assert (=> bm!136086 (= call!136091 (validRegex!2494 (ite c!360508 (regOne!13819 (regex!4305 r!2363)) (regTwo!13818 (regex!4305 r!2363)))))))

(declare-fun b!2270777 () Bool)

(declare-fun e!1454452 () Bool)

(assert (=> b!2270777 (= e!1454457 e!1454452)))

(declare-fun res!970761 () Bool)

(assert (=> b!2270777 (=> (not res!970761) (not e!1454452))))

(declare-fun call!136093 () Bool)

(assert (=> b!2270777 (= res!970761 call!136093)))

(declare-fun b!2270779 () Bool)

(declare-fun e!1454453 () Bool)

(assert (=> b!2270779 (= e!1454453 e!1454454)))

(declare-fun res!970760 () Bool)

(assert (=> b!2270779 (= res!970760 (not (nullable!1832 (reg!6982 (regex!4305 r!2363)))))))

(assert (=> b!2270779 (=> (not res!970760) (not e!1454454))))

(declare-fun b!2270780 () Bool)

(assert (=> b!2270780 (= e!1454453 e!1454456)))

(assert (=> b!2270780 (= c!360508 ((_ is Union!6653) (regex!4305 r!2363)))))

(declare-fun b!2270781 () Bool)

(declare-fun e!1454455 () Bool)

(assert (=> b!2270781 (= e!1454455 e!1454453)))

(declare-fun c!360509 () Bool)

(assert (=> b!2270781 (= c!360509 ((_ is Star!6653) (regex!4305 r!2363)))))

(declare-fun b!2270782 () Bool)

(assert (=> b!2270782 (= e!1454452 call!136091)))

(declare-fun b!2270783 () Bool)

(declare-fun e!1454451 () Bool)

(assert (=> b!2270783 (= e!1454451 call!136093)))

(declare-fun b!2270778 () Bool)

(declare-fun res!970759 () Bool)

(assert (=> b!2270778 (=> (not res!970759) (not e!1454451))))

(assert (=> b!2270778 (= res!970759 call!136091)))

(assert (=> b!2270778 (= e!1454456 e!1454451)))

(declare-fun d!672182 () Bool)

(declare-fun res!970762 () Bool)

(assert (=> d!672182 (=> res!970762 e!1454455)))

(assert (=> d!672182 (= res!970762 ((_ is ElementMatch!6653) (regex!4305 r!2363)))))

(assert (=> d!672182 (= (validRegex!2494 (regex!4305 r!2363)) e!1454455)))

(declare-fun bm!136087 () Bool)

(assert (=> bm!136087 (= call!136093 call!136092)))

(declare-fun bm!136088 () Bool)

(assert (=> bm!136088 (= call!136092 (validRegex!2494 (ite c!360509 (reg!6982 (regex!4305 r!2363)) (ite c!360508 (regTwo!13819 (regex!4305 r!2363)) (regOne!13818 (regex!4305 r!2363))))))))

(assert (= (and d!672182 (not res!970762)) b!2270781))

(assert (= (and b!2270781 c!360509) b!2270779))

(assert (= (and b!2270781 (not c!360509)) b!2270780))

(assert (= (and b!2270779 res!970760) b!2270776))

(assert (= (and b!2270780 c!360508) b!2270778))

(assert (= (and b!2270780 (not c!360508)) b!2270775))

(assert (= (and b!2270778 res!970759) b!2270783))

(assert (= (and b!2270775 (not res!970763)) b!2270777))

(assert (= (and b!2270777 res!970761) b!2270782))

(assert (= (or b!2270778 b!2270782) bm!136086))

(assert (= (or b!2270783 b!2270777) bm!136087))

(assert (= (or b!2270776 bm!136087) bm!136088))

(declare-fun m!2699691 () Bool)

(assert (=> bm!136086 m!2699691))

(declare-fun m!2699693 () Bool)

(assert (=> b!2270779 m!2699693))

(declare-fun m!2699695 () Bool)

(assert (=> bm!136088 m!2699695))

(assert (=> d!672086 d!672182))

(declare-fun d!672190 () Bool)

(assert (=> d!672190 (= (inv!36562 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (value!136512 (h!32405 tokens!456)))) (isBalanced!2666 (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (value!136512 (h!32405 tokens!456))))))))

(declare-fun bs!455984 () Bool)

(assert (= bs!455984 d!672190))

(declare-fun m!2699699 () Bool)

(assert (=> bs!455984 m!2699699))

(assert (=> tb!134719 d!672190))

(declare-fun d!672194 () Bool)

(assert (=> d!672194 (= (isEmpty!15296 (tail!3275 (list!10466 (charsOf!2693 (head!4898 tokens!456))))) ((_ is Nil!27001) (tail!3275 (list!10466 (charsOf!2693 (head!4898 tokens!456))))))))

(assert (=> b!2270562 d!672194))

(declare-fun d!672196 () Bool)

(assert (=> d!672196 (= (tail!3275 (list!10466 (charsOf!2693 (head!4898 tokens!456)))) (t!202505 (list!10466 (charsOf!2693 (head!4898 tokens!456)))))))

(assert (=> b!2270562 d!672196))

(declare-fun b!2270784 () Bool)

(declare-fun e!1454460 () Bool)

(declare-fun e!1454458 () Bool)

(assert (=> b!2270784 (= e!1454460 e!1454458)))

(declare-fun res!970767 () Bool)

(assert (=> b!2270784 (=> (not res!970767) (not e!1454458))))

(assert (=> b!2270784 (= res!970767 (not ((_ is Nil!27001) (tail!3275 input!1722))))))

(declare-fun b!2270787 () Bool)

(declare-fun e!1454459 () Bool)

(assert (=> b!2270787 (= e!1454459 (>= (size!21194 (tail!3275 input!1722)) (size!21194 (tail!3275 otherP!12))))))

(declare-fun b!2270786 () Bool)

(assert (=> b!2270786 (= e!1454458 (isPrefix!2295 (tail!3275 (tail!3275 otherP!12)) (tail!3275 (tail!3275 input!1722))))))

(declare-fun b!2270785 () Bool)

(declare-fun res!970764 () Bool)

(assert (=> b!2270785 (=> (not res!970764) (not e!1454458))))

(assert (=> b!2270785 (= res!970764 (= (head!4900 (tail!3275 otherP!12)) (head!4900 (tail!3275 input!1722))))))

(declare-fun d!672198 () Bool)

(assert (=> d!672198 e!1454459))

(declare-fun res!970766 () Bool)

(assert (=> d!672198 (=> res!970766 e!1454459)))

(declare-fun lt!843705 () Bool)

(assert (=> d!672198 (= res!970766 (not lt!843705))))

(assert (=> d!672198 (= lt!843705 e!1454460)))

(declare-fun res!970765 () Bool)

(assert (=> d!672198 (=> res!970765 e!1454460)))

(assert (=> d!672198 (= res!970765 ((_ is Nil!27001) (tail!3275 otherP!12)))))

(assert (=> d!672198 (= (isPrefix!2295 (tail!3275 otherP!12) (tail!3275 input!1722)) lt!843705)))

(assert (= (and d!672198 (not res!970765)) b!2270784))

(assert (= (and b!2270784 res!970767) b!2270785))

(assert (= (and b!2270785 res!970764) b!2270786))

(assert (= (and d!672198 (not res!970766)) b!2270787))

(assert (=> b!2270787 m!2699125))

(declare-fun m!2699701 () Bool)

(assert (=> b!2270787 m!2699701))

(assert (=> b!2270787 m!2699123))

(declare-fun m!2699703 () Bool)

(assert (=> b!2270787 m!2699703))

(assert (=> b!2270786 m!2699123))

(declare-fun m!2699705 () Bool)

(assert (=> b!2270786 m!2699705))

(assert (=> b!2270786 m!2699125))

(declare-fun m!2699707 () Bool)

(assert (=> b!2270786 m!2699707))

(assert (=> b!2270786 m!2699705))

(assert (=> b!2270786 m!2699707))

(declare-fun m!2699709 () Bool)

(assert (=> b!2270786 m!2699709))

(assert (=> b!2270785 m!2699123))

(declare-fun m!2699711 () Bool)

(assert (=> b!2270785 m!2699711))

(assert (=> b!2270785 m!2699125))

(declare-fun m!2699713 () Bool)

(assert (=> b!2270785 m!2699713))

(assert (=> b!2270274 d!672198))

(declare-fun d!672200 () Bool)

(assert (=> d!672200 (= (tail!3275 otherP!12) (t!202505 otherP!12))))

(assert (=> b!2270274 d!672200))

(declare-fun d!672202 () Bool)

(assert (=> d!672202 (= (tail!3275 input!1722) (t!202505 input!1722))))

(assert (=> b!2270274 d!672202))

(declare-fun d!672204 () Bool)

(declare-fun charsToBigInt!0 (List!27096 Int) Int)

(assert (=> d!672204 (= (inv!15 (value!136512 (h!32405 tokens!456))) (= (charsToBigInt!0 (text!31718 (value!136512 (h!32405 tokens!456))) 0) (value!136507 (value!136512 (h!32405 tokens!456)))))))

(declare-fun bs!455985 () Bool)

(assert (= bs!455985 d!672204))

(declare-fun m!2699719 () Bool)

(assert (=> bs!455985 m!2699719))

(assert (=> b!2270518 d!672204))

(declare-fun d!672208 () Bool)

(assert (=> d!672208 (= (inv!36554 (tag!4795 (h!32404 (t!202507 rules!1750)))) (= (mod (str.len (value!136511 (tag!4795 (h!32404 (t!202507 rules!1750))))) 2) 0))))

(assert (=> b!2270605 d!672208))

(declare-fun d!672210 () Bool)

(declare-fun res!970771 () Bool)

(declare-fun e!1454467 () Bool)

(assert (=> d!672210 (=> (not res!970771) (not e!1454467))))

(assert (=> d!672210 (= res!970771 (semiInverseModEq!1734 (toChars!5926 (transformation!4305 (h!32404 (t!202507 rules!1750)))) (toValue!6067 (transformation!4305 (h!32404 (t!202507 rules!1750))))))))

(assert (=> d!672210 (= (inv!36557 (transformation!4305 (h!32404 (t!202507 rules!1750)))) e!1454467)))

(declare-fun b!2270797 () Bool)

(assert (=> b!2270797 (= e!1454467 (equivClasses!1653 (toChars!5926 (transformation!4305 (h!32404 (t!202507 rules!1750)))) (toValue!6067 (transformation!4305 (h!32404 (t!202507 rules!1750))))))))

(assert (= (and d!672210 res!970771) b!2270797))

(declare-fun m!2699721 () Bool)

(assert (=> d!672210 m!2699721))

(declare-fun m!2699723 () Bool)

(assert (=> b!2270797 m!2699723))

(assert (=> b!2270605 d!672210))

(declare-fun d!672212 () Bool)

(assert (=> d!672212 (= (list!10466 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (value!136512 (h!32405 tokens!456)))) (list!10470 (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (value!136512 (h!32405 tokens!456))))))))

(declare-fun bs!455986 () Bool)

(assert (= bs!455986 d!672212))

(declare-fun m!2699725 () Bool)

(assert (=> bs!455986 m!2699725))

(assert (=> b!2270416 d!672212))

(declare-fun b!2270798 () Bool)

(declare-fun res!970772 () Bool)

(declare-fun e!1454469 () Bool)

(assert (=> b!2270798 (=> (not res!970772) (not e!1454469))))

(assert (=> b!2270798 (= res!970772 (isEmpty!15296 (tail!3275 (tail!3275 (list!10466 (charsOf!2693 (head!4898 tokens!456)))))))))

(declare-fun b!2270799 () Bool)

(assert (=> b!2270799 (= e!1454469 (= (head!4900 (tail!3275 (list!10466 (charsOf!2693 (head!4898 tokens!456))))) (c!360419 (derivativeStep!1492 (regex!4305 r!2363) (head!4900 (list!10466 (charsOf!2693 (head!4898 tokens!456))))))))))

(declare-fun b!2270800 () Bool)

(declare-fun e!1454474 () Bool)

(assert (=> b!2270800 (= e!1454474 (not (= (head!4900 (tail!3275 (list!10466 (charsOf!2693 (head!4898 tokens!456))))) (c!360419 (derivativeStep!1492 (regex!4305 r!2363) (head!4900 (list!10466 (charsOf!2693 (head!4898 tokens!456)))))))))))

(declare-fun b!2270801 () Bool)

(declare-fun e!1454471 () Bool)

(declare-fun lt!843706 () Bool)

(declare-fun call!136094 () Bool)

(assert (=> b!2270801 (= e!1454471 (= lt!843706 call!136094))))

(declare-fun b!2270803 () Bool)

(declare-fun e!1454470 () Bool)

(declare-fun e!1454473 () Bool)

(assert (=> b!2270803 (= e!1454470 e!1454473)))

(declare-fun res!970773 () Bool)

(assert (=> b!2270803 (=> (not res!970773) (not e!1454473))))

(assert (=> b!2270803 (= res!970773 (not lt!843706))))

(declare-fun b!2270804 () Bool)

(assert (=> b!2270804 (= e!1454473 e!1454474)))

(declare-fun res!970774 () Bool)

(assert (=> b!2270804 (=> res!970774 e!1454474)))

(assert (=> b!2270804 (= res!970774 call!136094)))

(declare-fun b!2270805 () Bool)

(declare-fun e!1454472 () Bool)

(assert (=> b!2270805 (= e!1454471 e!1454472)))

(declare-fun c!360513 () Bool)

(assert (=> b!2270805 (= c!360513 ((_ is EmptyLang!6653) (derivativeStep!1492 (regex!4305 r!2363) (head!4900 (list!10466 (charsOf!2693 (head!4898 tokens!456)))))))))

(declare-fun b!2270806 () Bool)

(declare-fun res!970779 () Bool)

(assert (=> b!2270806 (=> res!970779 e!1454470)))

(assert (=> b!2270806 (= res!970779 (not ((_ is ElementMatch!6653) (derivativeStep!1492 (regex!4305 r!2363) (head!4900 (list!10466 (charsOf!2693 (head!4898 tokens!456))))))))))

(assert (=> b!2270806 (= e!1454472 e!1454470)))

(declare-fun b!2270807 () Bool)

(declare-fun res!970775 () Bool)

(assert (=> b!2270807 (=> res!970775 e!1454470)))

(assert (=> b!2270807 (= res!970775 e!1454469)))

(declare-fun res!970778 () Bool)

(assert (=> b!2270807 (=> (not res!970778) (not e!1454469))))

(assert (=> b!2270807 (= res!970778 lt!843706)))

(declare-fun d!672214 () Bool)

(assert (=> d!672214 e!1454471))

(declare-fun c!360514 () Bool)

(assert (=> d!672214 (= c!360514 ((_ is EmptyExpr!6653) (derivativeStep!1492 (regex!4305 r!2363) (head!4900 (list!10466 (charsOf!2693 (head!4898 tokens!456)))))))))

(declare-fun e!1454468 () Bool)

(assert (=> d!672214 (= lt!843706 e!1454468)))

(declare-fun c!360515 () Bool)

(assert (=> d!672214 (= c!360515 (isEmpty!15296 (tail!3275 (list!10466 (charsOf!2693 (head!4898 tokens!456))))))))

(assert (=> d!672214 (validRegex!2494 (derivativeStep!1492 (regex!4305 r!2363) (head!4900 (list!10466 (charsOf!2693 (head!4898 tokens!456))))))))

(assert (=> d!672214 (= (matchR!2910 (derivativeStep!1492 (regex!4305 r!2363) (head!4900 (list!10466 (charsOf!2693 (head!4898 tokens!456))))) (tail!3275 (list!10466 (charsOf!2693 (head!4898 tokens!456))))) lt!843706)))

(declare-fun b!2270802 () Bool)

(assert (=> b!2270802 (= e!1454468 (nullable!1832 (derivativeStep!1492 (regex!4305 r!2363) (head!4900 (list!10466 (charsOf!2693 (head!4898 tokens!456)))))))))

(declare-fun b!2270808 () Bool)

(declare-fun res!970777 () Bool)

(assert (=> b!2270808 (=> res!970777 e!1454474)))

(assert (=> b!2270808 (= res!970777 (not (isEmpty!15296 (tail!3275 (tail!3275 (list!10466 (charsOf!2693 (head!4898 tokens!456))))))))))

(declare-fun b!2270809 () Bool)

(assert (=> b!2270809 (= e!1454472 (not lt!843706))))

(declare-fun b!2270810 () Bool)

(declare-fun res!970776 () Bool)

(assert (=> b!2270810 (=> (not res!970776) (not e!1454469))))

(assert (=> b!2270810 (= res!970776 (not call!136094))))

(declare-fun bm!136089 () Bool)

(assert (=> bm!136089 (= call!136094 (isEmpty!15296 (tail!3275 (list!10466 (charsOf!2693 (head!4898 tokens!456))))))))

(declare-fun b!2270811 () Bool)

(assert (=> b!2270811 (= e!1454468 (matchR!2910 (derivativeStep!1492 (derivativeStep!1492 (regex!4305 r!2363) (head!4900 (list!10466 (charsOf!2693 (head!4898 tokens!456))))) (head!4900 (tail!3275 (list!10466 (charsOf!2693 (head!4898 tokens!456)))))) (tail!3275 (tail!3275 (list!10466 (charsOf!2693 (head!4898 tokens!456)))))))))

(assert (= (and d!672214 c!360515) b!2270802))

(assert (= (and d!672214 (not c!360515)) b!2270811))

(assert (= (and d!672214 c!360514) b!2270801))

(assert (= (and d!672214 (not c!360514)) b!2270805))

(assert (= (and b!2270805 c!360513) b!2270809))

(assert (= (and b!2270805 (not c!360513)) b!2270806))

(assert (= (and b!2270806 (not res!970779)) b!2270807))

(assert (= (and b!2270807 res!970778) b!2270810))

(assert (= (and b!2270810 res!970776) b!2270798))

(assert (= (and b!2270798 res!970772) b!2270799))

(assert (= (and b!2270807 (not res!970775)) b!2270803))

(assert (= (and b!2270803 res!970773) b!2270804))

(assert (= (and b!2270804 (not res!970774)) b!2270808))

(assert (= (and b!2270808 (not res!970777)) b!2270800))

(assert (= (or b!2270801 b!2270804 b!2270810) bm!136089))

(assert (=> b!2270799 m!2699361))

(declare-fun m!2699727 () Bool)

(assert (=> b!2270799 m!2699727))

(assert (=> d!672214 m!2699361))

(assert (=> d!672214 m!2699363))

(assert (=> d!672214 m!2699365))

(declare-fun m!2699729 () Bool)

(assert (=> d!672214 m!2699729))

(assert (=> b!2270808 m!2699361))

(declare-fun m!2699731 () Bool)

(assert (=> b!2270808 m!2699731))

(assert (=> b!2270808 m!2699731))

(declare-fun m!2699733 () Bool)

(assert (=> b!2270808 m!2699733))

(assert (=> b!2270802 m!2699365))

(declare-fun m!2699735 () Bool)

(assert (=> b!2270802 m!2699735))

(assert (=> b!2270811 m!2699361))

(assert (=> b!2270811 m!2699727))

(assert (=> b!2270811 m!2699365))

(assert (=> b!2270811 m!2699727))

(declare-fun m!2699737 () Bool)

(assert (=> b!2270811 m!2699737))

(assert (=> b!2270811 m!2699361))

(assert (=> b!2270811 m!2699731))

(assert (=> b!2270811 m!2699737))

(assert (=> b!2270811 m!2699731))

(declare-fun m!2699739 () Bool)

(assert (=> b!2270811 m!2699739))

(assert (=> b!2270798 m!2699361))

(assert (=> b!2270798 m!2699731))

(assert (=> b!2270798 m!2699731))

(assert (=> b!2270798 m!2699733))

(assert (=> bm!136089 m!2699361))

(assert (=> bm!136089 m!2699363))

(assert (=> b!2270800 m!2699361))

(assert (=> b!2270800 m!2699727))

(assert (=> b!2270575 d!672214))

(declare-fun b!2270849 () Bool)

(declare-fun e!1454499 () Regex!6653)

(assert (=> b!2270849 (= e!1454499 EmptyLang!6653)))

(declare-fun b!2270850 () Bool)

(declare-fun e!1454498 () Regex!6653)

(declare-fun call!136106 () Regex!6653)

(declare-fun call!136104 () Regex!6653)

(assert (=> b!2270850 (= e!1454498 (Union!6653 call!136106 call!136104))))

(declare-fun b!2270851 () Bool)

(declare-fun e!1454501 () Regex!6653)

(declare-fun call!136105 () Regex!6653)

(assert (=> b!2270851 (= e!1454501 (Union!6653 (Concat!11121 call!136105 (regTwo!13818 (regex!4305 r!2363))) EmptyLang!6653))))

(declare-fun b!2270852 () Bool)

(declare-fun e!1454500 () Regex!6653)

(declare-fun call!136103 () Regex!6653)

(assert (=> b!2270852 (= e!1454500 (Concat!11121 call!136103 (regex!4305 r!2363)))))

(declare-fun b!2270853 () Bool)

(declare-fun e!1454502 () Regex!6653)

(assert (=> b!2270853 (= e!1454499 e!1454502)))

(declare-fun c!360533 () Bool)

(assert (=> b!2270853 (= c!360533 ((_ is ElementMatch!6653) (regex!4305 r!2363)))))

(declare-fun b!2270854 () Bool)

(assert (=> b!2270854 (= e!1454501 (Union!6653 (Concat!11121 call!136105 (regTwo!13818 (regex!4305 r!2363))) call!136104))))

(declare-fun bm!136098 () Bool)

(assert (=> bm!136098 (= call!136105 call!136103)))

(declare-fun c!360529 () Bool)

(declare-fun bm!136099 () Bool)

(assert (=> bm!136099 (= call!136104 (derivativeStep!1492 (ite c!360529 (regTwo!13819 (regex!4305 r!2363)) (regTwo!13818 (regex!4305 r!2363))) (head!4900 (list!10466 (charsOf!2693 (head!4898 tokens!456))))))))

(declare-fun bm!136100 () Bool)

(declare-fun c!360531 () Bool)

(assert (=> bm!136100 (= call!136106 (derivativeStep!1492 (ite c!360529 (regOne!13819 (regex!4305 r!2363)) (ite c!360531 (reg!6982 (regex!4305 r!2363)) (regOne!13818 (regex!4305 r!2363)))) (head!4900 (list!10466 (charsOf!2693 (head!4898 tokens!456))))))))

(declare-fun bm!136101 () Bool)

(assert (=> bm!136101 (= call!136103 call!136106)))

(declare-fun b!2270856 () Bool)

(assert (=> b!2270856 (= e!1454502 (ite (= (head!4900 (list!10466 (charsOf!2693 (head!4898 tokens!456)))) (c!360419 (regex!4305 r!2363))) EmptyExpr!6653 EmptyLang!6653))))

(declare-fun b!2270855 () Bool)

(assert (=> b!2270855 (= e!1454498 e!1454500)))

(assert (=> b!2270855 (= c!360531 ((_ is Star!6653) (regex!4305 r!2363)))))

(declare-fun d!672218 () Bool)

(declare-fun lt!843718 () Regex!6653)

(assert (=> d!672218 (validRegex!2494 lt!843718)))

(assert (=> d!672218 (= lt!843718 e!1454499)))

(declare-fun c!360530 () Bool)

(assert (=> d!672218 (= c!360530 (or ((_ is EmptyExpr!6653) (regex!4305 r!2363)) ((_ is EmptyLang!6653) (regex!4305 r!2363))))))

(assert (=> d!672218 (validRegex!2494 (regex!4305 r!2363))))

(assert (=> d!672218 (= (derivativeStep!1492 (regex!4305 r!2363) (head!4900 (list!10466 (charsOf!2693 (head!4898 tokens!456))))) lt!843718)))

(declare-fun b!2270857 () Bool)

(declare-fun c!360532 () Bool)

(assert (=> b!2270857 (= c!360532 (nullable!1832 (regOne!13818 (regex!4305 r!2363))))))

(assert (=> b!2270857 (= e!1454500 e!1454501)))

(declare-fun b!2270858 () Bool)

(assert (=> b!2270858 (= c!360529 ((_ is Union!6653) (regex!4305 r!2363)))))

(assert (=> b!2270858 (= e!1454502 e!1454498)))

(assert (= (and d!672218 c!360530) b!2270849))

(assert (= (and d!672218 (not c!360530)) b!2270853))

(assert (= (and b!2270853 c!360533) b!2270856))

(assert (= (and b!2270853 (not c!360533)) b!2270858))

(assert (= (and b!2270858 c!360529) b!2270850))

(assert (= (and b!2270858 (not c!360529)) b!2270855))

(assert (= (and b!2270855 c!360531) b!2270852))

(assert (= (and b!2270855 (not c!360531)) b!2270857))

(assert (= (and b!2270857 c!360532) b!2270854))

(assert (= (and b!2270857 (not c!360532)) b!2270851))

(assert (= (or b!2270854 b!2270851) bm!136098))

(assert (= (or b!2270852 bm!136098) bm!136101))

(assert (= (or b!2270850 bm!136101) bm!136100))

(assert (= (or b!2270850 b!2270854) bm!136099))

(assert (=> bm!136099 m!2699357))

(declare-fun m!2699777 () Bool)

(assert (=> bm!136099 m!2699777))

(assert (=> bm!136100 m!2699357))

(declare-fun m!2699779 () Bool)

(assert (=> bm!136100 m!2699779))

(declare-fun m!2699781 () Bool)

(assert (=> d!672218 m!2699781))

(assert (=> d!672218 m!2699343))

(declare-fun m!2699783 () Bool)

(assert (=> b!2270857 m!2699783))

(assert (=> b!2270575 d!672218))

(assert (=> b!2270575 d!672154))

(assert (=> b!2270575 d!672196))

(declare-fun bs!455998 () Bool)

(declare-fun d!672244 () Bool)

(assert (= bs!455998 (and d!672244 d!672174)))

(declare-fun lambda!85493 () Int)

(assert (=> bs!455998 (= (and (= (toChars!5926 (transformation!4305 otherR!12)) (toChars!5926 (transformation!4305 r!2363))) (= (toValue!6067 (transformation!4305 otherR!12)) (toValue!6067 (transformation!4305 r!2363)))) (= lambda!85493 lambda!85486))))

(assert (=> d!672244 true))

(assert (=> d!672244 (< (dynLambda!11710 order!15061 (toChars!5926 (transformation!4305 otherR!12))) (dynLambda!11711 order!15063 lambda!85493))))

(assert (=> d!672244 true))

(assert (=> d!672244 (< (dynLambda!11707 order!15057 (toValue!6067 (transformation!4305 otherR!12))) (dynLambda!11711 order!15063 lambda!85493))))

(assert (=> d!672244 (= (semiInverseModEq!1734 (toChars!5926 (transformation!4305 otherR!12)) (toValue!6067 (transformation!4305 otherR!12))) (Forall!1077 lambda!85493))))

(declare-fun bs!455999 () Bool)

(assert (= bs!455999 d!672244))

(declare-fun m!2699789 () Bool)

(assert (=> bs!455999 m!2699789))

(assert (=> d!672084 d!672244))

(declare-fun b!2270859 () Bool)

(declare-fun e!1454503 () Bool)

(assert (=> b!2270859 (= e!1454503 (inv!15 (value!136512 (h!32405 (t!202508 tokens!456)))))))

(declare-fun b!2270860 () Bool)

(declare-fun res!970791 () Bool)

(assert (=> b!2270860 (=> res!970791 e!1454503)))

(assert (=> b!2270860 (= res!970791 (not ((_ is IntegerValue!13403) (value!136512 (h!32405 (t!202508 tokens!456))))))))

(declare-fun e!1454505 () Bool)

(assert (=> b!2270860 (= e!1454505 e!1454503)))

(declare-fun b!2270861 () Bool)

(assert (=> b!2270861 (= e!1454505 (inv!17 (value!136512 (h!32405 (t!202508 tokens!456)))))))

(declare-fun b!2270862 () Bool)

(declare-fun e!1454504 () Bool)

(assert (=> b!2270862 (= e!1454504 (inv!16 (value!136512 (h!32405 (t!202508 tokens!456)))))))

(declare-fun d!672254 () Bool)

(declare-fun c!360534 () Bool)

(assert (=> d!672254 (= c!360534 ((_ is IntegerValue!13401) (value!136512 (h!32405 (t!202508 tokens!456)))))))

(assert (=> d!672254 (= (inv!21 (value!136512 (h!32405 (t!202508 tokens!456)))) e!1454504)))

(declare-fun b!2270863 () Bool)

(assert (=> b!2270863 (= e!1454504 e!1454505)))

(declare-fun c!360535 () Bool)

(assert (=> b!2270863 (= c!360535 ((_ is IntegerValue!13402) (value!136512 (h!32405 (t!202508 tokens!456)))))))

(assert (= (and d!672254 c!360534) b!2270862))

(assert (= (and d!672254 (not c!360534)) b!2270863))

(assert (= (and b!2270863 c!360535) b!2270861))

(assert (= (and b!2270863 (not c!360535)) b!2270860))

(assert (= (and b!2270860 (not res!970791)) b!2270859))

(declare-fun m!2699791 () Bool)

(assert (=> b!2270859 m!2699791))

(declare-fun m!2699793 () Bool)

(assert (=> b!2270861 m!2699793))

(declare-fun m!2699795 () Bool)

(assert (=> b!2270862 m!2699795))

(assert (=> b!2270593 d!672254))

(assert (=> d!672054 d!672160))

(declare-fun d!672256 () Bool)

(declare-fun lt!843719 () Bool)

(assert (=> d!672256 (= lt!843719 (select (content!3600 (t!202507 rules!1750)) otherR!12))))

(declare-fun e!1454507 () Bool)

(assert (=> d!672256 (= lt!843719 e!1454507)))

(declare-fun res!970793 () Bool)

(assert (=> d!672256 (=> (not res!970793) (not e!1454507))))

(assert (=> d!672256 (= res!970793 ((_ is Cons!27003) (t!202507 rules!1750)))))

(assert (=> d!672256 (= (contains!4667 (t!202507 rules!1750) otherR!12) lt!843719)))

(declare-fun b!2270864 () Bool)

(declare-fun e!1454506 () Bool)

(assert (=> b!2270864 (= e!1454507 e!1454506)))

(declare-fun res!970792 () Bool)

(assert (=> b!2270864 (=> res!970792 e!1454506)))

(assert (=> b!2270864 (= res!970792 (= (h!32404 (t!202507 rules!1750)) otherR!12))))

(declare-fun b!2270865 () Bool)

(assert (=> b!2270865 (= e!1454506 (contains!4667 (t!202507 (t!202507 rules!1750)) otherR!12))))

(assert (= (and d!672256 res!970793) b!2270864))

(assert (= (and b!2270864 (not res!970792)) b!2270865))

(assert (=> d!672256 m!2699415))

(declare-fun m!2699797 () Bool)

(assert (=> d!672256 m!2699797))

(declare-fun m!2699799 () Bool)

(assert (=> b!2270865 m!2699799))

(assert (=> b!2270409 d!672256))

(declare-fun d!672258 () Bool)

(assert (=> d!672258 (= (isEmpty!15296 (list!10466 (charsOf!2693 (head!4898 tokens!456)))) ((_ is Nil!27001) (list!10466 (charsOf!2693 (head!4898 tokens!456)))))))

(assert (=> d!672098 d!672258))

(assert (=> d!672098 d!672182))

(assert (=> b!2270572 d!672194))

(assert (=> b!2270572 d!672196))

(declare-fun bs!456000 () Bool)

(declare-fun d!672260 () Bool)

(assert (= bs!456000 (and d!672260 d!672174)))

(declare-fun lambda!85494 () Int)

(assert (=> bs!456000 (= (and (= (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (toChars!5926 (transformation!4305 r!2363))) (= (toValue!6067 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (toValue!6067 (transformation!4305 r!2363)))) (= lambda!85494 lambda!85486))))

(declare-fun bs!456001 () Bool)

(assert (= bs!456001 (and d!672260 d!672244)))

(assert (=> bs!456001 (= (and (= (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (toChars!5926 (transformation!4305 otherR!12))) (= (toValue!6067 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (toValue!6067 (transformation!4305 otherR!12)))) (= lambda!85494 lambda!85493))))

(assert (=> d!672260 true))

(assert (=> d!672260 (< (dynLambda!11710 order!15061 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456))))) (dynLambda!11711 order!15063 lambda!85494))))

(assert (=> d!672260 true))

(assert (=> d!672260 (< (dynLambda!11707 order!15057 (toValue!6067 (transformation!4305 (rule!6623 (h!32405 tokens!456))))) (dynLambda!11711 order!15063 lambda!85494))))

(assert (=> d!672260 (= (semiInverseModEq!1734 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (toValue!6067 (transformation!4305 (rule!6623 (h!32405 tokens!456))))) (Forall!1077 lambda!85494))))

(declare-fun bs!456002 () Bool)

(assert (= bs!456002 d!672260))

(declare-fun m!2699801 () Bool)

(assert (=> bs!456002 m!2699801))

(assert (=> d!672096 d!672260))

(declare-fun d!672262 () Bool)

(declare-fun res!970794 () Bool)

(declare-fun e!1454512 () Bool)

(assert (=> d!672262 (=> (not res!970794) (not e!1454512))))

(assert (=> d!672262 (= res!970794 (validRegex!2494 (regex!4305 (h!32404 rules!1750))))))

(assert (=> d!672262 (= (ruleValid!1395 thiss!16613 (h!32404 rules!1750)) e!1454512)))

(declare-fun b!2270874 () Bool)

(declare-fun res!970795 () Bool)

(assert (=> b!2270874 (=> (not res!970795) (not e!1454512))))

(assert (=> b!2270874 (= res!970795 (not (nullable!1832 (regex!4305 (h!32404 rules!1750)))))))

(declare-fun b!2270875 () Bool)

(assert (=> b!2270875 (= e!1454512 (not (= (tag!4795 (h!32404 rules!1750)) (String!29440 ""))))))

(assert (= (and d!672262 res!970794) b!2270874))

(assert (= (and b!2270874 res!970795) b!2270875))

(declare-fun m!2699803 () Bool)

(assert (=> d!672262 m!2699803))

(declare-fun m!2699805 () Bool)

(assert (=> b!2270874 m!2699805))

(assert (=> b!2270497 d!672262))

(declare-fun d!672264 () Bool)

(declare-fun charsToInt!0 (List!27096) (_ BitVec 32))

(assert (=> d!672264 (= (inv!16 (value!136512 (h!32405 tokens!456))) (= (charsToInt!0 (text!31716 (value!136512 (h!32405 tokens!456)))) (value!136503 (value!136512 (h!32405 tokens!456)))))))

(declare-fun bs!456003 () Bool)

(assert (= bs!456003 d!672264))

(declare-fun m!2699819 () Bool)

(assert (=> bs!456003 m!2699819))

(assert (=> b!2270521 d!672264))

(declare-fun d!672270 () Bool)

(declare-fun c!360552 () Bool)

(assert (=> d!672270 (= c!360552 ((_ is Empty!8758) (c!360418 (charsOf!2693 (head!4898 tokens!456)))))))

(declare-fun e!1454538 () List!27095)

(assert (=> d!672270 (= (list!10470 (c!360418 (charsOf!2693 (head!4898 tokens!456)))) e!1454538)))

(declare-fun b!2270916 () Bool)

(declare-fun e!1454539 () List!27095)

(assert (=> b!2270916 (= e!1454539 (++!6580 (list!10470 (left!20487 (c!360418 (charsOf!2693 (head!4898 tokens!456))))) (list!10470 (right!20817 (c!360418 (charsOf!2693 (head!4898 tokens!456)))))))))

(declare-fun b!2270914 () Bool)

(assert (=> b!2270914 (= e!1454538 e!1454539)))

(declare-fun c!360553 () Bool)

(assert (=> b!2270914 (= c!360553 ((_ is Leaf!12896) (c!360418 (charsOf!2693 (head!4898 tokens!456)))))))

(declare-fun b!2270913 () Bool)

(assert (=> b!2270913 (= e!1454538 Nil!27001)))

(declare-fun b!2270915 () Bool)

(declare-fun list!10473 (IArray!17521) List!27095)

(assert (=> b!2270915 (= e!1454539 (list!10473 (xs!11700 (c!360418 (charsOf!2693 (head!4898 tokens!456))))))))

(assert (= (and d!672270 c!360552) b!2270913))

(assert (= (and d!672270 (not c!360552)) b!2270914))

(assert (= (and b!2270914 c!360553) b!2270915))

(assert (= (and b!2270914 (not c!360553)) b!2270916))

(declare-fun m!2699827 () Bool)

(assert (=> b!2270916 m!2699827))

(declare-fun m!2699829 () Bool)

(assert (=> b!2270916 m!2699829))

(assert (=> b!2270916 m!2699827))

(assert (=> b!2270916 m!2699829))

(declare-fun m!2699831 () Bool)

(assert (=> b!2270916 m!2699831))

(declare-fun m!2699833 () Bool)

(assert (=> b!2270915 m!2699833))

(assert (=> d!672100 d!672270))

(declare-fun d!672274 () Bool)

(declare-fun res!970813 () Bool)

(declare-fun e!1454544 () Bool)

(assert (=> d!672274 (=> res!970813 e!1454544)))

(assert (=> d!672274 (= res!970813 ((_ is Nil!27003) rules!1750))))

(assert (=> d!672274 (= (forall!5480 rules!1750 lambda!85469) e!1454544)))

(declare-fun b!2270921 () Bool)

(declare-fun e!1454545 () Bool)

(assert (=> b!2270921 (= e!1454544 e!1454545)))

(declare-fun res!970814 () Bool)

(assert (=> b!2270921 (=> (not res!970814) (not e!1454545))))

(declare-fun dynLambda!11712 (Int Rule!8410) Bool)

(assert (=> b!2270921 (= res!970814 (dynLambda!11712 lambda!85469 (h!32404 rules!1750)))))

(declare-fun b!2270922 () Bool)

(assert (=> b!2270922 (= e!1454545 (forall!5480 (t!202507 rules!1750) lambda!85469))))

(assert (= (and d!672274 (not res!970813)) b!2270921))

(assert (= (and b!2270921 res!970814) b!2270922))

(declare-fun b_lambda!72359 () Bool)

(assert (=> (not b_lambda!72359) (not b!2270921)))

(declare-fun m!2699835 () Bool)

(assert (=> b!2270921 m!2699835))

(declare-fun m!2699837 () Bool)

(assert (=> b!2270922 m!2699837))

(assert (=> d!672070 d!672274))

(declare-fun d!672276 () Bool)

(declare-fun lt!843721 () Int)

(assert (=> d!672276 (>= lt!843721 0)))

(declare-fun e!1454546 () Int)

(assert (=> d!672276 (= lt!843721 e!1454546)))

(declare-fun c!360554 () Bool)

(assert (=> d!672276 (= c!360554 ((_ is Nil!27001) (t!202505 otherP!12)))))

(assert (=> d!672276 (= (size!21194 (t!202505 otherP!12)) lt!843721)))

(declare-fun b!2270923 () Bool)

(assert (=> b!2270923 (= e!1454546 0)))

(declare-fun b!2270924 () Bool)

(assert (=> b!2270924 (= e!1454546 (+ 1 (size!21194 (t!202505 (t!202505 otherP!12)))))))

(assert (= (and d!672276 c!360554) b!2270923))

(assert (= (and d!672276 (not c!360554)) b!2270924))

(declare-fun m!2699839 () Bool)

(assert (=> b!2270924 m!2699839))

(assert (=> b!2270507 d!672276))

(declare-fun d!672278 () Bool)

(declare-fun lt!843722 () Int)

(assert (=> d!672278 (= lt!843722 (size!21194 (list!10466 (_2!15844 lt!843437))))))

(assert (=> d!672278 (= lt!843722 (size!21198 (c!360418 (_2!15844 lt!843437))))))

(assert (=> d!672278 (= (size!21193 (_2!15844 lt!843437)) lt!843722)))

(declare-fun bs!456004 () Bool)

(assert (= bs!456004 d!672278))

(assert (=> bs!456004 m!2699241))

(assert (=> bs!456004 m!2699241))

(declare-fun m!2699841 () Bool)

(assert (=> bs!456004 m!2699841))

(declare-fun m!2699843 () Bool)

(assert (=> bs!456004 m!2699843))

(assert (=> b!2270403 d!672278))

(declare-fun d!672280 () Bool)

(declare-fun lt!843723 () Int)

(assert (=> d!672280 (= lt!843723 (size!21194 (list!10466 (seqFromList!3009 input!1722))))))

(assert (=> d!672280 (= lt!843723 (size!21198 (c!360418 (seqFromList!3009 input!1722))))))

(assert (=> d!672280 (= (size!21193 (seqFromList!3009 input!1722)) lt!843723)))

(declare-fun bs!456005 () Bool)

(assert (= bs!456005 d!672280))

(assert (=> bs!456005 m!2699103))

(assert (=> bs!456005 m!2699243))

(assert (=> bs!456005 m!2699243))

(assert (=> bs!456005 m!2699571))

(declare-fun m!2699845 () Bool)

(assert (=> bs!456005 m!2699845))

(assert (=> b!2270403 d!672280))

(declare-fun d!672282 () Bool)

(declare-fun lt!843724 () Int)

(assert (=> d!672282 (>= lt!843724 0)))

(declare-fun e!1454547 () Int)

(assert (=> d!672282 (= lt!843724 e!1454547)))

(declare-fun c!360555 () Bool)

(assert (=> d!672282 (= c!360555 ((_ is Nil!27001) input!1722))))

(assert (=> d!672282 (= (size!21194 input!1722) lt!843724)))

(declare-fun b!2270925 () Bool)

(assert (=> b!2270925 (= e!1454547 0)))

(declare-fun b!2270926 () Bool)

(assert (=> b!2270926 (= e!1454547 (+ 1 (size!21194 (t!202505 input!1722))))))

(assert (= (and d!672282 c!360555) b!2270925))

(assert (= (and d!672282 (not c!360555)) b!2270926))

(declare-fun m!2699847 () Bool)

(assert (=> b!2270926 m!2699847))

(assert (=> b!2270275 d!672282))

(assert (=> b!2270275 d!672078))

(declare-fun bs!456006 () Bool)

(declare-fun d!672284 () Bool)

(assert (= bs!456006 (and d!672284 d!672174)))

(declare-fun lambda!85495 () Int)

(assert (=> bs!456006 (= (and (= (toChars!5926 (transformation!4305 (h!32404 rules!1750))) (toChars!5926 (transformation!4305 r!2363))) (= (toValue!6067 (transformation!4305 (h!32404 rules!1750))) (toValue!6067 (transformation!4305 r!2363)))) (= lambda!85495 lambda!85486))))

(declare-fun bs!456007 () Bool)

(assert (= bs!456007 (and d!672284 d!672244)))

(assert (=> bs!456007 (= (and (= (toChars!5926 (transformation!4305 (h!32404 rules!1750))) (toChars!5926 (transformation!4305 otherR!12))) (= (toValue!6067 (transformation!4305 (h!32404 rules!1750))) (toValue!6067 (transformation!4305 otherR!12)))) (= lambda!85495 lambda!85493))))

(declare-fun bs!456008 () Bool)

(assert (= bs!456008 (and d!672284 d!672260)))

(assert (=> bs!456008 (= (and (= (toChars!5926 (transformation!4305 (h!32404 rules!1750))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456))))) (= (toValue!6067 (transformation!4305 (h!32404 rules!1750))) (toValue!6067 (transformation!4305 (rule!6623 (h!32405 tokens!456)))))) (= lambda!85495 lambda!85494))))

(assert (=> d!672284 true))

(assert (=> d!672284 (< (dynLambda!11710 order!15061 (toChars!5926 (transformation!4305 (h!32404 rules!1750)))) (dynLambda!11711 order!15063 lambda!85495))))

(assert (=> d!672284 true))

(assert (=> d!672284 (< (dynLambda!11707 order!15057 (toValue!6067 (transformation!4305 (h!32404 rules!1750)))) (dynLambda!11711 order!15063 lambda!85495))))

(assert (=> d!672284 (= (semiInverseModEq!1734 (toChars!5926 (transformation!4305 (h!32404 rules!1750))) (toValue!6067 (transformation!4305 (h!32404 rules!1750)))) (Forall!1077 lambda!85495))))

(declare-fun bs!456009 () Bool)

(assert (= bs!456009 d!672284))

(declare-fun m!2699855 () Bool)

(assert (=> bs!456009 m!2699855))

(assert (=> d!672064 d!672284))

(declare-fun d!672288 () Bool)

(assert (=> d!672288 (= (isEmpty!15296 (originalCharacters!5075 (h!32405 tokens!456))) ((_ is Nil!27001) (originalCharacters!5075 (h!32405 tokens!456))))))

(assert (=> d!672060 d!672288))

(assert (=> b!2270528 d!672110))

(declare-fun d!672290 () Bool)

(assert (=> d!672290 (= (list!10465 (_1!15844 lt!843437)) (list!10469 (c!360420 (_1!15844 lt!843437))))))

(declare-fun bs!456011 () Bool)

(assert (= bs!456011 d!672290))

(declare-fun m!2699861 () Bool)

(assert (=> bs!456011 m!2699861))

(assert (=> b!2270401 d!672290))

(assert (=> b!2270401 d!672168))

(assert (=> b!2270401 d!672170))

(assert (=> b!2270563 d!672154))

(declare-fun d!672294 () Bool)

(assert (=> d!672294 (= (head!4900 otherP!12) (h!32402 otherP!12))))

(assert (=> b!2270273 d!672294))

(declare-fun d!672296 () Bool)

(assert (=> d!672296 (= (head!4900 input!1722) (h!32402 input!1722))))

(assert (=> b!2270273 d!672296))

(declare-fun bs!456013 () Bool)

(declare-fun d!672300 () Bool)

(assert (= bs!456013 (and d!672300 d!672158)))

(declare-fun lambda!85496 () Int)

(assert (=> bs!456013 (= (= (toValue!6067 (transformation!4305 r!2363)) (toValue!6067 (transformation!4305 (rule!6623 (h!32405 tokens!456))))) (= lambda!85496 lambda!85480))))

(assert (=> d!672300 true))

(assert (=> d!672300 (< (dynLambda!11707 order!15057 (toValue!6067 (transformation!4305 r!2363))) (dynLambda!11708 order!15059 lambda!85496))))

(assert (=> d!672300 (= (equivClasses!1653 (toChars!5926 (transformation!4305 r!2363)) (toValue!6067 (transformation!4305 r!2363))) (Forall2!693 lambda!85496))))

(declare-fun bs!456014 () Bool)

(assert (= bs!456014 d!672300))

(declare-fun m!2699865 () Bool)

(assert (=> bs!456014 m!2699865))

(assert (=> b!2270426 d!672300))

(declare-fun d!672302 () Bool)

(assert (=> d!672302 (= (list!10466 lt!843451) (list!10470 (c!360418 lt!843451)))))

(declare-fun bs!456015 () Bool)

(assert (= bs!456015 d!672302))

(declare-fun m!2699867 () Bool)

(assert (=> bs!456015 m!2699867))

(assert (=> d!672076 d!672302))

(declare-fun d!672304 () Bool)

(assert (=> d!672304 (= (inv!36554 (tag!4795 (rule!6623 (h!32405 (t!202508 tokens!456))))) (= (mod (str.len (value!136511 (tag!4795 (rule!6623 (h!32405 (t!202508 tokens!456)))))) 2) 0))))

(assert (=> b!2270594 d!672304))

(declare-fun d!672306 () Bool)

(declare-fun res!970820 () Bool)

(declare-fun e!1454557 () Bool)

(assert (=> d!672306 (=> (not res!970820) (not e!1454557))))

(assert (=> d!672306 (= res!970820 (semiInverseModEq!1734 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456))))) (toValue!6067 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456)))))))))

(assert (=> d!672306 (= (inv!36557 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456))))) e!1454557)))

(declare-fun b!2270940 () Bool)

(assert (=> b!2270940 (= e!1454557 (equivClasses!1653 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456))))) (toValue!6067 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456)))))))))

(assert (= (and d!672306 res!970820) b!2270940))

(declare-fun m!2699869 () Bool)

(assert (=> d!672306 m!2699869))

(declare-fun m!2699871 () Bool)

(assert (=> b!2270940 m!2699871))

(assert (=> b!2270594 d!672306))

(assert (=> bm!136079 d!672258))

(declare-fun d!672308 () Bool)

(declare-fun lt!843731 () Bool)

(assert (=> d!672308 (= lt!843731 (isEmpty!15291 (list!10465 (_1!15844 lt!843437))))))

(declare-fun isEmpty!15298 (Conc!8759) Bool)

(assert (=> d!672308 (= lt!843731 (isEmpty!15298 (c!360420 (_1!15844 lt!843437))))))

(assert (=> d!672308 (= (isEmpty!15295 (_1!15844 lt!843437)) lt!843731)))

(declare-fun bs!456018 () Bool)

(assert (= bs!456018 d!672308))

(assert (=> bs!456018 m!2699249))

(assert (=> bs!456018 m!2699249))

(declare-fun m!2699883 () Bool)

(assert (=> bs!456018 m!2699883))

(declare-fun m!2699885 () Bool)

(assert (=> bs!456018 m!2699885))

(assert (=> b!2270400 d!672308))

(declare-fun d!672316 () Bool)

(declare-fun c!360567 () Bool)

(assert (=> d!672316 (= c!360567 ((_ is Node!8758) (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (value!136512 (h!32405 tokens!456))))))))

(declare-fun e!1454573 () Bool)

(assert (=> d!672316 (= (inv!36561 (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (value!136512 (h!32405 tokens!456))))) e!1454573)))

(declare-fun b!2270967 () Bool)

(declare-fun inv!36565 (Conc!8758) Bool)

(assert (=> b!2270967 (= e!1454573 (inv!36565 (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (value!136512 (h!32405 tokens!456))))))))

(declare-fun b!2270968 () Bool)

(declare-fun e!1454574 () Bool)

(assert (=> b!2270968 (= e!1454573 e!1454574)))

(declare-fun res!970833 () Bool)

(assert (=> b!2270968 (= res!970833 (not ((_ is Leaf!12896) (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (value!136512 (h!32405 tokens!456)))))))))

(assert (=> b!2270968 (=> res!970833 e!1454574)))

(declare-fun b!2270969 () Bool)

(declare-fun inv!36566 (Conc!8758) Bool)

(assert (=> b!2270969 (= e!1454574 (inv!36566 (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (value!136512 (h!32405 tokens!456))))))))

(assert (= (and d!672316 c!360567) b!2270967))

(assert (= (and d!672316 (not c!360567)) b!2270968))

(assert (= (and b!2270968 (not res!970833)) b!2270969))

(declare-fun m!2699901 () Bool)

(assert (=> b!2270967 m!2699901))

(declare-fun m!2699903 () Bool)

(assert (=> b!2270969 m!2699903))

(assert (=> b!2270422 d!672316))

(declare-fun bs!456019 () Bool)

(declare-fun d!672320 () Bool)

(assert (= bs!456019 (and d!672320 d!672158)))

(declare-fun lambda!85498 () Int)

(assert (=> bs!456019 (= (= (toValue!6067 (transformation!4305 otherR!12)) (toValue!6067 (transformation!4305 (rule!6623 (h!32405 tokens!456))))) (= lambda!85498 lambda!85480))))

(declare-fun bs!456020 () Bool)

(assert (= bs!456020 (and d!672320 d!672300)))

(assert (=> bs!456020 (= (= (toValue!6067 (transformation!4305 otherR!12)) (toValue!6067 (transformation!4305 r!2363))) (= lambda!85498 lambda!85496))))

(assert (=> d!672320 true))

(assert (=> d!672320 (< (dynLambda!11707 order!15057 (toValue!6067 (transformation!4305 otherR!12))) (dynLambda!11708 order!15059 lambda!85498))))

(assert (=> d!672320 (= (equivClasses!1653 (toChars!5926 (transformation!4305 otherR!12)) (toValue!6067 (transformation!4305 otherR!12))) (Forall2!693 lambda!85498))))

(declare-fun bs!456021 () Bool)

(assert (= bs!456021 d!672320))

(declare-fun m!2699905 () Bool)

(assert (=> bs!456021 m!2699905))

(assert (=> b!2270523 d!672320))

(declare-fun d!672322 () Bool)

(declare-fun c!360568 () Bool)

(assert (=> d!672322 (= c!360568 ((_ is Empty!8758) (c!360418 (_2!15844 lt!843402))))))

(declare-fun e!1454575 () List!27095)

(assert (=> d!672322 (= (list!10470 (c!360418 (_2!15844 lt!843402))) e!1454575)))

(declare-fun b!2270973 () Bool)

(declare-fun e!1454576 () List!27095)

(assert (=> b!2270973 (= e!1454576 (++!6580 (list!10470 (left!20487 (c!360418 (_2!15844 lt!843402)))) (list!10470 (right!20817 (c!360418 (_2!15844 lt!843402))))))))

(declare-fun b!2270971 () Bool)

(assert (=> b!2270971 (= e!1454575 e!1454576)))

(declare-fun c!360569 () Bool)

(assert (=> b!2270971 (= c!360569 ((_ is Leaf!12896) (c!360418 (_2!15844 lt!843402))))))

(declare-fun b!2270970 () Bool)

(assert (=> b!2270970 (= e!1454575 Nil!27001)))

(declare-fun b!2270972 () Bool)

(assert (=> b!2270972 (= e!1454576 (list!10473 (xs!11700 (c!360418 (_2!15844 lt!843402)))))))

(assert (= (and d!672322 c!360568) b!2270970))

(assert (= (and d!672322 (not c!360568)) b!2270971))

(assert (= (and b!2270971 c!360569) b!2270972))

(assert (= (and b!2270971 (not c!360569)) b!2270973))

(declare-fun m!2699907 () Bool)

(assert (=> b!2270973 m!2699907))

(declare-fun m!2699909 () Bool)

(assert (=> b!2270973 m!2699909))

(assert (=> b!2270973 m!2699907))

(assert (=> b!2270973 m!2699909))

(declare-fun m!2699911 () Bool)

(assert (=> b!2270973 m!2699911))

(declare-fun m!2699913 () Bool)

(assert (=> b!2270972 m!2699913))

(assert (=> d!672002 d!672322))

(declare-fun d!672324 () Bool)

(declare-fun lt!843733 () Int)

(assert (=> d!672324 (>= lt!843733 0)))

(declare-fun e!1454577 () Int)

(assert (=> d!672324 (= lt!843733 e!1454577)))

(declare-fun c!360570 () Bool)

(assert (=> d!672324 (= c!360570 ((_ is Nil!27001) (originalCharacters!5075 (h!32405 tokens!456))))))

(assert (=> d!672324 (= (size!21194 (originalCharacters!5075 (h!32405 tokens!456))) lt!843733)))

(declare-fun b!2270974 () Bool)

(assert (=> b!2270974 (= e!1454577 0)))

(declare-fun b!2270975 () Bool)

(assert (=> b!2270975 (= e!1454577 (+ 1 (size!21194 (t!202505 (originalCharacters!5075 (h!32405 tokens!456))))))))

(assert (= (and d!672324 c!360570) b!2270974))

(assert (= (and d!672324 (not c!360570)) b!2270975))

(declare-fun m!2699915 () Bool)

(assert (=> b!2270975 m!2699915))

(assert (=> b!2270417 d!672324))

(declare-fun d!672326 () Bool)

(declare-fun c!360585 () Bool)

(assert (=> d!672326 (= c!360585 ((_ is Empty!8759) (c!360420 (_1!15844 lt!843402))))))

(declare-fun e!1454592 () List!27098)

(assert (=> d!672326 (= (list!10469 (c!360420 (_1!15844 lt!843402))) e!1454592)))

(declare-fun b!2271005 () Bool)

(declare-fun e!1454593 () List!27098)

(assert (=> b!2271005 (= e!1454592 e!1454593)))

(declare-fun c!360586 () Bool)

(assert (=> b!2271005 (= c!360586 ((_ is Leaf!12897) (c!360420 (_1!15844 lt!843402))))))

(declare-fun b!2271007 () Bool)

(assert (=> b!2271007 (= e!1454593 (++!6582 (list!10469 (left!20488 (c!360420 (_1!15844 lt!843402)))) (list!10469 (right!20818 (c!360420 (_1!15844 lt!843402))))))))

(declare-fun b!2271006 () Bool)

(declare-fun list!10474 (IArray!17523) List!27098)

(assert (=> b!2271006 (= e!1454593 (list!10474 (xs!11701 (c!360420 (_1!15844 lt!843402)))))))

(declare-fun b!2271004 () Bool)

(assert (=> b!2271004 (= e!1454592 Nil!27004)))

(assert (= (and d!672326 c!360585) b!2271004))

(assert (= (and d!672326 (not c!360585)) b!2271005))

(assert (= (and b!2271005 c!360586) b!2271006))

(assert (= (and b!2271005 (not c!360586)) b!2271007))

(declare-fun m!2699917 () Bool)

(assert (=> b!2271007 m!2699917))

(declare-fun m!2699919 () Bool)

(assert (=> b!2271007 m!2699919))

(assert (=> b!2271007 m!2699917))

(assert (=> b!2271007 m!2699919))

(declare-fun m!2699921 () Bool)

(assert (=> b!2271007 m!2699921))

(declare-fun m!2699923 () Bool)

(assert (=> b!2271006 m!2699923))

(assert (=> d!672000 d!672326))

(declare-fun d!672328 () Bool)

(declare-fun res!970834 () Bool)

(declare-fun e!1454594 () Bool)

(assert (=> d!672328 (=> (not res!970834) (not e!1454594))))

(assert (=> d!672328 (= res!970834 (not (isEmpty!15296 (originalCharacters!5075 (h!32405 (t!202508 tokens!456))))))))

(assert (=> d!672328 (= (inv!36558 (h!32405 (t!202508 tokens!456))) e!1454594)))

(declare-fun b!2271008 () Bool)

(declare-fun res!970835 () Bool)

(assert (=> b!2271008 (=> (not res!970835) (not e!1454594))))

(assert (=> b!2271008 (= res!970835 (= (originalCharacters!5075 (h!32405 (t!202508 tokens!456))) (list!10466 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456))))) (value!136512 (h!32405 (t!202508 tokens!456)))))))))

(declare-fun b!2271009 () Bool)

(assert (=> b!2271009 (= e!1454594 (= (size!21192 (h!32405 (t!202508 tokens!456))) (size!21194 (originalCharacters!5075 (h!32405 (t!202508 tokens!456))))))))

(assert (= (and d!672328 res!970834) b!2271008))

(assert (= (and b!2271008 res!970835) b!2271009))

(declare-fun b_lambda!72361 () Bool)

(assert (=> (not b_lambda!72361) (not b!2271008)))

(declare-fun t!202578 () Bool)

(declare-fun tb!134763 () Bool)

(assert (=> (and b!2270248 (= (toChars!5926 (transformation!4305 r!2363)) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456)))))) t!202578) tb!134763))

(declare-fun b!2271010 () Bool)

(declare-fun e!1454595 () Bool)

(declare-fun tp!718927 () Bool)

(assert (=> b!2271010 (= e!1454595 (and (inv!36561 (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456))))) (value!136512 (h!32405 (t!202508 tokens!456)))))) tp!718927))))

(declare-fun result!164314 () Bool)

(assert (=> tb!134763 (= result!164314 (and (inv!36562 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456))))) (value!136512 (h!32405 (t!202508 tokens!456))))) e!1454595))))

(assert (= tb!134763 b!2271010))

(declare-fun m!2699925 () Bool)

(assert (=> b!2271010 m!2699925))

(declare-fun m!2699927 () Bool)

(assert (=> tb!134763 m!2699927))

(assert (=> b!2271008 t!202578))

(declare-fun b_and!178949 () Bool)

(assert (= b_and!178921 (and (=> t!202578 result!164314) b_and!178949)))

(declare-fun t!202580 () Bool)

(declare-fun tb!134765 () Bool)

(assert (=> (and b!2270227 (= (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456)))))) t!202580) tb!134765))

(declare-fun result!164316 () Bool)

(assert (= result!164316 result!164314))

(assert (=> b!2271008 t!202580))

(declare-fun b_and!178951 () Bool)

(assert (= b_and!178925 (and (=> t!202580 result!164316) b_and!178951)))

(declare-fun tb!134767 () Bool)

(declare-fun t!202582 () Bool)

(assert (=> (and b!2270230 (= (toChars!5926 (transformation!4305 (h!32404 rules!1750))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456)))))) t!202582) tb!134767))

(declare-fun result!164318 () Bool)

(assert (= result!164318 result!164314))

(assert (=> b!2271008 t!202582))

(declare-fun b_and!178953 () Bool)

(assert (= b_and!178923 (and (=> t!202582 result!164318) b_and!178953)))

(declare-fun t!202584 () Bool)

(declare-fun tb!134769 () Bool)

(assert (=> (and b!2270595 (= (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456))))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456)))))) t!202584) tb!134769))

(declare-fun result!164320 () Bool)

(assert (= result!164320 result!164314))

(assert (=> b!2271008 t!202584))

(declare-fun b_and!178955 () Bool)

(assert (= b_and!178931 (and (=> t!202584 result!164320) b_and!178955)))

(declare-fun tb!134771 () Bool)

(declare-fun t!202586 () Bool)

(assert (=> (and b!2270606 (= (toChars!5926 (transformation!4305 (h!32404 (t!202507 rules!1750)))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456)))))) t!202586) tb!134771))

(declare-fun result!164322 () Bool)

(assert (= result!164322 result!164314))

(assert (=> b!2271008 t!202586))

(declare-fun b_and!178957 () Bool)

(assert (= b_and!178935 (and (=> t!202586 result!164322) b_and!178957)))

(declare-fun tb!134773 () Bool)

(declare-fun t!202588 () Bool)

(assert (=> (and b!2270235 (= (toChars!5926 (transformation!4305 otherR!12)) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456)))))) t!202588) tb!134773))

(declare-fun result!164324 () Bool)

(assert (= result!164324 result!164314))

(assert (=> b!2271008 t!202588))

(declare-fun b_and!178959 () Bool)

(assert (= b_and!178927 (and (=> t!202588 result!164324) b_and!178959)))

(declare-fun m!2699929 () Bool)

(assert (=> d!672328 m!2699929))

(declare-fun m!2699931 () Bool)

(assert (=> b!2271008 m!2699931))

(assert (=> b!2271008 m!2699931))

(declare-fun m!2699933 () Bool)

(assert (=> b!2271008 m!2699933))

(declare-fun m!2699935 () Bool)

(assert (=> b!2271009 m!2699935))

(assert (=> b!2270592 d!672328))

(declare-fun d!672330 () Bool)

(declare-fun c!360587 () Bool)

(assert (=> d!672330 (= c!360587 ((_ is Node!8758) (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))) (value!136512 (head!4898 tokens!456))))))))

(declare-fun e!1454596 () Bool)

(assert (=> d!672330 (= (inv!36561 (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))) (value!136512 (head!4898 tokens!456))))) e!1454596)))

(declare-fun b!2271011 () Bool)

(assert (=> b!2271011 (= e!1454596 (inv!36565 (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))) (value!136512 (head!4898 tokens!456))))))))

(declare-fun b!2271012 () Bool)

(declare-fun e!1454597 () Bool)

(assert (=> b!2271012 (= e!1454596 e!1454597)))

(declare-fun res!970836 () Bool)

(assert (=> b!2271012 (= res!970836 (not ((_ is Leaf!12896) (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))) (value!136512 (head!4898 tokens!456)))))))))

(assert (=> b!2271012 (=> res!970836 e!1454597)))

(declare-fun b!2271013 () Bool)

(assert (=> b!2271013 (= e!1454597 (inv!36566 (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))) (value!136512 (head!4898 tokens!456))))))))

(assert (= (and d!672330 c!360587) b!2271011))

(assert (= (and d!672330 (not c!360587)) b!2271012))

(assert (= (and b!2271012 (not res!970836)) b!2271013))

(declare-fun m!2699937 () Bool)

(assert (=> b!2271011 m!2699937))

(declare-fun m!2699939 () Bool)

(assert (=> b!2271013 m!2699939))

(assert (=> b!2270501 d!672330))

(declare-fun d!672332 () Bool)

(declare-fun res!970841 () Bool)

(declare-fun e!1454607 () Bool)

(assert (=> d!672332 (=> res!970841 e!1454607)))

(assert (=> d!672332 (= res!970841 ((_ is Nil!27003) rules!1750))))

(assert (=> d!672332 (= (noDuplicateTag!1576 thiss!16613 rules!1750 Nil!27006) e!1454607)))

(declare-fun b!2271028 () Bool)

(declare-fun e!1454608 () Bool)

(assert (=> b!2271028 (= e!1454607 e!1454608)))

(declare-fun res!970842 () Bool)

(assert (=> b!2271028 (=> (not res!970842) (not e!1454608))))

(declare-fun contains!4669 (List!27100 String!29439) Bool)

(assert (=> b!2271028 (= res!970842 (not (contains!4669 Nil!27006 (tag!4795 (h!32404 rules!1750)))))))

(declare-fun b!2271029 () Bool)

(assert (=> b!2271029 (= e!1454608 (noDuplicateTag!1576 thiss!16613 (t!202507 rules!1750) (Cons!27006 (tag!4795 (h!32404 rules!1750)) Nil!27006)))))

(assert (= (and d!672332 (not res!970841)) b!2271028))

(assert (= (and b!2271028 res!970842) b!2271029))

(declare-fun m!2699941 () Bool)

(assert (=> b!2271028 m!2699941))

(declare-fun m!2699945 () Bool)

(assert (=> b!2271029 m!2699945))

(assert (=> b!2270532 d!672332))

(declare-fun bs!456022 () Bool)

(declare-fun d!672334 () Bool)

(assert (= bs!456022 (and d!672334 d!672158)))

(declare-fun lambda!85499 () Int)

(assert (=> bs!456022 (= (= (toValue!6067 (transformation!4305 (h!32404 rules!1750))) (toValue!6067 (transformation!4305 (rule!6623 (h!32405 tokens!456))))) (= lambda!85499 lambda!85480))))

(declare-fun bs!456023 () Bool)

(assert (= bs!456023 (and d!672334 d!672300)))

(assert (=> bs!456023 (= (= (toValue!6067 (transformation!4305 (h!32404 rules!1750))) (toValue!6067 (transformation!4305 r!2363))) (= lambda!85499 lambda!85496))))

(declare-fun bs!456024 () Bool)

(assert (= bs!456024 (and d!672334 d!672320)))

(assert (=> bs!456024 (= (= (toValue!6067 (transformation!4305 (h!32404 rules!1750))) (toValue!6067 (transformation!4305 otherR!12))) (= lambda!85499 lambda!85498))))

(assert (=> d!672334 true))

(assert (=> d!672334 (< (dynLambda!11707 order!15057 (toValue!6067 (transformation!4305 (h!32404 rules!1750)))) (dynLambda!11708 order!15059 lambda!85499))))

(assert (=> d!672334 (= (equivClasses!1653 (toChars!5926 (transformation!4305 (h!32404 rules!1750))) (toValue!6067 (transformation!4305 (h!32404 rules!1750)))) (Forall2!693 lambda!85499))))

(declare-fun bs!456025 () Bool)

(assert (= bs!456025 d!672334))

(declare-fun m!2699953 () Bool)

(assert (=> bs!456025 m!2699953))

(assert (=> b!2270425 d!672334))

(declare-fun e!1454609 () Bool)

(assert (=> b!2270629 (= tp!718917 e!1454609)))

(declare-fun b!2271031 () Bool)

(declare-fun tp!718928 () Bool)

(declare-fun tp!718932 () Bool)

(assert (=> b!2271031 (= e!1454609 (and tp!718928 tp!718932))))

(declare-fun b!2271030 () Bool)

(assert (=> b!2271030 (= e!1454609 tp_is_empty!10527)))

(declare-fun b!2271033 () Bool)

(declare-fun tp!718930 () Bool)

(declare-fun tp!718931 () Bool)

(assert (=> b!2271033 (= e!1454609 (and tp!718930 tp!718931))))

(declare-fun b!2271032 () Bool)

(declare-fun tp!718929 () Bool)

(assert (=> b!2271032 (= e!1454609 tp!718929)))

(assert (= (and b!2270629 ((_ is ElementMatch!6653) (reg!6982 (regex!4305 otherR!12)))) b!2271030))

(assert (= (and b!2270629 ((_ is Concat!11121) (reg!6982 (regex!4305 otherR!12)))) b!2271031))

(assert (= (and b!2270629 ((_ is Star!6653) (reg!6982 (regex!4305 otherR!12)))) b!2271032))

(assert (= (and b!2270629 ((_ is Union!6653) (reg!6982 (regex!4305 otherR!12)))) b!2271033))

(declare-fun e!1454610 () Bool)

(assert (=> b!2270628 (= tp!718916 e!1454610)))

(declare-fun b!2271035 () Bool)

(declare-fun tp!718933 () Bool)

(declare-fun tp!718937 () Bool)

(assert (=> b!2271035 (= e!1454610 (and tp!718933 tp!718937))))

(declare-fun b!2271034 () Bool)

(assert (=> b!2271034 (= e!1454610 tp_is_empty!10527)))

(declare-fun b!2271037 () Bool)

(declare-fun tp!718935 () Bool)

(declare-fun tp!718936 () Bool)

(assert (=> b!2271037 (= e!1454610 (and tp!718935 tp!718936))))

(declare-fun b!2271036 () Bool)

(declare-fun tp!718934 () Bool)

(assert (=> b!2271036 (= e!1454610 tp!718934)))

(assert (= (and b!2270628 ((_ is ElementMatch!6653) (regOne!13818 (regex!4305 otherR!12)))) b!2271034))

(assert (= (and b!2270628 ((_ is Concat!11121) (regOne!13818 (regex!4305 otherR!12)))) b!2271035))

(assert (= (and b!2270628 ((_ is Star!6653) (regOne!13818 (regex!4305 otherR!12)))) b!2271036))

(assert (= (and b!2270628 ((_ is Union!6653) (regOne!13818 (regex!4305 otherR!12)))) b!2271037))

(declare-fun e!1454611 () Bool)

(assert (=> b!2270628 (= tp!718920 e!1454611)))

(declare-fun b!2271039 () Bool)

(declare-fun tp!718938 () Bool)

(declare-fun tp!718942 () Bool)

(assert (=> b!2271039 (= e!1454611 (and tp!718938 tp!718942))))

(declare-fun b!2271038 () Bool)

(assert (=> b!2271038 (= e!1454611 tp_is_empty!10527)))

(declare-fun b!2271041 () Bool)

(declare-fun tp!718940 () Bool)

(declare-fun tp!718941 () Bool)

(assert (=> b!2271041 (= e!1454611 (and tp!718940 tp!718941))))

(declare-fun b!2271040 () Bool)

(declare-fun tp!718939 () Bool)

(assert (=> b!2271040 (= e!1454611 tp!718939)))

(assert (= (and b!2270628 ((_ is ElementMatch!6653) (regTwo!13818 (regex!4305 otherR!12)))) b!2271038))

(assert (= (and b!2270628 ((_ is Concat!11121) (regTwo!13818 (regex!4305 otherR!12)))) b!2271039))

(assert (= (and b!2270628 ((_ is Star!6653) (regTwo!13818 (regex!4305 otherR!12)))) b!2271040))

(assert (= (and b!2270628 ((_ is Union!6653) (regTwo!13818 (regex!4305 otherR!12)))) b!2271041))

(declare-fun b!2271042 () Bool)

(declare-fun e!1454612 () Bool)

(declare-fun tp!718943 () Bool)

(assert (=> b!2271042 (= e!1454612 (and tp_is_empty!10527 tp!718943))))

(assert (=> b!2270580 (= tp!718865 e!1454612)))

(assert (= (and b!2270580 ((_ is Cons!27001) (t!202505 (t!202505 otherP!12)))) b!2271042))

(declare-fun b!2271043 () Bool)

(declare-fun e!1454613 () Bool)

(declare-fun tp!718944 () Bool)

(assert (=> b!2271043 (= e!1454613 (and tp_is_empty!10527 tp!718944))))

(assert (=> b!2270581 (= tp!718866 e!1454613)))

(assert (= (and b!2270581 ((_ is Cons!27001) (t!202505 (t!202505 input!1722)))) b!2271043))

(declare-fun e!1454614 () Bool)

(assert (=> b!2270630 (= tp!718918 e!1454614)))

(declare-fun b!2271045 () Bool)

(declare-fun tp!718945 () Bool)

(declare-fun tp!718949 () Bool)

(assert (=> b!2271045 (= e!1454614 (and tp!718945 tp!718949))))

(declare-fun b!2271044 () Bool)

(assert (=> b!2271044 (= e!1454614 tp_is_empty!10527)))

(declare-fun b!2271047 () Bool)

(declare-fun tp!718947 () Bool)

(declare-fun tp!718948 () Bool)

(assert (=> b!2271047 (= e!1454614 (and tp!718947 tp!718948))))

(declare-fun b!2271046 () Bool)

(declare-fun tp!718946 () Bool)

(assert (=> b!2271046 (= e!1454614 tp!718946)))

(assert (= (and b!2270630 ((_ is ElementMatch!6653) (regOne!13819 (regex!4305 otherR!12)))) b!2271044))

(assert (= (and b!2270630 ((_ is Concat!11121) (regOne!13819 (regex!4305 otherR!12)))) b!2271045))

(assert (= (and b!2270630 ((_ is Star!6653) (regOne!13819 (regex!4305 otherR!12)))) b!2271046))

(assert (= (and b!2270630 ((_ is Union!6653) (regOne!13819 (regex!4305 otherR!12)))) b!2271047))

(declare-fun e!1454615 () Bool)

(assert (=> b!2270630 (= tp!718919 e!1454615)))

(declare-fun b!2271049 () Bool)

(declare-fun tp!718950 () Bool)

(declare-fun tp!718954 () Bool)

(assert (=> b!2271049 (= e!1454615 (and tp!718950 tp!718954))))

(declare-fun b!2271048 () Bool)

(assert (=> b!2271048 (= e!1454615 tp_is_empty!10527)))

(declare-fun b!2271051 () Bool)

(declare-fun tp!718952 () Bool)

(declare-fun tp!718953 () Bool)

(assert (=> b!2271051 (= e!1454615 (and tp!718952 tp!718953))))

(declare-fun b!2271050 () Bool)

(declare-fun tp!718951 () Bool)

(assert (=> b!2271050 (= e!1454615 tp!718951)))

(assert (= (and b!2270630 ((_ is ElementMatch!6653) (regTwo!13819 (regex!4305 otherR!12)))) b!2271048))

(assert (= (and b!2270630 ((_ is Concat!11121) (regTwo!13819 (regex!4305 otherR!12)))) b!2271049))

(assert (= (and b!2270630 ((_ is Star!6653) (regTwo!13819 (regex!4305 otherR!12)))) b!2271050))

(assert (= (and b!2270630 ((_ is Union!6653) (regTwo!13819 (regex!4305 otherR!12)))) b!2271051))

(declare-fun b!2271054 () Bool)

(declare-fun b_free!67517 () Bool)

(declare-fun b_next!68221 () Bool)

(assert (=> b!2271054 (= b_free!67517 (not b_next!68221))))

(declare-fun tp!718956 () Bool)

(declare-fun b_and!178961 () Bool)

(assert (=> b!2271054 (= tp!718956 b_and!178961)))

(declare-fun b_free!67519 () Bool)

(declare-fun b_next!68223 () Bool)

(assert (=> b!2271054 (= b_free!67519 (not b_next!68223))))

(declare-fun t!202590 () Bool)

(declare-fun tb!134775 () Bool)

(assert (=> (and b!2271054 (= (toChars!5926 (transformation!4305 (h!32404 (t!202507 (t!202507 rules!1750))))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456))))) t!202590) tb!134775))

(declare-fun result!164326 () Bool)

(assert (= result!164326 result!164252))

(assert (=> b!2270416 t!202590))

(declare-fun tb!134777 () Bool)

(declare-fun t!202592 () Bool)

(assert (=> (and b!2271054 (= (toChars!5926 (transformation!4305 (h!32404 (t!202507 (t!202507 rules!1750))))) (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456))))) t!202592) tb!134777))

(declare-fun result!164328 () Bool)

(assert (= result!164328 result!164278))

(assert (=> d!672076 t!202592))

(declare-fun tb!134779 () Bool)

(declare-fun t!202594 () Bool)

(assert (=> (and b!2271054 (= (toChars!5926 (transformation!4305 (h!32404 (t!202507 (t!202507 rules!1750))))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456)))))) t!202594) tb!134779))

(declare-fun result!164330 () Bool)

(assert (= result!164330 result!164314))

(assert (=> b!2271008 t!202594))

(declare-fun tp!718957 () Bool)

(declare-fun b_and!178963 () Bool)

(assert (=> b!2271054 (= tp!718957 (and (=> t!202590 result!164326) (=> t!202592 result!164328) (=> t!202594 result!164330) b_and!178963))))

(declare-fun e!1454618 () Bool)

(assert (=> b!2271054 (= e!1454618 (and tp!718956 tp!718957))))

(declare-fun tp!718958 () Bool)

(declare-fun b!2271053 () Bool)

(declare-fun e!1454616 () Bool)

(assert (=> b!2271053 (= e!1454616 (and tp!718958 (inv!36554 (tag!4795 (h!32404 (t!202507 (t!202507 rules!1750))))) (inv!36557 (transformation!4305 (h!32404 (t!202507 (t!202507 rules!1750))))) e!1454618))))

(declare-fun b!2271052 () Bool)

(declare-fun e!1454617 () Bool)

(declare-fun tp!718955 () Bool)

(assert (=> b!2271052 (= e!1454617 (and e!1454616 tp!718955))))

(assert (=> b!2270604 (= tp!718890 e!1454617)))

(assert (= b!2271053 b!2271054))

(assert (= b!2271052 b!2271053))

(assert (= (and b!2270604 ((_ is Cons!27003) (t!202507 (t!202507 rules!1750)))) b!2271052))

(declare-fun m!2699955 () Bool)

(assert (=> b!2271053 m!2699955))

(declare-fun m!2699957 () Bool)

(assert (=> b!2271053 m!2699957))

(declare-fun e!1454622 () Bool)

(assert (=> b!2270618 (= tp!718904 e!1454622)))

(declare-fun b!2271058 () Bool)

(declare-fun tp!718959 () Bool)

(declare-fun tp!718963 () Bool)

(assert (=> b!2271058 (= e!1454622 (and tp!718959 tp!718963))))

(declare-fun b!2271057 () Bool)

(assert (=> b!2271057 (= e!1454622 tp_is_empty!10527)))

(declare-fun b!2271060 () Bool)

(declare-fun tp!718961 () Bool)

(declare-fun tp!718962 () Bool)

(assert (=> b!2271060 (= e!1454622 (and tp!718961 tp!718962))))

(declare-fun b!2271059 () Bool)

(declare-fun tp!718960 () Bool)

(assert (=> b!2271059 (= e!1454622 tp!718960)))

(assert (= (and b!2270618 ((_ is ElementMatch!6653) (regOne!13818 (regex!4305 (h!32404 rules!1750))))) b!2271057))

(assert (= (and b!2270618 ((_ is Concat!11121) (regOne!13818 (regex!4305 (h!32404 rules!1750))))) b!2271058))

(assert (= (and b!2270618 ((_ is Star!6653) (regOne!13818 (regex!4305 (h!32404 rules!1750))))) b!2271059))

(assert (= (and b!2270618 ((_ is Union!6653) (regOne!13818 (regex!4305 (h!32404 rules!1750))))) b!2271060))

(declare-fun e!1454624 () Bool)

(assert (=> b!2270618 (= tp!718908 e!1454624)))

(declare-fun b!2271063 () Bool)

(declare-fun tp!718964 () Bool)

(declare-fun tp!718968 () Bool)

(assert (=> b!2271063 (= e!1454624 (and tp!718964 tp!718968))))

(declare-fun b!2271062 () Bool)

(assert (=> b!2271062 (= e!1454624 tp_is_empty!10527)))

(declare-fun b!2271065 () Bool)

(declare-fun tp!718966 () Bool)

(declare-fun tp!718967 () Bool)

(assert (=> b!2271065 (= e!1454624 (and tp!718966 tp!718967))))

(declare-fun b!2271064 () Bool)

(declare-fun tp!718965 () Bool)

(assert (=> b!2271064 (= e!1454624 tp!718965)))

(assert (= (and b!2270618 ((_ is ElementMatch!6653) (regTwo!13818 (regex!4305 (h!32404 rules!1750))))) b!2271062))

(assert (= (and b!2270618 ((_ is Concat!11121) (regTwo!13818 (regex!4305 (h!32404 rules!1750))))) b!2271063))

(assert (= (and b!2270618 ((_ is Star!6653) (regTwo!13818 (regex!4305 (h!32404 rules!1750))))) b!2271064))

(assert (= (and b!2270618 ((_ is Union!6653) (regTwo!13818 (regex!4305 (h!32404 rules!1750))))) b!2271065))

(declare-fun e!1454625 () Bool)

(assert (=> b!2270620 (= tp!718906 e!1454625)))

(declare-fun b!2271067 () Bool)

(declare-fun tp!718969 () Bool)

(declare-fun tp!718973 () Bool)

(assert (=> b!2271067 (= e!1454625 (and tp!718969 tp!718973))))

(declare-fun b!2271066 () Bool)

(assert (=> b!2271066 (= e!1454625 tp_is_empty!10527)))

(declare-fun b!2271069 () Bool)

(declare-fun tp!718971 () Bool)

(declare-fun tp!718972 () Bool)

(assert (=> b!2271069 (= e!1454625 (and tp!718971 tp!718972))))

(declare-fun b!2271068 () Bool)

(declare-fun tp!718970 () Bool)

(assert (=> b!2271068 (= e!1454625 tp!718970)))

(assert (= (and b!2270620 ((_ is ElementMatch!6653) (regOne!13819 (regex!4305 (h!32404 rules!1750))))) b!2271066))

(assert (= (and b!2270620 ((_ is Concat!11121) (regOne!13819 (regex!4305 (h!32404 rules!1750))))) b!2271067))

(assert (= (and b!2270620 ((_ is Star!6653) (regOne!13819 (regex!4305 (h!32404 rules!1750))))) b!2271068))

(assert (= (and b!2270620 ((_ is Union!6653) (regOne!13819 (regex!4305 (h!32404 rules!1750))))) b!2271069))

(declare-fun e!1454626 () Bool)

(assert (=> b!2270620 (= tp!718907 e!1454626)))

(declare-fun b!2271071 () Bool)

(declare-fun tp!718974 () Bool)

(declare-fun tp!718978 () Bool)

(assert (=> b!2271071 (= e!1454626 (and tp!718974 tp!718978))))

(declare-fun b!2271070 () Bool)

(assert (=> b!2271070 (= e!1454626 tp_is_empty!10527)))

(declare-fun b!2271073 () Bool)

(declare-fun tp!718976 () Bool)

(declare-fun tp!718977 () Bool)

(assert (=> b!2271073 (= e!1454626 (and tp!718976 tp!718977))))

(declare-fun b!2271072 () Bool)

(declare-fun tp!718975 () Bool)

(assert (=> b!2271072 (= e!1454626 tp!718975)))

(assert (= (and b!2270620 ((_ is ElementMatch!6653) (regTwo!13819 (regex!4305 (h!32404 rules!1750))))) b!2271070))

(assert (= (and b!2270620 ((_ is Concat!11121) (regTwo!13819 (regex!4305 (h!32404 rules!1750))))) b!2271071))

(assert (= (and b!2270620 ((_ is Star!6653) (regTwo!13819 (regex!4305 (h!32404 rules!1750))))) b!2271072))

(assert (= (and b!2270620 ((_ is Union!6653) (regTwo!13819 (regex!4305 (h!32404 rules!1750))))) b!2271073))

(declare-fun e!1454628 () Bool)

(assert (=> b!2270605 (= tp!718893 e!1454628)))

(declare-fun b!2271077 () Bool)

(declare-fun tp!718979 () Bool)

(declare-fun tp!718983 () Bool)

(assert (=> b!2271077 (= e!1454628 (and tp!718979 tp!718983))))

(declare-fun b!2271076 () Bool)

(assert (=> b!2271076 (= e!1454628 tp_is_empty!10527)))

(declare-fun b!2271079 () Bool)

(declare-fun tp!718981 () Bool)

(declare-fun tp!718982 () Bool)

(assert (=> b!2271079 (= e!1454628 (and tp!718981 tp!718982))))

(declare-fun b!2271078 () Bool)

(declare-fun tp!718980 () Bool)

(assert (=> b!2271078 (= e!1454628 tp!718980)))

(assert (= (and b!2270605 ((_ is ElementMatch!6653) (regex!4305 (h!32404 (t!202507 rules!1750))))) b!2271076))

(assert (= (and b!2270605 ((_ is Concat!11121) (regex!4305 (h!32404 (t!202507 rules!1750))))) b!2271077))

(assert (= (and b!2270605 ((_ is Star!6653) (regex!4305 (h!32404 (t!202507 rules!1750))))) b!2271078))

(assert (= (and b!2270605 ((_ is Union!6653) (regex!4305 (h!32404 (t!202507 rules!1750))))) b!2271079))

(declare-fun e!1454629 () Bool)

(assert (=> b!2270619 (= tp!718905 e!1454629)))

(declare-fun b!2271081 () Bool)

(declare-fun tp!718984 () Bool)

(declare-fun tp!718988 () Bool)

(assert (=> b!2271081 (= e!1454629 (and tp!718984 tp!718988))))

(declare-fun b!2271080 () Bool)

(assert (=> b!2271080 (= e!1454629 tp_is_empty!10527)))

(declare-fun b!2271083 () Bool)

(declare-fun tp!718986 () Bool)

(declare-fun tp!718987 () Bool)

(assert (=> b!2271083 (= e!1454629 (and tp!718986 tp!718987))))

(declare-fun b!2271082 () Bool)

(declare-fun tp!718985 () Bool)

(assert (=> b!2271082 (= e!1454629 tp!718985)))

(assert (= (and b!2270619 ((_ is ElementMatch!6653) (reg!6982 (regex!4305 (h!32404 rules!1750))))) b!2271080))

(assert (= (and b!2270619 ((_ is Concat!11121) (reg!6982 (regex!4305 (h!32404 rules!1750))))) b!2271081))

(assert (= (and b!2270619 ((_ is Star!6653) (reg!6982 (regex!4305 (h!32404 rules!1750))))) b!2271082))

(assert (= (and b!2270619 ((_ is Union!6653) (reg!6982 (regex!4305 (h!32404 rules!1750))))) b!2271083))

(declare-fun e!1454630 () Bool)

(assert (=> b!2270594 (= tp!718878 e!1454630)))

(declare-fun b!2271085 () Bool)

(declare-fun tp!718989 () Bool)

(declare-fun tp!718993 () Bool)

(assert (=> b!2271085 (= e!1454630 (and tp!718989 tp!718993))))

(declare-fun b!2271084 () Bool)

(assert (=> b!2271084 (= e!1454630 tp_is_empty!10527)))

(declare-fun b!2271087 () Bool)

(declare-fun tp!718991 () Bool)

(declare-fun tp!718992 () Bool)

(assert (=> b!2271087 (= e!1454630 (and tp!718991 tp!718992))))

(declare-fun b!2271086 () Bool)

(declare-fun tp!718990 () Bool)

(assert (=> b!2271086 (= e!1454630 tp!718990)))

(assert (= (and b!2270594 ((_ is ElementMatch!6653) (regex!4305 (rule!6623 (h!32405 (t!202508 tokens!456)))))) b!2271084))

(assert (= (and b!2270594 ((_ is Concat!11121) (regex!4305 (rule!6623 (h!32405 (t!202508 tokens!456)))))) b!2271085))

(assert (= (and b!2270594 ((_ is Star!6653) (regex!4305 (rule!6623 (h!32405 (t!202508 tokens!456)))))) b!2271086))

(assert (= (and b!2270594 ((_ is Union!6653) (regex!4305 (rule!6623 (h!32405 (t!202508 tokens!456)))))) b!2271087))

(declare-fun e!1454631 () Bool)

(assert (=> b!2270633 (= tp!718922 e!1454631)))

(declare-fun b!2271089 () Bool)

(declare-fun tp!718994 () Bool)

(declare-fun tp!718998 () Bool)

(assert (=> b!2271089 (= e!1454631 (and tp!718994 tp!718998))))

(declare-fun b!2271088 () Bool)

(assert (=> b!2271088 (= e!1454631 tp_is_empty!10527)))

(declare-fun b!2271091 () Bool)

(declare-fun tp!718996 () Bool)

(declare-fun tp!718997 () Bool)

(assert (=> b!2271091 (= e!1454631 (and tp!718996 tp!718997))))

(declare-fun b!2271090 () Bool)

(declare-fun tp!718995 () Bool)

(assert (=> b!2271090 (= e!1454631 tp!718995)))

(assert (= (and b!2270633 ((_ is ElementMatch!6653) (reg!6982 (regex!4305 (rule!6623 (h!32405 tokens!456)))))) b!2271088))

(assert (= (and b!2270633 ((_ is Concat!11121) (reg!6982 (regex!4305 (rule!6623 (h!32405 tokens!456)))))) b!2271089))

(assert (= (and b!2270633 ((_ is Star!6653) (reg!6982 (regex!4305 (rule!6623 (h!32405 tokens!456)))))) b!2271090))

(assert (= (and b!2270633 ((_ is Union!6653) (reg!6982 (regex!4305 (rule!6623 (h!32405 tokens!456)))))) b!2271091))

(declare-fun e!1454632 () Bool)

(assert (=> b!2270632 (= tp!718921 e!1454632)))

(declare-fun b!2271093 () Bool)

(declare-fun tp!718999 () Bool)

(declare-fun tp!719003 () Bool)

(assert (=> b!2271093 (= e!1454632 (and tp!718999 tp!719003))))

(declare-fun b!2271092 () Bool)

(assert (=> b!2271092 (= e!1454632 tp_is_empty!10527)))

(declare-fun b!2271095 () Bool)

(declare-fun tp!719001 () Bool)

(declare-fun tp!719002 () Bool)

(assert (=> b!2271095 (= e!1454632 (and tp!719001 tp!719002))))

(declare-fun b!2271094 () Bool)

(declare-fun tp!719000 () Bool)

(assert (=> b!2271094 (= e!1454632 tp!719000)))

(assert (= (and b!2270632 ((_ is ElementMatch!6653) (regOne!13818 (regex!4305 (rule!6623 (h!32405 tokens!456)))))) b!2271092))

(assert (= (and b!2270632 ((_ is Concat!11121) (regOne!13818 (regex!4305 (rule!6623 (h!32405 tokens!456)))))) b!2271093))

(assert (= (and b!2270632 ((_ is Star!6653) (regOne!13818 (regex!4305 (rule!6623 (h!32405 tokens!456)))))) b!2271094))

(assert (= (and b!2270632 ((_ is Union!6653) (regOne!13818 (regex!4305 (rule!6623 (h!32405 tokens!456)))))) b!2271095))

(declare-fun e!1454633 () Bool)

(assert (=> b!2270632 (= tp!718925 e!1454633)))

(declare-fun b!2271097 () Bool)

(declare-fun tp!719004 () Bool)

(declare-fun tp!719008 () Bool)

(assert (=> b!2271097 (= e!1454633 (and tp!719004 tp!719008))))

(declare-fun b!2271096 () Bool)

(assert (=> b!2271096 (= e!1454633 tp_is_empty!10527)))

(declare-fun b!2271099 () Bool)

(declare-fun tp!719006 () Bool)

(declare-fun tp!719007 () Bool)

(assert (=> b!2271099 (= e!1454633 (and tp!719006 tp!719007))))

(declare-fun b!2271098 () Bool)

(declare-fun tp!719005 () Bool)

(assert (=> b!2271098 (= e!1454633 tp!719005)))

(assert (= (and b!2270632 ((_ is ElementMatch!6653) (regTwo!13818 (regex!4305 (rule!6623 (h!32405 tokens!456)))))) b!2271096))

(assert (= (and b!2270632 ((_ is Concat!11121) (regTwo!13818 (regex!4305 (rule!6623 (h!32405 tokens!456)))))) b!2271097))

(assert (= (and b!2270632 ((_ is Star!6653) (regTwo!13818 (regex!4305 (rule!6623 (h!32405 tokens!456)))))) b!2271098))

(assert (= (and b!2270632 ((_ is Union!6653) (regTwo!13818 (regex!4305 (rule!6623 (h!32405 tokens!456)))))) b!2271099))

(declare-fun b!2271104 () Bool)

(declare-fun e!1454638 () Bool)

(declare-fun tp!719009 () Bool)

(assert (=> b!2271104 (= e!1454638 (and tp_is_empty!10527 tp!719009))))

(assert (=> b!2270625 (= tp!718914 e!1454638)))

(assert (= (and b!2270625 ((_ is Cons!27001) (t!202505 (originalCharacters!5075 (h!32405 tokens!456))))) b!2271104))

(declare-fun b!2271105 () Bool)

(declare-fun e!1454639 () Bool)

(declare-fun tp!719010 () Bool)

(assert (=> b!2271105 (= e!1454639 (and tp_is_empty!10527 tp!719010))))

(assert (=> b!2270593 (= tp!718879 e!1454639)))

(assert (= (and b!2270593 ((_ is Cons!27001) (originalCharacters!5075 (h!32405 (t!202508 tokens!456))))) b!2271105))

(declare-fun e!1454646 () Bool)

(declare-fun b!2271116 () Bool)

(declare-fun tp!719018 () Bool)

(declare-fun tp!719019 () Bool)

(assert (=> b!2271116 (= e!1454646 (and (inv!36561 (left!20487 (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (value!136512 (h!32405 tokens!456)))))) tp!719018 (inv!36561 (right!20817 (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (value!136512 (h!32405 tokens!456)))))) tp!719019))))

(declare-fun b!2271118 () Bool)

(declare-fun e!1454647 () Bool)

(declare-fun tp!719017 () Bool)

(assert (=> b!2271118 (= e!1454647 tp!719017)))

(declare-fun b!2271117 () Bool)

(declare-fun inv!36567 (IArray!17521) Bool)

(assert (=> b!2271117 (= e!1454646 (and (inv!36567 (xs!11700 (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (value!136512 (h!32405 tokens!456)))))) e!1454647))))

(assert (=> b!2270422 (= tp!718798 (and (inv!36561 (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (value!136512 (h!32405 tokens!456))))) e!1454646))))

(assert (= (and b!2270422 ((_ is Node!8758) (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (value!136512 (h!32405 tokens!456)))))) b!2271116))

(assert (= b!2271117 b!2271118))

(assert (= (and b!2270422 ((_ is Leaf!12896) (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (value!136512 (h!32405 tokens!456)))))) b!2271117))

(declare-fun m!2699975 () Bool)

(assert (=> b!2271116 m!2699975))

(declare-fun m!2699977 () Bool)

(assert (=> b!2271116 m!2699977))

(declare-fun m!2699979 () Bool)

(assert (=> b!2271117 m!2699979))

(assert (=> b!2270422 m!2699271))

(declare-fun b!2271119 () Bool)

(declare-fun e!1454648 () Bool)

(declare-fun tp!719020 () Bool)

(assert (=> b!2271119 (= e!1454648 (and tp_is_empty!10527 tp!719020))))

(assert (=> b!2270626 (= tp!718915 e!1454648)))

(assert (= (and b!2270626 ((_ is Cons!27001) (t!202505 (t!202505 suffix!886)))) b!2271119))

(declare-fun e!1454649 () Bool)

(assert (=> b!2270634 (= tp!718923 e!1454649)))

(declare-fun b!2271121 () Bool)

(declare-fun tp!719021 () Bool)

(declare-fun tp!719025 () Bool)

(assert (=> b!2271121 (= e!1454649 (and tp!719021 tp!719025))))

(declare-fun b!2271120 () Bool)

(assert (=> b!2271120 (= e!1454649 tp_is_empty!10527)))

(declare-fun b!2271123 () Bool)

(declare-fun tp!719023 () Bool)

(declare-fun tp!719024 () Bool)

(assert (=> b!2271123 (= e!1454649 (and tp!719023 tp!719024))))

(declare-fun b!2271122 () Bool)

(declare-fun tp!719022 () Bool)

(assert (=> b!2271122 (= e!1454649 tp!719022)))

(assert (= (and b!2270634 ((_ is ElementMatch!6653) (regOne!13819 (regex!4305 (rule!6623 (h!32405 tokens!456)))))) b!2271120))

(assert (= (and b!2270634 ((_ is Concat!11121) (regOne!13819 (regex!4305 (rule!6623 (h!32405 tokens!456)))))) b!2271121))

(assert (= (and b!2270634 ((_ is Star!6653) (regOne!13819 (regex!4305 (rule!6623 (h!32405 tokens!456)))))) b!2271122))

(assert (= (and b!2270634 ((_ is Union!6653) (regOne!13819 (regex!4305 (rule!6623 (h!32405 tokens!456)))))) b!2271123))

(declare-fun e!1454651 () Bool)

(assert (=> b!2270634 (= tp!718924 e!1454651)))

(declare-fun b!2271125 () Bool)

(declare-fun tp!719026 () Bool)

(declare-fun tp!719030 () Bool)

(assert (=> b!2271125 (= e!1454651 (and tp!719026 tp!719030))))

(declare-fun b!2271124 () Bool)

(assert (=> b!2271124 (= e!1454651 tp_is_empty!10527)))

(declare-fun b!2271127 () Bool)

(declare-fun tp!719028 () Bool)

(declare-fun tp!719029 () Bool)

(assert (=> b!2271127 (= e!1454651 (and tp!719028 tp!719029))))

(declare-fun b!2271126 () Bool)

(declare-fun tp!719027 () Bool)

(assert (=> b!2271126 (= e!1454651 tp!719027)))

(assert (= (and b!2270634 ((_ is ElementMatch!6653) (regTwo!13819 (regex!4305 (rule!6623 (h!32405 tokens!456)))))) b!2271124))

(assert (= (and b!2270634 ((_ is Concat!11121) (regTwo!13819 (regex!4305 (rule!6623 (h!32405 tokens!456)))))) b!2271125))

(assert (= (and b!2270634 ((_ is Star!6653) (regTwo!13819 (regex!4305 (rule!6623 (h!32405 tokens!456)))))) b!2271126))

(assert (= (and b!2270634 ((_ is Union!6653) (regTwo!13819 (regex!4305 (rule!6623 (h!32405 tokens!456)))))) b!2271127))

(declare-fun e!1454653 () Bool)

(assert (=> b!2270623 (= tp!718910 e!1454653)))

(declare-fun b!2271133 () Bool)

(declare-fun tp!719031 () Bool)

(declare-fun tp!719035 () Bool)

(assert (=> b!2271133 (= e!1454653 (and tp!719031 tp!719035))))

(declare-fun b!2271132 () Bool)

(assert (=> b!2271132 (= e!1454653 tp_is_empty!10527)))

(declare-fun b!2271135 () Bool)

(declare-fun tp!719033 () Bool)

(declare-fun tp!719034 () Bool)

(assert (=> b!2271135 (= e!1454653 (and tp!719033 tp!719034))))

(declare-fun b!2271134 () Bool)

(declare-fun tp!719032 () Bool)

(assert (=> b!2271134 (= e!1454653 tp!719032)))

(assert (= (and b!2270623 ((_ is ElementMatch!6653) (reg!6982 (regex!4305 r!2363)))) b!2271132))

(assert (= (and b!2270623 ((_ is Concat!11121) (reg!6982 (regex!4305 r!2363)))) b!2271133))

(assert (= (and b!2270623 ((_ is Star!6653) (reg!6982 (regex!4305 r!2363)))) b!2271134))

(assert (= (and b!2270623 ((_ is Union!6653) (reg!6982 (regex!4305 r!2363)))) b!2271135))

(declare-fun e!1454654 () Bool)

(assert (=> b!2270622 (= tp!718909 e!1454654)))

(declare-fun b!2271137 () Bool)

(declare-fun tp!719036 () Bool)

(declare-fun tp!719040 () Bool)

(assert (=> b!2271137 (= e!1454654 (and tp!719036 tp!719040))))

(declare-fun b!2271136 () Bool)

(assert (=> b!2271136 (= e!1454654 tp_is_empty!10527)))

(declare-fun b!2271139 () Bool)

(declare-fun tp!719038 () Bool)

(declare-fun tp!719039 () Bool)

(assert (=> b!2271139 (= e!1454654 (and tp!719038 tp!719039))))

(declare-fun b!2271138 () Bool)

(declare-fun tp!719037 () Bool)

(assert (=> b!2271138 (= e!1454654 tp!719037)))

(assert (= (and b!2270622 ((_ is ElementMatch!6653) (regOne!13818 (regex!4305 r!2363)))) b!2271136))

(assert (= (and b!2270622 ((_ is Concat!11121) (regOne!13818 (regex!4305 r!2363)))) b!2271137))

(assert (= (and b!2270622 ((_ is Star!6653) (regOne!13818 (regex!4305 r!2363)))) b!2271138))

(assert (= (and b!2270622 ((_ is Union!6653) (regOne!13818 (regex!4305 r!2363)))) b!2271139))

(declare-fun e!1454655 () Bool)

(assert (=> b!2270622 (= tp!718913 e!1454655)))

(declare-fun b!2271141 () Bool)

(declare-fun tp!719041 () Bool)

(declare-fun tp!719045 () Bool)

(assert (=> b!2271141 (= e!1454655 (and tp!719041 tp!719045))))

(declare-fun b!2271140 () Bool)

(assert (=> b!2271140 (= e!1454655 tp_is_empty!10527)))

(declare-fun b!2271143 () Bool)

(declare-fun tp!719043 () Bool)

(declare-fun tp!719044 () Bool)

(assert (=> b!2271143 (= e!1454655 (and tp!719043 tp!719044))))

(declare-fun b!2271142 () Bool)

(declare-fun tp!719042 () Bool)

(assert (=> b!2271142 (= e!1454655 tp!719042)))

(assert (= (and b!2270622 ((_ is ElementMatch!6653) (regTwo!13818 (regex!4305 r!2363)))) b!2271140))

(assert (= (and b!2270622 ((_ is Concat!11121) (regTwo!13818 (regex!4305 r!2363)))) b!2271141))

(assert (= (and b!2270622 ((_ is Star!6653) (regTwo!13818 (regex!4305 r!2363)))) b!2271142))

(assert (= (and b!2270622 ((_ is Union!6653) (regTwo!13818 (regex!4305 r!2363)))) b!2271143))

(declare-fun b!2271147 () Bool)

(declare-fun b_free!67521 () Bool)

(declare-fun b_next!68225 () Bool)

(assert (=> b!2271147 (= b_free!67521 (not b_next!68225))))

(declare-fun tp!719046 () Bool)

(declare-fun b_and!178965 () Bool)

(assert (=> b!2271147 (= tp!719046 b_and!178965)))

(declare-fun b_free!67523 () Bool)

(declare-fun b_next!68227 () Bool)

(assert (=> b!2271147 (= b_free!67523 (not b_next!68227))))

(declare-fun t!202596 () Bool)

(declare-fun tb!134781 () Bool)

(assert (=> (and b!2271147 (= (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 (t!202508 tokens!456)))))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456))))) t!202596) tb!134781))

(declare-fun result!164334 () Bool)

(assert (= result!164334 result!164252))

(assert (=> b!2270416 t!202596))

(declare-fun t!202598 () Bool)

(declare-fun tb!134783 () Bool)

(assert (=> (and b!2271147 (= (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 (t!202508 tokens!456)))))) (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456))))) t!202598) tb!134783))

(declare-fun result!164336 () Bool)

(assert (= result!164336 result!164278))

(assert (=> d!672076 t!202598))

(declare-fun t!202600 () Bool)

(declare-fun tb!134785 () Bool)

(assert (=> (and b!2271147 (= (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 (t!202508 tokens!456)))))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456)))))) t!202600) tb!134785))

(declare-fun result!164338 () Bool)

(assert (= result!164338 result!164314))

(assert (=> b!2271008 t!202600))

(declare-fun b_and!178967 () Bool)

(declare-fun tp!719049 () Bool)

(assert (=> b!2271147 (= tp!719049 (and (=> t!202596 result!164334) (=> t!202598 result!164336) (=> t!202600 result!164338) b_and!178967))))

(declare-fun b!2271145 () Bool)

(declare-fun tp!719048 () Bool)

(declare-fun e!1454660 () Bool)

(declare-fun e!1454658 () Bool)

(assert (=> b!2271145 (= e!1454660 (and (inv!21 (value!136512 (h!32405 (t!202508 (t!202508 tokens!456))))) e!1454658 tp!719048))))

(declare-fun tp!719047 () Bool)

(declare-fun e!1454656 () Bool)

(declare-fun b!2271146 () Bool)

(assert (=> b!2271146 (= e!1454658 (and tp!719047 (inv!36554 (tag!4795 (rule!6623 (h!32405 (t!202508 (t!202508 tokens!456)))))) (inv!36557 (transformation!4305 (rule!6623 (h!32405 (t!202508 (t!202508 tokens!456)))))) e!1454656))))

(declare-fun e!1454659 () Bool)

(assert (=> b!2270592 (= tp!718881 e!1454659)))

(declare-fun b!2271144 () Bool)

(declare-fun tp!719050 () Bool)

(assert (=> b!2271144 (= e!1454659 (and (inv!36558 (h!32405 (t!202508 (t!202508 tokens!456)))) e!1454660 tp!719050))))

(assert (=> b!2271147 (= e!1454656 (and tp!719046 tp!719049))))

(assert (= b!2271146 b!2271147))

(assert (= b!2271145 b!2271146))

(assert (= b!2271144 b!2271145))

(assert (= (and b!2270592 ((_ is Cons!27004) (t!202508 (t!202508 tokens!456)))) b!2271144))

(declare-fun m!2699991 () Bool)

(assert (=> b!2271145 m!2699991))

(declare-fun m!2699993 () Bool)

(assert (=> b!2271146 m!2699993))

(declare-fun m!2699995 () Bool)

(assert (=> b!2271146 m!2699995))

(declare-fun m!2699997 () Bool)

(assert (=> b!2271144 m!2699997))

(declare-fun e!1454663 () Bool)

(declare-fun b!2271150 () Bool)

(declare-fun tp!719052 () Bool)

(declare-fun tp!719053 () Bool)

(assert (=> b!2271150 (= e!1454663 (and (inv!36561 (left!20487 (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))) (value!136512 (head!4898 tokens!456)))))) tp!719052 (inv!36561 (right!20817 (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))) (value!136512 (head!4898 tokens!456)))))) tp!719053))))

(declare-fun b!2271152 () Bool)

(declare-fun e!1454664 () Bool)

(declare-fun tp!719051 () Bool)

(assert (=> b!2271152 (= e!1454664 tp!719051)))

(declare-fun b!2271151 () Bool)

(assert (=> b!2271151 (= e!1454663 (and (inv!36567 (xs!11700 (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))) (value!136512 (head!4898 tokens!456)))))) e!1454664))))

(assert (=> b!2270501 (= tp!718862 (and (inv!36561 (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))) (value!136512 (head!4898 tokens!456))))) e!1454663))))

(assert (= (and b!2270501 ((_ is Node!8758) (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))) (value!136512 (head!4898 tokens!456)))))) b!2271150))

(assert (= b!2271151 b!2271152))

(assert (= (and b!2270501 ((_ is Leaf!12896) (c!360418 (dynLambda!11703 (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))) (value!136512 (head!4898 tokens!456)))))) b!2271151))

(declare-fun m!2700001 () Bool)

(assert (=> b!2271150 m!2700001))

(declare-fun m!2700003 () Bool)

(assert (=> b!2271150 m!2700003))

(declare-fun m!2700005 () Bool)

(assert (=> b!2271151 m!2700005))

(assert (=> b!2270501 m!2699323))

(declare-fun e!1454665 () Bool)

(assert (=> b!2270624 (= tp!718911 e!1454665)))

(declare-fun b!2271154 () Bool)

(declare-fun tp!719054 () Bool)

(declare-fun tp!719058 () Bool)

(assert (=> b!2271154 (= e!1454665 (and tp!719054 tp!719058))))

(declare-fun b!2271153 () Bool)

(assert (=> b!2271153 (= e!1454665 tp_is_empty!10527)))

(declare-fun b!2271156 () Bool)

(declare-fun tp!719056 () Bool)

(declare-fun tp!719057 () Bool)

(assert (=> b!2271156 (= e!1454665 (and tp!719056 tp!719057))))

(declare-fun b!2271155 () Bool)

(declare-fun tp!719055 () Bool)

(assert (=> b!2271155 (= e!1454665 tp!719055)))

(assert (= (and b!2270624 ((_ is ElementMatch!6653) (regOne!13819 (regex!4305 r!2363)))) b!2271153))

(assert (= (and b!2270624 ((_ is Concat!11121) (regOne!13819 (regex!4305 r!2363)))) b!2271154))

(assert (= (and b!2270624 ((_ is Star!6653) (regOne!13819 (regex!4305 r!2363)))) b!2271155))

(assert (= (and b!2270624 ((_ is Union!6653) (regOne!13819 (regex!4305 r!2363)))) b!2271156))

(declare-fun e!1454666 () Bool)

(assert (=> b!2270624 (= tp!718912 e!1454666)))

(declare-fun b!2271158 () Bool)

(declare-fun tp!719059 () Bool)

(declare-fun tp!719063 () Bool)

(assert (=> b!2271158 (= e!1454666 (and tp!719059 tp!719063))))

(declare-fun b!2271157 () Bool)

(assert (=> b!2271157 (= e!1454666 tp_is_empty!10527)))

(declare-fun b!2271160 () Bool)

(declare-fun tp!719061 () Bool)

(declare-fun tp!719062 () Bool)

(assert (=> b!2271160 (= e!1454666 (and tp!719061 tp!719062))))

(declare-fun b!2271159 () Bool)

(declare-fun tp!719060 () Bool)

(assert (=> b!2271159 (= e!1454666 tp!719060)))

(assert (= (and b!2270624 ((_ is ElementMatch!6653) (regTwo!13819 (regex!4305 r!2363)))) b!2271157))

(assert (= (and b!2270624 ((_ is Concat!11121) (regTwo!13819 (regex!4305 r!2363)))) b!2271158))

(assert (= (and b!2270624 ((_ is Star!6653) (regTwo!13819 (regex!4305 r!2363)))) b!2271159))

(assert (= (and b!2270624 ((_ is Union!6653) (regTwo!13819 (regex!4305 r!2363)))) b!2271160))

(declare-fun b_lambda!72365 () Bool)

(assert (= b_lambda!72353 (or (and b!2270595 b_free!67511 (= (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456))))) (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))))) (and b!2270227 b_free!67495 (= (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))))) (and b!2270606 b_free!67515 (= (toChars!5926 (transformation!4305 (h!32404 (t!202507 rules!1750)))) (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))))) (and b!2270235 b_free!67499 (= (toChars!5926 (transformation!4305 otherR!12)) (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))))) (and b!2271147 b_free!67523 (= (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 (t!202508 tokens!456)))))) (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))))) (and b!2271054 b_free!67519 (= (toChars!5926 (transformation!4305 (h!32404 (t!202507 (t!202507 rules!1750))))) (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))))) (and b!2270230 b_free!67491 (= (toChars!5926 (transformation!4305 (h!32404 rules!1750))) (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))))) (and b!2270248 b_free!67487 (= (toChars!5926 (transformation!4305 r!2363)) (toChars!5926 (transformation!4305 (rule!6623 (head!4898 tokens!456)))))) b_lambda!72365)))

(declare-fun b_lambda!72367 () Bool)

(assert (= b_lambda!72361 (or (and b!2270230 b_free!67491 (= (toChars!5926 (transformation!4305 (h!32404 rules!1750))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456))))))) (and b!2270227 b_free!67495 (= (toChars!5926 (transformation!4305 (rule!6623 (h!32405 tokens!456)))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456))))))) (and b!2270235 b_free!67499 (= (toChars!5926 (transformation!4305 otherR!12)) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456))))))) (and b!2270248 b_free!67487 (= (toChars!5926 (transformation!4305 r!2363)) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456))))))) (and b!2271147 b_free!67523 (= (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 (t!202508 tokens!456)))))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456))))))) (and b!2270606 b_free!67515 (= (toChars!5926 (transformation!4305 (h!32404 (t!202507 rules!1750)))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456))))))) (and b!2271054 b_free!67519 (= (toChars!5926 (transformation!4305 (h!32404 (t!202507 (t!202507 rules!1750))))) (toChars!5926 (transformation!4305 (rule!6623 (h!32405 (t!202508 tokens!456))))))) (and b!2270595 b_free!67511) b_lambda!72367)))

(declare-fun b_lambda!72369 () Bool)

(assert (= b_lambda!72359 (or d!672070 b_lambda!72369)))

(declare-fun bs!456035 () Bool)

(declare-fun d!672358 () Bool)

(assert (= bs!456035 (and d!672358 d!672070)))

(assert (=> bs!456035 (= (dynLambda!11712 lambda!85469 (h!32404 rules!1750)) (ruleValid!1395 thiss!16613 (h!32404 rules!1750)))))

(assert (=> bs!456035 m!2699315))

(assert (=> b!2270921 d!672358))

(check-sat (not b!2271141) (not b!2270861) (not b!2271069) (not b!2271097) tp_is_empty!10527 (not b!2271047) b_and!178885 (not b!2271072) (not b!2271006) (not b!2271139) (not b!2271158) (not b!2271064) (not b!2271029) b_and!178967 b_and!178881 (not b_next!68219) (not d!672260) (not b!2270798) (not d!672210) (not b_lambda!72367) b_and!178877 (not b!2271089) (not b!2270731) (not d!672122) (not b_next!68203) b_and!178955 (not b_next!68199) (not d!672290) b_and!178949 (not b!2270422) (not b!2271042) (not b!2271077) (not b!2271134) (not b!2270698) (not b!2271105) (not b!2271041) (not b!2271078) (not b!2271007) (not b!2271143) (not b!2271125) (not b!2270924) b_and!178951 (not d!672280) (not b!2270797) (not b!2270786) (not b!2270700) b_and!178957 (not b!2271040) b_and!178933 (not b!2271068) (not d!672334) (not d!672328) (not b!2271036) (not d!672306) (not d!672118) (not b!2271142) (not b!2271152) (not d!672302) (not b!2271144) (not b!2271071) (not b!2271079) (not b!2271045) (not b!2270926) (not d!672256) (not b!2270972) (not b!2270811) (not d!672284) (not b_lambda!72355) (not b!2271118) (not b!2270730) (not b!2270785) (not b_next!68191) (not b!2271138) (not b_next!68223) (not tb!134763) (not b!2270922) (not b!2271159) (not b!2270711) b_and!178959 (not d!672172) (not b!2270808) b_and!178965 (not b!2271065) (not b!2271146) (not b!2270800) (not b!2270650) (not b!2271094) (not d!672174) (not b!2270701) (not b!2271095) b_and!178873 (not b!2270874) (not bm!136086) (not b!2270859) b_and!178961 (not b!2270779) (not b!2271067) (not b!2271156) (not b!2270862) (not b_next!68221) (not b!2271150) (not d!672264) (not b!2271085) (not b!2271058) (not b!2271099) (not d!672308) (not b!2271160) (not b!2271051) (not b!2270973) (not b!2270865) (not b!2271028) (not b!2270857) (not d!672244) (not b!2271009) (not b!2271086) (not b!2271050) (not b!2271035) (not b!2271059) (not b!2271052) (not b_next!68225) (not b!2271082) (not b!2271135) (not d!672214) (not b!2270651) (not d!672180) (not b!2271011) (not b!2271098) (not b!2271116) (not b!2270743) (not b!2271127) (not d!672320) (not b!2271126) b_and!178963 (not bm!136099) (not b!2271031) (not b!2270975) (not b_next!68201) (not d!672262) (not b_next!68189) (not b!2271117) (not b!2271090) (not b!2271154) (not d!672120) (not d!672156) (not d!672110) (not b!2271145) (not b!2270915) (not b!2271081) (not bs!456035) (not b_lambda!72369) (not b!2270916) (not d!672116) (not b!2271087) b_and!178953 (not d!672166) (not d!672300) (not bm!136089) (not b!2271121) (not b_next!68227) (not b!2270653) (not b!2271073) (not b!2271119) (not b!2271137) (not d!672218) (not b!2270697) (not b_next!68195) (not b!2271091) (not bm!136100) (not b!2271008) (not d!672170) (not b!2271083) (not d!672204) (not b!2270749) (not d!672162) (not b!2271122) (not b!2270799) (not b!2271013) (not b_lambda!72365) (not b_next!68193) (not b!2270787) (not b!2271032) (not bm!136088) (not d!672164) (not b!2271039) (not b!2270967) (not b!2270501) (not b!2271053) (not b!2271010) (not b_next!68197) (not d!672176) (not b!2271060) (not b!2270734) (not b!2271033) (not d!672190) (not d!672158) (not d!672278) (not b!2271043) (not b!2271037) (not d!672168) (not b!2271123) (not b!2271063) (not b_next!68215) (not b_next!68213) (not b!2270802) (not b!2271151) (not b!2271133) b_and!178929 (not d!672212) (not b!2270969) (not b!2271155) (not b_next!68217) (not b!2271093) (not b!2271104) (not b!2270940) (not b!2271046) (not b!2271049))
(check-sat b_and!178885 b_and!178877 b_and!178949 b_and!178951 b_and!178959 b_and!178965 b_and!178873 (not b_next!68225) (not b_next!68195) (not b_next!68193) (not b_next!68197) (not b_next!68217) b_and!178967 b_and!178881 (not b_next!68219) (not b_next!68203) b_and!178955 (not b_next!68199) b_and!178957 b_and!178933 (not b_next!68191) (not b_next!68223) b_and!178961 (not b_next!68221) b_and!178963 (not b_next!68201) (not b_next!68189) b_and!178953 (not b_next!68227) (not b_next!68215) (not b_next!68213) b_and!178929)

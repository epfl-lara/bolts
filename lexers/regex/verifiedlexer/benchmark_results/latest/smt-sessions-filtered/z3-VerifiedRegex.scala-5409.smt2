; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274980 () Bool)

(assert start!274980)

(declare-fun b!2831339 () Bool)

(declare-fun b_free!81405 () Bool)

(declare-fun b_next!82109 () Bool)

(assert (=> b!2831339 (= b_free!81405 (not b_next!82109))))

(declare-fun tp!904826 () Bool)

(declare-fun b_and!207067 () Bool)

(assert (=> b!2831339 (= tp!904826 b_and!207067)))

(declare-fun b_free!81407 () Bool)

(declare-fun b_next!82111 () Bool)

(assert (=> b!2831339 (= b_free!81407 (not b_next!82111))))

(declare-fun tp!904829 () Bool)

(declare-fun b_and!207069 () Bool)

(assert (=> b!2831339 (= tp!904829 b_and!207069)))

(declare-fun b!2831338 () Bool)

(declare-fun b_free!81409 () Bool)

(declare-fun b_next!82113 () Bool)

(assert (=> b!2831338 (= b_free!81409 (not b_next!82113))))

(declare-fun tp!904830 () Bool)

(declare-fun b_and!207071 () Bool)

(assert (=> b!2831338 (= tp!904830 b_and!207071)))

(declare-fun b_free!81411 () Bool)

(declare-fun b_next!82115 () Bool)

(assert (=> b!2831338 (= b_free!81411 (not b_next!82115))))

(declare-fun tp!904833 () Bool)

(declare-fun b_and!207073 () Bool)

(assert (=> b!2831338 (= tp!904833 b_and!207073)))

(declare-fun b!2831328 () Bool)

(declare-fun res!1178631 () Bool)

(declare-fun e!1792568 () Bool)

(assert (=> b!2831328 (=> (not res!1178631) (not e!1792568))))

(declare-datatypes ((LexerInterface!4594 0))(
  ( (LexerInterfaceExt!4591 (__x!22206 Int)) (Lexer!4592) )
))
(declare-fun thiss!11007 () LexerInterface!4594)

(declare-datatypes ((List!33503 0))(
  ( (Nil!33379) (Cons!33379 (h!38799 (_ BitVec 16)) (t!231380 List!33503)) )
))
(declare-datatypes ((TokenValue!5234 0))(
  ( (FloatLiteralValue!10468 (text!37083 List!33503)) (TokenValueExt!5233 (__x!22207 Int)) (Broken!26170 (value!160957 List!33503)) (Object!5357) (End!5234) (Def!5234) (Underscore!5234) (Match!5234) (Else!5234) (Error!5234) (Case!5234) (If!5234) (Extends!5234) (Abstract!5234) (Class!5234) (Val!5234) (DelimiterValue!10468 (del!5294 List!33503)) (KeywordValue!5240 (value!160958 List!33503)) (CommentValue!10468 (value!160959 List!33503)) (WhitespaceValue!10468 (value!160960 List!33503)) (IndentationValue!5234 (value!160961 List!33503)) (String!36691) (Int32!5234) (Broken!26171 (value!160962 List!33503)) (Boolean!5235) (Unit!47368) (OperatorValue!5237 (op!5294 List!33503)) (IdentifierValue!10468 (value!160963 List!33503)) (IdentifierValue!10469 (value!160964 List!33503)) (WhitespaceValue!10469 (value!160965 List!33503)) (True!10468) (False!10468) (Broken!26172 (value!160966 List!33503)) (Broken!26173 (value!160967 List!33503)) (True!10469) (RightBrace!5234) (RightBracket!5234) (Colon!5234) (Null!5234) (Comma!5234) (LeftBracket!5234) (False!10469) (LeftBrace!5234) (ImaginaryLiteralValue!5234 (text!37084 List!33503)) (StringLiteralValue!15702 (value!160968 List!33503)) (EOFValue!5234 (value!160969 List!33503)) (IdentValue!5234 (value!160970 List!33503)) (DelimiterValue!10469 (value!160971 List!33503)) (DedentValue!5234 (value!160972 List!33503)) (NewLineValue!5234 (value!160973 List!33503)) (IntegerValue!15702 (value!160974 (_ BitVec 32)) (text!37085 List!33503)) (IntegerValue!15703 (value!160975 Int) (text!37086 List!33503)) (Times!5234) (Or!5234) (Equal!5234) (Minus!5234) (Broken!26174 (value!160976 List!33503)) (And!5234) (Div!5234) (LessEqual!5234) (Mod!5234) (Concat!13629) (Not!5234) (Plus!5234) (SpaceValue!5234 (value!160977 List!33503)) (IntegerValue!15704 (value!160978 Int) (text!37087 List!33503)) (StringLiteralValue!15703 (text!37088 List!33503)) (FloatLiteralValue!10469 (text!37089 List!33503)) (BytesLiteralValue!5234 (value!160979 List!33503)) (CommentValue!10469 (value!160980 List!33503)) (StringLiteralValue!15704 (value!160981 List!33503)) (ErrorTokenValue!5234 (msg!5295 List!33503)) )
))
(declare-datatypes ((String!36692 0))(
  ( (String!36693 (value!160982 String)) )
))
(declare-datatypes ((C!16972 0))(
  ( (C!16973 (val!10498 Int)) )
))
(declare-datatypes ((List!33504 0))(
  ( (Nil!33380) (Cons!33380 (h!38800 C!16972) (t!231381 List!33504)) )
))
(declare-datatypes ((IArray!20731 0))(
  ( (IArray!20732 (innerList!10423 List!33504)) )
))
(declare-datatypes ((Conc!10363 0))(
  ( (Node!10363 (left!25184 Conc!10363) (right!25514 Conc!10363) (csize!20956 Int) (cheight!10574 Int)) (Leaf!15773 (xs!13475 IArray!20731) (csize!20957 Int)) (Empty!10363) )
))
(declare-datatypes ((Regex!8395 0))(
  ( (ElementMatch!8395 (c!457895 C!16972)) (Concat!13630 (regOne!17302 Regex!8395) (regTwo!17302 Regex!8395)) (EmptyExpr!8395) (Star!8395 (reg!8724 Regex!8395)) (EmptyLang!8395) (Union!8395 (regOne!17303 Regex!8395) (regTwo!17303 Regex!8395)) )
))
(declare-datatypes ((BalanceConc!20364 0))(
  ( (BalanceConc!20365 (c!457896 Conc!10363)) )
))
(declare-datatypes ((TokenValueInjection!9896 0))(
  ( (TokenValueInjection!9897 (toValue!7030 Int) (toChars!6889 Int)) )
))
(declare-datatypes ((Rule!9808 0))(
  ( (Rule!9809 (regex!5004 Regex!8395) (tag!5508 String!36692) (isSeparator!5004 Bool) (transformation!5004 TokenValueInjection!9896)) )
))
(declare-datatypes ((Token!9410 0))(
  ( (Token!9411 (value!160983 TokenValue!5234) (rule!7432 Rule!9808) (size!25970 Int) (originalCharacters!5736 List!33504)) )
))
(declare-datatypes ((List!33505 0))(
  ( (Nil!33381) (Cons!33381 (h!38801 Token!9410) (t!231382 List!33505)) )
))
(declare-fun l!4019 () List!33505)

(declare-datatypes ((List!33506 0))(
  ( (Nil!33382) (Cons!33382 (h!38802 Rule!9808) (t!231383 List!33506)) )
))
(declare-fun rules!1047 () List!33506)

(declare-datatypes ((IArray!20733 0))(
  ( (IArray!20734 (innerList!10424 List!33505)) )
))
(declare-datatypes ((Conc!10364 0))(
  ( (Node!10364 (left!25185 Conc!10364) (right!25515 Conc!10364) (csize!20958 Int) (cheight!10575 Int)) (Leaf!15774 (xs!13476 IArray!20733) (csize!20959 Int)) (Empty!10364) )
))
(declare-datatypes ((BalanceConc!20366 0))(
  ( (BalanceConc!20367 (c!457897 Conc!10364)) )
))
(declare-fun rulesProduceEachTokenIndividually!1110 (LexerInterface!4594 List!33506 BalanceConc!20366) Bool)

(declare-fun seqFromList!3250 (List!33505) BalanceConc!20366)

(assert (=> b!2831328 (= res!1178631 (rulesProduceEachTokenIndividually!1110 thiss!11007 rules!1047 (seqFromList!3250 l!4019)))))

(declare-fun e!1792563 () Bool)

(declare-fun e!1792561 () Bool)

(declare-fun b!2831329 () Bool)

(declare-fun tp!904832 () Bool)

(declare-fun inv!45326 (String!36692) Bool)

(declare-fun inv!45329 (TokenValueInjection!9896) Bool)

(assert (=> b!2831329 (= e!1792563 (and tp!904832 (inv!45326 (tag!5508 (rule!7432 (h!38801 l!4019)))) (inv!45329 (transformation!5004 (rule!7432 (h!38801 l!4019)))) e!1792561))))

(declare-fun b!2831330 () Bool)

(declare-fun res!1178635 () Bool)

(assert (=> b!2831330 (=> (not res!1178635) (not e!1792568))))

(get-info :version)

(assert (=> b!2831330 (= res!1178635 (and ((_ is Cons!33381) l!4019) ((_ is Cons!33381) (t!231382 l!4019))))))

(declare-fun b!2831332 () Bool)

(declare-fun e!1792570 () Bool)

(declare-fun tp!904828 () Bool)

(declare-fun e!1792569 () Bool)

(declare-fun inv!45330 (Token!9410) Bool)

(assert (=> b!2831332 (= e!1792569 (and (inv!45330 (h!38801 l!4019)) e!1792570 tp!904828))))

(declare-fun tp!904831 () Bool)

(declare-fun e!1792571 () Bool)

(declare-fun e!1792565 () Bool)

(declare-fun b!2831333 () Bool)

(assert (=> b!2831333 (= e!1792571 (and tp!904831 (inv!45326 (tag!5508 (h!38802 rules!1047))) (inv!45329 (transformation!5004 (h!38802 rules!1047))) e!1792565))))

(declare-fun b!2831334 () Bool)

(declare-fun res!1178634 () Bool)

(assert (=> b!2831334 (=> (not res!1178634) (not e!1792568))))

(declare-fun rulesInvariant!4010 (LexerInterface!4594 List!33506) Bool)

(assert (=> b!2831334 (= res!1178634 (rulesInvariant!4010 thiss!11007 rules!1047))))

(declare-fun b!2831335 () Bool)

(declare-fun e!1792567 () Bool)

(declare-fun tp!904827 () Bool)

(assert (=> b!2831335 (= e!1792567 (and e!1792571 tp!904827))))

(declare-fun b!2831336 () Bool)

(declare-fun tp!904834 () Bool)

(declare-fun inv!21 (TokenValue!5234) Bool)

(assert (=> b!2831336 (= e!1792570 (and (inv!21 (value!160983 (h!38801 l!4019))) e!1792563 tp!904834))))

(declare-fun b!2831337 () Bool)

(declare-fun res!1178630 () Bool)

(assert (=> b!2831337 (=> (not res!1178630) (not e!1792568))))

(declare-fun isEmpty!18402 (List!33506) Bool)

(assert (=> b!2831337 (= res!1178630 (not (isEmpty!18402 rules!1047)))))

(declare-fun b!2831331 () Bool)

(declare-fun lt!1010129 () BalanceConc!20364)

(declare-fun isEmpty!18403 (BalanceConc!20364) Bool)

(assert (=> b!2831331 (= e!1792568 (not (not (isEmpty!18403 lt!1010129))))))

(declare-fun size!25971 (BalanceConc!20364) Int)

(assert (=> b!2831331 (> (size!25971 lt!1010129) 0)))

(declare-fun charsOf!3100 (Token!9410) BalanceConc!20364)

(assert (=> b!2831331 (= lt!1010129 (charsOf!3100 (h!38801 (t!231382 l!4019))))))

(declare-fun rulesProduceIndividualToken!2126 (LexerInterface!4594 List!33506 Token!9410) Bool)

(assert (=> b!2831331 (rulesProduceIndividualToken!2126 thiss!11007 rules!1047 (h!38801 (t!231382 l!4019)))))

(declare-datatypes ((Unit!47369 0))(
  ( (Unit!47370) )
))
(declare-fun lt!1010128 () Unit!47369)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!744 (LexerInterface!4594 List!33506 List!33505 Token!9410) Unit!47369)

(assert (=> b!2831331 (= lt!1010128 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!744 thiss!11007 rules!1047 l!4019 (h!38801 (t!231382 l!4019))))))

(assert (=> b!2831331 (rulesProduceIndividualToken!2126 thiss!11007 rules!1047 (h!38801 l!4019))))

(declare-fun lt!1010127 () Unit!47369)

(assert (=> b!2831331 (= lt!1010127 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!744 thiss!11007 rules!1047 l!4019 (h!38801 l!4019)))))

(declare-fun res!1178633 () Bool)

(assert (=> start!274980 (=> (not res!1178633) (not e!1792568))))

(assert (=> start!274980 (= res!1178633 ((_ is Lexer!4592) thiss!11007))))

(assert (=> start!274980 e!1792568))

(assert (=> start!274980 true))

(assert (=> start!274980 e!1792567))

(assert (=> start!274980 e!1792569))

(assert (=> b!2831338 (= e!1792565 (and tp!904830 tp!904833))))

(assert (=> b!2831339 (= e!1792561 (and tp!904826 tp!904829))))

(declare-fun b!2831340 () Bool)

(declare-fun res!1178632 () Bool)

(assert (=> b!2831340 (=> (not res!1178632) (not e!1792568))))

(declare-fun rulesProduceEachTokenIndividuallyList!1637 (LexerInterface!4594 List!33506 List!33505) Bool)

(assert (=> b!2831340 (= res!1178632 (rulesProduceEachTokenIndividuallyList!1637 thiss!11007 rules!1047 l!4019))))

(assert (= (and start!274980 res!1178633) b!2831337))

(assert (= (and b!2831337 res!1178630) b!2831334))

(assert (= (and b!2831334 res!1178634) b!2831340))

(assert (= (and b!2831340 res!1178632) b!2831328))

(assert (= (and b!2831328 res!1178631) b!2831330))

(assert (= (and b!2831330 res!1178635) b!2831331))

(assert (= b!2831333 b!2831338))

(assert (= b!2831335 b!2831333))

(assert (= (and start!274980 ((_ is Cons!33382) rules!1047)) b!2831335))

(assert (= b!2831329 b!2831339))

(assert (= b!2831336 b!2831329))

(assert (= b!2831332 b!2831336))

(assert (= (and start!274980 ((_ is Cons!33381) l!4019)) b!2831332))

(declare-fun m!3260867 () Bool)

(assert (=> b!2831337 m!3260867))

(declare-fun m!3260869 () Bool)

(assert (=> b!2831336 m!3260869))

(declare-fun m!3260871 () Bool)

(assert (=> b!2831331 m!3260871))

(declare-fun m!3260873 () Bool)

(assert (=> b!2831331 m!3260873))

(declare-fun m!3260875 () Bool)

(assert (=> b!2831331 m!3260875))

(declare-fun m!3260877 () Bool)

(assert (=> b!2831331 m!3260877))

(declare-fun m!3260879 () Bool)

(assert (=> b!2831331 m!3260879))

(declare-fun m!3260881 () Bool)

(assert (=> b!2831331 m!3260881))

(declare-fun m!3260883 () Bool)

(assert (=> b!2831331 m!3260883))

(declare-fun m!3260885 () Bool)

(assert (=> b!2831334 m!3260885))

(declare-fun m!3260887 () Bool)

(assert (=> b!2831340 m!3260887))

(declare-fun m!3260889 () Bool)

(assert (=> b!2831329 m!3260889))

(declare-fun m!3260891 () Bool)

(assert (=> b!2831329 m!3260891))

(declare-fun m!3260893 () Bool)

(assert (=> b!2831332 m!3260893))

(declare-fun m!3260895 () Bool)

(assert (=> b!2831333 m!3260895))

(declare-fun m!3260897 () Bool)

(assert (=> b!2831333 m!3260897))

(declare-fun m!3260899 () Bool)

(assert (=> b!2831328 m!3260899))

(assert (=> b!2831328 m!3260899))

(declare-fun m!3260901 () Bool)

(assert (=> b!2831328 m!3260901))

(check-sat (not b!2831340) (not b!2831331) (not b!2831334) b_and!207073 (not b!2831335) (not b_next!82115) (not b_next!82113) (not b!2831337) (not b!2831333) (not b_next!82111) (not b_next!82109) b_and!207067 (not b!2831328) b_and!207069 b_and!207071 (not b!2831332) (not b!2831336) (not b!2831329))
(check-sat (not b_next!82111) b_and!207073 (not b_next!82115) (not b_next!82113) (not b_next!82109) b_and!207067 b_and!207069 b_and!207071)
(get-model)

(declare-fun b!2831365 () Bool)

(declare-fun e!1792589 () Bool)

(declare-fun inv!17 (TokenValue!5234) Bool)

(assert (=> b!2831365 (= e!1792589 (inv!17 (value!160983 (h!38801 l!4019))))))

(declare-fun b!2831366 () Bool)

(declare-fun e!1792587 () Bool)

(assert (=> b!2831366 (= e!1792587 e!1792589)))

(declare-fun c!457902 () Bool)

(assert (=> b!2831366 (= c!457902 ((_ is IntegerValue!15703) (value!160983 (h!38801 l!4019))))))

(declare-fun d!821348 () Bool)

(declare-fun c!457903 () Bool)

(assert (=> d!821348 (= c!457903 ((_ is IntegerValue!15702) (value!160983 (h!38801 l!4019))))))

(assert (=> d!821348 (= (inv!21 (value!160983 (h!38801 l!4019))) e!1792587)))

(declare-fun b!2831367 () Bool)

(declare-fun res!1178654 () Bool)

(declare-fun e!1792588 () Bool)

(assert (=> b!2831367 (=> res!1178654 e!1792588)))

(assert (=> b!2831367 (= res!1178654 (not ((_ is IntegerValue!15704) (value!160983 (h!38801 l!4019)))))))

(assert (=> b!2831367 (= e!1792589 e!1792588)))

(declare-fun b!2831368 () Bool)

(declare-fun inv!15 (TokenValue!5234) Bool)

(assert (=> b!2831368 (= e!1792588 (inv!15 (value!160983 (h!38801 l!4019))))))

(declare-fun b!2831369 () Bool)

(declare-fun inv!16 (TokenValue!5234) Bool)

(assert (=> b!2831369 (= e!1792587 (inv!16 (value!160983 (h!38801 l!4019))))))

(assert (= (and d!821348 c!457903) b!2831369))

(assert (= (and d!821348 (not c!457903)) b!2831366))

(assert (= (and b!2831366 c!457902) b!2831365))

(assert (= (and b!2831366 (not c!457902)) b!2831367))

(assert (= (and b!2831367 (not res!1178654)) b!2831368))

(declare-fun m!3260919 () Bool)

(assert (=> b!2831365 m!3260919))

(declare-fun m!3260921 () Bool)

(assert (=> b!2831368 m!3260921))

(declare-fun m!3260923 () Bool)

(assert (=> b!2831369 m!3260923))

(assert (=> b!2831336 d!821348))

(declare-fun d!821350 () Bool)

(assert (=> d!821350 (rulesProduceIndividualToken!2126 thiss!11007 rules!1047 (h!38801 (t!231382 l!4019)))))

(declare-fun lt!1010134 () Unit!47369)

(declare-fun choose!16720 (LexerInterface!4594 List!33506 List!33505 Token!9410) Unit!47369)

(assert (=> d!821350 (= lt!1010134 (choose!16720 thiss!11007 rules!1047 l!4019 (h!38801 (t!231382 l!4019))))))

(assert (=> d!821350 (not (isEmpty!18402 rules!1047))))

(assert (=> d!821350 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!744 thiss!11007 rules!1047 l!4019 (h!38801 (t!231382 l!4019))) lt!1010134)))

(declare-fun bs!518246 () Bool)

(assert (= bs!518246 d!821350))

(assert (=> bs!518246 m!3260883))

(declare-fun m!3260925 () Bool)

(assert (=> bs!518246 m!3260925))

(assert (=> bs!518246 m!3260867))

(assert (=> b!2831331 d!821350))

(declare-fun d!821352 () Bool)

(declare-fun lt!1010140 () Bool)

(declare-fun e!1792598 () Bool)

(assert (=> d!821352 (= lt!1010140 e!1792598)))

(declare-fun res!1178665 () Bool)

(assert (=> d!821352 (=> (not res!1178665) (not e!1792598))))

(declare-fun list!12472 (BalanceConc!20366) List!33505)

(declare-datatypes ((tuple2!33508 0))(
  ( (tuple2!33509 (_1!19866 BalanceConc!20366) (_2!19866 BalanceConc!20364)) )
))
(declare-fun lex!2014 (LexerInterface!4594 List!33506 BalanceConc!20364) tuple2!33508)

(declare-fun print!1733 (LexerInterface!4594 BalanceConc!20366) BalanceConc!20364)

(declare-fun singletonSeq!2161 (Token!9410) BalanceConc!20366)

(assert (=> d!821352 (= res!1178665 (= (list!12472 (_1!19866 (lex!2014 thiss!11007 rules!1047 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 l!4019)))))) (list!12472 (singletonSeq!2161 (h!38801 l!4019)))))))

(declare-fun e!1792599 () Bool)

(assert (=> d!821352 (= lt!1010140 e!1792599)))

(declare-fun res!1178667 () Bool)

(assert (=> d!821352 (=> (not res!1178667) (not e!1792599))))

(declare-fun lt!1010139 () tuple2!33508)

(declare-fun size!25975 (BalanceConc!20366) Int)

(assert (=> d!821352 (= res!1178667 (= (size!25975 (_1!19866 lt!1010139)) 1))))

(assert (=> d!821352 (= lt!1010139 (lex!2014 thiss!11007 rules!1047 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 l!4019)))))))

(assert (=> d!821352 (not (isEmpty!18402 rules!1047))))

(assert (=> d!821352 (= (rulesProduceIndividualToken!2126 thiss!11007 rules!1047 (h!38801 l!4019)) lt!1010140)))

(declare-fun b!2831380 () Bool)

(declare-fun res!1178666 () Bool)

(assert (=> b!2831380 (=> (not res!1178666) (not e!1792599))))

(declare-fun apply!7789 (BalanceConc!20366 Int) Token!9410)

(assert (=> b!2831380 (= res!1178666 (= (apply!7789 (_1!19866 lt!1010139) 0) (h!38801 l!4019)))))

(declare-fun b!2831381 () Bool)

(assert (=> b!2831381 (= e!1792599 (isEmpty!18403 (_2!19866 lt!1010139)))))

(declare-fun b!2831382 () Bool)

(assert (=> b!2831382 (= e!1792598 (isEmpty!18403 (_2!19866 (lex!2014 thiss!11007 rules!1047 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 l!4019)))))))))

(assert (= (and d!821352 res!1178667) b!2831380))

(assert (= (and b!2831380 res!1178666) b!2831381))

(assert (= (and d!821352 res!1178665) b!2831382))

(declare-fun m!3260927 () Bool)

(assert (=> d!821352 m!3260927))

(declare-fun m!3260929 () Bool)

(assert (=> d!821352 m!3260929))

(declare-fun m!3260931 () Bool)

(assert (=> d!821352 m!3260931))

(assert (=> d!821352 m!3260927))

(declare-fun m!3260933 () Bool)

(assert (=> d!821352 m!3260933))

(assert (=> d!821352 m!3260927))

(assert (=> d!821352 m!3260929))

(assert (=> d!821352 m!3260867))

(declare-fun m!3260935 () Bool)

(assert (=> d!821352 m!3260935))

(declare-fun m!3260937 () Bool)

(assert (=> d!821352 m!3260937))

(declare-fun m!3260939 () Bool)

(assert (=> b!2831380 m!3260939))

(declare-fun m!3260941 () Bool)

(assert (=> b!2831381 m!3260941))

(assert (=> b!2831382 m!3260927))

(assert (=> b!2831382 m!3260927))

(assert (=> b!2831382 m!3260929))

(assert (=> b!2831382 m!3260929))

(assert (=> b!2831382 m!3260931))

(declare-fun m!3260943 () Bool)

(assert (=> b!2831382 m!3260943))

(assert (=> b!2831331 d!821352))

(declare-fun d!821354 () Bool)

(declare-fun lt!1010144 () Int)

(declare-fun size!25976 (List!33504) Int)

(declare-fun list!12473 (BalanceConc!20364) List!33504)

(assert (=> d!821354 (= lt!1010144 (size!25976 (list!12473 lt!1010129)))))

(declare-fun size!25977 (Conc!10363) Int)

(assert (=> d!821354 (= lt!1010144 (size!25977 (c!457896 lt!1010129)))))

(assert (=> d!821354 (= (size!25971 lt!1010129) lt!1010144)))

(declare-fun bs!518247 () Bool)

(assert (= bs!518247 d!821354))

(declare-fun m!3260945 () Bool)

(assert (=> bs!518247 m!3260945))

(assert (=> bs!518247 m!3260945))

(declare-fun m!3260947 () Bool)

(assert (=> bs!518247 m!3260947))

(declare-fun m!3260949 () Bool)

(assert (=> bs!518247 m!3260949))

(assert (=> b!2831331 d!821354))

(declare-fun d!821356 () Bool)

(assert (=> d!821356 (rulesProduceIndividualToken!2126 thiss!11007 rules!1047 (h!38801 l!4019))))

(declare-fun lt!1010145 () Unit!47369)

(assert (=> d!821356 (= lt!1010145 (choose!16720 thiss!11007 rules!1047 l!4019 (h!38801 l!4019)))))

(assert (=> d!821356 (not (isEmpty!18402 rules!1047))))

(assert (=> d!821356 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!744 thiss!11007 rules!1047 l!4019 (h!38801 l!4019)) lt!1010145)))

(declare-fun bs!518248 () Bool)

(assert (= bs!518248 d!821356))

(assert (=> bs!518248 m!3260881))

(declare-fun m!3260953 () Bool)

(assert (=> bs!518248 m!3260953))

(assert (=> bs!518248 m!3260867))

(assert (=> b!2831331 d!821356))

(declare-fun d!821358 () Bool)

(declare-fun lt!1010147 () Bool)

(declare-fun e!1792611 () Bool)

(assert (=> d!821358 (= lt!1010147 e!1792611)))

(declare-fun res!1178670 () Bool)

(assert (=> d!821358 (=> (not res!1178670) (not e!1792611))))

(assert (=> d!821358 (= res!1178670 (= (list!12472 (_1!19866 (lex!2014 thiss!11007 rules!1047 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 (t!231382 l!4019))))))) (list!12472 (singletonSeq!2161 (h!38801 (t!231382 l!4019))))))))

(declare-fun e!1792612 () Bool)

(assert (=> d!821358 (= lt!1010147 e!1792612)))

(declare-fun res!1178672 () Bool)

(assert (=> d!821358 (=> (not res!1178672) (not e!1792612))))

(declare-fun lt!1010146 () tuple2!33508)

(assert (=> d!821358 (= res!1178672 (= (size!25975 (_1!19866 lt!1010146)) 1))))

(assert (=> d!821358 (= lt!1010146 (lex!2014 thiss!11007 rules!1047 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 (t!231382 l!4019))))))))

(assert (=> d!821358 (not (isEmpty!18402 rules!1047))))

(assert (=> d!821358 (= (rulesProduceIndividualToken!2126 thiss!11007 rules!1047 (h!38801 (t!231382 l!4019))) lt!1010147)))

(declare-fun b!2831398 () Bool)

(declare-fun res!1178671 () Bool)

(assert (=> b!2831398 (=> (not res!1178671) (not e!1792612))))

(assert (=> b!2831398 (= res!1178671 (= (apply!7789 (_1!19866 lt!1010146) 0) (h!38801 (t!231382 l!4019))))))

(declare-fun b!2831399 () Bool)

(assert (=> b!2831399 (= e!1792612 (isEmpty!18403 (_2!19866 lt!1010146)))))

(declare-fun b!2831400 () Bool)

(assert (=> b!2831400 (= e!1792611 (isEmpty!18403 (_2!19866 (lex!2014 thiss!11007 rules!1047 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 (t!231382 l!4019))))))))))

(assert (= (and d!821358 res!1178672) b!2831398))

(assert (= (and b!2831398 res!1178671) b!2831399))

(assert (= (and d!821358 res!1178670) b!2831400))

(declare-fun m!3260957 () Bool)

(assert (=> d!821358 m!3260957))

(declare-fun m!3260959 () Bool)

(assert (=> d!821358 m!3260959))

(declare-fun m!3260961 () Bool)

(assert (=> d!821358 m!3260961))

(assert (=> d!821358 m!3260957))

(declare-fun m!3260963 () Bool)

(assert (=> d!821358 m!3260963))

(assert (=> d!821358 m!3260957))

(assert (=> d!821358 m!3260959))

(assert (=> d!821358 m!3260867))

(declare-fun m!3260965 () Bool)

(assert (=> d!821358 m!3260965))

(declare-fun m!3260967 () Bool)

(assert (=> d!821358 m!3260967))

(declare-fun m!3260969 () Bool)

(assert (=> b!2831398 m!3260969))

(declare-fun m!3260971 () Bool)

(assert (=> b!2831399 m!3260971))

(assert (=> b!2831400 m!3260957))

(assert (=> b!2831400 m!3260957))

(assert (=> b!2831400 m!3260959))

(assert (=> b!2831400 m!3260959))

(assert (=> b!2831400 m!3260961))

(declare-fun m!3260973 () Bool)

(assert (=> b!2831400 m!3260973))

(assert (=> b!2831331 d!821358))

(declare-fun d!821364 () Bool)

(declare-fun lt!1010150 () BalanceConc!20364)

(assert (=> d!821364 (= (list!12473 lt!1010150) (originalCharacters!5736 (h!38801 (t!231382 l!4019))))))

(declare-fun dynLambda!14006 (Int TokenValue!5234) BalanceConc!20364)

(assert (=> d!821364 (= lt!1010150 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (value!160983 (h!38801 (t!231382 l!4019)))))))

(assert (=> d!821364 (= (charsOf!3100 (h!38801 (t!231382 l!4019))) lt!1010150)))

(declare-fun b_lambda!85001 () Bool)

(assert (=> (not b_lambda!85001) (not d!821364)))

(declare-fun t!231393 () Bool)

(declare-fun tb!154185 () Bool)

(assert (=> (and b!2831339 (= (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019)))))) t!231393) tb!154185))

(declare-fun b!2831408 () Bool)

(declare-fun e!1792618 () Bool)

(declare-fun tp!904840 () Bool)

(declare-fun inv!45333 (Conc!10363) Bool)

(assert (=> b!2831408 (= e!1792618 (and (inv!45333 (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (value!160983 (h!38801 (t!231382 l!4019)))))) tp!904840))))

(declare-fun result!192196 () Bool)

(declare-fun inv!45334 (BalanceConc!20364) Bool)

(assert (=> tb!154185 (= result!192196 (and (inv!45334 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (value!160983 (h!38801 (t!231382 l!4019))))) e!1792618))))

(assert (= tb!154185 b!2831408))

(declare-fun m!3260979 () Bool)

(assert (=> b!2831408 m!3260979))

(declare-fun m!3260981 () Bool)

(assert (=> tb!154185 m!3260981))

(assert (=> d!821364 t!231393))

(declare-fun b_and!207079 () Bool)

(assert (= b_and!207069 (and (=> t!231393 result!192196) b_and!207079)))

(declare-fun t!231395 () Bool)

(declare-fun tb!154187 () Bool)

(assert (=> (and b!2831338 (= (toChars!6889 (transformation!5004 (h!38802 rules!1047))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019)))))) t!231395) tb!154187))

(declare-fun result!192200 () Bool)

(assert (= result!192200 result!192196))

(assert (=> d!821364 t!231395))

(declare-fun b_and!207081 () Bool)

(assert (= b_and!207073 (and (=> t!231395 result!192200) b_and!207081)))

(declare-fun m!3260985 () Bool)

(assert (=> d!821364 m!3260985))

(declare-fun m!3260989 () Bool)

(assert (=> d!821364 m!3260989))

(assert (=> b!2831331 d!821364))

(declare-fun d!821372 () Bool)

(declare-fun lt!1010153 () Bool)

(declare-fun isEmpty!18406 (List!33504) Bool)

(assert (=> d!821372 (= lt!1010153 (isEmpty!18406 (list!12473 lt!1010129)))))

(declare-fun isEmpty!18407 (Conc!10363) Bool)

(assert (=> d!821372 (= lt!1010153 (isEmpty!18407 (c!457896 lt!1010129)))))

(assert (=> d!821372 (= (isEmpty!18403 lt!1010129) lt!1010153)))

(declare-fun bs!518249 () Bool)

(assert (= bs!518249 d!821372))

(assert (=> bs!518249 m!3260945))

(assert (=> bs!518249 m!3260945))

(declare-fun m!3260991 () Bool)

(assert (=> bs!518249 m!3260991))

(declare-fun m!3260993 () Bool)

(assert (=> bs!518249 m!3260993))

(assert (=> b!2831331 d!821372))

(declare-fun d!821374 () Bool)

(assert (=> d!821374 (= (isEmpty!18402 rules!1047) ((_ is Nil!33382) rules!1047))))

(assert (=> b!2831337 d!821374))

(declare-fun b!2831508 () Bool)

(declare-fun e!1792695 () Bool)

(assert (=> b!2831508 (= e!1792695 true)))

(declare-fun b!2831507 () Bool)

(declare-fun e!1792694 () Bool)

(assert (=> b!2831507 (= e!1792694 e!1792695)))

(declare-fun b!2831506 () Bool)

(declare-fun e!1792693 () Bool)

(assert (=> b!2831506 (= e!1792693 e!1792694)))

(declare-fun d!821376 () Bool)

(assert (=> d!821376 e!1792693))

(assert (= b!2831507 b!2831508))

(assert (= b!2831506 b!2831507))

(assert (= (and d!821376 ((_ is Cons!33382) rules!1047)) b!2831506))

(declare-fun order!17771 () Int)

(declare-fun order!17773 () Int)

(declare-fun lambda!103922 () Int)

(declare-fun dynLambda!14007 (Int Int) Int)

(declare-fun dynLambda!14008 (Int Int) Int)

(assert (=> b!2831508 (< (dynLambda!14007 order!17771 (toValue!7030 (transformation!5004 (h!38802 rules!1047)))) (dynLambda!14008 order!17773 lambda!103922))))

(declare-fun order!17775 () Int)

(declare-fun dynLambda!14009 (Int Int) Int)

(assert (=> b!2831508 (< (dynLambda!14009 order!17775 (toChars!6889 (transformation!5004 (h!38802 rules!1047)))) (dynLambda!14008 order!17773 lambda!103922))))

(assert (=> d!821376 true))

(declare-fun lt!1010180 () Bool)

(declare-fun forall!6851 (List!33505 Int) Bool)

(assert (=> d!821376 (= lt!1010180 (forall!6851 l!4019 lambda!103922))))

(declare-fun e!1792686 () Bool)

(assert (=> d!821376 (= lt!1010180 e!1792686)))

(declare-fun res!1178699 () Bool)

(assert (=> d!821376 (=> res!1178699 e!1792686)))

(assert (=> d!821376 (= res!1178699 (not ((_ is Cons!33381) l!4019)))))

(assert (=> d!821376 (not (isEmpty!18402 rules!1047))))

(assert (=> d!821376 (= (rulesProduceEachTokenIndividuallyList!1637 thiss!11007 rules!1047 l!4019) lt!1010180)))

(declare-fun b!2831496 () Bool)

(declare-fun e!1792685 () Bool)

(assert (=> b!2831496 (= e!1792686 e!1792685)))

(declare-fun res!1178700 () Bool)

(assert (=> b!2831496 (=> (not res!1178700) (not e!1792685))))

(assert (=> b!2831496 (= res!1178700 (rulesProduceIndividualToken!2126 thiss!11007 rules!1047 (h!38801 l!4019)))))

(declare-fun b!2831497 () Bool)

(assert (=> b!2831497 (= e!1792685 (rulesProduceEachTokenIndividuallyList!1637 thiss!11007 rules!1047 (t!231382 l!4019)))))

(assert (= (and d!821376 (not res!1178699)) b!2831496))

(assert (= (and b!2831496 res!1178700) b!2831497))

(declare-fun m!3261081 () Bool)

(assert (=> d!821376 m!3261081))

(assert (=> d!821376 m!3260867))

(assert (=> b!2831496 m!3260881))

(declare-fun m!3261083 () Bool)

(assert (=> b!2831497 m!3261083))

(assert (=> b!2831340 d!821376))

(declare-fun bs!518256 () Bool)

(declare-fun d!821396 () Bool)

(assert (= bs!518256 (and d!821396 d!821376)))

(declare-fun lambda!103927 () Int)

(assert (=> bs!518256 (= lambda!103927 lambda!103922)))

(declare-fun b!2831516 () Bool)

(declare-fun e!1792701 () Bool)

(assert (=> b!2831516 (= e!1792701 true)))

(declare-fun b!2831515 () Bool)

(declare-fun e!1792700 () Bool)

(assert (=> b!2831515 (= e!1792700 e!1792701)))

(declare-fun b!2831514 () Bool)

(declare-fun e!1792699 () Bool)

(assert (=> b!2831514 (= e!1792699 e!1792700)))

(assert (=> d!821396 e!1792699))

(assert (= b!2831515 b!2831516))

(assert (= b!2831514 b!2831515))

(assert (= (and d!821396 ((_ is Cons!33382) rules!1047)) b!2831514))

(assert (=> b!2831516 (< (dynLambda!14007 order!17771 (toValue!7030 (transformation!5004 (h!38802 rules!1047)))) (dynLambda!14008 order!17773 lambda!103927))))

(assert (=> b!2831516 (< (dynLambda!14009 order!17775 (toChars!6889 (transformation!5004 (h!38802 rules!1047)))) (dynLambda!14008 order!17773 lambda!103927))))

(assert (=> d!821396 true))

(declare-fun e!1792698 () Bool)

(assert (=> d!821396 e!1792698))

(declare-fun res!1178703 () Bool)

(assert (=> d!821396 (=> (not res!1178703) (not e!1792698))))

(declare-fun lt!1010183 () Bool)

(assert (=> d!821396 (= res!1178703 (= lt!1010183 (forall!6851 (list!12472 (seqFromList!3250 l!4019)) lambda!103927)))))

(declare-fun forall!6852 (BalanceConc!20366 Int) Bool)

(assert (=> d!821396 (= lt!1010183 (forall!6852 (seqFromList!3250 l!4019) lambda!103927))))

(assert (=> d!821396 (not (isEmpty!18402 rules!1047))))

(assert (=> d!821396 (= (rulesProduceEachTokenIndividually!1110 thiss!11007 rules!1047 (seqFromList!3250 l!4019)) lt!1010183)))

(declare-fun b!2831513 () Bool)

(assert (=> b!2831513 (= e!1792698 (= lt!1010183 (rulesProduceEachTokenIndividuallyList!1637 thiss!11007 rules!1047 (list!12472 (seqFromList!3250 l!4019)))))))

(assert (= (and d!821396 res!1178703) b!2831513))

(assert (=> d!821396 m!3260899))

(declare-fun m!3261085 () Bool)

(assert (=> d!821396 m!3261085))

(assert (=> d!821396 m!3261085))

(declare-fun m!3261087 () Bool)

(assert (=> d!821396 m!3261087))

(assert (=> d!821396 m!3260899))

(declare-fun m!3261089 () Bool)

(assert (=> d!821396 m!3261089))

(assert (=> d!821396 m!3260867))

(assert (=> b!2831513 m!3260899))

(assert (=> b!2831513 m!3261085))

(assert (=> b!2831513 m!3261085))

(declare-fun m!3261091 () Bool)

(assert (=> b!2831513 m!3261091))

(assert (=> b!2831328 d!821396))

(declare-fun d!821398 () Bool)

(declare-fun fromListB!1469 (List!33505) BalanceConc!20366)

(assert (=> d!821398 (= (seqFromList!3250 l!4019) (fromListB!1469 l!4019))))

(declare-fun bs!518257 () Bool)

(assert (= bs!518257 d!821398))

(declare-fun m!3261093 () Bool)

(assert (=> bs!518257 m!3261093))

(assert (=> b!2831328 d!821398))

(declare-fun d!821400 () Bool)

(declare-fun res!1178706 () Bool)

(declare-fun e!1792704 () Bool)

(assert (=> d!821400 (=> (not res!1178706) (not e!1792704))))

(declare-fun rulesValid!1848 (LexerInterface!4594 List!33506) Bool)

(assert (=> d!821400 (= res!1178706 (rulesValid!1848 thiss!11007 rules!1047))))

(assert (=> d!821400 (= (rulesInvariant!4010 thiss!11007 rules!1047) e!1792704)))

(declare-fun b!2831519 () Bool)

(declare-datatypes ((List!33508 0))(
  ( (Nil!33384) (Cons!33384 (h!38804 String!36692) (t!231433 List!33508)) )
))
(declare-fun noDuplicateTag!1844 (LexerInterface!4594 List!33506 List!33508) Bool)

(assert (=> b!2831519 (= e!1792704 (noDuplicateTag!1844 thiss!11007 rules!1047 Nil!33384))))

(assert (= (and d!821400 res!1178706) b!2831519))

(declare-fun m!3261095 () Bool)

(assert (=> d!821400 m!3261095))

(declare-fun m!3261097 () Bool)

(assert (=> b!2831519 m!3261097))

(assert (=> b!2831334 d!821400))

(declare-fun d!821402 () Bool)

(assert (=> d!821402 (= (inv!45326 (tag!5508 (rule!7432 (h!38801 l!4019)))) (= (mod (str.len (value!160982 (tag!5508 (rule!7432 (h!38801 l!4019))))) 2) 0))))

(assert (=> b!2831329 d!821402))

(declare-fun d!821404 () Bool)

(declare-fun res!1178709 () Bool)

(declare-fun e!1792707 () Bool)

(assert (=> d!821404 (=> (not res!1178709) (not e!1792707))))

(declare-fun semiInverseModEq!2078 (Int Int) Bool)

(assert (=> d!821404 (= res!1178709 (semiInverseModEq!2078 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (toValue!7030 (transformation!5004 (rule!7432 (h!38801 l!4019))))))))

(assert (=> d!821404 (= (inv!45329 (transformation!5004 (rule!7432 (h!38801 l!4019)))) e!1792707)))

(declare-fun b!2831522 () Bool)

(declare-fun equivClasses!1977 (Int Int) Bool)

(assert (=> b!2831522 (= e!1792707 (equivClasses!1977 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (toValue!7030 (transformation!5004 (rule!7432 (h!38801 l!4019))))))))

(assert (= (and d!821404 res!1178709) b!2831522))

(declare-fun m!3261099 () Bool)

(assert (=> d!821404 m!3261099))

(declare-fun m!3261101 () Bool)

(assert (=> b!2831522 m!3261101))

(assert (=> b!2831329 d!821404))

(declare-fun d!821406 () Bool)

(declare-fun res!1178714 () Bool)

(declare-fun e!1792710 () Bool)

(assert (=> d!821406 (=> (not res!1178714) (not e!1792710))))

(assert (=> d!821406 (= res!1178714 (not (isEmpty!18406 (originalCharacters!5736 (h!38801 l!4019)))))))

(assert (=> d!821406 (= (inv!45330 (h!38801 l!4019)) e!1792710)))

(declare-fun b!2831527 () Bool)

(declare-fun res!1178715 () Bool)

(assert (=> b!2831527 (=> (not res!1178715) (not e!1792710))))

(assert (=> b!2831527 (= res!1178715 (= (originalCharacters!5736 (h!38801 l!4019)) (list!12473 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (value!160983 (h!38801 l!4019))))))))

(declare-fun b!2831528 () Bool)

(assert (=> b!2831528 (= e!1792710 (= (size!25970 (h!38801 l!4019)) (size!25976 (originalCharacters!5736 (h!38801 l!4019)))))))

(assert (= (and d!821406 res!1178714) b!2831527))

(assert (= (and b!2831527 res!1178715) b!2831528))

(declare-fun b_lambda!85009 () Bool)

(assert (=> (not b_lambda!85009) (not b!2831527)))

(declare-fun t!231422 () Bool)

(declare-fun tb!154201 () Bool)

(assert (=> (and b!2831339 (= (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019))))) t!231422) tb!154201))

(declare-fun b!2831529 () Bool)

(declare-fun e!1792711 () Bool)

(declare-fun tp!904892 () Bool)

(assert (=> b!2831529 (= e!1792711 (and (inv!45333 (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (value!160983 (h!38801 l!4019))))) tp!904892))))

(declare-fun result!192222 () Bool)

(assert (=> tb!154201 (= result!192222 (and (inv!45334 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (value!160983 (h!38801 l!4019)))) e!1792711))))

(assert (= tb!154201 b!2831529))

(declare-fun m!3261103 () Bool)

(assert (=> b!2831529 m!3261103))

(declare-fun m!3261105 () Bool)

(assert (=> tb!154201 m!3261105))

(assert (=> b!2831527 t!231422))

(declare-fun b_and!207095 () Bool)

(assert (= b_and!207079 (and (=> t!231422 result!192222) b_and!207095)))

(declare-fun tb!154203 () Bool)

(declare-fun t!231424 () Bool)

(assert (=> (and b!2831338 (= (toChars!6889 (transformation!5004 (h!38802 rules!1047))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019))))) t!231424) tb!154203))

(declare-fun result!192224 () Bool)

(assert (= result!192224 result!192222))

(assert (=> b!2831527 t!231424))

(declare-fun b_and!207097 () Bool)

(assert (= b_and!207081 (and (=> t!231424 result!192224) b_and!207097)))

(declare-fun m!3261107 () Bool)

(assert (=> d!821406 m!3261107))

(declare-fun m!3261109 () Bool)

(assert (=> b!2831527 m!3261109))

(assert (=> b!2831527 m!3261109))

(declare-fun m!3261111 () Bool)

(assert (=> b!2831527 m!3261111))

(declare-fun m!3261113 () Bool)

(assert (=> b!2831528 m!3261113))

(assert (=> b!2831332 d!821406))

(declare-fun d!821408 () Bool)

(assert (=> d!821408 (= (inv!45326 (tag!5508 (h!38802 rules!1047))) (= (mod (str.len (value!160982 (tag!5508 (h!38802 rules!1047)))) 2) 0))))

(assert (=> b!2831333 d!821408))

(declare-fun d!821410 () Bool)

(declare-fun res!1178716 () Bool)

(declare-fun e!1792712 () Bool)

(assert (=> d!821410 (=> (not res!1178716) (not e!1792712))))

(assert (=> d!821410 (= res!1178716 (semiInverseModEq!2078 (toChars!6889 (transformation!5004 (h!38802 rules!1047))) (toValue!7030 (transformation!5004 (h!38802 rules!1047)))))))

(assert (=> d!821410 (= (inv!45329 (transformation!5004 (h!38802 rules!1047))) e!1792712)))

(declare-fun b!2831530 () Bool)

(assert (=> b!2831530 (= e!1792712 (equivClasses!1977 (toChars!6889 (transformation!5004 (h!38802 rules!1047))) (toValue!7030 (transformation!5004 (h!38802 rules!1047)))))))

(assert (= (and d!821410 res!1178716) b!2831530))

(declare-fun m!3261115 () Bool)

(assert (=> d!821410 m!3261115))

(declare-fun m!3261117 () Bool)

(assert (=> b!2831530 m!3261117))

(assert (=> b!2831333 d!821410))

(declare-fun b!2831535 () Bool)

(declare-fun e!1792715 () Bool)

(declare-fun tp_is_empty!14567 () Bool)

(declare-fun tp!904895 () Bool)

(assert (=> b!2831535 (= e!1792715 (and tp_is_empty!14567 tp!904895))))

(assert (=> b!2831336 (= tp!904834 e!1792715)))

(assert (= (and b!2831336 ((_ is Cons!33380) (originalCharacters!5736 (h!38801 l!4019)))) b!2831535))

(declare-fun b!2831546 () Bool)

(declare-fun b_free!81421 () Bool)

(declare-fun b_next!82125 () Bool)

(assert (=> b!2831546 (= b_free!81421 (not b_next!82125))))

(declare-fun tp!904905 () Bool)

(declare-fun b_and!207099 () Bool)

(assert (=> b!2831546 (= tp!904905 b_and!207099)))

(declare-fun b_free!81423 () Bool)

(declare-fun b_next!82127 () Bool)

(assert (=> b!2831546 (= b_free!81423 (not b_next!82127))))

(declare-fun t!231426 () Bool)

(declare-fun tb!154205 () Bool)

(assert (=> (and b!2831546 (= (toChars!6889 (transformation!5004 (h!38802 (t!231383 rules!1047)))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019)))))) t!231426) tb!154205))

(declare-fun result!192230 () Bool)

(assert (= result!192230 result!192196))

(assert (=> d!821364 t!231426))

(declare-fun tb!154207 () Bool)

(declare-fun t!231428 () Bool)

(assert (=> (and b!2831546 (= (toChars!6889 (transformation!5004 (h!38802 (t!231383 rules!1047)))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019))))) t!231428) tb!154207))

(declare-fun result!192232 () Bool)

(assert (= result!192232 result!192222))

(assert (=> b!2831527 t!231428))

(declare-fun tp!904907 () Bool)

(declare-fun b_and!207101 () Bool)

(assert (=> b!2831546 (= tp!904907 (and (=> t!231426 result!192230) (=> t!231428 result!192232) b_and!207101))))

(declare-fun e!1792724 () Bool)

(assert (=> b!2831546 (= e!1792724 (and tp!904905 tp!904907))))

(declare-fun b!2831545 () Bool)

(declare-fun e!1792727 () Bool)

(declare-fun tp!904904 () Bool)

(assert (=> b!2831545 (= e!1792727 (and tp!904904 (inv!45326 (tag!5508 (h!38802 (t!231383 rules!1047)))) (inv!45329 (transformation!5004 (h!38802 (t!231383 rules!1047)))) e!1792724))))

(declare-fun b!2831544 () Bool)

(declare-fun e!1792726 () Bool)

(declare-fun tp!904906 () Bool)

(assert (=> b!2831544 (= e!1792726 (and e!1792727 tp!904906))))

(assert (=> b!2831335 (= tp!904827 e!1792726)))

(assert (= b!2831545 b!2831546))

(assert (= b!2831544 b!2831545))

(assert (= (and b!2831335 ((_ is Cons!33382) (t!231383 rules!1047))) b!2831544))

(declare-fun m!3261119 () Bool)

(assert (=> b!2831545 m!3261119))

(declare-fun m!3261121 () Bool)

(assert (=> b!2831545 m!3261121))

(declare-fun b!2831557 () Bool)

(declare-fun e!1792730 () Bool)

(assert (=> b!2831557 (= e!1792730 tp_is_empty!14567)))

(declare-fun b!2831559 () Bool)

(declare-fun tp!904920 () Bool)

(assert (=> b!2831559 (= e!1792730 tp!904920)))

(assert (=> b!2831329 (= tp!904832 e!1792730)))

(declare-fun b!2831558 () Bool)

(declare-fun tp!904919 () Bool)

(declare-fun tp!904922 () Bool)

(assert (=> b!2831558 (= e!1792730 (and tp!904919 tp!904922))))

(declare-fun b!2831560 () Bool)

(declare-fun tp!904918 () Bool)

(declare-fun tp!904921 () Bool)

(assert (=> b!2831560 (= e!1792730 (and tp!904918 tp!904921))))

(assert (= (and b!2831329 ((_ is ElementMatch!8395) (regex!5004 (rule!7432 (h!38801 l!4019))))) b!2831557))

(assert (= (and b!2831329 ((_ is Concat!13630) (regex!5004 (rule!7432 (h!38801 l!4019))))) b!2831558))

(assert (= (and b!2831329 ((_ is Star!8395) (regex!5004 (rule!7432 (h!38801 l!4019))))) b!2831559))

(assert (= (and b!2831329 ((_ is Union!8395) (regex!5004 (rule!7432 (h!38801 l!4019))))) b!2831560))

(declare-fun b!2831574 () Bool)

(declare-fun b_free!81425 () Bool)

(declare-fun b_next!82129 () Bool)

(assert (=> b!2831574 (= b_free!81425 (not b_next!82129))))

(declare-fun tp!904935 () Bool)

(declare-fun b_and!207103 () Bool)

(assert (=> b!2831574 (= tp!904935 b_and!207103)))

(declare-fun b_free!81427 () Bool)

(declare-fun b_next!82131 () Bool)

(assert (=> b!2831574 (= b_free!81427 (not b_next!82131))))

(declare-fun t!231430 () Bool)

(declare-fun tb!154209 () Bool)

(assert (=> (and b!2831574 (= (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019)))))) t!231430) tb!154209))

(declare-fun result!192238 () Bool)

(assert (= result!192238 result!192196))

(assert (=> d!821364 t!231430))

(declare-fun t!231432 () Bool)

(declare-fun tb!154211 () Bool)

(assert (=> (and b!2831574 (= (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019))))) t!231432) tb!154211))

(declare-fun result!192240 () Bool)

(assert (= result!192240 result!192222))

(assert (=> b!2831527 t!231432))

(declare-fun tp!904937 () Bool)

(declare-fun b_and!207105 () Bool)

(assert (=> b!2831574 (= tp!904937 (and (=> t!231430 result!192238) (=> t!231432 result!192240) b_and!207105))))

(declare-fun tp!904936 () Bool)

(declare-fun e!1792747 () Bool)

(declare-fun b!2831573 () Bool)

(declare-fun e!1792746 () Bool)

(assert (=> b!2831573 (= e!1792747 (and tp!904936 (inv!45326 (tag!5508 (rule!7432 (h!38801 (t!231382 l!4019))))) (inv!45329 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) e!1792746))))

(declare-fun tp!904934 () Bool)

(declare-fun e!1792744 () Bool)

(declare-fun b!2831571 () Bool)

(declare-fun e!1792748 () Bool)

(assert (=> b!2831571 (= e!1792744 (and (inv!45330 (h!38801 (t!231382 l!4019))) e!1792748 tp!904934))))

(assert (=> b!2831332 (= tp!904828 e!1792744)))

(declare-fun tp!904933 () Bool)

(declare-fun b!2831572 () Bool)

(assert (=> b!2831572 (= e!1792748 (and (inv!21 (value!160983 (h!38801 (t!231382 l!4019)))) e!1792747 tp!904933))))

(assert (=> b!2831574 (= e!1792746 (and tp!904935 tp!904937))))

(assert (= b!2831573 b!2831574))

(assert (= b!2831572 b!2831573))

(assert (= b!2831571 b!2831572))

(assert (= (and b!2831332 ((_ is Cons!33381) (t!231382 l!4019))) b!2831571))

(declare-fun m!3261123 () Bool)

(assert (=> b!2831573 m!3261123))

(declare-fun m!3261125 () Bool)

(assert (=> b!2831573 m!3261125))

(declare-fun m!3261127 () Bool)

(assert (=> b!2831571 m!3261127))

(declare-fun m!3261129 () Bool)

(assert (=> b!2831572 m!3261129))

(declare-fun b!2831575 () Bool)

(declare-fun e!1792749 () Bool)

(assert (=> b!2831575 (= e!1792749 tp_is_empty!14567)))

(declare-fun b!2831577 () Bool)

(declare-fun tp!904940 () Bool)

(assert (=> b!2831577 (= e!1792749 tp!904940)))

(assert (=> b!2831333 (= tp!904831 e!1792749)))

(declare-fun b!2831576 () Bool)

(declare-fun tp!904939 () Bool)

(declare-fun tp!904942 () Bool)

(assert (=> b!2831576 (= e!1792749 (and tp!904939 tp!904942))))

(declare-fun b!2831578 () Bool)

(declare-fun tp!904938 () Bool)

(declare-fun tp!904941 () Bool)

(assert (=> b!2831578 (= e!1792749 (and tp!904938 tp!904941))))

(assert (= (and b!2831333 ((_ is ElementMatch!8395) (regex!5004 (h!38802 rules!1047)))) b!2831575))

(assert (= (and b!2831333 ((_ is Concat!13630) (regex!5004 (h!38802 rules!1047)))) b!2831576))

(assert (= (and b!2831333 ((_ is Star!8395) (regex!5004 (h!38802 rules!1047)))) b!2831577))

(assert (= (and b!2831333 ((_ is Union!8395) (regex!5004 (h!38802 rules!1047)))) b!2831578))

(declare-fun b_lambda!85011 () Bool)

(assert (= b_lambda!85001 (or (and b!2831339 b_free!81407 (= (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))))) (and b!2831338 b_free!81411 (= (toChars!6889 (transformation!5004 (h!38802 rules!1047))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))))) (and b!2831546 b_free!81423 (= (toChars!6889 (transformation!5004 (h!38802 (t!231383 rules!1047)))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))))) (and b!2831574 b_free!81427) b_lambda!85011)))

(declare-fun b_lambda!85013 () Bool)

(assert (= b_lambda!85009 (or (and b!2831339 b_free!81407) (and b!2831338 b_free!81411 (= (toChars!6889 (transformation!5004 (h!38802 rules!1047))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))))) (and b!2831546 b_free!81423 (= (toChars!6889 (transformation!5004 (h!38802 (t!231383 rules!1047)))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))))) (and b!2831574 b_free!81427 (= (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))))) b_lambda!85013)))

(check-sat (not b!2831514) (not d!821350) (not b!2831513) b_and!207105 (not b!2831399) (not b_next!82115) (not b!2831571) (not b_lambda!85011) (not d!821352) (not tb!154201) (not b!2831577) (not b!2831519) (not b!2831522) (not b!2831398) b_and!207097 b_and!207095 (not b!2831527) (not d!821354) (not b!2831558) (not b!2831528) (not d!821404) (not d!821396) (not b_next!82111) (not b!2831545) (not d!821410) (not b!2831382) (not b!2831506) (not tb!154185) (not b!2831544) (not b!2831400) (not b!2831368) (not b!2831560) (not b_next!82109) b_and!207067 (not d!821406) (not d!821356) (not b_next!82125) (not d!821400) (not b_lambda!85013) b_and!207099 (not b!2831530) (not d!821376) (not b!2831535) b_and!207103 (not b_next!82129) (not b!2831559) (not b!2831572) (not b!2831573) (not d!821398) b_and!207071 (not b!2831381) (not b!2831578) (not b_next!82127) (not b_next!82131) (not d!821372) tp_is_empty!14567 (not b!2831576) (not b_next!82113) (not d!821364) (not b!2831380) (not b!2831496) (not b!2831369) (not b!2831365) b_and!207101 (not b!2831497) (not b!2831408) (not b!2831529) (not d!821358))
(check-sat (not b_next!82111) (not b_next!82125) b_and!207099 b_and!207105 b_and!207071 (not b_next!82115) (not b_next!82113) b_and!207101 b_and!207097 b_and!207095 (not b_next!82109) b_and!207067 b_and!207103 (not b_next!82129) (not b_next!82127) (not b_next!82131))
(get-model)

(declare-fun d!821420 () Bool)

(declare-fun c!457912 () Bool)

(assert (=> d!821420 (= c!457912 ((_ is Node!10363) (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (value!160983 (h!38801 (t!231382 l!4019)))))))))

(declare-fun e!1792760 () Bool)

(assert (=> d!821420 (= (inv!45333 (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (value!160983 (h!38801 (t!231382 l!4019)))))) e!1792760)))

(declare-fun b!2831591 () Bool)

(declare-fun inv!45337 (Conc!10363) Bool)

(assert (=> b!2831591 (= e!1792760 (inv!45337 (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (value!160983 (h!38801 (t!231382 l!4019)))))))))

(declare-fun b!2831592 () Bool)

(declare-fun e!1792761 () Bool)

(assert (=> b!2831592 (= e!1792760 e!1792761)))

(declare-fun res!1178731 () Bool)

(assert (=> b!2831592 (= res!1178731 (not ((_ is Leaf!15773) (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (value!160983 (h!38801 (t!231382 l!4019))))))))))

(assert (=> b!2831592 (=> res!1178731 e!1792761)))

(declare-fun b!2831593 () Bool)

(declare-fun inv!45338 (Conc!10363) Bool)

(assert (=> b!2831593 (= e!1792761 (inv!45338 (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (value!160983 (h!38801 (t!231382 l!4019)))))))))

(assert (= (and d!821420 c!457912) b!2831591))

(assert (= (and d!821420 (not c!457912)) b!2831592))

(assert (= (and b!2831592 (not res!1178731)) b!2831593))

(declare-fun m!3261143 () Bool)

(assert (=> b!2831591 m!3261143))

(declare-fun m!3261145 () Bool)

(assert (=> b!2831593 m!3261145))

(assert (=> b!2831408 d!821420))

(declare-fun d!821422 () Bool)

(declare-fun list!12475 (Conc!10363) List!33504)

(assert (=> d!821422 (= (list!12473 lt!1010150) (list!12475 (c!457896 lt!1010150)))))

(declare-fun bs!518260 () Bool)

(assert (= bs!518260 d!821422))

(declare-fun m!3261147 () Bool)

(assert (=> bs!518260 m!3261147))

(assert (=> d!821364 d!821422))

(declare-fun d!821424 () Bool)

(assert (=> d!821424 (= (inv!45326 (tag!5508 (h!38802 (t!231383 rules!1047)))) (= (mod (str.len (value!160982 (tag!5508 (h!38802 (t!231383 rules!1047))))) 2) 0))))

(assert (=> b!2831545 d!821424))

(declare-fun d!821426 () Bool)

(declare-fun res!1178732 () Bool)

(declare-fun e!1792762 () Bool)

(assert (=> d!821426 (=> (not res!1178732) (not e!1792762))))

(assert (=> d!821426 (= res!1178732 (semiInverseModEq!2078 (toChars!6889 (transformation!5004 (h!38802 (t!231383 rules!1047)))) (toValue!7030 (transformation!5004 (h!38802 (t!231383 rules!1047))))))))

(assert (=> d!821426 (= (inv!45329 (transformation!5004 (h!38802 (t!231383 rules!1047)))) e!1792762)))

(declare-fun b!2831594 () Bool)

(assert (=> b!2831594 (= e!1792762 (equivClasses!1977 (toChars!6889 (transformation!5004 (h!38802 (t!231383 rules!1047)))) (toValue!7030 (transformation!5004 (h!38802 (t!231383 rules!1047))))))))

(assert (= (and d!821426 res!1178732) b!2831594))

(declare-fun m!3261149 () Bool)

(assert (=> d!821426 m!3261149))

(declare-fun m!3261151 () Bool)

(assert (=> b!2831594 m!3261151))

(assert (=> b!2831545 d!821426))

(declare-fun d!821428 () Bool)

(declare-fun isBalanced!3127 (Conc!10363) Bool)

(assert (=> d!821428 (= (inv!45334 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (value!160983 (h!38801 (t!231382 l!4019))))) (isBalanced!3127 (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (value!160983 (h!38801 (t!231382 l!4019)))))))))

(declare-fun bs!518261 () Bool)

(assert (= bs!518261 d!821428))

(declare-fun m!3261153 () Bool)

(assert (=> bs!518261 m!3261153))

(assert (=> tb!154185 d!821428))

(declare-fun d!821430 () Bool)

(assert (=> d!821430 true))

(declare-fun order!17777 () Int)

(declare-fun lambda!103930 () Int)

(declare-fun dynLambda!14012 (Int Int) Int)

(assert (=> d!821430 (< (dynLambda!14009 order!17775 (toChars!6889 (transformation!5004 (h!38802 rules!1047)))) (dynLambda!14012 order!17777 lambda!103930))))

(assert (=> d!821430 true))

(assert (=> d!821430 (< (dynLambda!14007 order!17771 (toValue!7030 (transformation!5004 (h!38802 rules!1047)))) (dynLambda!14012 order!17777 lambda!103930))))

(declare-fun Forall!1238 (Int) Bool)

(assert (=> d!821430 (= (semiInverseModEq!2078 (toChars!6889 (transformation!5004 (h!38802 rules!1047))) (toValue!7030 (transformation!5004 (h!38802 rules!1047)))) (Forall!1238 lambda!103930))))

(declare-fun bs!518262 () Bool)

(assert (= bs!518262 d!821430))

(declare-fun m!3261155 () Bool)

(assert (=> bs!518262 m!3261155))

(assert (=> d!821410 d!821430))

(declare-fun d!821432 () Bool)

(declare-fun c!457913 () Bool)

(assert (=> d!821432 (= c!457913 ((_ is Node!10363) (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (value!160983 (h!38801 l!4019))))))))

(declare-fun e!1792763 () Bool)

(assert (=> d!821432 (= (inv!45333 (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (value!160983 (h!38801 l!4019))))) e!1792763)))

(declare-fun b!2831599 () Bool)

(assert (=> b!2831599 (= e!1792763 (inv!45337 (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (value!160983 (h!38801 l!4019))))))))

(declare-fun b!2831600 () Bool)

(declare-fun e!1792764 () Bool)

(assert (=> b!2831600 (= e!1792763 e!1792764)))

(declare-fun res!1178733 () Bool)

(assert (=> b!2831600 (= res!1178733 (not ((_ is Leaf!15773) (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (value!160983 (h!38801 l!4019)))))))))

(assert (=> b!2831600 (=> res!1178733 e!1792764)))

(declare-fun b!2831601 () Bool)

(assert (=> b!2831601 (= e!1792764 (inv!45338 (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (value!160983 (h!38801 l!4019))))))))

(assert (= (and d!821432 c!457913) b!2831599))

(assert (= (and d!821432 (not c!457913)) b!2831600))

(assert (= (and b!2831600 (not res!1178733)) b!2831601))

(declare-fun m!3261157 () Bool)

(assert (=> b!2831599 m!3261157))

(declare-fun m!3261159 () Bool)

(assert (=> b!2831601 m!3261159))

(assert (=> b!2831529 d!821432))

(assert (=> d!821350 d!821358))

(declare-fun d!821434 () Bool)

(assert (=> d!821434 (rulesProduceIndividualToken!2126 thiss!11007 rules!1047 (h!38801 (t!231382 l!4019)))))

(assert (=> d!821434 true))

(declare-fun _$77!746 () Unit!47369)

(assert (=> d!821434 (= (choose!16720 thiss!11007 rules!1047 l!4019 (h!38801 (t!231382 l!4019))) _$77!746)))

(declare-fun bs!518265 () Bool)

(assert (= bs!518265 d!821434))

(assert (=> bs!518265 m!3260883))

(assert (=> d!821350 d!821434))

(assert (=> d!821350 d!821374))

(declare-fun d!821442 () Bool)

(declare-fun lt!1010188 () Int)

(assert (=> d!821442 (>= lt!1010188 0)))

(declare-fun e!1792773 () Int)

(assert (=> d!821442 (= lt!1010188 e!1792773)))

(declare-fun c!457919 () Bool)

(assert (=> d!821442 (= c!457919 ((_ is Nil!33380) (list!12473 lt!1010129)))))

(assert (=> d!821442 (= (size!25976 (list!12473 lt!1010129)) lt!1010188)))

(declare-fun b!2831615 () Bool)

(assert (=> b!2831615 (= e!1792773 0)))

(declare-fun b!2831616 () Bool)

(assert (=> b!2831616 (= e!1792773 (+ 1 (size!25976 (t!231381 (list!12473 lt!1010129)))))))

(assert (= (and d!821442 c!457919) b!2831615))

(assert (= (and d!821442 (not c!457919)) b!2831616))

(declare-fun m!3261171 () Bool)

(assert (=> b!2831616 m!3261171))

(assert (=> d!821354 d!821442))

(declare-fun d!821444 () Bool)

(assert (=> d!821444 (= (list!12473 lt!1010129) (list!12475 (c!457896 lt!1010129)))))

(declare-fun bs!518266 () Bool)

(assert (= bs!518266 d!821444))

(declare-fun m!3261173 () Bool)

(assert (=> bs!518266 m!3261173))

(assert (=> d!821354 d!821444))

(declare-fun d!821446 () Bool)

(declare-fun lt!1010191 () Int)

(assert (=> d!821446 (= lt!1010191 (size!25976 (list!12475 (c!457896 lt!1010129))))))

(assert (=> d!821446 (= lt!1010191 (ite ((_ is Empty!10363) (c!457896 lt!1010129)) 0 (ite ((_ is Leaf!15773) (c!457896 lt!1010129)) (csize!20957 (c!457896 lt!1010129)) (csize!20956 (c!457896 lt!1010129)))))))

(assert (=> d!821446 (= (size!25977 (c!457896 lt!1010129)) lt!1010191)))

(declare-fun bs!518267 () Bool)

(assert (= bs!518267 d!821446))

(assert (=> bs!518267 m!3261173))

(assert (=> bs!518267 m!3261173))

(declare-fun m!3261175 () Bool)

(assert (=> bs!518267 m!3261175))

(assert (=> d!821354 d!821446))

(declare-fun d!821448 () Bool)

(declare-fun res!1178737 () Bool)

(declare-fun e!1792774 () Bool)

(assert (=> d!821448 (=> (not res!1178737) (not e!1792774))))

(assert (=> d!821448 (= res!1178737 (not (isEmpty!18406 (originalCharacters!5736 (h!38801 (t!231382 l!4019))))))))

(assert (=> d!821448 (= (inv!45330 (h!38801 (t!231382 l!4019))) e!1792774)))

(declare-fun b!2831617 () Bool)

(declare-fun res!1178738 () Bool)

(assert (=> b!2831617 (=> (not res!1178738) (not e!1792774))))

(assert (=> b!2831617 (= res!1178738 (= (originalCharacters!5736 (h!38801 (t!231382 l!4019))) (list!12473 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (value!160983 (h!38801 (t!231382 l!4019)))))))))

(declare-fun b!2831618 () Bool)

(assert (=> b!2831618 (= e!1792774 (= (size!25970 (h!38801 (t!231382 l!4019))) (size!25976 (originalCharacters!5736 (h!38801 (t!231382 l!4019))))))))

(assert (= (and d!821448 res!1178737) b!2831617))

(assert (= (and b!2831617 res!1178738) b!2831618))

(declare-fun b_lambda!85017 () Bool)

(assert (=> (not b_lambda!85017) (not b!2831617)))

(assert (=> b!2831617 t!231393))

(declare-fun b_and!207107 () Bool)

(assert (= b_and!207095 (and (=> t!231393 result!192196) b_and!207107)))

(assert (=> b!2831617 t!231395))

(declare-fun b_and!207109 () Bool)

(assert (= b_and!207097 (and (=> t!231395 result!192200) b_and!207109)))

(assert (=> b!2831617 t!231426))

(declare-fun b_and!207111 () Bool)

(assert (= b_and!207101 (and (=> t!231426 result!192230) b_and!207111)))

(assert (=> b!2831617 t!231430))

(declare-fun b_and!207113 () Bool)

(assert (= b_and!207105 (and (=> t!231430 result!192238) b_and!207113)))

(declare-fun m!3261177 () Bool)

(assert (=> d!821448 m!3261177))

(assert (=> b!2831617 m!3260989))

(assert (=> b!2831617 m!3260989))

(declare-fun m!3261179 () Bool)

(assert (=> b!2831617 m!3261179))

(declare-fun m!3261181 () Bool)

(assert (=> b!2831618 m!3261181))

(assert (=> b!2831571 d!821448))

(declare-fun b!2831619 () Bool)

(declare-fun e!1792777 () Bool)

(assert (=> b!2831619 (= e!1792777 (inv!17 (value!160983 (h!38801 (t!231382 l!4019)))))))

(declare-fun b!2831620 () Bool)

(declare-fun e!1792775 () Bool)

(assert (=> b!2831620 (= e!1792775 e!1792777)))

(declare-fun c!457920 () Bool)

(assert (=> b!2831620 (= c!457920 ((_ is IntegerValue!15703) (value!160983 (h!38801 (t!231382 l!4019)))))))

(declare-fun d!821450 () Bool)

(declare-fun c!457921 () Bool)

(assert (=> d!821450 (= c!457921 ((_ is IntegerValue!15702) (value!160983 (h!38801 (t!231382 l!4019)))))))

(assert (=> d!821450 (= (inv!21 (value!160983 (h!38801 (t!231382 l!4019)))) e!1792775)))

(declare-fun b!2831621 () Bool)

(declare-fun res!1178739 () Bool)

(declare-fun e!1792776 () Bool)

(assert (=> b!2831621 (=> res!1178739 e!1792776)))

(assert (=> b!2831621 (= res!1178739 (not ((_ is IntegerValue!15704) (value!160983 (h!38801 (t!231382 l!4019))))))))

(assert (=> b!2831621 (= e!1792777 e!1792776)))

(declare-fun b!2831622 () Bool)

(assert (=> b!2831622 (= e!1792776 (inv!15 (value!160983 (h!38801 (t!231382 l!4019)))))))

(declare-fun b!2831623 () Bool)

(assert (=> b!2831623 (= e!1792775 (inv!16 (value!160983 (h!38801 (t!231382 l!4019)))))))

(assert (= (and d!821450 c!457921) b!2831623))

(assert (= (and d!821450 (not c!457921)) b!2831620))

(assert (= (and b!2831620 c!457920) b!2831619))

(assert (= (and b!2831620 (not c!457920)) b!2831621))

(assert (= (and b!2831621 (not res!1178739)) b!2831622))

(declare-fun m!3261183 () Bool)

(assert (=> b!2831619 m!3261183))

(declare-fun m!3261185 () Bool)

(assert (=> b!2831622 m!3261185))

(declare-fun m!3261187 () Bool)

(assert (=> b!2831623 m!3261187))

(assert (=> b!2831572 d!821450))

(declare-fun d!821452 () Bool)

(declare-fun lt!1010192 () Int)

(assert (=> d!821452 (>= lt!1010192 0)))

(declare-fun e!1792778 () Int)

(assert (=> d!821452 (= lt!1010192 e!1792778)))

(declare-fun c!457922 () Bool)

(assert (=> d!821452 (= c!457922 ((_ is Nil!33380) (originalCharacters!5736 (h!38801 l!4019))))))

(assert (=> d!821452 (= (size!25976 (originalCharacters!5736 (h!38801 l!4019))) lt!1010192)))

(declare-fun b!2831624 () Bool)

(assert (=> b!2831624 (= e!1792778 0)))

(declare-fun b!2831625 () Bool)

(assert (=> b!2831625 (= e!1792778 (+ 1 (size!25976 (t!231381 (originalCharacters!5736 (h!38801 l!4019))))))))

(assert (= (and d!821452 c!457922) b!2831624))

(assert (= (and d!821452 (not c!457922)) b!2831625))

(declare-fun m!3261189 () Bool)

(assert (=> b!2831625 m!3261189))

(assert (=> b!2831528 d!821452))

(declare-fun d!821454 () Bool)

(assert (=> d!821454 (= (list!12473 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (value!160983 (h!38801 l!4019)))) (list!12475 (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (value!160983 (h!38801 l!4019))))))))

(declare-fun bs!518268 () Bool)

(assert (= bs!518268 d!821454))

(declare-fun m!3261191 () Bool)

(assert (=> bs!518268 m!3261191))

(assert (=> b!2831527 d!821454))

(declare-fun bs!518269 () Bool)

(declare-fun d!821456 () Bool)

(assert (= bs!518269 (and d!821456 d!821376)))

(declare-fun lambda!103931 () Int)

(assert (=> bs!518269 (= lambda!103931 lambda!103922)))

(declare-fun bs!518270 () Bool)

(assert (= bs!518270 (and d!821456 d!821396)))

(assert (=> bs!518270 (= lambda!103931 lambda!103927)))

(declare-fun b!2831630 () Bool)

(declare-fun e!1792783 () Bool)

(assert (=> b!2831630 (= e!1792783 true)))

(declare-fun b!2831629 () Bool)

(declare-fun e!1792782 () Bool)

(assert (=> b!2831629 (= e!1792782 e!1792783)))

(declare-fun b!2831628 () Bool)

(declare-fun e!1792781 () Bool)

(assert (=> b!2831628 (= e!1792781 e!1792782)))

(assert (=> d!821456 e!1792781))

(assert (= b!2831629 b!2831630))

(assert (= b!2831628 b!2831629))

(assert (= (and d!821456 ((_ is Cons!33382) rules!1047)) b!2831628))

(assert (=> b!2831630 (< (dynLambda!14007 order!17771 (toValue!7030 (transformation!5004 (h!38802 rules!1047)))) (dynLambda!14008 order!17773 lambda!103931))))

(assert (=> b!2831630 (< (dynLambda!14009 order!17775 (toChars!6889 (transformation!5004 (h!38802 rules!1047)))) (dynLambda!14008 order!17773 lambda!103931))))

(assert (=> d!821456 true))

(declare-fun lt!1010193 () Bool)

(assert (=> d!821456 (= lt!1010193 (forall!6851 (list!12472 (seqFromList!3250 l!4019)) lambda!103931))))

(declare-fun e!1792780 () Bool)

(assert (=> d!821456 (= lt!1010193 e!1792780)))

(declare-fun res!1178740 () Bool)

(assert (=> d!821456 (=> res!1178740 e!1792780)))

(assert (=> d!821456 (= res!1178740 (not ((_ is Cons!33381) (list!12472 (seqFromList!3250 l!4019)))))))

(assert (=> d!821456 (not (isEmpty!18402 rules!1047))))

(assert (=> d!821456 (= (rulesProduceEachTokenIndividuallyList!1637 thiss!11007 rules!1047 (list!12472 (seqFromList!3250 l!4019))) lt!1010193)))

(declare-fun b!2831626 () Bool)

(declare-fun e!1792779 () Bool)

(assert (=> b!2831626 (= e!1792780 e!1792779)))

(declare-fun res!1178741 () Bool)

(assert (=> b!2831626 (=> (not res!1178741) (not e!1792779))))

(assert (=> b!2831626 (= res!1178741 (rulesProduceIndividualToken!2126 thiss!11007 rules!1047 (h!38801 (list!12472 (seqFromList!3250 l!4019)))))))

(declare-fun b!2831627 () Bool)

(assert (=> b!2831627 (= e!1792779 (rulesProduceEachTokenIndividuallyList!1637 thiss!11007 rules!1047 (t!231382 (list!12472 (seqFromList!3250 l!4019)))))))

(assert (= (and d!821456 (not res!1178740)) b!2831626))

(assert (= (and b!2831626 res!1178741) b!2831627))

(assert (=> d!821456 m!3261085))

(declare-fun m!3261193 () Bool)

(assert (=> d!821456 m!3261193))

(assert (=> d!821456 m!3260867))

(declare-fun m!3261195 () Bool)

(assert (=> b!2831626 m!3261195))

(declare-fun m!3261197 () Bool)

(assert (=> b!2831627 m!3261197))

(assert (=> b!2831513 d!821456))

(declare-fun d!821458 () Bool)

(declare-fun list!12477 (Conc!10364) List!33505)

(assert (=> d!821458 (= (list!12472 (seqFromList!3250 l!4019)) (list!12477 (c!457897 (seqFromList!3250 l!4019))))))

(declare-fun bs!518271 () Bool)

(assert (= bs!518271 d!821458))

(declare-fun m!3261199 () Bool)

(assert (=> bs!518271 m!3261199))

(assert (=> b!2831513 d!821458))

(declare-fun d!821460 () Bool)

(declare-fun res!1178752 () Bool)

(declare-fun e!1792794 () Bool)

(assert (=> d!821460 (=> res!1178752 e!1792794)))

(assert (=> d!821460 (= res!1178752 ((_ is Nil!33382) rules!1047))))

(assert (=> d!821460 (= (noDuplicateTag!1844 thiss!11007 rules!1047 Nil!33384) e!1792794)))

(declare-fun b!2831645 () Bool)

(declare-fun e!1792795 () Bool)

(assert (=> b!2831645 (= e!1792794 e!1792795)))

(declare-fun res!1178753 () Bool)

(assert (=> b!2831645 (=> (not res!1178753) (not e!1792795))))

(declare-fun contains!6097 (List!33508 String!36692) Bool)

(assert (=> b!2831645 (= res!1178753 (not (contains!6097 Nil!33384 (tag!5508 (h!38802 rules!1047)))))))

(declare-fun b!2831646 () Bool)

(assert (=> b!2831646 (= e!1792795 (noDuplicateTag!1844 thiss!11007 (t!231383 rules!1047) (Cons!33384 (tag!5508 (h!38802 rules!1047)) Nil!33384)))))

(assert (= (and d!821460 (not res!1178752)) b!2831645))

(assert (= (and b!2831645 res!1178753) b!2831646))

(declare-fun m!3261201 () Bool)

(assert (=> b!2831645 m!3261201))

(declare-fun m!3261203 () Bool)

(assert (=> b!2831646 m!3261203))

(assert (=> b!2831519 d!821460))

(declare-fun d!821462 () Bool)

(declare-fun res!1178758 () Bool)

(declare-fun e!1792800 () Bool)

(assert (=> d!821462 (=> res!1178758 e!1792800)))

(assert (=> d!821462 (= res!1178758 ((_ is Nil!33381) (list!12472 (seqFromList!3250 l!4019))))))

(assert (=> d!821462 (= (forall!6851 (list!12472 (seqFromList!3250 l!4019)) lambda!103927) e!1792800)))

(declare-fun b!2831651 () Bool)

(declare-fun e!1792801 () Bool)

(assert (=> b!2831651 (= e!1792800 e!1792801)))

(declare-fun res!1178759 () Bool)

(assert (=> b!2831651 (=> (not res!1178759) (not e!1792801))))

(declare-fun dynLambda!14014 (Int Token!9410) Bool)

(assert (=> b!2831651 (= res!1178759 (dynLambda!14014 lambda!103927 (h!38801 (list!12472 (seqFromList!3250 l!4019)))))))

(declare-fun b!2831652 () Bool)

(assert (=> b!2831652 (= e!1792801 (forall!6851 (t!231382 (list!12472 (seqFromList!3250 l!4019))) lambda!103927))))

(assert (= (and d!821462 (not res!1178758)) b!2831651))

(assert (= (and b!2831651 res!1178759) b!2831652))

(declare-fun b_lambda!85019 () Bool)

(assert (=> (not b_lambda!85019) (not b!2831651)))

(declare-fun m!3261205 () Bool)

(assert (=> b!2831651 m!3261205))

(declare-fun m!3261207 () Bool)

(assert (=> b!2831652 m!3261207))

(assert (=> d!821396 d!821462))

(assert (=> d!821396 d!821458))

(declare-fun d!821464 () Bool)

(declare-fun lt!1010199 () Bool)

(assert (=> d!821464 (= lt!1010199 (forall!6851 (list!12472 (seqFromList!3250 l!4019)) lambda!103927))))

(declare-fun forall!6854 (Conc!10364 Int) Bool)

(assert (=> d!821464 (= lt!1010199 (forall!6854 (c!457897 (seqFromList!3250 l!4019)) lambda!103927))))

(assert (=> d!821464 (= (forall!6852 (seqFromList!3250 l!4019) lambda!103927) lt!1010199)))

(declare-fun bs!518272 () Bool)

(assert (= bs!518272 d!821464))

(assert (=> bs!518272 m!3260899))

(assert (=> bs!518272 m!3261085))

(assert (=> bs!518272 m!3261085))

(assert (=> bs!518272 m!3261087))

(declare-fun m!3261227 () Bool)

(assert (=> bs!518272 m!3261227))

(assert (=> d!821396 d!821464))

(assert (=> d!821396 d!821374))

(declare-fun d!821468 () Bool)

(declare-fun e!1792807 () Bool)

(assert (=> d!821468 e!1792807))

(declare-fun res!1178765 () Bool)

(assert (=> d!821468 (=> (not res!1178765) (not e!1792807))))

(declare-fun lt!1010202 () BalanceConc!20366)

(assert (=> d!821468 (= res!1178765 (= (list!12472 lt!1010202) l!4019))))

(declare-fun fromList!580 (List!33505) Conc!10364)

(assert (=> d!821468 (= lt!1010202 (BalanceConc!20367 (fromList!580 l!4019)))))

(assert (=> d!821468 (= (fromListB!1469 l!4019) lt!1010202)))

(declare-fun b!2831660 () Bool)

(declare-fun isBalanced!3128 (Conc!10364) Bool)

(assert (=> b!2831660 (= e!1792807 (isBalanced!3128 (fromList!580 l!4019)))))

(assert (= (and d!821468 res!1178765) b!2831660))

(declare-fun m!3261229 () Bool)

(assert (=> d!821468 m!3261229))

(declare-fun m!3261231 () Bool)

(assert (=> d!821468 m!3261231))

(assert (=> b!2831660 m!3261231))

(assert (=> b!2831660 m!3261231))

(declare-fun m!3261233 () Bool)

(assert (=> b!2831660 m!3261233))

(assert (=> d!821398 d!821468))

(declare-fun d!821470 () Bool)

(assert (=> d!821470 true))

(declare-fun order!17779 () Int)

(declare-fun lambda!103934 () Int)

(declare-fun dynLambda!14015 (Int Int) Int)

(assert (=> d!821470 (< (dynLambda!14007 order!17771 (toValue!7030 (transformation!5004 (rule!7432 (h!38801 l!4019))))) (dynLambda!14015 order!17779 lambda!103934))))

(declare-fun Forall2!835 (Int) Bool)

(assert (=> d!821470 (= (equivClasses!1977 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (toValue!7030 (transformation!5004 (rule!7432 (h!38801 l!4019))))) (Forall2!835 lambda!103934))))

(declare-fun bs!518273 () Bool)

(assert (= bs!518273 d!821470))

(declare-fun m!3261235 () Bool)

(assert (=> bs!518273 m!3261235))

(assert (=> b!2831522 d!821470))

(declare-fun bs!518275 () Bool)

(declare-fun d!821472 () Bool)

(assert (= bs!518275 (and d!821472 d!821470)))

(declare-fun lambda!103935 () Int)

(assert (=> bs!518275 (= (= (toValue!7030 (transformation!5004 (h!38802 rules!1047))) (toValue!7030 (transformation!5004 (rule!7432 (h!38801 l!4019))))) (= lambda!103935 lambda!103934))))

(assert (=> d!821472 true))

(assert (=> d!821472 (< (dynLambda!14007 order!17771 (toValue!7030 (transformation!5004 (h!38802 rules!1047)))) (dynLambda!14015 order!17779 lambda!103935))))

(assert (=> d!821472 (= (equivClasses!1977 (toChars!6889 (transformation!5004 (h!38802 rules!1047))) (toValue!7030 (transformation!5004 (h!38802 rules!1047)))) (Forall2!835 lambda!103935))))

(declare-fun bs!518276 () Bool)

(assert (= bs!518276 d!821472))

(declare-fun m!3261243 () Bool)

(assert (=> bs!518276 m!3261243))

(assert (=> b!2831530 d!821472))

(declare-fun b!2831816 () Bool)

(declare-fun e!1792901 () Bool)

(declare-fun e!1792900 () Bool)

(assert (=> b!2831816 (= e!1792901 e!1792900)))

(declare-fun res!1178810 () Bool)

(declare-fun lt!1010245 () tuple2!33508)

(assert (=> b!2831816 (= res!1178810 (< (size!25971 (_2!19866 lt!1010245)) (size!25971 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 (t!231382 l!4019)))))))))

(assert (=> b!2831816 (=> (not res!1178810) (not e!1792900))))

(declare-fun b!2831817 () Bool)

(declare-fun isEmpty!18409 (BalanceConc!20366) Bool)

(assert (=> b!2831817 (= e!1792900 (not (isEmpty!18409 (_1!19866 lt!1010245))))))

(declare-fun d!821476 () Bool)

(declare-fun e!1792902 () Bool)

(assert (=> d!821476 e!1792902))

(declare-fun res!1178809 () Bool)

(assert (=> d!821476 (=> (not res!1178809) (not e!1792902))))

(assert (=> d!821476 (= res!1178809 e!1792901)))

(declare-fun c!457938 () Bool)

(assert (=> d!821476 (= c!457938 (> (size!25975 (_1!19866 lt!1010245)) 0))))

(declare-fun lexTailRecV2!890 (LexerInterface!4594 List!33506 BalanceConc!20364 BalanceConc!20364 BalanceConc!20364 BalanceConc!20366) tuple2!33508)

(assert (=> d!821476 (= lt!1010245 (lexTailRecV2!890 thiss!11007 rules!1047 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 (t!231382 l!4019)))) (BalanceConc!20365 Empty!10363) (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 (t!231382 l!4019)))) (BalanceConc!20367 Empty!10364)))))

(assert (=> d!821476 (= (lex!2014 thiss!11007 rules!1047 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 (t!231382 l!4019))))) lt!1010245)))

(declare-fun b!2831818 () Bool)

(declare-datatypes ((tuple2!33512 0))(
  ( (tuple2!33513 (_1!19868 List!33505) (_2!19868 List!33504)) )
))
(declare-fun lexList!1252 (LexerInterface!4594 List!33506 List!33504) tuple2!33512)

(assert (=> b!2831818 (= e!1792902 (= (list!12473 (_2!19866 lt!1010245)) (_2!19868 (lexList!1252 thiss!11007 rules!1047 (list!12473 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 (t!231382 l!4019)))))))))))

(declare-fun b!2831819 () Bool)

(declare-fun res!1178808 () Bool)

(assert (=> b!2831819 (=> (not res!1178808) (not e!1792902))))

(assert (=> b!2831819 (= res!1178808 (= (list!12472 (_1!19866 lt!1010245)) (_1!19868 (lexList!1252 thiss!11007 rules!1047 (list!12473 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 (t!231382 l!4019)))))))))))

(declare-fun b!2831820 () Bool)

(assert (=> b!2831820 (= e!1792901 (= (_2!19866 lt!1010245) (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 (t!231382 l!4019))))))))

(assert (= (and d!821476 c!457938) b!2831816))

(assert (= (and d!821476 (not c!457938)) b!2831820))

(assert (= (and b!2831816 res!1178810) b!2831817))

(assert (= (and d!821476 res!1178809) b!2831819))

(assert (= (and b!2831819 res!1178808) b!2831818))

(declare-fun m!3261431 () Bool)

(assert (=> b!2831819 m!3261431))

(assert (=> b!2831819 m!3260959))

(declare-fun m!3261433 () Bool)

(assert (=> b!2831819 m!3261433))

(assert (=> b!2831819 m!3261433))

(declare-fun m!3261435 () Bool)

(assert (=> b!2831819 m!3261435))

(declare-fun m!3261437 () Bool)

(assert (=> b!2831818 m!3261437))

(assert (=> b!2831818 m!3260959))

(assert (=> b!2831818 m!3261433))

(assert (=> b!2831818 m!3261433))

(assert (=> b!2831818 m!3261435))

(declare-fun m!3261439 () Bool)

(assert (=> b!2831816 m!3261439))

(assert (=> b!2831816 m!3260959))

(declare-fun m!3261441 () Bool)

(assert (=> b!2831816 m!3261441))

(declare-fun m!3261443 () Bool)

(assert (=> b!2831817 m!3261443))

(declare-fun m!3261445 () Bool)

(assert (=> d!821476 m!3261445))

(assert (=> d!821476 m!3260959))

(assert (=> d!821476 m!3260959))

(declare-fun m!3261447 () Bool)

(assert (=> d!821476 m!3261447))

(assert (=> d!821358 d!821476))

(declare-fun d!821574 () Bool)

(declare-fun e!1792905 () Bool)

(assert (=> d!821574 e!1792905))

(declare-fun res!1178813 () Bool)

(assert (=> d!821574 (=> (not res!1178813) (not e!1792905))))

(declare-fun lt!1010248 () BalanceConc!20366)

(assert (=> d!821574 (= res!1178813 (= (list!12472 lt!1010248) (Cons!33381 (h!38801 (t!231382 l!4019)) Nil!33381)))))

(declare-fun singleton!946 (Token!9410) BalanceConc!20366)

(assert (=> d!821574 (= lt!1010248 (singleton!946 (h!38801 (t!231382 l!4019))))))

(assert (=> d!821574 (= (singletonSeq!2161 (h!38801 (t!231382 l!4019))) lt!1010248)))

(declare-fun b!2831823 () Bool)

(assert (=> b!2831823 (= e!1792905 (isBalanced!3128 (c!457897 lt!1010248)))))

(assert (= (and d!821574 res!1178813) b!2831823))

(declare-fun m!3261449 () Bool)

(assert (=> d!821574 m!3261449))

(declare-fun m!3261451 () Bool)

(assert (=> d!821574 m!3261451))

(declare-fun m!3261453 () Bool)

(assert (=> b!2831823 m!3261453))

(assert (=> d!821358 d!821574))

(assert (=> d!821358 d!821374))

(declare-fun d!821576 () Bool)

(assert (=> d!821576 (= (list!12472 (_1!19866 (lex!2014 thiss!11007 rules!1047 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 (t!231382 l!4019))))))) (list!12477 (c!457897 (_1!19866 (lex!2014 thiss!11007 rules!1047 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 (t!231382 l!4019)))))))))))

(declare-fun bs!518312 () Bool)

(assert (= bs!518312 d!821576))

(declare-fun m!3261455 () Bool)

(assert (=> bs!518312 m!3261455))

(assert (=> d!821358 d!821576))

(declare-fun d!821578 () Bool)

(declare-fun lt!1010251 () Int)

(declare-fun size!25980 (List!33505) Int)

(assert (=> d!821578 (= lt!1010251 (size!25980 (list!12472 (_1!19866 lt!1010146))))))

(declare-fun size!25981 (Conc!10364) Int)

(assert (=> d!821578 (= lt!1010251 (size!25981 (c!457897 (_1!19866 lt!1010146))))))

(assert (=> d!821578 (= (size!25975 (_1!19866 lt!1010146)) lt!1010251)))

(declare-fun bs!518313 () Bool)

(assert (= bs!518313 d!821578))

(declare-fun m!3261457 () Bool)

(assert (=> bs!518313 m!3261457))

(assert (=> bs!518313 m!3261457))

(declare-fun m!3261459 () Bool)

(assert (=> bs!518313 m!3261459))

(declare-fun m!3261461 () Bool)

(assert (=> bs!518313 m!3261461))

(assert (=> d!821358 d!821578))

(declare-fun d!821580 () Bool)

(declare-fun lt!1010254 () BalanceConc!20364)

(declare-fun printList!1226 (LexerInterface!4594 List!33505) List!33504)

(assert (=> d!821580 (= (list!12473 lt!1010254) (printList!1226 thiss!11007 (list!12472 (singletonSeq!2161 (h!38801 (t!231382 l!4019))))))))

(declare-fun printTailRec!1169 (LexerInterface!4594 BalanceConc!20366 Int BalanceConc!20364) BalanceConc!20364)

(assert (=> d!821580 (= lt!1010254 (printTailRec!1169 thiss!11007 (singletonSeq!2161 (h!38801 (t!231382 l!4019))) 0 (BalanceConc!20365 Empty!10363)))))

(assert (=> d!821580 (= (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 (t!231382 l!4019)))) lt!1010254)))

(declare-fun bs!518314 () Bool)

(assert (= bs!518314 d!821580))

(declare-fun m!3261463 () Bool)

(assert (=> bs!518314 m!3261463))

(assert (=> bs!518314 m!3260957))

(assert (=> bs!518314 m!3260963))

(assert (=> bs!518314 m!3260963))

(declare-fun m!3261465 () Bool)

(assert (=> bs!518314 m!3261465))

(assert (=> bs!518314 m!3260957))

(declare-fun m!3261467 () Bool)

(assert (=> bs!518314 m!3261467))

(assert (=> d!821358 d!821580))

(declare-fun d!821582 () Bool)

(assert (=> d!821582 (= (list!12472 (singletonSeq!2161 (h!38801 (t!231382 l!4019)))) (list!12477 (c!457897 (singletonSeq!2161 (h!38801 (t!231382 l!4019))))))))

(declare-fun bs!518315 () Bool)

(assert (= bs!518315 d!821582))

(declare-fun m!3261469 () Bool)

(assert (=> bs!518315 m!3261469))

(assert (=> d!821358 d!821582))

(declare-fun d!821584 () Bool)

(declare-fun lt!1010257 () Token!9410)

(declare-fun apply!7792 (List!33505 Int) Token!9410)

(assert (=> d!821584 (= lt!1010257 (apply!7792 (list!12472 (_1!19866 lt!1010139)) 0))))

(declare-fun apply!7793 (Conc!10364 Int) Token!9410)

(assert (=> d!821584 (= lt!1010257 (apply!7793 (c!457897 (_1!19866 lt!1010139)) 0))))

(declare-fun e!1792908 () Bool)

(assert (=> d!821584 e!1792908))

(declare-fun res!1178816 () Bool)

(assert (=> d!821584 (=> (not res!1178816) (not e!1792908))))

(assert (=> d!821584 (= res!1178816 (<= 0 0))))

(assert (=> d!821584 (= (apply!7789 (_1!19866 lt!1010139) 0) lt!1010257)))

(declare-fun b!2831826 () Bool)

(assert (=> b!2831826 (= e!1792908 (< 0 (size!25975 (_1!19866 lt!1010139))))))

(assert (= (and d!821584 res!1178816) b!2831826))

(declare-fun m!3261471 () Bool)

(assert (=> d!821584 m!3261471))

(assert (=> d!821584 m!3261471))

(declare-fun m!3261473 () Bool)

(assert (=> d!821584 m!3261473))

(declare-fun m!3261475 () Bool)

(assert (=> d!821584 m!3261475))

(assert (=> b!2831826 m!3260937))

(assert (=> b!2831380 d!821584))

(declare-fun d!821586 () Bool)

(assert (=> d!821586 true))

(declare-fun lt!1010260 () Bool)

(declare-fun rulesValidInductive!1724 (LexerInterface!4594 List!33506) Bool)

(assert (=> d!821586 (= lt!1010260 (rulesValidInductive!1724 thiss!11007 rules!1047))))

(declare-fun lambda!103951 () Int)

(declare-fun forall!6856 (List!33506 Int) Bool)

(assert (=> d!821586 (= lt!1010260 (forall!6856 rules!1047 lambda!103951))))

(assert (=> d!821586 (= (rulesValid!1848 thiss!11007 rules!1047) lt!1010260)))

(declare-fun bs!518316 () Bool)

(assert (= bs!518316 d!821586))

(declare-fun m!3261477 () Bool)

(assert (=> bs!518316 m!3261477))

(declare-fun m!3261479 () Bool)

(assert (=> bs!518316 m!3261479))

(assert (=> d!821400 d!821586))

(assert (=> b!2831496 d!821352))

(declare-fun d!821588 () Bool)

(declare-fun res!1178817 () Bool)

(declare-fun e!1792909 () Bool)

(assert (=> d!821588 (=> res!1178817 e!1792909)))

(assert (=> d!821588 (= res!1178817 ((_ is Nil!33381) l!4019))))

(assert (=> d!821588 (= (forall!6851 l!4019 lambda!103922) e!1792909)))

(declare-fun b!2831829 () Bool)

(declare-fun e!1792910 () Bool)

(assert (=> b!2831829 (= e!1792909 e!1792910)))

(declare-fun res!1178818 () Bool)

(assert (=> b!2831829 (=> (not res!1178818) (not e!1792910))))

(assert (=> b!2831829 (= res!1178818 (dynLambda!14014 lambda!103922 (h!38801 l!4019)))))

(declare-fun b!2831830 () Bool)

(assert (=> b!2831830 (= e!1792910 (forall!6851 (t!231382 l!4019) lambda!103922))))

(assert (= (and d!821588 (not res!1178817)) b!2831829))

(assert (= (and b!2831829 res!1178818) b!2831830))

(declare-fun b_lambda!85031 () Bool)

(assert (=> (not b_lambda!85031) (not b!2831829)))

(declare-fun m!3261481 () Bool)

(assert (=> b!2831829 m!3261481))

(declare-fun m!3261483 () Bool)

(assert (=> b!2831830 m!3261483))

(assert (=> d!821376 d!821588))

(assert (=> d!821376 d!821374))

(declare-fun d!821590 () Bool)

(assert (=> d!821590 (= (isEmpty!18406 (originalCharacters!5736 (h!38801 l!4019))) ((_ is Nil!33380) (originalCharacters!5736 (h!38801 l!4019))))))

(assert (=> d!821406 d!821590))

(declare-fun d!821592 () Bool)

(declare-fun charsToInt!0 (List!33503) (_ BitVec 32))

(assert (=> d!821592 (= (inv!16 (value!160983 (h!38801 l!4019))) (= (charsToInt!0 (text!37085 (value!160983 (h!38801 l!4019)))) (value!160974 (value!160983 (h!38801 l!4019)))))))

(declare-fun bs!518317 () Bool)

(assert (= bs!518317 d!821592))

(declare-fun m!3261485 () Bool)

(assert (=> bs!518317 m!3261485))

(assert (=> b!2831369 d!821592))

(declare-fun bs!518318 () Bool)

(declare-fun d!821594 () Bool)

(assert (= bs!518318 (and d!821594 d!821376)))

(declare-fun lambda!103952 () Int)

(assert (=> bs!518318 (= lambda!103952 lambda!103922)))

(declare-fun bs!518319 () Bool)

(assert (= bs!518319 (and d!821594 d!821396)))

(assert (=> bs!518319 (= lambda!103952 lambda!103927)))

(declare-fun bs!518320 () Bool)

(assert (= bs!518320 (and d!821594 d!821456)))

(assert (=> bs!518320 (= lambda!103952 lambda!103931)))

(declare-fun b!2831835 () Bool)

(declare-fun e!1792915 () Bool)

(assert (=> b!2831835 (= e!1792915 true)))

(declare-fun b!2831834 () Bool)

(declare-fun e!1792914 () Bool)

(assert (=> b!2831834 (= e!1792914 e!1792915)))

(declare-fun b!2831833 () Bool)

(declare-fun e!1792913 () Bool)

(assert (=> b!2831833 (= e!1792913 e!1792914)))

(assert (=> d!821594 e!1792913))

(assert (= b!2831834 b!2831835))

(assert (= b!2831833 b!2831834))

(assert (= (and d!821594 ((_ is Cons!33382) rules!1047)) b!2831833))

(assert (=> b!2831835 (< (dynLambda!14007 order!17771 (toValue!7030 (transformation!5004 (h!38802 rules!1047)))) (dynLambda!14008 order!17773 lambda!103952))))

(assert (=> b!2831835 (< (dynLambda!14009 order!17775 (toChars!6889 (transformation!5004 (h!38802 rules!1047)))) (dynLambda!14008 order!17773 lambda!103952))))

(assert (=> d!821594 true))

(declare-fun lt!1010261 () Bool)

(assert (=> d!821594 (= lt!1010261 (forall!6851 (t!231382 l!4019) lambda!103952))))

(declare-fun e!1792912 () Bool)

(assert (=> d!821594 (= lt!1010261 e!1792912)))

(declare-fun res!1178819 () Bool)

(assert (=> d!821594 (=> res!1178819 e!1792912)))

(assert (=> d!821594 (= res!1178819 (not ((_ is Cons!33381) (t!231382 l!4019))))))

(assert (=> d!821594 (not (isEmpty!18402 rules!1047))))

(assert (=> d!821594 (= (rulesProduceEachTokenIndividuallyList!1637 thiss!11007 rules!1047 (t!231382 l!4019)) lt!1010261)))

(declare-fun b!2831831 () Bool)

(declare-fun e!1792911 () Bool)

(assert (=> b!2831831 (= e!1792912 e!1792911)))

(declare-fun res!1178820 () Bool)

(assert (=> b!2831831 (=> (not res!1178820) (not e!1792911))))

(assert (=> b!2831831 (= res!1178820 (rulesProduceIndividualToken!2126 thiss!11007 rules!1047 (h!38801 (t!231382 l!4019))))))

(declare-fun b!2831832 () Bool)

(assert (=> b!2831832 (= e!1792911 (rulesProduceEachTokenIndividuallyList!1637 thiss!11007 rules!1047 (t!231382 (t!231382 l!4019))))))

(assert (= (and d!821594 (not res!1178819)) b!2831831))

(assert (= (and b!2831831 res!1178820) b!2831832))

(declare-fun m!3261487 () Bool)

(assert (=> d!821594 m!3261487))

(assert (=> d!821594 m!3260867))

(assert (=> b!2831831 m!3260883))

(declare-fun m!3261489 () Bool)

(assert (=> b!2831832 m!3261489))

(assert (=> b!2831497 d!821594))

(declare-fun d!821596 () Bool)

(declare-fun lt!1010262 () Bool)

(assert (=> d!821596 (= lt!1010262 (isEmpty!18406 (list!12473 (_2!19866 lt!1010139))))))

(assert (=> d!821596 (= lt!1010262 (isEmpty!18407 (c!457896 (_2!19866 lt!1010139))))))

(assert (=> d!821596 (= (isEmpty!18403 (_2!19866 lt!1010139)) lt!1010262)))

(declare-fun bs!518321 () Bool)

(assert (= bs!518321 d!821596))

(declare-fun m!3261491 () Bool)

(assert (=> bs!518321 m!3261491))

(assert (=> bs!518321 m!3261491))

(declare-fun m!3261493 () Bool)

(assert (=> bs!518321 m!3261493))

(declare-fun m!3261495 () Bool)

(assert (=> bs!518321 m!3261495))

(assert (=> b!2831381 d!821596))

(declare-fun d!821598 () Bool)

(declare-fun charsToBigInt!0 (List!33503 Int) Int)

(assert (=> d!821598 (= (inv!15 (value!160983 (h!38801 l!4019))) (= (charsToBigInt!0 (text!37087 (value!160983 (h!38801 l!4019))) 0) (value!160978 (value!160983 (h!38801 l!4019)))))))

(declare-fun bs!518322 () Bool)

(assert (= bs!518322 d!821598))

(declare-fun m!3261497 () Bool)

(assert (=> bs!518322 m!3261497))

(assert (=> b!2831368 d!821598))

(declare-fun d!821600 () Bool)

(declare-fun charsToBigInt!1 (List!33503) Int)

(assert (=> d!821600 (= (inv!17 (value!160983 (h!38801 l!4019))) (= (charsToBigInt!1 (text!37086 (value!160983 (h!38801 l!4019)))) (value!160975 (value!160983 (h!38801 l!4019)))))))

(declare-fun bs!518323 () Bool)

(assert (= bs!518323 d!821600))

(declare-fun m!3261499 () Bool)

(assert (=> bs!518323 m!3261499))

(assert (=> b!2831365 d!821600))

(declare-fun d!821602 () Bool)

(assert (=> d!821602 (= (inv!45326 (tag!5508 (rule!7432 (h!38801 (t!231382 l!4019))))) (= (mod (str.len (value!160982 (tag!5508 (rule!7432 (h!38801 (t!231382 l!4019)))))) 2) 0))))

(assert (=> b!2831573 d!821602))

(declare-fun d!821604 () Bool)

(declare-fun res!1178821 () Bool)

(declare-fun e!1792916 () Bool)

(assert (=> d!821604 (=> (not res!1178821) (not e!1792916))))

(assert (=> d!821604 (= res!1178821 (semiInverseModEq!2078 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (toValue!7030 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019)))))))))

(assert (=> d!821604 (= (inv!45329 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) e!1792916)))

(declare-fun b!2831836 () Bool)

(assert (=> b!2831836 (= e!1792916 (equivClasses!1977 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (toValue!7030 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019)))))))))

(assert (= (and d!821604 res!1178821) b!2831836))

(declare-fun m!3261501 () Bool)

(assert (=> d!821604 m!3261501))

(declare-fun m!3261503 () Bool)

(assert (=> b!2831836 m!3261503))

(assert (=> b!2831573 d!821604))

(declare-fun d!821606 () Bool)

(declare-fun lt!1010263 () Bool)

(assert (=> d!821606 (= lt!1010263 (isEmpty!18406 (list!12473 (_2!19866 (lex!2014 thiss!11007 rules!1047 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 (t!231382 l!4019)))))))))))

(assert (=> d!821606 (= lt!1010263 (isEmpty!18407 (c!457896 (_2!19866 (lex!2014 thiss!11007 rules!1047 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 (t!231382 l!4019)))))))))))

(assert (=> d!821606 (= (isEmpty!18403 (_2!19866 (lex!2014 thiss!11007 rules!1047 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 (t!231382 l!4019))))))) lt!1010263)))

(declare-fun bs!518324 () Bool)

(assert (= bs!518324 d!821606))

(declare-fun m!3261505 () Bool)

(assert (=> bs!518324 m!3261505))

(assert (=> bs!518324 m!3261505))

(declare-fun m!3261507 () Bool)

(assert (=> bs!518324 m!3261507))

(declare-fun m!3261509 () Bool)

(assert (=> bs!518324 m!3261509))

(assert (=> b!2831400 d!821606))

(assert (=> b!2831400 d!821476))

(assert (=> b!2831400 d!821580))

(assert (=> b!2831400 d!821574))

(assert (=> d!821356 d!821352))

(declare-fun d!821608 () Bool)

(assert (=> d!821608 (rulesProduceIndividualToken!2126 thiss!11007 rules!1047 (h!38801 l!4019))))

(assert (=> d!821608 true))

(declare-fun _$77!748 () Unit!47369)

(assert (=> d!821608 (= (choose!16720 thiss!11007 rules!1047 l!4019 (h!38801 l!4019)) _$77!748)))

(declare-fun bs!518325 () Bool)

(assert (= bs!518325 d!821608))

(assert (=> bs!518325 m!3260881))

(assert (=> d!821356 d!821608))

(assert (=> d!821356 d!821374))

(declare-fun d!821610 () Bool)

(assert (=> d!821610 (= (isEmpty!18406 (list!12473 lt!1010129)) ((_ is Nil!33380) (list!12473 lt!1010129)))))

(assert (=> d!821372 d!821610))

(assert (=> d!821372 d!821444))

(declare-fun d!821612 () Bool)

(declare-fun lt!1010266 () Bool)

(assert (=> d!821612 (= lt!1010266 (isEmpty!18406 (list!12475 (c!457896 lt!1010129))))))

(assert (=> d!821612 (= lt!1010266 (= (size!25977 (c!457896 lt!1010129)) 0))))

(assert (=> d!821612 (= (isEmpty!18407 (c!457896 lt!1010129)) lt!1010266)))

(declare-fun bs!518326 () Bool)

(assert (= bs!518326 d!821612))

(assert (=> bs!518326 m!3261173))

(assert (=> bs!518326 m!3261173))

(declare-fun m!3261511 () Bool)

(assert (=> bs!518326 m!3261511))

(assert (=> bs!518326 m!3260949))

(assert (=> d!821372 d!821612))

(declare-fun d!821614 () Bool)

(declare-fun lt!1010267 () Token!9410)

(assert (=> d!821614 (= lt!1010267 (apply!7792 (list!12472 (_1!19866 lt!1010146)) 0))))

(assert (=> d!821614 (= lt!1010267 (apply!7793 (c!457897 (_1!19866 lt!1010146)) 0))))

(declare-fun e!1792917 () Bool)

(assert (=> d!821614 e!1792917))

(declare-fun res!1178822 () Bool)

(assert (=> d!821614 (=> (not res!1178822) (not e!1792917))))

(assert (=> d!821614 (= res!1178822 (<= 0 0))))

(assert (=> d!821614 (= (apply!7789 (_1!19866 lt!1010146) 0) lt!1010267)))

(declare-fun b!2831837 () Bool)

(assert (=> b!2831837 (= e!1792917 (< 0 (size!25975 (_1!19866 lt!1010146))))))

(assert (= (and d!821614 res!1178822) b!2831837))

(assert (=> d!821614 m!3261457))

(assert (=> d!821614 m!3261457))

(declare-fun m!3261513 () Bool)

(assert (=> d!821614 m!3261513))

(declare-fun m!3261515 () Bool)

(assert (=> d!821614 m!3261515))

(assert (=> b!2831837 m!3260967))

(assert (=> b!2831398 d!821614))

(declare-fun bs!518327 () Bool)

(declare-fun d!821616 () Bool)

(assert (= bs!518327 (and d!821616 d!821430)))

(declare-fun lambda!103953 () Int)

(assert (=> bs!518327 (= (and (= (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (toChars!6889 (transformation!5004 (h!38802 rules!1047)))) (= (toValue!7030 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (toValue!7030 (transformation!5004 (h!38802 rules!1047))))) (= lambda!103953 lambda!103930))))

(assert (=> d!821616 true))

(assert (=> d!821616 (< (dynLambda!14009 order!17775 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019))))) (dynLambda!14012 order!17777 lambda!103953))))

(assert (=> d!821616 true))

(assert (=> d!821616 (< (dynLambda!14007 order!17771 (toValue!7030 (transformation!5004 (rule!7432 (h!38801 l!4019))))) (dynLambda!14012 order!17777 lambda!103953))))

(assert (=> d!821616 (= (semiInverseModEq!2078 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (toValue!7030 (transformation!5004 (rule!7432 (h!38801 l!4019))))) (Forall!1238 lambda!103953))))

(declare-fun bs!518328 () Bool)

(assert (= bs!518328 d!821616))

(declare-fun m!3261517 () Bool)

(assert (=> bs!518328 m!3261517))

(assert (=> d!821404 d!821616))

(declare-fun d!821618 () Bool)

(declare-fun lt!1010268 () Bool)

(assert (=> d!821618 (= lt!1010268 (isEmpty!18406 (list!12473 (_2!19866 (lex!2014 thiss!11007 rules!1047 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 l!4019))))))))))

(assert (=> d!821618 (= lt!1010268 (isEmpty!18407 (c!457896 (_2!19866 (lex!2014 thiss!11007 rules!1047 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 l!4019))))))))))

(assert (=> d!821618 (= (isEmpty!18403 (_2!19866 (lex!2014 thiss!11007 rules!1047 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 l!4019)))))) lt!1010268)))

(declare-fun bs!518329 () Bool)

(assert (= bs!518329 d!821618))

(declare-fun m!3261519 () Bool)

(assert (=> bs!518329 m!3261519))

(assert (=> bs!518329 m!3261519))

(declare-fun m!3261521 () Bool)

(assert (=> bs!518329 m!3261521))

(declare-fun m!3261523 () Bool)

(assert (=> bs!518329 m!3261523))

(assert (=> b!2831382 d!821618))

(declare-fun b!2831838 () Bool)

(declare-fun e!1792919 () Bool)

(declare-fun e!1792918 () Bool)

(assert (=> b!2831838 (= e!1792919 e!1792918)))

(declare-fun res!1178825 () Bool)

(declare-fun lt!1010269 () tuple2!33508)

(assert (=> b!2831838 (= res!1178825 (< (size!25971 (_2!19866 lt!1010269)) (size!25971 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 l!4019))))))))

(assert (=> b!2831838 (=> (not res!1178825) (not e!1792918))))

(declare-fun b!2831839 () Bool)

(assert (=> b!2831839 (= e!1792918 (not (isEmpty!18409 (_1!19866 lt!1010269))))))

(declare-fun d!821620 () Bool)

(declare-fun e!1792920 () Bool)

(assert (=> d!821620 e!1792920))

(declare-fun res!1178824 () Bool)

(assert (=> d!821620 (=> (not res!1178824) (not e!1792920))))

(assert (=> d!821620 (= res!1178824 e!1792919)))

(declare-fun c!457939 () Bool)

(assert (=> d!821620 (= c!457939 (> (size!25975 (_1!19866 lt!1010269)) 0))))

(assert (=> d!821620 (= lt!1010269 (lexTailRecV2!890 thiss!11007 rules!1047 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 l!4019))) (BalanceConc!20365 Empty!10363) (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 l!4019))) (BalanceConc!20367 Empty!10364)))))

(assert (=> d!821620 (= (lex!2014 thiss!11007 rules!1047 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 l!4019)))) lt!1010269)))

(declare-fun b!2831840 () Bool)

(assert (=> b!2831840 (= e!1792920 (= (list!12473 (_2!19866 lt!1010269)) (_2!19868 (lexList!1252 thiss!11007 rules!1047 (list!12473 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 l!4019))))))))))

(declare-fun b!2831841 () Bool)

(declare-fun res!1178823 () Bool)

(assert (=> b!2831841 (=> (not res!1178823) (not e!1792920))))

(assert (=> b!2831841 (= res!1178823 (= (list!12472 (_1!19866 lt!1010269)) (_1!19868 (lexList!1252 thiss!11007 rules!1047 (list!12473 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 l!4019))))))))))

(declare-fun b!2831842 () Bool)

(assert (=> b!2831842 (= e!1792919 (= (_2!19866 lt!1010269) (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 l!4019)))))))

(assert (= (and d!821620 c!457939) b!2831838))

(assert (= (and d!821620 (not c!457939)) b!2831842))

(assert (= (and b!2831838 res!1178825) b!2831839))

(assert (= (and d!821620 res!1178824) b!2831841))

(assert (= (and b!2831841 res!1178823) b!2831840))

(declare-fun m!3261525 () Bool)

(assert (=> b!2831841 m!3261525))

(assert (=> b!2831841 m!3260929))

(declare-fun m!3261527 () Bool)

(assert (=> b!2831841 m!3261527))

(assert (=> b!2831841 m!3261527))

(declare-fun m!3261529 () Bool)

(assert (=> b!2831841 m!3261529))

(declare-fun m!3261531 () Bool)

(assert (=> b!2831840 m!3261531))

(assert (=> b!2831840 m!3260929))

(assert (=> b!2831840 m!3261527))

(assert (=> b!2831840 m!3261527))

(assert (=> b!2831840 m!3261529))

(declare-fun m!3261533 () Bool)

(assert (=> b!2831838 m!3261533))

(assert (=> b!2831838 m!3260929))

(declare-fun m!3261535 () Bool)

(assert (=> b!2831838 m!3261535))

(declare-fun m!3261537 () Bool)

(assert (=> b!2831839 m!3261537))

(declare-fun m!3261539 () Bool)

(assert (=> d!821620 m!3261539))

(assert (=> d!821620 m!3260929))

(assert (=> d!821620 m!3260929))

(declare-fun m!3261541 () Bool)

(assert (=> d!821620 m!3261541))

(assert (=> b!2831382 d!821620))

(declare-fun d!821622 () Bool)

(declare-fun lt!1010270 () BalanceConc!20364)

(assert (=> d!821622 (= (list!12473 lt!1010270) (printList!1226 thiss!11007 (list!12472 (singletonSeq!2161 (h!38801 l!4019)))))))

(assert (=> d!821622 (= lt!1010270 (printTailRec!1169 thiss!11007 (singletonSeq!2161 (h!38801 l!4019)) 0 (BalanceConc!20365 Empty!10363)))))

(assert (=> d!821622 (= (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 l!4019))) lt!1010270)))

(declare-fun bs!518330 () Bool)

(assert (= bs!518330 d!821622))

(declare-fun m!3261543 () Bool)

(assert (=> bs!518330 m!3261543))

(assert (=> bs!518330 m!3260927))

(assert (=> bs!518330 m!3260933))

(assert (=> bs!518330 m!3260933))

(declare-fun m!3261545 () Bool)

(assert (=> bs!518330 m!3261545))

(assert (=> bs!518330 m!3260927))

(declare-fun m!3261547 () Bool)

(assert (=> bs!518330 m!3261547))

(assert (=> b!2831382 d!821622))

(declare-fun d!821624 () Bool)

(declare-fun e!1792921 () Bool)

(assert (=> d!821624 e!1792921))

(declare-fun res!1178826 () Bool)

(assert (=> d!821624 (=> (not res!1178826) (not e!1792921))))

(declare-fun lt!1010271 () BalanceConc!20366)

(assert (=> d!821624 (= res!1178826 (= (list!12472 lt!1010271) (Cons!33381 (h!38801 l!4019) Nil!33381)))))

(assert (=> d!821624 (= lt!1010271 (singleton!946 (h!38801 l!4019)))))

(assert (=> d!821624 (= (singletonSeq!2161 (h!38801 l!4019)) lt!1010271)))

(declare-fun b!2831843 () Bool)

(assert (=> b!2831843 (= e!1792921 (isBalanced!3128 (c!457897 lt!1010271)))))

(assert (= (and d!821624 res!1178826) b!2831843))

(declare-fun m!3261549 () Bool)

(assert (=> d!821624 m!3261549))

(declare-fun m!3261551 () Bool)

(assert (=> d!821624 m!3261551))

(declare-fun m!3261553 () Bool)

(assert (=> b!2831843 m!3261553))

(assert (=> b!2831382 d!821624))

(assert (=> d!821352 d!821374))

(declare-fun d!821626 () Bool)

(assert (=> d!821626 (= (list!12472 (singletonSeq!2161 (h!38801 l!4019))) (list!12477 (c!457897 (singletonSeq!2161 (h!38801 l!4019)))))))

(declare-fun bs!518331 () Bool)

(assert (= bs!518331 d!821626))

(declare-fun m!3261555 () Bool)

(assert (=> bs!518331 m!3261555))

(assert (=> d!821352 d!821626))

(assert (=> d!821352 d!821624))

(assert (=> d!821352 d!821622))

(declare-fun d!821628 () Bool)

(assert (=> d!821628 (= (list!12472 (_1!19866 (lex!2014 thiss!11007 rules!1047 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 l!4019)))))) (list!12477 (c!457897 (_1!19866 (lex!2014 thiss!11007 rules!1047 (print!1733 thiss!11007 (singletonSeq!2161 (h!38801 l!4019))))))))))

(declare-fun bs!518332 () Bool)

(assert (= bs!518332 d!821628))

(declare-fun m!3261557 () Bool)

(assert (=> bs!518332 m!3261557))

(assert (=> d!821352 d!821628))

(declare-fun d!821630 () Bool)

(declare-fun lt!1010272 () Int)

(assert (=> d!821630 (= lt!1010272 (size!25980 (list!12472 (_1!19866 lt!1010139))))))

(assert (=> d!821630 (= lt!1010272 (size!25981 (c!457897 (_1!19866 lt!1010139))))))

(assert (=> d!821630 (= (size!25975 (_1!19866 lt!1010139)) lt!1010272)))

(declare-fun bs!518333 () Bool)

(assert (= bs!518333 d!821630))

(assert (=> bs!518333 m!3261471))

(assert (=> bs!518333 m!3261471))

(declare-fun m!3261559 () Bool)

(assert (=> bs!518333 m!3261559))

(declare-fun m!3261561 () Bool)

(assert (=> bs!518333 m!3261561))

(assert (=> d!821352 d!821630))

(assert (=> d!821352 d!821620))

(declare-fun d!821632 () Bool)

(assert (=> d!821632 (= (inv!45334 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (value!160983 (h!38801 l!4019)))) (isBalanced!3127 (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (value!160983 (h!38801 l!4019))))))))

(declare-fun bs!518334 () Bool)

(assert (= bs!518334 d!821632))

(declare-fun m!3261563 () Bool)

(assert (=> bs!518334 m!3261563))

(assert (=> tb!154201 d!821632))

(declare-fun d!821634 () Bool)

(declare-fun lt!1010273 () Bool)

(assert (=> d!821634 (= lt!1010273 (isEmpty!18406 (list!12473 (_2!19866 lt!1010146))))))

(assert (=> d!821634 (= lt!1010273 (isEmpty!18407 (c!457896 (_2!19866 lt!1010146))))))

(assert (=> d!821634 (= (isEmpty!18403 (_2!19866 lt!1010146)) lt!1010273)))

(declare-fun bs!518335 () Bool)

(assert (= bs!518335 d!821634))

(declare-fun m!3261565 () Bool)

(assert (=> bs!518335 m!3261565))

(assert (=> bs!518335 m!3261565))

(declare-fun m!3261567 () Bool)

(assert (=> bs!518335 m!3261567))

(declare-fun m!3261569 () Bool)

(assert (=> bs!518335 m!3261569))

(assert (=> b!2831399 d!821634))

(declare-fun b!2831852 () Bool)

(declare-fun e!1792927 () Bool)

(declare-fun tp!905033 () Bool)

(declare-fun tp!905032 () Bool)

(assert (=> b!2831852 (= e!1792927 (and (inv!45333 (left!25184 (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (value!160983 (h!38801 (t!231382 l!4019))))))) tp!905033 (inv!45333 (right!25514 (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (value!160983 (h!38801 (t!231382 l!4019))))))) tp!905032))))

(declare-fun b!2831854 () Bool)

(declare-fun e!1792926 () Bool)

(declare-fun tp!905034 () Bool)

(assert (=> b!2831854 (= e!1792926 tp!905034)))

(declare-fun b!2831853 () Bool)

(declare-fun inv!45340 (IArray!20731) Bool)

(assert (=> b!2831853 (= e!1792927 (and (inv!45340 (xs!13475 (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (value!160983 (h!38801 (t!231382 l!4019))))))) e!1792926))))

(assert (=> b!2831408 (= tp!904840 (and (inv!45333 (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (value!160983 (h!38801 (t!231382 l!4019)))))) e!1792927))))

(assert (= (and b!2831408 ((_ is Node!10363) (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (value!160983 (h!38801 (t!231382 l!4019))))))) b!2831852))

(assert (= b!2831853 b!2831854))

(assert (= (and b!2831408 ((_ is Leaf!15773) (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))) (value!160983 (h!38801 (t!231382 l!4019))))))) b!2831853))

(declare-fun m!3261571 () Bool)

(assert (=> b!2831852 m!3261571))

(declare-fun m!3261573 () Bool)

(assert (=> b!2831852 m!3261573))

(declare-fun m!3261575 () Bool)

(assert (=> b!2831853 m!3261575))

(assert (=> b!2831408 m!3260979))

(declare-fun b!2831855 () Bool)

(declare-fun e!1792928 () Bool)

(assert (=> b!2831855 (= e!1792928 tp_is_empty!14567)))

(declare-fun b!2831857 () Bool)

(declare-fun tp!905037 () Bool)

(assert (=> b!2831857 (= e!1792928 tp!905037)))

(assert (=> b!2831560 (= tp!904918 e!1792928)))

(declare-fun b!2831856 () Bool)

(declare-fun tp!905036 () Bool)

(declare-fun tp!905039 () Bool)

(assert (=> b!2831856 (= e!1792928 (and tp!905036 tp!905039))))

(declare-fun b!2831858 () Bool)

(declare-fun tp!905035 () Bool)

(declare-fun tp!905038 () Bool)

(assert (=> b!2831858 (= e!1792928 (and tp!905035 tp!905038))))

(assert (= (and b!2831560 ((_ is ElementMatch!8395) (regOne!17303 (regex!5004 (rule!7432 (h!38801 l!4019)))))) b!2831855))

(assert (= (and b!2831560 ((_ is Concat!13630) (regOne!17303 (regex!5004 (rule!7432 (h!38801 l!4019)))))) b!2831856))

(assert (= (and b!2831560 ((_ is Star!8395) (regOne!17303 (regex!5004 (rule!7432 (h!38801 l!4019)))))) b!2831857))

(assert (= (and b!2831560 ((_ is Union!8395) (regOne!17303 (regex!5004 (rule!7432 (h!38801 l!4019)))))) b!2831858))

(declare-fun b!2831859 () Bool)

(declare-fun e!1792929 () Bool)

(assert (=> b!2831859 (= e!1792929 tp_is_empty!14567)))

(declare-fun b!2831861 () Bool)

(declare-fun tp!905042 () Bool)

(assert (=> b!2831861 (= e!1792929 tp!905042)))

(assert (=> b!2831560 (= tp!904921 e!1792929)))

(declare-fun b!2831860 () Bool)

(declare-fun tp!905041 () Bool)

(declare-fun tp!905044 () Bool)

(assert (=> b!2831860 (= e!1792929 (and tp!905041 tp!905044))))

(declare-fun b!2831862 () Bool)

(declare-fun tp!905040 () Bool)

(declare-fun tp!905043 () Bool)

(assert (=> b!2831862 (= e!1792929 (and tp!905040 tp!905043))))

(assert (= (and b!2831560 ((_ is ElementMatch!8395) (regTwo!17303 (regex!5004 (rule!7432 (h!38801 l!4019)))))) b!2831859))

(assert (= (and b!2831560 ((_ is Concat!13630) (regTwo!17303 (regex!5004 (rule!7432 (h!38801 l!4019)))))) b!2831860))

(assert (= (and b!2831560 ((_ is Star!8395) (regTwo!17303 (regex!5004 (rule!7432 (h!38801 l!4019)))))) b!2831861))

(assert (= (and b!2831560 ((_ is Union!8395) (regTwo!17303 (regex!5004 (rule!7432 (h!38801 l!4019)))))) b!2831862))

(declare-fun b!2831863 () Bool)

(declare-fun e!1792930 () Bool)

(assert (=> b!2831863 (= e!1792930 tp_is_empty!14567)))

(declare-fun b!2831865 () Bool)

(declare-fun tp!905047 () Bool)

(assert (=> b!2831865 (= e!1792930 tp!905047)))

(assert (=> b!2831559 (= tp!904920 e!1792930)))

(declare-fun b!2831864 () Bool)

(declare-fun tp!905046 () Bool)

(declare-fun tp!905049 () Bool)

(assert (=> b!2831864 (= e!1792930 (and tp!905046 tp!905049))))

(declare-fun b!2831866 () Bool)

(declare-fun tp!905045 () Bool)

(declare-fun tp!905048 () Bool)

(assert (=> b!2831866 (= e!1792930 (and tp!905045 tp!905048))))

(assert (= (and b!2831559 ((_ is ElementMatch!8395) (reg!8724 (regex!5004 (rule!7432 (h!38801 l!4019)))))) b!2831863))

(assert (= (and b!2831559 ((_ is Concat!13630) (reg!8724 (regex!5004 (rule!7432 (h!38801 l!4019)))))) b!2831864))

(assert (= (and b!2831559 ((_ is Star!8395) (reg!8724 (regex!5004 (rule!7432 (h!38801 l!4019)))))) b!2831865))

(assert (= (and b!2831559 ((_ is Union!8395) (reg!8724 (regex!5004 (rule!7432 (h!38801 l!4019)))))) b!2831866))

(declare-fun b!2831867 () Bool)

(declare-fun e!1792931 () Bool)

(assert (=> b!2831867 (= e!1792931 tp_is_empty!14567)))

(declare-fun b!2831869 () Bool)

(declare-fun tp!905052 () Bool)

(assert (=> b!2831869 (= e!1792931 tp!905052)))

(assert (=> b!2831545 (= tp!904904 e!1792931)))

(declare-fun b!2831868 () Bool)

(declare-fun tp!905051 () Bool)

(declare-fun tp!905054 () Bool)

(assert (=> b!2831868 (= e!1792931 (and tp!905051 tp!905054))))

(declare-fun b!2831870 () Bool)

(declare-fun tp!905050 () Bool)

(declare-fun tp!905053 () Bool)

(assert (=> b!2831870 (= e!1792931 (and tp!905050 tp!905053))))

(assert (= (and b!2831545 ((_ is ElementMatch!8395) (regex!5004 (h!38802 (t!231383 rules!1047))))) b!2831867))

(assert (= (and b!2831545 ((_ is Concat!13630) (regex!5004 (h!38802 (t!231383 rules!1047))))) b!2831868))

(assert (= (and b!2831545 ((_ is Star!8395) (regex!5004 (h!38802 (t!231383 rules!1047))))) b!2831869))

(assert (= (and b!2831545 ((_ is Union!8395) (regex!5004 (h!38802 (t!231383 rules!1047))))) b!2831870))

(declare-fun b!2831873 () Bool)

(declare-fun e!1792934 () Bool)

(assert (=> b!2831873 (= e!1792934 true)))

(declare-fun b!2831872 () Bool)

(declare-fun e!1792933 () Bool)

(assert (=> b!2831872 (= e!1792933 e!1792934)))

(declare-fun b!2831871 () Bool)

(declare-fun e!1792932 () Bool)

(assert (=> b!2831871 (= e!1792932 e!1792933)))

(assert (=> b!2831506 e!1792932))

(assert (= b!2831872 b!2831873))

(assert (= b!2831871 b!2831872))

(assert (= (and b!2831506 ((_ is Cons!33382) (t!231383 rules!1047))) b!2831871))

(assert (=> b!2831873 (< (dynLambda!14007 order!17771 (toValue!7030 (transformation!5004 (h!38802 (t!231383 rules!1047))))) (dynLambda!14008 order!17773 lambda!103922))))

(assert (=> b!2831873 (< (dynLambda!14009 order!17775 (toChars!6889 (transformation!5004 (h!38802 (t!231383 rules!1047))))) (dynLambda!14008 order!17773 lambda!103922))))

(declare-fun b!2831876 () Bool)

(declare-fun e!1792937 () Bool)

(assert (=> b!2831876 (= e!1792937 true)))

(declare-fun b!2831875 () Bool)

(declare-fun e!1792936 () Bool)

(assert (=> b!2831875 (= e!1792936 e!1792937)))

(declare-fun b!2831874 () Bool)

(declare-fun e!1792935 () Bool)

(assert (=> b!2831874 (= e!1792935 e!1792936)))

(assert (=> b!2831514 e!1792935))

(assert (= b!2831875 b!2831876))

(assert (= b!2831874 b!2831875))

(assert (= (and b!2831514 ((_ is Cons!33382) (t!231383 rules!1047))) b!2831874))

(assert (=> b!2831876 (< (dynLambda!14007 order!17771 (toValue!7030 (transformation!5004 (h!38802 (t!231383 rules!1047))))) (dynLambda!14008 order!17773 lambda!103927))))

(assert (=> b!2831876 (< (dynLambda!14009 order!17775 (toChars!6889 (transformation!5004 (h!38802 (t!231383 rules!1047))))) (dynLambda!14008 order!17773 lambda!103927))))

(declare-fun b!2831877 () Bool)

(declare-fun e!1792938 () Bool)

(assert (=> b!2831877 (= e!1792938 tp_is_empty!14567)))

(declare-fun b!2831879 () Bool)

(declare-fun tp!905057 () Bool)

(assert (=> b!2831879 (= e!1792938 tp!905057)))

(assert (=> b!2831578 (= tp!904938 e!1792938)))

(declare-fun b!2831878 () Bool)

(declare-fun tp!905056 () Bool)

(declare-fun tp!905059 () Bool)

(assert (=> b!2831878 (= e!1792938 (and tp!905056 tp!905059))))

(declare-fun b!2831880 () Bool)

(declare-fun tp!905055 () Bool)

(declare-fun tp!905058 () Bool)

(assert (=> b!2831880 (= e!1792938 (and tp!905055 tp!905058))))

(assert (= (and b!2831578 ((_ is ElementMatch!8395) (regOne!17303 (regex!5004 (h!38802 rules!1047))))) b!2831877))

(assert (= (and b!2831578 ((_ is Concat!13630) (regOne!17303 (regex!5004 (h!38802 rules!1047))))) b!2831878))

(assert (= (and b!2831578 ((_ is Star!8395) (regOne!17303 (regex!5004 (h!38802 rules!1047))))) b!2831879))

(assert (= (and b!2831578 ((_ is Union!8395) (regOne!17303 (regex!5004 (h!38802 rules!1047))))) b!2831880))

(declare-fun b!2831881 () Bool)

(declare-fun e!1792939 () Bool)

(assert (=> b!2831881 (= e!1792939 tp_is_empty!14567)))

(declare-fun b!2831883 () Bool)

(declare-fun tp!905062 () Bool)

(assert (=> b!2831883 (= e!1792939 tp!905062)))

(assert (=> b!2831578 (= tp!904941 e!1792939)))

(declare-fun b!2831882 () Bool)

(declare-fun tp!905061 () Bool)

(declare-fun tp!905064 () Bool)

(assert (=> b!2831882 (= e!1792939 (and tp!905061 tp!905064))))

(declare-fun b!2831884 () Bool)

(declare-fun tp!905060 () Bool)

(declare-fun tp!905063 () Bool)

(assert (=> b!2831884 (= e!1792939 (and tp!905060 tp!905063))))

(assert (= (and b!2831578 ((_ is ElementMatch!8395) (regTwo!17303 (regex!5004 (h!38802 rules!1047))))) b!2831881))

(assert (= (and b!2831578 ((_ is Concat!13630) (regTwo!17303 (regex!5004 (h!38802 rules!1047))))) b!2831882))

(assert (= (and b!2831578 ((_ is Star!8395) (regTwo!17303 (regex!5004 (h!38802 rules!1047))))) b!2831883))

(assert (= (and b!2831578 ((_ is Union!8395) (regTwo!17303 (regex!5004 (h!38802 rules!1047))))) b!2831884))

(declare-fun b!2831885 () Bool)

(declare-fun e!1792941 () Bool)

(declare-fun tp!905065 () Bool)

(declare-fun tp!905066 () Bool)

(assert (=> b!2831885 (= e!1792941 (and (inv!45333 (left!25184 (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (value!160983 (h!38801 l!4019)))))) tp!905066 (inv!45333 (right!25514 (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (value!160983 (h!38801 l!4019)))))) tp!905065))))

(declare-fun b!2831887 () Bool)

(declare-fun e!1792940 () Bool)

(declare-fun tp!905067 () Bool)

(assert (=> b!2831887 (= e!1792940 tp!905067)))

(declare-fun b!2831886 () Bool)

(assert (=> b!2831886 (= e!1792941 (and (inv!45340 (xs!13475 (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (value!160983 (h!38801 l!4019)))))) e!1792940))))

(assert (=> b!2831529 (= tp!904892 (and (inv!45333 (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (value!160983 (h!38801 l!4019))))) e!1792941))))

(assert (= (and b!2831529 ((_ is Node!10363) (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (value!160983 (h!38801 l!4019)))))) b!2831885))

(assert (= b!2831886 b!2831887))

(assert (= (and b!2831529 ((_ is Leaf!15773) (c!457896 (dynLambda!14006 (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (value!160983 (h!38801 l!4019)))))) b!2831886))

(declare-fun m!3261577 () Bool)

(assert (=> b!2831885 m!3261577))

(declare-fun m!3261579 () Bool)

(assert (=> b!2831885 m!3261579))

(declare-fun m!3261581 () Bool)

(assert (=> b!2831886 m!3261581))

(assert (=> b!2831529 m!3261103))

(declare-fun b!2831888 () Bool)

(declare-fun e!1792942 () Bool)

(assert (=> b!2831888 (= e!1792942 tp_is_empty!14567)))

(declare-fun b!2831890 () Bool)

(declare-fun tp!905070 () Bool)

(assert (=> b!2831890 (= e!1792942 tp!905070)))

(assert (=> b!2831573 (= tp!904936 e!1792942)))

(declare-fun b!2831889 () Bool)

(declare-fun tp!905069 () Bool)

(declare-fun tp!905072 () Bool)

(assert (=> b!2831889 (= e!1792942 (and tp!905069 tp!905072))))

(declare-fun b!2831891 () Bool)

(declare-fun tp!905068 () Bool)

(declare-fun tp!905071 () Bool)

(assert (=> b!2831891 (= e!1792942 (and tp!905068 tp!905071))))

(assert (= (and b!2831573 ((_ is ElementMatch!8395) (regex!5004 (rule!7432 (h!38801 (t!231382 l!4019)))))) b!2831888))

(assert (= (and b!2831573 ((_ is Concat!13630) (regex!5004 (rule!7432 (h!38801 (t!231382 l!4019)))))) b!2831889))

(assert (= (and b!2831573 ((_ is Star!8395) (regex!5004 (rule!7432 (h!38801 (t!231382 l!4019)))))) b!2831890))

(assert (= (and b!2831573 ((_ is Union!8395) (regex!5004 (rule!7432 (h!38801 (t!231382 l!4019)))))) b!2831891))

(declare-fun b!2831892 () Bool)

(declare-fun e!1792943 () Bool)

(assert (=> b!2831892 (= e!1792943 tp_is_empty!14567)))

(declare-fun b!2831894 () Bool)

(declare-fun tp!905075 () Bool)

(assert (=> b!2831894 (= e!1792943 tp!905075)))

(assert (=> b!2831558 (= tp!904919 e!1792943)))

(declare-fun b!2831893 () Bool)

(declare-fun tp!905074 () Bool)

(declare-fun tp!905077 () Bool)

(assert (=> b!2831893 (= e!1792943 (and tp!905074 tp!905077))))

(declare-fun b!2831895 () Bool)

(declare-fun tp!905073 () Bool)

(declare-fun tp!905076 () Bool)

(assert (=> b!2831895 (= e!1792943 (and tp!905073 tp!905076))))

(assert (= (and b!2831558 ((_ is ElementMatch!8395) (regOne!17302 (regex!5004 (rule!7432 (h!38801 l!4019)))))) b!2831892))

(assert (= (and b!2831558 ((_ is Concat!13630) (regOne!17302 (regex!5004 (rule!7432 (h!38801 l!4019)))))) b!2831893))

(assert (= (and b!2831558 ((_ is Star!8395) (regOne!17302 (regex!5004 (rule!7432 (h!38801 l!4019)))))) b!2831894))

(assert (= (and b!2831558 ((_ is Union!8395) (regOne!17302 (regex!5004 (rule!7432 (h!38801 l!4019)))))) b!2831895))

(declare-fun b!2831896 () Bool)

(declare-fun e!1792944 () Bool)

(assert (=> b!2831896 (= e!1792944 tp_is_empty!14567)))

(declare-fun b!2831898 () Bool)

(declare-fun tp!905080 () Bool)

(assert (=> b!2831898 (= e!1792944 tp!905080)))

(assert (=> b!2831558 (= tp!904922 e!1792944)))

(declare-fun b!2831897 () Bool)

(declare-fun tp!905079 () Bool)

(declare-fun tp!905082 () Bool)

(assert (=> b!2831897 (= e!1792944 (and tp!905079 tp!905082))))

(declare-fun b!2831899 () Bool)

(declare-fun tp!905078 () Bool)

(declare-fun tp!905081 () Bool)

(assert (=> b!2831899 (= e!1792944 (and tp!905078 tp!905081))))

(assert (= (and b!2831558 ((_ is ElementMatch!8395) (regTwo!17302 (regex!5004 (rule!7432 (h!38801 l!4019)))))) b!2831896))

(assert (= (and b!2831558 ((_ is Concat!13630) (regTwo!17302 (regex!5004 (rule!7432 (h!38801 l!4019)))))) b!2831897))

(assert (= (and b!2831558 ((_ is Star!8395) (regTwo!17302 (regex!5004 (rule!7432 (h!38801 l!4019)))))) b!2831898))

(assert (= (and b!2831558 ((_ is Union!8395) (regTwo!17302 (regex!5004 (rule!7432 (h!38801 l!4019)))))) b!2831899))

(declare-fun b!2831902 () Bool)

(declare-fun b_free!81437 () Bool)

(declare-fun b_next!82141 () Bool)

(assert (=> b!2831902 (= b_free!81437 (not b_next!82141))))

(declare-fun tp!905084 () Bool)

(declare-fun b_and!207131 () Bool)

(assert (=> b!2831902 (= tp!905084 b_and!207131)))

(declare-fun b_free!81439 () Bool)

(declare-fun b_next!82143 () Bool)

(assert (=> b!2831902 (= b_free!81439 (not b_next!82143))))

(declare-fun t!231451 () Bool)

(declare-fun tb!154221 () Bool)

(assert (=> (and b!2831902 (= (toChars!6889 (transformation!5004 (h!38802 (t!231383 (t!231383 rules!1047))))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019)))))) t!231451) tb!154221))

(declare-fun result!192254 () Bool)

(assert (= result!192254 result!192196))

(assert (=> d!821364 t!231451))

(declare-fun tb!154223 () Bool)

(declare-fun t!231453 () Bool)

(assert (=> (and b!2831902 (= (toChars!6889 (transformation!5004 (h!38802 (t!231383 (t!231383 rules!1047))))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019))))) t!231453) tb!154223))

(declare-fun result!192256 () Bool)

(assert (= result!192256 result!192222))

(assert (=> b!2831527 t!231453))

(assert (=> b!2831617 t!231451))

(declare-fun tp!905086 () Bool)

(declare-fun b_and!207133 () Bool)

(assert (=> b!2831902 (= tp!905086 (and (=> t!231451 result!192254) (=> t!231453 result!192256) b_and!207133))))

(declare-fun e!1792945 () Bool)

(assert (=> b!2831902 (= e!1792945 (and tp!905084 tp!905086))))

(declare-fun b!2831901 () Bool)

(declare-fun tp!905083 () Bool)

(declare-fun e!1792948 () Bool)

(assert (=> b!2831901 (= e!1792948 (and tp!905083 (inv!45326 (tag!5508 (h!38802 (t!231383 (t!231383 rules!1047))))) (inv!45329 (transformation!5004 (h!38802 (t!231383 (t!231383 rules!1047))))) e!1792945))))

(declare-fun b!2831900 () Bool)

(declare-fun e!1792947 () Bool)

(declare-fun tp!905085 () Bool)

(assert (=> b!2831900 (= e!1792947 (and e!1792948 tp!905085))))

(assert (=> b!2831544 (= tp!904906 e!1792947)))

(assert (= b!2831901 b!2831902))

(assert (= b!2831900 b!2831901))

(assert (= (and b!2831544 ((_ is Cons!33382) (t!231383 (t!231383 rules!1047)))) b!2831900))

(declare-fun m!3261583 () Bool)

(assert (=> b!2831901 m!3261583))

(declare-fun m!3261585 () Bool)

(assert (=> b!2831901 m!3261585))

(declare-fun b!2831906 () Bool)

(declare-fun b_free!81441 () Bool)

(declare-fun b_next!82145 () Bool)

(assert (=> b!2831906 (= b_free!81441 (not b_next!82145))))

(declare-fun tp!905089 () Bool)

(declare-fun b_and!207135 () Bool)

(assert (=> b!2831906 (= tp!905089 b_and!207135)))

(declare-fun b_free!81443 () Bool)

(declare-fun b_next!82147 () Bool)

(assert (=> b!2831906 (= b_free!81443 (not b_next!82147))))

(declare-fun t!231455 () Bool)

(declare-fun tb!154225 () Bool)

(assert (=> (and b!2831906 (= (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 (t!231382 l!4019)))))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019)))))) t!231455) tb!154225))

(declare-fun result!192258 () Bool)

(assert (= result!192258 result!192196))

(assert (=> d!821364 t!231455))

(declare-fun t!231457 () Bool)

(declare-fun tb!154227 () Bool)

(assert (=> (and b!2831906 (= (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 (t!231382 l!4019)))))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019))))) t!231457) tb!154227))

(declare-fun result!192260 () Bool)

(assert (= result!192260 result!192222))

(assert (=> b!2831527 t!231457))

(assert (=> b!2831617 t!231455))

(declare-fun b_and!207137 () Bool)

(declare-fun tp!905091 () Bool)

(assert (=> b!2831906 (= tp!905091 (and (=> t!231455 result!192258) (=> t!231457 result!192260) b_and!207137))))

(declare-fun e!1792952 () Bool)

(declare-fun b!2831905 () Bool)

(declare-fun tp!905090 () Bool)

(declare-fun e!1792953 () Bool)

(assert (=> b!2831905 (= e!1792953 (and tp!905090 (inv!45326 (tag!5508 (rule!7432 (h!38801 (t!231382 (t!231382 l!4019)))))) (inv!45329 (transformation!5004 (rule!7432 (h!38801 (t!231382 (t!231382 l!4019)))))) e!1792952))))

(declare-fun b!2831903 () Bool)

(declare-fun tp!905088 () Bool)

(declare-fun e!1792950 () Bool)

(declare-fun e!1792954 () Bool)

(assert (=> b!2831903 (= e!1792950 (and (inv!45330 (h!38801 (t!231382 (t!231382 l!4019)))) e!1792954 tp!905088))))

(assert (=> b!2831571 (= tp!904934 e!1792950)))

(declare-fun b!2831904 () Bool)

(declare-fun tp!905087 () Bool)

(assert (=> b!2831904 (= e!1792954 (and (inv!21 (value!160983 (h!38801 (t!231382 (t!231382 l!4019))))) e!1792953 tp!905087))))

(assert (=> b!2831906 (= e!1792952 (and tp!905089 tp!905091))))

(assert (= b!2831905 b!2831906))

(assert (= b!2831904 b!2831905))

(assert (= b!2831903 b!2831904))

(assert (= (and b!2831571 ((_ is Cons!33381) (t!231382 (t!231382 l!4019)))) b!2831903))

(declare-fun m!3261587 () Bool)

(assert (=> b!2831905 m!3261587))

(declare-fun m!3261589 () Bool)

(assert (=> b!2831905 m!3261589))

(declare-fun m!3261591 () Bool)

(assert (=> b!2831903 m!3261591))

(declare-fun m!3261593 () Bool)

(assert (=> b!2831904 m!3261593))

(declare-fun b!2831907 () Bool)

(declare-fun e!1792955 () Bool)

(declare-fun tp!905092 () Bool)

(assert (=> b!2831907 (= e!1792955 (and tp_is_empty!14567 tp!905092))))

(assert (=> b!2831572 (= tp!904933 e!1792955)))

(assert (= (and b!2831572 ((_ is Cons!33380) (originalCharacters!5736 (h!38801 (t!231382 l!4019))))) b!2831907))

(declare-fun b!2831908 () Bool)

(declare-fun e!1792956 () Bool)

(assert (=> b!2831908 (= e!1792956 tp_is_empty!14567)))

(declare-fun b!2831910 () Bool)

(declare-fun tp!905095 () Bool)

(assert (=> b!2831910 (= e!1792956 tp!905095)))

(assert (=> b!2831577 (= tp!904940 e!1792956)))

(declare-fun b!2831909 () Bool)

(declare-fun tp!905094 () Bool)

(declare-fun tp!905097 () Bool)

(assert (=> b!2831909 (= e!1792956 (and tp!905094 tp!905097))))

(declare-fun b!2831911 () Bool)

(declare-fun tp!905093 () Bool)

(declare-fun tp!905096 () Bool)

(assert (=> b!2831911 (= e!1792956 (and tp!905093 tp!905096))))

(assert (= (and b!2831577 ((_ is ElementMatch!8395) (reg!8724 (regex!5004 (h!38802 rules!1047))))) b!2831908))

(assert (= (and b!2831577 ((_ is Concat!13630) (reg!8724 (regex!5004 (h!38802 rules!1047))))) b!2831909))

(assert (= (and b!2831577 ((_ is Star!8395) (reg!8724 (regex!5004 (h!38802 rules!1047))))) b!2831910))

(assert (= (and b!2831577 ((_ is Union!8395) (reg!8724 (regex!5004 (h!38802 rules!1047))))) b!2831911))

(declare-fun b!2831912 () Bool)

(declare-fun e!1792957 () Bool)

(assert (=> b!2831912 (= e!1792957 tp_is_empty!14567)))

(declare-fun b!2831914 () Bool)

(declare-fun tp!905100 () Bool)

(assert (=> b!2831914 (= e!1792957 tp!905100)))

(assert (=> b!2831576 (= tp!904939 e!1792957)))

(declare-fun b!2831913 () Bool)

(declare-fun tp!905099 () Bool)

(declare-fun tp!905102 () Bool)

(assert (=> b!2831913 (= e!1792957 (and tp!905099 tp!905102))))

(declare-fun b!2831915 () Bool)

(declare-fun tp!905098 () Bool)

(declare-fun tp!905101 () Bool)

(assert (=> b!2831915 (= e!1792957 (and tp!905098 tp!905101))))

(assert (= (and b!2831576 ((_ is ElementMatch!8395) (regOne!17302 (regex!5004 (h!38802 rules!1047))))) b!2831912))

(assert (= (and b!2831576 ((_ is Concat!13630) (regOne!17302 (regex!5004 (h!38802 rules!1047))))) b!2831913))

(assert (= (and b!2831576 ((_ is Star!8395) (regOne!17302 (regex!5004 (h!38802 rules!1047))))) b!2831914))

(assert (= (and b!2831576 ((_ is Union!8395) (regOne!17302 (regex!5004 (h!38802 rules!1047))))) b!2831915))

(declare-fun b!2831916 () Bool)

(declare-fun e!1792958 () Bool)

(assert (=> b!2831916 (= e!1792958 tp_is_empty!14567)))

(declare-fun b!2831918 () Bool)

(declare-fun tp!905105 () Bool)

(assert (=> b!2831918 (= e!1792958 tp!905105)))

(assert (=> b!2831576 (= tp!904942 e!1792958)))

(declare-fun b!2831917 () Bool)

(declare-fun tp!905104 () Bool)

(declare-fun tp!905107 () Bool)

(assert (=> b!2831917 (= e!1792958 (and tp!905104 tp!905107))))

(declare-fun b!2831919 () Bool)

(declare-fun tp!905103 () Bool)

(declare-fun tp!905106 () Bool)

(assert (=> b!2831919 (= e!1792958 (and tp!905103 tp!905106))))

(assert (= (and b!2831576 ((_ is ElementMatch!8395) (regTwo!17302 (regex!5004 (h!38802 rules!1047))))) b!2831916))

(assert (= (and b!2831576 ((_ is Concat!13630) (regTwo!17302 (regex!5004 (h!38802 rules!1047))))) b!2831917))

(assert (= (and b!2831576 ((_ is Star!8395) (regTwo!17302 (regex!5004 (h!38802 rules!1047))))) b!2831918))

(assert (= (and b!2831576 ((_ is Union!8395) (regTwo!17302 (regex!5004 (h!38802 rules!1047))))) b!2831919))

(declare-fun b!2831920 () Bool)

(declare-fun e!1792959 () Bool)

(declare-fun tp!905108 () Bool)

(assert (=> b!2831920 (= e!1792959 (and tp_is_empty!14567 tp!905108))))

(assert (=> b!2831535 (= tp!904895 e!1792959)))

(assert (= (and b!2831535 ((_ is Cons!33380) (t!231381 (originalCharacters!5736 (h!38801 l!4019))))) b!2831920))

(declare-fun b_lambda!85033 () Bool)

(assert (= b_lambda!85031 (or d!821376 b_lambda!85033)))

(declare-fun bs!518336 () Bool)

(declare-fun d!821636 () Bool)

(assert (= bs!518336 (and d!821636 d!821376)))

(assert (=> bs!518336 (= (dynLambda!14014 lambda!103922 (h!38801 l!4019)) (rulesProduceIndividualToken!2126 thiss!11007 rules!1047 (h!38801 l!4019)))))

(assert (=> bs!518336 m!3260881))

(assert (=> b!2831829 d!821636))

(declare-fun b_lambda!85035 () Bool)

(assert (= b_lambda!85017 (or (and b!2831574 b_free!81427) (and b!2831339 b_free!81407 (= (toChars!6889 (transformation!5004 (rule!7432 (h!38801 l!4019)))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))))) (and b!2831546 b_free!81423 (= (toChars!6889 (transformation!5004 (h!38802 (t!231383 rules!1047)))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))))) (and b!2831902 b_free!81439 (= (toChars!6889 (transformation!5004 (h!38802 (t!231383 (t!231383 rules!1047))))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))))) (and b!2831906 b_free!81443 (= (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 (t!231382 l!4019)))))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))))) (and b!2831338 b_free!81411 (= (toChars!6889 (transformation!5004 (h!38802 rules!1047))) (toChars!6889 (transformation!5004 (rule!7432 (h!38801 (t!231382 l!4019))))))) b_lambda!85035)))

(declare-fun b_lambda!85037 () Bool)

(assert (= b_lambda!85019 (or d!821396 b_lambda!85037)))

(declare-fun bs!518337 () Bool)

(declare-fun d!821638 () Bool)

(assert (= bs!518337 (and d!821638 d!821396)))

(assert (=> bs!518337 (= (dynLambda!14014 lambda!103927 (h!38801 (list!12472 (seqFromList!3250 l!4019)))) (rulesProduceIndividualToken!2126 thiss!11007 rules!1047 (h!38801 (list!12472 (seqFromList!3250 l!4019)))))))

(assert (=> bs!518337 m!3261195))

(assert (=> b!2831651 d!821638))

(check-sat (not d!821470) (not b!2831889) (not b!2831907) (not d!821444) (not b!2831646) (not b!2831626) (not b!2831856) (not b_next!82145) (not b!2831893) (not b!2831836) (not b!2831890) (not b!2831652) (not b!2831864) (not d!821596) (not b!2831625) (not b_lambda!85033) (not b!2831599) (not b!2831899) (not b!2831914) (not d!821454) (not d!821428) (not b!2831887) (not d!821580) (not b!2831838) (not b!2831818) (not d!821616) (not b!2831623) (not b_next!82111) (not b!2831830) (not b!2831897) (not b!2831884) (not b_next!82147) (not b_next!82141) b_and!207137 (not d!821608) (not b!2831594) (not d!821618) (not b!2831837) (not b!2831619) (not b!2831883) (not d!821600) (not b!2831886) (not b!2831919) (not b!2831903) (not b!2831833) (not d!821578) (not b!2831854) (not b!2831879) (not b!2831819) b_and!207135 (not d!821430) (not d!821446) (not d!821434) (not b!2831885) (not d!821620) (not bs!518336) (not b_next!82109) (not d!821422) b_and!207067 (not d!821630) (not d!821606) (not d!821582) (not b!2831910) (not d!821594) (not b_next!82125) (not b!2831918) (not d!821634) (not b_lambda!85013) b_and!207099 (not d!821576) (not b!2831920) (not b!2831874) (not d!821574) (not d!821614) (not b!2831871) (not d!821604) (not b!2831868) b_and!207103 (not d!821628) (not b!2831853) (not b!2831904) b_and!207113 (not b!2831841) (not b_next!82129) (not b!2831862) (not b!2831905) (not b!2831601) (not b!2831900) (not d!821468) (not b!2831591) b_and!207131 b_and!207071 (not d!821598) (not b!2831895) (not b!2831593) (not b!2831913) b_and!207133 (not b!2831816) (not b_lambda!85035) (not b!2831866) (not b!2831869) (not b!2831911) (not b!2831857) (not b!2831861) (not b!2831858) (not b_next!82115) (not b!2831617) (not b!2831839) (not d!821586) (not b!2831880) (not b!2831865) (not d!821456) (not b!2831840) (not b_next!82127) (not b!2831616) (not d!821592) (not b_next!82143) (not b_next!82131) (not b!2831917) (not b!2831852) (not b_lambda!85037) (not b!2831891) (not b!2831878) (not b!2831909) tp_is_empty!14567 (not b!2831645) (not d!821458) (not d!821612) b_and!207109 (not b_lambda!85011) (not b!2831843) (not b_next!82113) (not b!2831898) (not b!2831894) (not d!821584) (not b!2831860) (not b!2831823) (not b!2831627) (not b!2831618) (not b!2831831) (not d!821476) (not d!821426) (not d!821624) (not b!2831628) (not b!2831870) (not bs!518337) (not d!821622) (not b!2831817) (not d!821632) b_and!207111 (not b!2831660) (not b!2831832) (not d!821464) (not d!821472) (not b!2831915) (not b!2831408) (not b!2831901) (not b!2831826) (not b!2831529) (not b!2831622) (not b!2831882) b_and!207107 (not d!821626) (not d!821448))
(check-sat (not b_next!82145) (not b_next!82111) (not b_next!82147) b_and!207135 (not b_next!82125) b_and!207099 b_and!207133 (not b_next!82115) b_and!207109 (not b_next!82113) b_and!207111 b_and!207107 (not b_next!82141) b_and!207137 (not b_next!82109) b_and!207067 b_and!207113 b_and!207103 (not b_next!82129) b_and!207131 b_and!207071 (not b_next!82127) (not b_next!82143) (not b_next!82131))

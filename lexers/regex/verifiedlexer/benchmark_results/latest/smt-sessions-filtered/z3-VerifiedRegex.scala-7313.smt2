; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389592 () Bool)

(assert start!389592)

(declare-fun b!4110616 () Bool)

(declare-fun b_free!115563 () Bool)

(declare-fun b_next!116267 () Bool)

(assert (=> b!4110616 (= b_free!115563 (not b_next!116267))))

(declare-fun tp!1249511 () Bool)

(declare-fun b_and!317449 () Bool)

(assert (=> b!4110616 (= tp!1249511 b_and!317449)))

(declare-fun b_free!115565 () Bool)

(declare-fun b_next!116269 () Bool)

(assert (=> b!4110616 (= b_free!115565 (not b_next!116269))))

(declare-fun tp!1249518 () Bool)

(declare-fun b_and!317451 () Bool)

(assert (=> b!4110616 (= tp!1249518 b_and!317451)))

(declare-fun b!4110617 () Bool)

(declare-fun b_free!115567 () Bool)

(declare-fun b_next!116271 () Bool)

(assert (=> b!4110617 (= b_free!115567 (not b_next!116271))))

(declare-fun tp!1249513 () Bool)

(declare-fun b_and!317453 () Bool)

(assert (=> b!4110617 (= tp!1249513 b_and!317453)))

(declare-fun b_free!115569 () Bool)

(declare-fun b_next!116273 () Bool)

(assert (=> b!4110617 (= b_free!115569 (not b_next!116273))))

(declare-fun tp!1249517 () Bool)

(declare-fun b_and!317455 () Bool)

(assert (=> b!4110617 (= tp!1249517 b_and!317455)))

(declare-fun b!4110619 () Bool)

(declare-fun b_free!115571 () Bool)

(declare-fun b_next!116275 () Bool)

(assert (=> b!4110619 (= b_free!115571 (not b_next!116275))))

(declare-fun tp!1249515 () Bool)

(declare-fun b_and!317457 () Bool)

(assert (=> b!4110619 (= tp!1249515 b_and!317457)))

(declare-fun b_free!115573 () Bool)

(declare-fun b_next!116277 () Bool)

(assert (=> b!4110619 (= b_free!115573 (not b_next!116277))))

(declare-fun tp!1249514 () Bool)

(declare-fun b_and!317459 () Bool)

(assert (=> b!4110619 (= tp!1249514 b_and!317459)))

(declare-fun tp!1249516 () Bool)

(declare-fun b!4110614 () Bool)

(declare-datatypes ((List!44392 0))(
  ( (Nil!44268) (Cons!44268 (h!49688 (_ BitVec 16)) (t!340143 List!44392)) )
))
(declare-datatypes ((TokenValue!7428 0))(
  ( (FloatLiteralValue!14856 (text!52441 List!44392)) (TokenValueExt!7427 (__x!27073 Int)) (Broken!37140 (value!225718 List!44392)) (Object!7551) (End!7428) (Def!7428) (Underscore!7428) (Match!7428) (Else!7428) (Error!7428) (Case!7428) (If!7428) (Extends!7428) (Abstract!7428) (Class!7428) (Val!7428) (DelimiterValue!14856 (del!7488 List!44392)) (KeywordValue!7434 (value!225719 List!44392)) (CommentValue!14856 (value!225720 List!44392)) (WhitespaceValue!14856 (value!225721 List!44392)) (IndentationValue!7428 (value!225722 List!44392)) (String!50889) (Int32!7428) (Broken!37141 (value!225723 List!44392)) (Boolean!7429) (Unit!63704) (OperatorValue!7431 (op!7488 List!44392)) (IdentifierValue!14856 (value!225724 List!44392)) (IdentifierValue!14857 (value!225725 List!44392)) (WhitespaceValue!14857 (value!225726 List!44392)) (True!14856) (False!14856) (Broken!37142 (value!225727 List!44392)) (Broken!37143 (value!225728 List!44392)) (True!14857) (RightBrace!7428) (RightBracket!7428) (Colon!7428) (Null!7428) (Comma!7428) (LeftBracket!7428) (False!14857) (LeftBrace!7428) (ImaginaryLiteralValue!7428 (text!52442 List!44392)) (StringLiteralValue!22284 (value!225729 List!44392)) (EOFValue!7428 (value!225730 List!44392)) (IdentValue!7428 (value!225731 List!44392)) (DelimiterValue!14857 (value!225732 List!44392)) (DedentValue!7428 (value!225733 List!44392)) (NewLineValue!7428 (value!225734 List!44392)) (IntegerValue!22284 (value!225735 (_ BitVec 32)) (text!52443 List!44392)) (IntegerValue!22285 (value!225736 Int) (text!52444 List!44392)) (Times!7428) (Or!7428) (Equal!7428) (Minus!7428) (Broken!37144 (value!225737 List!44392)) (And!7428) (Div!7428) (LessEqual!7428) (Mod!7428) (Concat!19531) (Not!7428) (Plus!7428) (SpaceValue!7428 (value!225738 List!44392)) (IntegerValue!22286 (value!225739 Int) (text!52445 List!44392)) (StringLiteralValue!22285 (text!52446 List!44392)) (FloatLiteralValue!14857 (text!52447 List!44392)) (BytesLiteralValue!7428 (value!225740 List!44392)) (CommentValue!14857 (value!225741 List!44392)) (StringLiteralValue!22286 (value!225742 List!44392)) (ErrorTokenValue!7428 (msg!7489 List!44392)) )
))
(declare-datatypes ((String!50890 0))(
  ( (String!50891 (value!225743 String)) )
))
(declare-datatypes ((C!24392 0))(
  ( (C!24393 (val!14306 Int)) )
))
(declare-datatypes ((List!44393 0))(
  ( (Nil!44269) (Cons!44269 (h!49689 C!24392) (t!340144 List!44393)) )
))
(declare-datatypes ((IArray!26823 0))(
  ( (IArray!26824 (innerList!13469 List!44393)) )
))
(declare-datatypes ((Conc!13409 0))(
  ( (Node!13409 (left!33198 Conc!13409) (right!33528 Conc!13409) (csize!27048 Int) (cheight!13620 Int)) (Leaf!20723 (xs!16715 IArray!26823) (csize!27049 Int)) (Empty!13409) )
))
(declare-datatypes ((BalanceConc!26412 0))(
  ( (BalanceConc!26413 (c!706848 Conc!13409)) )
))
(declare-datatypes ((Regex!12103 0))(
  ( (ElementMatch!12103 (c!706849 C!24392)) (Concat!19532 (regOne!24718 Regex!12103) (regTwo!24718 Regex!12103)) (EmptyExpr!12103) (Star!12103 (reg!12432 Regex!12103)) (EmptyLang!12103) (Union!12103 (regOne!24719 Regex!12103) (regTwo!24719 Regex!12103)) )
))
(declare-datatypes ((TokenValueInjection!14284 0))(
  ( (TokenValueInjection!14285 (toValue!9830 Int) (toChars!9689 Int)) )
))
(declare-datatypes ((Rule!14196 0))(
  ( (Rule!14197 (regex!7198 Regex!12103) (tag!8058 String!50890) (isSeparator!7198 Bool) (transformation!7198 TokenValueInjection!14284)) )
))
(declare-fun e1!99 () Rule!14196)

(declare-fun e!2550368 () Bool)

(declare-fun e!2550366 () Bool)

(declare-fun inv!58904 (String!50890) Bool)

(declare-fun inv!58906 (TokenValueInjection!14284) Bool)

(assert (=> b!4110614 (= e!2550368 (and tp!1249516 (inv!58904 (tag!8058 e1!99)) (inv!58906 (transformation!7198 e1!99)) e!2550366))))

(declare-datatypes ((List!44394 0))(
  ( (Nil!44270) (Cons!44270 (h!49690 Rule!14196) (t!340145 List!44394)) )
))
(declare-fun lt!1468201 () List!44394)

(declare-datatypes ((LexerInterface!6787 0))(
  ( (LexerInterfaceExt!6784 (__x!27074 Int)) (Lexer!6785) )
))
(declare-fun thiss!26878 () LexerInterface!6787)

(declare-fun b!4110615 () Bool)

(declare-fun e!2550367 () Bool)

(declare-datatypes ((List!44395 0))(
  ( (Nil!44271) (Cons!44271 (h!49691 String!50890) (t!340146 List!44395)) )
))
(declare-fun noDuplicateTag!2875 (LexerInterface!6787 List!44394 List!44395) Bool)

(assert (=> b!4110615 (= e!2550367 (not (noDuplicateTag!2875 thiss!26878 lt!1468201 (Cons!44271 (tag!8058 e1!99) Nil!44271))))))

(declare-fun e!2550369 () Bool)

(assert (=> b!4110616 (= e!2550369 (and tp!1249511 tp!1249518))))

(assert (=> b!4110617 (= e!2550366 (and tp!1249513 tp!1249517))))

(declare-fun res!1679591 () Bool)

(declare-fun e!2550370 () Bool)

(assert (=> start!389592 (=> (not res!1679591) (not e!2550370))))

(get-info :version)

(assert (=> start!389592 (= res!1679591 ((_ is Lexer!6785) thiss!26878))))

(assert (=> start!389592 e!2550370))

(assert (=> start!389592 true))

(assert (=> start!389592 e!2550368))

(declare-fun e!2550371 () Bool)

(assert (=> start!389592 e!2550371))

(declare-fun e!2550374 () Bool)

(assert (=> start!389592 e!2550374))

(declare-fun b!4110613 () Bool)

(declare-fun e!2550377 () Bool)

(declare-fun tp!1249509 () Bool)

(assert (=> b!4110613 (= e!2550374 (and e!2550377 tp!1249509))))

(declare-fun tp!1249512 () Bool)

(declare-fun b!4110618 () Bool)

(declare-fun l!6462 () List!44394)

(assert (=> b!4110618 (= e!2550377 (and tp!1249512 (inv!58904 (tag!8058 (h!49690 l!6462))) (inv!58906 (transformation!7198 (h!49690 l!6462))) e!2550369))))

(declare-fun e!2550375 () Bool)

(assert (=> b!4110619 (= e!2550375 (and tp!1249515 tp!1249514))))

(declare-fun b!4110620 () Bool)

(declare-fun e2!99 () Rule!14196)

(declare-fun tp!1249510 () Bool)

(assert (=> b!4110620 (= e!2550371 (and tp!1249510 (inv!58904 (tag!8058 e2!99)) (inv!58906 (transformation!7198 e2!99)) e!2550375))))

(declare-fun b!4110621 () Bool)

(assert (=> b!4110621 (= e!2550370 e!2550367)))

(declare-fun res!1679590 () Bool)

(assert (=> b!4110621 (=> (not res!1679590) (not e!2550367))))

(assert (=> b!4110621 (= res!1679590 (noDuplicateTag!2875 thiss!26878 (Cons!44270 e1!99 lt!1468201) Nil!44271))))

(assert (=> b!4110621 (= lt!1468201 (Cons!44270 e2!99 l!6462))))

(assert (= (and start!389592 res!1679591) b!4110621))

(assert (= (and b!4110621 res!1679590) b!4110615))

(assert (= b!4110614 b!4110617))

(assert (= start!389592 b!4110614))

(assert (= b!4110620 b!4110619))

(assert (= start!389592 b!4110620))

(assert (= b!4110618 b!4110616))

(assert (= b!4110613 b!4110618))

(assert (= (and start!389592 ((_ is Cons!44270) l!6462)) b!4110613))

(declare-fun m!4712881 () Bool)

(assert (=> b!4110614 m!4712881))

(declare-fun m!4712883 () Bool)

(assert (=> b!4110614 m!4712883))

(declare-fun m!4712885 () Bool)

(assert (=> b!4110618 m!4712885))

(declare-fun m!4712887 () Bool)

(assert (=> b!4110618 m!4712887))

(declare-fun m!4712889 () Bool)

(assert (=> b!4110620 m!4712889))

(declare-fun m!4712891 () Bool)

(assert (=> b!4110620 m!4712891))

(declare-fun m!4712893 () Bool)

(assert (=> b!4110621 m!4712893))

(declare-fun m!4712895 () Bool)

(assert (=> b!4110615 m!4712895))

(check-sat (not b!4110621) (not b!4110620) (not b!4110615) (not b_next!116269) b_and!317457 (not b_next!116275) b_and!317453 (not b_next!116273) b_and!317455 (not b!4110618) b_and!317459 b_and!317451 (not b!4110614) (not b_next!116267) (not b_next!116277) b_and!317449 (not b_next!116271) (not b!4110613))
(check-sat (not b_next!116269) b_and!317457 (not b_next!116275) b_and!317453 (not b_next!116273) b_and!317455 b_and!317459 (not b_next!116271) b_and!317451 (not b_next!116267) (not b_next!116277) b_and!317449)
(get-model)

(declare-fun d!1219574 () Bool)

(assert (=> d!1219574 (= (inv!58904 (tag!8058 (h!49690 l!6462))) (= (mod (str.len (value!225743 (tag!8058 (h!49690 l!6462)))) 2) 0))))

(assert (=> b!4110618 d!1219574))

(declare-fun d!1219586 () Bool)

(declare-fun res!1679615 () Bool)

(declare-fun e!2550393 () Bool)

(assert (=> d!1219586 (=> (not res!1679615) (not e!2550393))))

(declare-fun semiInverseModEq!3100 (Int Int) Bool)

(assert (=> d!1219586 (= res!1679615 (semiInverseModEq!3100 (toChars!9689 (transformation!7198 (h!49690 l!6462))) (toValue!9830 (transformation!7198 (h!49690 l!6462)))))))

(assert (=> d!1219586 (= (inv!58906 (transformation!7198 (h!49690 l!6462))) e!2550393)))

(declare-fun b!4110638 () Bool)

(declare-fun equivClasses!2999 (Int Int) Bool)

(assert (=> b!4110638 (= e!2550393 (equivClasses!2999 (toChars!9689 (transformation!7198 (h!49690 l!6462))) (toValue!9830 (transformation!7198 (h!49690 l!6462)))))))

(assert (= (and d!1219586 res!1679615) b!4110638))

(declare-fun m!4712917 () Bool)

(assert (=> d!1219586 m!4712917))

(declare-fun m!4712919 () Bool)

(assert (=> b!4110638 m!4712919))

(assert (=> b!4110618 d!1219586))

(declare-fun d!1219590 () Bool)

(assert (=> d!1219590 (= (inv!58904 (tag!8058 e1!99)) (= (mod (str.len (value!225743 (tag!8058 e1!99))) 2) 0))))

(assert (=> b!4110614 d!1219590))

(declare-fun d!1219592 () Bool)

(declare-fun res!1679616 () Bool)

(declare-fun e!2550396 () Bool)

(assert (=> d!1219592 (=> (not res!1679616) (not e!2550396))))

(assert (=> d!1219592 (= res!1679616 (semiInverseModEq!3100 (toChars!9689 (transformation!7198 e1!99)) (toValue!9830 (transformation!7198 e1!99))))))

(assert (=> d!1219592 (= (inv!58906 (transformation!7198 e1!99)) e!2550396)))

(declare-fun b!4110648 () Bool)

(assert (=> b!4110648 (= e!2550396 (equivClasses!2999 (toChars!9689 (transformation!7198 e1!99)) (toValue!9830 (transformation!7198 e1!99))))))

(assert (= (and d!1219592 res!1679616) b!4110648))

(declare-fun m!4712921 () Bool)

(assert (=> d!1219592 m!4712921))

(declare-fun m!4712923 () Bool)

(assert (=> b!4110648 m!4712923))

(assert (=> b!4110614 d!1219592))

(declare-fun d!1219594 () Bool)

(assert (=> d!1219594 (= (inv!58904 (tag!8058 e2!99)) (= (mod (str.len (value!225743 (tag!8058 e2!99))) 2) 0))))

(assert (=> b!4110620 d!1219594))

(declare-fun d!1219596 () Bool)

(declare-fun res!1679617 () Bool)

(declare-fun e!2550397 () Bool)

(assert (=> d!1219596 (=> (not res!1679617) (not e!2550397))))

(assert (=> d!1219596 (= res!1679617 (semiInverseModEq!3100 (toChars!9689 (transformation!7198 e2!99)) (toValue!9830 (transformation!7198 e2!99))))))

(assert (=> d!1219596 (= (inv!58906 (transformation!7198 e2!99)) e!2550397)))

(declare-fun b!4110649 () Bool)

(assert (=> b!4110649 (= e!2550397 (equivClasses!2999 (toChars!9689 (transformation!7198 e2!99)) (toValue!9830 (transformation!7198 e2!99))))))

(assert (= (and d!1219596 res!1679617) b!4110649))

(declare-fun m!4712925 () Bool)

(assert (=> d!1219596 m!4712925))

(declare-fun m!4712927 () Bool)

(assert (=> b!4110649 m!4712927))

(assert (=> b!4110620 d!1219596))

(declare-fun d!1219598 () Bool)

(declare-fun res!1679622 () Bool)

(declare-fun e!2550416 () Bool)

(assert (=> d!1219598 (=> res!1679622 e!2550416)))

(assert (=> d!1219598 (= res!1679622 ((_ is Nil!44270) lt!1468201))))

(assert (=> d!1219598 (= (noDuplicateTag!2875 thiss!26878 lt!1468201 (Cons!44271 (tag!8058 e1!99) Nil!44271)) e!2550416)))

(declare-fun b!4110673 () Bool)

(declare-fun e!2550417 () Bool)

(assert (=> b!4110673 (= e!2550416 e!2550417)))

(declare-fun res!1679623 () Bool)

(assert (=> b!4110673 (=> (not res!1679623) (not e!2550417))))

(declare-fun contains!8874 (List!44395 String!50890) Bool)

(assert (=> b!4110673 (= res!1679623 (not (contains!8874 (Cons!44271 (tag!8058 e1!99) Nil!44271) (tag!8058 (h!49690 lt!1468201)))))))

(declare-fun b!4110674 () Bool)

(assert (=> b!4110674 (= e!2550417 (noDuplicateTag!2875 thiss!26878 (t!340145 lt!1468201) (Cons!44271 (tag!8058 (h!49690 lt!1468201)) (Cons!44271 (tag!8058 e1!99) Nil!44271))))))

(assert (= (and d!1219598 (not res!1679622)) b!4110673))

(assert (= (and b!4110673 res!1679623) b!4110674))

(declare-fun m!4712933 () Bool)

(assert (=> b!4110673 m!4712933))

(declare-fun m!4712935 () Bool)

(assert (=> b!4110674 m!4712935))

(assert (=> b!4110615 d!1219598))

(declare-fun d!1219600 () Bool)

(declare-fun res!1679624 () Bool)

(declare-fun e!2550419 () Bool)

(assert (=> d!1219600 (=> res!1679624 e!2550419)))

(assert (=> d!1219600 (= res!1679624 ((_ is Nil!44270) (Cons!44270 e1!99 lt!1468201)))))

(assert (=> d!1219600 (= (noDuplicateTag!2875 thiss!26878 (Cons!44270 e1!99 lt!1468201) Nil!44271) e!2550419)))

(declare-fun b!4110679 () Bool)

(declare-fun e!2550420 () Bool)

(assert (=> b!4110679 (= e!2550419 e!2550420)))

(declare-fun res!1679625 () Bool)

(assert (=> b!4110679 (=> (not res!1679625) (not e!2550420))))

(assert (=> b!4110679 (= res!1679625 (not (contains!8874 Nil!44271 (tag!8058 (h!49690 (Cons!44270 e1!99 lt!1468201))))))))

(declare-fun b!4110680 () Bool)

(assert (=> b!4110680 (= e!2550420 (noDuplicateTag!2875 thiss!26878 (t!340145 (Cons!44270 e1!99 lt!1468201)) (Cons!44271 (tag!8058 (h!49690 (Cons!44270 e1!99 lt!1468201))) Nil!44271)))))

(assert (= (and d!1219600 (not res!1679624)) b!4110679))

(assert (= (and b!4110679 res!1679625) b!4110680))

(declare-fun m!4712937 () Bool)

(assert (=> b!4110679 m!4712937))

(declare-fun m!4712939 () Bool)

(assert (=> b!4110680 m!4712939))

(assert (=> b!4110621 d!1219600))

(declare-fun e!2550423 () Bool)

(assert (=> b!4110618 (= tp!1249512 e!2550423)))

(declare-fun b!4110693 () Bool)

(declare-fun tp!1249568 () Bool)

(assert (=> b!4110693 (= e!2550423 tp!1249568)))

(declare-fun b!4110692 () Bool)

(declare-fun tp!1249567 () Bool)

(declare-fun tp!1249566 () Bool)

(assert (=> b!4110692 (= e!2550423 (and tp!1249567 tp!1249566))))

(declare-fun b!4110691 () Bool)

(declare-fun tp_is_empty!21157 () Bool)

(assert (=> b!4110691 (= e!2550423 tp_is_empty!21157)))

(declare-fun b!4110694 () Bool)

(declare-fun tp!1249569 () Bool)

(declare-fun tp!1249570 () Bool)

(assert (=> b!4110694 (= e!2550423 (and tp!1249569 tp!1249570))))

(assert (= (and b!4110618 ((_ is ElementMatch!12103) (regex!7198 (h!49690 l!6462)))) b!4110691))

(assert (= (and b!4110618 ((_ is Concat!19532) (regex!7198 (h!49690 l!6462)))) b!4110692))

(assert (= (and b!4110618 ((_ is Star!12103) (regex!7198 (h!49690 l!6462)))) b!4110693))

(assert (= (and b!4110618 ((_ is Union!12103) (regex!7198 (h!49690 l!6462)))) b!4110694))

(declare-fun b!4110705 () Bool)

(declare-fun b_free!115579 () Bool)

(declare-fun b_next!116283 () Bool)

(assert (=> b!4110705 (= b_free!115579 (not b_next!116283))))

(declare-fun tp!1249580 () Bool)

(declare-fun b_and!317465 () Bool)

(assert (=> b!4110705 (= tp!1249580 b_and!317465)))

(declare-fun b_free!115581 () Bool)

(declare-fun b_next!116285 () Bool)

(assert (=> b!4110705 (= b_free!115581 (not b_next!116285))))

(declare-fun tp!1249582 () Bool)

(declare-fun b_and!317467 () Bool)

(assert (=> b!4110705 (= tp!1249582 b_and!317467)))

(declare-fun e!2550434 () Bool)

(assert (=> b!4110705 (= e!2550434 (and tp!1249580 tp!1249582))))

(declare-fun e!2550432 () Bool)

(declare-fun tp!1249581 () Bool)

(declare-fun b!4110704 () Bool)

(assert (=> b!4110704 (= e!2550432 (and tp!1249581 (inv!58904 (tag!8058 (h!49690 (t!340145 l!6462)))) (inv!58906 (transformation!7198 (h!49690 (t!340145 l!6462)))) e!2550434))))

(declare-fun b!4110703 () Bool)

(declare-fun e!2550435 () Bool)

(declare-fun tp!1249579 () Bool)

(assert (=> b!4110703 (= e!2550435 (and e!2550432 tp!1249579))))

(assert (=> b!4110613 (= tp!1249509 e!2550435)))

(assert (= b!4110704 b!4110705))

(assert (= b!4110703 b!4110704))

(assert (= (and b!4110613 ((_ is Cons!44270) (t!340145 l!6462))) b!4110703))

(declare-fun m!4712941 () Bool)

(assert (=> b!4110704 m!4712941))

(declare-fun m!4712943 () Bool)

(assert (=> b!4110704 m!4712943))

(declare-fun e!2550436 () Bool)

(assert (=> b!4110614 (= tp!1249516 e!2550436)))

(declare-fun b!4110708 () Bool)

(declare-fun tp!1249585 () Bool)

(assert (=> b!4110708 (= e!2550436 tp!1249585)))

(declare-fun b!4110707 () Bool)

(declare-fun tp!1249584 () Bool)

(declare-fun tp!1249583 () Bool)

(assert (=> b!4110707 (= e!2550436 (and tp!1249584 tp!1249583))))

(declare-fun b!4110706 () Bool)

(assert (=> b!4110706 (= e!2550436 tp_is_empty!21157)))

(declare-fun b!4110709 () Bool)

(declare-fun tp!1249586 () Bool)

(declare-fun tp!1249587 () Bool)

(assert (=> b!4110709 (= e!2550436 (and tp!1249586 tp!1249587))))

(assert (= (and b!4110614 ((_ is ElementMatch!12103) (regex!7198 e1!99))) b!4110706))

(assert (= (and b!4110614 ((_ is Concat!19532) (regex!7198 e1!99))) b!4110707))

(assert (= (and b!4110614 ((_ is Star!12103) (regex!7198 e1!99))) b!4110708))

(assert (= (and b!4110614 ((_ is Union!12103) (regex!7198 e1!99))) b!4110709))

(declare-fun e!2550437 () Bool)

(assert (=> b!4110620 (= tp!1249510 e!2550437)))

(declare-fun b!4110712 () Bool)

(declare-fun tp!1249590 () Bool)

(assert (=> b!4110712 (= e!2550437 tp!1249590)))

(declare-fun b!4110711 () Bool)

(declare-fun tp!1249589 () Bool)

(declare-fun tp!1249588 () Bool)

(assert (=> b!4110711 (= e!2550437 (and tp!1249589 tp!1249588))))

(declare-fun b!4110710 () Bool)

(assert (=> b!4110710 (= e!2550437 tp_is_empty!21157)))

(declare-fun b!4110713 () Bool)

(declare-fun tp!1249591 () Bool)

(declare-fun tp!1249592 () Bool)

(assert (=> b!4110713 (= e!2550437 (and tp!1249591 tp!1249592))))

(assert (= (and b!4110620 ((_ is ElementMatch!12103) (regex!7198 e2!99))) b!4110710))

(assert (= (and b!4110620 ((_ is Concat!19532) (regex!7198 e2!99))) b!4110711))

(assert (= (and b!4110620 ((_ is Star!12103) (regex!7198 e2!99))) b!4110712))

(assert (= (and b!4110620 ((_ is Union!12103) (regex!7198 e2!99))) b!4110713))

(check-sat (not d!1219586) b_and!317457 (not b!4110708) (not b_next!116275) (not b!4110704) (not b_next!116283) b_and!317465 b_and!317451 (not b_next!116285) (not b!4110648) (not b!4110694) (not b!4110679) (not b_next!116269) tp_is_empty!21157 (not b!4110693) (not b!4110674) (not b!4110703) b_and!317467 b_and!317453 (not b!4110692) (not b_next!116277) b_and!317449 (not b!4110713) (not b_next!116273) (not b!4110680) (not b!4110711) (not b!4110712) (not b!4110649) b_and!317455 b_and!317459 (not d!1219596) (not b_next!116271) (not b!4110707) (not b!4110638) (not b!4110709) (not b!4110673) (not d!1219592) (not b_next!116267))
(check-sat (not b_next!116269) b_and!317457 (not b_next!116275) b_and!317467 b_and!317453 (not b_next!116273) b_and!317455 (not b_next!116283) b_and!317459 b_and!317465 (not b_next!116271) b_and!317451 (not b_next!116285) (not b_next!116267) (not b_next!116277) b_and!317449)

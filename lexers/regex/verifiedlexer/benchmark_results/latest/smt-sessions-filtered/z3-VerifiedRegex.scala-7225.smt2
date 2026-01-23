; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384764 () Bool)

(assert start!384764)

(declare-fun b!4075251 () Bool)

(declare-fun b_free!113561 () Bool)

(declare-fun b_next!114265 () Bool)

(assert (=> b!4075251 (= b_free!113561 (not b_next!114265))))

(declare-fun tp!1233602 () Bool)

(declare-fun b_and!313283 () Bool)

(assert (=> b!4075251 (= tp!1233602 b_and!313283)))

(declare-fun b_free!113563 () Bool)

(declare-fun b_next!114267 () Bool)

(assert (=> b!4075251 (= b_free!113563 (not b_next!114267))))

(declare-fun tp!1233593 () Bool)

(declare-fun b_and!313285 () Bool)

(assert (=> b!4075251 (= tp!1233593 b_and!313285)))

(declare-fun b!4075248 () Bool)

(declare-fun b_free!113565 () Bool)

(declare-fun b_next!114269 () Bool)

(assert (=> b!4075248 (= b_free!113565 (not b_next!114269))))

(declare-fun tp!1233599 () Bool)

(declare-fun b_and!313287 () Bool)

(assert (=> b!4075248 (= tp!1233599 b_and!313287)))

(declare-fun b_free!113567 () Bool)

(declare-fun b_next!114271 () Bool)

(assert (=> b!4075248 (= b_free!113567 (not b_next!114271))))

(declare-fun tp!1233597 () Bool)

(declare-fun b_and!313289 () Bool)

(assert (=> b!4075248 (= tp!1233597 b_and!313289)))

(declare-fun e!2529402 () Bool)

(assert (=> b!4075248 (= e!2529402 (and tp!1233599 tp!1233597))))

(declare-fun b!4075249 () Bool)

(declare-fun e!2529404 () Bool)

(declare-fun e!2529405 () Bool)

(declare-fun tp!1233600 () Bool)

(assert (=> b!4075249 (= e!2529404 (and e!2529405 tp!1233600))))

(declare-fun res!1664411 () Bool)

(declare-fun e!2529410 () Bool)

(assert (=> start!384764 (=> (not res!1664411) (not e!2529410))))

(declare-datatypes ((LexerInterface!6611 0))(
  ( (LexerInterfaceExt!6608 (__x!26721 Int)) (Lexer!6609) )
))
(declare-fun thiss!26199 () LexerInterface!6611)

(get-info :version)

(assert (=> start!384764 (= res!1664411 ((_ is Lexer!6609) thiss!26199))))

(assert (=> start!384764 e!2529410))

(assert (=> start!384764 true))

(declare-fun e!2529412 () Bool)

(assert (=> start!384764 e!2529412))

(assert (=> start!384764 e!2529404))

(declare-fun e!2529403 () Bool)

(assert (=> start!384764 e!2529403))

(declare-fun e!2529409 () Bool)

(assert (=> start!384764 e!2529409))

(declare-fun e!2529400 () Bool)

(assert (=> start!384764 e!2529400))

(declare-fun b!4075250 () Bool)

(declare-fun res!1664413 () Bool)

(assert (=> b!4075250 (=> (not res!1664413) (not e!2529410))))

(declare-datatypes ((List!43729 0))(
  ( (Nil!43605) (Cons!43605 (h!49025 (_ BitVec 16)) (t!337304 List!43729)) )
))
(declare-datatypes ((TokenValue!7252 0))(
  ( (FloatLiteralValue!14504 (text!51209 List!43729)) (TokenValueExt!7251 (__x!26722 Int)) (Broken!36260 (value!220753 List!43729)) (Object!7375) (End!7252) (Def!7252) (Underscore!7252) (Match!7252) (Else!7252) (Error!7252) (Case!7252) (If!7252) (Extends!7252) (Abstract!7252) (Class!7252) (Val!7252) (DelimiterValue!14504 (del!7312 List!43729)) (KeywordValue!7258 (value!220754 List!43729)) (CommentValue!14504 (value!220755 List!43729)) (WhitespaceValue!14504 (value!220756 List!43729)) (IndentationValue!7252 (value!220757 List!43729)) (String!50009) (Int32!7252) (Broken!36261 (value!220758 List!43729)) (Boolean!7253) (Unit!63150) (OperatorValue!7255 (op!7312 List!43729)) (IdentifierValue!14504 (value!220759 List!43729)) (IdentifierValue!14505 (value!220760 List!43729)) (WhitespaceValue!14505 (value!220761 List!43729)) (True!14504) (False!14504) (Broken!36262 (value!220762 List!43729)) (Broken!36263 (value!220763 List!43729)) (True!14505) (RightBrace!7252) (RightBracket!7252) (Colon!7252) (Null!7252) (Comma!7252) (LeftBracket!7252) (False!14505) (LeftBrace!7252) (ImaginaryLiteralValue!7252 (text!51210 List!43729)) (StringLiteralValue!21756 (value!220764 List!43729)) (EOFValue!7252 (value!220765 List!43729)) (IdentValue!7252 (value!220766 List!43729)) (DelimiterValue!14505 (value!220767 List!43729)) (DedentValue!7252 (value!220768 List!43729)) (NewLineValue!7252 (value!220769 List!43729)) (IntegerValue!21756 (value!220770 (_ BitVec 32)) (text!51211 List!43729)) (IntegerValue!21757 (value!220771 Int) (text!51212 List!43729)) (Times!7252) (Or!7252) (Equal!7252) (Minus!7252) (Broken!36264 (value!220772 List!43729)) (And!7252) (Div!7252) (LessEqual!7252) (Mod!7252) (Concat!19179) (Not!7252) (Plus!7252) (SpaceValue!7252 (value!220773 List!43729)) (IntegerValue!21758 (value!220774 Int) (text!51213 List!43729)) (StringLiteralValue!21757 (text!51214 List!43729)) (FloatLiteralValue!14505 (text!51215 List!43729)) (BytesLiteralValue!7252 (value!220775 List!43729)) (CommentValue!14505 (value!220776 List!43729)) (StringLiteralValue!21758 (value!220777 List!43729)) (ErrorTokenValue!7252 (msg!7313 List!43729)) )
))
(declare-datatypes ((C!24040 0))(
  ( (C!24041 (val!14130 Int)) )
))
(declare-datatypes ((Regex!11927 0))(
  ( (ElementMatch!11927 (c!703078 C!24040)) (Concat!19180 (regOne!24366 Regex!11927) (regTwo!24366 Regex!11927)) (EmptyExpr!11927) (Star!11927 (reg!12256 Regex!11927)) (EmptyLang!11927) (Union!11927 (regOne!24367 Regex!11927) (regTwo!24367 Regex!11927)) )
))
(declare-datatypes ((String!50010 0))(
  ( (String!50011 (value!220778 String)) )
))
(declare-datatypes ((List!43730 0))(
  ( (Nil!43606) (Cons!43606 (h!49026 C!24040) (t!337305 List!43730)) )
))
(declare-datatypes ((IArray!26471 0))(
  ( (IArray!26472 (innerList!13293 List!43730)) )
))
(declare-datatypes ((Conc!13233 0))(
  ( (Node!13233 (left!32778 Conc!13233) (right!33108 Conc!13233) (csize!26696 Int) (cheight!13444 Int)) (Leaf!20459 (xs!16539 IArray!26471) (csize!26697 Int)) (Empty!13233) )
))
(declare-datatypes ((BalanceConc!26060 0))(
  ( (BalanceConc!26061 (c!703079 Conc!13233)) )
))
(declare-datatypes ((TokenValueInjection!13932 0))(
  ( (TokenValueInjection!13933 (toValue!9586 Int) (toChars!9445 Int)) )
))
(declare-datatypes ((Rule!13844 0))(
  ( (Rule!13845 (regex!7022 Regex!11927) (tag!7882 String!50010) (isSeparator!7022 Bool) (transformation!7022 TokenValueInjection!13932)) )
))
(declare-datatypes ((List!43731 0))(
  ( (Nil!43607) (Cons!43607 (h!49027 Rule!13844) (t!337306 List!43731)) )
))
(declare-fun rules!3870 () List!43731)

(declare-fun rulesInvariant!5954 (LexerInterface!6611 List!43731) Bool)

(assert (=> b!4075250 (= res!1664413 (rulesInvariant!5954 thiss!26199 rules!3870))))

(declare-fun e!2529408 () Bool)

(assert (=> b!4075251 (= e!2529408 (and tp!1233602 tp!1233593))))

(declare-fun b!4075252 () Bool)

(declare-fun tp_is_empty!20857 () Bool)

(declare-fun tp!1233595 () Bool)

(assert (=> b!4075252 (= e!2529409 (and tp_is_empty!20857 tp!1233595))))

(declare-fun b!4075253 () Bool)

(declare-fun tp!1233594 () Bool)

(declare-fun inv!58255 (String!50010) Bool)

(declare-fun inv!58257 (TokenValueInjection!13932) Bool)

(assert (=> b!4075253 (= e!2529405 (and tp!1233594 (inv!58255 (tag!7882 (h!49027 rules!3870))) (inv!58257 (transformation!7022 (h!49027 rules!3870))) e!2529408))))

(declare-fun b!4075254 () Bool)

(declare-fun res!1664414 () Bool)

(assert (=> b!4075254 (=> (not res!1664414) (not e!2529410))))

(declare-fun p!2988 () List!43730)

(declare-fun isEmpty!26036 (List!43730) Bool)

(assert (=> b!4075254 (= res!1664414 (not (isEmpty!26036 p!2988)))))

(declare-fun b!4075255 () Bool)

(declare-fun res!1664409 () Bool)

(declare-fun e!2529411 () Bool)

(assert (=> b!4075255 (=> res!1664409 e!2529411)))

(declare-fun r!4213 () Rule!13844)

(assert (=> b!4075255 (= res!1664409 (or (and ((_ is Cons!43607) rules!3870) (= (h!49027 rules!3870) r!4213)) (not ((_ is Cons!43607) rules!3870)) (= (h!49027 rules!3870) r!4213)))))

(declare-fun b!4075256 () Bool)

(declare-fun tp!1233596 () Bool)

(assert (=> b!4075256 (= e!2529400 (and tp!1233596 (inv!58255 (tag!7882 r!4213)) (inv!58257 (transformation!7022 r!4213)) e!2529402))))

(declare-fun b!4075257 () Bool)

(declare-fun tp!1233598 () Bool)

(assert (=> b!4075257 (= e!2529403 (and tp_is_empty!20857 tp!1233598))))

(declare-fun b!4075258 () Bool)

(declare-fun res!1664410 () Bool)

(assert (=> b!4075258 (=> (not res!1664410) (not e!2529410))))

(declare-fun isEmpty!26037 (List!43731) Bool)

(assert (=> b!4075258 (= res!1664410 (not (isEmpty!26037 rules!3870)))))

(declare-fun b!4075259 () Bool)

(declare-fun tp!1233601 () Bool)

(assert (=> b!4075259 (= e!2529412 (and tp_is_empty!20857 tp!1233601))))

(declare-fun b!4075260 () Bool)

(assert (=> b!4075260 (= e!2529411 true)))

(declare-fun lt!1458444 () Bool)

(assert (=> b!4075260 (= lt!1458444 (rulesInvariant!5954 thiss!26199 (Cons!43607 (h!49027 rules!3870) (t!337306 rules!3870))))))

(declare-fun b!4075261 () Bool)

(declare-fun res!1664408 () Bool)

(assert (=> b!4075261 (=> (not res!1664408) (not e!2529410))))

(declare-fun contains!8689 (List!43731 Rule!13844) Bool)

(assert (=> b!4075261 (= res!1664408 (contains!8689 rules!3870 r!4213))))

(declare-fun b!4075262 () Bool)

(declare-fun e!2529406 () Bool)

(assert (=> b!4075262 (= e!2529406 (not e!2529411))))

(declare-fun res!1664412 () Bool)

(assert (=> b!4075262 (=> res!1664412 e!2529411)))

(declare-fun matchR!5872 (Regex!11927 List!43730) Bool)

(assert (=> b!4075262 (= res!1664412 (not (matchR!5872 (regex!7022 r!4213) p!2988)))))

(declare-fun ruleValid!2946 (LexerInterface!6611 Rule!13844) Bool)

(assert (=> b!4075262 (ruleValid!2946 thiss!26199 r!4213)))

(declare-datatypes ((Unit!63151 0))(
  ( (Unit!63152) )
))
(declare-fun lt!1458442 () Unit!63151)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2014 (LexerInterface!6611 Rule!13844 List!43731) Unit!63151)

(assert (=> b!4075262 (= lt!1458442 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2014 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4075263 () Bool)

(assert (=> b!4075263 (= e!2529410 e!2529406)))

(declare-fun res!1664406 () Bool)

(assert (=> b!4075263 (=> (not res!1664406) (not e!2529406))))

(declare-fun suffix!1518 () List!43730)

(declare-fun input!3411 () List!43730)

(declare-fun lt!1458443 () BalanceConc!26060)

(declare-datatypes ((Token!13170 0))(
  ( (Token!13171 (value!220779 TokenValue!7252) (rule!10126 Rule!13844) (size!32575 Int) (originalCharacters!7616 List!43730)) )
))
(declare-datatypes ((tuple2!42586 0))(
  ( (tuple2!42587 (_1!24427 Token!13170) (_2!24427 List!43730)) )
))
(declare-datatypes ((Option!9430 0))(
  ( (None!9429) (Some!9429 (v!39873 tuple2!42586)) )
))
(declare-fun maxPrefix!3903 (LexerInterface!6611 List!43731 List!43730) Option!9430)

(declare-fun apply!10205 (TokenValueInjection!13932 BalanceConc!26060) TokenValue!7252)

(declare-fun size!32576 (List!43730) Int)

(assert (=> b!4075263 (= res!1664406 (= (maxPrefix!3903 thiss!26199 rules!3870 input!3411) (Some!9429 (tuple2!42587 (Token!13171 (apply!10205 (transformation!7022 r!4213) lt!1458443) r!4213 (size!32576 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1458445 () Unit!63151)

(declare-fun lemmaSemiInverse!1989 (TokenValueInjection!13932 BalanceConc!26060) Unit!63151)

(assert (=> b!4075263 (= lt!1458445 (lemmaSemiInverse!1989 (transformation!7022 r!4213) lt!1458443))))

(declare-fun seqFromList!5239 (List!43730) BalanceConc!26060)

(assert (=> b!4075263 (= lt!1458443 (seqFromList!5239 p!2988))))

(declare-fun b!4075264 () Bool)

(declare-fun res!1664407 () Bool)

(assert (=> b!4075264 (=> (not res!1664407) (not e!2529410))))

(declare-fun ++!11428 (List!43730 List!43730) List!43730)

(assert (=> b!4075264 (= res!1664407 (= input!3411 (++!11428 p!2988 suffix!1518)))))

(assert (= (and start!384764 res!1664411) b!4075258))

(assert (= (and b!4075258 res!1664410) b!4075250))

(assert (= (and b!4075250 res!1664413) b!4075261))

(assert (= (and b!4075261 res!1664408) b!4075264))

(assert (= (and b!4075264 res!1664407) b!4075254))

(assert (= (and b!4075254 res!1664414) b!4075263))

(assert (= (and b!4075263 res!1664406) b!4075262))

(assert (= (and b!4075262 (not res!1664412)) b!4075255))

(assert (= (and b!4075255 (not res!1664409)) b!4075260))

(assert (= (and start!384764 ((_ is Cons!43606) suffix!1518)) b!4075259))

(assert (= b!4075253 b!4075251))

(assert (= b!4075249 b!4075253))

(assert (= (and start!384764 ((_ is Cons!43607) rules!3870)) b!4075249))

(assert (= (and start!384764 ((_ is Cons!43606) p!2988)) b!4075257))

(assert (= (and start!384764 ((_ is Cons!43606) input!3411)) b!4075252))

(assert (= b!4075256 b!4075248))

(assert (= start!384764 b!4075256))

(declare-fun m!4683741 () Bool)

(assert (=> b!4075254 m!4683741))

(declare-fun m!4683743 () Bool)

(assert (=> b!4075260 m!4683743))

(declare-fun m!4683745 () Bool)

(assert (=> b!4075262 m!4683745))

(declare-fun m!4683747 () Bool)

(assert (=> b!4075262 m!4683747))

(declare-fun m!4683749 () Bool)

(assert (=> b!4075262 m!4683749))

(declare-fun m!4683751 () Bool)

(assert (=> b!4075256 m!4683751))

(declare-fun m!4683753 () Bool)

(assert (=> b!4075256 m!4683753))

(declare-fun m!4683755 () Bool)

(assert (=> b!4075263 m!4683755))

(declare-fun m!4683757 () Bool)

(assert (=> b!4075263 m!4683757))

(declare-fun m!4683759 () Bool)

(assert (=> b!4075263 m!4683759))

(declare-fun m!4683761 () Bool)

(assert (=> b!4075263 m!4683761))

(declare-fun m!4683763 () Bool)

(assert (=> b!4075263 m!4683763))

(declare-fun m!4683765 () Bool)

(assert (=> b!4075261 m!4683765))

(declare-fun m!4683767 () Bool)

(assert (=> b!4075264 m!4683767))

(declare-fun m!4683769 () Bool)

(assert (=> b!4075250 m!4683769))

(declare-fun m!4683771 () Bool)

(assert (=> b!4075258 m!4683771))

(declare-fun m!4683773 () Bool)

(assert (=> b!4075253 m!4683773))

(declare-fun m!4683775 () Bool)

(assert (=> b!4075253 m!4683775))

(check-sat (not b!4075260) (not b!4075259) (not b!4075258) (not b!4075261) (not b_next!114265) b_and!313283 (not b!4075262) (not b!4075263) (not b!4075254) (not b_next!114267) (not b!4075253) (not b!4075264) tp_is_empty!20857 (not b!4075257) (not b_next!114269) b_and!313289 b_and!313287 (not b!4075250) (not b!4075256) (not b!4075252) b_and!313285 (not b!4075249) (not b_next!114271))
(check-sat (not b_next!114267) (not b_next!114269) b_and!313285 (not b_next!114265) b_and!313283 (not b_next!114271) b_and!313289 b_and!313287)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373420 () Bool)

(assert start!373420)

(declare-fun b!3968832 () Bool)

(declare-fun b_free!109833 () Bool)

(declare-fun b_next!110537 () Bool)

(assert (=> b!3968832 (= b_free!109833 (not b_next!110537))))

(declare-fun tp!1209716 () Bool)

(declare-fun b_and!305047 () Bool)

(assert (=> b!3968832 (= tp!1209716 b_and!305047)))

(declare-fun b_free!109835 () Bool)

(declare-fun b_next!110539 () Bool)

(assert (=> b!3968832 (= b_free!109835 (not b_next!110539))))

(declare-fun tp!1209726 () Bool)

(declare-fun b_and!305049 () Bool)

(assert (=> b!3968832 (= tp!1209726 b_and!305049)))

(declare-fun b!3968827 () Bool)

(declare-fun b_free!109837 () Bool)

(declare-fun b_next!110541 () Bool)

(assert (=> b!3968827 (= b_free!109837 (not b_next!110541))))

(declare-fun tp!1209723 () Bool)

(declare-fun b_and!305051 () Bool)

(assert (=> b!3968827 (= tp!1209723 b_and!305051)))

(declare-fun b_free!109839 () Bool)

(declare-fun b_next!110543 () Bool)

(assert (=> b!3968827 (= b_free!109839 (not b_next!110543))))

(declare-fun tp!1209725 () Bool)

(declare-fun b_and!305053 () Bool)

(assert (=> b!3968827 (= tp!1209725 b_and!305053)))

(declare-fun b!3968826 () Bool)

(declare-fun e!2458261 () Bool)

(declare-fun tp_is_empty!20077 () Bool)

(declare-fun tp!1209717 () Bool)

(assert (=> b!3968826 (= e!2458261 (and tp_is_empty!20077 tp!1209717))))

(declare-fun e!2458264 () Bool)

(assert (=> b!3968827 (= e!2458264 (and tp!1209723 tp!1209725))))

(declare-fun b!3968828 () Bool)

(declare-fun e!2458270 () Bool)

(declare-fun tp!1209721 () Bool)

(assert (=> b!3968828 (= e!2458270 (and tp_is_empty!20077 tp!1209721))))

(declare-fun b!3968829 () Bool)

(declare-fun e!2458265 () Bool)

(declare-fun tp!1209722 () Bool)

(assert (=> b!3968829 (= e!2458265 (and tp_is_empty!20077 tp!1209722))))

(declare-fun b!3968830 () Bool)

(declare-fun e!2458272 () Bool)

(declare-datatypes ((LexerInterface!6237 0))(
  ( (LexerInterfaceExt!6234 (__x!25973 Int)) (Lexer!6235) )
))
(declare-fun thiss!21717 () LexerInterface!6237)

(declare-datatypes ((C!23292 0))(
  ( (C!23293 (val!13740 Int)) )
))
(declare-datatypes ((List!42448 0))(
  ( (Nil!42324) (Cons!42324 (h!47744 C!23292) (t!330785 List!42448)) )
))
(declare-datatypes ((IArray!25723 0))(
  ( (IArray!25724 (innerList!12919 List!42448)) )
))
(declare-datatypes ((Conc!12859 0))(
  ( (Node!12859 (left!32069 Conc!12859) (right!32399 Conc!12859) (csize!25948 Int) (cheight!13070 Int)) (Leaf!19890 (xs!16165 IArray!25723) (csize!25949 Int)) (Empty!12859) )
))
(declare-datatypes ((BalanceConc!25312 0))(
  ( (BalanceConc!25313 (c!688544 Conc!12859)) )
))
(declare-datatypes ((List!42449 0))(
  ( (Nil!42325) (Cons!42325 (h!47745 (_ BitVec 16)) (t!330786 List!42449)) )
))
(declare-datatypes ((TokenValue!6878 0))(
  ( (FloatLiteralValue!13756 (text!48591 List!42449)) (TokenValueExt!6877 (__x!25974 Int)) (Broken!34390 (value!210076 List!42449)) (Object!7001) (End!6878) (Def!6878) (Underscore!6878) (Match!6878) (Else!6878) (Error!6878) (Case!6878) (If!6878) (Extends!6878) (Abstract!6878) (Class!6878) (Val!6878) (DelimiterValue!13756 (del!6938 List!42449)) (KeywordValue!6884 (value!210077 List!42449)) (CommentValue!13756 (value!210078 List!42449)) (WhitespaceValue!13756 (value!210079 List!42449)) (IndentationValue!6878 (value!210080 List!42449)) (String!48107) (Int32!6878) (Broken!34391 (value!210081 List!42449)) (Boolean!6879) (Unit!60987) (OperatorValue!6881 (op!6938 List!42449)) (IdentifierValue!13756 (value!210082 List!42449)) (IdentifierValue!13757 (value!210083 List!42449)) (WhitespaceValue!13757 (value!210084 List!42449)) (True!13756) (False!13756) (Broken!34392 (value!210085 List!42449)) (Broken!34393 (value!210086 List!42449)) (True!13757) (RightBrace!6878) (RightBracket!6878) (Colon!6878) (Null!6878) (Comma!6878) (LeftBracket!6878) (False!13757) (LeftBrace!6878) (ImaginaryLiteralValue!6878 (text!48592 List!42449)) (StringLiteralValue!20634 (value!210087 List!42449)) (EOFValue!6878 (value!210088 List!42449)) (IdentValue!6878 (value!210089 List!42449)) (DelimiterValue!13757 (value!210090 List!42449)) (DedentValue!6878 (value!210091 List!42449)) (NewLineValue!6878 (value!210092 List!42449)) (IntegerValue!20634 (value!210093 (_ BitVec 32)) (text!48593 List!42449)) (IntegerValue!20635 (value!210094 Int) (text!48594 List!42449)) (Times!6878) (Or!6878) (Equal!6878) (Minus!6878) (Broken!34394 (value!210095 List!42449)) (And!6878) (Div!6878) (LessEqual!6878) (Mod!6878) (Concat!18431) (Not!6878) (Plus!6878) (SpaceValue!6878 (value!210096 List!42449)) (IntegerValue!20636 (value!210097 Int) (text!48595 List!42449)) (StringLiteralValue!20635 (text!48596 List!42449)) (FloatLiteralValue!13757 (text!48597 List!42449)) (BytesLiteralValue!6878 (value!210098 List!42449)) (CommentValue!13757 (value!210099 List!42449)) (StringLiteralValue!20636 (value!210100 List!42449)) (ErrorTokenValue!6878 (msg!6939 List!42449)) )
))
(declare-datatypes ((Regex!11553 0))(
  ( (ElementMatch!11553 (c!688545 C!23292)) (Concat!18432 (regOne!23618 Regex!11553) (regTwo!23618 Regex!11553)) (EmptyExpr!11553) (Star!11553 (reg!11882 Regex!11553)) (EmptyLang!11553) (Union!11553 (regOne!23619 Regex!11553) (regTwo!23619 Regex!11553)) )
))
(declare-datatypes ((String!48108 0))(
  ( (String!48109 (value!210101 String)) )
))
(declare-datatypes ((TokenValueInjection!13184 0))(
  ( (TokenValueInjection!13185 (toValue!9132 Int) (toChars!8991 Int)) )
))
(declare-datatypes ((Rule!13096 0))(
  ( (Rule!13097 (regex!6648 Regex!11553) (tag!7508 String!48108) (isSeparator!6648 Bool) (transformation!6648 TokenValueInjection!13184)) )
))
(declare-datatypes ((List!42450 0))(
  ( (Nil!42326) (Cons!42326 (h!47746 Rule!13096) (t!330787 List!42450)) )
))
(declare-fun rules!2999 () List!42450)

(declare-fun rulesValidInductive!2410 (LexerInterface!6237 List!42450) Bool)

(assert (=> b!3968830 (= e!2458272 (not (rulesValidInductive!2410 thiss!21717 rules!2999)))))

(declare-fun lt!1390185 () List!42448)

(declare-fun prefix!494 () List!42448)

(declare-fun suffix!1299 () List!42448)

(declare-fun ++!11050 (List!42448 List!42448) List!42448)

(assert (=> b!3968830 (= lt!1390185 (++!11050 prefix!494 suffix!1299))))

(declare-datatypes ((Token!12434 0))(
  ( (Token!12435 (value!210102 TokenValue!6878) (rule!9636 Rule!13096) (size!31676 Int) (originalCharacters!7248 List!42448)) )
))
(declare-fun token!484 () Token!12434)

(declare-fun b!3968831 () Bool)

(declare-fun e!2458263 () Bool)

(declare-fun e!2458266 () Bool)

(declare-fun tp!1209719 () Bool)

(declare-fun inv!21 (TokenValue!6878) Bool)

(assert (=> b!3968831 (= e!2458266 (and (inv!21 (value!210102 token!484)) e!2458263 tp!1209719))))

(declare-fun e!2458273 () Bool)

(assert (=> b!3968832 (= e!2458273 (and tp!1209716 tp!1209726))))

(declare-fun b!3968833 () Bool)

(declare-fun res!1606511 () Bool)

(declare-fun e!2458271 () Bool)

(assert (=> b!3968833 (=> (not res!1606511) (not e!2458271))))

(declare-fun rulesInvariant!5580 (LexerInterface!6237 List!42450) Bool)

(assert (=> b!3968833 (= res!1606511 (rulesInvariant!5580 thiss!21717 rules!2999))))

(declare-fun b!3968834 () Bool)

(declare-fun res!1606512 () Bool)

(assert (=> b!3968834 (=> (not res!1606512) (not e!2458271))))

(declare-fun isEmpty!25330 (List!42450) Bool)

(assert (=> b!3968834 (= res!1606512 (not (isEmpty!25330 rules!2999)))))

(declare-fun b!3968835 () Bool)

(declare-fun res!1606510 () Bool)

(assert (=> b!3968835 (=> (not res!1606510) (not e!2458271))))

(declare-fun newSuffix!27 () List!42448)

(declare-fun isPrefix!3735 (List!42448 List!42448) Bool)

(assert (=> b!3968835 (= res!1606510 (isPrefix!3735 newSuffix!27 suffix!1299))))

(declare-fun b!3968836 () Bool)

(declare-fun res!1606515 () Bool)

(assert (=> b!3968836 (=> (not res!1606515) (not e!2458272))))

(declare-fun lt!1390184 () List!42448)

(declare-fun newSuffixResult!27 () List!42448)

(assert (=> b!3968836 (= res!1606515 (= (++!11050 lt!1390184 newSuffixResult!27) (++!11050 prefix!494 newSuffix!27)))))

(declare-fun res!1606514 () Bool)

(assert (=> start!373420 (=> (not res!1606514) (not e!2458271))))

(get-info :version)

(assert (=> start!373420 (= res!1606514 ((_ is Lexer!6235) thiss!21717))))

(assert (=> start!373420 e!2458271))

(assert (=> start!373420 e!2458265))

(declare-fun inv!56558 (Token!12434) Bool)

(assert (=> start!373420 (and (inv!56558 token!484) e!2458266)))

(assert (=> start!373420 e!2458261))

(assert (=> start!373420 e!2458270))

(assert (=> start!373420 true))

(declare-fun e!2458269 () Bool)

(assert (=> start!373420 e!2458269))

(declare-fun e!2458262 () Bool)

(assert (=> start!373420 e!2458262))

(declare-fun e!2458268 () Bool)

(declare-fun tp!1209724 () Bool)

(declare-fun b!3968837 () Bool)

(declare-fun inv!56555 (String!48108) Bool)

(declare-fun inv!56559 (TokenValueInjection!13184) Bool)

(assert (=> b!3968837 (= e!2458268 (and tp!1209724 (inv!56555 (tag!7508 (h!47746 rules!2999))) (inv!56559 (transformation!6648 (h!47746 rules!2999))) e!2458264))))

(declare-fun tp!1209718 () Bool)

(declare-fun b!3968838 () Bool)

(assert (=> b!3968838 (= e!2458263 (and tp!1209718 (inv!56555 (tag!7508 (rule!9636 token!484))) (inv!56559 (transformation!6648 (rule!9636 token!484))) e!2458273))))

(declare-fun b!3968839 () Bool)

(declare-fun tp!1209720 () Bool)

(assert (=> b!3968839 (= e!2458262 (and tp_is_empty!20077 tp!1209720))))

(declare-fun b!3968840 () Bool)

(declare-fun res!1606513 () Bool)

(assert (=> b!3968840 (=> (not res!1606513) (not e!2458271))))

(declare-fun size!31677 (List!42448) Int)

(assert (=> b!3968840 (= res!1606513 (>= (size!31677 suffix!1299) (size!31677 newSuffix!27)))))

(declare-fun b!3968841 () Bool)

(declare-fun tp!1209715 () Bool)

(assert (=> b!3968841 (= e!2458269 (and e!2458268 tp!1209715))))

(declare-fun b!3968842 () Bool)

(assert (=> b!3968842 (= e!2458271 e!2458272)))

(declare-fun res!1606516 () Bool)

(assert (=> b!3968842 (=> (not res!1606516) (not e!2458272))))

(assert (=> b!3968842 (= res!1606516 (>= (size!31677 prefix!494) (size!31677 lt!1390184)))))

(declare-fun list!15702 (BalanceConc!25312) List!42448)

(declare-fun charsOf!4464 (Token!12434) BalanceConc!25312)

(assert (=> b!3968842 (= lt!1390184 (list!15702 (charsOf!4464 token!484)))))

(assert (= (and start!373420 res!1606514) b!3968834))

(assert (= (and b!3968834 res!1606512) b!3968833))

(assert (= (and b!3968833 res!1606511) b!3968840))

(assert (= (and b!3968840 res!1606513) b!3968835))

(assert (= (and b!3968835 res!1606510) b!3968842))

(assert (= (and b!3968842 res!1606516) b!3968836))

(assert (= (and b!3968836 res!1606515) b!3968830))

(assert (= (and start!373420 ((_ is Cons!42324) prefix!494)) b!3968829))

(assert (= b!3968838 b!3968832))

(assert (= b!3968831 b!3968838))

(assert (= start!373420 b!3968831))

(assert (= (and start!373420 ((_ is Cons!42324) suffix!1299)) b!3968826))

(assert (= (and start!373420 ((_ is Cons!42324) newSuffix!27)) b!3968828))

(assert (= b!3968837 b!3968827))

(assert (= b!3968841 b!3968837))

(assert (= (and start!373420 ((_ is Cons!42326) rules!2999)) b!3968841))

(assert (= (and start!373420 ((_ is Cons!42324) newSuffixResult!27)) b!3968839))

(declare-fun m!4539279 () Bool)

(assert (=> b!3968835 m!4539279))

(declare-fun m!4539281 () Bool)

(assert (=> b!3968837 m!4539281))

(declare-fun m!4539283 () Bool)

(assert (=> b!3968837 m!4539283))

(declare-fun m!4539285 () Bool)

(assert (=> b!3968842 m!4539285))

(declare-fun m!4539287 () Bool)

(assert (=> b!3968842 m!4539287))

(declare-fun m!4539289 () Bool)

(assert (=> b!3968842 m!4539289))

(assert (=> b!3968842 m!4539289))

(declare-fun m!4539291 () Bool)

(assert (=> b!3968842 m!4539291))

(declare-fun m!4539293 () Bool)

(assert (=> b!3968830 m!4539293))

(declare-fun m!4539295 () Bool)

(assert (=> b!3968830 m!4539295))

(declare-fun m!4539297 () Bool)

(assert (=> b!3968831 m!4539297))

(declare-fun m!4539299 () Bool)

(assert (=> start!373420 m!4539299))

(declare-fun m!4539301 () Bool)

(assert (=> b!3968834 m!4539301))

(declare-fun m!4539303 () Bool)

(assert (=> b!3968838 m!4539303))

(declare-fun m!4539305 () Bool)

(assert (=> b!3968838 m!4539305))

(declare-fun m!4539307 () Bool)

(assert (=> b!3968833 m!4539307))

(declare-fun m!4539309 () Bool)

(assert (=> b!3968836 m!4539309))

(declare-fun m!4539311 () Bool)

(assert (=> b!3968836 m!4539311))

(declare-fun m!4539313 () Bool)

(assert (=> b!3968840 m!4539313))

(declare-fun m!4539315 () Bool)

(assert (=> b!3968840 m!4539315))

(check-sat (not b!3968831) (not b_next!110539) (not b_next!110537) b_and!305053 tp_is_empty!20077 (not b_next!110543) (not start!373420) (not b!3968835) (not b!3968837) (not b!3968828) b_and!305047 (not b!3968840) (not b!3968834) (not b!3968826) (not b!3968839) (not b!3968838) (not b!3968836) (not b!3968829) (not b_next!110541) b_and!305049 (not b!3968841) (not b!3968842) (not b!3968830) (not b!3968833) b_and!305051)
(check-sat (not b_next!110539) (not b_next!110537) b_and!305047 b_and!305053 (not b_next!110543) (not b_next!110541) b_and!305049 b_and!305051)
(get-model)

(declare-fun d!1175859 () Bool)

(assert (=> d!1175859 (= (isEmpty!25330 rules!2999) ((_ is Nil!42326) rules!2999))))

(assert (=> b!3968834 d!1175859))

(declare-fun d!1175861 () Bool)

(declare-fun res!1606523 () Bool)

(declare-fun e!2458277 () Bool)

(assert (=> d!1175861 (=> (not res!1606523) (not e!2458277))))

(declare-fun rulesValid!2596 (LexerInterface!6237 List!42450) Bool)

(assert (=> d!1175861 (= res!1606523 (rulesValid!2596 thiss!21717 rules!2999))))

(assert (=> d!1175861 (= (rulesInvariant!5580 thiss!21717 rules!2999) e!2458277)))

(declare-fun b!3968845 () Bool)

(declare-datatypes ((List!42451 0))(
  ( (Nil!42327) (Cons!42327 (h!47747 String!48108) (t!330800 List!42451)) )
))
(declare-fun noDuplicateTag!2597 (LexerInterface!6237 List!42450 List!42451) Bool)

(assert (=> b!3968845 (= e!2458277 (noDuplicateTag!2597 thiss!21717 rules!2999 Nil!42327))))

(assert (= (and d!1175861 res!1606523) b!3968845))

(declare-fun m!4539317 () Bool)

(assert (=> d!1175861 m!4539317))

(declare-fun m!4539319 () Bool)

(assert (=> b!3968845 m!4539319))

(assert (=> b!3968833 d!1175861))

(declare-fun b!3968868 () Bool)

(declare-fun e!2458292 () Bool)

(declare-fun inv!17 (TokenValue!6878) Bool)

(assert (=> b!3968868 (= e!2458292 (inv!17 (value!210102 token!484)))))

(declare-fun d!1175865 () Bool)

(declare-fun c!688557 () Bool)

(assert (=> d!1175865 (= c!688557 ((_ is IntegerValue!20634) (value!210102 token!484)))))

(declare-fun e!2458290 () Bool)

(assert (=> d!1175865 (= (inv!21 (value!210102 token!484)) e!2458290)))

(declare-fun b!3968869 () Bool)

(declare-fun inv!16 (TokenValue!6878) Bool)

(assert (=> b!3968869 (= e!2458290 (inv!16 (value!210102 token!484)))))

(declare-fun b!3968870 () Bool)

(declare-fun res!1606526 () Bool)

(declare-fun e!2458291 () Bool)

(assert (=> b!3968870 (=> res!1606526 e!2458291)))

(assert (=> b!3968870 (= res!1606526 (not ((_ is IntegerValue!20636) (value!210102 token!484))))))

(assert (=> b!3968870 (= e!2458292 e!2458291)))

(declare-fun b!3968871 () Bool)

(assert (=> b!3968871 (= e!2458290 e!2458292)))

(declare-fun c!688556 () Bool)

(assert (=> b!3968871 (= c!688556 ((_ is IntegerValue!20635) (value!210102 token!484)))))

(declare-fun b!3968872 () Bool)

(declare-fun inv!15 (TokenValue!6878) Bool)

(assert (=> b!3968872 (= e!2458291 (inv!15 (value!210102 token!484)))))

(assert (= (and d!1175865 c!688557) b!3968869))

(assert (= (and d!1175865 (not c!688557)) b!3968871))

(assert (= (and b!3968871 c!688556) b!3968868))

(assert (= (and b!3968871 (not c!688556)) b!3968870))

(assert (= (and b!3968870 (not res!1606526)) b!3968872))

(declare-fun m!4539329 () Bool)

(assert (=> b!3968868 m!4539329))

(declare-fun m!4539331 () Bool)

(assert (=> b!3968869 m!4539331))

(declare-fun m!4539333 () Bool)

(assert (=> b!3968872 m!4539333))

(assert (=> b!3968831 d!1175865))

(declare-fun d!1175875 () Bool)

(declare-fun lt!1390195 () Int)

(assert (=> d!1175875 (>= lt!1390195 0)))

(declare-fun e!2458295 () Int)

(assert (=> d!1175875 (= lt!1390195 e!2458295)))

(declare-fun c!688560 () Bool)

(assert (=> d!1175875 (= c!688560 ((_ is Nil!42324) prefix!494))))

(assert (=> d!1175875 (= (size!31677 prefix!494) lt!1390195)))

(declare-fun b!3968877 () Bool)

(assert (=> b!3968877 (= e!2458295 0)))

(declare-fun b!3968878 () Bool)

(assert (=> b!3968878 (= e!2458295 (+ 1 (size!31677 (t!330785 prefix!494))))))

(assert (= (and d!1175875 c!688560) b!3968877))

(assert (= (and d!1175875 (not c!688560)) b!3968878))

(declare-fun m!4539337 () Bool)

(assert (=> b!3968878 m!4539337))

(assert (=> b!3968842 d!1175875))

(declare-fun d!1175879 () Bool)

(declare-fun lt!1390197 () Int)

(assert (=> d!1175879 (>= lt!1390197 0)))

(declare-fun e!2458296 () Int)

(assert (=> d!1175879 (= lt!1390197 e!2458296)))

(declare-fun c!688561 () Bool)

(assert (=> d!1175879 (= c!688561 ((_ is Nil!42324) lt!1390184))))

(assert (=> d!1175879 (= (size!31677 lt!1390184) lt!1390197)))

(declare-fun b!3968879 () Bool)

(assert (=> b!3968879 (= e!2458296 0)))

(declare-fun b!3968880 () Bool)

(assert (=> b!3968880 (= e!2458296 (+ 1 (size!31677 (t!330785 lt!1390184))))))

(assert (= (and d!1175879 c!688561) b!3968879))

(assert (= (and d!1175879 (not c!688561)) b!3968880))

(declare-fun m!4539339 () Bool)

(assert (=> b!3968880 m!4539339))

(assert (=> b!3968842 d!1175879))

(declare-fun d!1175881 () Bool)

(declare-fun list!15704 (Conc!12859) List!42448)

(assert (=> d!1175881 (= (list!15702 (charsOf!4464 token!484)) (list!15704 (c!688544 (charsOf!4464 token!484))))))

(declare-fun bs!587544 () Bool)

(assert (= bs!587544 d!1175881))

(declare-fun m!4539341 () Bool)

(assert (=> bs!587544 m!4539341))

(assert (=> b!3968842 d!1175881))

(declare-fun d!1175883 () Bool)

(declare-fun lt!1390201 () BalanceConc!25312)

(assert (=> d!1175883 (= (list!15702 lt!1390201) (originalCharacters!7248 token!484))))

(declare-fun dynLambda!18057 (Int TokenValue!6878) BalanceConc!25312)

(assert (=> d!1175883 (= lt!1390201 (dynLambda!18057 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (value!210102 token!484)))))

(assert (=> d!1175883 (= (charsOf!4464 token!484) lt!1390201)))

(declare-fun b_lambda!116025 () Bool)

(assert (=> (not b_lambda!116025) (not d!1175883)))

(declare-fun t!330793 () Bool)

(declare-fun tb!239605 () Bool)

(assert (=> (and b!3968832 (= (toChars!8991 (transformation!6648 (rule!9636 token!484))) (toChars!8991 (transformation!6648 (rule!9636 token!484)))) t!330793) tb!239605))

(declare-fun b!3968890 () Bool)

(declare-fun e!2458302 () Bool)

(declare-fun tp!1209732 () Bool)

(declare-fun inv!56562 (Conc!12859) Bool)

(assert (=> b!3968890 (= e!2458302 (and (inv!56562 (c!688544 (dynLambda!18057 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (value!210102 token!484)))) tp!1209732))))

(declare-fun result!290112 () Bool)

(declare-fun inv!56563 (BalanceConc!25312) Bool)

(assert (=> tb!239605 (= result!290112 (and (inv!56563 (dynLambda!18057 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (value!210102 token!484))) e!2458302))))

(assert (= tb!239605 b!3968890))

(declare-fun m!4539351 () Bool)

(assert (=> b!3968890 m!4539351))

(declare-fun m!4539353 () Bool)

(assert (=> tb!239605 m!4539353))

(assert (=> d!1175883 t!330793))

(declare-fun b_and!305059 () Bool)

(assert (= b_and!305049 (and (=> t!330793 result!290112) b_and!305059)))

(declare-fun t!330795 () Bool)

(declare-fun tb!239607 () Bool)

(assert (=> (and b!3968827 (= (toChars!8991 (transformation!6648 (h!47746 rules!2999))) (toChars!8991 (transformation!6648 (rule!9636 token!484)))) t!330795) tb!239607))

(declare-fun result!290116 () Bool)

(assert (= result!290116 result!290112))

(assert (=> d!1175883 t!330795))

(declare-fun b_and!305061 () Bool)

(assert (= b_and!305053 (and (=> t!330795 result!290116) b_and!305061)))

(declare-fun m!4539355 () Bool)

(assert (=> d!1175883 m!4539355))

(declare-fun m!4539357 () Bool)

(assert (=> d!1175883 m!4539357))

(assert (=> b!3968842 d!1175883))

(declare-fun d!1175887 () Bool)

(declare-fun res!1606534 () Bool)

(declare-fun e!2458314 () Bool)

(assert (=> d!1175887 (=> (not res!1606534) (not e!2458314))))

(declare-fun isEmpty!25332 (List!42448) Bool)

(assert (=> d!1175887 (= res!1606534 (not (isEmpty!25332 (originalCharacters!7248 token!484))))))

(assert (=> d!1175887 (= (inv!56558 token!484) e!2458314)))

(declare-fun b!3968910 () Bool)

(declare-fun res!1606535 () Bool)

(assert (=> b!3968910 (=> (not res!1606535) (not e!2458314))))

(assert (=> b!3968910 (= res!1606535 (= (originalCharacters!7248 token!484) (list!15702 (dynLambda!18057 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (value!210102 token!484)))))))

(declare-fun b!3968911 () Bool)

(assert (=> b!3968911 (= e!2458314 (= (size!31676 token!484) (size!31677 (originalCharacters!7248 token!484))))))

(assert (= (and d!1175887 res!1606534) b!3968910))

(assert (= (and b!3968910 res!1606535) b!3968911))

(declare-fun b_lambda!116027 () Bool)

(assert (=> (not b_lambda!116027) (not b!3968910)))

(assert (=> b!3968910 t!330793))

(declare-fun b_and!305063 () Bool)

(assert (= b_and!305059 (and (=> t!330793 result!290112) b_and!305063)))

(assert (=> b!3968910 t!330795))

(declare-fun b_and!305065 () Bool)

(assert (= b_and!305061 (and (=> t!330795 result!290116) b_and!305065)))

(declare-fun m!4539365 () Bool)

(assert (=> d!1175887 m!4539365))

(assert (=> b!3968910 m!4539357))

(assert (=> b!3968910 m!4539357))

(declare-fun m!4539367 () Bool)

(assert (=> b!3968910 m!4539367))

(declare-fun m!4539369 () Bool)

(assert (=> b!3968911 m!4539369))

(assert (=> start!373420 d!1175887))

(declare-fun d!1175891 () Bool)

(assert (=> d!1175891 true))

(declare-fun lt!1390215 () Bool)

(declare-fun lambda!126845 () Int)

(declare-fun forall!8331 (List!42450 Int) Bool)

(assert (=> d!1175891 (= lt!1390215 (forall!8331 rules!2999 lambda!126845))))

(declare-fun e!2458374 () Bool)

(assert (=> d!1175891 (= lt!1390215 e!2458374)))

(declare-fun res!1606582 () Bool)

(assert (=> d!1175891 (=> res!1606582 e!2458374)))

(assert (=> d!1175891 (= res!1606582 (not ((_ is Cons!42326) rules!2999)))))

(assert (=> d!1175891 (= (rulesValidInductive!2410 thiss!21717 rules!2999) lt!1390215)))

(declare-fun b!3968993 () Bool)

(declare-fun e!2458373 () Bool)

(assert (=> b!3968993 (= e!2458374 e!2458373)))

(declare-fun res!1606581 () Bool)

(assert (=> b!3968993 (=> (not res!1606581) (not e!2458373))))

(declare-fun ruleValid!2584 (LexerInterface!6237 Rule!13096) Bool)

(assert (=> b!3968993 (= res!1606581 (ruleValid!2584 thiss!21717 (h!47746 rules!2999)))))

(declare-fun b!3968994 () Bool)

(assert (=> b!3968994 (= e!2458373 (rulesValidInductive!2410 thiss!21717 (t!330787 rules!2999)))))

(assert (= (and d!1175891 (not res!1606582)) b!3968993))

(assert (= (and b!3968993 res!1606581) b!3968994))

(declare-fun m!4539439 () Bool)

(assert (=> d!1175891 m!4539439))

(declare-fun m!4539441 () Bool)

(assert (=> b!3968993 m!4539441))

(declare-fun m!4539443 () Bool)

(assert (=> b!3968994 m!4539443))

(assert (=> b!3968830 d!1175891))

(declare-fun e!2458383 () Bool)

(declare-fun lt!1390218 () List!42448)

(declare-fun b!3969022 () Bool)

(assert (=> b!3969022 (= e!2458383 (or (not (= suffix!1299 Nil!42324)) (= lt!1390218 prefix!494)))))

(declare-fun b!3969019 () Bool)

(declare-fun e!2458384 () List!42448)

(assert (=> b!3969019 (= e!2458384 suffix!1299)))

(declare-fun b!3969020 () Bool)

(assert (=> b!3969020 (= e!2458384 (Cons!42324 (h!47744 prefix!494) (++!11050 (t!330785 prefix!494) suffix!1299)))))

(declare-fun b!3969021 () Bool)

(declare-fun res!1606587 () Bool)

(assert (=> b!3969021 (=> (not res!1606587) (not e!2458383))))

(assert (=> b!3969021 (= res!1606587 (= (size!31677 lt!1390218) (+ (size!31677 prefix!494) (size!31677 suffix!1299))))))

(declare-fun d!1175915 () Bool)

(assert (=> d!1175915 e!2458383))

(declare-fun res!1606588 () Bool)

(assert (=> d!1175915 (=> (not res!1606588) (not e!2458383))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6431 (List!42448) (InoxSet C!23292))

(assert (=> d!1175915 (= res!1606588 (= (content!6431 lt!1390218) ((_ map or) (content!6431 prefix!494) (content!6431 suffix!1299))))))

(assert (=> d!1175915 (= lt!1390218 e!2458384)))

(declare-fun c!688575 () Bool)

(assert (=> d!1175915 (= c!688575 ((_ is Nil!42324) prefix!494))))

(assert (=> d!1175915 (= (++!11050 prefix!494 suffix!1299) lt!1390218)))

(assert (= (and d!1175915 c!688575) b!3969019))

(assert (= (and d!1175915 (not c!688575)) b!3969020))

(assert (= (and d!1175915 res!1606588) b!3969021))

(assert (= (and b!3969021 res!1606587) b!3969022))

(declare-fun m!4539445 () Bool)

(assert (=> b!3969020 m!4539445))

(declare-fun m!4539447 () Bool)

(assert (=> b!3969021 m!4539447))

(assert (=> b!3969021 m!4539285))

(assert (=> b!3969021 m!4539313))

(declare-fun m!4539449 () Bool)

(assert (=> d!1175915 m!4539449))

(declare-fun m!4539451 () Bool)

(assert (=> d!1175915 m!4539451))

(declare-fun m!4539453 () Bool)

(assert (=> d!1175915 m!4539453))

(assert (=> b!3968830 d!1175915))

(declare-fun d!1175917 () Bool)

(declare-fun lt!1390219 () Int)

(assert (=> d!1175917 (>= lt!1390219 0)))

(declare-fun e!2458385 () Int)

(assert (=> d!1175917 (= lt!1390219 e!2458385)))

(declare-fun c!688576 () Bool)

(assert (=> d!1175917 (= c!688576 ((_ is Nil!42324) suffix!1299))))

(assert (=> d!1175917 (= (size!31677 suffix!1299) lt!1390219)))

(declare-fun b!3969023 () Bool)

(assert (=> b!3969023 (= e!2458385 0)))

(declare-fun b!3969024 () Bool)

(assert (=> b!3969024 (= e!2458385 (+ 1 (size!31677 (t!330785 suffix!1299))))))

(assert (= (and d!1175917 c!688576) b!3969023))

(assert (= (and d!1175917 (not c!688576)) b!3969024))

(declare-fun m!4539455 () Bool)

(assert (=> b!3969024 m!4539455))

(assert (=> b!3968840 d!1175917))

(declare-fun d!1175919 () Bool)

(declare-fun lt!1390220 () Int)

(assert (=> d!1175919 (>= lt!1390220 0)))

(declare-fun e!2458386 () Int)

(assert (=> d!1175919 (= lt!1390220 e!2458386)))

(declare-fun c!688577 () Bool)

(assert (=> d!1175919 (= c!688577 ((_ is Nil!42324) newSuffix!27))))

(assert (=> d!1175919 (= (size!31677 newSuffix!27) lt!1390220)))

(declare-fun b!3969025 () Bool)

(assert (=> b!3969025 (= e!2458386 0)))

(declare-fun b!3969026 () Bool)

(assert (=> b!3969026 (= e!2458386 (+ 1 (size!31677 (t!330785 newSuffix!27))))))

(assert (= (and d!1175919 c!688577) b!3969025))

(assert (= (and d!1175919 (not c!688577)) b!3969026))

(declare-fun m!4539457 () Bool)

(assert (=> b!3969026 m!4539457))

(assert (=> b!3968840 d!1175919))

(declare-fun d!1175921 () Bool)

(assert (=> d!1175921 (= (inv!56555 (tag!7508 (rule!9636 token!484))) (= (mod (str.len (value!210101 (tag!7508 (rule!9636 token!484)))) 2) 0))))

(assert (=> b!3968838 d!1175921))

(declare-fun d!1175923 () Bool)

(declare-fun res!1606591 () Bool)

(declare-fun e!2458389 () Bool)

(assert (=> d!1175923 (=> (not res!1606591) (not e!2458389))))

(declare-fun semiInverseModEq!2863 (Int Int) Bool)

(assert (=> d!1175923 (= res!1606591 (semiInverseModEq!2863 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (toValue!9132 (transformation!6648 (rule!9636 token!484)))))))

(assert (=> d!1175923 (= (inv!56559 (transformation!6648 (rule!9636 token!484))) e!2458389)))

(declare-fun b!3969029 () Bool)

(declare-fun equivClasses!2762 (Int Int) Bool)

(assert (=> b!3969029 (= e!2458389 (equivClasses!2762 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (toValue!9132 (transformation!6648 (rule!9636 token!484)))))))

(assert (= (and d!1175923 res!1606591) b!3969029))

(declare-fun m!4539459 () Bool)

(assert (=> d!1175923 m!4539459))

(declare-fun m!4539461 () Bool)

(assert (=> b!3969029 m!4539461))

(assert (=> b!3968838 d!1175923))

(declare-fun d!1175925 () Bool)

(assert (=> d!1175925 (= (inv!56555 (tag!7508 (h!47746 rules!2999))) (= (mod (str.len (value!210101 (tag!7508 (h!47746 rules!2999)))) 2) 0))))

(assert (=> b!3968837 d!1175925))

(declare-fun d!1175927 () Bool)

(declare-fun res!1606592 () Bool)

(declare-fun e!2458390 () Bool)

(assert (=> d!1175927 (=> (not res!1606592) (not e!2458390))))

(assert (=> d!1175927 (= res!1606592 (semiInverseModEq!2863 (toChars!8991 (transformation!6648 (h!47746 rules!2999))) (toValue!9132 (transformation!6648 (h!47746 rules!2999)))))))

(assert (=> d!1175927 (= (inv!56559 (transformation!6648 (h!47746 rules!2999))) e!2458390)))

(declare-fun b!3969030 () Bool)

(assert (=> b!3969030 (= e!2458390 (equivClasses!2762 (toChars!8991 (transformation!6648 (h!47746 rules!2999))) (toValue!9132 (transformation!6648 (h!47746 rules!2999)))))))

(assert (= (and d!1175927 res!1606592) b!3969030))

(declare-fun m!4539463 () Bool)

(assert (=> d!1175927 m!4539463))

(declare-fun m!4539465 () Bool)

(assert (=> b!3969030 m!4539465))

(assert (=> b!3968837 d!1175927))

(declare-fun b!3969034 () Bool)

(declare-fun lt!1390221 () List!42448)

(declare-fun e!2458391 () Bool)

(assert (=> b!3969034 (= e!2458391 (or (not (= newSuffixResult!27 Nil!42324)) (= lt!1390221 lt!1390184)))))

(declare-fun b!3969031 () Bool)

(declare-fun e!2458392 () List!42448)

(assert (=> b!3969031 (= e!2458392 newSuffixResult!27)))

(declare-fun b!3969032 () Bool)

(assert (=> b!3969032 (= e!2458392 (Cons!42324 (h!47744 lt!1390184) (++!11050 (t!330785 lt!1390184) newSuffixResult!27)))))

(declare-fun b!3969033 () Bool)

(declare-fun res!1606593 () Bool)

(assert (=> b!3969033 (=> (not res!1606593) (not e!2458391))))

(assert (=> b!3969033 (= res!1606593 (= (size!31677 lt!1390221) (+ (size!31677 lt!1390184) (size!31677 newSuffixResult!27))))))

(declare-fun d!1175929 () Bool)

(assert (=> d!1175929 e!2458391))

(declare-fun res!1606594 () Bool)

(assert (=> d!1175929 (=> (not res!1606594) (not e!2458391))))

(assert (=> d!1175929 (= res!1606594 (= (content!6431 lt!1390221) ((_ map or) (content!6431 lt!1390184) (content!6431 newSuffixResult!27))))))

(assert (=> d!1175929 (= lt!1390221 e!2458392)))

(declare-fun c!688578 () Bool)

(assert (=> d!1175929 (= c!688578 ((_ is Nil!42324) lt!1390184))))

(assert (=> d!1175929 (= (++!11050 lt!1390184 newSuffixResult!27) lt!1390221)))

(assert (= (and d!1175929 c!688578) b!3969031))

(assert (= (and d!1175929 (not c!688578)) b!3969032))

(assert (= (and d!1175929 res!1606594) b!3969033))

(assert (= (and b!3969033 res!1606593) b!3969034))

(declare-fun m!4539467 () Bool)

(assert (=> b!3969032 m!4539467))

(declare-fun m!4539469 () Bool)

(assert (=> b!3969033 m!4539469))

(assert (=> b!3969033 m!4539287))

(declare-fun m!4539471 () Bool)

(assert (=> b!3969033 m!4539471))

(declare-fun m!4539473 () Bool)

(assert (=> d!1175929 m!4539473))

(declare-fun m!4539475 () Bool)

(assert (=> d!1175929 m!4539475))

(declare-fun m!4539477 () Bool)

(assert (=> d!1175929 m!4539477))

(assert (=> b!3968836 d!1175929))

(declare-fun b!3969038 () Bool)

(declare-fun e!2458393 () Bool)

(declare-fun lt!1390222 () List!42448)

(assert (=> b!3969038 (= e!2458393 (or (not (= newSuffix!27 Nil!42324)) (= lt!1390222 prefix!494)))))

(declare-fun b!3969035 () Bool)

(declare-fun e!2458394 () List!42448)

(assert (=> b!3969035 (= e!2458394 newSuffix!27)))

(declare-fun b!3969036 () Bool)

(assert (=> b!3969036 (= e!2458394 (Cons!42324 (h!47744 prefix!494) (++!11050 (t!330785 prefix!494) newSuffix!27)))))

(declare-fun b!3969037 () Bool)

(declare-fun res!1606595 () Bool)

(assert (=> b!3969037 (=> (not res!1606595) (not e!2458393))))

(assert (=> b!3969037 (= res!1606595 (= (size!31677 lt!1390222) (+ (size!31677 prefix!494) (size!31677 newSuffix!27))))))

(declare-fun d!1175931 () Bool)

(assert (=> d!1175931 e!2458393))

(declare-fun res!1606596 () Bool)

(assert (=> d!1175931 (=> (not res!1606596) (not e!2458393))))

(assert (=> d!1175931 (= res!1606596 (= (content!6431 lt!1390222) ((_ map or) (content!6431 prefix!494) (content!6431 newSuffix!27))))))

(assert (=> d!1175931 (= lt!1390222 e!2458394)))

(declare-fun c!688579 () Bool)

(assert (=> d!1175931 (= c!688579 ((_ is Nil!42324) prefix!494))))

(assert (=> d!1175931 (= (++!11050 prefix!494 newSuffix!27) lt!1390222)))

(assert (= (and d!1175931 c!688579) b!3969035))

(assert (= (and d!1175931 (not c!688579)) b!3969036))

(assert (= (and d!1175931 res!1606596) b!3969037))

(assert (= (and b!3969037 res!1606595) b!3969038))

(declare-fun m!4539479 () Bool)

(assert (=> b!3969036 m!4539479))

(declare-fun m!4539481 () Bool)

(assert (=> b!3969037 m!4539481))

(assert (=> b!3969037 m!4539285))

(assert (=> b!3969037 m!4539315))

(declare-fun m!4539483 () Bool)

(assert (=> d!1175931 m!4539483))

(assert (=> d!1175931 m!4539451))

(declare-fun m!4539485 () Bool)

(assert (=> d!1175931 m!4539485))

(assert (=> b!3968836 d!1175931))

(declare-fun b!3969047 () Bool)

(declare-fun e!2458403 () Bool)

(declare-fun e!2458401 () Bool)

(assert (=> b!3969047 (= e!2458403 e!2458401)))

(declare-fun res!1606605 () Bool)

(assert (=> b!3969047 (=> (not res!1606605) (not e!2458401))))

(assert (=> b!3969047 (= res!1606605 (not ((_ is Nil!42324) suffix!1299)))))

(declare-fun d!1175933 () Bool)

(declare-fun e!2458402 () Bool)

(assert (=> d!1175933 e!2458402))

(declare-fun res!1606608 () Bool)

(assert (=> d!1175933 (=> res!1606608 e!2458402)))

(declare-fun lt!1390225 () Bool)

(assert (=> d!1175933 (= res!1606608 (not lt!1390225))))

(assert (=> d!1175933 (= lt!1390225 e!2458403)))

(declare-fun res!1606607 () Bool)

(assert (=> d!1175933 (=> res!1606607 e!2458403)))

(assert (=> d!1175933 (= res!1606607 ((_ is Nil!42324) newSuffix!27))))

(assert (=> d!1175933 (= (isPrefix!3735 newSuffix!27 suffix!1299) lt!1390225)))

(declare-fun b!3969048 () Bool)

(declare-fun res!1606606 () Bool)

(assert (=> b!3969048 (=> (not res!1606606) (not e!2458401))))

(declare-fun head!8457 (List!42448) C!23292)

(assert (=> b!3969048 (= res!1606606 (= (head!8457 newSuffix!27) (head!8457 suffix!1299)))))

(declare-fun b!3969050 () Bool)

(assert (=> b!3969050 (= e!2458402 (>= (size!31677 suffix!1299) (size!31677 newSuffix!27)))))

(declare-fun b!3969049 () Bool)

(declare-fun tail!6189 (List!42448) List!42448)

(assert (=> b!3969049 (= e!2458401 (isPrefix!3735 (tail!6189 newSuffix!27) (tail!6189 suffix!1299)))))

(assert (= (and d!1175933 (not res!1606607)) b!3969047))

(assert (= (and b!3969047 res!1606605) b!3969048))

(assert (= (and b!3969048 res!1606606) b!3969049))

(assert (= (and d!1175933 (not res!1606608)) b!3969050))

(declare-fun m!4539487 () Bool)

(assert (=> b!3969048 m!4539487))

(declare-fun m!4539489 () Bool)

(assert (=> b!3969048 m!4539489))

(assert (=> b!3969050 m!4539313))

(assert (=> b!3969050 m!4539315))

(declare-fun m!4539491 () Bool)

(assert (=> b!3969049 m!4539491))

(declare-fun m!4539493 () Bool)

(assert (=> b!3969049 m!4539493))

(assert (=> b!3969049 m!4539491))

(assert (=> b!3969049 m!4539493))

(declare-fun m!4539495 () Bool)

(assert (=> b!3969049 m!4539495))

(assert (=> b!3968835 d!1175933))

(declare-fun b!3969055 () Bool)

(declare-fun e!2458406 () Bool)

(declare-fun tp!1209774 () Bool)

(assert (=> b!3969055 (= e!2458406 (and tp_is_empty!20077 tp!1209774))))

(assert (=> b!3968829 (= tp!1209722 e!2458406)))

(assert (= (and b!3968829 ((_ is Cons!42324) (t!330785 prefix!494))) b!3969055))

(declare-fun b!3969056 () Bool)

(declare-fun e!2458407 () Bool)

(declare-fun tp!1209775 () Bool)

(assert (=> b!3969056 (= e!2458407 (and tp_is_empty!20077 tp!1209775))))

(assert (=> b!3968839 (= tp!1209720 e!2458407)))

(assert (= (and b!3968839 ((_ is Cons!42324) (t!330785 newSuffixResult!27))) b!3969056))

(declare-fun b!3969057 () Bool)

(declare-fun e!2458408 () Bool)

(declare-fun tp!1209776 () Bool)

(assert (=> b!3969057 (= e!2458408 (and tp_is_empty!20077 tp!1209776))))

(assert (=> b!3968828 (= tp!1209721 e!2458408)))

(assert (= (and b!3968828 ((_ is Cons!42324) (t!330785 newSuffix!27))) b!3969057))

(declare-fun b!3969070 () Bool)

(declare-fun e!2458411 () Bool)

(declare-fun tp!1209790 () Bool)

(assert (=> b!3969070 (= e!2458411 tp!1209790)))

(declare-fun b!3969068 () Bool)

(assert (=> b!3969068 (= e!2458411 tp_is_empty!20077)))

(assert (=> b!3968838 (= tp!1209718 e!2458411)))

(declare-fun b!3969069 () Bool)

(declare-fun tp!1209791 () Bool)

(declare-fun tp!1209788 () Bool)

(assert (=> b!3969069 (= e!2458411 (and tp!1209791 tp!1209788))))

(declare-fun b!3969071 () Bool)

(declare-fun tp!1209787 () Bool)

(declare-fun tp!1209789 () Bool)

(assert (=> b!3969071 (= e!2458411 (and tp!1209787 tp!1209789))))

(assert (= (and b!3968838 ((_ is ElementMatch!11553) (regex!6648 (rule!9636 token!484)))) b!3969068))

(assert (= (and b!3968838 ((_ is Concat!18432) (regex!6648 (rule!9636 token!484)))) b!3969069))

(assert (= (and b!3968838 ((_ is Star!11553) (regex!6648 (rule!9636 token!484)))) b!3969070))

(assert (= (and b!3968838 ((_ is Union!11553) (regex!6648 (rule!9636 token!484)))) b!3969071))

(declare-fun b!3969074 () Bool)

(declare-fun e!2458412 () Bool)

(declare-fun tp!1209795 () Bool)

(assert (=> b!3969074 (= e!2458412 tp!1209795)))

(declare-fun b!3969072 () Bool)

(assert (=> b!3969072 (= e!2458412 tp_is_empty!20077)))

(assert (=> b!3968837 (= tp!1209724 e!2458412)))

(declare-fun b!3969073 () Bool)

(declare-fun tp!1209796 () Bool)

(declare-fun tp!1209793 () Bool)

(assert (=> b!3969073 (= e!2458412 (and tp!1209796 tp!1209793))))

(declare-fun b!3969075 () Bool)

(declare-fun tp!1209792 () Bool)

(declare-fun tp!1209794 () Bool)

(assert (=> b!3969075 (= e!2458412 (and tp!1209792 tp!1209794))))

(assert (= (and b!3968837 ((_ is ElementMatch!11553) (regex!6648 (h!47746 rules!2999)))) b!3969072))

(assert (= (and b!3968837 ((_ is Concat!18432) (regex!6648 (h!47746 rules!2999)))) b!3969073))

(assert (= (and b!3968837 ((_ is Star!11553) (regex!6648 (h!47746 rules!2999)))) b!3969074))

(assert (= (and b!3968837 ((_ is Union!11553) (regex!6648 (h!47746 rules!2999)))) b!3969075))

(declare-fun b!3969076 () Bool)

(declare-fun e!2458413 () Bool)

(declare-fun tp!1209797 () Bool)

(assert (=> b!3969076 (= e!2458413 (and tp_is_empty!20077 tp!1209797))))

(assert (=> b!3968831 (= tp!1209719 e!2458413)))

(assert (= (and b!3968831 ((_ is Cons!42324) (originalCharacters!7248 token!484))) b!3969076))

(declare-fun b!3969077 () Bool)

(declare-fun e!2458414 () Bool)

(declare-fun tp!1209798 () Bool)

(assert (=> b!3969077 (= e!2458414 (and tp_is_empty!20077 tp!1209798))))

(assert (=> b!3968826 (= tp!1209717 e!2458414)))

(assert (= (and b!3968826 ((_ is Cons!42324) (t!330785 suffix!1299))) b!3969077))

(declare-fun b!3969088 () Bool)

(declare-fun b_free!109845 () Bool)

(declare-fun b_next!110549 () Bool)

(assert (=> b!3969088 (= b_free!109845 (not b_next!110549))))

(declare-fun tp!1209809 () Bool)

(declare-fun b_and!305075 () Bool)

(assert (=> b!3969088 (= tp!1209809 b_and!305075)))

(declare-fun b_free!109847 () Bool)

(declare-fun b_next!110551 () Bool)

(assert (=> b!3969088 (= b_free!109847 (not b_next!110551))))

(declare-fun tb!239611 () Bool)

(declare-fun t!330799 () Bool)

(assert (=> (and b!3969088 (= (toChars!8991 (transformation!6648 (h!47746 (t!330787 rules!2999)))) (toChars!8991 (transformation!6648 (rule!9636 token!484)))) t!330799) tb!239611))

(declare-fun result!290132 () Bool)

(assert (= result!290132 result!290112))

(assert (=> d!1175883 t!330799))

(assert (=> b!3968910 t!330799))

(declare-fun b_and!305077 () Bool)

(declare-fun tp!1209807 () Bool)

(assert (=> b!3969088 (= tp!1209807 (and (=> t!330799 result!290132) b_and!305077))))

(declare-fun e!2458425 () Bool)

(assert (=> b!3969088 (= e!2458425 (and tp!1209809 tp!1209807))))

(declare-fun b!3969087 () Bool)

(declare-fun e!2458423 () Bool)

(declare-fun tp!1209810 () Bool)

(assert (=> b!3969087 (= e!2458423 (and tp!1209810 (inv!56555 (tag!7508 (h!47746 (t!330787 rules!2999)))) (inv!56559 (transformation!6648 (h!47746 (t!330787 rules!2999)))) e!2458425))))

(declare-fun b!3969086 () Bool)

(declare-fun e!2458426 () Bool)

(declare-fun tp!1209808 () Bool)

(assert (=> b!3969086 (= e!2458426 (and e!2458423 tp!1209808))))

(assert (=> b!3968841 (= tp!1209715 e!2458426)))

(assert (= b!3969087 b!3969088))

(assert (= b!3969086 b!3969087))

(assert (= (and b!3968841 ((_ is Cons!42326) (t!330787 rules!2999))) b!3969086))

(declare-fun m!4539497 () Bool)

(assert (=> b!3969087 m!4539497))

(declare-fun m!4539499 () Bool)

(assert (=> b!3969087 m!4539499))

(declare-fun b_lambda!116035 () Bool)

(assert (= b_lambda!116025 (or (and b!3968832 b_free!109835) (and b!3968827 b_free!109839 (= (toChars!8991 (transformation!6648 (h!47746 rules!2999))) (toChars!8991 (transformation!6648 (rule!9636 token!484))))) (and b!3969088 b_free!109847 (= (toChars!8991 (transformation!6648 (h!47746 (t!330787 rules!2999)))) (toChars!8991 (transformation!6648 (rule!9636 token!484))))) b_lambda!116035)))

(declare-fun b_lambda!116037 () Bool)

(assert (= b_lambda!116027 (or (and b!3968832 b_free!109835) (and b!3968827 b_free!109839 (= (toChars!8991 (transformation!6648 (h!47746 rules!2999))) (toChars!8991 (transformation!6648 (rule!9636 token!484))))) (and b!3969088 b_free!109847 (= (toChars!8991 (transformation!6648 (h!47746 (t!330787 rules!2999)))) (toChars!8991 (transformation!6648 (rule!9636 token!484))))) b_lambda!116037)))

(check-sat (not d!1175929) (not b!3968910) (not b_next!110537) (not b!3968872) (not b!3969070) (not b!3968911) (not b_next!110549) (not b!3968994) (not d!1175915) (not b!3969049) (not b!3969055) (not b!3969020) (not b!3969077) (not b!3969075) b_and!305063 (not b_next!110551) (not b!3968993) (not b!3969030) (not b!3969029) (not b!3968845) (not b_next!110539) b_and!305077 (not b_lambda!116035) (not b!3969074) (not b!3969033) (not b!3969069) b_and!305047 (not b!3969048) (not b!3969086) (not b!3968869) (not d!1175923) (not b!3969076) tp_is_empty!20077 (not b!3969071) (not tb!239605) (not b!3969032) (not b_next!110543) b_and!305075 (not b!3969087) (not b_lambda!116037) (not b_next!110541) (not b!3969057) b_and!305065 (not d!1175883) (not d!1175861) (not d!1175927) (not b!3969050) (not b!3968878) (not d!1175887) (not d!1175881) (not b!3969024) (not b!3969036) (not b!3969021) (not d!1175891) (not b!3968890) (not b!3968880) (not d!1175931) (not b!3969056) (not b!3969073) (not b!3968868) (not b!3969037) (not b!3969026) b_and!305051)
(check-sat (not b_next!110549) (not b_next!110539) b_and!305077 (not b_next!110537) b_and!305047 (not b_next!110541) b_and!305065 b_and!305051 b_and!305063 (not b_next!110551) (not b_next!110543) b_and!305075)
(get-model)

(declare-fun d!1175935 () Bool)

(declare-fun c!688582 () Bool)

(assert (=> d!1175935 (= c!688582 ((_ is Nil!42324) lt!1390221))))

(declare-fun e!2458429 () (InoxSet C!23292))

(assert (=> d!1175935 (= (content!6431 lt!1390221) e!2458429)))

(declare-fun b!3969093 () Bool)

(assert (=> b!3969093 (= e!2458429 ((as const (Array C!23292 Bool)) false))))

(declare-fun b!3969094 () Bool)

(assert (=> b!3969094 (= e!2458429 ((_ map or) (store ((as const (Array C!23292 Bool)) false) (h!47744 lt!1390221) true) (content!6431 (t!330785 lt!1390221))))))

(assert (= (and d!1175935 c!688582) b!3969093))

(assert (= (and d!1175935 (not c!688582)) b!3969094))

(declare-fun m!4539501 () Bool)

(assert (=> b!3969094 m!4539501))

(declare-fun m!4539503 () Bool)

(assert (=> b!3969094 m!4539503))

(assert (=> d!1175929 d!1175935))

(declare-fun d!1175937 () Bool)

(declare-fun c!688583 () Bool)

(assert (=> d!1175937 (= c!688583 ((_ is Nil!42324) lt!1390184))))

(declare-fun e!2458430 () (InoxSet C!23292))

(assert (=> d!1175937 (= (content!6431 lt!1390184) e!2458430)))

(declare-fun b!3969095 () Bool)

(assert (=> b!3969095 (= e!2458430 ((as const (Array C!23292 Bool)) false))))

(declare-fun b!3969096 () Bool)

(assert (=> b!3969096 (= e!2458430 ((_ map or) (store ((as const (Array C!23292 Bool)) false) (h!47744 lt!1390184) true) (content!6431 (t!330785 lt!1390184))))))

(assert (= (and d!1175937 c!688583) b!3969095))

(assert (= (and d!1175937 (not c!688583)) b!3969096))

(declare-fun m!4539505 () Bool)

(assert (=> b!3969096 m!4539505))

(declare-fun m!4539507 () Bool)

(assert (=> b!3969096 m!4539507))

(assert (=> d!1175929 d!1175937))

(declare-fun d!1175939 () Bool)

(declare-fun c!688584 () Bool)

(assert (=> d!1175939 (= c!688584 ((_ is Nil!42324) newSuffixResult!27))))

(declare-fun e!2458431 () (InoxSet C!23292))

(assert (=> d!1175939 (= (content!6431 newSuffixResult!27) e!2458431)))

(declare-fun b!3969097 () Bool)

(assert (=> b!3969097 (= e!2458431 ((as const (Array C!23292 Bool)) false))))

(declare-fun b!3969098 () Bool)

(assert (=> b!3969098 (= e!2458431 ((_ map or) (store ((as const (Array C!23292 Bool)) false) (h!47744 newSuffixResult!27) true) (content!6431 (t!330785 newSuffixResult!27))))))

(assert (= (and d!1175939 c!688584) b!3969097))

(assert (= (and d!1175939 (not c!688584)) b!3969098))

(declare-fun m!4539509 () Bool)

(assert (=> b!3969098 m!4539509))

(declare-fun m!4539511 () Bool)

(assert (=> b!3969098 m!4539511))

(assert (=> d!1175929 d!1175939))

(declare-fun d!1175941 () Bool)

(declare-fun c!688585 () Bool)

(assert (=> d!1175941 (= c!688585 ((_ is Nil!42324) lt!1390218))))

(declare-fun e!2458432 () (InoxSet C!23292))

(assert (=> d!1175941 (= (content!6431 lt!1390218) e!2458432)))

(declare-fun b!3969099 () Bool)

(assert (=> b!3969099 (= e!2458432 ((as const (Array C!23292 Bool)) false))))

(declare-fun b!3969100 () Bool)

(assert (=> b!3969100 (= e!2458432 ((_ map or) (store ((as const (Array C!23292 Bool)) false) (h!47744 lt!1390218) true) (content!6431 (t!330785 lt!1390218))))))

(assert (= (and d!1175941 c!688585) b!3969099))

(assert (= (and d!1175941 (not c!688585)) b!3969100))

(declare-fun m!4539513 () Bool)

(assert (=> b!3969100 m!4539513))

(declare-fun m!4539515 () Bool)

(assert (=> b!3969100 m!4539515))

(assert (=> d!1175915 d!1175941))

(declare-fun d!1175943 () Bool)

(declare-fun c!688586 () Bool)

(assert (=> d!1175943 (= c!688586 ((_ is Nil!42324) prefix!494))))

(declare-fun e!2458433 () (InoxSet C!23292))

(assert (=> d!1175943 (= (content!6431 prefix!494) e!2458433)))

(declare-fun b!3969101 () Bool)

(assert (=> b!3969101 (= e!2458433 ((as const (Array C!23292 Bool)) false))))

(declare-fun b!3969102 () Bool)

(assert (=> b!3969102 (= e!2458433 ((_ map or) (store ((as const (Array C!23292 Bool)) false) (h!47744 prefix!494) true) (content!6431 (t!330785 prefix!494))))))

(assert (= (and d!1175943 c!688586) b!3969101))

(assert (= (and d!1175943 (not c!688586)) b!3969102))

(declare-fun m!4539517 () Bool)

(assert (=> b!3969102 m!4539517))

(declare-fun m!4539519 () Bool)

(assert (=> b!3969102 m!4539519))

(assert (=> d!1175915 d!1175943))

(declare-fun d!1175945 () Bool)

(declare-fun c!688587 () Bool)

(assert (=> d!1175945 (= c!688587 ((_ is Nil!42324) suffix!1299))))

(declare-fun e!2458434 () (InoxSet C!23292))

(assert (=> d!1175945 (= (content!6431 suffix!1299) e!2458434)))

(declare-fun b!3969103 () Bool)

(assert (=> b!3969103 (= e!2458434 ((as const (Array C!23292 Bool)) false))))

(declare-fun b!3969104 () Bool)

(assert (=> b!3969104 (= e!2458434 ((_ map or) (store ((as const (Array C!23292 Bool)) false) (h!47744 suffix!1299) true) (content!6431 (t!330785 suffix!1299))))))

(assert (= (and d!1175945 c!688587) b!3969103))

(assert (= (and d!1175945 (not c!688587)) b!3969104))

(declare-fun m!4539521 () Bool)

(assert (=> b!3969104 m!4539521))

(declare-fun m!4539523 () Bool)

(assert (=> b!3969104 m!4539523))

(assert (=> d!1175915 d!1175945))

(assert (=> b!3969050 d!1175917))

(assert (=> b!3969050 d!1175919))

(declare-fun d!1175947 () Bool)

(declare-fun lt!1390226 () Int)

(assert (=> d!1175947 (>= lt!1390226 0)))

(declare-fun e!2458435 () Int)

(assert (=> d!1175947 (= lt!1390226 e!2458435)))

(declare-fun c!688588 () Bool)

(assert (=> d!1175947 (= c!688588 ((_ is Nil!42324) lt!1390218))))

(assert (=> d!1175947 (= (size!31677 lt!1390218) lt!1390226)))

(declare-fun b!3969105 () Bool)

(assert (=> b!3969105 (= e!2458435 0)))

(declare-fun b!3969106 () Bool)

(assert (=> b!3969106 (= e!2458435 (+ 1 (size!31677 (t!330785 lt!1390218))))))

(assert (= (and d!1175947 c!688588) b!3969105))

(assert (= (and d!1175947 (not c!688588)) b!3969106))

(declare-fun m!4539525 () Bool)

(assert (=> b!3969106 m!4539525))

(assert (=> b!3969021 d!1175947))

(assert (=> b!3969021 d!1175875))

(assert (=> b!3969021 d!1175917))

(declare-fun d!1175949 () Bool)

(assert (=> d!1175949 (= (head!8457 newSuffix!27) (h!47744 newSuffix!27))))

(assert (=> b!3969048 d!1175949))

(declare-fun d!1175951 () Bool)

(assert (=> d!1175951 (= (head!8457 suffix!1299) (h!47744 suffix!1299))))

(assert (=> b!3969048 d!1175951))

(declare-fun b!3969107 () Bool)

(declare-fun e!2458438 () Bool)

(declare-fun e!2458436 () Bool)

(assert (=> b!3969107 (= e!2458438 e!2458436)))

(declare-fun res!1606612 () Bool)

(assert (=> b!3969107 (=> (not res!1606612) (not e!2458436))))

(assert (=> b!3969107 (= res!1606612 (not ((_ is Nil!42324) (tail!6189 suffix!1299))))))

(declare-fun d!1175953 () Bool)

(declare-fun e!2458437 () Bool)

(assert (=> d!1175953 e!2458437))

(declare-fun res!1606615 () Bool)

(assert (=> d!1175953 (=> res!1606615 e!2458437)))

(declare-fun lt!1390227 () Bool)

(assert (=> d!1175953 (= res!1606615 (not lt!1390227))))

(assert (=> d!1175953 (= lt!1390227 e!2458438)))

(declare-fun res!1606614 () Bool)

(assert (=> d!1175953 (=> res!1606614 e!2458438)))

(assert (=> d!1175953 (= res!1606614 ((_ is Nil!42324) (tail!6189 newSuffix!27)))))

(assert (=> d!1175953 (= (isPrefix!3735 (tail!6189 newSuffix!27) (tail!6189 suffix!1299)) lt!1390227)))

(declare-fun b!3969108 () Bool)

(declare-fun res!1606613 () Bool)

(assert (=> b!3969108 (=> (not res!1606613) (not e!2458436))))

(assert (=> b!3969108 (= res!1606613 (= (head!8457 (tail!6189 newSuffix!27)) (head!8457 (tail!6189 suffix!1299))))))

(declare-fun b!3969110 () Bool)

(assert (=> b!3969110 (= e!2458437 (>= (size!31677 (tail!6189 suffix!1299)) (size!31677 (tail!6189 newSuffix!27))))))

(declare-fun b!3969109 () Bool)

(assert (=> b!3969109 (= e!2458436 (isPrefix!3735 (tail!6189 (tail!6189 newSuffix!27)) (tail!6189 (tail!6189 suffix!1299))))))

(assert (= (and d!1175953 (not res!1606614)) b!3969107))

(assert (= (and b!3969107 res!1606612) b!3969108))

(assert (= (and b!3969108 res!1606613) b!3969109))

(assert (= (and d!1175953 (not res!1606615)) b!3969110))

(assert (=> b!3969108 m!4539491))

(declare-fun m!4539527 () Bool)

(assert (=> b!3969108 m!4539527))

(assert (=> b!3969108 m!4539493))

(declare-fun m!4539529 () Bool)

(assert (=> b!3969108 m!4539529))

(assert (=> b!3969110 m!4539493))

(declare-fun m!4539531 () Bool)

(assert (=> b!3969110 m!4539531))

(assert (=> b!3969110 m!4539491))

(declare-fun m!4539533 () Bool)

(assert (=> b!3969110 m!4539533))

(assert (=> b!3969109 m!4539491))

(declare-fun m!4539535 () Bool)

(assert (=> b!3969109 m!4539535))

(assert (=> b!3969109 m!4539493))

(declare-fun m!4539537 () Bool)

(assert (=> b!3969109 m!4539537))

(assert (=> b!3969109 m!4539535))

(assert (=> b!3969109 m!4539537))

(declare-fun m!4539539 () Bool)

(assert (=> b!3969109 m!4539539))

(assert (=> b!3969049 d!1175953))

(declare-fun d!1175955 () Bool)

(assert (=> d!1175955 (= (tail!6189 newSuffix!27) (t!330785 newSuffix!27))))

(assert (=> b!3969049 d!1175955))

(declare-fun d!1175957 () Bool)

(assert (=> d!1175957 (= (tail!6189 suffix!1299) (t!330785 suffix!1299))))

(assert (=> b!3969049 d!1175957))

(declare-fun b!3969121 () Bool)

(declare-fun e!2458444 () List!42448)

(declare-fun list!15705 (IArray!25723) List!42448)

(assert (=> b!3969121 (= e!2458444 (list!15705 (xs!16165 (c!688544 (charsOf!4464 token!484)))))))

(declare-fun b!3969120 () Bool)

(declare-fun e!2458443 () List!42448)

(assert (=> b!3969120 (= e!2458443 e!2458444)))

(declare-fun c!688594 () Bool)

(assert (=> b!3969120 (= c!688594 ((_ is Leaf!19890) (c!688544 (charsOf!4464 token!484))))))

(declare-fun d!1175959 () Bool)

(declare-fun c!688593 () Bool)

(assert (=> d!1175959 (= c!688593 ((_ is Empty!12859) (c!688544 (charsOf!4464 token!484))))))

(assert (=> d!1175959 (= (list!15704 (c!688544 (charsOf!4464 token!484))) e!2458443)))

(declare-fun b!3969122 () Bool)

(assert (=> b!3969122 (= e!2458444 (++!11050 (list!15704 (left!32069 (c!688544 (charsOf!4464 token!484)))) (list!15704 (right!32399 (c!688544 (charsOf!4464 token!484))))))))

(declare-fun b!3969119 () Bool)

(assert (=> b!3969119 (= e!2458443 Nil!42324)))

(assert (= (and d!1175959 c!688593) b!3969119))

(assert (= (and d!1175959 (not c!688593)) b!3969120))

(assert (= (and b!3969120 c!688594) b!3969121))

(assert (= (and b!3969120 (not c!688594)) b!3969122))

(declare-fun m!4539541 () Bool)

(assert (=> b!3969121 m!4539541))

(declare-fun m!4539543 () Bool)

(assert (=> b!3969122 m!4539543))

(declare-fun m!4539545 () Bool)

(assert (=> b!3969122 m!4539545))

(assert (=> b!3969122 m!4539543))

(assert (=> b!3969122 m!4539545))

(declare-fun m!4539547 () Bool)

(assert (=> b!3969122 m!4539547))

(assert (=> d!1175881 d!1175959))

(declare-fun d!1175961 () Bool)

(declare-fun isBalanced!3654 (Conc!12859) Bool)

(assert (=> d!1175961 (= (inv!56563 (dynLambda!18057 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (value!210102 token!484))) (isBalanced!3654 (c!688544 (dynLambda!18057 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (value!210102 token!484)))))))

(declare-fun bs!587545 () Bool)

(assert (= bs!587545 d!1175961))

(declare-fun m!4539549 () Bool)

(assert (=> bs!587545 m!4539549))

(assert (=> tb!239605 d!1175961))

(declare-fun b!3969126 () Bool)

(declare-fun e!2458445 () Bool)

(declare-fun lt!1390228 () List!42448)

(assert (=> b!3969126 (= e!2458445 (or (not (= suffix!1299 Nil!42324)) (= lt!1390228 (t!330785 prefix!494))))))

(declare-fun b!3969123 () Bool)

(declare-fun e!2458446 () List!42448)

(assert (=> b!3969123 (= e!2458446 suffix!1299)))

(declare-fun b!3969124 () Bool)

(assert (=> b!3969124 (= e!2458446 (Cons!42324 (h!47744 (t!330785 prefix!494)) (++!11050 (t!330785 (t!330785 prefix!494)) suffix!1299)))))

(declare-fun b!3969125 () Bool)

(declare-fun res!1606616 () Bool)

(assert (=> b!3969125 (=> (not res!1606616) (not e!2458445))))

(assert (=> b!3969125 (= res!1606616 (= (size!31677 lt!1390228) (+ (size!31677 (t!330785 prefix!494)) (size!31677 suffix!1299))))))

(declare-fun d!1175963 () Bool)

(assert (=> d!1175963 e!2458445))

(declare-fun res!1606617 () Bool)

(assert (=> d!1175963 (=> (not res!1606617) (not e!2458445))))

(assert (=> d!1175963 (= res!1606617 (= (content!6431 lt!1390228) ((_ map or) (content!6431 (t!330785 prefix!494)) (content!6431 suffix!1299))))))

(assert (=> d!1175963 (= lt!1390228 e!2458446)))

(declare-fun c!688595 () Bool)

(assert (=> d!1175963 (= c!688595 ((_ is Nil!42324) (t!330785 prefix!494)))))

(assert (=> d!1175963 (= (++!11050 (t!330785 prefix!494) suffix!1299) lt!1390228)))

(assert (= (and d!1175963 c!688595) b!3969123))

(assert (= (and d!1175963 (not c!688595)) b!3969124))

(assert (= (and d!1175963 res!1606617) b!3969125))

(assert (= (and b!3969125 res!1606616) b!3969126))

(declare-fun m!4539551 () Bool)

(assert (=> b!3969124 m!4539551))

(declare-fun m!4539553 () Bool)

(assert (=> b!3969125 m!4539553))

(assert (=> b!3969125 m!4539337))

(assert (=> b!3969125 m!4539313))

(declare-fun m!4539555 () Bool)

(assert (=> d!1175963 m!4539555))

(assert (=> d!1175963 m!4539519))

(assert (=> d!1175963 m!4539453))

(assert (=> b!3969020 d!1175963))

(declare-fun d!1175965 () Bool)

(declare-fun lt!1390229 () Int)

(assert (=> d!1175965 (>= lt!1390229 0)))

(declare-fun e!2458447 () Int)

(assert (=> d!1175965 (= lt!1390229 e!2458447)))

(declare-fun c!688596 () Bool)

(assert (=> d!1175965 (= c!688596 ((_ is Nil!42324) (t!330785 suffix!1299)))))

(assert (=> d!1175965 (= (size!31677 (t!330785 suffix!1299)) lt!1390229)))

(declare-fun b!3969127 () Bool)

(assert (=> b!3969127 (= e!2458447 0)))

(declare-fun b!3969128 () Bool)

(assert (=> b!3969128 (= e!2458447 (+ 1 (size!31677 (t!330785 (t!330785 suffix!1299)))))))

(assert (= (and d!1175965 c!688596) b!3969127))

(assert (= (and d!1175965 (not c!688596)) b!3969128))

(declare-fun m!4539557 () Bool)

(assert (=> b!3969128 m!4539557))

(assert (=> b!3969024 d!1175965))

(declare-fun d!1175967 () Bool)

(assert (=> d!1175967 (= (inv!56555 (tag!7508 (h!47746 (t!330787 rules!2999)))) (= (mod (str.len (value!210101 (tag!7508 (h!47746 (t!330787 rules!2999))))) 2) 0))))

(assert (=> b!3969087 d!1175967))

(declare-fun d!1175969 () Bool)

(declare-fun res!1606618 () Bool)

(declare-fun e!2458448 () Bool)

(assert (=> d!1175969 (=> (not res!1606618) (not e!2458448))))

(assert (=> d!1175969 (= res!1606618 (semiInverseModEq!2863 (toChars!8991 (transformation!6648 (h!47746 (t!330787 rules!2999)))) (toValue!9132 (transformation!6648 (h!47746 (t!330787 rules!2999))))))))

(assert (=> d!1175969 (= (inv!56559 (transformation!6648 (h!47746 (t!330787 rules!2999)))) e!2458448)))

(declare-fun b!3969129 () Bool)

(assert (=> b!3969129 (= e!2458448 (equivClasses!2762 (toChars!8991 (transformation!6648 (h!47746 (t!330787 rules!2999)))) (toValue!9132 (transformation!6648 (h!47746 (t!330787 rules!2999))))))))

(assert (= (and d!1175969 res!1606618) b!3969129))

(declare-fun m!4539559 () Bool)

(assert (=> d!1175969 m!4539559))

(declare-fun m!4539561 () Bool)

(assert (=> b!3969129 m!4539561))

(assert (=> b!3969087 d!1175969))

(declare-fun d!1175971 () Bool)

(declare-fun lt!1390230 () Int)

(assert (=> d!1175971 (>= lt!1390230 0)))

(declare-fun e!2458449 () Int)

(assert (=> d!1175971 (= lt!1390230 e!2458449)))

(declare-fun c!688597 () Bool)

(assert (=> d!1175971 (= c!688597 ((_ is Nil!42324) (t!330785 lt!1390184)))))

(assert (=> d!1175971 (= (size!31677 (t!330785 lt!1390184)) lt!1390230)))

(declare-fun b!3969130 () Bool)

(assert (=> b!3969130 (= e!2458449 0)))

(declare-fun b!3969131 () Bool)

(assert (=> b!3969131 (= e!2458449 (+ 1 (size!31677 (t!330785 (t!330785 lt!1390184)))))))

(assert (= (and d!1175971 c!688597) b!3969130))

(assert (= (and d!1175971 (not c!688597)) b!3969131))

(declare-fun m!4539563 () Bool)

(assert (=> b!3969131 m!4539563))

(assert (=> b!3968880 d!1175971))

(declare-fun d!1175973 () Bool)

(declare-fun c!688600 () Bool)

(assert (=> d!1175973 (= c!688600 ((_ is Node!12859) (c!688544 (dynLambda!18057 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (value!210102 token!484)))))))

(declare-fun e!2458454 () Bool)

(assert (=> d!1175973 (= (inv!56562 (c!688544 (dynLambda!18057 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (value!210102 token!484)))) e!2458454)))

(declare-fun b!3969138 () Bool)

(declare-fun inv!56564 (Conc!12859) Bool)

(assert (=> b!3969138 (= e!2458454 (inv!56564 (c!688544 (dynLambda!18057 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (value!210102 token!484)))))))

(declare-fun b!3969139 () Bool)

(declare-fun e!2458455 () Bool)

(assert (=> b!3969139 (= e!2458454 e!2458455)))

(declare-fun res!1606621 () Bool)

(assert (=> b!3969139 (= res!1606621 (not ((_ is Leaf!19890) (c!688544 (dynLambda!18057 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (value!210102 token!484))))))))

(assert (=> b!3969139 (=> res!1606621 e!2458455)))

(declare-fun b!3969140 () Bool)

(declare-fun inv!56565 (Conc!12859) Bool)

(assert (=> b!3969140 (= e!2458455 (inv!56565 (c!688544 (dynLambda!18057 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (value!210102 token!484)))))))

(assert (= (and d!1175973 c!688600) b!3969138))

(assert (= (and d!1175973 (not c!688600)) b!3969139))

(assert (= (and b!3969139 (not res!1606621)) b!3969140))

(declare-fun m!4539565 () Bool)

(assert (=> b!3969138 m!4539565))

(declare-fun m!4539567 () Bool)

(assert (=> b!3969140 m!4539567))

(assert (=> b!3968890 d!1175973))

(declare-fun d!1175975 () Bool)

(assert (=> d!1175975 true))

(declare-fun order!22417 () Int)

(declare-fun lambda!126848 () Int)

(declare-fun order!22415 () Int)

(declare-fun dynLambda!18058 (Int Int) Int)

(declare-fun dynLambda!18059 (Int Int) Int)

(assert (=> d!1175975 (< (dynLambda!18058 order!22415 (toValue!9132 (transformation!6648 (h!47746 rules!2999)))) (dynLambda!18059 order!22417 lambda!126848))))

(declare-fun Forall2!1062 (Int) Bool)

(assert (=> d!1175975 (= (equivClasses!2762 (toChars!8991 (transformation!6648 (h!47746 rules!2999))) (toValue!9132 (transformation!6648 (h!47746 rules!2999)))) (Forall2!1062 lambda!126848))))

(declare-fun bs!587546 () Bool)

(assert (= bs!587546 d!1175975))

(declare-fun m!4539569 () Bool)

(assert (=> bs!587546 m!4539569))

(assert (=> b!3969030 d!1175975))

(declare-fun d!1175977 () Bool)

(assert (=> d!1175977 true))

(declare-fun order!22419 () Int)

(declare-fun lambda!126851 () Int)

(declare-fun order!22421 () Int)

(declare-fun dynLambda!18060 (Int Int) Int)

(declare-fun dynLambda!18061 (Int Int) Int)

(assert (=> d!1175977 (< (dynLambda!18060 order!22419 (toChars!8991 (transformation!6648 (rule!9636 token!484)))) (dynLambda!18061 order!22421 lambda!126851))))

(assert (=> d!1175977 true))

(assert (=> d!1175977 (< (dynLambda!18058 order!22415 (toValue!9132 (transformation!6648 (rule!9636 token!484)))) (dynLambda!18061 order!22421 lambda!126851))))

(declare-fun Forall!1463 (Int) Bool)

(assert (=> d!1175977 (= (semiInverseModEq!2863 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (toValue!9132 (transformation!6648 (rule!9636 token!484)))) (Forall!1463 lambda!126851))))

(declare-fun bs!587547 () Bool)

(assert (= bs!587547 d!1175977))

(declare-fun m!4539571 () Bool)

(assert (=> bs!587547 m!4539571))

(assert (=> d!1175923 d!1175977))

(declare-fun bs!587548 () Bool)

(declare-fun d!1175979 () Bool)

(assert (= bs!587548 (and d!1175979 d!1175977)))

(declare-fun lambda!126852 () Int)

(assert (=> bs!587548 (= (and (= (toChars!8991 (transformation!6648 (h!47746 rules!2999))) (toChars!8991 (transformation!6648 (rule!9636 token!484)))) (= (toValue!9132 (transformation!6648 (h!47746 rules!2999))) (toValue!9132 (transformation!6648 (rule!9636 token!484))))) (= lambda!126852 lambda!126851))))

(assert (=> d!1175979 true))

(assert (=> d!1175979 (< (dynLambda!18060 order!22419 (toChars!8991 (transformation!6648 (h!47746 rules!2999)))) (dynLambda!18061 order!22421 lambda!126852))))

(assert (=> d!1175979 true))

(assert (=> d!1175979 (< (dynLambda!18058 order!22415 (toValue!9132 (transformation!6648 (h!47746 rules!2999)))) (dynLambda!18061 order!22421 lambda!126852))))

(assert (=> d!1175979 (= (semiInverseModEq!2863 (toChars!8991 (transformation!6648 (h!47746 rules!2999))) (toValue!9132 (transformation!6648 (h!47746 rules!2999)))) (Forall!1463 lambda!126852))))

(declare-fun bs!587549 () Bool)

(assert (= bs!587549 d!1175979))

(declare-fun m!4539573 () Bool)

(assert (=> bs!587549 m!4539573))

(assert (=> d!1175927 d!1175979))

(declare-fun b!3969152 () Bool)

(declare-fun e!2458458 () Bool)

(declare-fun lt!1390231 () List!42448)

(assert (=> b!3969152 (= e!2458458 (or (not (= newSuffix!27 Nil!42324)) (= lt!1390231 (t!330785 prefix!494))))))

(declare-fun b!3969149 () Bool)

(declare-fun e!2458459 () List!42448)

(assert (=> b!3969149 (= e!2458459 newSuffix!27)))

(declare-fun b!3969150 () Bool)

(assert (=> b!3969150 (= e!2458459 (Cons!42324 (h!47744 (t!330785 prefix!494)) (++!11050 (t!330785 (t!330785 prefix!494)) newSuffix!27)))))

(declare-fun b!3969151 () Bool)

(declare-fun res!1606624 () Bool)

(assert (=> b!3969151 (=> (not res!1606624) (not e!2458458))))

(assert (=> b!3969151 (= res!1606624 (= (size!31677 lt!1390231) (+ (size!31677 (t!330785 prefix!494)) (size!31677 newSuffix!27))))))

(declare-fun d!1175981 () Bool)

(assert (=> d!1175981 e!2458458))

(declare-fun res!1606625 () Bool)

(assert (=> d!1175981 (=> (not res!1606625) (not e!2458458))))

(assert (=> d!1175981 (= res!1606625 (= (content!6431 lt!1390231) ((_ map or) (content!6431 (t!330785 prefix!494)) (content!6431 newSuffix!27))))))

(assert (=> d!1175981 (= lt!1390231 e!2458459)))

(declare-fun c!688601 () Bool)

(assert (=> d!1175981 (= c!688601 ((_ is Nil!42324) (t!330785 prefix!494)))))

(assert (=> d!1175981 (= (++!11050 (t!330785 prefix!494) newSuffix!27) lt!1390231)))

(assert (= (and d!1175981 c!688601) b!3969149))

(assert (= (and d!1175981 (not c!688601)) b!3969150))

(assert (= (and d!1175981 res!1606625) b!3969151))

(assert (= (and b!3969151 res!1606624) b!3969152))

(declare-fun m!4539575 () Bool)

(assert (=> b!3969150 m!4539575))

(declare-fun m!4539577 () Bool)

(assert (=> b!3969151 m!4539577))

(assert (=> b!3969151 m!4539337))

(assert (=> b!3969151 m!4539315))

(declare-fun m!4539579 () Bool)

(assert (=> d!1175981 m!4539579))

(assert (=> d!1175981 m!4539519))

(assert (=> d!1175981 m!4539485))

(assert (=> b!3969036 d!1175981))

(declare-fun d!1175983 () Bool)

(declare-fun res!1606630 () Bool)

(declare-fun e!2458462 () Bool)

(assert (=> d!1175983 (=> (not res!1606630) (not e!2458462))))

(declare-fun validRegex!5255 (Regex!11553) Bool)

(assert (=> d!1175983 (= res!1606630 (validRegex!5255 (regex!6648 (h!47746 rules!2999))))))

(assert (=> d!1175983 (= (ruleValid!2584 thiss!21717 (h!47746 rules!2999)) e!2458462)))

(declare-fun b!3969157 () Bool)

(declare-fun res!1606631 () Bool)

(assert (=> b!3969157 (=> (not res!1606631) (not e!2458462))))

(declare-fun nullable!4056 (Regex!11553) Bool)

(assert (=> b!3969157 (= res!1606631 (not (nullable!4056 (regex!6648 (h!47746 rules!2999)))))))

(declare-fun b!3969158 () Bool)

(assert (=> b!3969158 (= e!2458462 (not (= (tag!7508 (h!47746 rules!2999)) (String!48109 ""))))))

(assert (= (and d!1175983 res!1606630) b!3969157))

(assert (= (and b!3969157 res!1606631) b!3969158))

(declare-fun m!4539581 () Bool)

(assert (=> d!1175983 m!4539581))

(declare-fun m!4539583 () Bool)

(assert (=> b!3969157 m!4539583))

(assert (=> b!3968993 d!1175983))

(declare-fun bs!587550 () Bool)

(declare-fun d!1175985 () Bool)

(assert (= bs!587550 (and d!1175985 d!1175891)))

(declare-fun lambda!126853 () Int)

(assert (=> bs!587550 (= lambda!126853 lambda!126845)))

(assert (=> d!1175985 true))

(declare-fun lt!1390232 () Bool)

(assert (=> d!1175985 (= lt!1390232 (forall!8331 (t!330787 rules!2999) lambda!126853))))

(declare-fun e!2458464 () Bool)

(assert (=> d!1175985 (= lt!1390232 e!2458464)))

(declare-fun res!1606633 () Bool)

(assert (=> d!1175985 (=> res!1606633 e!2458464)))

(assert (=> d!1175985 (= res!1606633 (not ((_ is Cons!42326) (t!330787 rules!2999))))))

(assert (=> d!1175985 (= (rulesValidInductive!2410 thiss!21717 (t!330787 rules!2999)) lt!1390232)))

(declare-fun b!3969159 () Bool)

(declare-fun e!2458463 () Bool)

(assert (=> b!3969159 (= e!2458464 e!2458463)))

(declare-fun res!1606632 () Bool)

(assert (=> b!3969159 (=> (not res!1606632) (not e!2458463))))

(assert (=> b!3969159 (= res!1606632 (ruleValid!2584 thiss!21717 (h!47746 (t!330787 rules!2999))))))

(declare-fun b!3969160 () Bool)

(assert (=> b!3969160 (= e!2458463 (rulesValidInductive!2410 thiss!21717 (t!330787 (t!330787 rules!2999))))))

(assert (= (and d!1175985 (not res!1606633)) b!3969159))

(assert (= (and b!3969159 res!1606632) b!3969160))

(declare-fun m!4539585 () Bool)

(assert (=> d!1175985 m!4539585))

(declare-fun m!4539587 () Bool)

(assert (=> b!3969159 m!4539587))

(declare-fun m!4539589 () Bool)

(assert (=> b!3969160 m!4539589))

(assert (=> b!3968994 d!1175985))

(declare-fun d!1175987 () Bool)

(declare-fun lt!1390233 () Int)

(assert (=> d!1175987 (>= lt!1390233 0)))

(declare-fun e!2458465 () Int)

(assert (=> d!1175987 (= lt!1390233 e!2458465)))

(declare-fun c!688602 () Bool)

(assert (=> d!1175987 (= c!688602 ((_ is Nil!42324) (originalCharacters!7248 token!484)))))

(assert (=> d!1175987 (= (size!31677 (originalCharacters!7248 token!484)) lt!1390233)))

(declare-fun b!3969161 () Bool)

(assert (=> b!3969161 (= e!2458465 0)))

(declare-fun b!3969162 () Bool)

(assert (=> b!3969162 (= e!2458465 (+ 1 (size!31677 (t!330785 (originalCharacters!7248 token!484)))))))

(assert (= (and d!1175987 c!688602) b!3969161))

(assert (= (and d!1175987 (not c!688602)) b!3969162))

(declare-fun m!4539591 () Bool)

(assert (=> b!3969162 m!4539591))

(assert (=> b!3968911 d!1175987))

(declare-fun d!1175989 () Bool)

(declare-fun lt!1390234 () Int)

(assert (=> d!1175989 (>= lt!1390234 0)))

(declare-fun e!2458466 () Int)

(assert (=> d!1175989 (= lt!1390234 e!2458466)))

(declare-fun c!688603 () Bool)

(assert (=> d!1175989 (= c!688603 ((_ is Nil!42324) lt!1390222))))

(assert (=> d!1175989 (= (size!31677 lt!1390222) lt!1390234)))

(declare-fun b!3969163 () Bool)

(assert (=> b!3969163 (= e!2458466 0)))

(declare-fun b!3969164 () Bool)

(assert (=> b!3969164 (= e!2458466 (+ 1 (size!31677 (t!330785 lt!1390222))))))

(assert (= (and d!1175989 c!688603) b!3969163))

(assert (= (and d!1175989 (not c!688603)) b!3969164))

(declare-fun m!4539593 () Bool)

(assert (=> b!3969164 m!4539593))

(assert (=> b!3969037 d!1175989))

(assert (=> b!3969037 d!1175875))

(assert (=> b!3969037 d!1175919))

(declare-fun d!1175991 () Bool)

(declare-fun charsToBigInt!0 (List!42449 Int) Int)

(assert (=> d!1175991 (= (inv!15 (value!210102 token!484)) (= (charsToBigInt!0 (text!48595 (value!210102 token!484)) 0) (value!210097 (value!210102 token!484))))))

(declare-fun bs!587551 () Bool)

(assert (= bs!587551 d!1175991))

(declare-fun m!4539595 () Bool)

(assert (=> bs!587551 m!4539595))

(assert (=> b!3968872 d!1175991))

(declare-fun d!1175993 () Bool)

(assert (=> d!1175993 (= (list!15702 (dynLambda!18057 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (value!210102 token!484))) (list!15704 (c!688544 (dynLambda!18057 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (value!210102 token!484)))))))

(declare-fun bs!587552 () Bool)

(assert (= bs!587552 d!1175993))

(declare-fun m!4539597 () Bool)

(assert (=> bs!587552 m!4539597))

(assert (=> b!3968910 d!1175993))

(declare-fun bs!587553 () Bool)

(declare-fun d!1175995 () Bool)

(assert (= bs!587553 (and d!1175995 d!1175891)))

(declare-fun lambda!126856 () Int)

(assert (=> bs!587553 (= lambda!126856 lambda!126845)))

(declare-fun bs!587554 () Bool)

(assert (= bs!587554 (and d!1175995 d!1175985)))

(assert (=> bs!587554 (= lambda!126856 lambda!126853)))

(assert (=> d!1175995 true))

(declare-fun lt!1390237 () Bool)

(assert (=> d!1175995 (= lt!1390237 (rulesValidInductive!2410 thiss!21717 rules!2999))))

(assert (=> d!1175995 (= lt!1390237 (forall!8331 rules!2999 lambda!126856))))

(assert (=> d!1175995 (= (rulesValid!2596 thiss!21717 rules!2999) lt!1390237)))

(declare-fun bs!587555 () Bool)

(assert (= bs!587555 d!1175995))

(assert (=> bs!587555 m!4539293))

(declare-fun m!4539599 () Bool)

(assert (=> bs!587555 m!4539599))

(assert (=> d!1175861 d!1175995))

(declare-fun e!2458467 () Bool)

(declare-fun b!3969168 () Bool)

(declare-fun lt!1390238 () List!42448)

(assert (=> b!3969168 (= e!2458467 (or (not (= newSuffixResult!27 Nil!42324)) (= lt!1390238 (t!330785 lt!1390184))))))

(declare-fun b!3969165 () Bool)

(declare-fun e!2458468 () List!42448)

(assert (=> b!3969165 (= e!2458468 newSuffixResult!27)))

(declare-fun b!3969166 () Bool)

(assert (=> b!3969166 (= e!2458468 (Cons!42324 (h!47744 (t!330785 lt!1390184)) (++!11050 (t!330785 (t!330785 lt!1390184)) newSuffixResult!27)))))

(declare-fun b!3969167 () Bool)

(declare-fun res!1606634 () Bool)

(assert (=> b!3969167 (=> (not res!1606634) (not e!2458467))))

(assert (=> b!3969167 (= res!1606634 (= (size!31677 lt!1390238) (+ (size!31677 (t!330785 lt!1390184)) (size!31677 newSuffixResult!27))))))

(declare-fun d!1175997 () Bool)

(assert (=> d!1175997 e!2458467))

(declare-fun res!1606635 () Bool)

(assert (=> d!1175997 (=> (not res!1606635) (not e!2458467))))

(assert (=> d!1175997 (= res!1606635 (= (content!6431 lt!1390238) ((_ map or) (content!6431 (t!330785 lt!1390184)) (content!6431 newSuffixResult!27))))))

(assert (=> d!1175997 (= lt!1390238 e!2458468)))

(declare-fun c!688604 () Bool)

(assert (=> d!1175997 (= c!688604 ((_ is Nil!42324) (t!330785 lt!1390184)))))

(assert (=> d!1175997 (= (++!11050 (t!330785 lt!1390184) newSuffixResult!27) lt!1390238)))

(assert (= (and d!1175997 c!688604) b!3969165))

(assert (= (and d!1175997 (not c!688604)) b!3969166))

(assert (= (and d!1175997 res!1606635) b!3969167))

(assert (= (and b!3969167 res!1606634) b!3969168))

(declare-fun m!4539601 () Bool)

(assert (=> b!3969166 m!4539601))

(declare-fun m!4539603 () Bool)

(assert (=> b!3969167 m!4539603))

(assert (=> b!3969167 m!4539339))

(assert (=> b!3969167 m!4539471))

(declare-fun m!4539605 () Bool)

(assert (=> d!1175997 m!4539605))

(assert (=> d!1175997 m!4539507))

(assert (=> d!1175997 m!4539477))

(assert (=> b!3969032 d!1175997))

(declare-fun d!1175999 () Bool)

(declare-fun lt!1390239 () Int)

(assert (=> d!1175999 (>= lt!1390239 0)))

(declare-fun e!2458469 () Int)

(assert (=> d!1175999 (= lt!1390239 e!2458469)))

(declare-fun c!688605 () Bool)

(assert (=> d!1175999 (= c!688605 ((_ is Nil!42324) lt!1390221))))

(assert (=> d!1175999 (= (size!31677 lt!1390221) lt!1390239)))

(declare-fun b!3969169 () Bool)

(assert (=> b!3969169 (= e!2458469 0)))

(declare-fun b!3969170 () Bool)

(assert (=> b!3969170 (= e!2458469 (+ 1 (size!31677 (t!330785 lt!1390221))))))

(assert (= (and d!1175999 c!688605) b!3969169))

(assert (= (and d!1175999 (not c!688605)) b!3969170))

(declare-fun m!4539607 () Bool)

(assert (=> b!3969170 m!4539607))

(assert (=> b!3969033 d!1175999))

(assert (=> b!3969033 d!1175879))

(declare-fun d!1176001 () Bool)

(declare-fun lt!1390240 () Int)

(assert (=> d!1176001 (>= lt!1390240 0)))

(declare-fun e!2458470 () Int)

(assert (=> d!1176001 (= lt!1390240 e!2458470)))

(declare-fun c!688606 () Bool)

(assert (=> d!1176001 (= c!688606 ((_ is Nil!42324) newSuffixResult!27))))

(assert (=> d!1176001 (= (size!31677 newSuffixResult!27) lt!1390240)))

(declare-fun b!3969171 () Bool)

(assert (=> b!3969171 (= e!2458470 0)))

(declare-fun b!3969172 () Bool)

(assert (=> b!3969172 (= e!2458470 (+ 1 (size!31677 (t!330785 newSuffixResult!27))))))

(assert (= (and d!1176001 c!688606) b!3969171))

(assert (= (and d!1176001 (not c!688606)) b!3969172))

(declare-fun m!4539609 () Bool)

(assert (=> b!3969172 m!4539609))

(assert (=> b!3969033 d!1176001))

(declare-fun d!1176003 () Bool)

(declare-fun charsToInt!0 (List!42449) (_ BitVec 32))

(assert (=> d!1176003 (= (inv!16 (value!210102 token!484)) (= (charsToInt!0 (text!48593 (value!210102 token!484))) (value!210093 (value!210102 token!484))))))

(declare-fun bs!587556 () Bool)

(assert (= bs!587556 d!1176003))

(declare-fun m!4539611 () Bool)

(assert (=> bs!587556 m!4539611))

(assert (=> b!3968869 d!1176003))

(declare-fun d!1176005 () Bool)

(declare-fun charsToBigInt!1 (List!42449) Int)

(assert (=> d!1176005 (= (inv!17 (value!210102 token!484)) (= (charsToBigInt!1 (text!48594 (value!210102 token!484))) (value!210094 (value!210102 token!484))))))

(declare-fun bs!587557 () Bool)

(assert (= bs!587557 d!1176005))

(declare-fun m!4539613 () Bool)

(assert (=> bs!587557 m!4539613))

(assert (=> b!3968868 d!1176005))

(declare-fun d!1176007 () Bool)

(assert (=> d!1176007 (= (list!15702 lt!1390201) (list!15704 (c!688544 lt!1390201)))))

(declare-fun bs!587558 () Bool)

(assert (= bs!587558 d!1176007))

(declare-fun m!4539615 () Bool)

(assert (=> bs!587558 m!4539615))

(assert (=> d!1175883 d!1176007))

(declare-fun d!1176009 () Bool)

(declare-fun lt!1390241 () Int)

(assert (=> d!1176009 (>= lt!1390241 0)))

(declare-fun e!2458471 () Int)

(assert (=> d!1176009 (= lt!1390241 e!2458471)))

(declare-fun c!688607 () Bool)

(assert (=> d!1176009 (= c!688607 ((_ is Nil!42324) (t!330785 prefix!494)))))

(assert (=> d!1176009 (= (size!31677 (t!330785 prefix!494)) lt!1390241)))

(declare-fun b!3969173 () Bool)

(assert (=> b!3969173 (= e!2458471 0)))

(declare-fun b!3969174 () Bool)

(assert (=> b!3969174 (= e!2458471 (+ 1 (size!31677 (t!330785 (t!330785 prefix!494)))))))

(assert (= (and d!1176009 c!688607) b!3969173))

(assert (= (and d!1176009 (not c!688607)) b!3969174))

(declare-fun m!4539617 () Bool)

(assert (=> b!3969174 m!4539617))

(assert (=> b!3968878 d!1176009))

(declare-fun d!1176011 () Bool)

(declare-fun res!1606641 () Bool)

(declare-fun e!2458476 () Bool)

(assert (=> d!1176011 (=> res!1606641 e!2458476)))

(assert (=> d!1176011 (= res!1606641 ((_ is Nil!42326) rules!2999))))

(assert (=> d!1176011 (= (noDuplicateTag!2597 thiss!21717 rules!2999 Nil!42327) e!2458476)))

(declare-fun b!3969179 () Bool)

(declare-fun e!2458477 () Bool)

(assert (=> b!3969179 (= e!2458476 e!2458477)))

(declare-fun res!1606642 () Bool)

(assert (=> b!3969179 (=> (not res!1606642) (not e!2458477))))

(declare-fun contains!8441 (List!42451 String!48108) Bool)

(assert (=> b!3969179 (= res!1606642 (not (contains!8441 Nil!42327 (tag!7508 (h!47746 rules!2999)))))))

(declare-fun b!3969180 () Bool)

(assert (=> b!3969180 (= e!2458477 (noDuplicateTag!2597 thiss!21717 (t!330787 rules!2999) (Cons!42327 (tag!7508 (h!47746 rules!2999)) Nil!42327)))))

(assert (= (and d!1176011 (not res!1606641)) b!3969179))

(assert (= (and b!3969179 res!1606642) b!3969180))

(declare-fun m!4539619 () Bool)

(assert (=> b!3969179 m!4539619))

(declare-fun m!4539621 () Bool)

(assert (=> b!3969180 m!4539621))

(assert (=> b!3968845 d!1176011))

(declare-fun d!1176013 () Bool)

(declare-fun res!1606647 () Bool)

(declare-fun e!2458482 () Bool)

(assert (=> d!1176013 (=> res!1606647 e!2458482)))

(assert (=> d!1176013 (= res!1606647 ((_ is Nil!42326) rules!2999))))

(assert (=> d!1176013 (= (forall!8331 rules!2999 lambda!126845) e!2458482)))

(declare-fun b!3969185 () Bool)

(declare-fun e!2458483 () Bool)

(assert (=> b!3969185 (= e!2458482 e!2458483)))

(declare-fun res!1606648 () Bool)

(assert (=> b!3969185 (=> (not res!1606648) (not e!2458483))))

(declare-fun dynLambda!18063 (Int Rule!13096) Bool)

(assert (=> b!3969185 (= res!1606648 (dynLambda!18063 lambda!126845 (h!47746 rules!2999)))))

(declare-fun b!3969186 () Bool)

(assert (=> b!3969186 (= e!2458483 (forall!8331 (t!330787 rules!2999) lambda!126845))))

(assert (= (and d!1176013 (not res!1606647)) b!3969185))

(assert (= (and b!3969185 res!1606648) b!3969186))

(declare-fun b_lambda!116039 () Bool)

(assert (=> (not b_lambda!116039) (not b!3969185)))

(declare-fun m!4539623 () Bool)

(assert (=> b!3969185 m!4539623))

(declare-fun m!4539625 () Bool)

(assert (=> b!3969186 m!4539625))

(assert (=> d!1175891 d!1176013))

(declare-fun bs!587559 () Bool)

(declare-fun d!1176015 () Bool)

(assert (= bs!587559 (and d!1176015 d!1175975)))

(declare-fun lambda!126857 () Int)

(assert (=> bs!587559 (= (= (toValue!9132 (transformation!6648 (rule!9636 token!484))) (toValue!9132 (transformation!6648 (h!47746 rules!2999)))) (= lambda!126857 lambda!126848))))

(assert (=> d!1176015 true))

(assert (=> d!1176015 (< (dynLambda!18058 order!22415 (toValue!9132 (transformation!6648 (rule!9636 token!484)))) (dynLambda!18059 order!22417 lambda!126857))))

(assert (=> d!1176015 (= (equivClasses!2762 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (toValue!9132 (transformation!6648 (rule!9636 token!484)))) (Forall2!1062 lambda!126857))))

(declare-fun bs!587560 () Bool)

(assert (= bs!587560 d!1176015))

(declare-fun m!4539627 () Bool)

(assert (=> bs!587560 m!4539627))

(assert (=> b!3969029 d!1176015))

(declare-fun d!1176017 () Bool)

(declare-fun lt!1390242 () Int)

(assert (=> d!1176017 (>= lt!1390242 0)))

(declare-fun e!2458484 () Int)

(assert (=> d!1176017 (= lt!1390242 e!2458484)))

(declare-fun c!688608 () Bool)

(assert (=> d!1176017 (= c!688608 ((_ is Nil!42324) (t!330785 newSuffix!27)))))

(assert (=> d!1176017 (= (size!31677 (t!330785 newSuffix!27)) lt!1390242)))

(declare-fun b!3969187 () Bool)

(assert (=> b!3969187 (= e!2458484 0)))

(declare-fun b!3969188 () Bool)

(assert (=> b!3969188 (= e!2458484 (+ 1 (size!31677 (t!330785 (t!330785 newSuffix!27)))))))

(assert (= (and d!1176017 c!688608) b!3969187))

(assert (= (and d!1176017 (not c!688608)) b!3969188))

(declare-fun m!4539629 () Bool)

(assert (=> b!3969188 m!4539629))

(assert (=> b!3969026 d!1176017))

(declare-fun d!1176019 () Bool)

(assert (=> d!1176019 (= (isEmpty!25332 (originalCharacters!7248 token!484)) ((_ is Nil!42324) (originalCharacters!7248 token!484)))))

(assert (=> d!1175887 d!1176019))

(declare-fun d!1176021 () Bool)

(declare-fun c!688609 () Bool)

(assert (=> d!1176021 (= c!688609 ((_ is Nil!42324) lt!1390222))))

(declare-fun e!2458485 () (InoxSet C!23292))

(assert (=> d!1176021 (= (content!6431 lt!1390222) e!2458485)))

(declare-fun b!3969189 () Bool)

(assert (=> b!3969189 (= e!2458485 ((as const (Array C!23292 Bool)) false))))

(declare-fun b!3969190 () Bool)

(assert (=> b!3969190 (= e!2458485 ((_ map or) (store ((as const (Array C!23292 Bool)) false) (h!47744 lt!1390222) true) (content!6431 (t!330785 lt!1390222))))))

(assert (= (and d!1176021 c!688609) b!3969189))

(assert (= (and d!1176021 (not c!688609)) b!3969190))

(declare-fun m!4539631 () Bool)

(assert (=> b!3969190 m!4539631))

(declare-fun m!4539633 () Bool)

(assert (=> b!3969190 m!4539633))

(assert (=> d!1175931 d!1176021))

(assert (=> d!1175931 d!1175943))

(declare-fun d!1176023 () Bool)

(declare-fun c!688610 () Bool)

(assert (=> d!1176023 (= c!688610 ((_ is Nil!42324) newSuffix!27))))

(declare-fun e!2458486 () (InoxSet C!23292))

(assert (=> d!1176023 (= (content!6431 newSuffix!27) e!2458486)))

(declare-fun b!3969191 () Bool)

(assert (=> b!3969191 (= e!2458486 ((as const (Array C!23292 Bool)) false))))

(declare-fun b!3969192 () Bool)

(assert (=> b!3969192 (= e!2458486 ((_ map or) (store ((as const (Array C!23292 Bool)) false) (h!47744 newSuffix!27) true) (content!6431 (t!330785 newSuffix!27))))))

(assert (= (and d!1176023 c!688610) b!3969191))

(assert (= (and d!1176023 (not c!688610)) b!3969192))

(declare-fun m!4539635 () Bool)

(assert (=> b!3969192 m!4539635))

(declare-fun m!4539637 () Bool)

(assert (=> b!3969192 m!4539637))

(assert (=> d!1175931 d!1176023))

(declare-fun b!3969193 () Bool)

(declare-fun e!2458487 () Bool)

(declare-fun tp!1209811 () Bool)

(assert (=> b!3969193 (= e!2458487 (and tp_is_empty!20077 tp!1209811))))

(assert (=> b!3969077 (= tp!1209798 e!2458487)))

(assert (= (and b!3969077 ((_ is Cons!42324) (t!330785 (t!330785 suffix!1299)))) b!3969193))

(declare-fun b!3969194 () Bool)

(declare-fun e!2458488 () Bool)

(declare-fun tp!1209812 () Bool)

(assert (=> b!3969194 (= e!2458488 (and tp_is_empty!20077 tp!1209812))))

(assert (=> b!3969057 (= tp!1209776 e!2458488)))

(assert (= (and b!3969057 ((_ is Cons!42324) (t!330785 (t!330785 newSuffix!27)))) b!3969194))

(declare-fun b!3969195 () Bool)

(declare-fun e!2458489 () Bool)

(declare-fun tp!1209813 () Bool)

(assert (=> b!3969195 (= e!2458489 (and tp_is_empty!20077 tp!1209813))))

(assert (=> b!3969076 (= tp!1209797 e!2458489)))

(assert (= (and b!3969076 ((_ is Cons!42324) (t!330785 (originalCharacters!7248 token!484)))) b!3969195))

(declare-fun b!3969196 () Bool)

(declare-fun e!2458490 () Bool)

(declare-fun tp!1209814 () Bool)

(assert (=> b!3969196 (= e!2458490 (and tp_is_empty!20077 tp!1209814))))

(assert (=> b!3969056 (= tp!1209775 e!2458490)))

(assert (= (and b!3969056 ((_ is Cons!42324) (t!330785 (t!330785 newSuffixResult!27)))) b!3969196))

(declare-fun b!3969197 () Bool)

(declare-fun e!2458491 () Bool)

(declare-fun tp!1209815 () Bool)

(assert (=> b!3969197 (= e!2458491 (and tp_is_empty!20077 tp!1209815))))

(assert (=> b!3969055 (= tp!1209774 e!2458491)))

(assert (= (and b!3969055 ((_ is Cons!42324) (t!330785 (t!330785 prefix!494)))) b!3969197))

(declare-fun b!3969200 () Bool)

(declare-fun b_free!109849 () Bool)

(declare-fun b_next!110553 () Bool)

(assert (=> b!3969200 (= b_free!109849 (not b_next!110553))))

(declare-fun tp!1209818 () Bool)

(declare-fun b_and!305079 () Bool)

(assert (=> b!3969200 (= tp!1209818 b_and!305079)))

(declare-fun b_free!109851 () Bool)

(declare-fun b_next!110555 () Bool)

(assert (=> b!3969200 (= b_free!109851 (not b_next!110555))))

(declare-fun t!330804 () Bool)

(declare-fun tb!239613 () Bool)

(assert (=> (and b!3969200 (= (toChars!8991 (transformation!6648 (h!47746 (t!330787 (t!330787 rules!2999))))) (toChars!8991 (transformation!6648 (rule!9636 token!484)))) t!330804) tb!239613))

(declare-fun result!290134 () Bool)

(assert (= result!290134 result!290112))

(assert (=> d!1175883 t!330804))

(assert (=> b!3968910 t!330804))

(declare-fun b_and!305081 () Bool)

(declare-fun tp!1209816 () Bool)

(assert (=> b!3969200 (= tp!1209816 (and (=> t!330804 result!290134) b_and!305081))))

(declare-fun e!2458494 () Bool)

(assert (=> b!3969200 (= e!2458494 (and tp!1209818 tp!1209816))))

(declare-fun tp!1209819 () Bool)

(declare-fun b!3969199 () Bool)

(declare-fun e!2458492 () Bool)

(assert (=> b!3969199 (= e!2458492 (and tp!1209819 (inv!56555 (tag!7508 (h!47746 (t!330787 (t!330787 rules!2999))))) (inv!56559 (transformation!6648 (h!47746 (t!330787 (t!330787 rules!2999))))) e!2458494))))

(declare-fun b!3969198 () Bool)

(declare-fun e!2458495 () Bool)

(declare-fun tp!1209817 () Bool)

(assert (=> b!3969198 (= e!2458495 (and e!2458492 tp!1209817))))

(assert (=> b!3969086 (= tp!1209808 e!2458495)))

(assert (= b!3969199 b!3969200))

(assert (= b!3969198 b!3969199))

(assert (= (and b!3969086 ((_ is Cons!42326) (t!330787 (t!330787 rules!2999)))) b!3969198))

(declare-fun m!4539639 () Bool)

(assert (=> b!3969199 m!4539639))

(declare-fun m!4539641 () Bool)

(assert (=> b!3969199 m!4539641))

(declare-fun b!3969203 () Bool)

(declare-fun e!2458496 () Bool)

(declare-fun tp!1209823 () Bool)

(assert (=> b!3969203 (= e!2458496 tp!1209823)))

(declare-fun b!3969201 () Bool)

(assert (=> b!3969201 (= e!2458496 tp_is_empty!20077)))

(assert (=> b!3969071 (= tp!1209787 e!2458496)))

(declare-fun b!3969202 () Bool)

(declare-fun tp!1209824 () Bool)

(declare-fun tp!1209821 () Bool)

(assert (=> b!3969202 (= e!2458496 (and tp!1209824 tp!1209821))))

(declare-fun b!3969204 () Bool)

(declare-fun tp!1209820 () Bool)

(declare-fun tp!1209822 () Bool)

(assert (=> b!3969204 (= e!2458496 (and tp!1209820 tp!1209822))))

(assert (= (and b!3969071 ((_ is ElementMatch!11553) (regOne!23619 (regex!6648 (rule!9636 token!484))))) b!3969201))

(assert (= (and b!3969071 ((_ is Concat!18432) (regOne!23619 (regex!6648 (rule!9636 token!484))))) b!3969202))

(assert (= (and b!3969071 ((_ is Star!11553) (regOne!23619 (regex!6648 (rule!9636 token!484))))) b!3969203))

(assert (= (and b!3969071 ((_ is Union!11553) (regOne!23619 (regex!6648 (rule!9636 token!484))))) b!3969204))

(declare-fun b!3969207 () Bool)

(declare-fun e!2458497 () Bool)

(declare-fun tp!1209828 () Bool)

(assert (=> b!3969207 (= e!2458497 tp!1209828)))

(declare-fun b!3969205 () Bool)

(assert (=> b!3969205 (= e!2458497 tp_is_empty!20077)))

(assert (=> b!3969071 (= tp!1209789 e!2458497)))

(declare-fun b!3969206 () Bool)

(declare-fun tp!1209829 () Bool)

(declare-fun tp!1209826 () Bool)

(assert (=> b!3969206 (= e!2458497 (and tp!1209829 tp!1209826))))

(declare-fun b!3969208 () Bool)

(declare-fun tp!1209825 () Bool)

(declare-fun tp!1209827 () Bool)

(assert (=> b!3969208 (= e!2458497 (and tp!1209825 tp!1209827))))

(assert (= (and b!3969071 ((_ is ElementMatch!11553) (regTwo!23619 (regex!6648 (rule!9636 token!484))))) b!3969205))

(assert (= (and b!3969071 ((_ is Concat!18432) (regTwo!23619 (regex!6648 (rule!9636 token!484))))) b!3969206))

(assert (= (and b!3969071 ((_ is Star!11553) (regTwo!23619 (regex!6648 (rule!9636 token!484))))) b!3969207))

(assert (= (and b!3969071 ((_ is Union!11553) (regTwo!23619 (regex!6648 (rule!9636 token!484))))) b!3969208))

(declare-fun b!3969211 () Bool)

(declare-fun e!2458498 () Bool)

(declare-fun tp!1209833 () Bool)

(assert (=> b!3969211 (= e!2458498 tp!1209833)))

(declare-fun b!3969209 () Bool)

(assert (=> b!3969209 (= e!2458498 tp_is_empty!20077)))

(assert (=> b!3969087 (= tp!1209810 e!2458498)))

(declare-fun b!3969210 () Bool)

(declare-fun tp!1209834 () Bool)

(declare-fun tp!1209831 () Bool)

(assert (=> b!3969210 (= e!2458498 (and tp!1209834 tp!1209831))))

(declare-fun b!3969212 () Bool)

(declare-fun tp!1209830 () Bool)

(declare-fun tp!1209832 () Bool)

(assert (=> b!3969212 (= e!2458498 (and tp!1209830 tp!1209832))))

(assert (= (and b!3969087 ((_ is ElementMatch!11553) (regex!6648 (h!47746 (t!330787 rules!2999))))) b!3969209))

(assert (= (and b!3969087 ((_ is Concat!18432) (regex!6648 (h!47746 (t!330787 rules!2999))))) b!3969210))

(assert (= (and b!3969087 ((_ is Star!11553) (regex!6648 (h!47746 (t!330787 rules!2999))))) b!3969211))

(assert (= (and b!3969087 ((_ is Union!11553) (regex!6648 (h!47746 (t!330787 rules!2999))))) b!3969212))

(declare-fun b!3969215 () Bool)

(declare-fun e!2458499 () Bool)

(declare-fun tp!1209838 () Bool)

(assert (=> b!3969215 (= e!2458499 tp!1209838)))

(declare-fun b!3969213 () Bool)

(assert (=> b!3969213 (= e!2458499 tp_is_empty!20077)))

(assert (=> b!3969074 (= tp!1209795 e!2458499)))

(declare-fun b!3969214 () Bool)

(declare-fun tp!1209839 () Bool)

(declare-fun tp!1209836 () Bool)

(assert (=> b!3969214 (= e!2458499 (and tp!1209839 tp!1209836))))

(declare-fun b!3969216 () Bool)

(declare-fun tp!1209835 () Bool)

(declare-fun tp!1209837 () Bool)

(assert (=> b!3969216 (= e!2458499 (and tp!1209835 tp!1209837))))

(assert (= (and b!3969074 ((_ is ElementMatch!11553) (reg!11882 (regex!6648 (h!47746 rules!2999))))) b!3969213))

(assert (= (and b!3969074 ((_ is Concat!18432) (reg!11882 (regex!6648 (h!47746 rules!2999))))) b!3969214))

(assert (= (and b!3969074 ((_ is Star!11553) (reg!11882 (regex!6648 (h!47746 rules!2999))))) b!3969215))

(assert (= (and b!3969074 ((_ is Union!11553) (reg!11882 (regex!6648 (h!47746 rules!2999))))) b!3969216))

(declare-fun tp!1209847 () Bool)

(declare-fun e!2458505 () Bool)

(declare-fun b!3969225 () Bool)

(declare-fun tp!1209848 () Bool)

(assert (=> b!3969225 (= e!2458505 (and (inv!56562 (left!32069 (c!688544 (dynLambda!18057 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (value!210102 token!484))))) tp!1209847 (inv!56562 (right!32399 (c!688544 (dynLambda!18057 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (value!210102 token!484))))) tp!1209848))))

(declare-fun b!3969227 () Bool)

(declare-fun e!2458504 () Bool)

(declare-fun tp!1209846 () Bool)

(assert (=> b!3969227 (= e!2458504 tp!1209846)))

(declare-fun b!3969226 () Bool)

(declare-fun inv!56566 (IArray!25723) Bool)

(assert (=> b!3969226 (= e!2458505 (and (inv!56566 (xs!16165 (c!688544 (dynLambda!18057 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (value!210102 token!484))))) e!2458504))))

(assert (=> b!3968890 (= tp!1209732 (and (inv!56562 (c!688544 (dynLambda!18057 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (value!210102 token!484)))) e!2458505))))

(assert (= (and b!3968890 ((_ is Node!12859) (c!688544 (dynLambda!18057 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (value!210102 token!484))))) b!3969225))

(assert (= b!3969226 b!3969227))

(assert (= (and b!3968890 ((_ is Leaf!19890) (c!688544 (dynLambda!18057 (toChars!8991 (transformation!6648 (rule!9636 token!484))) (value!210102 token!484))))) b!3969226))

(declare-fun m!4539643 () Bool)

(assert (=> b!3969225 m!4539643))

(declare-fun m!4539645 () Bool)

(assert (=> b!3969225 m!4539645))

(declare-fun m!4539647 () Bool)

(assert (=> b!3969226 m!4539647))

(assert (=> b!3968890 m!4539351))

(declare-fun b!3969230 () Bool)

(declare-fun e!2458506 () Bool)

(declare-fun tp!1209852 () Bool)

(assert (=> b!3969230 (= e!2458506 tp!1209852)))

(declare-fun b!3969228 () Bool)

(assert (=> b!3969228 (= e!2458506 tp_is_empty!20077)))

(assert (=> b!3969070 (= tp!1209790 e!2458506)))

(declare-fun b!3969229 () Bool)

(declare-fun tp!1209853 () Bool)

(declare-fun tp!1209850 () Bool)

(assert (=> b!3969229 (= e!2458506 (and tp!1209853 tp!1209850))))

(declare-fun b!3969231 () Bool)

(declare-fun tp!1209849 () Bool)

(declare-fun tp!1209851 () Bool)

(assert (=> b!3969231 (= e!2458506 (and tp!1209849 tp!1209851))))

(assert (= (and b!3969070 ((_ is ElementMatch!11553) (reg!11882 (regex!6648 (rule!9636 token!484))))) b!3969228))

(assert (= (and b!3969070 ((_ is Concat!18432) (reg!11882 (regex!6648 (rule!9636 token!484))))) b!3969229))

(assert (= (and b!3969070 ((_ is Star!11553) (reg!11882 (regex!6648 (rule!9636 token!484))))) b!3969230))

(assert (= (and b!3969070 ((_ is Union!11553) (reg!11882 (regex!6648 (rule!9636 token!484))))) b!3969231))

(declare-fun b!3969234 () Bool)

(declare-fun e!2458507 () Bool)

(declare-fun tp!1209857 () Bool)

(assert (=> b!3969234 (= e!2458507 tp!1209857)))

(declare-fun b!3969232 () Bool)

(assert (=> b!3969232 (= e!2458507 tp_is_empty!20077)))

(assert (=> b!3969075 (= tp!1209792 e!2458507)))

(declare-fun b!3969233 () Bool)

(declare-fun tp!1209858 () Bool)

(declare-fun tp!1209855 () Bool)

(assert (=> b!3969233 (= e!2458507 (and tp!1209858 tp!1209855))))

(declare-fun b!3969235 () Bool)

(declare-fun tp!1209854 () Bool)

(declare-fun tp!1209856 () Bool)

(assert (=> b!3969235 (= e!2458507 (and tp!1209854 tp!1209856))))

(assert (= (and b!3969075 ((_ is ElementMatch!11553) (regOne!23619 (regex!6648 (h!47746 rules!2999))))) b!3969232))

(assert (= (and b!3969075 ((_ is Concat!18432) (regOne!23619 (regex!6648 (h!47746 rules!2999))))) b!3969233))

(assert (= (and b!3969075 ((_ is Star!11553) (regOne!23619 (regex!6648 (h!47746 rules!2999))))) b!3969234))

(assert (= (and b!3969075 ((_ is Union!11553) (regOne!23619 (regex!6648 (h!47746 rules!2999))))) b!3969235))

(declare-fun b!3969238 () Bool)

(declare-fun e!2458508 () Bool)

(declare-fun tp!1209862 () Bool)

(assert (=> b!3969238 (= e!2458508 tp!1209862)))

(declare-fun b!3969236 () Bool)

(assert (=> b!3969236 (= e!2458508 tp_is_empty!20077)))

(assert (=> b!3969075 (= tp!1209794 e!2458508)))

(declare-fun b!3969237 () Bool)

(declare-fun tp!1209863 () Bool)

(declare-fun tp!1209860 () Bool)

(assert (=> b!3969237 (= e!2458508 (and tp!1209863 tp!1209860))))

(declare-fun b!3969239 () Bool)

(declare-fun tp!1209859 () Bool)

(declare-fun tp!1209861 () Bool)

(assert (=> b!3969239 (= e!2458508 (and tp!1209859 tp!1209861))))

(assert (= (and b!3969075 ((_ is ElementMatch!11553) (regTwo!23619 (regex!6648 (h!47746 rules!2999))))) b!3969236))

(assert (= (and b!3969075 ((_ is Concat!18432) (regTwo!23619 (regex!6648 (h!47746 rules!2999))))) b!3969237))

(assert (= (and b!3969075 ((_ is Star!11553) (regTwo!23619 (regex!6648 (h!47746 rules!2999))))) b!3969238))

(assert (= (and b!3969075 ((_ is Union!11553) (regTwo!23619 (regex!6648 (h!47746 rules!2999))))) b!3969239))

(declare-fun b!3969242 () Bool)

(declare-fun e!2458509 () Bool)

(declare-fun tp!1209867 () Bool)

(assert (=> b!3969242 (= e!2458509 tp!1209867)))

(declare-fun b!3969240 () Bool)

(assert (=> b!3969240 (= e!2458509 tp_is_empty!20077)))

(assert (=> b!3969073 (= tp!1209796 e!2458509)))

(declare-fun b!3969241 () Bool)

(declare-fun tp!1209868 () Bool)

(declare-fun tp!1209865 () Bool)

(assert (=> b!3969241 (= e!2458509 (and tp!1209868 tp!1209865))))

(declare-fun b!3969243 () Bool)

(declare-fun tp!1209864 () Bool)

(declare-fun tp!1209866 () Bool)

(assert (=> b!3969243 (= e!2458509 (and tp!1209864 tp!1209866))))

(assert (= (and b!3969073 ((_ is ElementMatch!11553) (regOne!23618 (regex!6648 (h!47746 rules!2999))))) b!3969240))

(assert (= (and b!3969073 ((_ is Concat!18432) (regOne!23618 (regex!6648 (h!47746 rules!2999))))) b!3969241))

(assert (= (and b!3969073 ((_ is Star!11553) (regOne!23618 (regex!6648 (h!47746 rules!2999))))) b!3969242))

(assert (= (and b!3969073 ((_ is Union!11553) (regOne!23618 (regex!6648 (h!47746 rules!2999))))) b!3969243))

(declare-fun b!3969246 () Bool)

(declare-fun e!2458510 () Bool)

(declare-fun tp!1209872 () Bool)

(assert (=> b!3969246 (= e!2458510 tp!1209872)))

(declare-fun b!3969244 () Bool)

(assert (=> b!3969244 (= e!2458510 tp_is_empty!20077)))

(assert (=> b!3969073 (= tp!1209793 e!2458510)))

(declare-fun b!3969245 () Bool)

(declare-fun tp!1209873 () Bool)

(declare-fun tp!1209870 () Bool)

(assert (=> b!3969245 (= e!2458510 (and tp!1209873 tp!1209870))))

(declare-fun b!3969247 () Bool)

(declare-fun tp!1209869 () Bool)

(declare-fun tp!1209871 () Bool)

(assert (=> b!3969247 (= e!2458510 (and tp!1209869 tp!1209871))))

(assert (= (and b!3969073 ((_ is ElementMatch!11553) (regTwo!23618 (regex!6648 (h!47746 rules!2999))))) b!3969244))

(assert (= (and b!3969073 ((_ is Concat!18432) (regTwo!23618 (regex!6648 (h!47746 rules!2999))))) b!3969245))

(assert (= (and b!3969073 ((_ is Star!11553) (regTwo!23618 (regex!6648 (h!47746 rules!2999))))) b!3969246))

(assert (= (and b!3969073 ((_ is Union!11553) (regTwo!23618 (regex!6648 (h!47746 rules!2999))))) b!3969247))

(declare-fun b!3969250 () Bool)

(declare-fun e!2458511 () Bool)

(declare-fun tp!1209877 () Bool)

(assert (=> b!3969250 (= e!2458511 tp!1209877)))

(declare-fun b!3969248 () Bool)

(assert (=> b!3969248 (= e!2458511 tp_is_empty!20077)))

(assert (=> b!3969069 (= tp!1209791 e!2458511)))

(declare-fun b!3969249 () Bool)

(declare-fun tp!1209878 () Bool)

(declare-fun tp!1209875 () Bool)

(assert (=> b!3969249 (= e!2458511 (and tp!1209878 tp!1209875))))

(declare-fun b!3969251 () Bool)

(declare-fun tp!1209874 () Bool)

(declare-fun tp!1209876 () Bool)

(assert (=> b!3969251 (= e!2458511 (and tp!1209874 tp!1209876))))

(assert (= (and b!3969069 ((_ is ElementMatch!11553) (regOne!23618 (regex!6648 (rule!9636 token!484))))) b!3969248))

(assert (= (and b!3969069 ((_ is Concat!18432) (regOne!23618 (regex!6648 (rule!9636 token!484))))) b!3969249))

(assert (= (and b!3969069 ((_ is Star!11553) (regOne!23618 (regex!6648 (rule!9636 token!484))))) b!3969250))

(assert (= (and b!3969069 ((_ is Union!11553) (regOne!23618 (regex!6648 (rule!9636 token!484))))) b!3969251))

(declare-fun b!3969257 () Bool)

(declare-fun e!2458514 () Bool)

(declare-fun tp!1209882 () Bool)

(assert (=> b!3969257 (= e!2458514 tp!1209882)))

(declare-fun b!3969253 () Bool)

(assert (=> b!3969253 (= e!2458514 tp_is_empty!20077)))

(assert (=> b!3969069 (= tp!1209788 e!2458514)))

(declare-fun b!3969255 () Bool)

(declare-fun tp!1209883 () Bool)

(declare-fun tp!1209880 () Bool)

(assert (=> b!3969255 (= e!2458514 (and tp!1209883 tp!1209880))))

(declare-fun b!3969259 () Bool)

(declare-fun tp!1209879 () Bool)

(declare-fun tp!1209881 () Bool)

(assert (=> b!3969259 (= e!2458514 (and tp!1209879 tp!1209881))))

(assert (= (and b!3969069 ((_ is ElementMatch!11553) (regTwo!23618 (regex!6648 (rule!9636 token!484))))) b!3969253))

(assert (= (and b!3969069 ((_ is Concat!18432) (regTwo!23618 (regex!6648 (rule!9636 token!484))))) b!3969255))

(assert (= (and b!3969069 ((_ is Star!11553) (regTwo!23618 (regex!6648 (rule!9636 token!484))))) b!3969257))

(assert (= (and b!3969069 ((_ is Union!11553) (regTwo!23618 (regex!6648 (rule!9636 token!484))))) b!3969259))

(declare-fun b_lambda!116041 () Bool)

(assert (= b_lambda!116039 (or d!1175891 b_lambda!116041)))

(declare-fun bs!587561 () Bool)

(declare-fun d!1176027 () Bool)

(assert (= bs!587561 (and d!1176027 d!1175891)))

(assert (=> bs!587561 (= (dynLambda!18063 lambda!126845 (h!47746 rules!2999)) (ruleValid!2584 thiss!21717 (h!47746 rules!2999)))))

(assert (=> bs!587561 m!4539441))

(assert (=> b!3969185 d!1176027))

(check-sat b_and!305047 (not b!3969150) (not b!3969226) (not d!1175981) (not d!1175985) (not b_next!110549) (not b!3969235) (not b!3969198) (not b!3969166) (not b!3969172) (not b!3969131) (not b!3969140) (not b!3969239) (not b!3969104) (not b!3969233) (not d!1176015) (not b!3969096) (not b!3969129) (not b!3969196) (not b!3969138) (not b!3969194) (not d!1175977) b_and!305063 (not b_next!110551) (not b!3969193) (not b!3969257) (not d!1175997) (not b!3969098) (not b!3969215) (not b!3969179) (not b!3969242) (not b_next!110539) (not b!3969151) (not b!3969214) (not d!1176007) (not b!3969188) (not b_next!110553) (not b!3969243) (not b!3969174) (not b_lambda!116035) b_and!305077 (not b!3969106) (not b!3969250) b_and!305081 (not b!3969192) (not b!3969234) (not b!3969110) (not b!3969237) (not d!1175963) (not d!1175969) (not b_next!110537) (not b!3969170) (not d!1176005) (not b!3969108) (not b!3969164) (not b!3969230) (not b!3969122) (not b!3969121) (not b_lambda!116041) (not b!3969125) (not b!3969202) (not d!1175995) (not b!3969251) tp_is_empty!20077 (not b!3969229) (not b!3969246) (not d!1175983) (not b_next!110543) (not b!3969245) b_and!305075 (not b!3969160) (not b!3969159) (not b_lambda!116037) (not b!3969186) (not b_next!110541) (not d!1175961) (not b!3969231) (not b_next!110555) (not b!3969241) (not d!1175975) b_and!305065 b_and!305079 (not b!3969128) (not d!1175991) (not b!3969197) (not b!3969255) (not b!3969206) (not b!3969167) (not b!3969190) (not b!3969216) (not b!3969207) (not b!3969211) (not b!3969094) (not b!3969162) (not b!3969109) (not b!3969212) (not b!3969203) (not b!3969208) (not d!1175993) (not b!3969227) (not b!3969157) (not b!3969124) (not b!3969204) (not b!3969249) (not d!1175979) (not b!3968890) (not b!3969199) (not b!3969238) (not b!3969195) (not b!3969247) (not b!3969210) b_and!305051 (not d!1176003) (not b!3969102) (not b!3969180) (not bs!587561) (not b!3969225) (not b!3969100) (not b!3969259))
(check-sat (not b_next!110549) (not b_next!110539) b_and!305081 (not b_next!110537) b_and!305047 (not b_next!110541) (not b_next!110555) b_and!305051 b_and!305063 (not b_next!110551) (not b_next!110553) b_and!305077 (not b_next!110543) b_and!305075 b_and!305065 b_and!305079)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!94680 () Bool)

(assert start!94680)

(declare-fun bs!259443 () Bool)

(declare-fun b!1101173 () Bool)

(assert (= bs!259443 (and b!1101173 start!94680)))

(declare-fun lambda!43340 () Int)

(declare-fun lambda!43339 () Int)

(assert (=> bs!259443 (not (= lambda!43340 lambda!43339))))

(declare-fun b!1101184 () Bool)

(declare-fun e!697411 () Bool)

(assert (=> b!1101184 (= e!697411 true)))

(declare-fun b!1101183 () Bool)

(declare-fun e!697410 () Bool)

(assert (=> b!1101183 (= e!697410 e!697411)))

(assert (=> b!1101173 e!697410))

(assert (= b!1101183 b!1101184))

(assert (= b!1101173 b!1101183))

(declare-fun lambda!43341 () Int)

(assert (=> bs!259443 (not (= lambda!43341 lambda!43339))))

(assert (=> b!1101173 (not (= lambda!43341 lambda!43340))))

(declare-fun b!1101186 () Bool)

(declare-fun e!697413 () Bool)

(assert (=> b!1101186 (= e!697413 true)))

(declare-fun b!1101185 () Bool)

(declare-fun e!697412 () Bool)

(assert (=> b!1101185 (= e!697412 e!697413)))

(assert (=> b!1101173 e!697412))

(assert (= b!1101185 b!1101186))

(assert (= b!1101173 b!1101185))

(declare-fun lambda!43342 () Int)

(assert (=> bs!259443 (not (= lambda!43342 lambda!43339))))

(assert (=> b!1101173 (not (= lambda!43342 lambda!43340))))

(assert (=> b!1101173 (not (= lambda!43342 lambda!43341))))

(declare-fun b!1101188 () Bool)

(declare-fun e!697415 () Bool)

(assert (=> b!1101188 (= e!697415 true)))

(declare-fun b!1101187 () Bool)

(declare-fun e!697414 () Bool)

(assert (=> b!1101187 (= e!697414 e!697415)))

(assert (=> b!1101173 e!697414))

(assert (= b!1101187 b!1101188))

(assert (= b!1101173 b!1101187))

(declare-fun res!488431 () Bool)

(declare-fun e!697405 () Bool)

(assert (=> start!94680 (=> (not res!488431) (not e!697405))))

(declare-datatypes ((List!10643 0))(
  ( (Nil!10627) (Cons!10627 (h!16028 (_ BitVec 16)) (t!103975 List!10643)) )
))
(declare-datatypes ((TokenValue!1891 0))(
  ( (FloatLiteralValue!3782 (text!13682 List!10643)) (TokenValueExt!1890 (__x!7473 Int)) (Broken!9455 (value!59941 List!10643)) (Object!1906) (End!1891) (Def!1891) (Underscore!1891) (Match!1891) (Else!1891) (Error!1891) (Case!1891) (If!1891) (Extends!1891) (Abstract!1891) (Class!1891) (Val!1891) (DelimiterValue!3782 (del!1951 List!10643)) (KeywordValue!1897 (value!59942 List!10643)) (CommentValue!3782 (value!59943 List!10643)) (WhitespaceValue!3782 (value!59944 List!10643)) (IndentationValue!1891 (value!59945 List!10643)) (String!13026) (Int32!1891) (Broken!9456 (value!59946 List!10643)) (Boolean!1892) (Unit!16221) (OperatorValue!1894 (op!1951 List!10643)) (IdentifierValue!3782 (value!59947 List!10643)) (IdentifierValue!3783 (value!59948 List!10643)) (WhitespaceValue!3783 (value!59949 List!10643)) (True!3782) (False!3782) (Broken!9457 (value!59950 List!10643)) (Broken!9458 (value!59951 List!10643)) (True!3783) (RightBrace!1891) (RightBracket!1891) (Colon!1891) (Null!1891) (Comma!1891) (LeftBracket!1891) (False!3783) (LeftBrace!1891) (ImaginaryLiteralValue!1891 (text!13683 List!10643)) (StringLiteralValue!5673 (value!59952 List!10643)) (EOFValue!1891 (value!59953 List!10643)) (IdentValue!1891 (value!59954 List!10643)) (DelimiterValue!3783 (value!59955 List!10643)) (DedentValue!1891 (value!59956 List!10643)) (NewLineValue!1891 (value!59957 List!10643)) (IntegerValue!5673 (value!59958 (_ BitVec 32)) (text!13684 List!10643)) (IntegerValue!5674 (value!59959 Int) (text!13685 List!10643)) (Times!1891) (Or!1891) (Equal!1891) (Minus!1891) (Broken!9459 (value!59960 List!10643)) (And!1891) (Div!1891) (LessEqual!1891) (Mod!1891) (Concat!4985) (Not!1891) (Plus!1891) (SpaceValue!1891 (value!59961 List!10643)) (IntegerValue!5675 (value!59962 Int) (text!13686 List!10643)) (StringLiteralValue!5674 (text!13687 List!10643)) (FloatLiteralValue!3783 (text!13688 List!10643)) (BytesLiteralValue!1891 (value!59963 List!10643)) (CommentValue!3783 (value!59964 List!10643)) (StringLiteralValue!5675 (value!59965 List!10643)) (ErrorTokenValue!1891 (msg!1952 List!10643)) )
))
(declare-datatypes ((Regex!3094 0))(
  ( (ElementMatch!3094 (c!186920 (_ BitVec 16))) (Concat!4986 (regOne!6700 Regex!3094) (regTwo!6700 Regex!3094)) (EmptyExpr!3094) (Star!3094 (reg!3423 Regex!3094)) (EmptyLang!3094) (Union!3094 (regOne!6701 Regex!3094) (regTwo!6701 Regex!3094)) )
))
(declare-datatypes ((String!13027 0))(
  ( (String!13028 (value!59966 String)) )
))
(declare-datatypes ((IArray!6609 0))(
  ( (IArray!6610 (innerList!3362 List!10643)) )
))
(declare-datatypes ((Conc!3302 0))(
  ( (Node!3302 (left!9184 Conc!3302) (right!9514 Conc!3302) (csize!6834 Int) (cheight!3513 Int)) (Leaf!5221 (xs!5995 IArray!6609) (csize!6835 Int)) (Empty!3302) )
))
(declare-datatypes ((BalanceConc!6618 0))(
  ( (BalanceConc!6619 (c!186921 Conc!3302)) )
))
(declare-datatypes ((TokenValueInjection!3482 0))(
  ( (TokenValueInjection!3483 (toValue!2902 Int) (toChars!2761 Int)) )
))
(declare-datatypes ((Rule!3450 0))(
  ( (Rule!3451 (regex!1825 Regex!3094) (tag!2087 String!13027) (isSeparator!1825 Bool) (transformation!1825 TokenValueInjection!3482)) )
))
(declare-datatypes ((Token!3316 0))(
  ( (Token!3317 (value!59967 TokenValue!1891) (rule!3248 Rule!3450) (size!8249 Int) (originalCharacters!2381 List!10643)) )
))
(declare-datatypes ((List!10644 0))(
  ( (Nil!10628) (Cons!10628 (h!16029 Token!3316) (t!103976 List!10644)) )
))
(declare-datatypes ((IArray!6611 0))(
  ( (IArray!6612 (innerList!3363 List!10644)) )
))
(declare-datatypes ((Conc!3303 0))(
  ( (Node!3303 (left!9185 Conc!3303) (right!9515 Conc!3303) (csize!6836 Int) (cheight!3514 Int)) (Leaf!5222 (xs!5996 IArray!6611) (csize!6837 Int)) (Empty!3303) )
))
(declare-datatypes ((List!10645 0))(
  ( (Nil!10629) (Cons!10629 (h!16030 Rule!3450) (t!103977 List!10645)) )
))
(declare-datatypes ((BalanceConc!6620 0))(
  ( (BalanceConc!6621 (c!186922 Conc!3303)) )
))
(declare-datatypes ((PrintableTokens!366 0))(
  ( (PrintableTokens!367 (rules!9112 List!10645) (tokens!1384 BalanceConc!6620)) )
))
(declare-datatypes ((tuple2!11776 0))(
  ( (tuple2!11777 (_1!6714 Int) (_2!6714 PrintableTokens!366)) )
))
(declare-datatypes ((List!10646 0))(
  ( (Nil!10630) (Cons!10630 (h!16031 tuple2!11776) (t!103978 List!10646)) )
))
(declare-datatypes ((IArray!6613 0))(
  ( (IArray!6614 (innerList!3364 List!10646)) )
))
(declare-datatypes ((Conc!3304 0))(
  ( (Node!3304 (left!9186 Conc!3304) (right!9516 Conc!3304) (csize!6838 Int) (cheight!3515 Int)) (Leaf!5223 (xs!5997 IArray!6613) (csize!6839 Int)) (Empty!3304) )
))
(declare-datatypes ((BalanceConc!6622 0))(
  ( (BalanceConc!6623 (c!186923 Conc!3304)) )
))
(declare-fun objs!8 () BalanceConc!6622)

(declare-fun forall!2451 (BalanceConc!6622 Int) Bool)

(assert (=> start!94680 (= res!488431 (forall!2451 objs!8 lambda!43339))))

(assert (=> start!94680 e!697405))

(declare-fun e!697401 () Bool)

(declare-fun inv!13659 (BalanceConc!6622) Bool)

(assert (=> start!94680 (and (inv!13659 objs!8) e!697401)))

(declare-fun b!1101168 () Bool)

(declare-fun e!697399 () Bool)

(declare-fun forall!2452 (List!10646 Int) Bool)

(declare-fun list!3829 (BalanceConc!6622) List!10646)

(assert (=> b!1101168 (= e!697399 (forall!2452 (list!3829 objs!8) lambda!43340))))

(declare-datatypes ((Unit!16222 0))(
  ( (Unit!16223) )
))
(declare-fun lt!372032 () Unit!16222)

(declare-fun e!697403 () Unit!16222)

(assert (=> b!1101168 (= lt!372032 e!697403)))

(declare-fun c!186918 () Bool)

(assert (=> b!1101168 (= c!186918 (forall!2451 objs!8 lambda!43340))))

(declare-fun b!1101169 () Bool)

(declare-fun e!697402 () Bool)

(assert (=> b!1101169 (= e!697402 e!697399)))

(declare-fun res!488433 () Bool)

(assert (=> b!1101169 (=> (not res!488433) (not e!697399))))

(declare-fun lt!372029 () Bool)

(assert (=> b!1101169 (= res!488433 (not lt!372029))))

(declare-fun lt!372031 () Unit!16222)

(declare-fun e!697400 () Unit!16222)

(assert (=> b!1101169 (= lt!372031 e!697400)))

(declare-fun c!186919 () Bool)

(assert (=> b!1101169 (= c!186919 lt!372029)))

(declare-fun lt!372033 () BalanceConc!6622)

(declare-fun lt!372028 () tuple2!11776)

(declare-fun contains!1864 (BalanceConc!6622 tuple2!11776) Bool)

(assert (=> b!1101169 (= lt!372029 (contains!1864 lt!372033 lt!372028))))

(declare-fun b!1101170 () Bool)

(declare-fun err!2609 () Unit!16222)

(assert (=> b!1101170 (= e!697400 err!2609)))

(declare-fun lt!372030 () Unit!16222)

(declare-fun forallContained!519 (List!10646 Int tuple2!11776) Unit!16222)

(assert (=> b!1101170 (= lt!372030 (forallContained!519 (list!3829 lt!372033) lambda!43340 lt!372028))))

(assert (=> b!1101170 true))

(declare-fun b!1101171 () Bool)

(declare-fun tp!327041 () Bool)

(declare-fun inv!13660 (Conc!3304) Bool)

(assert (=> b!1101171 (= e!697401 (and (inv!13660 (c!186923 objs!8)) tp!327041))))

(declare-fun b!1101172 () Bool)

(declare-fun e!697404 () Bool)

(assert (=> b!1101172 (= e!697405 e!697404)))

(declare-fun res!488430 () Bool)

(assert (=> b!1101172 (=> (not res!488430) (not e!697404))))

(declare-fun lt!372024 () Int)

(assert (=> b!1101172 (= res!488430 (> lt!372024 1))))

(declare-fun size!8250 (BalanceConc!6622) Int)

(assert (=> b!1101172 (= lt!372024 (size!8250 objs!8))))

(assert (=> b!1101173 (= e!697404 e!697402)))

(declare-fun res!488432 () Bool)

(assert (=> b!1101173 (=> (not res!488432) (not e!697402))))

(assert (=> b!1101173 (= res!488432 (contains!1864 objs!8 lt!372028))))

(declare-fun lt!372025 () BalanceConc!6622)

(declare-fun filter!340 (BalanceConc!6622 Int) BalanceConc!6622)

(assert (=> b!1101173 (= lt!372025 (filter!340 objs!8 lambda!43342))))

(declare-fun lt!372026 () BalanceConc!6622)

(assert (=> b!1101173 (= lt!372026 (filter!340 objs!8 lambda!43341))))

(assert (=> b!1101173 (= lt!372033 (filter!340 objs!8 lambda!43340))))

(declare-fun apply!2140 (BalanceConc!6622 Int) tuple2!11776)

(assert (=> b!1101173 (= lt!372028 (apply!2140 objs!8 (ite (>= lt!372024 0) (div lt!372024 2) (- (div (- lt!372024) 2)))))))

(declare-fun b!1101174 () Bool)

(declare-fun Unit!16224 () Unit!16222)

(assert (=> b!1101174 (= e!697403 Unit!16224)))

(declare-fun b!1101175 () Bool)

(declare-fun err!2608 () Unit!16222)

(assert (=> b!1101175 (= e!697403 err!2608)))

(declare-fun lt!372027 () Unit!16222)

(assert (=> b!1101175 (= lt!372027 (forallContained!519 (list!3829 objs!8) lambda!43340 lt!372028))))

(assert (=> b!1101175 true))

(declare-fun b!1101176 () Bool)

(declare-fun Unit!16225 () Unit!16222)

(assert (=> b!1101176 (= e!697400 Unit!16225)))

(assert (= (and start!94680 res!488431) b!1101172))

(assert (= (and b!1101172 res!488430) b!1101173))

(assert (= (and b!1101173 res!488432) b!1101169))

(assert (= (and b!1101169 c!186919) b!1101170))

(assert (= (and b!1101169 (not c!186919)) b!1101176))

(assert (= (and b!1101169 res!488433) b!1101168))

(assert (= (and b!1101168 c!186918) b!1101175))

(assert (= (and b!1101168 (not c!186918)) b!1101174))

(assert (= start!94680 b!1101171))

(declare-fun m!1257103 () Bool)

(assert (=> b!1101175 m!1257103))

(assert (=> b!1101175 m!1257103))

(declare-fun m!1257105 () Bool)

(assert (=> b!1101175 m!1257105))

(declare-fun m!1257107 () Bool)

(assert (=> b!1101170 m!1257107))

(assert (=> b!1101170 m!1257107))

(declare-fun m!1257109 () Bool)

(assert (=> b!1101170 m!1257109))

(declare-fun m!1257111 () Bool)

(assert (=> b!1101173 m!1257111))

(declare-fun m!1257113 () Bool)

(assert (=> b!1101173 m!1257113))

(declare-fun m!1257115 () Bool)

(assert (=> b!1101173 m!1257115))

(declare-fun m!1257117 () Bool)

(assert (=> b!1101173 m!1257117))

(declare-fun m!1257119 () Bool)

(assert (=> b!1101173 m!1257119))

(assert (=> b!1101168 m!1257103))

(assert (=> b!1101168 m!1257103))

(declare-fun m!1257121 () Bool)

(assert (=> b!1101168 m!1257121))

(declare-fun m!1257123 () Bool)

(assert (=> b!1101168 m!1257123))

(declare-fun m!1257125 () Bool)

(assert (=> b!1101169 m!1257125))

(declare-fun m!1257127 () Bool)

(assert (=> b!1101172 m!1257127))

(declare-fun m!1257129 () Bool)

(assert (=> start!94680 m!1257129))

(declare-fun m!1257131 () Bool)

(assert (=> start!94680 m!1257131))

(declare-fun m!1257133 () Bool)

(assert (=> b!1101171 m!1257133))

(push 1)

(assert (not b!1101183))

(assert (not b!1101175))

(assert (not b!1101187))

(assert (not b!1101172))

(assert (not b!1101186))

(assert (not b!1101188))

(assert (not b!1101169))

(assert (not b!1101170))

(assert (not b!1101171))

(assert (not start!94680))

(assert (not b!1101185))

(assert (not b!1101168))

(assert (not b!1101173))

(assert (not b!1101184))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!311401 () Bool)

(declare-fun lt!372066 () Bool)

(declare-fun contains!1866 (List!10646 tuple2!11776) Bool)

(assert (=> d!311401 (= lt!372066 (contains!1866 (list!3829 lt!372033) lt!372028))))

(declare-fun contains!1867 (Conc!3304 tuple2!11776) Bool)

(assert (=> d!311401 (= lt!372066 (contains!1867 (c!186923 lt!372033) lt!372028))))

(assert (=> d!311401 (= (contains!1864 lt!372033 lt!372028) lt!372066)))

(declare-fun bs!259445 () Bool)

(assert (= bs!259445 d!311401))

(assert (=> bs!259445 m!1257107))

(assert (=> bs!259445 m!1257107))

(declare-fun m!1257167 () Bool)

(assert (=> bs!259445 m!1257167))

(declare-fun m!1257169 () Bool)

(assert (=> bs!259445 m!1257169))

(assert (=> b!1101169 d!311401))

(declare-fun d!311405 () Bool)

(declare-fun dynLambda!4676 (Int tuple2!11776) Bool)

(assert (=> d!311405 (dynLambda!4676 lambda!43340 lt!372028)))

(declare-fun lt!372069 () Unit!16222)

(declare-fun choose!7097 (List!10646 Int tuple2!11776) Unit!16222)

(assert (=> d!311405 (= lt!372069 (choose!7097 (list!3829 objs!8) lambda!43340 lt!372028))))

(declare-fun e!697449 () Bool)

(assert (=> d!311405 e!697449))

(declare-fun res!488448 () Bool)

(assert (=> d!311405 (=> (not res!488448) (not e!697449))))

(assert (=> d!311405 (= res!488448 (forall!2452 (list!3829 objs!8) lambda!43340))))

(assert (=> d!311405 (= (forallContained!519 (list!3829 objs!8) lambda!43340 lt!372028) lt!372069)))

(declare-fun b!1101230 () Bool)

(assert (=> b!1101230 (= e!697449 (contains!1866 (list!3829 objs!8) lt!372028))))

(assert (= (and d!311405 res!488448) b!1101230))

(declare-fun b_lambda!32179 () Bool)

(assert (=> (not b_lambda!32179) (not d!311405)))

(declare-fun m!1257171 () Bool)

(assert (=> d!311405 m!1257171))

(assert (=> d!311405 m!1257103))

(declare-fun m!1257173 () Bool)

(assert (=> d!311405 m!1257173))

(assert (=> d!311405 m!1257103))

(assert (=> d!311405 m!1257121))

(assert (=> b!1101230 m!1257103))

(declare-fun m!1257175 () Bool)

(assert (=> b!1101230 m!1257175))

(assert (=> b!1101175 d!311405))

(declare-fun d!311407 () Bool)

(declare-fun list!3831 (Conc!3304) List!10646)

(assert (=> d!311407 (= (list!3829 objs!8) (list!3831 (c!186923 objs!8)))))

(declare-fun bs!259446 () Bool)

(assert (= bs!259446 d!311407))

(declare-fun m!1257177 () Bool)

(assert (=> bs!259446 m!1257177))

(assert (=> b!1101175 d!311407))

(declare-fun d!311409 () Bool)

(assert (=> d!311409 (dynLambda!4676 lambda!43340 lt!372028)))

(declare-fun lt!372070 () Unit!16222)

(assert (=> d!311409 (= lt!372070 (choose!7097 (list!3829 lt!372033) lambda!43340 lt!372028))))

(declare-fun e!697454 () Bool)

(assert (=> d!311409 e!697454))

(declare-fun res!488453 () Bool)

(assert (=> d!311409 (=> (not res!488453) (not e!697454))))

(assert (=> d!311409 (= res!488453 (forall!2452 (list!3829 lt!372033) lambda!43340))))

(assert (=> d!311409 (= (forallContained!519 (list!3829 lt!372033) lambda!43340 lt!372028) lt!372070)))

(declare-fun b!1101235 () Bool)

(assert (=> b!1101235 (= e!697454 (contains!1866 (list!3829 lt!372033) lt!372028))))

(assert (= (and d!311409 res!488453) b!1101235))

(declare-fun b_lambda!32181 () Bool)

(assert (=> (not b_lambda!32181) (not d!311409)))

(assert (=> d!311409 m!1257171))

(assert (=> d!311409 m!1257107))

(declare-fun m!1257179 () Bool)

(assert (=> d!311409 m!1257179))

(assert (=> d!311409 m!1257107))

(declare-fun m!1257181 () Bool)

(assert (=> d!311409 m!1257181))

(assert (=> b!1101235 m!1257107))

(assert (=> b!1101235 m!1257167))

(assert (=> b!1101170 d!311409))

(declare-fun d!311411 () Bool)

(assert (=> d!311411 (= (list!3829 lt!372033) (list!3831 (c!186923 lt!372033)))))

(declare-fun bs!259447 () Bool)

(assert (= bs!259447 d!311411))

(declare-fun m!1257183 () Bool)

(assert (=> bs!259447 m!1257183))

(assert (=> b!1101170 d!311411))

(declare-fun d!311413 () Bool)

(declare-fun e!697459 () Bool)

(assert (=> d!311413 e!697459))

(declare-fun res!488458 () Bool)

(assert (=> d!311413 (=> (not res!488458) (not e!697459))))

(declare-fun isBalanced!913 (Conc!3304) Bool)

(declare-fun filter!342 (Conc!3304 Int) Conc!3304)

(assert (=> d!311413 (= res!488458 (isBalanced!913 (filter!342 (c!186923 objs!8) lambda!43342)))))

(declare-fun lt!372073 () BalanceConc!6622)

(assert (=> d!311413 (= lt!372073 (BalanceConc!6623 (filter!342 (c!186923 objs!8) lambda!43342)))))

(assert (=> d!311413 (= (filter!340 objs!8 lambda!43342) lt!372073)))

(declare-fun b!1101240 () Bool)

(declare-fun filter!343 (List!10646 Int) List!10646)

(assert (=> b!1101240 (= e!697459 (= (list!3829 lt!372073) (filter!343 (list!3829 objs!8) lambda!43342)))))

(assert (= (and d!311413 res!488458) b!1101240))

(declare-fun m!1257191 () Bool)

(assert (=> d!311413 m!1257191))

(assert (=> d!311413 m!1257191))

(declare-fun m!1257193 () Bool)

(assert (=> d!311413 m!1257193))

(declare-fun m!1257195 () Bool)

(assert (=> b!1101240 m!1257195))

(assert (=> b!1101240 m!1257103))

(assert (=> b!1101240 m!1257103))

(declare-fun m!1257197 () Bool)

(assert (=> b!1101240 m!1257197))

(assert (=> b!1101173 d!311413))

(declare-fun d!311419 () Bool)

(declare-fun lt!372074 () Bool)

(assert (=> d!311419 (= lt!372074 (contains!1866 (list!3829 objs!8) lt!372028))))

(assert (=> d!311419 (= lt!372074 (contains!1867 (c!186923 objs!8) lt!372028))))

(assert (=> d!311419 (= (contains!1864 objs!8 lt!372028) lt!372074)))

(declare-fun bs!259449 () Bool)

(assert (= bs!259449 d!311419))

(assert (=> bs!259449 m!1257103))

(assert (=> bs!259449 m!1257103))

(assert (=> bs!259449 m!1257175))

(declare-fun m!1257199 () Bool)

(assert (=> bs!259449 m!1257199))

(assert (=> b!1101173 d!311419))

(declare-fun d!311421 () Bool)

(declare-fun lt!372080 () tuple2!11776)

(declare-fun apply!2142 (List!10646 Int) tuple2!11776)

(assert (=> d!311421 (= lt!372080 (apply!2142 (list!3829 objs!8) (ite (>= lt!372024 0) (div lt!372024 2) (- (div (- lt!372024) 2)))))))

(declare-fun apply!2143 (Conc!3304 Int) tuple2!11776)

(assert (=> d!311421 (= lt!372080 (apply!2143 (c!186923 objs!8) (ite (>= lt!372024 0) (div lt!372024 2) (- (div (- lt!372024) 2)))))))

(declare-fun e!697462 () Bool)

(assert (=> d!311421 e!697462))

(declare-fun res!488461 () Bool)

(assert (=> d!311421 (=> (not res!488461) (not e!697462))))

(assert (=> d!311421 (= res!488461 (<= 0 (ite (>= lt!372024 0) (div lt!372024 2) (- (div (- lt!372024) 2)))))))

(assert (=> d!311421 (= (apply!2140 objs!8 (ite (>= lt!372024 0) (div lt!372024 2) (- (div (- lt!372024) 2)))) lt!372080)))

(declare-fun b!1101243 () Bool)

(assert (=> b!1101243 (= e!697462 (< (ite (>= lt!372024 0) (div lt!372024 2) (- (div (- lt!372024) 2))) (size!8250 objs!8)))))

(assert (= (and d!311421 res!488461) b!1101243))

(assert (=> d!311421 m!1257103))

(assert (=> d!311421 m!1257103))

(declare-fun m!1257203 () Bool)

(assert (=> d!311421 m!1257203))

(declare-fun m!1257205 () Bool)

(assert (=> d!311421 m!1257205))

(assert (=> b!1101243 m!1257127))

(assert (=> b!1101173 d!311421))

(declare-fun d!311425 () Bool)

(declare-fun e!697463 () Bool)

(assert (=> d!311425 e!697463))

(declare-fun res!488462 () Bool)

(assert (=> d!311425 (=> (not res!488462) (not e!697463))))

(assert (=> d!311425 (= res!488462 (isBalanced!913 (filter!342 (c!186923 objs!8) lambda!43340)))))

(declare-fun lt!372081 () BalanceConc!6622)

(assert (=> d!311425 (= lt!372081 (BalanceConc!6623 (filter!342 (c!186923 objs!8) lambda!43340)))))

(assert (=> d!311425 (= (filter!340 objs!8 lambda!43340) lt!372081)))

(declare-fun b!1101244 () Bool)

(assert (=> b!1101244 (= e!697463 (= (list!3829 lt!372081) (filter!343 (list!3829 objs!8) lambda!43340)))))

(assert (= (and d!311425 res!488462) b!1101244))

(declare-fun m!1257207 () Bool)

(assert (=> d!311425 m!1257207))

(assert (=> d!311425 m!1257207))

(declare-fun m!1257209 () Bool)

(assert (=> d!311425 m!1257209))

(declare-fun m!1257211 () Bool)

(assert (=> b!1101244 m!1257211))

(assert (=> b!1101244 m!1257103))

(assert (=> b!1101244 m!1257103))

(declare-fun m!1257213 () Bool)

(assert (=> b!1101244 m!1257213))

(assert (=> b!1101173 d!311425))

(declare-fun d!311427 () Bool)

(declare-fun e!697464 () Bool)

(assert (=> d!311427 e!697464))

(declare-fun res!488463 () Bool)

(assert (=> d!311427 (=> (not res!488463) (not e!697464))))

(assert (=> d!311427 (= res!488463 (isBalanced!913 (filter!342 (c!186923 objs!8) lambda!43341)))))

(declare-fun lt!372082 () BalanceConc!6622)

(assert (=> d!311427 (= lt!372082 (BalanceConc!6623 (filter!342 (c!186923 objs!8) lambda!43341)))))

(assert (=> d!311427 (= (filter!340 objs!8 lambda!43341) lt!372082)))

(declare-fun b!1101245 () Bool)

(assert (=> b!1101245 (= e!697464 (= (list!3829 lt!372082) (filter!343 (list!3829 objs!8) lambda!43341)))))

(assert (= (and d!311427 res!488463) b!1101245))

(declare-fun m!1257215 () Bool)

(assert (=> d!311427 m!1257215))

(assert (=> d!311427 m!1257215))

(declare-fun m!1257217 () Bool)

(assert (=> d!311427 m!1257217))

(declare-fun m!1257219 () Bool)

(assert (=> b!1101245 m!1257219))

(assert (=> b!1101245 m!1257103))

(assert (=> b!1101245 m!1257103))

(declare-fun m!1257221 () Bool)

(assert (=> b!1101245 m!1257221))

(assert (=> b!1101173 d!311427))

(declare-fun d!311429 () Bool)

(declare-fun res!488470 () Bool)

(declare-fun e!697473 () Bool)

(assert (=> d!311429 (=> res!488470 e!697473)))

(assert (=> d!311429 (= res!488470 (is-Nil!10630 (list!3829 objs!8)))))

(assert (=> d!311429 (= (forall!2452 (list!3829 objs!8) lambda!43340) e!697473)))

(declare-fun b!1101256 () Bool)

(declare-fun e!697474 () Bool)

(assert (=> b!1101256 (= e!697473 e!697474)))

(declare-fun res!488471 () Bool)

(assert (=> b!1101256 (=> (not res!488471) (not e!697474))))

(assert (=> b!1101256 (= res!488471 (dynLambda!4676 lambda!43340 (h!16031 (list!3829 objs!8))))))

(declare-fun b!1101257 () Bool)

(assert (=> b!1101257 (= e!697474 (forall!2452 (t!103978 (list!3829 objs!8)) lambda!43340))))

(assert (= (and d!311429 (not res!488470)) b!1101256))

(assert (= (and b!1101256 res!488471) b!1101257))

(declare-fun b_lambda!32185 () Bool)

(assert (=> (not b_lambda!32185) (not b!1101256)))

(declare-fun m!1257223 () Bool)

(assert (=> b!1101256 m!1257223))

(declare-fun m!1257225 () Bool)

(assert (=> b!1101257 m!1257225))

(assert (=> b!1101168 d!311429))

(assert (=> b!1101168 d!311407))

(declare-fun d!311431 () Bool)

(declare-fun lt!372086 () Bool)

(assert (=> d!311431 (= lt!372086 (forall!2452 (list!3829 objs!8) lambda!43340))))

(declare-fun forall!2455 (Conc!3304 Int) Bool)

(assert (=> d!311431 (= lt!372086 (forall!2455 (c!186923 objs!8) lambda!43340))))

(assert (=> d!311431 (= (forall!2451 objs!8 lambda!43340) lt!372086)))

(declare-fun bs!259452 () Bool)

(assert (= bs!259452 d!311431))

(assert (=> bs!259452 m!1257103))

(assert (=> bs!259452 m!1257103))

(assert (=> bs!259452 m!1257121))

(declare-fun m!1257235 () Bool)

(assert (=> bs!259452 m!1257235))

(assert (=> b!1101168 d!311431))

(declare-fun d!311437 () Bool)

(declare-fun lt!372087 () Bool)

(assert (=> d!311437 (= lt!372087 (forall!2452 (list!3829 objs!8) lambda!43339))))

(assert (=> d!311437 (= lt!372087 (forall!2455 (c!186923 objs!8) lambda!43339))))

(assert (=> d!311437 (= (forall!2451 objs!8 lambda!43339) lt!372087)))

(declare-fun bs!259453 () Bool)

(assert (= bs!259453 d!311437))

(assert (=> bs!259453 m!1257103))

(assert (=> bs!259453 m!1257103))

(declare-fun m!1257237 () Bool)

(assert (=> bs!259453 m!1257237))

(declare-fun m!1257239 () Bool)

(assert (=> bs!259453 m!1257239))

(assert (=> start!94680 d!311437))

(declare-fun d!311439 () Bool)

(assert (=> d!311439 (= (inv!13659 objs!8) (isBalanced!913 (c!186923 objs!8)))))

(declare-fun bs!259454 () Bool)

(assert (= bs!259454 d!311439))

(declare-fun m!1257241 () Bool)

(assert (=> bs!259454 m!1257241))

(assert (=> start!94680 d!311439))

(declare-fun d!311441 () Bool)

(declare-fun lt!372090 () Int)

(declare-fun size!8253 (List!10646) Int)

(assert (=> d!311441 (= lt!372090 (size!8253 (list!3829 objs!8)))))

(declare-fun size!8254 (Conc!3304) Int)

(assert (=> d!311441 (= lt!372090 (size!8254 (c!186923 objs!8)))))

(assert (=> d!311441 (= (size!8250 objs!8) lt!372090)))

(declare-fun bs!259456 () Bool)

(assert (= bs!259456 d!311441))

(assert (=> bs!259456 m!1257103))

(assert (=> bs!259456 m!1257103))

(declare-fun m!1257245 () Bool)

(assert (=> bs!259456 m!1257245))

(declare-fun m!1257247 () Bool)

(assert (=> bs!259456 m!1257247))

(assert (=> b!1101172 d!311441))

(declare-fun d!311445 () Bool)

(declare-fun c!186940 () Bool)

(assert (=> d!311445 (= c!186940 (is-Node!3304 (c!186923 objs!8)))))

(declare-fun e!697481 () Bool)

(assert (=> d!311445 (= (inv!13660 (c!186923 objs!8)) e!697481)))

(declare-fun b!1101267 () Bool)

(declare-fun inv!13663 (Conc!3304) Bool)

(assert (=> b!1101267 (= e!697481 (inv!13663 (c!186923 objs!8)))))

(declare-fun b!1101268 () Bool)

(declare-fun e!697482 () Bool)

(assert (=> b!1101268 (= e!697481 e!697482)))

(declare-fun res!488475 () Bool)

(assert (=> b!1101268 (= res!488475 (not (is-Leaf!5223 (c!186923 objs!8))))))

(assert (=> b!1101268 (=> res!488475 e!697482)))

(declare-fun b!1101269 () Bool)

(declare-fun inv!13664 (Conc!3304) Bool)

(assert (=> b!1101269 (= e!697482 (inv!13664 (c!186923 objs!8)))))

(assert (= (and d!311445 c!186940) b!1101267))

(assert (= (and d!311445 (not c!186940)) b!1101268))

(assert (= (and b!1101268 (not res!488475)) b!1101269))

(declare-fun m!1257249 () Bool)

(assert (=> b!1101267 m!1257249))

(declare-fun m!1257251 () Bool)

(assert (=> b!1101269 m!1257251))

(assert (=> b!1101171 d!311445))

(declare-fun b!1101280 () Bool)

(declare-fun e!697491 () Bool)

(assert (=> b!1101280 (= e!697491 true)))

(declare-fun b!1101279 () Bool)

(declare-fun e!697490 () Bool)

(assert (=> b!1101279 (= e!697490 e!697491)))

(declare-fun b!1101278 () Bool)

(declare-fun e!697489 () Bool)

(assert (=> b!1101278 (= e!697489 e!697490)))

(assert (=> b!1101185 e!697489))

(assert (= b!1101279 b!1101280))

(assert (= b!1101278 b!1101279))

(assert (= (and b!1101185 (is-Cons!10629 (rules!9112 (_2!6714 lt!372028)))) b!1101278))

(declare-fun order!6465 () Int)

(declare-fun order!6467 () Int)

(declare-fun dynLambda!4677 (Int Int) Int)

(declare-fun dynLambda!4678 (Int Int) Int)

(assert (=> b!1101280 (< (dynLambda!4677 order!6465 (toValue!2902 (transformation!1825 (h!16030 (rules!9112 (_2!6714 lt!372028)))))) (dynLambda!4678 order!6467 lambda!43341))))

(declare-fun order!6469 () Int)

(declare-fun dynLambda!4679 (Int Int) Int)

(assert (=> b!1101280 (< (dynLambda!4679 order!6469 (toChars!2761 (transformation!1825 (h!16030 (rules!9112 (_2!6714 lt!372028)))))) (dynLambda!4678 order!6467 lambda!43341))))

(declare-fun b!1101289 () Bool)

(declare-fun e!697496 () Bool)

(assert (=> b!1101289 (= e!697496 true)))

(declare-fun b!1101291 () Bool)

(declare-fun e!697497 () Bool)

(assert (=> b!1101291 (= e!697497 true)))

(declare-fun b!1101290 () Bool)

(assert (=> b!1101290 (= e!697496 e!697497)))

(assert (=> b!1101184 e!697496))

(assert (= (and b!1101184 (is-Node!3303 (c!186922 (tokens!1384 (_2!6714 lt!372028))))) b!1101289))

(assert (= b!1101290 b!1101291))

(assert (= (and b!1101184 (is-Leaf!5222 (c!186922 (tokens!1384 (_2!6714 lt!372028))))) b!1101290))

(declare-fun b!1101292 () Bool)

(declare-fun e!697498 () Bool)

(assert (=> b!1101292 (= e!697498 true)))

(declare-fun b!1101294 () Bool)

(declare-fun e!697499 () Bool)

(assert (=> b!1101294 (= e!697499 true)))

(declare-fun b!1101293 () Bool)

(assert (=> b!1101293 (= e!697498 e!697499)))

(assert (=> b!1101188 e!697498))

(assert (= (and b!1101188 (is-Node!3303 (c!186922 (tokens!1384 (_2!6714 lt!372028))))) b!1101292))

(assert (= b!1101293 b!1101294))

(assert (= (and b!1101188 (is-Leaf!5222 (c!186922 (tokens!1384 (_2!6714 lt!372028))))) b!1101293))

(declare-fun b!1101295 () Bool)

(declare-fun e!697500 () Bool)

(assert (=> b!1101295 (= e!697500 true)))

(declare-fun b!1101297 () Bool)

(declare-fun e!697501 () Bool)

(assert (=> b!1101297 (= e!697501 true)))

(declare-fun b!1101296 () Bool)

(assert (=> b!1101296 (= e!697500 e!697501)))

(assert (=> b!1101186 e!697500))

(assert (= (and b!1101186 (is-Node!3303 (c!186922 (tokens!1384 (_2!6714 lt!372028))))) b!1101295))

(assert (= b!1101296 b!1101297))

(assert (= (and b!1101186 (is-Leaf!5222 (c!186922 (tokens!1384 (_2!6714 lt!372028))))) b!1101296))

(declare-fun b!1101300 () Bool)

(declare-fun e!697504 () Bool)

(assert (=> b!1101300 (= e!697504 true)))

(declare-fun b!1101299 () Bool)

(declare-fun e!697503 () Bool)

(assert (=> b!1101299 (= e!697503 e!697504)))

(declare-fun b!1101298 () Bool)

(declare-fun e!697502 () Bool)

(assert (=> b!1101298 (= e!697502 e!697503)))

(assert (=> b!1101183 e!697502))

(assert (= b!1101299 b!1101300))

(assert (= b!1101298 b!1101299))

(assert (= (and b!1101183 (is-Cons!10629 (rules!9112 (_2!6714 lt!372028)))) b!1101298))

(assert (=> b!1101300 (< (dynLambda!4677 order!6465 (toValue!2902 (transformation!1825 (h!16030 (rules!9112 (_2!6714 lt!372028)))))) (dynLambda!4678 order!6467 lambda!43340))))

(assert (=> b!1101300 (< (dynLambda!4679 order!6469 (toChars!2761 (transformation!1825 (h!16030 (rules!9112 (_2!6714 lt!372028)))))) (dynLambda!4678 order!6467 lambda!43340))))

(declare-fun b!1101303 () Bool)

(declare-fun e!697507 () Bool)

(assert (=> b!1101303 (= e!697507 true)))

(declare-fun b!1101302 () Bool)

(declare-fun e!697506 () Bool)

(assert (=> b!1101302 (= e!697506 e!697507)))

(declare-fun b!1101301 () Bool)

(declare-fun e!697505 () Bool)

(assert (=> b!1101301 (= e!697505 e!697506)))

(assert (=> b!1101187 e!697505))

(assert (= b!1101302 b!1101303))

(assert (= b!1101301 b!1101302))

(assert (= (and b!1101187 (is-Cons!10629 (rules!9112 (_2!6714 lt!372028)))) b!1101301))

(assert (=> b!1101303 (< (dynLambda!4677 order!6465 (toValue!2902 (transformation!1825 (h!16030 (rules!9112 (_2!6714 lt!372028)))))) (dynLambda!4678 order!6467 lambda!43342))))

(assert (=> b!1101303 (< (dynLambda!4679 order!6469 (toChars!2761 (transformation!1825 (h!16030 (rules!9112 (_2!6714 lt!372028)))))) (dynLambda!4678 order!6467 lambda!43342))))

(declare-fun tp!327053 () Bool)

(declare-fun e!697512 () Bool)

(declare-fun b!1101312 () Bool)

(declare-fun tp!327051 () Bool)

(assert (=> b!1101312 (= e!697512 (and (inv!13660 (left!9186 (c!186923 objs!8))) tp!327053 (inv!13660 (right!9516 (c!186923 objs!8))) tp!327051))))

(declare-fun b!1101314 () Bool)

(declare-fun e!697513 () Bool)

(declare-fun tp!327052 () Bool)

(assert (=> b!1101314 (= e!697513 tp!327052)))

(declare-fun b!1101313 () Bool)

(declare-fun inv!13665 (IArray!6613) Bool)

(assert (=> b!1101313 (= e!697512 (and (inv!13665 (xs!5997 (c!186923 objs!8))) e!697513))))

(assert (=> b!1101171 (= tp!327041 (and (inv!13660 (c!186923 objs!8)) e!697512))))

(assert (= (and b!1101171 (is-Node!3304 (c!186923 objs!8))) b!1101312))

(assert (= b!1101313 b!1101314))

(assert (= (and b!1101171 (is-Leaf!5223 (c!186923 objs!8))) b!1101313))

(declare-fun m!1257257 () Bool)

(assert (=> b!1101312 m!1257257))

(declare-fun m!1257259 () Bool)

(assert (=> b!1101312 m!1257259))

(declare-fun m!1257261 () Bool)

(assert (=> b!1101313 m!1257261))

(assert (=> b!1101171 m!1257133))

(declare-fun b_lambda!32187 () Bool)

(assert (= b_lambda!32179 (or b!1101173 b_lambda!32187)))

(declare-fun bs!259458 () Bool)

(declare-fun d!311449 () Bool)

(assert (= bs!259458 (and d!311449 b!1101173)))

(assert (=> bs!259458 (= (dynLambda!4676 lambda!43340 lt!372028) (< (_1!6714 lt!372028) (_1!6714 lt!372028)))))

(assert (=> d!311405 d!311449))

(declare-fun b_lambda!32189 () Bool)

(assert (= b_lambda!32185 (or b!1101173 b_lambda!32189)))

(declare-fun bs!259459 () Bool)

(declare-fun d!311451 () Bool)

(assert (= bs!259459 (and d!311451 b!1101173)))

(assert (=> bs!259459 (= (dynLambda!4676 lambda!43340 (h!16031 (list!3829 objs!8))) (< (_1!6714 (h!16031 (list!3829 objs!8))) (_1!6714 lt!372028)))))

(assert (=> b!1101256 d!311451))

(declare-fun b_lambda!32191 () Bool)

(assert (= b_lambda!32181 (or b!1101173 b_lambda!32191)))

(assert (=> d!311409 d!311449))

(push 1)

(assert (not d!311419))

(assert (not b!1101292))

(assert (not b!1101171))

(assert (not d!311425))

(assert (not d!311439))

(assert (not d!311413))

(assert (not d!311407))

(assert (not b!1101240))

(assert (not d!311421))

(assert (not b_lambda!32189))

(assert (not b_lambda!32187))

(assert (not d!311427))

(assert (not b!1101291))

(assert (not d!311441))

(assert (not b!1101257))

(assert (not b!1101313))

(assert (not b!1101312))

(assert (not d!311437))

(assert (not d!311409))

(assert (not b!1101301))

(assert (not d!311431))

(assert (not b!1101243))

(assert (not b!1101298))

(assert (not d!311405))

(assert (not b!1101278))

(assert (not b!1101230))

(assert (not b!1101294))

(assert (not b!1101314))

(assert (not b!1101235))

(assert (not b!1101245))

(assert (not d!311411))

(assert (not b_lambda!32191))

(assert (not b!1101267))

(assert (not b!1101269))

(assert (not b!1101297))

(assert (not b!1101295))

(assert (not d!311401))

(assert (not b!1101289))

(assert (not b!1101244))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


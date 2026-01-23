; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!523568 () Bool)

(assert start!523568)

(declare-fun b!4964142 () Bool)

(declare-fun b_free!132735 () Bool)

(declare-fun b_next!133525 () Bool)

(assert (=> b!4964142 (= b_free!132735 (not b_next!133525))))

(declare-fun tp!1392622 () Bool)

(declare-fun b_and!347691 () Bool)

(assert (=> b!4964142 (= tp!1392622 b_and!347691)))

(declare-fun b_free!132737 () Bool)

(declare-fun b_next!133527 () Bool)

(assert (=> b!4964142 (= b_free!132737 (not b_next!133527))))

(declare-fun tp!1392621 () Bool)

(declare-fun b_and!347693 () Bool)

(assert (=> b!4964142 (= tp!1392621 b_and!347693)))

(declare-fun b!4964127 () Bool)

(declare-fun e!3102981 () Bool)

(declare-fun e!3102978 () Bool)

(assert (=> b!4964127 (= e!3102981 e!3102978)))

(declare-fun res!2118900 () Bool)

(assert (=> b!4964127 (=> (not res!2118900) (not e!3102978))))

(declare-fun e!3102976 () Bool)

(assert (=> b!4964127 (= res!2118900 e!3102976)))

(declare-fun res!2118903 () Bool)

(assert (=> b!4964127 (=> res!2118903 e!3102976)))

(declare-fun lt!2049569 () Bool)

(assert (=> b!4964127 (= res!2118903 lt!2049569)))

(declare-fun lt!2049577 () Bool)

(assert (=> b!4964127 (= lt!2049569 (not lt!2049577))))

(declare-fun b!4964128 () Bool)

(declare-fun e!3102973 () Bool)

(declare-datatypes ((C!27498 0))(
  ( (C!27499 (val!23115 Int)) )
))
(declare-datatypes ((List!57559 0))(
  ( (Nil!57435) (Cons!57435 (h!63883 C!27498) (t!368225 List!57559)) )
))
(declare-datatypes ((IArray!30347 0))(
  ( (IArray!30348 (innerList!15231 List!57559)) )
))
(declare-datatypes ((Conc!15143 0))(
  ( (Node!15143 (left!41893 Conc!15143) (right!42223 Conc!15143) (csize!30516 Int) (cheight!15354 Int)) (Leaf!25164 (xs!18469 IArray!30347) (csize!30517 Int)) (Empty!15143) )
))
(declare-datatypes ((BalanceConc!29716 0))(
  ( (BalanceConc!29717 (c!846918 Conc!15143)) )
))
(declare-fun totalInput!464 () BalanceConc!29716)

(declare-fun tp!1392618 () Bool)

(declare-fun inv!75059 (Conc!15143) Bool)

(assert (=> b!4964128 (= e!3102973 (and (inv!75059 (c!846918 totalInput!464)) tp!1392618))))

(declare-fun b!4964129 () Bool)

(declare-fun e!3102983 () Bool)

(assert (=> b!4964129 (= e!3102976 e!3102983)))

(declare-fun res!2118904 () Bool)

(assert (=> b!4964129 (=> (not res!2118904) (not e!3102983))))

(declare-datatypes ((List!57560 0))(
  ( (Nil!57436) (Cons!57436 (h!63884 (_ BitVec 16)) (t!368226 List!57560)) )
))
(declare-datatypes ((TokenValue!8701 0))(
  ( (FloatLiteralValue!17402 (text!61352 List!57560)) (TokenValueExt!8700 (__x!34695 Int)) (Broken!43505 (value!268559 List!57560)) (Object!8824) (End!8701) (Def!8701) (Underscore!8701) (Match!8701) (Else!8701) (Error!8701) (Case!8701) (If!8701) (Extends!8701) (Abstract!8701) (Class!8701) (Val!8701) (DelimiterValue!17402 (del!8761 List!57560)) (KeywordValue!8707 (value!268560 List!57560)) (CommentValue!17402 (value!268561 List!57560)) (WhitespaceValue!17402 (value!268562 List!57560)) (IndentationValue!8701 (value!268563 List!57560)) (String!65380) (Int32!8701) (Broken!43506 (value!268564 List!57560)) (Boolean!8702) (Unit!148333) (OperatorValue!8704 (op!8761 List!57560)) (IdentifierValue!17402 (value!268565 List!57560)) (IdentifierValue!17403 (value!268566 List!57560)) (WhitespaceValue!17403 (value!268567 List!57560)) (True!17402) (False!17402) (Broken!43507 (value!268568 List!57560)) (Broken!43508 (value!268569 List!57560)) (True!17403) (RightBrace!8701) (RightBracket!8701) (Colon!8701) (Null!8701) (Comma!8701) (LeftBracket!8701) (False!17403) (LeftBrace!8701) (ImaginaryLiteralValue!8701 (text!61353 List!57560)) (StringLiteralValue!26103 (value!268570 List!57560)) (EOFValue!8701 (value!268571 List!57560)) (IdentValue!8701 (value!268572 List!57560)) (DelimiterValue!17403 (value!268573 List!57560)) (DedentValue!8701 (value!268574 List!57560)) (NewLineValue!8701 (value!268575 List!57560)) (IntegerValue!26103 (value!268576 (_ BitVec 32)) (text!61354 List!57560)) (IntegerValue!26104 (value!268577 Int) (text!61355 List!57560)) (Times!8701) (Or!8701) (Equal!8701) (Minus!8701) (Broken!43509 (value!268578 List!57560)) (And!8701) (Div!8701) (LessEqual!8701) (Mod!8701) (Concat!22325) (Not!8701) (Plus!8701) (SpaceValue!8701 (value!268579 List!57560)) (IntegerValue!26105 (value!268580 Int) (text!61356 List!57560)) (StringLiteralValue!26104 (text!61357 List!57560)) (FloatLiteralValue!17403 (text!61358 List!57560)) (BytesLiteralValue!8701 (value!268581 List!57560)) (CommentValue!17403 (value!268582 List!57560)) (StringLiteralValue!26105 (value!268583 List!57560)) (ErrorTokenValue!8701 (msg!8762 List!57560)) )
))
(declare-datatypes ((Regex!13624 0))(
  ( (ElementMatch!13624 (c!846919 C!27498)) (Concat!22326 (regOne!27760 Regex!13624) (regTwo!27760 Regex!13624)) (EmptyExpr!13624) (Star!13624 (reg!13953 Regex!13624)) (EmptyLang!13624) (Union!13624 (regOne!27761 Regex!13624) (regTwo!27761 Regex!13624)) )
))
(declare-datatypes ((String!65381 0))(
  ( (String!65382 (value!268584 String)) )
))
(declare-datatypes ((TokenValueInjection!16710 0))(
  ( (TokenValueInjection!16711 (toValue!11346 Int) (toChars!11205 Int)) )
))
(declare-datatypes ((Rule!16582 0))(
  ( (Rule!16583 (regex!8391 Regex!13624) (tag!9255 String!65381) (isSeparator!8391 Bool) (transformation!8391 TokenValueInjection!16710)) )
))
(declare-datatypes ((Token!15278 0))(
  ( (Token!15279 (value!268585 TokenValue!8701) (rule!11629 Rule!16582) (size!38062 Int) (originalCharacters!8670 List!57559)) )
))
(declare-datatypes ((tuple2!62148 0))(
  ( (tuple2!62149 (_1!34377 Token!15278) (_2!34377 BalanceConc!29716)) )
))
(declare-fun lt!2049579 () tuple2!62148)

(declare-datatypes ((tuple2!62150 0))(
  ( (tuple2!62151 (_1!34378 Token!15278) (_2!34378 List!57559)) )
))
(declare-fun lt!2049573 () tuple2!62150)

(assert (=> b!4964129 (= res!2118904 (= (_1!34377 lt!2049579) (_1!34378 lt!2049573)))))

(declare-datatypes ((Option!14445 0))(
  ( (None!14444) (Some!14444 (v!50431 tuple2!62150)) )
))
(declare-fun lt!2049574 () Option!14445)

(declare-fun get!19935 (Option!14445) tuple2!62150)

(assert (=> b!4964129 (= lt!2049573 (get!19935 lt!2049574))))

(declare-datatypes ((Option!14446 0))(
  ( (None!14445) (Some!14445 (v!50432 tuple2!62148)) )
))
(declare-fun get!19936 (Option!14446) tuple2!62148)

(assert (=> b!4964129 (= lt!2049579 (get!19936 None!14445))))

(declare-fun b!4964130 () Bool)

(declare-fun e!3102982 () Bool)

(declare-fun e!3102984 () Bool)

(assert (=> b!4964130 (= e!3102982 e!3102984)))

(declare-fun res!2118901 () Bool)

(assert (=> b!4964130 (=> res!2118901 e!3102984)))

(declare-fun lt!2049570 () Option!14446)

(declare-fun lt!2049576 () Option!14446)

(assert (=> b!4964130 (= res!2118901 (or (not (is-None!14445 lt!2049570)) (not (is-None!14445 lt!2049576))))))

(declare-fun input!1342 () BalanceConc!29716)

(declare-datatypes ((List!57561 0))(
  ( (Nil!57437) (Cons!57437 (h!63885 Rule!16582) (t!368227 List!57561)) )
))
(declare-fun rulesArg!259 () List!57561)

(declare-datatypes ((LexerInterface!7983 0))(
  ( (LexerInterfaceExt!7980 (__x!34696 Int)) (Lexer!7981) )
))
(declare-fun thiss!15247 () LexerInterface!7983)

(declare-fun maxPrefixZipperSequenceV2!702 (LexerInterface!7983 List!57561 BalanceConc!29716 BalanceConc!29716) Option!14446)

(assert (=> b!4964130 (= lt!2049576 (maxPrefixZipperSequenceV2!702 thiss!15247 (t!368227 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!359 (LexerInterface!7983 Rule!16582 BalanceConc!29716 BalanceConc!29716) Option!14446)

(assert (=> b!4964130 (= lt!2049570 (maxPrefixOneRuleZipperSequenceV2!359 thiss!15247 (h!63885 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4964131 () Bool)

(declare-fun e!3102980 () Bool)

(declare-fun e!3102979 () Bool)

(declare-fun tp!1392619 () Bool)

(assert (=> b!4964131 (= e!3102980 (and e!3102979 tp!1392619))))

(declare-fun b!4964132 () Bool)

(declare-fun e!3102974 () Bool)

(declare-fun e!3102977 () Bool)

(assert (=> b!4964132 (= e!3102974 e!3102977)))

(declare-fun res!2118895 () Bool)

(assert (=> b!4964132 (=> (not res!2118895) (not e!3102977))))

(declare-fun lt!2049572 () tuple2!62148)

(declare-fun lt!2049575 () tuple2!62150)

(assert (=> b!4964132 (= res!2118895 (= (_1!34377 lt!2049572) (_1!34378 lt!2049575)))))

(declare-fun lt!2049571 () List!57559)

(declare-fun maxPrefix!4658 (LexerInterface!7983 List!57561 List!57559) Option!14445)

(assert (=> b!4964132 (= lt!2049575 (get!19935 (maxPrefix!4658 thiss!15247 rulesArg!259 lt!2049571)))))

(assert (=> b!4964132 (= lt!2049572 (get!19936 None!14445))))

(declare-fun b!4964133 () Bool)

(declare-fun list!18359 (BalanceConc!29716) List!57559)

(assert (=> b!4964133 (= e!3102983 (= (list!18359 (_2!34377 lt!2049579)) (_2!34378 lt!2049573)))))

(declare-fun res!2118902 () Bool)

(declare-fun e!3102975 () Bool)

(assert (=> start!523568 (=> (not res!2118902) (not e!3102975))))

(assert (=> start!523568 (= res!2118902 (is-Lexer!7981 thiss!15247))))

(assert (=> start!523568 e!3102975))

(assert (=> start!523568 true))

(assert (=> start!523568 e!3102980))

(declare-fun e!3102987 () Bool)

(declare-fun inv!75060 (BalanceConc!29716) Bool)

(assert (=> start!523568 (and (inv!75060 input!1342) e!3102987)))

(assert (=> start!523568 (and (inv!75060 totalInput!464) e!3102973)))

(declare-fun b!4964134 () Bool)

(assert (=> b!4964134 (= e!3102984 e!3102981)))

(declare-fun res!2118899 () Bool)

(assert (=> b!4964134 (=> (not res!2118899) (not e!3102981))))

(declare-fun isDefined!11358 (Option!14445) Bool)

(assert (=> b!4964134 (= res!2118899 (= lt!2049577 (isDefined!11358 lt!2049574)))))

(assert (=> b!4964134 (= lt!2049577 false)))

(declare-fun maxPrefixZipper!784 (LexerInterface!7983 List!57561 List!57559) Option!14445)

(assert (=> b!4964134 (= lt!2049574 (maxPrefixZipper!784 thiss!15247 rulesArg!259 lt!2049571))))

(declare-fun e!3102985 () Bool)

(declare-fun tp!1392617 () Bool)

(declare-fun b!4964135 () Bool)

(declare-fun inv!75056 (String!65381) Bool)

(declare-fun inv!75061 (TokenValueInjection!16710) Bool)

(assert (=> b!4964135 (= e!3102979 (and tp!1392617 (inv!75056 (tag!9255 (h!63885 rulesArg!259))) (inv!75061 (transformation!8391 (h!63885 rulesArg!259))) e!3102985))))

(declare-fun b!4964136 () Bool)

(declare-fun res!2118905 () Bool)

(assert (=> b!4964136 (=> (not res!2118905) (not e!3102975))))

(declare-fun isEmpty!30921 (List!57561) Bool)

(assert (=> b!4964136 (= res!2118905 (not (isEmpty!30921 rulesArg!259)))))

(declare-fun b!4964137 () Bool)

(assert (=> b!4964137 (= e!3102977 (= (list!18359 (_2!34377 lt!2049572)) (_2!34378 lt!2049575)))))

(declare-fun b!4964138 () Bool)

(declare-fun res!2118894 () Bool)

(assert (=> b!4964138 (=> (not res!2118894) (not e!3102975))))

(declare-fun rulesValidInductive!3294 (LexerInterface!7983 List!57561) Bool)

(assert (=> b!4964138 (= res!2118894 (rulesValidInductive!3294 thiss!15247 rulesArg!259))))

(declare-fun b!4964139 () Bool)

(declare-fun e!3102972 () Bool)

(assert (=> b!4964139 (= e!3102975 e!3102972)))

(declare-fun res!2118897 () Bool)

(assert (=> b!4964139 (=> (not res!2118897) (not e!3102972))))

(declare-fun isSuffix!1190 (List!57559 List!57559) Bool)

(assert (=> b!4964139 (= res!2118897 (isSuffix!1190 lt!2049571 (list!18359 totalInput!464)))))

(assert (=> b!4964139 (= lt!2049571 (list!18359 input!1342))))

(declare-fun b!4964140 () Bool)

(assert (=> b!4964140 (= e!3102972 (not e!3102982))))

(declare-fun res!2118896 () Bool)

(assert (=> b!4964140 (=> res!2118896 e!3102982)))

(assert (=> b!4964140 (= res!2118896 (or (and (is-Cons!57437 rulesArg!259) (is-Nil!57437 (t!368227 rulesArg!259))) (not (is-Cons!57437 rulesArg!259))))))

(declare-fun isPrefix!5242 (List!57559 List!57559) Bool)

(assert (=> b!4964140 (isPrefix!5242 lt!2049571 lt!2049571)))

(declare-datatypes ((Unit!148334 0))(
  ( (Unit!148335) )
))
(declare-fun lt!2049578 () Unit!148334)

(declare-fun lemmaIsPrefixRefl!3566 (List!57559 List!57559) Unit!148334)

(assert (=> b!4964140 (= lt!2049578 (lemmaIsPrefixRefl!3566 lt!2049571 lt!2049571))))

(declare-fun b!4964141 () Bool)

(declare-fun tp!1392620 () Bool)

(assert (=> b!4964141 (= e!3102987 (and (inv!75059 (c!846918 input!1342)) tp!1392620))))

(assert (=> b!4964142 (= e!3102985 (and tp!1392622 tp!1392621))))

(declare-fun b!4964143 () Bool)

(assert (=> b!4964143 (= e!3102978 e!3102974)))

(declare-fun res!2118898 () Bool)

(assert (=> b!4964143 (=> res!2118898 e!3102974)))

(assert (=> b!4964143 (= res!2118898 lt!2049569)))

(assert (= (and start!523568 res!2118902) b!4964138))

(assert (= (and b!4964138 res!2118894) b!4964136))

(assert (= (and b!4964136 res!2118905) b!4964139))

(assert (= (and b!4964139 res!2118897) b!4964140))

(assert (= (and b!4964140 (not res!2118896)) b!4964130))

(assert (= (and b!4964130 (not res!2118901)) b!4964134))

(assert (= (and b!4964134 res!2118899) b!4964127))

(assert (= (and b!4964127 (not res!2118903)) b!4964129))

(assert (= (and b!4964129 res!2118904) b!4964133))

(assert (= (and b!4964127 res!2118900) b!4964143))

(assert (= (and b!4964143 (not res!2118898)) b!4964132))

(assert (= (and b!4964132 res!2118895) b!4964137))

(assert (= b!4964135 b!4964142))

(assert (= b!4964131 b!4964135))

(assert (= (and start!523568 (is-Cons!57437 rulesArg!259)) b!4964131))

(assert (= start!523568 b!4964141))

(assert (= start!523568 b!4964128))

(declare-fun m!5988598 () Bool)

(assert (=> b!4964141 m!5988598))

(declare-fun m!5988600 () Bool)

(assert (=> start!523568 m!5988600))

(declare-fun m!5988602 () Bool)

(assert (=> start!523568 m!5988602))

(declare-fun m!5988604 () Bool)

(assert (=> b!4964133 m!5988604))

(declare-fun m!5988606 () Bool)

(assert (=> b!4964132 m!5988606))

(assert (=> b!4964132 m!5988606))

(declare-fun m!5988608 () Bool)

(assert (=> b!4964132 m!5988608))

(declare-fun m!5988610 () Bool)

(assert (=> b!4964132 m!5988610))

(declare-fun m!5988612 () Bool)

(assert (=> b!4964135 m!5988612))

(declare-fun m!5988614 () Bool)

(assert (=> b!4964135 m!5988614))

(declare-fun m!5988616 () Bool)

(assert (=> b!4964129 m!5988616))

(assert (=> b!4964129 m!5988610))

(declare-fun m!5988618 () Bool)

(assert (=> b!4964137 m!5988618))

(declare-fun m!5988620 () Bool)

(assert (=> b!4964136 m!5988620))

(declare-fun m!5988622 () Bool)

(assert (=> b!4964128 m!5988622))

(declare-fun m!5988624 () Bool)

(assert (=> b!4964140 m!5988624))

(declare-fun m!5988626 () Bool)

(assert (=> b!4964140 m!5988626))

(declare-fun m!5988628 () Bool)

(assert (=> b!4964139 m!5988628))

(assert (=> b!4964139 m!5988628))

(declare-fun m!5988630 () Bool)

(assert (=> b!4964139 m!5988630))

(declare-fun m!5988632 () Bool)

(assert (=> b!4964139 m!5988632))

(declare-fun m!5988634 () Bool)

(assert (=> b!4964134 m!5988634))

(declare-fun m!5988636 () Bool)

(assert (=> b!4964134 m!5988636))

(declare-fun m!5988638 () Bool)

(assert (=> b!4964130 m!5988638))

(declare-fun m!5988640 () Bool)

(assert (=> b!4964130 m!5988640))

(declare-fun m!5988642 () Bool)

(assert (=> b!4964138 m!5988642))

(push 1)

(assert (not b!4964128))

(assert (not b_next!133527))

(assert (not b!4964138))

(assert (not b!4964129))

(assert (not b!4964139))

(assert (not b!4964134))

(assert (not b!4964136))

(assert b_and!347693)

(assert (not b!4964132))

(assert (not b!4964130))

(assert (not b!4964141))

(assert (not b!4964137))

(assert (not b!4964140))

(assert (not start!523568))

(assert (not b!4964135))

(assert (not b!4964131))

(assert (not b!4964133))

(assert (not b_next!133525))

(assert b_and!347691)

(check-sat)

(pop 1)

(push 1)

(assert b_and!347691)

(assert b_and!347693)

(assert (not b_next!133525))

(assert (not b_next!133527))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1597101 () Bool)

(declare-fun isBalanced!4200 (Conc!15143) Bool)

(assert (=> d!1597101 (= (inv!75060 input!1342) (isBalanced!4200 (c!846918 input!1342)))))

(declare-fun bs!1182871 () Bool)

(assert (= bs!1182871 d!1597101))

(declare-fun m!5988690 () Bool)

(assert (=> bs!1182871 m!5988690))

(assert (=> start!523568 d!1597101))

(declare-fun d!1597103 () Bool)

(assert (=> d!1597103 (= (inv!75060 totalInput!464) (isBalanced!4200 (c!846918 totalInput!464)))))

(declare-fun bs!1182872 () Bool)

(assert (= bs!1182872 d!1597103))

(declare-fun m!5988692 () Bool)

(assert (=> bs!1182872 m!5988692))

(assert (=> start!523568 d!1597103))

(declare-fun d!1597105 () Bool)

(declare-fun list!18361 (Conc!15143) List!57559)

(assert (=> d!1597105 (= (list!18359 (_2!34377 lt!2049572)) (list!18361 (c!846918 (_2!34377 lt!2049572))))))

(declare-fun bs!1182873 () Bool)

(assert (= bs!1182873 d!1597105))

(declare-fun m!5988694 () Bool)

(assert (=> bs!1182873 m!5988694))

(assert (=> b!4964137 d!1597105))

(declare-fun d!1597107 () Bool)

(assert (=> d!1597107 true))

(declare-fun lt!2049617 () Bool)

(declare-fun lambda!247301 () Int)

(declare-fun forall!13326 (List!57561 Int) Bool)

(assert (=> d!1597107 (= lt!2049617 (forall!13326 rulesArg!259 lambda!247301))))

(declare-fun e!3103045 () Bool)

(assert (=> d!1597107 (= lt!2049617 e!3103045)))

(declare-fun res!2118964 () Bool)

(assert (=> d!1597107 (=> res!2118964 e!3103045)))

(assert (=> d!1597107 (= res!2118964 (not (is-Cons!57437 rulesArg!259)))))

(assert (=> d!1597107 (= (rulesValidInductive!3294 thiss!15247 rulesArg!259) lt!2049617)))

(declare-fun b!4964203 () Bool)

(declare-fun e!3103044 () Bool)

(assert (=> b!4964203 (= e!3103045 e!3103044)))

(declare-fun res!2118965 () Bool)

(assert (=> b!4964203 (=> (not res!2118965) (not e!3103044))))

(declare-fun ruleValid!3800 (LexerInterface!7983 Rule!16582) Bool)

(assert (=> b!4964203 (= res!2118965 (ruleValid!3800 thiss!15247 (h!63885 rulesArg!259)))))

(declare-fun b!4964204 () Bool)

(assert (=> b!4964204 (= e!3103044 (rulesValidInductive!3294 thiss!15247 (t!368227 rulesArg!259)))))

(assert (= (and d!1597107 (not res!2118964)) b!4964203))

(assert (= (and b!4964203 res!2118965) b!4964204))

(declare-fun m!5988696 () Bool)

(assert (=> d!1597107 m!5988696))

(declare-fun m!5988698 () Bool)

(assert (=> b!4964203 m!5988698))

(declare-fun m!5988700 () Bool)

(assert (=> b!4964204 m!5988700))

(assert (=> b!4964138 d!1597107))

(declare-fun d!1597111 () Bool)

(declare-fun c!846925 () Bool)

(assert (=> d!1597111 (= c!846925 (is-Node!15143 (c!846918 totalInput!464)))))

(declare-fun e!3103050 () Bool)

(assert (=> d!1597111 (= (inv!75059 (c!846918 totalInput!464)) e!3103050)))

(declare-fun b!4964213 () Bool)

(declare-fun inv!75065 (Conc!15143) Bool)

(assert (=> b!4964213 (= e!3103050 (inv!75065 (c!846918 totalInput!464)))))

(declare-fun b!4964214 () Bool)

(declare-fun e!3103051 () Bool)

(assert (=> b!4964214 (= e!3103050 e!3103051)))

(declare-fun res!2118968 () Bool)

(assert (=> b!4964214 (= res!2118968 (not (is-Leaf!25164 (c!846918 totalInput!464))))))

(assert (=> b!4964214 (=> res!2118968 e!3103051)))

(declare-fun b!4964215 () Bool)

(declare-fun inv!75066 (Conc!15143) Bool)

(assert (=> b!4964215 (= e!3103051 (inv!75066 (c!846918 totalInput!464)))))

(assert (= (and d!1597111 c!846925) b!4964213))

(assert (= (and d!1597111 (not c!846925)) b!4964214))

(assert (= (and b!4964214 (not res!2118968)) b!4964215))

(declare-fun m!5988702 () Bool)

(assert (=> b!4964213 m!5988702))

(declare-fun m!5988704 () Bool)

(assert (=> b!4964215 m!5988704))

(assert (=> b!4964128 d!1597111))

(declare-fun d!1597113 () Bool)

(declare-fun e!3103054 () Bool)

(assert (=> d!1597113 e!3103054))

(declare-fun res!2118971 () Bool)

(assert (=> d!1597113 (=> res!2118971 e!3103054)))

(declare-fun lt!2049620 () Bool)

(assert (=> d!1597113 (= res!2118971 (not lt!2049620))))

(declare-fun drop!2347 (List!57559 Int) List!57559)

(declare-fun size!38064 (List!57559) Int)

(assert (=> d!1597113 (= lt!2049620 (= lt!2049571 (drop!2347 (list!18359 totalInput!464) (- (size!38064 (list!18359 totalInput!464)) (size!38064 lt!2049571)))))))

(assert (=> d!1597113 (= (isSuffix!1190 lt!2049571 (list!18359 totalInput!464)) lt!2049620)))

(declare-fun b!4964218 () Bool)

(assert (=> b!4964218 (= e!3103054 (>= (size!38064 (list!18359 totalInput!464)) (size!38064 lt!2049571)))))

(assert (= (and d!1597113 (not res!2118971)) b!4964218))

(assert (=> d!1597113 m!5988628))

(declare-fun m!5988706 () Bool)

(assert (=> d!1597113 m!5988706))

(declare-fun m!5988708 () Bool)

(assert (=> d!1597113 m!5988708))

(assert (=> d!1597113 m!5988628))

(declare-fun m!5988710 () Bool)

(assert (=> d!1597113 m!5988710))

(assert (=> b!4964218 m!5988628))

(assert (=> b!4964218 m!5988706))

(assert (=> b!4964218 m!5988708))

(assert (=> b!4964139 d!1597113))

(declare-fun d!1597115 () Bool)

(assert (=> d!1597115 (= (list!18359 totalInput!464) (list!18361 (c!846918 totalInput!464)))))

(declare-fun bs!1182874 () Bool)

(assert (= bs!1182874 d!1597115))

(declare-fun m!5988712 () Bool)

(assert (=> bs!1182874 m!5988712))

(assert (=> b!4964139 d!1597115))

(declare-fun d!1597117 () Bool)

(assert (=> d!1597117 (= (list!18359 input!1342) (list!18361 (c!846918 input!1342)))))

(declare-fun bs!1182875 () Bool)

(assert (= bs!1182875 d!1597117))

(declare-fun m!5988714 () Bool)

(assert (=> bs!1182875 m!5988714))

(assert (=> b!4964139 d!1597117))

(declare-fun b!4964230 () Bool)

(declare-fun e!3103062 () Bool)

(assert (=> b!4964230 (= e!3103062 (>= (size!38064 lt!2049571) (size!38064 lt!2049571)))))

(declare-fun b!4964229 () Bool)

(declare-fun e!3103061 () Bool)

(declare-fun tail!9799 (List!57559) List!57559)

(assert (=> b!4964229 (= e!3103061 (isPrefix!5242 (tail!9799 lt!2049571) (tail!9799 lt!2049571)))))

(declare-fun b!4964227 () Bool)

(declare-fun e!3103063 () Bool)

(assert (=> b!4964227 (= e!3103063 e!3103061)))

(declare-fun res!2118981 () Bool)

(assert (=> b!4964227 (=> (not res!2118981) (not e!3103061))))

(assert (=> b!4964227 (= res!2118981 (not (is-Nil!57435 lt!2049571)))))

(declare-fun d!1597119 () Bool)

(assert (=> d!1597119 e!3103062))

(declare-fun res!2118980 () Bool)

(assert (=> d!1597119 (=> res!2118980 e!3103062)))

(declare-fun lt!2049623 () Bool)

(assert (=> d!1597119 (= res!2118980 (not lt!2049623))))

(assert (=> d!1597119 (= lt!2049623 e!3103063)))

(declare-fun res!2118983 () Bool)

(assert (=> d!1597119 (=> res!2118983 e!3103063)))

(assert (=> d!1597119 (= res!2118983 (is-Nil!57435 lt!2049571))))

(assert (=> d!1597119 (= (isPrefix!5242 lt!2049571 lt!2049571) lt!2049623)))

(declare-fun b!4964228 () Bool)

(declare-fun res!2118982 () Bool)

(assert (=> b!4964228 (=> (not res!2118982) (not e!3103061))))

(declare-fun head!10666 (List!57559) C!27498)

(assert (=> b!4964228 (= res!2118982 (= (head!10666 lt!2049571) (head!10666 lt!2049571)))))

(assert (= (and d!1597119 (not res!2118983)) b!4964227))

(assert (= (and b!4964227 res!2118981) b!4964228))

(assert (= (and b!4964228 res!2118982) b!4964229))

(assert (= (and d!1597119 (not res!2118980)) b!4964230))

(assert (=> b!4964230 m!5988708))

(assert (=> b!4964230 m!5988708))

(declare-fun m!5988716 () Bool)

(assert (=> b!4964229 m!5988716))

(assert (=> b!4964229 m!5988716))

(assert (=> b!4964229 m!5988716))

(assert (=> b!4964229 m!5988716))

(declare-fun m!5988718 () Bool)

(assert (=> b!4964229 m!5988718))

(declare-fun m!5988720 () Bool)

(assert (=> b!4964228 m!5988720))

(assert (=> b!4964228 m!5988720))

(assert (=> b!4964140 d!1597119))

(declare-fun d!1597121 () Bool)

(assert (=> d!1597121 (isPrefix!5242 lt!2049571 lt!2049571)))

(declare-fun lt!2049626 () Unit!148334)

(declare-fun choose!36651 (List!57559 List!57559) Unit!148334)

(assert (=> d!1597121 (= lt!2049626 (choose!36651 lt!2049571 lt!2049571))))

(assert (=> d!1597121 (= (lemmaIsPrefixRefl!3566 lt!2049571 lt!2049571) lt!2049626)))

(declare-fun bs!1182876 () Bool)

(assert (= bs!1182876 d!1597121))

(assert (=> bs!1182876 m!5988624))

(declare-fun m!5988722 () Bool)

(assert (=> bs!1182876 m!5988722))

(assert (=> b!4964140 d!1597121))

(declare-fun d!1597123 () Bool)

(assert (=> d!1597123 (= (get!19935 lt!2049574) (v!50431 lt!2049574))))

(assert (=> b!4964129 d!1597123))

(declare-fun d!1597125 () Bool)

(assert (not d!1597125))

(assert (=> b!4964129 d!1597125))

(declare-fun d!1597127 () Bool)

(declare-fun e!3103079 () Bool)

(assert (=> d!1597127 e!3103079))

(declare-fun res!2118997 () Bool)

(assert (=> d!1597127 (=> (not res!2118997) (not e!3103079))))

(declare-fun lt!2049644 () Option!14446)

(declare-fun isDefined!11360 (Option!14446) Bool)

(assert (=> d!1597127 (= res!2118997 (= (isDefined!11360 lt!2049644) (isDefined!11358 (maxPrefixZipper!784 thiss!15247 (t!368227 rulesArg!259) (list!18359 input!1342)))))))

(declare-fun e!3103078 () Option!14446)

(assert (=> d!1597127 (= lt!2049644 e!3103078)))

(declare-fun c!846928 () Bool)

(assert (=> d!1597127 (= c!846928 (and (is-Cons!57437 (t!368227 rulesArg!259)) (is-Nil!57437 (t!368227 (t!368227 rulesArg!259)))))))

(declare-fun lt!2049642 () Unit!148334)

(declare-fun lt!2049643 () Unit!148334)

(assert (=> d!1597127 (= lt!2049642 lt!2049643)))

(declare-fun lt!2049641 () List!57559)

(declare-fun lt!2049647 () List!57559)

(assert (=> d!1597127 (isPrefix!5242 lt!2049641 lt!2049647)))

(assert (=> d!1597127 (= lt!2049643 (lemmaIsPrefixRefl!3566 lt!2049641 lt!2049647))))

(assert (=> d!1597127 (= lt!2049647 (list!18359 input!1342))))

(assert (=> d!1597127 (= lt!2049641 (list!18359 input!1342))))

(assert (=> d!1597127 (rulesValidInductive!3294 thiss!15247 (t!368227 rulesArg!259))))

(assert (=> d!1597127 (= (maxPrefixZipperSequenceV2!702 thiss!15247 (t!368227 rulesArg!259) input!1342 totalInput!464) lt!2049644)))

(declare-fun b!4964247 () Bool)

(declare-fun e!3103077 () Bool)

(assert (=> b!4964247 (= e!3103077 (= (list!18359 (_2!34377 (get!19936 lt!2049644))) (_2!34378 (get!19935 (maxPrefix!4658 thiss!15247 (t!368227 rulesArg!259) (list!18359 input!1342))))))))

(declare-fun b!4964248 () Bool)

(declare-fun e!3103081 () Bool)

(assert (=> b!4964248 (= e!3103081 e!3103077)))

(declare-fun res!2118996 () Bool)

(assert (=> b!4964248 (=> (not res!2118996) (not e!3103077))))

(assert (=> b!4964248 (= res!2118996 (= (_1!34377 (get!19936 lt!2049644)) (_1!34378 (get!19935 (maxPrefix!4658 thiss!15247 (t!368227 rulesArg!259) (list!18359 input!1342))))))))

(declare-fun b!4964249 () Bool)

(declare-fun call!346132 () Option!14446)

(assert (=> b!4964249 (= e!3103078 call!346132)))

(declare-fun b!4964250 () Bool)

(declare-fun lt!2049645 () Option!14446)

(declare-fun lt!2049646 () Option!14446)

(assert (=> b!4964250 (= e!3103078 (ite (and (is-None!14445 lt!2049645) (is-None!14445 lt!2049646)) None!14445 (ite (is-None!14445 lt!2049646) lt!2049645 (ite (is-None!14445 lt!2049645) lt!2049646 (ite (>= (size!38062 (_1!34377 (v!50432 lt!2049645))) (size!38062 (_1!34377 (v!50432 lt!2049646)))) lt!2049645 lt!2049646)))))))

(assert (=> b!4964250 (= lt!2049645 call!346132)))

(assert (=> b!4964250 (= lt!2049646 (maxPrefixZipperSequenceV2!702 thiss!15247 (t!368227 (t!368227 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun b!4964251 () Bool)

(assert (=> b!4964251 (= e!3103079 e!3103081)))

(declare-fun res!2119000 () Bool)

(assert (=> b!4964251 (=> res!2119000 e!3103081)))

(assert (=> b!4964251 (= res!2119000 (not (isDefined!11360 lt!2049644)))))

(declare-fun b!4964252 () Bool)

(declare-fun res!2118998 () Bool)

(assert (=> b!4964252 (=> (not res!2118998) (not e!3103079))))

(declare-fun e!3103080 () Bool)

(assert (=> b!4964252 (= res!2118998 e!3103080)))

(declare-fun res!2118999 () Bool)

(assert (=> b!4964252 (=> res!2118999 e!3103080)))

(assert (=> b!4964252 (= res!2118999 (not (isDefined!11360 lt!2049644)))))

(declare-fun b!4964253 () Bool)

(declare-fun e!3103076 () Bool)

(assert (=> b!4964253 (= e!3103080 e!3103076)))

(declare-fun res!2119001 () Bool)

(assert (=> b!4964253 (=> (not res!2119001) (not e!3103076))))

(assert (=> b!4964253 (= res!2119001 (= (_1!34377 (get!19936 lt!2049644)) (_1!34378 (get!19935 (maxPrefixZipper!784 thiss!15247 (t!368227 rulesArg!259) (list!18359 input!1342))))))))

(declare-fun b!4964254 () Bool)

(assert (=> b!4964254 (= e!3103076 (= (list!18359 (_2!34377 (get!19936 lt!2049644))) (_2!34378 (get!19935 (maxPrefixZipper!784 thiss!15247 (t!368227 rulesArg!259) (list!18359 input!1342))))))))

(declare-fun bm!346127 () Bool)

(assert (=> bm!346127 (= call!346132 (maxPrefixOneRuleZipperSequenceV2!359 thiss!15247 (h!63885 (t!368227 rulesArg!259)) input!1342 totalInput!464))))

(assert (= (and d!1597127 c!846928) b!4964249))

(assert (= (and d!1597127 (not c!846928)) b!4964250))

(assert (= (or b!4964249 b!4964250) bm!346127))

(assert (= (and d!1597127 res!2118997) b!4964252))

(assert (= (and b!4964252 (not res!2118999)) b!4964253))

(assert (= (and b!4964253 res!2119001) b!4964254))

(assert (= (and b!4964252 res!2118998) b!4964251))

(assert (= (and b!4964251 (not res!2119000)) b!4964248))

(assert (= (and b!4964248 res!2118996) b!4964247))

(assert (=> b!4964254 m!5988632))

(declare-fun m!5988724 () Bool)

(assert (=> b!4964254 m!5988724))

(declare-fun m!5988726 () Bool)

(assert (=> b!4964254 m!5988726))

(declare-fun m!5988728 () Bool)

(assert (=> b!4964254 m!5988728))

(assert (=> b!4964254 m!5988632))

(assert (=> b!4964254 m!5988724))

(declare-fun m!5988730 () Bool)

(assert (=> b!4964254 m!5988730))

(declare-fun m!5988732 () Bool)

(assert (=> d!1597127 m!5988732))

(assert (=> d!1597127 m!5988632))

(assert (=> d!1597127 m!5988724))

(assert (=> d!1597127 m!5988724))

(declare-fun m!5988734 () Bool)

(assert (=> d!1597127 m!5988734))

(declare-fun m!5988736 () Bool)

(assert (=> d!1597127 m!5988736))

(assert (=> d!1597127 m!5988632))

(declare-fun m!5988738 () Bool)

(assert (=> d!1597127 m!5988738))

(assert (=> d!1597127 m!5988700))

(declare-fun m!5988740 () Bool)

(assert (=> bm!346127 m!5988740))

(assert (=> b!4964252 m!5988738))

(assert (=> b!4964248 m!5988728))

(assert (=> b!4964248 m!5988632))

(assert (=> b!4964248 m!5988632))

(declare-fun m!5988742 () Bool)

(assert (=> b!4964248 m!5988742))

(assert (=> b!4964248 m!5988742))

(declare-fun m!5988744 () Bool)

(assert (=> b!4964248 m!5988744))

(declare-fun m!5988746 () Bool)

(assert (=> b!4964250 m!5988746))

(assert (=> b!4964251 m!5988738))

(assert (=> b!4964247 m!5988742))

(assert (=> b!4964247 m!5988744))

(assert (=> b!4964247 m!5988632))

(assert (=> b!4964247 m!5988742))

(assert (=> b!4964247 m!5988726))

(assert (=> b!4964247 m!5988728))

(assert (=> b!4964247 m!5988632))

(assert (=> b!4964253 m!5988728))

(assert (=> b!4964253 m!5988632))

(assert (=> b!4964253 m!5988632))

(assert (=> b!4964253 m!5988724))

(assert (=> b!4964253 m!5988724))

(assert (=> b!4964253 m!5988730))

(assert (=> b!4964130 d!1597127))

(declare-fun b!4964293 () Bool)

(declare-fun e!3103110 () Bool)

(assert (=> b!4964293 (= e!3103110 true)))

(declare-fun b!4964292 () Bool)

(declare-fun e!3103109 () Bool)

(assert (=> b!4964292 (= e!3103109 e!3103110)))

(declare-fun b!4964280 () Bool)

(assert (=> b!4964280 e!3103109))

(assert (= b!4964292 b!4964293))

(assert (= b!4964280 b!4964292))

(declare-fun lambda!247309 () Int)

(declare-fun order!26189 () Int)

(declare-fun order!26187 () Int)

(declare-fun dynLambda!23142 (Int Int) Int)

(declare-fun dynLambda!23143 (Int Int) Int)

(assert (=> b!4964293 (< (dynLambda!23142 order!26187 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) (dynLambda!23143 order!26189 lambda!247309))))

(declare-fun order!26191 () Int)

(declare-fun dynLambda!23144 (Int Int) Int)

(assert (=> b!4964293 (< (dynLambda!23144 order!26191 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) (dynLambda!23143 order!26189 lambda!247309))))

(declare-fun e!3103100 () Option!14446)

(declare-datatypes ((tuple2!62156 0))(
  ( (tuple2!62157 (_1!34381 BalanceConc!29716) (_2!34381 BalanceConc!29716)) )
))
(declare-fun lt!2049676 () tuple2!62156)

(declare-fun apply!13902 (TokenValueInjection!16710 BalanceConc!29716) TokenValue!8701)

(declare-fun size!38065 (BalanceConc!29716) Int)

(assert (=> b!4964280 (= e!3103100 (Some!14445 (tuple2!62149 (Token!15279 (apply!13902 (transformation!8391 (h!63885 rulesArg!259)) (_1!34381 lt!2049676)) (h!63885 rulesArg!259) (size!38065 (_1!34381 lt!2049676)) (list!18359 (_1!34381 lt!2049676))) (_2!34381 lt!2049676))))))

(declare-fun lt!2049672 () List!57559)

(assert (=> b!4964280 (= lt!2049672 (list!18359 input!1342))))

(declare-fun lt!2049677 () Unit!148334)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1814 (Regex!13624 List!57559) Unit!148334)

(assert (=> b!4964280 (= lt!2049677 (longestMatchIsAcceptedByMatchOrIsEmpty!1814 (regex!8391 (h!63885 rulesArg!259)) lt!2049672))))

(declare-fun res!2119016 () Bool)

(declare-fun isEmpty!30923 (List!57559) Bool)

(declare-datatypes ((tuple2!62158 0))(
  ( (tuple2!62159 (_1!34382 List!57559) (_2!34382 List!57559)) )
))
(declare-fun findLongestMatchInner!1853 (Regex!13624 List!57559 Int List!57559 List!57559 Int) tuple2!62158)

(assert (=> b!4964280 (= res!2119016 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))))))

(declare-fun e!3103102 () Bool)

(assert (=> b!4964280 (=> res!2119016 e!3103102)))

(assert (=> b!4964280 e!3103102))

(declare-fun lt!2049675 () Unit!148334)

(assert (=> b!4964280 (= lt!2049675 lt!2049677)))

(declare-fun lt!2049673 () Unit!148334)

(declare-fun lemmaInv!1332 (TokenValueInjection!16710) Unit!148334)

(assert (=> b!4964280 (= lt!2049673 (lemmaInv!1332 (transformation!8391 (h!63885 rulesArg!259))))))

(declare-fun lt!2049670 () Unit!148334)

(declare-fun ForallOf!1225 (Int BalanceConc!29716) Unit!148334)

(assert (=> b!4964280 (= lt!2049670 (ForallOf!1225 lambda!247309 (_1!34381 lt!2049676)))))

(declare-fun lt!2049671 () Unit!148334)

(declare-fun seqFromList!6034 (List!57559) BalanceConc!29716)

(assert (=> b!4964280 (= lt!2049671 (ForallOf!1225 lambda!247309 (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))))))

(declare-fun lt!2049674 () Option!14446)

(assert (=> b!4964280 (= lt!2049674 (Some!14445 (tuple2!62149 (Token!15279 (apply!13902 (transformation!8391 (h!63885 rulesArg!259)) (_1!34381 lt!2049676)) (h!63885 rulesArg!259) (size!38065 (_1!34381 lt!2049676)) (list!18359 (_1!34381 lt!2049676))) (_2!34381 lt!2049676))))))

(declare-fun lt!2049669 () Unit!148334)

(declare-fun lemmaEqSameImage!1166 (TokenValueInjection!16710 BalanceConc!29716 BalanceConc!29716) Unit!148334)

(assert (=> b!4964280 (= lt!2049669 (lemmaEqSameImage!1166 (transformation!8391 (h!63885 rulesArg!259)) (_1!34381 lt!2049676) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))))))

(declare-fun b!4964281 () Bool)

(assert (=> b!4964281 (= e!3103100 None!14445)))

(declare-fun b!4964282 () Bool)

(declare-fun e!3103101 () Bool)

(declare-fun e!3103104 () Bool)

(assert (=> b!4964282 (= e!3103101 e!3103104)))

(declare-fun res!2119017 () Bool)

(assert (=> b!4964282 (=> res!2119017 e!3103104)))

(declare-fun lt!2049678 () Option!14446)

(assert (=> b!4964282 (= res!2119017 (not (isDefined!11360 lt!2049678)))))

(declare-fun d!1597129 () Bool)

(assert (=> d!1597129 e!3103101))

(declare-fun res!2119015 () Bool)

(assert (=> d!1597129 (=> (not res!2119015) (not e!3103101))))

(declare-fun maxPrefixOneRule!3627 (LexerInterface!7983 Rule!16582 List!57559) Option!14445)

(assert (=> d!1597129 (= res!2119015 (= (isDefined!11360 lt!2049678) (isDefined!11358 (maxPrefixOneRule!3627 thiss!15247 (h!63885 rulesArg!259) (list!18359 input!1342)))))))

(assert (=> d!1597129 (= lt!2049678 e!3103100)))

(declare-fun c!846934 () Bool)

(declare-fun isEmpty!30924 (BalanceConc!29716) Bool)

(assert (=> d!1597129 (= c!846934 (isEmpty!30924 (_1!34381 lt!2049676)))))

(declare-fun findLongestMatchWithZipperSequenceV2!162 (Regex!13624 BalanceConc!29716 BalanceConc!29716) tuple2!62156)

(assert (=> d!1597129 (= lt!2049676 (findLongestMatchWithZipperSequenceV2!162 (regex!8391 (h!63885 rulesArg!259)) input!1342 totalInput!464))))

(assert (=> d!1597129 (ruleValid!3800 thiss!15247 (h!63885 rulesArg!259))))

(assert (=> d!1597129 (= (maxPrefixOneRuleZipperSequenceV2!359 thiss!15247 (h!63885 rulesArg!259) input!1342 totalInput!464) lt!2049678)))

(declare-fun b!4964283 () Bool)

(declare-fun matchR!6634 (Regex!13624 List!57559) Bool)

(assert (=> b!4964283 (= e!3103102 (matchR!6634 (regex!8391 (h!63885 rulesArg!259)) (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))))))

(declare-fun b!4964284 () Bool)

(declare-fun e!3103103 () Bool)

(assert (=> b!4964284 (= e!3103104 e!3103103)))

(declare-fun res!2119018 () Bool)

(assert (=> b!4964284 (=> (not res!2119018) (not e!3103103))))

(assert (=> b!4964284 (= res!2119018 (= (_1!34377 (get!19936 lt!2049678)) (_1!34378 (get!19935 (maxPrefixOneRule!3627 thiss!15247 (h!63885 rulesArg!259) (list!18359 input!1342))))))))

(declare-fun b!4964285 () Bool)

(assert (=> b!4964285 (= e!3103103 (= (list!18359 (_2!34377 (get!19936 lt!2049678))) (_2!34378 (get!19935 (maxPrefixOneRule!3627 thiss!15247 (h!63885 rulesArg!259) (list!18359 input!1342))))))))

(assert (= (and d!1597129 c!846934) b!4964281))

(assert (= (and d!1597129 (not c!846934)) b!4964280))

(assert (= (and b!4964280 (not res!2119016)) b!4964283))

(assert (= (and d!1597129 res!2119015) b!4964282))

(assert (= (and b!4964282 (not res!2119017)) b!4964284))

(assert (= (and b!4964284 res!2119018) b!4964285))

(declare-fun m!5988764 () Bool)

(assert (=> d!1597129 m!5988764))

(assert (=> d!1597129 m!5988632))

(declare-fun m!5988766 () Bool)

(assert (=> d!1597129 m!5988766))

(assert (=> d!1597129 m!5988632))

(declare-fun m!5988768 () Bool)

(assert (=> d!1597129 m!5988768))

(assert (=> d!1597129 m!5988766))

(declare-fun m!5988770 () Bool)

(assert (=> d!1597129 m!5988770))

(declare-fun m!5988772 () Bool)

(assert (=> d!1597129 m!5988772))

(assert (=> d!1597129 m!5988698))

(assert (=> b!4964282 m!5988768))

(declare-fun m!5988774 () Bool)

(assert (=> b!4964280 m!5988774))

(declare-fun m!5988776 () Bool)

(assert (=> b!4964280 m!5988776))

(declare-fun m!5988778 () Bool)

(assert (=> b!4964280 m!5988778))

(declare-fun m!5988780 () Bool)

(assert (=> b!4964280 m!5988780))

(assert (=> b!4964280 m!5988776))

(declare-fun m!5988782 () Bool)

(assert (=> b!4964280 m!5988782))

(declare-fun m!5988784 () Bool)

(assert (=> b!4964280 m!5988784))

(declare-fun m!5988786 () Bool)

(assert (=> b!4964280 m!5988786))

(declare-fun m!5988788 () Bool)

(assert (=> b!4964280 m!5988788))

(declare-fun m!5988790 () Bool)

(assert (=> b!4964280 m!5988790))

(assert (=> b!4964280 m!5988776))

(declare-fun m!5988792 () Bool)

(assert (=> b!4964280 m!5988792))

(declare-fun m!5988794 () Bool)

(assert (=> b!4964280 m!5988794))

(declare-fun m!5988796 () Bool)

(assert (=> b!4964280 m!5988796))

(declare-fun m!5988798 () Bool)

(assert (=> b!4964280 m!5988798))

(assert (=> b!4964280 m!5988784))

(assert (=> b!4964280 m!5988632))

(assert (=> b!4964280 m!5988790))

(assert (=> b!4964280 m!5988786))

(assert (=> b!4964285 m!5988632))

(assert (=> b!4964285 m!5988766))

(assert (=> b!4964285 m!5988632))

(declare-fun m!5988800 () Bool)

(assert (=> b!4964285 m!5988800))

(assert (=> b!4964285 m!5988766))

(declare-fun m!5988802 () Bool)

(assert (=> b!4964285 m!5988802))

(declare-fun m!5988804 () Bool)

(assert (=> b!4964285 m!5988804))

(assert (=> b!4964284 m!5988804))

(assert (=> b!4964284 m!5988632))

(assert (=> b!4964284 m!5988632))

(assert (=> b!4964284 m!5988766))

(assert (=> b!4964284 m!5988766))

(assert (=> b!4964284 m!5988802))

(assert (=> b!4964283 m!5988784))

(assert (=> b!4964283 m!5988786))

(assert (=> b!4964283 m!5988784))

(assert (=> b!4964283 m!5988786))

(assert (=> b!4964283 m!5988788))

(declare-fun m!5988806 () Bool)

(assert (=> b!4964283 m!5988806))

(assert (=> b!4964130 d!1597129))

(declare-fun d!1597145 () Bool)

(declare-fun c!846935 () Bool)

(assert (=> d!1597145 (= c!846935 (is-Node!15143 (c!846918 input!1342)))))

(declare-fun e!3103111 () Bool)

(assert (=> d!1597145 (= (inv!75059 (c!846918 input!1342)) e!3103111)))

(declare-fun b!4964294 () Bool)

(assert (=> b!4964294 (= e!3103111 (inv!75065 (c!846918 input!1342)))))

(declare-fun b!4964295 () Bool)

(declare-fun e!3103112 () Bool)

(assert (=> b!4964295 (= e!3103111 e!3103112)))

(declare-fun res!2119019 () Bool)

(assert (=> b!4964295 (= res!2119019 (not (is-Leaf!25164 (c!846918 input!1342))))))

(assert (=> b!4964295 (=> res!2119019 e!3103112)))

(declare-fun b!4964296 () Bool)

(assert (=> b!4964296 (= e!3103112 (inv!75066 (c!846918 input!1342)))))

(assert (= (and d!1597145 c!846935) b!4964294))

(assert (= (and d!1597145 (not c!846935)) b!4964295))

(assert (= (and b!4964295 (not res!2119019)) b!4964296))

(declare-fun m!5988808 () Bool)

(assert (=> b!4964294 m!5988808))

(declare-fun m!5988810 () Bool)

(assert (=> b!4964296 m!5988810))

(assert (=> b!4964141 d!1597145))

(declare-fun d!1597147 () Bool)

(assert (=> d!1597147 (= (get!19935 (maxPrefix!4658 thiss!15247 rulesArg!259 lt!2049571)) (v!50431 (maxPrefix!4658 thiss!15247 rulesArg!259 lt!2049571)))))

(assert (=> b!4964132 d!1597147))

(declare-fun b!4964315 () Bool)

(declare-fun res!2119035 () Bool)

(declare-fun e!3103120 () Bool)

(assert (=> b!4964315 (=> (not res!2119035) (not e!3103120))))

(declare-fun lt!2049691 () Option!14445)

(assert (=> b!4964315 (= res!2119035 (< (size!38064 (_2!34378 (get!19935 lt!2049691))) (size!38064 lt!2049571)))))

(declare-fun b!4964316 () Bool)

(declare-fun contains!19536 (List!57561 Rule!16582) Bool)

(assert (=> b!4964316 (= e!3103120 (contains!19536 rulesArg!259 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))))

(declare-fun bm!346130 () Bool)

(declare-fun call!346135 () Option!14445)

(assert (=> bm!346130 (= call!346135 (maxPrefixOneRule!3627 thiss!15247 (h!63885 rulesArg!259) lt!2049571))))

(declare-fun b!4964318 () Bool)

(declare-fun res!2119038 () Bool)

(assert (=> b!4964318 (=> (not res!2119038) (not e!3103120))))

(declare-fun charsOf!5435 (Token!15278) BalanceConc!29716)

(assert (=> b!4964318 (= res!2119038 (matchR!6634 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))) (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))

(declare-fun b!4964319 () Bool)

(declare-fun e!3103121 () Option!14445)

(declare-fun lt!2049693 () Option!14445)

(declare-fun lt!2049690 () Option!14445)

(assert (=> b!4964319 (= e!3103121 (ite (and (is-None!14444 lt!2049693) (is-None!14444 lt!2049690)) None!14444 (ite (is-None!14444 lt!2049690) lt!2049693 (ite (is-None!14444 lt!2049693) lt!2049690 (ite (>= (size!38062 (_1!34378 (v!50431 lt!2049693))) (size!38062 (_1!34378 (v!50431 lt!2049690)))) lt!2049693 lt!2049690)))))))

(assert (=> b!4964319 (= lt!2049693 call!346135)))

(assert (=> b!4964319 (= lt!2049690 (maxPrefix!4658 thiss!15247 (t!368227 rulesArg!259) lt!2049571))))

(declare-fun b!4964320 () Bool)

(assert (=> b!4964320 (= e!3103121 call!346135)))

(declare-fun b!4964321 () Bool)

(declare-fun res!2119040 () Bool)

(assert (=> b!4964321 (=> (not res!2119040) (not e!3103120))))

(assert (=> b!4964321 (= res!2119040 (= (value!268585 (_1!34378 (get!19935 lt!2049691))) (apply!13902 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049691)))))))))

(declare-fun b!4964322 () Bool)

(declare-fun res!2119036 () Bool)

(assert (=> b!4964322 (=> (not res!2119036) (not e!3103120))))

(assert (=> b!4964322 (= res!2119036 (= (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))) (originalCharacters!8670 (_1!34378 (get!19935 lt!2049691)))))))

(declare-fun b!4964323 () Bool)

(declare-fun res!2119037 () Bool)

(assert (=> b!4964323 (=> (not res!2119037) (not e!3103120))))

(declare-fun ++!12530 (List!57559 List!57559) List!57559)

(assert (=> b!4964323 (= res!2119037 (= (++!12530 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))) (_2!34378 (get!19935 lt!2049691))) lt!2049571))))

(declare-fun b!4964317 () Bool)

(declare-fun e!3103119 () Bool)

(assert (=> b!4964317 (= e!3103119 e!3103120)))

(declare-fun res!2119034 () Bool)

(assert (=> b!4964317 (=> (not res!2119034) (not e!3103120))))

(assert (=> b!4964317 (= res!2119034 (isDefined!11358 lt!2049691))))

(declare-fun d!1597149 () Bool)

(assert (=> d!1597149 e!3103119))

(declare-fun res!2119039 () Bool)

(assert (=> d!1597149 (=> res!2119039 e!3103119)))

(declare-fun isEmpty!30925 (Option!14445) Bool)

(assert (=> d!1597149 (= res!2119039 (isEmpty!30925 lt!2049691))))

(assert (=> d!1597149 (= lt!2049691 e!3103121)))

(declare-fun c!846938 () Bool)

(assert (=> d!1597149 (= c!846938 (and (is-Cons!57437 rulesArg!259) (is-Nil!57437 (t!368227 rulesArg!259))))))

(declare-fun lt!2049689 () Unit!148334)

(declare-fun lt!2049692 () Unit!148334)

(assert (=> d!1597149 (= lt!2049689 lt!2049692)))

(assert (=> d!1597149 (isPrefix!5242 lt!2049571 lt!2049571)))

(assert (=> d!1597149 (= lt!2049692 (lemmaIsPrefixRefl!3566 lt!2049571 lt!2049571))))

(assert (=> d!1597149 (rulesValidInductive!3294 thiss!15247 rulesArg!259)))

(assert (=> d!1597149 (= (maxPrefix!4658 thiss!15247 rulesArg!259 lt!2049571) lt!2049691)))

(assert (= (and d!1597149 c!846938) b!4964320))

(assert (= (and d!1597149 (not c!846938)) b!4964319))

(assert (= (or b!4964320 b!4964319) bm!346130))

(assert (= (and d!1597149 (not res!2119039)) b!4964317))

(assert (= (and b!4964317 res!2119034) b!4964322))

(assert (= (and b!4964322 res!2119036) b!4964315))

(assert (= (and b!4964315 res!2119035) b!4964323))

(assert (= (and b!4964323 res!2119037) b!4964321))

(assert (= (and b!4964321 res!2119040) b!4964318))

(assert (= (and b!4964318 res!2119038) b!4964316))

(declare-fun m!5988812 () Bool)

(assert (=> d!1597149 m!5988812))

(assert (=> d!1597149 m!5988624))

(assert (=> d!1597149 m!5988626))

(assert (=> d!1597149 m!5988642))

(declare-fun m!5988814 () Bool)

(assert (=> b!4964316 m!5988814))

(declare-fun m!5988816 () Bool)

(assert (=> b!4964316 m!5988816))

(declare-fun m!5988818 () Bool)

(assert (=> b!4964319 m!5988818))

(assert (=> b!4964321 m!5988814))

(declare-fun m!5988820 () Bool)

(assert (=> b!4964321 m!5988820))

(assert (=> b!4964321 m!5988820))

(declare-fun m!5988822 () Bool)

(assert (=> b!4964321 m!5988822))

(assert (=> b!4964322 m!5988814))

(declare-fun m!5988824 () Bool)

(assert (=> b!4964322 m!5988824))

(assert (=> b!4964322 m!5988824))

(declare-fun m!5988826 () Bool)

(assert (=> b!4964322 m!5988826))

(declare-fun m!5988828 () Bool)

(assert (=> bm!346130 m!5988828))

(declare-fun m!5988830 () Bool)

(assert (=> b!4964317 m!5988830))

(assert (=> b!4964323 m!5988814))

(assert (=> b!4964323 m!5988824))

(assert (=> b!4964323 m!5988824))

(assert (=> b!4964323 m!5988826))

(assert (=> b!4964323 m!5988826))

(declare-fun m!5988832 () Bool)

(assert (=> b!4964323 m!5988832))

(assert (=> b!4964318 m!5988814))

(assert (=> b!4964318 m!5988824))

(assert (=> b!4964318 m!5988824))

(assert (=> b!4964318 m!5988826))

(assert (=> b!4964318 m!5988826))

(declare-fun m!5988834 () Bool)

(assert (=> b!4964318 m!5988834))

(assert (=> b!4964315 m!5988814))

(declare-fun m!5988836 () Bool)

(assert (=> b!4964315 m!5988836))

(assert (=> b!4964315 m!5988708))

(assert (=> b!4964132 d!1597149))

(assert (=> b!4964132 d!1597125))

(declare-fun d!1597151 () Bool)

(assert (=> d!1597151 (= (list!18359 (_2!34377 lt!2049579)) (list!18361 (c!846918 (_2!34377 lt!2049579))))))

(declare-fun bs!1182880 () Bool)

(assert (= bs!1182880 d!1597151))

(declare-fun m!5988838 () Bool)

(assert (=> bs!1182880 m!5988838))

(assert (=> b!4964133 d!1597151))

(declare-fun d!1597153 () Bool)

(assert (=> d!1597153 (= (isDefined!11358 lt!2049574) (not (isEmpty!30925 lt!2049574)))))

(declare-fun bs!1182881 () Bool)

(assert (= bs!1182881 d!1597153))

(declare-fun m!5988840 () Bool)

(assert (=> bs!1182881 m!5988840))

(assert (=> b!4964134 d!1597153))

(declare-fun lt!2049725 () Option!14445)

(declare-fun d!1597155 () Bool)

(assert (=> d!1597155 (= lt!2049725 (maxPrefix!4658 thiss!15247 rulesArg!259 lt!2049571))))

(declare-fun e!3103142 () Option!14445)

(assert (=> d!1597155 (= lt!2049725 e!3103142)))

(declare-fun c!846944 () Bool)

(assert (=> d!1597155 (= c!846944 (and (is-Cons!57437 rulesArg!259) (is-Nil!57437 (t!368227 rulesArg!259))))))

(declare-fun lt!2049727 () Unit!148334)

(declare-fun lt!2049729 () Unit!148334)

(assert (=> d!1597155 (= lt!2049727 lt!2049729)))

(assert (=> d!1597155 (isPrefix!5242 lt!2049571 lt!2049571)))

(assert (=> d!1597155 (= lt!2049729 (lemmaIsPrefixRefl!3566 lt!2049571 lt!2049571))))

(assert (=> d!1597155 (rulesValidInductive!3294 thiss!15247 rulesArg!259)))

(assert (=> d!1597155 (= (maxPrefixZipper!784 thiss!15247 rulesArg!259 lt!2049571) lt!2049725)))

(declare-fun bm!346136 () Bool)

(declare-fun call!346141 () Option!14445)

(declare-fun maxPrefixOneRuleZipper!294 (LexerInterface!7983 Rule!16582 List!57559) Option!14445)

(assert (=> bm!346136 (= call!346141 (maxPrefixOneRuleZipper!294 thiss!15247 (h!63885 rulesArg!259) lt!2049571))))

(declare-fun b!4964352 () Bool)

(assert (=> b!4964352 (= e!3103142 call!346141)))

(declare-fun b!4964353 () Bool)

(declare-fun lt!2049726 () Option!14445)

(declare-fun lt!2049728 () Option!14445)

(assert (=> b!4964353 (= e!3103142 (ite (and (is-None!14444 lt!2049726) (is-None!14444 lt!2049728)) None!14444 (ite (is-None!14444 lt!2049728) lt!2049726 (ite (is-None!14444 lt!2049726) lt!2049728 (ite (>= (size!38062 (_1!34378 (v!50431 lt!2049726))) (size!38062 (_1!34378 (v!50431 lt!2049728)))) lt!2049726 lt!2049728)))))))

(assert (=> b!4964353 (= lt!2049726 call!346141)))

(assert (=> b!4964353 (= lt!2049728 (maxPrefixZipper!784 thiss!15247 (t!368227 rulesArg!259) lt!2049571))))

(assert (= (and d!1597155 c!846944) b!4964352))

(assert (= (and d!1597155 (not c!846944)) b!4964353))

(assert (= (or b!4964352 b!4964353) bm!346136))

(assert (=> d!1597155 m!5988606))

(assert (=> d!1597155 m!5988624))

(assert (=> d!1597155 m!5988626))

(assert (=> d!1597155 m!5988642))

(declare-fun m!5988866 () Bool)

(assert (=> bm!346136 m!5988866))

(declare-fun m!5988868 () Bool)

(assert (=> b!4964353 m!5988868))

(assert (=> b!4964134 d!1597155))

(declare-fun d!1597159 () Bool)

(assert (=> d!1597159 (= (inv!75056 (tag!9255 (h!63885 rulesArg!259))) (= (mod (str.len (value!268584 (tag!9255 (h!63885 rulesArg!259)))) 2) 0))))

(assert (=> b!4964135 d!1597159))

(declare-fun d!1597161 () Bool)

(declare-fun res!2119061 () Bool)

(declare-fun e!3103145 () Bool)

(assert (=> d!1597161 (=> (not res!2119061) (not e!3103145))))

(declare-fun semiInverseModEq!3698 (Int Int) Bool)

(assert (=> d!1597161 (= res!2119061 (semiInverseModEq!3698 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))))))

(assert (=> d!1597161 (= (inv!75061 (transformation!8391 (h!63885 rulesArg!259))) e!3103145)))

(declare-fun b!4964356 () Bool)

(declare-fun equivClasses!3546 (Int Int) Bool)

(assert (=> b!4964356 (= e!3103145 (equivClasses!3546 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))))))

(assert (= (and d!1597161 res!2119061) b!4964356))

(declare-fun m!5988870 () Bool)

(assert (=> d!1597161 m!5988870))

(declare-fun m!5988872 () Bool)

(assert (=> b!4964356 m!5988872))

(assert (=> b!4964135 d!1597161))

(declare-fun d!1597163 () Bool)

(assert (=> d!1597163 (= (isEmpty!30921 rulesArg!259) (is-Nil!57437 rulesArg!259))))

(assert (=> b!4964136 d!1597163))

(declare-fun b!4964367 () Bool)

(declare-fun b_free!132743 () Bool)

(declare-fun b_next!133533 () Bool)

(assert (=> b!4964367 (= b_free!132743 (not b_next!133533))))

(declare-fun tp!1392650 () Bool)

(declare-fun b_and!347699 () Bool)

(assert (=> b!4964367 (= tp!1392650 b_and!347699)))

(declare-fun b_free!132745 () Bool)

(declare-fun b_next!133535 () Bool)

(assert (=> b!4964367 (= b_free!132745 (not b_next!133535))))

(declare-fun tp!1392651 () Bool)

(declare-fun b_and!347701 () Bool)

(assert (=> b!4964367 (= tp!1392651 b_and!347701)))

(declare-fun e!3103157 () Bool)

(assert (=> b!4964367 (= e!3103157 (and tp!1392650 tp!1392651))))

(declare-fun tp!1392649 () Bool)

(declare-fun b!4964366 () Bool)

(declare-fun e!3103154 () Bool)

(assert (=> b!4964366 (= e!3103154 (and tp!1392649 (inv!75056 (tag!9255 (h!63885 (t!368227 rulesArg!259)))) (inv!75061 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) e!3103157))))

(declare-fun b!4964365 () Bool)

(declare-fun e!3103155 () Bool)

(declare-fun tp!1392652 () Bool)

(assert (=> b!4964365 (= e!3103155 (and e!3103154 tp!1392652))))

(assert (=> b!4964131 (= tp!1392619 e!3103155)))

(assert (= b!4964366 b!4964367))

(assert (= b!4964365 b!4964366))

(assert (= (and b!4964131 (is-Cons!57437 (t!368227 rulesArg!259))) b!4964365))

(declare-fun m!5988874 () Bool)

(assert (=> b!4964366 m!5988874))

(declare-fun m!5988876 () Bool)

(assert (=> b!4964366 m!5988876))

(declare-fun e!3103163 () Bool)

(declare-fun b!4964376 () Bool)

(declare-fun tp!1392659 () Bool)

(declare-fun tp!1392661 () Bool)

(assert (=> b!4964376 (= e!3103163 (and (inv!75059 (left!41893 (c!846918 totalInput!464))) tp!1392659 (inv!75059 (right!42223 (c!846918 totalInput!464))) tp!1392661))))

(declare-fun b!4964378 () Bool)

(declare-fun e!3103162 () Bool)

(declare-fun tp!1392660 () Bool)

(assert (=> b!4964378 (= e!3103162 tp!1392660)))

(declare-fun b!4964377 () Bool)

(declare-fun inv!75067 (IArray!30347) Bool)

(assert (=> b!4964377 (= e!3103163 (and (inv!75067 (xs!18469 (c!846918 totalInput!464))) e!3103162))))

(assert (=> b!4964128 (= tp!1392618 (and (inv!75059 (c!846918 totalInput!464)) e!3103163))))

(assert (= (and b!4964128 (is-Node!15143 (c!846918 totalInput!464))) b!4964376))

(assert (= b!4964377 b!4964378))

(assert (= (and b!4964128 (is-Leaf!25164 (c!846918 totalInput!464))) b!4964377))

(declare-fun m!5988878 () Bool)

(assert (=> b!4964376 m!5988878))

(declare-fun m!5988880 () Bool)

(assert (=> b!4964376 m!5988880))

(declare-fun m!5988882 () Bool)

(assert (=> b!4964377 m!5988882))

(assert (=> b!4964128 m!5988622))

(declare-fun b!4964389 () Bool)

(declare-fun e!3103166 () Bool)

(declare-fun tp_is_empty!36329 () Bool)

(assert (=> b!4964389 (= e!3103166 tp_is_empty!36329)))

(declare-fun b!4964392 () Bool)

(declare-fun tp!1392675 () Bool)

(declare-fun tp!1392674 () Bool)

(assert (=> b!4964392 (= e!3103166 (and tp!1392675 tp!1392674))))

(declare-fun b!4964390 () Bool)

(declare-fun tp!1392676 () Bool)

(declare-fun tp!1392672 () Bool)

(assert (=> b!4964390 (= e!3103166 (and tp!1392676 tp!1392672))))

(declare-fun b!4964391 () Bool)

(declare-fun tp!1392673 () Bool)

(assert (=> b!4964391 (= e!3103166 tp!1392673)))

(assert (=> b!4964135 (= tp!1392617 e!3103166)))

(assert (= (and b!4964135 (is-ElementMatch!13624 (regex!8391 (h!63885 rulesArg!259)))) b!4964389))

(assert (= (and b!4964135 (is-Concat!22326 (regex!8391 (h!63885 rulesArg!259)))) b!4964390))

(assert (= (and b!4964135 (is-Star!13624 (regex!8391 (h!63885 rulesArg!259)))) b!4964391))

(assert (= (and b!4964135 (is-Union!13624 (regex!8391 (h!63885 rulesArg!259)))) b!4964392))

(declare-fun tp!1392677 () Bool)

(declare-fun e!3103168 () Bool)

(declare-fun tp!1392679 () Bool)

(declare-fun b!4964393 () Bool)

(assert (=> b!4964393 (= e!3103168 (and (inv!75059 (left!41893 (c!846918 input!1342))) tp!1392677 (inv!75059 (right!42223 (c!846918 input!1342))) tp!1392679))))

(declare-fun b!4964395 () Bool)

(declare-fun e!3103167 () Bool)

(declare-fun tp!1392678 () Bool)

(assert (=> b!4964395 (= e!3103167 tp!1392678)))

(declare-fun b!4964394 () Bool)

(assert (=> b!4964394 (= e!3103168 (and (inv!75067 (xs!18469 (c!846918 input!1342))) e!3103167))))

(assert (=> b!4964141 (= tp!1392620 (and (inv!75059 (c!846918 input!1342)) e!3103168))))

(assert (= (and b!4964141 (is-Node!15143 (c!846918 input!1342))) b!4964393))

(assert (= b!4964394 b!4964395))

(assert (= (and b!4964141 (is-Leaf!25164 (c!846918 input!1342))) b!4964394))

(declare-fun m!5988884 () Bool)

(assert (=> b!4964393 m!5988884))

(declare-fun m!5988886 () Bool)

(assert (=> b!4964393 m!5988886))

(declare-fun m!5988888 () Bool)

(assert (=> b!4964394 m!5988888))

(assert (=> b!4964141 m!5988598))

(push 1)

(assert (not d!1597153))

(assert b_and!347699)

(assert (not b!4964366))

(assert (not d!1597121))

(assert (not b!4964322))

(assert b_and!347693)

(assert (not b!4964218))

(assert (not b!4964391))

(assert (not b!4964321))

(assert (not b!4964128))

(assert (not b!4964323))

(assert (not b!4964315))

(assert (not d!1597117))

(assert (not b_next!133527))

(assert (not d!1597129))

(assert (not b!4964282))

(assert (not b!4964229))

(assert (not b!4964215))

(assert (not b!4964248))

(assert (not b!4964378))

(assert (not b!4964317))

(assert (not b!4964390))

(assert (not b!4964204))

(assert (not b!4964283))

(assert (not b!4964365))

(assert b_and!347701)

(assert (not b!4964280))

(assert (not b!4964395))

(assert (not b!4964392))

(assert (not b!4964285))

(assert (not b!4964141))

(assert (not bm!346127))

(assert (not b!4964253))

(assert (not bm!346136))

(assert (not b!4964394))

(assert (not b!4964230))

(assert (not d!1597113))

(assert (not d!1597155))

(assert (not b!4964254))

(assert (not b!4964247))

(assert (not d!1597151))

(assert (not b!4964296))

(assert (not b!4964393))

(assert (not b!4964356))

(assert (not b!4964252))

(assert (not d!1597105))

(assert (not b!4964316))

(assert (not d!1597101))

(assert (not d!1597107))

(assert (not b!4964294))

(assert (not b_next!133535))

(assert (not b!4964251))

(assert (not b!4964377))

(assert (not d!1597149))

(assert (not b!4964353))

(assert (not d!1597127))

(assert (not b!4964228))

(assert (not d!1597103))

(assert (not b_next!133533))

(assert (not b!4964213))

(assert (not b!4964250))

(assert (not d!1597161))

(assert (not b!4964203))

(assert tp_is_empty!36329)

(assert (not b_next!133525))

(assert (not b!4964318))

(assert (not b!4964319))

(assert b_and!347691)

(assert (not b!4964284))

(assert (not d!1597115))

(assert (not bm!346130))

(assert (not b!4964376))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!133527))

(assert b_and!347701)

(assert b_and!347699)

(assert (not b_next!133535))

(assert (not b_next!133533))

(assert b_and!347693)

(assert (not b_next!133525))

(assert b_and!347691)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1597193 () Bool)

(declare-fun res!2119123 () Bool)

(declare-fun e!3103244 () Bool)

(assert (=> d!1597193 (=> (not res!2119123) (not e!3103244))))

(declare-fun size!38068 (Conc!15143) Int)

(assert (=> d!1597193 (= res!2119123 (= (csize!30516 (c!846918 input!1342)) (+ (size!38068 (left!41893 (c!846918 input!1342))) (size!38068 (right!42223 (c!846918 input!1342))))))))

(assert (=> d!1597193 (= (inv!75065 (c!846918 input!1342)) e!3103244)))

(declare-fun b!4964521 () Bool)

(declare-fun res!2119124 () Bool)

(assert (=> b!4964521 (=> (not res!2119124) (not e!3103244))))

(assert (=> b!4964521 (= res!2119124 (and (not (= (left!41893 (c!846918 input!1342)) Empty!15143)) (not (= (right!42223 (c!846918 input!1342)) Empty!15143))))))

(declare-fun b!4964522 () Bool)

(declare-fun res!2119125 () Bool)

(assert (=> b!4964522 (=> (not res!2119125) (not e!3103244))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2011 (Conc!15143) Int)

(assert (=> b!4964522 (= res!2119125 (= (cheight!15354 (c!846918 input!1342)) (+ (max!0 (height!2011 (left!41893 (c!846918 input!1342))) (height!2011 (right!42223 (c!846918 input!1342)))) 1)))))

(declare-fun b!4964523 () Bool)

(assert (=> b!4964523 (= e!3103244 (<= 0 (cheight!15354 (c!846918 input!1342))))))

(assert (= (and d!1597193 res!2119123) b!4964521))

(assert (= (and b!4964521 res!2119124) b!4964522))

(assert (= (and b!4964522 res!2119125) b!4964523))

(declare-fun m!5989010 () Bool)

(assert (=> d!1597193 m!5989010))

(declare-fun m!5989012 () Bool)

(assert (=> d!1597193 m!5989012))

(declare-fun m!5989014 () Bool)

(assert (=> b!4964522 m!5989014))

(declare-fun m!5989016 () Bool)

(assert (=> b!4964522 m!5989016))

(assert (=> b!4964522 m!5989014))

(assert (=> b!4964522 m!5989016))

(declare-fun m!5989018 () Bool)

(assert (=> b!4964522 m!5989018))

(assert (=> b!4964294 d!1597193))

(declare-fun d!1597195 () Bool)

(declare-fun res!2119130 () Bool)

(declare-fun e!3103249 () Bool)

(assert (=> d!1597195 (=> res!2119130 e!3103249)))

(assert (=> d!1597195 (= res!2119130 (is-Nil!57437 rulesArg!259))))

(assert (=> d!1597195 (= (forall!13326 rulesArg!259 lambda!247301) e!3103249)))

(declare-fun b!4964528 () Bool)

(declare-fun e!3103250 () Bool)

(assert (=> b!4964528 (= e!3103249 e!3103250)))

(declare-fun res!2119131 () Bool)

(assert (=> b!4964528 (=> (not res!2119131) (not e!3103250))))

(declare-fun dynLambda!23148 (Int Rule!16582) Bool)

(assert (=> b!4964528 (= res!2119131 (dynLambda!23148 lambda!247301 (h!63885 rulesArg!259)))))

(declare-fun b!4964529 () Bool)

(assert (=> b!4964529 (= e!3103250 (forall!13326 (t!368227 rulesArg!259) lambda!247301))))

(assert (= (and d!1597195 (not res!2119130)) b!4964528))

(assert (= (and b!4964528 res!2119131) b!4964529))

(declare-fun b_lambda!196533 () Bool)

(assert (=> (not b_lambda!196533) (not b!4964528)))

(declare-fun m!5989020 () Bool)

(assert (=> b!4964528 m!5989020))

(declare-fun m!5989022 () Bool)

(assert (=> b!4964529 m!5989022))

(assert (=> d!1597107 d!1597195))

(declare-fun b!4964558 () Bool)

(declare-fun e!3103270 () Bool)

(declare-fun lt!2049801 () Bool)

(declare-fun call!346150 () Bool)

(assert (=> b!4964558 (= e!3103270 (= lt!2049801 call!346150))))

(declare-fun b!4964559 () Bool)

(declare-fun e!3103269 () Bool)

(assert (=> b!4964559 (= e!3103269 (not (= (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))) (c!846919 (regex!8391 (h!63885 rulesArg!259))))))))

(declare-fun b!4964560 () Bool)

(declare-fun res!2119148 () Bool)

(declare-fun e!3103271 () Bool)

(assert (=> b!4964560 (=> (not res!2119148) (not e!3103271))))

(assert (=> b!4964560 (= res!2119148 (isEmpty!30923 (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672))))))))

(declare-fun b!4964561 () Bool)

(declare-fun e!3103267 () Bool)

(assert (=> b!4964561 (= e!3103270 e!3103267)))

(declare-fun c!846961 () Bool)

(assert (=> b!4964561 (= c!846961 (is-EmptyLang!13624 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun b!4964562 () Bool)

(declare-fun res!2119150 () Bool)

(declare-fun e!3103266 () Bool)

(assert (=> b!4964562 (=> res!2119150 e!3103266)))

(assert (=> b!4964562 (= res!2119150 (not (is-ElementMatch!13624 (regex!8391 (h!63885 rulesArg!259)))))))

(assert (=> b!4964562 (= e!3103267 e!3103266)))

(declare-fun b!4964563 () Bool)

(declare-fun e!3103265 () Bool)

(assert (=> b!4964563 (= e!3103265 e!3103269)))

(declare-fun res!2119154 () Bool)

(assert (=> b!4964563 (=> res!2119154 e!3103269)))

(assert (=> b!4964563 (= res!2119154 call!346150)))

(declare-fun b!4964564 () Bool)

(declare-fun e!3103268 () Bool)

(declare-fun nullable!4618 (Regex!13624) Bool)

(assert (=> b!4964564 (= e!3103268 (nullable!4618 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun d!1597197 () Bool)

(assert (=> d!1597197 e!3103270))

(declare-fun c!846963 () Bool)

(assert (=> d!1597197 (= c!846963 (is-EmptyExpr!13624 (regex!8391 (h!63885 rulesArg!259))))))

(assert (=> d!1597197 (= lt!2049801 e!3103268)))

(declare-fun c!846962 () Bool)

(assert (=> d!1597197 (= c!846962 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))))))

(declare-fun validRegex!5967 (Regex!13624) Bool)

(assert (=> d!1597197 (validRegex!5967 (regex!8391 (h!63885 rulesArg!259)))))

(assert (=> d!1597197 (= (matchR!6634 (regex!8391 (h!63885 rulesArg!259)) (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))) lt!2049801)))

(declare-fun b!4964565 () Bool)

(declare-fun res!2119149 () Bool)

(assert (=> b!4964565 (=> res!2119149 e!3103269)))

(assert (=> b!4964565 (= res!2119149 (not (isEmpty!30923 (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))))))))

(declare-fun b!4964566 () Bool)

(declare-fun derivativeStep!3920 (Regex!13624 C!27498) Regex!13624)

(assert (=> b!4964566 (= e!3103268 (matchR!6634 (derivativeStep!3920 (regex!8391 (h!63885 rulesArg!259)) (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672))))) (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672))))))))

(declare-fun b!4964567 () Bool)

(declare-fun res!2119153 () Bool)

(assert (=> b!4964567 (=> (not res!2119153) (not e!3103271))))

(assert (=> b!4964567 (= res!2119153 (not call!346150))))

(declare-fun b!4964568 () Bool)

(declare-fun res!2119151 () Bool)

(assert (=> b!4964568 (=> res!2119151 e!3103266)))

(assert (=> b!4964568 (= res!2119151 e!3103271)))

(declare-fun res!2119152 () Bool)

(assert (=> b!4964568 (=> (not res!2119152) (not e!3103271))))

(assert (=> b!4964568 (= res!2119152 lt!2049801)))

(declare-fun b!4964569 () Bool)

(assert (=> b!4964569 (= e!3103267 (not lt!2049801))))

(declare-fun bm!346145 () Bool)

(assert (=> bm!346145 (= call!346150 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))))))

(declare-fun b!4964570 () Bool)

(assert (=> b!4964570 (= e!3103271 (= (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))) (c!846919 (regex!8391 (h!63885 rulesArg!259)))))))

(declare-fun b!4964571 () Bool)

(assert (=> b!4964571 (= e!3103266 e!3103265)))

(declare-fun res!2119155 () Bool)

(assert (=> b!4964571 (=> (not res!2119155) (not e!3103265))))

(assert (=> b!4964571 (= res!2119155 (not lt!2049801))))

(assert (= (and d!1597197 c!846962) b!4964564))

(assert (= (and d!1597197 (not c!846962)) b!4964566))

(assert (= (and d!1597197 c!846963) b!4964558))

(assert (= (and d!1597197 (not c!846963)) b!4964561))

(assert (= (and b!4964561 c!846961) b!4964569))

(assert (= (and b!4964561 (not c!846961)) b!4964562))

(assert (= (and b!4964562 (not res!2119150)) b!4964568))

(assert (= (and b!4964568 res!2119152) b!4964567))

(assert (= (and b!4964567 res!2119153) b!4964560))

(assert (= (and b!4964560 res!2119148) b!4964570))

(assert (= (and b!4964568 (not res!2119151)) b!4964571))

(assert (= (and b!4964571 res!2119155) b!4964563))

(assert (= (and b!4964563 (not res!2119154)) b!4964565))

(assert (= (and b!4964565 (not res!2119149)) b!4964559))

(assert (= (or b!4964558 b!4964563 b!4964567) bm!346145))

(declare-fun m!5989024 () Bool)

(assert (=> b!4964565 m!5989024))

(assert (=> b!4964565 m!5989024))

(declare-fun m!5989026 () Bool)

(assert (=> b!4964565 m!5989026))

(assert (=> d!1597197 m!5988794))

(declare-fun m!5989028 () Bool)

(assert (=> d!1597197 m!5989028))

(declare-fun m!5989030 () Bool)

(assert (=> b!4964564 m!5989030))

(assert (=> bm!346145 m!5988794))

(declare-fun m!5989032 () Bool)

(assert (=> b!4964570 m!5989032))

(assert (=> b!4964559 m!5989032))

(assert (=> b!4964566 m!5989032))

(assert (=> b!4964566 m!5989032))

(declare-fun m!5989034 () Bool)

(assert (=> b!4964566 m!5989034))

(assert (=> b!4964566 m!5989024))

(assert (=> b!4964566 m!5989034))

(assert (=> b!4964566 m!5989024))

(declare-fun m!5989036 () Bool)

(assert (=> b!4964566 m!5989036))

(assert (=> b!4964560 m!5989024))

(assert (=> b!4964560 m!5989024))

(assert (=> b!4964560 m!5989026))

(assert (=> b!4964283 d!1597197))

(declare-fun b!4964600 () Bool)

(declare-fun e!3103290 () tuple2!62158)

(declare-fun e!3103295 () tuple2!62158)

(assert (=> b!4964600 (= e!3103290 e!3103295)))

(declare-fun lt!2049874 () tuple2!62158)

(declare-fun call!346171 () tuple2!62158)

(assert (=> b!4964600 (= lt!2049874 call!346171)))

(declare-fun c!846979 () Bool)

(assert (=> b!4964600 (= c!846979 (isEmpty!30923 (_1!34382 lt!2049874)))))

(declare-fun b!4964601 () Bool)

(declare-fun e!3103292 () tuple2!62158)

(declare-fun e!3103291 () tuple2!62158)

(assert (=> b!4964601 (= e!3103292 e!3103291)))

(declare-fun c!846981 () Bool)

(assert (=> b!4964601 (= c!846981 (= (size!38064 Nil!57435) (size!38064 lt!2049672)))))

(declare-fun bm!346162 () Bool)

(declare-fun call!346172 () Unit!148334)

(assert (=> bm!346162 (= call!346172 (lemmaIsPrefixRefl!3566 lt!2049672 lt!2049672))))

(declare-fun b!4964602 () Bool)

(declare-fun e!3103289 () tuple2!62158)

(assert (=> b!4964602 (= e!3103289 (tuple2!62159 Nil!57435 Nil!57435))))

(declare-fun b!4964603 () Bool)

(assert (=> b!4964603 (= e!3103290 call!346171)))

(declare-fun bm!346163 () Bool)

(declare-fun call!346174 () List!57559)

(assert (=> bm!346163 (= call!346174 (tail!9799 lt!2049672))))

(declare-fun bm!346164 () Bool)

(declare-fun call!346173 () Regex!13624)

(declare-fun call!346168 () C!27498)

(assert (=> bm!346164 (= call!346173 (derivativeStep!3920 (regex!8391 (h!63885 rulesArg!259)) call!346168))))

(declare-fun b!4964604 () Bool)

(declare-fun e!3103294 () Bool)

(declare-fun lt!2049862 () tuple2!62158)

(assert (=> b!4964604 (= e!3103294 (>= (size!38064 (_1!34382 lt!2049862)) (size!38064 Nil!57435)))))

(declare-fun lt!2049878 () List!57559)

(declare-fun bm!346165 () Bool)

(assert (=> bm!346165 (= call!346171 (findLongestMatchInner!1853 call!346173 lt!2049878 (+ (size!38064 Nil!57435) 1) call!346174 lt!2049672 (size!38064 lt!2049672)))))

(declare-fun b!4964605 () Bool)

(declare-fun e!3103288 () Bool)

(assert (=> b!4964605 (= e!3103288 e!3103294)))

(declare-fun res!2119160 () Bool)

(assert (=> b!4964605 (=> res!2119160 e!3103294)))

(assert (=> b!4964605 (= res!2119160 (isEmpty!30923 (_1!34382 lt!2049862)))))

(declare-fun bm!346166 () Bool)

(declare-fun call!346169 () Unit!148334)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1206 (List!57559 List!57559 List!57559) Unit!148334)

(assert (=> bm!346166 (= call!346169 (lemmaIsPrefixSameLengthThenSameList!1206 lt!2049672 Nil!57435 lt!2049672))))

(declare-fun b!4964606 () Bool)

(assert (=> b!4964606 (= e!3103295 (tuple2!62159 Nil!57435 lt!2049672))))

(declare-fun bm!346167 () Bool)

(declare-fun call!346167 () Bool)

(assert (=> bm!346167 (= call!346167 (nullable!4618 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun b!4964607 () Bool)

(declare-fun e!3103293 () Unit!148334)

(declare-fun Unit!148339 () Unit!148334)

(assert (=> b!4964607 (= e!3103293 Unit!148339)))

(declare-fun lt!2049865 () Unit!148334)

(assert (=> b!4964607 (= lt!2049865 call!346172)))

(declare-fun call!346170 () Bool)

(assert (=> b!4964607 call!346170))

(declare-fun lt!2049875 () Unit!148334)

(assert (=> b!4964607 (= lt!2049875 lt!2049865)))

(declare-fun lt!2049884 () Unit!148334)

(assert (=> b!4964607 (= lt!2049884 call!346169)))

(assert (=> b!4964607 (= lt!2049672 Nil!57435)))

(declare-fun lt!2049869 () Unit!148334)

(assert (=> b!4964607 (= lt!2049869 lt!2049884)))

(assert (=> b!4964607 false))

(declare-fun b!4964608 () Bool)

(declare-fun c!846977 () Bool)

(assert (=> b!4964608 (= c!846977 call!346167)))

(declare-fun lt!2049871 () Unit!148334)

(declare-fun lt!2049879 () Unit!148334)

(assert (=> b!4964608 (= lt!2049871 lt!2049879)))

(declare-fun lt!2049883 () C!27498)

(declare-fun lt!2049882 () List!57559)

(assert (=> b!4964608 (= (++!12530 (++!12530 Nil!57435 (Cons!57435 lt!2049883 Nil!57435)) lt!2049882) lt!2049672)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1443 (List!57559 C!27498 List!57559 List!57559) Unit!148334)

(assert (=> b!4964608 (= lt!2049879 (lemmaMoveElementToOtherListKeepsConcatEq!1443 Nil!57435 lt!2049883 lt!2049882 lt!2049672))))

(assert (=> b!4964608 (= lt!2049882 (tail!9799 lt!2049672))))

(assert (=> b!4964608 (= lt!2049883 (head!10666 lt!2049672))))

(declare-fun lt!2049863 () Unit!148334)

(declare-fun lt!2049873 () Unit!148334)

(assert (=> b!4964608 (= lt!2049863 lt!2049873)))

(declare-fun getSuffix!3086 (List!57559 List!57559) List!57559)

(assert (=> b!4964608 (isPrefix!5242 (++!12530 Nil!57435 (Cons!57435 (head!10666 (getSuffix!3086 lt!2049672 Nil!57435)) Nil!57435)) lt!2049672)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!833 (List!57559 List!57559) Unit!148334)

(assert (=> b!4964608 (= lt!2049873 (lemmaAddHeadSuffixToPrefixStillPrefix!833 Nil!57435 lt!2049672))))

(declare-fun lt!2049859 () Unit!148334)

(declare-fun lt!2049858 () Unit!148334)

(assert (=> b!4964608 (= lt!2049859 lt!2049858)))

(assert (=> b!4964608 (= lt!2049858 (lemmaAddHeadSuffixToPrefixStillPrefix!833 Nil!57435 lt!2049672))))

(assert (=> b!4964608 (= lt!2049878 (++!12530 Nil!57435 (Cons!57435 (head!10666 lt!2049672) Nil!57435)))))

(declare-fun lt!2049885 () Unit!148334)

(assert (=> b!4964608 (= lt!2049885 e!3103293)))

(declare-fun c!846976 () Bool)

(assert (=> b!4964608 (= c!846976 (= (size!38064 Nil!57435) (size!38064 lt!2049672)))))

(declare-fun lt!2049867 () Unit!148334)

(declare-fun lt!2049877 () Unit!148334)

(assert (=> b!4964608 (= lt!2049867 lt!2049877)))

(assert (=> b!4964608 (<= (size!38064 Nil!57435) (size!38064 lt!2049672))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!759 (List!57559 List!57559) Unit!148334)

(assert (=> b!4964608 (= lt!2049877 (lemmaIsPrefixThenSmallerEqSize!759 Nil!57435 lt!2049672))))

(assert (=> b!4964608 (= e!3103291 e!3103290)))

(declare-fun bm!346168 () Bool)

(assert (=> bm!346168 (= call!346168 (head!10666 lt!2049672))))

(declare-fun d!1597199 () Bool)

(assert (=> d!1597199 e!3103288))

(declare-fun res!2119161 () Bool)

(assert (=> d!1597199 (=> (not res!2119161) (not e!3103288))))

(assert (=> d!1597199 (= res!2119161 (= (++!12530 (_1!34382 lt!2049862) (_2!34382 lt!2049862)) lt!2049672))))

(assert (=> d!1597199 (= lt!2049862 e!3103292)))

(declare-fun c!846980 () Bool)

(declare-fun lostCause!1130 (Regex!13624) Bool)

(assert (=> d!1597199 (= c!846980 (lostCause!1130 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun lt!2049860 () Unit!148334)

(declare-fun Unit!148340 () Unit!148334)

(assert (=> d!1597199 (= lt!2049860 Unit!148340)))

(assert (=> d!1597199 (= (getSuffix!3086 lt!2049672 Nil!57435) lt!2049672)))

(declare-fun lt!2049881 () Unit!148334)

(declare-fun lt!2049866 () Unit!148334)

(assert (=> d!1597199 (= lt!2049881 lt!2049866)))

(declare-fun lt!2049861 () List!57559)

(assert (=> d!1597199 (= lt!2049672 lt!2049861)))

(declare-fun lemmaSamePrefixThenSameSuffix!2498 (List!57559 List!57559 List!57559 List!57559 List!57559) Unit!148334)

(assert (=> d!1597199 (= lt!2049866 (lemmaSamePrefixThenSameSuffix!2498 Nil!57435 lt!2049672 Nil!57435 lt!2049861 lt!2049672))))

(assert (=> d!1597199 (= lt!2049861 (getSuffix!3086 lt!2049672 Nil!57435))))

(declare-fun lt!2049870 () Unit!148334)

(declare-fun lt!2049864 () Unit!148334)

(assert (=> d!1597199 (= lt!2049870 lt!2049864)))

(assert (=> d!1597199 (isPrefix!5242 Nil!57435 (++!12530 Nil!57435 lt!2049672))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3344 (List!57559 List!57559) Unit!148334)

(assert (=> d!1597199 (= lt!2049864 (lemmaConcatTwoListThenFirstIsPrefix!3344 Nil!57435 lt!2049672))))

(assert (=> d!1597199 (validRegex!5967 (regex!8391 (h!63885 rulesArg!259)))))

(assert (=> d!1597199 (= (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)) lt!2049862)))

(declare-fun b!4964609 () Bool)

(assert (=> b!4964609 (= e!3103295 lt!2049874)))

(declare-fun b!4964610 () Bool)

(declare-fun Unit!148341 () Unit!148334)

(assert (=> b!4964610 (= e!3103293 Unit!148341)))

(declare-fun b!4964611 () Bool)

(assert (=> b!4964611 (= e!3103292 (tuple2!62159 Nil!57435 lt!2049672))))

(declare-fun bm!346169 () Bool)

(assert (=> bm!346169 (= call!346170 (isPrefix!5242 lt!2049672 lt!2049672))))

(declare-fun b!4964612 () Bool)

(declare-fun c!846978 () Bool)

(assert (=> b!4964612 (= c!846978 call!346167)))

(declare-fun lt!2049868 () Unit!148334)

(declare-fun lt!2049876 () Unit!148334)

(assert (=> b!4964612 (= lt!2049868 lt!2049876)))

(assert (=> b!4964612 (= lt!2049672 Nil!57435)))

(assert (=> b!4964612 (= lt!2049876 call!346169)))

(declare-fun lt!2049880 () Unit!148334)

(declare-fun lt!2049872 () Unit!148334)

(assert (=> b!4964612 (= lt!2049880 lt!2049872)))

(assert (=> b!4964612 call!346170))

(assert (=> b!4964612 (= lt!2049872 call!346172)))

(assert (=> b!4964612 (= e!3103291 e!3103289)))

(declare-fun b!4964613 () Bool)

(assert (=> b!4964613 (= e!3103289 (tuple2!62159 Nil!57435 lt!2049672))))

(assert (= (and d!1597199 c!846980) b!4964611))

(assert (= (and d!1597199 (not c!846980)) b!4964601))

(assert (= (and b!4964601 c!846981) b!4964612))

(assert (= (and b!4964601 (not c!846981)) b!4964608))

(assert (= (and b!4964612 c!846978) b!4964602))

(assert (= (and b!4964612 (not c!846978)) b!4964613))

(assert (= (and b!4964608 c!846976) b!4964607))

(assert (= (and b!4964608 (not c!846976)) b!4964610))

(assert (= (and b!4964608 c!846977) b!4964600))

(assert (= (and b!4964608 (not c!846977)) b!4964603))

(assert (= (and b!4964600 c!846979) b!4964606))

(assert (= (and b!4964600 (not c!846979)) b!4964609))

(assert (= (or b!4964600 b!4964603) bm!346168))

(assert (= (or b!4964600 b!4964603) bm!346163))

(assert (= (or b!4964600 b!4964603) bm!346164))

(assert (= (or b!4964600 b!4964603) bm!346165))

(assert (= (or b!4964612 b!4964607) bm!346162))

(assert (= (or b!4964612 b!4964607) bm!346166))

(assert (= (or b!4964612 b!4964608) bm!346167))

(assert (= (or b!4964612 b!4964607) bm!346169))

(assert (= (and d!1597199 res!2119161) b!4964605))

(assert (= (and b!4964605 (not res!2119160)) b!4964604))

(assert (=> b!4964608 m!5988784))

(declare-fun m!5989038 () Bool)

(assert (=> b!4964608 m!5989038))

(declare-fun m!5989040 () Bool)

(assert (=> b!4964608 m!5989040))

(declare-fun m!5989042 () Bool)

(assert (=> b!4964608 m!5989042))

(declare-fun m!5989044 () Bool)

(assert (=> b!4964608 m!5989044))

(declare-fun m!5989046 () Bool)

(assert (=> b!4964608 m!5989046))

(declare-fun m!5989048 () Bool)

(assert (=> b!4964608 m!5989048))

(assert (=> b!4964608 m!5988786))

(declare-fun m!5989050 () Bool)

(assert (=> b!4964608 m!5989050))

(assert (=> b!4964608 m!5989038))

(assert (=> b!4964608 m!5989042))

(declare-fun m!5989052 () Bool)

(assert (=> b!4964608 m!5989052))

(declare-fun m!5989054 () Bool)

(assert (=> b!4964608 m!5989054))

(declare-fun m!5989056 () Bool)

(assert (=> b!4964608 m!5989056))

(declare-fun m!5989058 () Bool)

(assert (=> b!4964608 m!5989058))

(assert (=> b!4964608 m!5989044))

(declare-fun m!5989060 () Bool)

(assert (=> b!4964608 m!5989060))

(declare-fun m!5989062 () Bool)

(assert (=> b!4964600 m!5989062))

(declare-fun m!5989064 () Bool)

(assert (=> bm!346169 m!5989064))

(assert (=> bm!346168 m!5989054))

(declare-fun m!5989066 () Bool)

(assert (=> d!1597199 m!5989066))

(declare-fun m!5989068 () Bool)

(assert (=> d!1597199 m!5989068))

(assert (=> d!1597199 m!5989028))

(assert (=> d!1597199 m!5989042))

(declare-fun m!5989070 () Bool)

(assert (=> d!1597199 m!5989070))

(declare-fun m!5989072 () Bool)

(assert (=> d!1597199 m!5989072))

(declare-fun m!5989074 () Bool)

(assert (=> d!1597199 m!5989074))

(assert (=> d!1597199 m!5989068))

(declare-fun m!5989076 () Bool)

(assert (=> d!1597199 m!5989076))

(declare-fun m!5989078 () Bool)

(assert (=> b!4964604 m!5989078))

(assert (=> b!4964604 m!5988784))

(declare-fun m!5989080 () Bool)

(assert (=> b!4964605 m!5989080))

(declare-fun m!5989082 () Bool)

(assert (=> bm!346162 m!5989082))

(assert (=> bm!346163 m!5989058))

(assert (=> bm!346167 m!5989030))

(declare-fun m!5989084 () Bool)

(assert (=> bm!346164 m!5989084))

(assert (=> bm!346165 m!5988786))

(declare-fun m!5989086 () Bool)

(assert (=> bm!346165 m!5989086))

(declare-fun m!5989088 () Bool)

(assert (=> bm!346166 m!5989088))

(assert (=> b!4964283 d!1597199))

(declare-fun d!1597201 () Bool)

(declare-fun lt!2049888 () Int)

(assert (=> d!1597201 (>= lt!2049888 0)))

(declare-fun e!3103298 () Int)

(assert (=> d!1597201 (= lt!2049888 e!3103298)))

(declare-fun c!846984 () Bool)

(assert (=> d!1597201 (= c!846984 (is-Nil!57435 Nil!57435))))

(assert (=> d!1597201 (= (size!38064 Nil!57435) lt!2049888)))

(declare-fun b!4964618 () Bool)

(assert (=> b!4964618 (= e!3103298 0)))

(declare-fun b!4964619 () Bool)

(assert (=> b!4964619 (= e!3103298 (+ 1 (size!38064 (t!368225 Nil!57435))))))

(assert (= (and d!1597201 c!846984) b!4964618))

(assert (= (and d!1597201 (not c!846984)) b!4964619))

(declare-fun m!5989090 () Bool)

(assert (=> b!4964619 m!5989090))

(assert (=> b!4964283 d!1597201))

(declare-fun d!1597203 () Bool)

(declare-fun lt!2049889 () Int)

(assert (=> d!1597203 (>= lt!2049889 0)))

(declare-fun e!3103299 () Int)

(assert (=> d!1597203 (= lt!2049889 e!3103299)))

(declare-fun c!846985 () Bool)

(assert (=> d!1597203 (= c!846985 (is-Nil!57435 lt!2049672))))

(assert (=> d!1597203 (= (size!38064 lt!2049672) lt!2049889)))

(declare-fun b!4964620 () Bool)

(assert (=> b!4964620 (= e!3103299 0)))

(declare-fun b!4964621 () Bool)

(assert (=> b!4964621 (= e!3103299 (+ 1 (size!38064 (t!368225 lt!2049672))))))

(assert (= (and d!1597203 c!846985) b!4964620))

(assert (= (and d!1597203 (not c!846985)) b!4964621))

(declare-fun m!5989092 () Bool)

(assert (=> b!4964621 m!5989092))

(assert (=> b!4964283 d!1597203))

(declare-fun d!1597205 () Bool)

(declare-fun lt!2049890 () Option!14445)

(assert (=> d!1597205 (= lt!2049890 (maxPrefix!4658 thiss!15247 (t!368227 rulesArg!259) lt!2049571))))

(declare-fun e!3103300 () Option!14445)

(assert (=> d!1597205 (= lt!2049890 e!3103300)))

(declare-fun c!846986 () Bool)

(assert (=> d!1597205 (= c!846986 (and (is-Cons!57437 (t!368227 rulesArg!259)) (is-Nil!57437 (t!368227 (t!368227 rulesArg!259)))))))

(declare-fun lt!2049892 () Unit!148334)

(declare-fun lt!2049894 () Unit!148334)

(assert (=> d!1597205 (= lt!2049892 lt!2049894)))

(assert (=> d!1597205 (isPrefix!5242 lt!2049571 lt!2049571)))

(assert (=> d!1597205 (= lt!2049894 (lemmaIsPrefixRefl!3566 lt!2049571 lt!2049571))))

(assert (=> d!1597205 (rulesValidInductive!3294 thiss!15247 (t!368227 rulesArg!259))))

(assert (=> d!1597205 (= (maxPrefixZipper!784 thiss!15247 (t!368227 rulesArg!259) lt!2049571) lt!2049890)))

(declare-fun call!346175 () Option!14445)

(declare-fun bm!346170 () Bool)

(assert (=> bm!346170 (= call!346175 (maxPrefixOneRuleZipper!294 thiss!15247 (h!63885 (t!368227 rulesArg!259)) lt!2049571))))

(declare-fun b!4964622 () Bool)

(assert (=> b!4964622 (= e!3103300 call!346175)))

(declare-fun b!4964623 () Bool)

(declare-fun lt!2049891 () Option!14445)

(declare-fun lt!2049893 () Option!14445)

(assert (=> b!4964623 (= e!3103300 (ite (and (is-None!14444 lt!2049891) (is-None!14444 lt!2049893)) None!14444 (ite (is-None!14444 lt!2049893) lt!2049891 (ite (is-None!14444 lt!2049891) lt!2049893 (ite (>= (size!38062 (_1!34378 (v!50431 lt!2049891))) (size!38062 (_1!34378 (v!50431 lt!2049893)))) lt!2049891 lt!2049893)))))))

(assert (=> b!4964623 (= lt!2049891 call!346175)))

(assert (=> b!4964623 (= lt!2049893 (maxPrefixZipper!784 thiss!15247 (t!368227 (t!368227 rulesArg!259)) lt!2049571))))

(assert (= (and d!1597205 c!846986) b!4964622))

(assert (= (and d!1597205 (not c!846986)) b!4964623))

(assert (= (or b!4964622 b!4964623) bm!346170))

(assert (=> d!1597205 m!5988818))

(assert (=> d!1597205 m!5988624))

(assert (=> d!1597205 m!5988626))

(assert (=> d!1597205 m!5988700))

(declare-fun m!5989094 () Bool)

(assert (=> bm!346170 m!5989094))

(declare-fun m!5989096 () Bool)

(assert (=> b!4964623 m!5989096))

(assert (=> b!4964353 d!1597205))

(declare-fun d!1597207 () Bool)

(declare-fun res!2119166 () Bool)

(declare-fun e!3103303 () Bool)

(assert (=> d!1597207 (=> (not res!2119166) (not e!3103303))))

(declare-fun list!18363 (IArray!30347) List!57559)

(assert (=> d!1597207 (= res!2119166 (<= (size!38064 (list!18363 (xs!18469 (c!846918 input!1342)))) 512))))

(assert (=> d!1597207 (= (inv!75066 (c!846918 input!1342)) e!3103303)))

(declare-fun b!4964628 () Bool)

(declare-fun res!2119167 () Bool)

(assert (=> b!4964628 (=> (not res!2119167) (not e!3103303))))

(assert (=> b!4964628 (= res!2119167 (= (csize!30517 (c!846918 input!1342)) (size!38064 (list!18363 (xs!18469 (c!846918 input!1342))))))))

(declare-fun b!4964629 () Bool)

(assert (=> b!4964629 (= e!3103303 (and (> (csize!30517 (c!846918 input!1342)) 0) (<= (csize!30517 (c!846918 input!1342)) 512)))))

(assert (= (and d!1597207 res!2119166) b!4964628))

(assert (= (and b!4964628 res!2119167) b!4964629))

(declare-fun m!5989098 () Bool)

(assert (=> d!1597207 m!5989098))

(assert (=> d!1597207 m!5989098))

(declare-fun m!5989100 () Bool)

(assert (=> d!1597207 m!5989100))

(assert (=> b!4964628 m!5989098))

(assert (=> b!4964628 m!5989098))

(assert (=> b!4964628 m!5989100))

(assert (=> b!4964296 d!1597207))

(declare-fun d!1597209 () Bool)

(assert (=> d!1597209 (= (head!10666 lt!2049571) (h!63883 lt!2049571))))

(assert (=> b!4964228 d!1597209))

(declare-fun d!1597211 () Bool)

(declare-fun lt!2049897 () Bool)

(declare-fun content!10179 (List!57561) (Set Rule!16582))

(assert (=> d!1597211 (= lt!2049897 (set.member (rule!11629 (_1!34378 (get!19935 lt!2049691))) (content!10179 rulesArg!259)))))

(declare-fun e!3103308 () Bool)

(assert (=> d!1597211 (= lt!2049897 e!3103308)))

(declare-fun res!2119173 () Bool)

(assert (=> d!1597211 (=> (not res!2119173) (not e!3103308))))

(assert (=> d!1597211 (= res!2119173 (is-Cons!57437 rulesArg!259))))

(assert (=> d!1597211 (= (contains!19536 rulesArg!259 (rule!11629 (_1!34378 (get!19935 lt!2049691)))) lt!2049897)))

(declare-fun b!4964634 () Bool)

(declare-fun e!3103309 () Bool)

(assert (=> b!4964634 (= e!3103308 e!3103309)))

(declare-fun res!2119172 () Bool)

(assert (=> b!4964634 (=> res!2119172 e!3103309)))

(assert (=> b!4964634 (= res!2119172 (= (h!63885 rulesArg!259) (rule!11629 (_1!34378 (get!19935 lt!2049691)))))))

(declare-fun b!4964635 () Bool)

(assert (=> b!4964635 (= e!3103309 (contains!19536 (t!368227 rulesArg!259) (rule!11629 (_1!34378 (get!19935 lt!2049691)))))))

(assert (= (and d!1597211 res!2119173) b!4964634))

(assert (= (and b!4964634 (not res!2119172)) b!4964635))

(declare-fun m!5989102 () Bool)

(assert (=> d!1597211 m!5989102))

(declare-fun m!5989104 () Bool)

(assert (=> d!1597211 m!5989104))

(declare-fun m!5989106 () Bool)

(assert (=> b!4964635 m!5989106))

(assert (=> b!4964316 d!1597211))

(declare-fun d!1597213 () Bool)

(assert (=> d!1597213 (= (get!19935 lt!2049691) (v!50431 lt!2049691))))

(assert (=> b!4964316 d!1597213))

(declare-fun b!4964648 () Bool)

(declare-fun e!3103314 () Bool)

(declare-fun e!3103315 () Bool)

(assert (=> b!4964648 (= e!3103314 e!3103315)))

(declare-fun res!2119188 () Bool)

(assert (=> b!4964648 (=> (not res!2119188) (not e!3103315))))

(assert (=> b!4964648 (= res!2119188 (<= (- 1) (- (height!2011 (left!41893 (c!846918 totalInput!464))) (height!2011 (right!42223 (c!846918 totalInput!464))))))))

(declare-fun b!4964649 () Bool)

(declare-fun res!2119187 () Bool)

(assert (=> b!4964649 (=> (not res!2119187) (not e!3103315))))

(declare-fun isEmpty!30929 (Conc!15143) Bool)

(assert (=> b!4964649 (= res!2119187 (not (isEmpty!30929 (left!41893 (c!846918 totalInput!464)))))))

(declare-fun b!4964651 () Bool)

(declare-fun res!2119186 () Bool)

(assert (=> b!4964651 (=> (not res!2119186) (not e!3103315))))

(assert (=> b!4964651 (= res!2119186 (isBalanced!4200 (right!42223 (c!846918 totalInput!464))))))

(declare-fun b!4964652 () Bool)

(declare-fun res!2119191 () Bool)

(assert (=> b!4964652 (=> (not res!2119191) (not e!3103315))))

(assert (=> b!4964652 (= res!2119191 (isBalanced!4200 (left!41893 (c!846918 totalInput!464))))))

(declare-fun b!4964653 () Bool)

(assert (=> b!4964653 (= e!3103315 (not (isEmpty!30929 (right!42223 (c!846918 totalInput!464)))))))

(declare-fun d!1597215 () Bool)

(declare-fun res!2119190 () Bool)

(assert (=> d!1597215 (=> res!2119190 e!3103314)))

(assert (=> d!1597215 (= res!2119190 (not (is-Node!15143 (c!846918 totalInput!464))))))

(assert (=> d!1597215 (= (isBalanced!4200 (c!846918 totalInput!464)) e!3103314)))

(declare-fun b!4964650 () Bool)

(declare-fun res!2119189 () Bool)

(assert (=> b!4964650 (=> (not res!2119189) (not e!3103315))))

(assert (=> b!4964650 (= res!2119189 (<= (- (height!2011 (left!41893 (c!846918 totalInput!464))) (height!2011 (right!42223 (c!846918 totalInput!464)))) 1))))

(assert (= (and d!1597215 (not res!2119190)) b!4964648))

(assert (= (and b!4964648 res!2119188) b!4964650))

(assert (= (and b!4964650 res!2119189) b!4964652))

(assert (= (and b!4964652 res!2119191) b!4964651))

(assert (= (and b!4964651 res!2119186) b!4964649))

(assert (= (and b!4964649 res!2119187) b!4964653))

(declare-fun m!5989108 () Bool)

(assert (=> b!4964652 m!5989108))

(declare-fun m!5989110 () Bool)

(assert (=> b!4964653 m!5989110))

(declare-fun m!5989112 () Bool)

(assert (=> b!4964649 m!5989112))

(declare-fun m!5989114 () Bool)

(assert (=> b!4964648 m!5989114))

(declare-fun m!5989116 () Bool)

(assert (=> b!4964648 m!5989116))

(assert (=> b!4964650 m!5989114))

(assert (=> b!4964650 m!5989116))

(declare-fun m!5989118 () Bool)

(assert (=> b!4964651 m!5989118))

(assert (=> d!1597103 d!1597215))

(declare-fun d!1597217 () Bool)

(assert (=> d!1597217 (= (list!18359 (_2!34377 (get!19936 lt!2049678))) (list!18361 (c!846918 (_2!34377 (get!19936 lt!2049678)))))))

(declare-fun bs!1182887 () Bool)

(assert (= bs!1182887 d!1597217))

(declare-fun m!5989120 () Bool)

(assert (=> bs!1182887 m!5989120))

(assert (=> b!4964285 d!1597217))

(assert (=> b!4964285 d!1597117))

(declare-fun d!1597219 () Bool)

(assert (=> d!1597219 (= (get!19936 lt!2049678) (v!50432 lt!2049678))))

(assert (=> b!4964285 d!1597219))

(declare-fun b!4964672 () Bool)

(declare-fun e!3103325 () Option!14445)

(assert (=> b!4964672 (= e!3103325 None!14444)))

(declare-fun b!4964673 () Bool)

(declare-fun res!2119207 () Bool)

(declare-fun e!3103324 () Bool)

(assert (=> b!4964673 (=> (not res!2119207) (not e!3103324))))

(declare-fun lt!2049912 () Option!14445)

(assert (=> b!4964673 (= res!2119207 (= (value!268585 (_1!34378 (get!19935 lt!2049912))) (apply!13902 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049912)))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049912)))))))))

(declare-fun b!4964674 () Bool)

(declare-fun lt!2049910 () tuple2!62158)

(assert (=> b!4964674 (= e!3103325 (Some!14444 (tuple2!62151 (Token!15279 (apply!13902 (transformation!8391 (h!63885 rulesArg!259)) (seqFromList!6034 (_1!34382 lt!2049910))) (h!63885 rulesArg!259) (size!38065 (seqFromList!6034 (_1!34382 lt!2049910))) (_1!34382 lt!2049910)) (_2!34382 lt!2049910))))))

(declare-fun lt!2049911 () Unit!148334)

(assert (=> b!4964674 (= lt!2049911 (longestMatchIsAcceptedByMatchOrIsEmpty!1814 (regex!8391 (h!63885 rulesArg!259)) (list!18359 input!1342)))))

(declare-fun res!2119212 () Bool)

(assert (=> b!4964674 (= res!2119212 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) (list!18359 input!1342) (list!18359 input!1342) (size!38064 (list!18359 input!1342))))))))

(declare-fun e!3103326 () Bool)

(assert (=> b!4964674 (=> res!2119212 e!3103326)))

(assert (=> b!4964674 e!3103326))

(declare-fun lt!2049909 () Unit!148334)

(assert (=> b!4964674 (= lt!2049909 lt!2049911)))

(declare-fun lt!2049908 () Unit!148334)

(declare-fun lemmaSemiInverse!2600 (TokenValueInjection!16710 BalanceConc!29716) Unit!148334)

(assert (=> b!4964674 (= lt!2049908 (lemmaSemiInverse!2600 (transformation!8391 (h!63885 rulesArg!259)) (seqFromList!6034 (_1!34382 lt!2049910))))))

(declare-fun b!4964675 () Bool)

(declare-fun e!3103327 () Bool)

(assert (=> b!4964675 (= e!3103327 e!3103324)))

(declare-fun res!2119210 () Bool)

(assert (=> b!4964675 (=> (not res!2119210) (not e!3103324))))

(assert (=> b!4964675 (= res!2119210 (matchR!6634 (regex!8391 (h!63885 rulesArg!259)) (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049912))))))))

(declare-fun b!4964676 () Bool)

(declare-fun res!2119206 () Bool)

(assert (=> b!4964676 (=> (not res!2119206) (not e!3103324))))

(assert (=> b!4964676 (= res!2119206 (= (++!12530 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049912)))) (_2!34378 (get!19935 lt!2049912))) (list!18359 input!1342)))))

(declare-fun b!4964677 () Bool)

(declare-fun res!2119209 () Bool)

(assert (=> b!4964677 (=> (not res!2119209) (not e!3103324))))

(assert (=> b!4964677 (= res!2119209 (< (size!38064 (_2!34378 (get!19935 lt!2049912))) (size!38064 (list!18359 input!1342))))))

(declare-fun b!4964678 () Bool)

(assert (=> b!4964678 (= e!3103326 (matchR!6634 (regex!8391 (h!63885 rulesArg!259)) (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) (list!18359 input!1342) (list!18359 input!1342) (size!38064 (list!18359 input!1342))))))))

(declare-fun b!4964679 () Bool)

(assert (=> b!4964679 (= e!3103324 (= (size!38062 (_1!34378 (get!19935 lt!2049912))) (size!38064 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049912))))))))

(declare-fun d!1597221 () Bool)

(assert (=> d!1597221 e!3103327))

(declare-fun res!2119211 () Bool)

(assert (=> d!1597221 (=> res!2119211 e!3103327)))

(assert (=> d!1597221 (= res!2119211 (isEmpty!30925 lt!2049912))))

(assert (=> d!1597221 (= lt!2049912 e!3103325)))

(declare-fun c!846989 () Bool)

(assert (=> d!1597221 (= c!846989 (isEmpty!30923 (_1!34382 lt!2049910)))))

(declare-fun findLongestMatch!1695 (Regex!13624 List!57559) tuple2!62158)

(assert (=> d!1597221 (= lt!2049910 (findLongestMatch!1695 (regex!8391 (h!63885 rulesArg!259)) (list!18359 input!1342)))))

(assert (=> d!1597221 (ruleValid!3800 thiss!15247 (h!63885 rulesArg!259))))

(assert (=> d!1597221 (= (maxPrefixOneRule!3627 thiss!15247 (h!63885 rulesArg!259) (list!18359 input!1342)) lt!2049912)))

(declare-fun b!4964680 () Bool)

(declare-fun res!2119208 () Bool)

(assert (=> b!4964680 (=> (not res!2119208) (not e!3103324))))

(assert (=> b!4964680 (= res!2119208 (= (rule!11629 (_1!34378 (get!19935 lt!2049912))) (h!63885 rulesArg!259)))))

(assert (= (and d!1597221 c!846989) b!4964672))

(assert (= (and d!1597221 (not c!846989)) b!4964674))

(assert (= (and b!4964674 (not res!2119212)) b!4964678))

(assert (= (and d!1597221 (not res!2119211)) b!4964675))

(assert (= (and b!4964675 res!2119210) b!4964676))

(assert (= (and b!4964676 res!2119206) b!4964677))

(assert (= (and b!4964677 res!2119209) b!4964680))

(assert (= (and b!4964680 res!2119208) b!4964673))

(assert (= (and b!4964673 res!2119207) b!4964679))

(declare-fun m!5989122 () Bool)

(assert (=> b!4964674 m!5989122))

(assert (=> b!4964674 m!5988632))

(declare-fun m!5989124 () Bool)

(assert (=> b!4964674 m!5989124))

(assert (=> b!4964674 m!5988784))

(assert (=> b!4964674 m!5988784))

(assert (=> b!4964674 m!5988632))

(assert (=> b!4964674 m!5988632))

(declare-fun m!5989126 () Bool)

(assert (=> b!4964674 m!5989126))

(declare-fun m!5989128 () Bool)

(assert (=> b!4964674 m!5989128))

(declare-fun m!5989130 () Bool)

(assert (=> b!4964674 m!5989130))

(assert (=> b!4964674 m!5988632))

(assert (=> b!4964674 m!5989126))

(assert (=> b!4964674 m!5989122))

(declare-fun m!5989132 () Bool)

(assert (=> b!4964674 m!5989132))

(assert (=> b!4964674 m!5989122))

(declare-fun m!5989134 () Bool)

(assert (=> b!4964674 m!5989134))

(assert (=> b!4964674 m!5989122))

(declare-fun m!5989136 () Bool)

(assert (=> b!4964674 m!5989136))

(declare-fun m!5989138 () Bool)

(assert (=> d!1597221 m!5989138))

(declare-fun m!5989140 () Bool)

(assert (=> d!1597221 m!5989140))

(assert (=> d!1597221 m!5988632))

(declare-fun m!5989142 () Bool)

(assert (=> d!1597221 m!5989142))

(assert (=> d!1597221 m!5988698))

(declare-fun m!5989144 () Bool)

(assert (=> b!4964677 m!5989144))

(declare-fun m!5989146 () Bool)

(assert (=> b!4964677 m!5989146))

(assert (=> b!4964677 m!5988632))

(assert (=> b!4964677 m!5989126))

(assert (=> b!4964680 m!5989144))

(assert (=> b!4964673 m!5989144))

(declare-fun m!5989148 () Bool)

(assert (=> b!4964673 m!5989148))

(assert (=> b!4964673 m!5989148))

(declare-fun m!5989150 () Bool)

(assert (=> b!4964673 m!5989150))

(assert (=> b!4964676 m!5989144))

(declare-fun m!5989152 () Bool)

(assert (=> b!4964676 m!5989152))

(assert (=> b!4964676 m!5989152))

(declare-fun m!5989154 () Bool)

(assert (=> b!4964676 m!5989154))

(assert (=> b!4964676 m!5989154))

(declare-fun m!5989156 () Bool)

(assert (=> b!4964676 m!5989156))

(assert (=> b!4964675 m!5989144))

(assert (=> b!4964675 m!5989152))

(assert (=> b!4964675 m!5989152))

(assert (=> b!4964675 m!5989154))

(assert (=> b!4964675 m!5989154))

(declare-fun m!5989158 () Bool)

(assert (=> b!4964675 m!5989158))

(assert (=> b!4964678 m!5988784))

(assert (=> b!4964678 m!5988632))

(assert (=> b!4964678 m!5989126))

(assert (=> b!4964678 m!5988784))

(assert (=> b!4964678 m!5988632))

(assert (=> b!4964678 m!5988632))

(assert (=> b!4964678 m!5989126))

(assert (=> b!4964678 m!5989128))

(declare-fun m!5989160 () Bool)

(assert (=> b!4964678 m!5989160))

(assert (=> b!4964679 m!5989144))

(declare-fun m!5989162 () Bool)

(assert (=> b!4964679 m!5989162))

(assert (=> b!4964285 d!1597221))

(declare-fun d!1597223 () Bool)

(assert (=> d!1597223 (= (get!19935 (maxPrefixOneRule!3627 thiss!15247 (h!63885 rulesArg!259) (list!18359 input!1342))) (v!50431 (maxPrefixOneRule!3627 thiss!15247 (h!63885 rulesArg!259) (list!18359 input!1342))))))

(assert (=> b!4964285 d!1597223))

(declare-fun d!1597225 () Bool)

(declare-fun lt!2049915 () Bool)

(assert (=> d!1597225 (= lt!2049915 (isEmpty!30923 (list!18359 (_1!34381 lt!2049676))))))

(assert (=> d!1597225 (= lt!2049915 (isEmpty!30929 (c!846918 (_1!34381 lt!2049676))))))

(assert (=> d!1597225 (= (isEmpty!30924 (_1!34381 lt!2049676)) lt!2049915)))

(declare-fun bs!1182888 () Bool)

(assert (= bs!1182888 d!1597225))

(assert (=> bs!1182888 m!5988790))

(assert (=> bs!1182888 m!5988790))

(declare-fun m!5989164 () Bool)

(assert (=> bs!1182888 m!5989164))

(declare-fun m!5989166 () Bool)

(assert (=> bs!1182888 m!5989166))

(assert (=> d!1597129 d!1597225))

(assert (=> d!1597129 d!1597117))

(declare-fun d!1597227 () Bool)

(declare-fun res!2119217 () Bool)

(declare-fun e!3103330 () Bool)

(assert (=> d!1597227 (=> (not res!2119217) (not e!3103330))))

(assert (=> d!1597227 (= res!2119217 (validRegex!5967 (regex!8391 (h!63885 rulesArg!259))))))

(assert (=> d!1597227 (= (ruleValid!3800 thiss!15247 (h!63885 rulesArg!259)) e!3103330)))

(declare-fun b!4964685 () Bool)

(declare-fun res!2119218 () Bool)

(assert (=> b!4964685 (=> (not res!2119218) (not e!3103330))))

(assert (=> b!4964685 (= res!2119218 (not (nullable!4618 (regex!8391 (h!63885 rulesArg!259)))))))

(declare-fun b!4964686 () Bool)

(assert (=> b!4964686 (= e!3103330 (not (= (tag!9255 (h!63885 rulesArg!259)) (String!65382 ""))))))

(assert (= (and d!1597227 res!2119217) b!4964685))

(assert (= (and b!4964685 res!2119218) b!4964686))

(assert (=> d!1597227 m!5989028))

(assert (=> b!4964685 m!5989030))

(assert (=> d!1597129 d!1597227))

(declare-fun d!1597229 () Bool)

(declare-fun lt!2049918 () tuple2!62156)

(assert (=> d!1597229 (= (tuple2!62159 (list!18359 (_1!34381 lt!2049918)) (list!18359 (_2!34381 lt!2049918))) (findLongestMatch!1695 (regex!8391 (h!63885 rulesArg!259)) (list!18359 input!1342)))))

(declare-fun choose!36653 (Regex!13624 BalanceConc!29716 BalanceConc!29716) tuple2!62156)

(assert (=> d!1597229 (= lt!2049918 (choose!36653 (regex!8391 (h!63885 rulesArg!259)) input!1342 totalInput!464))))

(assert (=> d!1597229 (validRegex!5967 (regex!8391 (h!63885 rulesArg!259)))))

(assert (=> d!1597229 (= (findLongestMatchWithZipperSequenceV2!162 (regex!8391 (h!63885 rulesArg!259)) input!1342 totalInput!464) lt!2049918)))

(declare-fun bs!1182889 () Bool)

(assert (= bs!1182889 d!1597229))

(assert (=> bs!1182889 m!5988632))

(assert (=> bs!1182889 m!5989142))

(declare-fun m!5989168 () Bool)

(assert (=> bs!1182889 m!5989168))

(declare-fun m!5989170 () Bool)

(assert (=> bs!1182889 m!5989170))

(assert (=> bs!1182889 m!5988632))

(assert (=> bs!1182889 m!5989028))

(declare-fun m!5989172 () Bool)

(assert (=> bs!1182889 m!5989172))

(assert (=> d!1597129 d!1597229))

(assert (=> d!1597129 d!1597221))

(declare-fun d!1597231 () Bool)

(assert (=> d!1597231 (= (isDefined!11358 (maxPrefixOneRule!3627 thiss!15247 (h!63885 rulesArg!259) (list!18359 input!1342))) (not (isEmpty!30925 (maxPrefixOneRule!3627 thiss!15247 (h!63885 rulesArg!259) (list!18359 input!1342)))))))

(declare-fun bs!1182890 () Bool)

(assert (= bs!1182890 d!1597231))

(assert (=> bs!1182890 m!5988766))

(declare-fun m!5989174 () Bool)

(assert (=> bs!1182890 m!5989174))

(assert (=> d!1597129 d!1597231))

(declare-fun d!1597233 () Bool)

(declare-fun isEmpty!30930 (Option!14446) Bool)

(assert (=> d!1597233 (= (isDefined!11360 lt!2049678) (not (isEmpty!30930 lt!2049678)))))

(declare-fun bs!1182891 () Bool)

(assert (= bs!1182891 d!1597233))

(declare-fun m!5989176 () Bool)

(assert (=> bs!1182891 m!5989176))

(assert (=> d!1597129 d!1597233))

(declare-fun d!1597235 () Bool)

(declare-fun c!846990 () Bool)

(assert (=> d!1597235 (= c!846990 (is-Node!15143 (left!41893 (c!846918 input!1342))))))

(declare-fun e!3103331 () Bool)

(assert (=> d!1597235 (= (inv!75059 (left!41893 (c!846918 input!1342))) e!3103331)))

(declare-fun b!4964687 () Bool)

(assert (=> b!4964687 (= e!3103331 (inv!75065 (left!41893 (c!846918 input!1342))))))

(declare-fun b!4964688 () Bool)

(declare-fun e!3103332 () Bool)

(assert (=> b!4964688 (= e!3103331 e!3103332)))

(declare-fun res!2119219 () Bool)

(assert (=> b!4964688 (= res!2119219 (not (is-Leaf!25164 (left!41893 (c!846918 input!1342)))))))

(assert (=> b!4964688 (=> res!2119219 e!3103332)))

(declare-fun b!4964689 () Bool)

(assert (=> b!4964689 (= e!3103332 (inv!75066 (left!41893 (c!846918 input!1342))))))

(assert (= (and d!1597235 c!846990) b!4964687))

(assert (= (and d!1597235 (not c!846990)) b!4964688))

(assert (= (and b!4964688 (not res!2119219)) b!4964689))

(declare-fun m!5989178 () Bool)

(assert (=> b!4964687 m!5989178))

(declare-fun m!5989180 () Bool)

(assert (=> b!4964689 m!5989180))

(assert (=> b!4964393 d!1597235))

(declare-fun d!1597237 () Bool)

(declare-fun c!846991 () Bool)

(assert (=> d!1597237 (= c!846991 (is-Node!15143 (right!42223 (c!846918 input!1342))))))

(declare-fun e!3103333 () Bool)

(assert (=> d!1597237 (= (inv!75059 (right!42223 (c!846918 input!1342))) e!3103333)))

(declare-fun b!4964690 () Bool)

(assert (=> b!4964690 (= e!3103333 (inv!75065 (right!42223 (c!846918 input!1342))))))

(declare-fun b!4964691 () Bool)

(declare-fun e!3103334 () Bool)

(assert (=> b!4964691 (= e!3103333 e!3103334)))

(declare-fun res!2119221 () Bool)

(assert (=> b!4964691 (= res!2119221 (not (is-Leaf!25164 (right!42223 (c!846918 input!1342)))))))

(assert (=> b!4964691 (=> res!2119221 e!3103334)))

(declare-fun b!4964692 () Bool)

(assert (=> b!4964692 (= e!3103334 (inv!75066 (right!42223 (c!846918 input!1342))))))

(assert (= (and d!1597237 c!846991) b!4964690))

(assert (= (and d!1597237 (not c!846991)) b!4964691))

(assert (= (and b!4964691 (not res!2119221)) b!4964692))

(declare-fun m!5989182 () Bool)

(assert (=> b!4964690 m!5989182))

(declare-fun m!5989184 () Bool)

(assert (=> b!4964692 m!5989184))

(assert (=> b!4964393 d!1597237))

(declare-fun d!1597239 () Bool)

(declare-fun lt!2049919 () Int)

(assert (=> d!1597239 (>= lt!2049919 0)))

(declare-fun e!3103335 () Int)

(assert (=> d!1597239 (= lt!2049919 e!3103335)))

(declare-fun c!846992 () Bool)

(assert (=> d!1597239 (= c!846992 (is-Nil!57435 lt!2049571))))

(assert (=> d!1597239 (= (size!38064 lt!2049571) lt!2049919)))

(declare-fun b!4964693 () Bool)

(assert (=> b!4964693 (= e!3103335 0)))

(declare-fun b!4964694 () Bool)

(assert (=> b!4964694 (= e!3103335 (+ 1 (size!38064 (t!368225 lt!2049571))))))

(assert (= (and d!1597239 c!846992) b!4964693))

(assert (= (and d!1597239 (not c!846992)) b!4964694))

(declare-fun m!5989186 () Bool)

(assert (=> b!4964694 m!5989186))

(assert (=> b!4964230 d!1597239))

(declare-fun d!1597241 () Bool)

(assert (=> d!1597241 (= (isDefined!11358 lt!2049691) (not (isEmpty!30925 lt!2049691)))))

(declare-fun bs!1182892 () Bool)

(assert (= bs!1182892 d!1597241))

(assert (=> bs!1182892 m!5988812))

(assert (=> b!4964317 d!1597241))

(declare-fun b!4964695 () Bool)

(declare-fun res!2119223 () Bool)

(declare-fun e!3103337 () Bool)

(assert (=> b!4964695 (=> (not res!2119223) (not e!3103337))))

(declare-fun lt!2049922 () Option!14445)

(assert (=> b!4964695 (= res!2119223 (< (size!38064 (_2!34378 (get!19935 lt!2049922))) (size!38064 lt!2049571)))))

(declare-fun b!4964696 () Bool)

(assert (=> b!4964696 (= e!3103337 (contains!19536 (t!368227 rulesArg!259) (rule!11629 (_1!34378 (get!19935 lt!2049922)))))))

(declare-fun call!346176 () Option!14445)

(declare-fun bm!346171 () Bool)

(assert (=> bm!346171 (= call!346176 (maxPrefixOneRule!3627 thiss!15247 (h!63885 (t!368227 rulesArg!259)) lt!2049571))))

(declare-fun b!4964698 () Bool)

(declare-fun res!2119226 () Bool)

(assert (=> b!4964698 (=> (not res!2119226) (not e!3103337))))

(assert (=> b!4964698 (= res!2119226 (matchR!6634 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922)))) (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049922))))))))

(declare-fun b!4964699 () Bool)

(declare-fun e!3103338 () Option!14445)

(declare-fun lt!2049924 () Option!14445)

(declare-fun lt!2049921 () Option!14445)

(assert (=> b!4964699 (= e!3103338 (ite (and (is-None!14444 lt!2049924) (is-None!14444 lt!2049921)) None!14444 (ite (is-None!14444 lt!2049921) lt!2049924 (ite (is-None!14444 lt!2049924) lt!2049921 (ite (>= (size!38062 (_1!34378 (v!50431 lt!2049924))) (size!38062 (_1!34378 (v!50431 lt!2049921)))) lt!2049924 lt!2049921)))))))

(assert (=> b!4964699 (= lt!2049924 call!346176)))

(assert (=> b!4964699 (= lt!2049921 (maxPrefix!4658 thiss!15247 (t!368227 (t!368227 rulesArg!259)) lt!2049571))))

(declare-fun b!4964700 () Bool)

(assert (=> b!4964700 (= e!3103338 call!346176)))

(declare-fun b!4964701 () Bool)

(declare-fun res!2119228 () Bool)

(assert (=> b!4964701 (=> (not res!2119228) (not e!3103337))))

(assert (=> b!4964701 (= res!2119228 (= (value!268585 (_1!34378 (get!19935 lt!2049922))) (apply!13902 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922)))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049922)))))))))

(declare-fun b!4964702 () Bool)

(declare-fun res!2119224 () Bool)

(assert (=> b!4964702 (=> (not res!2119224) (not e!3103337))))

(assert (=> b!4964702 (= res!2119224 (= (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049922)))) (originalCharacters!8670 (_1!34378 (get!19935 lt!2049922)))))))

(declare-fun b!4964703 () Bool)

(declare-fun res!2119225 () Bool)

(assert (=> b!4964703 (=> (not res!2119225) (not e!3103337))))

(assert (=> b!4964703 (= res!2119225 (= (++!12530 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049922)))) (_2!34378 (get!19935 lt!2049922))) lt!2049571))))

(declare-fun b!4964697 () Bool)

(declare-fun e!3103336 () Bool)

(assert (=> b!4964697 (= e!3103336 e!3103337)))

(declare-fun res!2119222 () Bool)

(assert (=> b!4964697 (=> (not res!2119222) (not e!3103337))))

(assert (=> b!4964697 (= res!2119222 (isDefined!11358 lt!2049922))))

(declare-fun d!1597243 () Bool)

(assert (=> d!1597243 e!3103336))

(declare-fun res!2119227 () Bool)

(assert (=> d!1597243 (=> res!2119227 e!3103336)))

(assert (=> d!1597243 (= res!2119227 (isEmpty!30925 lt!2049922))))

(assert (=> d!1597243 (= lt!2049922 e!3103338)))

(declare-fun c!846993 () Bool)

(assert (=> d!1597243 (= c!846993 (and (is-Cons!57437 (t!368227 rulesArg!259)) (is-Nil!57437 (t!368227 (t!368227 rulesArg!259)))))))

(declare-fun lt!2049920 () Unit!148334)

(declare-fun lt!2049923 () Unit!148334)

(assert (=> d!1597243 (= lt!2049920 lt!2049923)))

(assert (=> d!1597243 (isPrefix!5242 lt!2049571 lt!2049571)))

(assert (=> d!1597243 (= lt!2049923 (lemmaIsPrefixRefl!3566 lt!2049571 lt!2049571))))

(assert (=> d!1597243 (rulesValidInductive!3294 thiss!15247 (t!368227 rulesArg!259))))

(assert (=> d!1597243 (= (maxPrefix!4658 thiss!15247 (t!368227 rulesArg!259) lt!2049571) lt!2049922)))

(assert (= (and d!1597243 c!846993) b!4964700))

(assert (= (and d!1597243 (not c!846993)) b!4964699))

(assert (= (or b!4964700 b!4964699) bm!346171))

(assert (= (and d!1597243 (not res!2119227)) b!4964697))

(assert (= (and b!4964697 res!2119222) b!4964702))

(assert (= (and b!4964702 res!2119224) b!4964695))

(assert (= (and b!4964695 res!2119223) b!4964703))

(assert (= (and b!4964703 res!2119225) b!4964701))

(assert (= (and b!4964701 res!2119228) b!4964698))

(assert (= (and b!4964698 res!2119226) b!4964696))

(declare-fun m!5989188 () Bool)

(assert (=> d!1597243 m!5989188))

(assert (=> d!1597243 m!5988624))

(assert (=> d!1597243 m!5988626))

(assert (=> d!1597243 m!5988700))

(declare-fun m!5989190 () Bool)

(assert (=> b!4964696 m!5989190))

(declare-fun m!5989192 () Bool)

(assert (=> b!4964696 m!5989192))

(declare-fun m!5989194 () Bool)

(assert (=> b!4964699 m!5989194))

(assert (=> b!4964701 m!5989190))

(declare-fun m!5989196 () Bool)

(assert (=> b!4964701 m!5989196))

(assert (=> b!4964701 m!5989196))

(declare-fun m!5989198 () Bool)

(assert (=> b!4964701 m!5989198))

(assert (=> b!4964702 m!5989190))

(declare-fun m!5989200 () Bool)

(assert (=> b!4964702 m!5989200))

(assert (=> b!4964702 m!5989200))

(declare-fun m!5989202 () Bool)

(assert (=> b!4964702 m!5989202))

(declare-fun m!5989204 () Bool)

(assert (=> bm!346171 m!5989204))

(declare-fun m!5989206 () Bool)

(assert (=> b!4964697 m!5989206))

(assert (=> b!4964703 m!5989190))

(assert (=> b!4964703 m!5989200))

(assert (=> b!4964703 m!5989200))

(assert (=> b!4964703 m!5989202))

(assert (=> b!4964703 m!5989202))

(declare-fun m!5989208 () Bool)

(assert (=> b!4964703 m!5989208))

(assert (=> b!4964698 m!5989190))

(assert (=> b!4964698 m!5989200))

(assert (=> b!4964698 m!5989200))

(assert (=> b!4964698 m!5989202))

(assert (=> b!4964698 m!5989202))

(declare-fun m!5989210 () Bool)

(assert (=> b!4964698 m!5989210))

(assert (=> b!4964695 m!5989190))

(declare-fun m!5989212 () Bool)

(assert (=> b!4964695 m!5989212))

(assert (=> b!4964695 m!5988708))

(assert (=> b!4964319 d!1597243))

(declare-fun d!1597245 () Bool)

(declare-fun res!2119230 () Bool)

(declare-fun e!3103339 () Bool)

(assert (=> d!1597245 (=> (not res!2119230) (not e!3103339))))

(assert (=> d!1597245 (= res!2119230 (= (csize!30516 (c!846918 totalInput!464)) (+ (size!38068 (left!41893 (c!846918 totalInput!464))) (size!38068 (right!42223 (c!846918 totalInput!464))))))))

(assert (=> d!1597245 (= (inv!75065 (c!846918 totalInput!464)) e!3103339)))

(declare-fun b!4964704 () Bool)

(declare-fun res!2119231 () Bool)

(assert (=> b!4964704 (=> (not res!2119231) (not e!3103339))))

(assert (=> b!4964704 (= res!2119231 (and (not (= (left!41893 (c!846918 totalInput!464)) Empty!15143)) (not (= (right!42223 (c!846918 totalInput!464)) Empty!15143))))))

(declare-fun b!4964705 () Bool)

(declare-fun res!2119232 () Bool)

(assert (=> b!4964705 (=> (not res!2119232) (not e!3103339))))

(assert (=> b!4964705 (= res!2119232 (= (cheight!15354 (c!846918 totalInput!464)) (+ (max!0 (height!2011 (left!41893 (c!846918 totalInput!464))) (height!2011 (right!42223 (c!846918 totalInput!464)))) 1)))))

(declare-fun b!4964706 () Bool)

(assert (=> b!4964706 (= e!3103339 (<= 0 (cheight!15354 (c!846918 totalInput!464))))))

(assert (= (and d!1597245 res!2119230) b!4964704))

(assert (= (and b!4964704 res!2119231) b!4964705))

(assert (= (and b!4964705 res!2119232) b!4964706))

(declare-fun m!5989214 () Bool)

(assert (=> d!1597245 m!5989214))

(declare-fun m!5989216 () Bool)

(assert (=> d!1597245 m!5989216))

(assert (=> b!4964705 m!5989114))

(assert (=> b!4964705 m!5989116))

(assert (=> b!4964705 m!5989114))

(assert (=> b!4964705 m!5989116))

(declare-fun m!5989218 () Bool)

(assert (=> b!4964705 m!5989218))

(assert (=> b!4964213 d!1597245))

(assert (=> b!4964203 d!1597227))

(assert (=> b!4964321 d!1597213))

(declare-fun d!1597247 () Bool)

(declare-fun dynLambda!23149 (Int BalanceConc!29716) TokenValue!8701)

(assert (=> d!1597247 (= (apply!13902 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049691))))) (dynLambda!23149 (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049691))))))))

(declare-fun b_lambda!196535 () Bool)

(assert (=> (not b_lambda!196535) (not d!1597247)))

(declare-fun t!368233 () Bool)

(declare-fun tb!260227 () Bool)

(assert (=> (and b!4964142 (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))) t!368233) tb!260227))

(declare-fun result!325310 () Bool)

(declare-fun inv!21 (TokenValue!8701) Bool)

(assert (=> tb!260227 (= result!325310 (inv!21 (dynLambda!23149 (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049691)))))))))

(declare-fun m!5989220 () Bool)

(assert (=> tb!260227 m!5989220))

(assert (=> d!1597247 t!368233))

(declare-fun b_and!347707 () Bool)

(assert (= b_and!347691 (and (=> t!368233 result!325310) b_and!347707)))

(declare-fun t!368235 () Bool)

(declare-fun tb!260229 () Bool)

(assert (=> (and b!4964367 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))) t!368235) tb!260229))

(declare-fun result!325314 () Bool)

(assert (= result!325314 result!325310))

(assert (=> d!1597247 t!368235))

(declare-fun b_and!347709 () Bool)

(assert (= b_and!347699 (and (=> t!368235 result!325314) b_and!347709)))

(assert (=> d!1597247 m!5988820))

(declare-fun m!5989222 () Bool)

(assert (=> d!1597247 m!5989222))

(assert (=> b!4964321 d!1597247))

(declare-fun d!1597249 () Bool)

(declare-fun fromListB!2729 (List!57559) BalanceConc!29716)

(assert (=> d!1597249 (= (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049691)))) (fromListB!2729 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049691)))))))

(declare-fun bs!1182893 () Bool)

(assert (= bs!1182893 d!1597249))

(declare-fun m!5989224 () Bool)

(assert (=> bs!1182893 m!5989224))

(assert (=> b!4964321 d!1597249))

(declare-fun b!4964709 () Bool)

(declare-fun e!3103343 () Bool)

(declare-fun e!3103344 () Bool)

(assert (=> b!4964709 (= e!3103343 e!3103344)))

(declare-fun res!2119237 () Bool)

(assert (=> b!4964709 (=> (not res!2119237) (not e!3103344))))

(assert (=> b!4964709 (= res!2119237 (<= (- 1) (- (height!2011 (left!41893 (c!846918 input!1342))) (height!2011 (right!42223 (c!846918 input!1342))))))))

(declare-fun b!4964710 () Bool)

(declare-fun res!2119236 () Bool)

(assert (=> b!4964710 (=> (not res!2119236) (not e!3103344))))

(assert (=> b!4964710 (= res!2119236 (not (isEmpty!30929 (left!41893 (c!846918 input!1342)))))))

(declare-fun b!4964712 () Bool)

(declare-fun res!2119235 () Bool)

(assert (=> b!4964712 (=> (not res!2119235) (not e!3103344))))

(assert (=> b!4964712 (= res!2119235 (isBalanced!4200 (right!42223 (c!846918 input!1342))))))

(declare-fun b!4964713 () Bool)

(declare-fun res!2119240 () Bool)

(assert (=> b!4964713 (=> (not res!2119240) (not e!3103344))))

(assert (=> b!4964713 (= res!2119240 (isBalanced!4200 (left!41893 (c!846918 input!1342))))))

(declare-fun b!4964714 () Bool)

(assert (=> b!4964714 (= e!3103344 (not (isEmpty!30929 (right!42223 (c!846918 input!1342)))))))

(declare-fun d!1597251 () Bool)

(declare-fun res!2119239 () Bool)

(assert (=> d!1597251 (=> res!2119239 e!3103343)))

(assert (=> d!1597251 (= res!2119239 (not (is-Node!15143 (c!846918 input!1342))))))

(assert (=> d!1597251 (= (isBalanced!4200 (c!846918 input!1342)) e!3103343)))

(declare-fun b!4964711 () Bool)

(declare-fun res!2119238 () Bool)

(assert (=> b!4964711 (=> (not res!2119238) (not e!3103344))))

(assert (=> b!4964711 (= res!2119238 (<= (- (height!2011 (left!41893 (c!846918 input!1342))) (height!2011 (right!42223 (c!846918 input!1342)))) 1))))

(assert (= (and d!1597251 (not res!2119239)) b!4964709))

(assert (= (and b!4964709 res!2119237) b!4964711))

(assert (= (and b!4964711 res!2119238) b!4964713))

(assert (= (and b!4964713 res!2119240) b!4964712))

(assert (= (and b!4964712 res!2119235) b!4964710))

(assert (= (and b!4964710 res!2119236) b!4964714))

(declare-fun m!5989226 () Bool)

(assert (=> b!4964713 m!5989226))

(declare-fun m!5989228 () Bool)

(assert (=> b!4964714 m!5989228))

(declare-fun m!5989230 () Bool)

(assert (=> b!4964710 m!5989230))

(assert (=> b!4964709 m!5989014))

(assert (=> b!4964709 m!5989016))

(assert (=> b!4964711 m!5989014))

(assert (=> b!4964711 m!5989016))

(declare-fun m!5989232 () Bool)

(assert (=> b!4964712 m!5989232))

(assert (=> d!1597101 d!1597251))

(declare-fun d!1597253 () Bool)

(declare-fun res!2119241 () Bool)

(declare-fun e!3103345 () Bool)

(assert (=> d!1597253 (=> (not res!2119241) (not e!3103345))))

(assert (=> d!1597253 (= res!2119241 (<= (size!38064 (list!18363 (xs!18469 (c!846918 totalInput!464)))) 512))))

(assert (=> d!1597253 (= (inv!75066 (c!846918 totalInput!464)) e!3103345)))

(declare-fun b!4964715 () Bool)

(declare-fun res!2119242 () Bool)

(assert (=> b!4964715 (=> (not res!2119242) (not e!3103345))))

(assert (=> b!4964715 (= res!2119242 (= (csize!30517 (c!846918 totalInput!464)) (size!38064 (list!18363 (xs!18469 (c!846918 totalInput!464))))))))

(declare-fun b!4964716 () Bool)

(assert (=> b!4964716 (= e!3103345 (and (> (csize!30517 (c!846918 totalInput!464)) 0) (<= (csize!30517 (c!846918 totalInput!464)) 512)))))

(assert (= (and d!1597253 res!2119241) b!4964715))

(assert (= (and b!4964715 res!2119242) b!4964716))

(declare-fun m!5989234 () Bool)

(assert (=> d!1597253 m!5989234))

(assert (=> d!1597253 m!5989234))

(declare-fun m!5989236 () Bool)

(assert (=> d!1597253 m!5989236))

(assert (=> b!4964715 m!5989234))

(assert (=> b!4964715 m!5989234))

(assert (=> b!4964715 m!5989236))

(assert (=> b!4964215 d!1597253))

(declare-fun d!1597255 () Bool)

(assert (=> d!1597255 (= (isEmpty!30925 lt!2049691) (not (is-Some!14444 lt!2049691)))))

(assert (=> d!1597149 d!1597255))

(assert (=> d!1597149 d!1597119))

(assert (=> d!1597149 d!1597121))

(assert (=> d!1597149 d!1597107))

(declare-fun d!1597257 () Bool)

(declare-fun lt!2049925 () Int)

(assert (=> d!1597257 (>= lt!2049925 0)))

(declare-fun e!3103346 () Int)

(assert (=> d!1597257 (= lt!2049925 e!3103346)))

(declare-fun c!846994 () Bool)

(assert (=> d!1597257 (= c!846994 (is-Nil!57435 (list!18359 totalInput!464)))))

(assert (=> d!1597257 (= (size!38064 (list!18359 totalInput!464)) lt!2049925)))

(declare-fun b!4964717 () Bool)

(assert (=> b!4964717 (= e!3103346 0)))

(declare-fun b!4964718 () Bool)

(assert (=> b!4964718 (= e!3103346 (+ 1 (size!38064 (t!368225 (list!18359 totalInput!464)))))))

(assert (= (and d!1597257 c!846994) b!4964717))

(assert (= (and d!1597257 (not c!846994)) b!4964718))

(declare-fun m!5989238 () Bool)

(assert (=> b!4964718 m!5989238))

(assert (=> b!4964218 d!1597257))

(assert (=> b!4964218 d!1597239))

(declare-fun bs!1182894 () Bool)

(declare-fun d!1597259 () Bool)

(assert (= bs!1182894 (and d!1597259 b!4964280)))

(declare-fun lambda!247317 () Int)

(assert (=> bs!1182894 (= lambda!247317 lambda!247309)))

(assert (=> d!1597259 true))

(assert (=> d!1597259 (< (dynLambda!23144 order!26191 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) (dynLambda!23143 order!26189 lambda!247317))))

(assert (=> d!1597259 true))

(assert (=> d!1597259 (< (dynLambda!23142 order!26187 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) (dynLambda!23143 order!26189 lambda!247317))))

(declare-fun Forall!1760 (Int) Bool)

(assert (=> d!1597259 (= (semiInverseModEq!3698 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) (Forall!1760 lambda!247317))))

(declare-fun bs!1182895 () Bool)

(assert (= bs!1182895 d!1597259))

(declare-fun m!5989240 () Bool)

(assert (=> bs!1182895 m!5989240))

(assert (=> d!1597161 d!1597259))

(assert (=> b!4964128 d!1597111))

(declare-fun d!1597261 () Bool)

(assert (=> d!1597261 (= (inv!75067 (xs!18469 (c!846918 totalInput!464))) (<= (size!38064 (innerList!15231 (xs!18469 (c!846918 totalInput!464)))) 2147483647))))

(declare-fun bs!1182896 () Bool)

(assert (= bs!1182896 d!1597261))

(declare-fun m!5989242 () Bool)

(assert (=> bs!1182896 m!5989242))

(assert (=> b!4964377 d!1597261))

(declare-fun d!1597263 () Bool)

(assert (=> d!1597263 (= (get!19936 lt!2049644) (v!50432 lt!2049644))))

(assert (=> b!4964248 d!1597263))

(declare-fun d!1597265 () Bool)

(assert (=> d!1597265 (= (get!19935 (maxPrefix!4658 thiss!15247 (t!368227 rulesArg!259) (list!18359 input!1342))) (v!50431 (maxPrefix!4658 thiss!15247 (t!368227 rulesArg!259) (list!18359 input!1342))))))

(assert (=> b!4964248 d!1597265))

(declare-fun b!4964723 () Bool)

(declare-fun res!2119246 () Bool)

(declare-fun e!3103348 () Bool)

(assert (=> b!4964723 (=> (not res!2119246) (not e!3103348))))

(declare-fun lt!2049928 () Option!14445)

(assert (=> b!4964723 (= res!2119246 (< (size!38064 (_2!34378 (get!19935 lt!2049928))) (size!38064 (list!18359 input!1342))))))

(declare-fun b!4964724 () Bool)

(assert (=> b!4964724 (= e!3103348 (contains!19536 (t!368227 rulesArg!259) (rule!11629 (_1!34378 (get!19935 lt!2049928)))))))

(declare-fun bm!346172 () Bool)

(declare-fun call!346177 () Option!14445)

(assert (=> bm!346172 (= call!346177 (maxPrefixOneRule!3627 thiss!15247 (h!63885 (t!368227 rulesArg!259)) (list!18359 input!1342)))))

(declare-fun b!4964726 () Bool)

(declare-fun res!2119249 () Bool)

(assert (=> b!4964726 (=> (not res!2119249) (not e!3103348))))

(assert (=> b!4964726 (= res!2119249 (matchR!6634 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928)))) (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049928))))))))

(declare-fun b!4964727 () Bool)

(declare-fun e!3103349 () Option!14445)

(declare-fun lt!2049930 () Option!14445)

(declare-fun lt!2049927 () Option!14445)

(assert (=> b!4964727 (= e!3103349 (ite (and (is-None!14444 lt!2049930) (is-None!14444 lt!2049927)) None!14444 (ite (is-None!14444 lt!2049927) lt!2049930 (ite (is-None!14444 lt!2049930) lt!2049927 (ite (>= (size!38062 (_1!34378 (v!50431 lt!2049930))) (size!38062 (_1!34378 (v!50431 lt!2049927)))) lt!2049930 lt!2049927)))))))

(assert (=> b!4964727 (= lt!2049930 call!346177)))

(assert (=> b!4964727 (= lt!2049927 (maxPrefix!4658 thiss!15247 (t!368227 (t!368227 rulesArg!259)) (list!18359 input!1342)))))

(declare-fun b!4964728 () Bool)

(assert (=> b!4964728 (= e!3103349 call!346177)))

(declare-fun b!4964729 () Bool)

(declare-fun res!2119251 () Bool)

(assert (=> b!4964729 (=> (not res!2119251) (not e!3103348))))

(assert (=> b!4964729 (= res!2119251 (= (value!268585 (_1!34378 (get!19935 lt!2049928))) (apply!13902 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928)))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049928)))))))))

(declare-fun b!4964730 () Bool)

(declare-fun res!2119247 () Bool)

(assert (=> b!4964730 (=> (not res!2119247) (not e!3103348))))

(assert (=> b!4964730 (= res!2119247 (= (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049928)))) (originalCharacters!8670 (_1!34378 (get!19935 lt!2049928)))))))

(declare-fun b!4964731 () Bool)

(declare-fun res!2119248 () Bool)

(assert (=> b!4964731 (=> (not res!2119248) (not e!3103348))))

(assert (=> b!4964731 (= res!2119248 (= (++!12530 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049928)))) (_2!34378 (get!19935 lt!2049928))) (list!18359 input!1342)))))

(declare-fun b!4964725 () Bool)

(declare-fun e!3103347 () Bool)

(assert (=> b!4964725 (= e!3103347 e!3103348)))

(declare-fun res!2119245 () Bool)

(assert (=> b!4964725 (=> (not res!2119245) (not e!3103348))))

(assert (=> b!4964725 (= res!2119245 (isDefined!11358 lt!2049928))))

(declare-fun d!1597267 () Bool)

(assert (=> d!1597267 e!3103347))

(declare-fun res!2119250 () Bool)

(assert (=> d!1597267 (=> res!2119250 e!3103347)))

(assert (=> d!1597267 (= res!2119250 (isEmpty!30925 lt!2049928))))

(assert (=> d!1597267 (= lt!2049928 e!3103349)))

(declare-fun c!846995 () Bool)

(assert (=> d!1597267 (= c!846995 (and (is-Cons!57437 (t!368227 rulesArg!259)) (is-Nil!57437 (t!368227 (t!368227 rulesArg!259)))))))

(declare-fun lt!2049926 () Unit!148334)

(declare-fun lt!2049929 () Unit!148334)

(assert (=> d!1597267 (= lt!2049926 lt!2049929)))

(assert (=> d!1597267 (isPrefix!5242 (list!18359 input!1342) (list!18359 input!1342))))

(assert (=> d!1597267 (= lt!2049929 (lemmaIsPrefixRefl!3566 (list!18359 input!1342) (list!18359 input!1342)))))

(assert (=> d!1597267 (rulesValidInductive!3294 thiss!15247 (t!368227 rulesArg!259))))

(assert (=> d!1597267 (= (maxPrefix!4658 thiss!15247 (t!368227 rulesArg!259) (list!18359 input!1342)) lt!2049928)))

(assert (= (and d!1597267 c!846995) b!4964728))

(assert (= (and d!1597267 (not c!846995)) b!4964727))

(assert (= (or b!4964728 b!4964727) bm!346172))

(assert (= (and d!1597267 (not res!2119250)) b!4964725))

(assert (= (and b!4964725 res!2119245) b!4964730))

(assert (= (and b!4964730 res!2119247) b!4964723))

(assert (= (and b!4964723 res!2119246) b!4964731))

(assert (= (and b!4964731 res!2119248) b!4964729))

(assert (= (and b!4964729 res!2119251) b!4964726))

(assert (= (and b!4964726 res!2119249) b!4964724))

(declare-fun m!5989244 () Bool)

(assert (=> d!1597267 m!5989244))

(assert (=> d!1597267 m!5988632))

(assert (=> d!1597267 m!5988632))

(declare-fun m!5989246 () Bool)

(assert (=> d!1597267 m!5989246))

(assert (=> d!1597267 m!5988632))

(assert (=> d!1597267 m!5988632))

(declare-fun m!5989248 () Bool)

(assert (=> d!1597267 m!5989248))

(assert (=> d!1597267 m!5988700))

(declare-fun m!5989250 () Bool)

(assert (=> b!4964724 m!5989250))

(declare-fun m!5989252 () Bool)

(assert (=> b!4964724 m!5989252))

(assert (=> b!4964727 m!5988632))

(declare-fun m!5989254 () Bool)

(assert (=> b!4964727 m!5989254))

(assert (=> b!4964729 m!5989250))

(declare-fun m!5989256 () Bool)

(assert (=> b!4964729 m!5989256))

(assert (=> b!4964729 m!5989256))

(declare-fun m!5989258 () Bool)

(assert (=> b!4964729 m!5989258))

(assert (=> b!4964730 m!5989250))

(declare-fun m!5989260 () Bool)

(assert (=> b!4964730 m!5989260))

(assert (=> b!4964730 m!5989260))

(declare-fun m!5989262 () Bool)

(assert (=> b!4964730 m!5989262))

(assert (=> bm!346172 m!5988632))

(declare-fun m!5989264 () Bool)

(assert (=> bm!346172 m!5989264))

(declare-fun m!5989266 () Bool)

(assert (=> b!4964725 m!5989266))

(assert (=> b!4964731 m!5989250))

(assert (=> b!4964731 m!5989260))

(assert (=> b!4964731 m!5989260))

(assert (=> b!4964731 m!5989262))

(assert (=> b!4964731 m!5989262))

(declare-fun m!5989268 () Bool)

(assert (=> b!4964731 m!5989268))

(assert (=> b!4964726 m!5989250))

(assert (=> b!4964726 m!5989260))

(assert (=> b!4964726 m!5989260))

(assert (=> b!4964726 m!5989262))

(assert (=> b!4964726 m!5989262))

(declare-fun m!5989270 () Bool)

(assert (=> b!4964726 m!5989270))

(assert (=> b!4964723 m!5989250))

(declare-fun m!5989272 () Bool)

(assert (=> b!4964723 m!5989272))

(assert (=> b!4964723 m!5988632))

(assert (=> b!4964723 m!5989126))

(assert (=> b!4964248 d!1597267))

(assert (=> b!4964248 d!1597117))

(declare-fun d!1597269 () Bool)

(declare-fun e!3103353 () Bool)

(assert (=> d!1597269 e!3103353))

(declare-fun res!2119255 () Bool)

(assert (=> d!1597269 (=> (not res!2119255) (not e!3103353))))

(declare-fun lt!2049934 () Option!14446)

(assert (=> d!1597269 (= res!2119255 (= (isDefined!11360 lt!2049934) (isDefined!11358 (maxPrefixZipper!784 thiss!15247 (t!368227 (t!368227 rulesArg!259)) (list!18359 input!1342)))))))

(declare-fun e!3103352 () Option!14446)

(assert (=> d!1597269 (= lt!2049934 e!3103352)))

(declare-fun c!846996 () Bool)

(assert (=> d!1597269 (= c!846996 (and (is-Cons!57437 (t!368227 (t!368227 rulesArg!259))) (is-Nil!57437 (t!368227 (t!368227 (t!368227 rulesArg!259))))))))

(declare-fun lt!2049932 () Unit!148334)

(declare-fun lt!2049933 () Unit!148334)

(assert (=> d!1597269 (= lt!2049932 lt!2049933)))

(declare-fun lt!2049931 () List!57559)

(declare-fun lt!2049937 () List!57559)

(assert (=> d!1597269 (isPrefix!5242 lt!2049931 lt!2049937)))

(assert (=> d!1597269 (= lt!2049933 (lemmaIsPrefixRefl!3566 lt!2049931 lt!2049937))))

(assert (=> d!1597269 (= lt!2049937 (list!18359 input!1342))))

(assert (=> d!1597269 (= lt!2049931 (list!18359 input!1342))))

(assert (=> d!1597269 (rulesValidInductive!3294 thiss!15247 (t!368227 (t!368227 rulesArg!259)))))

(assert (=> d!1597269 (= (maxPrefixZipperSequenceV2!702 thiss!15247 (t!368227 (t!368227 rulesArg!259)) input!1342 totalInput!464) lt!2049934)))

(declare-fun b!4964732 () Bool)

(declare-fun e!3103351 () Bool)

(assert (=> b!4964732 (= e!3103351 (= (list!18359 (_2!34377 (get!19936 lt!2049934))) (_2!34378 (get!19935 (maxPrefix!4658 thiss!15247 (t!368227 (t!368227 rulesArg!259)) (list!18359 input!1342))))))))

(declare-fun b!4964733 () Bool)

(declare-fun e!3103355 () Bool)

(assert (=> b!4964733 (= e!3103355 e!3103351)))

(declare-fun res!2119254 () Bool)

(assert (=> b!4964733 (=> (not res!2119254) (not e!3103351))))

(assert (=> b!4964733 (= res!2119254 (= (_1!34377 (get!19936 lt!2049934)) (_1!34378 (get!19935 (maxPrefix!4658 thiss!15247 (t!368227 (t!368227 rulesArg!259)) (list!18359 input!1342))))))))

(declare-fun b!4964734 () Bool)

(declare-fun call!346178 () Option!14446)

(assert (=> b!4964734 (= e!3103352 call!346178)))

(declare-fun b!4964735 () Bool)

(declare-fun lt!2049935 () Option!14446)

(declare-fun lt!2049936 () Option!14446)

(assert (=> b!4964735 (= e!3103352 (ite (and (is-None!14445 lt!2049935) (is-None!14445 lt!2049936)) None!14445 (ite (is-None!14445 lt!2049936) lt!2049935 (ite (is-None!14445 lt!2049935) lt!2049936 (ite (>= (size!38062 (_1!34377 (v!50432 lt!2049935))) (size!38062 (_1!34377 (v!50432 lt!2049936)))) lt!2049935 lt!2049936)))))))

(assert (=> b!4964735 (= lt!2049935 call!346178)))

(assert (=> b!4964735 (= lt!2049936 (maxPrefixZipperSequenceV2!702 thiss!15247 (t!368227 (t!368227 (t!368227 rulesArg!259))) input!1342 totalInput!464))))

(declare-fun b!4964736 () Bool)

(assert (=> b!4964736 (= e!3103353 e!3103355)))

(declare-fun res!2119258 () Bool)

(assert (=> b!4964736 (=> res!2119258 e!3103355)))

(assert (=> b!4964736 (= res!2119258 (not (isDefined!11360 lt!2049934)))))

(declare-fun b!4964737 () Bool)

(declare-fun res!2119256 () Bool)

(assert (=> b!4964737 (=> (not res!2119256) (not e!3103353))))

(declare-fun e!3103354 () Bool)

(assert (=> b!4964737 (= res!2119256 e!3103354)))

(declare-fun res!2119257 () Bool)

(assert (=> b!4964737 (=> res!2119257 e!3103354)))

(assert (=> b!4964737 (= res!2119257 (not (isDefined!11360 lt!2049934)))))

(declare-fun b!4964738 () Bool)

(declare-fun e!3103350 () Bool)

(assert (=> b!4964738 (= e!3103354 e!3103350)))

(declare-fun res!2119259 () Bool)

(assert (=> b!4964738 (=> (not res!2119259) (not e!3103350))))

(assert (=> b!4964738 (= res!2119259 (= (_1!34377 (get!19936 lt!2049934)) (_1!34378 (get!19935 (maxPrefixZipper!784 thiss!15247 (t!368227 (t!368227 rulesArg!259)) (list!18359 input!1342))))))))

(declare-fun b!4964739 () Bool)

(assert (=> b!4964739 (= e!3103350 (= (list!18359 (_2!34377 (get!19936 lt!2049934))) (_2!34378 (get!19935 (maxPrefixZipper!784 thiss!15247 (t!368227 (t!368227 rulesArg!259)) (list!18359 input!1342))))))))

(declare-fun bm!346173 () Bool)

(assert (=> bm!346173 (= call!346178 (maxPrefixOneRuleZipperSequenceV2!359 thiss!15247 (h!63885 (t!368227 (t!368227 rulesArg!259))) input!1342 totalInput!464))))

(assert (= (and d!1597269 c!846996) b!4964734))

(assert (= (and d!1597269 (not c!846996)) b!4964735))

(assert (= (or b!4964734 b!4964735) bm!346173))

(assert (= (and d!1597269 res!2119255) b!4964737))

(assert (= (and b!4964737 (not res!2119257)) b!4964738))

(assert (= (and b!4964738 res!2119259) b!4964739))

(assert (= (and b!4964737 res!2119256) b!4964736))

(assert (= (and b!4964736 (not res!2119258)) b!4964733))

(assert (= (and b!4964733 res!2119254) b!4964732))

(assert (=> b!4964739 m!5988632))

(declare-fun m!5989274 () Bool)

(assert (=> b!4964739 m!5989274))

(declare-fun m!5989276 () Bool)

(assert (=> b!4964739 m!5989276))

(declare-fun m!5989278 () Bool)

(assert (=> b!4964739 m!5989278))

(assert (=> b!4964739 m!5988632))

(assert (=> b!4964739 m!5989274))

(declare-fun m!5989280 () Bool)

(assert (=> b!4964739 m!5989280))

(declare-fun m!5989282 () Bool)

(assert (=> d!1597269 m!5989282))

(assert (=> d!1597269 m!5988632))

(assert (=> d!1597269 m!5989274))

(assert (=> d!1597269 m!5989274))

(declare-fun m!5989284 () Bool)

(assert (=> d!1597269 m!5989284))

(declare-fun m!5989286 () Bool)

(assert (=> d!1597269 m!5989286))

(assert (=> d!1597269 m!5988632))

(declare-fun m!5989288 () Bool)

(assert (=> d!1597269 m!5989288))

(declare-fun m!5989290 () Bool)

(assert (=> d!1597269 m!5989290))

(declare-fun m!5989292 () Bool)

(assert (=> bm!346173 m!5989292))

(assert (=> b!4964737 m!5989288))

(assert (=> b!4964733 m!5989278))

(assert (=> b!4964733 m!5988632))

(assert (=> b!4964733 m!5988632))

(assert (=> b!4964733 m!5989254))

(assert (=> b!4964733 m!5989254))

(declare-fun m!5989294 () Bool)

(assert (=> b!4964733 m!5989294))

(declare-fun m!5989296 () Bool)

(assert (=> b!4964735 m!5989296))

(assert (=> b!4964736 m!5989288))

(assert (=> b!4964732 m!5989254))

(assert (=> b!4964732 m!5989294))

(assert (=> b!4964732 m!5988632))

(assert (=> b!4964732 m!5989254))

(assert (=> b!4964732 m!5989276))

(assert (=> b!4964732 m!5989278))

(assert (=> b!4964732 m!5988632))

(assert (=> b!4964738 m!5989278))

(assert (=> b!4964738 m!5988632))

(assert (=> b!4964738 m!5988632))

(assert (=> b!4964738 m!5989274))

(assert (=> b!4964738 m!5989274))

(assert (=> b!4964738 m!5989280))

(assert (=> b!4964250 d!1597269))

(declare-fun d!1597271 () Bool)

(assert (=> d!1597271 (= (inv!75056 (tag!9255 (h!63885 (t!368227 rulesArg!259)))) (= (mod (str.len (value!268584 (tag!9255 (h!63885 (t!368227 rulesArg!259))))) 2) 0))))

(assert (=> b!4964366 d!1597271))

(declare-fun d!1597273 () Bool)

(declare-fun res!2119260 () Bool)

(declare-fun e!3103356 () Bool)

(assert (=> d!1597273 (=> (not res!2119260) (not e!3103356))))

(assert (=> d!1597273 (= res!2119260 (semiInverseModEq!3698 (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))))))

(assert (=> d!1597273 (= (inv!75061 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) e!3103356)))

(declare-fun b!4964740 () Bool)

(assert (=> b!4964740 (= e!3103356 (equivClasses!3546 (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))))))

(assert (= (and d!1597273 res!2119260) b!4964740))

(declare-fun m!5989298 () Bool)

(assert (=> d!1597273 m!5989298))

(declare-fun m!5989300 () Bool)

(assert (=> b!4964740 m!5989300))

(assert (=> b!4964366 d!1597273))

(declare-fun d!1597275 () Bool)

(declare-fun c!847001 () Bool)

(assert (=> d!1597275 (= c!847001 (is-Empty!15143 (c!846918 (_2!34377 lt!2049579))))))

(declare-fun e!3103361 () List!57559)

(assert (=> d!1597275 (= (list!18361 (c!846918 (_2!34377 lt!2049579))) e!3103361)))

(declare-fun b!4964751 () Bool)

(declare-fun e!3103362 () List!57559)

(assert (=> b!4964751 (= e!3103362 (list!18363 (xs!18469 (c!846918 (_2!34377 lt!2049579)))))))

(declare-fun b!4964749 () Bool)

(assert (=> b!4964749 (= e!3103361 Nil!57435)))

(declare-fun b!4964750 () Bool)

(assert (=> b!4964750 (= e!3103361 e!3103362)))

(declare-fun c!847002 () Bool)

(assert (=> b!4964750 (= c!847002 (is-Leaf!25164 (c!846918 (_2!34377 lt!2049579))))))

(declare-fun b!4964752 () Bool)

(assert (=> b!4964752 (= e!3103362 (++!12530 (list!18361 (left!41893 (c!846918 (_2!34377 lt!2049579)))) (list!18361 (right!42223 (c!846918 (_2!34377 lt!2049579))))))))

(assert (= (and d!1597275 c!847001) b!4964749))

(assert (= (and d!1597275 (not c!847001)) b!4964750))

(assert (= (and b!4964750 c!847002) b!4964751))

(assert (= (and b!4964750 (not c!847002)) b!4964752))

(declare-fun m!5989302 () Bool)

(assert (=> b!4964751 m!5989302))

(declare-fun m!5989304 () Bool)

(assert (=> b!4964752 m!5989304))

(declare-fun m!5989306 () Bool)

(assert (=> b!4964752 m!5989306))

(assert (=> b!4964752 m!5989304))

(assert (=> b!4964752 m!5989306))

(declare-fun m!5989308 () Bool)

(assert (=> b!4964752 m!5989308))

(assert (=> d!1597151 d!1597275))

(declare-fun d!1597277 () Bool)

(assert (=> d!1597277 (= (isDefined!11360 lt!2049644) (not (isEmpty!30930 lt!2049644)))))

(declare-fun bs!1182897 () Bool)

(assert (= bs!1182897 d!1597277))

(declare-fun m!5989310 () Bool)

(assert (=> bs!1182897 m!5989310))

(assert (=> b!4964252 d!1597277))

(declare-fun d!1597279 () Bool)

(declare-fun c!847003 () Bool)

(assert (=> d!1597279 (= c!847003 (is-Empty!15143 (c!846918 totalInput!464)))))

(declare-fun e!3103363 () List!57559)

(assert (=> d!1597279 (= (list!18361 (c!846918 totalInput!464)) e!3103363)))

(declare-fun b!4964755 () Bool)

(declare-fun e!3103364 () List!57559)

(assert (=> b!4964755 (= e!3103364 (list!18363 (xs!18469 (c!846918 totalInput!464))))))

(declare-fun b!4964753 () Bool)

(assert (=> b!4964753 (= e!3103363 Nil!57435)))

(declare-fun b!4964754 () Bool)

(assert (=> b!4964754 (= e!3103363 e!3103364)))

(declare-fun c!847004 () Bool)

(assert (=> b!4964754 (= c!847004 (is-Leaf!25164 (c!846918 totalInput!464)))))

(declare-fun b!4964756 () Bool)

(assert (=> b!4964756 (= e!3103364 (++!12530 (list!18361 (left!41893 (c!846918 totalInput!464))) (list!18361 (right!42223 (c!846918 totalInput!464)))))))

(assert (= (and d!1597279 c!847003) b!4964753))

(assert (= (and d!1597279 (not c!847003)) b!4964754))

(assert (= (and b!4964754 c!847004) b!4964755))

(assert (= (and b!4964754 (not c!847004)) b!4964756))

(assert (=> b!4964755 m!5989234))

(declare-fun m!5989312 () Bool)

(assert (=> b!4964756 m!5989312))

(declare-fun m!5989314 () Bool)

(assert (=> b!4964756 m!5989314))

(assert (=> b!4964756 m!5989312))

(assert (=> b!4964756 m!5989314))

(declare-fun m!5989316 () Bool)

(assert (=> b!4964756 m!5989316))

(assert (=> d!1597115 d!1597279))

(assert (=> b!4964254 d!1597263))

(declare-fun d!1597281 () Bool)

(assert (=> d!1597281 (= (list!18359 (_2!34377 (get!19936 lt!2049644))) (list!18361 (c!846918 (_2!34377 (get!19936 lt!2049644)))))))

(declare-fun bs!1182898 () Bool)

(assert (= bs!1182898 d!1597281))

(declare-fun m!5989318 () Bool)

(assert (=> bs!1182898 m!5989318))

(assert (=> b!4964254 d!1597281))

(assert (=> b!4964254 d!1597117))

(declare-fun lt!2049938 () Option!14445)

(declare-fun d!1597283 () Bool)

(assert (=> d!1597283 (= lt!2049938 (maxPrefix!4658 thiss!15247 (t!368227 rulesArg!259) (list!18359 input!1342)))))

(declare-fun e!3103365 () Option!14445)

(assert (=> d!1597283 (= lt!2049938 e!3103365)))

(declare-fun c!847005 () Bool)

(assert (=> d!1597283 (= c!847005 (and (is-Cons!57437 (t!368227 rulesArg!259)) (is-Nil!57437 (t!368227 (t!368227 rulesArg!259)))))))

(declare-fun lt!2049940 () Unit!148334)

(declare-fun lt!2049942 () Unit!148334)

(assert (=> d!1597283 (= lt!2049940 lt!2049942)))

(assert (=> d!1597283 (isPrefix!5242 (list!18359 input!1342) (list!18359 input!1342))))

(assert (=> d!1597283 (= lt!2049942 (lemmaIsPrefixRefl!3566 (list!18359 input!1342) (list!18359 input!1342)))))

(assert (=> d!1597283 (rulesValidInductive!3294 thiss!15247 (t!368227 rulesArg!259))))

(assert (=> d!1597283 (= (maxPrefixZipper!784 thiss!15247 (t!368227 rulesArg!259) (list!18359 input!1342)) lt!2049938)))

(declare-fun bm!346174 () Bool)

(declare-fun call!346179 () Option!14445)

(assert (=> bm!346174 (= call!346179 (maxPrefixOneRuleZipper!294 thiss!15247 (h!63885 (t!368227 rulesArg!259)) (list!18359 input!1342)))))

(declare-fun b!4964757 () Bool)

(assert (=> b!4964757 (= e!3103365 call!346179)))

(declare-fun b!4964758 () Bool)

(declare-fun lt!2049939 () Option!14445)

(declare-fun lt!2049941 () Option!14445)

(assert (=> b!4964758 (= e!3103365 (ite (and (is-None!14444 lt!2049939) (is-None!14444 lt!2049941)) None!14444 (ite (is-None!14444 lt!2049941) lt!2049939 (ite (is-None!14444 lt!2049939) lt!2049941 (ite (>= (size!38062 (_1!34378 (v!50431 lt!2049939))) (size!38062 (_1!34378 (v!50431 lt!2049941)))) lt!2049939 lt!2049941)))))))

(assert (=> b!4964758 (= lt!2049939 call!346179)))

(assert (=> b!4964758 (= lt!2049941 (maxPrefixZipper!784 thiss!15247 (t!368227 (t!368227 rulesArg!259)) (list!18359 input!1342)))))

(assert (= (and d!1597283 c!847005) b!4964757))

(assert (= (and d!1597283 (not c!847005)) b!4964758))

(assert (= (or b!4964757 b!4964758) bm!346174))

(assert (=> d!1597283 m!5988632))

(assert (=> d!1597283 m!5988742))

(assert (=> d!1597283 m!5988632))

(assert (=> d!1597283 m!5988632))

(assert (=> d!1597283 m!5989246))

(assert (=> d!1597283 m!5988632))

(assert (=> d!1597283 m!5988632))

(assert (=> d!1597283 m!5989248))

(assert (=> d!1597283 m!5988700))

(assert (=> bm!346174 m!5988632))

(declare-fun m!5989320 () Bool)

(assert (=> bm!346174 m!5989320))

(assert (=> b!4964758 m!5988632))

(assert (=> b!4964758 m!5989274))

(assert (=> b!4964254 d!1597283))

(declare-fun d!1597285 () Bool)

(assert (=> d!1597285 (= (get!19935 (maxPrefixZipper!784 thiss!15247 (t!368227 rulesArg!259) (list!18359 input!1342))) (v!50431 (maxPrefixZipper!784 thiss!15247 (t!368227 rulesArg!259) (list!18359 input!1342))))))

(assert (=> b!4964254 d!1597285))

(declare-fun bs!1182899 () Bool)

(declare-fun b!4964759 () Bool)

(assert (= bs!1182899 (and b!4964759 b!4964280)))

(declare-fun lambda!247318 () Int)

(assert (=> bs!1182899 (= (and (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (= lambda!247318 lambda!247309))))

(declare-fun bs!1182900 () Bool)

(assert (= bs!1182900 (and b!4964759 d!1597259)))

(assert (=> bs!1182900 (= (and (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (= lambda!247318 lambda!247317))))

(declare-fun b!4964766 () Bool)

(declare-fun e!3103372 () Bool)

(assert (=> b!4964766 (= e!3103372 true)))

(declare-fun b!4964765 () Bool)

(declare-fun e!3103371 () Bool)

(assert (=> b!4964765 (= e!3103371 e!3103372)))

(assert (=> b!4964759 e!3103371))

(assert (= b!4964765 b!4964766))

(assert (= b!4964759 b!4964765))

(assert (=> b!4964766 (< (dynLambda!23142 order!26187 (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) (dynLambda!23143 order!26189 lambda!247318))))

(assert (=> b!4964766 (< (dynLambda!23144 order!26191 (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) (dynLambda!23143 order!26189 lambda!247318))))

(declare-fun e!3103366 () Option!14446)

(declare-fun lt!2049950 () tuple2!62156)

(assert (=> b!4964759 (= e!3103366 (Some!14445 (tuple2!62149 (Token!15279 (apply!13902 (transformation!8391 (h!63885 (t!368227 rulesArg!259))) (_1!34381 lt!2049950)) (h!63885 (t!368227 rulesArg!259)) (size!38065 (_1!34381 lt!2049950)) (list!18359 (_1!34381 lt!2049950))) (_2!34381 lt!2049950))))))

(declare-fun lt!2049946 () List!57559)

(assert (=> b!4964759 (= lt!2049946 (list!18359 input!1342))))

(declare-fun lt!2049951 () Unit!148334)

(assert (=> b!4964759 (= lt!2049951 (longestMatchIsAcceptedByMatchOrIsEmpty!1814 (regex!8391 (h!63885 (t!368227 rulesArg!259))) lt!2049946))))

(declare-fun res!2119266 () Bool)

(assert (=> b!4964759 (= res!2119266 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) lt!2049946 lt!2049946 (size!38064 lt!2049946)))))))

(declare-fun e!3103368 () Bool)

(assert (=> b!4964759 (=> res!2119266 e!3103368)))

(assert (=> b!4964759 e!3103368))

(declare-fun lt!2049949 () Unit!148334)

(assert (=> b!4964759 (= lt!2049949 lt!2049951)))

(declare-fun lt!2049947 () Unit!148334)

(assert (=> b!4964759 (= lt!2049947 (lemmaInv!1332 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))))))

(declare-fun lt!2049944 () Unit!148334)

(assert (=> b!4964759 (= lt!2049944 (ForallOf!1225 lambda!247318 (_1!34381 lt!2049950)))))

(declare-fun lt!2049945 () Unit!148334)

(assert (=> b!4964759 (= lt!2049945 (ForallOf!1225 lambda!247318 (seqFromList!6034 (list!18359 (_1!34381 lt!2049950)))))))

(declare-fun lt!2049948 () Option!14446)

(assert (=> b!4964759 (= lt!2049948 (Some!14445 (tuple2!62149 (Token!15279 (apply!13902 (transformation!8391 (h!63885 (t!368227 rulesArg!259))) (_1!34381 lt!2049950)) (h!63885 (t!368227 rulesArg!259)) (size!38065 (_1!34381 lt!2049950)) (list!18359 (_1!34381 lt!2049950))) (_2!34381 lt!2049950))))))

(declare-fun lt!2049943 () Unit!148334)

(assert (=> b!4964759 (= lt!2049943 (lemmaEqSameImage!1166 (transformation!8391 (h!63885 (t!368227 rulesArg!259))) (_1!34381 lt!2049950) (seqFromList!6034 (list!18359 (_1!34381 lt!2049950)))))))

(declare-fun b!4964760 () Bool)

(assert (=> b!4964760 (= e!3103366 None!14445)))

(declare-fun b!4964761 () Bool)

(declare-fun e!3103367 () Bool)

(declare-fun e!3103370 () Bool)

(assert (=> b!4964761 (= e!3103367 e!3103370)))

(declare-fun res!2119267 () Bool)

(assert (=> b!4964761 (=> res!2119267 e!3103370)))

(declare-fun lt!2049952 () Option!14446)

(assert (=> b!4964761 (= res!2119267 (not (isDefined!11360 lt!2049952)))))

(declare-fun d!1597287 () Bool)

(assert (=> d!1597287 e!3103367))

(declare-fun res!2119265 () Bool)

(assert (=> d!1597287 (=> (not res!2119265) (not e!3103367))))

(assert (=> d!1597287 (= res!2119265 (= (isDefined!11360 lt!2049952) (isDefined!11358 (maxPrefixOneRule!3627 thiss!15247 (h!63885 (t!368227 rulesArg!259)) (list!18359 input!1342)))))))

(assert (=> d!1597287 (= lt!2049952 e!3103366)))

(declare-fun c!847006 () Bool)

(assert (=> d!1597287 (= c!847006 (isEmpty!30924 (_1!34381 lt!2049950)))))

(assert (=> d!1597287 (= lt!2049950 (findLongestMatchWithZipperSequenceV2!162 (regex!8391 (h!63885 (t!368227 rulesArg!259))) input!1342 totalInput!464))))

(assert (=> d!1597287 (ruleValid!3800 thiss!15247 (h!63885 (t!368227 rulesArg!259)))))

(assert (=> d!1597287 (= (maxPrefixOneRuleZipperSequenceV2!359 thiss!15247 (h!63885 (t!368227 rulesArg!259)) input!1342 totalInput!464) lt!2049952)))

(declare-fun b!4964762 () Bool)

(assert (=> b!4964762 (= e!3103368 (matchR!6634 (regex!8391 (h!63885 (t!368227 rulesArg!259))) (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) lt!2049946 lt!2049946 (size!38064 lt!2049946)))))))

(declare-fun b!4964763 () Bool)

(declare-fun e!3103369 () Bool)

(assert (=> b!4964763 (= e!3103370 e!3103369)))

(declare-fun res!2119268 () Bool)

(assert (=> b!4964763 (=> (not res!2119268) (not e!3103369))))

(assert (=> b!4964763 (= res!2119268 (= (_1!34377 (get!19936 lt!2049952)) (_1!34378 (get!19935 (maxPrefixOneRule!3627 thiss!15247 (h!63885 (t!368227 rulesArg!259)) (list!18359 input!1342))))))))

(declare-fun b!4964764 () Bool)

(assert (=> b!4964764 (= e!3103369 (= (list!18359 (_2!34377 (get!19936 lt!2049952))) (_2!34378 (get!19935 (maxPrefixOneRule!3627 thiss!15247 (h!63885 (t!368227 rulesArg!259)) (list!18359 input!1342))))))))

(assert (= (and d!1597287 c!847006) b!4964760))

(assert (= (and d!1597287 (not c!847006)) b!4964759))

(assert (= (and b!4964759 (not res!2119266)) b!4964762))

(assert (= (and d!1597287 res!2119265) b!4964761))

(assert (= (and b!4964761 (not res!2119267)) b!4964763))

(assert (= (and b!4964763 res!2119268) b!4964764))

(declare-fun m!5989322 () Bool)

(assert (=> d!1597287 m!5989322))

(assert (=> d!1597287 m!5988632))

(assert (=> d!1597287 m!5989264))

(assert (=> d!1597287 m!5988632))

(declare-fun m!5989324 () Bool)

(assert (=> d!1597287 m!5989324))

(assert (=> d!1597287 m!5989264))

(declare-fun m!5989326 () Bool)

(assert (=> d!1597287 m!5989326))

(declare-fun m!5989328 () Bool)

(assert (=> d!1597287 m!5989328))

(declare-fun m!5989330 () Bool)

(assert (=> d!1597287 m!5989330))

(assert (=> b!4964761 m!5989324))

(declare-fun m!5989332 () Bool)

(assert (=> b!4964759 m!5989332))

(declare-fun m!5989334 () Bool)

(assert (=> b!4964759 m!5989334))

(declare-fun m!5989336 () Bool)

(assert (=> b!4964759 m!5989336))

(declare-fun m!5989338 () Bool)

(assert (=> b!4964759 m!5989338))

(assert (=> b!4964759 m!5989334))

(declare-fun m!5989340 () Bool)

(assert (=> b!4964759 m!5989340))

(assert (=> b!4964759 m!5988784))

(declare-fun m!5989342 () Bool)

(assert (=> b!4964759 m!5989342))

(declare-fun m!5989344 () Bool)

(assert (=> b!4964759 m!5989344))

(declare-fun m!5989346 () Bool)

(assert (=> b!4964759 m!5989346))

(assert (=> b!4964759 m!5989334))

(declare-fun m!5989348 () Bool)

(assert (=> b!4964759 m!5989348))

(declare-fun m!5989350 () Bool)

(assert (=> b!4964759 m!5989350))

(declare-fun m!5989352 () Bool)

(assert (=> b!4964759 m!5989352))

(declare-fun m!5989354 () Bool)

(assert (=> b!4964759 m!5989354))

(assert (=> b!4964759 m!5988784))

(assert (=> b!4964759 m!5988632))

(assert (=> b!4964759 m!5989346))

(assert (=> b!4964759 m!5989342))

(assert (=> b!4964764 m!5988632))

(assert (=> b!4964764 m!5989264))

(assert (=> b!4964764 m!5988632))

(declare-fun m!5989356 () Bool)

(assert (=> b!4964764 m!5989356))

(assert (=> b!4964764 m!5989264))

(declare-fun m!5989358 () Bool)

(assert (=> b!4964764 m!5989358))

(declare-fun m!5989360 () Bool)

(assert (=> b!4964764 m!5989360))

(assert (=> b!4964763 m!5989360))

(assert (=> b!4964763 m!5988632))

(assert (=> b!4964763 m!5988632))

(assert (=> b!4964763 m!5989264))

(assert (=> b!4964763 m!5989264))

(assert (=> b!4964763 m!5989358))

(assert (=> b!4964762 m!5988784))

(assert (=> b!4964762 m!5989342))

(assert (=> b!4964762 m!5988784))

(assert (=> b!4964762 m!5989342))

(assert (=> b!4964762 m!5989344))

(declare-fun m!5989362 () Bool)

(assert (=> b!4964762 m!5989362))

(assert (=> bm!346127 d!1597287))

(assert (=> b!4964282 d!1597233))

(declare-fun d!1597289 () Bool)

(declare-fun lt!2049970 () Option!14445)

(assert (=> d!1597289 (= lt!2049970 (maxPrefixOneRule!3627 thiss!15247 (h!63885 rulesArg!259) lt!2049571))))

(declare-fun e!3103378 () Option!14445)

(assert (=> d!1597289 (= lt!2049970 e!3103378)))

(declare-fun c!847009 () Bool)

(declare-fun lt!2049965 () tuple2!62158)

(assert (=> d!1597289 (= c!847009 (isEmpty!30923 (_1!34382 lt!2049965)))))

(declare-fun findLongestMatchWithZipper!92 (Regex!13624 List!57559) tuple2!62158)

(assert (=> d!1597289 (= lt!2049965 (findLongestMatchWithZipper!92 (regex!8391 (h!63885 rulesArg!259)) lt!2049571))))

(assert (=> d!1597289 (ruleValid!3800 thiss!15247 (h!63885 rulesArg!259))))

(assert (=> d!1597289 (= (maxPrefixOneRuleZipper!294 thiss!15247 (h!63885 rulesArg!259) lt!2049571) lt!2049970)))

(declare-fun b!4964773 () Bool)

(assert (=> b!4964773 (= e!3103378 None!14444)))

(declare-fun b!4964774 () Bool)

(assert (=> b!4964774 (= e!3103378 (Some!14444 (tuple2!62151 (Token!15279 (apply!13902 (transformation!8391 (h!63885 rulesArg!259)) (seqFromList!6034 (_1!34382 lt!2049965))) (h!63885 rulesArg!259) (size!38064 (_1!34382 lt!2049965)) (_1!34382 lt!2049965)) (_2!34382 lt!2049965))))))

(declare-fun lt!2049966 () Unit!148334)

(assert (=> b!4964774 (= lt!2049966 (longestMatchIsAcceptedByMatchOrIsEmpty!1814 (regex!8391 (h!63885 rulesArg!259)) lt!2049571))))

(declare-fun res!2119283 () Bool)

(assert (=> b!4964774 (= res!2119283 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571)))))))

(declare-fun e!3103377 () Bool)

(assert (=> b!4964774 (=> res!2119283 e!3103377)))

(assert (=> b!4964774 e!3103377))

(declare-fun lt!2049969 () Unit!148334)

(assert (=> b!4964774 (= lt!2049969 lt!2049966)))

(declare-fun lt!2049967 () Unit!148334)

(assert (=> b!4964774 (= lt!2049967 (lemmaInv!1332 (transformation!8391 (h!63885 rulesArg!259))))))

(declare-fun lt!2049968 () Unit!148334)

(assert (=> b!4964774 (= lt!2049968 (lemmaSemiInverse!2600 (transformation!8391 (h!63885 rulesArg!259)) (seqFromList!6034 (_1!34382 lt!2049965))))))

(declare-fun b!4964775 () Bool)

(assert (=> b!4964775 (= e!3103377 (matchR!6634 (regex!8391 (h!63885 rulesArg!259)) (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571)))))))

(assert (= (and d!1597289 c!847009) b!4964773))

(assert (= (and d!1597289 (not c!847009)) b!4964774))

(assert (= (and b!4964774 (not res!2119283)) b!4964775))

(assert (=> d!1597289 m!5988828))

(declare-fun m!5989364 () Bool)

(assert (=> d!1597289 m!5989364))

(declare-fun m!5989366 () Bool)

(assert (=> d!1597289 m!5989366))

(assert (=> d!1597289 m!5988698))

(declare-fun m!5989368 () Bool)

(assert (=> b!4964774 m!5989368))

(assert (=> b!4964774 m!5988784))

(assert (=> b!4964774 m!5988708))

(declare-fun m!5989370 () Bool)

(assert (=> b!4964774 m!5989370))

(assert (=> b!4964774 m!5988784))

(assert (=> b!4964774 m!5988792))

(declare-fun m!5989372 () Bool)

(assert (=> b!4964774 m!5989372))

(declare-fun m!5989374 () Bool)

(assert (=> b!4964774 m!5989374))

(assert (=> b!4964774 m!5989368))

(declare-fun m!5989376 () Bool)

(assert (=> b!4964774 m!5989376))

(declare-fun m!5989378 () Bool)

(assert (=> b!4964774 m!5989378))

(assert (=> b!4964774 m!5988708))

(assert (=> b!4964774 m!5989368))

(declare-fun m!5989380 () Bool)

(assert (=> b!4964774 m!5989380))

(assert (=> b!4964775 m!5988784))

(assert (=> b!4964775 m!5988708))

(assert (=> b!4964775 m!5988784))

(assert (=> b!4964775 m!5988708))

(assert (=> b!4964775 m!5989370))

(declare-fun m!5989382 () Bool)

(assert (=> b!4964775 m!5989382))

(assert (=> bm!346136 d!1597289))

(declare-fun d!1597291 () Bool)

(assert (=> d!1597291 (= (isEmpty!30925 lt!2049574) (not (is-Some!14444 lt!2049574)))))

(assert (=> d!1597153 d!1597291))

(declare-fun d!1597293 () Bool)

(declare-fun lt!2049971 () Int)

(assert (=> d!1597293 (>= lt!2049971 0)))

(declare-fun e!3103379 () Int)

(assert (=> d!1597293 (= lt!2049971 e!3103379)))

(declare-fun c!847010 () Bool)

(assert (=> d!1597293 (= c!847010 (is-Nil!57435 (_2!34378 (get!19935 lt!2049691))))))

(assert (=> d!1597293 (= (size!38064 (_2!34378 (get!19935 lt!2049691))) lt!2049971)))

(declare-fun b!4964776 () Bool)

(assert (=> b!4964776 (= e!3103379 0)))

(declare-fun b!4964777 () Bool)

(assert (=> b!4964777 (= e!3103379 (+ 1 (size!38064 (t!368225 (_2!34378 (get!19935 lt!2049691))))))))

(assert (= (and d!1597293 c!847010) b!4964776))

(assert (= (and d!1597293 (not c!847010)) b!4964777))

(declare-fun m!5989384 () Bool)

(assert (=> b!4964777 m!5989384))

(assert (=> b!4964315 d!1597293))

(assert (=> b!4964315 d!1597213))

(assert (=> b!4964315 d!1597239))

(declare-fun d!1597295 () Bool)

(declare-fun c!847011 () Bool)

(assert (=> d!1597295 (= c!847011 (is-Empty!15143 (c!846918 input!1342)))))

(declare-fun e!3103380 () List!57559)

(assert (=> d!1597295 (= (list!18361 (c!846918 input!1342)) e!3103380)))

(declare-fun b!4964780 () Bool)

(declare-fun e!3103381 () List!57559)

(assert (=> b!4964780 (= e!3103381 (list!18363 (xs!18469 (c!846918 input!1342))))))

(declare-fun b!4964778 () Bool)

(assert (=> b!4964778 (= e!3103380 Nil!57435)))

(declare-fun b!4964779 () Bool)

(assert (=> b!4964779 (= e!3103380 e!3103381)))

(declare-fun c!847012 () Bool)

(assert (=> b!4964779 (= c!847012 (is-Leaf!25164 (c!846918 input!1342)))))

(declare-fun b!4964781 () Bool)

(assert (=> b!4964781 (= e!3103381 (++!12530 (list!18361 (left!41893 (c!846918 input!1342))) (list!18361 (right!42223 (c!846918 input!1342)))))))

(assert (= (and d!1597295 c!847011) b!4964778))

(assert (= (and d!1597295 (not c!847011)) b!4964779))

(assert (= (and b!4964779 c!847012) b!4964780))

(assert (= (and b!4964779 (not c!847012)) b!4964781))

(assert (=> b!4964780 m!5989098))

(declare-fun m!5989386 () Bool)

(assert (=> b!4964781 m!5989386))

(declare-fun m!5989388 () Bool)

(assert (=> b!4964781 m!5989388))

(assert (=> b!4964781 m!5989386))

(assert (=> b!4964781 m!5989388))

(declare-fun m!5989390 () Bool)

(assert (=> b!4964781 m!5989390))

(assert (=> d!1597117 d!1597295))

(assert (=> b!4964284 d!1597219))

(assert (=> b!4964284 d!1597223))

(assert (=> b!4964284 d!1597221))

(assert (=> b!4964284 d!1597117))

(declare-fun d!1597297 () Bool)

(assert (=> d!1597297 (= (inv!75067 (xs!18469 (c!846918 input!1342))) (<= (size!38064 (innerList!15231 (xs!18469 (c!846918 input!1342)))) 2147483647))))

(declare-fun bs!1182901 () Bool)

(assert (= bs!1182901 d!1597297))

(declare-fun m!5989392 () Bool)

(assert (=> bs!1182901 m!5989392))

(assert (=> b!4964394 d!1597297))

(declare-fun b!4964785 () Bool)

(declare-fun e!3103383 () Bool)

(assert (=> b!4964785 (= e!3103383 (>= (size!38064 (tail!9799 lt!2049571)) (size!38064 (tail!9799 lt!2049571))))))

(declare-fun b!4964784 () Bool)

(declare-fun e!3103382 () Bool)

(assert (=> b!4964784 (= e!3103382 (isPrefix!5242 (tail!9799 (tail!9799 lt!2049571)) (tail!9799 (tail!9799 lt!2049571))))))

(declare-fun b!4964782 () Bool)

(declare-fun e!3103384 () Bool)

(assert (=> b!4964782 (= e!3103384 e!3103382)))

(declare-fun res!2119285 () Bool)

(assert (=> b!4964782 (=> (not res!2119285) (not e!3103382))))

(assert (=> b!4964782 (= res!2119285 (not (is-Nil!57435 (tail!9799 lt!2049571))))))

(declare-fun d!1597299 () Bool)

(assert (=> d!1597299 e!3103383))

(declare-fun res!2119284 () Bool)

(assert (=> d!1597299 (=> res!2119284 e!3103383)))

(declare-fun lt!2049972 () Bool)

(assert (=> d!1597299 (= res!2119284 (not lt!2049972))))

(assert (=> d!1597299 (= lt!2049972 e!3103384)))

(declare-fun res!2119287 () Bool)

(assert (=> d!1597299 (=> res!2119287 e!3103384)))

(assert (=> d!1597299 (= res!2119287 (is-Nil!57435 (tail!9799 lt!2049571)))))

(assert (=> d!1597299 (= (isPrefix!5242 (tail!9799 lt!2049571) (tail!9799 lt!2049571)) lt!2049972)))

(declare-fun b!4964783 () Bool)

(declare-fun res!2119286 () Bool)

(assert (=> b!4964783 (=> (not res!2119286) (not e!3103382))))

(assert (=> b!4964783 (= res!2119286 (= (head!10666 (tail!9799 lt!2049571)) (head!10666 (tail!9799 lt!2049571))))))

(assert (= (and d!1597299 (not res!2119287)) b!4964782))

(assert (= (and b!4964782 res!2119285) b!4964783))

(assert (= (and b!4964783 res!2119286) b!4964784))

(assert (= (and d!1597299 (not res!2119284)) b!4964785))

(assert (=> b!4964785 m!5988716))

(declare-fun m!5989394 () Bool)

(assert (=> b!4964785 m!5989394))

(assert (=> b!4964785 m!5988716))

(assert (=> b!4964785 m!5989394))

(assert (=> b!4964784 m!5988716))

(declare-fun m!5989396 () Bool)

(assert (=> b!4964784 m!5989396))

(assert (=> b!4964784 m!5988716))

(assert (=> b!4964784 m!5989396))

(assert (=> b!4964784 m!5989396))

(assert (=> b!4964784 m!5989396))

(declare-fun m!5989398 () Bool)

(assert (=> b!4964784 m!5989398))

(assert (=> b!4964783 m!5988716))

(declare-fun m!5989400 () Bool)

(assert (=> b!4964783 m!5989400))

(assert (=> b!4964783 m!5988716))

(assert (=> b!4964783 m!5989400))

(assert (=> b!4964229 d!1597299))

(declare-fun d!1597301 () Bool)

(assert (=> d!1597301 (= (tail!9799 lt!2049571) (t!368225 lt!2049571))))

(assert (=> b!4964229 d!1597301))

(declare-fun b!4964786 () Bool)

(declare-fun e!3103386 () Option!14445)

(assert (=> b!4964786 (= e!3103386 None!14444)))

(declare-fun b!4964787 () Bool)

(declare-fun res!2119289 () Bool)

(declare-fun e!3103385 () Bool)

(assert (=> b!4964787 (=> (not res!2119289) (not e!3103385))))

(declare-fun lt!2049977 () Option!14445)

(assert (=> b!4964787 (= res!2119289 (= (value!268585 (_1!34378 (get!19935 lt!2049977))) (apply!13902 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049977)))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049977)))))))))

(declare-fun b!4964788 () Bool)

(declare-fun lt!2049975 () tuple2!62158)

(assert (=> b!4964788 (= e!3103386 (Some!14444 (tuple2!62151 (Token!15279 (apply!13902 (transformation!8391 (h!63885 rulesArg!259)) (seqFromList!6034 (_1!34382 lt!2049975))) (h!63885 rulesArg!259) (size!38065 (seqFromList!6034 (_1!34382 lt!2049975))) (_1!34382 lt!2049975)) (_2!34382 lt!2049975))))))

(declare-fun lt!2049976 () Unit!148334)

(assert (=> b!4964788 (= lt!2049976 (longestMatchIsAcceptedByMatchOrIsEmpty!1814 (regex!8391 (h!63885 rulesArg!259)) lt!2049571))))

(declare-fun res!2119294 () Bool)

(assert (=> b!4964788 (= res!2119294 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571)))))))

(declare-fun e!3103387 () Bool)

(assert (=> b!4964788 (=> res!2119294 e!3103387)))

(assert (=> b!4964788 e!3103387))

(declare-fun lt!2049974 () Unit!148334)

(assert (=> b!4964788 (= lt!2049974 lt!2049976)))

(declare-fun lt!2049973 () Unit!148334)

(assert (=> b!4964788 (= lt!2049973 (lemmaSemiInverse!2600 (transformation!8391 (h!63885 rulesArg!259)) (seqFromList!6034 (_1!34382 lt!2049975))))))

(declare-fun b!4964789 () Bool)

(declare-fun e!3103388 () Bool)

(assert (=> b!4964789 (= e!3103388 e!3103385)))

(declare-fun res!2119292 () Bool)

(assert (=> b!4964789 (=> (not res!2119292) (not e!3103385))))

(assert (=> b!4964789 (= res!2119292 (matchR!6634 (regex!8391 (h!63885 rulesArg!259)) (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049977))))))))

(declare-fun b!4964790 () Bool)

(declare-fun res!2119288 () Bool)

(assert (=> b!4964790 (=> (not res!2119288) (not e!3103385))))

(assert (=> b!4964790 (= res!2119288 (= (++!12530 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049977)))) (_2!34378 (get!19935 lt!2049977))) lt!2049571))))

(declare-fun b!4964791 () Bool)

(declare-fun res!2119291 () Bool)

(assert (=> b!4964791 (=> (not res!2119291) (not e!3103385))))

(assert (=> b!4964791 (= res!2119291 (< (size!38064 (_2!34378 (get!19935 lt!2049977))) (size!38064 lt!2049571)))))

(declare-fun b!4964792 () Bool)

(assert (=> b!4964792 (= e!3103387 (matchR!6634 (regex!8391 (h!63885 rulesArg!259)) (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571)))))))

(declare-fun b!4964793 () Bool)

(assert (=> b!4964793 (= e!3103385 (= (size!38062 (_1!34378 (get!19935 lt!2049977))) (size!38064 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049977))))))))

(declare-fun d!1597303 () Bool)

(assert (=> d!1597303 e!3103388))

(declare-fun res!2119293 () Bool)

(assert (=> d!1597303 (=> res!2119293 e!3103388)))

(assert (=> d!1597303 (= res!2119293 (isEmpty!30925 lt!2049977))))

(assert (=> d!1597303 (= lt!2049977 e!3103386)))

(declare-fun c!847013 () Bool)

(assert (=> d!1597303 (= c!847013 (isEmpty!30923 (_1!34382 lt!2049975)))))

(assert (=> d!1597303 (= lt!2049975 (findLongestMatch!1695 (regex!8391 (h!63885 rulesArg!259)) lt!2049571))))

(assert (=> d!1597303 (ruleValid!3800 thiss!15247 (h!63885 rulesArg!259))))

(assert (=> d!1597303 (= (maxPrefixOneRule!3627 thiss!15247 (h!63885 rulesArg!259) lt!2049571) lt!2049977)))

(declare-fun b!4964794 () Bool)

(declare-fun res!2119290 () Bool)

(assert (=> b!4964794 (=> (not res!2119290) (not e!3103385))))

(assert (=> b!4964794 (= res!2119290 (= (rule!11629 (_1!34378 (get!19935 lt!2049977))) (h!63885 rulesArg!259)))))

(assert (= (and d!1597303 c!847013) b!4964786))

(assert (= (and d!1597303 (not c!847013)) b!4964788))

(assert (= (and b!4964788 (not res!2119294)) b!4964792))

(assert (= (and d!1597303 (not res!2119293)) b!4964789))

(assert (= (and b!4964789 res!2119292) b!4964790))

(assert (= (and b!4964790 res!2119288) b!4964791))

(assert (= (and b!4964791 res!2119291) b!4964794))

(assert (= (and b!4964794 res!2119290) b!4964787))

(assert (= (and b!4964787 res!2119289) b!4964793))

(declare-fun m!5989402 () Bool)

(assert (=> b!4964788 m!5989402))

(assert (=> b!4964788 m!5989372))

(assert (=> b!4964788 m!5988784))

(assert (=> b!4964788 m!5988784))

(assert (=> b!4964788 m!5988708))

(assert (=> b!4964788 m!5989370))

(assert (=> b!4964788 m!5989378))

(assert (=> b!4964788 m!5988708))

(assert (=> b!4964788 m!5989402))

(declare-fun m!5989404 () Bool)

(assert (=> b!4964788 m!5989404))

(assert (=> b!4964788 m!5989402))

(declare-fun m!5989406 () Bool)

(assert (=> b!4964788 m!5989406))

(assert (=> b!4964788 m!5989402))

(declare-fun m!5989408 () Bool)

(assert (=> b!4964788 m!5989408))

(declare-fun m!5989410 () Bool)

(assert (=> d!1597303 m!5989410))

(declare-fun m!5989412 () Bool)

(assert (=> d!1597303 m!5989412))

(declare-fun m!5989414 () Bool)

(assert (=> d!1597303 m!5989414))

(assert (=> d!1597303 m!5988698))

(declare-fun m!5989416 () Bool)

(assert (=> b!4964791 m!5989416))

(declare-fun m!5989418 () Bool)

(assert (=> b!4964791 m!5989418))

(assert (=> b!4964791 m!5988708))

(assert (=> b!4964794 m!5989416))

(assert (=> b!4964787 m!5989416))

(declare-fun m!5989420 () Bool)

(assert (=> b!4964787 m!5989420))

(assert (=> b!4964787 m!5989420))

(declare-fun m!5989422 () Bool)

(assert (=> b!4964787 m!5989422))

(assert (=> b!4964790 m!5989416))

(declare-fun m!5989424 () Bool)

(assert (=> b!4964790 m!5989424))

(assert (=> b!4964790 m!5989424))

(declare-fun m!5989426 () Bool)

(assert (=> b!4964790 m!5989426))

(assert (=> b!4964790 m!5989426))

(declare-fun m!5989428 () Bool)

(assert (=> b!4964790 m!5989428))

(assert (=> b!4964789 m!5989416))

(assert (=> b!4964789 m!5989424))

(assert (=> b!4964789 m!5989424))

(assert (=> b!4964789 m!5989426))

(assert (=> b!4964789 m!5989426))

(declare-fun m!5989430 () Bool)

(assert (=> b!4964789 m!5989430))

(assert (=> b!4964792 m!5988784))

(assert (=> b!4964792 m!5988708))

(assert (=> b!4964792 m!5988784))

(assert (=> b!4964792 m!5988708))

(assert (=> b!4964792 m!5989370))

(assert (=> b!4964792 m!5989382))

(assert (=> b!4964793 m!5989416))

(declare-fun m!5989432 () Bool)

(assert (=> b!4964793 m!5989432))

(assert (=> bm!346130 d!1597303))

(assert (=> b!4964141 d!1597145))

(declare-fun b!4964795 () Bool)

(declare-fun e!3103394 () Bool)

(declare-fun lt!2049978 () Bool)

(declare-fun call!346180 () Bool)

(assert (=> b!4964795 (= e!3103394 (= lt!2049978 call!346180))))

(declare-fun b!4964796 () Bool)

(declare-fun e!3103393 () Bool)

(assert (=> b!4964796 (= e!3103393 (not (= (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))) (c!846919 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))))))

(declare-fun b!4964797 () Bool)

(declare-fun res!2119295 () Bool)

(declare-fun e!3103395 () Bool)

(assert (=> b!4964797 (=> (not res!2119295) (not e!3103395))))

(assert (=> b!4964797 (= res!2119295 (isEmpty!30923 (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))))))

(declare-fun b!4964798 () Bool)

(declare-fun e!3103391 () Bool)

(assert (=> b!4964798 (= e!3103394 e!3103391)))

(declare-fun c!847014 () Bool)

(assert (=> b!4964798 (= c!847014 (is-EmptyLang!13624 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))))

(declare-fun b!4964799 () Bool)

(declare-fun res!2119297 () Bool)

(declare-fun e!3103390 () Bool)

(assert (=> b!4964799 (=> res!2119297 e!3103390)))

(assert (=> b!4964799 (= res!2119297 (not (is-ElementMatch!13624 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))))))

(assert (=> b!4964799 (= e!3103391 e!3103390)))

(declare-fun b!4964800 () Bool)

(declare-fun e!3103389 () Bool)

(assert (=> b!4964800 (= e!3103389 e!3103393)))

(declare-fun res!2119301 () Bool)

(assert (=> b!4964800 (=> res!2119301 e!3103393)))

(assert (=> b!4964800 (= res!2119301 call!346180)))

(declare-fun b!4964801 () Bool)

(declare-fun e!3103392 () Bool)

(assert (=> b!4964801 (= e!3103392 (nullable!4618 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))))

(declare-fun d!1597305 () Bool)

(assert (=> d!1597305 e!3103394))

(declare-fun c!847016 () Bool)

(assert (=> d!1597305 (= c!847016 (is-EmptyExpr!13624 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))))

(assert (=> d!1597305 (= lt!2049978 e!3103392)))

(declare-fun c!847015 () Bool)

(assert (=> d!1597305 (= c!847015 (isEmpty!30923 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))

(assert (=> d!1597305 (validRegex!5967 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))))

(assert (=> d!1597305 (= (matchR!6634 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))) (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))) lt!2049978)))

(declare-fun b!4964802 () Bool)

(declare-fun res!2119296 () Bool)

(assert (=> b!4964802 (=> res!2119296 e!3103393)))

(assert (=> b!4964802 (= res!2119296 (not (isEmpty!30923 (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))))

(declare-fun b!4964803 () Bool)

(assert (=> b!4964803 (= e!3103392 (matchR!6634 (derivativeStep!3920 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))) (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))) (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))))))

(declare-fun b!4964804 () Bool)

(declare-fun res!2119300 () Bool)

(assert (=> b!4964804 (=> (not res!2119300) (not e!3103395))))

(assert (=> b!4964804 (= res!2119300 (not call!346180))))

(declare-fun b!4964805 () Bool)

(declare-fun res!2119298 () Bool)

(assert (=> b!4964805 (=> res!2119298 e!3103390)))

(assert (=> b!4964805 (= res!2119298 e!3103395)))

(declare-fun res!2119299 () Bool)

(assert (=> b!4964805 (=> (not res!2119299) (not e!3103395))))

(assert (=> b!4964805 (= res!2119299 lt!2049978)))

(declare-fun b!4964806 () Bool)

(assert (=> b!4964806 (= e!3103391 (not lt!2049978))))

(declare-fun bm!346175 () Bool)

(assert (=> bm!346175 (= call!346180 (isEmpty!30923 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))

(declare-fun b!4964807 () Bool)

(assert (=> b!4964807 (= e!3103395 (= (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))) (c!846919 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))))))

(declare-fun b!4964808 () Bool)

(assert (=> b!4964808 (= e!3103390 e!3103389)))

(declare-fun res!2119302 () Bool)

(assert (=> b!4964808 (=> (not res!2119302) (not e!3103389))))

(assert (=> b!4964808 (= res!2119302 (not lt!2049978))))

(assert (= (and d!1597305 c!847015) b!4964801))

(assert (= (and d!1597305 (not c!847015)) b!4964803))

(assert (= (and d!1597305 c!847016) b!4964795))

(assert (= (and d!1597305 (not c!847016)) b!4964798))

(assert (= (and b!4964798 c!847014) b!4964806))

(assert (= (and b!4964798 (not c!847014)) b!4964799))

(assert (= (and b!4964799 (not res!2119297)) b!4964805))

(assert (= (and b!4964805 res!2119299) b!4964804))

(assert (= (and b!4964804 res!2119300) b!4964797))

(assert (= (and b!4964797 res!2119295) b!4964807))

(assert (= (and b!4964805 (not res!2119298)) b!4964808))

(assert (= (and b!4964808 res!2119302) b!4964800))

(assert (= (and b!4964800 (not res!2119301)) b!4964802))

(assert (= (and b!4964802 (not res!2119296)) b!4964796))

(assert (= (or b!4964795 b!4964800 b!4964804) bm!346175))

(assert (=> b!4964802 m!5988826))

(declare-fun m!5989434 () Bool)

(assert (=> b!4964802 m!5989434))

(assert (=> b!4964802 m!5989434))

(declare-fun m!5989436 () Bool)

(assert (=> b!4964802 m!5989436))

(assert (=> d!1597305 m!5988826))

(declare-fun m!5989438 () Bool)

(assert (=> d!1597305 m!5989438))

(declare-fun m!5989440 () Bool)

(assert (=> d!1597305 m!5989440))

(declare-fun m!5989442 () Bool)

(assert (=> b!4964801 m!5989442))

(assert (=> bm!346175 m!5988826))

(assert (=> bm!346175 m!5989438))

(assert (=> b!4964807 m!5988826))

(declare-fun m!5989444 () Bool)

(assert (=> b!4964807 m!5989444))

(assert (=> b!4964796 m!5988826))

(assert (=> b!4964796 m!5989444))

(assert (=> b!4964803 m!5988826))

(assert (=> b!4964803 m!5989444))

(assert (=> b!4964803 m!5989444))

(declare-fun m!5989446 () Bool)

(assert (=> b!4964803 m!5989446))

(assert (=> b!4964803 m!5988826))

(assert (=> b!4964803 m!5989434))

(assert (=> b!4964803 m!5989446))

(assert (=> b!4964803 m!5989434))

(declare-fun m!5989448 () Bool)

(assert (=> b!4964803 m!5989448))

(assert (=> b!4964797 m!5988826))

(assert (=> b!4964797 m!5989434))

(assert (=> b!4964797 m!5989434))

(assert (=> b!4964797 m!5989436))

(assert (=> b!4964318 d!1597305))

(assert (=> b!4964318 d!1597213))

(declare-fun d!1597307 () Bool)

(assert (=> d!1597307 (= (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))) (list!18361 (c!846918 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))

(declare-fun bs!1182902 () Bool)

(assert (= bs!1182902 d!1597307))

(declare-fun m!5989450 () Bool)

(assert (=> bs!1182902 m!5989450))

(assert (=> b!4964318 d!1597307))

(declare-fun d!1597309 () Bool)

(declare-fun lt!2049981 () BalanceConc!29716)

(assert (=> d!1597309 (= (list!18359 lt!2049981) (originalCharacters!8670 (_1!34378 (get!19935 lt!2049691))))))

(declare-fun dynLambda!23150 (Int TokenValue!8701) BalanceConc!29716)

(assert (=> d!1597309 (= lt!2049981 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (value!268585 (_1!34378 (get!19935 lt!2049691)))))))

(assert (=> d!1597309 (= (charsOf!5435 (_1!34378 (get!19935 lt!2049691))) lt!2049981)))

(declare-fun b_lambda!196537 () Bool)

(assert (=> (not b_lambda!196537) (not d!1597309)))

(declare-fun t!368238 () Bool)

(declare-fun tb!260231 () Bool)

(assert (=> (and b!4964142 (= (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))) t!368238) tb!260231))

(declare-fun b!4964813 () Bool)

(declare-fun e!3103398 () Bool)

(declare-fun tp!1392721 () Bool)

(assert (=> b!4964813 (= e!3103398 (and (inv!75059 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (value!268585 (_1!34378 (get!19935 lt!2049691)))))) tp!1392721))))

(declare-fun result!325316 () Bool)

(assert (=> tb!260231 (= result!325316 (and (inv!75060 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (value!268585 (_1!34378 (get!19935 lt!2049691))))) e!3103398))))

(assert (= tb!260231 b!4964813))

(declare-fun m!5989452 () Bool)

(assert (=> b!4964813 m!5989452))

(declare-fun m!5989454 () Bool)

(assert (=> tb!260231 m!5989454))

(assert (=> d!1597309 t!368238))

(declare-fun b_and!347711 () Bool)

(assert (= b_and!347693 (and (=> t!368238 result!325316) b_and!347711)))

(declare-fun t!368240 () Bool)

(declare-fun tb!260233 () Bool)

(assert (=> (and b!4964367 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))) t!368240) tb!260233))

(declare-fun result!325320 () Bool)

(assert (= result!325320 result!325316))

(assert (=> d!1597309 t!368240))

(declare-fun b_and!347713 () Bool)

(assert (= b_and!347701 (and (=> t!368240 result!325320) b_and!347713)))

(declare-fun m!5989456 () Bool)

(assert (=> d!1597309 m!5989456))

(declare-fun m!5989458 () Bool)

(assert (=> d!1597309 m!5989458))

(assert (=> b!4964318 d!1597309))

(declare-fun d!1597311 () Bool)

(declare-fun c!847017 () Bool)

(assert (=> d!1597311 (= c!847017 (is-Empty!15143 (c!846918 (_2!34377 lt!2049572))))))

(declare-fun e!3103399 () List!57559)

(assert (=> d!1597311 (= (list!18361 (c!846918 (_2!34377 lt!2049572))) e!3103399)))

(declare-fun b!4964816 () Bool)

(declare-fun e!3103400 () List!57559)

(assert (=> b!4964816 (= e!3103400 (list!18363 (xs!18469 (c!846918 (_2!34377 lt!2049572)))))))

(declare-fun b!4964814 () Bool)

(assert (=> b!4964814 (= e!3103399 Nil!57435)))

(declare-fun b!4964815 () Bool)

(assert (=> b!4964815 (= e!3103399 e!3103400)))

(declare-fun c!847018 () Bool)

(assert (=> b!4964815 (= c!847018 (is-Leaf!25164 (c!846918 (_2!34377 lt!2049572))))))

(declare-fun b!4964817 () Bool)

(assert (=> b!4964817 (= e!3103400 (++!12530 (list!18361 (left!41893 (c!846918 (_2!34377 lt!2049572)))) (list!18361 (right!42223 (c!846918 (_2!34377 lt!2049572))))))))

(assert (= (and d!1597311 c!847017) b!4964814))

(assert (= (and d!1597311 (not c!847017)) b!4964815))

(assert (= (and b!4964815 c!847018) b!4964816))

(assert (= (and b!4964815 (not c!847018)) b!4964817))

(declare-fun m!5989460 () Bool)

(assert (=> b!4964816 m!5989460))

(declare-fun m!5989462 () Bool)

(assert (=> b!4964817 m!5989462))

(declare-fun m!5989464 () Bool)

(assert (=> b!4964817 m!5989464))

(assert (=> b!4964817 m!5989462))

(assert (=> b!4964817 m!5989464))

(declare-fun m!5989466 () Bool)

(assert (=> b!4964817 m!5989466))

(assert (=> d!1597105 d!1597311))

(declare-fun bs!1182903 () Bool)

(declare-fun d!1597313 () Bool)

(assert (= bs!1182903 (and d!1597313 d!1597107)))

(declare-fun lambda!247319 () Int)

(assert (=> bs!1182903 (= lambda!247319 lambda!247301)))

(assert (=> d!1597313 true))

(declare-fun lt!2049982 () Bool)

(assert (=> d!1597313 (= lt!2049982 (forall!13326 (t!368227 rulesArg!259) lambda!247319))))

(declare-fun e!3103402 () Bool)

(assert (=> d!1597313 (= lt!2049982 e!3103402)))

(declare-fun res!2119303 () Bool)

(assert (=> d!1597313 (=> res!2119303 e!3103402)))

(assert (=> d!1597313 (= res!2119303 (not (is-Cons!57437 (t!368227 rulesArg!259))))))

(assert (=> d!1597313 (= (rulesValidInductive!3294 thiss!15247 (t!368227 rulesArg!259)) lt!2049982)))

(declare-fun b!4964818 () Bool)

(declare-fun e!3103401 () Bool)

(assert (=> b!4964818 (= e!3103402 e!3103401)))

(declare-fun res!2119304 () Bool)

(assert (=> b!4964818 (=> (not res!2119304) (not e!3103401))))

(assert (=> b!4964818 (= res!2119304 (ruleValid!3800 thiss!15247 (h!63885 (t!368227 rulesArg!259))))))

(declare-fun b!4964819 () Bool)

(assert (=> b!4964819 (= e!3103401 (rulesValidInductive!3294 thiss!15247 (t!368227 (t!368227 rulesArg!259))))))

(assert (= (and d!1597313 (not res!2119303)) b!4964818))

(assert (= (and b!4964818 res!2119304) b!4964819))

(declare-fun m!5989468 () Bool)

(assert (=> d!1597313 m!5989468))

(assert (=> b!4964818 m!5989330))

(assert (=> b!4964819 m!5989290))

(assert (=> b!4964204 d!1597313))

(assert (=> b!4964322 d!1597307))

(assert (=> b!4964322 d!1597309))

(assert (=> b!4964322 d!1597213))

(assert (=> d!1597127 d!1597313))

(declare-fun d!1597315 () Bool)

(assert (=> d!1597315 (isPrefix!5242 lt!2049641 lt!2049647)))

(declare-fun lt!2049983 () Unit!148334)

(assert (=> d!1597315 (= lt!2049983 (choose!36651 lt!2049641 lt!2049647))))

(assert (=> d!1597315 (= (lemmaIsPrefixRefl!3566 lt!2049641 lt!2049647) lt!2049983)))

(declare-fun bs!1182904 () Bool)

(assert (= bs!1182904 d!1597315))

(assert (=> bs!1182904 m!5988732))

(declare-fun m!5989470 () Bool)

(assert (=> bs!1182904 m!5989470))

(assert (=> d!1597127 d!1597315))

(assert (=> d!1597127 d!1597117))

(declare-fun b!4964823 () Bool)

(declare-fun e!3103404 () Bool)

(assert (=> b!4964823 (= e!3103404 (>= (size!38064 lt!2049647) (size!38064 lt!2049641)))))

(declare-fun b!4964822 () Bool)

(declare-fun e!3103403 () Bool)

(assert (=> b!4964822 (= e!3103403 (isPrefix!5242 (tail!9799 lt!2049641) (tail!9799 lt!2049647)))))

(declare-fun b!4964820 () Bool)

(declare-fun e!3103405 () Bool)

(assert (=> b!4964820 (= e!3103405 e!3103403)))

(declare-fun res!2119306 () Bool)

(assert (=> b!4964820 (=> (not res!2119306) (not e!3103403))))

(assert (=> b!4964820 (= res!2119306 (not (is-Nil!57435 lt!2049647)))))

(declare-fun d!1597317 () Bool)

(assert (=> d!1597317 e!3103404))

(declare-fun res!2119305 () Bool)

(assert (=> d!1597317 (=> res!2119305 e!3103404)))

(declare-fun lt!2049984 () Bool)

(assert (=> d!1597317 (= res!2119305 (not lt!2049984))))

(assert (=> d!1597317 (= lt!2049984 e!3103405)))

(declare-fun res!2119308 () Bool)

(assert (=> d!1597317 (=> res!2119308 e!3103405)))

(assert (=> d!1597317 (= res!2119308 (is-Nil!57435 lt!2049641))))

(assert (=> d!1597317 (= (isPrefix!5242 lt!2049641 lt!2049647) lt!2049984)))

(declare-fun b!4964821 () Bool)

(declare-fun res!2119307 () Bool)

(assert (=> b!4964821 (=> (not res!2119307) (not e!3103403))))

(assert (=> b!4964821 (= res!2119307 (= (head!10666 lt!2049641) (head!10666 lt!2049647)))))

(assert (= (and d!1597317 (not res!2119308)) b!4964820))

(assert (= (and b!4964820 res!2119306) b!4964821))

(assert (= (and b!4964821 res!2119307) b!4964822))

(assert (= (and d!1597317 (not res!2119305)) b!4964823))

(declare-fun m!5989472 () Bool)

(assert (=> b!4964823 m!5989472))

(declare-fun m!5989474 () Bool)

(assert (=> b!4964823 m!5989474))

(declare-fun m!5989476 () Bool)

(assert (=> b!4964822 m!5989476))

(declare-fun m!5989478 () Bool)

(assert (=> b!4964822 m!5989478))

(assert (=> b!4964822 m!5989476))

(assert (=> b!4964822 m!5989478))

(declare-fun m!5989480 () Bool)

(assert (=> b!4964822 m!5989480))

(declare-fun m!5989482 () Bool)

(assert (=> b!4964821 m!5989482))

(declare-fun m!5989484 () Bool)

(assert (=> b!4964821 m!5989484))

(assert (=> d!1597127 d!1597317))

(declare-fun d!1597319 () Bool)

(assert (=> d!1597319 (= (isDefined!11358 (maxPrefixZipper!784 thiss!15247 (t!368227 rulesArg!259) (list!18359 input!1342))) (not (isEmpty!30925 (maxPrefixZipper!784 thiss!15247 (t!368227 rulesArg!259) (list!18359 input!1342)))))))

(declare-fun bs!1182905 () Bool)

(assert (= bs!1182905 d!1597319))

(assert (=> bs!1182905 m!5988724))

(declare-fun m!5989486 () Bool)

(assert (=> bs!1182905 m!5989486))

(assert (=> d!1597127 d!1597319))

(assert (=> d!1597127 d!1597283))

(assert (=> d!1597127 d!1597277))

(declare-fun b!4964832 () Bool)

(declare-fun e!3103411 () List!57559)

(assert (=> b!4964832 (= e!3103411 (_2!34378 (get!19935 lt!2049691)))))

(declare-fun b!4964834 () Bool)

(declare-fun res!2119313 () Bool)

(declare-fun e!3103410 () Bool)

(assert (=> b!4964834 (=> (not res!2119313) (not e!3103410))))

(declare-fun lt!2049987 () List!57559)

(assert (=> b!4964834 (= res!2119313 (= (size!38064 lt!2049987) (+ (size!38064 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))) (size!38064 (_2!34378 (get!19935 lt!2049691))))))))

(declare-fun b!4964835 () Bool)

(assert (=> b!4964835 (= e!3103410 (or (not (= (_2!34378 (get!19935 lt!2049691)) Nil!57435)) (= lt!2049987 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))))))

(declare-fun b!4964833 () Bool)

(assert (=> b!4964833 (= e!3103411 (Cons!57435 (h!63883 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))) (++!12530 (t!368225 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))) (_2!34378 (get!19935 lt!2049691)))))))

(declare-fun d!1597321 () Bool)

(assert (=> d!1597321 e!3103410))

(declare-fun res!2119314 () Bool)

(assert (=> d!1597321 (=> (not res!2119314) (not e!3103410))))

(declare-fun content!10180 (List!57559) (Set C!27498))

(assert (=> d!1597321 (= res!2119314 (= (content!10180 lt!2049987) (set.union (content!10180 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))) (content!10180 (_2!34378 (get!19935 lt!2049691))))))))

(assert (=> d!1597321 (= lt!2049987 e!3103411)))

(declare-fun c!847021 () Bool)

(assert (=> d!1597321 (= c!847021 (is-Nil!57435 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))

(assert (=> d!1597321 (= (++!12530 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))) (_2!34378 (get!19935 lt!2049691))) lt!2049987)))

(assert (= (and d!1597321 c!847021) b!4964832))

(assert (= (and d!1597321 (not c!847021)) b!4964833))

(assert (= (and d!1597321 res!2119314) b!4964834))

(assert (= (and b!4964834 res!2119313) b!4964835))

(declare-fun m!5989488 () Bool)

(assert (=> b!4964834 m!5989488))

(assert (=> b!4964834 m!5988826))

(declare-fun m!5989490 () Bool)

(assert (=> b!4964834 m!5989490))

(assert (=> b!4964834 m!5988836))

(declare-fun m!5989492 () Bool)

(assert (=> b!4964833 m!5989492))

(declare-fun m!5989494 () Bool)

(assert (=> d!1597321 m!5989494))

(assert (=> d!1597321 m!5988826))

(declare-fun m!5989496 () Bool)

(assert (=> d!1597321 m!5989496))

(declare-fun m!5989498 () Bool)

(assert (=> d!1597321 m!5989498))

(assert (=> b!4964323 d!1597321))

(assert (=> b!4964323 d!1597307))

(assert (=> b!4964323 d!1597309))

(assert (=> b!4964323 d!1597213))

(assert (=> d!1597155 d!1597149))

(assert (=> d!1597155 d!1597119))

(assert (=> d!1597155 d!1597121))

(assert (=> d!1597155 d!1597107))

(assert (=> d!1597121 d!1597119))

(declare-fun d!1597323 () Bool)

(assert (=> d!1597323 (isPrefix!5242 lt!2049571 lt!2049571)))

(assert (=> d!1597323 true))

(declare-fun _$45!2266 () Unit!148334)

(assert (=> d!1597323 (= (choose!36651 lt!2049571 lt!2049571) _$45!2266)))

(declare-fun bs!1182906 () Bool)

(assert (= bs!1182906 d!1597323))

(assert (=> bs!1182906 m!5988624))

(assert (=> d!1597121 d!1597323))

(assert (=> b!4964247 d!1597267))

(assert (=> b!4964247 d!1597263))

(assert (=> b!4964247 d!1597281))

(assert (=> b!4964247 d!1597117))

(assert (=> b!4964247 d!1597265))

(declare-fun d!1597325 () Bool)

(declare-fun c!847022 () Bool)

(assert (=> d!1597325 (= c!847022 (is-Node!15143 (left!41893 (c!846918 totalInput!464))))))

(declare-fun e!3103412 () Bool)

(assert (=> d!1597325 (= (inv!75059 (left!41893 (c!846918 totalInput!464))) e!3103412)))

(declare-fun b!4964836 () Bool)

(assert (=> b!4964836 (= e!3103412 (inv!75065 (left!41893 (c!846918 totalInput!464))))))

(declare-fun b!4964837 () Bool)

(declare-fun e!3103413 () Bool)

(assert (=> b!4964837 (= e!3103412 e!3103413)))

(declare-fun res!2119315 () Bool)

(assert (=> b!4964837 (= res!2119315 (not (is-Leaf!25164 (left!41893 (c!846918 totalInput!464)))))))

(assert (=> b!4964837 (=> res!2119315 e!3103413)))

(declare-fun b!4964838 () Bool)

(assert (=> b!4964838 (= e!3103413 (inv!75066 (left!41893 (c!846918 totalInput!464))))))

(assert (= (and d!1597325 c!847022) b!4964836))

(assert (= (and d!1597325 (not c!847022)) b!4964837))

(assert (= (and b!4964837 (not res!2119315)) b!4964838))

(declare-fun m!5989500 () Bool)

(assert (=> b!4964836 m!5989500))

(declare-fun m!5989502 () Bool)

(assert (=> b!4964838 m!5989502))

(assert (=> b!4964376 d!1597325))

(declare-fun d!1597327 () Bool)

(declare-fun c!847023 () Bool)

(assert (=> d!1597327 (= c!847023 (is-Node!15143 (right!42223 (c!846918 totalInput!464))))))

(declare-fun e!3103414 () Bool)

(assert (=> d!1597327 (= (inv!75059 (right!42223 (c!846918 totalInput!464))) e!3103414)))

(declare-fun b!4964839 () Bool)

(assert (=> b!4964839 (= e!3103414 (inv!75065 (right!42223 (c!846918 totalInput!464))))))

(declare-fun b!4964840 () Bool)

(declare-fun e!3103415 () Bool)

(assert (=> b!4964840 (= e!3103414 e!3103415)))

(declare-fun res!2119316 () Bool)

(assert (=> b!4964840 (= res!2119316 (not (is-Leaf!25164 (right!42223 (c!846918 totalInput!464)))))))

(assert (=> b!4964840 (=> res!2119316 e!3103415)))

(declare-fun b!4964841 () Bool)

(assert (=> b!4964841 (= e!3103415 (inv!75066 (right!42223 (c!846918 totalInput!464))))))

(assert (= (and d!1597327 c!847023) b!4964839))

(assert (= (and d!1597327 (not c!847023)) b!4964840))

(assert (= (and b!4964840 (not res!2119316)) b!4964841))

(declare-fun m!5989504 () Bool)

(assert (=> b!4964839 m!5989504))

(declare-fun m!5989506 () Bool)

(assert (=> b!4964841 m!5989506))

(assert (=> b!4964376 d!1597327))

(declare-fun b!4964860 () Bool)

(declare-fun e!3103428 () List!57559)

(assert (=> b!4964860 (= e!3103428 (list!18359 totalInput!464))))

(declare-fun b!4964861 () Bool)

(declare-fun e!3103429 () Int)

(declare-fun call!346183 () Int)

(assert (=> b!4964861 (= e!3103429 call!346183)))

(declare-fun b!4964862 () Bool)

(declare-fun e!3103430 () List!57559)

(assert (=> b!4964862 (= e!3103430 Nil!57435)))

(declare-fun e!3103427 () Int)

(declare-fun b!4964863 () Bool)

(assert (=> b!4964863 (= e!3103427 (- call!346183 (- (size!38064 (list!18359 totalInput!464)) (size!38064 lt!2049571))))))

(declare-fun b!4964864 () Bool)

(assert (=> b!4964864 (= e!3103427 0)))

(declare-fun d!1597329 () Bool)

(declare-fun e!3103426 () Bool)

(assert (=> d!1597329 e!3103426))

(declare-fun res!2119319 () Bool)

(assert (=> d!1597329 (=> (not res!2119319) (not e!3103426))))

(declare-fun lt!2049990 () List!57559)

(assert (=> d!1597329 (= res!2119319 (set.subset (content!10180 lt!2049990) (content!10180 (list!18359 totalInput!464))))))

(assert (=> d!1597329 (= lt!2049990 e!3103430)))

(declare-fun c!847035 () Bool)

(assert (=> d!1597329 (= c!847035 (is-Nil!57435 (list!18359 totalInput!464)))))

(assert (=> d!1597329 (= (drop!2347 (list!18359 totalInput!464) (- (size!38064 (list!18359 totalInput!464)) (size!38064 lt!2049571))) lt!2049990)))

(declare-fun bm!346178 () Bool)

(assert (=> bm!346178 (= call!346183 (size!38064 (list!18359 totalInput!464)))))

(declare-fun b!4964865 () Bool)

(assert (=> b!4964865 (= e!3103428 (drop!2347 (t!368225 (list!18359 totalInput!464)) (- (- (size!38064 (list!18359 totalInput!464)) (size!38064 lt!2049571)) 1)))))

(declare-fun b!4964866 () Bool)

(assert (=> b!4964866 (= e!3103430 e!3103428)))

(declare-fun c!847032 () Bool)

(assert (=> b!4964866 (= c!847032 (<= (- (size!38064 (list!18359 totalInput!464)) (size!38064 lt!2049571)) 0))))

(declare-fun b!4964867 () Bool)

(assert (=> b!4964867 (= e!3103429 e!3103427)))

(declare-fun c!847033 () Bool)

(assert (=> b!4964867 (= c!847033 (>= (- (size!38064 (list!18359 totalInput!464)) (size!38064 lt!2049571)) call!346183))))

(declare-fun b!4964868 () Bool)

(assert (=> b!4964868 (= e!3103426 (= (size!38064 lt!2049990) e!3103429))))

(declare-fun c!847034 () Bool)

(assert (=> b!4964868 (= c!847034 (<= (- (size!38064 (list!18359 totalInput!464)) (size!38064 lt!2049571)) 0))))

(assert (= (and d!1597329 c!847035) b!4964862))

(assert (= (and d!1597329 (not c!847035)) b!4964866))

(assert (= (and b!4964866 c!847032) b!4964860))

(assert (= (and b!4964866 (not c!847032)) b!4964865))

(assert (= (and d!1597329 res!2119319) b!4964868))

(assert (= (and b!4964868 c!847034) b!4964861))

(assert (= (and b!4964868 (not c!847034)) b!4964867))

(assert (= (and b!4964867 c!847033) b!4964864))

(assert (= (and b!4964867 (not c!847033)) b!4964863))

(assert (= (or b!4964861 b!4964867 b!4964863) bm!346178))

(declare-fun m!5989508 () Bool)

(assert (=> d!1597329 m!5989508))

(assert (=> d!1597329 m!5988628))

(declare-fun m!5989510 () Bool)

(assert (=> d!1597329 m!5989510))

(assert (=> bm!346178 m!5988628))

(assert (=> bm!346178 m!5988706))

(declare-fun m!5989512 () Bool)

(assert (=> b!4964865 m!5989512))

(declare-fun m!5989514 () Bool)

(assert (=> b!4964868 m!5989514))

(assert (=> d!1597113 d!1597329))

(assert (=> d!1597113 d!1597257))

(assert (=> d!1597113 d!1597239))

(assert (=> b!4964251 d!1597277))

(assert (=> b!4964253 d!1597263))

(assert (=> b!4964253 d!1597285))

(assert (=> b!4964253 d!1597283))

(assert (=> b!4964253 d!1597117))

(declare-fun d!1597331 () Bool)

(declare-fun dynLambda!23152 (Int BalanceConc!29716) Bool)

(assert (=> d!1597331 (dynLambda!23152 lambda!247309 (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))))

(declare-fun lt!2049993 () Unit!148334)

(declare-fun choose!36654 (Int BalanceConc!29716) Unit!148334)

(assert (=> d!1597331 (= lt!2049993 (choose!36654 lambda!247309 (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))))))

(assert (=> d!1597331 (Forall!1760 lambda!247309)))

(assert (=> d!1597331 (= (ForallOf!1225 lambda!247309 (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))) lt!2049993)))

(declare-fun b_lambda!196539 () Bool)

(assert (=> (not b_lambda!196539) (not d!1597331)))

(declare-fun bs!1182907 () Bool)

(assert (= bs!1182907 d!1597331))

(assert (=> bs!1182907 m!5988776))

(declare-fun m!5989516 () Bool)

(assert (=> bs!1182907 m!5989516))

(assert (=> bs!1182907 m!5988776))

(declare-fun m!5989518 () Bool)

(assert (=> bs!1182907 m!5989518))

(declare-fun m!5989520 () Bool)

(assert (=> bs!1182907 m!5989520))

(assert (=> b!4964280 d!1597331))

(declare-fun d!1597333 () Bool)

(assert (=> d!1597333 (= (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))) (is-Nil!57435 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))))))

(assert (=> b!4964280 d!1597333))

(assert (=> b!4964280 d!1597201))

(assert (=> b!4964280 d!1597117))

(declare-fun b!4964875 () Bool)

(declare-fun e!3103435 () Bool)

(assert (=> b!4964875 (= e!3103435 true)))

(declare-fun d!1597335 () Bool)

(assert (=> d!1597335 e!3103435))

(assert (= d!1597335 b!4964875))

(declare-fun lambda!247322 () Int)

(declare-fun order!26199 () Int)

(declare-fun dynLambda!23153 (Int Int) Int)

(assert (=> b!4964875 (< (dynLambda!23142 order!26187 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) (dynLambda!23153 order!26199 lambda!247322))))

(assert (=> b!4964875 (< (dynLambda!23144 order!26191 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) (dynLambda!23153 order!26199 lambda!247322))))

(assert (=> d!1597335 (= (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676)) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))))))

(declare-fun lt!2049996 () Unit!148334)

(declare-fun Forall2of!475 (Int BalanceConc!29716 BalanceConc!29716) Unit!148334)

(assert (=> d!1597335 (= lt!2049996 (Forall2of!475 lambda!247322 (_1!34381 lt!2049676) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))))))

(assert (=> d!1597335 (= (list!18359 (_1!34381 lt!2049676)) (list!18359 (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))))))

(assert (=> d!1597335 (= (lemmaEqSameImage!1166 (transformation!8391 (h!63885 rulesArg!259)) (_1!34381 lt!2049676) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))) lt!2049996)))

(declare-fun b_lambda!196541 () Bool)

(assert (=> (not b_lambda!196541) (not d!1597335)))

(declare-fun t!368242 () Bool)

(declare-fun tb!260235 () Bool)

(assert (=> (and b!4964142 (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) t!368242) tb!260235))

(declare-fun result!325322 () Bool)

(assert (=> tb!260235 (= result!325322 (inv!21 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676))))))

(declare-fun m!5989522 () Bool)

(assert (=> tb!260235 m!5989522))

(assert (=> d!1597335 t!368242))

(declare-fun b_and!347715 () Bool)

(assert (= b_and!347707 (and (=> t!368242 result!325322) b_and!347715)))

(declare-fun t!368244 () Bool)

(declare-fun tb!260237 () Bool)

(assert (=> (and b!4964367 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) t!368244) tb!260237))

(declare-fun result!325324 () Bool)

(assert (= result!325324 result!325322))

(assert (=> d!1597335 t!368244))

(declare-fun b_and!347717 () Bool)

(assert (= b_and!347709 (and (=> t!368244 result!325324) b_and!347717)))

(declare-fun b_lambda!196543 () Bool)

(assert (=> (not b_lambda!196543) (not d!1597335)))

(declare-fun t!368246 () Bool)

(declare-fun tb!260239 () Bool)

(assert (=> (and b!4964142 (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) t!368246) tb!260239))

(declare-fun result!325326 () Bool)

(assert (=> tb!260239 (= result!325326 (inv!21 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))))))

(declare-fun m!5989524 () Bool)

(assert (=> tb!260239 m!5989524))

(assert (=> d!1597335 t!368246))

(declare-fun b_and!347719 () Bool)

(assert (= b_and!347715 (and (=> t!368246 result!325326) b_and!347719)))

(declare-fun t!368248 () Bool)

(declare-fun tb!260241 () Bool)

(assert (=> (and b!4964367 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) t!368248) tb!260241))

(declare-fun result!325328 () Bool)

(assert (= result!325328 result!325326))

(assert (=> d!1597335 t!368248))

(declare-fun b_and!347721 () Bool)

(assert (= b_and!347717 (and (=> t!368248 result!325328) b_and!347721)))

(assert (=> d!1597335 m!5988790))

(declare-fun m!5989526 () Bool)

(assert (=> d!1597335 m!5989526))

(assert (=> d!1597335 m!5988776))

(declare-fun m!5989528 () Bool)

(assert (=> d!1597335 m!5989528))

(assert (=> d!1597335 m!5988776))

(declare-fun m!5989530 () Bool)

(assert (=> d!1597335 m!5989530))

(assert (=> d!1597335 m!5988776))

(declare-fun m!5989532 () Bool)

(assert (=> d!1597335 m!5989532))

(assert (=> b!4964280 d!1597335))

(assert (=> b!4964280 d!1597203))

(assert (=> b!4964280 d!1597199))

(declare-fun d!1597337 () Bool)

(declare-fun lt!2050000 () Int)

(assert (=> d!1597337 (= lt!2050000 (size!38064 (list!18359 (_1!34381 lt!2049676))))))

(assert (=> d!1597337 (= lt!2050000 (size!38068 (c!846918 (_1!34381 lt!2049676))))))

(assert (=> d!1597337 (= (size!38065 (_1!34381 lt!2049676)) lt!2050000)))

(declare-fun bs!1182908 () Bool)

(assert (= bs!1182908 d!1597337))

(assert (=> bs!1182908 m!5988790))

(assert (=> bs!1182908 m!5988790))

(declare-fun m!5989542 () Bool)

(assert (=> bs!1182908 m!5989542))

(declare-fun m!5989544 () Bool)

(assert (=> bs!1182908 m!5989544))

(assert (=> b!4964280 d!1597337))

(declare-fun d!1597343 () Bool)

(declare-fun e!3103453 () Bool)

(assert (=> d!1597343 e!3103453))

(declare-fun res!2119334 () Bool)

(assert (=> d!1597343 (=> res!2119334 e!3103453)))

(assert (=> d!1597343 (= res!2119334 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))))))

(declare-fun lt!2050018 () Unit!148334)

(declare-fun choose!36655 (Regex!13624 List!57559) Unit!148334)

(assert (=> d!1597343 (= lt!2050018 (choose!36655 (regex!8391 (h!63885 rulesArg!259)) lt!2049672))))

(assert (=> d!1597343 (validRegex!5967 (regex!8391 (h!63885 rulesArg!259)))))

(assert (=> d!1597343 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1814 (regex!8391 (h!63885 rulesArg!259)) lt!2049672) lt!2050018)))

(declare-fun b!4964896 () Bool)

(assert (=> b!4964896 (= e!3103453 (matchR!6634 (regex!8391 (h!63885 rulesArg!259)) (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))))))

(assert (= (and d!1597343 (not res!2119334)) b!4964896))

(assert (=> d!1597343 m!5988784))

(assert (=> d!1597343 m!5988794))

(assert (=> d!1597343 m!5988786))

(declare-fun m!5989556 () Bool)

(assert (=> d!1597343 m!5989556))

(assert (=> d!1597343 m!5988784))

(assert (=> d!1597343 m!5988786))

(assert (=> d!1597343 m!5988788))

(assert (=> d!1597343 m!5989028))

(assert (=> b!4964896 m!5988784))

(assert (=> b!4964896 m!5988786))

(assert (=> b!4964896 m!5988784))

(assert (=> b!4964896 m!5988786))

(assert (=> b!4964896 m!5988788))

(assert (=> b!4964896 m!5988806))

(assert (=> b!4964280 d!1597343))

(declare-fun d!1597357 () Bool)

(assert (=> d!1597357 (dynLambda!23152 lambda!247309 (_1!34381 lt!2049676))))

(declare-fun lt!2050019 () Unit!148334)

(assert (=> d!1597357 (= lt!2050019 (choose!36654 lambda!247309 (_1!34381 lt!2049676)))))

(assert (=> d!1597357 (Forall!1760 lambda!247309)))

(assert (=> d!1597357 (= (ForallOf!1225 lambda!247309 (_1!34381 lt!2049676)) lt!2050019)))

(declare-fun b_lambda!196545 () Bool)

(assert (=> (not b_lambda!196545) (not d!1597357)))

(declare-fun bs!1182912 () Bool)

(assert (= bs!1182912 d!1597357))

(declare-fun m!5989558 () Bool)

(assert (=> bs!1182912 m!5989558))

(declare-fun m!5989560 () Bool)

(assert (=> bs!1182912 m!5989560))

(assert (=> bs!1182912 m!5989520))

(assert (=> b!4964280 d!1597357))

(declare-fun d!1597359 () Bool)

(assert (=> d!1597359 (= (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))) (fromListB!2729 (list!18359 (_1!34381 lt!2049676))))))

(declare-fun bs!1182913 () Bool)

(assert (= bs!1182913 d!1597359))

(assert (=> bs!1182913 m!5988790))

(declare-fun m!5989562 () Bool)

(assert (=> bs!1182913 m!5989562))

(assert (=> b!4964280 d!1597359))

(declare-fun d!1597361 () Bool)

(assert (=> d!1597361 (= (list!18359 (_1!34381 lt!2049676)) (list!18361 (c!846918 (_1!34381 lt!2049676))))))

(declare-fun bs!1182914 () Bool)

(assert (= bs!1182914 d!1597361))

(declare-fun m!5989564 () Bool)

(assert (=> bs!1182914 m!5989564))

(assert (=> b!4964280 d!1597361))

(declare-fun d!1597363 () Bool)

(declare-fun e!3103456 () Bool)

(assert (=> d!1597363 e!3103456))

(declare-fun res!2119337 () Bool)

(assert (=> d!1597363 (=> (not res!2119337) (not e!3103456))))

(assert (=> d!1597363 (= res!2119337 (semiInverseModEq!3698 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))))))

(declare-fun Unit!148342 () Unit!148334)

(assert (=> d!1597363 (= (lemmaInv!1332 (transformation!8391 (h!63885 rulesArg!259))) Unit!148342)))

(declare-fun b!4964899 () Bool)

(assert (=> b!4964899 (= e!3103456 (equivClasses!3546 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))))))

(assert (= (and d!1597363 res!2119337) b!4964899))

(assert (=> d!1597363 m!5988870))

(assert (=> b!4964899 m!5988872))

(assert (=> b!4964280 d!1597363))

(declare-fun d!1597367 () Bool)

(assert (=> d!1597367 (= (apply!13902 (transformation!8391 (h!63885 rulesArg!259)) (_1!34381 lt!2049676)) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676)))))

(declare-fun b_lambda!196547 () Bool)

(assert (=> (not b_lambda!196547) (not d!1597367)))

(assert (=> d!1597367 t!368242))

(declare-fun b_and!347723 () Bool)

(assert (= b_and!347719 (and (=> t!368242 result!325322) b_and!347723)))

(assert (=> d!1597367 t!368244))

(declare-fun b_and!347725 () Bool)

(assert (= b_and!347721 (and (=> t!368244 result!325324) b_and!347725)))

(assert (=> d!1597367 m!5989526))

(assert (=> b!4964280 d!1597367))

(declare-fun bs!1182917 () Bool)

(declare-fun d!1597371 () Bool)

(assert (= bs!1182917 (and d!1597371 d!1597335)))

(declare-fun lambda!247329 () Int)

(assert (=> bs!1182917 (= lambda!247329 lambda!247322)))

(assert (=> d!1597371 true))

(assert (=> d!1597371 (< (dynLambda!23142 order!26187 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) (dynLambda!23153 order!26199 lambda!247329))))

(declare-fun Forall2!1286 (Int) Bool)

(assert (=> d!1597371 (= (equivClasses!3546 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) (Forall2!1286 lambda!247329))))

(declare-fun bs!1182918 () Bool)

(assert (= bs!1182918 d!1597371))

(declare-fun m!5989638 () Bool)

(assert (=> bs!1182918 m!5989638))

(assert (=> b!4964356 d!1597371))

(declare-fun b!4964912 () Bool)

(declare-fun e!3103465 () Bool)

(assert (=> b!4964912 (= e!3103465 tp_is_empty!36329)))

(declare-fun b!4964915 () Bool)

(declare-fun tp!1392725 () Bool)

(declare-fun tp!1392724 () Bool)

(assert (=> b!4964915 (= e!3103465 (and tp!1392725 tp!1392724))))

(declare-fun b!4964913 () Bool)

(declare-fun tp!1392726 () Bool)

(declare-fun tp!1392722 () Bool)

(assert (=> b!4964913 (= e!3103465 (and tp!1392726 tp!1392722))))

(declare-fun b!4964914 () Bool)

(declare-fun tp!1392723 () Bool)

(assert (=> b!4964914 (= e!3103465 tp!1392723)))

(assert (=> b!4964392 (= tp!1392675 e!3103465)))

(assert (= (and b!4964392 (is-ElementMatch!13624 (regOne!27761 (regex!8391 (h!63885 rulesArg!259))))) b!4964912))

(assert (= (and b!4964392 (is-Concat!22326 (regOne!27761 (regex!8391 (h!63885 rulesArg!259))))) b!4964913))

(assert (= (and b!4964392 (is-Star!13624 (regOne!27761 (regex!8391 (h!63885 rulesArg!259))))) b!4964914))

(assert (= (and b!4964392 (is-Union!13624 (regOne!27761 (regex!8391 (h!63885 rulesArg!259))))) b!4964915))

(declare-fun b!4964916 () Bool)

(declare-fun e!3103466 () Bool)

(assert (=> b!4964916 (= e!3103466 tp_is_empty!36329)))

(declare-fun b!4964919 () Bool)

(declare-fun tp!1392730 () Bool)

(declare-fun tp!1392729 () Bool)

(assert (=> b!4964919 (= e!3103466 (and tp!1392730 tp!1392729))))

(declare-fun b!4964917 () Bool)

(declare-fun tp!1392731 () Bool)

(declare-fun tp!1392727 () Bool)

(assert (=> b!4964917 (= e!3103466 (and tp!1392731 tp!1392727))))

(declare-fun b!4964918 () Bool)

(declare-fun tp!1392728 () Bool)

(assert (=> b!4964918 (= e!3103466 tp!1392728)))

(assert (=> b!4964392 (= tp!1392674 e!3103466)))

(assert (= (and b!4964392 (is-ElementMatch!13624 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259))))) b!4964916))

(assert (= (and b!4964392 (is-Concat!22326 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259))))) b!4964917))

(assert (= (and b!4964392 (is-Star!13624 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259))))) b!4964918))

(assert (= (and b!4964392 (is-Union!13624 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259))))) b!4964919))

(declare-fun b!4964922 () Bool)

(declare-fun e!3103469 () Bool)

(assert (=> b!4964922 (= e!3103469 tp_is_empty!36329)))

(declare-fun b!4964927 () Bool)

(declare-fun tp!1392735 () Bool)

(declare-fun tp!1392734 () Bool)

(assert (=> b!4964927 (= e!3103469 (and tp!1392735 tp!1392734))))

(declare-fun b!4964925 () Bool)

(declare-fun tp!1392736 () Bool)

(declare-fun tp!1392732 () Bool)

(assert (=> b!4964925 (= e!3103469 (and tp!1392736 tp!1392732))))

(declare-fun b!4964926 () Bool)

(declare-fun tp!1392733 () Bool)

(assert (=> b!4964926 (= e!3103469 tp!1392733)))

(assert (=> b!4964366 (= tp!1392649 e!3103469)))

(assert (= (and b!4964366 (is-ElementMatch!13624 (regex!8391 (h!63885 (t!368227 rulesArg!259))))) b!4964922))

(assert (= (and b!4964366 (is-Concat!22326 (regex!8391 (h!63885 (t!368227 rulesArg!259))))) b!4964925))

(assert (= (and b!4964366 (is-Star!13624 (regex!8391 (h!63885 (t!368227 rulesArg!259))))) b!4964926))

(assert (= (and b!4964366 (is-Union!13624 (regex!8391 (h!63885 (t!368227 rulesArg!259))))) b!4964927))

(declare-fun b!4964928 () Bool)

(declare-fun e!3103470 () Bool)

(assert (=> b!4964928 (= e!3103470 tp_is_empty!36329)))

(declare-fun b!4964931 () Bool)

(declare-fun tp!1392740 () Bool)

(declare-fun tp!1392739 () Bool)

(assert (=> b!4964931 (= e!3103470 (and tp!1392740 tp!1392739))))

(declare-fun b!4964929 () Bool)

(declare-fun tp!1392741 () Bool)

(declare-fun tp!1392737 () Bool)

(assert (=> b!4964929 (= e!3103470 (and tp!1392741 tp!1392737))))

(declare-fun b!4964930 () Bool)

(declare-fun tp!1392738 () Bool)

(assert (=> b!4964930 (= e!3103470 tp!1392738)))

(assert (=> b!4964391 (= tp!1392673 e!3103470)))

(assert (= (and b!4964391 (is-ElementMatch!13624 (reg!13953 (regex!8391 (h!63885 rulesArg!259))))) b!4964928))

(assert (= (and b!4964391 (is-Concat!22326 (reg!13953 (regex!8391 (h!63885 rulesArg!259))))) b!4964929))

(assert (= (and b!4964391 (is-Star!13624 (reg!13953 (regex!8391 (h!63885 rulesArg!259))))) b!4964930))

(assert (= (and b!4964391 (is-Union!13624 (reg!13953 (regex!8391 (h!63885 rulesArg!259))))) b!4964931))

(declare-fun b!4964936 () Bool)

(declare-fun e!3103473 () Bool)

(declare-fun tp!1392744 () Bool)

(assert (=> b!4964936 (= e!3103473 (and tp_is_empty!36329 tp!1392744))))

(assert (=> b!4964378 (= tp!1392660 e!3103473)))

(assert (= (and b!4964378 (is-Cons!57435 (innerList!15231 (xs!18469 (c!846918 totalInput!464))))) b!4964936))

(declare-fun b!4964941 () Bool)

(declare-fun b_free!132751 () Bool)

(declare-fun b_next!133541 () Bool)

(assert (=> b!4964941 (= b_free!132751 (not b_next!133541))))

(declare-fun tb!260243 () Bool)

(declare-fun t!368250 () Bool)

(assert (=> (and b!4964941 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))) t!368250) tb!260243))

(declare-fun result!325332 () Bool)

(assert (= result!325332 result!325310))

(assert (=> d!1597247 t!368250))

(declare-fun t!368252 () Bool)

(declare-fun tb!260245 () Bool)

(assert (=> (and b!4964941 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) t!368252) tb!260245))

(declare-fun result!325334 () Bool)

(assert (= result!325334 result!325322))

(assert (=> d!1597335 t!368252))

(declare-fun t!368254 () Bool)

(declare-fun tb!260247 () Bool)

(assert (=> (and b!4964941 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) t!368254) tb!260247))

(declare-fun result!325336 () Bool)

(assert (= result!325336 result!325326))

(assert (=> d!1597335 t!368254))

(assert (=> d!1597367 t!368252))

(declare-fun tp!1392746 () Bool)

(declare-fun b_and!347727 () Bool)

(assert (=> b!4964941 (= tp!1392746 (and (=> t!368250 result!325332) (=> t!368252 result!325334) (=> t!368254 result!325336) b_and!347727))))

(declare-fun b_free!132753 () Bool)

(declare-fun b_next!133543 () Bool)

(assert (=> b!4964941 (= b_free!132753 (not b_next!133543))))

(declare-fun t!368256 () Bool)

(declare-fun tb!260249 () Bool)

(assert (=> (and b!4964941 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))) t!368256) tb!260249))

(declare-fun result!325338 () Bool)

(assert (= result!325338 result!325316))

(assert (=> d!1597309 t!368256))

(declare-fun b_and!347729 () Bool)

(declare-fun tp!1392747 () Bool)

(assert (=> b!4964941 (= tp!1392747 (and (=> t!368256 result!325338) b_and!347729))))

(declare-fun e!3103478 () Bool)

(assert (=> b!4964941 (= e!3103478 (and tp!1392746 tp!1392747))))

(declare-fun tp!1392745 () Bool)

(declare-fun b!4964940 () Bool)

(declare-fun e!3103475 () Bool)

(assert (=> b!4964940 (= e!3103475 (and tp!1392745 (inv!75056 (tag!9255 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (inv!75061 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) e!3103478))))

(declare-fun b!4964939 () Bool)

(declare-fun e!3103476 () Bool)

(declare-fun tp!1392748 () Bool)

(assert (=> b!4964939 (= e!3103476 (and e!3103475 tp!1392748))))

(assert (=> b!4964365 (= tp!1392652 e!3103476)))

(assert (= b!4964940 b!4964941))

(assert (= b!4964939 b!4964940))

(assert (= (and b!4964365 (is-Cons!57437 (t!368227 (t!368227 rulesArg!259)))) b!4964939))

(declare-fun m!5989644 () Bool)

(assert (=> b!4964940 m!5989644))

(declare-fun m!5989646 () Bool)

(assert (=> b!4964940 m!5989646))

(declare-fun b!4964942 () Bool)

(declare-fun e!3103479 () Bool)

(assert (=> b!4964942 (= e!3103479 tp_is_empty!36329)))

(declare-fun b!4964945 () Bool)

(declare-fun tp!1392752 () Bool)

(declare-fun tp!1392751 () Bool)

(assert (=> b!4964945 (= e!3103479 (and tp!1392752 tp!1392751))))

(declare-fun b!4964943 () Bool)

(declare-fun tp!1392753 () Bool)

(declare-fun tp!1392749 () Bool)

(assert (=> b!4964943 (= e!3103479 (and tp!1392753 tp!1392749))))

(declare-fun b!4964944 () Bool)

(declare-fun tp!1392750 () Bool)

(assert (=> b!4964944 (= e!3103479 tp!1392750)))

(assert (=> b!4964390 (= tp!1392676 e!3103479)))

(assert (= (and b!4964390 (is-ElementMatch!13624 (regOne!27760 (regex!8391 (h!63885 rulesArg!259))))) b!4964942))

(assert (= (and b!4964390 (is-Concat!22326 (regOne!27760 (regex!8391 (h!63885 rulesArg!259))))) b!4964943))

(assert (= (and b!4964390 (is-Star!13624 (regOne!27760 (regex!8391 (h!63885 rulesArg!259))))) b!4964944))

(assert (= (and b!4964390 (is-Union!13624 (regOne!27760 (regex!8391 (h!63885 rulesArg!259))))) b!4964945))

(declare-fun b!4964946 () Bool)

(declare-fun e!3103480 () Bool)

(assert (=> b!4964946 (= e!3103480 tp_is_empty!36329)))

(declare-fun b!4964949 () Bool)

(declare-fun tp!1392757 () Bool)

(declare-fun tp!1392756 () Bool)

(assert (=> b!4964949 (= e!3103480 (and tp!1392757 tp!1392756))))

(declare-fun b!4964947 () Bool)

(declare-fun tp!1392758 () Bool)

(declare-fun tp!1392754 () Bool)

(assert (=> b!4964947 (= e!3103480 (and tp!1392758 tp!1392754))))

(declare-fun b!4964948 () Bool)

(declare-fun tp!1392755 () Bool)

(assert (=> b!4964948 (= e!3103480 tp!1392755)))

(assert (=> b!4964390 (= tp!1392672 e!3103480)))

(assert (= (and b!4964390 (is-ElementMatch!13624 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259))))) b!4964946))

(assert (= (and b!4964390 (is-Concat!22326 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259))))) b!4964947))

(assert (= (and b!4964390 (is-Star!13624 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259))))) b!4964948))

(assert (= (and b!4964390 (is-Union!13624 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259))))) b!4964949))

(declare-fun b!4964958 () Bool)

(declare-fun e!3103485 () Bool)

(declare-fun tp!1392759 () Bool)

(assert (=> b!4964958 (= e!3103485 (and tp_is_empty!36329 tp!1392759))))

(assert (=> b!4964395 (= tp!1392678 e!3103485)))

(assert (= (and b!4964395 (is-Cons!57435 (innerList!15231 (xs!18469 (c!846918 input!1342))))) b!4964958))

(declare-fun tp!1392760 () Bool)

(declare-fun e!3103487 () Bool)

(declare-fun tp!1392762 () Bool)

(declare-fun b!4964959 () Bool)

(assert (=> b!4964959 (= e!3103487 (and (inv!75059 (left!41893 (left!41893 (c!846918 totalInput!464)))) tp!1392760 (inv!75059 (right!42223 (left!41893 (c!846918 totalInput!464)))) tp!1392762))))

(declare-fun b!4964961 () Bool)

(declare-fun e!3103486 () Bool)

(declare-fun tp!1392761 () Bool)

(assert (=> b!4964961 (= e!3103486 tp!1392761)))

(declare-fun b!4964960 () Bool)

(assert (=> b!4964960 (= e!3103487 (and (inv!75067 (xs!18469 (left!41893 (c!846918 totalInput!464)))) e!3103486))))

(assert (=> b!4964376 (= tp!1392659 (and (inv!75059 (left!41893 (c!846918 totalInput!464))) e!3103487))))

(assert (= (and b!4964376 (is-Node!15143 (left!41893 (c!846918 totalInput!464)))) b!4964959))

(assert (= b!4964960 b!4964961))

(assert (= (and b!4964376 (is-Leaf!25164 (left!41893 (c!846918 totalInput!464)))) b!4964960))

(declare-fun m!5989648 () Bool)

(assert (=> b!4964959 m!5989648))

(declare-fun m!5989650 () Bool)

(assert (=> b!4964959 m!5989650))

(declare-fun m!5989652 () Bool)

(assert (=> b!4964960 m!5989652))

(assert (=> b!4964376 m!5988878))

(declare-fun tp!1392763 () Bool)

(declare-fun e!3103489 () Bool)

(declare-fun b!4964962 () Bool)

(declare-fun tp!1392765 () Bool)

(assert (=> b!4964962 (= e!3103489 (and (inv!75059 (left!41893 (right!42223 (c!846918 totalInput!464)))) tp!1392763 (inv!75059 (right!42223 (right!42223 (c!846918 totalInput!464)))) tp!1392765))))

(declare-fun b!4964964 () Bool)

(declare-fun e!3103488 () Bool)

(declare-fun tp!1392764 () Bool)

(assert (=> b!4964964 (= e!3103488 tp!1392764)))

(declare-fun b!4964963 () Bool)

(assert (=> b!4964963 (= e!3103489 (and (inv!75067 (xs!18469 (right!42223 (c!846918 totalInput!464)))) e!3103488))))

(assert (=> b!4964376 (= tp!1392661 (and (inv!75059 (right!42223 (c!846918 totalInput!464))) e!3103489))))

(assert (= (and b!4964376 (is-Node!15143 (right!42223 (c!846918 totalInput!464)))) b!4964962))

(assert (= b!4964963 b!4964964))

(assert (= (and b!4964376 (is-Leaf!25164 (right!42223 (c!846918 totalInput!464)))) b!4964963))

(declare-fun m!5989654 () Bool)

(assert (=> b!4964962 m!5989654))

(declare-fun m!5989656 () Bool)

(assert (=> b!4964962 m!5989656))

(declare-fun m!5989658 () Bool)

(assert (=> b!4964963 m!5989658))

(assert (=> b!4964376 m!5988880))

(declare-fun e!3103491 () Bool)

(declare-fun tp!1392766 () Bool)

(declare-fun tp!1392768 () Bool)

(declare-fun b!4964965 () Bool)

(assert (=> b!4964965 (= e!3103491 (and (inv!75059 (left!41893 (left!41893 (c!846918 input!1342)))) tp!1392766 (inv!75059 (right!42223 (left!41893 (c!846918 input!1342)))) tp!1392768))))

(declare-fun b!4964967 () Bool)

(declare-fun e!3103490 () Bool)

(declare-fun tp!1392767 () Bool)

(assert (=> b!4964967 (= e!3103490 tp!1392767)))

(declare-fun b!4964966 () Bool)

(assert (=> b!4964966 (= e!3103491 (and (inv!75067 (xs!18469 (left!41893 (c!846918 input!1342)))) e!3103490))))

(assert (=> b!4964393 (= tp!1392677 (and (inv!75059 (left!41893 (c!846918 input!1342))) e!3103491))))

(assert (= (and b!4964393 (is-Node!15143 (left!41893 (c!846918 input!1342)))) b!4964965))

(assert (= b!4964966 b!4964967))

(assert (= (and b!4964393 (is-Leaf!25164 (left!41893 (c!846918 input!1342)))) b!4964966))

(declare-fun m!5989660 () Bool)

(assert (=> b!4964965 m!5989660))

(declare-fun m!5989662 () Bool)

(assert (=> b!4964965 m!5989662))

(declare-fun m!5989664 () Bool)

(assert (=> b!4964966 m!5989664))

(assert (=> b!4964393 m!5988884))

(declare-fun b!4964968 () Bool)

(declare-fun tp!1392769 () Bool)

(declare-fun tp!1392771 () Bool)

(declare-fun e!3103493 () Bool)

(assert (=> b!4964968 (= e!3103493 (and (inv!75059 (left!41893 (right!42223 (c!846918 input!1342)))) tp!1392769 (inv!75059 (right!42223 (right!42223 (c!846918 input!1342)))) tp!1392771))))

(declare-fun b!4964970 () Bool)

(declare-fun e!3103492 () Bool)

(declare-fun tp!1392770 () Bool)

(assert (=> b!4964970 (= e!3103492 tp!1392770)))

(declare-fun b!4964969 () Bool)

(assert (=> b!4964969 (= e!3103493 (and (inv!75067 (xs!18469 (right!42223 (c!846918 input!1342)))) e!3103492))))

(assert (=> b!4964393 (= tp!1392679 (and (inv!75059 (right!42223 (c!846918 input!1342))) e!3103493))))

(assert (= (and b!4964393 (is-Node!15143 (right!42223 (c!846918 input!1342)))) b!4964968))

(assert (= b!4964969 b!4964970))

(assert (= (and b!4964393 (is-Leaf!25164 (right!42223 (c!846918 input!1342)))) b!4964969))

(declare-fun m!5989666 () Bool)

(assert (=> b!4964968 m!5989666))

(declare-fun m!5989668 () Bool)

(assert (=> b!4964968 m!5989668))

(declare-fun m!5989670 () Bool)

(assert (=> b!4964969 m!5989670))

(assert (=> b!4964393 m!5988886))

(declare-fun b_lambda!196549 () Bool)

(assert (= b_lambda!196539 (or b!4964280 b_lambda!196549)))

(declare-fun bs!1182919 () Bool)

(declare-fun d!1597381 () Bool)

(assert (= bs!1182919 (and d!1597381 b!4964280)))

(assert (=> bs!1182919 (= (dynLambda!23152 lambda!247309 (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))) (= (list!18359 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))))) (list!18359 (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))))))

(declare-fun b_lambda!196561 () Bool)

(assert (=> (not b_lambda!196561) (not bs!1182919)))

(declare-fun t!368259 () Bool)

(declare-fun tb!260251 () Bool)

(assert (=> (and b!4964142 (= (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) t!368259) tb!260251))

(declare-fun tp!1392772 () Bool)

(declare-fun e!3103496 () Bool)

(declare-fun b!4964975 () Bool)

(assert (=> b!4964975 (= e!3103496 (and (inv!75059 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))))) tp!1392772))))

(declare-fun result!325340 () Bool)

(assert (=> tb!260251 (= result!325340 (and (inv!75060 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))))) e!3103496))))

(assert (= tb!260251 b!4964975))

(declare-fun m!5989680 () Bool)

(assert (=> b!4964975 m!5989680))

(declare-fun m!5989682 () Bool)

(assert (=> tb!260251 m!5989682))

(assert (=> bs!1182919 t!368259))

(declare-fun b_and!347731 () Bool)

(assert (= b_and!347711 (and (=> t!368259 result!325340) b_and!347731)))

(declare-fun t!368261 () Bool)

(declare-fun tb!260253 () Bool)

(assert (=> (and b!4964367 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) t!368261) tb!260253))

(declare-fun result!325342 () Bool)

(assert (= result!325342 result!325340))

(assert (=> bs!1182919 t!368261))

(declare-fun b_and!347733 () Bool)

(assert (= b_and!347713 (and (=> t!368261 result!325342) b_and!347733)))

(declare-fun t!368263 () Bool)

(declare-fun tb!260255 () Bool)

(assert (=> (and b!4964941 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) t!368263) tb!260255))

(declare-fun result!325344 () Bool)

(assert (= result!325344 result!325340))

(assert (=> bs!1182919 t!368263))

(declare-fun b_and!347735 () Bool)

(assert (= b_and!347729 (and (=> t!368263 result!325344) b_and!347735)))

(declare-fun b_lambda!196563 () Bool)

(assert (=> (not b_lambda!196563) (not bs!1182919)))

(assert (=> bs!1182919 t!368246))

(declare-fun b_and!347737 () Bool)

(assert (= b_and!347723 (and (=> t!368246 result!325326) b_and!347737)))

(assert (=> bs!1182919 t!368248))

(declare-fun b_and!347739 () Bool)

(assert (= b_and!347725 (and (=> t!368248 result!325328) b_and!347739)))

(assert (=> bs!1182919 t!368254))

(declare-fun b_and!347741 () Bool)

(assert (= b_and!347727 (and (=> t!368254 result!325336) b_and!347741)))

(declare-fun m!5989684 () Bool)

(assert (=> bs!1182919 m!5989684))

(declare-fun m!5989686 () Bool)

(assert (=> bs!1182919 m!5989686))

(assert (=> bs!1182919 m!5989532))

(assert (=> bs!1182919 m!5989684))

(assert (=> bs!1182919 m!5988776))

(assert (=> bs!1182919 m!5989528))

(assert (=> bs!1182919 m!5988776))

(assert (=> bs!1182919 m!5989532))

(assert (=> d!1597331 d!1597381))

(declare-fun b_lambda!196551 () Bool)

(assert (= b_lambda!196533 (or d!1597107 b_lambda!196551)))

(declare-fun bs!1182920 () Bool)

(declare-fun d!1597385 () Bool)

(assert (= bs!1182920 (and d!1597385 d!1597107)))

(assert (=> bs!1182920 (= (dynLambda!23148 lambda!247301 (h!63885 rulesArg!259)) (ruleValid!3800 thiss!15247 (h!63885 rulesArg!259)))))

(assert (=> bs!1182920 m!5988698))

(assert (=> b!4964528 d!1597385))

(declare-fun b_lambda!196553 () Bool)

(assert (= b_lambda!196541 (or (and b!4964142 b_free!132735) (and b!4964367 b_free!132743 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4964941 b_free!132751 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) b_lambda!196553)))

(declare-fun b_lambda!196555 () Bool)

(assert (= b_lambda!196543 (or (and b!4964142 b_free!132735) (and b!4964367 b_free!132743 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4964941 b_free!132751 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) b_lambda!196555)))

(declare-fun b_lambda!196557 () Bool)

(assert (= b_lambda!196547 (or (and b!4964142 b_free!132735) (and b!4964367 b_free!132743 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4964941 b_free!132751 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) b_lambda!196557)))

(declare-fun b_lambda!196559 () Bool)

(assert (= b_lambda!196545 (or b!4964280 b_lambda!196559)))

(declare-fun bs!1182921 () Bool)

(declare-fun d!1597387 () Bool)

(assert (= bs!1182921 (and d!1597387 b!4964280)))

(assert (=> bs!1182921 (= (dynLambda!23152 lambda!247309 (_1!34381 lt!2049676)) (= (list!18359 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676)))) (list!18359 (_1!34381 lt!2049676))))))

(declare-fun b_lambda!196565 () Bool)

(assert (=> (not b_lambda!196565) (not bs!1182921)))

(declare-fun t!368265 () Bool)

(declare-fun tb!260257 () Bool)

(assert (=> (and b!4964142 (= (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) t!368265) tb!260257))

(declare-fun e!3103497 () Bool)

(declare-fun b!4964976 () Bool)

(declare-fun tp!1392773 () Bool)

(assert (=> b!4964976 (= e!3103497 (and (inv!75059 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676))))) tp!1392773))))

(declare-fun result!325346 () Bool)

(assert (=> tb!260257 (= result!325346 (and (inv!75060 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676)))) e!3103497))))

(assert (= tb!260257 b!4964976))

(declare-fun m!5989688 () Bool)

(assert (=> b!4964976 m!5989688))

(declare-fun m!5989690 () Bool)

(assert (=> tb!260257 m!5989690))

(assert (=> bs!1182921 t!368265))

(declare-fun b_and!347743 () Bool)

(assert (= b_and!347731 (and (=> t!368265 result!325346) b_and!347743)))

(declare-fun t!368267 () Bool)

(declare-fun tb!260259 () Bool)

(assert (=> (and b!4964367 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) t!368267) tb!260259))

(declare-fun result!325348 () Bool)

(assert (= result!325348 result!325346))

(assert (=> bs!1182921 t!368267))

(declare-fun b_and!347745 () Bool)

(assert (= b_and!347733 (and (=> t!368267 result!325348) b_and!347745)))

(declare-fun t!368269 () Bool)

(declare-fun tb!260261 () Bool)

(assert (=> (and b!4964941 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) t!368269) tb!260261))

(declare-fun result!325350 () Bool)

(assert (= result!325350 result!325346))

(assert (=> bs!1182921 t!368269))

(declare-fun b_and!347747 () Bool)

(assert (= b_and!347735 (and (=> t!368269 result!325350) b_and!347747)))

(declare-fun b_lambda!196569 () Bool)

(assert (=> (not b_lambda!196569) (not bs!1182921)))

(assert (=> bs!1182921 t!368242))

(declare-fun b_and!347749 () Bool)

(assert (= b_and!347737 (and (=> t!368242 result!325322) b_and!347749)))

(assert (=> bs!1182921 t!368244))

(declare-fun b_and!347751 () Bool)

(assert (= b_and!347739 (and (=> t!368244 result!325324) b_and!347751)))

(assert (=> bs!1182921 t!368252))

(declare-fun b_and!347753 () Bool)

(assert (= b_and!347741 (and (=> t!368252 result!325334) b_and!347753)))

(declare-fun m!5989698 () Bool)

(assert (=> bs!1182921 m!5989698))

(declare-fun m!5989700 () Bool)

(assert (=> bs!1182921 m!5989700))

(assert (=> bs!1182921 m!5989526))

(assert (=> bs!1182921 m!5989698))

(assert (=> bs!1182921 m!5988790))

(assert (=> bs!1182921 m!5989526))

(assert (=> d!1597357 d!1597387))

(push 1)

(assert (not d!1597233))

(assert (not d!1597243))

(assert (not b!4964807))

(assert (not b!4964695))

(assert (not b!4964731))

(assert (not b!4964785))

(assert (not b!4964783))

(assert (not b!4964775))

(assert (not b!4964794))

(assert (not b!4964919))

(assert (not b_next!133527))

(assert (not d!1597281))

(assert (not b!4964522))

(assert (not b_lambda!196557))

(assert (not bm!346171))

(assert (not b!4964619))

(assert (not b!4964694))

(assert (not b!4964696))

(assert (not b!4964755))

(assert (not d!1597269))

(assert (not d!1597361))

(assert b_and!347745)

(assert (not b!4964652))

(assert (not b!4964944))

(assert (not b!4964913))

(assert (not b!4964822))

(assert (not b!4964673))

(assert (not d!1597225))

(assert (not b!4964678))

(assert (not b!4964712))

(assert (not b!4964564))

(assert (not b!4964648))

(assert (not b!4964605))

(assert (not b!4964945))

(assert (not d!1597267))

(assert (not b!4964650))

(assert (not bs!1182920))

(assert (not b!4964651))

(assert (not d!1597305))

(assert (not b!4964817))

(assert (not bm!346172))

(assert (not b!4964763))

(assert (not d!1597337))

(assert (not b!4964774))

(assert (not b!4964710))

(assert (not d!1597313))

(assert (not d!1597229))

(assert (not b!4964915))

(assert (not b!4964726))

(assert (not b_lambda!196563))

(assert (not b!4964701))

(assert (not b!4964781))

(assert (not d!1597249))

(assert (not b!4964702))

(assert (not b_lambda!196535))

(assert (not b!4964685))

(assert (not b!4964566))

(assert (not b!4964802))

(assert (not d!1597253))

(assert (not b!4964699))

(assert (not b!4964943))

(assert (not b_lambda!196549))

(assert (not d!1597289))

(assert (not d!1597211))

(assert (not b!4964797))

(assert (not tb!260257))

(assert (not b!4964649))

(assert (not d!1597241))

(assert (not b!4964925))

(assert (not d!1597207))

(assert (not b!4964930))

(assert (not b!4964680))

(assert (not d!1597205))

(assert (not d!1597315))

(assert (not b!4964725))

(assert (not d!1597217))

(assert (not tb!260231))

(assert (not b!4964733))

(assert (not b!4964762))

(assert (not b!4964751))

(assert (not b!4964752))

(assert (not b!4964736))

(assert (not b!4964963))

(assert (not d!1597371))

(assert (not b!4964819))

(assert (not b!4964821))

(assert (not b!4964730))

(assert (not d!1597261))

(assert (not bm!346164))

(assert (not b!4964931))

(assert (not d!1597323))

(assert (not b!4964818))

(assert b_and!347747)

(assert (not b!4964777))

(assert (not b_lambda!196551))

(assert (not d!1597227))

(assert (not b!4964823))

(assert (not b!4964727))

(assert b_and!347749)

(assert (not d!1597199))

(assert (not bm!346178))

(assert (not b!4964675))

(assert (not b!4964698))

(assert (not b_lambda!196553))

(assert (not b!4964735))

(assert (not b!4964559))

(assert (not b!4964737))

(assert b_and!347751)

(assert (not b!4964970))

(assert (not b!4964689))

(assert (not b!4964600))

(assert (not b!4964635))

(assert (not b!4964958))

(assert (not d!1597331))

(assert (not b!4964816))

(assert (not b!4964621))

(assert (not b!4964764))

(assert (not tb!260239))

(assert (not b!4964697))

(assert (not d!1597297))

(assert (not b!4964865))

(assert (not b!4964939))

(assert (not d!1597319))

(assert (not b!4964393))

(assert (not b!4964792))

(assert (not b!4964789))

(assert (not b!4964628))

(assert (not b!4964801))

(assert (not d!1597197))

(assert (not bm!346165))

(assert (not b!4964961))

(assert (not b!4964947))

(assert (not d!1597287))

(assert b_and!347753)

(assert (not d!1597193))

(assert (not b!4964896))

(assert (not d!1597343))

(assert (not d!1597329))

(assert (not b!4964929))

(assert (not b_next!133535))

(assert (not b!4964949))

(assert (not bm!346167))

(assert (not bm!346166))

(assert (not b!4964732))

(assert (not d!1597309))

(assert (not b!4964926))

(assert (not b!4964560))

(assert (not d!1597245))

(assert (not tb!260251))

(assert (not b!4964959))

(assert (not b!4964796))

(assert (not tb!260235))

(assert (not b!4964653))

(assert (not b!4964813))

(assert (not b!4964756))

(assert (not d!1597363))

(assert (not b!4964623))

(assert (not b!4964713))

(assert (not d!1597321))

(assert (not b!4964718))

(assert (not b!4964967))

(assert (not b!4964608))

(assert (not d!1597357))

(assert (not b_lambda!196559))

(assert (not b!4964960))

(assert (not d!1597259))

(assert (not b!4964758))

(assert (not b!4964692))

(assert (not b!4964940))

(assert (not b!4964788))

(assert (not b!4964570))

(assert (not b!4964724))

(assert (not b!4964709))

(assert (not b_lambda!196565))

(assert (not bm!346169))

(assert (not b!4964780))

(assert (not b!4964761))

(assert (not b!4964715))

(assert (not b!4964703))

(assert (not b!4964679))

(assert (not b!4964948))

(assert (not b!4964899))

(assert (not b_lambda!196569))

(assert (not b!4964565))

(assert (not bm!346145))

(assert (not b_next!133533))

(assert (not b!4964803))

(assert (not b_lambda!196561))

(assert (not b!4964729))

(assert (not b!4964914))

(assert tp_is_empty!36329)

(assert (not b!4964868))

(assert (not bm!346168))

(assert (not d!1597273))

(assert (not b!4964738))

(assert (not bm!346175))

(assert (not b!4964936))

(assert (not b_lambda!196555))

(assert (not b!4964976))

(assert (not b_next!133525))

(assert (not d!1597303))

(assert (not bm!346170))

(assert (not b!4964968))

(assert (not b!4964791))

(assert (not b!4964790))

(assert (not b!4964975))

(assert (not d!1597231))

(assert (not b!4964927))

(assert (not b!4964687))

(assert (not b!4964834))

(assert (not b!4964965))

(assert (not b!4964676))

(assert (not b!4964690))

(assert (not b!4964836))

(assert (not b_lambda!196537))

(assert (not bm!346162))

(assert (not b!4964759))

(assert b_and!347743)

(assert (not b!4964833))

(assert (not b!4964674))

(assert (not tb!260227))

(assert (not d!1597359))

(assert (not bs!1182919))

(assert (not b!4964740))

(assert (not b!4964787))

(assert (not b!4964723))

(assert (not d!1597283))

(assert (not b!4964918))

(assert (not b!4964677))

(assert (not b!4964841))

(assert (not b!4964917))

(assert (not b!4964966))

(assert (not bm!346163))

(assert (not bm!346173))

(assert (not b!4964529))

(assert (not b!4964705))

(assert (not b_next!133543))

(assert (not d!1597307))

(assert (not b!4964838))

(assert (not b!4964714))

(assert (not b!4964784))

(assert (not b!4964793))

(assert (not bm!346174))

(assert (not d!1597277))

(assert (not b!4964839))

(assert (not bs!1182921))

(assert (not d!1597221))

(assert (not b!4964962))

(assert (not b!4964739))

(assert (not b!4964604))

(assert (not b_next!133541))

(assert (not b!4964376))

(assert (not d!1597335))

(assert (not b!4964969))

(assert (not b!4964711))

(assert (not b!4964964))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!133527))

(assert b_and!347745)

(assert b_and!347747)

(assert b_and!347749)

(assert b_and!347751)

(assert b_and!347753)

(assert (not b_next!133535))

(assert (not b_next!133533))

(assert (not b_next!133525))

(assert b_and!347743)

(assert (not b_next!133543))

(assert (not b_next!133541))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!196605 () Bool)

(assert (= b_lambda!196561 (or (and b!4964142 b_free!132737) (and b!4964367 b_free!132745 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4964941 b_free!132753 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))))) b_lambda!196605)))

(declare-fun b_lambda!196607 () Bool)

(assert (= b_lambda!196563 (or (and b!4964142 b_free!132735) (and b!4964367 b_free!132743 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4964941 b_free!132751 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) b_lambda!196607)))

(declare-fun b_lambda!196609 () Bool)

(assert (= b_lambda!196569 (or (and b!4964142 b_free!132735) (and b!4964367 b_free!132743 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4964941 b_free!132751 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) b_lambda!196609)))

(declare-fun b_lambda!196611 () Bool)

(assert (= b_lambda!196565 (or (and b!4964142 b_free!132737) (and b!4964367 b_free!132745 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4964941 b_free!132753 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))))) b_lambda!196611)))

(push 1)

(assert (not d!1597233))

(assert (not d!1597243))

(assert (not b!4964807))

(assert (not b!4964695))

(assert (not b!4964731))

(assert (not b!4964785))

(assert (not b!4964783))

(assert (not b!4964775))

(assert (not b!4964794))

(assert (not b!4964919))

(assert (not b_next!133527))

(assert (not d!1597281))

(assert (not b!4964522))

(assert (not b_lambda!196557))

(assert (not bm!346171))

(assert (not b!4964619))

(assert (not b!4964694))

(assert (not b!4964696))

(assert (not b!4964755))

(assert (not d!1597269))

(assert (not d!1597361))

(assert b_and!347745)

(assert (not b!4964652))

(assert (not b!4964944))

(assert (not b!4964913))

(assert (not b!4964822))

(assert (not b!4964673))

(assert (not d!1597225))

(assert (not b!4964678))

(assert (not b!4964712))

(assert (not b!4964564))

(assert (not b!4964648))

(assert (not b!4964605))

(assert (not b!4964945))

(assert (not d!1597267))

(assert (not b!4964650))

(assert (not bs!1182920))

(assert (not b!4964651))

(assert (not d!1597305))

(assert (not b!4964817))

(assert (not bm!346172))

(assert (not b!4964763))

(assert (not d!1597337))

(assert (not b!4964774))

(assert (not b!4964710))

(assert (not d!1597313))

(assert (not d!1597229))

(assert (not b!4964915))

(assert (not b_lambda!196611))

(assert (not b!4964726))

(assert (not b!4964701))

(assert (not b!4964781))

(assert (not d!1597249))

(assert (not b!4964702))

(assert (not b_lambda!196535))

(assert (not b!4964685))

(assert (not b!4964566))

(assert (not b!4964802))

(assert (not d!1597253))

(assert (not b!4964699))

(assert (not b!4964943))

(assert (not b_lambda!196549))

(assert (not d!1597289))

(assert (not d!1597211))

(assert (not b!4964797))

(assert (not tb!260257))

(assert (not b!4964649))

(assert (not d!1597241))

(assert (not b!4964925))

(assert (not d!1597207))

(assert (not b!4964930))

(assert (not b!4964680))

(assert (not d!1597205))

(assert (not d!1597315))

(assert (not b!4964725))

(assert (not d!1597217))

(assert (not tb!260231))

(assert (not b!4964733))

(assert (not b!4964762))

(assert (not b!4964751))

(assert (not b!4964752))

(assert (not b!4964736))

(assert (not b!4964963))

(assert (not d!1597371))

(assert (not b!4964819))

(assert (not b!4964821))

(assert (not b!4964730))

(assert (not d!1597261))

(assert (not bm!346164))

(assert (not b!4964931))

(assert (not d!1597323))

(assert (not b!4964818))

(assert b_and!347747)

(assert (not b!4964777))

(assert (not b_lambda!196551))

(assert (not d!1597227))

(assert (not b!4964823))

(assert (not b!4964727))

(assert b_and!347749)

(assert (not d!1597199))

(assert (not bm!346178))

(assert (not b!4964675))

(assert (not b!4964698))

(assert (not b_lambda!196553))

(assert (not b!4964735))

(assert (not b!4964559))

(assert (not b!4964737))

(assert b_and!347751)

(assert (not b!4964970))

(assert (not b!4964689))

(assert (not b!4964600))

(assert (not b!4964635))

(assert (not b!4964958))

(assert (not b_lambda!196607))

(assert (not d!1597331))

(assert (not b!4964816))

(assert (not b!4964621))

(assert (not b!4964764))

(assert (not tb!260239))

(assert (not b!4964697))

(assert (not d!1597297))

(assert (not b!4964865))

(assert (not b!4964939))

(assert (not d!1597319))

(assert (not b!4964393))

(assert (not b!4964792))

(assert (not b!4964789))

(assert (not b!4964628))

(assert (not b!4964801))

(assert (not d!1597197))

(assert (not bm!346165))

(assert (not b!4964961))

(assert (not b!4964947))

(assert (not d!1597287))

(assert b_and!347753)

(assert (not d!1597193))

(assert (not b!4964896))

(assert (not d!1597343))

(assert (not d!1597329))

(assert (not b!4964929))

(assert (not b_next!133535))

(assert (not b!4964949))

(assert (not bm!346167))

(assert (not bm!346166))

(assert (not b!4964732))

(assert (not d!1597309))

(assert (not b!4964926))

(assert (not b!4964560))

(assert (not d!1597245))

(assert (not tb!260251))

(assert (not b!4964959))

(assert (not b!4964796))

(assert (not tb!260235))

(assert (not b!4964653))

(assert (not b!4964813))

(assert (not b!4964756))

(assert (not d!1597363))

(assert (not b!4964623))

(assert (not b!4964713))

(assert (not d!1597321))

(assert (not b!4964718))

(assert (not b!4964967))

(assert (not b!4964608))

(assert (not d!1597357))

(assert (not b_lambda!196559))

(assert (not b!4964960))

(assert (not d!1597259))

(assert (not b!4964758))

(assert (not b!4964692))

(assert (not b!4964940))

(assert (not b!4964788))

(assert (not b!4964570))

(assert (not b!4964724))

(assert (not b!4964709))

(assert (not bm!346169))

(assert (not b!4964780))

(assert (not b!4964761))

(assert (not b!4964715))

(assert (not b!4964703))

(assert (not b!4964679))

(assert (not b!4964948))

(assert (not b!4964899))

(assert (not b!4964565))

(assert (not bm!346145))

(assert (not b_next!133533))

(assert (not b!4964803))

(assert (not b!4964729))

(assert (not b!4964914))

(assert tp_is_empty!36329)

(assert (not b!4964868))

(assert (not bm!346168))

(assert (not d!1597273))

(assert (not b!4964738))

(assert (not bm!346175))

(assert (not b!4964936))

(assert (not b_lambda!196555))

(assert (not b!4964976))

(assert (not b_lambda!196609))

(assert (not b_next!133525))

(assert (not d!1597303))

(assert (not bm!346170))

(assert (not b!4964968))

(assert (not b!4964791))

(assert (not b!4964790))

(assert (not b!4964975))

(assert (not d!1597231))

(assert (not b!4964927))

(assert (not b!4964687))

(assert (not b!4964834))

(assert (not b!4964965))

(assert (not b!4964676))

(assert (not b!4964690))

(assert (not b!4964836))

(assert (not b_lambda!196537))

(assert (not bm!346162))

(assert (not b!4964759))

(assert b_and!347743)

(assert (not b!4964833))

(assert (not b!4964674))

(assert (not tb!260227))

(assert (not d!1597359))

(assert (not bs!1182919))

(assert (not b!4964740))

(assert (not b!4964787))

(assert (not b!4964723))

(assert (not d!1597283))

(assert (not b!4964918))

(assert (not b!4964677))

(assert (not b!4964841))

(assert (not b!4964917))

(assert (not b!4964966))

(assert (not bm!346163))

(assert (not bm!346173))

(assert (not b!4964529))

(assert (not b!4964705))

(assert (not b_next!133543))

(assert (not d!1597307))

(assert (not b!4964838))

(assert (not b!4964714))

(assert (not b!4964784))

(assert (not b!4964793))

(assert (not bm!346174))

(assert (not d!1597277))

(assert (not b!4964839))

(assert (not bs!1182921))

(assert (not b_lambda!196605))

(assert (not d!1597221))

(assert (not b!4964962))

(assert (not b!4964739))

(assert (not b!4964604))

(assert (not b_next!133541))

(assert (not b!4964376))

(assert (not d!1597335))

(assert (not b!4964969))

(assert (not b!4964711))

(assert (not b!4964964))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!133527))

(assert b_and!347745)

(assert b_and!347747)

(assert b_and!347749)

(assert b_and!347751)

(assert b_and!347753)

(assert (not b_next!133535))

(assert (not b_next!133533))

(assert (not b_next!133525))

(assert b_and!347743)

(assert (not b_next!133543))

(assert (not b_next!133541))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1597525 () Bool)

(assert (=> d!1597525 (= (apply!13902 (transformation!8391 (h!63885 rulesArg!259)) (seqFromList!6034 (_1!34382 lt!2049910))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2049910))))))

(declare-fun b_lambda!196613 () Bool)

(assert (=> (not b_lambda!196613) (not d!1597525)))

(declare-fun t!368308 () Bool)

(declare-fun tb!260299 () Bool)

(assert (=> (and b!4964142 (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) t!368308) tb!260299))

(declare-fun result!325394 () Bool)

(assert (=> tb!260299 (= result!325394 (inv!21 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2049910)))))))

(declare-fun m!5990178 () Bool)

(assert (=> tb!260299 m!5990178))

(assert (=> d!1597525 t!368308))

(declare-fun b_and!347803 () Bool)

(assert (= b_and!347749 (and (=> t!368308 result!325394) b_and!347803)))

(declare-fun t!368310 () Bool)

(declare-fun tb!260301 () Bool)

(assert (=> (and b!4964367 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) t!368310) tb!260301))

(declare-fun result!325396 () Bool)

(assert (= result!325396 result!325394))

(assert (=> d!1597525 t!368310))

(declare-fun b_and!347805 () Bool)

(assert (= b_and!347751 (and (=> t!368310 result!325396) b_and!347805)))

(declare-fun t!368312 () Bool)

(declare-fun tb!260303 () Bool)

(assert (=> (and b!4964941 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) t!368312) tb!260303))

(declare-fun result!325398 () Bool)

(assert (= result!325398 result!325394))

(assert (=> d!1597525 t!368312))

(declare-fun b_and!347807 () Bool)

(assert (= b_and!347753 (and (=> t!368312 result!325398) b_and!347807)))

(assert (=> d!1597525 m!5989122))

(declare-fun m!5990180 () Bool)

(assert (=> d!1597525 m!5990180))

(assert (=> b!4964674 d!1597525))

(declare-fun d!1597527 () Bool)

(assert (=> d!1597527 (= (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) (list!18359 input!1342) (list!18359 input!1342) (size!38064 (list!18359 input!1342))))) (is-Nil!57435 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) (list!18359 input!1342) (list!18359 input!1342) (size!38064 (list!18359 input!1342))))))))

(assert (=> b!4964674 d!1597527))

(assert (=> b!4964674 d!1597201))

(declare-fun d!1597529 () Bool)

(assert (=> d!1597529 (= (seqFromList!6034 (_1!34382 lt!2049910)) (fromListB!2729 (_1!34382 lt!2049910)))))

(declare-fun bs!1182947 () Bool)

(assert (= bs!1182947 d!1597529))

(declare-fun m!5990182 () Bool)

(assert (=> bs!1182947 m!5990182))

(assert (=> b!4964674 d!1597529))

(declare-fun d!1597531 () Bool)

(declare-fun e!3103699 () Bool)

(assert (=> d!1597531 e!3103699))

(declare-fun res!2119519 () Bool)

(assert (=> d!1597531 (=> res!2119519 e!3103699)))

(assert (=> d!1597531 (= res!2119519 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) (list!18359 input!1342) (list!18359 input!1342) (size!38064 (list!18359 input!1342))))))))

(declare-fun lt!2050209 () Unit!148334)

(assert (=> d!1597531 (= lt!2050209 (choose!36655 (regex!8391 (h!63885 rulesArg!259)) (list!18359 input!1342)))))

(assert (=> d!1597531 (validRegex!5967 (regex!8391 (h!63885 rulesArg!259)))))

(assert (=> d!1597531 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1814 (regex!8391 (h!63885 rulesArg!259)) (list!18359 input!1342)) lt!2050209)))

(declare-fun b!4965351 () Bool)

(assert (=> b!4965351 (= e!3103699 (matchR!6634 (regex!8391 (h!63885 rulesArg!259)) (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) (list!18359 input!1342) (list!18359 input!1342) (size!38064 (list!18359 input!1342))))))))

(assert (= (and d!1597531 (not res!2119519)) b!4965351))

(assert (=> d!1597531 m!5988784))

(assert (=> d!1597531 m!5989130))

(assert (=> d!1597531 m!5988632))

(assert (=> d!1597531 m!5989126))

(assert (=> d!1597531 m!5988632))

(declare-fun m!5990184 () Bool)

(assert (=> d!1597531 m!5990184))

(assert (=> d!1597531 m!5988784))

(assert (=> d!1597531 m!5988632))

(assert (=> d!1597531 m!5988632))

(assert (=> d!1597531 m!5989126))

(assert (=> d!1597531 m!5989128))

(assert (=> d!1597531 m!5989028))

(assert (=> b!4965351 m!5988784))

(assert (=> b!4965351 m!5988632))

(assert (=> b!4965351 m!5989126))

(assert (=> b!4965351 m!5988784))

(assert (=> b!4965351 m!5988632))

(assert (=> b!4965351 m!5988632))

(assert (=> b!4965351 m!5989126))

(assert (=> b!4965351 m!5989128))

(assert (=> b!4965351 m!5989160))

(assert (=> b!4964674 d!1597531))

(declare-fun d!1597533 () Bool)

(declare-fun lt!2050210 () Int)

(assert (=> d!1597533 (= lt!2050210 (size!38064 (list!18359 (seqFromList!6034 (_1!34382 lt!2049910)))))))

(assert (=> d!1597533 (= lt!2050210 (size!38068 (c!846918 (seqFromList!6034 (_1!34382 lt!2049910)))))))

(assert (=> d!1597533 (= (size!38065 (seqFromList!6034 (_1!34382 lt!2049910))) lt!2050210)))

(declare-fun bs!1182948 () Bool)

(assert (= bs!1182948 d!1597533))

(assert (=> bs!1182948 m!5989122))

(declare-fun m!5990186 () Bool)

(assert (=> bs!1182948 m!5990186))

(assert (=> bs!1182948 m!5990186))

(declare-fun m!5990188 () Bool)

(assert (=> bs!1182948 m!5990188))

(declare-fun m!5990190 () Bool)

(assert (=> bs!1182948 m!5990190))

(assert (=> b!4964674 d!1597533))

(declare-fun b!4965352 () Bool)

(declare-fun e!3103702 () tuple2!62158)

(declare-fun e!3103707 () tuple2!62158)

(assert (=> b!4965352 (= e!3103702 e!3103707)))

(declare-fun lt!2050227 () tuple2!62158)

(declare-fun call!346224 () tuple2!62158)

(assert (=> b!4965352 (= lt!2050227 call!346224)))

(declare-fun c!847120 () Bool)

(assert (=> b!4965352 (= c!847120 (isEmpty!30923 (_1!34382 lt!2050227)))))

(declare-fun b!4965353 () Bool)

(declare-fun e!3103704 () tuple2!62158)

(declare-fun e!3103703 () tuple2!62158)

(assert (=> b!4965353 (= e!3103704 e!3103703)))

(declare-fun c!847122 () Bool)

(assert (=> b!4965353 (= c!847122 (= (size!38064 Nil!57435) (size!38064 (list!18359 input!1342))))))

(declare-fun bm!346215 () Bool)

(declare-fun call!346225 () Unit!148334)

(assert (=> bm!346215 (= call!346225 (lemmaIsPrefixRefl!3566 (list!18359 input!1342) (list!18359 input!1342)))))

(declare-fun b!4965354 () Bool)

(declare-fun e!3103701 () tuple2!62158)

(assert (=> b!4965354 (= e!3103701 (tuple2!62159 Nil!57435 Nil!57435))))

(declare-fun b!4965355 () Bool)

(assert (=> b!4965355 (= e!3103702 call!346224)))

(declare-fun bm!346216 () Bool)

(declare-fun call!346227 () List!57559)

(assert (=> bm!346216 (= call!346227 (tail!9799 (list!18359 input!1342)))))

(declare-fun bm!346217 () Bool)

(declare-fun call!346226 () Regex!13624)

(declare-fun call!346221 () C!27498)

(assert (=> bm!346217 (= call!346226 (derivativeStep!3920 (regex!8391 (h!63885 rulesArg!259)) call!346221))))

(declare-fun b!4965356 () Bool)

(declare-fun e!3103706 () Bool)

(declare-fun lt!2050215 () tuple2!62158)

(assert (=> b!4965356 (= e!3103706 (>= (size!38064 (_1!34382 lt!2050215)) (size!38064 Nil!57435)))))

(declare-fun bm!346218 () Bool)

(declare-fun lt!2050231 () List!57559)

(assert (=> bm!346218 (= call!346224 (findLongestMatchInner!1853 call!346226 lt!2050231 (+ (size!38064 Nil!57435) 1) call!346227 (list!18359 input!1342) (size!38064 (list!18359 input!1342))))))

(declare-fun b!4965357 () Bool)

(declare-fun e!3103700 () Bool)

(assert (=> b!4965357 (= e!3103700 e!3103706)))

(declare-fun res!2119520 () Bool)

(assert (=> b!4965357 (=> res!2119520 e!3103706)))

(assert (=> b!4965357 (= res!2119520 (isEmpty!30923 (_1!34382 lt!2050215)))))

(declare-fun bm!346219 () Bool)

(declare-fun call!346222 () Unit!148334)

(assert (=> bm!346219 (= call!346222 (lemmaIsPrefixSameLengthThenSameList!1206 (list!18359 input!1342) Nil!57435 (list!18359 input!1342)))))

(declare-fun b!4965358 () Bool)

(assert (=> b!4965358 (= e!3103707 (tuple2!62159 Nil!57435 (list!18359 input!1342)))))

(declare-fun bm!346220 () Bool)

(declare-fun call!346220 () Bool)

(assert (=> bm!346220 (= call!346220 (nullable!4618 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun b!4965359 () Bool)

(declare-fun e!3103705 () Unit!148334)

(declare-fun Unit!148347 () Unit!148334)

(assert (=> b!4965359 (= e!3103705 Unit!148347)))

(declare-fun lt!2050218 () Unit!148334)

(assert (=> b!4965359 (= lt!2050218 call!346225)))

(declare-fun call!346223 () Bool)

(assert (=> b!4965359 call!346223))

(declare-fun lt!2050228 () Unit!148334)

(assert (=> b!4965359 (= lt!2050228 lt!2050218)))

(declare-fun lt!2050237 () Unit!148334)

(assert (=> b!4965359 (= lt!2050237 call!346222)))

(assert (=> b!4965359 (= (list!18359 input!1342) Nil!57435)))

(declare-fun lt!2050222 () Unit!148334)

(assert (=> b!4965359 (= lt!2050222 lt!2050237)))

(assert (=> b!4965359 false))

(declare-fun b!4965360 () Bool)

(declare-fun c!847118 () Bool)

(assert (=> b!4965360 (= c!847118 call!346220)))

(declare-fun lt!2050224 () Unit!148334)

(declare-fun lt!2050232 () Unit!148334)

(assert (=> b!4965360 (= lt!2050224 lt!2050232)))

(declare-fun lt!2050236 () C!27498)

(declare-fun lt!2050235 () List!57559)

(assert (=> b!4965360 (= (++!12530 (++!12530 Nil!57435 (Cons!57435 lt!2050236 Nil!57435)) lt!2050235) (list!18359 input!1342))))

(assert (=> b!4965360 (= lt!2050232 (lemmaMoveElementToOtherListKeepsConcatEq!1443 Nil!57435 lt!2050236 lt!2050235 (list!18359 input!1342)))))

(assert (=> b!4965360 (= lt!2050235 (tail!9799 (list!18359 input!1342)))))

(assert (=> b!4965360 (= lt!2050236 (head!10666 (list!18359 input!1342)))))

(declare-fun lt!2050216 () Unit!148334)

(declare-fun lt!2050226 () Unit!148334)

(assert (=> b!4965360 (= lt!2050216 lt!2050226)))

(assert (=> b!4965360 (isPrefix!5242 (++!12530 Nil!57435 (Cons!57435 (head!10666 (getSuffix!3086 (list!18359 input!1342) Nil!57435)) Nil!57435)) (list!18359 input!1342))))

(assert (=> b!4965360 (= lt!2050226 (lemmaAddHeadSuffixToPrefixStillPrefix!833 Nil!57435 (list!18359 input!1342)))))

(declare-fun lt!2050212 () Unit!148334)

(declare-fun lt!2050211 () Unit!148334)

(assert (=> b!4965360 (= lt!2050212 lt!2050211)))

(assert (=> b!4965360 (= lt!2050211 (lemmaAddHeadSuffixToPrefixStillPrefix!833 Nil!57435 (list!18359 input!1342)))))

(assert (=> b!4965360 (= lt!2050231 (++!12530 Nil!57435 (Cons!57435 (head!10666 (list!18359 input!1342)) Nil!57435)))))

(declare-fun lt!2050238 () Unit!148334)

(assert (=> b!4965360 (= lt!2050238 e!3103705)))

(declare-fun c!847117 () Bool)

(assert (=> b!4965360 (= c!847117 (= (size!38064 Nil!57435) (size!38064 (list!18359 input!1342))))))

(declare-fun lt!2050220 () Unit!148334)

(declare-fun lt!2050230 () Unit!148334)

(assert (=> b!4965360 (= lt!2050220 lt!2050230)))

(assert (=> b!4965360 (<= (size!38064 Nil!57435) (size!38064 (list!18359 input!1342)))))

(assert (=> b!4965360 (= lt!2050230 (lemmaIsPrefixThenSmallerEqSize!759 Nil!57435 (list!18359 input!1342)))))

(assert (=> b!4965360 (= e!3103703 e!3103702)))

(declare-fun bm!346221 () Bool)

(assert (=> bm!346221 (= call!346221 (head!10666 (list!18359 input!1342)))))

(declare-fun d!1597535 () Bool)

(assert (=> d!1597535 e!3103700))

(declare-fun res!2119521 () Bool)

(assert (=> d!1597535 (=> (not res!2119521) (not e!3103700))))

(assert (=> d!1597535 (= res!2119521 (= (++!12530 (_1!34382 lt!2050215) (_2!34382 lt!2050215)) (list!18359 input!1342)))))

(assert (=> d!1597535 (= lt!2050215 e!3103704)))

(declare-fun c!847121 () Bool)

(assert (=> d!1597535 (= c!847121 (lostCause!1130 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun lt!2050213 () Unit!148334)

(declare-fun Unit!148348 () Unit!148334)

(assert (=> d!1597535 (= lt!2050213 Unit!148348)))

(assert (=> d!1597535 (= (getSuffix!3086 (list!18359 input!1342) Nil!57435) (list!18359 input!1342))))

(declare-fun lt!2050234 () Unit!148334)

(declare-fun lt!2050219 () Unit!148334)

(assert (=> d!1597535 (= lt!2050234 lt!2050219)))

(declare-fun lt!2050214 () List!57559)

(assert (=> d!1597535 (= (list!18359 input!1342) lt!2050214)))

(assert (=> d!1597535 (= lt!2050219 (lemmaSamePrefixThenSameSuffix!2498 Nil!57435 (list!18359 input!1342) Nil!57435 lt!2050214 (list!18359 input!1342)))))

(assert (=> d!1597535 (= lt!2050214 (getSuffix!3086 (list!18359 input!1342) Nil!57435))))

(declare-fun lt!2050223 () Unit!148334)

(declare-fun lt!2050217 () Unit!148334)

(assert (=> d!1597535 (= lt!2050223 lt!2050217)))

(assert (=> d!1597535 (isPrefix!5242 Nil!57435 (++!12530 Nil!57435 (list!18359 input!1342)))))

(assert (=> d!1597535 (= lt!2050217 (lemmaConcatTwoListThenFirstIsPrefix!3344 Nil!57435 (list!18359 input!1342)))))

(assert (=> d!1597535 (validRegex!5967 (regex!8391 (h!63885 rulesArg!259)))))

(assert (=> d!1597535 (= (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) (list!18359 input!1342) (list!18359 input!1342) (size!38064 (list!18359 input!1342))) lt!2050215)))

(declare-fun b!4965361 () Bool)

(assert (=> b!4965361 (= e!3103707 lt!2050227)))

(declare-fun b!4965362 () Bool)

(declare-fun Unit!148349 () Unit!148334)

(assert (=> b!4965362 (= e!3103705 Unit!148349)))

(declare-fun b!4965363 () Bool)

(assert (=> b!4965363 (= e!3103704 (tuple2!62159 Nil!57435 (list!18359 input!1342)))))

(declare-fun bm!346222 () Bool)

(assert (=> bm!346222 (= call!346223 (isPrefix!5242 (list!18359 input!1342) (list!18359 input!1342)))))

(declare-fun b!4965364 () Bool)

(declare-fun c!847119 () Bool)

(assert (=> b!4965364 (= c!847119 call!346220)))

(declare-fun lt!2050221 () Unit!148334)

(declare-fun lt!2050229 () Unit!148334)

(assert (=> b!4965364 (= lt!2050221 lt!2050229)))

(assert (=> b!4965364 (= (list!18359 input!1342) Nil!57435)))

(assert (=> b!4965364 (= lt!2050229 call!346222)))

(declare-fun lt!2050233 () Unit!148334)

(declare-fun lt!2050225 () Unit!148334)

(assert (=> b!4965364 (= lt!2050233 lt!2050225)))

(assert (=> b!4965364 call!346223))

(assert (=> b!4965364 (= lt!2050225 call!346225)))

(assert (=> b!4965364 (= e!3103703 e!3103701)))

(declare-fun b!4965365 () Bool)

(assert (=> b!4965365 (= e!3103701 (tuple2!62159 Nil!57435 (list!18359 input!1342)))))

(assert (= (and d!1597535 c!847121) b!4965363))

(assert (= (and d!1597535 (not c!847121)) b!4965353))

(assert (= (and b!4965353 c!847122) b!4965364))

(assert (= (and b!4965353 (not c!847122)) b!4965360))

(assert (= (and b!4965364 c!847119) b!4965354))

(assert (= (and b!4965364 (not c!847119)) b!4965365))

(assert (= (and b!4965360 c!847117) b!4965359))

(assert (= (and b!4965360 (not c!847117)) b!4965362))

(assert (= (and b!4965360 c!847118) b!4965352))

(assert (= (and b!4965360 (not c!847118)) b!4965355))

(assert (= (and b!4965352 c!847120) b!4965358))

(assert (= (and b!4965352 (not c!847120)) b!4965361))

(assert (= (or b!4965352 b!4965355) bm!346221))

(assert (= (or b!4965352 b!4965355) bm!346216))

(assert (= (or b!4965352 b!4965355) bm!346217))

(assert (= (or b!4965352 b!4965355) bm!346218))

(assert (= (or b!4965364 b!4965359) bm!346215))

(assert (= (or b!4965364 b!4965359) bm!346219))

(assert (= (or b!4965364 b!4965360) bm!346220))

(assert (= (or b!4965364 b!4965359) bm!346222))

(assert (= (and d!1597535 res!2119521) b!4965357))

(assert (= (and b!4965357 (not res!2119520)) b!4965356))

(assert (=> b!4965360 m!5988784))

(declare-fun m!5990192 () Bool)

(assert (=> b!4965360 m!5990192))

(declare-fun m!5990194 () Bool)

(assert (=> b!4965360 m!5990194))

(assert (=> b!4965360 m!5988632))

(declare-fun m!5990196 () Bool)

(assert (=> b!4965360 m!5990196))

(declare-fun m!5990198 () Bool)

(assert (=> b!4965360 m!5990198))

(assert (=> b!4965360 m!5988632))

(declare-fun m!5990200 () Bool)

(assert (=> b!4965360 m!5990200))

(assert (=> b!4965360 m!5988632))

(declare-fun m!5990202 () Bool)

(assert (=> b!4965360 m!5990202))

(assert (=> b!4965360 m!5988632))

(assert (=> b!4965360 m!5989126))

(assert (=> b!4965360 m!5988632))

(declare-fun m!5990204 () Bool)

(assert (=> b!4965360 m!5990204))

(assert (=> b!4965360 m!5990192))

(assert (=> b!4965360 m!5990196))

(declare-fun m!5990206 () Bool)

(assert (=> b!4965360 m!5990206))

(assert (=> b!4965360 m!5988632))

(declare-fun m!5990208 () Bool)

(assert (=> b!4965360 m!5990208))

(declare-fun m!5990210 () Bool)

(assert (=> b!4965360 m!5990210))

(assert (=> b!4965360 m!5988632))

(declare-fun m!5990212 () Bool)

(assert (=> b!4965360 m!5990212))

(assert (=> b!4965360 m!5990198))

(assert (=> b!4965360 m!5988632))

(declare-fun m!5990214 () Bool)

(assert (=> b!4965360 m!5990214))

(declare-fun m!5990216 () Bool)

(assert (=> b!4965352 m!5990216))

(assert (=> bm!346222 m!5988632))

(assert (=> bm!346222 m!5988632))

(assert (=> bm!346222 m!5989246))

(assert (=> bm!346221 m!5988632))

(assert (=> bm!346221 m!5990208))

(declare-fun m!5990218 () Bool)

(assert (=> d!1597535 m!5990218))

(assert (=> d!1597535 m!5988632))

(declare-fun m!5990220 () Bool)

(assert (=> d!1597535 m!5990220))

(assert (=> d!1597535 m!5989028))

(assert (=> d!1597535 m!5988632))

(assert (=> d!1597535 m!5990196))

(assert (=> d!1597535 m!5988632))

(declare-fun m!5990222 () Bool)

(assert (=> d!1597535 m!5990222))

(assert (=> d!1597535 m!5988632))

(assert (=> d!1597535 m!5988632))

(declare-fun m!5990224 () Bool)

(assert (=> d!1597535 m!5990224))

(assert (=> d!1597535 m!5989074))

(assert (=> d!1597535 m!5990220))

(declare-fun m!5990226 () Bool)

(assert (=> d!1597535 m!5990226))

(declare-fun m!5990228 () Bool)

(assert (=> b!4965356 m!5990228))

(assert (=> b!4965356 m!5988784))

(declare-fun m!5990230 () Bool)

(assert (=> b!4965357 m!5990230))

(assert (=> bm!346215 m!5988632))

(assert (=> bm!346215 m!5988632))

(assert (=> bm!346215 m!5989248))

(assert (=> bm!346216 m!5988632))

(assert (=> bm!346216 m!5990212))

(assert (=> bm!346220 m!5989030))

(declare-fun m!5990232 () Bool)

(assert (=> bm!346217 m!5990232))

(assert (=> bm!346218 m!5988632))

(assert (=> bm!346218 m!5989126))

(declare-fun m!5990234 () Bool)

(assert (=> bm!346218 m!5990234))

(assert (=> bm!346219 m!5988632))

(assert (=> bm!346219 m!5988632))

(declare-fun m!5990236 () Bool)

(assert (=> bm!346219 m!5990236))

(assert (=> b!4964674 d!1597535))

(declare-fun d!1597537 () Bool)

(declare-fun lt!2050239 () Int)

(assert (=> d!1597537 (>= lt!2050239 0)))

(declare-fun e!3103708 () Int)

(assert (=> d!1597537 (= lt!2050239 e!3103708)))

(declare-fun c!847123 () Bool)

(assert (=> d!1597537 (= c!847123 (is-Nil!57435 (list!18359 input!1342)))))

(assert (=> d!1597537 (= (size!38064 (list!18359 input!1342)) lt!2050239)))

(declare-fun b!4965366 () Bool)

(assert (=> b!4965366 (= e!3103708 0)))

(declare-fun b!4965367 () Bool)

(assert (=> b!4965367 (= e!3103708 (+ 1 (size!38064 (t!368225 (list!18359 input!1342)))))))

(assert (= (and d!1597537 c!847123) b!4965366))

(assert (= (and d!1597537 (not c!847123)) b!4965367))

(declare-fun m!5990238 () Bool)

(assert (=> b!4965367 m!5990238))

(assert (=> b!4964674 d!1597537))

(declare-fun bs!1182949 () Bool)

(declare-fun d!1597539 () Bool)

(assert (= bs!1182949 (and d!1597539 b!4964280)))

(declare-fun lambda!247339 () Int)

(assert (=> bs!1182949 (= lambda!247339 lambda!247309)))

(declare-fun bs!1182950 () Bool)

(assert (= bs!1182950 (and d!1597539 d!1597259)))

(assert (=> bs!1182950 (= lambda!247339 lambda!247317)))

(declare-fun bs!1182951 () Bool)

(assert (= bs!1182951 (and d!1597539 b!4964759)))

(assert (=> bs!1182951 (= (and (= (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))))) (= lambda!247339 lambda!247318))))

(declare-fun b!4965372 () Bool)

(declare-fun e!3103711 () Bool)

(assert (=> b!4965372 (= e!3103711 true)))

(assert (=> d!1597539 e!3103711))

(assert (= d!1597539 b!4965372))

(assert (=> b!4965372 (< (dynLambda!23142 order!26187 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) (dynLambda!23143 order!26189 lambda!247339))))

(assert (=> b!4965372 (< (dynLambda!23144 order!26191 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) (dynLambda!23143 order!26189 lambda!247339))))

(assert (=> d!1597539 (= (list!18359 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2049910))))) (list!18359 (seqFromList!6034 (_1!34382 lt!2049910))))))

(declare-fun lt!2050242 () Unit!148334)

(assert (=> d!1597539 (= lt!2050242 (ForallOf!1225 lambda!247339 (seqFromList!6034 (_1!34382 lt!2049910))))))

(assert (=> d!1597539 (= (lemmaSemiInverse!2600 (transformation!8391 (h!63885 rulesArg!259)) (seqFromList!6034 (_1!34382 lt!2049910))) lt!2050242)))

(declare-fun b_lambda!196615 () Bool)

(assert (=> (not b_lambda!196615) (not d!1597539)))

(declare-fun t!368314 () Bool)

(declare-fun tb!260305 () Bool)

(assert (=> (and b!4964142 (= (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) t!368314) tb!260305))

(declare-fun e!3103712 () Bool)

(declare-fun b!4965373 () Bool)

(declare-fun tp!1392829 () Bool)

(assert (=> b!4965373 (= e!3103712 (and (inv!75059 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2049910)))))) tp!1392829))))

(declare-fun result!325400 () Bool)

(assert (=> tb!260305 (= result!325400 (and (inv!75060 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2049910))))) e!3103712))))

(assert (= tb!260305 b!4965373))

(declare-fun m!5990240 () Bool)

(assert (=> b!4965373 m!5990240))

(declare-fun m!5990242 () Bool)

(assert (=> tb!260305 m!5990242))

(assert (=> d!1597539 t!368314))

(declare-fun b_and!347809 () Bool)

(assert (= b_and!347743 (and (=> t!368314 result!325400) b_and!347809)))

(declare-fun t!368316 () Bool)

(declare-fun tb!260307 () Bool)

(assert (=> (and b!4964367 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) t!368316) tb!260307))

(declare-fun result!325402 () Bool)

(assert (= result!325402 result!325400))

(assert (=> d!1597539 t!368316))

(declare-fun b_and!347811 () Bool)

(assert (= b_and!347745 (and (=> t!368316 result!325402) b_and!347811)))

(declare-fun t!368318 () Bool)

(declare-fun tb!260309 () Bool)

(assert (=> (and b!4964941 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) t!368318) tb!260309))

(declare-fun result!325404 () Bool)

(assert (= result!325404 result!325400))

(assert (=> d!1597539 t!368318))

(declare-fun b_and!347813 () Bool)

(assert (= b_and!347747 (and (=> t!368318 result!325404) b_and!347813)))

(declare-fun b_lambda!196617 () Bool)

(assert (=> (not b_lambda!196617) (not d!1597539)))

(assert (=> d!1597539 t!368308))

(declare-fun b_and!347815 () Bool)

(assert (= b_and!347803 (and (=> t!368308 result!325394) b_and!347815)))

(assert (=> d!1597539 t!368310))

(declare-fun b_and!347817 () Bool)

(assert (= b_and!347805 (and (=> t!368310 result!325396) b_and!347817)))

(assert (=> d!1597539 t!368312))

(declare-fun b_and!347819 () Bool)

(assert (= b_and!347807 (and (=> t!368312 result!325398) b_and!347819)))

(assert (=> d!1597539 m!5989122))

(assert (=> d!1597539 m!5990180))

(assert (=> d!1597539 m!5989122))

(declare-fun m!5990244 () Bool)

(assert (=> d!1597539 m!5990244))

(assert (=> d!1597539 m!5989122))

(assert (=> d!1597539 m!5990186))

(declare-fun m!5990246 () Bool)

(assert (=> d!1597539 m!5990246))

(declare-fun m!5990248 () Bool)

(assert (=> d!1597539 m!5990248))

(assert (=> d!1597539 m!5990180))

(assert (=> d!1597539 m!5990246))

(assert (=> b!4964674 d!1597539))

(declare-fun d!1597541 () Bool)

(declare-fun lt!2050243 () Int)

(assert (=> d!1597541 (>= lt!2050243 0)))

(declare-fun e!3103713 () Int)

(assert (=> d!1597541 (= lt!2050243 e!3103713)))

(declare-fun c!847125 () Bool)

(assert (=> d!1597541 (= c!847125 (is-Nil!57435 (list!18363 (xs!18469 (c!846918 input!1342)))))))

(assert (=> d!1597541 (= (size!38064 (list!18363 (xs!18469 (c!846918 input!1342)))) lt!2050243)))

(declare-fun b!4965374 () Bool)

(assert (=> b!4965374 (= e!3103713 0)))

(declare-fun b!4965375 () Bool)

(assert (=> b!4965375 (= e!3103713 (+ 1 (size!38064 (t!368225 (list!18363 (xs!18469 (c!846918 input!1342)))))))))

(assert (= (and d!1597541 c!847125) b!4965374))

(assert (= (and d!1597541 (not c!847125)) b!4965375))

(declare-fun m!5990250 () Bool)

(assert (=> b!4965375 m!5990250))

(assert (=> b!4964628 d!1597541))

(declare-fun d!1597543 () Bool)

(assert (=> d!1597543 (= (list!18363 (xs!18469 (c!846918 input!1342))) (innerList!15231 (xs!18469 (c!846918 input!1342))))))

(assert (=> b!4964628 d!1597543))

(declare-fun d!1597545 () Bool)

(assert (=> d!1597545 (= (list!18359 lt!2049981) (list!18361 (c!846918 lt!2049981)))))

(declare-fun bs!1182952 () Bool)

(assert (= bs!1182952 d!1597545))

(declare-fun m!5990252 () Bool)

(assert (=> bs!1182952 m!5990252))

(assert (=> d!1597309 d!1597545))

(declare-fun d!1597547 () Bool)

(assert (=> d!1597547 (= (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))) (h!63883 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))

(assert (=> b!4964796 d!1597547))

(declare-fun d!1597549 () Bool)

(declare-fun c!847131 () Bool)

(assert (=> d!1597549 (= c!847131 (is-IntegerValue!26103 (dynLambda!23149 (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049691)))))))))

(declare-fun e!3103722 () Bool)

(assert (=> d!1597549 (= (inv!21 (dynLambda!23149 (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049691)))))) e!3103722)))

(declare-fun b!4965386 () Bool)

(declare-fun inv!16 (TokenValue!8701) Bool)

(assert (=> b!4965386 (= e!3103722 (inv!16 (dynLambda!23149 (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049691)))))))))

(declare-fun b!4965387 () Bool)

(declare-fun e!3103720 () Bool)

(declare-fun inv!15 (TokenValue!8701) Bool)

(assert (=> b!4965387 (= e!3103720 (inv!15 (dynLambda!23149 (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049691)))))))))

(declare-fun b!4965388 () Bool)

(declare-fun e!3103721 () Bool)

(declare-fun inv!17 (TokenValue!8701) Bool)

(assert (=> b!4965388 (= e!3103721 (inv!17 (dynLambda!23149 (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049691)))))))))

(declare-fun b!4965389 () Bool)

(declare-fun res!2119524 () Bool)

(assert (=> b!4965389 (=> res!2119524 e!3103720)))

(assert (=> b!4965389 (= res!2119524 (not (is-IntegerValue!26105 (dynLambda!23149 (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049691))))))))))

(assert (=> b!4965389 (= e!3103721 e!3103720)))

(declare-fun b!4965390 () Bool)

(assert (=> b!4965390 (= e!3103722 e!3103721)))

(declare-fun c!847130 () Bool)

(assert (=> b!4965390 (= c!847130 (is-IntegerValue!26104 (dynLambda!23149 (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049691)))))))))

(assert (= (and d!1597549 c!847131) b!4965386))

(assert (= (and d!1597549 (not c!847131)) b!4965390))

(assert (= (and b!4965390 c!847130) b!4965388))

(assert (= (and b!4965390 (not c!847130)) b!4965389))

(assert (= (and b!4965389 (not res!2119524)) b!4965387))

(declare-fun m!5990254 () Bool)

(assert (=> b!4965386 m!5990254))

(declare-fun m!5990256 () Bool)

(assert (=> b!4965387 m!5990256))

(declare-fun m!5990258 () Bool)

(assert (=> b!4965388 m!5990258))

(assert (=> tb!260227 d!1597549))

(declare-fun d!1597551 () Bool)

(assert (=> d!1597551 (= (get!19935 lt!2049977) (v!50431 lt!2049977))))

(assert (=> b!4964787 d!1597551))

(declare-fun d!1597553 () Bool)

(assert (=> d!1597553 (= (apply!13902 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049977)))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049977))))) (dynLambda!23149 (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049977))))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049977))))))))

(declare-fun b_lambda!196619 () Bool)

(assert (=> (not b_lambda!196619) (not d!1597553)))

(declare-fun tb!260311 () Bool)

(declare-fun t!368320 () Bool)

(assert (=> (and b!4964142 (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049977)))))) t!368320) tb!260311))

(declare-fun result!325406 () Bool)

(assert (=> tb!260311 (= result!325406 (inv!21 (dynLambda!23149 (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049977))))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049977)))))))))

(declare-fun m!5990260 () Bool)

(assert (=> tb!260311 m!5990260))

(assert (=> d!1597553 t!368320))

(declare-fun b_and!347821 () Bool)

(assert (= b_and!347815 (and (=> t!368320 result!325406) b_and!347821)))

(declare-fun tb!260313 () Bool)

(declare-fun t!368322 () Bool)

(assert (=> (and b!4964367 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049977)))))) t!368322) tb!260313))

(declare-fun result!325408 () Bool)

(assert (= result!325408 result!325406))

(assert (=> d!1597553 t!368322))

(declare-fun b_and!347823 () Bool)

(assert (= b_and!347817 (and (=> t!368322 result!325408) b_and!347823)))

(declare-fun tb!260315 () Bool)

(declare-fun t!368324 () Bool)

(assert (=> (and b!4964941 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049977)))))) t!368324) tb!260315))

(declare-fun result!325410 () Bool)

(assert (= result!325410 result!325406))

(assert (=> d!1597553 t!368324))

(declare-fun b_and!347825 () Bool)

(assert (= b_and!347819 (and (=> t!368324 result!325410) b_and!347825)))

(assert (=> d!1597553 m!5989420))

(declare-fun m!5990262 () Bool)

(assert (=> d!1597553 m!5990262))

(assert (=> b!4964787 d!1597553))

(declare-fun d!1597555 () Bool)

(assert (=> d!1597555 (= (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049977)))) (fromListB!2729 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049977)))))))

(declare-fun bs!1182953 () Bool)

(assert (= bs!1182953 d!1597555))

(declare-fun m!5990264 () Bool)

(assert (=> bs!1182953 m!5990264))

(assert (=> b!4964787 d!1597555))

(declare-fun d!1597557 () Bool)

(declare-fun c!847132 () Bool)

(assert (=> d!1597557 (= c!847132 (is-Empty!15143 (c!846918 (_2!34377 (get!19936 lt!2049644)))))))

(declare-fun e!3103724 () List!57559)

(assert (=> d!1597557 (= (list!18361 (c!846918 (_2!34377 (get!19936 lt!2049644)))) e!3103724)))

(declare-fun b!4965393 () Bool)

(declare-fun e!3103725 () List!57559)

(assert (=> b!4965393 (= e!3103725 (list!18363 (xs!18469 (c!846918 (_2!34377 (get!19936 lt!2049644))))))))

(declare-fun b!4965391 () Bool)

(assert (=> b!4965391 (= e!3103724 Nil!57435)))

(declare-fun b!4965392 () Bool)

(assert (=> b!4965392 (= e!3103724 e!3103725)))

(declare-fun c!847133 () Bool)

(assert (=> b!4965392 (= c!847133 (is-Leaf!25164 (c!846918 (_2!34377 (get!19936 lt!2049644)))))))

(declare-fun b!4965394 () Bool)

(assert (=> b!4965394 (= e!3103725 (++!12530 (list!18361 (left!41893 (c!846918 (_2!34377 (get!19936 lt!2049644))))) (list!18361 (right!42223 (c!846918 (_2!34377 (get!19936 lt!2049644)))))))))

(assert (= (and d!1597557 c!847132) b!4965391))

(assert (= (and d!1597557 (not c!847132)) b!4965392))

(assert (= (and b!4965392 c!847133) b!4965393))

(assert (= (and b!4965392 (not c!847133)) b!4965394))

(declare-fun m!5990266 () Bool)

(assert (=> b!4965393 m!5990266))

(declare-fun m!5990268 () Bool)

(assert (=> b!4965394 m!5990268))

(declare-fun m!5990270 () Bool)

(assert (=> b!4965394 m!5990270))

(assert (=> b!4965394 m!5990268))

(assert (=> b!4965394 m!5990270))

(declare-fun m!5990272 () Bool)

(assert (=> b!4965394 m!5990272))

(assert (=> d!1597281 d!1597557))

(declare-fun b!4965415 () Bool)

(declare-fun e!3103738 () Regex!13624)

(declare-fun call!346236 () Regex!13624)

(assert (=> b!4965415 (= e!3103738 (Concat!22326 call!346236 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun call!346238 () Regex!13624)

(declare-fun c!847144 () Bool)

(declare-fun bm!346231 () Bool)

(declare-fun c!847145 () Bool)

(assert (=> bm!346231 (= call!346238 (derivativeStep!3920 (ite c!847145 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259))) (ite c!847144 (reg!13953 (regex!8391 (h!63885 rulesArg!259))) (regOne!27760 (regex!8391 (h!63885 rulesArg!259))))) call!346168))))

(declare-fun b!4965416 () Bool)

(declare-fun c!847147 () Bool)

(assert (=> b!4965416 (= c!847147 (nullable!4618 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))))

(declare-fun e!3103737 () Regex!13624)

(assert (=> b!4965416 (= e!3103738 e!3103737)))

(declare-fun bm!346232 () Bool)

(declare-fun call!346239 () Regex!13624)

(assert (=> bm!346232 (= call!346239 (derivativeStep!3920 (ite c!847145 (regOne!27761 (regex!8391 (h!63885 rulesArg!259))) (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))) call!346168))))

(declare-fun bm!346233 () Bool)

(assert (=> bm!346233 (= call!346236 call!346238)))

(declare-fun bm!346234 () Bool)

(declare-fun call!346237 () Regex!13624)

(assert (=> bm!346234 (= call!346237 call!346236)))

(declare-fun b!4965417 () Bool)

(declare-fun e!3103740 () Regex!13624)

(assert (=> b!4965417 (= e!3103740 (Union!13624 call!346239 call!346238))))

(declare-fun b!4965419 () Bool)

(assert (=> b!4965419 (= c!847145 (is-Union!13624 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun e!3103739 () Regex!13624)

(assert (=> b!4965419 (= e!3103739 e!3103740)))

(declare-fun b!4965420 () Bool)

(assert (=> b!4965420 (= e!3103737 (Union!13624 (Concat!22326 call!346237 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))) EmptyLang!13624))))

(declare-fun b!4965421 () Bool)

(assert (=> b!4965421 (= e!3103737 (Union!13624 (Concat!22326 call!346237 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))) call!346239))))

(declare-fun b!4965422 () Bool)

(declare-fun e!3103736 () Regex!13624)

(assert (=> b!4965422 (= e!3103736 e!3103739)))

(declare-fun c!847146 () Bool)

(assert (=> b!4965422 (= c!847146 (is-ElementMatch!13624 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun b!4965423 () Bool)

(assert (=> b!4965423 (= e!3103739 (ite (= call!346168 (c!846919 (regex!8391 (h!63885 rulesArg!259)))) EmptyExpr!13624 EmptyLang!13624))))

(declare-fun b!4965424 () Bool)

(assert (=> b!4965424 (= e!3103740 e!3103738)))

(assert (=> b!4965424 (= c!847144 (is-Star!13624 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun b!4965418 () Bool)

(assert (=> b!4965418 (= e!3103736 EmptyLang!13624)))

(declare-fun d!1597559 () Bool)

(declare-fun lt!2050246 () Regex!13624)

(assert (=> d!1597559 (validRegex!5967 lt!2050246)))

(assert (=> d!1597559 (= lt!2050246 e!3103736)))

(declare-fun c!847148 () Bool)

(assert (=> d!1597559 (= c!847148 (or (is-EmptyExpr!13624 (regex!8391 (h!63885 rulesArg!259))) (is-EmptyLang!13624 (regex!8391 (h!63885 rulesArg!259)))))))

(assert (=> d!1597559 (validRegex!5967 (regex!8391 (h!63885 rulesArg!259)))))

(assert (=> d!1597559 (= (derivativeStep!3920 (regex!8391 (h!63885 rulesArg!259)) call!346168) lt!2050246)))

(assert (= (and d!1597559 c!847148) b!4965418))

(assert (= (and d!1597559 (not c!847148)) b!4965422))

(assert (= (and b!4965422 c!847146) b!4965423))

(assert (= (and b!4965422 (not c!847146)) b!4965419))

(assert (= (and b!4965419 c!847145) b!4965417))

(assert (= (and b!4965419 (not c!847145)) b!4965424))

(assert (= (and b!4965424 c!847144) b!4965415))

(assert (= (and b!4965424 (not c!847144)) b!4965416))

(assert (= (and b!4965416 c!847147) b!4965421))

(assert (= (and b!4965416 (not c!847147)) b!4965420))

(assert (= (or b!4965421 b!4965420) bm!346234))

(assert (= (or b!4965415 bm!346234) bm!346233))

(assert (= (or b!4965417 bm!346233) bm!346231))

(assert (= (or b!4965417 b!4965421) bm!346232))

(declare-fun m!5990274 () Bool)

(assert (=> bm!346231 m!5990274))

(declare-fun m!5990276 () Bool)

(assert (=> b!4965416 m!5990276))

(declare-fun m!5990278 () Bool)

(assert (=> bm!346232 m!5990278))

(declare-fun m!5990280 () Bool)

(assert (=> d!1597559 m!5990280))

(assert (=> d!1597559 m!5989028))

(assert (=> bm!346164 d!1597559))

(declare-fun d!1597561 () Bool)

(assert (=> d!1597561 (= (get!19935 lt!2049922) (v!50431 lt!2049922))))

(assert (=> b!4964701 d!1597561))

(declare-fun d!1597563 () Bool)

(assert (=> d!1597563 (= (apply!13902 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922)))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049922))))) (dynLambda!23149 (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922))))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049922))))))))

(declare-fun b_lambda!196621 () Bool)

(assert (=> (not b_lambda!196621) (not d!1597563)))

(declare-fun t!368326 () Bool)

(declare-fun tb!260317 () Bool)

(assert (=> (and b!4964142 (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922)))))) t!368326) tb!260317))

(declare-fun result!325412 () Bool)

(assert (=> tb!260317 (= result!325412 (inv!21 (dynLambda!23149 (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922))))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049922)))))))))

(declare-fun m!5990282 () Bool)

(assert (=> tb!260317 m!5990282))

(assert (=> d!1597563 t!368326))

(declare-fun b_and!347827 () Bool)

(assert (= b_and!347821 (and (=> t!368326 result!325412) b_and!347827)))

(declare-fun t!368328 () Bool)

(declare-fun tb!260319 () Bool)

(assert (=> (and b!4964367 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922)))))) t!368328) tb!260319))

(declare-fun result!325414 () Bool)

(assert (= result!325414 result!325412))

(assert (=> d!1597563 t!368328))

(declare-fun b_and!347829 () Bool)

(assert (= b_and!347823 (and (=> t!368328 result!325414) b_and!347829)))

(declare-fun t!368330 () Bool)

(declare-fun tb!260321 () Bool)

(assert (=> (and b!4964941 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922)))))) t!368330) tb!260321))

(declare-fun result!325416 () Bool)

(assert (= result!325416 result!325412))

(assert (=> d!1597563 t!368330))

(declare-fun b_and!347831 () Bool)

(assert (= b_and!347825 (and (=> t!368330 result!325416) b_and!347831)))

(assert (=> d!1597563 m!5989196))

(declare-fun m!5990284 () Bool)

(assert (=> d!1597563 m!5990284))

(assert (=> b!4964701 d!1597563))

(declare-fun d!1597565 () Bool)

(assert (=> d!1597565 (= (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049922)))) (fromListB!2729 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049922)))))))

(declare-fun bs!1182954 () Bool)

(assert (= bs!1182954 d!1597565))

(declare-fun m!5990286 () Bool)

(assert (=> bs!1182954 m!5990286))

(assert (=> b!4964701 d!1597565))

(declare-fun d!1597567 () Bool)

(assert (=> d!1597567 (= (max!0 (height!2011 (left!41893 (c!846918 totalInput!464))) (height!2011 (right!42223 (c!846918 totalInput!464)))) (ite (< (height!2011 (left!41893 (c!846918 totalInput!464))) (height!2011 (right!42223 (c!846918 totalInput!464)))) (height!2011 (right!42223 (c!846918 totalInput!464))) (height!2011 (left!41893 (c!846918 totalInput!464)))))))

(assert (=> b!4964705 d!1597567))

(declare-fun d!1597569 () Bool)

(assert (=> d!1597569 (= (height!2011 (left!41893 (c!846918 totalInput!464))) (ite (is-Empty!15143 (left!41893 (c!846918 totalInput!464))) 0 (ite (is-Leaf!25164 (left!41893 (c!846918 totalInput!464))) 1 (cheight!15354 (left!41893 (c!846918 totalInput!464))))))))

(assert (=> b!4964705 d!1597569))

(declare-fun d!1597571 () Bool)

(assert (=> d!1597571 (= (height!2011 (right!42223 (c!846918 totalInput!464))) (ite (is-Empty!15143 (right!42223 (c!846918 totalInput!464))) 0 (ite (is-Leaf!25164 (right!42223 (c!846918 totalInput!464))) 1 (cheight!15354 (right!42223 (c!846918 totalInput!464))))))))

(assert (=> b!4964705 d!1597571))

(declare-fun d!1597573 () Bool)

(assert (=> d!1597573 (= (get!19935 lt!2049928) (v!50431 lt!2049928))))

(assert (=> b!4964729 d!1597573))

(declare-fun d!1597575 () Bool)

(assert (=> d!1597575 (= (apply!13902 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928)))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049928))))) (dynLambda!23149 (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928))))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049928))))))))

(declare-fun b_lambda!196623 () Bool)

(assert (=> (not b_lambda!196623) (not d!1597575)))

(declare-fun tb!260323 () Bool)

(declare-fun t!368333 () Bool)

(assert (=> (and b!4964142 (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928)))))) t!368333) tb!260323))

(declare-fun result!325418 () Bool)

(assert (=> tb!260323 (= result!325418 (inv!21 (dynLambda!23149 (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928))))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049928)))))))))

(declare-fun m!5990288 () Bool)

(assert (=> tb!260323 m!5990288))

(assert (=> d!1597575 t!368333))

(declare-fun b_and!347833 () Bool)

(assert (= b_and!347827 (and (=> t!368333 result!325418) b_and!347833)))

(declare-fun t!368335 () Bool)

(declare-fun tb!260325 () Bool)

(assert (=> (and b!4964367 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928)))))) t!368335) tb!260325))

(declare-fun result!325420 () Bool)

(assert (= result!325420 result!325418))

(assert (=> d!1597575 t!368335))

(declare-fun b_and!347835 () Bool)

(assert (= b_and!347829 (and (=> t!368335 result!325420) b_and!347835)))

(declare-fun tb!260327 () Bool)

(declare-fun t!368337 () Bool)

(assert (=> (and b!4964941 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928)))))) t!368337) tb!260327))

(declare-fun result!325422 () Bool)

(assert (= result!325422 result!325418))

(assert (=> d!1597575 t!368337))

(declare-fun b_and!347837 () Bool)

(assert (= b_and!347831 (and (=> t!368337 result!325422) b_and!347837)))

(assert (=> d!1597575 m!5989256))

(declare-fun m!5990290 () Bool)

(assert (=> d!1597575 m!5990290))

(assert (=> b!4964729 d!1597575))

(declare-fun d!1597577 () Bool)

(assert (=> d!1597577 (= (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049928)))) (fromListB!2729 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049928)))))))

(declare-fun bs!1182955 () Bool)

(assert (= bs!1182955 d!1597577))

(declare-fun m!5990292 () Bool)

(assert (=> bs!1182955 m!5990292))

(assert (=> b!4964729 d!1597577))

(declare-fun d!1597579 () Bool)

(declare-fun lt!2050247 () Int)

(assert (=> d!1597579 (>= lt!2050247 0)))

(declare-fun e!3103743 () Int)

(assert (=> d!1597579 (= lt!2050247 e!3103743)))

(declare-fun c!847149 () Bool)

(assert (=> d!1597579 (= c!847149 (is-Nil!57435 (_1!34382 lt!2049965)))))

(assert (=> d!1597579 (= (size!38064 (_1!34382 lt!2049965)) lt!2050247)))

(declare-fun b!4965425 () Bool)

(assert (=> b!4965425 (= e!3103743 0)))

(declare-fun b!4965426 () Bool)

(assert (=> b!4965426 (= e!3103743 (+ 1 (size!38064 (t!368225 (_1!34382 lt!2049965)))))))

(assert (= (and d!1597579 c!847149) b!4965425))

(assert (= (and d!1597579 (not c!847149)) b!4965426))

(declare-fun m!5990294 () Bool)

(assert (=> b!4965426 m!5990294))

(assert (=> b!4964774 d!1597579))

(declare-fun d!1597581 () Bool)

(declare-fun e!3103744 () Bool)

(assert (=> d!1597581 e!3103744))

(declare-fun res!2119525 () Bool)

(assert (=> d!1597581 (=> res!2119525 e!3103744)))

(assert (=> d!1597581 (= res!2119525 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571)))))))

(declare-fun lt!2050248 () Unit!148334)

(assert (=> d!1597581 (= lt!2050248 (choose!36655 (regex!8391 (h!63885 rulesArg!259)) lt!2049571))))

(assert (=> d!1597581 (validRegex!5967 (regex!8391 (h!63885 rulesArg!259)))))

(assert (=> d!1597581 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1814 (regex!8391 (h!63885 rulesArg!259)) lt!2049571) lt!2050248)))

(declare-fun b!4965427 () Bool)

(assert (=> b!4965427 (= e!3103744 (matchR!6634 (regex!8391 (h!63885 rulesArg!259)) (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571)))))))

(assert (= (and d!1597581 (not res!2119525)) b!4965427))

(assert (=> d!1597581 m!5988784))

(assert (=> d!1597581 m!5989378))

(assert (=> d!1597581 m!5988708))

(declare-fun m!5990296 () Bool)

(assert (=> d!1597581 m!5990296))

(assert (=> d!1597581 m!5988784))

(assert (=> d!1597581 m!5988708))

(assert (=> d!1597581 m!5989370))

(assert (=> d!1597581 m!5989028))

(assert (=> b!4965427 m!5988784))

(assert (=> b!4965427 m!5988708))

(assert (=> b!4965427 m!5988784))

(assert (=> b!4965427 m!5988708))

(assert (=> b!4965427 m!5989370))

(assert (=> b!4965427 m!5989382))

(assert (=> b!4964774 d!1597581))

(assert (=> b!4964774 d!1597201))

(assert (=> b!4964774 d!1597363))

(assert (=> b!4964774 d!1597239))

(declare-fun bs!1182956 () Bool)

(declare-fun d!1597583 () Bool)

(assert (= bs!1182956 (and d!1597583 b!4964280)))

(declare-fun lambda!247340 () Int)

(assert (=> bs!1182956 (= lambda!247340 lambda!247309)))

(declare-fun bs!1182957 () Bool)

(assert (= bs!1182957 (and d!1597583 d!1597259)))

(assert (=> bs!1182957 (= lambda!247340 lambda!247317)))

(declare-fun bs!1182958 () Bool)

(assert (= bs!1182958 (and d!1597583 b!4964759)))

(assert (=> bs!1182958 (= (and (= (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))))) (= lambda!247340 lambda!247318))))

(declare-fun bs!1182959 () Bool)

(assert (= bs!1182959 (and d!1597583 d!1597539)))

(assert (=> bs!1182959 (= lambda!247340 lambda!247339)))

(declare-fun b!4965428 () Bool)

(declare-fun e!3103745 () Bool)

(assert (=> b!4965428 (= e!3103745 true)))

(assert (=> d!1597583 e!3103745))

(assert (= d!1597583 b!4965428))

(assert (=> b!4965428 (< (dynLambda!23142 order!26187 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) (dynLambda!23143 order!26189 lambda!247340))))

(assert (=> b!4965428 (< (dynLambda!23144 order!26191 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) (dynLambda!23143 order!26189 lambda!247340))))

(assert (=> d!1597583 (= (list!18359 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2049965))))) (list!18359 (seqFromList!6034 (_1!34382 lt!2049965))))))

(declare-fun lt!2050249 () Unit!148334)

(assert (=> d!1597583 (= lt!2050249 (ForallOf!1225 lambda!247340 (seqFromList!6034 (_1!34382 lt!2049965))))))

(assert (=> d!1597583 (= (lemmaSemiInverse!2600 (transformation!8391 (h!63885 rulesArg!259)) (seqFromList!6034 (_1!34382 lt!2049965))) lt!2050249)))

(declare-fun b_lambda!196625 () Bool)

(assert (=> (not b_lambda!196625) (not d!1597583)))

(declare-fun t!368339 () Bool)

(declare-fun tb!260329 () Bool)

(assert (=> (and b!4964142 (= (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) t!368339) tb!260329))

(declare-fun e!3103746 () Bool)

(declare-fun b!4965429 () Bool)

(declare-fun tp!1392830 () Bool)

(assert (=> b!4965429 (= e!3103746 (and (inv!75059 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2049965)))))) tp!1392830))))

(declare-fun result!325424 () Bool)

(assert (=> tb!260329 (= result!325424 (and (inv!75060 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2049965))))) e!3103746))))

(assert (= tb!260329 b!4965429))

(declare-fun m!5990298 () Bool)

(assert (=> b!4965429 m!5990298))

(declare-fun m!5990300 () Bool)

(assert (=> tb!260329 m!5990300))

(assert (=> d!1597583 t!368339))

(declare-fun b_and!347839 () Bool)

(assert (= b_and!347809 (and (=> t!368339 result!325424) b_and!347839)))

(declare-fun t!368341 () Bool)

(declare-fun tb!260331 () Bool)

(assert (=> (and b!4964367 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) t!368341) tb!260331))

(declare-fun result!325426 () Bool)

(assert (= result!325426 result!325424))

(assert (=> d!1597583 t!368341))

(declare-fun b_and!347841 () Bool)

(assert (= b_and!347811 (and (=> t!368341 result!325426) b_and!347841)))

(declare-fun t!368343 () Bool)

(declare-fun tb!260333 () Bool)

(assert (=> (and b!4964941 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) t!368343) tb!260333))

(declare-fun result!325428 () Bool)

(assert (= result!325428 result!325424))

(assert (=> d!1597583 t!368343))

(declare-fun b_and!347843 () Bool)

(assert (= b_and!347813 (and (=> t!368343 result!325428) b_and!347843)))

(declare-fun b_lambda!196627 () Bool)

(assert (=> (not b_lambda!196627) (not d!1597583)))

(declare-fun t!368345 () Bool)

(declare-fun tb!260335 () Bool)

(assert (=> (and b!4964142 (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) t!368345) tb!260335))

(declare-fun result!325430 () Bool)

(assert (=> tb!260335 (= result!325430 (inv!21 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2049965)))))))

(declare-fun m!5990302 () Bool)

(assert (=> tb!260335 m!5990302))

(assert (=> d!1597583 t!368345))

(declare-fun b_and!347845 () Bool)

(assert (= b_and!347833 (and (=> t!368345 result!325430) b_and!347845)))

(declare-fun t!368347 () Bool)

(declare-fun tb!260337 () Bool)

(assert (=> (and b!4964367 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) t!368347) tb!260337))

(declare-fun result!325432 () Bool)

(assert (= result!325432 result!325430))

(assert (=> d!1597583 t!368347))

(declare-fun b_and!347847 () Bool)

(assert (= b_and!347835 (and (=> t!368347 result!325432) b_and!347847)))

(declare-fun t!368349 () Bool)

(declare-fun tb!260339 () Bool)

(assert (=> (and b!4964941 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) t!368349) tb!260339))

(declare-fun result!325434 () Bool)

(assert (= result!325434 result!325430))

(assert (=> d!1597583 t!368349))

(declare-fun b_and!347849 () Bool)

(assert (= b_and!347837 (and (=> t!368349 result!325434) b_and!347849)))

(assert (=> d!1597583 m!5989368))

(declare-fun m!5990304 () Bool)

(assert (=> d!1597583 m!5990304))

(assert (=> d!1597583 m!5989368))

(declare-fun m!5990306 () Bool)

(assert (=> d!1597583 m!5990306))

(assert (=> d!1597583 m!5989368))

(declare-fun m!5990308 () Bool)

(assert (=> d!1597583 m!5990308))

(declare-fun m!5990310 () Bool)

(assert (=> d!1597583 m!5990310))

(declare-fun m!5990312 () Bool)

(assert (=> d!1597583 m!5990312))

(assert (=> d!1597583 m!5990304))

(assert (=> d!1597583 m!5990310))

(assert (=> b!4964774 d!1597583))

(declare-fun d!1597585 () Bool)

(assert (=> d!1597585 (= (apply!13902 (transformation!8391 (h!63885 rulesArg!259)) (seqFromList!6034 (_1!34382 lt!2049965))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2049965))))))

(declare-fun b_lambda!196629 () Bool)

(assert (=> (not b_lambda!196629) (not d!1597585)))

(assert (=> d!1597585 t!368345))

(declare-fun b_and!347851 () Bool)

(assert (= b_and!347845 (and (=> t!368345 result!325430) b_and!347851)))

(assert (=> d!1597585 t!368347))

(declare-fun b_and!347853 () Bool)

(assert (= b_and!347847 (and (=> t!368347 result!325432) b_and!347853)))

(assert (=> d!1597585 t!368349))

(declare-fun b_and!347855 () Bool)

(assert (= b_and!347849 (and (=> t!368349 result!325434) b_and!347855)))

(assert (=> d!1597585 m!5989368))

(assert (=> d!1597585 m!5990304))

(assert (=> b!4964774 d!1597585))

(declare-fun d!1597587 () Bool)

(assert (=> d!1597587 (= (seqFromList!6034 (_1!34382 lt!2049965)) (fromListB!2729 (_1!34382 lt!2049965)))))

(declare-fun bs!1182960 () Bool)

(assert (= bs!1182960 d!1597587))

(declare-fun m!5990314 () Bool)

(assert (=> bs!1182960 m!5990314))

(assert (=> b!4964774 d!1597587))

(declare-fun b!4965430 () Bool)

(declare-fun e!3103750 () tuple2!62158)

(declare-fun e!3103755 () tuple2!62158)

(assert (=> b!4965430 (= e!3103750 e!3103755)))

(declare-fun lt!2050266 () tuple2!62158)

(declare-fun call!346244 () tuple2!62158)

(assert (=> b!4965430 (= lt!2050266 call!346244)))

(declare-fun c!847153 () Bool)

(assert (=> b!4965430 (= c!847153 (isEmpty!30923 (_1!34382 lt!2050266)))))

(declare-fun b!4965431 () Bool)

(declare-fun e!3103752 () tuple2!62158)

(declare-fun e!3103751 () tuple2!62158)

(assert (=> b!4965431 (= e!3103752 e!3103751)))

(declare-fun c!847155 () Bool)

(assert (=> b!4965431 (= c!847155 (= (size!38064 Nil!57435) (size!38064 lt!2049571)))))

(declare-fun bm!346235 () Bool)

(declare-fun call!346245 () Unit!148334)

(assert (=> bm!346235 (= call!346245 (lemmaIsPrefixRefl!3566 lt!2049571 lt!2049571))))

(declare-fun b!4965432 () Bool)

(declare-fun e!3103749 () tuple2!62158)

(assert (=> b!4965432 (= e!3103749 (tuple2!62159 Nil!57435 Nil!57435))))

(declare-fun b!4965433 () Bool)

(assert (=> b!4965433 (= e!3103750 call!346244)))

(declare-fun bm!346236 () Bool)

(declare-fun call!346247 () List!57559)

(assert (=> bm!346236 (= call!346247 (tail!9799 lt!2049571))))

(declare-fun bm!346237 () Bool)

(declare-fun call!346246 () Regex!13624)

(declare-fun call!346241 () C!27498)

(assert (=> bm!346237 (= call!346246 (derivativeStep!3920 (regex!8391 (h!63885 rulesArg!259)) call!346241))))

(declare-fun b!4965434 () Bool)

(declare-fun e!3103754 () Bool)

(declare-fun lt!2050254 () tuple2!62158)

(assert (=> b!4965434 (= e!3103754 (>= (size!38064 (_1!34382 lt!2050254)) (size!38064 Nil!57435)))))

(declare-fun bm!346238 () Bool)

(declare-fun lt!2050270 () List!57559)

(assert (=> bm!346238 (= call!346244 (findLongestMatchInner!1853 call!346246 lt!2050270 (+ (size!38064 Nil!57435) 1) call!346247 lt!2049571 (size!38064 lt!2049571)))))

(declare-fun b!4965435 () Bool)

(declare-fun e!3103748 () Bool)

(assert (=> b!4965435 (= e!3103748 e!3103754)))

(declare-fun res!2119526 () Bool)

(assert (=> b!4965435 (=> res!2119526 e!3103754)))

(assert (=> b!4965435 (= res!2119526 (isEmpty!30923 (_1!34382 lt!2050254)))))

(declare-fun bm!346239 () Bool)

(declare-fun call!346242 () Unit!148334)

(assert (=> bm!346239 (= call!346242 (lemmaIsPrefixSameLengthThenSameList!1206 lt!2049571 Nil!57435 lt!2049571))))

(declare-fun b!4965436 () Bool)

(assert (=> b!4965436 (= e!3103755 (tuple2!62159 Nil!57435 lt!2049571))))

(declare-fun bm!346240 () Bool)

(declare-fun call!346240 () Bool)

(assert (=> bm!346240 (= call!346240 (nullable!4618 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun b!4965437 () Bool)

(declare-fun e!3103753 () Unit!148334)

(declare-fun Unit!148350 () Unit!148334)

(assert (=> b!4965437 (= e!3103753 Unit!148350)))

(declare-fun lt!2050257 () Unit!148334)

(assert (=> b!4965437 (= lt!2050257 call!346245)))

(declare-fun call!346243 () Bool)

(assert (=> b!4965437 call!346243))

(declare-fun lt!2050267 () Unit!148334)

(assert (=> b!4965437 (= lt!2050267 lt!2050257)))

(declare-fun lt!2050276 () Unit!148334)

(assert (=> b!4965437 (= lt!2050276 call!346242)))

(assert (=> b!4965437 (= lt!2049571 Nil!57435)))

(declare-fun lt!2050261 () Unit!148334)

(assert (=> b!4965437 (= lt!2050261 lt!2050276)))

(assert (=> b!4965437 false))

(declare-fun b!4965438 () Bool)

(declare-fun c!847151 () Bool)

(assert (=> b!4965438 (= c!847151 call!346240)))

(declare-fun lt!2050263 () Unit!148334)

(declare-fun lt!2050271 () Unit!148334)

(assert (=> b!4965438 (= lt!2050263 lt!2050271)))

(declare-fun lt!2050275 () C!27498)

(declare-fun lt!2050274 () List!57559)

(assert (=> b!4965438 (= (++!12530 (++!12530 Nil!57435 (Cons!57435 lt!2050275 Nil!57435)) lt!2050274) lt!2049571)))

(assert (=> b!4965438 (= lt!2050271 (lemmaMoveElementToOtherListKeepsConcatEq!1443 Nil!57435 lt!2050275 lt!2050274 lt!2049571))))

(assert (=> b!4965438 (= lt!2050274 (tail!9799 lt!2049571))))

(assert (=> b!4965438 (= lt!2050275 (head!10666 lt!2049571))))

(declare-fun lt!2050255 () Unit!148334)

(declare-fun lt!2050265 () Unit!148334)

(assert (=> b!4965438 (= lt!2050255 lt!2050265)))

(assert (=> b!4965438 (isPrefix!5242 (++!12530 Nil!57435 (Cons!57435 (head!10666 (getSuffix!3086 lt!2049571 Nil!57435)) Nil!57435)) lt!2049571)))

(assert (=> b!4965438 (= lt!2050265 (lemmaAddHeadSuffixToPrefixStillPrefix!833 Nil!57435 lt!2049571))))

(declare-fun lt!2050251 () Unit!148334)

(declare-fun lt!2050250 () Unit!148334)

(assert (=> b!4965438 (= lt!2050251 lt!2050250)))

(assert (=> b!4965438 (= lt!2050250 (lemmaAddHeadSuffixToPrefixStillPrefix!833 Nil!57435 lt!2049571))))

(assert (=> b!4965438 (= lt!2050270 (++!12530 Nil!57435 (Cons!57435 (head!10666 lt!2049571) Nil!57435)))))

(declare-fun lt!2050277 () Unit!148334)

(assert (=> b!4965438 (= lt!2050277 e!3103753)))

(declare-fun c!847150 () Bool)

(assert (=> b!4965438 (= c!847150 (= (size!38064 Nil!57435) (size!38064 lt!2049571)))))

(declare-fun lt!2050259 () Unit!148334)

(declare-fun lt!2050269 () Unit!148334)

(assert (=> b!4965438 (= lt!2050259 lt!2050269)))

(assert (=> b!4965438 (<= (size!38064 Nil!57435) (size!38064 lt!2049571))))

(assert (=> b!4965438 (= lt!2050269 (lemmaIsPrefixThenSmallerEqSize!759 Nil!57435 lt!2049571))))

(assert (=> b!4965438 (= e!3103751 e!3103750)))

(declare-fun bm!346241 () Bool)

(assert (=> bm!346241 (= call!346241 (head!10666 lt!2049571))))

(declare-fun d!1597589 () Bool)

(assert (=> d!1597589 e!3103748))

(declare-fun res!2119527 () Bool)

(assert (=> d!1597589 (=> (not res!2119527) (not e!3103748))))

(assert (=> d!1597589 (= res!2119527 (= (++!12530 (_1!34382 lt!2050254) (_2!34382 lt!2050254)) lt!2049571))))

(assert (=> d!1597589 (= lt!2050254 e!3103752)))

(declare-fun c!847154 () Bool)

(assert (=> d!1597589 (= c!847154 (lostCause!1130 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun lt!2050252 () Unit!148334)

(declare-fun Unit!148351 () Unit!148334)

(assert (=> d!1597589 (= lt!2050252 Unit!148351)))

(assert (=> d!1597589 (= (getSuffix!3086 lt!2049571 Nil!57435) lt!2049571)))

(declare-fun lt!2050273 () Unit!148334)

(declare-fun lt!2050258 () Unit!148334)

(assert (=> d!1597589 (= lt!2050273 lt!2050258)))

(declare-fun lt!2050253 () List!57559)

(assert (=> d!1597589 (= lt!2049571 lt!2050253)))

(assert (=> d!1597589 (= lt!2050258 (lemmaSamePrefixThenSameSuffix!2498 Nil!57435 lt!2049571 Nil!57435 lt!2050253 lt!2049571))))

(assert (=> d!1597589 (= lt!2050253 (getSuffix!3086 lt!2049571 Nil!57435))))

(declare-fun lt!2050262 () Unit!148334)

(declare-fun lt!2050256 () Unit!148334)

(assert (=> d!1597589 (= lt!2050262 lt!2050256)))

(assert (=> d!1597589 (isPrefix!5242 Nil!57435 (++!12530 Nil!57435 lt!2049571))))

(assert (=> d!1597589 (= lt!2050256 (lemmaConcatTwoListThenFirstIsPrefix!3344 Nil!57435 lt!2049571))))

(assert (=> d!1597589 (validRegex!5967 (regex!8391 (h!63885 rulesArg!259)))))

(assert (=> d!1597589 (= (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571)) lt!2050254)))

(declare-fun b!4965439 () Bool)

(assert (=> b!4965439 (= e!3103755 lt!2050266)))

(declare-fun b!4965440 () Bool)

(declare-fun Unit!148352 () Unit!148334)

(assert (=> b!4965440 (= e!3103753 Unit!148352)))

(declare-fun b!4965441 () Bool)

(assert (=> b!4965441 (= e!3103752 (tuple2!62159 Nil!57435 lt!2049571))))

(declare-fun bm!346242 () Bool)

(assert (=> bm!346242 (= call!346243 (isPrefix!5242 lt!2049571 lt!2049571))))

(declare-fun b!4965442 () Bool)

(declare-fun c!847152 () Bool)

(assert (=> b!4965442 (= c!847152 call!346240)))

(declare-fun lt!2050260 () Unit!148334)

(declare-fun lt!2050268 () Unit!148334)

(assert (=> b!4965442 (= lt!2050260 lt!2050268)))

(assert (=> b!4965442 (= lt!2049571 Nil!57435)))

(assert (=> b!4965442 (= lt!2050268 call!346242)))

(declare-fun lt!2050272 () Unit!148334)

(declare-fun lt!2050264 () Unit!148334)

(assert (=> b!4965442 (= lt!2050272 lt!2050264)))

(assert (=> b!4965442 call!346243))

(assert (=> b!4965442 (= lt!2050264 call!346245)))

(assert (=> b!4965442 (= e!3103751 e!3103749)))

(declare-fun b!4965443 () Bool)

(assert (=> b!4965443 (= e!3103749 (tuple2!62159 Nil!57435 lt!2049571))))

(assert (= (and d!1597589 c!847154) b!4965441))

(assert (= (and d!1597589 (not c!847154)) b!4965431))

(assert (= (and b!4965431 c!847155) b!4965442))

(assert (= (and b!4965431 (not c!847155)) b!4965438))

(assert (= (and b!4965442 c!847152) b!4965432))

(assert (= (and b!4965442 (not c!847152)) b!4965443))

(assert (= (and b!4965438 c!847150) b!4965437))

(assert (= (and b!4965438 (not c!847150)) b!4965440))

(assert (= (and b!4965438 c!847151) b!4965430))

(assert (= (and b!4965438 (not c!847151)) b!4965433))

(assert (= (and b!4965430 c!847153) b!4965436))

(assert (= (and b!4965430 (not c!847153)) b!4965439))

(assert (= (or b!4965430 b!4965433) bm!346241))

(assert (= (or b!4965430 b!4965433) bm!346236))

(assert (= (or b!4965430 b!4965433) bm!346237))

(assert (= (or b!4965430 b!4965433) bm!346238))

(assert (= (or b!4965442 b!4965437) bm!346235))

(assert (= (or b!4965442 b!4965437) bm!346239))

(assert (= (or b!4965442 b!4965438) bm!346240))

(assert (= (or b!4965442 b!4965437) bm!346242))

(assert (= (and d!1597589 res!2119527) b!4965435))

(assert (= (and b!4965435 (not res!2119526)) b!4965434))

(assert (=> b!4965438 m!5988784))

(declare-fun m!5990316 () Bool)

(assert (=> b!4965438 m!5990316))

(declare-fun m!5990318 () Bool)

(assert (=> b!4965438 m!5990318))

(declare-fun m!5990320 () Bool)

(assert (=> b!4965438 m!5990320))

(declare-fun m!5990322 () Bool)

(assert (=> b!4965438 m!5990322))

(declare-fun m!5990324 () Bool)

(assert (=> b!4965438 m!5990324))

(declare-fun m!5990326 () Bool)

(assert (=> b!4965438 m!5990326))

(assert (=> b!4965438 m!5988708))

(declare-fun m!5990328 () Bool)

(assert (=> b!4965438 m!5990328))

(assert (=> b!4965438 m!5990316))

(assert (=> b!4965438 m!5990320))

(declare-fun m!5990330 () Bool)

(assert (=> b!4965438 m!5990330))

(assert (=> b!4965438 m!5988720))

(declare-fun m!5990332 () Bool)

(assert (=> b!4965438 m!5990332))

(assert (=> b!4965438 m!5988716))

(assert (=> b!4965438 m!5990322))

(declare-fun m!5990334 () Bool)

(assert (=> b!4965438 m!5990334))

(declare-fun m!5990336 () Bool)

(assert (=> b!4965430 m!5990336))

(assert (=> bm!346242 m!5988624))

(assert (=> bm!346241 m!5988720))

(declare-fun m!5990338 () Bool)

(assert (=> d!1597589 m!5990338))

(declare-fun m!5990340 () Bool)

(assert (=> d!1597589 m!5990340))

(assert (=> d!1597589 m!5989028))

(assert (=> d!1597589 m!5990320))

(declare-fun m!5990342 () Bool)

(assert (=> d!1597589 m!5990342))

(declare-fun m!5990344 () Bool)

(assert (=> d!1597589 m!5990344))

(assert (=> d!1597589 m!5989074))

(assert (=> d!1597589 m!5990340))

(declare-fun m!5990346 () Bool)

(assert (=> d!1597589 m!5990346))

(declare-fun m!5990348 () Bool)

(assert (=> b!4965434 m!5990348))

(assert (=> b!4965434 m!5988784))

(declare-fun m!5990350 () Bool)

(assert (=> b!4965435 m!5990350))

(assert (=> bm!346235 m!5988626))

(assert (=> bm!346236 m!5988716))

(assert (=> bm!346240 m!5989030))

(declare-fun m!5990352 () Bool)

(assert (=> bm!346237 m!5990352))

(assert (=> bm!346238 m!5988708))

(declare-fun m!5990354 () Bool)

(assert (=> bm!346238 m!5990354))

(declare-fun m!5990356 () Bool)

(assert (=> bm!346239 m!5990356))

(assert (=> b!4964774 d!1597589))

(declare-fun d!1597591 () Bool)

(assert (=> d!1597591 (= (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571)))) (is-Nil!57435 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571)))))))

(assert (=> b!4964774 d!1597591))

(assert (=> d!1597323 d!1597119))

(declare-fun d!1597593 () Bool)

(assert (=> d!1597593 (= (isEmpty!30925 lt!2049928) (not (is-Some!14444 lt!2049928)))))

(assert (=> d!1597267 d!1597593))

(declare-fun b!4965447 () Bool)

(declare-fun e!3103757 () Bool)

(assert (=> b!4965447 (= e!3103757 (>= (size!38064 (list!18359 input!1342)) (size!38064 (list!18359 input!1342))))))

(declare-fun b!4965446 () Bool)

(declare-fun e!3103756 () Bool)

(assert (=> b!4965446 (= e!3103756 (isPrefix!5242 (tail!9799 (list!18359 input!1342)) (tail!9799 (list!18359 input!1342))))))

(declare-fun b!4965444 () Bool)

(declare-fun e!3103758 () Bool)

(assert (=> b!4965444 (= e!3103758 e!3103756)))

(declare-fun res!2119529 () Bool)

(assert (=> b!4965444 (=> (not res!2119529) (not e!3103756))))

(assert (=> b!4965444 (= res!2119529 (not (is-Nil!57435 (list!18359 input!1342))))))

(declare-fun d!1597595 () Bool)

(assert (=> d!1597595 e!3103757))

(declare-fun res!2119528 () Bool)

(assert (=> d!1597595 (=> res!2119528 e!3103757)))

(declare-fun lt!2050278 () Bool)

(assert (=> d!1597595 (= res!2119528 (not lt!2050278))))

(assert (=> d!1597595 (= lt!2050278 e!3103758)))

(declare-fun res!2119531 () Bool)

(assert (=> d!1597595 (=> res!2119531 e!3103758)))

(assert (=> d!1597595 (= res!2119531 (is-Nil!57435 (list!18359 input!1342)))))

(assert (=> d!1597595 (= (isPrefix!5242 (list!18359 input!1342) (list!18359 input!1342)) lt!2050278)))

(declare-fun b!4965445 () Bool)

(declare-fun res!2119530 () Bool)

(assert (=> b!4965445 (=> (not res!2119530) (not e!3103756))))

(assert (=> b!4965445 (= res!2119530 (= (head!10666 (list!18359 input!1342)) (head!10666 (list!18359 input!1342))))))

(assert (= (and d!1597595 (not res!2119531)) b!4965444))

(assert (= (and b!4965444 res!2119529) b!4965445))

(assert (= (and b!4965445 res!2119530) b!4965446))

(assert (= (and d!1597595 (not res!2119528)) b!4965447))

(assert (=> b!4965447 m!5988632))

(assert (=> b!4965447 m!5989126))

(assert (=> b!4965447 m!5988632))

(assert (=> b!4965447 m!5989126))

(assert (=> b!4965446 m!5988632))

(assert (=> b!4965446 m!5990212))

(assert (=> b!4965446 m!5988632))

(assert (=> b!4965446 m!5990212))

(assert (=> b!4965446 m!5990212))

(assert (=> b!4965446 m!5990212))

(declare-fun m!5990358 () Bool)

(assert (=> b!4965446 m!5990358))

(assert (=> b!4965445 m!5988632))

(assert (=> b!4965445 m!5990208))

(assert (=> b!4965445 m!5988632))

(assert (=> b!4965445 m!5990208))

(assert (=> d!1597267 d!1597595))

(declare-fun d!1597597 () Bool)

(assert (=> d!1597597 (isPrefix!5242 (list!18359 input!1342) (list!18359 input!1342))))

(declare-fun lt!2050279 () Unit!148334)

(assert (=> d!1597597 (= lt!2050279 (choose!36651 (list!18359 input!1342) (list!18359 input!1342)))))

(assert (=> d!1597597 (= (lemmaIsPrefixRefl!3566 (list!18359 input!1342) (list!18359 input!1342)) lt!2050279)))

(declare-fun bs!1182961 () Bool)

(assert (= bs!1182961 d!1597597))

(assert (=> bs!1182961 m!5988632))

(assert (=> bs!1182961 m!5988632))

(assert (=> bs!1182961 m!5989246))

(assert (=> bs!1182961 m!5988632))

(assert (=> bs!1182961 m!5988632))

(declare-fun m!5990360 () Bool)

(assert (=> bs!1182961 m!5990360))

(assert (=> d!1597267 d!1597597))

(assert (=> d!1597267 d!1597313))

(declare-fun d!1597599 () Bool)

(declare-fun c!847158 () Bool)

(assert (=> d!1597599 (= c!847158 (is-Nil!57435 lt!2049990))))

(declare-fun e!3103761 () (Set C!27498))

(assert (=> d!1597599 (= (content!10180 lt!2049990) e!3103761)))

(declare-fun b!4965452 () Bool)

(assert (=> b!4965452 (= e!3103761 (as set.empty (Set C!27498)))))

(declare-fun b!4965453 () Bool)

(assert (=> b!4965453 (= e!3103761 (set.union (set.insert (h!63883 lt!2049990) (as set.empty (Set C!27498))) (content!10180 (t!368225 lt!2049990))))))

(assert (= (and d!1597599 c!847158) b!4965452))

(assert (= (and d!1597599 (not c!847158)) b!4965453))

(declare-fun m!5990362 () Bool)

(assert (=> b!4965453 m!5990362))

(declare-fun m!5990364 () Bool)

(assert (=> b!4965453 m!5990364))

(assert (=> d!1597329 d!1597599))

(declare-fun d!1597601 () Bool)

(declare-fun c!847159 () Bool)

(assert (=> d!1597601 (= c!847159 (is-Nil!57435 (list!18359 totalInput!464)))))

(declare-fun e!3103762 () (Set C!27498))

(assert (=> d!1597601 (= (content!10180 (list!18359 totalInput!464)) e!3103762)))

(declare-fun b!4965454 () Bool)

(assert (=> b!4965454 (= e!3103762 (as set.empty (Set C!27498)))))

(declare-fun b!4965455 () Bool)

(assert (=> b!4965455 (= e!3103762 (set.union (set.insert (h!63883 (list!18359 totalInput!464)) (as set.empty (Set C!27498))) (content!10180 (t!368225 (list!18359 totalInput!464)))))))

(assert (= (and d!1597601 c!847159) b!4965454))

(assert (= (and d!1597601 (not c!847159)) b!4965455))

(declare-fun m!5990366 () Bool)

(assert (=> b!4965455 m!5990366))

(declare-fun m!5990368 () Bool)

(assert (=> b!4965455 m!5990368))

(assert (=> d!1597329 d!1597601))

(declare-fun d!1597603 () Bool)

(declare-fun lt!2050285 () Option!14445)

(assert (=> d!1597603 (= lt!2050285 (maxPrefixOneRule!3627 thiss!15247 (h!63885 (t!368227 rulesArg!259)) (list!18359 input!1342)))))

(declare-fun e!3103764 () Option!14445)

(assert (=> d!1597603 (= lt!2050285 e!3103764)))

(declare-fun c!847160 () Bool)

(declare-fun lt!2050280 () tuple2!62158)

(assert (=> d!1597603 (= c!847160 (isEmpty!30923 (_1!34382 lt!2050280)))))

(assert (=> d!1597603 (= lt!2050280 (findLongestMatchWithZipper!92 (regex!8391 (h!63885 (t!368227 rulesArg!259))) (list!18359 input!1342)))))

(assert (=> d!1597603 (ruleValid!3800 thiss!15247 (h!63885 (t!368227 rulesArg!259)))))

(assert (=> d!1597603 (= (maxPrefixOneRuleZipper!294 thiss!15247 (h!63885 (t!368227 rulesArg!259)) (list!18359 input!1342)) lt!2050285)))

(declare-fun b!4965456 () Bool)

(assert (=> b!4965456 (= e!3103764 None!14444)))

(declare-fun b!4965457 () Bool)

(assert (=> b!4965457 (= e!3103764 (Some!14444 (tuple2!62151 (Token!15279 (apply!13902 (transformation!8391 (h!63885 (t!368227 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2050280))) (h!63885 (t!368227 rulesArg!259)) (size!38064 (_1!34382 lt!2050280)) (_1!34382 lt!2050280)) (_2!34382 lt!2050280))))))

(declare-fun lt!2050281 () Unit!148334)

(assert (=> b!4965457 (= lt!2050281 (longestMatchIsAcceptedByMatchOrIsEmpty!1814 (regex!8391 (h!63885 (t!368227 rulesArg!259))) (list!18359 input!1342)))))

(declare-fun res!2119532 () Bool)

(assert (=> b!4965457 (= res!2119532 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) (list!18359 input!1342) (list!18359 input!1342) (size!38064 (list!18359 input!1342))))))))

(declare-fun e!3103763 () Bool)

(assert (=> b!4965457 (=> res!2119532 e!3103763)))

(assert (=> b!4965457 e!3103763))

(declare-fun lt!2050284 () Unit!148334)

(assert (=> b!4965457 (= lt!2050284 lt!2050281)))

(declare-fun lt!2050282 () Unit!148334)

(assert (=> b!4965457 (= lt!2050282 (lemmaInv!1332 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))))))

(declare-fun lt!2050283 () Unit!148334)

(assert (=> b!4965457 (= lt!2050283 (lemmaSemiInverse!2600 (transformation!8391 (h!63885 (t!368227 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2050280))))))

(declare-fun b!4965458 () Bool)

(assert (=> b!4965458 (= e!3103763 (matchR!6634 (regex!8391 (h!63885 (t!368227 rulesArg!259))) (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) (list!18359 input!1342) (list!18359 input!1342) (size!38064 (list!18359 input!1342))))))))

(assert (= (and d!1597603 c!847160) b!4965456))

(assert (= (and d!1597603 (not c!847160)) b!4965457))

(assert (= (and b!4965457 (not res!2119532)) b!4965458))

(assert (=> d!1597603 m!5988632))

(assert (=> d!1597603 m!5989264))

(declare-fun m!5990370 () Bool)

(assert (=> d!1597603 m!5990370))

(assert (=> d!1597603 m!5988632))

(declare-fun m!5990372 () Bool)

(assert (=> d!1597603 m!5990372))

(assert (=> d!1597603 m!5989330))

(declare-fun m!5990374 () Bool)

(assert (=> b!4965457 m!5990374))

(assert (=> b!4965457 m!5988784))

(assert (=> b!4965457 m!5988632))

(assert (=> b!4965457 m!5988632))

(assert (=> b!4965457 m!5989126))

(declare-fun m!5990376 () Bool)

(assert (=> b!4965457 m!5990376))

(assert (=> b!4965457 m!5988784))

(assert (=> b!4965457 m!5989348))

(assert (=> b!4965457 m!5988632))

(declare-fun m!5990378 () Bool)

(assert (=> b!4965457 m!5990378))

(declare-fun m!5990380 () Bool)

(assert (=> b!4965457 m!5990380))

(assert (=> b!4965457 m!5990374))

(declare-fun m!5990382 () Bool)

(assert (=> b!4965457 m!5990382))

(declare-fun m!5990384 () Bool)

(assert (=> b!4965457 m!5990384))

(assert (=> b!4965457 m!5988632))

(assert (=> b!4965457 m!5989126))

(assert (=> b!4965457 m!5990374))

(declare-fun m!5990386 () Bool)

(assert (=> b!4965457 m!5990386))

(assert (=> b!4965458 m!5988784))

(assert (=> b!4965458 m!5988632))

(assert (=> b!4965458 m!5989126))

(assert (=> b!4965458 m!5988784))

(assert (=> b!4965458 m!5988632))

(assert (=> b!4965458 m!5988632))

(assert (=> b!4965458 m!5989126))

(assert (=> b!4965458 m!5990376))

(declare-fun m!5990388 () Bool)

(assert (=> b!4965458 m!5990388))

(assert (=> bm!346174 d!1597603))

(declare-fun d!1597605 () Bool)

(declare-fun res!2119533 () Bool)

(declare-fun e!3103765 () Bool)

(assert (=> d!1597605 (=> res!2119533 e!3103765)))

(assert (=> d!1597605 (= res!2119533 (is-Nil!57437 (t!368227 rulesArg!259)))))

(assert (=> d!1597605 (= (forall!13326 (t!368227 rulesArg!259) lambda!247319) e!3103765)))

(declare-fun b!4965459 () Bool)

(declare-fun e!3103766 () Bool)

(assert (=> b!4965459 (= e!3103765 e!3103766)))

(declare-fun res!2119534 () Bool)

(assert (=> b!4965459 (=> (not res!2119534) (not e!3103766))))

(assert (=> b!4965459 (= res!2119534 (dynLambda!23148 lambda!247319 (h!63885 (t!368227 rulesArg!259))))))

(declare-fun b!4965460 () Bool)

(assert (=> b!4965460 (= e!3103766 (forall!13326 (t!368227 (t!368227 rulesArg!259)) lambda!247319))))

(assert (= (and d!1597605 (not res!2119533)) b!4965459))

(assert (= (and b!4965459 res!2119534) b!4965460))

(declare-fun b_lambda!196631 () Bool)

(assert (=> (not b_lambda!196631) (not b!4965459)))

(declare-fun m!5990390 () Bool)

(assert (=> b!4965459 m!5990390))

(declare-fun m!5990392 () Bool)

(assert (=> b!4965460 m!5990392))

(assert (=> d!1597313 d!1597605))

(assert (=> d!1597205 d!1597243))

(assert (=> d!1597205 d!1597119))

(assert (=> d!1597205 d!1597121))

(assert (=> d!1597205 d!1597313))

(declare-fun d!1597607 () Bool)

(assert (=> d!1597607 (= (inv!75067 (xs!18469 (left!41893 (c!846918 input!1342)))) (<= (size!38064 (innerList!15231 (xs!18469 (left!41893 (c!846918 input!1342))))) 2147483647))))

(declare-fun bs!1182962 () Bool)

(assert (= bs!1182962 d!1597607))

(declare-fun m!5990394 () Bool)

(assert (=> bs!1182962 m!5990394))

(assert (=> b!4964966 d!1597607))

(declare-fun d!1597609 () Bool)

(declare-fun lt!2050288 () Bool)

(assert (=> d!1597609 (= lt!2050288 (isEmpty!30923 (list!18361 (right!42223 (c!846918 totalInput!464)))))))

(assert (=> d!1597609 (= lt!2050288 (= (size!38068 (right!42223 (c!846918 totalInput!464))) 0))))

(assert (=> d!1597609 (= (isEmpty!30929 (right!42223 (c!846918 totalInput!464))) lt!2050288)))

(declare-fun bs!1182963 () Bool)

(assert (= bs!1182963 d!1597609))

(assert (=> bs!1182963 m!5989314))

(assert (=> bs!1182963 m!5989314))

(declare-fun m!5990396 () Bool)

(assert (=> bs!1182963 m!5990396))

(assert (=> bs!1182963 m!5989216))

(assert (=> b!4964653 d!1597609))

(declare-fun d!1597611 () Bool)

(declare-fun nullableFct!1252 (Regex!13624) Bool)

(assert (=> d!1597611 (= (nullable!4618 (regex!8391 (h!63885 rulesArg!259))) (nullableFct!1252 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun bs!1182964 () Bool)

(assert (= bs!1182964 d!1597611))

(declare-fun m!5990398 () Bool)

(assert (=> bs!1182964 m!5990398))

(assert (=> b!4964564 d!1597611))

(assert (=> d!1597289 d!1597303))

(declare-fun d!1597613 () Bool)

(assert (=> d!1597613 (= (isEmpty!30923 (_1!34382 lt!2049965)) (is-Nil!57435 (_1!34382 lt!2049965)))))

(assert (=> d!1597289 d!1597613))

(declare-fun d!1597615 () Bool)

(declare-fun lt!2050308 () tuple2!62158)

(assert (=> d!1597615 (= lt!2050308 (findLongestMatch!1695 (regex!8391 (h!63885 rulesArg!259)) lt!2049571))))

(declare-datatypes ((List!57565 0))(
  ( (Nil!57441) (Cons!57441 (h!63889 Regex!13624) (t!368466 List!57565)) )
))
(declare-datatypes ((Context!6276 0))(
  ( (Context!6277 (exprs!3638 List!57565)) )
))
(declare-fun lt!2050305 () (Set Context!6276))

(declare-fun findLongestMatchZipper!20 ((Set Context!6276) List!57559) tuple2!62158)

(assert (=> d!1597615 (= lt!2050308 (findLongestMatchZipper!20 lt!2050305 lt!2049571))))

(declare-fun lt!2050309 () Unit!148334)

(declare-fun lt!2050306 () Unit!148334)

(assert (=> d!1597615 (= lt!2050309 lt!2050306)))

(declare-fun lt!2050307 () Int)

(declare-fun sizeTr!359 (List!57559 Int) Int)

(assert (=> d!1597615 (= (sizeTr!359 lt!2049571 lt!2050307) (+ (size!38064 lt!2049571) lt!2050307))))

(declare-fun lemmaSizeTrEqualsSize!358 (List!57559 Int) Unit!148334)

(assert (=> d!1597615 (= lt!2050306 (lemmaSizeTrEqualsSize!358 lt!2049571 lt!2050307))))

(assert (=> d!1597615 (= lt!2050307 0)))

(declare-fun lt!2050304 () Unit!148334)

(declare-fun lt!2050303 () Unit!148334)

(assert (=> d!1597615 (= lt!2050304 lt!2050303)))

(assert (=> d!1597615 (= (findLongestMatchZipper!20 lt!2050305 lt!2049571) (findLongestMatch!1695 (regex!8391 (h!63885 rulesArg!259)) lt!2049571))))

(declare-fun longestMatchSameAsRegex!17 (Regex!13624 (Set Context!6276) List!57559) Unit!148334)

(assert (=> d!1597615 (= lt!2050303 (longestMatchSameAsRegex!17 (regex!8391 (h!63885 rulesArg!259)) lt!2050305 lt!2049571))))

(declare-fun focus!346 (Regex!13624) (Set Context!6276))

(assert (=> d!1597615 (= lt!2050305 (focus!346 (regex!8391 (h!63885 rulesArg!259))))))

(assert (=> d!1597615 (validRegex!5967 (regex!8391 (h!63885 rulesArg!259)))))

(assert (=> d!1597615 (= (findLongestMatchWithZipper!92 (regex!8391 (h!63885 rulesArg!259)) lt!2049571) lt!2050308)))

(declare-fun bs!1182965 () Bool)

(assert (= bs!1182965 d!1597615))

(declare-fun m!5990400 () Bool)

(assert (=> bs!1182965 m!5990400))

(declare-fun m!5990402 () Bool)

(assert (=> bs!1182965 m!5990402))

(assert (=> bs!1182965 m!5989028))

(assert (=> bs!1182965 m!5989414))

(assert (=> bs!1182965 m!5988708))

(declare-fun m!5990404 () Bool)

(assert (=> bs!1182965 m!5990404))

(declare-fun m!5990406 () Bool)

(assert (=> bs!1182965 m!5990406))

(declare-fun m!5990408 () Bool)

(assert (=> bs!1182965 m!5990408))

(assert (=> d!1597289 d!1597615))

(assert (=> d!1597289 d!1597227))

(declare-fun d!1597617 () Bool)

(declare-fun e!3103770 () Bool)

(assert (=> d!1597617 e!3103770))

(declare-fun res!2119536 () Bool)

(assert (=> d!1597617 (=> (not res!2119536) (not e!3103770))))

(declare-fun lt!2050313 () Option!14446)

(assert (=> d!1597617 (= res!2119536 (= (isDefined!11360 lt!2050313) (isDefined!11358 (maxPrefixZipper!784 thiss!15247 (t!368227 (t!368227 (t!368227 rulesArg!259))) (list!18359 input!1342)))))))

(declare-fun e!3103769 () Option!14446)

(assert (=> d!1597617 (= lt!2050313 e!3103769)))

(declare-fun c!847161 () Bool)

(assert (=> d!1597617 (= c!847161 (and (is-Cons!57437 (t!368227 (t!368227 (t!368227 rulesArg!259)))) (is-Nil!57437 (t!368227 (t!368227 (t!368227 (t!368227 rulesArg!259)))))))))

(declare-fun lt!2050311 () Unit!148334)

(declare-fun lt!2050312 () Unit!148334)

(assert (=> d!1597617 (= lt!2050311 lt!2050312)))

(declare-fun lt!2050310 () List!57559)

(declare-fun lt!2050316 () List!57559)

(assert (=> d!1597617 (isPrefix!5242 lt!2050310 lt!2050316)))

(assert (=> d!1597617 (= lt!2050312 (lemmaIsPrefixRefl!3566 lt!2050310 lt!2050316))))

(assert (=> d!1597617 (= lt!2050316 (list!18359 input!1342))))

(assert (=> d!1597617 (= lt!2050310 (list!18359 input!1342))))

(assert (=> d!1597617 (rulesValidInductive!3294 thiss!15247 (t!368227 (t!368227 (t!368227 rulesArg!259))))))

(assert (=> d!1597617 (= (maxPrefixZipperSequenceV2!702 thiss!15247 (t!368227 (t!368227 (t!368227 rulesArg!259))) input!1342 totalInput!464) lt!2050313)))

(declare-fun e!3103768 () Bool)

(declare-fun b!4965461 () Bool)

(assert (=> b!4965461 (= e!3103768 (= (list!18359 (_2!34377 (get!19936 lt!2050313))) (_2!34378 (get!19935 (maxPrefix!4658 thiss!15247 (t!368227 (t!368227 (t!368227 rulesArg!259))) (list!18359 input!1342))))))))

(declare-fun b!4965462 () Bool)

(declare-fun e!3103772 () Bool)

(assert (=> b!4965462 (= e!3103772 e!3103768)))

(declare-fun res!2119535 () Bool)

(assert (=> b!4965462 (=> (not res!2119535) (not e!3103768))))

(assert (=> b!4965462 (= res!2119535 (= (_1!34377 (get!19936 lt!2050313)) (_1!34378 (get!19935 (maxPrefix!4658 thiss!15247 (t!368227 (t!368227 (t!368227 rulesArg!259))) (list!18359 input!1342))))))))

(declare-fun b!4965463 () Bool)

(declare-fun call!346248 () Option!14446)

(assert (=> b!4965463 (= e!3103769 call!346248)))

(declare-fun b!4965464 () Bool)

(declare-fun lt!2050314 () Option!14446)

(declare-fun lt!2050315 () Option!14446)

(assert (=> b!4965464 (= e!3103769 (ite (and (is-None!14445 lt!2050314) (is-None!14445 lt!2050315)) None!14445 (ite (is-None!14445 lt!2050315) lt!2050314 (ite (is-None!14445 lt!2050314) lt!2050315 (ite (>= (size!38062 (_1!34377 (v!50432 lt!2050314))) (size!38062 (_1!34377 (v!50432 lt!2050315)))) lt!2050314 lt!2050315)))))))

(assert (=> b!4965464 (= lt!2050314 call!346248)))

(assert (=> b!4965464 (= lt!2050315 (maxPrefixZipperSequenceV2!702 thiss!15247 (t!368227 (t!368227 (t!368227 (t!368227 rulesArg!259)))) input!1342 totalInput!464))))

(declare-fun b!4965465 () Bool)

(assert (=> b!4965465 (= e!3103770 e!3103772)))

(declare-fun res!2119539 () Bool)

(assert (=> b!4965465 (=> res!2119539 e!3103772)))

(assert (=> b!4965465 (= res!2119539 (not (isDefined!11360 lt!2050313)))))

(declare-fun b!4965466 () Bool)

(declare-fun res!2119537 () Bool)

(assert (=> b!4965466 (=> (not res!2119537) (not e!3103770))))

(declare-fun e!3103771 () Bool)

(assert (=> b!4965466 (= res!2119537 e!3103771)))

(declare-fun res!2119538 () Bool)

(assert (=> b!4965466 (=> res!2119538 e!3103771)))

(assert (=> b!4965466 (= res!2119538 (not (isDefined!11360 lt!2050313)))))

(declare-fun b!4965467 () Bool)

(declare-fun e!3103767 () Bool)

(assert (=> b!4965467 (= e!3103771 e!3103767)))

(declare-fun res!2119540 () Bool)

(assert (=> b!4965467 (=> (not res!2119540) (not e!3103767))))

(assert (=> b!4965467 (= res!2119540 (= (_1!34377 (get!19936 lt!2050313)) (_1!34378 (get!19935 (maxPrefixZipper!784 thiss!15247 (t!368227 (t!368227 (t!368227 rulesArg!259))) (list!18359 input!1342))))))))

(declare-fun b!4965468 () Bool)

(assert (=> b!4965468 (= e!3103767 (= (list!18359 (_2!34377 (get!19936 lt!2050313))) (_2!34378 (get!19935 (maxPrefixZipper!784 thiss!15247 (t!368227 (t!368227 (t!368227 rulesArg!259))) (list!18359 input!1342))))))))

(declare-fun bm!346243 () Bool)

(assert (=> bm!346243 (= call!346248 (maxPrefixOneRuleZipperSequenceV2!359 thiss!15247 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))) input!1342 totalInput!464))))

(assert (= (and d!1597617 c!847161) b!4965463))

(assert (= (and d!1597617 (not c!847161)) b!4965464))

(assert (= (or b!4965463 b!4965464) bm!346243))

(assert (= (and d!1597617 res!2119536) b!4965466))

(assert (= (and b!4965466 (not res!2119538)) b!4965467))

(assert (= (and b!4965467 res!2119540) b!4965468))

(assert (= (and b!4965466 res!2119537) b!4965465))

(assert (= (and b!4965465 (not res!2119539)) b!4965462))

(assert (= (and b!4965462 res!2119535) b!4965461))

(assert (=> b!4965468 m!5988632))

(declare-fun m!5990410 () Bool)

(assert (=> b!4965468 m!5990410))

(declare-fun m!5990412 () Bool)

(assert (=> b!4965468 m!5990412))

(declare-fun m!5990414 () Bool)

(assert (=> b!4965468 m!5990414))

(assert (=> b!4965468 m!5988632))

(assert (=> b!4965468 m!5990410))

(declare-fun m!5990416 () Bool)

(assert (=> b!4965468 m!5990416))

(declare-fun m!5990418 () Bool)

(assert (=> d!1597617 m!5990418))

(assert (=> d!1597617 m!5988632))

(assert (=> d!1597617 m!5990410))

(assert (=> d!1597617 m!5990410))

(declare-fun m!5990420 () Bool)

(assert (=> d!1597617 m!5990420))

(declare-fun m!5990422 () Bool)

(assert (=> d!1597617 m!5990422))

(assert (=> d!1597617 m!5988632))

(declare-fun m!5990424 () Bool)

(assert (=> d!1597617 m!5990424))

(declare-fun m!5990426 () Bool)

(assert (=> d!1597617 m!5990426))

(declare-fun m!5990428 () Bool)

(assert (=> bm!346243 m!5990428))

(assert (=> b!4965466 m!5990424))

(assert (=> b!4965462 m!5990414))

(assert (=> b!4965462 m!5988632))

(assert (=> b!4965462 m!5988632))

(declare-fun m!5990430 () Bool)

(assert (=> b!4965462 m!5990430))

(assert (=> b!4965462 m!5990430))

(declare-fun m!5990432 () Bool)

(assert (=> b!4965462 m!5990432))

(declare-fun m!5990434 () Bool)

(assert (=> b!4965464 m!5990434))

(assert (=> b!4965465 m!5990424))

(assert (=> b!4965461 m!5990430))

(assert (=> b!4965461 m!5990432))

(assert (=> b!4965461 m!5988632))

(assert (=> b!4965461 m!5990430))

(assert (=> b!4965461 m!5990412))

(assert (=> b!4965461 m!5990414))

(assert (=> b!4965461 m!5988632))

(assert (=> b!4965467 m!5990414))

(assert (=> b!4965467 m!5988632))

(assert (=> b!4965467 m!5988632))

(assert (=> b!4965467 m!5990410))

(assert (=> b!4965467 m!5990410))

(assert (=> b!4965467 m!5990416))

(assert (=> b!4964735 d!1597617))

(declare-fun d!1597619 () Bool)

(assert (=> d!1597619 (= (height!2011 (left!41893 (c!846918 input!1342))) (ite (is-Empty!15143 (left!41893 (c!846918 input!1342))) 0 (ite (is-Leaf!25164 (left!41893 (c!846918 input!1342))) 1 (cheight!15354 (left!41893 (c!846918 input!1342))))))))

(assert (=> b!4964709 d!1597619))

(declare-fun d!1597621 () Bool)

(assert (=> d!1597621 (= (height!2011 (right!42223 (c!846918 input!1342))) (ite (is-Empty!15143 (right!42223 (c!846918 input!1342))) 0 (ite (is-Leaf!25164 (right!42223 (c!846918 input!1342))) 1 (cheight!15354 (right!42223 (c!846918 input!1342))))))))

(assert (=> b!4964709 d!1597621))

(assert (=> d!1597207 d!1597541))

(assert (=> d!1597207 d!1597543))

(declare-fun d!1597623 () Bool)

(declare-fun lt!2050317 () Int)

(assert (=> d!1597623 (>= lt!2050317 0)))

(declare-fun e!3103773 () Int)

(assert (=> d!1597623 (= lt!2050317 e!3103773)))

(declare-fun c!847162 () Bool)

(assert (=> d!1597623 (= c!847162 (is-Nil!57435 (t!368225 (list!18359 totalInput!464))))))

(assert (=> d!1597623 (= (size!38064 (t!368225 (list!18359 totalInput!464))) lt!2050317)))

(declare-fun b!4965469 () Bool)

(assert (=> b!4965469 (= e!3103773 0)))

(declare-fun b!4965470 () Bool)

(assert (=> b!4965470 (= e!3103773 (+ 1 (size!38064 (t!368225 (t!368225 (list!18359 totalInput!464))))))))

(assert (= (and d!1597623 c!847162) b!4965469))

(assert (= (and d!1597623 (not c!847162)) b!4965470))

(declare-fun m!5990436 () Bool)

(assert (=> b!4965470 m!5990436))

(assert (=> b!4964718 d!1597623))

(declare-fun d!1597625 () Bool)

(assert (=> d!1597625 (= (head!10666 (getSuffix!3086 lt!2049672 Nil!57435)) (h!63883 (getSuffix!3086 lt!2049672 Nil!57435)))))

(assert (=> b!4964608 d!1597625))

(declare-fun b!4965474 () Bool)

(declare-fun e!3103775 () Bool)

(assert (=> b!4965474 (= e!3103775 (>= (size!38064 lt!2049672) (size!38064 (++!12530 Nil!57435 (Cons!57435 (head!10666 (getSuffix!3086 lt!2049672 Nil!57435)) Nil!57435)))))))

(declare-fun b!4965473 () Bool)

(declare-fun e!3103774 () Bool)

(assert (=> b!4965473 (= e!3103774 (isPrefix!5242 (tail!9799 (++!12530 Nil!57435 (Cons!57435 (head!10666 (getSuffix!3086 lt!2049672 Nil!57435)) Nil!57435))) (tail!9799 lt!2049672)))))

(declare-fun b!4965471 () Bool)

(declare-fun e!3103776 () Bool)

(assert (=> b!4965471 (= e!3103776 e!3103774)))

(declare-fun res!2119542 () Bool)

(assert (=> b!4965471 (=> (not res!2119542) (not e!3103774))))

(assert (=> b!4965471 (= res!2119542 (not (is-Nil!57435 lt!2049672)))))

(declare-fun d!1597627 () Bool)

(assert (=> d!1597627 e!3103775))

(declare-fun res!2119541 () Bool)

(assert (=> d!1597627 (=> res!2119541 e!3103775)))

(declare-fun lt!2050318 () Bool)

(assert (=> d!1597627 (= res!2119541 (not lt!2050318))))

(assert (=> d!1597627 (= lt!2050318 e!3103776)))

(declare-fun res!2119544 () Bool)

(assert (=> d!1597627 (=> res!2119544 e!3103776)))

(assert (=> d!1597627 (= res!2119544 (is-Nil!57435 (++!12530 Nil!57435 (Cons!57435 (head!10666 (getSuffix!3086 lt!2049672 Nil!57435)) Nil!57435))))))

(assert (=> d!1597627 (= (isPrefix!5242 (++!12530 Nil!57435 (Cons!57435 (head!10666 (getSuffix!3086 lt!2049672 Nil!57435)) Nil!57435)) lt!2049672) lt!2050318)))

(declare-fun b!4965472 () Bool)

(declare-fun res!2119543 () Bool)

(assert (=> b!4965472 (=> (not res!2119543) (not e!3103774))))

(assert (=> b!4965472 (= res!2119543 (= (head!10666 (++!12530 Nil!57435 (Cons!57435 (head!10666 (getSuffix!3086 lt!2049672 Nil!57435)) Nil!57435))) (head!10666 lt!2049672)))))

(assert (= (and d!1597627 (not res!2119544)) b!4965471))

(assert (= (and b!4965471 res!2119542) b!4965472))

(assert (= (and b!4965472 res!2119543) b!4965473))

(assert (= (and d!1597627 (not res!2119541)) b!4965474))

(assert (=> b!4965474 m!5988786))

(assert (=> b!4965474 m!5989044))

(declare-fun m!5990438 () Bool)

(assert (=> b!4965474 m!5990438))

(assert (=> b!4965473 m!5989044))

(declare-fun m!5990440 () Bool)

(assert (=> b!4965473 m!5990440))

(assert (=> b!4965473 m!5989058))

(assert (=> b!4965473 m!5990440))

(assert (=> b!4965473 m!5989058))

(declare-fun m!5990442 () Bool)

(assert (=> b!4965473 m!5990442))

(assert (=> b!4965472 m!5989044))

(declare-fun m!5990444 () Bool)

(assert (=> b!4965472 m!5990444))

(assert (=> b!4965472 m!5989054))

(assert (=> b!4964608 d!1597627))

(declare-fun d!1597629 () Bool)

(assert (=> d!1597629 (<= (size!38064 Nil!57435) (size!38064 lt!2049672))))

(declare-fun lt!2050321 () Unit!148334)

(declare-fun choose!36659 (List!57559 List!57559) Unit!148334)

(assert (=> d!1597629 (= lt!2050321 (choose!36659 Nil!57435 lt!2049672))))

(assert (=> d!1597629 (isPrefix!5242 Nil!57435 lt!2049672)))

(assert (=> d!1597629 (= (lemmaIsPrefixThenSmallerEqSize!759 Nil!57435 lt!2049672) lt!2050321)))

(declare-fun bs!1182966 () Bool)

(assert (= bs!1182966 d!1597629))

(assert (=> bs!1182966 m!5988784))

(assert (=> bs!1182966 m!5988786))

(declare-fun m!5990446 () Bool)

(assert (=> bs!1182966 m!5990446))

(declare-fun m!5990448 () Bool)

(assert (=> bs!1182966 m!5990448))

(assert (=> b!4964608 d!1597629))

(declare-fun d!1597631 () Bool)

(assert (=> d!1597631 (isPrefix!5242 (++!12530 Nil!57435 (Cons!57435 (head!10666 (getSuffix!3086 lt!2049672 Nil!57435)) Nil!57435)) lt!2049672)))

(declare-fun lt!2050324 () Unit!148334)

(declare-fun choose!36660 (List!57559 List!57559) Unit!148334)

(assert (=> d!1597631 (= lt!2050324 (choose!36660 Nil!57435 lt!2049672))))

(assert (=> d!1597631 (isPrefix!5242 Nil!57435 lt!2049672)))

(assert (=> d!1597631 (= (lemmaAddHeadSuffixToPrefixStillPrefix!833 Nil!57435 lt!2049672) lt!2050324)))

(declare-fun bs!1182967 () Bool)

(assert (= bs!1182967 d!1597631))

(assert (=> bs!1182967 m!5989044))

(assert (=> bs!1182967 m!5989060))

(assert (=> bs!1182967 m!5989044))

(assert (=> bs!1182967 m!5989042))

(assert (=> bs!1182967 m!5989052))

(declare-fun m!5990450 () Bool)

(assert (=> bs!1182967 m!5990450))

(assert (=> bs!1182967 m!5989042))

(assert (=> bs!1182967 m!5990448))

(assert (=> b!4964608 d!1597631))

(declare-fun d!1597633 () Bool)

(assert (=> d!1597633 (= (++!12530 (++!12530 Nil!57435 (Cons!57435 lt!2049883 Nil!57435)) lt!2049882) lt!2049672)))

(declare-fun lt!2050327 () Unit!148334)

(declare-fun choose!36661 (List!57559 C!27498 List!57559 List!57559) Unit!148334)

(assert (=> d!1597633 (= lt!2050327 (choose!36661 Nil!57435 lt!2049883 lt!2049882 lt!2049672))))

(assert (=> d!1597633 (= (++!12530 Nil!57435 (Cons!57435 lt!2049883 lt!2049882)) lt!2049672)))

(assert (=> d!1597633 (= (lemmaMoveElementToOtherListKeepsConcatEq!1443 Nil!57435 lt!2049883 lt!2049882 lt!2049672) lt!2050327)))

(declare-fun bs!1182968 () Bool)

(assert (= bs!1182968 d!1597633))

(assert (=> bs!1182968 m!5989038))

(assert (=> bs!1182968 m!5989038))

(assert (=> bs!1182968 m!5989040))

(declare-fun m!5990452 () Bool)

(assert (=> bs!1182968 m!5990452))

(declare-fun m!5990454 () Bool)

(assert (=> bs!1182968 m!5990454))

(assert (=> b!4964608 d!1597633))

(assert (=> b!4964608 d!1597203))

(declare-fun b!4965475 () Bool)

(declare-fun e!3103778 () List!57559)

(assert (=> b!4965475 (= e!3103778 (Cons!57435 (head!10666 (getSuffix!3086 lt!2049672 Nil!57435)) Nil!57435))))

(declare-fun b!4965477 () Bool)

(declare-fun res!2119545 () Bool)

(declare-fun e!3103777 () Bool)

(assert (=> b!4965477 (=> (not res!2119545) (not e!3103777))))

(declare-fun lt!2050328 () List!57559)

(assert (=> b!4965477 (= res!2119545 (= (size!38064 lt!2050328) (+ (size!38064 Nil!57435) (size!38064 (Cons!57435 (head!10666 (getSuffix!3086 lt!2049672 Nil!57435)) Nil!57435)))))))

(declare-fun b!4965478 () Bool)

(assert (=> b!4965478 (= e!3103777 (or (not (= (Cons!57435 (head!10666 (getSuffix!3086 lt!2049672 Nil!57435)) Nil!57435) Nil!57435)) (= lt!2050328 Nil!57435)))))

(declare-fun b!4965476 () Bool)

(assert (=> b!4965476 (= e!3103778 (Cons!57435 (h!63883 Nil!57435) (++!12530 (t!368225 Nil!57435) (Cons!57435 (head!10666 (getSuffix!3086 lt!2049672 Nil!57435)) Nil!57435))))))

(declare-fun d!1597635 () Bool)

(assert (=> d!1597635 e!3103777))

(declare-fun res!2119546 () Bool)

(assert (=> d!1597635 (=> (not res!2119546) (not e!3103777))))

(assert (=> d!1597635 (= res!2119546 (= (content!10180 lt!2050328) (set.union (content!10180 Nil!57435) (content!10180 (Cons!57435 (head!10666 (getSuffix!3086 lt!2049672 Nil!57435)) Nil!57435)))))))

(assert (=> d!1597635 (= lt!2050328 e!3103778)))

(declare-fun c!847163 () Bool)

(assert (=> d!1597635 (= c!847163 (is-Nil!57435 Nil!57435))))

(assert (=> d!1597635 (= (++!12530 Nil!57435 (Cons!57435 (head!10666 (getSuffix!3086 lt!2049672 Nil!57435)) Nil!57435)) lt!2050328)))

(assert (= (and d!1597635 c!847163) b!4965475))

(assert (= (and d!1597635 (not c!847163)) b!4965476))

(assert (= (and d!1597635 res!2119546) b!4965477))

(assert (= (and b!4965477 res!2119545) b!4965478))

(declare-fun m!5990456 () Bool)

(assert (=> b!4965477 m!5990456))

(assert (=> b!4965477 m!5988784))

(declare-fun m!5990458 () Bool)

(assert (=> b!4965477 m!5990458))

(declare-fun m!5990460 () Bool)

(assert (=> b!4965476 m!5990460))

(declare-fun m!5990462 () Bool)

(assert (=> d!1597635 m!5990462))

(declare-fun m!5990464 () Bool)

(assert (=> d!1597635 m!5990464))

(declare-fun m!5990466 () Bool)

(assert (=> d!1597635 m!5990466))

(assert (=> b!4964608 d!1597635))

(declare-fun d!1597637 () Bool)

(assert (=> d!1597637 (= (tail!9799 lt!2049672) (t!368225 lt!2049672))))

(assert (=> b!4964608 d!1597637))

(declare-fun b!4965479 () Bool)

(declare-fun e!3103780 () List!57559)

(assert (=> b!4965479 (= e!3103780 (Cons!57435 (head!10666 lt!2049672) Nil!57435))))

(declare-fun b!4965481 () Bool)

(declare-fun res!2119547 () Bool)

(declare-fun e!3103779 () Bool)

(assert (=> b!4965481 (=> (not res!2119547) (not e!3103779))))

(declare-fun lt!2050329 () List!57559)

(assert (=> b!4965481 (= res!2119547 (= (size!38064 lt!2050329) (+ (size!38064 Nil!57435) (size!38064 (Cons!57435 (head!10666 lt!2049672) Nil!57435)))))))

(declare-fun b!4965482 () Bool)

(assert (=> b!4965482 (= e!3103779 (or (not (= (Cons!57435 (head!10666 lt!2049672) Nil!57435) Nil!57435)) (= lt!2050329 Nil!57435)))))

(declare-fun b!4965480 () Bool)

(assert (=> b!4965480 (= e!3103780 (Cons!57435 (h!63883 Nil!57435) (++!12530 (t!368225 Nil!57435) (Cons!57435 (head!10666 lt!2049672) Nil!57435))))))

(declare-fun d!1597639 () Bool)

(assert (=> d!1597639 e!3103779))

(declare-fun res!2119548 () Bool)

(assert (=> d!1597639 (=> (not res!2119548) (not e!3103779))))

(assert (=> d!1597639 (= res!2119548 (= (content!10180 lt!2050329) (set.union (content!10180 Nil!57435) (content!10180 (Cons!57435 (head!10666 lt!2049672) Nil!57435)))))))

(assert (=> d!1597639 (= lt!2050329 e!3103780)))

(declare-fun c!847164 () Bool)

(assert (=> d!1597639 (= c!847164 (is-Nil!57435 Nil!57435))))

(assert (=> d!1597639 (= (++!12530 Nil!57435 (Cons!57435 (head!10666 lt!2049672) Nil!57435)) lt!2050329)))

(assert (= (and d!1597639 c!847164) b!4965479))

(assert (= (and d!1597639 (not c!847164)) b!4965480))

(assert (= (and d!1597639 res!2119548) b!4965481))

(assert (= (and b!4965481 res!2119547) b!4965482))

(declare-fun m!5990468 () Bool)

(assert (=> b!4965481 m!5990468))

(assert (=> b!4965481 m!5988784))

(declare-fun m!5990470 () Bool)

(assert (=> b!4965481 m!5990470))

(declare-fun m!5990472 () Bool)

(assert (=> b!4965480 m!5990472))

(declare-fun m!5990474 () Bool)

(assert (=> d!1597639 m!5990474))

(assert (=> d!1597639 m!5990464))

(declare-fun m!5990476 () Bool)

(assert (=> d!1597639 m!5990476))

(assert (=> b!4964608 d!1597639))

(declare-fun d!1597641 () Bool)

(assert (=> d!1597641 (= (head!10666 lt!2049672) (h!63883 lt!2049672))))

(assert (=> b!4964608 d!1597641))

(assert (=> b!4964608 d!1597201))

(declare-fun b!4965483 () Bool)

(declare-fun e!3103782 () List!57559)

(assert (=> b!4965483 (= e!3103782 lt!2049882)))

(declare-fun b!4965485 () Bool)

(declare-fun res!2119549 () Bool)

(declare-fun e!3103781 () Bool)

(assert (=> b!4965485 (=> (not res!2119549) (not e!3103781))))

(declare-fun lt!2050330 () List!57559)

(assert (=> b!4965485 (= res!2119549 (= (size!38064 lt!2050330) (+ (size!38064 (++!12530 Nil!57435 (Cons!57435 lt!2049883 Nil!57435))) (size!38064 lt!2049882))))))

(declare-fun b!4965486 () Bool)

(assert (=> b!4965486 (= e!3103781 (or (not (= lt!2049882 Nil!57435)) (= lt!2050330 (++!12530 Nil!57435 (Cons!57435 lt!2049883 Nil!57435)))))))

(declare-fun b!4965484 () Bool)

(assert (=> b!4965484 (= e!3103782 (Cons!57435 (h!63883 (++!12530 Nil!57435 (Cons!57435 lt!2049883 Nil!57435))) (++!12530 (t!368225 (++!12530 Nil!57435 (Cons!57435 lt!2049883 Nil!57435))) lt!2049882)))))

(declare-fun d!1597643 () Bool)

(assert (=> d!1597643 e!3103781))

(declare-fun res!2119550 () Bool)

(assert (=> d!1597643 (=> (not res!2119550) (not e!3103781))))

(assert (=> d!1597643 (= res!2119550 (= (content!10180 lt!2050330) (set.union (content!10180 (++!12530 Nil!57435 (Cons!57435 lt!2049883 Nil!57435))) (content!10180 lt!2049882))))))

(assert (=> d!1597643 (= lt!2050330 e!3103782)))

(declare-fun c!847165 () Bool)

(assert (=> d!1597643 (= c!847165 (is-Nil!57435 (++!12530 Nil!57435 (Cons!57435 lt!2049883 Nil!57435))))))

(assert (=> d!1597643 (= (++!12530 (++!12530 Nil!57435 (Cons!57435 lt!2049883 Nil!57435)) lt!2049882) lt!2050330)))

(assert (= (and d!1597643 c!847165) b!4965483))

(assert (= (and d!1597643 (not c!847165)) b!4965484))

(assert (= (and d!1597643 res!2119550) b!4965485))

(assert (= (and b!4965485 res!2119549) b!4965486))

(declare-fun m!5990478 () Bool)

(assert (=> b!4965485 m!5990478))

(assert (=> b!4965485 m!5989038))

(declare-fun m!5990480 () Bool)

(assert (=> b!4965485 m!5990480))

(declare-fun m!5990482 () Bool)

(assert (=> b!4965485 m!5990482))

(declare-fun m!5990484 () Bool)

(assert (=> b!4965484 m!5990484))

(declare-fun m!5990486 () Bool)

(assert (=> d!1597643 m!5990486))

(assert (=> d!1597643 m!5989038))

(declare-fun m!5990488 () Bool)

(assert (=> d!1597643 m!5990488))

(declare-fun m!5990490 () Bool)

(assert (=> d!1597643 m!5990490))

(assert (=> b!4964608 d!1597643))

(declare-fun b!4965487 () Bool)

(declare-fun e!3103784 () List!57559)

(assert (=> b!4965487 (= e!3103784 (Cons!57435 lt!2049883 Nil!57435))))

(declare-fun b!4965489 () Bool)

(declare-fun res!2119551 () Bool)

(declare-fun e!3103783 () Bool)

(assert (=> b!4965489 (=> (not res!2119551) (not e!3103783))))

(declare-fun lt!2050331 () List!57559)

(assert (=> b!4965489 (= res!2119551 (= (size!38064 lt!2050331) (+ (size!38064 Nil!57435) (size!38064 (Cons!57435 lt!2049883 Nil!57435)))))))

(declare-fun b!4965490 () Bool)

(assert (=> b!4965490 (= e!3103783 (or (not (= (Cons!57435 lt!2049883 Nil!57435) Nil!57435)) (= lt!2050331 Nil!57435)))))

(declare-fun b!4965488 () Bool)

(assert (=> b!4965488 (= e!3103784 (Cons!57435 (h!63883 Nil!57435) (++!12530 (t!368225 Nil!57435) (Cons!57435 lt!2049883 Nil!57435))))))

(declare-fun d!1597645 () Bool)

(assert (=> d!1597645 e!3103783))

(declare-fun res!2119552 () Bool)

(assert (=> d!1597645 (=> (not res!2119552) (not e!3103783))))

(assert (=> d!1597645 (= res!2119552 (= (content!10180 lt!2050331) (set.union (content!10180 Nil!57435) (content!10180 (Cons!57435 lt!2049883 Nil!57435)))))))

(assert (=> d!1597645 (= lt!2050331 e!3103784)))

(declare-fun c!847166 () Bool)

(assert (=> d!1597645 (= c!847166 (is-Nil!57435 Nil!57435))))

(assert (=> d!1597645 (= (++!12530 Nil!57435 (Cons!57435 lt!2049883 Nil!57435)) lt!2050331)))

(assert (= (and d!1597645 c!847166) b!4965487))

(assert (= (and d!1597645 (not c!847166)) b!4965488))

(assert (= (and d!1597645 res!2119552) b!4965489))

(assert (= (and b!4965489 res!2119551) b!4965490))

(declare-fun m!5990492 () Bool)

(assert (=> b!4965489 m!5990492))

(assert (=> b!4965489 m!5988784))

(declare-fun m!5990494 () Bool)

(assert (=> b!4965489 m!5990494))

(declare-fun m!5990496 () Bool)

(assert (=> b!4965488 m!5990496))

(declare-fun m!5990498 () Bool)

(assert (=> d!1597645 m!5990498))

(assert (=> d!1597645 m!5990464))

(declare-fun m!5990500 () Bool)

(assert (=> d!1597645 m!5990500))

(assert (=> b!4964608 d!1597645))

(declare-fun d!1597647 () Bool)

(declare-fun lt!2050334 () List!57559)

(assert (=> d!1597647 (= (++!12530 Nil!57435 lt!2050334) lt!2049672)))

(declare-fun e!3103787 () List!57559)

(assert (=> d!1597647 (= lt!2050334 e!3103787)))

(declare-fun c!847169 () Bool)

(assert (=> d!1597647 (= c!847169 (is-Cons!57435 Nil!57435))))

(assert (=> d!1597647 (>= (size!38064 lt!2049672) (size!38064 Nil!57435))))

(assert (=> d!1597647 (= (getSuffix!3086 lt!2049672 Nil!57435) lt!2050334)))

(declare-fun b!4965495 () Bool)

(assert (=> b!4965495 (= e!3103787 (getSuffix!3086 (tail!9799 lt!2049672) (t!368225 Nil!57435)))))

(declare-fun b!4965496 () Bool)

(assert (=> b!4965496 (= e!3103787 lt!2049672)))

(assert (= (and d!1597647 c!847169) b!4965495))

(assert (= (and d!1597647 (not c!847169)) b!4965496))

(declare-fun m!5990502 () Bool)

(assert (=> d!1597647 m!5990502))

(assert (=> d!1597647 m!5988786))

(assert (=> d!1597647 m!5988784))

(assert (=> b!4965495 m!5989058))

(assert (=> b!4965495 m!5989058))

(declare-fun m!5990504 () Bool)

(assert (=> b!4965495 m!5990504))

(assert (=> b!4964608 d!1597647))

(declare-fun bs!1182969 () Bool)

(declare-fun d!1597649 () Bool)

(assert (= bs!1182969 (and d!1597649 d!1597107)))

(declare-fun lambda!247341 () Int)

(assert (=> bs!1182969 (= lambda!247341 lambda!247301)))

(declare-fun bs!1182970 () Bool)

(assert (= bs!1182970 (and d!1597649 d!1597313)))

(assert (=> bs!1182970 (= lambda!247341 lambda!247319)))

(assert (=> d!1597649 true))

(declare-fun lt!2050335 () Bool)

(assert (=> d!1597649 (= lt!2050335 (forall!13326 (t!368227 (t!368227 rulesArg!259)) lambda!247341))))

(declare-fun e!3103789 () Bool)

(assert (=> d!1597649 (= lt!2050335 e!3103789)))

(declare-fun res!2119553 () Bool)

(assert (=> d!1597649 (=> res!2119553 e!3103789)))

(assert (=> d!1597649 (= res!2119553 (not (is-Cons!57437 (t!368227 (t!368227 rulesArg!259)))))))

(assert (=> d!1597649 (= (rulesValidInductive!3294 thiss!15247 (t!368227 (t!368227 rulesArg!259))) lt!2050335)))

(declare-fun b!4965497 () Bool)

(declare-fun e!3103788 () Bool)

(assert (=> b!4965497 (= e!3103789 e!3103788)))

(declare-fun res!2119554 () Bool)

(assert (=> b!4965497 (=> (not res!2119554) (not e!3103788))))

(assert (=> b!4965497 (= res!2119554 (ruleValid!3800 thiss!15247 (h!63885 (t!368227 (t!368227 rulesArg!259)))))))

(declare-fun b!4965498 () Bool)

(assert (=> b!4965498 (= e!3103788 (rulesValidInductive!3294 thiss!15247 (t!368227 (t!368227 (t!368227 rulesArg!259)))))))

(assert (= (and d!1597649 (not res!2119553)) b!4965497))

(assert (= (and b!4965497 res!2119554) b!4965498))

(declare-fun m!5990506 () Bool)

(assert (=> d!1597649 m!5990506))

(declare-fun m!5990508 () Bool)

(assert (=> b!4965497 m!5990508))

(assert (=> b!4965498 m!5990426))

(assert (=> d!1597269 d!1597649))

(declare-fun d!1597651 () Bool)

(assert (=> d!1597651 (= (isDefined!11358 (maxPrefixZipper!784 thiss!15247 (t!368227 (t!368227 rulesArg!259)) (list!18359 input!1342))) (not (isEmpty!30925 (maxPrefixZipper!784 thiss!15247 (t!368227 (t!368227 rulesArg!259)) (list!18359 input!1342)))))))

(declare-fun bs!1182971 () Bool)

(assert (= bs!1182971 d!1597651))

(assert (=> bs!1182971 m!5989274))

(declare-fun m!5990510 () Bool)

(assert (=> bs!1182971 m!5990510))

(assert (=> d!1597269 d!1597651))

(declare-fun b!4965502 () Bool)

(declare-fun e!3103791 () Bool)

(assert (=> b!4965502 (= e!3103791 (>= (size!38064 lt!2049937) (size!38064 lt!2049931)))))

(declare-fun b!4965501 () Bool)

(declare-fun e!3103790 () Bool)

(assert (=> b!4965501 (= e!3103790 (isPrefix!5242 (tail!9799 lt!2049931) (tail!9799 lt!2049937)))))

(declare-fun b!4965499 () Bool)

(declare-fun e!3103792 () Bool)

(assert (=> b!4965499 (= e!3103792 e!3103790)))

(declare-fun res!2119556 () Bool)

(assert (=> b!4965499 (=> (not res!2119556) (not e!3103790))))

(assert (=> b!4965499 (= res!2119556 (not (is-Nil!57435 lt!2049937)))))

(declare-fun d!1597653 () Bool)

(assert (=> d!1597653 e!3103791))

(declare-fun res!2119555 () Bool)

(assert (=> d!1597653 (=> res!2119555 e!3103791)))

(declare-fun lt!2050336 () Bool)

(assert (=> d!1597653 (= res!2119555 (not lt!2050336))))

(assert (=> d!1597653 (= lt!2050336 e!3103792)))

(declare-fun res!2119558 () Bool)

(assert (=> d!1597653 (=> res!2119558 e!3103792)))

(assert (=> d!1597653 (= res!2119558 (is-Nil!57435 lt!2049931))))

(assert (=> d!1597653 (= (isPrefix!5242 lt!2049931 lt!2049937) lt!2050336)))

(declare-fun b!4965500 () Bool)

(declare-fun res!2119557 () Bool)

(assert (=> b!4965500 (=> (not res!2119557) (not e!3103790))))

(assert (=> b!4965500 (= res!2119557 (= (head!10666 lt!2049931) (head!10666 lt!2049937)))))

(assert (= (and d!1597653 (not res!2119558)) b!4965499))

(assert (= (and b!4965499 res!2119556) b!4965500))

(assert (= (and b!4965500 res!2119557) b!4965501))

(assert (= (and d!1597653 (not res!2119555)) b!4965502))

(declare-fun m!5990512 () Bool)

(assert (=> b!4965502 m!5990512))

(declare-fun m!5990514 () Bool)

(assert (=> b!4965502 m!5990514))

(declare-fun m!5990516 () Bool)

(assert (=> b!4965501 m!5990516))

(declare-fun m!5990518 () Bool)

(assert (=> b!4965501 m!5990518))

(assert (=> b!4965501 m!5990516))

(assert (=> b!4965501 m!5990518))

(declare-fun m!5990520 () Bool)

(assert (=> b!4965501 m!5990520))

(declare-fun m!5990522 () Bool)

(assert (=> b!4965500 m!5990522))

(declare-fun m!5990524 () Bool)

(assert (=> b!4965500 m!5990524))

(assert (=> d!1597269 d!1597653))

(assert (=> d!1597269 d!1597117))

(declare-fun lt!2050337 () Option!14445)

(declare-fun d!1597655 () Bool)

(assert (=> d!1597655 (= lt!2050337 (maxPrefix!4658 thiss!15247 (t!368227 (t!368227 rulesArg!259)) (list!18359 input!1342)))))

(declare-fun e!3103793 () Option!14445)

(assert (=> d!1597655 (= lt!2050337 e!3103793)))

(declare-fun c!847170 () Bool)

(assert (=> d!1597655 (= c!847170 (and (is-Cons!57437 (t!368227 (t!368227 rulesArg!259))) (is-Nil!57437 (t!368227 (t!368227 (t!368227 rulesArg!259))))))))

(declare-fun lt!2050339 () Unit!148334)

(declare-fun lt!2050341 () Unit!148334)

(assert (=> d!1597655 (= lt!2050339 lt!2050341)))

(assert (=> d!1597655 (isPrefix!5242 (list!18359 input!1342) (list!18359 input!1342))))

(assert (=> d!1597655 (= lt!2050341 (lemmaIsPrefixRefl!3566 (list!18359 input!1342) (list!18359 input!1342)))))

(assert (=> d!1597655 (rulesValidInductive!3294 thiss!15247 (t!368227 (t!368227 rulesArg!259)))))

(assert (=> d!1597655 (= (maxPrefixZipper!784 thiss!15247 (t!368227 (t!368227 rulesArg!259)) (list!18359 input!1342)) lt!2050337)))

(declare-fun bm!346244 () Bool)

(declare-fun call!346249 () Option!14445)

(assert (=> bm!346244 (= call!346249 (maxPrefixOneRuleZipper!294 thiss!15247 (h!63885 (t!368227 (t!368227 rulesArg!259))) (list!18359 input!1342)))))

(declare-fun b!4965503 () Bool)

(assert (=> b!4965503 (= e!3103793 call!346249)))

(declare-fun b!4965504 () Bool)

(declare-fun lt!2050338 () Option!14445)

(declare-fun lt!2050340 () Option!14445)

(assert (=> b!4965504 (= e!3103793 (ite (and (is-None!14444 lt!2050338) (is-None!14444 lt!2050340)) None!14444 (ite (is-None!14444 lt!2050340) lt!2050338 (ite (is-None!14444 lt!2050338) lt!2050340 (ite (>= (size!38062 (_1!34378 (v!50431 lt!2050338))) (size!38062 (_1!34378 (v!50431 lt!2050340)))) lt!2050338 lt!2050340)))))))

(assert (=> b!4965504 (= lt!2050338 call!346249)))

(assert (=> b!4965504 (= lt!2050340 (maxPrefixZipper!784 thiss!15247 (t!368227 (t!368227 (t!368227 rulesArg!259))) (list!18359 input!1342)))))

(assert (= (and d!1597655 c!847170) b!4965503))

(assert (= (and d!1597655 (not c!847170)) b!4965504))

(assert (= (or b!4965503 b!4965504) bm!346244))

(assert (=> d!1597655 m!5988632))

(assert (=> d!1597655 m!5989254))

(assert (=> d!1597655 m!5988632))

(assert (=> d!1597655 m!5988632))

(assert (=> d!1597655 m!5989246))

(assert (=> d!1597655 m!5988632))

(assert (=> d!1597655 m!5988632))

(assert (=> d!1597655 m!5989248))

(assert (=> d!1597655 m!5989290))

(assert (=> bm!346244 m!5988632))

(declare-fun m!5990526 () Bool)

(assert (=> bm!346244 m!5990526))

(assert (=> b!4965504 m!5988632))

(assert (=> b!4965504 m!5990410))

(assert (=> d!1597269 d!1597655))

(declare-fun d!1597657 () Bool)

(assert (=> d!1597657 (isPrefix!5242 lt!2049931 lt!2049937)))

(declare-fun lt!2050342 () Unit!148334)

(assert (=> d!1597657 (= lt!2050342 (choose!36651 lt!2049931 lt!2049937))))

(assert (=> d!1597657 (= (lemmaIsPrefixRefl!3566 lt!2049931 lt!2049937) lt!2050342)))

(declare-fun bs!1182972 () Bool)

(assert (= bs!1182972 d!1597657))

(assert (=> bs!1182972 m!5989282))

(declare-fun m!5990528 () Bool)

(assert (=> bs!1182972 m!5990528))

(assert (=> d!1597269 d!1597657))

(declare-fun d!1597659 () Bool)

(assert (=> d!1597659 (= (isDefined!11360 lt!2049934) (not (isEmpty!30930 lt!2049934)))))

(declare-fun bs!1182973 () Bool)

(assert (= bs!1182973 d!1597659))

(declare-fun m!5990530 () Bool)

(assert (=> bs!1182973 m!5990530))

(assert (=> d!1597269 d!1597659))

(declare-fun d!1597661 () Bool)

(declare-fun lt!2050343 () Int)

(assert (=> d!1597661 (>= lt!2050343 0)))

(declare-fun e!3103794 () Int)

(assert (=> d!1597661 (= lt!2050343 e!3103794)))

(declare-fun c!847171 () Bool)

(assert (=> d!1597661 (= c!847171 (is-Nil!57435 lt!2049647))))

(assert (=> d!1597661 (= (size!38064 lt!2049647) lt!2050343)))

(declare-fun b!4965505 () Bool)

(assert (=> b!4965505 (= e!3103794 0)))

(declare-fun b!4965506 () Bool)

(assert (=> b!4965506 (= e!3103794 (+ 1 (size!38064 (t!368225 lt!2049647))))))

(assert (= (and d!1597661 c!847171) b!4965505))

(assert (= (and d!1597661 (not c!847171)) b!4965506))

(declare-fun m!5990532 () Bool)

(assert (=> b!4965506 m!5990532))

(assert (=> b!4964823 d!1597661))

(declare-fun d!1597663 () Bool)

(declare-fun lt!2050344 () Int)

(assert (=> d!1597663 (>= lt!2050344 0)))

(declare-fun e!3103795 () Int)

(assert (=> d!1597663 (= lt!2050344 e!3103795)))

(declare-fun c!847172 () Bool)

(assert (=> d!1597663 (= c!847172 (is-Nil!57435 lt!2049641))))

(assert (=> d!1597663 (= (size!38064 lt!2049641) lt!2050344)))

(declare-fun b!4965507 () Bool)

(assert (=> b!4965507 (= e!3103795 0)))

(declare-fun b!4965508 () Bool)

(assert (=> b!4965508 (= e!3103795 (+ 1 (size!38064 (t!368225 lt!2049641))))))

(assert (= (and d!1597663 c!847172) b!4965507))

(assert (= (and d!1597663 (not c!847172)) b!4965508))

(declare-fun m!5990534 () Bool)

(assert (=> b!4965508 m!5990534))

(assert (=> b!4964823 d!1597663))

(declare-fun d!1597665 () Bool)

(assert (=> d!1597665 (= (get!19935 lt!2049912) (v!50431 lt!2049912))))

(assert (=> b!4964673 d!1597665))

(declare-fun d!1597667 () Bool)

(assert (=> d!1597667 (= (apply!13902 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049912)))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049912))))) (dynLambda!23149 (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049912))))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049912))))))))

(declare-fun b_lambda!196633 () Bool)

(assert (=> (not b_lambda!196633) (not d!1597667)))

(declare-fun t!368352 () Bool)

(declare-fun tb!260341 () Bool)

(assert (=> (and b!4964142 (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049912)))))) t!368352) tb!260341))

(declare-fun result!325436 () Bool)

(assert (=> tb!260341 (= result!325436 (inv!21 (dynLambda!23149 (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049912))))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049912)))))))))

(declare-fun m!5990536 () Bool)

(assert (=> tb!260341 m!5990536))

(assert (=> d!1597667 t!368352))

(declare-fun b_and!347857 () Bool)

(assert (= b_and!347851 (and (=> t!368352 result!325436) b_and!347857)))

(declare-fun tb!260343 () Bool)

(declare-fun t!368354 () Bool)

(assert (=> (and b!4964367 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049912)))))) t!368354) tb!260343))

(declare-fun result!325438 () Bool)

(assert (= result!325438 result!325436))

(assert (=> d!1597667 t!368354))

(declare-fun b_and!347859 () Bool)

(assert (= b_and!347853 (and (=> t!368354 result!325438) b_and!347859)))

(declare-fun tb!260345 () Bool)

(declare-fun t!368356 () Bool)

(assert (=> (and b!4964941 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049912)))))) t!368356) tb!260345))

(declare-fun result!325440 () Bool)

(assert (= result!325440 result!325436))

(assert (=> d!1597667 t!368356))

(declare-fun b_and!347861 () Bool)

(assert (= b_and!347855 (and (=> t!368356 result!325440) b_and!347861)))

(assert (=> d!1597667 m!5989148))

(declare-fun m!5990538 () Bool)

(assert (=> d!1597667 m!5990538))

(assert (=> b!4964673 d!1597667))

(declare-fun d!1597669 () Bool)

(assert (=> d!1597669 (= (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049912)))) (fromListB!2729 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049912)))))))

(declare-fun bs!1182974 () Bool)

(assert (= bs!1182974 d!1597669))

(declare-fun m!5990540 () Bool)

(assert (=> bs!1182974 m!5990540))

(assert (=> b!4964673 d!1597669))

(assert (=> b!4964685 d!1597611))

(declare-fun d!1597671 () Bool)

(assert (=> d!1597671 (= (inv!75060 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676)))) (isBalanced!4200 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676))))))))

(declare-fun bs!1182975 () Bool)

(assert (= bs!1182975 d!1597671))

(declare-fun m!5990542 () Bool)

(assert (=> bs!1182975 m!5990542))

(assert (=> tb!260257 d!1597671))

(declare-fun bs!1182976 () Bool)

(declare-fun d!1597673 () Bool)

(assert (= bs!1182976 (and d!1597673 d!1597583)))

(declare-fun lambda!247342 () Int)

(assert (=> bs!1182976 (= (and (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (= lambda!247342 lambda!247340))))

(declare-fun bs!1182977 () Bool)

(assert (= bs!1182977 (and d!1597673 d!1597259)))

(assert (=> bs!1182977 (= (and (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (= lambda!247342 lambda!247317))))

(declare-fun bs!1182978 () Bool)

(assert (= bs!1182978 (and d!1597673 b!4964280)))

(assert (=> bs!1182978 (= (and (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (= lambda!247342 lambda!247309))))

(declare-fun bs!1182979 () Bool)

(assert (= bs!1182979 (and d!1597673 d!1597539)))

(assert (=> bs!1182979 (= (and (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (= lambda!247342 lambda!247339))))

(declare-fun bs!1182980 () Bool)

(assert (= bs!1182980 (and d!1597673 b!4964759)))

(assert (=> bs!1182980 (= lambda!247342 lambda!247318)))

(assert (=> d!1597673 true))

(assert (=> d!1597673 (< (dynLambda!23144 order!26191 (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) (dynLambda!23143 order!26189 lambda!247342))))

(assert (=> d!1597673 true))

(assert (=> d!1597673 (< (dynLambda!23142 order!26187 (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) (dynLambda!23143 order!26189 lambda!247342))))

(assert (=> d!1597673 (= (semiInverseModEq!3698 (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) (Forall!1760 lambda!247342))))

(declare-fun bs!1182981 () Bool)

(assert (= bs!1182981 d!1597673))

(declare-fun m!5990544 () Bool)

(assert (=> bs!1182981 m!5990544))

(assert (=> d!1597273 d!1597673))

(declare-fun d!1597675 () Bool)

(assert (=> d!1597675 (= (inv!75060 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (value!268585 (_1!34378 (get!19935 lt!2049691))))) (isBalanced!4200 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (value!268585 (_1!34378 (get!19935 lt!2049691)))))))))

(declare-fun bs!1182982 () Bool)

(assert (= bs!1182982 d!1597675))

(declare-fun m!5990546 () Bool)

(assert (=> bs!1182982 m!5990546))

(assert (=> tb!260231 d!1597675))

(assert (=> bm!346163 d!1597637))

(declare-fun d!1597677 () Bool)

(assert (=> d!1597677 (= (isEmpty!30930 lt!2049644) (not (is-Some!14445 lt!2049644)))))

(assert (=> d!1597277 d!1597677))

(declare-fun d!1597679 () Bool)

(declare-fun lt!2050345 () Int)

(assert (=> d!1597679 (>= lt!2050345 0)))

(declare-fun e!3103797 () Int)

(assert (=> d!1597679 (= lt!2050345 e!3103797)))

(declare-fun c!847173 () Bool)

(assert (=> d!1597679 (= c!847173 (is-Nil!57435 lt!2049990))))

(assert (=> d!1597679 (= (size!38064 lt!2049990) lt!2050345)))

(declare-fun b!4965509 () Bool)

(assert (=> b!4965509 (= e!3103797 0)))

(declare-fun b!4965510 () Bool)

(assert (=> b!4965510 (= e!3103797 (+ 1 (size!38064 (t!368225 lt!2049990))))))

(assert (= (and d!1597679 c!847173) b!4965509))

(assert (= (and d!1597679 (not c!847173)) b!4965510))

(declare-fun m!5990548 () Bool)

(assert (=> b!4965510 m!5990548))

(assert (=> b!4964868 d!1597679))

(declare-fun d!1597681 () Bool)

(assert (=> d!1597681 (= (isEmpty!30925 lt!2049912) (not (is-Some!14444 lt!2049912)))))

(assert (=> d!1597221 d!1597681))

(declare-fun d!1597683 () Bool)

(assert (=> d!1597683 (= (isEmpty!30923 (_1!34382 lt!2049910)) (is-Nil!57435 (_1!34382 lt!2049910)))))

(assert (=> d!1597221 d!1597683))

(declare-fun d!1597685 () Bool)

(declare-fun lt!2050363 () tuple2!62158)

(assert (=> d!1597685 (= (++!12530 (_1!34382 lt!2050363) (_2!34382 lt!2050363)) (list!18359 input!1342))))

(assert (=> d!1597685 (= lt!2050363 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 0 (list!18359 input!1342) (list!18359 input!1342) (sizeTr!359 (list!18359 input!1342) 0)))))

(declare-fun lt!2050366 () Unit!148334)

(declare-fun lt!2050364 () Unit!148334)

(assert (=> d!1597685 (= lt!2050366 lt!2050364)))

(declare-fun lt!2050362 () List!57559)

(declare-fun lt!2050369 () Int)

(assert (=> d!1597685 (= (sizeTr!359 lt!2050362 lt!2050369) (+ (size!38064 lt!2050362) lt!2050369))))

(assert (=> d!1597685 (= lt!2050364 (lemmaSizeTrEqualsSize!358 lt!2050362 lt!2050369))))

(assert (=> d!1597685 (= lt!2050369 0)))

(assert (=> d!1597685 (= lt!2050362 Nil!57435)))

(declare-fun lt!2050367 () Unit!148334)

(declare-fun lt!2050365 () Unit!148334)

(assert (=> d!1597685 (= lt!2050367 lt!2050365)))

(declare-fun lt!2050368 () Int)

(assert (=> d!1597685 (= (sizeTr!359 (list!18359 input!1342) lt!2050368) (+ (size!38064 (list!18359 input!1342)) lt!2050368))))

(assert (=> d!1597685 (= lt!2050365 (lemmaSizeTrEqualsSize!358 (list!18359 input!1342) lt!2050368))))

(assert (=> d!1597685 (= lt!2050368 0)))

(assert (=> d!1597685 (validRegex!5967 (regex!8391 (h!63885 rulesArg!259)))))

(assert (=> d!1597685 (= (findLongestMatch!1695 (regex!8391 (h!63885 rulesArg!259)) (list!18359 input!1342)) lt!2050363)))

(declare-fun bs!1182983 () Bool)

(assert (= bs!1182983 d!1597685))

(assert (=> bs!1182983 m!5989028))

(assert (=> bs!1182983 m!5988632))

(declare-fun m!5990550 () Bool)

(assert (=> bs!1182983 m!5990550))

(declare-fun m!5990552 () Bool)

(assert (=> bs!1182983 m!5990552))

(assert (=> bs!1182983 m!5988632))

(assert (=> bs!1182983 m!5989126))

(declare-fun m!5990554 () Bool)

(assert (=> bs!1182983 m!5990554))

(assert (=> bs!1182983 m!5988632))

(assert (=> bs!1182983 m!5988632))

(assert (=> bs!1182983 m!5990550))

(declare-fun m!5990556 () Bool)

(assert (=> bs!1182983 m!5990556))

(declare-fun m!5990558 () Bool)

(assert (=> bs!1182983 m!5990558))

(declare-fun m!5990560 () Bool)

(assert (=> bs!1182983 m!5990560))

(assert (=> bs!1182983 m!5988632))

(declare-fun m!5990562 () Bool)

(assert (=> bs!1182983 m!5990562))

(assert (=> bs!1182983 m!5988632))

(declare-fun m!5990564 () Bool)

(assert (=> bs!1182983 m!5990564))

(assert (=> d!1597221 d!1597685))

(assert (=> d!1597221 d!1597227))

(assert (=> b!4964758 d!1597655))

(declare-fun d!1597687 () Bool)

(declare-fun lostCauseFct!282 (Regex!13624) Bool)

(assert (=> d!1597687 (= (lostCause!1130 (regex!8391 (h!63885 rulesArg!259))) (lostCauseFct!282 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun bs!1182984 () Bool)

(assert (= bs!1182984 d!1597687))

(declare-fun m!5990566 () Bool)

(assert (=> bs!1182984 m!5990566))

(assert (=> d!1597199 d!1597687))

(assert (=> d!1597199 d!1597647))

(declare-fun b!4965511 () Bool)

(declare-fun e!3103799 () List!57559)

(assert (=> b!4965511 (= e!3103799 lt!2049672)))

(declare-fun b!4965513 () Bool)

(declare-fun res!2119559 () Bool)

(declare-fun e!3103798 () Bool)

(assert (=> b!4965513 (=> (not res!2119559) (not e!3103798))))

(declare-fun lt!2050370 () List!57559)

(assert (=> b!4965513 (= res!2119559 (= (size!38064 lt!2050370) (+ (size!38064 Nil!57435) (size!38064 lt!2049672))))))

(declare-fun b!4965514 () Bool)

(assert (=> b!4965514 (= e!3103798 (or (not (= lt!2049672 Nil!57435)) (= lt!2050370 Nil!57435)))))

(declare-fun b!4965512 () Bool)

(assert (=> b!4965512 (= e!3103799 (Cons!57435 (h!63883 Nil!57435) (++!12530 (t!368225 Nil!57435) lt!2049672)))))

(declare-fun d!1597689 () Bool)

(assert (=> d!1597689 e!3103798))

(declare-fun res!2119560 () Bool)

(assert (=> d!1597689 (=> (not res!2119560) (not e!3103798))))

(assert (=> d!1597689 (= res!2119560 (= (content!10180 lt!2050370) (set.union (content!10180 Nil!57435) (content!10180 lt!2049672))))))

(assert (=> d!1597689 (= lt!2050370 e!3103799)))

(declare-fun c!847174 () Bool)

(assert (=> d!1597689 (= c!847174 (is-Nil!57435 Nil!57435))))

(assert (=> d!1597689 (= (++!12530 Nil!57435 lt!2049672) lt!2050370)))

(assert (= (and d!1597689 c!847174) b!4965511))

(assert (= (and d!1597689 (not c!847174)) b!4965512))

(assert (= (and d!1597689 res!2119560) b!4965513))

(assert (= (and b!4965513 res!2119559) b!4965514))

(declare-fun m!5990568 () Bool)

(assert (=> b!4965513 m!5990568))

(assert (=> b!4965513 m!5988784))

(assert (=> b!4965513 m!5988786))

(declare-fun m!5990570 () Bool)

(assert (=> b!4965512 m!5990570))

(declare-fun m!5990572 () Bool)

(assert (=> d!1597689 m!5990572))

(assert (=> d!1597689 m!5990464))

(declare-fun m!5990574 () Bool)

(assert (=> d!1597689 m!5990574))

(assert (=> d!1597199 d!1597689))

(declare-fun b!4965533 () Bool)

(declare-fun res!2119575 () Bool)

(declare-fun e!3103819 () Bool)

(assert (=> b!4965533 (=> res!2119575 e!3103819)))

(assert (=> b!4965533 (= res!2119575 (not (is-Concat!22326 (regex!8391 (h!63885 rulesArg!259)))))))

(declare-fun e!3103820 () Bool)

(assert (=> b!4965533 (= e!3103820 e!3103819)))

(declare-fun b!4965534 () Bool)

(declare-fun e!3103815 () Bool)

(declare-fun call!346258 () Bool)

(assert (=> b!4965534 (= e!3103815 call!346258)))

(declare-fun b!4965535 () Bool)

(declare-fun e!3103817 () Bool)

(declare-fun e!3103814 () Bool)

(assert (=> b!4965535 (= e!3103817 e!3103814)))

(declare-fun c!847179 () Bool)

(assert (=> b!4965535 (= c!847179 (is-Star!13624 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun b!4965536 () Bool)

(declare-fun e!3103816 () Bool)

(declare-fun call!346257 () Bool)

(assert (=> b!4965536 (= e!3103816 call!346257)))

(declare-fun b!4965537 () Bool)

(assert (=> b!4965537 (= e!3103814 e!3103820)))

(declare-fun c!847180 () Bool)

(assert (=> b!4965537 (= c!847180 (is-Union!13624 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun bm!346252 () Bool)

(assert (=> bm!346252 (= call!346258 (validRegex!5967 (ite c!847180 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259))) (regOne!27760 (regex!8391 (h!63885 rulesArg!259))))))))

(declare-fun b!4965538 () Bool)

(declare-fun e!3103818 () Bool)

(assert (=> b!4965538 (= e!3103819 e!3103818)))

(declare-fun res!2119571 () Bool)

(assert (=> b!4965538 (=> (not res!2119571) (not e!3103818))))

(assert (=> b!4965538 (= res!2119571 call!346258)))

(declare-fun d!1597691 () Bool)

(declare-fun res!2119573 () Bool)

(assert (=> d!1597691 (=> res!2119573 e!3103817)))

(assert (=> d!1597691 (= res!2119573 (is-ElementMatch!13624 (regex!8391 (h!63885 rulesArg!259))))))

(assert (=> d!1597691 (= (validRegex!5967 (regex!8391 (h!63885 rulesArg!259))) e!3103817)))

(declare-fun bm!346251 () Bool)

(declare-fun call!346256 () Bool)

(assert (=> bm!346251 (= call!346256 call!346257)))

(declare-fun b!4965539 () Bool)

(assert (=> b!4965539 (= e!3103814 e!3103816)))

(declare-fun res!2119574 () Bool)

(assert (=> b!4965539 (= res!2119574 (not (nullable!4618 (reg!13953 (regex!8391 (h!63885 rulesArg!259))))))))

(assert (=> b!4965539 (=> (not res!2119574) (not e!3103816))))

(declare-fun b!4965540 () Bool)

(assert (=> b!4965540 (= e!3103818 call!346256)))

(declare-fun b!4965541 () Bool)

(declare-fun res!2119572 () Bool)

(assert (=> b!4965541 (=> (not res!2119572) (not e!3103815))))

(assert (=> b!4965541 (= res!2119572 call!346256)))

(assert (=> b!4965541 (= e!3103820 e!3103815)))

(declare-fun bm!346253 () Bool)

(assert (=> bm!346253 (= call!346257 (validRegex!5967 (ite c!847179 (reg!13953 (regex!8391 (h!63885 rulesArg!259))) (ite c!847180 (regOne!27761 (regex!8391 (h!63885 rulesArg!259))) (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))))))

(assert (= (and d!1597691 (not res!2119573)) b!4965535))

(assert (= (and b!4965535 c!847179) b!4965539))

(assert (= (and b!4965535 (not c!847179)) b!4965537))

(assert (= (and b!4965539 res!2119574) b!4965536))

(assert (= (and b!4965537 c!847180) b!4965541))

(assert (= (and b!4965537 (not c!847180)) b!4965533))

(assert (= (and b!4965541 res!2119572) b!4965534))

(assert (= (and b!4965533 (not res!2119575)) b!4965538))

(assert (= (and b!4965538 res!2119571) b!4965540))

(assert (= (or b!4965541 b!4965540) bm!346251))

(assert (= (or b!4965534 b!4965538) bm!346252))

(assert (= (or b!4965536 bm!346251) bm!346253))

(declare-fun m!5990576 () Bool)

(assert (=> bm!346252 m!5990576))

(declare-fun m!5990578 () Bool)

(assert (=> b!4965539 m!5990578))

(declare-fun m!5990580 () Bool)

(assert (=> bm!346253 m!5990580))

(assert (=> d!1597199 d!1597691))

(declare-fun d!1597693 () Bool)

(assert (=> d!1597693 (= lt!2049672 lt!2049861)))

(declare-fun lt!2050373 () Unit!148334)

(declare-fun choose!36662 (List!57559 List!57559 List!57559 List!57559 List!57559) Unit!148334)

(assert (=> d!1597693 (= lt!2050373 (choose!36662 Nil!57435 lt!2049672 Nil!57435 lt!2049861 lt!2049672))))

(assert (=> d!1597693 (isPrefix!5242 Nil!57435 lt!2049672)))

(assert (=> d!1597693 (= (lemmaSamePrefixThenSameSuffix!2498 Nil!57435 lt!2049672 Nil!57435 lt!2049861 lt!2049672) lt!2050373)))

(declare-fun bs!1182985 () Bool)

(assert (= bs!1182985 d!1597693))

(declare-fun m!5990582 () Bool)

(assert (=> bs!1182985 m!5990582))

(assert (=> bs!1182985 m!5990448))

(assert (=> d!1597199 d!1597693))

(declare-fun b!4965545 () Bool)

(declare-fun e!3103822 () Bool)

(assert (=> b!4965545 (= e!3103822 (>= (size!38064 (++!12530 Nil!57435 lt!2049672)) (size!38064 Nil!57435)))))

(declare-fun b!4965544 () Bool)

(declare-fun e!3103821 () Bool)

(assert (=> b!4965544 (= e!3103821 (isPrefix!5242 (tail!9799 Nil!57435) (tail!9799 (++!12530 Nil!57435 lt!2049672))))))

(declare-fun b!4965542 () Bool)

(declare-fun e!3103823 () Bool)

(assert (=> b!4965542 (= e!3103823 e!3103821)))

(declare-fun res!2119577 () Bool)

(assert (=> b!4965542 (=> (not res!2119577) (not e!3103821))))

(assert (=> b!4965542 (= res!2119577 (not (is-Nil!57435 (++!12530 Nil!57435 lt!2049672))))))

(declare-fun d!1597695 () Bool)

(assert (=> d!1597695 e!3103822))

(declare-fun res!2119576 () Bool)

(assert (=> d!1597695 (=> res!2119576 e!3103822)))

(declare-fun lt!2050374 () Bool)

(assert (=> d!1597695 (= res!2119576 (not lt!2050374))))

(assert (=> d!1597695 (= lt!2050374 e!3103823)))

(declare-fun res!2119579 () Bool)

(assert (=> d!1597695 (=> res!2119579 e!3103823)))

(assert (=> d!1597695 (= res!2119579 (is-Nil!57435 Nil!57435))))

(assert (=> d!1597695 (= (isPrefix!5242 Nil!57435 (++!12530 Nil!57435 lt!2049672)) lt!2050374)))

(declare-fun b!4965543 () Bool)

(declare-fun res!2119578 () Bool)

(assert (=> b!4965543 (=> (not res!2119578) (not e!3103821))))

(assert (=> b!4965543 (= res!2119578 (= (head!10666 Nil!57435) (head!10666 (++!12530 Nil!57435 lt!2049672))))))

(assert (= (and d!1597695 (not res!2119579)) b!4965542))

(assert (= (and b!4965542 res!2119577) b!4965543))

(assert (= (and b!4965543 res!2119578) b!4965544))

(assert (= (and d!1597695 (not res!2119576)) b!4965545))

(assert (=> b!4965545 m!5989068))

(declare-fun m!5990584 () Bool)

(assert (=> b!4965545 m!5990584))

(assert (=> b!4965545 m!5988784))

(declare-fun m!5990586 () Bool)

(assert (=> b!4965544 m!5990586))

(assert (=> b!4965544 m!5989068))

(declare-fun m!5990588 () Bool)

(assert (=> b!4965544 m!5990588))

(assert (=> b!4965544 m!5990586))

(assert (=> b!4965544 m!5990588))

(declare-fun m!5990590 () Bool)

(assert (=> b!4965544 m!5990590))

(declare-fun m!5990592 () Bool)

(assert (=> b!4965543 m!5990592))

(assert (=> b!4965543 m!5989068))

(declare-fun m!5990594 () Bool)

(assert (=> b!4965543 m!5990594))

(assert (=> d!1597199 d!1597695))

(declare-fun b!4965546 () Bool)

(declare-fun e!3103825 () List!57559)

(assert (=> b!4965546 (= e!3103825 (_2!34382 lt!2049862))))

(declare-fun b!4965548 () Bool)

(declare-fun res!2119580 () Bool)

(declare-fun e!3103824 () Bool)

(assert (=> b!4965548 (=> (not res!2119580) (not e!3103824))))

(declare-fun lt!2050375 () List!57559)

(assert (=> b!4965548 (= res!2119580 (= (size!38064 lt!2050375) (+ (size!38064 (_1!34382 lt!2049862)) (size!38064 (_2!34382 lt!2049862)))))))

(declare-fun b!4965549 () Bool)

(assert (=> b!4965549 (= e!3103824 (or (not (= (_2!34382 lt!2049862) Nil!57435)) (= lt!2050375 (_1!34382 lt!2049862))))))

(declare-fun b!4965547 () Bool)

(assert (=> b!4965547 (= e!3103825 (Cons!57435 (h!63883 (_1!34382 lt!2049862)) (++!12530 (t!368225 (_1!34382 lt!2049862)) (_2!34382 lt!2049862))))))

(declare-fun d!1597697 () Bool)

(assert (=> d!1597697 e!3103824))

(declare-fun res!2119581 () Bool)

(assert (=> d!1597697 (=> (not res!2119581) (not e!3103824))))

(assert (=> d!1597697 (= res!2119581 (= (content!10180 lt!2050375) (set.union (content!10180 (_1!34382 lt!2049862)) (content!10180 (_2!34382 lt!2049862)))))))

(assert (=> d!1597697 (= lt!2050375 e!3103825)))

(declare-fun c!847181 () Bool)

(assert (=> d!1597697 (= c!847181 (is-Nil!57435 (_1!34382 lt!2049862)))))

(assert (=> d!1597697 (= (++!12530 (_1!34382 lt!2049862) (_2!34382 lt!2049862)) lt!2050375)))

(assert (= (and d!1597697 c!847181) b!4965546))

(assert (= (and d!1597697 (not c!847181)) b!4965547))

(assert (= (and d!1597697 res!2119581) b!4965548))

(assert (= (and b!4965548 res!2119580) b!4965549))

(declare-fun m!5990596 () Bool)

(assert (=> b!4965548 m!5990596))

(assert (=> b!4965548 m!5989078))

(declare-fun m!5990598 () Bool)

(assert (=> b!4965548 m!5990598))

(declare-fun m!5990600 () Bool)

(assert (=> b!4965547 m!5990600))

(declare-fun m!5990602 () Bool)

(assert (=> d!1597697 m!5990602))

(declare-fun m!5990604 () Bool)

(assert (=> d!1597697 m!5990604))

(declare-fun m!5990606 () Bool)

(assert (=> d!1597697 m!5990606))

(assert (=> d!1597199 d!1597697))

(declare-fun d!1597699 () Bool)

(assert (=> d!1597699 (isPrefix!5242 Nil!57435 (++!12530 Nil!57435 lt!2049672))))

(declare-fun lt!2050378 () Unit!148334)

(declare-fun choose!36663 (List!57559 List!57559) Unit!148334)

(assert (=> d!1597699 (= lt!2050378 (choose!36663 Nil!57435 lt!2049672))))

(assert (=> d!1597699 (= (lemmaConcatTwoListThenFirstIsPrefix!3344 Nil!57435 lt!2049672) lt!2050378)))

(declare-fun bs!1182986 () Bool)

(assert (= bs!1182986 d!1597699))

(assert (=> bs!1182986 m!5989068))

(assert (=> bs!1182986 m!5989068))

(assert (=> bs!1182986 m!5989076))

(declare-fun m!5990608 () Bool)

(assert (=> bs!1182986 m!5990608))

(assert (=> d!1597199 d!1597699))

(assert (=> bs!1182920 d!1597227))

(declare-fun b!4965550 () Bool)

(declare-fun e!3103831 () Bool)

(declare-fun lt!2050379 () Bool)

(declare-fun call!346259 () Bool)

(assert (=> b!4965550 (= e!3103831 (= lt!2050379 call!346259))))

(declare-fun b!4965551 () Bool)

(declare-fun e!3103830 () Bool)

(assert (=> b!4965551 (= e!3103830 (not (= (head!10666 (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))) (c!846919 (derivativeStep!3920 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))) (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))))))

(declare-fun b!4965552 () Bool)

(declare-fun res!2119582 () Bool)

(declare-fun e!3103832 () Bool)

(assert (=> b!4965552 (=> (not res!2119582) (not e!3103832))))

(assert (=> b!4965552 (= res!2119582 (isEmpty!30923 (tail!9799 (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))))

(declare-fun b!4965553 () Bool)

(declare-fun e!3103828 () Bool)

(assert (=> b!4965553 (= e!3103831 e!3103828)))

(declare-fun c!847182 () Bool)

(assert (=> b!4965553 (= c!847182 (is-EmptyLang!13624 (derivativeStep!3920 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))) (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))))

(declare-fun b!4965554 () Bool)

(declare-fun res!2119584 () Bool)

(declare-fun e!3103827 () Bool)

(assert (=> b!4965554 (=> res!2119584 e!3103827)))

(assert (=> b!4965554 (= res!2119584 (not (is-ElementMatch!13624 (derivativeStep!3920 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))) (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))))))))

(assert (=> b!4965554 (= e!3103828 e!3103827)))

(declare-fun b!4965555 () Bool)

(declare-fun e!3103826 () Bool)

(assert (=> b!4965555 (= e!3103826 e!3103830)))

(declare-fun res!2119588 () Bool)

(assert (=> b!4965555 (=> res!2119588 e!3103830)))

(assert (=> b!4965555 (= res!2119588 call!346259)))

(declare-fun b!4965556 () Bool)

(declare-fun e!3103829 () Bool)

(assert (=> b!4965556 (= e!3103829 (nullable!4618 (derivativeStep!3920 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))) (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))))

(declare-fun d!1597701 () Bool)

(assert (=> d!1597701 e!3103831))

(declare-fun c!847184 () Bool)

(assert (=> d!1597701 (= c!847184 (is-EmptyExpr!13624 (derivativeStep!3920 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))) (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))))

(assert (=> d!1597701 (= lt!2050379 e!3103829)))

(declare-fun c!847183 () Bool)

(assert (=> d!1597701 (= c!847183 (isEmpty!30923 (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))))))

(assert (=> d!1597701 (validRegex!5967 (derivativeStep!3920 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))) (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))))))

(assert (=> d!1597701 (= (matchR!6634 (derivativeStep!3920 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))) (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))) (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))) lt!2050379)))

(declare-fun b!4965557 () Bool)

(declare-fun res!2119583 () Bool)

(assert (=> b!4965557 (=> res!2119583 e!3103830)))

(assert (=> b!4965557 (= res!2119583 (not (isEmpty!30923 (tail!9799 (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))))))))

(declare-fun b!4965558 () Bool)

(assert (=> b!4965558 (= e!3103829 (matchR!6634 (derivativeStep!3920 (derivativeStep!3920 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))) (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))) (head!10666 (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))) (tail!9799 (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))))

(declare-fun b!4965559 () Bool)

(declare-fun res!2119587 () Bool)

(assert (=> b!4965559 (=> (not res!2119587) (not e!3103832))))

(assert (=> b!4965559 (= res!2119587 (not call!346259))))

(declare-fun b!4965560 () Bool)

(declare-fun res!2119585 () Bool)

(assert (=> b!4965560 (=> res!2119585 e!3103827)))

(assert (=> b!4965560 (= res!2119585 e!3103832)))

(declare-fun res!2119586 () Bool)

(assert (=> b!4965560 (=> (not res!2119586) (not e!3103832))))

(assert (=> b!4965560 (= res!2119586 lt!2050379)))

(declare-fun b!4965561 () Bool)

(assert (=> b!4965561 (= e!3103828 (not lt!2050379))))

(declare-fun bm!346254 () Bool)

(assert (=> bm!346254 (= call!346259 (isEmpty!30923 (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))))))

(declare-fun b!4965562 () Bool)

(assert (=> b!4965562 (= e!3103832 (= (head!10666 (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))) (c!846919 (derivativeStep!3920 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))) (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))))))))

(declare-fun b!4965563 () Bool)

(assert (=> b!4965563 (= e!3103827 e!3103826)))

(declare-fun res!2119589 () Bool)

(assert (=> b!4965563 (=> (not res!2119589) (not e!3103826))))

(assert (=> b!4965563 (= res!2119589 (not lt!2050379))))

(assert (= (and d!1597701 c!847183) b!4965556))

(assert (= (and d!1597701 (not c!847183)) b!4965558))

(assert (= (and d!1597701 c!847184) b!4965550))

(assert (= (and d!1597701 (not c!847184)) b!4965553))

(assert (= (and b!4965553 c!847182) b!4965561))

(assert (= (and b!4965553 (not c!847182)) b!4965554))

(assert (= (and b!4965554 (not res!2119584)) b!4965560))

(assert (= (and b!4965560 res!2119586) b!4965559))

(assert (= (and b!4965559 res!2119587) b!4965552))

(assert (= (and b!4965552 res!2119582) b!4965562))

(assert (= (and b!4965560 (not res!2119585)) b!4965563))

(assert (= (and b!4965563 res!2119589) b!4965555))

(assert (= (and b!4965555 (not res!2119588)) b!4965557))

(assert (= (and b!4965557 (not res!2119583)) b!4965551))

(assert (= (or b!4965550 b!4965555 b!4965559) bm!346254))

(assert (=> b!4965557 m!5989434))

(declare-fun m!5990610 () Bool)

(assert (=> b!4965557 m!5990610))

(assert (=> b!4965557 m!5990610))

(declare-fun m!5990612 () Bool)

(assert (=> b!4965557 m!5990612))

(assert (=> d!1597701 m!5989434))

(assert (=> d!1597701 m!5989436))

(assert (=> d!1597701 m!5989446))

(declare-fun m!5990614 () Bool)

(assert (=> d!1597701 m!5990614))

(assert (=> b!4965556 m!5989446))

(declare-fun m!5990616 () Bool)

(assert (=> b!4965556 m!5990616))

(assert (=> bm!346254 m!5989434))

(assert (=> bm!346254 m!5989436))

(assert (=> b!4965562 m!5989434))

(declare-fun m!5990618 () Bool)

(assert (=> b!4965562 m!5990618))

(assert (=> b!4965551 m!5989434))

(assert (=> b!4965551 m!5990618))

(assert (=> b!4965558 m!5989434))

(assert (=> b!4965558 m!5990618))

(assert (=> b!4965558 m!5989446))

(assert (=> b!4965558 m!5990618))

(declare-fun m!5990620 () Bool)

(assert (=> b!4965558 m!5990620))

(assert (=> b!4965558 m!5989434))

(assert (=> b!4965558 m!5990610))

(assert (=> b!4965558 m!5990620))

(assert (=> b!4965558 m!5990610))

(declare-fun m!5990622 () Bool)

(assert (=> b!4965558 m!5990622))

(assert (=> b!4965552 m!5989434))

(assert (=> b!4965552 m!5990610))

(assert (=> b!4965552 m!5990610))

(assert (=> b!4965552 m!5990612))

(assert (=> b!4964803 d!1597701))

(declare-fun b!4965564 () Bool)

(declare-fun e!3103835 () Regex!13624)

(declare-fun call!346260 () Regex!13624)

(assert (=> b!4965564 (= e!3103835 (Concat!22326 call!346260 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))))

(declare-fun bm!346255 () Bool)

(declare-fun c!847186 () Bool)

(declare-fun call!346262 () Regex!13624)

(declare-fun c!847185 () Bool)

(assert (=> bm!346255 (= call!346262 (derivativeStep!3920 (ite c!847186 (regTwo!27761 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (ite c!847185 (reg!13953 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (regOne!27760 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))) (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))))))

(declare-fun b!4965565 () Bool)

(declare-fun c!847188 () Bool)

(assert (=> b!4965565 (= c!847188 (nullable!4618 (regOne!27760 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))))))

(declare-fun e!3103834 () Regex!13624)

(assert (=> b!4965565 (= e!3103835 e!3103834)))

(declare-fun bm!346256 () Bool)

(declare-fun call!346263 () Regex!13624)

(assert (=> bm!346256 (= call!346263 (derivativeStep!3920 (ite c!847186 (regOne!27761 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (regTwo!27760 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))) (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))))))

(declare-fun bm!346257 () Bool)

(assert (=> bm!346257 (= call!346260 call!346262)))

(declare-fun bm!346258 () Bool)

(declare-fun call!346261 () Regex!13624)

(assert (=> bm!346258 (= call!346261 call!346260)))

(declare-fun b!4965566 () Bool)

(declare-fun e!3103837 () Regex!13624)

(assert (=> b!4965566 (= e!3103837 (Union!13624 call!346263 call!346262))))

(declare-fun b!4965568 () Bool)

(assert (=> b!4965568 (= c!847186 (is-Union!13624 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))))

(declare-fun e!3103836 () Regex!13624)

(assert (=> b!4965568 (= e!3103836 e!3103837)))

(declare-fun b!4965569 () Bool)

(assert (=> b!4965569 (= e!3103834 (Union!13624 (Concat!22326 call!346261 (regTwo!27760 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))) EmptyLang!13624))))

(declare-fun b!4965570 () Bool)

(assert (=> b!4965570 (= e!3103834 (Union!13624 (Concat!22326 call!346261 (regTwo!27760 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))) call!346263))))

(declare-fun b!4965571 () Bool)

(declare-fun e!3103833 () Regex!13624)

(assert (=> b!4965571 (= e!3103833 e!3103836)))

(declare-fun c!847187 () Bool)

(assert (=> b!4965571 (= c!847187 (is-ElementMatch!13624 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))))

(declare-fun b!4965572 () Bool)

(assert (=> b!4965572 (= e!3103836 (ite (= (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))) (c!846919 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))) EmptyExpr!13624 EmptyLang!13624))))

(declare-fun b!4965573 () Bool)

(assert (=> b!4965573 (= e!3103837 e!3103835)))

(assert (=> b!4965573 (= c!847185 (is-Star!13624 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))))

(declare-fun b!4965567 () Bool)

(assert (=> b!4965567 (= e!3103833 EmptyLang!13624)))

(declare-fun d!1597703 () Bool)

(declare-fun lt!2050380 () Regex!13624)

(assert (=> d!1597703 (validRegex!5967 lt!2050380)))

(assert (=> d!1597703 (= lt!2050380 e!3103833)))

(declare-fun c!847189 () Bool)

(assert (=> d!1597703 (= c!847189 (or (is-EmptyExpr!13624 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (is-EmptyLang!13624 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))))))

(assert (=> d!1597703 (validRegex!5967 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))))

(assert (=> d!1597703 (= (derivativeStep!3920 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))) (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))) lt!2050380)))

(assert (= (and d!1597703 c!847189) b!4965567))

(assert (= (and d!1597703 (not c!847189)) b!4965571))

(assert (= (and b!4965571 c!847187) b!4965572))

(assert (= (and b!4965571 (not c!847187)) b!4965568))

(assert (= (and b!4965568 c!847186) b!4965566))

(assert (= (and b!4965568 (not c!847186)) b!4965573))

(assert (= (and b!4965573 c!847185) b!4965564))

(assert (= (and b!4965573 (not c!847185)) b!4965565))

(assert (= (and b!4965565 c!847188) b!4965570))

(assert (= (and b!4965565 (not c!847188)) b!4965569))

(assert (= (or b!4965570 b!4965569) bm!346258))

(assert (= (or b!4965564 bm!346258) bm!346257))

(assert (= (or b!4965566 bm!346257) bm!346255))

(assert (= (or b!4965566 b!4965570) bm!346256))

(assert (=> bm!346255 m!5989444))

(declare-fun m!5990624 () Bool)

(assert (=> bm!346255 m!5990624))

(declare-fun m!5990626 () Bool)

(assert (=> b!4965565 m!5990626))

(assert (=> bm!346256 m!5989444))

(declare-fun m!5990628 () Bool)

(assert (=> bm!346256 m!5990628))

(declare-fun m!5990630 () Bool)

(assert (=> d!1597703 m!5990630))

(assert (=> d!1597703 m!5989440))

(assert (=> b!4964803 d!1597703))

(assert (=> b!4964803 d!1597547))

(declare-fun d!1597705 () Bool)

(assert (=> d!1597705 (= (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))) (t!368225 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))

(assert (=> b!4964803 d!1597705))

(declare-fun d!1597707 () Bool)

(declare-fun c!847190 () Bool)

(assert (=> d!1597707 (= c!847190 (is-Node!15143 (left!41893 (left!41893 (c!846918 input!1342)))))))

(declare-fun e!3103838 () Bool)

(assert (=> d!1597707 (= (inv!75059 (left!41893 (left!41893 (c!846918 input!1342)))) e!3103838)))

(declare-fun b!4965574 () Bool)

(assert (=> b!4965574 (= e!3103838 (inv!75065 (left!41893 (left!41893 (c!846918 input!1342)))))))

(declare-fun b!4965575 () Bool)

(declare-fun e!3103839 () Bool)

(assert (=> b!4965575 (= e!3103838 e!3103839)))

(declare-fun res!2119590 () Bool)

(assert (=> b!4965575 (= res!2119590 (not (is-Leaf!25164 (left!41893 (left!41893 (c!846918 input!1342))))))))

(assert (=> b!4965575 (=> res!2119590 e!3103839)))

(declare-fun b!4965576 () Bool)

(assert (=> b!4965576 (= e!3103839 (inv!75066 (left!41893 (left!41893 (c!846918 input!1342)))))))

(assert (= (and d!1597707 c!847190) b!4965574))

(assert (= (and d!1597707 (not c!847190)) b!4965575))

(assert (= (and b!4965575 (not res!2119590)) b!4965576))

(declare-fun m!5990632 () Bool)

(assert (=> b!4965574 m!5990632))

(declare-fun m!5990634 () Bool)

(assert (=> b!4965576 m!5990634))

(assert (=> b!4964965 d!1597707))

(declare-fun d!1597709 () Bool)

(declare-fun c!847191 () Bool)

(assert (=> d!1597709 (= c!847191 (is-Node!15143 (right!42223 (left!41893 (c!846918 input!1342)))))))

(declare-fun e!3103840 () Bool)

(assert (=> d!1597709 (= (inv!75059 (right!42223 (left!41893 (c!846918 input!1342)))) e!3103840)))

(declare-fun b!4965577 () Bool)

(assert (=> b!4965577 (= e!3103840 (inv!75065 (right!42223 (left!41893 (c!846918 input!1342)))))))

(declare-fun b!4965578 () Bool)

(declare-fun e!3103841 () Bool)

(assert (=> b!4965578 (= e!3103840 e!3103841)))

(declare-fun res!2119591 () Bool)

(assert (=> b!4965578 (= res!2119591 (not (is-Leaf!25164 (right!42223 (left!41893 (c!846918 input!1342))))))))

(assert (=> b!4965578 (=> res!2119591 e!3103841)))

(declare-fun b!4965579 () Bool)

(assert (=> b!4965579 (= e!3103841 (inv!75066 (right!42223 (left!41893 (c!846918 input!1342)))))))

(assert (= (and d!1597709 c!847191) b!4965577))

(assert (= (and d!1597709 (not c!847191)) b!4965578))

(assert (= (and b!4965578 (not res!2119591)) b!4965579))

(declare-fun m!5990636 () Bool)

(assert (=> b!4965577 m!5990636))

(declare-fun m!5990638 () Bool)

(assert (=> b!4965579 m!5990638))

(assert (=> b!4964965 d!1597709))

(declare-fun b!4965580 () Bool)

(declare-fun e!3103842 () Bool)

(declare-fun e!3103843 () Bool)

(assert (=> b!4965580 (= e!3103842 e!3103843)))

(declare-fun res!2119594 () Bool)

(assert (=> b!4965580 (=> (not res!2119594) (not e!3103843))))

(assert (=> b!4965580 (= res!2119594 (<= (- 1) (- (height!2011 (left!41893 (left!41893 (c!846918 totalInput!464)))) (height!2011 (right!42223 (left!41893 (c!846918 totalInput!464)))))))))

(declare-fun b!4965581 () Bool)

(declare-fun res!2119593 () Bool)

(assert (=> b!4965581 (=> (not res!2119593) (not e!3103843))))

(assert (=> b!4965581 (= res!2119593 (not (isEmpty!30929 (left!41893 (left!41893 (c!846918 totalInput!464))))))))

(declare-fun b!4965583 () Bool)

(declare-fun res!2119592 () Bool)

(assert (=> b!4965583 (=> (not res!2119592) (not e!3103843))))

(assert (=> b!4965583 (= res!2119592 (isBalanced!4200 (right!42223 (left!41893 (c!846918 totalInput!464)))))))

(declare-fun b!4965584 () Bool)

(declare-fun res!2119597 () Bool)

(assert (=> b!4965584 (=> (not res!2119597) (not e!3103843))))

(assert (=> b!4965584 (= res!2119597 (isBalanced!4200 (left!41893 (left!41893 (c!846918 totalInput!464)))))))

(declare-fun b!4965585 () Bool)

(assert (=> b!4965585 (= e!3103843 (not (isEmpty!30929 (right!42223 (left!41893 (c!846918 totalInput!464))))))))

(declare-fun d!1597711 () Bool)

(declare-fun res!2119596 () Bool)

(assert (=> d!1597711 (=> res!2119596 e!3103842)))

(assert (=> d!1597711 (= res!2119596 (not (is-Node!15143 (left!41893 (c!846918 totalInput!464)))))))

(assert (=> d!1597711 (= (isBalanced!4200 (left!41893 (c!846918 totalInput!464))) e!3103842)))

(declare-fun b!4965582 () Bool)

(declare-fun res!2119595 () Bool)

(assert (=> b!4965582 (=> (not res!2119595) (not e!3103843))))

(assert (=> b!4965582 (= res!2119595 (<= (- (height!2011 (left!41893 (left!41893 (c!846918 totalInput!464)))) (height!2011 (right!42223 (left!41893 (c!846918 totalInput!464))))) 1))))

(assert (= (and d!1597711 (not res!2119596)) b!4965580))

(assert (= (and b!4965580 res!2119594) b!4965582))

(assert (= (and b!4965582 res!2119595) b!4965584))

(assert (= (and b!4965584 res!2119597) b!4965583))

(assert (= (and b!4965583 res!2119592) b!4965581))

(assert (= (and b!4965581 res!2119593) b!4965585))

(declare-fun m!5990640 () Bool)

(assert (=> b!4965584 m!5990640))

(declare-fun m!5990642 () Bool)

(assert (=> b!4965585 m!5990642))

(declare-fun m!5990644 () Bool)

(assert (=> b!4965581 m!5990644))

(declare-fun m!5990646 () Bool)

(assert (=> b!4965580 m!5990646))

(declare-fun m!5990648 () Bool)

(assert (=> b!4965580 m!5990648))

(assert (=> b!4965582 m!5990646))

(assert (=> b!4965582 m!5990648))

(declare-fun m!5990650 () Bool)

(assert (=> b!4965583 m!5990650))

(assert (=> b!4964652 d!1597711))

(declare-fun d!1597713 () Bool)

(declare-fun c!847192 () Bool)

(assert (=> d!1597713 (= c!847192 (is-Empty!15143 (c!846918 (_1!34381 lt!2049676))))))

(declare-fun e!3103844 () List!57559)

(assert (=> d!1597713 (= (list!18361 (c!846918 (_1!34381 lt!2049676))) e!3103844)))

(declare-fun b!4965588 () Bool)

(declare-fun e!3103845 () List!57559)

(assert (=> b!4965588 (= e!3103845 (list!18363 (xs!18469 (c!846918 (_1!34381 lt!2049676)))))))

(declare-fun b!4965586 () Bool)

(assert (=> b!4965586 (= e!3103844 Nil!57435)))

(declare-fun b!4965587 () Bool)

(assert (=> b!4965587 (= e!3103844 e!3103845)))

(declare-fun c!847193 () Bool)

(assert (=> b!4965587 (= c!847193 (is-Leaf!25164 (c!846918 (_1!34381 lt!2049676))))))

(declare-fun b!4965589 () Bool)

(assert (=> b!4965589 (= e!3103845 (++!12530 (list!18361 (left!41893 (c!846918 (_1!34381 lt!2049676)))) (list!18361 (right!42223 (c!846918 (_1!34381 lt!2049676))))))))

(assert (= (and d!1597713 c!847192) b!4965586))

(assert (= (and d!1597713 (not c!847192)) b!4965587))

(assert (= (and b!4965587 c!847193) b!4965588))

(assert (= (and b!4965587 (not c!847193)) b!4965589))

(declare-fun m!5990652 () Bool)

(assert (=> b!4965588 m!5990652))

(declare-fun m!5990654 () Bool)

(assert (=> b!4965589 m!5990654))

(declare-fun m!5990656 () Bool)

(assert (=> b!4965589 m!5990656))

(assert (=> b!4965589 m!5990654))

(assert (=> b!4965589 m!5990656))

(declare-fun m!5990658 () Bool)

(assert (=> b!4965589 m!5990658))

(assert (=> d!1597361 d!1597713))

(declare-fun d!1597715 () Bool)

(declare-fun res!2119598 () Bool)

(declare-fun e!3103846 () Bool)

(assert (=> d!1597715 (=> (not res!2119598) (not e!3103846))))

(assert (=> d!1597715 (= res!2119598 (= (csize!30516 (right!42223 (c!846918 totalInput!464))) (+ (size!38068 (left!41893 (right!42223 (c!846918 totalInput!464)))) (size!38068 (right!42223 (right!42223 (c!846918 totalInput!464)))))))))

(assert (=> d!1597715 (= (inv!75065 (right!42223 (c!846918 totalInput!464))) e!3103846)))

(declare-fun b!4965590 () Bool)

(declare-fun res!2119599 () Bool)

(assert (=> b!4965590 (=> (not res!2119599) (not e!3103846))))

(assert (=> b!4965590 (= res!2119599 (and (not (= (left!41893 (right!42223 (c!846918 totalInput!464))) Empty!15143)) (not (= (right!42223 (right!42223 (c!846918 totalInput!464))) Empty!15143))))))

(declare-fun b!4965591 () Bool)

(declare-fun res!2119600 () Bool)

(assert (=> b!4965591 (=> (not res!2119600) (not e!3103846))))

(assert (=> b!4965591 (= res!2119600 (= (cheight!15354 (right!42223 (c!846918 totalInput!464))) (+ (max!0 (height!2011 (left!41893 (right!42223 (c!846918 totalInput!464)))) (height!2011 (right!42223 (right!42223 (c!846918 totalInput!464))))) 1)))))

(declare-fun b!4965592 () Bool)

(assert (=> b!4965592 (= e!3103846 (<= 0 (cheight!15354 (right!42223 (c!846918 totalInput!464)))))))

(assert (= (and d!1597715 res!2119598) b!4965590))

(assert (= (and b!4965590 res!2119599) b!4965591))

(assert (= (and b!4965591 res!2119600) b!4965592))

(declare-fun m!5990660 () Bool)

(assert (=> d!1597715 m!5990660))

(declare-fun m!5990662 () Bool)

(assert (=> d!1597715 m!5990662))

(declare-fun m!5990664 () Bool)

(assert (=> b!4965591 m!5990664))

(declare-fun m!5990666 () Bool)

(assert (=> b!4965591 m!5990666))

(assert (=> b!4965591 m!5990664))

(assert (=> b!4965591 m!5990666))

(declare-fun m!5990668 () Bool)

(assert (=> b!4965591 m!5990668))

(assert (=> b!4964839 d!1597715))

(assert (=> b!4964794 d!1597551))

(declare-fun d!1597717 () Bool)

(assert (=> d!1597717 (dynLambda!23152 lambda!247318 (_1!34381 lt!2049950))))

(declare-fun lt!2050381 () Unit!148334)

(assert (=> d!1597717 (= lt!2050381 (choose!36654 lambda!247318 (_1!34381 lt!2049950)))))

(assert (=> d!1597717 (Forall!1760 lambda!247318)))

(assert (=> d!1597717 (= (ForallOf!1225 lambda!247318 (_1!34381 lt!2049950)) lt!2050381)))

(declare-fun b_lambda!196635 () Bool)

(assert (=> (not b_lambda!196635) (not d!1597717)))

(declare-fun bs!1182987 () Bool)

(assert (= bs!1182987 d!1597717))

(declare-fun m!5990670 () Bool)

(assert (=> bs!1182987 m!5990670))

(declare-fun m!5990672 () Bool)

(assert (=> bs!1182987 m!5990672))

(declare-fun m!5990674 () Bool)

(assert (=> bs!1182987 m!5990674))

(assert (=> b!4964759 d!1597717))

(declare-fun d!1597719 () Bool)

(declare-fun e!3103847 () Bool)

(assert (=> d!1597719 e!3103847))

(declare-fun res!2119601 () Bool)

(assert (=> d!1597719 (=> res!2119601 e!3103847)))

(assert (=> d!1597719 (= res!2119601 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) lt!2049946 lt!2049946 (size!38064 lt!2049946)))))))

(declare-fun lt!2050382 () Unit!148334)

(assert (=> d!1597719 (= lt!2050382 (choose!36655 (regex!8391 (h!63885 (t!368227 rulesArg!259))) lt!2049946))))

(assert (=> d!1597719 (validRegex!5967 (regex!8391 (h!63885 (t!368227 rulesArg!259))))))

(assert (=> d!1597719 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1814 (regex!8391 (h!63885 (t!368227 rulesArg!259))) lt!2049946) lt!2050382)))

(declare-fun b!4965593 () Bool)

(assert (=> b!4965593 (= e!3103847 (matchR!6634 (regex!8391 (h!63885 (t!368227 rulesArg!259))) (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) lt!2049946 lt!2049946 (size!38064 lt!2049946)))))))

(assert (= (and d!1597719 (not res!2119601)) b!4965593))

(assert (=> d!1597719 m!5988784))

(assert (=> d!1597719 m!5989350))

(assert (=> d!1597719 m!5989342))

(declare-fun m!5990676 () Bool)

(assert (=> d!1597719 m!5990676))

(assert (=> d!1597719 m!5988784))

(assert (=> d!1597719 m!5989342))

(assert (=> d!1597719 m!5989344))

(declare-fun m!5990678 () Bool)

(assert (=> d!1597719 m!5990678))

(assert (=> b!4965593 m!5988784))

(assert (=> b!4965593 m!5989342))

(assert (=> b!4965593 m!5988784))

(assert (=> b!4965593 m!5989342))

(assert (=> b!4965593 m!5989344))

(assert (=> b!4965593 m!5989362))

(assert (=> b!4964759 d!1597719))

(assert (=> b!4964759 d!1597201))

(declare-fun d!1597721 () Bool)

(declare-fun lt!2050383 () Int)

(assert (=> d!1597721 (= lt!2050383 (size!38064 (list!18359 (_1!34381 lt!2049950))))))

(assert (=> d!1597721 (= lt!2050383 (size!38068 (c!846918 (_1!34381 lt!2049950))))))

(assert (=> d!1597721 (= (size!38065 (_1!34381 lt!2049950)) lt!2050383)))

(declare-fun bs!1182988 () Bool)

(assert (= bs!1182988 d!1597721))

(assert (=> bs!1182988 m!5989346))

(assert (=> bs!1182988 m!5989346))

(declare-fun m!5990680 () Bool)

(assert (=> bs!1182988 m!5990680))

(declare-fun m!5990682 () Bool)

(assert (=> bs!1182988 m!5990682))

(assert (=> b!4964759 d!1597721))

(assert (=> b!4964759 d!1597117))

(declare-fun d!1597723 () Bool)

(declare-fun e!3103848 () Bool)

(assert (=> d!1597723 e!3103848))

(declare-fun res!2119602 () Bool)

(assert (=> d!1597723 (=> (not res!2119602) (not e!3103848))))

(assert (=> d!1597723 (= res!2119602 (semiInverseModEq!3698 (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))))))

(declare-fun Unit!148353 () Unit!148334)

(assert (=> d!1597723 (= (lemmaInv!1332 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) Unit!148353)))

(declare-fun b!4965594 () Bool)

(assert (=> b!4965594 (= e!3103848 (equivClasses!3546 (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))))))

(assert (= (and d!1597723 res!2119602) b!4965594))

(assert (=> d!1597723 m!5989298))

(assert (=> b!4965594 m!5989300))

(assert (=> b!4964759 d!1597723))

(declare-fun d!1597725 () Bool)

(assert (=> d!1597725 (= (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) lt!2049946 lt!2049946 (size!38064 lt!2049946)))) (is-Nil!57435 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) lt!2049946 lt!2049946 (size!38064 lt!2049946)))))))

(assert (=> b!4964759 d!1597725))

(declare-fun bs!1182989 () Bool)

(declare-fun d!1597727 () Bool)

(assert (= bs!1182989 (and d!1597727 d!1597335)))

(declare-fun lambda!247343 () Int)

(assert (=> bs!1182989 (= (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) (= lambda!247343 lambda!247322))))

(declare-fun bs!1182990 () Bool)

(assert (= bs!1182990 (and d!1597727 d!1597371)))

(assert (=> bs!1182990 (= (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) (= lambda!247343 lambda!247329))))

(declare-fun b!4965595 () Bool)

(declare-fun e!3103849 () Bool)

(assert (=> b!4965595 (= e!3103849 true)))

(assert (=> d!1597727 e!3103849))

(assert (= d!1597727 b!4965595))

(assert (=> b!4965595 (< (dynLambda!23142 order!26187 (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) (dynLambda!23153 order!26199 lambda!247343))))

(assert (=> b!4965595 (< (dynLambda!23144 order!26191 (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) (dynLambda!23153 order!26199 lambda!247343))))

(assert (=> d!1597727 (= (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (_1!34381 lt!2049950)) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049950)))))))

(declare-fun lt!2050384 () Unit!148334)

(assert (=> d!1597727 (= lt!2050384 (Forall2of!475 lambda!247343 (_1!34381 lt!2049950) (seqFromList!6034 (list!18359 (_1!34381 lt!2049950)))))))

(assert (=> d!1597727 (= (list!18359 (_1!34381 lt!2049950)) (list!18359 (seqFromList!6034 (list!18359 (_1!34381 lt!2049950)))))))

(assert (=> d!1597727 (= (lemmaEqSameImage!1166 (transformation!8391 (h!63885 (t!368227 rulesArg!259))) (_1!34381 lt!2049950) (seqFromList!6034 (list!18359 (_1!34381 lt!2049950)))) lt!2050384)))

(declare-fun b_lambda!196637 () Bool)

(assert (=> (not b_lambda!196637) (not d!1597727)))

(declare-fun t!368358 () Bool)

(declare-fun tb!260347 () Bool)

(assert (=> (and b!4964142 (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) t!368358) tb!260347))

(declare-fun result!325442 () Bool)

(assert (=> tb!260347 (= result!325442 (inv!21 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (_1!34381 lt!2049950))))))

(declare-fun m!5990684 () Bool)

(assert (=> tb!260347 m!5990684))

(assert (=> d!1597727 t!368358))

(declare-fun b_and!347863 () Bool)

(assert (= b_and!347857 (and (=> t!368358 result!325442) b_and!347863)))

(declare-fun t!368360 () Bool)

(declare-fun tb!260349 () Bool)

(assert (=> (and b!4964367 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) t!368360) tb!260349))

(declare-fun result!325444 () Bool)

(assert (= result!325444 result!325442))

(assert (=> d!1597727 t!368360))

(declare-fun b_and!347865 () Bool)

(assert (= b_and!347859 (and (=> t!368360 result!325444) b_and!347865)))

(declare-fun t!368362 () Bool)

(declare-fun tb!260351 () Bool)

(assert (=> (and b!4964941 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) t!368362) tb!260351))

(declare-fun result!325446 () Bool)

(assert (= result!325446 result!325442))

(assert (=> d!1597727 t!368362))

(declare-fun b_and!347867 () Bool)

(assert (= b_and!347861 (and (=> t!368362 result!325446) b_and!347867)))

(declare-fun b_lambda!196639 () Bool)

(assert (=> (not b_lambda!196639) (not d!1597727)))

(declare-fun t!368364 () Bool)

(declare-fun tb!260353 () Bool)

(assert (=> (and b!4964142 (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) t!368364) tb!260353))

(declare-fun result!325448 () Bool)

(assert (=> tb!260353 (= result!325448 (inv!21 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049950))))))))

(declare-fun m!5990686 () Bool)

(assert (=> tb!260353 m!5990686))

(assert (=> d!1597727 t!368364))

(declare-fun b_and!347869 () Bool)

(assert (= b_and!347863 (and (=> t!368364 result!325448) b_and!347869)))

(declare-fun t!368366 () Bool)

(declare-fun tb!260355 () Bool)

(assert (=> (and b!4964367 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) t!368366) tb!260355))

(declare-fun result!325450 () Bool)

(assert (= result!325450 result!325448))

(assert (=> d!1597727 t!368366))

(declare-fun b_and!347871 () Bool)

(assert (= b_and!347865 (and (=> t!368366 result!325450) b_and!347871)))

(declare-fun t!368368 () Bool)

(declare-fun tb!260357 () Bool)

(assert (=> (and b!4964941 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) t!368368) tb!260357))

(declare-fun result!325452 () Bool)

(assert (= result!325452 result!325448))

(assert (=> d!1597727 t!368368))

(declare-fun b_and!347873 () Bool)

(assert (= b_and!347867 (and (=> t!368368 result!325452) b_and!347873)))

(assert (=> d!1597727 m!5989346))

(declare-fun m!5990688 () Bool)

(assert (=> d!1597727 m!5990688))

(assert (=> d!1597727 m!5989334))

(declare-fun m!5990690 () Bool)

(assert (=> d!1597727 m!5990690))

(assert (=> d!1597727 m!5989334))

(declare-fun m!5990692 () Bool)

(assert (=> d!1597727 m!5990692))

(assert (=> d!1597727 m!5989334))

(declare-fun m!5990694 () Bool)

(assert (=> d!1597727 m!5990694))

(assert (=> b!4964759 d!1597727))

(declare-fun d!1597729 () Bool)

(assert (=> d!1597729 (= (list!18359 (_1!34381 lt!2049950)) (list!18361 (c!846918 (_1!34381 lt!2049950))))))

(declare-fun bs!1182991 () Bool)

(assert (= bs!1182991 d!1597729))

(declare-fun m!5990696 () Bool)

(assert (=> bs!1182991 m!5990696))

(assert (=> b!4964759 d!1597729))

(declare-fun d!1597731 () Bool)

(assert (=> d!1597731 (= (seqFromList!6034 (list!18359 (_1!34381 lt!2049950))) (fromListB!2729 (list!18359 (_1!34381 lt!2049950))))))

(declare-fun bs!1182992 () Bool)

(assert (= bs!1182992 d!1597731))

(assert (=> bs!1182992 m!5989346))

(declare-fun m!5990698 () Bool)

(assert (=> bs!1182992 m!5990698))

(assert (=> b!4964759 d!1597731))

(declare-fun d!1597733 () Bool)

(declare-fun lt!2050385 () Int)

(assert (=> d!1597733 (>= lt!2050385 0)))

(declare-fun e!3103852 () Int)

(assert (=> d!1597733 (= lt!2050385 e!3103852)))

(declare-fun c!847194 () Bool)

(assert (=> d!1597733 (= c!847194 (is-Nil!57435 lt!2049946))))

(assert (=> d!1597733 (= (size!38064 lt!2049946) lt!2050385)))

(declare-fun b!4965596 () Bool)

(assert (=> b!4965596 (= e!3103852 0)))

(declare-fun b!4965597 () Bool)

(assert (=> b!4965597 (= e!3103852 (+ 1 (size!38064 (t!368225 lt!2049946))))))

(assert (= (and d!1597733 c!847194) b!4965596))

(assert (= (and d!1597733 (not c!847194)) b!4965597))

(declare-fun m!5990700 () Bool)

(assert (=> b!4965597 m!5990700))

(assert (=> b!4964759 d!1597733))

(declare-fun d!1597735 () Bool)

(assert (=> d!1597735 (dynLambda!23152 lambda!247318 (seqFromList!6034 (list!18359 (_1!34381 lt!2049950))))))

(declare-fun lt!2050386 () Unit!148334)

(assert (=> d!1597735 (= lt!2050386 (choose!36654 lambda!247318 (seqFromList!6034 (list!18359 (_1!34381 lt!2049950)))))))

(assert (=> d!1597735 (Forall!1760 lambda!247318)))

(assert (=> d!1597735 (= (ForallOf!1225 lambda!247318 (seqFromList!6034 (list!18359 (_1!34381 lt!2049950)))) lt!2050386)))

(declare-fun b_lambda!196641 () Bool)

(assert (=> (not b_lambda!196641) (not d!1597735)))

(declare-fun bs!1182993 () Bool)

(assert (= bs!1182993 d!1597735))

(assert (=> bs!1182993 m!5989334))

(declare-fun m!5990702 () Bool)

(assert (=> bs!1182993 m!5990702))

(assert (=> bs!1182993 m!5989334))

(declare-fun m!5990704 () Bool)

(assert (=> bs!1182993 m!5990704))

(assert (=> bs!1182993 m!5990674))

(assert (=> b!4964759 d!1597735))

(declare-fun d!1597737 () Bool)

(assert (=> d!1597737 (= (apply!13902 (transformation!8391 (h!63885 (t!368227 rulesArg!259))) (_1!34381 lt!2049950)) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (_1!34381 lt!2049950)))))

(declare-fun b_lambda!196643 () Bool)

(assert (=> (not b_lambda!196643) (not d!1597737)))

(assert (=> d!1597737 t!368358))

(declare-fun b_and!347875 () Bool)

(assert (= b_and!347869 (and (=> t!368358 result!325442) b_and!347875)))

(assert (=> d!1597737 t!368360))

(declare-fun b_and!347877 () Bool)

(assert (= b_and!347871 (and (=> t!368360 result!325444) b_and!347877)))

(assert (=> d!1597737 t!368362))

(declare-fun b_and!347879 () Bool)

(assert (= b_and!347873 (and (=> t!368362 result!325446) b_and!347879)))

(assert (=> d!1597737 m!5990688))

(assert (=> b!4964759 d!1597737))

(declare-fun b!4965598 () Bool)

(declare-fun e!3103855 () tuple2!62158)

(declare-fun e!3103860 () tuple2!62158)

(assert (=> b!4965598 (= e!3103855 e!3103860)))

(declare-fun lt!2050403 () tuple2!62158)

(declare-fun call!346268 () tuple2!62158)

(assert (=> b!4965598 (= lt!2050403 call!346268)))

(declare-fun c!847198 () Bool)

(assert (=> b!4965598 (= c!847198 (isEmpty!30923 (_1!34382 lt!2050403)))))

(declare-fun b!4965599 () Bool)

(declare-fun e!3103857 () tuple2!62158)

(declare-fun e!3103856 () tuple2!62158)

(assert (=> b!4965599 (= e!3103857 e!3103856)))

(declare-fun c!847200 () Bool)

(assert (=> b!4965599 (= c!847200 (= (size!38064 Nil!57435) (size!38064 lt!2049946)))))

(declare-fun bm!346259 () Bool)

(declare-fun call!346269 () Unit!148334)

(assert (=> bm!346259 (= call!346269 (lemmaIsPrefixRefl!3566 lt!2049946 lt!2049946))))

(declare-fun b!4965600 () Bool)

(declare-fun e!3103854 () tuple2!62158)

(assert (=> b!4965600 (= e!3103854 (tuple2!62159 Nil!57435 Nil!57435))))

(declare-fun b!4965601 () Bool)

(assert (=> b!4965601 (= e!3103855 call!346268)))

(declare-fun bm!346260 () Bool)

(declare-fun call!346271 () List!57559)

(assert (=> bm!346260 (= call!346271 (tail!9799 lt!2049946))))

(declare-fun bm!346261 () Bool)

(declare-fun call!346270 () Regex!13624)

(declare-fun call!346265 () C!27498)

(assert (=> bm!346261 (= call!346270 (derivativeStep!3920 (regex!8391 (h!63885 (t!368227 rulesArg!259))) call!346265))))

(declare-fun b!4965602 () Bool)

(declare-fun e!3103859 () Bool)

(declare-fun lt!2050391 () tuple2!62158)

(assert (=> b!4965602 (= e!3103859 (>= (size!38064 (_1!34382 lt!2050391)) (size!38064 Nil!57435)))))

(declare-fun bm!346262 () Bool)

(declare-fun lt!2050407 () List!57559)

(assert (=> bm!346262 (= call!346268 (findLongestMatchInner!1853 call!346270 lt!2050407 (+ (size!38064 Nil!57435) 1) call!346271 lt!2049946 (size!38064 lt!2049946)))))

(declare-fun b!4965603 () Bool)

(declare-fun e!3103853 () Bool)

(assert (=> b!4965603 (= e!3103853 e!3103859)))

(declare-fun res!2119603 () Bool)

(assert (=> b!4965603 (=> res!2119603 e!3103859)))

(assert (=> b!4965603 (= res!2119603 (isEmpty!30923 (_1!34382 lt!2050391)))))

(declare-fun bm!346263 () Bool)

(declare-fun call!346266 () Unit!148334)

(assert (=> bm!346263 (= call!346266 (lemmaIsPrefixSameLengthThenSameList!1206 lt!2049946 Nil!57435 lt!2049946))))

(declare-fun b!4965604 () Bool)

(assert (=> b!4965604 (= e!3103860 (tuple2!62159 Nil!57435 lt!2049946))))

(declare-fun bm!346264 () Bool)

(declare-fun call!346264 () Bool)

(assert (=> bm!346264 (= call!346264 (nullable!4618 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))))

(declare-fun b!4965605 () Bool)

(declare-fun e!3103858 () Unit!148334)

(declare-fun Unit!148354 () Unit!148334)

(assert (=> b!4965605 (= e!3103858 Unit!148354)))

(declare-fun lt!2050394 () Unit!148334)

(assert (=> b!4965605 (= lt!2050394 call!346269)))

(declare-fun call!346267 () Bool)

(assert (=> b!4965605 call!346267))

(declare-fun lt!2050404 () Unit!148334)

(assert (=> b!4965605 (= lt!2050404 lt!2050394)))

(declare-fun lt!2050413 () Unit!148334)

(assert (=> b!4965605 (= lt!2050413 call!346266)))

(assert (=> b!4965605 (= lt!2049946 Nil!57435)))

(declare-fun lt!2050398 () Unit!148334)

(assert (=> b!4965605 (= lt!2050398 lt!2050413)))

(assert (=> b!4965605 false))

(declare-fun b!4965606 () Bool)

(declare-fun c!847196 () Bool)

(assert (=> b!4965606 (= c!847196 call!346264)))

(declare-fun lt!2050400 () Unit!148334)

(declare-fun lt!2050408 () Unit!148334)

(assert (=> b!4965606 (= lt!2050400 lt!2050408)))

(declare-fun lt!2050412 () C!27498)

(declare-fun lt!2050411 () List!57559)

(assert (=> b!4965606 (= (++!12530 (++!12530 Nil!57435 (Cons!57435 lt!2050412 Nil!57435)) lt!2050411) lt!2049946)))

(assert (=> b!4965606 (= lt!2050408 (lemmaMoveElementToOtherListKeepsConcatEq!1443 Nil!57435 lt!2050412 lt!2050411 lt!2049946))))

(assert (=> b!4965606 (= lt!2050411 (tail!9799 lt!2049946))))

(assert (=> b!4965606 (= lt!2050412 (head!10666 lt!2049946))))

(declare-fun lt!2050392 () Unit!148334)

(declare-fun lt!2050402 () Unit!148334)

(assert (=> b!4965606 (= lt!2050392 lt!2050402)))

(assert (=> b!4965606 (isPrefix!5242 (++!12530 Nil!57435 (Cons!57435 (head!10666 (getSuffix!3086 lt!2049946 Nil!57435)) Nil!57435)) lt!2049946)))

(assert (=> b!4965606 (= lt!2050402 (lemmaAddHeadSuffixToPrefixStillPrefix!833 Nil!57435 lt!2049946))))

(declare-fun lt!2050388 () Unit!148334)

(declare-fun lt!2050387 () Unit!148334)

(assert (=> b!4965606 (= lt!2050388 lt!2050387)))

(assert (=> b!4965606 (= lt!2050387 (lemmaAddHeadSuffixToPrefixStillPrefix!833 Nil!57435 lt!2049946))))

(assert (=> b!4965606 (= lt!2050407 (++!12530 Nil!57435 (Cons!57435 (head!10666 lt!2049946) Nil!57435)))))

(declare-fun lt!2050414 () Unit!148334)

(assert (=> b!4965606 (= lt!2050414 e!3103858)))

(declare-fun c!847195 () Bool)

(assert (=> b!4965606 (= c!847195 (= (size!38064 Nil!57435) (size!38064 lt!2049946)))))

(declare-fun lt!2050396 () Unit!148334)

(declare-fun lt!2050406 () Unit!148334)

(assert (=> b!4965606 (= lt!2050396 lt!2050406)))

(assert (=> b!4965606 (<= (size!38064 Nil!57435) (size!38064 lt!2049946))))

(assert (=> b!4965606 (= lt!2050406 (lemmaIsPrefixThenSmallerEqSize!759 Nil!57435 lt!2049946))))

(assert (=> b!4965606 (= e!3103856 e!3103855)))

(declare-fun bm!346265 () Bool)

(assert (=> bm!346265 (= call!346265 (head!10666 lt!2049946))))

(declare-fun d!1597739 () Bool)

(assert (=> d!1597739 e!3103853))

(declare-fun res!2119604 () Bool)

(assert (=> d!1597739 (=> (not res!2119604) (not e!3103853))))

(assert (=> d!1597739 (= res!2119604 (= (++!12530 (_1!34382 lt!2050391) (_2!34382 lt!2050391)) lt!2049946))))

(assert (=> d!1597739 (= lt!2050391 e!3103857)))

(declare-fun c!847199 () Bool)

(assert (=> d!1597739 (= c!847199 (lostCause!1130 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))))

(declare-fun lt!2050389 () Unit!148334)

(declare-fun Unit!148355 () Unit!148334)

(assert (=> d!1597739 (= lt!2050389 Unit!148355)))

(assert (=> d!1597739 (= (getSuffix!3086 lt!2049946 Nil!57435) lt!2049946)))

(declare-fun lt!2050410 () Unit!148334)

(declare-fun lt!2050395 () Unit!148334)

(assert (=> d!1597739 (= lt!2050410 lt!2050395)))

(declare-fun lt!2050390 () List!57559)

(assert (=> d!1597739 (= lt!2049946 lt!2050390)))

(assert (=> d!1597739 (= lt!2050395 (lemmaSamePrefixThenSameSuffix!2498 Nil!57435 lt!2049946 Nil!57435 lt!2050390 lt!2049946))))

(assert (=> d!1597739 (= lt!2050390 (getSuffix!3086 lt!2049946 Nil!57435))))

(declare-fun lt!2050399 () Unit!148334)

(declare-fun lt!2050393 () Unit!148334)

(assert (=> d!1597739 (= lt!2050399 lt!2050393)))

(assert (=> d!1597739 (isPrefix!5242 Nil!57435 (++!12530 Nil!57435 lt!2049946))))

(assert (=> d!1597739 (= lt!2050393 (lemmaConcatTwoListThenFirstIsPrefix!3344 Nil!57435 lt!2049946))))

(assert (=> d!1597739 (validRegex!5967 (regex!8391 (h!63885 (t!368227 rulesArg!259))))))

(assert (=> d!1597739 (= (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) lt!2049946 lt!2049946 (size!38064 lt!2049946)) lt!2050391)))

(declare-fun b!4965607 () Bool)

(assert (=> b!4965607 (= e!3103860 lt!2050403)))

(declare-fun b!4965608 () Bool)

(declare-fun Unit!148356 () Unit!148334)

(assert (=> b!4965608 (= e!3103858 Unit!148356)))

(declare-fun b!4965609 () Bool)

(assert (=> b!4965609 (= e!3103857 (tuple2!62159 Nil!57435 lt!2049946))))

(declare-fun bm!346266 () Bool)

(assert (=> bm!346266 (= call!346267 (isPrefix!5242 lt!2049946 lt!2049946))))

(declare-fun b!4965610 () Bool)

(declare-fun c!847197 () Bool)

(assert (=> b!4965610 (= c!847197 call!346264)))

(declare-fun lt!2050397 () Unit!148334)

(declare-fun lt!2050405 () Unit!148334)

(assert (=> b!4965610 (= lt!2050397 lt!2050405)))

(assert (=> b!4965610 (= lt!2049946 Nil!57435)))

(assert (=> b!4965610 (= lt!2050405 call!346266)))

(declare-fun lt!2050409 () Unit!148334)

(declare-fun lt!2050401 () Unit!148334)

(assert (=> b!4965610 (= lt!2050409 lt!2050401)))

(assert (=> b!4965610 call!346267))

(assert (=> b!4965610 (= lt!2050401 call!346269)))

(assert (=> b!4965610 (= e!3103856 e!3103854)))

(declare-fun b!4965611 () Bool)

(assert (=> b!4965611 (= e!3103854 (tuple2!62159 Nil!57435 lt!2049946))))

(assert (= (and d!1597739 c!847199) b!4965609))

(assert (= (and d!1597739 (not c!847199)) b!4965599))

(assert (= (and b!4965599 c!847200) b!4965610))

(assert (= (and b!4965599 (not c!847200)) b!4965606))

(assert (= (and b!4965610 c!847197) b!4965600))

(assert (= (and b!4965610 (not c!847197)) b!4965611))

(assert (= (and b!4965606 c!847195) b!4965605))

(assert (= (and b!4965606 (not c!847195)) b!4965608))

(assert (= (and b!4965606 c!847196) b!4965598))

(assert (= (and b!4965606 (not c!847196)) b!4965601))

(assert (= (and b!4965598 c!847198) b!4965604))

(assert (= (and b!4965598 (not c!847198)) b!4965607))

(assert (= (or b!4965598 b!4965601) bm!346265))

(assert (= (or b!4965598 b!4965601) bm!346260))

(assert (= (or b!4965598 b!4965601) bm!346261))

(assert (= (or b!4965598 b!4965601) bm!346262))

(assert (= (or b!4965610 b!4965605) bm!346259))

(assert (= (or b!4965610 b!4965605) bm!346263))

(assert (= (or b!4965610 b!4965606) bm!346264))

(assert (= (or b!4965610 b!4965605) bm!346266))

(assert (= (and d!1597739 res!2119604) b!4965603))

(assert (= (and b!4965603 (not res!2119603)) b!4965602))

(assert (=> b!4965606 m!5988784))

(declare-fun m!5990706 () Bool)

(assert (=> b!4965606 m!5990706))

(declare-fun m!5990708 () Bool)

(assert (=> b!4965606 m!5990708))

(declare-fun m!5990710 () Bool)

(assert (=> b!4965606 m!5990710))

(declare-fun m!5990712 () Bool)

(assert (=> b!4965606 m!5990712))

(declare-fun m!5990714 () Bool)

(assert (=> b!4965606 m!5990714))

(declare-fun m!5990716 () Bool)

(assert (=> b!4965606 m!5990716))

(assert (=> b!4965606 m!5989342))

(declare-fun m!5990718 () Bool)

(assert (=> b!4965606 m!5990718))

(assert (=> b!4965606 m!5990706))

(assert (=> b!4965606 m!5990710))

(declare-fun m!5990720 () Bool)

(assert (=> b!4965606 m!5990720))

(declare-fun m!5990722 () Bool)

(assert (=> b!4965606 m!5990722))

(declare-fun m!5990724 () Bool)

(assert (=> b!4965606 m!5990724))

(declare-fun m!5990726 () Bool)

(assert (=> b!4965606 m!5990726))

(assert (=> b!4965606 m!5990712))

(declare-fun m!5990728 () Bool)

(assert (=> b!4965606 m!5990728))

(declare-fun m!5990730 () Bool)

(assert (=> b!4965598 m!5990730))

(declare-fun m!5990732 () Bool)

(assert (=> bm!346266 m!5990732))

(assert (=> bm!346265 m!5990722))

(declare-fun m!5990734 () Bool)

(assert (=> d!1597739 m!5990734))

(declare-fun m!5990736 () Bool)

(assert (=> d!1597739 m!5990736))

(assert (=> d!1597739 m!5990678))

(assert (=> d!1597739 m!5990710))

(declare-fun m!5990738 () Bool)

(assert (=> d!1597739 m!5990738))

(declare-fun m!5990740 () Bool)

(assert (=> d!1597739 m!5990740))

(declare-fun m!5990742 () Bool)

(assert (=> d!1597739 m!5990742))

(assert (=> d!1597739 m!5990736))

(declare-fun m!5990744 () Bool)

(assert (=> d!1597739 m!5990744))

(declare-fun m!5990746 () Bool)

(assert (=> b!4965602 m!5990746))

(assert (=> b!4965602 m!5988784))

(declare-fun m!5990748 () Bool)

(assert (=> b!4965603 m!5990748))

(declare-fun m!5990750 () Bool)

(assert (=> bm!346259 m!5990750))

(assert (=> bm!346260 m!5990726))

(declare-fun m!5990752 () Bool)

(assert (=> bm!346264 m!5990752))

(declare-fun m!5990754 () Bool)

(assert (=> bm!346261 m!5990754))

(assert (=> bm!346262 m!5989342))

(declare-fun m!5990756 () Bool)

(assert (=> bm!346262 m!5990756))

(declare-fun m!5990758 () Bool)

(assert (=> bm!346263 m!5990758))

(assert (=> b!4964759 d!1597739))

(declare-fun d!1597741 () Bool)

(assert (=> d!1597741 (= (isEmpty!30930 lt!2049678) (not (is-Some!14445 lt!2049678)))))

(assert (=> d!1597233 d!1597741))

(declare-fun b!4965612 () Bool)

(declare-fun e!3103862 () List!57559)

(assert (=> b!4965612 (= e!3103862 (list!18361 (right!42223 (c!846918 (_2!34377 lt!2049572)))))))

(declare-fun b!4965614 () Bool)

(declare-fun res!2119605 () Bool)

(declare-fun e!3103861 () Bool)

(assert (=> b!4965614 (=> (not res!2119605) (not e!3103861))))

(declare-fun lt!2050415 () List!57559)

(assert (=> b!4965614 (= res!2119605 (= (size!38064 lt!2050415) (+ (size!38064 (list!18361 (left!41893 (c!846918 (_2!34377 lt!2049572))))) (size!38064 (list!18361 (right!42223 (c!846918 (_2!34377 lt!2049572))))))))))

(declare-fun b!4965615 () Bool)

(assert (=> b!4965615 (= e!3103861 (or (not (= (list!18361 (right!42223 (c!846918 (_2!34377 lt!2049572)))) Nil!57435)) (= lt!2050415 (list!18361 (left!41893 (c!846918 (_2!34377 lt!2049572)))))))))

(declare-fun b!4965613 () Bool)

(assert (=> b!4965613 (= e!3103862 (Cons!57435 (h!63883 (list!18361 (left!41893 (c!846918 (_2!34377 lt!2049572))))) (++!12530 (t!368225 (list!18361 (left!41893 (c!846918 (_2!34377 lt!2049572))))) (list!18361 (right!42223 (c!846918 (_2!34377 lt!2049572)))))))))

(declare-fun d!1597743 () Bool)

(assert (=> d!1597743 e!3103861))

(declare-fun res!2119606 () Bool)

(assert (=> d!1597743 (=> (not res!2119606) (not e!3103861))))

(assert (=> d!1597743 (= res!2119606 (= (content!10180 lt!2050415) (set.union (content!10180 (list!18361 (left!41893 (c!846918 (_2!34377 lt!2049572))))) (content!10180 (list!18361 (right!42223 (c!846918 (_2!34377 lt!2049572))))))))))

(assert (=> d!1597743 (= lt!2050415 e!3103862)))

(declare-fun c!847201 () Bool)

(assert (=> d!1597743 (= c!847201 (is-Nil!57435 (list!18361 (left!41893 (c!846918 (_2!34377 lt!2049572))))))))

(assert (=> d!1597743 (= (++!12530 (list!18361 (left!41893 (c!846918 (_2!34377 lt!2049572)))) (list!18361 (right!42223 (c!846918 (_2!34377 lt!2049572))))) lt!2050415)))

(assert (= (and d!1597743 c!847201) b!4965612))

(assert (= (and d!1597743 (not c!847201)) b!4965613))

(assert (= (and d!1597743 res!2119606) b!4965614))

(assert (= (and b!4965614 res!2119605) b!4965615))

(declare-fun m!5990760 () Bool)

(assert (=> b!4965614 m!5990760))

(assert (=> b!4965614 m!5989462))

(declare-fun m!5990762 () Bool)

(assert (=> b!4965614 m!5990762))

(assert (=> b!4965614 m!5989464))

(declare-fun m!5990764 () Bool)

(assert (=> b!4965614 m!5990764))

(assert (=> b!4965613 m!5989464))

(declare-fun m!5990766 () Bool)

(assert (=> b!4965613 m!5990766))

(declare-fun m!5990768 () Bool)

(assert (=> d!1597743 m!5990768))

(assert (=> d!1597743 m!5989462))

(declare-fun m!5990770 () Bool)

(assert (=> d!1597743 m!5990770))

(assert (=> d!1597743 m!5989464))

(declare-fun m!5990772 () Bool)

(assert (=> d!1597743 m!5990772))

(assert (=> b!4964817 d!1597743))

(declare-fun d!1597745 () Bool)

(declare-fun c!847202 () Bool)

(assert (=> d!1597745 (= c!847202 (is-Empty!15143 (left!41893 (c!846918 (_2!34377 lt!2049572)))))))

(declare-fun e!3103863 () List!57559)

(assert (=> d!1597745 (= (list!18361 (left!41893 (c!846918 (_2!34377 lt!2049572)))) e!3103863)))

(declare-fun b!4965618 () Bool)

(declare-fun e!3103864 () List!57559)

(assert (=> b!4965618 (= e!3103864 (list!18363 (xs!18469 (left!41893 (c!846918 (_2!34377 lt!2049572))))))))

(declare-fun b!4965616 () Bool)

(assert (=> b!4965616 (= e!3103863 Nil!57435)))

(declare-fun b!4965617 () Bool)

(assert (=> b!4965617 (= e!3103863 e!3103864)))

(declare-fun c!847203 () Bool)

(assert (=> b!4965617 (= c!847203 (is-Leaf!25164 (left!41893 (c!846918 (_2!34377 lt!2049572)))))))

(declare-fun b!4965619 () Bool)

(assert (=> b!4965619 (= e!3103864 (++!12530 (list!18361 (left!41893 (left!41893 (c!846918 (_2!34377 lt!2049572))))) (list!18361 (right!42223 (left!41893 (c!846918 (_2!34377 lt!2049572)))))))))

(assert (= (and d!1597745 c!847202) b!4965616))

(assert (= (and d!1597745 (not c!847202)) b!4965617))

(assert (= (and b!4965617 c!847203) b!4965618))

(assert (= (and b!4965617 (not c!847203)) b!4965619))

(declare-fun m!5990774 () Bool)

(assert (=> b!4965618 m!5990774))

(declare-fun m!5990776 () Bool)

(assert (=> b!4965619 m!5990776))

(declare-fun m!5990778 () Bool)

(assert (=> b!4965619 m!5990778))

(assert (=> b!4965619 m!5990776))

(assert (=> b!4965619 m!5990778))

(declare-fun m!5990780 () Bool)

(assert (=> b!4965619 m!5990780))

(assert (=> b!4964817 d!1597745))

(declare-fun d!1597747 () Bool)

(declare-fun c!847204 () Bool)

(assert (=> d!1597747 (= c!847204 (is-Empty!15143 (right!42223 (c!846918 (_2!34377 lt!2049572)))))))

(declare-fun e!3103865 () List!57559)

(assert (=> d!1597747 (= (list!18361 (right!42223 (c!846918 (_2!34377 lt!2049572)))) e!3103865)))

(declare-fun b!4965622 () Bool)

(declare-fun e!3103866 () List!57559)

(assert (=> b!4965622 (= e!3103866 (list!18363 (xs!18469 (right!42223 (c!846918 (_2!34377 lt!2049572))))))))

(declare-fun b!4965620 () Bool)

(assert (=> b!4965620 (= e!3103865 Nil!57435)))

(declare-fun b!4965621 () Bool)

(assert (=> b!4965621 (= e!3103865 e!3103866)))

(declare-fun c!847205 () Bool)

(assert (=> b!4965621 (= c!847205 (is-Leaf!25164 (right!42223 (c!846918 (_2!34377 lt!2049572)))))))

(declare-fun b!4965623 () Bool)

(assert (=> b!4965623 (= e!3103866 (++!12530 (list!18361 (left!41893 (right!42223 (c!846918 (_2!34377 lt!2049572))))) (list!18361 (right!42223 (right!42223 (c!846918 (_2!34377 lt!2049572)))))))))

(assert (= (and d!1597747 c!847204) b!4965620))

(assert (= (and d!1597747 (not c!847204)) b!4965621))

(assert (= (and b!4965621 c!847205) b!4965622))

(assert (= (and b!4965621 (not c!847205)) b!4965623))

(declare-fun m!5990782 () Bool)

(assert (=> b!4965622 m!5990782))

(declare-fun m!5990784 () Bool)

(assert (=> b!4965623 m!5990784))

(declare-fun m!5990786 () Bool)

(assert (=> b!4965623 m!5990786))

(assert (=> b!4965623 m!5990784))

(assert (=> b!4965623 m!5990786))

(declare-fun m!5990788 () Bool)

(assert (=> b!4965623 m!5990788))

(assert (=> b!4964817 d!1597747))

(assert (=> bm!346167 d!1597611))

(declare-fun b!4965627 () Bool)

(declare-fun e!3103868 () Bool)

(assert (=> b!4965627 (= e!3103868 (>= (size!38064 (tail!9799 lt!2049647)) (size!38064 (tail!9799 lt!2049641))))))

(declare-fun b!4965626 () Bool)

(declare-fun e!3103867 () Bool)

(assert (=> b!4965626 (= e!3103867 (isPrefix!5242 (tail!9799 (tail!9799 lt!2049641)) (tail!9799 (tail!9799 lt!2049647))))))

(declare-fun b!4965624 () Bool)

(declare-fun e!3103869 () Bool)

(assert (=> b!4965624 (= e!3103869 e!3103867)))

(declare-fun res!2119608 () Bool)

(assert (=> b!4965624 (=> (not res!2119608) (not e!3103867))))

(assert (=> b!4965624 (= res!2119608 (not (is-Nil!57435 (tail!9799 lt!2049647))))))

(declare-fun d!1597749 () Bool)

(assert (=> d!1597749 e!3103868))

(declare-fun res!2119607 () Bool)

(assert (=> d!1597749 (=> res!2119607 e!3103868)))

(declare-fun lt!2050416 () Bool)

(assert (=> d!1597749 (= res!2119607 (not lt!2050416))))

(assert (=> d!1597749 (= lt!2050416 e!3103869)))

(declare-fun res!2119610 () Bool)

(assert (=> d!1597749 (=> res!2119610 e!3103869)))

(assert (=> d!1597749 (= res!2119610 (is-Nil!57435 (tail!9799 lt!2049641)))))

(assert (=> d!1597749 (= (isPrefix!5242 (tail!9799 lt!2049641) (tail!9799 lt!2049647)) lt!2050416)))

(declare-fun b!4965625 () Bool)

(declare-fun res!2119609 () Bool)

(assert (=> b!4965625 (=> (not res!2119609) (not e!3103867))))

(assert (=> b!4965625 (= res!2119609 (= (head!10666 (tail!9799 lt!2049641)) (head!10666 (tail!9799 lt!2049647))))))

(assert (= (and d!1597749 (not res!2119610)) b!4965624))

(assert (= (and b!4965624 res!2119608) b!4965625))

(assert (= (and b!4965625 res!2119609) b!4965626))

(assert (= (and d!1597749 (not res!2119607)) b!4965627))

(assert (=> b!4965627 m!5989478))

(declare-fun m!5990790 () Bool)

(assert (=> b!4965627 m!5990790))

(assert (=> b!4965627 m!5989476))

(declare-fun m!5990792 () Bool)

(assert (=> b!4965627 m!5990792))

(assert (=> b!4965626 m!5989476))

(declare-fun m!5990794 () Bool)

(assert (=> b!4965626 m!5990794))

(assert (=> b!4965626 m!5989478))

(declare-fun m!5990796 () Bool)

(assert (=> b!4965626 m!5990796))

(assert (=> b!4965626 m!5990794))

(assert (=> b!4965626 m!5990796))

(declare-fun m!5990798 () Bool)

(assert (=> b!4965626 m!5990798))

(assert (=> b!4965625 m!5989476))

(declare-fun m!5990800 () Bool)

(assert (=> b!4965625 m!5990800))

(assert (=> b!4965625 m!5989478))

(declare-fun m!5990802 () Bool)

(assert (=> b!4965625 m!5990802))

(assert (=> b!4964822 d!1597749))

(declare-fun d!1597751 () Bool)

(assert (=> d!1597751 (= (tail!9799 lt!2049641) (t!368225 lt!2049641))))

(assert (=> b!4964822 d!1597751))

(declare-fun d!1597753 () Bool)

(assert (=> d!1597753 (= (tail!9799 lt!2049647) (t!368225 lt!2049647))))

(assert (=> b!4964822 d!1597753))

(declare-fun d!1597755 () Bool)

(declare-fun lt!2050417 () Int)

(assert (=> d!1597755 (>= lt!2050417 0)))

(declare-fun e!3103870 () Int)

(assert (=> d!1597755 (= lt!2050417 e!3103870)))

(declare-fun c!847206 () Bool)

(assert (=> d!1597755 (= c!847206 (is-Nil!57435 (list!18363 (xs!18469 (c!846918 totalInput!464)))))))

(assert (=> d!1597755 (= (size!38064 (list!18363 (xs!18469 (c!846918 totalInput!464)))) lt!2050417)))

(declare-fun b!4965628 () Bool)

(assert (=> b!4965628 (= e!3103870 0)))

(declare-fun b!4965629 () Bool)

(assert (=> b!4965629 (= e!3103870 (+ 1 (size!38064 (t!368225 (list!18363 (xs!18469 (c!846918 totalInput!464)))))))))

(assert (= (and d!1597755 c!847206) b!4965628))

(assert (= (and d!1597755 (not c!847206)) b!4965629))

(declare-fun m!5990804 () Bool)

(assert (=> b!4965629 m!5990804))

(assert (=> d!1597253 d!1597755))

(declare-fun d!1597757 () Bool)

(assert (=> d!1597757 (= (list!18363 (xs!18469 (c!846918 totalInput!464))) (innerList!15231 (xs!18469 (c!846918 totalInput!464))))))

(assert (=> d!1597253 d!1597757))

(declare-fun d!1597759 () Bool)

(declare-fun res!2119611 () Bool)

(declare-fun e!3103871 () Bool)

(assert (=> d!1597759 (=> (not res!2119611) (not e!3103871))))

(assert (=> d!1597759 (= res!2119611 (<= (size!38064 (list!18363 (xs!18469 (left!41893 (c!846918 input!1342))))) 512))))

(assert (=> d!1597759 (= (inv!75066 (left!41893 (c!846918 input!1342))) e!3103871)))

(declare-fun b!4965630 () Bool)

(declare-fun res!2119612 () Bool)

(assert (=> b!4965630 (=> (not res!2119612) (not e!3103871))))

(assert (=> b!4965630 (= res!2119612 (= (csize!30517 (left!41893 (c!846918 input!1342))) (size!38064 (list!18363 (xs!18469 (left!41893 (c!846918 input!1342)))))))))

(declare-fun b!4965631 () Bool)

(assert (=> b!4965631 (= e!3103871 (and (> (csize!30517 (left!41893 (c!846918 input!1342))) 0) (<= (csize!30517 (left!41893 (c!846918 input!1342))) 512)))))

(assert (= (and d!1597759 res!2119611) b!4965630))

(assert (= (and b!4965630 res!2119612) b!4965631))

(declare-fun m!5990806 () Bool)

(assert (=> d!1597759 m!5990806))

(assert (=> d!1597759 m!5990806))

(declare-fun m!5990808 () Bool)

(assert (=> d!1597759 m!5990808))

(assert (=> b!4965630 m!5990806))

(assert (=> b!4965630 m!5990806))

(assert (=> b!4965630 m!5990808))

(assert (=> b!4964689 d!1597759))

(declare-fun d!1597761 () Bool)

(assert (=> d!1597761 (= (isEmpty!30925 (maxPrefixZipper!784 thiss!15247 (t!368227 rulesArg!259) (list!18359 input!1342))) (not (is-Some!14444 (maxPrefixZipper!784 thiss!15247 (t!368227 rulesArg!259) (list!18359 input!1342)))))))

(assert (=> d!1597319 d!1597761))

(assert (=> b!4964819 d!1597649))

(declare-fun d!1597763 () Bool)

(declare-fun res!2119613 () Bool)

(declare-fun e!3103872 () Bool)

(assert (=> d!1597763 (=> (not res!2119613) (not e!3103872))))

(assert (=> d!1597763 (= res!2119613 (<= (size!38064 (list!18363 (xs!18469 (right!42223 (c!846918 input!1342))))) 512))))

(assert (=> d!1597763 (= (inv!75066 (right!42223 (c!846918 input!1342))) e!3103872)))

(declare-fun b!4965632 () Bool)

(declare-fun res!2119614 () Bool)

(assert (=> b!4965632 (=> (not res!2119614) (not e!3103872))))

(assert (=> b!4965632 (= res!2119614 (= (csize!30517 (right!42223 (c!846918 input!1342))) (size!38064 (list!18363 (xs!18469 (right!42223 (c!846918 input!1342)))))))))

(declare-fun b!4965633 () Bool)

(assert (=> b!4965633 (= e!3103872 (and (> (csize!30517 (right!42223 (c!846918 input!1342))) 0) (<= (csize!30517 (right!42223 (c!846918 input!1342))) 512)))))

(assert (= (and d!1597763 res!2119613) b!4965632))

(assert (= (and b!4965632 res!2119614) b!4965633))

(declare-fun m!5990810 () Bool)

(assert (=> d!1597763 m!5990810))

(assert (=> d!1597763 m!5990810))

(declare-fun m!5990812 () Bool)

(assert (=> d!1597763 m!5990812))

(assert (=> b!4965632 m!5990810))

(assert (=> b!4965632 m!5990810))

(assert (=> b!4965632 m!5990812))

(assert (=> b!4964692 d!1597763))

(declare-fun b!4965634 () Bool)

(declare-fun res!2119616 () Bool)

(declare-fun e!3103874 () Bool)

(assert (=> b!4965634 (=> (not res!2119616) (not e!3103874))))

(declare-fun lt!2050420 () Option!14445)

(assert (=> b!4965634 (= res!2119616 (< (size!38064 (_2!34378 (get!19935 lt!2050420))) (size!38064 (list!18359 input!1342))))))

(declare-fun b!4965635 () Bool)

(assert (=> b!4965635 (= e!3103874 (contains!19536 (t!368227 (t!368227 rulesArg!259)) (rule!11629 (_1!34378 (get!19935 lt!2050420)))))))

(declare-fun call!346272 () Option!14445)

(declare-fun bm!346267 () Bool)

(assert (=> bm!346267 (= call!346272 (maxPrefixOneRule!3627 thiss!15247 (h!63885 (t!368227 (t!368227 rulesArg!259))) (list!18359 input!1342)))))

(declare-fun b!4965637 () Bool)

(declare-fun res!2119619 () Bool)

(assert (=> b!4965637 (=> (not res!2119619) (not e!3103874))))

(assert (=> b!4965637 (= res!2119619 (matchR!6634 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2050420)))) (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2050420))))))))

(declare-fun b!4965638 () Bool)

(declare-fun e!3103875 () Option!14445)

(declare-fun lt!2050422 () Option!14445)

(declare-fun lt!2050419 () Option!14445)

(assert (=> b!4965638 (= e!3103875 (ite (and (is-None!14444 lt!2050422) (is-None!14444 lt!2050419)) None!14444 (ite (is-None!14444 lt!2050419) lt!2050422 (ite (is-None!14444 lt!2050422) lt!2050419 (ite (>= (size!38062 (_1!34378 (v!50431 lt!2050422))) (size!38062 (_1!34378 (v!50431 lt!2050419)))) lt!2050422 lt!2050419)))))))

(assert (=> b!4965638 (= lt!2050422 call!346272)))

(assert (=> b!4965638 (= lt!2050419 (maxPrefix!4658 thiss!15247 (t!368227 (t!368227 (t!368227 rulesArg!259))) (list!18359 input!1342)))))

(declare-fun b!4965639 () Bool)

(assert (=> b!4965639 (= e!3103875 call!346272)))

(declare-fun b!4965640 () Bool)

(declare-fun res!2119621 () Bool)

(assert (=> b!4965640 (=> (not res!2119621) (not e!3103874))))

(assert (=> b!4965640 (= res!2119621 (= (value!268585 (_1!34378 (get!19935 lt!2050420))) (apply!13902 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2050420)))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2050420)))))))))

(declare-fun b!4965641 () Bool)

(declare-fun res!2119617 () Bool)

(assert (=> b!4965641 (=> (not res!2119617) (not e!3103874))))

(assert (=> b!4965641 (= res!2119617 (= (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2050420)))) (originalCharacters!8670 (_1!34378 (get!19935 lt!2050420)))))))

(declare-fun b!4965642 () Bool)

(declare-fun res!2119618 () Bool)

(assert (=> b!4965642 (=> (not res!2119618) (not e!3103874))))

(assert (=> b!4965642 (= res!2119618 (= (++!12530 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2050420)))) (_2!34378 (get!19935 lt!2050420))) (list!18359 input!1342)))))

(declare-fun b!4965636 () Bool)

(declare-fun e!3103873 () Bool)

(assert (=> b!4965636 (= e!3103873 e!3103874)))

(declare-fun res!2119615 () Bool)

(assert (=> b!4965636 (=> (not res!2119615) (not e!3103874))))

(assert (=> b!4965636 (= res!2119615 (isDefined!11358 lt!2050420))))

(declare-fun d!1597765 () Bool)

(assert (=> d!1597765 e!3103873))

(declare-fun res!2119620 () Bool)

(assert (=> d!1597765 (=> res!2119620 e!3103873)))

(assert (=> d!1597765 (= res!2119620 (isEmpty!30925 lt!2050420))))

(assert (=> d!1597765 (= lt!2050420 e!3103875)))

(declare-fun c!847207 () Bool)

(assert (=> d!1597765 (= c!847207 (and (is-Cons!57437 (t!368227 (t!368227 rulesArg!259))) (is-Nil!57437 (t!368227 (t!368227 (t!368227 rulesArg!259))))))))

(declare-fun lt!2050418 () Unit!148334)

(declare-fun lt!2050421 () Unit!148334)

(assert (=> d!1597765 (= lt!2050418 lt!2050421)))

(assert (=> d!1597765 (isPrefix!5242 (list!18359 input!1342) (list!18359 input!1342))))

(assert (=> d!1597765 (= lt!2050421 (lemmaIsPrefixRefl!3566 (list!18359 input!1342) (list!18359 input!1342)))))

(assert (=> d!1597765 (rulesValidInductive!3294 thiss!15247 (t!368227 (t!368227 rulesArg!259)))))

(assert (=> d!1597765 (= (maxPrefix!4658 thiss!15247 (t!368227 (t!368227 rulesArg!259)) (list!18359 input!1342)) lt!2050420)))

(assert (= (and d!1597765 c!847207) b!4965639))

(assert (= (and d!1597765 (not c!847207)) b!4965638))

(assert (= (or b!4965639 b!4965638) bm!346267))

(assert (= (and d!1597765 (not res!2119620)) b!4965636))

(assert (= (and b!4965636 res!2119615) b!4965641))

(assert (= (and b!4965641 res!2119617) b!4965634))

(assert (= (and b!4965634 res!2119616) b!4965642))

(assert (= (and b!4965642 res!2119618) b!4965640))

(assert (= (and b!4965640 res!2119621) b!4965637))

(assert (= (and b!4965637 res!2119619) b!4965635))

(declare-fun m!5990814 () Bool)

(assert (=> d!1597765 m!5990814))

(assert (=> d!1597765 m!5988632))

(assert (=> d!1597765 m!5988632))

(assert (=> d!1597765 m!5989246))

(assert (=> d!1597765 m!5988632))

(assert (=> d!1597765 m!5988632))

(assert (=> d!1597765 m!5989248))

(assert (=> d!1597765 m!5989290))

(declare-fun m!5990816 () Bool)

(assert (=> b!4965635 m!5990816))

(declare-fun m!5990818 () Bool)

(assert (=> b!4965635 m!5990818))

(assert (=> b!4965638 m!5988632))

(assert (=> b!4965638 m!5990430))

(assert (=> b!4965640 m!5990816))

(declare-fun m!5990820 () Bool)

(assert (=> b!4965640 m!5990820))

(assert (=> b!4965640 m!5990820))

(declare-fun m!5990822 () Bool)

(assert (=> b!4965640 m!5990822))

(assert (=> b!4965641 m!5990816))

(declare-fun m!5990824 () Bool)

(assert (=> b!4965641 m!5990824))

(assert (=> b!4965641 m!5990824))

(declare-fun m!5990826 () Bool)

(assert (=> b!4965641 m!5990826))

(assert (=> bm!346267 m!5988632))

(declare-fun m!5990828 () Bool)

(assert (=> bm!346267 m!5990828))

(declare-fun m!5990830 () Bool)

(assert (=> b!4965636 m!5990830))

(assert (=> b!4965642 m!5990816))

(assert (=> b!4965642 m!5990824))

(assert (=> b!4965642 m!5990824))

(assert (=> b!4965642 m!5990826))

(assert (=> b!4965642 m!5990826))

(declare-fun m!5990832 () Bool)

(assert (=> b!4965642 m!5990832))

(assert (=> b!4965637 m!5990816))

(assert (=> b!4965637 m!5990824))

(assert (=> b!4965637 m!5990824))

(assert (=> b!4965637 m!5990826))

(assert (=> b!4965637 m!5990826))

(declare-fun m!5990834 () Bool)

(assert (=> b!4965637 m!5990834))

(assert (=> b!4965634 m!5990816))

(declare-fun m!5990836 () Bool)

(assert (=> b!4965634 m!5990836))

(assert (=> b!4965634 m!5988632))

(assert (=> b!4965634 m!5989126))

(assert (=> b!4964727 d!1597765))

(declare-fun b!4965643 () Bool)

(declare-fun res!2119623 () Bool)

(declare-fun e!3103877 () Bool)

(assert (=> b!4965643 (=> (not res!2119623) (not e!3103877))))

(declare-fun lt!2050425 () Option!14445)

(assert (=> b!4965643 (= res!2119623 (< (size!38064 (_2!34378 (get!19935 lt!2050425))) (size!38064 lt!2049571)))))

(declare-fun b!4965644 () Bool)

(assert (=> b!4965644 (= e!3103877 (contains!19536 (t!368227 (t!368227 rulesArg!259)) (rule!11629 (_1!34378 (get!19935 lt!2050425)))))))

(declare-fun call!346273 () Option!14445)

(declare-fun bm!346268 () Bool)

(assert (=> bm!346268 (= call!346273 (maxPrefixOneRule!3627 thiss!15247 (h!63885 (t!368227 (t!368227 rulesArg!259))) lt!2049571))))

(declare-fun b!4965646 () Bool)

(declare-fun res!2119626 () Bool)

(assert (=> b!4965646 (=> (not res!2119626) (not e!3103877))))

(assert (=> b!4965646 (= res!2119626 (matchR!6634 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2050425)))) (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2050425))))))))

(declare-fun b!4965647 () Bool)

(declare-fun e!3103878 () Option!14445)

(declare-fun lt!2050427 () Option!14445)

(declare-fun lt!2050424 () Option!14445)

(assert (=> b!4965647 (= e!3103878 (ite (and (is-None!14444 lt!2050427) (is-None!14444 lt!2050424)) None!14444 (ite (is-None!14444 lt!2050424) lt!2050427 (ite (is-None!14444 lt!2050427) lt!2050424 (ite (>= (size!38062 (_1!34378 (v!50431 lt!2050427))) (size!38062 (_1!34378 (v!50431 lt!2050424)))) lt!2050427 lt!2050424)))))))

(assert (=> b!4965647 (= lt!2050427 call!346273)))

(assert (=> b!4965647 (= lt!2050424 (maxPrefix!4658 thiss!15247 (t!368227 (t!368227 (t!368227 rulesArg!259))) lt!2049571))))

(declare-fun b!4965648 () Bool)

(assert (=> b!4965648 (= e!3103878 call!346273)))

(declare-fun b!4965649 () Bool)

(declare-fun res!2119628 () Bool)

(assert (=> b!4965649 (=> (not res!2119628) (not e!3103877))))

(assert (=> b!4965649 (= res!2119628 (= (value!268585 (_1!34378 (get!19935 lt!2050425))) (apply!13902 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2050425)))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2050425)))))))))

(declare-fun b!4965650 () Bool)

(declare-fun res!2119624 () Bool)

(assert (=> b!4965650 (=> (not res!2119624) (not e!3103877))))

(assert (=> b!4965650 (= res!2119624 (= (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2050425)))) (originalCharacters!8670 (_1!34378 (get!19935 lt!2050425)))))))

(declare-fun b!4965651 () Bool)

(declare-fun res!2119625 () Bool)

(assert (=> b!4965651 (=> (not res!2119625) (not e!3103877))))

(assert (=> b!4965651 (= res!2119625 (= (++!12530 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2050425)))) (_2!34378 (get!19935 lt!2050425))) lt!2049571))))

(declare-fun b!4965645 () Bool)

(declare-fun e!3103876 () Bool)

(assert (=> b!4965645 (= e!3103876 e!3103877)))

(declare-fun res!2119622 () Bool)

(assert (=> b!4965645 (=> (not res!2119622) (not e!3103877))))

(assert (=> b!4965645 (= res!2119622 (isDefined!11358 lt!2050425))))

(declare-fun d!1597767 () Bool)

(assert (=> d!1597767 e!3103876))

(declare-fun res!2119627 () Bool)

(assert (=> d!1597767 (=> res!2119627 e!3103876)))

(assert (=> d!1597767 (= res!2119627 (isEmpty!30925 lt!2050425))))

(assert (=> d!1597767 (= lt!2050425 e!3103878)))

(declare-fun c!847208 () Bool)

(assert (=> d!1597767 (= c!847208 (and (is-Cons!57437 (t!368227 (t!368227 rulesArg!259))) (is-Nil!57437 (t!368227 (t!368227 (t!368227 rulesArg!259))))))))

(declare-fun lt!2050423 () Unit!148334)

(declare-fun lt!2050426 () Unit!148334)

(assert (=> d!1597767 (= lt!2050423 lt!2050426)))

(assert (=> d!1597767 (isPrefix!5242 lt!2049571 lt!2049571)))

(assert (=> d!1597767 (= lt!2050426 (lemmaIsPrefixRefl!3566 lt!2049571 lt!2049571))))

(assert (=> d!1597767 (rulesValidInductive!3294 thiss!15247 (t!368227 (t!368227 rulesArg!259)))))

(assert (=> d!1597767 (= (maxPrefix!4658 thiss!15247 (t!368227 (t!368227 rulesArg!259)) lt!2049571) lt!2050425)))

(assert (= (and d!1597767 c!847208) b!4965648))

(assert (= (and d!1597767 (not c!847208)) b!4965647))

(assert (= (or b!4965648 b!4965647) bm!346268))

(assert (= (and d!1597767 (not res!2119627)) b!4965645))

(assert (= (and b!4965645 res!2119622) b!4965650))

(assert (= (and b!4965650 res!2119624) b!4965643))

(assert (= (and b!4965643 res!2119623) b!4965651))

(assert (= (and b!4965651 res!2119625) b!4965649))

(assert (= (and b!4965649 res!2119628) b!4965646))

(assert (= (and b!4965646 res!2119626) b!4965644))

(declare-fun m!5990838 () Bool)

(assert (=> d!1597767 m!5990838))

(assert (=> d!1597767 m!5988624))

(assert (=> d!1597767 m!5988626))

(assert (=> d!1597767 m!5989290))

(declare-fun m!5990840 () Bool)

(assert (=> b!4965644 m!5990840))

(declare-fun m!5990842 () Bool)

(assert (=> b!4965644 m!5990842))

(declare-fun m!5990844 () Bool)

(assert (=> b!4965647 m!5990844))

(assert (=> b!4965649 m!5990840))

(declare-fun m!5990846 () Bool)

(assert (=> b!4965649 m!5990846))

(assert (=> b!4965649 m!5990846))

(declare-fun m!5990848 () Bool)

(assert (=> b!4965649 m!5990848))

(assert (=> b!4965650 m!5990840))

(declare-fun m!5990850 () Bool)

(assert (=> b!4965650 m!5990850))

(assert (=> b!4965650 m!5990850))

(declare-fun m!5990852 () Bool)

(assert (=> b!4965650 m!5990852))

(declare-fun m!5990854 () Bool)

(assert (=> bm!346268 m!5990854))

(declare-fun m!5990856 () Bool)

(assert (=> b!4965645 m!5990856))

(assert (=> b!4965651 m!5990840))

(assert (=> b!4965651 m!5990850))

(assert (=> b!4965651 m!5990850))

(assert (=> b!4965651 m!5990852))

(assert (=> b!4965651 m!5990852))

(declare-fun m!5990858 () Bool)

(assert (=> b!4965651 m!5990858))

(assert (=> b!4965646 m!5990840))

(assert (=> b!4965646 m!5990850))

(assert (=> b!4965646 m!5990850))

(assert (=> b!4965646 m!5990852))

(assert (=> b!4965646 m!5990852))

(declare-fun m!5990860 () Bool)

(assert (=> b!4965646 m!5990860))

(assert (=> b!4965643 m!5990840))

(declare-fun m!5990862 () Bool)

(assert (=> b!4965643 m!5990862))

(assert (=> b!4965643 m!5988708))

(assert (=> b!4964699 d!1597767))

(declare-fun d!1597769 () Bool)

(assert (=> d!1597769 (= (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))) (h!63883 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))))))

(assert (=> b!4964570 d!1597769))

(assert (=> d!1597241 d!1597255))

(declare-fun d!1597771 () Bool)

(declare-fun c!847209 () Bool)

(assert (=> d!1597771 (= c!847209 (is-Node!15143 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))))))))

(declare-fun e!3103879 () Bool)

(assert (=> d!1597771 (= (inv!75059 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))))) e!3103879)))

(declare-fun b!4965652 () Bool)

(assert (=> b!4965652 (= e!3103879 (inv!75065 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))))))))

(declare-fun b!4965653 () Bool)

(declare-fun e!3103880 () Bool)

(assert (=> b!4965653 (= e!3103879 e!3103880)))

(declare-fun res!2119629 () Bool)

(assert (=> b!4965653 (= res!2119629 (not (is-Leaf!25164 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))))))))))

(assert (=> b!4965653 (=> res!2119629 e!3103880)))

(declare-fun b!4965654 () Bool)

(assert (=> b!4965654 (= e!3103880 (inv!75066 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))))))))

(assert (= (and d!1597771 c!847209) b!4965652))

(assert (= (and d!1597771 (not c!847209)) b!4965653))

(assert (= (and b!4965653 (not res!2119629)) b!4965654))

(declare-fun m!5990864 () Bool)

(assert (=> b!4965652 m!5990864))

(declare-fun m!5990866 () Bool)

(assert (=> b!4965654 m!5990866))

(assert (=> b!4964975 d!1597771))

(assert (=> b!4964680 d!1597665))

(declare-fun d!1597773 () Bool)

(declare-fun dynLambda!23158 (Int BalanceConc!29716 BalanceConc!29716) Bool)

(assert (=> d!1597773 (dynLambda!23158 lambda!247322 (_1!34381 lt!2049676) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))))

(declare-fun lt!2050430 () Unit!148334)

(declare-fun choose!36664 (Int BalanceConc!29716 BalanceConc!29716) Unit!148334)

(assert (=> d!1597773 (= lt!2050430 (choose!36664 lambda!247322 (_1!34381 lt!2049676) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))))))

(assert (=> d!1597773 (Forall2!1286 lambda!247322)))

(assert (=> d!1597773 (= (Forall2of!475 lambda!247322 (_1!34381 lt!2049676) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))) lt!2050430)))

(declare-fun b_lambda!196645 () Bool)

(assert (=> (not b_lambda!196645) (not d!1597773)))

(declare-fun bs!1182994 () Bool)

(assert (= bs!1182994 d!1597773))

(assert (=> bs!1182994 m!5988776))

(declare-fun m!5990868 () Bool)

(assert (=> bs!1182994 m!5990868))

(assert (=> bs!1182994 m!5988776))

(declare-fun m!5990870 () Bool)

(assert (=> bs!1182994 m!5990870))

(declare-fun m!5990872 () Bool)

(assert (=> bs!1182994 m!5990872))

(assert (=> d!1597335 d!1597773))

(assert (=> d!1597335 d!1597361))

(declare-fun d!1597775 () Bool)

(assert (=> d!1597775 (= (list!18359 (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))) (list!18361 (c!846918 (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))))))

(declare-fun bs!1182995 () Bool)

(assert (= bs!1182995 d!1597775))

(declare-fun m!5990874 () Bool)

(assert (=> bs!1182995 m!5990874))

(assert (=> d!1597335 d!1597775))

(declare-fun d!1597777 () Bool)

(assert (=> d!1597777 (= (isEmpty!30923 (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))) (is-Nil!57435 (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))))))

(assert (=> b!4964802 d!1597777))

(assert (=> b!4964802 d!1597705))

(declare-fun b!4965656 () Bool)

(declare-fun e!3103881 () Bool)

(declare-fun e!3103882 () Bool)

(assert (=> b!4965656 (= e!3103881 e!3103882)))

(declare-fun res!2119632 () Bool)

(assert (=> b!4965656 (=> (not res!2119632) (not e!3103882))))

(assert (=> b!4965656 (= res!2119632 (<= (- 1) (- (height!2011 (left!41893 (right!42223 (c!846918 totalInput!464)))) (height!2011 (right!42223 (right!42223 (c!846918 totalInput!464)))))))))

(declare-fun b!4965657 () Bool)

(declare-fun res!2119631 () Bool)

(assert (=> b!4965657 (=> (not res!2119631) (not e!3103882))))

(assert (=> b!4965657 (= res!2119631 (not (isEmpty!30929 (left!41893 (right!42223 (c!846918 totalInput!464))))))))

(declare-fun b!4965659 () Bool)

(declare-fun res!2119630 () Bool)

(assert (=> b!4965659 (=> (not res!2119630) (not e!3103882))))

(assert (=> b!4965659 (= res!2119630 (isBalanced!4200 (right!42223 (right!42223 (c!846918 totalInput!464)))))))

(declare-fun b!4965660 () Bool)

(declare-fun res!2119635 () Bool)

(assert (=> b!4965660 (=> (not res!2119635) (not e!3103882))))

(assert (=> b!4965660 (= res!2119635 (isBalanced!4200 (left!41893 (right!42223 (c!846918 totalInput!464)))))))

(declare-fun b!4965661 () Bool)

(assert (=> b!4965661 (= e!3103882 (not (isEmpty!30929 (right!42223 (right!42223 (c!846918 totalInput!464))))))))

(declare-fun d!1597779 () Bool)

(declare-fun res!2119634 () Bool)

(assert (=> d!1597779 (=> res!2119634 e!3103881)))

(assert (=> d!1597779 (= res!2119634 (not (is-Node!15143 (right!42223 (c!846918 totalInput!464)))))))

(assert (=> d!1597779 (= (isBalanced!4200 (right!42223 (c!846918 totalInput!464))) e!3103881)))

(declare-fun b!4965658 () Bool)

(declare-fun res!2119633 () Bool)

(assert (=> b!4965658 (=> (not res!2119633) (not e!3103882))))

(assert (=> b!4965658 (= res!2119633 (<= (- (height!2011 (left!41893 (right!42223 (c!846918 totalInput!464)))) (height!2011 (right!42223 (right!42223 (c!846918 totalInput!464))))) 1))))

(assert (= (and d!1597779 (not res!2119634)) b!4965656))

(assert (= (and b!4965656 res!2119632) b!4965658))

(assert (= (and b!4965658 res!2119633) b!4965660))

(assert (= (and b!4965660 res!2119635) b!4965659))

(assert (= (and b!4965659 res!2119630) b!4965657))

(assert (= (and b!4965657 res!2119631) b!4965661))

(declare-fun m!5990876 () Bool)

(assert (=> b!4965660 m!5990876))

(declare-fun m!5990878 () Bool)

(assert (=> b!4965661 m!5990878))

(declare-fun m!5990880 () Bool)

(assert (=> b!4965657 m!5990880))

(assert (=> b!4965656 m!5990664))

(assert (=> b!4965656 m!5990666))

(assert (=> b!4965658 m!5990664))

(assert (=> b!4965658 m!5990666))

(declare-fun m!5990882 () Bool)

(assert (=> b!4965659 m!5990882))

(assert (=> b!4964651 d!1597779))

(assert (=> b!4964793 d!1597551))

(declare-fun d!1597781 () Bool)

(declare-fun lt!2050431 () Int)

(assert (=> d!1597781 (>= lt!2050431 0)))

(declare-fun e!3103883 () Int)

(assert (=> d!1597781 (= lt!2050431 e!3103883)))

(declare-fun c!847210 () Bool)

(assert (=> d!1597781 (= c!847210 (is-Nil!57435 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049977)))))))

(assert (=> d!1597781 (= (size!38064 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049977)))) lt!2050431)))

(declare-fun b!4965662 () Bool)

(assert (=> b!4965662 (= e!3103883 0)))

(declare-fun b!4965663 () Bool)

(assert (=> b!4965663 (= e!3103883 (+ 1 (size!38064 (t!368225 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049977)))))))))

(assert (= (and d!1597781 c!847210) b!4965662))

(assert (= (and d!1597781 (not c!847210)) b!4965663))

(declare-fun m!5990884 () Bool)

(assert (=> b!4965663 m!5990884))

(assert (=> b!4964793 d!1597781))

(assert (=> d!1597315 d!1597317))

(declare-fun d!1597783 () Bool)

(assert (=> d!1597783 (isPrefix!5242 lt!2049641 lt!2049647)))

(assert (=> d!1597783 true))

(declare-fun _$45!2270 () Unit!148334)

(assert (=> d!1597783 (= (choose!36651 lt!2049641 lt!2049647) _$45!2270)))

(declare-fun bs!1182996 () Bool)

(assert (= bs!1182996 d!1597783))

(assert (=> bs!1182996 m!5988732))

(assert (=> d!1597315 d!1597783))

(declare-fun d!1597785 () Bool)

(assert (=> d!1597785 (= (get!19936 lt!2049934) (v!50432 lt!2049934))))

(assert (=> b!4964733 d!1597785))

(declare-fun d!1597787 () Bool)

(assert (=> d!1597787 (= (get!19935 (maxPrefix!4658 thiss!15247 (t!368227 (t!368227 rulesArg!259)) (list!18359 input!1342))) (v!50431 (maxPrefix!4658 thiss!15247 (t!368227 (t!368227 rulesArg!259)) (list!18359 input!1342))))))

(assert (=> b!4964733 d!1597787))

(assert (=> b!4964733 d!1597765))

(assert (=> b!4964733 d!1597117))

(declare-fun d!1597789 () Bool)

(declare-fun lt!2050432 () Int)

(assert (=> d!1597789 (>= lt!2050432 0)))

(declare-fun e!3103884 () Int)

(assert (=> d!1597789 (= lt!2050432 e!3103884)))

(declare-fun c!847211 () Bool)

(assert (=> d!1597789 (= c!847211 (is-Nil!57435 (tail!9799 lt!2049571)))))

(assert (=> d!1597789 (= (size!38064 (tail!9799 lt!2049571)) lt!2050432)))

(declare-fun b!4965664 () Bool)

(assert (=> b!4965664 (= e!3103884 0)))

(declare-fun b!4965665 () Bool)

(assert (=> b!4965665 (= e!3103884 (+ 1 (size!38064 (t!368225 (tail!9799 lt!2049571)))))))

(assert (= (and d!1597789 c!847211) b!4965664))

(assert (= (and d!1597789 (not c!847211)) b!4965665))

(declare-fun m!5990886 () Bool)

(assert (=> b!4965665 m!5990886))

(assert (=> b!4964785 d!1597789))

(assert (=> d!1597227 d!1597691))

(declare-fun d!1597791 () Bool)

(declare-fun res!2119636 () Bool)

(declare-fun e!3103885 () Bool)

(assert (=> d!1597791 (=> res!2119636 e!3103885)))

(assert (=> d!1597791 (= res!2119636 (is-Nil!57437 (t!368227 rulesArg!259)))))

(assert (=> d!1597791 (= (forall!13326 (t!368227 rulesArg!259) lambda!247301) e!3103885)))

(declare-fun b!4965666 () Bool)

(declare-fun e!3103886 () Bool)

(assert (=> b!4965666 (= e!3103885 e!3103886)))

(declare-fun res!2119637 () Bool)

(assert (=> b!4965666 (=> (not res!2119637) (not e!3103886))))

(assert (=> b!4965666 (= res!2119637 (dynLambda!23148 lambda!247301 (h!63885 (t!368227 rulesArg!259))))))

(declare-fun b!4965667 () Bool)

(assert (=> b!4965667 (= e!3103886 (forall!13326 (t!368227 (t!368227 rulesArg!259)) lambda!247301))))

(assert (= (and d!1597791 (not res!2119636)) b!4965666))

(assert (= (and b!4965666 res!2119637) b!4965667))

(declare-fun b_lambda!196647 () Bool)

(assert (=> (not b_lambda!196647) (not b!4965666)))

(declare-fun m!5990888 () Bool)

(assert (=> b!4965666 m!5990888))

(declare-fun m!5990890 () Bool)

(assert (=> b!4965667 m!5990890))

(assert (=> b!4964529 d!1597791))

(assert (=> d!1597283 d!1597267))

(assert (=> d!1597283 d!1597595))

(assert (=> d!1597283 d!1597597))

(assert (=> d!1597283 d!1597313))

(declare-fun d!1597793 () Bool)

(declare-fun lt!2050433 () Int)

(assert (=> d!1597793 (>= lt!2050433 0)))

(declare-fun e!3103887 () Int)

(assert (=> d!1597793 (= lt!2050433 e!3103887)))

(declare-fun c!847212 () Bool)

(assert (=> d!1597793 (= c!847212 (is-Nil!57435 (innerList!15231 (xs!18469 (c!846918 totalInput!464)))))))

(assert (=> d!1597793 (= (size!38064 (innerList!15231 (xs!18469 (c!846918 totalInput!464)))) lt!2050433)))

(declare-fun b!4965668 () Bool)

(assert (=> b!4965668 (= e!3103887 0)))

(declare-fun b!4965669 () Bool)

(assert (=> b!4965669 (= e!3103887 (+ 1 (size!38064 (t!368225 (innerList!15231 (xs!18469 (c!846918 totalInput!464)))))))))

(assert (= (and d!1597793 c!847212) b!4965668))

(assert (= (and d!1597793 (not c!847212)) b!4965669))

(declare-fun m!5990892 () Bool)

(assert (=> b!4965669 m!5990892))

(assert (=> d!1597261 d!1597793))

(declare-fun d!1597795 () Bool)

(assert (=> d!1597795 (= (inv!75067 (xs!18469 (left!41893 (c!846918 totalInput!464)))) (<= (size!38064 (innerList!15231 (xs!18469 (left!41893 (c!846918 totalInput!464))))) 2147483647))))

(declare-fun bs!1182997 () Bool)

(assert (= bs!1182997 d!1597795))

(declare-fun m!5990894 () Bool)

(assert (=> bs!1182997 m!5990894))

(assert (=> b!4964960 d!1597795))

(declare-fun b!4965670 () Bool)

(declare-fun e!3103889 () List!57559)

(assert (=> b!4965670 (= e!3103889 (list!18361 (right!42223 (c!846918 (_2!34377 lt!2049579)))))))

(declare-fun b!4965672 () Bool)

(declare-fun res!2119638 () Bool)

(declare-fun e!3103888 () Bool)

(assert (=> b!4965672 (=> (not res!2119638) (not e!3103888))))

(declare-fun lt!2050434 () List!57559)

(assert (=> b!4965672 (= res!2119638 (= (size!38064 lt!2050434) (+ (size!38064 (list!18361 (left!41893 (c!846918 (_2!34377 lt!2049579))))) (size!38064 (list!18361 (right!42223 (c!846918 (_2!34377 lt!2049579))))))))))

(declare-fun b!4965673 () Bool)

(assert (=> b!4965673 (= e!3103888 (or (not (= (list!18361 (right!42223 (c!846918 (_2!34377 lt!2049579)))) Nil!57435)) (= lt!2050434 (list!18361 (left!41893 (c!846918 (_2!34377 lt!2049579)))))))))

(declare-fun b!4965671 () Bool)

(assert (=> b!4965671 (= e!3103889 (Cons!57435 (h!63883 (list!18361 (left!41893 (c!846918 (_2!34377 lt!2049579))))) (++!12530 (t!368225 (list!18361 (left!41893 (c!846918 (_2!34377 lt!2049579))))) (list!18361 (right!42223 (c!846918 (_2!34377 lt!2049579)))))))))

(declare-fun d!1597797 () Bool)

(assert (=> d!1597797 e!3103888))

(declare-fun res!2119639 () Bool)

(assert (=> d!1597797 (=> (not res!2119639) (not e!3103888))))

(assert (=> d!1597797 (= res!2119639 (= (content!10180 lt!2050434) (set.union (content!10180 (list!18361 (left!41893 (c!846918 (_2!34377 lt!2049579))))) (content!10180 (list!18361 (right!42223 (c!846918 (_2!34377 lt!2049579))))))))))

(assert (=> d!1597797 (= lt!2050434 e!3103889)))

(declare-fun c!847213 () Bool)

(assert (=> d!1597797 (= c!847213 (is-Nil!57435 (list!18361 (left!41893 (c!846918 (_2!34377 lt!2049579))))))))

(assert (=> d!1597797 (= (++!12530 (list!18361 (left!41893 (c!846918 (_2!34377 lt!2049579)))) (list!18361 (right!42223 (c!846918 (_2!34377 lt!2049579))))) lt!2050434)))

(assert (= (and d!1597797 c!847213) b!4965670))

(assert (= (and d!1597797 (not c!847213)) b!4965671))

(assert (= (and d!1597797 res!2119639) b!4965672))

(assert (= (and b!4965672 res!2119638) b!4965673))

(declare-fun m!5990896 () Bool)

(assert (=> b!4965672 m!5990896))

(assert (=> b!4965672 m!5989304))

(declare-fun m!5990898 () Bool)

(assert (=> b!4965672 m!5990898))

(assert (=> b!4965672 m!5989306))

(declare-fun m!5990900 () Bool)

(assert (=> b!4965672 m!5990900))

(assert (=> b!4965671 m!5989306))

(declare-fun m!5990902 () Bool)

(assert (=> b!4965671 m!5990902))

(declare-fun m!5990904 () Bool)

(assert (=> d!1597797 m!5990904))

(assert (=> d!1597797 m!5989304))

(declare-fun m!5990906 () Bool)

(assert (=> d!1597797 m!5990906))

(assert (=> d!1597797 m!5989306))

(declare-fun m!5990908 () Bool)

(assert (=> d!1597797 m!5990908))

(assert (=> b!4964752 d!1597797))

(declare-fun d!1597799 () Bool)

(declare-fun c!847214 () Bool)

(assert (=> d!1597799 (= c!847214 (is-Empty!15143 (left!41893 (c!846918 (_2!34377 lt!2049579)))))))

(declare-fun e!3103890 () List!57559)

(assert (=> d!1597799 (= (list!18361 (left!41893 (c!846918 (_2!34377 lt!2049579)))) e!3103890)))

(declare-fun b!4965676 () Bool)

(declare-fun e!3103891 () List!57559)

(assert (=> b!4965676 (= e!3103891 (list!18363 (xs!18469 (left!41893 (c!846918 (_2!34377 lt!2049579))))))))

(declare-fun b!4965674 () Bool)

(assert (=> b!4965674 (= e!3103890 Nil!57435)))

(declare-fun b!4965675 () Bool)

(assert (=> b!4965675 (= e!3103890 e!3103891)))

(declare-fun c!847215 () Bool)

(assert (=> b!4965675 (= c!847215 (is-Leaf!25164 (left!41893 (c!846918 (_2!34377 lt!2049579)))))))

(declare-fun b!4965677 () Bool)

(assert (=> b!4965677 (= e!3103891 (++!12530 (list!18361 (left!41893 (left!41893 (c!846918 (_2!34377 lt!2049579))))) (list!18361 (right!42223 (left!41893 (c!846918 (_2!34377 lt!2049579)))))))))

(assert (= (and d!1597799 c!847214) b!4965674))

(assert (= (and d!1597799 (not c!847214)) b!4965675))

(assert (= (and b!4965675 c!847215) b!4965676))

(assert (= (and b!4965675 (not c!847215)) b!4965677))

(declare-fun m!5990910 () Bool)

(assert (=> b!4965676 m!5990910))

(declare-fun m!5990912 () Bool)

(assert (=> b!4965677 m!5990912))

(declare-fun m!5990914 () Bool)

(assert (=> b!4965677 m!5990914))

(assert (=> b!4965677 m!5990912))

(assert (=> b!4965677 m!5990914))

(declare-fun m!5990916 () Bool)

(assert (=> b!4965677 m!5990916))

(assert (=> b!4964752 d!1597799))

(declare-fun d!1597801 () Bool)

(declare-fun c!847216 () Bool)

(assert (=> d!1597801 (= c!847216 (is-Empty!15143 (right!42223 (c!846918 (_2!34377 lt!2049579)))))))

(declare-fun e!3103892 () List!57559)

(assert (=> d!1597801 (= (list!18361 (right!42223 (c!846918 (_2!34377 lt!2049579)))) e!3103892)))

(declare-fun b!4965680 () Bool)

(declare-fun e!3103893 () List!57559)

(assert (=> b!4965680 (= e!3103893 (list!18363 (xs!18469 (right!42223 (c!846918 (_2!34377 lt!2049579))))))))

(declare-fun b!4965678 () Bool)

(assert (=> b!4965678 (= e!3103892 Nil!57435)))

(declare-fun b!4965679 () Bool)

(assert (=> b!4965679 (= e!3103892 e!3103893)))

(declare-fun c!847217 () Bool)

(assert (=> b!4965679 (= c!847217 (is-Leaf!25164 (right!42223 (c!846918 (_2!34377 lt!2049579)))))))

(declare-fun b!4965681 () Bool)

(assert (=> b!4965681 (= e!3103893 (++!12530 (list!18361 (left!41893 (right!42223 (c!846918 (_2!34377 lt!2049579))))) (list!18361 (right!42223 (right!42223 (c!846918 (_2!34377 lt!2049579)))))))))

(assert (= (and d!1597801 c!847216) b!4965678))

(assert (= (and d!1597801 (not c!847216)) b!4965679))

(assert (= (and b!4965679 c!847217) b!4965680))

(assert (= (and b!4965679 (not c!847217)) b!4965681))

(declare-fun m!5990918 () Bool)

(assert (=> b!4965680 m!5990918))

(declare-fun m!5990920 () Bool)

(assert (=> b!4965681 m!5990920))

(declare-fun m!5990922 () Bool)

(assert (=> b!4965681 m!5990922))

(assert (=> b!4965681 m!5990920))

(assert (=> b!4965681 m!5990922))

(declare-fun m!5990924 () Bool)

(assert (=> b!4965681 m!5990924))

(assert (=> b!4964752 d!1597801))

(declare-fun d!1597803 () Bool)

(declare-fun c!847218 () Bool)

(assert (=> d!1597803 (= c!847218 (is-Empty!15143 (c!846918 (_2!34377 (get!19936 lt!2049678)))))))

(declare-fun e!3103894 () List!57559)

(assert (=> d!1597803 (= (list!18361 (c!846918 (_2!34377 (get!19936 lt!2049678)))) e!3103894)))

(declare-fun b!4965684 () Bool)

(declare-fun e!3103895 () List!57559)

(assert (=> b!4965684 (= e!3103895 (list!18363 (xs!18469 (c!846918 (_2!34377 (get!19936 lt!2049678))))))))

(declare-fun b!4965682 () Bool)

(assert (=> b!4965682 (= e!3103894 Nil!57435)))

(declare-fun b!4965683 () Bool)

(assert (=> b!4965683 (= e!3103894 e!3103895)))

(declare-fun c!847219 () Bool)

(assert (=> b!4965683 (= c!847219 (is-Leaf!25164 (c!846918 (_2!34377 (get!19936 lt!2049678)))))))

(declare-fun b!4965685 () Bool)

(assert (=> b!4965685 (= e!3103895 (++!12530 (list!18361 (left!41893 (c!846918 (_2!34377 (get!19936 lt!2049678))))) (list!18361 (right!42223 (c!846918 (_2!34377 (get!19936 lt!2049678)))))))))

(assert (= (and d!1597803 c!847218) b!4965682))

(assert (= (and d!1597803 (not c!847218)) b!4965683))

(assert (= (and b!4965683 c!847219) b!4965684))

(assert (= (and b!4965683 (not c!847219)) b!4965685))

(declare-fun m!5990926 () Bool)

(assert (=> b!4965684 m!5990926))

(declare-fun m!5990928 () Bool)

(assert (=> b!4965685 m!5990928))

(declare-fun m!5990930 () Bool)

(assert (=> b!4965685 m!5990930))

(assert (=> b!4965685 m!5990928))

(assert (=> b!4965685 m!5990930))

(declare-fun m!5990932 () Bool)

(assert (=> b!4965685 m!5990932))

(assert (=> d!1597217 d!1597803))

(declare-fun d!1597805 () Bool)

(assert (=> d!1597805 (= (list!18363 (xs!18469 (c!846918 (_2!34377 lt!2049572)))) (innerList!15231 (xs!18469 (c!846918 (_2!34377 lt!2049572)))))))

(assert (=> b!4964816 d!1597805))

(declare-fun d!1597807 () Bool)

(assert (=> d!1597807 (= (inv!75067 (xs!18469 (right!42223 (c!846918 input!1342)))) (<= (size!38064 (innerList!15231 (xs!18469 (right!42223 (c!846918 input!1342))))) 2147483647))))

(declare-fun bs!1182998 () Bool)

(assert (= bs!1182998 d!1597807))

(declare-fun m!5990934 () Bool)

(assert (=> bs!1182998 m!5990934))

(assert (=> b!4964969 d!1597807))

(declare-fun d!1597809 () Bool)

(assert (=> d!1597809 (= (head!10666 lt!2049641) (h!63883 lt!2049641))))

(assert (=> b!4964821 d!1597809))

(declare-fun d!1597811 () Bool)

(assert (=> d!1597811 (= (head!10666 lt!2049647) (h!63883 lt!2049647))))

(assert (=> b!4964821 d!1597811))

(declare-fun d!1597813 () Bool)

(declare-fun res!2119640 () Bool)

(declare-fun e!3103896 () Bool)

(assert (=> d!1597813 (=> (not res!2119640) (not e!3103896))))

(assert (=> d!1597813 (= res!2119640 (validRegex!5967 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))))

(assert (=> d!1597813 (= (ruleValid!3800 thiss!15247 (h!63885 (t!368227 rulesArg!259))) e!3103896)))

(declare-fun b!4965686 () Bool)

(declare-fun res!2119641 () Bool)

(assert (=> b!4965686 (=> (not res!2119641) (not e!3103896))))

(assert (=> b!4965686 (= res!2119641 (not (nullable!4618 (regex!8391 (h!63885 (t!368227 rulesArg!259))))))))

(declare-fun b!4965687 () Bool)

(assert (=> b!4965687 (= e!3103896 (not (= (tag!9255 (h!63885 (t!368227 rulesArg!259))) (String!65382 ""))))))

(assert (= (and d!1597813 res!2119640) b!4965686))

(assert (= (and b!4965686 res!2119641) b!4965687))

(assert (=> d!1597813 m!5990678))

(assert (=> b!4965686 m!5990752))

(assert (=> b!4964818 d!1597813))

(assert (=> bm!346145 d!1597333))

(declare-fun b!4965688 () Bool)

(declare-fun e!3103902 () Bool)

(declare-fun lt!2050435 () Bool)

(declare-fun call!346274 () Bool)

(assert (=> b!4965688 (= e!3103902 (= lt!2050435 call!346274))))

(declare-fun b!4965689 () Bool)

(declare-fun e!3103901 () Bool)

(assert (=> b!4965689 (= e!3103901 (not (= (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049922))))) (c!846919 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922))))))))))

(declare-fun b!4965690 () Bool)

(declare-fun res!2119642 () Bool)

(declare-fun e!3103903 () Bool)

(assert (=> b!4965690 (=> (not res!2119642) (not e!3103903))))

(assert (=> b!4965690 (= res!2119642 (isEmpty!30923 (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049922)))))))))

(declare-fun b!4965691 () Bool)

(declare-fun e!3103899 () Bool)

(assert (=> b!4965691 (= e!3103902 e!3103899)))

(declare-fun c!847220 () Bool)

(assert (=> b!4965691 (= c!847220 (is-EmptyLang!13624 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922))))))))

(declare-fun b!4965692 () Bool)

(declare-fun res!2119644 () Bool)

(declare-fun e!3103898 () Bool)

(assert (=> b!4965692 (=> res!2119644 e!3103898)))

(assert (=> b!4965692 (= res!2119644 (not (is-ElementMatch!13624 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922)))))))))

(assert (=> b!4965692 (= e!3103899 e!3103898)))

(declare-fun b!4965693 () Bool)

(declare-fun e!3103897 () Bool)

(assert (=> b!4965693 (= e!3103897 e!3103901)))

(declare-fun res!2119648 () Bool)

(assert (=> b!4965693 (=> res!2119648 e!3103901)))

(assert (=> b!4965693 (= res!2119648 call!346274)))

(declare-fun b!4965694 () Bool)

(declare-fun e!3103900 () Bool)

(assert (=> b!4965694 (= e!3103900 (nullable!4618 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922))))))))

(declare-fun d!1597815 () Bool)

(assert (=> d!1597815 e!3103902))

(declare-fun c!847222 () Bool)

(assert (=> d!1597815 (= c!847222 (is-EmptyExpr!13624 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922))))))))

(assert (=> d!1597815 (= lt!2050435 e!3103900)))

(declare-fun c!847221 () Bool)

(assert (=> d!1597815 (= c!847221 (isEmpty!30923 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049922))))))))

(assert (=> d!1597815 (validRegex!5967 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922)))))))

(assert (=> d!1597815 (= (matchR!6634 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922)))) (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049922))))) lt!2050435)))

(declare-fun b!4965695 () Bool)

(declare-fun res!2119643 () Bool)

(assert (=> b!4965695 (=> res!2119643 e!3103901)))

(assert (=> b!4965695 (= res!2119643 (not (isEmpty!30923 (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049922))))))))))

(declare-fun b!4965696 () Bool)

(assert (=> b!4965696 (= e!3103900 (matchR!6634 (derivativeStep!3920 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922)))) (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049922)))))) (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049922)))))))))

(declare-fun b!4965697 () Bool)

(declare-fun res!2119647 () Bool)

(assert (=> b!4965697 (=> (not res!2119647) (not e!3103903))))

(assert (=> b!4965697 (= res!2119647 (not call!346274))))

(declare-fun b!4965698 () Bool)

(declare-fun res!2119645 () Bool)

(assert (=> b!4965698 (=> res!2119645 e!3103898)))

(assert (=> b!4965698 (= res!2119645 e!3103903)))

(declare-fun res!2119646 () Bool)

(assert (=> b!4965698 (=> (not res!2119646) (not e!3103903))))

(assert (=> b!4965698 (= res!2119646 lt!2050435)))

(declare-fun b!4965699 () Bool)

(assert (=> b!4965699 (= e!3103899 (not lt!2050435))))

(declare-fun bm!346269 () Bool)

(assert (=> bm!346269 (= call!346274 (isEmpty!30923 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049922))))))))

(declare-fun b!4965700 () Bool)

(assert (=> b!4965700 (= e!3103903 (= (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049922))))) (c!846919 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922)))))))))

(declare-fun b!4965701 () Bool)

(assert (=> b!4965701 (= e!3103898 e!3103897)))

(declare-fun res!2119649 () Bool)

(assert (=> b!4965701 (=> (not res!2119649) (not e!3103897))))

(assert (=> b!4965701 (= res!2119649 (not lt!2050435))))

(assert (= (and d!1597815 c!847221) b!4965694))

(assert (= (and d!1597815 (not c!847221)) b!4965696))

(assert (= (and d!1597815 c!847222) b!4965688))

(assert (= (and d!1597815 (not c!847222)) b!4965691))

(assert (= (and b!4965691 c!847220) b!4965699))

(assert (= (and b!4965691 (not c!847220)) b!4965692))

(assert (= (and b!4965692 (not res!2119644)) b!4965698))

(assert (= (and b!4965698 res!2119646) b!4965697))

(assert (= (and b!4965697 res!2119647) b!4965690))

(assert (= (and b!4965690 res!2119642) b!4965700))

(assert (= (and b!4965698 (not res!2119645)) b!4965701))

(assert (= (and b!4965701 res!2119649) b!4965693))

(assert (= (and b!4965693 (not res!2119648)) b!4965695))

(assert (= (and b!4965695 (not res!2119643)) b!4965689))

(assert (= (or b!4965688 b!4965693 b!4965697) bm!346269))

(assert (=> b!4965695 m!5989202))

(declare-fun m!5990936 () Bool)

(assert (=> b!4965695 m!5990936))

(assert (=> b!4965695 m!5990936))

(declare-fun m!5990938 () Bool)

(assert (=> b!4965695 m!5990938))

(assert (=> d!1597815 m!5989202))

(declare-fun m!5990940 () Bool)

(assert (=> d!1597815 m!5990940))

(declare-fun m!5990942 () Bool)

(assert (=> d!1597815 m!5990942))

(declare-fun m!5990944 () Bool)

(assert (=> b!4965694 m!5990944))

(assert (=> bm!346269 m!5989202))

(assert (=> bm!346269 m!5990940))

(assert (=> b!4965700 m!5989202))

(declare-fun m!5990946 () Bool)

(assert (=> b!4965700 m!5990946))

(assert (=> b!4965689 m!5989202))

(assert (=> b!4965689 m!5990946))

(assert (=> b!4965696 m!5989202))

(assert (=> b!4965696 m!5990946))

(assert (=> b!4965696 m!5990946))

(declare-fun m!5990948 () Bool)

(assert (=> b!4965696 m!5990948))

(assert (=> b!4965696 m!5989202))

(assert (=> b!4965696 m!5990936))

(assert (=> b!4965696 m!5990948))

(assert (=> b!4965696 m!5990936))

(declare-fun m!5990950 () Bool)

(assert (=> b!4965696 m!5990950))

(assert (=> b!4965690 m!5989202))

(assert (=> b!4965690 m!5990936))

(assert (=> b!4965690 m!5990936))

(assert (=> b!4965690 m!5990938))

(assert (=> b!4964698 d!1597815))

(assert (=> b!4964698 d!1597561))

(declare-fun d!1597817 () Bool)

(assert (=> d!1597817 (= (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049922)))) (list!18361 (c!846918 (charsOf!5435 (_1!34378 (get!19935 lt!2049922))))))))

(declare-fun bs!1182999 () Bool)

(assert (= bs!1182999 d!1597817))

(declare-fun m!5990952 () Bool)

(assert (=> bs!1182999 m!5990952))

(assert (=> b!4964698 d!1597817))

(declare-fun d!1597819 () Bool)

(declare-fun lt!2050436 () BalanceConc!29716)

(assert (=> d!1597819 (= (list!18359 lt!2050436) (originalCharacters!8670 (_1!34378 (get!19935 lt!2049922))))))

(assert (=> d!1597819 (= lt!2050436 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922))))) (value!268585 (_1!34378 (get!19935 lt!2049922)))))))

(assert (=> d!1597819 (= (charsOf!5435 (_1!34378 (get!19935 lt!2049922))) lt!2050436)))

(declare-fun b_lambda!196649 () Bool)

(assert (=> (not b_lambda!196649) (not d!1597819)))

(declare-fun t!368370 () Bool)

(declare-fun tb!260359 () Bool)

(assert (=> (and b!4964142 (= (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922)))))) t!368370) tb!260359))

(declare-fun b!4965702 () Bool)

(declare-fun e!3103904 () Bool)

(declare-fun tp!1392831 () Bool)

(assert (=> b!4965702 (= e!3103904 (and (inv!75059 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922))))) (value!268585 (_1!34378 (get!19935 lt!2049922)))))) tp!1392831))))

(declare-fun result!325454 () Bool)

(assert (=> tb!260359 (= result!325454 (and (inv!75060 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922))))) (value!268585 (_1!34378 (get!19935 lt!2049922))))) e!3103904))))

(assert (= tb!260359 b!4965702))

(declare-fun m!5990954 () Bool)

(assert (=> b!4965702 m!5990954))

(declare-fun m!5990956 () Bool)

(assert (=> tb!260359 m!5990956))

(assert (=> d!1597819 t!368370))

(declare-fun b_and!347881 () Bool)

(assert (= b_and!347839 (and (=> t!368370 result!325454) b_and!347881)))

(declare-fun t!368372 () Bool)

(declare-fun tb!260361 () Bool)

(assert (=> (and b!4964367 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922)))))) t!368372) tb!260361))

(declare-fun result!325456 () Bool)

(assert (= result!325456 result!325454))

(assert (=> d!1597819 t!368372))

(declare-fun b_and!347883 () Bool)

(assert (= b_and!347841 (and (=> t!368372 result!325456) b_and!347883)))

(declare-fun tb!260363 () Bool)

(declare-fun t!368374 () Bool)

(assert (=> (and b!4964941 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922)))))) t!368374) tb!260363))

(declare-fun result!325458 () Bool)

(assert (= result!325458 result!325454))

(assert (=> d!1597819 t!368374))

(declare-fun b_and!347885 () Bool)

(assert (= b_and!347843 (and (=> t!368374 result!325458) b_and!347885)))

(declare-fun m!5990958 () Bool)

(assert (=> d!1597819 m!5990958))

(declare-fun m!5990960 () Bool)

(assert (=> d!1597819 m!5990960))

(assert (=> b!4964698 d!1597819))

(declare-fun b!4965703 () Bool)

(declare-fun e!3103910 () Bool)

(declare-fun lt!2050437 () Bool)

(declare-fun call!346275 () Bool)

(assert (=> b!4965703 (= e!3103910 (= lt!2050437 call!346275))))

(declare-fun b!4965704 () Bool)

(declare-fun e!3103909 () Bool)

(assert (=> b!4965704 (= e!3103909 (not (= (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049928))))) (c!846919 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928))))))))))

(declare-fun b!4965705 () Bool)

(declare-fun res!2119650 () Bool)

(declare-fun e!3103911 () Bool)

(assert (=> b!4965705 (=> (not res!2119650) (not e!3103911))))

(assert (=> b!4965705 (= res!2119650 (isEmpty!30923 (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049928)))))))))

(declare-fun b!4965706 () Bool)

(declare-fun e!3103907 () Bool)

(assert (=> b!4965706 (= e!3103910 e!3103907)))

(declare-fun c!847223 () Bool)

(assert (=> b!4965706 (= c!847223 (is-EmptyLang!13624 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928))))))))

(declare-fun b!4965707 () Bool)

(declare-fun res!2119652 () Bool)

(declare-fun e!3103906 () Bool)

(assert (=> b!4965707 (=> res!2119652 e!3103906)))

(assert (=> b!4965707 (= res!2119652 (not (is-ElementMatch!13624 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928)))))))))

(assert (=> b!4965707 (= e!3103907 e!3103906)))

(declare-fun b!4965708 () Bool)

(declare-fun e!3103905 () Bool)

(assert (=> b!4965708 (= e!3103905 e!3103909)))

(declare-fun res!2119656 () Bool)

(assert (=> b!4965708 (=> res!2119656 e!3103909)))

(assert (=> b!4965708 (= res!2119656 call!346275)))

(declare-fun b!4965709 () Bool)

(declare-fun e!3103908 () Bool)

(assert (=> b!4965709 (= e!3103908 (nullable!4618 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928))))))))

(declare-fun d!1597821 () Bool)

(assert (=> d!1597821 e!3103910))

(declare-fun c!847225 () Bool)

(assert (=> d!1597821 (= c!847225 (is-EmptyExpr!13624 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928))))))))

(assert (=> d!1597821 (= lt!2050437 e!3103908)))

(declare-fun c!847224 () Bool)

(assert (=> d!1597821 (= c!847224 (isEmpty!30923 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049928))))))))

(assert (=> d!1597821 (validRegex!5967 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928)))))))

(assert (=> d!1597821 (= (matchR!6634 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928)))) (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049928))))) lt!2050437)))

(declare-fun b!4965710 () Bool)

(declare-fun res!2119651 () Bool)

(assert (=> b!4965710 (=> res!2119651 e!3103909)))

(assert (=> b!4965710 (= res!2119651 (not (isEmpty!30923 (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049928))))))))))

(declare-fun b!4965711 () Bool)

(assert (=> b!4965711 (= e!3103908 (matchR!6634 (derivativeStep!3920 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928)))) (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049928)))))) (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049928)))))))))

(declare-fun b!4965712 () Bool)

(declare-fun res!2119655 () Bool)

(assert (=> b!4965712 (=> (not res!2119655) (not e!3103911))))

(assert (=> b!4965712 (= res!2119655 (not call!346275))))

(declare-fun b!4965713 () Bool)

(declare-fun res!2119653 () Bool)

(assert (=> b!4965713 (=> res!2119653 e!3103906)))

(assert (=> b!4965713 (= res!2119653 e!3103911)))

(declare-fun res!2119654 () Bool)

(assert (=> b!4965713 (=> (not res!2119654) (not e!3103911))))

(assert (=> b!4965713 (= res!2119654 lt!2050437)))

(declare-fun b!4965714 () Bool)

(assert (=> b!4965714 (= e!3103907 (not lt!2050437))))

(declare-fun bm!346270 () Bool)

(assert (=> bm!346270 (= call!346275 (isEmpty!30923 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049928))))))))

(declare-fun b!4965715 () Bool)

(assert (=> b!4965715 (= e!3103911 (= (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049928))))) (c!846919 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928)))))))))

(declare-fun b!4965716 () Bool)

(assert (=> b!4965716 (= e!3103906 e!3103905)))

(declare-fun res!2119657 () Bool)

(assert (=> b!4965716 (=> (not res!2119657) (not e!3103905))))

(assert (=> b!4965716 (= res!2119657 (not lt!2050437))))

(assert (= (and d!1597821 c!847224) b!4965709))

(assert (= (and d!1597821 (not c!847224)) b!4965711))

(assert (= (and d!1597821 c!847225) b!4965703))

(assert (= (and d!1597821 (not c!847225)) b!4965706))

(assert (= (and b!4965706 c!847223) b!4965714))

(assert (= (and b!4965706 (not c!847223)) b!4965707))

(assert (= (and b!4965707 (not res!2119652)) b!4965713))

(assert (= (and b!4965713 res!2119654) b!4965712))

(assert (= (and b!4965712 res!2119655) b!4965705))

(assert (= (and b!4965705 res!2119650) b!4965715))

(assert (= (and b!4965713 (not res!2119653)) b!4965716))

(assert (= (and b!4965716 res!2119657) b!4965708))

(assert (= (and b!4965708 (not res!2119656)) b!4965710))

(assert (= (and b!4965710 (not res!2119651)) b!4965704))

(assert (= (or b!4965703 b!4965708 b!4965712) bm!346270))

(assert (=> b!4965710 m!5989262))

(declare-fun m!5990962 () Bool)

(assert (=> b!4965710 m!5990962))

(assert (=> b!4965710 m!5990962))

(declare-fun m!5990964 () Bool)

(assert (=> b!4965710 m!5990964))

(assert (=> d!1597821 m!5989262))

(declare-fun m!5990966 () Bool)

(assert (=> d!1597821 m!5990966))

(declare-fun m!5990968 () Bool)

(assert (=> d!1597821 m!5990968))

(declare-fun m!5990970 () Bool)

(assert (=> b!4965709 m!5990970))

(assert (=> bm!346270 m!5989262))

(assert (=> bm!346270 m!5990966))

(assert (=> b!4965715 m!5989262))

(declare-fun m!5990972 () Bool)

(assert (=> b!4965715 m!5990972))

(assert (=> b!4965704 m!5989262))

(assert (=> b!4965704 m!5990972))

(assert (=> b!4965711 m!5989262))

(assert (=> b!4965711 m!5990972))

(assert (=> b!4965711 m!5990972))

(declare-fun m!5990974 () Bool)

(assert (=> b!4965711 m!5990974))

(assert (=> b!4965711 m!5989262))

(assert (=> b!4965711 m!5990962))

(assert (=> b!4965711 m!5990974))

(assert (=> b!4965711 m!5990962))

(declare-fun m!5990976 () Bool)

(assert (=> b!4965711 m!5990976))

(assert (=> b!4965705 m!5989262))

(assert (=> b!4965705 m!5990962))

(assert (=> b!4965705 m!5990962))

(assert (=> b!4965705 m!5990964))

(assert (=> b!4964726 d!1597821))

(assert (=> b!4964726 d!1597573))

(declare-fun d!1597823 () Bool)

(assert (=> d!1597823 (= (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049928)))) (list!18361 (c!846918 (charsOf!5435 (_1!34378 (get!19935 lt!2049928))))))))

(declare-fun bs!1183000 () Bool)

(assert (= bs!1183000 d!1597823))

(declare-fun m!5990978 () Bool)

(assert (=> bs!1183000 m!5990978))

(assert (=> b!4964726 d!1597823))

(declare-fun d!1597825 () Bool)

(declare-fun lt!2050438 () BalanceConc!29716)

(assert (=> d!1597825 (= (list!18359 lt!2050438) (originalCharacters!8670 (_1!34378 (get!19935 lt!2049928))))))

(assert (=> d!1597825 (= lt!2050438 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928))))) (value!268585 (_1!34378 (get!19935 lt!2049928)))))))

(assert (=> d!1597825 (= (charsOf!5435 (_1!34378 (get!19935 lt!2049928))) lt!2050438)))

(declare-fun b_lambda!196651 () Bool)

(assert (=> (not b_lambda!196651) (not d!1597825)))

(declare-fun t!368376 () Bool)

(declare-fun tb!260365 () Bool)

(assert (=> (and b!4964142 (= (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928)))))) t!368376) tb!260365))

(declare-fun b!4965717 () Bool)

(declare-fun e!3103912 () Bool)

(declare-fun tp!1392832 () Bool)

(assert (=> b!4965717 (= e!3103912 (and (inv!75059 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928))))) (value!268585 (_1!34378 (get!19935 lt!2049928)))))) tp!1392832))))

(declare-fun result!325460 () Bool)

(assert (=> tb!260365 (= result!325460 (and (inv!75060 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928))))) (value!268585 (_1!34378 (get!19935 lt!2049928))))) e!3103912))))

(assert (= tb!260365 b!4965717))

(declare-fun m!5990980 () Bool)

(assert (=> b!4965717 m!5990980))

(declare-fun m!5990982 () Bool)

(assert (=> tb!260365 m!5990982))

(assert (=> d!1597825 t!368376))

(declare-fun b_and!347887 () Bool)

(assert (= b_and!347881 (and (=> t!368376 result!325460) b_and!347887)))

(declare-fun tb!260367 () Bool)

(declare-fun t!368378 () Bool)

(assert (=> (and b!4964367 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928)))))) t!368378) tb!260367))

(declare-fun result!325462 () Bool)

(assert (= result!325462 result!325460))

(assert (=> d!1597825 t!368378))

(declare-fun b_and!347889 () Bool)

(assert (= b_and!347883 (and (=> t!368378 result!325462) b_and!347889)))

(declare-fun t!368380 () Bool)

(declare-fun tb!260369 () Bool)

(assert (=> (and b!4964941 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928)))))) t!368380) tb!260369))

(declare-fun result!325464 () Bool)

(assert (= result!325464 result!325460))

(assert (=> d!1597825 t!368380))

(declare-fun b_and!347891 () Bool)

(assert (= b_and!347885 (and (=> t!368380 result!325464) b_and!347891)))

(declare-fun m!5990984 () Bool)

(assert (=> d!1597825 m!5990984))

(declare-fun m!5990986 () Bool)

(assert (=> d!1597825 m!5990986))

(assert (=> b!4964726 d!1597825))

(declare-fun d!1597827 () Bool)

(assert (=> d!1597827 (isPrefix!5242 lt!2049672 lt!2049672)))

(declare-fun lt!2050439 () Unit!148334)

(assert (=> d!1597827 (= lt!2050439 (choose!36651 lt!2049672 lt!2049672))))

(assert (=> d!1597827 (= (lemmaIsPrefixRefl!3566 lt!2049672 lt!2049672) lt!2050439)))

(declare-fun bs!1183001 () Bool)

(assert (= bs!1183001 d!1597827))

(assert (=> bs!1183001 m!5989064))

(declare-fun m!5990988 () Bool)

(assert (=> bs!1183001 m!5990988))

(assert (=> bm!346162 d!1597827))

(declare-fun d!1597829 () Bool)

(assert (=> d!1597829 (= (isDefined!11358 lt!2049922) (not (isEmpty!30925 lt!2049922)))))

(declare-fun bs!1183002 () Bool)

(assert (= bs!1183002 d!1597829))

(assert (=> bs!1183002 m!5989188))

(assert (=> b!4964697 d!1597829))

(declare-fun d!1597831 () Bool)

(assert (=> d!1597831 (= (isDefined!11358 lt!2049928) (not (isEmpty!30925 lt!2049928)))))

(declare-fun bs!1183003 () Bool)

(assert (= bs!1183003 d!1597831))

(assert (=> bs!1183003 m!5989244))

(assert (=> b!4964725 d!1597831))

(declare-fun d!1597833 () Bool)

(declare-fun lt!2050440 () Bool)

(assert (=> d!1597833 (= lt!2050440 (isEmpty!30923 (list!18361 (right!42223 (c!846918 input!1342)))))))

(assert (=> d!1597833 (= lt!2050440 (= (size!38068 (right!42223 (c!846918 input!1342))) 0))))

(assert (=> d!1597833 (= (isEmpty!30929 (right!42223 (c!846918 input!1342))) lt!2050440)))

(declare-fun bs!1183004 () Bool)

(assert (= bs!1183004 d!1597833))

(assert (=> bs!1183004 m!5989388))

(assert (=> bs!1183004 m!5989388))

(declare-fun m!5990990 () Bool)

(assert (=> bs!1183004 m!5990990))

(assert (=> bs!1183004 m!5989012))

(assert (=> b!4964714 d!1597833))

(declare-fun bs!1183005 () Bool)

(declare-fun b!4965718 () Bool)

(assert (= bs!1183005 (and b!4965718 d!1597583)))

(declare-fun lambda!247344 () Int)

(assert (=> bs!1183005 (= (and (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (= lambda!247344 lambda!247340))))

(declare-fun bs!1183006 () Bool)

(assert (= bs!1183006 (and b!4965718 d!1597259)))

(assert (=> bs!1183006 (= (and (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (= lambda!247344 lambda!247317))))

(declare-fun bs!1183007 () Bool)

(assert (= bs!1183007 (and b!4965718 b!4964280)))

(assert (=> bs!1183007 (= (and (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (= lambda!247344 lambda!247309))))

(declare-fun bs!1183008 () Bool)

(assert (= bs!1183008 (and b!4965718 d!1597539)))

(assert (=> bs!1183008 (= (and (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (= lambda!247344 lambda!247339))))

(declare-fun bs!1183009 () Bool)

(assert (= bs!1183009 (and b!4965718 d!1597673)))

(assert (=> bs!1183009 (= (and (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))))) (= lambda!247344 lambda!247342))))

(declare-fun bs!1183010 () Bool)

(assert (= bs!1183010 (and b!4965718 b!4964759)))

(assert (=> bs!1183010 (= (and (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))))) (= lambda!247344 lambda!247318))))

(declare-fun b!4965725 () Bool)

(declare-fun e!3103919 () Bool)

(assert (=> b!4965725 (= e!3103919 true)))

(declare-fun b!4965724 () Bool)

(declare-fun e!3103918 () Bool)

(assert (=> b!4965724 (= e!3103918 e!3103919)))

(assert (=> b!4965718 e!3103918))

(assert (= b!4965724 b!4965725))

(assert (= b!4965718 b!4965724))

(assert (=> b!4965725 (< (dynLambda!23142 order!26187 (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259)))))) (dynLambda!23143 order!26189 lambda!247344))))

(assert (=> b!4965725 (< (dynLambda!23144 order!26191 (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259)))))) (dynLambda!23143 order!26189 lambda!247344))))

(declare-fun e!3103913 () Option!14446)

(declare-fun lt!2050448 () tuple2!62156)

(assert (=> b!4965718 (= e!3103913 (Some!14445 (tuple2!62149 (Token!15279 (apply!13902 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259)))) (_1!34381 lt!2050448)) (h!63885 (t!368227 (t!368227 rulesArg!259))) (size!38065 (_1!34381 lt!2050448)) (list!18359 (_1!34381 lt!2050448))) (_2!34381 lt!2050448))))))

(declare-fun lt!2050444 () List!57559)

(assert (=> b!4965718 (= lt!2050444 (list!18359 input!1342))))

(declare-fun lt!2050449 () Unit!148334)

(assert (=> b!4965718 (= lt!2050449 (longestMatchIsAcceptedByMatchOrIsEmpty!1814 (regex!8391 (h!63885 (t!368227 (t!368227 rulesArg!259)))) lt!2050444))))

(declare-fun res!2119659 () Bool)

(assert (=> b!4965718 (= res!2119659 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 (t!368227 rulesArg!259)))) Nil!57435 (size!38064 Nil!57435) lt!2050444 lt!2050444 (size!38064 lt!2050444)))))))

(declare-fun e!3103915 () Bool)

(assert (=> b!4965718 (=> res!2119659 e!3103915)))

(assert (=> b!4965718 e!3103915))

(declare-fun lt!2050447 () Unit!148334)

(assert (=> b!4965718 (= lt!2050447 lt!2050449)))

(declare-fun lt!2050445 () Unit!148334)

(assert (=> b!4965718 (= lt!2050445 (lemmaInv!1332 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))))))

(declare-fun lt!2050442 () Unit!148334)

(assert (=> b!4965718 (= lt!2050442 (ForallOf!1225 lambda!247344 (_1!34381 lt!2050448)))))

(declare-fun lt!2050443 () Unit!148334)

(assert (=> b!4965718 (= lt!2050443 (ForallOf!1225 lambda!247344 (seqFromList!6034 (list!18359 (_1!34381 lt!2050448)))))))

(declare-fun lt!2050446 () Option!14446)

(assert (=> b!4965718 (= lt!2050446 (Some!14445 (tuple2!62149 (Token!15279 (apply!13902 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259)))) (_1!34381 lt!2050448)) (h!63885 (t!368227 (t!368227 rulesArg!259))) (size!38065 (_1!34381 lt!2050448)) (list!18359 (_1!34381 lt!2050448))) (_2!34381 lt!2050448))))))

(declare-fun lt!2050441 () Unit!148334)

(assert (=> b!4965718 (= lt!2050441 (lemmaEqSameImage!1166 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259)))) (_1!34381 lt!2050448) (seqFromList!6034 (list!18359 (_1!34381 lt!2050448)))))))

(declare-fun b!4965719 () Bool)

(assert (=> b!4965719 (= e!3103913 None!14445)))

(declare-fun b!4965720 () Bool)

(declare-fun e!3103914 () Bool)

(declare-fun e!3103917 () Bool)

(assert (=> b!4965720 (= e!3103914 e!3103917)))

(declare-fun res!2119660 () Bool)

(assert (=> b!4965720 (=> res!2119660 e!3103917)))

(declare-fun lt!2050450 () Option!14446)

(assert (=> b!4965720 (= res!2119660 (not (isDefined!11360 lt!2050450)))))

(declare-fun d!1597835 () Bool)

(assert (=> d!1597835 e!3103914))

(declare-fun res!2119658 () Bool)

(assert (=> d!1597835 (=> (not res!2119658) (not e!3103914))))

(assert (=> d!1597835 (= res!2119658 (= (isDefined!11360 lt!2050450) (isDefined!11358 (maxPrefixOneRule!3627 thiss!15247 (h!63885 (t!368227 (t!368227 rulesArg!259))) (list!18359 input!1342)))))))

(assert (=> d!1597835 (= lt!2050450 e!3103913)))

(declare-fun c!847226 () Bool)

(assert (=> d!1597835 (= c!847226 (isEmpty!30924 (_1!34381 lt!2050448)))))

(assert (=> d!1597835 (= lt!2050448 (findLongestMatchWithZipperSequenceV2!162 (regex!8391 (h!63885 (t!368227 (t!368227 rulesArg!259)))) input!1342 totalInput!464))))

(assert (=> d!1597835 (ruleValid!3800 thiss!15247 (h!63885 (t!368227 (t!368227 rulesArg!259))))))

(assert (=> d!1597835 (= (maxPrefixOneRuleZipperSequenceV2!359 thiss!15247 (h!63885 (t!368227 (t!368227 rulesArg!259))) input!1342 totalInput!464) lt!2050450)))

(declare-fun b!4965721 () Bool)

(assert (=> b!4965721 (= e!3103915 (matchR!6634 (regex!8391 (h!63885 (t!368227 (t!368227 rulesArg!259)))) (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 (t!368227 rulesArg!259)))) Nil!57435 (size!38064 Nil!57435) lt!2050444 lt!2050444 (size!38064 lt!2050444)))))))

(declare-fun b!4965722 () Bool)

(declare-fun e!3103916 () Bool)

(assert (=> b!4965722 (= e!3103917 e!3103916)))

(declare-fun res!2119661 () Bool)

(assert (=> b!4965722 (=> (not res!2119661) (not e!3103916))))

(assert (=> b!4965722 (= res!2119661 (= (_1!34377 (get!19936 lt!2050450)) (_1!34378 (get!19935 (maxPrefixOneRule!3627 thiss!15247 (h!63885 (t!368227 (t!368227 rulesArg!259))) (list!18359 input!1342))))))))

(declare-fun b!4965723 () Bool)

(assert (=> b!4965723 (= e!3103916 (= (list!18359 (_2!34377 (get!19936 lt!2050450))) (_2!34378 (get!19935 (maxPrefixOneRule!3627 thiss!15247 (h!63885 (t!368227 (t!368227 rulesArg!259))) (list!18359 input!1342))))))))

(assert (= (and d!1597835 c!847226) b!4965719))

(assert (= (and d!1597835 (not c!847226)) b!4965718))

(assert (= (and b!4965718 (not res!2119659)) b!4965721))

(assert (= (and d!1597835 res!2119658) b!4965720))

(assert (= (and b!4965720 (not res!2119660)) b!4965722))

(assert (= (and b!4965722 res!2119661) b!4965723))

(declare-fun m!5990992 () Bool)

(assert (=> d!1597835 m!5990992))

(assert (=> d!1597835 m!5988632))

(assert (=> d!1597835 m!5990828))

(assert (=> d!1597835 m!5988632))

(declare-fun m!5990994 () Bool)

(assert (=> d!1597835 m!5990994))

(assert (=> d!1597835 m!5990828))

(declare-fun m!5990996 () Bool)

(assert (=> d!1597835 m!5990996))

(declare-fun m!5990998 () Bool)

(assert (=> d!1597835 m!5990998))

(assert (=> d!1597835 m!5990508))

(assert (=> b!4965720 m!5990994))

(declare-fun m!5991000 () Bool)

(assert (=> b!4965718 m!5991000))

(declare-fun m!5991002 () Bool)

(assert (=> b!4965718 m!5991002))

(declare-fun m!5991004 () Bool)

(assert (=> b!4965718 m!5991004))

(declare-fun m!5991006 () Bool)

(assert (=> b!4965718 m!5991006))

(assert (=> b!4965718 m!5991002))

(declare-fun m!5991008 () Bool)

(assert (=> b!4965718 m!5991008))

(assert (=> b!4965718 m!5988784))

(declare-fun m!5991010 () Bool)

(assert (=> b!4965718 m!5991010))

(declare-fun m!5991012 () Bool)

(assert (=> b!4965718 m!5991012))

(declare-fun m!5991014 () Bool)

(assert (=> b!4965718 m!5991014))

(assert (=> b!4965718 m!5991002))

(declare-fun m!5991016 () Bool)

(assert (=> b!4965718 m!5991016))

(declare-fun m!5991018 () Bool)

(assert (=> b!4965718 m!5991018))

(declare-fun m!5991020 () Bool)

(assert (=> b!4965718 m!5991020))

(declare-fun m!5991022 () Bool)

(assert (=> b!4965718 m!5991022))

(assert (=> b!4965718 m!5988784))

(assert (=> b!4965718 m!5988632))

(assert (=> b!4965718 m!5991014))

(assert (=> b!4965718 m!5991010))

(assert (=> b!4965723 m!5988632))

(assert (=> b!4965723 m!5990828))

(assert (=> b!4965723 m!5988632))

(declare-fun m!5991024 () Bool)

(assert (=> b!4965723 m!5991024))

(assert (=> b!4965723 m!5990828))

(declare-fun m!5991026 () Bool)

(assert (=> b!4965723 m!5991026))

(declare-fun m!5991028 () Bool)

(assert (=> b!4965723 m!5991028))

(assert (=> b!4965722 m!5991028))

(assert (=> b!4965722 m!5988632))

(assert (=> b!4965722 m!5988632))

(assert (=> b!4965722 m!5990828))

(assert (=> b!4965722 m!5990828))

(assert (=> b!4965722 m!5991026))

(assert (=> b!4965721 m!5988784))

(assert (=> b!4965721 m!5991010))

(assert (=> b!4965721 m!5988784))

(assert (=> b!4965721 m!5991010))

(assert (=> b!4965721 m!5991012))

(declare-fun m!5991030 () Bool)

(assert (=> b!4965721 m!5991030))

(assert (=> bm!346173 d!1597835))

(assert (=> d!1597197 d!1597333))

(assert (=> d!1597197 d!1597691))

(declare-fun d!1597837 () Bool)

(declare-fun e!3103922 () Bool)

(assert (=> d!1597837 e!3103922))

(declare-fun res!2119664 () Bool)

(assert (=> d!1597837 (=> res!2119664 e!3103922)))

(assert (=> d!1597837 (= res!2119664 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))))))

(assert (=> d!1597837 true))

(declare-fun _$92!518 () Unit!148334)

(assert (=> d!1597837 (= (choose!36655 (regex!8391 (h!63885 rulesArg!259)) lt!2049672) _$92!518)))

(declare-fun b!4965728 () Bool)

(assert (=> b!4965728 (= e!3103922 (matchR!6634 (regex!8391 (h!63885 rulesArg!259)) (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))))))

(assert (= (and d!1597837 (not res!2119664)) b!4965728))

(assert (=> d!1597837 m!5988784))

(assert (=> d!1597837 m!5988786))

(assert (=> d!1597837 m!5988784))

(assert (=> d!1597837 m!5988786))

(assert (=> d!1597837 m!5988788))

(assert (=> d!1597837 m!5988794))

(assert (=> b!4965728 m!5988784))

(assert (=> b!4965728 m!5988786))

(assert (=> b!4965728 m!5988784))

(assert (=> b!4965728 m!5988786))

(assert (=> b!4965728 m!5988788))

(assert (=> b!4965728 m!5988806))

(assert (=> d!1597343 d!1597837))

(assert (=> d!1597343 d!1597333))

(assert (=> d!1597343 d!1597201))

(assert (=> d!1597343 d!1597691))

(assert (=> d!1597343 d!1597203))

(assert (=> d!1597343 d!1597199))

(declare-fun d!1597839 () Bool)

(declare-fun lt!2050451 () Int)

(assert (=> d!1597839 (>= lt!2050451 0)))

(declare-fun e!3103923 () Int)

(assert (=> d!1597839 (= lt!2050451 e!3103923)))

(declare-fun c!847227 () Bool)

(assert (=> d!1597839 (= c!847227 (is-Nil!57435 (innerList!15231 (xs!18469 (c!846918 input!1342)))))))

(assert (=> d!1597839 (= (size!38064 (innerList!15231 (xs!18469 (c!846918 input!1342)))) lt!2050451)))

(declare-fun b!4965729 () Bool)

(assert (=> b!4965729 (= e!3103923 0)))

(declare-fun b!4965730 () Bool)

(assert (=> b!4965730 (= e!3103923 (+ 1 (size!38064 (t!368225 (innerList!15231 (xs!18469 (c!846918 input!1342)))))))))

(assert (= (and d!1597839 c!847227) b!4965729))

(assert (= (and d!1597839 (not c!847227)) b!4965730))

(declare-fun m!5991032 () Bool)

(assert (=> b!4965730 m!5991032))

(assert (=> d!1597297 d!1597839))

(declare-fun b!4965734 () Bool)

(declare-fun e!3103925 () Bool)

(assert (=> b!4965734 (= e!3103925 (>= (size!38064 lt!2049672) (size!38064 lt!2049672)))))

(declare-fun b!4965733 () Bool)

(declare-fun e!3103924 () Bool)

(assert (=> b!4965733 (= e!3103924 (isPrefix!5242 (tail!9799 lt!2049672) (tail!9799 lt!2049672)))))

(declare-fun b!4965731 () Bool)

(declare-fun e!3103926 () Bool)

(assert (=> b!4965731 (= e!3103926 e!3103924)))

(declare-fun res!2119666 () Bool)

(assert (=> b!4965731 (=> (not res!2119666) (not e!3103924))))

(assert (=> b!4965731 (= res!2119666 (not (is-Nil!57435 lt!2049672)))))

(declare-fun d!1597841 () Bool)

(assert (=> d!1597841 e!3103925))

(declare-fun res!2119665 () Bool)

(assert (=> d!1597841 (=> res!2119665 e!3103925)))

(declare-fun lt!2050452 () Bool)

(assert (=> d!1597841 (= res!2119665 (not lt!2050452))))

(assert (=> d!1597841 (= lt!2050452 e!3103926)))

(declare-fun res!2119668 () Bool)

(assert (=> d!1597841 (=> res!2119668 e!3103926)))

(assert (=> d!1597841 (= res!2119668 (is-Nil!57435 lt!2049672))))

(assert (=> d!1597841 (= (isPrefix!5242 lt!2049672 lt!2049672) lt!2050452)))

(declare-fun b!4965732 () Bool)

(declare-fun res!2119667 () Bool)

(assert (=> b!4965732 (=> (not res!2119667) (not e!3103924))))

(assert (=> b!4965732 (= res!2119667 (= (head!10666 lt!2049672) (head!10666 lt!2049672)))))

(assert (= (and d!1597841 (not res!2119668)) b!4965731))

(assert (= (and b!4965731 res!2119666) b!4965732))

(assert (= (and b!4965732 res!2119667) b!4965733))

(assert (= (and d!1597841 (not res!2119665)) b!4965734))

(assert (=> b!4965734 m!5988786))

(assert (=> b!4965734 m!5988786))

(assert (=> b!4965733 m!5989058))

(assert (=> b!4965733 m!5989058))

(assert (=> b!4965733 m!5989058))

(assert (=> b!4965733 m!5989058))

(declare-fun m!5991034 () Bool)

(assert (=> b!4965733 m!5991034))

(assert (=> b!4965732 m!5989054))

(assert (=> b!4965732 m!5989054))

(assert (=> bm!346169 d!1597841))

(assert (=> b!4964679 d!1597665))

(declare-fun d!1597843 () Bool)

(declare-fun lt!2050453 () Int)

(assert (=> d!1597843 (>= lt!2050453 0)))

(declare-fun e!3103927 () Int)

(assert (=> d!1597843 (= lt!2050453 e!3103927)))

(declare-fun c!847228 () Bool)

(assert (=> d!1597843 (= c!847228 (is-Nil!57435 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049912)))))))

(assert (=> d!1597843 (= (size!38064 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049912)))) lt!2050453)))

(declare-fun b!4965735 () Bool)

(assert (=> b!4965735 (= e!3103927 0)))

(declare-fun b!4965736 () Bool)

(assert (=> b!4965736 (= e!3103927 (+ 1 (size!38064 (t!368225 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049912)))))))))

(assert (= (and d!1597843 c!847228) b!4965735))

(assert (= (and d!1597843 (not c!847228)) b!4965736))

(declare-fun m!5991036 () Bool)

(assert (=> b!4965736 m!5991036))

(assert (=> b!4964679 d!1597843))

(declare-fun d!1597845 () Bool)

(declare-fun lt!2050456 () Int)

(assert (=> d!1597845 (= lt!2050456 (size!38064 (list!18361 (left!41893 (c!846918 input!1342)))))))

(assert (=> d!1597845 (= lt!2050456 (ite (is-Empty!15143 (left!41893 (c!846918 input!1342))) 0 (ite (is-Leaf!25164 (left!41893 (c!846918 input!1342))) (csize!30517 (left!41893 (c!846918 input!1342))) (csize!30516 (left!41893 (c!846918 input!1342))))))))

(assert (=> d!1597845 (= (size!38068 (left!41893 (c!846918 input!1342))) lt!2050456)))

(declare-fun bs!1183011 () Bool)

(assert (= bs!1183011 d!1597845))

(assert (=> bs!1183011 m!5989386))

(assert (=> bs!1183011 m!5989386))

(declare-fun m!5991038 () Bool)

(assert (=> bs!1183011 m!5991038))

(assert (=> d!1597193 d!1597845))

(declare-fun d!1597847 () Bool)

(declare-fun lt!2050457 () Int)

(assert (=> d!1597847 (= lt!2050457 (size!38064 (list!18361 (right!42223 (c!846918 input!1342)))))))

(assert (=> d!1597847 (= lt!2050457 (ite (is-Empty!15143 (right!42223 (c!846918 input!1342))) 0 (ite (is-Leaf!25164 (right!42223 (c!846918 input!1342))) (csize!30517 (right!42223 (c!846918 input!1342))) (csize!30516 (right!42223 (c!846918 input!1342))))))))

(assert (=> d!1597847 (= (size!38068 (right!42223 (c!846918 input!1342))) lt!2050457)))

(declare-fun bs!1183012 () Bool)

(assert (= bs!1183012 d!1597847))

(assert (=> bs!1183012 m!5989388))

(assert (=> bs!1183012 m!5989388))

(declare-fun m!5991040 () Bool)

(assert (=> bs!1183012 m!5991040))

(assert (=> d!1597193 d!1597847))

(declare-fun b!4965737 () Bool)

(declare-fun e!3103929 () List!57559)

(assert (=> b!4965737 (= e!3103929 (list!18361 (right!42223 (c!846918 totalInput!464))))))

(declare-fun b!4965739 () Bool)

(declare-fun res!2119669 () Bool)

(declare-fun e!3103928 () Bool)

(assert (=> b!4965739 (=> (not res!2119669) (not e!3103928))))

(declare-fun lt!2050458 () List!57559)

(assert (=> b!4965739 (= res!2119669 (= (size!38064 lt!2050458) (+ (size!38064 (list!18361 (left!41893 (c!846918 totalInput!464)))) (size!38064 (list!18361 (right!42223 (c!846918 totalInput!464)))))))))

(declare-fun b!4965740 () Bool)

(assert (=> b!4965740 (= e!3103928 (or (not (= (list!18361 (right!42223 (c!846918 totalInput!464))) Nil!57435)) (= lt!2050458 (list!18361 (left!41893 (c!846918 totalInput!464))))))))

(declare-fun b!4965738 () Bool)

(assert (=> b!4965738 (= e!3103929 (Cons!57435 (h!63883 (list!18361 (left!41893 (c!846918 totalInput!464)))) (++!12530 (t!368225 (list!18361 (left!41893 (c!846918 totalInput!464)))) (list!18361 (right!42223 (c!846918 totalInput!464))))))))

(declare-fun d!1597849 () Bool)

(assert (=> d!1597849 e!3103928))

(declare-fun res!2119670 () Bool)

(assert (=> d!1597849 (=> (not res!2119670) (not e!3103928))))

(assert (=> d!1597849 (= res!2119670 (= (content!10180 lt!2050458) (set.union (content!10180 (list!18361 (left!41893 (c!846918 totalInput!464)))) (content!10180 (list!18361 (right!42223 (c!846918 totalInput!464)))))))))

(assert (=> d!1597849 (= lt!2050458 e!3103929)))

(declare-fun c!847229 () Bool)

(assert (=> d!1597849 (= c!847229 (is-Nil!57435 (list!18361 (left!41893 (c!846918 totalInput!464)))))))

(assert (=> d!1597849 (= (++!12530 (list!18361 (left!41893 (c!846918 totalInput!464))) (list!18361 (right!42223 (c!846918 totalInput!464)))) lt!2050458)))

(assert (= (and d!1597849 c!847229) b!4965737))

(assert (= (and d!1597849 (not c!847229)) b!4965738))

(assert (= (and d!1597849 res!2119670) b!4965739))

(assert (= (and b!4965739 res!2119669) b!4965740))

(declare-fun m!5991042 () Bool)

(assert (=> b!4965739 m!5991042))

(assert (=> b!4965739 m!5989312))

(declare-fun m!5991044 () Bool)

(assert (=> b!4965739 m!5991044))

(assert (=> b!4965739 m!5989314))

(declare-fun m!5991046 () Bool)

(assert (=> b!4965739 m!5991046))

(assert (=> b!4965738 m!5989314))

(declare-fun m!5991048 () Bool)

(assert (=> b!4965738 m!5991048))

(declare-fun m!5991050 () Bool)

(assert (=> d!1597849 m!5991050))

(assert (=> d!1597849 m!5989312))

(declare-fun m!5991052 () Bool)

(assert (=> d!1597849 m!5991052))

(assert (=> d!1597849 m!5989314))

(declare-fun m!5991054 () Bool)

(assert (=> d!1597849 m!5991054))

(assert (=> b!4964756 d!1597849))

(declare-fun d!1597851 () Bool)

(declare-fun c!847230 () Bool)

(assert (=> d!1597851 (= c!847230 (is-Empty!15143 (left!41893 (c!846918 totalInput!464))))))

(declare-fun e!3103930 () List!57559)

(assert (=> d!1597851 (= (list!18361 (left!41893 (c!846918 totalInput!464))) e!3103930)))

(declare-fun b!4965743 () Bool)

(declare-fun e!3103931 () List!57559)

(assert (=> b!4965743 (= e!3103931 (list!18363 (xs!18469 (left!41893 (c!846918 totalInput!464)))))))

(declare-fun b!4965741 () Bool)

(assert (=> b!4965741 (= e!3103930 Nil!57435)))

(declare-fun b!4965742 () Bool)

(assert (=> b!4965742 (= e!3103930 e!3103931)))

(declare-fun c!847231 () Bool)

(assert (=> b!4965742 (= c!847231 (is-Leaf!25164 (left!41893 (c!846918 totalInput!464))))))

(declare-fun b!4965744 () Bool)

(assert (=> b!4965744 (= e!3103931 (++!12530 (list!18361 (left!41893 (left!41893 (c!846918 totalInput!464)))) (list!18361 (right!42223 (left!41893 (c!846918 totalInput!464))))))))

(assert (= (and d!1597851 c!847230) b!4965741))

(assert (= (and d!1597851 (not c!847230)) b!4965742))

(assert (= (and b!4965742 c!847231) b!4965743))

(assert (= (and b!4965742 (not c!847231)) b!4965744))

(declare-fun m!5991056 () Bool)

(assert (=> b!4965743 m!5991056))

(declare-fun m!5991058 () Bool)

(assert (=> b!4965744 m!5991058))

(declare-fun m!5991060 () Bool)

(assert (=> b!4965744 m!5991060))

(assert (=> b!4965744 m!5991058))

(assert (=> b!4965744 m!5991060))

(declare-fun m!5991062 () Bool)

(assert (=> b!4965744 m!5991062))

(assert (=> b!4964756 d!1597851))

(declare-fun d!1597853 () Bool)

(declare-fun c!847232 () Bool)

(assert (=> d!1597853 (= c!847232 (is-Empty!15143 (right!42223 (c!846918 totalInput!464))))))

(declare-fun e!3103932 () List!57559)

(assert (=> d!1597853 (= (list!18361 (right!42223 (c!846918 totalInput!464))) e!3103932)))

(declare-fun b!4965747 () Bool)

(declare-fun e!3103933 () List!57559)

(assert (=> b!4965747 (= e!3103933 (list!18363 (xs!18469 (right!42223 (c!846918 totalInput!464)))))))

(declare-fun b!4965745 () Bool)

(assert (=> b!4965745 (= e!3103932 Nil!57435)))

(declare-fun b!4965746 () Bool)

(assert (=> b!4965746 (= e!3103932 e!3103933)))

(declare-fun c!847233 () Bool)

(assert (=> b!4965746 (= c!847233 (is-Leaf!25164 (right!42223 (c!846918 totalInput!464))))))

(declare-fun b!4965748 () Bool)

(assert (=> b!4965748 (= e!3103933 (++!12530 (list!18361 (left!41893 (right!42223 (c!846918 totalInput!464)))) (list!18361 (right!42223 (right!42223 (c!846918 totalInput!464))))))))

(assert (= (and d!1597853 c!847232) b!4965745))

(assert (= (and d!1597853 (not c!847232)) b!4965746))

(assert (= (and b!4965746 c!847233) b!4965747))

(assert (= (and b!4965746 (not c!847233)) b!4965748))

(declare-fun m!5991064 () Bool)

(assert (=> b!4965747 m!5991064))

(declare-fun m!5991066 () Bool)

(assert (=> b!4965748 m!5991066))

(declare-fun m!5991068 () Bool)

(assert (=> b!4965748 m!5991068))

(assert (=> b!4965748 m!5991066))

(assert (=> b!4965748 m!5991068))

(declare-fun m!5991070 () Bool)

(assert (=> b!4965748 m!5991070))

(assert (=> b!4964756 d!1597853))

(declare-fun d!1597855 () Bool)

(assert (=> d!1597855 (= (nullable!4618 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (nullableFct!1252 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))))

(declare-fun bs!1183013 () Bool)

(assert (= bs!1183013 d!1597855))

(declare-fun m!5991072 () Bool)

(assert (=> bs!1183013 m!5991072))

(assert (=> b!4964801 d!1597855))

(assert (=> b!4964650 d!1597569))

(assert (=> b!4964650 d!1597571))

(declare-fun b!4965749 () Bool)

(declare-fun e!3103939 () Bool)

(declare-fun lt!2050459 () Bool)

(declare-fun call!346276 () Bool)

(assert (=> b!4965749 (= e!3103939 (= lt!2050459 call!346276))))

(declare-fun b!4965750 () Bool)

(declare-fun e!3103938 () Bool)

(assert (=> b!4965750 (= e!3103938 (not (= (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571)))) (c!846919 (regex!8391 (h!63885 rulesArg!259))))))))

(declare-fun b!4965751 () Bool)

(declare-fun res!2119671 () Bool)

(declare-fun e!3103940 () Bool)

(assert (=> b!4965751 (=> (not res!2119671) (not e!3103940))))

(assert (=> b!4965751 (= res!2119671 (isEmpty!30923 (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571))))))))

(declare-fun b!4965752 () Bool)

(declare-fun e!3103936 () Bool)

(assert (=> b!4965752 (= e!3103939 e!3103936)))

(declare-fun c!847234 () Bool)

(assert (=> b!4965752 (= c!847234 (is-EmptyLang!13624 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun b!4965753 () Bool)

(declare-fun res!2119673 () Bool)

(declare-fun e!3103935 () Bool)

(assert (=> b!4965753 (=> res!2119673 e!3103935)))

(assert (=> b!4965753 (= res!2119673 (not (is-ElementMatch!13624 (regex!8391 (h!63885 rulesArg!259)))))))

(assert (=> b!4965753 (= e!3103936 e!3103935)))

(declare-fun b!4965754 () Bool)

(declare-fun e!3103934 () Bool)

(assert (=> b!4965754 (= e!3103934 e!3103938)))

(declare-fun res!2119677 () Bool)

(assert (=> b!4965754 (=> res!2119677 e!3103938)))

(assert (=> b!4965754 (= res!2119677 call!346276)))

(declare-fun b!4965755 () Bool)

(declare-fun e!3103937 () Bool)

(assert (=> b!4965755 (= e!3103937 (nullable!4618 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun d!1597857 () Bool)

(assert (=> d!1597857 e!3103939))

(declare-fun c!847236 () Bool)

(assert (=> d!1597857 (= c!847236 (is-EmptyExpr!13624 (regex!8391 (h!63885 rulesArg!259))))))

(assert (=> d!1597857 (= lt!2050459 e!3103937)))

(declare-fun c!847235 () Bool)

(assert (=> d!1597857 (= c!847235 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571)))))))

(assert (=> d!1597857 (validRegex!5967 (regex!8391 (h!63885 rulesArg!259)))))

(assert (=> d!1597857 (= (matchR!6634 (regex!8391 (h!63885 rulesArg!259)) (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571)))) lt!2050459)))

(declare-fun b!4965756 () Bool)

(declare-fun res!2119672 () Bool)

(assert (=> b!4965756 (=> res!2119672 e!3103938)))

(assert (=> b!4965756 (= res!2119672 (not (isEmpty!30923 (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571)))))))))

(declare-fun b!4965757 () Bool)

(assert (=> b!4965757 (= e!3103937 (matchR!6634 (derivativeStep!3920 (regex!8391 (h!63885 rulesArg!259)) (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571))))) (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571))))))))

(declare-fun b!4965758 () Bool)

(declare-fun res!2119676 () Bool)

(assert (=> b!4965758 (=> (not res!2119676) (not e!3103940))))

(assert (=> b!4965758 (= res!2119676 (not call!346276))))

(declare-fun b!4965759 () Bool)

(declare-fun res!2119674 () Bool)

(assert (=> b!4965759 (=> res!2119674 e!3103935)))

(assert (=> b!4965759 (= res!2119674 e!3103940)))

(declare-fun res!2119675 () Bool)

(assert (=> b!4965759 (=> (not res!2119675) (not e!3103940))))

(assert (=> b!4965759 (= res!2119675 lt!2050459)))

(declare-fun b!4965760 () Bool)

(assert (=> b!4965760 (= e!3103936 (not lt!2050459))))

(declare-fun bm!346271 () Bool)

(assert (=> bm!346271 (= call!346276 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571)))))))

(declare-fun b!4965761 () Bool)

(assert (=> b!4965761 (= e!3103940 (= (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571)))) (c!846919 (regex!8391 (h!63885 rulesArg!259)))))))

(declare-fun b!4965762 () Bool)

(assert (=> b!4965762 (= e!3103935 e!3103934)))

(declare-fun res!2119678 () Bool)

(assert (=> b!4965762 (=> (not res!2119678) (not e!3103934))))

(assert (=> b!4965762 (= res!2119678 (not lt!2050459))))

(assert (= (and d!1597857 c!847235) b!4965755))

(assert (= (and d!1597857 (not c!847235)) b!4965757))

(assert (= (and d!1597857 c!847236) b!4965749))

(assert (= (and d!1597857 (not c!847236)) b!4965752))

(assert (= (and b!4965752 c!847234) b!4965760))

(assert (= (and b!4965752 (not c!847234)) b!4965753))

(assert (= (and b!4965753 (not res!2119673)) b!4965759))

(assert (= (and b!4965759 res!2119675) b!4965758))

(assert (= (and b!4965758 res!2119676) b!4965751))

(assert (= (and b!4965751 res!2119671) b!4965761))

(assert (= (and b!4965759 (not res!2119674)) b!4965762))

(assert (= (and b!4965762 res!2119678) b!4965754))

(assert (= (and b!4965754 (not res!2119677)) b!4965756))

(assert (= (and b!4965756 (not res!2119672)) b!4965750))

(assert (= (or b!4965749 b!4965754 b!4965758) bm!346271))

(declare-fun m!5991074 () Bool)

(assert (=> b!4965756 m!5991074))

(assert (=> b!4965756 m!5991074))

(declare-fun m!5991076 () Bool)

(assert (=> b!4965756 m!5991076))

(assert (=> d!1597857 m!5989378))

(assert (=> d!1597857 m!5989028))

(assert (=> b!4965755 m!5989030))

(assert (=> bm!346271 m!5989378))

(declare-fun m!5991078 () Bool)

(assert (=> b!4965761 m!5991078))

(assert (=> b!4965750 m!5991078))

(assert (=> b!4965757 m!5991078))

(assert (=> b!4965757 m!5991078))

(declare-fun m!5991080 () Bool)

(assert (=> b!4965757 m!5991080))

(assert (=> b!4965757 m!5991074))

(assert (=> b!4965757 m!5991080))

(assert (=> b!4965757 m!5991074))

(declare-fun m!5991082 () Bool)

(assert (=> b!4965757 m!5991082))

(assert (=> b!4965751 m!5991074))

(assert (=> b!4965751 m!5991074))

(assert (=> b!4965751 m!5991076))

(assert (=> b!4964792 d!1597857))

(assert (=> b!4964792 d!1597589))

(assert (=> b!4964792 d!1597201))

(assert (=> b!4964792 d!1597239))

(declare-fun d!1597859 () Bool)

(assert (=> d!1597859 (= (list!18359 (_2!34377 (get!19936 lt!2049934))) (list!18361 (c!846918 (_2!34377 (get!19936 lt!2049934)))))))

(declare-fun bs!1183014 () Bool)

(assert (= bs!1183014 d!1597859))

(declare-fun m!5991084 () Bool)

(assert (=> bs!1183014 m!5991084))

(assert (=> b!4964732 d!1597859))

(assert (=> b!4964732 d!1597765))

(assert (=> b!4964732 d!1597117))

(assert (=> b!4964732 d!1597787))

(assert (=> b!4964732 d!1597785))

(declare-fun b!4965766 () Bool)

(declare-fun e!3103942 () Bool)

(assert (=> b!4965766 (= e!3103942 (>= (size!38064 (tail!9799 (tail!9799 lt!2049571))) (size!38064 (tail!9799 (tail!9799 lt!2049571)))))))

(declare-fun b!4965765 () Bool)

(declare-fun e!3103941 () Bool)

(assert (=> b!4965765 (= e!3103941 (isPrefix!5242 (tail!9799 (tail!9799 (tail!9799 lt!2049571))) (tail!9799 (tail!9799 (tail!9799 lt!2049571)))))))

(declare-fun b!4965763 () Bool)

(declare-fun e!3103943 () Bool)

(assert (=> b!4965763 (= e!3103943 e!3103941)))

(declare-fun res!2119680 () Bool)

(assert (=> b!4965763 (=> (not res!2119680) (not e!3103941))))

(assert (=> b!4965763 (= res!2119680 (not (is-Nil!57435 (tail!9799 (tail!9799 lt!2049571)))))))

(declare-fun d!1597861 () Bool)

(assert (=> d!1597861 e!3103942))

(declare-fun res!2119679 () Bool)

(assert (=> d!1597861 (=> res!2119679 e!3103942)))

(declare-fun lt!2050460 () Bool)

(assert (=> d!1597861 (= res!2119679 (not lt!2050460))))

(assert (=> d!1597861 (= lt!2050460 e!3103943)))

(declare-fun res!2119682 () Bool)

(assert (=> d!1597861 (=> res!2119682 e!3103943)))

(assert (=> d!1597861 (= res!2119682 (is-Nil!57435 (tail!9799 (tail!9799 lt!2049571))))))

(assert (=> d!1597861 (= (isPrefix!5242 (tail!9799 (tail!9799 lt!2049571)) (tail!9799 (tail!9799 lt!2049571))) lt!2050460)))

(declare-fun b!4965764 () Bool)

(declare-fun res!2119681 () Bool)

(assert (=> b!4965764 (=> (not res!2119681) (not e!3103941))))

(assert (=> b!4965764 (= res!2119681 (= (head!10666 (tail!9799 (tail!9799 lt!2049571))) (head!10666 (tail!9799 (tail!9799 lt!2049571)))))))

(assert (= (and d!1597861 (not res!2119682)) b!4965763))

(assert (= (and b!4965763 res!2119680) b!4965764))

(assert (= (and b!4965764 res!2119681) b!4965765))

(assert (= (and d!1597861 (not res!2119679)) b!4965766))

(assert (=> b!4965766 m!5989396))

(declare-fun m!5991086 () Bool)

(assert (=> b!4965766 m!5991086))

(assert (=> b!4965766 m!5989396))

(assert (=> b!4965766 m!5991086))

(assert (=> b!4965765 m!5989396))

(declare-fun m!5991088 () Bool)

(assert (=> b!4965765 m!5991088))

(assert (=> b!4965765 m!5989396))

(assert (=> b!4965765 m!5991088))

(assert (=> b!4965765 m!5991088))

(assert (=> b!4965765 m!5991088))

(declare-fun m!5991090 () Bool)

(assert (=> b!4965765 m!5991090))

(assert (=> b!4965764 m!5989396))

(declare-fun m!5991092 () Bool)

(assert (=> b!4965764 m!5991092))

(assert (=> b!4965764 m!5989396))

(assert (=> b!4965764 m!5991092))

(assert (=> b!4964784 d!1597861))

(declare-fun d!1597863 () Bool)

(assert (=> d!1597863 (= (tail!9799 (tail!9799 lt!2049571)) (t!368225 (tail!9799 lt!2049571)))))

(assert (=> b!4964784 d!1597863))

(declare-fun d!1597865 () Bool)

(declare-fun c!847237 () Bool)

(assert (=> d!1597865 (= c!847237 (is-Node!15143 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676))))))))

(declare-fun e!3103944 () Bool)

(assert (=> d!1597865 (= (inv!75059 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676))))) e!3103944)))

(declare-fun b!4965767 () Bool)

(assert (=> b!4965767 (= e!3103944 (inv!75065 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676))))))))

(declare-fun b!4965768 () Bool)

(declare-fun e!3103945 () Bool)

(assert (=> b!4965768 (= e!3103944 e!3103945)))

(declare-fun res!2119683 () Bool)

(assert (=> b!4965768 (= res!2119683 (not (is-Leaf!25164 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676)))))))))

(assert (=> b!4965768 (=> res!2119683 e!3103945)))

(declare-fun b!4965769 () Bool)

(assert (=> b!4965769 (= e!3103945 (inv!75066 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676))))))))

(assert (= (and d!1597865 c!847237) b!4965767))

(assert (= (and d!1597865 (not c!847237)) b!4965768))

(assert (= (and b!4965768 (not res!2119683)) b!4965769))

(declare-fun m!5991094 () Bool)

(assert (=> b!4965767 m!5991094))

(declare-fun m!5991096 () Bool)

(assert (=> b!4965769 m!5991096))

(assert (=> b!4964976 d!1597865))

(declare-fun d!1597867 () Bool)

(assert (=> d!1597867 (= (list!18363 (xs!18469 (c!846918 (_2!34377 lt!2049579)))) (innerList!15231 (xs!18469 (c!846918 (_2!34377 lt!2049579)))))))

(assert (=> b!4964751 d!1597867))

(declare-fun d!1597869 () Bool)

(declare-fun lt!2050461 () Int)

(assert (=> d!1597869 (>= lt!2050461 0)))

(declare-fun e!3103946 () Int)

(assert (=> d!1597869 (= lt!2050461 e!3103946)))

(declare-fun c!847238 () Bool)

(assert (=> d!1597869 (= c!847238 (is-Nil!57435 (_2!34378 (get!19935 lt!2049977))))))

(assert (=> d!1597869 (= (size!38064 (_2!34378 (get!19935 lt!2049977))) lt!2050461)))

(declare-fun b!4965770 () Bool)

(assert (=> b!4965770 (= e!3103946 0)))

(declare-fun b!4965771 () Bool)

(assert (=> b!4965771 (= e!3103946 (+ 1 (size!38064 (t!368225 (_2!34378 (get!19935 lt!2049977))))))))

(assert (= (and d!1597869 c!847238) b!4965770))

(assert (= (and d!1597869 (not c!847238)) b!4965771))

(declare-fun m!5991098 () Bool)

(assert (=> b!4965771 m!5991098))

(assert (=> b!4964791 d!1597869))

(assert (=> b!4964791 d!1597551))

(assert (=> b!4964791 d!1597239))

(declare-fun d!1597871 () Bool)

(declare-fun c!847239 () Bool)

(assert (=> d!1597871 (= c!847239 (is-Node!15143 (left!41893 (right!42223 (c!846918 input!1342)))))))

(declare-fun e!3103947 () Bool)

(assert (=> d!1597871 (= (inv!75059 (left!41893 (right!42223 (c!846918 input!1342)))) e!3103947)))

(declare-fun b!4965772 () Bool)

(assert (=> b!4965772 (= e!3103947 (inv!75065 (left!41893 (right!42223 (c!846918 input!1342)))))))

(declare-fun b!4965773 () Bool)

(declare-fun e!3103948 () Bool)

(assert (=> b!4965773 (= e!3103947 e!3103948)))

(declare-fun res!2119684 () Bool)

(assert (=> b!4965773 (= res!2119684 (not (is-Leaf!25164 (left!41893 (right!42223 (c!846918 input!1342))))))))

(assert (=> b!4965773 (=> res!2119684 e!3103948)))

(declare-fun b!4965774 () Bool)

(assert (=> b!4965774 (= e!3103948 (inv!75066 (left!41893 (right!42223 (c!846918 input!1342)))))))

(assert (= (and d!1597871 c!847239) b!4965772))

(assert (= (and d!1597871 (not c!847239)) b!4965773))

(assert (= (and b!4965773 (not res!2119684)) b!4965774))

(declare-fun m!5991100 () Bool)

(assert (=> b!4965772 m!5991100))

(declare-fun m!5991102 () Bool)

(assert (=> b!4965774 m!5991102))

(assert (=> b!4964968 d!1597871))

(declare-fun d!1597873 () Bool)

(declare-fun c!847240 () Bool)

(assert (=> d!1597873 (= c!847240 (is-Node!15143 (right!42223 (right!42223 (c!846918 input!1342)))))))

(declare-fun e!3103949 () Bool)

(assert (=> d!1597873 (= (inv!75059 (right!42223 (right!42223 (c!846918 input!1342)))) e!3103949)))

(declare-fun b!4965775 () Bool)

(assert (=> b!4965775 (= e!3103949 (inv!75065 (right!42223 (right!42223 (c!846918 input!1342)))))))

(declare-fun b!4965776 () Bool)

(declare-fun e!3103950 () Bool)

(assert (=> b!4965776 (= e!3103949 e!3103950)))

(declare-fun res!2119685 () Bool)

(assert (=> b!4965776 (= res!2119685 (not (is-Leaf!25164 (right!42223 (right!42223 (c!846918 input!1342))))))))

(assert (=> b!4965776 (=> res!2119685 e!3103950)))

(declare-fun b!4965777 () Bool)

(assert (=> b!4965777 (= e!3103950 (inv!75066 (right!42223 (right!42223 (c!846918 input!1342)))))))

(assert (= (and d!1597873 c!847240) b!4965775))

(assert (= (and d!1597873 (not c!847240)) b!4965776))

(assert (= (and b!4965776 (not res!2119685)) b!4965777))

(declare-fun m!5991104 () Bool)

(assert (=> b!4965775 m!5991104))

(declare-fun m!5991106 () Bool)

(assert (=> b!4965777 m!5991106))

(assert (=> b!4964968 d!1597873))

(declare-fun d!1597875 () Bool)

(declare-fun c!847241 () Bool)

(assert (=> d!1597875 (= c!847241 (is-Node!15143 (left!41893 (left!41893 (c!846918 totalInput!464)))))))

(declare-fun e!3103951 () Bool)

(assert (=> d!1597875 (= (inv!75059 (left!41893 (left!41893 (c!846918 totalInput!464)))) e!3103951)))

(declare-fun b!4965778 () Bool)

(assert (=> b!4965778 (= e!3103951 (inv!75065 (left!41893 (left!41893 (c!846918 totalInput!464)))))))

(declare-fun b!4965779 () Bool)

(declare-fun e!3103952 () Bool)

(assert (=> b!4965779 (= e!3103951 e!3103952)))

(declare-fun res!2119686 () Bool)

(assert (=> b!4965779 (= res!2119686 (not (is-Leaf!25164 (left!41893 (left!41893 (c!846918 totalInput!464))))))))

(assert (=> b!4965779 (=> res!2119686 e!3103952)))

(declare-fun b!4965780 () Bool)

(assert (=> b!4965780 (= e!3103952 (inv!75066 (left!41893 (left!41893 (c!846918 totalInput!464)))))))

(assert (= (and d!1597875 c!847241) b!4965778))

(assert (= (and d!1597875 (not c!847241)) b!4965779))

(assert (= (and b!4965779 (not res!2119686)) b!4965780))

(declare-fun m!5991108 () Bool)

(assert (=> b!4965778 m!5991108))

(declare-fun m!5991110 () Bool)

(assert (=> b!4965780 m!5991110))

(assert (=> b!4964959 d!1597875))

(declare-fun d!1597877 () Bool)

(declare-fun c!847242 () Bool)

(assert (=> d!1597877 (= c!847242 (is-Node!15143 (right!42223 (left!41893 (c!846918 totalInput!464)))))))

(declare-fun e!3103953 () Bool)

(assert (=> d!1597877 (= (inv!75059 (right!42223 (left!41893 (c!846918 totalInput!464)))) e!3103953)))

(declare-fun b!4965781 () Bool)

(assert (=> b!4965781 (= e!3103953 (inv!75065 (right!42223 (left!41893 (c!846918 totalInput!464)))))))

(declare-fun b!4965782 () Bool)

(declare-fun e!3103954 () Bool)

(assert (=> b!4965782 (= e!3103953 e!3103954)))

(declare-fun res!2119687 () Bool)

(assert (=> b!4965782 (= res!2119687 (not (is-Leaf!25164 (right!42223 (left!41893 (c!846918 totalInput!464))))))))

(assert (=> b!4965782 (=> res!2119687 e!3103954)))

(declare-fun b!4965783 () Bool)

(assert (=> b!4965783 (= e!3103954 (inv!75066 (right!42223 (left!41893 (c!846918 totalInput!464)))))))

(assert (= (and d!1597877 c!847242) b!4965781))

(assert (= (and d!1597877 (not c!847242)) b!4965782))

(assert (= (and b!4965782 (not res!2119687)) b!4965783))

(declare-fun m!5991112 () Bool)

(assert (=> b!4965781 m!5991112))

(declare-fun m!5991114 () Bool)

(assert (=> b!4965783 m!5991114))

(assert (=> b!4964959 d!1597877))

(declare-fun d!1597879 () Bool)

(declare-fun choose!36665 (Int) Bool)

(assert (=> d!1597879 (= (Forall2!1286 lambda!247329) (choose!36665 lambda!247329))))

(declare-fun bs!1183015 () Bool)

(assert (= bs!1183015 d!1597879))

(declare-fun m!5991116 () Bool)

(assert (=> bs!1183015 m!5991116))

(assert (=> d!1597371 d!1597879))

(declare-fun d!1597881 () Bool)

(assert (=> d!1597881 (= lt!2049672 Nil!57435)))

(declare-fun lt!2050464 () Unit!148334)

(declare-fun choose!36666 (List!57559 List!57559 List!57559) Unit!148334)

(assert (=> d!1597881 (= lt!2050464 (choose!36666 lt!2049672 Nil!57435 lt!2049672))))

(assert (=> d!1597881 (isPrefix!5242 lt!2049672 lt!2049672)))

(assert (=> d!1597881 (= (lemmaIsPrefixSameLengthThenSameList!1206 lt!2049672 Nil!57435 lt!2049672) lt!2050464)))

(declare-fun bs!1183016 () Bool)

(assert (= bs!1183016 d!1597881))

(declare-fun m!5991118 () Bool)

(assert (=> bs!1183016 m!5991118))

(assert (=> bs!1183016 m!5989064))

(assert (=> bm!346166 d!1597881))

(declare-fun b!4965784 () Bool)

(declare-fun e!3103956 () List!57559)

(assert (=> b!4965784 (= e!3103956 (list!18361 (right!42223 (c!846918 input!1342))))))

(declare-fun b!4965786 () Bool)

(declare-fun res!2119688 () Bool)

(declare-fun e!3103955 () Bool)

(assert (=> b!4965786 (=> (not res!2119688) (not e!3103955))))

(declare-fun lt!2050465 () List!57559)

(assert (=> b!4965786 (= res!2119688 (= (size!38064 lt!2050465) (+ (size!38064 (list!18361 (left!41893 (c!846918 input!1342)))) (size!38064 (list!18361 (right!42223 (c!846918 input!1342)))))))))

(declare-fun b!4965787 () Bool)

(assert (=> b!4965787 (= e!3103955 (or (not (= (list!18361 (right!42223 (c!846918 input!1342))) Nil!57435)) (= lt!2050465 (list!18361 (left!41893 (c!846918 input!1342))))))))

(declare-fun b!4965785 () Bool)

(assert (=> b!4965785 (= e!3103956 (Cons!57435 (h!63883 (list!18361 (left!41893 (c!846918 input!1342)))) (++!12530 (t!368225 (list!18361 (left!41893 (c!846918 input!1342)))) (list!18361 (right!42223 (c!846918 input!1342))))))))

(declare-fun d!1597883 () Bool)

(assert (=> d!1597883 e!3103955))

(declare-fun res!2119689 () Bool)

(assert (=> d!1597883 (=> (not res!2119689) (not e!3103955))))

(assert (=> d!1597883 (= res!2119689 (= (content!10180 lt!2050465) (set.union (content!10180 (list!18361 (left!41893 (c!846918 input!1342)))) (content!10180 (list!18361 (right!42223 (c!846918 input!1342)))))))))

(assert (=> d!1597883 (= lt!2050465 e!3103956)))

(declare-fun c!847243 () Bool)

(assert (=> d!1597883 (= c!847243 (is-Nil!57435 (list!18361 (left!41893 (c!846918 input!1342)))))))

(assert (=> d!1597883 (= (++!12530 (list!18361 (left!41893 (c!846918 input!1342))) (list!18361 (right!42223 (c!846918 input!1342)))) lt!2050465)))

(assert (= (and d!1597883 c!847243) b!4965784))

(assert (= (and d!1597883 (not c!847243)) b!4965785))

(assert (= (and d!1597883 res!2119689) b!4965786))

(assert (= (and b!4965786 res!2119688) b!4965787))

(declare-fun m!5991120 () Bool)

(assert (=> b!4965786 m!5991120))

(assert (=> b!4965786 m!5989386))

(assert (=> b!4965786 m!5991038))

(assert (=> b!4965786 m!5989388))

(assert (=> b!4965786 m!5991040))

(assert (=> b!4965785 m!5989388))

(declare-fun m!5991122 () Bool)

(assert (=> b!4965785 m!5991122))

(declare-fun m!5991124 () Bool)

(assert (=> d!1597883 m!5991124))

(assert (=> d!1597883 m!5989386))

(declare-fun m!5991126 () Bool)

(assert (=> d!1597883 m!5991126))

(assert (=> d!1597883 m!5989388))

(declare-fun m!5991128 () Bool)

(assert (=> d!1597883 m!5991128))

(assert (=> b!4964781 d!1597883))

(declare-fun d!1597885 () Bool)

(declare-fun c!847244 () Bool)

(assert (=> d!1597885 (= c!847244 (is-Empty!15143 (left!41893 (c!846918 input!1342))))))

(declare-fun e!3103957 () List!57559)

(assert (=> d!1597885 (= (list!18361 (left!41893 (c!846918 input!1342))) e!3103957)))

(declare-fun b!4965790 () Bool)

(declare-fun e!3103958 () List!57559)

(assert (=> b!4965790 (= e!3103958 (list!18363 (xs!18469 (left!41893 (c!846918 input!1342)))))))

(declare-fun b!4965788 () Bool)

(assert (=> b!4965788 (= e!3103957 Nil!57435)))

(declare-fun b!4965789 () Bool)

(assert (=> b!4965789 (= e!3103957 e!3103958)))

(declare-fun c!847245 () Bool)

(assert (=> b!4965789 (= c!847245 (is-Leaf!25164 (left!41893 (c!846918 input!1342))))))

(declare-fun b!4965791 () Bool)

(assert (=> b!4965791 (= e!3103958 (++!12530 (list!18361 (left!41893 (left!41893 (c!846918 input!1342)))) (list!18361 (right!42223 (left!41893 (c!846918 input!1342))))))))

(assert (= (and d!1597885 c!847244) b!4965788))

(assert (= (and d!1597885 (not c!847244)) b!4965789))

(assert (= (and b!4965789 c!847245) b!4965790))

(assert (= (and b!4965789 (not c!847245)) b!4965791))

(assert (=> b!4965790 m!5990806))

(declare-fun m!5991130 () Bool)

(assert (=> b!4965791 m!5991130))

(declare-fun m!5991132 () Bool)

(assert (=> b!4965791 m!5991132))

(assert (=> b!4965791 m!5991130))

(assert (=> b!4965791 m!5991132))

(declare-fun m!5991134 () Bool)

(assert (=> b!4965791 m!5991134))

(assert (=> b!4964781 d!1597885))

(declare-fun d!1597887 () Bool)

(declare-fun c!847246 () Bool)

(assert (=> d!1597887 (= c!847246 (is-Empty!15143 (right!42223 (c!846918 input!1342))))))

(declare-fun e!3103959 () List!57559)

(assert (=> d!1597887 (= (list!18361 (right!42223 (c!846918 input!1342))) e!3103959)))

(declare-fun b!4965794 () Bool)

(declare-fun e!3103960 () List!57559)

(assert (=> b!4965794 (= e!3103960 (list!18363 (xs!18469 (right!42223 (c!846918 input!1342)))))))

(declare-fun b!4965792 () Bool)

(assert (=> b!4965792 (= e!3103959 Nil!57435)))

(declare-fun b!4965793 () Bool)

(assert (=> b!4965793 (= e!3103959 e!3103960)))

(declare-fun c!847247 () Bool)

(assert (=> b!4965793 (= c!847247 (is-Leaf!25164 (right!42223 (c!846918 input!1342))))))

(declare-fun b!4965795 () Bool)

(assert (=> b!4965795 (= e!3103960 (++!12530 (list!18361 (left!41893 (right!42223 (c!846918 input!1342)))) (list!18361 (right!42223 (right!42223 (c!846918 input!1342))))))))

(assert (= (and d!1597887 c!847246) b!4965792))

(assert (= (and d!1597887 (not c!847246)) b!4965793))

(assert (= (and b!4965793 c!847247) b!4965794))

(assert (= (and b!4965793 (not c!847247)) b!4965795))

(assert (=> b!4965794 m!5990810))

(declare-fun m!5991136 () Bool)

(assert (=> b!4965795 m!5991136))

(declare-fun m!5991138 () Bool)

(assert (=> b!4965795 m!5991138))

(assert (=> b!4965795 m!5991136))

(assert (=> b!4965795 m!5991138))

(declare-fun m!5991140 () Bool)

(assert (=> b!4965795 m!5991140))

(assert (=> b!4964781 d!1597887))

(assert (=> b!4964393 d!1597235))

(assert (=> b!4964393 d!1597237))

(declare-fun d!1597889 () Bool)

(assert (=> d!1597889 (= (isEmpty!30925 lt!2049977) (not (is-Some!14444 lt!2049977)))))

(assert (=> d!1597303 d!1597889))

(declare-fun d!1597891 () Bool)

(assert (=> d!1597891 (= (isEmpty!30923 (_1!34382 lt!2049975)) (is-Nil!57435 (_1!34382 lt!2049975)))))

(assert (=> d!1597303 d!1597891))

(declare-fun d!1597893 () Bool)

(declare-fun lt!2050467 () tuple2!62158)

(assert (=> d!1597893 (= (++!12530 (_1!34382 lt!2050467) (_2!34382 lt!2050467)) lt!2049571)))

(assert (=> d!1597893 (= lt!2050467 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 0 lt!2049571 lt!2049571 (sizeTr!359 lt!2049571 0)))))

(declare-fun lt!2050470 () Unit!148334)

(declare-fun lt!2050468 () Unit!148334)

(assert (=> d!1597893 (= lt!2050470 lt!2050468)))

(declare-fun lt!2050466 () List!57559)

(declare-fun lt!2050473 () Int)

(assert (=> d!1597893 (= (sizeTr!359 lt!2050466 lt!2050473) (+ (size!38064 lt!2050466) lt!2050473))))

(assert (=> d!1597893 (= lt!2050468 (lemmaSizeTrEqualsSize!358 lt!2050466 lt!2050473))))

(assert (=> d!1597893 (= lt!2050473 0)))

(assert (=> d!1597893 (= lt!2050466 Nil!57435)))

(declare-fun lt!2050471 () Unit!148334)

(declare-fun lt!2050469 () Unit!148334)

(assert (=> d!1597893 (= lt!2050471 lt!2050469)))

(declare-fun lt!2050472 () Int)

(assert (=> d!1597893 (= (sizeTr!359 lt!2049571 lt!2050472) (+ (size!38064 lt!2049571) lt!2050472))))

(assert (=> d!1597893 (= lt!2050469 (lemmaSizeTrEqualsSize!358 lt!2049571 lt!2050472))))

(assert (=> d!1597893 (= lt!2050472 0)))

(assert (=> d!1597893 (validRegex!5967 (regex!8391 (h!63885 rulesArg!259)))))

(assert (=> d!1597893 (= (findLongestMatch!1695 (regex!8391 (h!63885 rulesArg!259)) lt!2049571) lt!2050467)))

(declare-fun bs!1183017 () Bool)

(assert (= bs!1183017 d!1597893))

(assert (=> bs!1183017 m!5989028))

(declare-fun m!5991142 () Bool)

(assert (=> bs!1183017 m!5991142))

(declare-fun m!5991144 () Bool)

(assert (=> bs!1183017 m!5991144))

(assert (=> bs!1183017 m!5988708))

(declare-fun m!5991146 () Bool)

(assert (=> bs!1183017 m!5991146))

(assert (=> bs!1183017 m!5991142))

(declare-fun m!5991148 () Bool)

(assert (=> bs!1183017 m!5991148))

(declare-fun m!5991150 () Bool)

(assert (=> bs!1183017 m!5991150))

(declare-fun m!5991152 () Bool)

(assert (=> bs!1183017 m!5991152))

(declare-fun m!5991154 () Bool)

(assert (=> bs!1183017 m!5991154))

(declare-fun m!5991156 () Bool)

(assert (=> bs!1183017 m!5991156))

(assert (=> d!1597303 d!1597893))

(assert (=> d!1597303 d!1597227))

(declare-fun d!1597895 () Bool)

(declare-fun res!2119690 () Bool)

(declare-fun e!3103961 () Bool)

(assert (=> d!1597895 (=> (not res!2119690) (not e!3103961))))

(assert (=> d!1597895 (= res!2119690 (= (csize!30516 (left!41893 (c!846918 input!1342))) (+ (size!38068 (left!41893 (left!41893 (c!846918 input!1342)))) (size!38068 (right!42223 (left!41893 (c!846918 input!1342)))))))))

(assert (=> d!1597895 (= (inv!75065 (left!41893 (c!846918 input!1342))) e!3103961)))

(declare-fun b!4965796 () Bool)

(declare-fun res!2119691 () Bool)

(assert (=> b!4965796 (=> (not res!2119691) (not e!3103961))))

(assert (=> b!4965796 (= res!2119691 (and (not (= (left!41893 (left!41893 (c!846918 input!1342))) Empty!15143)) (not (= (right!42223 (left!41893 (c!846918 input!1342))) Empty!15143))))))

(declare-fun b!4965797 () Bool)

(declare-fun res!2119692 () Bool)

(assert (=> b!4965797 (=> (not res!2119692) (not e!3103961))))

(assert (=> b!4965797 (= res!2119692 (= (cheight!15354 (left!41893 (c!846918 input!1342))) (+ (max!0 (height!2011 (left!41893 (left!41893 (c!846918 input!1342)))) (height!2011 (right!42223 (left!41893 (c!846918 input!1342))))) 1)))))

(declare-fun b!4965798 () Bool)

(assert (=> b!4965798 (= e!3103961 (<= 0 (cheight!15354 (left!41893 (c!846918 input!1342)))))))

(assert (= (and d!1597895 res!2119690) b!4965796))

(assert (= (and b!4965796 res!2119691) b!4965797))

(assert (= (and b!4965797 res!2119692) b!4965798))

(declare-fun m!5991158 () Bool)

(assert (=> d!1597895 m!5991158))

(declare-fun m!5991160 () Bool)

(assert (=> d!1597895 m!5991160))

(declare-fun m!5991162 () Bool)

(assert (=> b!4965797 m!5991162))

(declare-fun m!5991164 () Bool)

(assert (=> b!4965797 m!5991164))

(assert (=> b!4965797 m!5991162))

(assert (=> b!4965797 m!5991164))

(declare-fun m!5991166 () Bool)

(assert (=> b!4965797 m!5991166))

(assert (=> b!4964687 d!1597895))

(declare-fun d!1597897 () Bool)

(declare-fun res!2119693 () Bool)

(declare-fun e!3103962 () Bool)

(assert (=> d!1597897 (=> (not res!2119693) (not e!3103962))))

(assert (=> d!1597897 (= res!2119693 (= (csize!30516 (right!42223 (c!846918 input!1342))) (+ (size!38068 (left!41893 (right!42223 (c!846918 input!1342)))) (size!38068 (right!42223 (right!42223 (c!846918 input!1342)))))))))

(assert (=> d!1597897 (= (inv!75065 (right!42223 (c!846918 input!1342))) e!3103962)))

(declare-fun b!4965799 () Bool)

(declare-fun res!2119694 () Bool)

(assert (=> b!4965799 (=> (not res!2119694) (not e!3103962))))

(assert (=> b!4965799 (= res!2119694 (and (not (= (left!41893 (right!42223 (c!846918 input!1342))) Empty!15143)) (not (= (right!42223 (right!42223 (c!846918 input!1342))) Empty!15143))))))

(declare-fun b!4965800 () Bool)

(declare-fun res!2119695 () Bool)

(assert (=> b!4965800 (=> (not res!2119695) (not e!3103962))))

(assert (=> b!4965800 (= res!2119695 (= (cheight!15354 (right!42223 (c!846918 input!1342))) (+ (max!0 (height!2011 (left!41893 (right!42223 (c!846918 input!1342)))) (height!2011 (right!42223 (right!42223 (c!846918 input!1342))))) 1)))))

(declare-fun b!4965801 () Bool)

(assert (=> b!4965801 (= e!3103962 (<= 0 (cheight!15354 (right!42223 (c!846918 input!1342)))))))

(assert (= (and d!1597897 res!2119693) b!4965799))

(assert (= (and b!4965799 res!2119694) b!4965800))

(assert (= (and b!4965800 res!2119695) b!4965801))

(declare-fun m!5991168 () Bool)

(assert (=> d!1597897 m!5991168))

(declare-fun m!5991170 () Bool)

(assert (=> d!1597897 m!5991170))

(declare-fun m!5991172 () Bool)

(assert (=> b!4965800 m!5991172))

(declare-fun m!5991174 () Bool)

(assert (=> b!4965800 m!5991174))

(assert (=> b!4965800 m!5991172))

(assert (=> b!4965800 m!5991174))

(declare-fun m!5991176 () Bool)

(assert (=> b!4965800 m!5991176))

(assert (=> b!4964690 d!1597897))

(declare-fun d!1597899 () Bool)

(declare-fun res!2119696 () Bool)

(declare-fun e!3103963 () Bool)

(assert (=> d!1597899 (=> (not res!2119696) (not e!3103963))))

(assert (=> d!1597899 (= res!2119696 (<= (size!38064 (list!18363 (xs!18469 (left!41893 (c!846918 totalInput!464))))) 512))))

(assert (=> d!1597899 (= (inv!75066 (left!41893 (c!846918 totalInput!464))) e!3103963)))

(declare-fun b!4965802 () Bool)

(declare-fun res!2119697 () Bool)

(assert (=> b!4965802 (=> (not res!2119697) (not e!3103963))))

(assert (=> b!4965802 (= res!2119697 (= (csize!30517 (left!41893 (c!846918 totalInput!464))) (size!38064 (list!18363 (xs!18469 (left!41893 (c!846918 totalInput!464)))))))))

(declare-fun b!4965803 () Bool)

(assert (=> b!4965803 (= e!3103963 (and (> (csize!30517 (left!41893 (c!846918 totalInput!464))) 0) (<= (csize!30517 (left!41893 (c!846918 totalInput!464))) 512)))))

(assert (= (and d!1597899 res!2119696) b!4965802))

(assert (= (and b!4965802 res!2119697) b!4965803))

(assert (=> d!1597899 m!5991056))

(assert (=> d!1597899 m!5991056))

(declare-fun m!5991178 () Bool)

(assert (=> d!1597899 m!5991178))

(assert (=> b!4965802 m!5991056))

(assert (=> b!4965802 m!5991056))

(assert (=> b!4965802 m!5991178))

(assert (=> b!4964838 d!1597899))

(declare-fun b!4965804 () Bool)

(declare-fun e!3103965 () Option!14445)

(assert (=> b!4965804 (= e!3103965 None!14444)))

(declare-fun b!4965805 () Bool)

(declare-fun res!2119699 () Bool)

(declare-fun e!3103964 () Bool)

(assert (=> b!4965805 (=> (not res!2119699) (not e!3103964))))

(declare-fun lt!2050478 () Option!14445)

(assert (=> b!4965805 (= res!2119699 (= (value!268585 (_1!34378 (get!19935 lt!2050478))) (apply!13902 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2050478)))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2050478)))))))))

(declare-fun b!4965806 () Bool)

(declare-fun lt!2050476 () tuple2!62158)

(assert (=> b!4965806 (= e!3103965 (Some!14444 (tuple2!62151 (Token!15279 (apply!13902 (transformation!8391 (h!63885 (t!368227 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2050476))) (h!63885 (t!368227 rulesArg!259)) (size!38065 (seqFromList!6034 (_1!34382 lt!2050476))) (_1!34382 lt!2050476)) (_2!34382 lt!2050476))))))

(declare-fun lt!2050477 () Unit!148334)

(assert (=> b!4965806 (= lt!2050477 (longestMatchIsAcceptedByMatchOrIsEmpty!1814 (regex!8391 (h!63885 (t!368227 rulesArg!259))) (list!18359 input!1342)))))

(declare-fun res!2119704 () Bool)

(assert (=> b!4965806 (= res!2119704 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) (list!18359 input!1342) (list!18359 input!1342) (size!38064 (list!18359 input!1342))))))))

(declare-fun e!3103966 () Bool)

(assert (=> b!4965806 (=> res!2119704 e!3103966)))

(assert (=> b!4965806 e!3103966))

(declare-fun lt!2050475 () Unit!148334)

(assert (=> b!4965806 (= lt!2050475 lt!2050477)))

(declare-fun lt!2050474 () Unit!148334)

(assert (=> b!4965806 (= lt!2050474 (lemmaSemiInverse!2600 (transformation!8391 (h!63885 (t!368227 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2050476))))))

(declare-fun b!4965807 () Bool)

(declare-fun e!3103967 () Bool)

(assert (=> b!4965807 (= e!3103967 e!3103964)))

(declare-fun res!2119702 () Bool)

(assert (=> b!4965807 (=> (not res!2119702) (not e!3103964))))

(assert (=> b!4965807 (= res!2119702 (matchR!6634 (regex!8391 (h!63885 (t!368227 rulesArg!259))) (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2050478))))))))

(declare-fun b!4965808 () Bool)

(declare-fun res!2119698 () Bool)

(assert (=> b!4965808 (=> (not res!2119698) (not e!3103964))))

(assert (=> b!4965808 (= res!2119698 (= (++!12530 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2050478)))) (_2!34378 (get!19935 lt!2050478))) (list!18359 input!1342)))))

(declare-fun b!4965809 () Bool)

(declare-fun res!2119701 () Bool)

(assert (=> b!4965809 (=> (not res!2119701) (not e!3103964))))

(assert (=> b!4965809 (= res!2119701 (< (size!38064 (_2!34378 (get!19935 lt!2050478))) (size!38064 (list!18359 input!1342))))))

(declare-fun b!4965810 () Bool)

(assert (=> b!4965810 (= e!3103966 (matchR!6634 (regex!8391 (h!63885 (t!368227 rulesArg!259))) (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) (list!18359 input!1342) (list!18359 input!1342) (size!38064 (list!18359 input!1342))))))))

(declare-fun b!4965811 () Bool)

(assert (=> b!4965811 (= e!3103964 (= (size!38062 (_1!34378 (get!19935 lt!2050478))) (size!38064 (originalCharacters!8670 (_1!34378 (get!19935 lt!2050478))))))))

(declare-fun d!1597901 () Bool)

(assert (=> d!1597901 e!3103967))

(declare-fun res!2119703 () Bool)

(assert (=> d!1597901 (=> res!2119703 e!3103967)))

(assert (=> d!1597901 (= res!2119703 (isEmpty!30925 lt!2050478))))

(assert (=> d!1597901 (= lt!2050478 e!3103965)))

(declare-fun c!847248 () Bool)

(assert (=> d!1597901 (= c!847248 (isEmpty!30923 (_1!34382 lt!2050476)))))

(assert (=> d!1597901 (= lt!2050476 (findLongestMatch!1695 (regex!8391 (h!63885 (t!368227 rulesArg!259))) (list!18359 input!1342)))))

(assert (=> d!1597901 (ruleValid!3800 thiss!15247 (h!63885 (t!368227 rulesArg!259)))))

(assert (=> d!1597901 (= (maxPrefixOneRule!3627 thiss!15247 (h!63885 (t!368227 rulesArg!259)) (list!18359 input!1342)) lt!2050478)))

(declare-fun b!4965812 () Bool)

(declare-fun res!2119700 () Bool)

(assert (=> b!4965812 (=> (not res!2119700) (not e!3103964))))

(assert (=> b!4965812 (= res!2119700 (= (rule!11629 (_1!34378 (get!19935 lt!2050478))) (h!63885 (t!368227 rulesArg!259))))))

(assert (= (and d!1597901 c!847248) b!4965804))

(assert (= (and d!1597901 (not c!847248)) b!4965806))

(assert (= (and b!4965806 (not res!2119704)) b!4965810))

(assert (= (and d!1597901 (not res!2119703)) b!4965807))

(assert (= (and b!4965807 res!2119702) b!4965808))

(assert (= (and b!4965808 res!2119698) b!4965809))

(assert (= (and b!4965809 res!2119701) b!4965812))

(assert (= (and b!4965812 res!2119700) b!4965805))

(assert (= (and b!4965805 res!2119699) b!4965811))

(declare-fun m!5991180 () Bool)

(assert (=> b!4965806 m!5991180))

(assert (=> b!4965806 m!5988632))

(assert (=> b!4965806 m!5990378))

(assert (=> b!4965806 m!5988784))

(assert (=> b!4965806 m!5988784))

(assert (=> b!4965806 m!5988632))

(assert (=> b!4965806 m!5988632))

(assert (=> b!4965806 m!5989126))

(assert (=> b!4965806 m!5990376))

(assert (=> b!4965806 m!5990384))

(assert (=> b!4965806 m!5988632))

(assert (=> b!4965806 m!5989126))

(assert (=> b!4965806 m!5991180))

(declare-fun m!5991182 () Bool)

(assert (=> b!4965806 m!5991182))

(assert (=> b!4965806 m!5991180))

(declare-fun m!5991184 () Bool)

(assert (=> b!4965806 m!5991184))

(assert (=> b!4965806 m!5991180))

(declare-fun m!5991186 () Bool)

(assert (=> b!4965806 m!5991186))

(declare-fun m!5991188 () Bool)

(assert (=> d!1597901 m!5991188))

(declare-fun m!5991190 () Bool)

(assert (=> d!1597901 m!5991190))

(assert (=> d!1597901 m!5988632))

(declare-fun m!5991192 () Bool)

(assert (=> d!1597901 m!5991192))

(assert (=> d!1597901 m!5989330))

(declare-fun m!5991194 () Bool)

(assert (=> b!4965809 m!5991194))

(declare-fun m!5991196 () Bool)

(assert (=> b!4965809 m!5991196))

(assert (=> b!4965809 m!5988632))

(assert (=> b!4965809 m!5989126))

(assert (=> b!4965812 m!5991194))

(assert (=> b!4965805 m!5991194))

(declare-fun m!5991198 () Bool)

(assert (=> b!4965805 m!5991198))

(assert (=> b!4965805 m!5991198))

(declare-fun m!5991200 () Bool)

(assert (=> b!4965805 m!5991200))

(assert (=> b!4965808 m!5991194))

(declare-fun m!5991202 () Bool)

(assert (=> b!4965808 m!5991202))

(assert (=> b!4965808 m!5991202))

(declare-fun m!5991204 () Bool)

(assert (=> b!4965808 m!5991204))

(assert (=> b!4965808 m!5991204))

(declare-fun m!5991206 () Bool)

(assert (=> b!4965808 m!5991206))

(assert (=> b!4965807 m!5991194))

(assert (=> b!4965807 m!5991202))

(assert (=> b!4965807 m!5991202))

(assert (=> b!4965807 m!5991204))

(assert (=> b!4965807 m!5991204))

(declare-fun m!5991208 () Bool)

(assert (=> b!4965807 m!5991208))

(assert (=> b!4965810 m!5988784))

(assert (=> b!4965810 m!5988632))

(assert (=> b!4965810 m!5989126))

(assert (=> b!4965810 m!5988784))

(assert (=> b!4965810 m!5988632))

(assert (=> b!4965810 m!5988632))

(assert (=> b!4965810 m!5989126))

(assert (=> b!4965810 m!5990376))

(assert (=> b!4965810 m!5990388))

(assert (=> b!4965811 m!5991194))

(declare-fun m!5991210 () Bool)

(assert (=> b!4965811 m!5991210))

(assert (=> bm!346172 d!1597901))

(assert (=> b!4964807 d!1597547))

(declare-fun b!4965813 () Bool)

(declare-fun e!3103969 () Option!14445)

(assert (=> b!4965813 (= e!3103969 None!14444)))

(declare-fun b!4965814 () Bool)

(declare-fun res!2119706 () Bool)

(declare-fun e!3103968 () Bool)

(assert (=> b!4965814 (=> (not res!2119706) (not e!3103968))))

(declare-fun lt!2050483 () Option!14445)

(assert (=> b!4965814 (= res!2119706 (= (value!268585 (_1!34378 (get!19935 lt!2050483))) (apply!13902 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2050483)))) (seqFromList!6034 (originalCharacters!8670 (_1!34378 (get!19935 lt!2050483)))))))))

(declare-fun b!4965815 () Bool)

(declare-fun lt!2050481 () tuple2!62158)

(assert (=> b!4965815 (= e!3103969 (Some!14444 (tuple2!62151 (Token!15279 (apply!13902 (transformation!8391 (h!63885 (t!368227 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2050481))) (h!63885 (t!368227 rulesArg!259)) (size!38065 (seqFromList!6034 (_1!34382 lt!2050481))) (_1!34382 lt!2050481)) (_2!34382 lt!2050481))))))

(declare-fun lt!2050482 () Unit!148334)

(assert (=> b!4965815 (= lt!2050482 (longestMatchIsAcceptedByMatchOrIsEmpty!1814 (regex!8391 (h!63885 (t!368227 rulesArg!259))) lt!2049571))))

(declare-fun res!2119711 () Bool)

(assert (=> b!4965815 (= res!2119711 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571)))))))

(declare-fun e!3103970 () Bool)

(assert (=> b!4965815 (=> res!2119711 e!3103970)))

(assert (=> b!4965815 e!3103970))

(declare-fun lt!2050480 () Unit!148334)

(assert (=> b!4965815 (= lt!2050480 lt!2050482)))

(declare-fun lt!2050479 () Unit!148334)

(assert (=> b!4965815 (= lt!2050479 (lemmaSemiInverse!2600 (transformation!8391 (h!63885 (t!368227 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2050481))))))

(declare-fun b!4965816 () Bool)

(declare-fun e!3103971 () Bool)

(assert (=> b!4965816 (= e!3103971 e!3103968)))

(declare-fun res!2119709 () Bool)

(assert (=> b!4965816 (=> (not res!2119709) (not e!3103968))))

(assert (=> b!4965816 (= res!2119709 (matchR!6634 (regex!8391 (h!63885 (t!368227 rulesArg!259))) (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2050483))))))))

(declare-fun b!4965817 () Bool)

(declare-fun res!2119705 () Bool)

(assert (=> b!4965817 (=> (not res!2119705) (not e!3103968))))

(assert (=> b!4965817 (= res!2119705 (= (++!12530 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2050483)))) (_2!34378 (get!19935 lt!2050483))) lt!2049571))))

(declare-fun b!4965818 () Bool)

(declare-fun res!2119708 () Bool)

(assert (=> b!4965818 (=> (not res!2119708) (not e!3103968))))

(assert (=> b!4965818 (= res!2119708 (< (size!38064 (_2!34378 (get!19935 lt!2050483))) (size!38064 lt!2049571)))))

(declare-fun b!4965819 () Bool)

(assert (=> b!4965819 (= e!3103970 (matchR!6634 (regex!8391 (h!63885 (t!368227 rulesArg!259))) (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571)))))))

(declare-fun b!4965820 () Bool)

(assert (=> b!4965820 (= e!3103968 (= (size!38062 (_1!34378 (get!19935 lt!2050483))) (size!38064 (originalCharacters!8670 (_1!34378 (get!19935 lt!2050483))))))))

(declare-fun d!1597903 () Bool)

(assert (=> d!1597903 e!3103971))

(declare-fun res!2119710 () Bool)

(assert (=> d!1597903 (=> res!2119710 e!3103971)))

(assert (=> d!1597903 (= res!2119710 (isEmpty!30925 lt!2050483))))

(assert (=> d!1597903 (= lt!2050483 e!3103969)))

(declare-fun c!847249 () Bool)

(assert (=> d!1597903 (= c!847249 (isEmpty!30923 (_1!34382 lt!2050481)))))

(assert (=> d!1597903 (= lt!2050481 (findLongestMatch!1695 (regex!8391 (h!63885 (t!368227 rulesArg!259))) lt!2049571))))

(assert (=> d!1597903 (ruleValid!3800 thiss!15247 (h!63885 (t!368227 rulesArg!259)))))

(assert (=> d!1597903 (= (maxPrefixOneRule!3627 thiss!15247 (h!63885 (t!368227 rulesArg!259)) lt!2049571) lt!2050483)))

(declare-fun b!4965821 () Bool)

(declare-fun res!2119707 () Bool)

(assert (=> b!4965821 (=> (not res!2119707) (not e!3103968))))

(assert (=> b!4965821 (= res!2119707 (= (rule!11629 (_1!34378 (get!19935 lt!2050483))) (h!63885 (t!368227 rulesArg!259))))))

(assert (= (and d!1597903 c!847249) b!4965813))

(assert (= (and d!1597903 (not c!847249)) b!4965815))

(assert (= (and b!4965815 (not res!2119711)) b!4965819))

(assert (= (and d!1597903 (not res!2119710)) b!4965816))

(assert (= (and b!4965816 res!2119709) b!4965817))

(assert (= (and b!4965817 res!2119705) b!4965818))

(assert (= (and b!4965818 res!2119708) b!4965821))

(assert (= (and b!4965821 res!2119707) b!4965814))

(assert (= (and b!4965814 res!2119706) b!4965820))

(declare-fun m!5991212 () Bool)

(assert (=> b!4965815 m!5991212))

(declare-fun m!5991214 () Bool)

(assert (=> b!4965815 m!5991214))

(assert (=> b!4965815 m!5988784))

(assert (=> b!4965815 m!5988784))

(assert (=> b!4965815 m!5988708))

(declare-fun m!5991216 () Bool)

(assert (=> b!4965815 m!5991216))

(declare-fun m!5991218 () Bool)

(assert (=> b!4965815 m!5991218))

(assert (=> b!4965815 m!5988708))

(assert (=> b!4965815 m!5991212))

(declare-fun m!5991220 () Bool)

(assert (=> b!4965815 m!5991220))

(assert (=> b!4965815 m!5991212))

(declare-fun m!5991222 () Bool)

(assert (=> b!4965815 m!5991222))

(assert (=> b!4965815 m!5991212))

(declare-fun m!5991224 () Bool)

(assert (=> b!4965815 m!5991224))

(declare-fun m!5991226 () Bool)

(assert (=> d!1597903 m!5991226))

(declare-fun m!5991228 () Bool)

(assert (=> d!1597903 m!5991228))

(declare-fun m!5991230 () Bool)

(assert (=> d!1597903 m!5991230))

(assert (=> d!1597903 m!5989330))

(declare-fun m!5991232 () Bool)

(assert (=> b!4965818 m!5991232))

(declare-fun m!5991234 () Bool)

(assert (=> b!4965818 m!5991234))

(assert (=> b!4965818 m!5988708))

(assert (=> b!4965821 m!5991232))

(assert (=> b!4965814 m!5991232))

(declare-fun m!5991236 () Bool)

(assert (=> b!4965814 m!5991236))

(assert (=> b!4965814 m!5991236))

(declare-fun m!5991238 () Bool)

(assert (=> b!4965814 m!5991238))

(assert (=> b!4965817 m!5991232))

(declare-fun m!5991240 () Bool)

(assert (=> b!4965817 m!5991240))

(assert (=> b!4965817 m!5991240))

(declare-fun m!5991242 () Bool)

(assert (=> b!4965817 m!5991242))

(assert (=> b!4965817 m!5991242))

(declare-fun m!5991244 () Bool)

(assert (=> b!4965817 m!5991244))

(assert (=> b!4965816 m!5991232))

(assert (=> b!4965816 m!5991240))

(assert (=> b!4965816 m!5991240))

(assert (=> b!4965816 m!5991242))

(assert (=> b!4965816 m!5991242))

(declare-fun m!5991246 () Bool)

(assert (=> b!4965816 m!5991246))

(assert (=> b!4965819 m!5988784))

(assert (=> b!4965819 m!5988708))

(assert (=> b!4965819 m!5988784))

(assert (=> b!4965819 m!5988708))

(assert (=> b!4965819 m!5991216))

(declare-fun m!5991248 () Bool)

(assert (=> b!4965819 m!5991248))

(assert (=> b!4965820 m!5991232))

(declare-fun m!5991250 () Bool)

(assert (=> b!4965820 m!5991250))

(assert (=> bm!346171 d!1597903))

(declare-fun d!1597905 () Bool)

(assert (=> d!1597905 (= (get!19935 (maxPrefixZipper!784 thiss!15247 (t!368227 (t!368227 rulesArg!259)) (list!18359 input!1342))) (v!50431 (maxPrefixZipper!784 thiss!15247 (t!368227 (t!368227 rulesArg!259)) (list!18359 input!1342))))))

(assert (=> b!4964739 d!1597905))

(assert (=> b!4964739 d!1597859))

(assert (=> b!4964739 d!1597117))

(assert (=> b!4964739 d!1597655))

(assert (=> b!4964739 d!1597785))

(declare-fun d!1597907 () Bool)

(declare-fun c!847251 () Bool)

(assert (=> d!1597907 (= c!847251 (is-IntegerValue!26103 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676))))))

(declare-fun e!3103974 () Bool)

(assert (=> d!1597907 (= (inv!21 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676))) e!3103974)))

(declare-fun b!4965822 () Bool)

(assert (=> b!4965822 (= e!3103974 (inv!16 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676))))))

(declare-fun b!4965823 () Bool)

(declare-fun e!3103972 () Bool)

(assert (=> b!4965823 (= e!3103972 (inv!15 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676))))))

(declare-fun b!4965824 () Bool)

(declare-fun e!3103973 () Bool)

(assert (=> b!4965824 (= e!3103973 (inv!17 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676))))))

(declare-fun b!4965825 () Bool)

(declare-fun res!2119712 () Bool)

(assert (=> b!4965825 (=> res!2119712 e!3103972)))

(assert (=> b!4965825 (= res!2119712 (not (is-IntegerValue!26105 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676)))))))

(assert (=> b!4965825 (= e!3103973 e!3103972)))

(declare-fun b!4965826 () Bool)

(assert (=> b!4965826 (= e!3103974 e!3103973)))

(declare-fun c!847250 () Bool)

(assert (=> b!4965826 (= c!847250 (is-IntegerValue!26104 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676))))))

(assert (= (and d!1597907 c!847251) b!4965822))

(assert (= (and d!1597907 (not c!847251)) b!4965826))

(assert (= (and b!4965826 c!847250) b!4965824))

(assert (= (and b!4965826 (not c!847250)) b!4965825))

(assert (= (and b!4965825 (not res!2119712)) b!4965823))

(declare-fun m!5991252 () Bool)

(assert (=> b!4965822 m!5991252))

(declare-fun m!5991254 () Bool)

(assert (=> b!4965823 m!5991254))

(declare-fun m!5991256 () Bool)

(assert (=> b!4965824 m!5991256))

(assert (=> tb!260235 d!1597907))

(declare-fun d!1597909 () Bool)

(assert (=> d!1597909 (= (max!0 (height!2011 (left!41893 (c!846918 input!1342))) (height!2011 (right!42223 (c!846918 input!1342)))) (ite (< (height!2011 (left!41893 (c!846918 input!1342))) (height!2011 (right!42223 (c!846918 input!1342)))) (height!2011 (right!42223 (c!846918 input!1342))) (height!2011 (left!41893 (c!846918 input!1342)))))))

(assert (=> b!4964522 d!1597909))

(assert (=> b!4964522 d!1597619))

(assert (=> b!4964522 d!1597621))

(declare-fun b!4965827 () Bool)

(declare-fun e!3103975 () Bool)

(declare-fun e!3103976 () Bool)

(assert (=> b!4965827 (= e!3103975 e!3103976)))

(declare-fun res!2119715 () Bool)

(assert (=> b!4965827 (=> (not res!2119715) (not e!3103976))))

(assert (=> b!4965827 (= res!2119715 (<= (- 1) (- (height!2011 (left!41893 (left!41893 (c!846918 input!1342)))) (height!2011 (right!42223 (left!41893 (c!846918 input!1342)))))))))

(declare-fun b!4965828 () Bool)

(declare-fun res!2119714 () Bool)

(assert (=> b!4965828 (=> (not res!2119714) (not e!3103976))))

(assert (=> b!4965828 (= res!2119714 (not (isEmpty!30929 (left!41893 (left!41893 (c!846918 input!1342))))))))

(declare-fun b!4965830 () Bool)

(declare-fun res!2119713 () Bool)

(assert (=> b!4965830 (=> (not res!2119713) (not e!3103976))))

(assert (=> b!4965830 (= res!2119713 (isBalanced!4200 (right!42223 (left!41893 (c!846918 input!1342)))))))

(declare-fun b!4965831 () Bool)

(declare-fun res!2119718 () Bool)

(assert (=> b!4965831 (=> (not res!2119718) (not e!3103976))))

(assert (=> b!4965831 (= res!2119718 (isBalanced!4200 (left!41893 (left!41893 (c!846918 input!1342)))))))

(declare-fun b!4965832 () Bool)

(assert (=> b!4965832 (= e!3103976 (not (isEmpty!30929 (right!42223 (left!41893 (c!846918 input!1342))))))))

(declare-fun d!1597911 () Bool)

(declare-fun res!2119717 () Bool)

(assert (=> d!1597911 (=> res!2119717 e!3103975)))

(assert (=> d!1597911 (= res!2119717 (not (is-Node!15143 (left!41893 (c!846918 input!1342)))))))

(assert (=> d!1597911 (= (isBalanced!4200 (left!41893 (c!846918 input!1342))) e!3103975)))

(declare-fun b!4965829 () Bool)

(declare-fun res!2119716 () Bool)

(assert (=> b!4965829 (=> (not res!2119716) (not e!3103976))))

(assert (=> b!4965829 (= res!2119716 (<= (- (height!2011 (left!41893 (left!41893 (c!846918 input!1342)))) (height!2011 (right!42223 (left!41893 (c!846918 input!1342))))) 1))))

(assert (= (and d!1597911 (not res!2119717)) b!4965827))

(assert (= (and b!4965827 res!2119715) b!4965829))

(assert (= (and b!4965829 res!2119716) b!4965831))

(assert (= (and b!4965831 res!2119718) b!4965830))

(assert (= (and b!4965830 res!2119713) b!4965828))

(assert (= (and b!4965828 res!2119714) b!4965832))

(declare-fun m!5991258 () Bool)

(assert (=> b!4965831 m!5991258))

(declare-fun m!5991260 () Bool)

(assert (=> b!4965832 m!5991260))

(declare-fun m!5991262 () Bool)

(assert (=> b!4965828 m!5991262))

(assert (=> b!4965827 m!5991162))

(assert (=> b!4965827 m!5991164))

(assert (=> b!4965829 m!5991162))

(assert (=> b!4965829 m!5991164))

(declare-fun m!5991264 () Bool)

(assert (=> b!4965830 m!5991264))

(assert (=> b!4964713 d!1597911))

(assert (=> d!1597363 d!1597259))

(declare-fun d!1597913 () Bool)

(assert (=> d!1597913 (= (list!18359 (_2!34377 (get!19936 lt!2049952))) (list!18361 (c!846918 (_2!34377 (get!19936 lt!2049952)))))))

(declare-fun bs!1183018 () Bool)

(assert (= bs!1183018 d!1597913))

(declare-fun m!5991266 () Bool)

(assert (=> bs!1183018 m!5991266))

(assert (=> b!4964764 d!1597913))

(declare-fun d!1597915 () Bool)

(assert (=> d!1597915 (= (get!19936 lt!2049952) (v!50432 lt!2049952))))

(assert (=> b!4964764 d!1597915))

(declare-fun d!1597917 () Bool)

(assert (=> d!1597917 (= (get!19935 (maxPrefixOneRule!3627 thiss!15247 (h!63885 (t!368227 rulesArg!259)) (list!18359 input!1342))) (v!50431 (maxPrefixOneRule!3627 thiss!15247 (h!63885 (t!368227 rulesArg!259)) (list!18359 input!1342))))))

(assert (=> b!4964764 d!1597917))

(assert (=> b!4964764 d!1597117))

(assert (=> b!4964764 d!1597901))

(declare-fun d!1597919 () Bool)

(declare-fun choose!36667 (Int) Bool)

(assert (=> d!1597919 (= (Forall!1760 lambda!247317) (choose!36667 lambda!247317))))

(declare-fun bs!1183019 () Bool)

(assert (= bs!1183019 d!1597919))

(declare-fun m!5991268 () Bool)

(assert (=> bs!1183019 m!5991268))

(assert (=> d!1597259 d!1597919))

(assert (=> b!4964896 d!1597197))

(assert (=> b!4964896 d!1597199))

(assert (=> b!4964896 d!1597201))

(assert (=> b!4964896 d!1597203))

(declare-fun b!4965833 () Bool)

(declare-fun e!3103979 () List!57559)

(assert (=> b!4965833 (= e!3103979 (t!368225 (list!18359 totalInput!464)))))

(declare-fun b!4965834 () Bool)

(declare-fun e!3103980 () Int)

(declare-fun call!346277 () Int)

(assert (=> b!4965834 (= e!3103980 call!346277)))

(declare-fun b!4965835 () Bool)

(declare-fun e!3103981 () List!57559)

(assert (=> b!4965835 (= e!3103981 Nil!57435)))

(declare-fun b!4965836 () Bool)

(declare-fun e!3103978 () Int)

(assert (=> b!4965836 (= e!3103978 (- call!346277 (- (- (size!38064 (list!18359 totalInput!464)) (size!38064 lt!2049571)) 1)))))

(declare-fun b!4965837 () Bool)

(assert (=> b!4965837 (= e!3103978 0)))

(declare-fun d!1597921 () Bool)

(declare-fun e!3103977 () Bool)

(assert (=> d!1597921 e!3103977))

(declare-fun res!2119719 () Bool)

(assert (=> d!1597921 (=> (not res!2119719) (not e!3103977))))

(declare-fun lt!2050484 () List!57559)

(assert (=> d!1597921 (= res!2119719 (set.subset (content!10180 lt!2050484) (content!10180 (t!368225 (list!18359 totalInput!464)))))))

(assert (=> d!1597921 (= lt!2050484 e!3103981)))

(declare-fun c!847255 () Bool)

(assert (=> d!1597921 (= c!847255 (is-Nil!57435 (t!368225 (list!18359 totalInput!464))))))

(assert (=> d!1597921 (= (drop!2347 (t!368225 (list!18359 totalInput!464)) (- (- (size!38064 (list!18359 totalInput!464)) (size!38064 lt!2049571)) 1)) lt!2050484)))

(declare-fun bm!346272 () Bool)

(assert (=> bm!346272 (= call!346277 (size!38064 (t!368225 (list!18359 totalInput!464))))))

(declare-fun b!4965838 () Bool)

(assert (=> b!4965838 (= e!3103979 (drop!2347 (t!368225 (t!368225 (list!18359 totalInput!464))) (- (- (- (size!38064 (list!18359 totalInput!464)) (size!38064 lt!2049571)) 1) 1)))))

(declare-fun b!4965839 () Bool)

(assert (=> b!4965839 (= e!3103981 e!3103979)))

(declare-fun c!847252 () Bool)

(assert (=> b!4965839 (= c!847252 (<= (- (- (size!38064 (list!18359 totalInput!464)) (size!38064 lt!2049571)) 1) 0))))

(declare-fun b!4965840 () Bool)

(assert (=> b!4965840 (= e!3103980 e!3103978)))

(declare-fun c!847253 () Bool)

(assert (=> b!4965840 (= c!847253 (>= (- (- (size!38064 (list!18359 totalInput!464)) (size!38064 lt!2049571)) 1) call!346277))))

(declare-fun b!4965841 () Bool)

(assert (=> b!4965841 (= e!3103977 (= (size!38064 lt!2050484) e!3103980))))

(declare-fun c!847254 () Bool)

(assert (=> b!4965841 (= c!847254 (<= (- (- (size!38064 (list!18359 totalInput!464)) (size!38064 lt!2049571)) 1) 0))))

(assert (= (and d!1597921 c!847255) b!4965835))

(assert (= (and d!1597921 (not c!847255)) b!4965839))

(assert (= (and b!4965839 c!847252) b!4965833))

(assert (= (and b!4965839 (not c!847252)) b!4965838))

(assert (= (and d!1597921 res!2119719) b!4965841))

(assert (= (and b!4965841 c!847254) b!4965834))

(assert (= (and b!4965841 (not c!847254)) b!4965840))

(assert (= (and b!4965840 c!847253) b!4965837))

(assert (= (and b!4965840 (not c!847253)) b!4965836))

(assert (= (or b!4965834 b!4965840 b!4965836) bm!346272))

(declare-fun m!5991270 () Bool)

(assert (=> d!1597921 m!5991270))

(assert (=> d!1597921 m!5990368))

(assert (=> bm!346272 m!5989238))

(declare-fun m!5991272 () Bool)

(assert (=> b!4965838 m!5991272))

(declare-fun m!5991274 () Bool)

(assert (=> b!4965841 m!5991274))

(assert (=> b!4964865 d!1597921))

(declare-fun d!1597923 () Bool)

(declare-fun lt!2050485 () Int)

(assert (=> d!1597923 (>= lt!2050485 0)))

(declare-fun e!3103982 () Int)

(assert (=> d!1597923 (= lt!2050485 e!3103982)))

(declare-fun c!847256 () Bool)

(assert (=> d!1597923 (= c!847256 (is-Nil!57435 (t!368225 lt!2049672)))))

(assert (=> d!1597923 (= (size!38064 (t!368225 lt!2049672)) lt!2050485)))

(declare-fun b!4965842 () Bool)

(assert (=> b!4965842 (= e!3103982 0)))

(declare-fun b!4965843 () Bool)

(assert (=> b!4965843 (= e!3103982 (+ 1 (size!38064 (t!368225 (t!368225 lt!2049672)))))))

(assert (= (and d!1597923 c!847256) b!4965842))

(assert (= (and d!1597923 (not c!847256)) b!4965843))

(declare-fun m!5991276 () Bool)

(assert (=> b!4965843 m!5991276))

(assert (=> b!4964621 d!1597923))

(declare-fun b!4965844 () Bool)

(declare-fun e!3103988 () Bool)

(declare-fun lt!2050486 () Bool)

(declare-fun call!346278 () Bool)

(assert (=> b!4965844 (= e!3103988 (= lt!2050486 call!346278))))

(declare-fun b!4965845 () Bool)

(declare-fun e!3103987 () Bool)

(assert (=> b!4965845 (= e!3103987 (not (= (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) (list!18359 input!1342) (list!18359 input!1342) (size!38064 (list!18359 input!1342))))) (c!846919 (regex!8391 (h!63885 rulesArg!259))))))))

(declare-fun b!4965846 () Bool)

(declare-fun res!2119720 () Bool)

(declare-fun e!3103989 () Bool)

(assert (=> b!4965846 (=> (not res!2119720) (not e!3103989))))

(assert (=> b!4965846 (= res!2119720 (isEmpty!30923 (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) (list!18359 input!1342) (list!18359 input!1342) (size!38064 (list!18359 input!1342)))))))))

(declare-fun b!4965847 () Bool)

(declare-fun e!3103985 () Bool)

(assert (=> b!4965847 (= e!3103988 e!3103985)))

(declare-fun c!847257 () Bool)

(assert (=> b!4965847 (= c!847257 (is-EmptyLang!13624 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun b!4965848 () Bool)

(declare-fun res!2119722 () Bool)

(declare-fun e!3103984 () Bool)

(assert (=> b!4965848 (=> res!2119722 e!3103984)))

(assert (=> b!4965848 (= res!2119722 (not (is-ElementMatch!13624 (regex!8391 (h!63885 rulesArg!259)))))))

(assert (=> b!4965848 (= e!3103985 e!3103984)))

(declare-fun b!4965849 () Bool)

(declare-fun e!3103983 () Bool)

(assert (=> b!4965849 (= e!3103983 e!3103987)))

(declare-fun res!2119726 () Bool)

(assert (=> b!4965849 (=> res!2119726 e!3103987)))

(assert (=> b!4965849 (= res!2119726 call!346278)))

(declare-fun b!4965850 () Bool)

(declare-fun e!3103986 () Bool)

(assert (=> b!4965850 (= e!3103986 (nullable!4618 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun d!1597925 () Bool)

(assert (=> d!1597925 e!3103988))

(declare-fun c!847259 () Bool)

(assert (=> d!1597925 (= c!847259 (is-EmptyExpr!13624 (regex!8391 (h!63885 rulesArg!259))))))

(assert (=> d!1597925 (= lt!2050486 e!3103986)))

(declare-fun c!847258 () Bool)

(assert (=> d!1597925 (= c!847258 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) (list!18359 input!1342) (list!18359 input!1342) (size!38064 (list!18359 input!1342))))))))

(assert (=> d!1597925 (validRegex!5967 (regex!8391 (h!63885 rulesArg!259)))))

(assert (=> d!1597925 (= (matchR!6634 (regex!8391 (h!63885 rulesArg!259)) (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) (list!18359 input!1342) (list!18359 input!1342) (size!38064 (list!18359 input!1342))))) lt!2050486)))

(declare-fun b!4965851 () Bool)

(declare-fun res!2119721 () Bool)

(assert (=> b!4965851 (=> res!2119721 e!3103987)))

(assert (=> b!4965851 (= res!2119721 (not (isEmpty!30923 (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) (list!18359 input!1342) (list!18359 input!1342) (size!38064 (list!18359 input!1342))))))))))

(declare-fun b!4965852 () Bool)

(assert (=> b!4965852 (= e!3103986 (matchR!6634 (derivativeStep!3920 (regex!8391 (h!63885 rulesArg!259)) (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) (list!18359 input!1342) (list!18359 input!1342) (size!38064 (list!18359 input!1342)))))) (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) (list!18359 input!1342) (list!18359 input!1342) (size!38064 (list!18359 input!1342)))))))))

(declare-fun b!4965853 () Bool)

(declare-fun res!2119725 () Bool)

(assert (=> b!4965853 (=> (not res!2119725) (not e!3103989))))

(assert (=> b!4965853 (= res!2119725 (not call!346278))))

(declare-fun b!4965854 () Bool)

(declare-fun res!2119723 () Bool)

(assert (=> b!4965854 (=> res!2119723 e!3103984)))

(assert (=> b!4965854 (= res!2119723 e!3103989)))

(declare-fun res!2119724 () Bool)

(assert (=> b!4965854 (=> (not res!2119724) (not e!3103989))))

(assert (=> b!4965854 (= res!2119724 lt!2050486)))

(declare-fun b!4965855 () Bool)

(assert (=> b!4965855 (= e!3103985 (not lt!2050486))))

(declare-fun bm!346273 () Bool)

(assert (=> bm!346273 (= call!346278 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) (list!18359 input!1342) (list!18359 input!1342) (size!38064 (list!18359 input!1342))))))))

(declare-fun b!4965856 () Bool)

(assert (=> b!4965856 (= e!3103989 (= (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) (list!18359 input!1342) (list!18359 input!1342) (size!38064 (list!18359 input!1342))))) (c!846919 (regex!8391 (h!63885 rulesArg!259)))))))

(declare-fun b!4965857 () Bool)

(assert (=> b!4965857 (= e!3103984 e!3103983)))

(declare-fun res!2119727 () Bool)

(assert (=> b!4965857 (=> (not res!2119727) (not e!3103983))))

(assert (=> b!4965857 (= res!2119727 (not lt!2050486))))

(assert (= (and d!1597925 c!847258) b!4965850))

(assert (= (and d!1597925 (not c!847258)) b!4965852))

(assert (= (and d!1597925 c!847259) b!4965844))

(assert (= (and d!1597925 (not c!847259)) b!4965847))

(assert (= (and b!4965847 c!847257) b!4965855))

(assert (= (and b!4965847 (not c!847257)) b!4965848))

(assert (= (and b!4965848 (not res!2119722)) b!4965854))

(assert (= (and b!4965854 res!2119724) b!4965853))

(assert (= (and b!4965853 res!2119725) b!4965846))

(assert (= (and b!4965846 res!2119720) b!4965856))

(assert (= (and b!4965854 (not res!2119723)) b!4965857))

(assert (= (and b!4965857 res!2119727) b!4965849))

(assert (= (and b!4965849 (not res!2119726)) b!4965851))

(assert (= (and b!4965851 (not res!2119721)) b!4965845))

(assert (= (or b!4965844 b!4965849 b!4965853) bm!346273))

(declare-fun m!5991278 () Bool)

(assert (=> b!4965851 m!5991278))

(assert (=> b!4965851 m!5991278))

(declare-fun m!5991280 () Bool)

(assert (=> b!4965851 m!5991280))

(assert (=> d!1597925 m!5989130))

(assert (=> d!1597925 m!5989028))

(assert (=> b!4965850 m!5989030))

(assert (=> bm!346273 m!5989130))

(declare-fun m!5991282 () Bool)

(assert (=> b!4965856 m!5991282))

(assert (=> b!4965845 m!5991282))

(assert (=> b!4965852 m!5991282))

(assert (=> b!4965852 m!5991282))

(declare-fun m!5991284 () Bool)

(assert (=> b!4965852 m!5991284))

(assert (=> b!4965852 m!5991278))

(assert (=> b!4965852 m!5991284))

(assert (=> b!4965852 m!5991278))

(declare-fun m!5991286 () Bool)

(assert (=> b!4965852 m!5991286))

(assert (=> b!4965846 m!5991278))

(assert (=> b!4965846 m!5991278))

(assert (=> b!4965846 m!5991280))

(assert (=> b!4964678 d!1597925))

(assert (=> b!4964678 d!1597535))

(assert (=> b!4964678 d!1597201))

(assert (=> b!4964678 d!1597537))

(declare-fun d!1597927 () Bool)

(declare-fun lt!2050487 () Bool)

(assert (=> d!1597927 (= lt!2050487 (isEmpty!30923 (list!18361 (left!41893 (c!846918 totalInput!464)))))))

(assert (=> d!1597927 (= lt!2050487 (= (size!38068 (left!41893 (c!846918 totalInput!464))) 0))))

(assert (=> d!1597927 (= (isEmpty!30929 (left!41893 (c!846918 totalInput!464))) lt!2050487)))

(declare-fun bs!1183020 () Bool)

(assert (= bs!1183020 d!1597927))

(assert (=> bs!1183020 m!5989312))

(assert (=> bs!1183020 m!5989312))

(declare-fun m!5991288 () Bool)

(assert (=> bs!1183020 m!5991288))

(assert (=> bs!1183020 m!5989214))

(assert (=> b!4964649 d!1597927))

(declare-fun d!1597929 () Bool)

(assert (=> d!1597929 (= (isEmpty!30923 (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672))))) (is-Nil!57435 (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672))))))))

(assert (=> b!4964560 d!1597929))

(declare-fun d!1597931 () Bool)

(assert (=> d!1597931 (= (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))) (t!368225 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))))))

(assert (=> b!4964560 d!1597931))

(declare-fun d!1597933 () Bool)

(assert (=> d!1597933 (= (head!10666 (tail!9799 lt!2049571)) (h!63883 (tail!9799 lt!2049571)))))

(assert (=> b!4964783 d!1597933))

(assert (=> b!4964559 d!1597769))

(declare-fun d!1597935 () Bool)

(declare-fun c!847260 () Bool)

(assert (=> d!1597935 (= c!847260 (is-Nil!57435 lt!2049987))))

(declare-fun e!3103990 () (Set C!27498))

(assert (=> d!1597935 (= (content!10180 lt!2049987) e!3103990)))

(declare-fun b!4965858 () Bool)

(assert (=> b!4965858 (= e!3103990 (as set.empty (Set C!27498)))))

(declare-fun b!4965859 () Bool)

(assert (=> b!4965859 (= e!3103990 (set.union (set.insert (h!63883 lt!2049987) (as set.empty (Set C!27498))) (content!10180 (t!368225 lt!2049987))))))

(assert (= (and d!1597935 c!847260) b!4965858))

(assert (= (and d!1597935 (not c!847260)) b!4965859))

(declare-fun m!5991290 () Bool)

(assert (=> b!4965859 m!5991290))

(declare-fun m!5991292 () Bool)

(assert (=> b!4965859 m!5991292))

(assert (=> d!1597321 d!1597935))

(declare-fun d!1597937 () Bool)

(declare-fun c!847261 () Bool)

(assert (=> d!1597937 (= c!847261 (is-Nil!57435 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))

(declare-fun e!3103991 () (Set C!27498))

(assert (=> d!1597937 (= (content!10180 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))) e!3103991)))

(declare-fun b!4965860 () Bool)

(assert (=> b!4965860 (= e!3103991 (as set.empty (Set C!27498)))))

(declare-fun b!4965861 () Bool)

(assert (=> b!4965861 (= e!3103991 (set.union (set.insert (h!63883 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))) (as set.empty (Set C!27498))) (content!10180 (t!368225 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))))

(assert (= (and d!1597937 c!847261) b!4965860))

(assert (= (and d!1597937 (not c!847261)) b!4965861))

(declare-fun m!5991294 () Bool)

(assert (=> b!4965861 m!5991294))

(declare-fun m!5991296 () Bool)

(assert (=> b!4965861 m!5991296))

(assert (=> d!1597321 d!1597937))

(declare-fun d!1597939 () Bool)

(declare-fun c!847262 () Bool)

(assert (=> d!1597939 (= c!847262 (is-Nil!57435 (_2!34378 (get!19935 lt!2049691))))))

(declare-fun e!3103992 () (Set C!27498))

(assert (=> d!1597939 (= (content!10180 (_2!34378 (get!19935 lt!2049691))) e!3103992)))

(declare-fun b!4965862 () Bool)

(assert (=> b!4965862 (= e!3103992 (as set.empty (Set C!27498)))))

(declare-fun b!4965863 () Bool)

(assert (=> b!4965863 (= e!3103992 (set.union (set.insert (h!63883 (_2!34378 (get!19935 lt!2049691))) (as set.empty (Set C!27498))) (content!10180 (t!368225 (_2!34378 (get!19935 lt!2049691))))))))

(assert (= (and d!1597939 c!847262) b!4965862))

(assert (= (and d!1597939 (not c!847262)) b!4965863))

(declare-fun m!5991298 () Bool)

(assert (=> b!4965863 m!5991298))

(declare-fun m!5991300 () Bool)

(assert (=> b!4965863 m!5991300))

(assert (=> d!1597321 d!1597939))

(declare-fun d!1597941 () Bool)

(assert (=> d!1597941 (= (isEmpty!30923 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))) (is-Nil!57435 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))

(assert (=> d!1597305 d!1597941))

(declare-fun b!4965864 () Bool)

(declare-fun res!2119732 () Bool)

(declare-fun e!3103998 () Bool)

(assert (=> b!4965864 (=> res!2119732 e!3103998)))

(assert (=> b!4965864 (= res!2119732 (not (is-Concat!22326 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))))))

(declare-fun e!3103999 () Bool)

(assert (=> b!4965864 (= e!3103999 e!3103998)))

(declare-fun b!4965865 () Bool)

(declare-fun e!3103994 () Bool)

(declare-fun call!346281 () Bool)

(assert (=> b!4965865 (= e!3103994 call!346281)))

(declare-fun b!4965866 () Bool)

(declare-fun e!3103996 () Bool)

(declare-fun e!3103993 () Bool)

(assert (=> b!4965866 (= e!3103996 e!3103993)))

(declare-fun c!847263 () Bool)

(assert (=> b!4965866 (= c!847263 (is-Star!13624 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))))

(declare-fun b!4965867 () Bool)

(declare-fun e!3103995 () Bool)

(declare-fun call!346280 () Bool)

(assert (=> b!4965867 (= e!3103995 call!346280)))

(declare-fun b!4965868 () Bool)

(assert (=> b!4965868 (= e!3103993 e!3103999)))

(declare-fun c!847264 () Bool)

(assert (=> b!4965868 (= c!847264 (is-Union!13624 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))))

(declare-fun bm!346275 () Bool)

(assert (=> bm!346275 (= call!346281 (validRegex!5967 (ite c!847264 (regTwo!27761 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (regOne!27760 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))))))

(declare-fun b!4965869 () Bool)

(declare-fun e!3103997 () Bool)

(assert (=> b!4965869 (= e!3103998 e!3103997)))

(declare-fun res!2119728 () Bool)

(assert (=> b!4965869 (=> (not res!2119728) (not e!3103997))))

(assert (=> b!4965869 (= res!2119728 call!346281)))

(declare-fun d!1597943 () Bool)

(declare-fun res!2119730 () Bool)

(assert (=> d!1597943 (=> res!2119730 e!3103996)))

(assert (=> d!1597943 (= res!2119730 (is-ElementMatch!13624 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))))

(assert (=> d!1597943 (= (validRegex!5967 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) e!3103996)))

(declare-fun bm!346274 () Bool)

(declare-fun call!346279 () Bool)

(assert (=> bm!346274 (= call!346279 call!346280)))

(declare-fun b!4965870 () Bool)

(assert (=> b!4965870 (= e!3103993 e!3103995)))

(declare-fun res!2119731 () Bool)

(assert (=> b!4965870 (= res!2119731 (not (nullable!4618 (reg!13953 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))))))

(assert (=> b!4965870 (=> (not res!2119731) (not e!3103995))))

(declare-fun b!4965871 () Bool)

(assert (=> b!4965871 (= e!3103997 call!346279)))

(declare-fun b!4965872 () Bool)

(declare-fun res!2119729 () Bool)

(assert (=> b!4965872 (=> (not res!2119729) (not e!3103994))))

(assert (=> b!4965872 (= res!2119729 call!346279)))

(assert (=> b!4965872 (= e!3103999 e!3103994)))

(declare-fun bm!346276 () Bool)

(assert (=> bm!346276 (= call!346280 (validRegex!5967 (ite c!847263 (reg!13953 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (ite c!847264 (regOne!27761 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (regTwo!27760 (regex!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))))))))

(assert (= (and d!1597943 (not res!2119730)) b!4965866))

(assert (= (and b!4965866 c!847263) b!4965870))

(assert (= (and b!4965866 (not c!847263)) b!4965868))

(assert (= (and b!4965870 res!2119731) b!4965867))

(assert (= (and b!4965868 c!847264) b!4965872))

(assert (= (and b!4965868 (not c!847264)) b!4965864))

(assert (= (and b!4965872 res!2119729) b!4965865))

(assert (= (and b!4965864 (not res!2119732)) b!4965869))

(assert (= (and b!4965869 res!2119728) b!4965871))

(assert (= (or b!4965872 b!4965871) bm!346274))

(assert (= (or b!4965865 b!4965869) bm!346275))

(assert (= (or b!4965867 bm!346274) bm!346276))

(declare-fun m!5991302 () Bool)

(assert (=> bm!346275 m!5991302))

(declare-fun m!5991304 () Bool)

(assert (=> b!4965870 m!5991304))

(declare-fun m!5991306 () Bool)

(assert (=> bm!346276 m!5991306))

(assert (=> d!1597305 d!1597943))

(declare-fun b!4965873 () Bool)

(declare-fun e!3104001 () List!57559)

(assert (=> b!4965873 (= e!3104001 (_2!34378 (get!19935 lt!2049977)))))

(declare-fun b!4965875 () Bool)

(declare-fun res!2119733 () Bool)

(declare-fun e!3104000 () Bool)

(assert (=> b!4965875 (=> (not res!2119733) (not e!3104000))))

(declare-fun lt!2050488 () List!57559)

(assert (=> b!4965875 (= res!2119733 (= (size!38064 lt!2050488) (+ (size!38064 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049977))))) (size!38064 (_2!34378 (get!19935 lt!2049977))))))))

(declare-fun b!4965876 () Bool)

(assert (=> b!4965876 (= e!3104000 (or (not (= (_2!34378 (get!19935 lt!2049977)) Nil!57435)) (= lt!2050488 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049977)))))))))

(declare-fun b!4965874 () Bool)

(assert (=> b!4965874 (= e!3104001 (Cons!57435 (h!63883 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049977))))) (++!12530 (t!368225 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049977))))) (_2!34378 (get!19935 lt!2049977)))))))

(declare-fun d!1597945 () Bool)

(assert (=> d!1597945 e!3104000))

(declare-fun res!2119734 () Bool)

(assert (=> d!1597945 (=> (not res!2119734) (not e!3104000))))

(assert (=> d!1597945 (= res!2119734 (= (content!10180 lt!2050488) (set.union (content!10180 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049977))))) (content!10180 (_2!34378 (get!19935 lt!2049977))))))))

(assert (=> d!1597945 (= lt!2050488 e!3104001)))

(declare-fun c!847265 () Bool)

(assert (=> d!1597945 (= c!847265 (is-Nil!57435 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049977))))))))

(assert (=> d!1597945 (= (++!12530 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049977)))) (_2!34378 (get!19935 lt!2049977))) lt!2050488)))

(assert (= (and d!1597945 c!847265) b!4965873))

(assert (= (and d!1597945 (not c!847265)) b!4965874))

(assert (= (and d!1597945 res!2119734) b!4965875))

(assert (= (and b!4965875 res!2119733) b!4965876))

(declare-fun m!5991308 () Bool)

(assert (=> b!4965875 m!5991308))

(assert (=> b!4965875 m!5989426))

(declare-fun m!5991310 () Bool)

(assert (=> b!4965875 m!5991310))

(assert (=> b!4965875 m!5989418))

(declare-fun m!5991312 () Bool)

(assert (=> b!4965874 m!5991312))

(declare-fun m!5991314 () Bool)

(assert (=> d!1597945 m!5991314))

(assert (=> d!1597945 m!5989426))

(declare-fun m!5991316 () Bool)

(assert (=> d!1597945 m!5991316))

(declare-fun m!5991318 () Bool)

(assert (=> d!1597945 m!5991318))

(assert (=> b!4964790 d!1597945))

(declare-fun d!1597947 () Bool)

(assert (=> d!1597947 (= (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049977)))) (list!18361 (c!846918 (charsOf!5435 (_1!34378 (get!19935 lt!2049977))))))))

(declare-fun bs!1183021 () Bool)

(assert (= bs!1183021 d!1597947))

(declare-fun m!5991320 () Bool)

(assert (=> bs!1183021 m!5991320))

(assert (=> b!4964790 d!1597947))

(declare-fun d!1597949 () Bool)

(declare-fun lt!2050489 () BalanceConc!29716)

(assert (=> d!1597949 (= (list!18359 lt!2050489) (originalCharacters!8670 (_1!34378 (get!19935 lt!2049977))))))

(assert (=> d!1597949 (= lt!2050489 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049977))))) (value!268585 (_1!34378 (get!19935 lt!2049977)))))))

(assert (=> d!1597949 (= (charsOf!5435 (_1!34378 (get!19935 lt!2049977))) lt!2050489)))

(declare-fun b_lambda!196653 () Bool)

(assert (=> (not b_lambda!196653) (not d!1597949)))

(declare-fun tb!260371 () Bool)

(declare-fun t!368383 () Bool)

(assert (=> (and b!4964142 (= (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049977)))))) t!368383) tb!260371))

(declare-fun b!4965877 () Bool)

(declare-fun e!3104002 () Bool)

(declare-fun tp!1392833 () Bool)

(assert (=> b!4965877 (= e!3104002 (and (inv!75059 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049977))))) (value!268585 (_1!34378 (get!19935 lt!2049977)))))) tp!1392833))))

(declare-fun result!325466 () Bool)

(assert (=> tb!260371 (= result!325466 (and (inv!75060 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049977))))) (value!268585 (_1!34378 (get!19935 lt!2049977))))) e!3104002))))

(assert (= tb!260371 b!4965877))

(declare-fun m!5991322 () Bool)

(assert (=> b!4965877 m!5991322))

(declare-fun m!5991324 () Bool)

(assert (=> tb!260371 m!5991324))

(assert (=> d!1597949 t!368383))

(declare-fun b_and!347893 () Bool)

(assert (= b_and!347887 (and (=> t!368383 result!325466) b_and!347893)))

(declare-fun t!368385 () Bool)

(declare-fun tb!260373 () Bool)

(assert (=> (and b!4964367 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049977)))))) t!368385) tb!260373))

(declare-fun result!325468 () Bool)

(assert (= result!325468 result!325466))

(assert (=> d!1597949 t!368385))

(declare-fun b_and!347895 () Bool)

(assert (= b_and!347889 (and (=> t!368385 result!325468) b_and!347895)))

(declare-fun tb!260375 () Bool)

(declare-fun t!368387 () Bool)

(assert (=> (and b!4964941 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049977)))))) t!368387) tb!260375))

(declare-fun result!325470 () Bool)

(assert (= result!325470 result!325466))

(assert (=> d!1597949 t!368387))

(declare-fun b_and!347897 () Bool)

(assert (= b_and!347891 (and (=> t!368387 result!325470) b_and!347897)))

(declare-fun m!5991326 () Bool)

(assert (=> d!1597949 m!5991326))

(declare-fun m!5991328 () Bool)

(assert (=> d!1597949 m!5991328))

(assert (=> b!4964790 d!1597949))

(assert (=> b!4964790 d!1597551))

(declare-fun d!1597951 () Bool)

(assert (=> d!1597951 (= (isEmpty!30923 (_1!34382 lt!2049862)) (is-Nil!57435 (_1!34382 lt!2049862)))))

(assert (=> b!4964605 d!1597951))

(assert (=> b!4964780 d!1597543))

(declare-fun d!1597953 () Bool)

(assert (not d!1597953))

(assert (=> b!4964619 d!1597953))

(declare-fun d!1597955 () Bool)

(declare-fun lt!2050490 () Bool)

(assert (=> d!1597955 (= lt!2050490 (set.member (rule!11629 (_1!34378 (get!19935 lt!2049691))) (content!10179 (t!368227 rulesArg!259))))))

(declare-fun e!3104003 () Bool)

(assert (=> d!1597955 (= lt!2050490 e!3104003)))

(declare-fun res!2119736 () Bool)

(assert (=> d!1597955 (=> (not res!2119736) (not e!3104003))))

(assert (=> d!1597955 (= res!2119736 (is-Cons!57437 (t!368227 rulesArg!259)))))

(assert (=> d!1597955 (= (contains!19536 (t!368227 rulesArg!259) (rule!11629 (_1!34378 (get!19935 lt!2049691)))) lt!2050490)))

(declare-fun b!4965878 () Bool)

(declare-fun e!3104004 () Bool)

(assert (=> b!4965878 (= e!3104003 e!3104004)))

(declare-fun res!2119735 () Bool)

(assert (=> b!4965878 (=> res!2119735 e!3104004)))

(assert (=> b!4965878 (= res!2119735 (= (h!63885 (t!368227 rulesArg!259)) (rule!11629 (_1!34378 (get!19935 lt!2049691)))))))

(declare-fun b!4965879 () Bool)

(assert (=> b!4965879 (= e!3104004 (contains!19536 (t!368227 (t!368227 rulesArg!259)) (rule!11629 (_1!34378 (get!19935 lt!2049691)))))))

(assert (= (and d!1597955 res!2119736) b!4965878))

(assert (= (and b!4965878 (not res!2119735)) b!4965879))

(declare-fun m!5991330 () Bool)

(assert (=> d!1597955 m!5991330))

(declare-fun m!5991332 () Bool)

(assert (=> d!1597955 m!5991332))

(declare-fun m!5991334 () Bool)

(assert (=> b!4965879 m!5991334))

(assert (=> b!4964635 d!1597955))

(declare-fun d!1597957 () Bool)

(declare-fun c!847266 () Bool)

(assert (=> d!1597957 (= c!847266 (is-Empty!15143 (c!846918 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))

(declare-fun e!3104005 () List!57559)

(assert (=> d!1597957 (= (list!18361 (c!846918 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))) e!3104005)))

(declare-fun b!4965882 () Bool)

(declare-fun e!3104006 () List!57559)

(assert (=> b!4965882 (= e!3104006 (list!18363 (xs!18469 (c!846918 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))))))

(declare-fun b!4965880 () Bool)

(assert (=> b!4965880 (= e!3104005 Nil!57435)))

(declare-fun b!4965881 () Bool)

(assert (=> b!4965881 (= e!3104005 e!3104006)))

(declare-fun c!847267 () Bool)

(assert (=> b!4965881 (= c!847267 (is-Leaf!25164 (c!846918 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))

(declare-fun b!4965883 () Bool)

(assert (=> b!4965883 (= e!3104006 (++!12530 (list!18361 (left!41893 (c!846918 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))) (list!18361 (right!42223 (c!846918 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))))

(assert (= (and d!1597957 c!847266) b!4965880))

(assert (= (and d!1597957 (not c!847266)) b!4965881))

(assert (= (and b!4965881 c!847267) b!4965882))

(assert (= (and b!4965881 (not c!847267)) b!4965883))

(declare-fun m!5991336 () Bool)

(assert (=> b!4965882 m!5991336))

(declare-fun m!5991338 () Bool)

(assert (=> b!4965883 m!5991338))

(declare-fun m!5991340 () Bool)

(assert (=> b!4965883 m!5991340))

(assert (=> b!4965883 m!5991338))

(assert (=> b!4965883 m!5991340))

(declare-fun m!5991342 () Bool)

(assert (=> b!4965883 m!5991342))

(assert (=> d!1597307 d!1597957))

(declare-fun d!1597959 () Bool)

(declare-fun c!847270 () Bool)

(assert (=> d!1597959 (= c!847270 (is-Nil!57437 rulesArg!259))))

(declare-fun e!3104009 () (Set Rule!16582))

(assert (=> d!1597959 (= (content!10179 rulesArg!259) e!3104009)))

(declare-fun b!4965888 () Bool)

(assert (=> b!4965888 (= e!3104009 (as set.empty (Set Rule!16582)))))

(declare-fun b!4965889 () Bool)

(assert (=> b!4965889 (= e!3104009 (set.union (set.insert (h!63885 rulesArg!259) (as set.empty (Set Rule!16582))) (content!10179 (t!368227 rulesArg!259))))))

(assert (= (and d!1597959 c!847270) b!4965888))

(assert (= (and d!1597959 (not c!847270)) b!4965889))

(declare-fun m!5991344 () Bool)

(assert (=> b!4965889 m!5991344))

(assert (=> b!4965889 m!5991330))

(assert (=> d!1597211 d!1597959))

(declare-fun d!1597961 () Bool)

(declare-fun res!2119737 () Bool)

(declare-fun e!3104010 () Bool)

(assert (=> d!1597961 (=> (not res!2119737) (not e!3104010))))

(assert (=> d!1597961 (= res!2119737 (= (csize!30516 (left!41893 (c!846918 totalInput!464))) (+ (size!38068 (left!41893 (left!41893 (c!846918 totalInput!464)))) (size!38068 (right!42223 (left!41893 (c!846918 totalInput!464)))))))))

(assert (=> d!1597961 (= (inv!75065 (left!41893 (c!846918 totalInput!464))) e!3104010)))

(declare-fun b!4965890 () Bool)

(declare-fun res!2119738 () Bool)

(assert (=> b!4965890 (=> (not res!2119738) (not e!3104010))))

(assert (=> b!4965890 (= res!2119738 (and (not (= (left!41893 (left!41893 (c!846918 totalInput!464))) Empty!15143)) (not (= (right!42223 (left!41893 (c!846918 totalInput!464))) Empty!15143))))))

(declare-fun b!4965891 () Bool)

(declare-fun res!2119739 () Bool)

(assert (=> b!4965891 (=> (not res!2119739) (not e!3104010))))

(assert (=> b!4965891 (= res!2119739 (= (cheight!15354 (left!41893 (c!846918 totalInput!464))) (+ (max!0 (height!2011 (left!41893 (left!41893 (c!846918 totalInput!464)))) (height!2011 (right!42223 (left!41893 (c!846918 totalInput!464))))) 1)))))

(declare-fun b!4965892 () Bool)

(assert (=> b!4965892 (= e!3104010 (<= 0 (cheight!15354 (left!41893 (c!846918 totalInput!464)))))))

(assert (= (and d!1597961 res!2119737) b!4965890))

(assert (= (and b!4965890 res!2119738) b!4965891))

(assert (= (and b!4965891 res!2119739) b!4965892))

(declare-fun m!5991346 () Bool)

(assert (=> d!1597961 m!5991346))

(declare-fun m!5991348 () Bool)

(assert (=> d!1597961 m!5991348))

(assert (=> b!4965891 m!5990646))

(assert (=> b!4965891 m!5990648))

(assert (=> b!4965891 m!5990646))

(assert (=> b!4965891 m!5990648))

(declare-fun m!5991350 () Bool)

(assert (=> b!4965891 m!5991350))

(assert (=> b!4964836 d!1597961))

(assert (=> bm!346175 d!1597941))

(declare-fun d!1597963 () Bool)

(declare-fun lt!2050491 () Bool)

(assert (=> d!1597963 (= lt!2050491 (set.member (rule!11629 (_1!34378 (get!19935 lt!2049928))) (content!10179 (t!368227 rulesArg!259))))))

(declare-fun e!3104011 () Bool)

(assert (=> d!1597963 (= lt!2050491 e!3104011)))

(declare-fun res!2119741 () Bool)

(assert (=> d!1597963 (=> (not res!2119741) (not e!3104011))))

(assert (=> d!1597963 (= res!2119741 (is-Cons!57437 (t!368227 rulesArg!259)))))

(assert (=> d!1597963 (= (contains!19536 (t!368227 rulesArg!259) (rule!11629 (_1!34378 (get!19935 lt!2049928)))) lt!2050491)))

(declare-fun b!4965893 () Bool)

(declare-fun e!3104012 () Bool)

(assert (=> b!4965893 (= e!3104011 e!3104012)))

(declare-fun res!2119740 () Bool)

(assert (=> b!4965893 (=> res!2119740 e!3104012)))

(assert (=> b!4965893 (= res!2119740 (= (h!63885 (t!368227 rulesArg!259)) (rule!11629 (_1!34378 (get!19935 lt!2049928)))))))

(declare-fun b!4965894 () Bool)

(assert (=> b!4965894 (= e!3104012 (contains!19536 (t!368227 (t!368227 rulesArg!259)) (rule!11629 (_1!34378 (get!19935 lt!2049928)))))))

(assert (= (and d!1597963 res!2119741) b!4965893))

(assert (= (and b!4965893 (not res!2119740)) b!4965894))

(assert (=> d!1597963 m!5991330))

(declare-fun m!5991352 () Bool)

(assert (=> d!1597963 m!5991352))

(declare-fun m!5991354 () Bool)

(assert (=> b!4965894 m!5991354))

(assert (=> b!4964724 d!1597963))

(assert (=> b!4964724 d!1597573))

(declare-fun d!1597965 () Bool)

(assert (=> d!1597965 (= (isEmpty!30923 (_1!34382 lt!2049874)) (is-Nil!57435 (_1!34382 lt!2049874)))))

(assert (=> b!4964600 d!1597965))

(declare-fun d!1597967 () Bool)

(declare-fun lt!2050492 () Bool)

(assert (=> d!1597967 (= lt!2050492 (set.member (rule!11629 (_1!34378 (get!19935 lt!2049922))) (content!10179 (t!368227 rulesArg!259))))))

(declare-fun e!3104013 () Bool)

(assert (=> d!1597967 (= lt!2050492 e!3104013)))

(declare-fun res!2119743 () Bool)

(assert (=> d!1597967 (=> (not res!2119743) (not e!3104013))))

(assert (=> d!1597967 (= res!2119743 (is-Cons!57437 (t!368227 rulesArg!259)))))

(assert (=> d!1597967 (= (contains!19536 (t!368227 rulesArg!259) (rule!11629 (_1!34378 (get!19935 lt!2049922)))) lt!2050492)))

(declare-fun b!4965895 () Bool)

(declare-fun e!3104014 () Bool)

(assert (=> b!4965895 (= e!3104013 e!3104014)))

(declare-fun res!2119742 () Bool)

(assert (=> b!4965895 (=> res!2119742 e!3104014)))

(assert (=> b!4965895 (= res!2119742 (= (h!63885 (t!368227 rulesArg!259)) (rule!11629 (_1!34378 (get!19935 lt!2049922)))))))

(declare-fun b!4965896 () Bool)

(assert (=> b!4965896 (= e!3104014 (contains!19536 (t!368227 (t!368227 rulesArg!259)) (rule!11629 (_1!34378 (get!19935 lt!2049922)))))))

(assert (= (and d!1597967 res!2119743) b!4965895))

(assert (= (and b!4965895 (not res!2119742)) b!4965896))

(assert (=> d!1597967 m!5991330))

(declare-fun m!5991356 () Bool)

(assert (=> d!1597967 m!5991356))

(declare-fun m!5991358 () Bool)

(assert (=> b!4965896 m!5991358))

(assert (=> b!4964696 d!1597967))

(assert (=> b!4964696 d!1597561))

(declare-fun d!1597969 () Bool)

(declare-fun lt!2050493 () Int)

(assert (=> d!1597969 (= lt!2050493 (size!38064 (list!18361 (left!41893 (c!846918 totalInput!464)))))))

(assert (=> d!1597969 (= lt!2050493 (ite (is-Empty!15143 (left!41893 (c!846918 totalInput!464))) 0 (ite (is-Leaf!25164 (left!41893 (c!846918 totalInput!464))) (csize!30517 (left!41893 (c!846918 totalInput!464))) (csize!30516 (left!41893 (c!846918 totalInput!464))))))))

(assert (=> d!1597969 (= (size!38068 (left!41893 (c!846918 totalInput!464))) lt!2050493)))

(declare-fun bs!1183022 () Bool)

(assert (= bs!1183022 d!1597969))

(assert (=> bs!1183022 m!5989312))

(assert (=> bs!1183022 m!5989312))

(assert (=> bs!1183022 m!5991044))

(assert (=> d!1597245 d!1597969))

(declare-fun d!1597971 () Bool)

(declare-fun lt!2050494 () Int)

(assert (=> d!1597971 (= lt!2050494 (size!38064 (list!18361 (right!42223 (c!846918 totalInput!464)))))))

(assert (=> d!1597971 (= lt!2050494 (ite (is-Empty!15143 (right!42223 (c!846918 totalInput!464))) 0 (ite (is-Leaf!25164 (right!42223 (c!846918 totalInput!464))) (csize!30517 (right!42223 (c!846918 totalInput!464))) (csize!30516 (right!42223 (c!846918 totalInput!464))))))))

(assert (=> d!1597971 (= (size!38068 (right!42223 (c!846918 totalInput!464))) lt!2050494)))

(declare-fun bs!1183023 () Bool)

(assert (= bs!1183023 d!1597971))

(assert (=> bs!1183023 m!5989314))

(assert (=> bs!1183023 m!5989314))

(assert (=> bs!1183023 m!5991046))

(assert (=> d!1597245 d!1597971))

(assert (=> b!4964738 d!1597785))

(assert (=> b!4964738 d!1597905))

(assert (=> b!4964738 d!1597655))

(assert (=> b!4964738 d!1597117))

(assert (=> b!4964376 d!1597325))

(assert (=> b!4964376 d!1597327))

(declare-fun b!4965897 () Bool)

(declare-fun e!3104015 () Bool)

(declare-fun e!3104016 () Bool)

(assert (=> b!4965897 (= e!3104015 e!3104016)))

(declare-fun res!2119746 () Bool)

(assert (=> b!4965897 (=> (not res!2119746) (not e!3104016))))

(assert (=> b!4965897 (= res!2119746 (<= (- 1) (- (height!2011 (left!41893 (right!42223 (c!846918 input!1342)))) (height!2011 (right!42223 (right!42223 (c!846918 input!1342)))))))))

(declare-fun b!4965898 () Bool)

(declare-fun res!2119745 () Bool)

(assert (=> b!4965898 (=> (not res!2119745) (not e!3104016))))

(assert (=> b!4965898 (= res!2119745 (not (isEmpty!30929 (left!41893 (right!42223 (c!846918 input!1342))))))))

(declare-fun b!4965900 () Bool)

(declare-fun res!2119744 () Bool)

(assert (=> b!4965900 (=> (not res!2119744) (not e!3104016))))

(assert (=> b!4965900 (= res!2119744 (isBalanced!4200 (right!42223 (right!42223 (c!846918 input!1342)))))))

(declare-fun b!4965901 () Bool)

(declare-fun res!2119749 () Bool)

(assert (=> b!4965901 (=> (not res!2119749) (not e!3104016))))

(assert (=> b!4965901 (= res!2119749 (isBalanced!4200 (left!41893 (right!42223 (c!846918 input!1342)))))))

(declare-fun b!4965902 () Bool)

(assert (=> b!4965902 (= e!3104016 (not (isEmpty!30929 (right!42223 (right!42223 (c!846918 input!1342))))))))

(declare-fun d!1597973 () Bool)

(declare-fun res!2119748 () Bool)

(assert (=> d!1597973 (=> res!2119748 e!3104015)))

(assert (=> d!1597973 (= res!2119748 (not (is-Node!15143 (right!42223 (c!846918 input!1342)))))))

(assert (=> d!1597973 (= (isBalanced!4200 (right!42223 (c!846918 input!1342))) e!3104015)))

(declare-fun b!4965899 () Bool)

(declare-fun res!2119747 () Bool)

(assert (=> b!4965899 (=> (not res!2119747) (not e!3104016))))

(assert (=> b!4965899 (= res!2119747 (<= (- (height!2011 (left!41893 (right!42223 (c!846918 input!1342)))) (height!2011 (right!42223 (right!42223 (c!846918 input!1342))))) 1))))

(assert (= (and d!1597973 (not res!2119748)) b!4965897))

(assert (= (and b!4965897 res!2119746) b!4965899))

(assert (= (and b!4965899 res!2119747) b!4965901))

(assert (= (and b!4965901 res!2119749) b!4965900))

(assert (= (and b!4965900 res!2119744) b!4965898))

(assert (= (and b!4965898 res!2119745) b!4965902))

(declare-fun m!5991360 () Bool)

(assert (=> b!4965901 m!5991360))

(declare-fun m!5991362 () Bool)

(assert (=> b!4965902 m!5991362))

(declare-fun m!5991364 () Bool)

(assert (=> b!4965898 m!5991364))

(assert (=> b!4965897 m!5991172))

(assert (=> b!4965897 m!5991174))

(assert (=> b!4965899 m!5991172))

(assert (=> b!4965899 m!5991174))

(declare-fun m!5991366 () Bool)

(assert (=> b!4965900 m!5991366))

(assert (=> b!4964712 d!1597973))

(assert (=> b!4964763 d!1597915))

(assert (=> b!4964763 d!1597917))

(assert (=> b!4964763 d!1597901))

(assert (=> b!4964763 d!1597117))

(assert (=> bm!346178 d!1597257))

(declare-fun d!1597975 () Bool)

(declare-fun lt!2050495 () Int)

(assert (=> d!1597975 (>= lt!2050495 0)))

(declare-fun e!3104017 () Int)

(assert (=> d!1597975 (= lt!2050495 e!3104017)))

(declare-fun c!847271 () Bool)

(assert (=> d!1597975 (= c!847271 (is-Nil!57435 (_2!34378 (get!19935 lt!2049912))))))

(assert (=> d!1597975 (= (size!38064 (_2!34378 (get!19935 lt!2049912))) lt!2050495)))

(declare-fun b!4965903 () Bool)

(assert (=> b!4965903 (= e!3104017 0)))

(declare-fun b!4965904 () Bool)

(assert (=> b!4965904 (= e!3104017 (+ 1 (size!38064 (t!368225 (_2!34378 (get!19935 lt!2049912))))))))

(assert (= (and d!1597975 c!847271) b!4965903))

(assert (= (and d!1597975 (not c!847271)) b!4965904))

(declare-fun m!5991368 () Bool)

(assert (=> b!4965904 m!5991368))

(assert (=> b!4964677 d!1597975))

(assert (=> b!4964677 d!1597665))

(assert (=> b!4964677 d!1597537))

(assert (=> b!4964755 d!1597757))

(assert (=> b!4964899 d!1597371))

(assert (=> b!4964648 d!1597569))

(assert (=> b!4964648 d!1597571))

(assert (=> d!1597287 d!1597813))

(declare-fun d!1597977 () Bool)

(assert (=> d!1597977 (= (isDefined!11358 (maxPrefixOneRule!3627 thiss!15247 (h!63885 (t!368227 rulesArg!259)) (list!18359 input!1342))) (not (isEmpty!30925 (maxPrefixOneRule!3627 thiss!15247 (h!63885 (t!368227 rulesArg!259)) (list!18359 input!1342)))))))

(declare-fun bs!1183024 () Bool)

(assert (= bs!1183024 d!1597977))

(assert (=> bs!1183024 m!5989264))

(declare-fun m!5991370 () Bool)

(assert (=> bs!1183024 m!5991370))

(assert (=> d!1597287 d!1597977))

(declare-fun d!1597979 () Bool)

(declare-fun lt!2050496 () tuple2!62156)

(assert (=> d!1597979 (= (tuple2!62159 (list!18359 (_1!34381 lt!2050496)) (list!18359 (_2!34381 lt!2050496))) (findLongestMatch!1695 (regex!8391 (h!63885 (t!368227 rulesArg!259))) (list!18359 input!1342)))))

(assert (=> d!1597979 (= lt!2050496 (choose!36653 (regex!8391 (h!63885 (t!368227 rulesArg!259))) input!1342 totalInput!464))))

(assert (=> d!1597979 (validRegex!5967 (regex!8391 (h!63885 (t!368227 rulesArg!259))))))

(assert (=> d!1597979 (= (findLongestMatchWithZipperSequenceV2!162 (regex!8391 (h!63885 (t!368227 rulesArg!259))) input!1342 totalInput!464) lt!2050496)))

(declare-fun bs!1183025 () Bool)

(assert (= bs!1183025 d!1597979))

(assert (=> bs!1183025 m!5988632))

(assert (=> bs!1183025 m!5991192))

(declare-fun m!5991372 () Bool)

(assert (=> bs!1183025 m!5991372))

(declare-fun m!5991374 () Bool)

(assert (=> bs!1183025 m!5991374))

(assert (=> bs!1183025 m!5988632))

(assert (=> bs!1183025 m!5990678))

(declare-fun m!5991376 () Bool)

(assert (=> bs!1183025 m!5991376))

(assert (=> d!1597287 d!1597979))

(assert (=> d!1597287 d!1597117))

(declare-fun d!1597981 () Bool)

(declare-fun lt!2050497 () Bool)

(assert (=> d!1597981 (= lt!2050497 (isEmpty!30923 (list!18359 (_1!34381 lt!2049950))))))

(assert (=> d!1597981 (= lt!2050497 (isEmpty!30929 (c!846918 (_1!34381 lt!2049950))))))

(assert (=> d!1597981 (= (isEmpty!30924 (_1!34381 lt!2049950)) lt!2050497)))

(declare-fun bs!1183026 () Bool)

(assert (= bs!1183026 d!1597981))

(assert (=> bs!1183026 m!5989346))

(assert (=> bs!1183026 m!5989346))

(declare-fun m!5991378 () Bool)

(assert (=> bs!1183026 m!5991378))

(declare-fun m!5991380 () Bool)

(assert (=> bs!1183026 m!5991380))

(assert (=> d!1597287 d!1597981))

(assert (=> d!1597287 d!1597901))

(declare-fun d!1597983 () Bool)

(assert (=> d!1597983 (= (isDefined!11360 lt!2049952) (not (isEmpty!30930 lt!2049952)))))

(declare-fun bs!1183027 () Bool)

(assert (= bs!1183027 d!1597983))

(declare-fun m!5991382 () Bool)

(assert (=> bs!1183027 m!5991382))

(assert (=> d!1597287 d!1597983))

(declare-fun d!1597985 () Bool)

(assert (=> d!1597985 (dynLambda!23152 lambda!247309 (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))))

(assert (=> d!1597985 true))

(declare-fun _$1!11229 () Unit!148334)

(assert (=> d!1597985 (= (choose!36654 lambda!247309 (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))) _$1!11229)))

(declare-fun b_lambda!196655 () Bool)

(assert (=> (not b_lambda!196655) (not d!1597985)))

(declare-fun bs!1183028 () Bool)

(assert (= bs!1183028 d!1597985))

(assert (=> bs!1183028 m!5988776))

(assert (=> bs!1183028 m!5989516))

(assert (=> d!1597331 d!1597985))

(declare-fun d!1597987 () Bool)

(assert (=> d!1597987 (= (Forall!1760 lambda!247309) (choose!36667 lambda!247309))))

(declare-fun bs!1183029 () Bool)

(assert (= bs!1183029 d!1597987))

(declare-fun m!5991384 () Bool)

(assert (=> bs!1183029 m!5991384))

(assert (=> d!1597331 d!1597987))

(declare-fun bs!1183030 () Bool)

(declare-fun d!1597989 () Bool)

(assert (= bs!1183030 (and d!1597989 d!1597335)))

(declare-fun lambda!247345 () Int)

(assert (=> bs!1183030 (= (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) (= lambda!247345 lambda!247322))))

(declare-fun bs!1183031 () Bool)

(assert (= bs!1183031 (and d!1597989 d!1597371)))

(assert (=> bs!1183031 (= (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) (= lambda!247345 lambda!247329))))

(declare-fun bs!1183032 () Bool)

(assert (= bs!1183032 (and d!1597989 d!1597727)))

(assert (=> bs!1183032 (= lambda!247345 lambda!247343)))

(assert (=> d!1597989 true))

(assert (=> d!1597989 (< (dynLambda!23142 order!26187 (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) (dynLambda!23153 order!26199 lambda!247345))))

(assert (=> d!1597989 (= (equivClasses!3546 (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) (Forall2!1286 lambda!247345))))

(declare-fun bs!1183033 () Bool)

(assert (= bs!1183033 d!1597989))

(declare-fun m!5991386 () Bool)

(assert (=> bs!1183033 m!5991386))

(assert (=> b!4964740 d!1597989))

(declare-fun b!4965905 () Bool)

(declare-fun e!3104023 () Bool)

(declare-fun lt!2050498 () Bool)

(declare-fun call!346282 () Bool)

(assert (=> b!4965905 (= e!3104023 (= lt!2050498 call!346282))))

(declare-fun b!4965906 () Bool)

(declare-fun e!3104022 () Bool)

(assert (=> b!4965906 (= e!3104022 (not (= (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049977))))) (c!846919 (regex!8391 (h!63885 rulesArg!259))))))))

(declare-fun b!4965907 () Bool)

(declare-fun res!2119750 () Bool)

(declare-fun e!3104024 () Bool)

(assert (=> b!4965907 (=> (not res!2119750) (not e!3104024))))

(assert (=> b!4965907 (= res!2119750 (isEmpty!30923 (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049977)))))))))

(declare-fun b!4965908 () Bool)

(declare-fun e!3104020 () Bool)

(assert (=> b!4965908 (= e!3104023 e!3104020)))

(declare-fun c!847272 () Bool)

(assert (=> b!4965908 (= c!847272 (is-EmptyLang!13624 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun b!4965909 () Bool)

(declare-fun res!2119752 () Bool)

(declare-fun e!3104019 () Bool)

(assert (=> b!4965909 (=> res!2119752 e!3104019)))

(assert (=> b!4965909 (= res!2119752 (not (is-ElementMatch!13624 (regex!8391 (h!63885 rulesArg!259)))))))

(assert (=> b!4965909 (= e!3104020 e!3104019)))

(declare-fun b!4965910 () Bool)

(declare-fun e!3104018 () Bool)

(assert (=> b!4965910 (= e!3104018 e!3104022)))

(declare-fun res!2119756 () Bool)

(assert (=> b!4965910 (=> res!2119756 e!3104022)))

(assert (=> b!4965910 (= res!2119756 call!346282)))

(declare-fun b!4965911 () Bool)

(declare-fun e!3104021 () Bool)

(assert (=> b!4965911 (= e!3104021 (nullable!4618 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun d!1597991 () Bool)

(assert (=> d!1597991 e!3104023))

(declare-fun c!847274 () Bool)

(assert (=> d!1597991 (= c!847274 (is-EmptyExpr!13624 (regex!8391 (h!63885 rulesArg!259))))))

(assert (=> d!1597991 (= lt!2050498 e!3104021)))

(declare-fun c!847273 () Bool)

(assert (=> d!1597991 (= c!847273 (isEmpty!30923 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049977))))))))

(assert (=> d!1597991 (validRegex!5967 (regex!8391 (h!63885 rulesArg!259)))))

(assert (=> d!1597991 (= (matchR!6634 (regex!8391 (h!63885 rulesArg!259)) (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049977))))) lt!2050498)))

(declare-fun b!4965912 () Bool)

(declare-fun res!2119751 () Bool)

(assert (=> b!4965912 (=> res!2119751 e!3104022)))

(assert (=> b!4965912 (= res!2119751 (not (isEmpty!30923 (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049977))))))))))

(declare-fun b!4965913 () Bool)

(assert (=> b!4965913 (= e!3104021 (matchR!6634 (derivativeStep!3920 (regex!8391 (h!63885 rulesArg!259)) (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049977)))))) (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049977)))))))))

(declare-fun b!4965914 () Bool)

(declare-fun res!2119755 () Bool)

(assert (=> b!4965914 (=> (not res!2119755) (not e!3104024))))

(assert (=> b!4965914 (= res!2119755 (not call!346282))))

(declare-fun b!4965915 () Bool)

(declare-fun res!2119753 () Bool)

(assert (=> b!4965915 (=> res!2119753 e!3104019)))

(assert (=> b!4965915 (= res!2119753 e!3104024)))

(declare-fun res!2119754 () Bool)

(assert (=> b!4965915 (=> (not res!2119754) (not e!3104024))))

(assert (=> b!4965915 (= res!2119754 lt!2050498)))

(declare-fun b!4965916 () Bool)

(assert (=> b!4965916 (= e!3104020 (not lt!2050498))))

(declare-fun bm!346277 () Bool)

(assert (=> bm!346277 (= call!346282 (isEmpty!30923 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049977))))))))

(declare-fun b!4965917 () Bool)

(assert (=> b!4965917 (= e!3104024 (= (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049977))))) (c!846919 (regex!8391 (h!63885 rulesArg!259)))))))

(declare-fun b!4965918 () Bool)

(assert (=> b!4965918 (= e!3104019 e!3104018)))

(declare-fun res!2119757 () Bool)

(assert (=> b!4965918 (=> (not res!2119757) (not e!3104018))))

(assert (=> b!4965918 (= res!2119757 (not lt!2050498))))

(assert (= (and d!1597991 c!847273) b!4965911))

(assert (= (and d!1597991 (not c!847273)) b!4965913))

(assert (= (and d!1597991 c!847274) b!4965905))

(assert (= (and d!1597991 (not c!847274)) b!4965908))

(assert (= (and b!4965908 c!847272) b!4965916))

(assert (= (and b!4965908 (not c!847272)) b!4965909))

(assert (= (and b!4965909 (not res!2119752)) b!4965915))

(assert (= (and b!4965915 res!2119754) b!4965914))

(assert (= (and b!4965914 res!2119755) b!4965907))

(assert (= (and b!4965907 res!2119750) b!4965917))

(assert (= (and b!4965915 (not res!2119753)) b!4965918))

(assert (= (and b!4965918 res!2119757) b!4965910))

(assert (= (and b!4965910 (not res!2119756)) b!4965912))

(assert (= (and b!4965912 (not res!2119751)) b!4965906))

(assert (= (or b!4965905 b!4965910 b!4965914) bm!346277))

(assert (=> b!4965912 m!5989426))

(declare-fun m!5991388 () Bool)

(assert (=> b!4965912 m!5991388))

(assert (=> b!4965912 m!5991388))

(declare-fun m!5991390 () Bool)

(assert (=> b!4965912 m!5991390))

(assert (=> d!1597991 m!5989426))

(declare-fun m!5991392 () Bool)

(assert (=> d!1597991 m!5991392))

(assert (=> d!1597991 m!5989028))

(assert (=> b!4965911 m!5989030))

(assert (=> bm!346277 m!5989426))

(assert (=> bm!346277 m!5991392))

(assert (=> b!4965917 m!5989426))

(declare-fun m!5991394 () Bool)

(assert (=> b!4965917 m!5991394))

(assert (=> b!4965906 m!5989426))

(assert (=> b!4965906 m!5991394))

(assert (=> b!4965913 m!5989426))

(assert (=> b!4965913 m!5991394))

(assert (=> b!4965913 m!5991394))

(declare-fun m!5991396 () Bool)

(assert (=> b!4965913 m!5991396))

(assert (=> b!4965913 m!5989426))

(assert (=> b!4965913 m!5991388))

(assert (=> b!4965913 m!5991396))

(assert (=> b!4965913 m!5991388))

(declare-fun m!5991398 () Bool)

(assert (=> b!4965913 m!5991398))

(assert (=> b!4965907 m!5989426))

(assert (=> b!4965907 m!5991388))

(assert (=> b!4965907 m!5991388))

(assert (=> b!4965907 m!5991390))

(assert (=> b!4964789 d!1597991))

(assert (=> b!4964789 d!1597947))

(assert (=> b!4964789 d!1597949))

(assert (=> b!4964789 d!1597551))

(declare-fun d!1597993 () Bool)

(declare-fun e!3104027 () Bool)

(assert (=> d!1597993 e!3104027))

(declare-fun res!2119760 () Bool)

(assert (=> d!1597993 (=> (not res!2119760) (not e!3104027))))

(declare-fun lt!2050501 () BalanceConc!29716)

(assert (=> d!1597993 (= res!2119760 (= (list!18359 lt!2050501) (list!18359 (_1!34381 lt!2049676))))))

(declare-fun fromList!942 (List!57559) Conc!15143)

(assert (=> d!1597993 (= lt!2050501 (BalanceConc!29717 (fromList!942 (list!18359 (_1!34381 lt!2049676)))))))

(assert (=> d!1597993 (= (fromListB!2729 (list!18359 (_1!34381 lt!2049676))) lt!2050501)))

(declare-fun b!4965921 () Bool)

(assert (=> b!4965921 (= e!3104027 (isBalanced!4200 (fromList!942 (list!18359 (_1!34381 lt!2049676)))))))

(assert (= (and d!1597993 res!2119760) b!4965921))

(declare-fun m!5991400 () Bool)

(assert (=> d!1597993 m!5991400))

(assert (=> d!1597993 m!5988790))

(declare-fun m!5991402 () Bool)

(assert (=> d!1597993 m!5991402))

(assert (=> b!4965921 m!5988790))

(assert (=> b!4965921 m!5991402))

(assert (=> b!4965921 m!5991402))

(declare-fun m!5991404 () Bool)

(assert (=> b!4965921 m!5991404))

(assert (=> d!1597359 d!1597993))

(declare-fun lt!2050507 () Option!14445)

(declare-fun d!1597995 () Bool)

(assert (=> d!1597995 (= lt!2050507 (maxPrefixOneRule!3627 thiss!15247 (h!63885 (t!368227 rulesArg!259)) lt!2049571))))

(declare-fun e!3104029 () Option!14445)

(assert (=> d!1597995 (= lt!2050507 e!3104029)))

(declare-fun c!847276 () Bool)

(declare-fun lt!2050502 () tuple2!62158)

(assert (=> d!1597995 (= c!847276 (isEmpty!30923 (_1!34382 lt!2050502)))))

(assert (=> d!1597995 (= lt!2050502 (findLongestMatchWithZipper!92 (regex!8391 (h!63885 (t!368227 rulesArg!259))) lt!2049571))))

(assert (=> d!1597995 (ruleValid!3800 thiss!15247 (h!63885 (t!368227 rulesArg!259)))))

(assert (=> d!1597995 (= (maxPrefixOneRuleZipper!294 thiss!15247 (h!63885 (t!368227 rulesArg!259)) lt!2049571) lt!2050507)))

(declare-fun b!4965922 () Bool)

(assert (=> b!4965922 (= e!3104029 None!14444)))

(declare-fun b!4965923 () Bool)

(assert (=> b!4965923 (= e!3104029 (Some!14444 (tuple2!62151 (Token!15279 (apply!13902 (transformation!8391 (h!63885 (t!368227 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2050502))) (h!63885 (t!368227 rulesArg!259)) (size!38064 (_1!34382 lt!2050502)) (_1!34382 lt!2050502)) (_2!34382 lt!2050502))))))

(declare-fun lt!2050503 () Unit!148334)

(assert (=> b!4965923 (= lt!2050503 (longestMatchIsAcceptedByMatchOrIsEmpty!1814 (regex!8391 (h!63885 (t!368227 rulesArg!259))) lt!2049571))))

(declare-fun res!2119761 () Bool)

(assert (=> b!4965923 (= res!2119761 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571)))))))

(declare-fun e!3104028 () Bool)

(assert (=> b!4965923 (=> res!2119761 e!3104028)))

(assert (=> b!4965923 e!3104028))

(declare-fun lt!2050506 () Unit!148334)

(assert (=> b!4965923 (= lt!2050506 lt!2050503)))

(declare-fun lt!2050504 () Unit!148334)

(assert (=> b!4965923 (= lt!2050504 (lemmaInv!1332 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))))))

(declare-fun lt!2050505 () Unit!148334)

(assert (=> b!4965923 (= lt!2050505 (lemmaSemiInverse!2600 (transformation!8391 (h!63885 (t!368227 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2050502))))))

(declare-fun b!4965924 () Bool)

(assert (=> b!4965924 (= e!3104028 (matchR!6634 (regex!8391 (h!63885 (t!368227 rulesArg!259))) (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) lt!2049571 lt!2049571 (size!38064 lt!2049571)))))))

(assert (= (and d!1597995 c!847276) b!4965922))

(assert (= (and d!1597995 (not c!847276)) b!4965923))

(assert (= (and b!4965923 (not res!2119761)) b!4965924))

(assert (=> d!1597995 m!5989204))

(declare-fun m!5991406 () Bool)

(assert (=> d!1597995 m!5991406))

(declare-fun m!5991408 () Bool)

(assert (=> d!1597995 m!5991408))

(assert (=> d!1597995 m!5989330))

(declare-fun m!5991410 () Bool)

(assert (=> b!4965923 m!5991410))

(assert (=> b!4965923 m!5988784))

(assert (=> b!4965923 m!5988708))

(assert (=> b!4965923 m!5991216))

(assert (=> b!4965923 m!5988784))

(assert (=> b!4965923 m!5989348))

(assert (=> b!4965923 m!5991214))

(declare-fun m!5991412 () Bool)

(assert (=> b!4965923 m!5991412))

(assert (=> b!4965923 m!5991410))

(declare-fun m!5991414 () Bool)

(assert (=> b!4965923 m!5991414))

(assert (=> b!4965923 m!5991218))

(assert (=> b!4965923 m!5988708))

(assert (=> b!4965923 m!5991410))

(declare-fun m!5991416 () Bool)

(assert (=> b!4965923 m!5991416))

(assert (=> b!4965924 m!5988784))

(assert (=> b!4965924 m!5988708))

(assert (=> b!4965924 m!5988784))

(assert (=> b!4965924 m!5988708))

(assert (=> b!4965924 m!5991216))

(assert (=> b!4965924 m!5991248))

(assert (=> bm!346170 d!1597995))

(declare-fun d!1597997 () Bool)

(assert (=> d!1597997 (= (isEmpty!30925 (maxPrefixOneRule!3627 thiss!15247 (h!63885 rulesArg!259) (list!18359 input!1342))) (not (is-Some!14444 (maxPrefixOneRule!3627 thiss!15247 (h!63885 rulesArg!259) (list!18359 input!1342)))))))

(assert (=> d!1597231 d!1597997))

(declare-fun d!1597999 () Bool)

(declare-fun lt!2050508 () Int)

(assert (=> d!1597999 (>= lt!2050508 0)))

(declare-fun e!3104030 () Int)

(assert (=> d!1597999 (= lt!2050508 e!3104030)))

(declare-fun c!847277 () Bool)

(assert (=> d!1597999 (= c!847277 (is-Nil!57435 lt!2049987))))

(assert (=> d!1597999 (= (size!38064 lt!2049987) lt!2050508)))

(declare-fun b!4965925 () Bool)

(assert (=> b!4965925 (= e!3104030 0)))

(declare-fun b!4965926 () Bool)

(assert (=> b!4965926 (= e!3104030 (+ 1 (size!38064 (t!368225 lt!2049987))))))

(assert (= (and d!1597999 c!847277) b!4965925))

(assert (= (and d!1597999 (not c!847277)) b!4965926))

(declare-fun m!5991418 () Bool)

(assert (=> b!4965926 m!5991418))

(assert (=> b!4964834 d!1597999))

(declare-fun d!1598001 () Bool)

(declare-fun lt!2050509 () Int)

(assert (=> d!1598001 (>= lt!2050509 0)))

(declare-fun e!3104031 () Int)

(assert (=> d!1598001 (= lt!2050509 e!3104031)))

(declare-fun c!847278 () Bool)

(assert (=> d!1598001 (= c!847278 (is-Nil!57435 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))

(assert (=> d!1598001 (= (size!38064 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))) lt!2050509)))

(declare-fun b!4965927 () Bool)

(assert (=> b!4965927 (= e!3104031 0)))

(declare-fun b!4965928 () Bool)

(assert (=> b!4965928 (= e!3104031 (+ 1 (size!38064 (t!368225 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))))

(assert (= (and d!1598001 c!847278) b!4965927))

(assert (= (and d!1598001 (not c!847278)) b!4965928))

(declare-fun m!5991420 () Bool)

(assert (=> b!4965928 m!5991420))

(assert (=> b!4964834 d!1598001))

(assert (=> b!4964834 d!1597293))

(declare-fun b!4965929 () Bool)

(declare-fun e!3104033 () List!57559)

(assert (=> b!4965929 (= e!3104033 (_2!34378 (get!19935 lt!2049928)))))

(declare-fun b!4965931 () Bool)

(declare-fun res!2119762 () Bool)

(declare-fun e!3104032 () Bool)

(assert (=> b!4965931 (=> (not res!2119762) (not e!3104032))))

(declare-fun lt!2050510 () List!57559)

(assert (=> b!4965931 (= res!2119762 (= (size!38064 lt!2050510) (+ (size!38064 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049928))))) (size!38064 (_2!34378 (get!19935 lt!2049928))))))))

(declare-fun b!4965932 () Bool)

(assert (=> b!4965932 (= e!3104032 (or (not (= (_2!34378 (get!19935 lt!2049928)) Nil!57435)) (= lt!2050510 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049928)))))))))

(declare-fun b!4965930 () Bool)

(assert (=> b!4965930 (= e!3104033 (Cons!57435 (h!63883 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049928))))) (++!12530 (t!368225 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049928))))) (_2!34378 (get!19935 lt!2049928)))))))

(declare-fun d!1598003 () Bool)

(assert (=> d!1598003 e!3104032))

(declare-fun res!2119763 () Bool)

(assert (=> d!1598003 (=> (not res!2119763) (not e!3104032))))

(assert (=> d!1598003 (= res!2119763 (= (content!10180 lt!2050510) (set.union (content!10180 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049928))))) (content!10180 (_2!34378 (get!19935 lt!2049928))))))))

(assert (=> d!1598003 (= lt!2050510 e!3104033)))

(declare-fun c!847279 () Bool)

(assert (=> d!1598003 (= c!847279 (is-Nil!57435 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049928))))))))

(assert (=> d!1598003 (= (++!12530 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049928)))) (_2!34378 (get!19935 lt!2049928))) lt!2050510)))

(assert (= (and d!1598003 c!847279) b!4965929))

(assert (= (and d!1598003 (not c!847279)) b!4965930))

(assert (= (and d!1598003 res!2119763) b!4965931))

(assert (= (and b!4965931 res!2119762) b!4965932))

(declare-fun m!5991422 () Bool)

(assert (=> b!4965931 m!5991422))

(assert (=> b!4965931 m!5989262))

(declare-fun m!5991424 () Bool)

(assert (=> b!4965931 m!5991424))

(assert (=> b!4965931 m!5989272))

(declare-fun m!5991426 () Bool)

(assert (=> b!4965930 m!5991426))

(declare-fun m!5991428 () Bool)

(assert (=> d!1598003 m!5991428))

(assert (=> d!1598003 m!5989262))

(declare-fun m!5991430 () Bool)

(assert (=> d!1598003 m!5991430))

(declare-fun m!5991432 () Bool)

(assert (=> d!1598003 m!5991432))

(assert (=> b!4964731 d!1598003))

(assert (=> b!4964731 d!1597823))

(assert (=> b!4964731 d!1597825))

(assert (=> b!4964731 d!1597573))

(declare-fun b!4965933 () Bool)

(declare-fun e!3104036 () tuple2!62158)

(declare-fun e!3104041 () tuple2!62158)

(assert (=> b!4965933 (= e!3104036 e!3104041)))

(declare-fun lt!2050527 () tuple2!62158)

(declare-fun call!346287 () tuple2!62158)

(assert (=> b!4965933 (= lt!2050527 call!346287)))

(declare-fun c!847283 () Bool)

(assert (=> b!4965933 (= c!847283 (isEmpty!30923 (_1!34382 lt!2050527)))))

(declare-fun b!4965934 () Bool)

(declare-fun e!3104038 () tuple2!62158)

(declare-fun e!3104037 () tuple2!62158)

(assert (=> b!4965934 (= e!3104038 e!3104037)))

(declare-fun c!847285 () Bool)

(assert (=> b!4965934 (= c!847285 (= (+ (size!38064 Nil!57435) 1) (size!38064 lt!2049672)))))

(declare-fun bm!346278 () Bool)

(declare-fun call!346288 () Unit!148334)

(assert (=> bm!346278 (= call!346288 (lemmaIsPrefixRefl!3566 lt!2049672 lt!2049672))))

(declare-fun b!4965935 () Bool)

(declare-fun e!3104035 () tuple2!62158)

(assert (=> b!4965935 (= e!3104035 (tuple2!62159 lt!2049878 Nil!57435))))

(declare-fun b!4965936 () Bool)

(assert (=> b!4965936 (= e!3104036 call!346287)))

(declare-fun bm!346279 () Bool)

(declare-fun call!346290 () List!57559)

(assert (=> bm!346279 (= call!346290 (tail!9799 call!346174))))

(declare-fun bm!346280 () Bool)

(declare-fun call!346289 () Regex!13624)

(declare-fun call!346284 () C!27498)

(assert (=> bm!346280 (= call!346289 (derivativeStep!3920 call!346173 call!346284))))

(declare-fun b!4965937 () Bool)

(declare-fun e!3104040 () Bool)

(declare-fun lt!2050515 () tuple2!62158)

(assert (=> b!4965937 (= e!3104040 (>= (size!38064 (_1!34382 lt!2050515)) (size!38064 lt!2049878)))))

(declare-fun lt!2050531 () List!57559)

(declare-fun bm!346281 () Bool)

(assert (=> bm!346281 (= call!346287 (findLongestMatchInner!1853 call!346289 lt!2050531 (+ (size!38064 Nil!57435) 1 1) call!346290 lt!2049672 (size!38064 lt!2049672)))))

(declare-fun b!4965938 () Bool)

(declare-fun e!3104034 () Bool)

(assert (=> b!4965938 (= e!3104034 e!3104040)))

(declare-fun res!2119764 () Bool)

(assert (=> b!4965938 (=> res!2119764 e!3104040)))

(assert (=> b!4965938 (= res!2119764 (isEmpty!30923 (_1!34382 lt!2050515)))))

(declare-fun bm!346282 () Bool)

(declare-fun call!346285 () Unit!148334)

(assert (=> bm!346282 (= call!346285 (lemmaIsPrefixSameLengthThenSameList!1206 lt!2049672 lt!2049878 lt!2049672))))

(declare-fun b!4965939 () Bool)

(assert (=> b!4965939 (= e!3104041 (tuple2!62159 lt!2049878 call!346174))))

(declare-fun bm!346283 () Bool)

(declare-fun call!346283 () Bool)

(assert (=> bm!346283 (= call!346283 (nullable!4618 call!346173))))

(declare-fun b!4965940 () Bool)

(declare-fun e!3104039 () Unit!148334)

(declare-fun Unit!148357 () Unit!148334)

(assert (=> b!4965940 (= e!3104039 Unit!148357)))

(declare-fun lt!2050518 () Unit!148334)

(assert (=> b!4965940 (= lt!2050518 call!346288)))

(declare-fun call!346286 () Bool)

(assert (=> b!4965940 call!346286))

(declare-fun lt!2050528 () Unit!148334)

(assert (=> b!4965940 (= lt!2050528 lt!2050518)))

(declare-fun lt!2050537 () Unit!148334)

(assert (=> b!4965940 (= lt!2050537 call!346285)))

(assert (=> b!4965940 (= lt!2049672 lt!2049878)))

(declare-fun lt!2050522 () Unit!148334)

(assert (=> b!4965940 (= lt!2050522 lt!2050537)))

(assert (=> b!4965940 false))

(declare-fun b!4965941 () Bool)

(declare-fun c!847281 () Bool)

(assert (=> b!4965941 (= c!847281 call!346283)))

(declare-fun lt!2050524 () Unit!148334)

(declare-fun lt!2050532 () Unit!148334)

(assert (=> b!4965941 (= lt!2050524 lt!2050532)))

(declare-fun lt!2050536 () C!27498)

(declare-fun lt!2050535 () List!57559)

(assert (=> b!4965941 (= (++!12530 (++!12530 lt!2049878 (Cons!57435 lt!2050536 Nil!57435)) lt!2050535) lt!2049672)))

(assert (=> b!4965941 (= lt!2050532 (lemmaMoveElementToOtherListKeepsConcatEq!1443 lt!2049878 lt!2050536 lt!2050535 lt!2049672))))

(assert (=> b!4965941 (= lt!2050535 (tail!9799 call!346174))))

(assert (=> b!4965941 (= lt!2050536 (head!10666 call!346174))))

(declare-fun lt!2050516 () Unit!148334)

(declare-fun lt!2050526 () Unit!148334)

(assert (=> b!4965941 (= lt!2050516 lt!2050526)))

(assert (=> b!4965941 (isPrefix!5242 (++!12530 lt!2049878 (Cons!57435 (head!10666 (getSuffix!3086 lt!2049672 lt!2049878)) Nil!57435)) lt!2049672)))

(assert (=> b!4965941 (= lt!2050526 (lemmaAddHeadSuffixToPrefixStillPrefix!833 lt!2049878 lt!2049672))))

(declare-fun lt!2050512 () Unit!148334)

(declare-fun lt!2050511 () Unit!148334)

(assert (=> b!4965941 (= lt!2050512 lt!2050511)))

(assert (=> b!4965941 (= lt!2050511 (lemmaAddHeadSuffixToPrefixStillPrefix!833 lt!2049878 lt!2049672))))

(assert (=> b!4965941 (= lt!2050531 (++!12530 lt!2049878 (Cons!57435 (head!10666 call!346174) Nil!57435)))))

(declare-fun lt!2050538 () Unit!148334)

(assert (=> b!4965941 (= lt!2050538 e!3104039)))

(declare-fun c!847280 () Bool)

(assert (=> b!4965941 (= c!847280 (= (size!38064 lt!2049878) (size!38064 lt!2049672)))))

(declare-fun lt!2050520 () Unit!148334)

(declare-fun lt!2050530 () Unit!148334)

(assert (=> b!4965941 (= lt!2050520 lt!2050530)))

(assert (=> b!4965941 (<= (size!38064 lt!2049878) (size!38064 lt!2049672))))

(assert (=> b!4965941 (= lt!2050530 (lemmaIsPrefixThenSmallerEqSize!759 lt!2049878 lt!2049672))))

(assert (=> b!4965941 (= e!3104037 e!3104036)))

(declare-fun bm!346284 () Bool)

(assert (=> bm!346284 (= call!346284 (head!10666 call!346174))))

(declare-fun d!1598005 () Bool)

(assert (=> d!1598005 e!3104034))

(declare-fun res!2119765 () Bool)

(assert (=> d!1598005 (=> (not res!2119765) (not e!3104034))))

(assert (=> d!1598005 (= res!2119765 (= (++!12530 (_1!34382 lt!2050515) (_2!34382 lt!2050515)) lt!2049672))))

(assert (=> d!1598005 (= lt!2050515 e!3104038)))

(declare-fun c!847284 () Bool)

(assert (=> d!1598005 (= c!847284 (lostCause!1130 call!346173))))

(declare-fun lt!2050513 () Unit!148334)

(declare-fun Unit!148358 () Unit!148334)

(assert (=> d!1598005 (= lt!2050513 Unit!148358)))

(assert (=> d!1598005 (= (getSuffix!3086 lt!2049672 lt!2049878) call!346174)))

(declare-fun lt!2050534 () Unit!148334)

(declare-fun lt!2050519 () Unit!148334)

(assert (=> d!1598005 (= lt!2050534 lt!2050519)))

(declare-fun lt!2050514 () List!57559)

(assert (=> d!1598005 (= call!346174 lt!2050514)))

(assert (=> d!1598005 (= lt!2050519 (lemmaSamePrefixThenSameSuffix!2498 lt!2049878 call!346174 lt!2049878 lt!2050514 lt!2049672))))

(assert (=> d!1598005 (= lt!2050514 (getSuffix!3086 lt!2049672 lt!2049878))))

(declare-fun lt!2050523 () Unit!148334)

(declare-fun lt!2050517 () Unit!148334)

(assert (=> d!1598005 (= lt!2050523 lt!2050517)))

(assert (=> d!1598005 (isPrefix!5242 lt!2049878 (++!12530 lt!2049878 call!346174))))

(assert (=> d!1598005 (= lt!2050517 (lemmaConcatTwoListThenFirstIsPrefix!3344 lt!2049878 call!346174))))

(assert (=> d!1598005 (validRegex!5967 call!346173)))

(assert (=> d!1598005 (= (findLongestMatchInner!1853 call!346173 lt!2049878 (+ (size!38064 Nil!57435) 1) call!346174 lt!2049672 (size!38064 lt!2049672)) lt!2050515)))

(declare-fun b!4965942 () Bool)

(assert (=> b!4965942 (= e!3104041 lt!2050527)))

(declare-fun b!4965943 () Bool)

(declare-fun Unit!148359 () Unit!148334)

(assert (=> b!4965943 (= e!3104039 Unit!148359)))

(declare-fun b!4965944 () Bool)

(assert (=> b!4965944 (= e!3104038 (tuple2!62159 Nil!57435 lt!2049672))))

(declare-fun bm!346285 () Bool)

(assert (=> bm!346285 (= call!346286 (isPrefix!5242 lt!2049672 lt!2049672))))

(declare-fun b!4965945 () Bool)

(declare-fun c!847282 () Bool)

(assert (=> b!4965945 (= c!847282 call!346283)))

(declare-fun lt!2050521 () Unit!148334)

(declare-fun lt!2050529 () Unit!148334)

(assert (=> b!4965945 (= lt!2050521 lt!2050529)))

(assert (=> b!4965945 (= lt!2049672 lt!2049878)))

(assert (=> b!4965945 (= lt!2050529 call!346285)))

(declare-fun lt!2050533 () Unit!148334)

(declare-fun lt!2050525 () Unit!148334)

(assert (=> b!4965945 (= lt!2050533 lt!2050525)))

(assert (=> b!4965945 call!346286))

(assert (=> b!4965945 (= lt!2050525 call!346288)))

(assert (=> b!4965945 (= e!3104037 e!3104035)))

(declare-fun b!4965946 () Bool)

(assert (=> b!4965946 (= e!3104035 (tuple2!62159 Nil!57435 lt!2049672))))

(assert (= (and d!1598005 c!847284) b!4965944))

(assert (= (and d!1598005 (not c!847284)) b!4965934))

(assert (= (and b!4965934 c!847285) b!4965945))

(assert (= (and b!4965934 (not c!847285)) b!4965941))

(assert (= (and b!4965945 c!847282) b!4965935))

(assert (= (and b!4965945 (not c!847282)) b!4965946))

(assert (= (and b!4965941 c!847280) b!4965940))

(assert (= (and b!4965941 (not c!847280)) b!4965943))

(assert (= (and b!4965941 c!847281) b!4965933))

(assert (= (and b!4965941 (not c!847281)) b!4965936))

(assert (= (and b!4965933 c!847283) b!4965939))

(assert (= (and b!4965933 (not c!847283)) b!4965942))

(assert (= (or b!4965933 b!4965936) bm!346284))

(assert (= (or b!4965933 b!4965936) bm!346279))

(assert (= (or b!4965933 b!4965936) bm!346280))

(assert (= (or b!4965933 b!4965936) bm!346281))

(assert (= (or b!4965945 b!4965940) bm!346278))

(assert (= (or b!4965945 b!4965940) bm!346282))

(assert (= (or b!4965945 b!4965941) bm!346283))

(assert (= (or b!4965945 b!4965940) bm!346285))

(assert (= (and d!1598005 res!2119765) b!4965938))

(assert (= (and b!4965938 (not res!2119764)) b!4965937))

(declare-fun m!5991434 () Bool)

(assert (=> b!4965941 m!5991434))

(declare-fun m!5991436 () Bool)

(assert (=> b!4965941 m!5991436))

(declare-fun m!5991438 () Bool)

(assert (=> b!4965941 m!5991438))

(declare-fun m!5991440 () Bool)

(assert (=> b!4965941 m!5991440))

(declare-fun m!5991442 () Bool)

(assert (=> b!4965941 m!5991442))

(declare-fun m!5991444 () Bool)

(assert (=> b!4965941 m!5991444))

(declare-fun m!5991446 () Bool)

(assert (=> b!4965941 m!5991446))

(assert (=> b!4965941 m!5988786))

(declare-fun m!5991448 () Bool)

(assert (=> b!4965941 m!5991448))

(assert (=> b!4965941 m!5991436))

(assert (=> b!4965941 m!5991440))

(declare-fun m!5991450 () Bool)

(assert (=> b!4965941 m!5991450))

(declare-fun m!5991452 () Bool)

(assert (=> b!4965941 m!5991452))

(declare-fun m!5991454 () Bool)

(assert (=> b!4965941 m!5991454))

(declare-fun m!5991456 () Bool)

(assert (=> b!4965941 m!5991456))

(assert (=> b!4965941 m!5991442))

(declare-fun m!5991458 () Bool)

(assert (=> b!4965941 m!5991458))

(declare-fun m!5991460 () Bool)

(assert (=> b!4965933 m!5991460))

(assert (=> bm!346285 m!5989064))

(assert (=> bm!346284 m!5991452))

(declare-fun m!5991462 () Bool)

(assert (=> d!1598005 m!5991462))

(declare-fun m!5991464 () Bool)

(assert (=> d!1598005 m!5991464))

(declare-fun m!5991466 () Bool)

(assert (=> d!1598005 m!5991466))

(assert (=> d!1598005 m!5991440))

(declare-fun m!5991468 () Bool)

(assert (=> d!1598005 m!5991468))

(declare-fun m!5991470 () Bool)

(assert (=> d!1598005 m!5991470))

(declare-fun m!5991472 () Bool)

(assert (=> d!1598005 m!5991472))

(assert (=> d!1598005 m!5991464))

(declare-fun m!5991474 () Bool)

(assert (=> d!1598005 m!5991474))

(declare-fun m!5991476 () Bool)

(assert (=> b!4965937 m!5991476))

(assert (=> b!4965937 m!5991434))

(declare-fun m!5991478 () Bool)

(assert (=> b!4965938 m!5991478))

(assert (=> bm!346278 m!5989082))

(assert (=> bm!346279 m!5991456))

(declare-fun m!5991480 () Bool)

(assert (=> bm!346283 m!5991480))

(declare-fun m!5991482 () Bool)

(assert (=> bm!346280 m!5991482))

(assert (=> bm!346281 m!5988786))

(declare-fun m!5991484 () Bool)

(assert (=> bm!346281 m!5991484))

(declare-fun m!5991486 () Bool)

(assert (=> bm!346282 m!5991486))

(assert (=> bm!346165 d!1598005))

(declare-fun b!4965947 () Bool)

(declare-fun e!3104043 () List!57559)

(assert (=> b!4965947 (= e!3104043 (_2!34378 (get!19935 lt!2049922)))))

(declare-fun b!4965949 () Bool)

(declare-fun res!2119766 () Bool)

(declare-fun e!3104042 () Bool)

(assert (=> b!4965949 (=> (not res!2119766) (not e!3104042))))

(declare-fun lt!2050539 () List!57559)

(assert (=> b!4965949 (= res!2119766 (= (size!38064 lt!2050539) (+ (size!38064 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049922))))) (size!38064 (_2!34378 (get!19935 lt!2049922))))))))

(declare-fun b!4965950 () Bool)

(assert (=> b!4965950 (= e!3104042 (or (not (= (_2!34378 (get!19935 lt!2049922)) Nil!57435)) (= lt!2050539 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049922)))))))))

(declare-fun b!4965948 () Bool)

(assert (=> b!4965948 (= e!3104043 (Cons!57435 (h!63883 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049922))))) (++!12530 (t!368225 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049922))))) (_2!34378 (get!19935 lt!2049922)))))))

(declare-fun d!1598007 () Bool)

(assert (=> d!1598007 e!3104042))

(declare-fun res!2119767 () Bool)

(assert (=> d!1598007 (=> (not res!2119767) (not e!3104042))))

(assert (=> d!1598007 (= res!2119767 (= (content!10180 lt!2050539) (set.union (content!10180 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049922))))) (content!10180 (_2!34378 (get!19935 lt!2049922))))))))

(assert (=> d!1598007 (= lt!2050539 e!3104043)))

(declare-fun c!847286 () Bool)

(assert (=> d!1598007 (= c!847286 (is-Nil!57435 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049922))))))))

(assert (=> d!1598007 (= (++!12530 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049922)))) (_2!34378 (get!19935 lt!2049922))) lt!2050539)))

(assert (= (and d!1598007 c!847286) b!4965947))

(assert (= (and d!1598007 (not c!847286)) b!4965948))

(assert (= (and d!1598007 res!2119767) b!4965949))

(assert (= (and b!4965949 res!2119766) b!4965950))

(declare-fun m!5991488 () Bool)

(assert (=> b!4965949 m!5991488))

(assert (=> b!4965949 m!5989202))

(declare-fun m!5991490 () Bool)

(assert (=> b!4965949 m!5991490))

(assert (=> b!4965949 m!5989212))

(declare-fun m!5991492 () Bool)

(assert (=> b!4965948 m!5991492))

(declare-fun m!5991494 () Bool)

(assert (=> d!1598007 m!5991494))

(assert (=> d!1598007 m!5989202))

(declare-fun m!5991496 () Bool)

(assert (=> d!1598007 m!5991496))

(declare-fun m!5991498 () Bool)

(assert (=> d!1598007 m!5991498))

(assert (=> b!4964703 d!1598007))

(assert (=> b!4964703 d!1597817))

(assert (=> b!4964703 d!1597819))

(assert (=> b!4964703 d!1597561))

(declare-fun d!1598009 () Bool)

(assert (=> d!1598009 (= (inv!75067 (xs!18469 (right!42223 (c!846918 totalInput!464)))) (<= (size!38064 (innerList!15231 (xs!18469 (right!42223 (c!846918 totalInput!464))))) 2147483647))))

(declare-fun bs!1183034 () Bool)

(assert (= bs!1183034 d!1598009))

(declare-fun m!5991500 () Bool)

(assert (=> bs!1183034 m!5991500))

(assert (=> b!4964963 d!1598009))

(declare-fun d!1598011 () Bool)

(assert (=> d!1598011 (= (inv!75056 (tag!9255 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (= (mod (str.len (value!268584 (tag!9255 (h!63885 (t!368227 (t!368227 rulesArg!259)))))) 2) 0))))

(assert (=> b!4964940 d!1598011))

(declare-fun d!1598013 () Bool)

(declare-fun res!2119768 () Bool)

(declare-fun e!3104044 () Bool)

(assert (=> d!1598013 (=> (not res!2119768) (not e!3104044))))

(assert (=> d!1598013 (= res!2119768 (semiInverseModEq!3698 (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259)))))))))

(assert (=> d!1598013 (= (inv!75061 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) e!3104044)))

(declare-fun b!4965951 () Bool)

(assert (=> b!4965951 (= e!3104044 (equivClasses!3546 (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259)))))))))

(assert (= (and d!1598013 res!2119768) b!4965951))

(declare-fun m!5991502 () Bool)

(assert (=> d!1598013 m!5991502))

(declare-fun m!5991504 () Bool)

(assert (=> b!4965951 m!5991504))

(assert (=> b!4964940 d!1598013))

(declare-fun d!1598015 () Bool)

(assert (=> d!1598015 (= (list!18359 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676)))) (list!18361 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676))))))))

(declare-fun bs!1183035 () Bool)

(assert (= bs!1183035 d!1598015))

(declare-fun m!5991506 () Bool)

(assert (=> bs!1183035 m!5991506))

(assert (=> bs!1182921 d!1598015))

(assert (=> bs!1182921 d!1597361))

(declare-fun d!1598017 () Bool)

(assert (=> d!1598017 (= (isEmpty!30923 (list!18359 (_1!34381 lt!2049676))) (is-Nil!57435 (list!18359 (_1!34381 lt!2049676))))))

(assert (=> d!1597225 d!1598017))

(assert (=> d!1597225 d!1597361))

(declare-fun d!1598019 () Bool)

(declare-fun lt!2050540 () Bool)

(assert (=> d!1598019 (= lt!2050540 (isEmpty!30923 (list!18361 (c!846918 (_1!34381 lt!2049676)))))))

(assert (=> d!1598019 (= lt!2050540 (= (size!38068 (c!846918 (_1!34381 lt!2049676))) 0))))

(assert (=> d!1598019 (= (isEmpty!30929 (c!846918 (_1!34381 lt!2049676))) lt!2050540)))

(declare-fun bs!1183036 () Bool)

(assert (= bs!1183036 d!1598019))

(assert (=> bs!1183036 m!5989564))

(assert (=> bs!1183036 m!5989564))

(declare-fun m!5991508 () Bool)

(assert (=> bs!1183036 m!5991508))

(assert (=> bs!1183036 m!5989544))

(assert (=> d!1597225 d!1598019))

(declare-fun d!1598021 () Bool)

(declare-fun c!847288 () Bool)

(assert (=> d!1598021 (= c!847288 (is-IntegerValue!26103 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))))))

(declare-fun e!3104047 () Bool)

(assert (=> d!1598021 (= (inv!21 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))) e!3104047)))

(declare-fun b!4965952 () Bool)

(assert (=> b!4965952 (= e!3104047 (inv!16 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))))))

(declare-fun b!4965953 () Bool)

(declare-fun e!3104045 () Bool)

(assert (=> b!4965953 (= e!3104045 (inv!15 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))))))

(declare-fun b!4965954 () Bool)

(declare-fun e!3104046 () Bool)

(assert (=> b!4965954 (= e!3104046 (inv!17 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))))))

(declare-fun b!4965955 () Bool)

(declare-fun res!2119769 () Bool)

(assert (=> b!4965955 (=> res!2119769 e!3104045)))

(assert (=> b!4965955 (= res!2119769 (not (is-IntegerValue!26105 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))))))))

(assert (=> b!4965955 (= e!3104046 e!3104045)))

(declare-fun b!4965956 () Bool)

(assert (=> b!4965956 (= e!3104047 e!3104046)))

(declare-fun c!847287 () Bool)

(assert (=> b!4965956 (= c!847287 (is-IntegerValue!26104 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))))))

(assert (= (and d!1598021 c!847288) b!4965952))

(assert (= (and d!1598021 (not c!847288)) b!4965956))

(assert (= (and b!4965956 c!847287) b!4965954))

(assert (= (and b!4965956 (not c!847287)) b!4965955))

(assert (= (and b!4965955 (not res!2119769)) b!4965953))

(declare-fun m!5991510 () Bool)

(assert (=> b!4965952 m!5991510))

(declare-fun m!5991512 () Bool)

(assert (=> b!4965953 m!5991512))

(declare-fun m!5991514 () Bool)

(assert (=> b!4965954 m!5991514))

(assert (=> tb!260239 d!1598021))

(declare-fun d!1598023 () Bool)

(assert (=> d!1598023 (= (list!18359 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))))) (list!18361 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))))))))

(declare-fun bs!1183037 () Bool)

(assert (= bs!1183037 d!1598023))

(declare-fun m!5991516 () Bool)

(assert (=> bs!1183037 m!5991516))

(assert (=> bs!1182919 d!1598023))

(assert (=> bs!1182919 d!1597775))

(declare-fun b!4965957 () Bool)

(declare-fun e!3104053 () Bool)

(declare-fun lt!2050541 () Bool)

(declare-fun call!346291 () Bool)

(assert (=> b!4965957 (= e!3104053 (= lt!2050541 call!346291))))

(declare-fun b!4965958 () Bool)

(declare-fun e!3104052 () Bool)

(assert (=> b!4965958 (= e!3104052 (not (= (head!10666 (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672))))) (c!846919 (derivativeStep!3920 (regex!8391 (h!63885 rulesArg!259)) (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))))))))))

(declare-fun b!4965959 () Bool)

(declare-fun res!2119770 () Bool)

(declare-fun e!3104054 () Bool)

(assert (=> b!4965959 (=> (not res!2119770) (not e!3104054))))

(assert (=> b!4965959 (= res!2119770 (isEmpty!30923 (tail!9799 (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))))))))

(declare-fun b!4965960 () Bool)

(declare-fun e!3104050 () Bool)

(assert (=> b!4965960 (= e!3104053 e!3104050)))

(declare-fun c!847289 () Bool)

(assert (=> b!4965960 (= c!847289 (is-EmptyLang!13624 (derivativeStep!3920 (regex!8391 (h!63885 rulesArg!259)) (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))))))))

(declare-fun b!4965961 () Bool)

(declare-fun res!2119772 () Bool)

(declare-fun e!3104049 () Bool)

(assert (=> b!4965961 (=> res!2119772 e!3104049)))

(assert (=> b!4965961 (= res!2119772 (not (is-ElementMatch!13624 (derivativeStep!3920 (regex!8391 (h!63885 rulesArg!259)) (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672))))))))))

(assert (=> b!4965961 (= e!3104050 e!3104049)))

(declare-fun b!4965962 () Bool)

(declare-fun e!3104048 () Bool)

(assert (=> b!4965962 (= e!3104048 e!3104052)))

(declare-fun res!2119776 () Bool)

(assert (=> b!4965962 (=> res!2119776 e!3104052)))

(assert (=> b!4965962 (= res!2119776 call!346291)))

(declare-fun b!4965963 () Bool)

(declare-fun e!3104051 () Bool)

(assert (=> b!4965963 (= e!3104051 (nullable!4618 (derivativeStep!3920 (regex!8391 (h!63885 rulesArg!259)) (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))))))))

(declare-fun d!1598025 () Bool)

(assert (=> d!1598025 e!3104053))

(declare-fun c!847291 () Bool)

(assert (=> d!1598025 (= c!847291 (is-EmptyExpr!13624 (derivativeStep!3920 (regex!8391 (h!63885 rulesArg!259)) (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))))))))

(assert (=> d!1598025 (= lt!2050541 e!3104051)))

(declare-fun c!847290 () Bool)

(assert (=> d!1598025 (= c!847290 (isEmpty!30923 (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672))))))))

(assert (=> d!1598025 (validRegex!5967 (derivativeStep!3920 (regex!8391 (h!63885 rulesArg!259)) (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672))))))))

(assert (=> d!1598025 (= (matchR!6634 (derivativeStep!3920 (regex!8391 (h!63885 rulesArg!259)) (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672))))) (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672))))) lt!2050541)))

(declare-fun b!4965964 () Bool)

(declare-fun res!2119771 () Bool)

(assert (=> b!4965964 (=> res!2119771 e!3104052)))

(assert (=> b!4965964 (= res!2119771 (not (isEmpty!30923 (tail!9799 (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672))))))))))

(declare-fun b!4965965 () Bool)

(assert (=> b!4965965 (= e!3104051 (matchR!6634 (derivativeStep!3920 (derivativeStep!3920 (regex!8391 (h!63885 rulesArg!259)) (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672))))) (head!10666 (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))))) (tail!9799 (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))))))))

(declare-fun b!4965966 () Bool)

(declare-fun res!2119775 () Bool)

(assert (=> b!4965966 (=> (not res!2119775) (not e!3104054))))

(assert (=> b!4965966 (= res!2119775 (not call!346291))))

(declare-fun b!4965967 () Bool)

(declare-fun res!2119773 () Bool)

(assert (=> b!4965967 (=> res!2119773 e!3104049)))

(assert (=> b!4965967 (= res!2119773 e!3104054)))

(declare-fun res!2119774 () Bool)

(assert (=> b!4965967 (=> (not res!2119774) (not e!3104054))))

(assert (=> b!4965967 (= res!2119774 lt!2050541)))

(declare-fun b!4965968 () Bool)

(assert (=> b!4965968 (= e!3104050 (not lt!2050541))))

(declare-fun bm!346286 () Bool)

(assert (=> bm!346286 (= call!346291 (isEmpty!30923 (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672))))))))

(declare-fun b!4965969 () Bool)

(assert (=> b!4965969 (= e!3104054 (= (head!10666 (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672))))) (c!846919 (derivativeStep!3920 (regex!8391 (h!63885 rulesArg!259)) (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672))))))))))

(declare-fun b!4965970 () Bool)

(assert (=> b!4965970 (= e!3104049 e!3104048)))

(declare-fun res!2119777 () Bool)

(assert (=> b!4965970 (=> (not res!2119777) (not e!3104048))))

(assert (=> b!4965970 (= res!2119777 (not lt!2050541))))

(assert (= (and d!1598025 c!847290) b!4965963))

(assert (= (and d!1598025 (not c!847290)) b!4965965))

(assert (= (and d!1598025 c!847291) b!4965957))

(assert (= (and d!1598025 (not c!847291)) b!4965960))

(assert (= (and b!4965960 c!847289) b!4965968))

(assert (= (and b!4965960 (not c!847289)) b!4965961))

(assert (= (and b!4965961 (not res!2119772)) b!4965967))

(assert (= (and b!4965967 res!2119774) b!4965966))

(assert (= (and b!4965966 res!2119775) b!4965959))

(assert (= (and b!4965959 res!2119770) b!4965969))

(assert (= (and b!4965967 (not res!2119773)) b!4965970))

(assert (= (and b!4965970 res!2119777) b!4965962))

(assert (= (and b!4965962 (not res!2119776)) b!4965964))

(assert (= (and b!4965964 (not res!2119771)) b!4965958))

(assert (= (or b!4965957 b!4965962 b!4965966) bm!346286))

(assert (=> b!4965964 m!5989024))

(declare-fun m!5991518 () Bool)

(assert (=> b!4965964 m!5991518))

(assert (=> b!4965964 m!5991518))

(declare-fun m!5991520 () Bool)

(assert (=> b!4965964 m!5991520))

(assert (=> d!1598025 m!5989024))

(assert (=> d!1598025 m!5989026))

(assert (=> d!1598025 m!5989034))

(declare-fun m!5991522 () Bool)

(assert (=> d!1598025 m!5991522))

(assert (=> b!4965963 m!5989034))

(declare-fun m!5991524 () Bool)

(assert (=> b!4965963 m!5991524))

(assert (=> bm!346286 m!5989024))

(assert (=> bm!346286 m!5989026))

(assert (=> b!4965969 m!5989024))

(declare-fun m!5991526 () Bool)

(assert (=> b!4965969 m!5991526))

(assert (=> b!4965958 m!5989024))

(assert (=> b!4965958 m!5991526))

(assert (=> b!4965965 m!5989024))

(assert (=> b!4965965 m!5991526))

(assert (=> b!4965965 m!5989034))

(assert (=> b!4965965 m!5991526))

(declare-fun m!5991528 () Bool)

(assert (=> b!4965965 m!5991528))

(assert (=> b!4965965 m!5989024))

(assert (=> b!4965965 m!5991518))

(assert (=> b!4965965 m!5991528))

(assert (=> b!4965965 m!5991518))

(declare-fun m!5991530 () Bool)

(assert (=> b!4965965 m!5991530))

(assert (=> b!4965959 m!5989024))

(assert (=> b!4965959 m!5991518))

(assert (=> b!4965959 m!5991518))

(assert (=> b!4965959 m!5991520))

(assert (=> b!4964566 d!1598025))

(declare-fun b!4965971 () Bool)

(declare-fun e!3104057 () Regex!13624)

(declare-fun call!346292 () Regex!13624)

(assert (=> b!4965971 (= e!3104057 (Concat!22326 call!346292 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun call!346294 () Regex!13624)

(declare-fun c!847293 () Bool)

(declare-fun bm!346287 () Bool)

(declare-fun c!847292 () Bool)

(assert (=> bm!346287 (= call!346294 (derivativeStep!3920 (ite c!847293 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259))) (ite c!847292 (reg!13953 (regex!8391 (h!63885 rulesArg!259))) (regOne!27760 (regex!8391 (h!63885 rulesArg!259))))) (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672))))))))

(declare-fun b!4965972 () Bool)

(declare-fun c!847295 () Bool)

(assert (=> b!4965972 (= c!847295 (nullable!4618 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))))

(declare-fun e!3104056 () Regex!13624)

(assert (=> b!4965972 (= e!3104057 e!3104056)))

(declare-fun bm!346288 () Bool)

(declare-fun call!346295 () Regex!13624)

(assert (=> bm!346288 (= call!346295 (derivativeStep!3920 (ite c!847293 (regOne!27761 (regex!8391 (h!63885 rulesArg!259))) (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))) (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672))))))))

(declare-fun bm!346289 () Bool)

(assert (=> bm!346289 (= call!346292 call!346294)))

(declare-fun bm!346290 () Bool)

(declare-fun call!346293 () Regex!13624)

(assert (=> bm!346290 (= call!346293 call!346292)))

(declare-fun b!4965973 () Bool)

(declare-fun e!3104059 () Regex!13624)

(assert (=> b!4965973 (= e!3104059 (Union!13624 call!346295 call!346294))))

(declare-fun b!4965975 () Bool)

(assert (=> b!4965975 (= c!847293 (is-Union!13624 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun e!3104058 () Regex!13624)

(assert (=> b!4965975 (= e!3104058 e!3104059)))

(declare-fun b!4965976 () Bool)

(assert (=> b!4965976 (= e!3104056 (Union!13624 (Concat!22326 call!346293 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))) EmptyLang!13624))))

(declare-fun b!4965977 () Bool)

(assert (=> b!4965977 (= e!3104056 (Union!13624 (Concat!22326 call!346293 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))) call!346295))))

(declare-fun b!4965978 () Bool)

(declare-fun e!3104055 () Regex!13624)

(assert (=> b!4965978 (= e!3104055 e!3104058)))

(declare-fun c!847294 () Bool)

(assert (=> b!4965978 (= c!847294 (is-ElementMatch!13624 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun b!4965979 () Bool)

(assert (=> b!4965979 (= e!3104058 (ite (= (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672)))) (c!846919 (regex!8391 (h!63885 rulesArg!259)))) EmptyExpr!13624 EmptyLang!13624))))

(declare-fun b!4965980 () Bool)

(assert (=> b!4965980 (= e!3104059 e!3104057)))

(assert (=> b!4965980 (= c!847292 (is-Star!13624 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun b!4965974 () Bool)

(assert (=> b!4965974 (= e!3104055 EmptyLang!13624)))

(declare-fun d!1598027 () Bool)

(declare-fun lt!2050542 () Regex!13624)

(assert (=> d!1598027 (validRegex!5967 lt!2050542)))

(assert (=> d!1598027 (= lt!2050542 e!3104055)))

(declare-fun c!847296 () Bool)

(assert (=> d!1598027 (= c!847296 (or (is-EmptyExpr!13624 (regex!8391 (h!63885 rulesArg!259))) (is-EmptyLang!13624 (regex!8391 (h!63885 rulesArg!259)))))))

(assert (=> d!1598027 (validRegex!5967 (regex!8391 (h!63885 rulesArg!259)))))

(assert (=> d!1598027 (= (derivativeStep!3920 (regex!8391 (h!63885 rulesArg!259)) (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 rulesArg!259)) Nil!57435 (size!38064 Nil!57435) lt!2049672 lt!2049672 (size!38064 lt!2049672))))) lt!2050542)))

(assert (= (and d!1598027 c!847296) b!4965974))

(assert (= (and d!1598027 (not c!847296)) b!4965978))

(assert (= (and b!4965978 c!847294) b!4965979))

(assert (= (and b!4965978 (not c!847294)) b!4965975))

(assert (= (and b!4965975 c!847293) b!4965973))

(assert (= (and b!4965975 (not c!847293)) b!4965980))

(assert (= (and b!4965980 c!847292) b!4965971))

(assert (= (and b!4965980 (not c!847292)) b!4965972))

(assert (= (and b!4965972 c!847295) b!4965977))

(assert (= (and b!4965972 (not c!847295)) b!4965976))

(assert (= (or b!4965977 b!4965976) bm!346290))

(assert (= (or b!4965971 bm!346290) bm!346289))

(assert (= (or b!4965973 bm!346289) bm!346287))

(assert (= (or b!4965973 b!4965977) bm!346288))

(assert (=> bm!346287 m!5989032))

(declare-fun m!5991532 () Bool)

(assert (=> bm!346287 m!5991532))

(assert (=> b!4965972 m!5990276))

(assert (=> bm!346288 m!5989032))

(declare-fun m!5991534 () Bool)

(assert (=> bm!346288 m!5991534))

(declare-fun m!5991536 () Bool)

(assert (=> d!1598027 m!5991536))

(assert (=> d!1598027 m!5989028))

(assert (=> b!4964566 d!1598027))

(assert (=> b!4964566 d!1597769))

(assert (=> b!4964566 d!1597931))

(declare-fun d!1598029 () Bool)

(declare-fun lt!2050543 () Int)

(assert (=> d!1598029 (>= lt!2050543 0)))

(declare-fun e!3104060 () Int)

(assert (=> d!1598029 (= lt!2050543 e!3104060)))

(declare-fun c!847297 () Bool)

(assert (=> d!1598029 (= c!847297 (is-Nil!57435 (_2!34378 (get!19935 lt!2049922))))))

(assert (=> d!1598029 (= (size!38064 (_2!34378 (get!19935 lt!2049922))) lt!2050543)))

(declare-fun b!4965981 () Bool)

(assert (=> b!4965981 (= e!3104060 0)))

(declare-fun b!4965982 () Bool)

(assert (=> b!4965982 (= e!3104060 (+ 1 (size!38064 (t!368225 (_2!34378 (get!19935 lt!2049922))))))))

(assert (= (and d!1598029 c!847297) b!4965981))

(assert (= (and d!1598029 (not c!847297)) b!4965982))

(declare-fun m!5991538 () Bool)

(assert (=> b!4965982 m!5991538))

(assert (=> b!4964695 d!1598029))

(assert (=> b!4964695 d!1597561))

(assert (=> b!4964695 d!1597239))

(declare-fun d!1598031 () Bool)

(declare-fun lt!2050544 () Int)

(assert (=> d!1598031 (>= lt!2050544 0)))

(declare-fun e!3104061 () Int)

(assert (=> d!1598031 (= lt!2050544 e!3104061)))

(declare-fun c!847298 () Bool)

(assert (=> d!1598031 (= c!847298 (is-Nil!57435 (_2!34378 (get!19935 lt!2049928))))))

(assert (=> d!1598031 (= (size!38064 (_2!34378 (get!19935 lt!2049928))) lt!2050544)))

(declare-fun b!4965983 () Bool)

(assert (=> b!4965983 (= e!3104061 0)))

(declare-fun b!4965984 () Bool)

(assert (=> b!4965984 (= e!3104061 (+ 1 (size!38064 (t!368225 (_2!34378 (get!19935 lt!2049928))))))))

(assert (= (and d!1598031 c!847298) b!4965983))

(assert (= (and d!1598031 (not c!847298)) b!4965984))

(declare-fun m!5991540 () Bool)

(assert (=> b!4965984 m!5991540))

(assert (=> b!4964723 d!1598031))

(assert (=> b!4964723 d!1597573))

(assert (=> b!4964723 d!1597537))

(assert (=> b!4964737 d!1597659))

(assert (=> b!4964711 d!1597619))

(assert (=> b!4964711 d!1597621))

(declare-fun d!1598033 () Bool)

(declare-fun lt!2050545 () Int)

(assert (=> d!1598033 (>= lt!2050545 0)))

(declare-fun e!3104062 () Int)

(assert (=> d!1598033 (= lt!2050545 e!3104062)))

(declare-fun c!847299 () Bool)

(assert (=> d!1598033 (= c!847299 (is-Nil!57435 (t!368225 lt!2049571)))))

(assert (=> d!1598033 (= (size!38064 (t!368225 lt!2049571)) lt!2050545)))

(declare-fun b!4965985 () Bool)

(assert (=> b!4965985 (= e!3104062 0)))

(declare-fun b!4965986 () Bool)

(assert (=> b!4965986 (= e!3104062 (+ 1 (size!38064 (t!368225 (t!368225 lt!2049571)))))))

(assert (= (and d!1598033 c!847299) b!4965985))

(assert (= (and d!1598033 (not c!847299)) b!4965986))

(declare-fun m!5991542 () Bool)

(assert (=> b!4965986 m!5991542))

(assert (=> b!4964694 d!1598033))

(declare-fun b!4965987 () Bool)

(declare-fun e!3104068 () Bool)

(declare-fun lt!2050546 () Bool)

(declare-fun call!346296 () Bool)

(assert (=> b!4965987 (= e!3104068 (= lt!2050546 call!346296))))

(declare-fun b!4965988 () Bool)

(declare-fun e!3104067 () Bool)

(assert (=> b!4965988 (= e!3104067 (not (= (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) lt!2049946 lt!2049946 (size!38064 lt!2049946)))) (c!846919 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))))))

(declare-fun b!4965989 () Bool)

(declare-fun res!2119778 () Bool)

(declare-fun e!3104069 () Bool)

(assert (=> b!4965989 (=> (not res!2119778) (not e!3104069))))

(assert (=> b!4965989 (= res!2119778 (isEmpty!30923 (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) lt!2049946 lt!2049946 (size!38064 lt!2049946))))))))

(declare-fun b!4965990 () Bool)

(declare-fun e!3104065 () Bool)

(assert (=> b!4965990 (= e!3104068 e!3104065)))

(declare-fun c!847300 () Bool)

(assert (=> b!4965990 (= c!847300 (is-EmptyLang!13624 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))))

(declare-fun b!4965991 () Bool)

(declare-fun res!2119780 () Bool)

(declare-fun e!3104064 () Bool)

(assert (=> b!4965991 (=> res!2119780 e!3104064)))

(assert (=> b!4965991 (= res!2119780 (not (is-ElementMatch!13624 (regex!8391 (h!63885 (t!368227 rulesArg!259))))))))

(assert (=> b!4965991 (= e!3104065 e!3104064)))

(declare-fun b!4965992 () Bool)

(declare-fun e!3104063 () Bool)

(assert (=> b!4965992 (= e!3104063 e!3104067)))

(declare-fun res!2119784 () Bool)

(assert (=> b!4965992 (=> res!2119784 e!3104067)))

(assert (=> b!4965992 (= res!2119784 call!346296)))

(declare-fun b!4965993 () Bool)

(declare-fun e!3104066 () Bool)

(assert (=> b!4965993 (= e!3104066 (nullable!4618 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))))

(declare-fun d!1598035 () Bool)

(assert (=> d!1598035 e!3104068))

(declare-fun c!847302 () Bool)

(assert (=> d!1598035 (= c!847302 (is-EmptyExpr!13624 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))))

(assert (=> d!1598035 (= lt!2050546 e!3104066)))

(declare-fun c!847301 () Bool)

(assert (=> d!1598035 (= c!847301 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) lt!2049946 lt!2049946 (size!38064 lt!2049946)))))))

(assert (=> d!1598035 (validRegex!5967 (regex!8391 (h!63885 (t!368227 rulesArg!259))))))

(assert (=> d!1598035 (= (matchR!6634 (regex!8391 (h!63885 (t!368227 rulesArg!259))) (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) lt!2049946 lt!2049946 (size!38064 lt!2049946)))) lt!2050546)))

(declare-fun b!4965994 () Bool)

(declare-fun res!2119779 () Bool)

(assert (=> b!4965994 (=> res!2119779 e!3104067)))

(assert (=> b!4965994 (= res!2119779 (not (isEmpty!30923 (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) lt!2049946 lt!2049946 (size!38064 lt!2049946)))))))))

(declare-fun b!4965995 () Bool)

(assert (=> b!4965995 (= e!3104066 (matchR!6634 (derivativeStep!3920 (regex!8391 (h!63885 (t!368227 rulesArg!259))) (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) lt!2049946 lt!2049946 (size!38064 lt!2049946))))) (tail!9799 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) lt!2049946 lt!2049946 (size!38064 lt!2049946))))))))

(declare-fun b!4965996 () Bool)

(declare-fun res!2119783 () Bool)

(assert (=> b!4965996 (=> (not res!2119783) (not e!3104069))))

(assert (=> b!4965996 (= res!2119783 (not call!346296))))

(declare-fun b!4965997 () Bool)

(declare-fun res!2119781 () Bool)

(assert (=> b!4965997 (=> res!2119781 e!3104064)))

(assert (=> b!4965997 (= res!2119781 e!3104069)))

(declare-fun res!2119782 () Bool)

(assert (=> b!4965997 (=> (not res!2119782) (not e!3104069))))

(assert (=> b!4965997 (= res!2119782 lt!2050546)))

(declare-fun b!4965998 () Bool)

(assert (=> b!4965998 (= e!3104065 (not lt!2050546))))

(declare-fun bm!346291 () Bool)

(assert (=> bm!346291 (= call!346296 (isEmpty!30923 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) lt!2049946 lt!2049946 (size!38064 lt!2049946)))))))

(declare-fun b!4965999 () Bool)

(assert (=> b!4965999 (= e!3104069 (= (head!10666 (_1!34382 (findLongestMatchInner!1853 (regex!8391 (h!63885 (t!368227 rulesArg!259))) Nil!57435 (size!38064 Nil!57435) lt!2049946 lt!2049946 (size!38064 lt!2049946)))) (c!846919 (regex!8391 (h!63885 (t!368227 rulesArg!259))))))))

(declare-fun b!4966000 () Bool)

(assert (=> b!4966000 (= e!3104064 e!3104063)))

(declare-fun res!2119785 () Bool)

(assert (=> b!4966000 (=> (not res!2119785) (not e!3104063))))

(assert (=> b!4966000 (= res!2119785 (not lt!2050546))))

(assert (= (and d!1598035 c!847301) b!4965993))

(assert (= (and d!1598035 (not c!847301)) b!4965995))

(assert (= (and d!1598035 c!847302) b!4965987))

(assert (= (and d!1598035 (not c!847302)) b!4965990))

(assert (= (and b!4965990 c!847300) b!4965998))

(assert (= (and b!4965990 (not c!847300)) b!4965991))

(assert (= (and b!4965991 (not res!2119780)) b!4965997))

(assert (= (and b!4965997 res!2119782) b!4965996))

(assert (= (and b!4965996 res!2119783) b!4965989))

(assert (= (and b!4965989 res!2119778) b!4965999))

(assert (= (and b!4965997 (not res!2119781)) b!4966000))

(assert (= (and b!4966000 res!2119785) b!4965992))

(assert (= (and b!4965992 (not res!2119784)) b!4965994))

(assert (= (and b!4965994 (not res!2119779)) b!4965988))

(assert (= (or b!4965987 b!4965992 b!4965996) bm!346291))

(declare-fun m!5991544 () Bool)

(assert (=> b!4965994 m!5991544))

(assert (=> b!4965994 m!5991544))

(declare-fun m!5991546 () Bool)

(assert (=> b!4965994 m!5991546))

(assert (=> d!1598035 m!5989350))

(assert (=> d!1598035 m!5990678))

(assert (=> b!4965993 m!5990752))

(assert (=> bm!346291 m!5989350))

(declare-fun m!5991548 () Bool)

(assert (=> b!4965999 m!5991548))

(assert (=> b!4965988 m!5991548))

(assert (=> b!4965995 m!5991548))

(assert (=> b!4965995 m!5991548))

(declare-fun m!5991550 () Bool)

(assert (=> b!4965995 m!5991550))

(assert (=> b!4965995 m!5991544))

(assert (=> b!4965995 m!5991550))

(assert (=> b!4965995 m!5991544))

(declare-fun m!5991552 () Bool)

(assert (=> b!4965995 m!5991552))

(assert (=> b!4965989 m!5991544))

(assert (=> b!4965989 m!5991544))

(assert (=> b!4965989 m!5991546))

(assert (=> b!4964762 d!1598035))

(assert (=> b!4964762 d!1597739))

(assert (=> b!4964762 d!1597201))

(assert (=> b!4964762 d!1597733))

(declare-fun d!1598037 () Bool)

(declare-fun e!3104070 () Bool)

(assert (=> d!1598037 e!3104070))

(declare-fun res!2119786 () Bool)

(assert (=> d!1598037 (=> (not res!2119786) (not e!3104070))))

(declare-fun lt!2050547 () BalanceConc!29716)

(assert (=> d!1598037 (= res!2119786 (= (list!18359 lt!2050547) (originalCharacters!8670 (_1!34378 (get!19935 lt!2049691)))))))

(assert (=> d!1598037 (= lt!2050547 (BalanceConc!29717 (fromList!942 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049691))))))))

(assert (=> d!1598037 (= (fromListB!2729 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049691)))) lt!2050547)))

(declare-fun b!4966001 () Bool)

(assert (=> b!4966001 (= e!3104070 (isBalanced!4200 (fromList!942 (originalCharacters!8670 (_1!34378 (get!19935 lt!2049691))))))))

(assert (= (and d!1598037 res!2119786) b!4966001))

(declare-fun m!5991554 () Bool)

(assert (=> d!1598037 m!5991554))

(declare-fun m!5991556 () Bool)

(assert (=> d!1598037 m!5991556))

(assert (=> b!4966001 m!5991556))

(assert (=> b!4966001 m!5991556))

(declare-fun m!5991558 () Bool)

(assert (=> b!4966001 m!5991558))

(assert (=> d!1597249 d!1598037))

(declare-fun b!4966002 () Bool)

(declare-fun e!3104072 () List!57559)

(assert (=> b!4966002 (= e!3104072 (_2!34378 (get!19935 lt!2049912)))))

(declare-fun b!4966004 () Bool)

(declare-fun res!2119787 () Bool)

(declare-fun e!3104071 () Bool)

(assert (=> b!4966004 (=> (not res!2119787) (not e!3104071))))

(declare-fun lt!2050548 () List!57559)

(assert (=> b!4966004 (= res!2119787 (= (size!38064 lt!2050548) (+ (size!38064 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049912))))) (size!38064 (_2!34378 (get!19935 lt!2049912))))))))

(declare-fun b!4966005 () Bool)

(assert (=> b!4966005 (= e!3104071 (or (not (= (_2!34378 (get!19935 lt!2049912)) Nil!57435)) (= lt!2050548 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049912)))))))))

(declare-fun b!4966003 () Bool)

(assert (=> b!4966003 (= e!3104072 (Cons!57435 (h!63883 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049912))))) (++!12530 (t!368225 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049912))))) (_2!34378 (get!19935 lt!2049912)))))))

(declare-fun d!1598039 () Bool)

(assert (=> d!1598039 e!3104071))

(declare-fun res!2119788 () Bool)

(assert (=> d!1598039 (=> (not res!2119788) (not e!3104071))))

(assert (=> d!1598039 (= res!2119788 (= (content!10180 lt!2050548) (set.union (content!10180 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049912))))) (content!10180 (_2!34378 (get!19935 lt!2049912))))))))

(assert (=> d!1598039 (= lt!2050548 e!3104072)))

(declare-fun c!847303 () Bool)

(assert (=> d!1598039 (= c!847303 (is-Nil!57435 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049912))))))))

(assert (=> d!1598039 (= (++!12530 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049912)))) (_2!34378 (get!19935 lt!2049912))) lt!2050548)))

(assert (= (and d!1598039 c!847303) b!4966002))

(assert (= (and d!1598039 (not c!847303)) b!4966003))

(assert (= (and d!1598039 res!2119788) b!4966004))

(assert (= (and b!4966004 res!2119787) b!4966005))

(declare-fun m!5991560 () Bool)

(assert (=> b!4966004 m!5991560))

(assert (=> b!4966004 m!5989154))

(declare-fun m!5991562 () Bool)

(assert (=> b!4966004 m!5991562))

(assert (=> b!4966004 m!5989146))

(declare-fun m!5991564 () Bool)

(assert (=> b!4966003 m!5991564))

(declare-fun m!5991566 () Bool)

(assert (=> d!1598039 m!5991566))

(assert (=> d!1598039 m!5989154))

(declare-fun m!5991568 () Bool)

(assert (=> d!1598039 m!5991568))

(declare-fun m!5991570 () Bool)

(assert (=> d!1598039 m!5991570))

(assert (=> b!4964676 d!1598039))

(declare-fun d!1598041 () Bool)

(assert (=> d!1598041 (= (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049912)))) (list!18361 (c!846918 (charsOf!5435 (_1!34378 (get!19935 lt!2049912))))))))

(declare-fun bs!1183038 () Bool)

(assert (= bs!1183038 d!1598041))

(declare-fun m!5991572 () Bool)

(assert (=> bs!1183038 m!5991572))

(assert (=> b!4964676 d!1598041))

(declare-fun d!1598043 () Bool)

(declare-fun lt!2050549 () BalanceConc!29716)

(assert (=> d!1598043 (= (list!18359 lt!2050549) (originalCharacters!8670 (_1!34378 (get!19935 lt!2049912))))))

(assert (=> d!1598043 (= lt!2050549 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049912))))) (value!268585 (_1!34378 (get!19935 lt!2049912)))))))

(assert (=> d!1598043 (= (charsOf!5435 (_1!34378 (get!19935 lt!2049912))) lt!2050549)))

(declare-fun b_lambda!196657 () Bool)

(assert (=> (not b_lambda!196657) (not d!1598043)))

(declare-fun t!368389 () Bool)

(declare-fun tb!260377 () Bool)

(assert (=> (and b!4964142 (= (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049912)))))) t!368389) tb!260377))

(declare-fun b!4966006 () Bool)

(declare-fun e!3104073 () Bool)

(declare-fun tp!1392834 () Bool)

(assert (=> b!4966006 (= e!3104073 (and (inv!75059 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049912))))) (value!268585 (_1!34378 (get!19935 lt!2049912)))))) tp!1392834))))

(declare-fun result!325472 () Bool)

(assert (=> tb!260377 (= result!325472 (and (inv!75060 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049912))))) (value!268585 (_1!34378 (get!19935 lt!2049912))))) e!3104073))))

(assert (= tb!260377 b!4966006))

(declare-fun m!5991574 () Bool)

(assert (=> b!4966006 m!5991574))

(declare-fun m!5991576 () Bool)

(assert (=> tb!260377 m!5991576))

(assert (=> d!1598043 t!368389))

(declare-fun b_and!347899 () Bool)

(assert (= b_and!347893 (and (=> t!368389 result!325472) b_and!347899)))

(declare-fun tb!260379 () Bool)

(declare-fun t!368391 () Bool)

(assert (=> (and b!4964367 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049912)))))) t!368391) tb!260379))

(declare-fun result!325474 () Bool)

(assert (= result!325474 result!325472))

(assert (=> d!1598043 t!368391))

(declare-fun b_and!347901 () Bool)

(assert (= b_and!347895 (and (=> t!368391 result!325474) b_and!347901)))

(declare-fun tb!260381 () Bool)

(declare-fun t!368393 () Bool)

(assert (=> (and b!4964941 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049912)))))) t!368393) tb!260381))

(declare-fun result!325476 () Bool)

(assert (= result!325476 result!325472))

(assert (=> d!1598043 t!368393))

(declare-fun b_and!347903 () Bool)

(assert (= b_and!347897 (and (=> t!368393 result!325476) b_and!347903)))

(declare-fun m!5991578 () Bool)

(assert (=> d!1598043 m!5991578))

(declare-fun m!5991580 () Bool)

(assert (=> d!1598043 m!5991580))

(assert (=> b!4964676 d!1598043))

(assert (=> b!4964676 d!1597665))

(declare-fun d!1598045 () Bool)

(assert (=> d!1598045 (= (list!18359 (_2!34381 lt!2049918)) (list!18361 (c!846918 (_2!34381 lt!2049918))))))

(declare-fun bs!1183039 () Bool)

(assert (= bs!1183039 d!1598045))

(declare-fun m!5991582 () Bool)

(assert (=> bs!1183039 m!5991582))

(assert (=> d!1597229 d!1598045))

(assert (=> d!1597229 d!1597117))

(assert (=> d!1597229 d!1597685))

(declare-fun d!1598047 () Bool)

(declare-fun res!2119791 () tuple2!62156)

(assert (=> d!1598047 (= (tuple2!62159 (list!18359 (_1!34381 res!2119791)) (list!18359 (_2!34381 res!2119791))) (findLongestMatch!1695 (regex!8391 (h!63885 rulesArg!259)) (list!18359 input!1342)))))

(declare-fun e!3104079 () Bool)

(declare-fun e!3104078 () Bool)

(assert (=> d!1598047 (and (inv!75060 (_1!34381 res!2119791)) e!3104079 (inv!75060 (_2!34381 res!2119791)) e!3104078)))

(assert (=> d!1598047 (= (choose!36653 (regex!8391 (h!63885 rulesArg!259)) input!1342 totalInput!464) res!2119791)))

(declare-fun b!4966011 () Bool)

(declare-fun tp!1392839 () Bool)

(assert (=> b!4966011 (= e!3104079 (and (inv!75059 (c!846918 (_1!34381 res!2119791))) tp!1392839))))

(declare-fun b!4966012 () Bool)

(declare-fun tp!1392840 () Bool)

(assert (=> b!4966012 (= e!3104078 (and (inv!75059 (c!846918 (_2!34381 res!2119791))) tp!1392840))))

(assert (= d!1598047 b!4966011))

(assert (= d!1598047 b!4966012))

(declare-fun m!5991584 () Bool)

(assert (=> d!1598047 m!5991584))

(assert (=> d!1598047 m!5988632))

(assert (=> d!1598047 m!5989142))

(assert (=> d!1598047 m!5988632))

(declare-fun m!5991586 () Bool)

(assert (=> d!1598047 m!5991586))

(declare-fun m!5991588 () Bool)

(assert (=> d!1598047 m!5991588))

(declare-fun m!5991590 () Bool)

(assert (=> d!1598047 m!5991590))

(declare-fun m!5991592 () Bool)

(assert (=> b!4966011 m!5991592))

(declare-fun m!5991594 () Bool)

(assert (=> b!4966012 m!5991594))

(assert (=> d!1597229 d!1598047))

(declare-fun d!1598049 () Bool)

(assert (=> d!1598049 (= (list!18359 (_1!34381 lt!2049918)) (list!18361 (c!846918 (_1!34381 lt!2049918))))))

(declare-fun bs!1183040 () Bool)

(assert (= bs!1183040 d!1598049))

(declare-fun m!5991596 () Bool)

(assert (=> bs!1183040 m!5991596))

(assert (=> d!1597229 d!1598049))

(assert (=> d!1597229 d!1597691))

(assert (=> b!4964715 d!1597755))

(assert (=> b!4964715 d!1597757))

(assert (=> b!4964797 d!1597777))

(assert (=> b!4964797 d!1597705))

(assert (=> b!4964788 d!1597581))

(assert (=> b!4964788 d!1597201))

(declare-fun bs!1183041 () Bool)

(declare-fun d!1598051 () Bool)

(assert (= bs!1183041 (and d!1598051 b!4965718)))

(declare-fun lambda!247346 () Int)

(assert (=> bs!1183041 (= (and (= (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259)))))) (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))))) (= lambda!247346 lambda!247344))))

(declare-fun bs!1183042 () Bool)

(assert (= bs!1183042 (and d!1598051 d!1597583)))

(assert (=> bs!1183042 (= lambda!247346 lambda!247340)))

(declare-fun bs!1183043 () Bool)

(assert (= bs!1183043 (and d!1598051 d!1597259)))

(assert (=> bs!1183043 (= lambda!247346 lambda!247317)))

(declare-fun bs!1183044 () Bool)

(assert (= bs!1183044 (and d!1598051 b!4964280)))

(assert (=> bs!1183044 (= lambda!247346 lambda!247309)))

(declare-fun bs!1183045 () Bool)

(assert (= bs!1183045 (and d!1598051 d!1597539)))

(assert (=> bs!1183045 (= lambda!247346 lambda!247339)))

(declare-fun bs!1183046 () Bool)

(assert (= bs!1183046 (and d!1598051 d!1597673)))

(assert (=> bs!1183046 (= (and (= (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))))) (= lambda!247346 lambda!247342))))

(declare-fun bs!1183047 () Bool)

(assert (= bs!1183047 (and d!1598051 b!4964759)))

(assert (=> bs!1183047 (= (and (= (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))))) (= lambda!247346 lambda!247318))))

(declare-fun b!4966013 () Bool)

(declare-fun e!3104080 () Bool)

(assert (=> b!4966013 (= e!3104080 true)))

(assert (=> d!1598051 e!3104080))

(assert (= d!1598051 b!4966013))

(assert (=> b!4966013 (< (dynLambda!23142 order!26187 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) (dynLambda!23143 order!26189 lambda!247346))))

(assert (=> b!4966013 (< (dynLambda!23144 order!26191 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) (dynLambda!23143 order!26189 lambda!247346))))

(assert (=> d!1598051 (= (list!18359 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2049975))))) (list!18359 (seqFromList!6034 (_1!34382 lt!2049975))))))

(declare-fun lt!2050550 () Unit!148334)

(assert (=> d!1598051 (= lt!2050550 (ForallOf!1225 lambda!247346 (seqFromList!6034 (_1!34382 lt!2049975))))))

(assert (=> d!1598051 (= (lemmaSemiInverse!2600 (transformation!8391 (h!63885 rulesArg!259)) (seqFromList!6034 (_1!34382 lt!2049975))) lt!2050550)))

(declare-fun b_lambda!196659 () Bool)

(assert (=> (not b_lambda!196659) (not d!1598051)))

(declare-fun t!368395 () Bool)

(declare-fun tb!260383 () Bool)

(assert (=> (and b!4964142 (= (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) t!368395) tb!260383))

(declare-fun tp!1392841 () Bool)

(declare-fun e!3104081 () Bool)

(declare-fun b!4966014 () Bool)

(assert (=> b!4966014 (= e!3104081 (and (inv!75059 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2049975)))))) tp!1392841))))

(declare-fun result!325478 () Bool)

(assert (=> tb!260383 (= result!325478 (and (inv!75060 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2049975))))) e!3104081))))

(assert (= tb!260383 b!4966014))

(declare-fun m!5991598 () Bool)

(assert (=> b!4966014 m!5991598))

(declare-fun m!5991600 () Bool)

(assert (=> tb!260383 m!5991600))

(assert (=> d!1598051 t!368395))

(declare-fun b_and!347905 () Bool)

(assert (= b_and!347899 (and (=> t!368395 result!325478) b_and!347905)))

(declare-fun t!368397 () Bool)

(declare-fun tb!260385 () Bool)

(assert (=> (and b!4964367 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) t!368397) tb!260385))

(declare-fun result!325480 () Bool)

(assert (= result!325480 result!325478))

(assert (=> d!1598051 t!368397))

(declare-fun b_and!347907 () Bool)

(assert (= b_and!347901 (and (=> t!368397 result!325480) b_and!347907)))

(declare-fun t!368399 () Bool)

(declare-fun tb!260387 () Bool)

(assert (=> (and b!4964941 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) t!368399) tb!260387))

(declare-fun result!325482 () Bool)

(assert (= result!325482 result!325478))

(assert (=> d!1598051 t!368399))

(declare-fun b_and!347909 () Bool)

(assert (= b_and!347903 (and (=> t!368399 result!325482) b_and!347909)))

(declare-fun b_lambda!196661 () Bool)

(assert (=> (not b_lambda!196661) (not d!1598051)))

(declare-fun t!368401 () Bool)

(declare-fun tb!260389 () Bool)

(assert (=> (and b!4964142 (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) t!368401) tb!260389))

(declare-fun result!325484 () Bool)

(assert (=> tb!260389 (= result!325484 (inv!21 (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2049975)))))))

(declare-fun m!5991602 () Bool)

(assert (=> tb!260389 m!5991602))

(assert (=> d!1598051 t!368401))

(declare-fun b_and!347911 () Bool)

(assert (= b_and!347875 (and (=> t!368401 result!325484) b_and!347911)))

(declare-fun t!368403 () Bool)

(declare-fun tb!260391 () Bool)

(assert (=> (and b!4964367 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) t!368403) tb!260391))

(declare-fun result!325486 () Bool)

(assert (= result!325486 result!325484))

(assert (=> d!1598051 t!368403))

(declare-fun b_and!347913 () Bool)

(assert (= b_and!347877 (and (=> t!368403 result!325486) b_and!347913)))

(declare-fun t!368405 () Bool)

(declare-fun tb!260393 () Bool)

(assert (=> (and b!4964941 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) t!368405) tb!260393))

(declare-fun result!325488 () Bool)

(assert (= result!325488 result!325484))

(assert (=> d!1598051 t!368405))

(declare-fun b_and!347915 () Bool)

(assert (= b_and!347879 (and (=> t!368405 result!325488) b_and!347915)))

(assert (=> d!1598051 m!5989402))

(declare-fun m!5991604 () Bool)

(assert (=> d!1598051 m!5991604))

(assert (=> d!1598051 m!5989402))

(declare-fun m!5991606 () Bool)

(assert (=> d!1598051 m!5991606))

(assert (=> d!1598051 m!5989402))

(declare-fun m!5991608 () Bool)

(assert (=> d!1598051 m!5991608))

(declare-fun m!5991610 () Bool)

(assert (=> d!1598051 m!5991610))

(declare-fun m!5991612 () Bool)

(assert (=> d!1598051 m!5991612))

(assert (=> d!1598051 m!5991604))

(assert (=> d!1598051 m!5991610))

(assert (=> b!4964788 d!1598051))

(assert (=> b!4964788 d!1597239))

(declare-fun d!1598053 () Bool)

(assert (=> d!1598053 (= (seqFromList!6034 (_1!34382 lt!2049975)) (fromListB!2729 (_1!34382 lt!2049975)))))

(declare-fun bs!1183048 () Bool)

(assert (= bs!1183048 d!1598053))

(declare-fun m!5991614 () Bool)

(assert (=> bs!1183048 m!5991614))

(assert (=> b!4964788 d!1598053))

(assert (=> b!4964788 d!1597589))

(assert (=> b!4964788 d!1597591))

(declare-fun d!1598055 () Bool)

(assert (=> d!1598055 (= (apply!13902 (transformation!8391 (h!63885 rulesArg!259)) (seqFromList!6034 (_1!34382 lt!2049975))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (_1!34382 lt!2049975))))))

(declare-fun b_lambda!196663 () Bool)

(assert (=> (not b_lambda!196663) (not d!1598055)))

(assert (=> d!1598055 t!368401))

(declare-fun b_and!347917 () Bool)

(assert (= b_and!347911 (and (=> t!368401 result!325484) b_and!347917)))

(assert (=> d!1598055 t!368403))

(declare-fun b_and!347919 () Bool)

(assert (= b_and!347913 (and (=> t!368403 result!325486) b_and!347919)))

(assert (=> d!1598055 t!368405))

(declare-fun b_and!347921 () Bool)

(assert (= b_and!347915 (and (=> t!368405 result!325488) b_and!347921)))

(assert (=> d!1598055 m!5989402))

(assert (=> d!1598055 m!5991604))

(assert (=> b!4964788 d!1598055))

(declare-fun d!1598057 () Bool)

(declare-fun lt!2050551 () Int)

(assert (=> d!1598057 (= lt!2050551 (size!38064 (list!18359 (seqFromList!6034 (_1!34382 lt!2049975)))))))

(assert (=> d!1598057 (= lt!2050551 (size!38068 (c!846918 (seqFromList!6034 (_1!34382 lt!2049975)))))))

(assert (=> d!1598057 (= (size!38065 (seqFromList!6034 (_1!34382 lt!2049975))) lt!2050551)))

(declare-fun bs!1183049 () Bool)

(assert (= bs!1183049 d!1598057))

(assert (=> bs!1183049 m!5989402))

(assert (=> bs!1183049 m!5991608))

(assert (=> bs!1183049 m!5991608))

(declare-fun m!5991616 () Bool)

(assert (=> bs!1183049 m!5991616))

(declare-fun m!5991618 () Bool)

(assert (=> bs!1183049 m!5991618))

(assert (=> b!4964788 d!1598057))

(declare-fun b!4966015 () Bool)

(declare-fun e!3104084 () List!57559)

(assert (=> b!4966015 (= e!3104084 (_2!34378 (get!19935 lt!2049691)))))

(declare-fun b!4966017 () Bool)

(declare-fun res!2119792 () Bool)

(declare-fun e!3104083 () Bool)

(assert (=> b!4966017 (=> (not res!2119792) (not e!3104083))))

(declare-fun lt!2050552 () List!57559)

(assert (=> b!4966017 (= res!2119792 (= (size!38064 lt!2050552) (+ (size!38064 (t!368225 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))) (size!38064 (_2!34378 (get!19935 lt!2049691))))))))

(declare-fun b!4966018 () Bool)

(assert (=> b!4966018 (= e!3104083 (or (not (= (_2!34378 (get!19935 lt!2049691)) Nil!57435)) (= lt!2050552 (t!368225 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))))))))

(declare-fun b!4966016 () Bool)

(assert (=> b!4966016 (= e!3104084 (Cons!57435 (h!63883 (t!368225 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))) (++!12530 (t!368225 (t!368225 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))) (_2!34378 (get!19935 lt!2049691)))))))

(declare-fun d!1598059 () Bool)

(assert (=> d!1598059 e!3104083))

(declare-fun res!2119793 () Bool)

(assert (=> d!1598059 (=> (not res!2119793) (not e!3104083))))

(assert (=> d!1598059 (= res!2119793 (= (content!10180 lt!2050552) (set.union (content!10180 (t!368225 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))) (content!10180 (_2!34378 (get!19935 lt!2049691))))))))

(assert (=> d!1598059 (= lt!2050552 e!3104084)))

(declare-fun c!847304 () Bool)

(assert (=> d!1598059 (= c!847304 (is-Nil!57435 (t!368225 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691)))))))))

(assert (=> d!1598059 (= (++!12530 (t!368225 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049691))))) (_2!34378 (get!19935 lt!2049691))) lt!2050552)))

(assert (= (and d!1598059 c!847304) b!4966015))

(assert (= (and d!1598059 (not c!847304)) b!4966016))

(assert (= (and d!1598059 res!2119793) b!4966017))

(assert (= (and b!4966017 res!2119792) b!4966018))

(declare-fun m!5991620 () Bool)

(assert (=> b!4966017 m!5991620))

(assert (=> b!4966017 m!5991420))

(assert (=> b!4966017 m!5988836))

(declare-fun m!5991622 () Bool)

(assert (=> b!4966016 m!5991622))

(declare-fun m!5991624 () Bool)

(assert (=> d!1598059 m!5991624))

(assert (=> d!1598059 m!5991296))

(assert (=> d!1598059 m!5989498))

(assert (=> b!4964833 d!1598059))

(declare-fun lt!2050553 () Option!14445)

(declare-fun d!1598061 () Bool)

(assert (=> d!1598061 (= lt!2050553 (maxPrefix!4658 thiss!15247 (t!368227 (t!368227 rulesArg!259)) lt!2049571))))

(declare-fun e!3104085 () Option!14445)

(assert (=> d!1598061 (= lt!2050553 e!3104085)))

(declare-fun c!847305 () Bool)

(assert (=> d!1598061 (= c!847305 (and (is-Cons!57437 (t!368227 (t!368227 rulesArg!259))) (is-Nil!57437 (t!368227 (t!368227 (t!368227 rulesArg!259))))))))

(declare-fun lt!2050555 () Unit!148334)

(declare-fun lt!2050557 () Unit!148334)

(assert (=> d!1598061 (= lt!2050555 lt!2050557)))

(assert (=> d!1598061 (isPrefix!5242 lt!2049571 lt!2049571)))

(assert (=> d!1598061 (= lt!2050557 (lemmaIsPrefixRefl!3566 lt!2049571 lt!2049571))))

(assert (=> d!1598061 (rulesValidInductive!3294 thiss!15247 (t!368227 (t!368227 rulesArg!259)))))

(assert (=> d!1598061 (= (maxPrefixZipper!784 thiss!15247 (t!368227 (t!368227 rulesArg!259)) lt!2049571) lt!2050553)))

(declare-fun call!346297 () Option!14445)

(declare-fun bm!346292 () Bool)

(assert (=> bm!346292 (= call!346297 (maxPrefixOneRuleZipper!294 thiss!15247 (h!63885 (t!368227 (t!368227 rulesArg!259))) lt!2049571))))

(declare-fun b!4966019 () Bool)

(assert (=> b!4966019 (= e!3104085 call!346297)))

(declare-fun b!4966020 () Bool)

(declare-fun lt!2050554 () Option!14445)

(declare-fun lt!2050556 () Option!14445)

(assert (=> b!4966020 (= e!3104085 (ite (and (is-None!14444 lt!2050554) (is-None!14444 lt!2050556)) None!14444 (ite (is-None!14444 lt!2050556) lt!2050554 (ite (is-None!14444 lt!2050554) lt!2050556 (ite (>= (size!38062 (_1!34378 (v!50431 lt!2050554))) (size!38062 (_1!34378 (v!50431 lt!2050556)))) lt!2050554 lt!2050556)))))))

(assert (=> b!4966020 (= lt!2050554 call!346297)))

(assert (=> b!4966020 (= lt!2050556 (maxPrefixZipper!784 thiss!15247 (t!368227 (t!368227 (t!368227 rulesArg!259))) lt!2049571))))

(assert (= (and d!1598061 c!847305) b!4966019))

(assert (= (and d!1598061 (not c!847305)) b!4966020))

(assert (= (or b!4966019 b!4966020) bm!346292))

(assert (=> d!1598061 m!5989194))

(assert (=> d!1598061 m!5988624))

(assert (=> d!1598061 m!5988626))

(assert (=> d!1598061 m!5989290))

(declare-fun m!5991626 () Bool)

(assert (=> bm!346292 m!5991626))

(declare-fun m!5991628 () Bool)

(assert (=> b!4966020 m!5991628))

(assert (=> b!4964623 d!1598061))

(declare-fun d!1598063 () Bool)

(declare-fun lt!2050558 () Int)

(assert (=> d!1598063 (>= lt!2050558 0)))

(declare-fun e!3104086 () Int)

(assert (=> d!1598063 (= lt!2050558 e!3104086)))

(declare-fun c!847306 () Bool)

(assert (=> d!1598063 (= c!847306 (is-Nil!57435 (_1!34382 lt!2049862)))))

(assert (=> d!1598063 (= (size!38064 (_1!34382 lt!2049862)) lt!2050558)))

(declare-fun b!4966021 () Bool)

(assert (=> b!4966021 (= e!3104086 0)))

(declare-fun b!4966022 () Bool)

(assert (=> b!4966022 (= e!3104086 (+ 1 (size!38064 (t!368225 (_1!34382 lt!2049862)))))))

(assert (= (and d!1598063 c!847306) b!4966021))

(assert (= (and d!1598063 (not c!847306)) b!4966022))

(declare-fun m!5991630 () Bool)

(assert (=> b!4966022 m!5991630))

(assert (=> b!4964604 d!1598063))

(assert (=> b!4964604 d!1597201))

(assert (=> b!4964702 d!1597817))

(assert (=> b!4964702 d!1597819))

(assert (=> b!4964702 d!1597561))

(assert (=> b!4964730 d!1597823))

(assert (=> b!4964730 d!1597825))

(assert (=> b!4964730 d!1597573))

(assert (=> b!4964775 d!1597857))

(assert (=> b!4964775 d!1597589))

(assert (=> b!4964775 d!1597201))

(assert (=> b!4964775 d!1597239))

(declare-fun d!1598065 () Bool)

(declare-fun c!847307 () Bool)

(assert (=> d!1598065 (= c!847307 (is-Node!15143 (left!41893 (right!42223 (c!846918 totalInput!464)))))))

(declare-fun e!3104087 () Bool)

(assert (=> d!1598065 (= (inv!75059 (left!41893 (right!42223 (c!846918 totalInput!464)))) e!3104087)))

(declare-fun b!4966023 () Bool)

(assert (=> b!4966023 (= e!3104087 (inv!75065 (left!41893 (right!42223 (c!846918 totalInput!464)))))))

(declare-fun b!4966024 () Bool)

(declare-fun e!3104088 () Bool)

(assert (=> b!4966024 (= e!3104087 e!3104088)))

(declare-fun res!2119794 () Bool)

(assert (=> b!4966024 (= res!2119794 (not (is-Leaf!25164 (left!41893 (right!42223 (c!846918 totalInput!464))))))))

(assert (=> b!4966024 (=> res!2119794 e!3104088)))

(declare-fun b!4966025 () Bool)

(assert (=> b!4966025 (= e!3104088 (inv!75066 (left!41893 (right!42223 (c!846918 totalInput!464)))))))

(assert (= (and d!1598065 c!847307) b!4966023))

(assert (= (and d!1598065 (not c!847307)) b!4966024))

(assert (= (and b!4966024 (not res!2119794)) b!4966025))

(declare-fun m!5991632 () Bool)

(assert (=> b!4966023 m!5991632))

(declare-fun m!5991634 () Bool)

(assert (=> b!4966025 m!5991634))

(assert (=> b!4964962 d!1598065))

(declare-fun d!1598067 () Bool)

(declare-fun c!847308 () Bool)

(assert (=> d!1598067 (= c!847308 (is-Node!15143 (right!42223 (right!42223 (c!846918 totalInput!464)))))))

(declare-fun e!3104089 () Bool)

(assert (=> d!1598067 (= (inv!75059 (right!42223 (right!42223 (c!846918 totalInput!464)))) e!3104089)))

(declare-fun b!4966026 () Bool)

(assert (=> b!4966026 (= e!3104089 (inv!75065 (right!42223 (right!42223 (c!846918 totalInput!464)))))))

(declare-fun b!4966027 () Bool)

(declare-fun e!3104090 () Bool)

(assert (=> b!4966027 (= e!3104089 e!3104090)))

(declare-fun res!2119795 () Bool)

(assert (=> b!4966027 (= res!2119795 (not (is-Leaf!25164 (right!42223 (right!42223 (c!846918 totalInput!464))))))))

(assert (=> b!4966027 (=> res!2119795 e!3104090)))

(declare-fun b!4966028 () Bool)

(assert (=> b!4966028 (= e!3104090 (inv!75066 (right!42223 (right!42223 (c!846918 totalInput!464)))))))

(assert (= (and d!1598067 c!847308) b!4966026))

(assert (= (and d!1598067 (not c!847308)) b!4966027))

(assert (= (and b!4966027 (not res!2119795)) b!4966028))

(declare-fun m!5991636 () Bool)

(assert (=> b!4966026 m!5991636))

(declare-fun m!5991638 () Bool)

(assert (=> b!4966028 m!5991638))

(assert (=> b!4964962 d!1598067))

(declare-fun d!1598069 () Bool)

(declare-fun lt!2050559 () Int)

(assert (=> d!1598069 (>= lt!2050559 0)))

(declare-fun e!3104091 () Int)

(assert (=> d!1598069 (= lt!2050559 e!3104091)))

(declare-fun c!847309 () Bool)

(assert (=> d!1598069 (= c!847309 (is-Nil!57435 (list!18359 (_1!34381 lt!2049676))))))

(assert (=> d!1598069 (= (size!38064 (list!18359 (_1!34381 lt!2049676))) lt!2050559)))

(declare-fun b!4966029 () Bool)

(assert (=> b!4966029 (= e!3104091 0)))

(declare-fun b!4966030 () Bool)

(assert (=> b!4966030 (= e!3104091 (+ 1 (size!38064 (t!368225 (list!18359 (_1!34381 lt!2049676))))))))

(assert (= (and d!1598069 c!847309) b!4966029))

(assert (= (and d!1598069 (not c!847309)) b!4966030))

(declare-fun m!5991640 () Bool)

(assert (=> b!4966030 m!5991640))

(assert (=> d!1597337 d!1598069))

(assert (=> d!1597337 d!1597361))

(declare-fun d!1598071 () Bool)

(declare-fun lt!2050560 () Int)

(assert (=> d!1598071 (= lt!2050560 (size!38064 (list!18361 (c!846918 (_1!34381 lt!2049676)))))))

(assert (=> d!1598071 (= lt!2050560 (ite (is-Empty!15143 (c!846918 (_1!34381 lt!2049676))) 0 (ite (is-Leaf!25164 (c!846918 (_1!34381 lt!2049676))) (csize!30517 (c!846918 (_1!34381 lt!2049676))) (csize!30516 (c!846918 (_1!34381 lt!2049676))))))))

(assert (=> d!1598071 (= (size!38068 (c!846918 (_1!34381 lt!2049676))) lt!2050560)))

(declare-fun bs!1183050 () Bool)

(assert (= bs!1183050 d!1598071))

(assert (=> bs!1183050 m!5989564))

(assert (=> bs!1183050 m!5989564))

(declare-fun m!5991642 () Bool)

(assert (=> bs!1183050 m!5991642))

(assert (=> d!1597337 d!1598071))

(declare-fun d!1598073 () Bool)

(declare-fun c!847310 () Bool)

(assert (=> d!1598073 (= c!847310 (is-Node!15143 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (value!268585 (_1!34378 (get!19935 lt!2049691)))))))))

(declare-fun e!3104092 () Bool)

(assert (=> d!1598073 (= (inv!75059 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (value!268585 (_1!34378 (get!19935 lt!2049691)))))) e!3104092)))

(declare-fun b!4966031 () Bool)

(assert (=> b!4966031 (= e!3104092 (inv!75065 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (value!268585 (_1!34378 (get!19935 lt!2049691)))))))))

(declare-fun b!4966032 () Bool)

(declare-fun e!3104093 () Bool)

(assert (=> b!4966032 (= e!3104092 e!3104093)))

(declare-fun res!2119796 () Bool)

(assert (=> b!4966032 (= res!2119796 (not (is-Leaf!25164 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (value!268585 (_1!34378 (get!19935 lt!2049691))))))))))

(assert (=> b!4966032 (=> res!2119796 e!3104093)))

(declare-fun b!4966033 () Bool)

(assert (=> b!4966033 (= e!3104093 (inv!75066 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (value!268585 (_1!34378 (get!19935 lt!2049691)))))))))

(assert (= (and d!1598073 c!847310) b!4966031))

(assert (= (and d!1598073 (not c!847310)) b!4966032))

(assert (= (and b!4966032 (not res!2119796)) b!4966033))

(declare-fun m!5991644 () Bool)

(assert (=> b!4966031 m!5991644))

(declare-fun m!5991646 () Bool)

(assert (=> b!4966033 m!5991646))

(assert (=> b!4964813 d!1598073))

(declare-fun d!1598075 () Bool)

(assert (=> d!1598075 (= (isEmpty!30925 lt!2049922) (not (is-Some!14444 lt!2049922)))))

(assert (=> d!1597243 d!1598075))

(assert (=> d!1597243 d!1597119))

(assert (=> d!1597243 d!1597121))

(assert (=> d!1597243 d!1597313))

(declare-fun d!1598077 () Bool)

(assert (=> d!1598077 (dynLambda!23152 lambda!247309 (_1!34381 lt!2049676))))

(assert (=> d!1598077 true))

(declare-fun _$1!11230 () Unit!148334)

(assert (=> d!1598077 (= (choose!36654 lambda!247309 (_1!34381 lt!2049676)) _$1!11230)))

(declare-fun b_lambda!196665 () Bool)

(assert (=> (not b_lambda!196665) (not d!1598077)))

(declare-fun bs!1183051 () Bool)

(assert (= bs!1183051 d!1598077))

(assert (=> bs!1183051 m!5989558))

(assert (=> d!1597357 d!1598077))

(assert (=> d!1597357 d!1597987))

(declare-fun d!1598079 () Bool)

(declare-fun lt!2050561 () Int)

(assert (=> d!1598079 (>= lt!2050561 0)))

(declare-fun e!3104094 () Int)

(assert (=> d!1598079 (= lt!2050561 e!3104094)))

(declare-fun c!847311 () Bool)

(assert (=> d!1598079 (= c!847311 (is-Nil!57435 (t!368225 (_2!34378 (get!19935 lt!2049691)))))))

(assert (=> d!1598079 (= (size!38064 (t!368225 (_2!34378 (get!19935 lt!2049691)))) lt!2050561)))

(declare-fun b!4966034 () Bool)

(assert (=> b!4966034 (= e!3104094 0)))

(declare-fun b!4966035 () Bool)

(assert (=> b!4966035 (= e!3104094 (+ 1 (size!38064 (t!368225 (t!368225 (_2!34378 (get!19935 lt!2049691)))))))))

(assert (= (and d!1598079 c!847311) b!4966034))

(assert (= (and d!1598079 (not c!847311)) b!4966035))

(declare-fun m!5991648 () Bool)

(assert (=> b!4966035 m!5991648))

(assert (=> b!4964777 d!1598079))

(assert (=> b!4964565 d!1597929))

(assert (=> b!4964565 d!1597931))

(declare-fun d!1598081 () Bool)

(declare-fun lt!2050562 () Bool)

(assert (=> d!1598081 (= lt!2050562 (isEmpty!30923 (list!18361 (left!41893 (c!846918 input!1342)))))))

(assert (=> d!1598081 (= lt!2050562 (= (size!38068 (left!41893 (c!846918 input!1342))) 0))))

(assert (=> d!1598081 (= (isEmpty!30929 (left!41893 (c!846918 input!1342))) lt!2050562)))

(declare-fun bs!1183052 () Bool)

(assert (= bs!1183052 d!1598081))

(assert (=> bs!1183052 m!5989386))

(assert (=> bs!1183052 m!5989386))

(declare-fun m!5991650 () Bool)

(assert (=> bs!1183052 m!5991650))

(assert (=> bs!1183052 m!5989010))

(assert (=> b!4964710 d!1598081))

(assert (=> b!4964736 d!1597659))

(declare-fun d!1598083 () Bool)

(declare-fun res!2119797 () Bool)

(declare-fun e!3104095 () Bool)

(assert (=> d!1598083 (=> (not res!2119797) (not e!3104095))))

(assert (=> d!1598083 (= res!2119797 (<= (size!38064 (list!18363 (xs!18469 (right!42223 (c!846918 totalInput!464))))) 512))))

(assert (=> d!1598083 (= (inv!75066 (right!42223 (c!846918 totalInput!464))) e!3104095)))

(declare-fun b!4966036 () Bool)

(declare-fun res!2119798 () Bool)

(assert (=> b!4966036 (=> (not res!2119798) (not e!3104095))))

(assert (=> b!4966036 (= res!2119798 (= (csize!30517 (right!42223 (c!846918 totalInput!464))) (size!38064 (list!18363 (xs!18469 (right!42223 (c!846918 totalInput!464)))))))))

(declare-fun b!4966037 () Bool)

(assert (=> b!4966037 (= e!3104095 (and (> (csize!30517 (right!42223 (c!846918 totalInput!464))) 0) (<= (csize!30517 (right!42223 (c!846918 totalInput!464))) 512)))))

(assert (= (and d!1598083 res!2119797) b!4966036))

(assert (= (and b!4966036 res!2119798) b!4966037))

(assert (=> d!1598083 m!5991064))

(assert (=> d!1598083 m!5991064))

(declare-fun m!5991652 () Bool)

(assert (=> d!1598083 m!5991652))

(assert (=> b!4966036 m!5991064))

(assert (=> b!4966036 m!5991064))

(assert (=> b!4966036 m!5991652))

(assert (=> b!4964841 d!1598083))

(declare-fun d!1598085 () Bool)

(assert (=> d!1598085 (= (inv!75060 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))))) (isBalanced!4200 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))))))))

(declare-fun bs!1183053 () Bool)

(assert (= bs!1183053 d!1598085))

(declare-fun m!5991654 () Bool)

(assert (=> bs!1183053 m!5991654))

(assert (=> tb!260251 d!1598085))

(assert (=> b!4964761 d!1597983))

(assert (=> bm!346168 d!1597641))

(declare-fun b!4966038 () Bool)

(declare-fun e!3104101 () Bool)

(declare-fun lt!2050563 () Bool)

(declare-fun call!346298 () Bool)

(assert (=> b!4966038 (= e!3104101 (= lt!2050563 call!346298))))

(declare-fun b!4966039 () Bool)

(declare-fun e!3104100 () Bool)

(assert (=> b!4966039 (= e!3104100 (not (= (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049912))))) (c!846919 (regex!8391 (h!63885 rulesArg!259))))))))

(declare-fun b!4966040 () Bool)

(declare-fun res!2119799 () Bool)

(declare-fun e!3104102 () Bool)

(assert (=> b!4966040 (=> (not res!2119799) (not e!3104102))))

(assert (=> b!4966040 (= res!2119799 (isEmpty!30923 (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049912)))))))))

(declare-fun b!4966041 () Bool)

(declare-fun e!3104098 () Bool)

(assert (=> b!4966041 (= e!3104101 e!3104098)))

(declare-fun c!847312 () Bool)

(assert (=> b!4966041 (= c!847312 (is-EmptyLang!13624 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun b!4966042 () Bool)

(declare-fun res!2119801 () Bool)

(declare-fun e!3104097 () Bool)

(assert (=> b!4966042 (=> res!2119801 e!3104097)))

(assert (=> b!4966042 (= res!2119801 (not (is-ElementMatch!13624 (regex!8391 (h!63885 rulesArg!259)))))))

(assert (=> b!4966042 (= e!3104098 e!3104097)))

(declare-fun b!4966043 () Bool)

(declare-fun e!3104096 () Bool)

(assert (=> b!4966043 (= e!3104096 e!3104100)))

(declare-fun res!2119805 () Bool)

(assert (=> b!4966043 (=> res!2119805 e!3104100)))

(assert (=> b!4966043 (= res!2119805 call!346298)))

(declare-fun b!4966044 () Bool)

(declare-fun e!3104099 () Bool)

(assert (=> b!4966044 (= e!3104099 (nullable!4618 (regex!8391 (h!63885 rulesArg!259))))))

(declare-fun d!1598087 () Bool)

(assert (=> d!1598087 e!3104101))

(declare-fun c!847314 () Bool)

(assert (=> d!1598087 (= c!847314 (is-EmptyExpr!13624 (regex!8391 (h!63885 rulesArg!259))))))

(assert (=> d!1598087 (= lt!2050563 e!3104099)))

(declare-fun c!847313 () Bool)

(assert (=> d!1598087 (= c!847313 (isEmpty!30923 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049912))))))))

(assert (=> d!1598087 (validRegex!5967 (regex!8391 (h!63885 rulesArg!259)))))

(assert (=> d!1598087 (= (matchR!6634 (regex!8391 (h!63885 rulesArg!259)) (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049912))))) lt!2050563)))

(declare-fun b!4966045 () Bool)

(declare-fun res!2119800 () Bool)

(assert (=> b!4966045 (=> res!2119800 e!3104100)))

(assert (=> b!4966045 (= res!2119800 (not (isEmpty!30923 (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049912))))))))))

(declare-fun b!4966046 () Bool)

(assert (=> b!4966046 (= e!3104099 (matchR!6634 (derivativeStep!3920 (regex!8391 (h!63885 rulesArg!259)) (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049912)))))) (tail!9799 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049912)))))))))

(declare-fun b!4966047 () Bool)

(declare-fun res!2119804 () Bool)

(assert (=> b!4966047 (=> (not res!2119804) (not e!3104102))))

(assert (=> b!4966047 (= res!2119804 (not call!346298))))

(declare-fun b!4966048 () Bool)

(declare-fun res!2119802 () Bool)

(assert (=> b!4966048 (=> res!2119802 e!3104097)))

(assert (=> b!4966048 (= res!2119802 e!3104102)))

(declare-fun res!2119803 () Bool)

(assert (=> b!4966048 (=> (not res!2119803) (not e!3104102))))

(assert (=> b!4966048 (= res!2119803 lt!2050563)))

(declare-fun b!4966049 () Bool)

(assert (=> b!4966049 (= e!3104098 (not lt!2050563))))

(declare-fun bm!346293 () Bool)

(assert (=> bm!346293 (= call!346298 (isEmpty!30923 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049912))))))))

(declare-fun b!4966050 () Bool)

(assert (=> b!4966050 (= e!3104102 (= (head!10666 (list!18359 (charsOf!5435 (_1!34378 (get!19935 lt!2049912))))) (c!846919 (regex!8391 (h!63885 rulesArg!259)))))))

(declare-fun b!4966051 () Bool)

(assert (=> b!4966051 (= e!3104097 e!3104096)))

(declare-fun res!2119806 () Bool)

(assert (=> b!4966051 (=> (not res!2119806) (not e!3104096))))

(assert (=> b!4966051 (= res!2119806 (not lt!2050563))))

(assert (= (and d!1598087 c!847313) b!4966044))

(assert (= (and d!1598087 (not c!847313)) b!4966046))

(assert (= (and d!1598087 c!847314) b!4966038))

(assert (= (and d!1598087 (not c!847314)) b!4966041))

(assert (= (and b!4966041 c!847312) b!4966049))

(assert (= (and b!4966041 (not c!847312)) b!4966042))

(assert (= (and b!4966042 (not res!2119801)) b!4966048))

(assert (= (and b!4966048 res!2119803) b!4966047))

(assert (= (and b!4966047 res!2119804) b!4966040))

(assert (= (and b!4966040 res!2119799) b!4966050))

(assert (= (and b!4966048 (not res!2119802)) b!4966051))

(assert (= (and b!4966051 res!2119806) b!4966043))

(assert (= (and b!4966043 (not res!2119805)) b!4966045))

(assert (= (and b!4966045 (not res!2119800)) b!4966039))

(assert (= (or b!4966038 b!4966043 b!4966047) bm!346293))

(assert (=> b!4966045 m!5989154))

(declare-fun m!5991656 () Bool)

(assert (=> b!4966045 m!5991656))

(assert (=> b!4966045 m!5991656))

(declare-fun m!5991658 () Bool)

(assert (=> b!4966045 m!5991658))

(assert (=> d!1598087 m!5989154))

(declare-fun m!5991660 () Bool)

(assert (=> d!1598087 m!5991660))

(assert (=> d!1598087 m!5989028))

(assert (=> b!4966044 m!5989030))

(assert (=> bm!346293 m!5989154))

(assert (=> bm!346293 m!5991660))

(assert (=> b!4966050 m!5989154))

(declare-fun m!5991662 () Bool)

(assert (=> b!4966050 m!5991662))

(assert (=> b!4966039 m!5989154))

(assert (=> b!4966039 m!5991662))

(assert (=> b!4966046 m!5989154))

(assert (=> b!4966046 m!5991662))

(assert (=> b!4966046 m!5991662))

(declare-fun m!5991664 () Bool)

(assert (=> b!4966046 m!5991664))

(assert (=> b!4966046 m!5989154))

(assert (=> b!4966046 m!5991656))

(assert (=> b!4966046 m!5991664))

(assert (=> b!4966046 m!5991656))

(declare-fun m!5991666 () Bool)

(assert (=> b!4966046 m!5991666))

(assert (=> b!4966040 m!5989154))

(assert (=> b!4966040 m!5991656))

(assert (=> b!4966040 m!5991656))

(assert (=> b!4966040 m!5991658))

(assert (=> b!4964675 d!1598087))

(assert (=> b!4964675 d!1598041))

(assert (=> b!4964675 d!1598043))

(assert (=> b!4964675 d!1597665))

(declare-fun b!4966052 () Bool)

(declare-fun e!3104103 () Bool)

(assert (=> b!4966052 (= e!3104103 tp_is_empty!36329)))

(declare-fun b!4966055 () Bool)

(declare-fun tp!1392845 () Bool)

(declare-fun tp!1392844 () Bool)

(assert (=> b!4966055 (= e!3104103 (and tp!1392845 tp!1392844))))

(declare-fun b!4966053 () Bool)

(declare-fun tp!1392846 () Bool)

(declare-fun tp!1392842 () Bool)

(assert (=> b!4966053 (= e!3104103 (and tp!1392846 tp!1392842))))

(declare-fun b!4966054 () Bool)

(declare-fun tp!1392843 () Bool)

(assert (=> b!4966054 (= e!3104103 tp!1392843)))

(assert (=> b!4964914 (= tp!1392723 e!3104103)))

(assert (= (and b!4964914 (is-ElementMatch!13624 (reg!13953 (regOne!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966052))

(assert (= (and b!4964914 (is-Concat!22326 (reg!13953 (regOne!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966053))

(assert (= (and b!4964914 (is-Star!13624 (reg!13953 (regOne!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966054))

(assert (= (and b!4964914 (is-Union!13624 (reg!13953 (regOne!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966055))

(declare-fun b!4966056 () Bool)

(declare-fun e!3104104 () Bool)

(assert (=> b!4966056 (= e!3104104 tp_is_empty!36329)))

(declare-fun b!4966059 () Bool)

(declare-fun tp!1392850 () Bool)

(declare-fun tp!1392849 () Bool)

(assert (=> b!4966059 (= e!3104104 (and tp!1392850 tp!1392849))))

(declare-fun b!4966057 () Bool)

(declare-fun tp!1392851 () Bool)

(declare-fun tp!1392847 () Bool)

(assert (=> b!4966057 (= e!3104104 (and tp!1392851 tp!1392847))))

(declare-fun b!4966058 () Bool)

(declare-fun tp!1392848 () Bool)

(assert (=> b!4966058 (= e!3104104 tp!1392848)))

(assert (=> b!4964929 (= tp!1392741 e!3104104)))

(assert (= (and b!4964929 (is-ElementMatch!13624 (regOne!27760 (reg!13953 (regex!8391 (h!63885 rulesArg!259)))))) b!4966056))

(assert (= (and b!4964929 (is-Concat!22326 (regOne!27760 (reg!13953 (regex!8391 (h!63885 rulesArg!259)))))) b!4966057))

(assert (= (and b!4964929 (is-Star!13624 (regOne!27760 (reg!13953 (regex!8391 (h!63885 rulesArg!259)))))) b!4966058))

(assert (= (and b!4964929 (is-Union!13624 (regOne!27760 (reg!13953 (regex!8391 (h!63885 rulesArg!259)))))) b!4966059))

(declare-fun b!4966060 () Bool)

(declare-fun e!3104105 () Bool)

(assert (=> b!4966060 (= e!3104105 tp_is_empty!36329)))

(declare-fun b!4966063 () Bool)

(declare-fun tp!1392855 () Bool)

(declare-fun tp!1392854 () Bool)

(assert (=> b!4966063 (= e!3104105 (and tp!1392855 tp!1392854))))

(declare-fun b!4966061 () Bool)

(declare-fun tp!1392856 () Bool)

(declare-fun tp!1392852 () Bool)

(assert (=> b!4966061 (= e!3104105 (and tp!1392856 tp!1392852))))

(declare-fun b!4966062 () Bool)

(declare-fun tp!1392853 () Bool)

(assert (=> b!4966062 (= e!3104105 tp!1392853)))

(assert (=> b!4964929 (= tp!1392737 e!3104105)))

(assert (= (and b!4964929 (is-ElementMatch!13624 (regTwo!27760 (reg!13953 (regex!8391 (h!63885 rulesArg!259)))))) b!4966060))

(assert (= (and b!4964929 (is-Concat!22326 (regTwo!27760 (reg!13953 (regex!8391 (h!63885 rulesArg!259)))))) b!4966061))

(assert (= (and b!4964929 (is-Star!13624 (regTwo!27760 (reg!13953 (regex!8391 (h!63885 rulesArg!259)))))) b!4966062))

(assert (= (and b!4964929 (is-Union!13624 (regTwo!27760 (reg!13953 (regex!8391 (h!63885 rulesArg!259)))))) b!4966063))

(declare-fun b!4966064 () Bool)

(declare-fun e!3104106 () Bool)

(declare-fun tp!1392857 () Bool)

(assert (=> b!4966064 (= e!3104106 (and tp_is_empty!36329 tp!1392857))))

(assert (=> b!4964970 (= tp!1392770 e!3104106)))

(assert (= (and b!4964970 (is-Cons!57435 (innerList!15231 (xs!18469 (right!42223 (c!846918 input!1342)))))) b!4966064))

(declare-fun b!4966065 () Bool)

(declare-fun e!3104107 () Bool)

(assert (=> b!4966065 (= e!3104107 tp_is_empty!36329)))

(declare-fun b!4966068 () Bool)

(declare-fun tp!1392861 () Bool)

(declare-fun tp!1392860 () Bool)

(assert (=> b!4966068 (= e!3104107 (and tp!1392861 tp!1392860))))

(declare-fun b!4966066 () Bool)

(declare-fun tp!1392862 () Bool)

(declare-fun tp!1392858 () Bool)

(assert (=> b!4966066 (= e!3104107 (and tp!1392862 tp!1392858))))

(declare-fun b!4966067 () Bool)

(declare-fun tp!1392859 () Bool)

(assert (=> b!4966067 (= e!3104107 tp!1392859)))

(assert (=> b!4964915 (= tp!1392725 e!3104107)))

(assert (= (and b!4964915 (is-ElementMatch!13624 (regOne!27761 (regOne!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966065))

(assert (= (and b!4964915 (is-Concat!22326 (regOne!27761 (regOne!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966066))

(assert (= (and b!4964915 (is-Star!13624 (regOne!27761 (regOne!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966067))

(assert (= (and b!4964915 (is-Union!13624 (regOne!27761 (regOne!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966068))

(declare-fun b!4966069 () Bool)

(declare-fun e!3104108 () Bool)

(assert (=> b!4966069 (= e!3104108 tp_is_empty!36329)))

(declare-fun b!4966072 () Bool)

(declare-fun tp!1392866 () Bool)

(declare-fun tp!1392865 () Bool)

(assert (=> b!4966072 (= e!3104108 (and tp!1392866 tp!1392865))))

(declare-fun b!4966070 () Bool)

(declare-fun tp!1392867 () Bool)

(declare-fun tp!1392863 () Bool)

(assert (=> b!4966070 (= e!3104108 (and tp!1392867 tp!1392863))))

(declare-fun b!4966071 () Bool)

(declare-fun tp!1392864 () Bool)

(assert (=> b!4966071 (= e!3104108 tp!1392864)))

(assert (=> b!4964915 (= tp!1392724 e!3104108)))

(assert (= (and b!4964915 (is-ElementMatch!13624 (regTwo!27761 (regOne!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966069))

(assert (= (and b!4964915 (is-Concat!22326 (regTwo!27761 (regOne!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966070))

(assert (= (and b!4964915 (is-Star!13624 (regTwo!27761 (regOne!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966071))

(assert (= (and b!4964915 (is-Union!13624 (regTwo!27761 (regOne!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966072))

(declare-fun tp!1392868 () Bool)

(declare-fun tp!1392870 () Bool)

(declare-fun e!3104110 () Bool)

(declare-fun b!4966073 () Bool)

(assert (=> b!4966073 (= e!3104110 (and (inv!75059 (left!41893 (left!41893 (right!42223 (c!846918 input!1342))))) tp!1392868 (inv!75059 (right!42223 (left!41893 (right!42223 (c!846918 input!1342))))) tp!1392870))))

(declare-fun b!4966075 () Bool)

(declare-fun e!3104109 () Bool)

(declare-fun tp!1392869 () Bool)

(assert (=> b!4966075 (= e!3104109 tp!1392869)))

(declare-fun b!4966074 () Bool)

(assert (=> b!4966074 (= e!3104110 (and (inv!75067 (xs!18469 (left!41893 (right!42223 (c!846918 input!1342))))) e!3104109))))

(assert (=> b!4964968 (= tp!1392769 (and (inv!75059 (left!41893 (right!42223 (c!846918 input!1342)))) e!3104110))))

(assert (= (and b!4964968 (is-Node!15143 (left!41893 (right!42223 (c!846918 input!1342))))) b!4966073))

(assert (= b!4966074 b!4966075))

(assert (= (and b!4964968 (is-Leaf!25164 (left!41893 (right!42223 (c!846918 input!1342))))) b!4966074))

(declare-fun m!5991668 () Bool)

(assert (=> b!4966073 m!5991668))

(declare-fun m!5991670 () Bool)

(assert (=> b!4966073 m!5991670))

(declare-fun m!5991672 () Bool)

(assert (=> b!4966074 m!5991672))

(assert (=> b!4964968 m!5989666))

(declare-fun b!4966076 () Bool)

(declare-fun e!3104112 () Bool)

(declare-fun tp!1392871 () Bool)

(declare-fun tp!1392873 () Bool)

(assert (=> b!4966076 (= e!3104112 (and (inv!75059 (left!41893 (right!42223 (right!42223 (c!846918 input!1342))))) tp!1392871 (inv!75059 (right!42223 (right!42223 (right!42223 (c!846918 input!1342))))) tp!1392873))))

(declare-fun b!4966078 () Bool)

(declare-fun e!3104111 () Bool)

(declare-fun tp!1392872 () Bool)

(assert (=> b!4966078 (= e!3104111 tp!1392872)))

(declare-fun b!4966077 () Bool)

(assert (=> b!4966077 (= e!3104112 (and (inv!75067 (xs!18469 (right!42223 (right!42223 (c!846918 input!1342))))) e!3104111))))

(assert (=> b!4964968 (= tp!1392771 (and (inv!75059 (right!42223 (right!42223 (c!846918 input!1342)))) e!3104112))))

(assert (= (and b!4964968 (is-Node!15143 (right!42223 (right!42223 (c!846918 input!1342))))) b!4966076))

(assert (= b!4966077 b!4966078))

(assert (= (and b!4964968 (is-Leaf!25164 (right!42223 (right!42223 (c!846918 input!1342))))) b!4966077))

(declare-fun m!5991674 () Bool)

(assert (=> b!4966076 m!5991674))

(declare-fun m!5991676 () Bool)

(assert (=> b!4966076 m!5991676))

(declare-fun m!5991678 () Bool)

(assert (=> b!4966077 m!5991678))

(assert (=> b!4964968 m!5989668))

(declare-fun b!4966079 () Bool)

(declare-fun e!3104113 () Bool)

(assert (=> b!4966079 (= e!3104113 tp_is_empty!36329)))

(declare-fun b!4966082 () Bool)

(declare-fun tp!1392877 () Bool)

(declare-fun tp!1392876 () Bool)

(assert (=> b!4966082 (= e!3104113 (and tp!1392877 tp!1392876))))

(declare-fun b!4966080 () Bool)

(declare-fun tp!1392878 () Bool)

(declare-fun tp!1392874 () Bool)

(assert (=> b!4966080 (= e!3104113 (and tp!1392878 tp!1392874))))

(declare-fun b!4966081 () Bool)

(declare-fun tp!1392875 () Bool)

(assert (=> b!4966081 (= e!3104113 tp!1392875)))

(assert (=> b!4964913 (= tp!1392726 e!3104113)))

(assert (= (and b!4964913 (is-ElementMatch!13624 (regOne!27760 (regOne!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966079))

(assert (= (and b!4964913 (is-Concat!22326 (regOne!27760 (regOne!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966080))

(assert (= (and b!4964913 (is-Star!13624 (regOne!27760 (regOne!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966081))

(assert (= (and b!4964913 (is-Union!13624 (regOne!27760 (regOne!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966082))

(declare-fun b!4966083 () Bool)

(declare-fun e!3104114 () Bool)

(assert (=> b!4966083 (= e!3104114 tp_is_empty!36329)))

(declare-fun b!4966086 () Bool)

(declare-fun tp!1392882 () Bool)

(declare-fun tp!1392881 () Bool)

(assert (=> b!4966086 (= e!3104114 (and tp!1392882 tp!1392881))))

(declare-fun b!4966084 () Bool)

(declare-fun tp!1392883 () Bool)

(declare-fun tp!1392879 () Bool)

(assert (=> b!4966084 (= e!3104114 (and tp!1392883 tp!1392879))))

(declare-fun b!4966085 () Bool)

(declare-fun tp!1392880 () Bool)

(assert (=> b!4966085 (= e!3104114 tp!1392880)))

(assert (=> b!4964913 (= tp!1392722 e!3104114)))

(assert (= (and b!4964913 (is-ElementMatch!13624 (regTwo!27760 (regOne!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966083))

(assert (= (and b!4964913 (is-Concat!22326 (regTwo!27760 (regOne!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966084))

(assert (= (and b!4964913 (is-Star!13624 (regTwo!27760 (regOne!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966085))

(assert (= (and b!4964913 (is-Union!13624 (regTwo!27760 (regOne!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966086))

(declare-fun tp!1392886 () Bool)

(declare-fun tp!1392884 () Bool)

(declare-fun e!3104116 () Bool)

(declare-fun b!4966087 () Bool)

(assert (=> b!4966087 (= e!3104116 (and (inv!75059 (left!41893 (left!41893 (left!41893 (c!846918 totalInput!464))))) tp!1392884 (inv!75059 (right!42223 (left!41893 (left!41893 (c!846918 totalInput!464))))) tp!1392886))))

(declare-fun b!4966089 () Bool)

(declare-fun e!3104115 () Bool)

(declare-fun tp!1392885 () Bool)

(assert (=> b!4966089 (= e!3104115 tp!1392885)))

(declare-fun b!4966088 () Bool)

(assert (=> b!4966088 (= e!3104116 (and (inv!75067 (xs!18469 (left!41893 (left!41893 (c!846918 totalInput!464))))) e!3104115))))

(assert (=> b!4964959 (= tp!1392760 (and (inv!75059 (left!41893 (left!41893 (c!846918 totalInput!464)))) e!3104116))))

(assert (= (and b!4964959 (is-Node!15143 (left!41893 (left!41893 (c!846918 totalInput!464))))) b!4966087))

(assert (= b!4966088 b!4966089))

(assert (= (and b!4964959 (is-Leaf!25164 (left!41893 (left!41893 (c!846918 totalInput!464))))) b!4966088))

(declare-fun m!5991680 () Bool)

(assert (=> b!4966087 m!5991680))

(declare-fun m!5991682 () Bool)

(assert (=> b!4966087 m!5991682))

(declare-fun m!5991684 () Bool)

(assert (=> b!4966088 m!5991684))

(assert (=> b!4964959 m!5989648))

(declare-fun e!3104118 () Bool)

(declare-fun tp!1392887 () Bool)

(declare-fun tp!1392889 () Bool)

(declare-fun b!4966090 () Bool)

(assert (=> b!4966090 (= e!3104118 (and (inv!75059 (left!41893 (right!42223 (left!41893 (c!846918 totalInput!464))))) tp!1392887 (inv!75059 (right!42223 (right!42223 (left!41893 (c!846918 totalInput!464))))) tp!1392889))))

(declare-fun b!4966092 () Bool)

(declare-fun e!3104117 () Bool)

(declare-fun tp!1392888 () Bool)

(assert (=> b!4966092 (= e!3104117 tp!1392888)))

(declare-fun b!4966091 () Bool)

(assert (=> b!4966091 (= e!3104118 (and (inv!75067 (xs!18469 (right!42223 (left!41893 (c!846918 totalInput!464))))) e!3104117))))

(assert (=> b!4964959 (= tp!1392762 (and (inv!75059 (right!42223 (left!41893 (c!846918 totalInput!464)))) e!3104118))))

(assert (= (and b!4964959 (is-Node!15143 (right!42223 (left!41893 (c!846918 totalInput!464))))) b!4966090))

(assert (= b!4966091 b!4966092))

(assert (= (and b!4964959 (is-Leaf!25164 (right!42223 (left!41893 (c!846918 totalInput!464))))) b!4966091))

(declare-fun m!5991686 () Bool)

(assert (=> b!4966090 m!5991686))

(declare-fun m!5991688 () Bool)

(assert (=> b!4966090 m!5991688))

(declare-fun m!5991690 () Bool)

(assert (=> b!4966091 m!5991690))

(assert (=> b!4964959 m!5989650))

(declare-fun b!4966093 () Bool)

(declare-fun e!3104119 () Bool)

(declare-fun tp!1392890 () Bool)

(assert (=> b!4966093 (= e!3104119 (and tp_is_empty!36329 tp!1392890))))

(assert (=> b!4964936 (= tp!1392744 e!3104119)))

(assert (= (and b!4964936 (is-Cons!57435 (t!368225 (innerList!15231 (xs!18469 (c!846918 totalInput!464)))))) b!4966093))

(declare-fun b!4966094 () Bool)

(declare-fun e!3104120 () Bool)

(assert (=> b!4966094 (= e!3104120 tp_is_empty!36329)))

(declare-fun b!4966097 () Bool)

(declare-fun tp!1392894 () Bool)

(declare-fun tp!1392893 () Bool)

(assert (=> b!4966097 (= e!3104120 (and tp!1392894 tp!1392893))))

(declare-fun b!4966095 () Bool)

(declare-fun tp!1392895 () Bool)

(declare-fun tp!1392891 () Bool)

(assert (=> b!4966095 (= e!3104120 (and tp!1392895 tp!1392891))))

(declare-fun b!4966096 () Bool)

(declare-fun tp!1392892 () Bool)

(assert (=> b!4966096 (= e!3104120 tp!1392892)))

(assert (=> b!4964948 (= tp!1392755 e!3104120)))

(assert (= (and b!4964948 (is-ElementMatch!13624 (reg!13953 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966094))

(assert (= (and b!4964948 (is-Concat!22326 (reg!13953 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966095))

(assert (= (and b!4964948 (is-Star!13624 (reg!13953 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966096))

(assert (= (and b!4964948 (is-Union!13624 (reg!13953 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966097))

(declare-fun b!4966098 () Bool)

(declare-fun e!3104121 () Bool)

(assert (=> b!4966098 (= e!3104121 tp_is_empty!36329)))

(declare-fun b!4966101 () Bool)

(declare-fun tp!1392899 () Bool)

(declare-fun tp!1392898 () Bool)

(assert (=> b!4966101 (= e!3104121 (and tp!1392899 tp!1392898))))

(declare-fun b!4966099 () Bool)

(declare-fun tp!1392900 () Bool)

(declare-fun tp!1392896 () Bool)

(assert (=> b!4966099 (= e!3104121 (and tp!1392900 tp!1392896))))

(declare-fun b!4966100 () Bool)

(declare-fun tp!1392897 () Bool)

(assert (=> b!4966100 (= e!3104121 tp!1392897)))

(assert (=> b!4964949 (= tp!1392757 e!3104121)))

(assert (= (and b!4964949 (is-ElementMatch!13624 (regOne!27761 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966098))

(assert (= (and b!4964949 (is-Concat!22326 (regOne!27761 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966099))

(assert (= (and b!4964949 (is-Star!13624 (regOne!27761 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966100))

(assert (= (and b!4964949 (is-Union!13624 (regOne!27761 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966101))

(declare-fun b!4966102 () Bool)

(declare-fun e!3104122 () Bool)

(assert (=> b!4966102 (= e!3104122 tp_is_empty!36329)))

(declare-fun b!4966105 () Bool)

(declare-fun tp!1392904 () Bool)

(declare-fun tp!1392903 () Bool)

(assert (=> b!4966105 (= e!3104122 (and tp!1392904 tp!1392903))))

(declare-fun b!4966103 () Bool)

(declare-fun tp!1392905 () Bool)

(declare-fun tp!1392901 () Bool)

(assert (=> b!4966103 (= e!3104122 (and tp!1392905 tp!1392901))))

(declare-fun b!4966104 () Bool)

(declare-fun tp!1392902 () Bool)

(assert (=> b!4966104 (= e!3104122 tp!1392902)))

(assert (=> b!4964949 (= tp!1392756 e!3104122)))

(assert (= (and b!4964949 (is-ElementMatch!13624 (regTwo!27761 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966102))

(assert (= (and b!4964949 (is-Concat!22326 (regTwo!27761 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966103))

(assert (= (and b!4964949 (is-Star!13624 (regTwo!27761 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966104))

(assert (= (and b!4964949 (is-Union!13624 (regTwo!27761 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966105))

(declare-fun b!4966106 () Bool)

(declare-fun e!3104123 () Bool)

(declare-fun tp!1392906 () Bool)

(assert (=> b!4966106 (= e!3104123 (and tp_is_empty!36329 tp!1392906))))

(assert (=> b!4964958 (= tp!1392759 e!3104123)))

(assert (= (and b!4964958 (is-Cons!57435 (t!368225 (innerList!15231 (xs!18469 (c!846918 input!1342)))))) b!4966106))

(declare-fun b!4966107 () Bool)

(declare-fun e!3104124 () Bool)

(assert (=> b!4966107 (= e!3104124 tp_is_empty!36329)))

(declare-fun b!4966110 () Bool)

(declare-fun tp!1392910 () Bool)

(declare-fun tp!1392909 () Bool)

(assert (=> b!4966110 (= e!3104124 (and tp!1392910 tp!1392909))))

(declare-fun b!4966108 () Bool)

(declare-fun tp!1392911 () Bool)

(declare-fun tp!1392907 () Bool)

(assert (=> b!4966108 (= e!3104124 (and tp!1392911 tp!1392907))))

(declare-fun b!4966109 () Bool)

(declare-fun tp!1392908 () Bool)

(assert (=> b!4966109 (= e!3104124 tp!1392908)))

(assert (=> b!4964947 (= tp!1392758 e!3104124)))

(assert (= (and b!4964947 (is-ElementMatch!13624 (regOne!27760 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966107))

(assert (= (and b!4964947 (is-Concat!22326 (regOne!27760 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966108))

(assert (= (and b!4964947 (is-Star!13624 (regOne!27760 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966109))

(assert (= (and b!4964947 (is-Union!13624 (regOne!27760 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966110))

(declare-fun b!4966111 () Bool)

(declare-fun e!3104125 () Bool)

(assert (=> b!4966111 (= e!3104125 tp_is_empty!36329)))

(declare-fun b!4966114 () Bool)

(declare-fun tp!1392915 () Bool)

(declare-fun tp!1392914 () Bool)

(assert (=> b!4966114 (= e!3104125 (and tp!1392915 tp!1392914))))

(declare-fun b!4966112 () Bool)

(declare-fun tp!1392916 () Bool)

(declare-fun tp!1392912 () Bool)

(assert (=> b!4966112 (= e!3104125 (and tp!1392916 tp!1392912))))

(declare-fun b!4966113 () Bool)

(declare-fun tp!1392913 () Bool)

(assert (=> b!4966113 (= e!3104125 tp!1392913)))

(assert (=> b!4964947 (= tp!1392754 e!3104125)))

(assert (= (and b!4964947 (is-ElementMatch!13624 (regTwo!27760 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966111))

(assert (= (and b!4964947 (is-Concat!22326 (regTwo!27760 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966112))

(assert (= (and b!4964947 (is-Star!13624 (regTwo!27760 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966113))

(assert (= (and b!4964947 (is-Union!13624 (regTwo!27760 (regTwo!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966114))

(declare-fun b!4966115 () Bool)

(declare-fun e!3104126 () Bool)

(declare-fun tp!1392917 () Bool)

(assert (=> b!4966115 (= e!3104126 (and tp_is_empty!36329 tp!1392917))))

(assert (=> b!4964964 (= tp!1392764 e!3104126)))

(assert (= (and b!4964964 (is-Cons!57435 (innerList!15231 (xs!18469 (right!42223 (c!846918 totalInput!464)))))) b!4966115))

(declare-fun tp!1392920 () Bool)

(declare-fun b!4966116 () Bool)

(declare-fun tp!1392918 () Bool)

(declare-fun e!3104128 () Bool)

(assert (=> b!4966116 (= e!3104128 (and (inv!75059 (left!41893 (left!41893 (right!42223 (c!846918 totalInput!464))))) tp!1392918 (inv!75059 (right!42223 (left!41893 (right!42223 (c!846918 totalInput!464))))) tp!1392920))))

(declare-fun b!4966118 () Bool)

(declare-fun e!3104127 () Bool)

(declare-fun tp!1392919 () Bool)

(assert (=> b!4966118 (= e!3104127 tp!1392919)))

(declare-fun b!4966117 () Bool)

(assert (=> b!4966117 (= e!3104128 (and (inv!75067 (xs!18469 (left!41893 (right!42223 (c!846918 totalInput!464))))) e!3104127))))

(assert (=> b!4964962 (= tp!1392763 (and (inv!75059 (left!41893 (right!42223 (c!846918 totalInput!464)))) e!3104128))))

(assert (= (and b!4964962 (is-Node!15143 (left!41893 (right!42223 (c!846918 totalInput!464))))) b!4966116))

(assert (= b!4966117 b!4966118))

(assert (= (and b!4964962 (is-Leaf!25164 (left!41893 (right!42223 (c!846918 totalInput!464))))) b!4966117))

(declare-fun m!5991692 () Bool)

(assert (=> b!4966116 m!5991692))

(declare-fun m!5991694 () Bool)

(assert (=> b!4966116 m!5991694))

(declare-fun m!5991696 () Bool)

(assert (=> b!4966117 m!5991696))

(assert (=> b!4964962 m!5989654))

(declare-fun tp!1392921 () Bool)

(declare-fun tp!1392923 () Bool)

(declare-fun b!4966119 () Bool)

(declare-fun e!3104130 () Bool)

(assert (=> b!4966119 (= e!3104130 (and (inv!75059 (left!41893 (right!42223 (right!42223 (c!846918 totalInput!464))))) tp!1392921 (inv!75059 (right!42223 (right!42223 (right!42223 (c!846918 totalInput!464))))) tp!1392923))))

(declare-fun b!4966121 () Bool)

(declare-fun e!3104129 () Bool)

(declare-fun tp!1392922 () Bool)

(assert (=> b!4966121 (= e!3104129 tp!1392922)))

(declare-fun b!4966120 () Bool)

(assert (=> b!4966120 (= e!3104130 (and (inv!75067 (xs!18469 (right!42223 (right!42223 (c!846918 totalInput!464))))) e!3104129))))

(assert (=> b!4964962 (= tp!1392765 (and (inv!75059 (right!42223 (right!42223 (c!846918 totalInput!464)))) e!3104130))))

(assert (= (and b!4964962 (is-Node!15143 (right!42223 (right!42223 (c!846918 totalInput!464))))) b!4966119))

(assert (= b!4966120 b!4966121))

(assert (= (and b!4964962 (is-Leaf!25164 (right!42223 (right!42223 (c!846918 totalInput!464))))) b!4966120))

(declare-fun m!5991698 () Bool)

(assert (=> b!4966119 m!5991698))

(declare-fun m!5991700 () Bool)

(assert (=> b!4966119 m!5991700))

(declare-fun m!5991702 () Bool)

(assert (=> b!4966120 m!5991702))

(assert (=> b!4964962 m!5989656))

(declare-fun b!4966122 () Bool)

(declare-fun e!3104131 () Bool)

(assert (=> b!4966122 (= e!3104131 tp_is_empty!36329)))

(declare-fun b!4966125 () Bool)

(declare-fun tp!1392927 () Bool)

(declare-fun tp!1392926 () Bool)

(assert (=> b!4966125 (= e!3104131 (and tp!1392927 tp!1392926))))

(declare-fun b!4966123 () Bool)

(declare-fun tp!1392928 () Bool)

(declare-fun tp!1392924 () Bool)

(assert (=> b!4966123 (= e!3104131 (and tp!1392928 tp!1392924))))

(declare-fun b!4966124 () Bool)

(declare-fun tp!1392925 () Bool)

(assert (=> b!4966124 (= e!3104131 tp!1392925)))

(assert (=> b!4964927 (= tp!1392735 e!3104131)))

(assert (= (and b!4964927 (is-ElementMatch!13624 (regOne!27761 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))) b!4966122))

(assert (= (and b!4964927 (is-Concat!22326 (regOne!27761 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))) b!4966123))

(assert (= (and b!4964927 (is-Star!13624 (regOne!27761 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))) b!4966124))

(assert (= (and b!4964927 (is-Union!13624 (regOne!27761 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))) b!4966125))

(declare-fun b!4966126 () Bool)

(declare-fun e!3104132 () Bool)

(assert (=> b!4966126 (= e!3104132 tp_is_empty!36329)))

(declare-fun b!4966129 () Bool)

(declare-fun tp!1392932 () Bool)

(declare-fun tp!1392931 () Bool)

(assert (=> b!4966129 (= e!3104132 (and tp!1392932 tp!1392931))))

(declare-fun b!4966127 () Bool)

(declare-fun tp!1392933 () Bool)

(declare-fun tp!1392929 () Bool)

(assert (=> b!4966127 (= e!3104132 (and tp!1392933 tp!1392929))))

(declare-fun b!4966128 () Bool)

(declare-fun tp!1392930 () Bool)

(assert (=> b!4966128 (= e!3104132 tp!1392930)))

(assert (=> b!4964927 (= tp!1392734 e!3104132)))

(assert (= (and b!4964927 (is-ElementMatch!13624 (regTwo!27761 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))) b!4966126))

(assert (= (and b!4964927 (is-Concat!22326 (regTwo!27761 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))) b!4966127))

(assert (= (and b!4964927 (is-Star!13624 (regTwo!27761 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))) b!4966128))

(assert (= (and b!4964927 (is-Union!13624 (regTwo!27761 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))) b!4966129))

(declare-fun b!4966130 () Bool)

(declare-fun e!3104133 () Bool)

(assert (=> b!4966130 (= e!3104133 tp_is_empty!36329)))

(declare-fun b!4966133 () Bool)

(declare-fun tp!1392937 () Bool)

(declare-fun tp!1392936 () Bool)

(assert (=> b!4966133 (= e!3104133 (and tp!1392937 tp!1392936))))

(declare-fun b!4966131 () Bool)

(declare-fun tp!1392938 () Bool)

(declare-fun tp!1392934 () Bool)

(assert (=> b!4966131 (= e!3104133 (and tp!1392938 tp!1392934))))

(declare-fun b!4966132 () Bool)

(declare-fun tp!1392935 () Bool)

(assert (=> b!4966132 (= e!3104133 tp!1392935)))

(assert (=> b!4964926 (= tp!1392733 e!3104133)))

(assert (= (and b!4964926 (is-ElementMatch!13624 (reg!13953 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))) b!4966130))

(assert (= (and b!4964926 (is-Concat!22326 (reg!13953 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))) b!4966131))

(assert (= (and b!4964926 (is-Star!13624 (reg!13953 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))) b!4966132))

(assert (= (and b!4964926 (is-Union!13624 (reg!13953 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))) b!4966133))

(declare-fun tp!1392941 () Bool)

(declare-fun b!4966134 () Bool)

(declare-fun tp!1392939 () Bool)

(declare-fun e!3104135 () Bool)

(assert (=> b!4966134 (= e!3104135 (and (inv!75059 (left!41893 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (value!268585 (_1!34378 (get!19935 lt!2049691))))))) tp!1392939 (inv!75059 (right!42223 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (value!268585 (_1!34378 (get!19935 lt!2049691))))))) tp!1392941))))

(declare-fun b!4966136 () Bool)

(declare-fun e!3104134 () Bool)

(declare-fun tp!1392940 () Bool)

(assert (=> b!4966136 (= e!3104134 tp!1392940)))

(declare-fun b!4966135 () Bool)

(assert (=> b!4966135 (= e!3104135 (and (inv!75067 (xs!18469 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (value!268585 (_1!34378 (get!19935 lt!2049691))))))) e!3104134))))

(assert (=> b!4964813 (= tp!1392721 (and (inv!75059 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (value!268585 (_1!34378 (get!19935 lt!2049691)))))) e!3104135))))

(assert (= (and b!4964813 (is-Node!15143 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (value!268585 (_1!34378 (get!19935 lt!2049691))))))) b!4966134))

(assert (= b!4966135 b!4966136))

(assert (= (and b!4964813 (is-Leaf!25164 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))) (value!268585 (_1!34378 (get!19935 lt!2049691))))))) b!4966135))

(declare-fun m!5991704 () Bool)

(assert (=> b!4966134 m!5991704))

(declare-fun m!5991706 () Bool)

(assert (=> b!4966134 m!5991706))

(declare-fun m!5991708 () Bool)

(assert (=> b!4966135 m!5991708))

(assert (=> b!4964813 m!5989452))

(declare-fun b!4966137 () Bool)

(declare-fun e!3104136 () Bool)

(assert (=> b!4966137 (= e!3104136 tp_is_empty!36329)))

(declare-fun b!4966140 () Bool)

(declare-fun tp!1392945 () Bool)

(declare-fun tp!1392944 () Bool)

(assert (=> b!4966140 (= e!3104136 (and tp!1392945 tp!1392944))))

(declare-fun b!4966138 () Bool)

(declare-fun tp!1392946 () Bool)

(declare-fun tp!1392942 () Bool)

(assert (=> b!4966138 (= e!3104136 (and tp!1392946 tp!1392942))))

(declare-fun b!4966139 () Bool)

(declare-fun tp!1392943 () Bool)

(assert (=> b!4966139 (= e!3104136 tp!1392943)))

(assert (=> b!4964919 (= tp!1392730 e!3104136)))

(assert (= (and b!4964919 (is-ElementMatch!13624 (regOne!27761 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966137))

(assert (= (and b!4964919 (is-Concat!22326 (regOne!27761 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966138))

(assert (= (and b!4964919 (is-Star!13624 (regOne!27761 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966139))

(assert (= (and b!4964919 (is-Union!13624 (regOne!27761 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966140))

(declare-fun b!4966141 () Bool)

(declare-fun e!3104137 () Bool)

(assert (=> b!4966141 (= e!3104137 tp_is_empty!36329)))

(declare-fun b!4966144 () Bool)

(declare-fun tp!1392950 () Bool)

(declare-fun tp!1392949 () Bool)

(assert (=> b!4966144 (= e!3104137 (and tp!1392950 tp!1392949))))

(declare-fun b!4966142 () Bool)

(declare-fun tp!1392951 () Bool)

(declare-fun tp!1392947 () Bool)

(assert (=> b!4966142 (= e!3104137 (and tp!1392951 tp!1392947))))

(declare-fun b!4966143 () Bool)

(declare-fun tp!1392948 () Bool)

(assert (=> b!4966143 (= e!3104137 tp!1392948)))

(assert (=> b!4964919 (= tp!1392729 e!3104137)))

(assert (= (and b!4964919 (is-ElementMatch!13624 (regTwo!27761 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966141))

(assert (= (and b!4964919 (is-Concat!22326 (regTwo!27761 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966142))

(assert (= (and b!4964919 (is-Star!13624 (regTwo!27761 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966143))

(assert (= (and b!4964919 (is-Union!13624 (regTwo!27761 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966144))

(declare-fun b!4966145 () Bool)

(declare-fun e!3104138 () Bool)

(assert (=> b!4966145 (= e!3104138 tp_is_empty!36329)))

(declare-fun b!4966148 () Bool)

(declare-fun tp!1392955 () Bool)

(declare-fun tp!1392954 () Bool)

(assert (=> b!4966148 (= e!3104138 (and tp!1392955 tp!1392954))))

(declare-fun b!4966146 () Bool)

(declare-fun tp!1392956 () Bool)

(declare-fun tp!1392952 () Bool)

(assert (=> b!4966146 (= e!3104138 (and tp!1392956 tp!1392952))))

(declare-fun b!4966147 () Bool)

(declare-fun tp!1392953 () Bool)

(assert (=> b!4966147 (= e!3104138 tp!1392953)))

(assert (=> b!4964940 (= tp!1392745 e!3104138)))

(assert (= (and b!4964940 (is-ElementMatch!13624 (regex!8391 (h!63885 (t!368227 (t!368227 rulesArg!259)))))) b!4966145))

(assert (= (and b!4964940 (is-Concat!22326 (regex!8391 (h!63885 (t!368227 (t!368227 rulesArg!259)))))) b!4966146))

(assert (= (and b!4964940 (is-Star!13624 (regex!8391 (h!63885 (t!368227 (t!368227 rulesArg!259)))))) b!4966147))

(assert (= (and b!4964940 (is-Union!13624 (regex!8391 (h!63885 (t!368227 (t!368227 rulesArg!259)))))) b!4966148))

(declare-fun b!4966149 () Bool)

(declare-fun e!3104139 () Bool)

(assert (=> b!4966149 (= e!3104139 tp_is_empty!36329)))

(declare-fun b!4966152 () Bool)

(declare-fun tp!1392960 () Bool)

(declare-fun tp!1392959 () Bool)

(assert (=> b!4966152 (= e!3104139 (and tp!1392960 tp!1392959))))

(declare-fun b!4966150 () Bool)

(declare-fun tp!1392961 () Bool)

(declare-fun tp!1392957 () Bool)

(assert (=> b!4966150 (= e!3104139 (and tp!1392961 tp!1392957))))

(declare-fun b!4966151 () Bool)

(declare-fun tp!1392958 () Bool)

(assert (=> b!4966151 (= e!3104139 tp!1392958)))

(assert (=> b!4964925 (= tp!1392736 e!3104139)))

(assert (= (and b!4964925 (is-ElementMatch!13624 (regOne!27760 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))) b!4966149))

(assert (= (and b!4964925 (is-Concat!22326 (regOne!27760 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))) b!4966150))

(assert (= (and b!4964925 (is-Star!13624 (regOne!27760 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))) b!4966151))

(assert (= (and b!4964925 (is-Union!13624 (regOne!27760 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))) b!4966152))

(declare-fun b!4966153 () Bool)

(declare-fun e!3104140 () Bool)

(assert (=> b!4966153 (= e!3104140 tp_is_empty!36329)))

(declare-fun b!4966156 () Bool)

(declare-fun tp!1392965 () Bool)

(declare-fun tp!1392964 () Bool)

(assert (=> b!4966156 (= e!3104140 (and tp!1392965 tp!1392964))))

(declare-fun b!4966154 () Bool)

(declare-fun tp!1392966 () Bool)

(declare-fun tp!1392962 () Bool)

(assert (=> b!4966154 (= e!3104140 (and tp!1392966 tp!1392962))))

(declare-fun b!4966155 () Bool)

(declare-fun tp!1392963 () Bool)

(assert (=> b!4966155 (= e!3104140 tp!1392963)))

(assert (=> b!4964925 (= tp!1392732 e!3104140)))

(assert (= (and b!4964925 (is-ElementMatch!13624 (regTwo!27760 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))) b!4966153))

(assert (= (and b!4964925 (is-Concat!22326 (regTwo!27760 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))) b!4966154))

(assert (= (and b!4964925 (is-Star!13624 (regTwo!27760 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))) b!4966155))

(assert (= (and b!4964925 (is-Union!13624 (regTwo!27760 (regex!8391 (h!63885 (t!368227 rulesArg!259)))))) b!4966156))

(declare-fun b!4966157 () Bool)

(declare-fun e!3104141 () Bool)

(assert (=> b!4966157 (= e!3104141 tp_is_empty!36329)))

(declare-fun b!4966160 () Bool)

(declare-fun tp!1392970 () Bool)

(declare-fun tp!1392969 () Bool)

(assert (=> b!4966160 (= e!3104141 (and tp!1392970 tp!1392969))))

(declare-fun b!4966158 () Bool)

(declare-fun tp!1392971 () Bool)

(declare-fun tp!1392967 () Bool)

(assert (=> b!4966158 (= e!3104141 (and tp!1392971 tp!1392967))))

(declare-fun b!4966159 () Bool)

(declare-fun tp!1392968 () Bool)

(assert (=> b!4966159 (= e!3104141 tp!1392968)))

(assert (=> b!4964918 (= tp!1392728 e!3104141)))

(assert (= (and b!4964918 (is-ElementMatch!13624 (reg!13953 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966157))

(assert (= (and b!4964918 (is-Concat!22326 (reg!13953 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966158))

(assert (= (and b!4964918 (is-Star!13624 (reg!13953 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966159))

(assert (= (and b!4964918 (is-Union!13624 (reg!13953 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966160))

(declare-fun b!4966163 () Bool)

(declare-fun b_free!132759 () Bool)

(declare-fun b_next!133549 () Bool)

(assert (=> b!4966163 (= b_free!132759 (not b_next!133549))))

(declare-fun t!368407 () Bool)

(declare-fun tb!260395 () Bool)

(assert (=> (and b!4966163 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) t!368407) tb!260395))

(declare-fun result!325490 () Bool)

(assert (= result!325490 result!325442))

(assert (=> d!1597727 t!368407))

(declare-fun t!368409 () Bool)

(declare-fun tb!260397 () Bool)

(assert (=> (and b!4966163 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) t!368409) tb!260397))

(declare-fun result!325492 () Bool)

(assert (= result!325492 result!325394))

(assert (=> d!1597539 t!368409))

(declare-fun t!368411 () Bool)

(declare-fun tb!260399 () Bool)

(assert (=> (and b!4966163 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049912)))))) t!368411) tb!260399))

(declare-fun result!325494 () Bool)

(assert (= result!325494 result!325436))

(assert (=> d!1597667 t!368411))

(declare-fun tb!260401 () Bool)

(declare-fun t!368413 () Bool)

(assert (=> (and b!4966163 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049977)))))) t!368413) tb!260401))

(declare-fun result!325496 () Bool)

(assert (= result!325496 result!325406))

(assert (=> d!1597553 t!368413))

(assert (=> d!1597737 t!368407))

(declare-fun t!368415 () Bool)

(declare-fun tb!260403 () Bool)

(assert (=> (and b!4966163 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) t!368415) tb!260403))

(declare-fun result!325498 () Bool)

(assert (= result!325498 result!325430))

(assert (=> d!1597583 t!368415))

(declare-fun t!368417 () Bool)

(declare-fun tb!260405 () Bool)

(assert (=> (and b!4966163 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) t!368417) tb!260405))

(declare-fun result!325500 () Bool)

(assert (= result!325500 result!325484))

(assert (=> d!1598055 t!368417))

(declare-fun t!368419 () Bool)

(declare-fun tb!260407 () Bool)

(assert (=> (and b!4966163 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928)))))) t!368419) tb!260407))

(declare-fun result!325502 () Bool)

(assert (= result!325502 result!325418))

(assert (=> d!1597575 t!368419))

(declare-fun t!368421 () Bool)

(declare-fun tb!260409 () Bool)

(assert (=> (and b!4966163 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))) t!368421) tb!260409))

(declare-fun result!325504 () Bool)

(assert (= result!325504 result!325310))

(assert (=> d!1597247 t!368421))

(declare-fun tb!260411 () Bool)

(declare-fun t!368423 () Bool)

(assert (=> (and b!4966163 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922)))))) t!368423) tb!260411))

(declare-fun result!325506 () Bool)

(assert (= result!325506 result!325412))

(assert (=> d!1597563 t!368423))

(declare-fun t!368425 () Bool)

(declare-fun tb!260413 () Bool)

(assert (=> (and b!4966163 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) t!368425) tb!260413))

(declare-fun result!325508 () Bool)

(assert (= result!325508 result!325322))

(assert (=> d!1597335 t!368425))

(assert (=> bs!1182921 t!368425))

(assert (=> d!1598051 t!368417))

(assert (=> d!1597525 t!368409))

(declare-fun t!368427 () Bool)

(declare-fun tb!260415 () Bool)

(assert (=> (and b!4966163 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259)))) t!368427) tb!260415))

(declare-fun result!325510 () Bool)

(assert (= result!325510 result!325326))

(assert (=> bs!1182919 t!368427))

(assert (=> d!1597367 t!368425))

(declare-fun t!368429 () Bool)

(declare-fun tb!260417 () Bool)

(assert (=> (and b!4966163 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) t!368429) tb!260417))

(declare-fun result!325512 () Bool)

(assert (= result!325512 result!325448))

(assert (=> d!1597727 t!368429))

(assert (=> d!1597585 t!368415))

(assert (=> d!1597335 t!368427))

(declare-fun b_and!347923 () Bool)

(declare-fun tp!1392973 () Bool)

(assert (=> b!4966163 (= tp!1392973 (and (=> t!368421 result!325504) (=> t!368427 result!325510) (=> t!368411 result!325494) (=> t!368415 result!325498) (=> t!368425 result!325508) (=> t!368417 result!325500) (=> t!368407 result!325490) (=> t!368413 result!325496) (=> t!368423 result!325506) (=> t!368419 result!325502) (=> t!368429 result!325512) (=> t!368409 result!325492) b_and!347923))))

(declare-fun b_free!132761 () Bool)

(declare-fun b_next!133551 () Bool)

(assert (=> b!4966163 (= b_free!132761 (not b_next!133551))))

(declare-fun t!368431 () Bool)

(declare-fun tb!260419 () Bool)

(assert (=> (and b!4966163 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049977)))))) t!368431) tb!260419))

(declare-fun result!325514 () Bool)

(assert (= result!325514 result!325466))

(assert (=> d!1597949 t!368431))

(declare-fun t!368433 () Bool)

(declare-fun tb!260421 () Bool)

(assert (=> (and b!4966163 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049922)))))) t!368433) tb!260421))

(declare-fun result!325516 () Bool)

(assert (= result!325516 result!325454))

(assert (=> d!1597819 t!368433))

(declare-fun t!368435 () Bool)

(declare-fun tb!260423 () Bool)

(assert (=> (and b!4966163 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) t!368435) tb!260423))

(declare-fun result!325518 () Bool)

(assert (= result!325518 result!325340))

(assert (=> bs!1182919 t!368435))

(declare-fun tb!260425 () Bool)

(declare-fun t!368437 () Bool)

(assert (=> (and b!4966163 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049912)))))) t!368437) tb!260425))

(declare-fun result!325520 () Bool)

(assert (= result!325520 result!325472))

(assert (=> d!1598043 t!368437))

(declare-fun t!368439 () Bool)

(declare-fun tb!260427 () Bool)

(assert (=> (and b!4966163 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) t!368439) tb!260427))

(declare-fun result!325522 () Bool)

(assert (= result!325522 result!325400))

(assert (=> d!1597539 t!368439))

(declare-fun t!368441 () Bool)

(declare-fun tb!260429 () Bool)

(assert (=> (and b!4966163 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691)))))) t!368441) tb!260429))

(declare-fun result!325524 () Bool)

(assert (= result!325524 result!325316))

(assert (=> d!1597309 t!368441))

(declare-fun t!368443 () Bool)

(declare-fun tb!260431 () Bool)

(assert (=> (and b!4966163 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049928)))))) t!368443) tb!260431))

(declare-fun result!325526 () Bool)

(assert (= result!325526 result!325460))

(assert (=> d!1597825 t!368443))

(declare-fun t!368445 () Bool)

(declare-fun tb!260433 () Bool)

(assert (=> (and b!4966163 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) t!368445) tb!260433))

(declare-fun result!325528 () Bool)

(assert (= result!325528 result!325346))

(assert (=> bs!1182921 t!368445))

(declare-fun t!368447 () Bool)

(declare-fun tb!260435 () Bool)

(assert (=> (and b!4966163 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) t!368447) tb!260435))

(declare-fun result!325530 () Bool)

(assert (= result!325530 result!325478))

(assert (=> d!1598051 t!368447))

(declare-fun t!368449 () Bool)

(declare-fun tb!260437 () Bool)

(assert (=> (and b!4966163 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259)))) t!368449) tb!260437))

(declare-fun result!325532 () Bool)

(assert (= result!325532 result!325424))

(assert (=> d!1597583 t!368449))

(declare-fun b_and!347925 () Bool)

(declare-fun tp!1392974 () Bool)

(assert (=> b!4966163 (= tp!1392974 (and (=> t!368439 result!325522) (=> t!368449 result!325532) (=> t!368431 result!325514) (=> t!368447 result!325530) (=> t!368445 result!325528) (=> t!368435 result!325518) (=> t!368443 result!325526) (=> t!368437 result!325520) (=> t!368441 result!325524) (=> t!368433 result!325516) b_and!347925))))

(declare-fun e!3104145 () Bool)

(assert (=> b!4966163 (= e!3104145 (and tp!1392973 tp!1392974))))

(declare-fun e!3104142 () Bool)

(declare-fun tp!1392972 () Bool)

(declare-fun b!4966162 () Bool)

(assert (=> b!4966162 (= e!3104142 (and tp!1392972 (inv!75056 (tag!9255 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (inv!75061 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) e!3104145))))

(declare-fun b!4966161 () Bool)

(declare-fun e!3104143 () Bool)

(declare-fun tp!1392975 () Bool)

(assert (=> b!4966161 (= e!3104143 (and e!3104142 tp!1392975))))

(assert (=> b!4964939 (= tp!1392748 e!3104143)))

(assert (= b!4966162 b!4966163))

(assert (= b!4966161 b!4966162))

(assert (= (and b!4964939 (is-Cons!57437 (t!368227 (t!368227 (t!368227 rulesArg!259))))) b!4966161))

(declare-fun m!5991710 () Bool)

(assert (=> b!4966162 m!5991710))

(declare-fun m!5991712 () Bool)

(assert (=> b!4966162 m!5991712))

(declare-fun tp!1392978 () Bool)

(declare-fun e!3104147 () Bool)

(declare-fun b!4966164 () Bool)

(declare-fun tp!1392976 () Bool)

(assert (=> b!4966164 (= e!3104147 (and (inv!75059 (left!41893 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))))))) tp!1392976 (inv!75059 (right!42223 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))))))) tp!1392978))))

(declare-fun b!4966166 () Bool)

(declare-fun e!3104146 () Bool)

(declare-fun tp!1392977 () Bool)

(assert (=> b!4966166 (= e!3104146 tp!1392977)))

(declare-fun b!4966165 () Bool)

(assert (=> b!4966165 (= e!3104147 (and (inv!75067 (xs!18469 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))))))) e!3104146))))

(assert (=> b!4964975 (= tp!1392772 (and (inv!75059 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))))) e!3104147))))

(assert (= (and b!4964975 (is-Node!15143 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))))))) b!4966164))

(assert (= b!4966165 b!4966166))

(assert (= (and b!4964975 (is-Leaf!25164 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))))))) b!4966165))

(declare-fun m!5991714 () Bool)

(assert (=> b!4966164 m!5991714))

(declare-fun m!5991716 () Bool)

(assert (=> b!4966164 m!5991716))

(declare-fun m!5991718 () Bool)

(assert (=> b!4966165 m!5991718))

(assert (=> b!4964975 m!5989680))

(declare-fun b!4966167 () Bool)

(declare-fun e!3104148 () Bool)

(declare-fun tp!1392979 () Bool)

(assert (=> b!4966167 (= e!3104148 (and tp_is_empty!36329 tp!1392979))))

(assert (=> b!4964967 (= tp!1392767 e!3104148)))

(assert (= (and b!4964967 (is-Cons!57435 (innerList!15231 (xs!18469 (left!41893 (c!846918 input!1342)))))) b!4966167))

(declare-fun b!4966168 () Bool)

(declare-fun e!3104149 () Bool)

(assert (=> b!4966168 (= e!3104149 tp_is_empty!36329)))

(declare-fun b!4966171 () Bool)

(declare-fun tp!1392983 () Bool)

(declare-fun tp!1392982 () Bool)

(assert (=> b!4966171 (= e!3104149 (and tp!1392983 tp!1392982))))

(declare-fun b!4966169 () Bool)

(declare-fun tp!1392984 () Bool)

(declare-fun tp!1392980 () Bool)

(assert (=> b!4966169 (= e!3104149 (and tp!1392984 tp!1392980))))

(declare-fun b!4966170 () Bool)

(declare-fun tp!1392981 () Bool)

(assert (=> b!4966170 (= e!3104149 tp!1392981)))

(assert (=> b!4964917 (= tp!1392731 e!3104149)))

(assert (= (and b!4964917 (is-ElementMatch!13624 (regOne!27760 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966168))

(assert (= (and b!4964917 (is-Concat!22326 (regOne!27760 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966169))

(assert (= (and b!4964917 (is-Star!13624 (regOne!27760 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966170))

(assert (= (and b!4964917 (is-Union!13624 (regOne!27760 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966171))

(declare-fun b!4966172 () Bool)

(declare-fun e!3104150 () Bool)

(assert (=> b!4966172 (= e!3104150 tp_is_empty!36329)))

(declare-fun b!4966175 () Bool)

(declare-fun tp!1392988 () Bool)

(declare-fun tp!1392987 () Bool)

(assert (=> b!4966175 (= e!3104150 (and tp!1392988 tp!1392987))))

(declare-fun b!4966173 () Bool)

(declare-fun tp!1392989 () Bool)

(declare-fun tp!1392985 () Bool)

(assert (=> b!4966173 (= e!3104150 (and tp!1392989 tp!1392985))))

(declare-fun b!4966174 () Bool)

(declare-fun tp!1392986 () Bool)

(assert (=> b!4966174 (= e!3104150 tp!1392986)))

(assert (=> b!4964917 (= tp!1392727 e!3104150)))

(assert (= (and b!4964917 (is-ElementMatch!13624 (regTwo!27760 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966172))

(assert (= (and b!4964917 (is-Concat!22326 (regTwo!27760 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966173))

(assert (= (and b!4964917 (is-Star!13624 (regTwo!27760 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966174))

(assert (= (and b!4964917 (is-Union!13624 (regTwo!27760 (regTwo!27761 (regex!8391 (h!63885 rulesArg!259)))))) b!4966175))

(declare-fun e!3104152 () Bool)

(declare-fun tp!1392992 () Bool)

(declare-fun tp!1392990 () Bool)

(declare-fun b!4966176 () Bool)

(assert (=> b!4966176 (= e!3104152 (and (inv!75059 (left!41893 (left!41893 (left!41893 (c!846918 input!1342))))) tp!1392990 (inv!75059 (right!42223 (left!41893 (left!41893 (c!846918 input!1342))))) tp!1392992))))

(declare-fun b!4966178 () Bool)

(declare-fun e!3104151 () Bool)

(declare-fun tp!1392991 () Bool)

(assert (=> b!4966178 (= e!3104151 tp!1392991)))

(declare-fun b!4966177 () Bool)

(assert (=> b!4966177 (= e!3104152 (and (inv!75067 (xs!18469 (left!41893 (left!41893 (c!846918 input!1342))))) e!3104151))))

(assert (=> b!4964965 (= tp!1392766 (and (inv!75059 (left!41893 (left!41893 (c!846918 input!1342)))) e!3104152))))

(assert (= (and b!4964965 (is-Node!15143 (left!41893 (left!41893 (c!846918 input!1342))))) b!4966176))

(assert (= b!4966177 b!4966178))

(assert (= (and b!4964965 (is-Leaf!25164 (left!41893 (left!41893 (c!846918 input!1342))))) b!4966177))

(declare-fun m!5991720 () Bool)

(assert (=> b!4966176 m!5991720))

(declare-fun m!5991722 () Bool)

(assert (=> b!4966176 m!5991722))

(declare-fun m!5991724 () Bool)

(assert (=> b!4966177 m!5991724))

(assert (=> b!4964965 m!5989660))

(declare-fun e!3104154 () Bool)

(declare-fun tp!1392995 () Bool)

(declare-fun tp!1392993 () Bool)

(declare-fun b!4966179 () Bool)

(assert (=> b!4966179 (= e!3104154 (and (inv!75059 (left!41893 (right!42223 (left!41893 (c!846918 input!1342))))) tp!1392993 (inv!75059 (right!42223 (right!42223 (left!41893 (c!846918 input!1342))))) tp!1392995))))

(declare-fun b!4966181 () Bool)

(declare-fun e!3104153 () Bool)

(declare-fun tp!1392994 () Bool)

(assert (=> b!4966181 (= e!3104153 tp!1392994)))

(declare-fun b!4966180 () Bool)

(assert (=> b!4966180 (= e!3104154 (and (inv!75067 (xs!18469 (right!42223 (left!41893 (c!846918 input!1342))))) e!3104153))))

(assert (=> b!4964965 (= tp!1392768 (and (inv!75059 (right!42223 (left!41893 (c!846918 input!1342)))) e!3104154))))

(assert (= (and b!4964965 (is-Node!15143 (right!42223 (left!41893 (c!846918 input!1342))))) b!4966179))

(assert (= b!4966180 b!4966181))

(assert (= (and b!4964965 (is-Leaf!25164 (right!42223 (left!41893 (c!846918 input!1342))))) b!4966180))

(declare-fun m!5991726 () Bool)

(assert (=> b!4966179 m!5991726))

(declare-fun m!5991728 () Bool)

(assert (=> b!4966179 m!5991728))

(declare-fun m!5991730 () Bool)

(assert (=> b!4966180 m!5991730))

(assert (=> b!4964965 m!5989662))

(declare-fun b!4966182 () Bool)

(declare-fun e!3104155 () Bool)

(assert (=> b!4966182 (= e!3104155 tp_is_empty!36329)))

(declare-fun b!4966185 () Bool)

(declare-fun tp!1392999 () Bool)

(declare-fun tp!1392998 () Bool)

(assert (=> b!4966185 (= e!3104155 (and tp!1392999 tp!1392998))))

(declare-fun b!4966183 () Bool)

(declare-fun tp!1393000 () Bool)

(declare-fun tp!1392996 () Bool)

(assert (=> b!4966183 (= e!3104155 (and tp!1393000 tp!1392996))))

(declare-fun b!4966184 () Bool)

(declare-fun tp!1392997 () Bool)

(assert (=> b!4966184 (= e!3104155 tp!1392997)))

(assert (=> b!4964945 (= tp!1392752 e!3104155)))

(assert (= (and b!4964945 (is-ElementMatch!13624 (regOne!27761 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966182))

(assert (= (and b!4964945 (is-Concat!22326 (regOne!27761 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966183))

(assert (= (and b!4964945 (is-Star!13624 (regOne!27761 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966184))

(assert (= (and b!4964945 (is-Union!13624 (regOne!27761 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966185))

(declare-fun b!4966186 () Bool)

(declare-fun e!3104156 () Bool)

(assert (=> b!4966186 (= e!3104156 tp_is_empty!36329)))

(declare-fun b!4966189 () Bool)

(declare-fun tp!1393004 () Bool)

(declare-fun tp!1393003 () Bool)

(assert (=> b!4966189 (= e!3104156 (and tp!1393004 tp!1393003))))

(declare-fun b!4966187 () Bool)

(declare-fun tp!1393005 () Bool)

(declare-fun tp!1393001 () Bool)

(assert (=> b!4966187 (= e!3104156 (and tp!1393005 tp!1393001))))

(declare-fun b!4966188 () Bool)

(declare-fun tp!1393002 () Bool)

(assert (=> b!4966188 (= e!3104156 tp!1393002)))

(assert (=> b!4964945 (= tp!1392751 e!3104156)))

(assert (= (and b!4964945 (is-ElementMatch!13624 (regTwo!27761 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966186))

(assert (= (and b!4964945 (is-Concat!22326 (regTwo!27761 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966187))

(assert (= (and b!4964945 (is-Star!13624 (regTwo!27761 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966188))

(assert (= (and b!4964945 (is-Union!13624 (regTwo!27761 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966189))

(declare-fun b!4966190 () Bool)

(declare-fun e!3104157 () Bool)

(assert (=> b!4966190 (= e!3104157 tp_is_empty!36329)))

(declare-fun b!4966193 () Bool)

(declare-fun tp!1393009 () Bool)

(declare-fun tp!1393008 () Bool)

(assert (=> b!4966193 (= e!3104157 (and tp!1393009 tp!1393008))))

(declare-fun b!4966191 () Bool)

(declare-fun tp!1393010 () Bool)

(declare-fun tp!1393006 () Bool)

(assert (=> b!4966191 (= e!3104157 (and tp!1393010 tp!1393006))))

(declare-fun b!4966192 () Bool)

(declare-fun tp!1393007 () Bool)

(assert (=> b!4966192 (= e!3104157 tp!1393007)))

(assert (=> b!4964944 (= tp!1392750 e!3104157)))

(assert (= (and b!4964944 (is-ElementMatch!13624 (reg!13953 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966190))

(assert (= (and b!4964944 (is-Concat!22326 (reg!13953 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966191))

(assert (= (and b!4964944 (is-Star!13624 (reg!13953 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966192))

(assert (= (and b!4964944 (is-Union!13624 (reg!13953 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966193))

(declare-fun b!4966194 () Bool)

(declare-fun e!3104158 () Bool)

(declare-fun tp!1393011 () Bool)

(assert (=> b!4966194 (= e!3104158 (and tp_is_empty!36329 tp!1393011))))

(assert (=> b!4964961 (= tp!1392761 e!3104158)))

(assert (= (and b!4964961 (is-Cons!57435 (innerList!15231 (xs!18469 (left!41893 (c!846918 totalInput!464)))))) b!4966194))

(declare-fun b!4966195 () Bool)

(declare-fun e!3104159 () Bool)

(assert (=> b!4966195 (= e!3104159 tp_is_empty!36329)))

(declare-fun b!4966198 () Bool)

(declare-fun tp!1393015 () Bool)

(declare-fun tp!1393014 () Bool)

(assert (=> b!4966198 (= e!3104159 (and tp!1393015 tp!1393014))))

(declare-fun b!4966196 () Bool)

(declare-fun tp!1393016 () Bool)

(declare-fun tp!1393012 () Bool)

(assert (=> b!4966196 (= e!3104159 (and tp!1393016 tp!1393012))))

(declare-fun b!4966197 () Bool)

(declare-fun tp!1393013 () Bool)

(assert (=> b!4966197 (= e!3104159 tp!1393013)))

(assert (=> b!4964930 (= tp!1392738 e!3104159)))

(assert (= (and b!4964930 (is-ElementMatch!13624 (reg!13953 (reg!13953 (regex!8391 (h!63885 rulesArg!259)))))) b!4966195))

(assert (= (and b!4964930 (is-Concat!22326 (reg!13953 (reg!13953 (regex!8391 (h!63885 rulesArg!259)))))) b!4966196))

(assert (= (and b!4964930 (is-Star!13624 (reg!13953 (reg!13953 (regex!8391 (h!63885 rulesArg!259)))))) b!4966197))

(assert (= (and b!4964930 (is-Union!13624 (reg!13953 (reg!13953 (regex!8391 (h!63885 rulesArg!259)))))) b!4966198))

(declare-fun tp!1393017 () Bool)

(declare-fun b!4966199 () Bool)

(declare-fun e!3104161 () Bool)

(declare-fun tp!1393019 () Bool)

(assert (=> b!4966199 (= e!3104161 (and (inv!75059 (left!41893 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676)))))) tp!1393017 (inv!75059 (right!42223 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676)))))) tp!1393019))))

(declare-fun b!4966201 () Bool)

(declare-fun e!3104160 () Bool)

(declare-fun tp!1393018 () Bool)

(assert (=> b!4966201 (= e!3104160 tp!1393018)))

(declare-fun b!4966200 () Bool)

(assert (=> b!4966200 (= e!3104161 (and (inv!75067 (xs!18469 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676)))))) e!3104160))))

(assert (=> b!4964976 (= tp!1392773 (and (inv!75059 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676))))) e!3104161))))

(assert (= (and b!4964976 (is-Node!15143 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676)))))) b!4966199))

(assert (= b!4966200 b!4966201))

(assert (= (and b!4964976 (is-Leaf!25164 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676)))))) b!4966200))

(declare-fun m!5991732 () Bool)

(assert (=> b!4966199 m!5991732))

(declare-fun m!5991734 () Bool)

(assert (=> b!4966199 m!5991734))

(declare-fun m!5991736 () Bool)

(assert (=> b!4966200 m!5991736))

(assert (=> b!4964976 m!5989688))

(declare-fun b!4966202 () Bool)

(declare-fun e!3104162 () Bool)

(assert (=> b!4966202 (= e!3104162 tp_is_empty!36329)))

(declare-fun b!4966205 () Bool)

(declare-fun tp!1393023 () Bool)

(declare-fun tp!1393022 () Bool)

(assert (=> b!4966205 (= e!3104162 (and tp!1393023 tp!1393022))))

(declare-fun b!4966203 () Bool)

(declare-fun tp!1393024 () Bool)

(declare-fun tp!1393020 () Bool)

(assert (=> b!4966203 (= e!3104162 (and tp!1393024 tp!1393020))))

(declare-fun b!4966204 () Bool)

(declare-fun tp!1393021 () Bool)

(assert (=> b!4966204 (= e!3104162 tp!1393021)))

(assert (=> b!4964943 (= tp!1392753 e!3104162)))

(assert (= (and b!4964943 (is-ElementMatch!13624 (regOne!27760 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966202))

(assert (= (and b!4964943 (is-Concat!22326 (regOne!27760 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966203))

(assert (= (and b!4964943 (is-Star!13624 (regOne!27760 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966204))

(assert (= (and b!4964943 (is-Union!13624 (regOne!27760 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966205))

(declare-fun b!4966206 () Bool)

(declare-fun e!3104163 () Bool)

(assert (=> b!4966206 (= e!3104163 tp_is_empty!36329)))

(declare-fun b!4966209 () Bool)

(declare-fun tp!1393028 () Bool)

(declare-fun tp!1393027 () Bool)

(assert (=> b!4966209 (= e!3104163 (and tp!1393028 tp!1393027))))

(declare-fun b!4966207 () Bool)

(declare-fun tp!1393029 () Bool)

(declare-fun tp!1393025 () Bool)

(assert (=> b!4966207 (= e!3104163 (and tp!1393029 tp!1393025))))

(declare-fun b!4966208 () Bool)

(declare-fun tp!1393026 () Bool)

(assert (=> b!4966208 (= e!3104163 tp!1393026)))

(assert (=> b!4964943 (= tp!1392749 e!3104163)))

(assert (= (and b!4964943 (is-ElementMatch!13624 (regTwo!27760 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966206))

(assert (= (and b!4964943 (is-Concat!22326 (regTwo!27760 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966207))

(assert (= (and b!4964943 (is-Star!13624 (regTwo!27760 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966208))

(assert (= (and b!4964943 (is-Union!13624 (regTwo!27760 (regOne!27760 (regex!8391 (h!63885 rulesArg!259)))))) b!4966209))

(declare-fun b!4966210 () Bool)

(declare-fun e!3104164 () Bool)

(assert (=> b!4966210 (= e!3104164 tp_is_empty!36329)))

(declare-fun b!4966213 () Bool)

(declare-fun tp!1393033 () Bool)

(declare-fun tp!1393032 () Bool)

(assert (=> b!4966213 (= e!3104164 (and tp!1393033 tp!1393032))))

(declare-fun b!4966211 () Bool)

(declare-fun tp!1393034 () Bool)

(declare-fun tp!1393030 () Bool)

(assert (=> b!4966211 (= e!3104164 (and tp!1393034 tp!1393030))))

(declare-fun b!4966212 () Bool)

(declare-fun tp!1393031 () Bool)

(assert (=> b!4966212 (= e!3104164 tp!1393031)))

(assert (=> b!4964931 (= tp!1392740 e!3104164)))

(assert (= (and b!4964931 (is-ElementMatch!13624 (regOne!27761 (reg!13953 (regex!8391 (h!63885 rulesArg!259)))))) b!4966210))

(assert (= (and b!4964931 (is-Concat!22326 (regOne!27761 (reg!13953 (regex!8391 (h!63885 rulesArg!259)))))) b!4966211))

(assert (= (and b!4964931 (is-Star!13624 (regOne!27761 (reg!13953 (regex!8391 (h!63885 rulesArg!259)))))) b!4966212))

(assert (= (and b!4964931 (is-Union!13624 (regOne!27761 (reg!13953 (regex!8391 (h!63885 rulesArg!259)))))) b!4966213))

(declare-fun b!4966214 () Bool)

(declare-fun e!3104165 () Bool)

(assert (=> b!4966214 (= e!3104165 tp_is_empty!36329)))

(declare-fun b!4966217 () Bool)

(declare-fun tp!1393038 () Bool)

(declare-fun tp!1393037 () Bool)

(assert (=> b!4966217 (= e!3104165 (and tp!1393038 tp!1393037))))

(declare-fun b!4966215 () Bool)

(declare-fun tp!1393039 () Bool)

(declare-fun tp!1393035 () Bool)

(assert (=> b!4966215 (= e!3104165 (and tp!1393039 tp!1393035))))

(declare-fun b!4966216 () Bool)

(declare-fun tp!1393036 () Bool)

(assert (=> b!4966216 (= e!3104165 tp!1393036)))

(assert (=> b!4964931 (= tp!1392739 e!3104165)))

(assert (= (and b!4964931 (is-ElementMatch!13624 (regTwo!27761 (reg!13953 (regex!8391 (h!63885 rulesArg!259)))))) b!4966214))

(assert (= (and b!4964931 (is-Concat!22326 (regTwo!27761 (reg!13953 (regex!8391 (h!63885 rulesArg!259)))))) b!4966215))

(assert (= (and b!4964931 (is-Star!13624 (regTwo!27761 (reg!13953 (regex!8391 (h!63885 rulesArg!259)))))) b!4966216))

(assert (= (and b!4964931 (is-Union!13624 (regTwo!27761 (reg!13953 (regex!8391 (h!63885 rulesArg!259)))))) b!4966217))

(declare-fun b_lambda!196667 () Bool)

(assert (= b_lambda!196655 (or b!4964280 b_lambda!196667)))

(assert (=> d!1597985 d!1597381))

(declare-fun b_lambda!196669 () Bool)

(assert (= b_lambda!196647 (or d!1597107 b_lambda!196669)))

(declare-fun bs!1183054 () Bool)

(declare-fun d!1598089 () Bool)

(assert (= bs!1183054 (and d!1598089 d!1597107)))

(assert (=> bs!1183054 (= (dynLambda!23148 lambda!247301 (h!63885 (t!368227 rulesArg!259))) (ruleValid!3800 thiss!15247 (h!63885 (t!368227 rulesArg!259))))))

(assert (=> bs!1183054 m!5989330))

(assert (=> b!4965666 d!1598089))

(declare-fun b_lambda!196671 () Bool)

(assert (= b_lambda!196659 (or (and b!4964142 b_free!132737) (and b!4964367 b_free!132745 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4964941 b_free!132753 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4966163 b_free!132761 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))))) b_lambda!196671)))

(declare-fun b_lambda!196673 () Bool)

(assert (= b_lambda!196641 (or b!4964759 b_lambda!196673)))

(declare-fun bs!1183055 () Bool)

(declare-fun d!1598091 () Bool)

(assert (= bs!1183055 (and d!1598091 b!4964759)))

(assert (=> bs!1183055 (= (dynLambda!23152 lambda!247318 (seqFromList!6034 (list!18359 (_1!34381 lt!2049950)))) (= (list!18359 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049950)))))) (list!18359 (seqFromList!6034 (list!18359 (_1!34381 lt!2049950))))))))

(declare-fun b_lambda!196709 () Bool)

(assert (=> (not b_lambda!196709) (not bs!1183055)))

(declare-fun t!368451 () Bool)

(declare-fun tb!260439 () Bool)

(assert (=> (and b!4964142 (= (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) t!368451) tb!260439))

(declare-fun e!3104166 () Bool)

(declare-fun tp!1393040 () Bool)

(declare-fun b!4966218 () Bool)

(assert (=> b!4966218 (= e!3104166 (and (inv!75059 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049950))))))) tp!1393040))))

(declare-fun result!325534 () Bool)

(assert (=> tb!260439 (= result!325534 (and (inv!75060 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049950)))))) e!3104166))))

(assert (= tb!260439 b!4966218))

(declare-fun m!5991738 () Bool)

(assert (=> b!4966218 m!5991738))

(declare-fun m!5991740 () Bool)

(assert (=> tb!260439 m!5991740))

(assert (=> bs!1183055 t!368451))

(declare-fun b_and!347927 () Bool)

(assert (= b_and!347905 (and (=> t!368451 result!325534) b_and!347927)))

(declare-fun t!368453 () Bool)

(declare-fun tb!260441 () Bool)

(assert (=> (and b!4964367 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) t!368453) tb!260441))

(declare-fun result!325536 () Bool)

(assert (= result!325536 result!325534))

(assert (=> bs!1183055 t!368453))

(declare-fun b_and!347929 () Bool)

(assert (= b_and!347907 (and (=> t!368453 result!325536) b_and!347929)))

(declare-fun t!368455 () Bool)

(declare-fun tb!260443 () Bool)

(assert (=> (and b!4964941 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) t!368455) tb!260443))

(declare-fun result!325538 () Bool)

(assert (= result!325538 result!325534))

(assert (=> bs!1183055 t!368455))

(declare-fun b_and!347931 () Bool)

(assert (= b_and!347909 (and (=> t!368455 result!325538) b_and!347931)))

(declare-fun t!368457 () Bool)

(declare-fun tb!260445 () Bool)

(assert (=> (and b!4966163 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) t!368457) tb!260445))

(declare-fun result!325540 () Bool)

(assert (= result!325540 result!325534))

(assert (=> bs!1183055 t!368457))

(declare-fun b_and!347933 () Bool)

(assert (= b_and!347925 (and (=> t!368457 result!325540) b_and!347933)))

(declare-fun b_lambda!196711 () Bool)

(assert (=> (not b_lambda!196711) (not bs!1183055)))

(assert (=> bs!1183055 t!368364))

(declare-fun b_and!347935 () Bool)

(assert (= b_and!347917 (and (=> t!368364 result!325448) b_and!347935)))

(assert (=> bs!1183055 t!368366))

(declare-fun b_and!347937 () Bool)

(assert (= b_and!347919 (and (=> t!368366 result!325450) b_and!347937)))

(assert (=> bs!1183055 t!368368))

(declare-fun b_and!347939 () Bool)

(assert (= b_and!347921 (and (=> t!368368 result!325452) b_and!347939)))

(assert (=> bs!1183055 t!368429))

(declare-fun b_and!347941 () Bool)

(assert (= b_and!347923 (and (=> t!368429 result!325512) b_and!347941)))

(declare-fun m!5991742 () Bool)

(assert (=> bs!1183055 m!5991742))

(declare-fun m!5991744 () Bool)

(assert (=> bs!1183055 m!5991744))

(assert (=> bs!1183055 m!5990694))

(assert (=> bs!1183055 m!5991742))

(assert (=> bs!1183055 m!5989334))

(assert (=> bs!1183055 m!5990690))

(assert (=> bs!1183055 m!5989334))

(assert (=> bs!1183055 m!5990694))

(assert (=> d!1597735 d!1598091))

(declare-fun b_lambda!196675 () Bool)

(assert (= b_lambda!196625 (or (and b!4964142 b_free!132737) (and b!4964367 b_free!132745 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4964941 b_free!132753 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4966163 b_free!132761 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))))) b_lambda!196675)))

(declare-fun b_lambda!196677 () Bool)

(assert (= b_lambda!196613 (or (and b!4964142 b_free!132735) (and b!4964367 b_free!132743 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4964941 b_free!132751 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4966163 b_free!132759 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) b_lambda!196677)))

(declare-fun b_lambda!196679 () Bool)

(assert (= b_lambda!196639 (or (and b!4964142 b_free!132735 (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))))) (and b!4964367 b_free!132743) (and b!4964941 b_free!132751 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))))) (and b!4966163 b_free!132759 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))))) b_lambda!196679)))

(declare-fun b_lambda!196681 () Bool)

(assert (= b_lambda!196665 (or b!4964280 b_lambda!196681)))

(assert (=> d!1598077 d!1597387))

(declare-fun b_lambda!196683 () Bool)

(assert (= b_lambda!196643 (or (and b!4964142 b_free!132735 (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))))) (and b!4964367 b_free!132743) (and b!4964941 b_free!132751 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))))) (and b!4966163 b_free!132759 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))))) b_lambda!196683)))

(declare-fun b_lambda!196685 () Bool)

(assert (= b_lambda!196661 (or (and b!4964142 b_free!132735) (and b!4964367 b_free!132743 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4964941 b_free!132751 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4966163 b_free!132759 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) b_lambda!196685)))

(declare-fun b_lambda!196687 () Bool)

(assert (= b_lambda!196631 (or d!1597313 b_lambda!196687)))

(declare-fun bs!1183056 () Bool)

(declare-fun d!1598093 () Bool)

(assert (= bs!1183056 (and d!1598093 d!1597313)))

(assert (=> bs!1183056 (= (dynLambda!23148 lambda!247319 (h!63885 (t!368227 rulesArg!259))) (ruleValid!3800 thiss!15247 (h!63885 (t!368227 rulesArg!259))))))

(assert (=> bs!1183056 m!5989330))

(assert (=> b!4965459 d!1598093))

(declare-fun b_lambda!196689 () Bool)

(assert (= b_lambda!196617 (or (and b!4964142 b_free!132735) (and b!4964367 b_free!132743 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4964941 b_free!132751 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4966163 b_free!132759 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) b_lambda!196689)))

(declare-fun b_lambda!196691 () Bool)

(assert (= b_lambda!196635 (or b!4964759 b_lambda!196691)))

(declare-fun bs!1183057 () Bool)

(declare-fun d!1598095 () Bool)

(assert (= bs!1183057 (and d!1598095 b!4964759)))

(assert (=> bs!1183057 (= (dynLambda!23152 lambda!247318 (_1!34381 lt!2049950)) (= (list!18359 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (_1!34381 lt!2049950)))) (list!18359 (_1!34381 lt!2049950))))))

(declare-fun b_lambda!196713 () Bool)

(assert (=> (not b_lambda!196713) (not bs!1183057)))

(declare-fun t!368459 () Bool)

(declare-fun tb!260447 () Bool)

(assert (=> (and b!4964142 (= (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) t!368459) tb!260447))

(declare-fun e!3104167 () Bool)

(declare-fun tp!1393041 () Bool)

(declare-fun b!4966219 () Bool)

(assert (=> b!4966219 (= e!3104167 (and (inv!75059 (c!846918 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (_1!34381 lt!2049950))))) tp!1393041))))

(declare-fun result!325542 () Bool)

(assert (=> tb!260447 (= result!325542 (and (inv!75060 (dynLambda!23150 (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (_1!34381 lt!2049950)))) e!3104167))))

(assert (= tb!260447 b!4966219))

(declare-fun m!5991746 () Bool)

(assert (=> b!4966219 m!5991746))

(declare-fun m!5991748 () Bool)

(assert (=> tb!260447 m!5991748))

(assert (=> bs!1183057 t!368459))

(declare-fun b_and!347943 () Bool)

(assert (= b_and!347927 (and (=> t!368459 result!325542) b_and!347943)))

(declare-fun t!368461 () Bool)

(declare-fun tb!260449 () Bool)

(assert (=> (and b!4964367 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) t!368461) tb!260449))

(declare-fun result!325544 () Bool)

(assert (= result!325544 result!325542))

(assert (=> bs!1183057 t!368461))

(declare-fun b_and!347945 () Bool)

(assert (= b_and!347929 (and (=> t!368461 result!325544) b_and!347945)))

(declare-fun t!368463 () Bool)

(declare-fun tb!260451 () Bool)

(assert (=> (and b!4964941 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) t!368463) tb!260451))

(declare-fun result!325546 () Bool)

(assert (= result!325546 result!325542))

(assert (=> bs!1183057 t!368463))

(declare-fun b_and!347947 () Bool)

(assert (= b_and!347931 (and (=> t!368463 result!325546) b_and!347947)))

(declare-fun t!368465 () Bool)

(declare-fun tb!260453 () Bool)

(assert (=> (and b!4966163 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259))))) t!368465) tb!260453))

(declare-fun result!325548 () Bool)

(assert (= result!325548 result!325542))

(assert (=> bs!1183057 t!368465))

(declare-fun b_and!347949 () Bool)

(assert (= b_and!347933 (and (=> t!368465 result!325548) b_and!347949)))

(declare-fun b_lambda!196715 () Bool)

(assert (=> (not b_lambda!196715) (not bs!1183057)))

(assert (=> bs!1183057 t!368358))

(declare-fun b_and!347951 () Bool)

(assert (= b_and!347935 (and (=> t!368358 result!325442) b_and!347951)))

(assert (=> bs!1183057 t!368360))

(declare-fun b_and!347953 () Bool)

(assert (= b_and!347937 (and (=> t!368360 result!325444) b_and!347953)))

(assert (=> bs!1183057 t!368362))

(declare-fun b_and!347955 () Bool)

(assert (= b_and!347939 (and (=> t!368362 result!325446) b_and!347955)))

(assert (=> bs!1183057 t!368407))

(declare-fun b_and!347957 () Bool)

(assert (= b_and!347941 (and (=> t!368407 result!325490) b_and!347957)))

(declare-fun m!5991750 () Bool)

(assert (=> bs!1183057 m!5991750))

(declare-fun m!5991752 () Bool)

(assert (=> bs!1183057 m!5991752))

(assert (=> bs!1183057 m!5990688))

(assert (=> bs!1183057 m!5991750))

(assert (=> bs!1183057 m!5989346))

(assert (=> bs!1183057 m!5990688))

(assert (=> d!1597717 d!1598095))

(declare-fun b_lambda!196693 () Bool)

(assert (= b_lambda!196535 (or (and b!4964142 b_free!132735 (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))) (and b!4964367 b_free!132743 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))) (and b!4964941 b_free!132751 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))) (and b!4966163 b_free!132759 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))) b_lambda!196693)))

(declare-fun b_lambda!196695 () Bool)

(assert (= b_lambda!196637 (or (and b!4964142 b_free!132735 (= (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))))) (and b!4964367 b_free!132743) (and b!4964941 b_free!132751 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))))) (and b!4966163 b_free!132759 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))))) b_lambda!196695)))

(declare-fun b_lambda!196697 () Bool)

(assert (= b_lambda!196645 (or d!1597335 b_lambda!196697)))

(declare-fun bs!1183058 () Bool)

(declare-fun d!1598097 () Bool)

(assert (= bs!1183058 (and d!1598097 d!1597335)))

(declare-fun res!2119807 () Bool)

(declare-fun e!3104168 () Bool)

(assert (=> bs!1183058 (=> res!2119807 e!3104168)))

(assert (=> bs!1183058 (= res!2119807 (not (= (list!18359 (_1!34381 lt!2049676)) (list!18359 (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))))))))

(assert (=> bs!1183058 (= (dynLambda!23158 lambda!247322 (_1!34381 lt!2049676) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676)))) e!3104168)))

(declare-fun b!4966220 () Bool)

(assert (=> b!4966220 (= e!3104168 (= (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (_1!34381 lt!2049676)) (dynLambda!23149 (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))) (seqFromList!6034 (list!18359 (_1!34381 lt!2049676))))))))

(assert (= (and bs!1183058 (not res!2119807)) b!4966220))

(declare-fun b_lambda!196717 () Bool)

(assert (=> (not b_lambda!196717) (not b!4966220)))

(assert (=> b!4966220 t!368242))

(declare-fun b_and!347959 () Bool)

(assert (= b_and!347951 (and (=> t!368242 result!325322) b_and!347959)))

(assert (=> b!4966220 t!368244))

(declare-fun b_and!347961 () Bool)

(assert (= b_and!347953 (and (=> t!368244 result!325324) b_and!347961)))

(assert (=> b!4966220 t!368252))

(declare-fun b_and!347963 () Bool)

(assert (= b_and!347955 (and (=> t!368252 result!325334) b_and!347963)))

(assert (=> b!4966220 t!368425))

(declare-fun b_and!347965 () Bool)

(assert (= b_and!347957 (and (=> t!368425 result!325508) b_and!347965)))

(declare-fun b_lambda!196719 () Bool)

(assert (=> (not b_lambda!196719) (not b!4966220)))

(assert (=> b!4966220 t!368246))

(declare-fun b_and!347967 () Bool)

(assert (= b_and!347959 (and (=> t!368246 result!325326) b_and!347967)))

(assert (=> b!4966220 t!368248))

(declare-fun b_and!347969 () Bool)

(assert (= b_and!347961 (and (=> t!368248 result!325328) b_and!347969)))

(assert (=> b!4966220 t!368254))

(declare-fun b_and!347971 () Bool)

(assert (= b_and!347963 (and (=> t!368254 result!325336) b_and!347971)))

(assert (=> b!4966220 t!368427))

(declare-fun b_and!347973 () Bool)

(assert (= b_and!347965 (and (=> t!368427 result!325510) b_and!347973)))

(assert (=> bs!1183058 m!5988790))

(assert (=> bs!1183058 m!5988776))

(assert (=> bs!1183058 m!5989528))

(assert (=> b!4966220 m!5989526))

(assert (=> b!4966220 m!5988776))

(assert (=> b!4966220 m!5989532))

(assert (=> d!1597773 d!1598097))

(declare-fun b_lambda!196699 () Bool)

(assert (= b_lambda!196537 (or (and b!4964142 b_free!132737 (= (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))) (and b!4964367 b_free!132745 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))) (and b!4964941 b_free!132753 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))) (and b!4966163 b_free!132761 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toChars!11205 (transformation!8391 (rule!11629 (_1!34378 (get!19935 lt!2049691))))))) b_lambda!196699)))

(declare-fun b_lambda!196701 () Bool)

(assert (= b_lambda!196627 (or (and b!4964142 b_free!132735) (and b!4964367 b_free!132743 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4964941 b_free!132751 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4966163 b_free!132759 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) b_lambda!196701)))

(declare-fun b_lambda!196703 () Bool)

(assert (= b_lambda!196615 (or (and b!4964142 b_free!132737) (and b!4964367 b_free!132745 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4964941 b_free!132753 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4966163 b_free!132761 (= (toChars!11205 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toChars!11205 (transformation!8391 (h!63885 rulesArg!259))))) b_lambda!196703)))

(declare-fun b_lambda!196705 () Bool)

(assert (= b_lambda!196663 (or (and b!4964142 b_free!132735) (and b!4964367 b_free!132743 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4964941 b_free!132751 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4966163 b_free!132759 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) b_lambda!196705)))

(declare-fun b_lambda!196707 () Bool)

(assert (= b_lambda!196629 (or (and b!4964142 b_free!132735) (and b!4964367 b_free!132743 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 rulesArg!259)))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4964941 b_free!132751 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 rulesArg!259))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) (and b!4966163 b_free!132759 (= (toValue!11346 (transformation!8391 (h!63885 (t!368227 (t!368227 (t!368227 rulesArg!259)))))) (toValue!11346 (transformation!8391 (h!63885 rulesArg!259))))) b_lambda!196707)))

(push 1)

(assert (not b!4966050))

(assert (not b!4966151))

(assert (not b!4965427))

(assert (not b!4965808))

(assert (not b!4965689))

(assert (not b!4965594))

(assert (not b!4965747))

(assert (not b!4966022))

(assert (not b!4966006))

(assert (not b!4966039))

(assert (not b!4966146))

(assert (not b!4966129))

(assert (not b!4965416))

(assert (not b!4965649))

(assert (not b!4965694))

(assert (not tb!260377))

(assert (not d!1598019))

(assert (not d!1597767))

(assert (not b!4965351))

(assert (not b_lambda!196701))

(assert (not d!1597609))

(assert (not b!4965722))

(assert (not d!1597847))

(assert (not b!4965948))

(assert (not b_lambda!196669))

(assert (not b!4966097))

(assert (not d!1597687))

(assert (not b!4965661))

(assert (not bs!1183054))

(assert (not d!1597947))

(assert (not b!4966058))

(assert (not b!4965721))

(assert (not b!4966088))

(assert (not d!1597693))

(assert (not b_next!133527))

(assert (not b!4965485))

(assert (not b!4966070))

(assert (not b_lambda!196557))

(assert (not b!4965504))

(assert (not b!4965846))

(assert (not bm!346273))

(assert (not b!4965769))

(assert (not b!4965783))

(assert (not b!4965618))

(assert (not b!4966217))

(assert (not b!4966165))

(assert (not d!1598053))

(assert (not b!4966115))

(assert (not d!1598061))

(assert (not b!4965634))

(assert (not b!4966073))

(assert (not b!4965819))

(assert (not tb!260447))

(assert (not d!1597897))

(assert (not b!4966194))

(assert (not b!4965900))

(assert (not b!4966158))

(assert (not d!1597817))

(assert (not b!4965557))

(assert (not b!4965720))

(assert (not b!4965495))

(assert (not b!4965736))

(assert (not b!4965625))

(assert (not b_lambda!196677))

(assert (not d!1597639))

(assert (not d!1597859))

(assert (not b_lambda!196707))

(assert (not b!4965771))

(assert (not b!4965859))

(assert (not bm!346236))

(assert (not b!4966212))

(assert (not b!4965579))

(assert (not d!1597857))

(assert (not b!4966068))

(assert (not bm!346260))

(assert (not bm!346218))

(assert (not b!4965786))

(assert (not b!4965614))

(assert (not b!4965999))

(assert (not b!4965823))

(assert (not d!1597723))

(assert (not d!1598081))

(assert (not tb!260305))

(assert (not b!4965458))

(assert (not b!4965636))

(assert (not d!1597819))

(assert (not b!4966061))

(assert (not b!4966201))

(assert (not b!4966086))

(assert (not b!4966139))

(assert (not b!4965627))

(assert (not b!4965941))

(assert (not b!4966196))

(assert (not bm!346221))

(assert (not b!4965671))

(assert (not b!4965686))

(assert (not b!4965623))

(assert (not b!4965816))

(assert (not b_lambda!196703))

(assert (not b!4965470))

(assert (not b!4965877))

(assert (not b!4966014))

(assert (not b!4965657))

(assert (not bm!346270))

(assert (not b!4965472))

(assert (not d!1597697))

(assert (not bm!346256))

(assert (not b!4965982))

(assert (not b!4966218))

(assert (not b!4965772))

(assert (not b!4965938))

(assert (not b!4965993))

(assert (not b_lambda!196611))

(assert (not b!4965430))

(assert (not bm!346292))

(assert (not d!1597629))

(assert b_and!347947)

(assert (not b!4965732))

(assert (not b!4965465))

(assert (not b!4965930))

(assert (not b!4965488))

(assert (not b!4966160))

(assert (not b!4965480))

(assert (not bm!346265))

(assert (not bm!346239))

(assert (not b!4965650))

(assert (not b!4966103))

(assert (not b!4965829))

(assert (not bm!346280))

(assert (not bm!346291))

(assert (not d!1597955))

(assert (not bs!1183057))

(assert (not d!1597921))

(assert (not b!4965635))

(assert (not b!4965907))

(assert (not b!4966128))

(assert (not b!4966023))

(assert (not d!1597649))

(assert (not b!4965638))

(assert (not b!4965923))

(assert (not b!4965755))

(assert (not b!4966211))

(assert (not d!1597903))

(assert (not b!4966127))

(assert (not b!4965466))

(assert (not b!4965958))

(assert (not b!4965460))

(assert (not b!4966154))

(assert (not d!1597743))

(assert (not b!4966114))

(assert (not b!4965654))

(assert (not b!4965764))

(assert (not b!4965805))

(assert (not b!4965434))

(assert (not b!4965603))

(assert (not b!4965645))

(assert (not b_lambda!196715))

(assert (not d!1598071))

(assert (not b!4965580))

(assert (not b!4965794))

(assert (not d!1598087))

(assert (not bm!346220))

(assert (not b!4965665))

(assert (not b!4965447))

(assert (not b!4965455))

(assert (not b!4965658))

(assert (not b_lambda!196549))

(assert (not b!4965676))

(assert (not d!1598025))

(assert (not b!4966213))

(assert (not d!1597813))

(assert (not b!4966017))

(assert (not b!4965700))

(assert (not tb!260323))

(assert (not b_lambda!196709))

(assert (not d!1598085))

(assert (not tb!260335))

(assert (not b!4965663))

(assert (not b!4966112))

(assert (not b!4966089))

(assert (not d!1598051))

(assert (not b!4966074))

(assert (not b!4965778))

(assert (not b!4966204))

(assert (not d!1597671))

(assert (not b!4965453))

(assert (not b!4966133))

(assert (not b_lambda!196657))

(assert (not b!4966106))

(assert (not tb!260317))

(assert (not b!4965565))

(assert (not bm!346275))

(assert (not bm!346222))

(assert (not b!4966101))

(assert (not bm!346235))

(assert (not d!1597565))

(assert (not tb!260383))

(assert (not b!4965775))

(assert (not b!4966161))

(assert (not b!4966035))

(assert (not d!1597657))

(assert (not d!1598005))

(assert (not b!4965602))

(assert (not b!4966124))

(assert (not b!4966076))

(assert (not b!4966179))

(assert (not b!4965695))

(assert (not d!1598049))

(assert (not bs!1183055))

(assert (not b!4965435))

(assert (not b!4966059))

(assert (not b!4965852))

(assert (not b!4966125))

(assert (not b!4965373))

(assert (not d!1597643))

(assert (not b!4965766))

(assert (not b!4965548))

(assert (not b!4965508))

(assert (not b!4965767))

(assert (not d!1597545))

(assert (not b!4966001))

(assert (not b_lambda!196717))

(assert (not d!1597763))

(assert (not b!4966045))

(assert (not b!4965481))

(assert (not d!1597717))

(assert (not b!4965815))

(assert (not d!1597583))

(assert (not b!4965513))

(assert (not bm!346269))

(assert (not d!1597615))

(assert (not b!4966208))

(assert (not b!4966011))

(assert (not b_lambda!196693))

(assert (not d!1597919))

(assert (not b!4965953))

(assert (not b!4966066))

(assert (not d!1597727))

(assert (not b!4966164))

(assert (not b!4965582))

(assert (not b!4966219))

(assert (not b!4966121))

(assert (not d!1597893))

(assert (not b!4965702))

(assert (not d!1597991))

(assert (not d!1597529))

(assert (not d!1597989))

(assert (not b!4965637))

(assert (not d!1597979))

(assert (not b!4965912))

(assert (not b!4966020))

(assert (not b!4966162))

(assert (not b!4966071))

(assert (not b!4965606))

(assert (not b!4965375))

(assert (not d!1597797))

(assert (not b!4966080))

(assert (not d!1597883))

(assert (not d!1597967))

(assert (not b!4965817))

(assert (not b!4965651))

(assert (not bm!346243))

(assert (not b!4966193))

(assert (not b!4965681))

(assert (not b!4966118))

(assert (not b!4965588))

(assert (not b!4965393))

(assert (not b!4966138))

(assert (not b!4965800))

(assert (not b_lambda!196551))

(assert (not b_lambda!196679))

(assert (not d!1597927))

(assert (not d!1597821))

(assert (not b!4965502))

(assert (not b!4965539))

(assert (not tb!260371))

(assert (not b!4965680))

(assert (not b!4965646))

(assert (not b!4965704))

(assert (not b!4965933))

(assert (not b!4966173))

(assert (not d!1598027))

(assert (not tb!260359))

(assert (not b!4966031))

(assert (not b!4965591))

(assert (not b!4965743))

(assert (not bm!346283))

(assert (not bm!346286))

(assert (not b!4966155))

(assert (not d!1597739))

(assert (not b!4965684))

(assert (not b_lambda!196719))

(assert (not b!4966004))

(assert (not b!4965357))

(assert (not d!1597815))

(assert (not b!4965500))

(assert (not d!1597987))

(assert (not d!1597981))

(assert (not b!4966184))

(assert (not b!4966166))

(assert (not b!4966187))

(assert (not b!4966108))

(assert (not d!1597647))

(assert (not tb!260353))

(assert (not bs!1183058))

(assert (not b!4965738))

(assert (not b!4966099))

(assert (not d!1597633))

(assert (not d!1598013))

(assert (not b!4966191))

(assert (not b!4965952))

(assert (not d!1597995))

(assert (not b_lambda!196553))

(assert (not b!4966054))

(assert (not bm!346262))

(assert (not b!4965547))

(assert (not b!4965797))

(assert (not b!4965640))

(assert (not d!1597533))

(assert (not d!1597587))

(assert (not d!1597721))

(assert (not b!4965498))

(assert (not b!4965543))

(assert (not tb!260389))

(assert (not b!4966077))

(assert (not b_lambda!196683))

(assert (not b!4966189))

(assert (not d!1597655))

(assert (not b_lambda!196621))

(assert (not b!4966085))

(assert (not b_lambda!196675))

(assert (not b!4965506))

(assert (not b_lambda!196607))

(assert (not bm!346231))

(assert (not bm!346241))

(assert (not b!4965928))

(assert (not b_lambda!196667))

(assert (not b!4965552))

(assert (not d!1597849))

(assert (not b!4965883))

(assert b_and!347943)

(assert (not d!1597685))

(assert (not bm!346237))

(assert (not b!4965584))

(assert (not tb!260365))

(assert (not d!1597703))

(assert (not b!4965583))

(assert (not tb!260347))

(assert (not b!4965913))

(assert (not b!4965949))

(assert (not d!1597845))

(assert (not b!4965863))

(assert (not b!4965870))

(assert (not b!4965467))

(assert (not b!4966063))

(assert (not bm!346238))

(assert (not b!4966200))

(assert b_and!347973)

(assert (not b!4965644))

(assert (not b!4965730))

(assert (not b!4965891))

(assert b_and!347969)

(assert (not b!4965551))

(assert (not b!4965667))

(assert (not b!4966150))

(assert (not d!1597759))

(assert (not b_lambda!196619))

(assert (not b!4966117))

(assert (not d!1597795))

(assert (not b!4966131))

(assert (not d!1598045))

(assert (not b!4965367))

(assert (not b!4965387))

(assert (not bm!346264))

(assert (not b!4965558))

(assert (not bm!346219))

(assert (not b!4965669))

(assert (not bm!346217))

(assert (not b!4965659))

(assert (not b!4965777))

(assert (not b!4965843))

(assert (not b!4965613))

(assert b_and!347971)

(assert (not b!4966175))

(assert (not b!4966110))

(assert (not d!1598083))

(assert (not b!4965446))

(assert (not b!4965690))

(assert (not d!1597731))

(assert (not b!4965705))

(assert (not b!4965811))

(assert (not b!4965965))

(assert (not d!1597689))

(assert (not b!4966109))

(assert (not d!1597901))

(assert (not b!4966044))

(assert (not bm!346232))

(assert (not b!4966105))

(assert (not b!4965995))

(assert (not b!4966171))

(assert (not b!4965626))

(assert (not b!4965632))

(assert (not d!1598043))

(assert (not tb!260341))

(assert (not b!4965497))

(assert (not bm!346288))

(assert (not b!4965802))

(assert (not d!1598007))

(assert (not bm!346242))

(assert (not d!1597701))

(assert (not bm!346282))

(assert (not b!4966030))

(assert (not b!4966134))

(assert (not d!1597607))

(assert (not b_lambda!196673))

(assert (not b!4965972))

(assert (not b!4966072))

(assert (not d!1598037))

(assert (not b!4966084))

(assert (not b!4965926))

(assert (not b!4965622))

(assert (not b!4965820))

(assert (not d!1597651))

(assert (not b_lambda!196681))

(assert (not b!4965476))

(assert (not d!1597825))

(assert (not bm!346215))

(assert (not b!4965630))

(assert (not b!4965896))

(assert (not b!4965643))

(assert (not b!4965748))

(assert (not b!4965388))

(assert (not d!1597855))

(assert (not b_lambda!196653))

(assert (not bm!346284))

(assert (not d!1598059))

(assert (not b!4965429))

(assert (not b_next!133535))

(assert (not bm!346259))

(assert (not b!4965728))

(assert (not b!4965672))

(assert (not tb!260329))

(assert (not b!4965642))

(assert (not b!4965734))

(assert (not b!4964959))

(assert (not b_lambda!196699))

(assert (not b!4966116))

(assert (not bm!346285))

(assert (not bm!346261))

(assert (not d!1597773))

(assert (not b!4965832))

(assert (not d!1598057))

(assert (not b!4965619))

(assert (not b!4965841))

(assert (not d!1598015))

(assert (not b!4966026))

(assert (not b!4965937))

(assert (not b_lambda!196691))

(assert (not b!4965660))

(assert (not b!4965917))

(assert (not tb!260311))

(assert (not b!4964813))

(assert (not b!4966092))

(assert (not b!4966177))

(assert (not b!4965556))

(assert (not d!1598009))

(assert (not d!1597765))

(assert (not d!1598041))

(assert (not d!1597699))

(assert (not b!4965807))

(assert (not b!4966140))

(assert (not d!1597659))

(assert (not b!4965959))

(assert (not d!1597833))

(assert (not b_lambda!196671))

(assert (not bm!346266))

(assert (not b!4965810))

(assert (not b_lambda!196651))

(assert (not b!4965822))

(assert (not d!1597993))

(assert (not d!1597715))

(assert (not b!4965457))

(assert (not b!4966142))

(assert (not b!4966169))

(assert (not b!4965577))

(assert (not d!1597945))

(assert (not b!4966095))

(assert (not b!4965969))

(assert (not b!4966159))

(assert (not b_lambda!196713))

(assert (not b!4966174))

(assert (not b!4966152))

(assert (not d!1597831))

(assert (not d!1597775))

(assert (not b!4965438))

(assert (not bm!346287))

(assert (not b!4965589))

(assert (not d!1597823))

(assert (not b!4965780))

(assert (not b!4966156))

(assert (not b!4965474))

(assert (not d!1597611))

(assert (not b!4965715))

(assert (not bs!1183056))

(assert (not d!1597879))

(assert (not b!4966209))

(assert (not b_lambda!196633))

(assert (not b!4965751))

(assert (not b_lambda!196559))

(assert (not b!4965711))

(assert (not bm!346252))

(assert (not d!1597983))

(assert (not b!4966123))

(assert (not tb!260439))

(assert (not b!4966057))

(assert (not b!4965851))

(assert (not d!1597783))

(assert (not b!4965899))

(assert (not b!4965830))

(assert (not b!4966185))

(assert (not b!4965989))

(assert (not b_lambda!196623))

(assert (not b!4965709))

(assert (not b!4966188))

(assert (not b!4965744))

(assert (not b!4965386))

(assert (not b!4965964))

(assert (not d!1597555))

(assert b_and!347949)

(assert (not b!4966046))

(assert (not b!4965921))

(assert (not b!4965510))

(assert (not d!1597617))

(assert (not d!1597899))

(assert (not b!4965924))

(assert (not bm!346272))

(assert (not bm!346240))

(assert (not d!1598023))

(assert b_and!347967)

(assert (not b!4965685))

(assert (not b!4966036))

(assert (not b_lambda!196711))

(assert (not b_next!133533))

(assert (not d!1597675))

(assert (not b!4965717))

(assert (not b!4966170))

(assert (not b!4965756))

(assert (not b!4966025))

(assert (not b!4965394))

(assert (not d!1597559))

(assert (not b!4966016))

(assert (not b_next!133549))

(assert (not d!1597835))

(assert (not b!4966147))

(assert (not b!4966100))

(assert (not b!4965765))

(assert (not d!1597827))

(assert (not b!4966132))

(assert (not b!4965954))

(assert (not b!4965426))

(assert (not b!4966062))

(assert (not b!4965902))

(assert (not bm!346263))

(assert (not b!4965718))

(assert (not b!4965710))

(assert (not b!4966113))

(assert (not d!1597949))

(assert (not bm!346281))

(assert (not bm!346279))

(assert (not b!4965739))

(assert (not b!4965874))

(assert (not b!4965544))

(assert (not b!4966012))

(assert (not b_lambda!196695))

(assert (not b!4966120))

(assert (not b!4966203))

(assert (not bm!346253))

(assert (not b!4966067))

(assert (not b!4965850))

(assert (not b!4965576))

(assert (not b!4966197))

(assert (not b!4965824))

(assert (not b!4965986))

(assert (not b!4965856))

(assert tp_is_empty!36329)

(assert (not b_lambda!196697))

(assert (not b!4966216))

(assert (not b!4965818))

(assert (not b!4965951))

(assert (not b_next!133525))

(assert (not d!1597881))

(assert (not d!1597971))

(assert (not b!4965512))

(assert (not d!1598047))

(assert (not b!4966028))

(assert (not b!4965814))

(assert (not b!4965931))

(assert (not bm!346277))

(assert (not b_lambda!196609))

(assert (not b_lambda!196649))

(assert (not b!4965827))

(assert (not b!4964968))

(assert (not b!4965809))

(assert (not bm!346254))

(assert (not d!1597597))

(assert (not b!4966143))

(assert (not b!4965677))

(assert (not d!1597961))

(assert (not b_lambda!196555))

(assert (not b!4965484))

(assert (not d!1597581))

(assert (not b!4964976))

(assert (not b!4965785))

(assert (not b!4965501))

(assert (not d!1597631))

(assert (not b!4965806))

(assert (not b!4966093))

(assert (not bm!346276))

(assert (not b!4965906))

(assert (not b!4965462))

(assert (not b!4965901))

(assert (not b!4965790))

(assert (not b!4965581))

(assert (not b!4966215))

(assert (not tb!260299))

(assert (not d!1597531))

(assert (not b!4965574))

(assert (not b!4964965))

(assert (not d!1598003))

(assert (not b!4965473))

(assert (not b!4964975))

(assert (not d!1597977))

(assert (not b!4965889))

(assert (not b!4966090))

(assert (not d!1597807))

(assert (not b!4965963))

(assert (not bm!346293))

(assert (not b!4965360))

(assert (not b!4965468))

(assert (not b!4965461))

(assert (not b!4966148))

(assert (not b!4966082))

(assert (not b!4966207))

(assert (not b!4966055))

(assert (not b!4966176))

(assert (not d!1597669))

(assert (not b!4965911))

(assert (not d!1597539))

(assert (not b!4965904))

(assert (not d!1597535))

(assert (not bm!346216))

(assert (not b!4965774))

(assert (not b!4966087))

(assert (not b!4966104))

(assert (not d!1597969))

(assert (not b!4966096))

(assert (not d!1597837))

(assert (not bm!346255))

(assert (not b!4965984))

(assert (not b!4966033))

(assert (not b!4966205))

(assert (not b!4965656))

(assert (not b!4965585))

(assert (not b!4966198))

(assert (not b_lambda!196687))

(assert (not b!4966178))

(assert (not b!4965882))

(assert (not b!4965545))

(assert (not d!1597589))

(assert (not d!1597645))

(assert (not b!4966192))

(assert (not b!4966075))

(assert (not b!4965641))

(assert (not b!4966064))

(assert (not d!1597925))

(assert (not b!4966135))

(assert (not d!1597729))

(assert (not b!4965828))

(assert (not b!4965597))

(assert (not b!4965894))

(assert (not d!1597635))

(assert (not b!4966053))

(assert (not bm!346244))

(assert (not b!4965761))

(assert (not b!4965489))

(assert (not b!4965831))

(assert (not b!4966181))

(assert (not b!4965812))

(assert (not b_next!133551))

(assert (not d!1597829))

(assert (not d!1597913))

(assert (not b!4966144))

(assert (not bm!346278))

(assert (not b!4965994))

(assert (not d!1597673))

(assert (not b!4966040))

(assert (not b!4965821))

(assert (not b!4965696))

(assert (not bm!346267))

(assert (not b!4965352))

(assert (not b!4965845))

(assert (not b!4965723))

(assert (not b!4966167))

(assert (not b!4965988))

(assert (not d!1598035))

(assert (not b!4965795))

(assert (not b!4965781))

(assert (not b!4965879))

(assert (not b!4965897))

(assert (not b!4965875))

(assert (not b!4965750))

(assert (not b_lambda!196689))

(assert (not d!1597603))

(assert (not d!1597719))

(assert (not d!1597577))

(assert (not b!4966199))

(assert (not b!4966003))

(assert (not b!4966119))

(assert (not b!4966091))

(assert (not b!4965838))

(assert (not b!4966180))

(assert (not b!4965464))

(assert (not b_next!133543))

(assert (not d!1597963))

(assert (not b!4966078))

(assert (not b!4966183))

(assert (not b_lambda!196685))

(assert (not b!4966136))

(assert (not b!4965791))

(assert (not b!4965356))

(assert (not b!4965757))

(assert (not b_lambda!196705))

(assert (not bm!346268))

(assert (not b_lambda!196605))

(assert (not bm!346271))

(assert (not b!4965861))

(assert (not b!4965898))

(assert (not b!4964962))

(assert (not b!4965593))

(assert (not b!4965733))

(assert (not d!1597735))

(assert (not b_next!133541))

(assert (not b!4965652))

(assert (not b!4965477))

(assert (not b!4966081))

(assert (not b!4965647))

(assert (not b!4965445))

(assert (not b!4965629))

(assert (not d!1597895))

(assert (not d!1598039))

(assert (not b!4965598))

(assert b_and!347945)

(assert (not b!4965562))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!133527))

(assert b_and!347947)

(assert b_and!347943)

(assert b_and!347971)

(assert (not b_next!133535))

(assert (not b_next!133525))

(assert (not b_next!133551))

(assert (not b_next!133543))

(assert b_and!347973)

(assert b_and!347969)

(assert b_and!347949)

(assert b_and!347967)

(assert (not b_next!133549))

(assert (not b_next!133533))

(assert (not b_next!133541))

(assert b_and!347945)

(check-sat)

(pop 1)


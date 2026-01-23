; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!523892 () Bool)

(assert start!523892)

(declare-fun b!4967137 () Bool)

(declare-fun b_free!132767 () Bool)

(declare-fun b_next!133557 () Bool)

(assert (=> b!4967137 (= b_free!132767 (not b_next!133557))))

(declare-fun tp!1393267 () Bool)

(declare-fun b_and!348147 () Bool)

(assert (=> b!4967137 (= tp!1393267 b_and!348147)))

(declare-fun b_free!132769 () Bool)

(declare-fun b_next!133559 () Bool)

(assert (=> b!4967137 (= b_free!132769 (not b_next!133559))))

(declare-fun tp!1393268 () Bool)

(declare-fun b_and!348149 () Bool)

(assert (=> b!4967137 (= tp!1393268 b_and!348149)))

(declare-fun b!4967125 () Bool)

(declare-fun e!3104687 () Bool)

(declare-fun e!3104675 () Bool)

(assert (=> b!4967125 (= e!3104687 e!3104675)))

(declare-fun res!2120132 () Bool)

(assert (=> b!4967125 (=> (not res!2120132) (not e!3104675))))

(declare-fun lt!2050946 () Bool)

(declare-datatypes ((List!57566 0))(
  ( (Nil!57442) (Cons!57442 (h!63890 (_ BitVec 16)) (t!368626 List!57566)) )
))
(declare-datatypes ((TokenValue!8703 0))(
  ( (FloatLiteralValue!17406 (text!61366 List!57566)) (TokenValueExt!8702 (__x!34699 Int)) (Broken!43515 (value!268616 List!57566)) (Object!8826) (End!8703) (Def!8703) (Underscore!8703) (Match!8703) (Else!8703) (Error!8703) (Case!8703) (If!8703) (Extends!8703) (Abstract!8703) (Class!8703) (Val!8703) (DelimiterValue!17406 (del!8763 List!57566)) (KeywordValue!8709 (value!268617 List!57566)) (CommentValue!17406 (value!268618 List!57566)) (WhitespaceValue!17406 (value!268619 List!57566)) (IndentationValue!8703 (value!268620 List!57566)) (String!65390) (Int32!8703) (Broken!43516 (value!268621 List!57566)) (Boolean!8704) (Unit!148360) (OperatorValue!8706 (op!8763 List!57566)) (IdentifierValue!17406 (value!268622 List!57566)) (IdentifierValue!17407 (value!268623 List!57566)) (WhitespaceValue!17407 (value!268624 List!57566)) (True!17406) (False!17406) (Broken!43517 (value!268625 List!57566)) (Broken!43518 (value!268626 List!57566)) (True!17407) (RightBrace!8703) (RightBracket!8703) (Colon!8703) (Null!8703) (Comma!8703) (LeftBracket!8703) (False!17407) (LeftBrace!8703) (ImaginaryLiteralValue!8703 (text!61367 List!57566)) (StringLiteralValue!26109 (value!268627 List!57566)) (EOFValue!8703 (value!268628 List!57566)) (IdentValue!8703 (value!268629 List!57566)) (DelimiterValue!17407 (value!268630 List!57566)) (DedentValue!8703 (value!268631 List!57566)) (NewLineValue!8703 (value!268632 List!57566)) (IntegerValue!26109 (value!268633 (_ BitVec 32)) (text!61368 List!57566)) (IntegerValue!26110 (value!268634 Int) (text!61369 List!57566)) (Times!8703) (Or!8703) (Equal!8703) (Minus!8703) (Broken!43519 (value!268635 List!57566)) (And!8703) (Div!8703) (LessEqual!8703) (Mod!8703) (Concat!22329) (Not!8703) (Plus!8703) (SpaceValue!8703 (value!268636 List!57566)) (IntegerValue!26111 (value!268637 Int) (text!61370 List!57566)) (StringLiteralValue!26110 (text!61371 List!57566)) (FloatLiteralValue!17407 (text!61372 List!57566)) (BytesLiteralValue!8703 (value!268638 List!57566)) (CommentValue!17407 (value!268639 List!57566)) (StringLiteralValue!26111 (value!268640 List!57566)) (ErrorTokenValue!8703 (msg!8764 List!57566)) )
))
(declare-datatypes ((C!27502 0))(
  ( (C!27503 (val!23117 Int)) )
))
(declare-datatypes ((Regex!13626 0))(
  ( (ElementMatch!13626 (c!847514 C!27502)) (Concat!22330 (regOne!27764 Regex!13626) (regTwo!27764 Regex!13626)) (EmptyExpr!13626) (Star!13626 (reg!13955 Regex!13626)) (EmptyLang!13626) (Union!13626 (regOne!27765 Regex!13626) (regTwo!27765 Regex!13626)) )
))
(declare-datatypes ((String!65391 0))(
  ( (String!65392 (value!268641 String)) )
))
(declare-datatypes ((List!57567 0))(
  ( (Nil!57443) (Cons!57443 (h!63891 C!27502) (t!368627 List!57567)) )
))
(declare-datatypes ((IArray!30351 0))(
  ( (IArray!30352 (innerList!15233 List!57567)) )
))
(declare-datatypes ((Conc!15145 0))(
  ( (Node!15145 (left!41900 Conc!15145) (right!42230 Conc!15145) (csize!30520 Int) (cheight!15356 Int)) (Leaf!25167 (xs!18471 IArray!30351) (csize!30521 Int)) (Empty!15145) )
))
(declare-datatypes ((BalanceConc!29720 0))(
  ( (BalanceConc!29721 (c!847515 Conc!15145)) )
))
(declare-datatypes ((TokenValueInjection!16714 0))(
  ( (TokenValueInjection!16715 (toValue!11352 Int) (toChars!11211 Int)) )
))
(declare-datatypes ((Rule!16586 0))(
  ( (Rule!16587 (regex!8393 Regex!13626) (tag!9257 String!65391) (isSeparator!8393 Bool) (transformation!8393 TokenValueInjection!16714)) )
))
(declare-datatypes ((Token!15282 0))(
  ( (Token!15283 (value!268642 TokenValue!8703) (rule!11637 Rule!16586) (size!38070 Int) (originalCharacters!8672 List!57567)) )
))
(declare-datatypes ((tuple2!62164 0))(
  ( (tuple2!62165 (_1!34385 Token!15282) (_2!34385 List!57567)) )
))
(declare-datatypes ((Option!14449 0))(
  ( (None!14448) (Some!14448 (v!50437 tuple2!62164)) )
))
(declare-fun lt!2050950 () Option!14449)

(declare-fun isDefined!11362 (Option!14449) Bool)

(assert (=> b!4967125 (= res!2120132 (= lt!2050946 (isDefined!11362 lt!2050950)))))

(declare-datatypes ((tuple2!62166 0))(
  ( (tuple2!62167 (_1!34386 Token!15282) (_2!34386 BalanceConc!29720)) )
))
(declare-datatypes ((Option!14450 0))(
  ( (None!14449) (Some!14449 (v!50438 tuple2!62166)) )
))
(declare-fun lt!2050948 () Option!14450)

(declare-fun isDefined!11363 (Option!14450) Bool)

(assert (=> b!4967125 (= lt!2050946 (isDefined!11363 lt!2050948))))

(declare-datatypes ((List!57568 0))(
  ( (Nil!57444) (Cons!57444 (h!63892 Rule!16586) (t!368628 List!57568)) )
))
(declare-fun rulesArg!259 () List!57568)

(declare-fun lt!2050949 () List!57567)

(declare-datatypes ((LexerInterface!7985 0))(
  ( (LexerInterfaceExt!7982 (__x!34700 Int)) (Lexer!7983) )
))
(declare-fun thiss!15247 () LexerInterface!7985)

(declare-fun maxPrefixZipper!786 (LexerInterface!7985 List!57568 List!57567) Option!14449)

(assert (=> b!4967125 (= lt!2050950 (maxPrefixZipper!786 thiss!15247 rulesArg!259 lt!2050949))))

(declare-fun b!4967126 () Bool)

(declare-fun e!3104673 () Bool)

(declare-fun lt!2050944 () tuple2!62166)

(declare-fun lt!2050945 () tuple2!62164)

(declare-fun list!18365 (BalanceConc!29720) List!57567)

(assert (=> b!4967126 (= e!3104673 (= (list!18365 (_2!34386 lt!2050944)) (_2!34385 lt!2050945)))))

(declare-fun res!2120126 () Bool)

(declare-fun e!3104678 () Bool)

(assert (=> start!523892 (=> (not res!2120126) (not e!3104678))))

(assert (=> start!523892 (= res!2120126 (is-Lexer!7983 thiss!15247))))

(assert (=> start!523892 e!3104678))

(assert (=> start!523892 true))

(declare-fun e!3104682 () Bool)

(assert (=> start!523892 e!3104682))

(declare-fun input!1342 () BalanceConc!29720)

(declare-fun e!3104686 () Bool)

(declare-fun inv!75074 (BalanceConc!29720) Bool)

(assert (=> start!523892 (and (inv!75074 input!1342) e!3104686)))

(declare-fun totalInput!464 () BalanceConc!29720)

(declare-fun e!3104681 () Bool)

(assert (=> start!523892 (and (inv!75074 totalInput!464) e!3104681)))

(declare-fun b!4967127 () Bool)

(declare-fun e!3104676 () Bool)

(assert (=> b!4967127 (= e!3104676 e!3104673)))

(declare-fun res!2120130 () Bool)

(assert (=> b!4967127 (=> (not res!2120130) (not e!3104673))))

(assert (=> b!4967127 (= res!2120130 (= (_1!34386 lt!2050944) (_1!34385 lt!2050945)))))

(declare-fun get!19940 (Option!14449) tuple2!62164)

(assert (=> b!4967127 (= lt!2050945 (get!19940 lt!2050950))))

(declare-fun get!19941 (Option!14450) tuple2!62166)

(assert (=> b!4967127 (= lt!2050944 (get!19941 lt!2050948))))

(declare-fun b!4967128 () Bool)

(declare-fun e!3104672 () Bool)

(declare-fun e!3104684 () Bool)

(assert (=> b!4967128 (= e!3104672 e!3104684)))

(declare-fun res!2120127 () Bool)

(assert (=> b!4967128 (=> (not res!2120127) (not e!3104684))))

(declare-fun lt!2050942 () tuple2!62166)

(declare-fun lt!2050951 () tuple2!62164)

(assert (=> b!4967128 (= res!2120127 (= (_1!34386 lt!2050942) (_1!34385 lt!2050951)))))

(declare-fun maxPrefix!4660 (LexerInterface!7985 List!57568 List!57567) Option!14449)

(assert (=> b!4967128 (= lt!2050951 (get!19940 (maxPrefix!4660 thiss!15247 rulesArg!259 lt!2050949)))))

(assert (=> b!4967128 (= lt!2050942 (get!19941 lt!2050948))))

(declare-fun b!4967129 () Bool)

(declare-fun tp!1393270 () Bool)

(declare-fun inv!75075 (Conc!15145) Bool)

(assert (=> b!4967129 (= e!3104686 (and (inv!75075 (c!847515 input!1342)) tp!1393270))))

(declare-fun b!4967130 () Bool)

(declare-fun res!2120125 () Bool)

(assert (=> b!4967130 (=> (not res!2120125) (not e!3104678))))

(declare-fun isEmpty!30933 (List!57568) Bool)

(assert (=> b!4967130 (= res!2120125 (not (isEmpty!30933 rulesArg!259)))))

(declare-fun b!4967131 () Bool)

(declare-fun tp!1393271 () Bool)

(assert (=> b!4967131 (= e!3104681 (and (inv!75075 (c!847515 totalInput!464)) tp!1393271))))

(declare-fun b!4967132 () Bool)

(declare-fun res!2120122 () Bool)

(assert (=> b!4967132 (=> (not res!2120122) (not e!3104678))))

(declare-fun rulesValidInductive!3296 (LexerInterface!7985 List!57568) Bool)

(assert (=> b!4967132 (= res!2120122 (rulesValidInductive!3296 thiss!15247 rulesArg!259))))

(declare-fun b!4967133 () Bool)

(declare-fun e!3104674 () Bool)

(assert (=> b!4967133 (= e!3104674 e!3104687)))

(declare-fun res!2120123 () Bool)

(assert (=> b!4967133 (=> res!2120123 e!3104687)))

(declare-fun lt!2050943 () Option!14450)

(assert (=> b!4967133 (= res!2120123 (or (and (is-None!14449 lt!2050948) (is-None!14449 lt!2050943)) (not (is-None!14449 lt!2050943))))))

(declare-fun maxPrefixZipperSequenceV2!704 (LexerInterface!7985 List!57568 BalanceConc!29720 BalanceConc!29720) Option!14450)

(assert (=> b!4967133 (= lt!2050943 (maxPrefixZipperSequenceV2!704 thiss!15247 (t!368628 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!361 (LexerInterface!7985 Rule!16586 BalanceConc!29720 BalanceConc!29720) Option!14450)

(assert (=> b!4967133 (= lt!2050948 (maxPrefixOneRuleZipperSequenceV2!361 thiss!15247 (h!63892 rulesArg!259) input!1342 totalInput!464))))

(declare-fun e!3104679 () Bool)

(declare-fun e!3104677 () Bool)

(declare-fun tp!1393269 () Bool)

(declare-fun b!4967134 () Bool)

(declare-fun inv!75071 (String!65391) Bool)

(declare-fun inv!75076 (TokenValueInjection!16714) Bool)

(assert (=> b!4967134 (= e!3104677 (and tp!1393269 (inv!75071 (tag!9257 (h!63892 rulesArg!259))) (inv!75076 (transformation!8393 (h!63892 rulesArg!259))) e!3104679))))

(declare-fun b!4967135 () Bool)

(declare-fun tp!1393272 () Bool)

(assert (=> b!4967135 (= e!3104682 (and e!3104677 tp!1393272))))

(declare-fun b!4967136 () Bool)

(declare-fun e!3104680 () Bool)

(assert (=> b!4967136 (= e!3104680 (not e!3104674))))

(declare-fun res!2120121 () Bool)

(assert (=> b!4967136 (=> res!2120121 e!3104674)))

(assert (=> b!4967136 (= res!2120121 (or (and (is-Cons!57444 rulesArg!259) (is-Nil!57444 (t!368628 rulesArg!259))) (not (is-Cons!57444 rulesArg!259))))))

(declare-fun isPrefix!5244 (List!57567 List!57567) Bool)

(assert (=> b!4967136 (isPrefix!5244 lt!2050949 lt!2050949)))

(declare-datatypes ((Unit!148361 0))(
  ( (Unit!148362) )
))
(declare-fun lt!2050941 () Unit!148361)

(declare-fun lemmaIsPrefixRefl!3568 (List!57567 List!57567) Unit!148361)

(assert (=> b!4967136 (= lt!2050941 (lemmaIsPrefixRefl!3568 lt!2050949 lt!2050949))))

(assert (=> b!4967137 (= e!3104679 (and tp!1393267 tp!1393268))))

(declare-fun b!4967138 () Bool)

(assert (=> b!4967138 (= e!3104684 (= (list!18365 (_2!34386 lt!2050942)) (_2!34385 lt!2050951)))))

(declare-fun b!4967139 () Bool)

(declare-fun e!3104683 () Bool)

(assert (=> b!4967139 (= e!3104683 e!3104672)))

(declare-fun res!2120129 () Bool)

(assert (=> b!4967139 (=> res!2120129 e!3104672)))

(declare-fun lt!2050947 () Bool)

(assert (=> b!4967139 (= res!2120129 lt!2050947)))

(declare-fun b!4967140 () Bool)

(assert (=> b!4967140 (= e!3104678 e!3104680)))

(declare-fun res!2120131 () Bool)

(assert (=> b!4967140 (=> (not res!2120131) (not e!3104680))))

(declare-fun isSuffix!1192 (List!57567 List!57567) Bool)

(assert (=> b!4967140 (= res!2120131 (isSuffix!1192 lt!2050949 (list!18365 totalInput!464)))))

(assert (=> b!4967140 (= lt!2050949 (list!18365 input!1342))))

(declare-fun b!4967141 () Bool)

(assert (=> b!4967141 (= e!3104675 e!3104683)))

(declare-fun res!2120124 () Bool)

(assert (=> b!4967141 (=> (not res!2120124) (not e!3104683))))

(assert (=> b!4967141 (= res!2120124 e!3104676)))

(declare-fun res!2120128 () Bool)

(assert (=> b!4967141 (=> res!2120128 e!3104676)))

(assert (=> b!4967141 (= res!2120128 lt!2050947)))

(assert (=> b!4967141 (= lt!2050947 (not lt!2050946))))

(assert (= (and start!523892 res!2120126) b!4967132))

(assert (= (and b!4967132 res!2120122) b!4967130))

(assert (= (and b!4967130 res!2120125) b!4967140))

(assert (= (and b!4967140 res!2120131) b!4967136))

(assert (= (and b!4967136 (not res!2120121)) b!4967133))

(assert (= (and b!4967133 (not res!2120123)) b!4967125))

(assert (= (and b!4967125 res!2120132) b!4967141))

(assert (= (and b!4967141 (not res!2120128)) b!4967127))

(assert (= (and b!4967127 res!2120130) b!4967126))

(assert (= (and b!4967141 res!2120124) b!4967139))

(assert (= (and b!4967139 (not res!2120129)) b!4967128))

(assert (= (and b!4967128 res!2120127) b!4967138))

(assert (= b!4967134 b!4967137))

(assert (= b!4967135 b!4967134))

(assert (= (and start!523892 (is-Cons!57444 rulesArg!259)) b!4967135))

(assert (= start!523892 b!4967129))

(assert (= start!523892 b!4967131))

(declare-fun m!5993330 () Bool)

(assert (=> b!4967131 m!5993330))

(declare-fun m!5993332 () Bool)

(assert (=> start!523892 m!5993332))

(declare-fun m!5993334 () Bool)

(assert (=> start!523892 m!5993334))

(declare-fun m!5993336 () Bool)

(assert (=> b!4967127 m!5993336))

(declare-fun m!5993338 () Bool)

(assert (=> b!4967127 m!5993338))

(declare-fun m!5993340 () Bool)

(assert (=> b!4967136 m!5993340))

(declare-fun m!5993342 () Bool)

(assert (=> b!4967136 m!5993342))

(declare-fun m!5993344 () Bool)

(assert (=> b!4967133 m!5993344))

(declare-fun m!5993346 () Bool)

(assert (=> b!4967133 m!5993346))

(declare-fun m!5993348 () Bool)

(assert (=> b!4967130 m!5993348))

(declare-fun m!5993350 () Bool)

(assert (=> b!4967125 m!5993350))

(declare-fun m!5993352 () Bool)

(assert (=> b!4967125 m!5993352))

(declare-fun m!5993354 () Bool)

(assert (=> b!4967125 m!5993354))

(declare-fun m!5993356 () Bool)

(assert (=> b!4967134 m!5993356))

(declare-fun m!5993358 () Bool)

(assert (=> b!4967134 m!5993358))

(declare-fun m!5993360 () Bool)

(assert (=> b!4967126 m!5993360))

(declare-fun m!5993362 () Bool)

(assert (=> b!4967128 m!5993362))

(assert (=> b!4967128 m!5993362))

(declare-fun m!5993364 () Bool)

(assert (=> b!4967128 m!5993364))

(assert (=> b!4967128 m!5993338))

(declare-fun m!5993366 () Bool)

(assert (=> b!4967129 m!5993366))

(declare-fun m!5993368 () Bool)

(assert (=> b!4967132 m!5993368))

(declare-fun m!5993370 () Bool)

(assert (=> b!4967138 m!5993370))

(declare-fun m!5993372 () Bool)

(assert (=> b!4967140 m!5993372))

(assert (=> b!4967140 m!5993372))

(declare-fun m!5993374 () Bool)

(assert (=> b!4967140 m!5993374))

(declare-fun m!5993376 () Bool)

(assert (=> b!4967140 m!5993376))

(push 1)

(assert (not b!4967135))

(assert (not b!4967132))

(assert (not b!4967127))

(assert (not b!4967125))

(assert b_and!348147)

(assert (not b!4967138))

(assert (not b!4967136))

(assert (not b!4967128))

(assert (not b_next!133557))

(assert (not start!523892))

(assert (not b!4967130))

(assert (not b!4967131))

(assert (not b!4967129))

(assert (not b!4967140))

(assert (not b!4967126))

(assert (not b_next!133559))

(assert (not b!4967134))

(assert (not b!4967133))

(assert b_and!348149)

(check-sat)

(pop 1)

(push 1)

(assert b_and!348147)

(assert b_and!348149)

(assert (not b_next!133557))

(assert (not b_next!133559))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1598674 () Bool)

(assert (=> d!1598674 (= (isEmpty!30933 rulesArg!259) (is-Nil!57444 rulesArg!259))))

(assert (=> b!4967130 d!1598674))

(declare-fun d!1598676 () Bool)

(declare-fun e!3104738 () Bool)

(assert (=> d!1598676 e!3104738))

(declare-fun res!2120187 () Bool)

(assert (=> d!1598676 (=> res!2120187 e!3104738)))

(declare-fun lt!2050987 () Bool)

(assert (=> d!1598676 (= res!2120187 (not lt!2050987))))

(declare-fun drop!2349 (List!57567 Int) List!57567)

(declare-fun size!38072 (List!57567) Int)

(assert (=> d!1598676 (= lt!2050987 (= lt!2050949 (drop!2349 (list!18365 totalInput!464) (- (size!38072 (list!18365 totalInput!464)) (size!38072 lt!2050949)))))))

(assert (=> d!1598676 (= (isSuffix!1192 lt!2050949 (list!18365 totalInput!464)) lt!2050987)))

(declare-fun b!4967195 () Bool)

(assert (=> b!4967195 (= e!3104738 (>= (size!38072 (list!18365 totalInput!464)) (size!38072 lt!2050949)))))

(assert (= (and d!1598676 (not res!2120187)) b!4967195))

(assert (=> d!1598676 m!5993372))

(declare-fun m!5993426 () Bool)

(assert (=> d!1598676 m!5993426))

(declare-fun m!5993428 () Bool)

(assert (=> d!1598676 m!5993428))

(assert (=> d!1598676 m!5993372))

(declare-fun m!5993430 () Bool)

(assert (=> d!1598676 m!5993430))

(assert (=> b!4967195 m!5993372))

(assert (=> b!4967195 m!5993426))

(assert (=> b!4967195 m!5993428))

(assert (=> b!4967140 d!1598676))

(declare-fun d!1598678 () Bool)

(declare-fun list!18367 (Conc!15145) List!57567)

(assert (=> d!1598678 (= (list!18365 totalInput!464) (list!18367 (c!847515 totalInput!464)))))

(declare-fun bs!1183173 () Bool)

(assert (= bs!1183173 d!1598678))

(declare-fun m!5993432 () Bool)

(assert (=> bs!1183173 m!5993432))

(assert (=> b!4967140 d!1598678))

(declare-fun d!1598680 () Bool)

(assert (=> d!1598680 (= (list!18365 input!1342) (list!18367 (c!847515 input!1342)))))

(declare-fun bs!1183174 () Bool)

(assert (= bs!1183174 d!1598680))

(declare-fun m!5993434 () Bool)

(assert (=> bs!1183174 m!5993434))

(assert (=> b!4967140 d!1598680))

(declare-fun d!1598682 () Bool)

(declare-fun c!847521 () Bool)

(assert (=> d!1598682 (= c!847521 (is-Node!15145 (c!847515 input!1342)))))

(declare-fun e!3104743 () Bool)

(assert (=> d!1598682 (= (inv!75075 (c!847515 input!1342)) e!3104743)))

(declare-fun b!4967202 () Bool)

(declare-fun inv!75080 (Conc!15145) Bool)

(assert (=> b!4967202 (= e!3104743 (inv!75080 (c!847515 input!1342)))))

(declare-fun b!4967203 () Bool)

(declare-fun e!3104744 () Bool)

(assert (=> b!4967203 (= e!3104743 e!3104744)))

(declare-fun res!2120190 () Bool)

(assert (=> b!4967203 (= res!2120190 (not (is-Leaf!25167 (c!847515 input!1342))))))

(assert (=> b!4967203 (=> res!2120190 e!3104744)))

(declare-fun b!4967204 () Bool)

(declare-fun inv!75081 (Conc!15145) Bool)

(assert (=> b!4967204 (= e!3104744 (inv!75081 (c!847515 input!1342)))))

(assert (= (and d!1598682 c!847521) b!4967202))

(assert (= (and d!1598682 (not c!847521)) b!4967203))

(assert (= (and b!4967203 (not res!2120190)) b!4967204))

(declare-fun m!5993436 () Bool)

(assert (=> b!4967202 m!5993436))

(declare-fun m!5993438 () Bool)

(assert (=> b!4967204 m!5993438))

(assert (=> b!4967129 d!1598682))

(declare-fun d!1598684 () Bool)

(assert (=> d!1598684 (= (list!18365 (_2!34386 lt!2050942)) (list!18367 (c!847515 (_2!34386 lt!2050942))))))

(declare-fun bs!1183175 () Bool)

(assert (= bs!1183175 d!1598684))

(declare-fun m!5993440 () Bool)

(assert (=> bs!1183175 m!5993440))

(assert (=> b!4967138 d!1598684))

(declare-fun d!1598686 () Bool)

(assert (=> d!1598686 (= (get!19940 lt!2050950) (v!50437 lt!2050950))))

(assert (=> b!4967127 d!1598686))

(declare-fun d!1598688 () Bool)

(assert (=> d!1598688 (= (get!19941 lt!2050948) (v!50438 lt!2050948))))

(assert (=> b!4967127 d!1598688))

(declare-fun d!1598690 () Bool)

(assert (=> d!1598690 (= (get!19940 (maxPrefix!4660 thiss!15247 rulesArg!259 lt!2050949)) (v!50437 (maxPrefix!4660 thiss!15247 rulesArg!259 lt!2050949)))))

(assert (=> b!4967128 d!1598690))

(declare-fun b!4967227 () Bool)

(declare-fun e!3104756 () Option!14449)

(declare-fun lt!2051002 () Option!14449)

(declare-fun lt!2051003 () Option!14449)

(assert (=> b!4967227 (= e!3104756 (ite (and (is-None!14448 lt!2051002) (is-None!14448 lt!2051003)) None!14448 (ite (is-None!14448 lt!2051003) lt!2051002 (ite (is-None!14448 lt!2051002) lt!2051003 (ite (>= (size!38070 (_1!34385 (v!50437 lt!2051002))) (size!38070 (_1!34385 (v!50437 lt!2051003)))) lt!2051002 lt!2051003)))))))

(declare-fun call!346380 () Option!14449)

(assert (=> b!4967227 (= lt!2051002 call!346380)))

(assert (=> b!4967227 (= lt!2051003 (maxPrefix!4660 thiss!15247 (t!368628 rulesArg!259) lt!2050949))))

(declare-fun b!4967228 () Bool)

(declare-fun e!3104757 () Bool)

(declare-fun lt!2051000 () Option!14449)

(declare-fun contains!19538 (List!57568 Rule!16586) Bool)

(assert (=> b!4967228 (= e!3104757 (contains!19538 rulesArg!259 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))))

(declare-fun b!4967229 () Bool)

(assert (=> b!4967229 (= e!3104756 call!346380)))

(declare-fun b!4967230 () Bool)

(declare-fun e!3104755 () Bool)

(assert (=> b!4967230 (= e!3104755 e!3104757)))

(declare-fun res!2120213 () Bool)

(assert (=> b!4967230 (=> (not res!2120213) (not e!3104757))))

(assert (=> b!4967230 (= res!2120213 (isDefined!11362 lt!2051000))))

(declare-fun b!4967231 () Bool)

(declare-fun res!2120209 () Bool)

(assert (=> b!4967231 (=> (not res!2120209) (not e!3104757))))

(declare-fun apply!13904 (TokenValueInjection!16714 BalanceConc!29720) TokenValue!8703)

(declare-fun seqFromList!6036 (List!57567) BalanceConc!29720)

(assert (=> b!4967231 (= res!2120209 (= (value!268642 (_1!34385 (get!19940 lt!2051000))) (apply!13904 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051000)))))))))

(declare-fun b!4967232 () Bool)

(declare-fun res!2120210 () Bool)

(assert (=> b!4967232 (=> (not res!2120210) (not e!3104757))))

(assert (=> b!4967232 (= res!2120210 (< (size!38072 (_2!34385 (get!19940 lt!2051000))) (size!38072 lt!2050949)))))

(declare-fun b!4967233 () Bool)

(declare-fun res!2120214 () Bool)

(assert (=> b!4967233 (=> (not res!2120214) (not e!3104757))))

(declare-fun ++!12532 (List!57567 List!57567) List!57567)

(declare-fun charsOf!5437 (Token!15282) BalanceConc!29720)

(assert (=> b!4967233 (= res!2120214 (= (++!12532 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))) (_2!34385 (get!19940 lt!2051000))) lt!2050949))))

(declare-fun d!1598692 () Bool)

(assert (=> d!1598692 e!3104755))

(declare-fun res!2120211 () Bool)

(assert (=> d!1598692 (=> res!2120211 e!3104755)))

(declare-fun isEmpty!30935 (Option!14449) Bool)

(assert (=> d!1598692 (= res!2120211 (isEmpty!30935 lt!2051000))))

(assert (=> d!1598692 (= lt!2051000 e!3104756)))

(declare-fun c!847524 () Bool)

(assert (=> d!1598692 (= c!847524 (and (is-Cons!57444 rulesArg!259) (is-Nil!57444 (t!368628 rulesArg!259))))))

(declare-fun lt!2051001 () Unit!148361)

(declare-fun lt!2051004 () Unit!148361)

(assert (=> d!1598692 (= lt!2051001 lt!2051004)))

(assert (=> d!1598692 (isPrefix!5244 lt!2050949 lt!2050949)))

(assert (=> d!1598692 (= lt!2051004 (lemmaIsPrefixRefl!3568 lt!2050949 lt!2050949))))

(assert (=> d!1598692 (rulesValidInductive!3296 thiss!15247 rulesArg!259)))

(assert (=> d!1598692 (= (maxPrefix!4660 thiss!15247 rulesArg!259 lt!2050949) lt!2051000)))

(declare-fun b!4967234 () Bool)

(declare-fun res!2120212 () Bool)

(assert (=> b!4967234 (=> (not res!2120212) (not e!3104757))))

(assert (=> b!4967234 (= res!2120212 (= (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))) (originalCharacters!8672 (_1!34385 (get!19940 lt!2051000)))))))

(declare-fun bm!346375 () Bool)

(declare-fun maxPrefixOneRule!3629 (LexerInterface!7985 Rule!16586 List!57567) Option!14449)

(assert (=> bm!346375 (= call!346380 (maxPrefixOneRule!3629 thiss!15247 (h!63892 rulesArg!259) lt!2050949))))

(declare-fun b!4967235 () Bool)

(declare-fun res!2120215 () Bool)

(assert (=> b!4967235 (=> (not res!2120215) (not e!3104757))))

(declare-fun matchR!6636 (Regex!13626 List!57567) Bool)

(assert (=> b!4967235 (= res!2120215 (matchR!6636 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))) (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))

(assert (= (and d!1598692 c!847524) b!4967229))

(assert (= (and d!1598692 (not c!847524)) b!4967227))

(assert (= (or b!4967229 b!4967227) bm!346375))

(assert (= (and d!1598692 (not res!2120211)) b!4967230))

(assert (= (and b!4967230 res!2120213) b!4967234))

(assert (= (and b!4967234 res!2120212) b!4967232))

(assert (= (and b!4967232 res!2120210) b!4967233))

(assert (= (and b!4967233 res!2120214) b!4967231))

(assert (= (and b!4967231 res!2120209) b!4967235))

(assert (= (and b!4967235 res!2120215) b!4967228))

(declare-fun m!5993442 () Bool)

(assert (=> b!4967231 m!5993442))

(declare-fun m!5993444 () Bool)

(assert (=> b!4967231 m!5993444))

(assert (=> b!4967231 m!5993444))

(declare-fun m!5993446 () Bool)

(assert (=> b!4967231 m!5993446))

(declare-fun m!5993448 () Bool)

(assert (=> b!4967227 m!5993448))

(assert (=> b!4967235 m!5993442))

(declare-fun m!5993450 () Bool)

(assert (=> b!4967235 m!5993450))

(assert (=> b!4967235 m!5993450))

(declare-fun m!5993452 () Bool)

(assert (=> b!4967235 m!5993452))

(assert (=> b!4967235 m!5993452))

(declare-fun m!5993454 () Bool)

(assert (=> b!4967235 m!5993454))

(assert (=> b!4967234 m!5993442))

(assert (=> b!4967234 m!5993450))

(assert (=> b!4967234 m!5993450))

(assert (=> b!4967234 m!5993452))

(declare-fun m!5993456 () Bool)

(assert (=> b!4967230 m!5993456))

(assert (=> b!4967233 m!5993442))

(assert (=> b!4967233 m!5993450))

(assert (=> b!4967233 m!5993450))

(assert (=> b!4967233 m!5993452))

(assert (=> b!4967233 m!5993452))

(declare-fun m!5993458 () Bool)

(assert (=> b!4967233 m!5993458))

(declare-fun m!5993460 () Bool)

(assert (=> d!1598692 m!5993460))

(assert (=> d!1598692 m!5993340))

(assert (=> d!1598692 m!5993342))

(assert (=> d!1598692 m!5993368))

(assert (=> b!4967232 m!5993442))

(declare-fun m!5993462 () Bool)

(assert (=> b!4967232 m!5993462))

(assert (=> b!4967232 m!5993428))

(assert (=> b!4967228 m!5993442))

(declare-fun m!5993464 () Bool)

(assert (=> b!4967228 m!5993464))

(declare-fun m!5993466 () Bool)

(assert (=> bm!346375 m!5993466))

(assert (=> b!4967128 d!1598692))

(assert (=> b!4967128 d!1598688))

(declare-fun d!1598696 () Bool)

(assert (=> d!1598696 (= (list!18365 (_2!34386 lt!2050944)) (list!18367 (c!847515 (_2!34386 lt!2050944))))))

(declare-fun bs!1183176 () Bool)

(assert (= bs!1183176 d!1598696))

(declare-fun m!5993468 () Bool)

(assert (=> bs!1183176 m!5993468))

(assert (=> b!4967126 d!1598696))

(declare-fun b!4967247 () Bool)

(declare-fun e!3104766 () Bool)

(assert (=> b!4967247 (= e!3104766 (>= (size!38072 lt!2050949) (size!38072 lt!2050949)))))

(declare-fun b!4967244 () Bool)

(declare-fun e!3104765 () Bool)

(declare-fun e!3104764 () Bool)

(assert (=> b!4967244 (= e!3104765 e!3104764)))

(declare-fun res!2120226 () Bool)

(assert (=> b!4967244 (=> (not res!2120226) (not e!3104764))))

(assert (=> b!4967244 (= res!2120226 (not (is-Nil!57443 lt!2050949)))))

(declare-fun b!4967246 () Bool)

(declare-fun tail!9801 (List!57567) List!57567)

(assert (=> b!4967246 (= e!3104764 (isPrefix!5244 (tail!9801 lt!2050949) (tail!9801 lt!2050949)))))

(declare-fun d!1598698 () Bool)

(assert (=> d!1598698 e!3104766))

(declare-fun res!2120225 () Bool)

(assert (=> d!1598698 (=> res!2120225 e!3104766)))

(declare-fun lt!2051007 () Bool)

(assert (=> d!1598698 (= res!2120225 (not lt!2051007))))

(assert (=> d!1598698 (= lt!2051007 e!3104765)))

(declare-fun res!2120224 () Bool)

(assert (=> d!1598698 (=> res!2120224 e!3104765)))

(assert (=> d!1598698 (= res!2120224 (is-Nil!57443 lt!2050949))))

(assert (=> d!1598698 (= (isPrefix!5244 lt!2050949 lt!2050949) lt!2051007)))

(declare-fun b!4967245 () Bool)

(declare-fun res!2120227 () Bool)

(assert (=> b!4967245 (=> (not res!2120227) (not e!3104764))))

(declare-fun head!10668 (List!57567) C!27502)

(assert (=> b!4967245 (= res!2120227 (= (head!10668 lt!2050949) (head!10668 lt!2050949)))))

(assert (= (and d!1598698 (not res!2120224)) b!4967244))

(assert (= (and b!4967244 res!2120226) b!4967245))

(assert (= (and b!4967245 res!2120227) b!4967246))

(assert (= (and d!1598698 (not res!2120225)) b!4967247))

(assert (=> b!4967247 m!5993428))

(assert (=> b!4967247 m!5993428))

(declare-fun m!5993470 () Bool)

(assert (=> b!4967246 m!5993470))

(assert (=> b!4967246 m!5993470))

(assert (=> b!4967246 m!5993470))

(assert (=> b!4967246 m!5993470))

(declare-fun m!5993472 () Bool)

(assert (=> b!4967246 m!5993472))

(declare-fun m!5993474 () Bool)

(assert (=> b!4967245 m!5993474))

(assert (=> b!4967245 m!5993474))

(assert (=> b!4967136 d!1598698))

(declare-fun d!1598700 () Bool)

(assert (=> d!1598700 (isPrefix!5244 lt!2050949 lt!2050949)))

(declare-fun lt!2051010 () Unit!148361)

(declare-fun choose!36668 (List!57567 List!57567) Unit!148361)

(assert (=> d!1598700 (= lt!2051010 (choose!36668 lt!2050949 lt!2050949))))

(assert (=> d!1598700 (= (lemmaIsPrefixRefl!3568 lt!2050949 lt!2050949) lt!2051010)))

(declare-fun bs!1183177 () Bool)

(assert (= bs!1183177 d!1598700))

(assert (=> bs!1183177 m!5993340))

(declare-fun m!5993476 () Bool)

(assert (=> bs!1183177 m!5993476))

(assert (=> b!4967136 d!1598700))

(declare-fun d!1598702 () Bool)

(declare-fun isBalanced!4202 (Conc!15145) Bool)

(assert (=> d!1598702 (= (inv!75074 input!1342) (isBalanced!4202 (c!847515 input!1342)))))

(declare-fun bs!1183178 () Bool)

(assert (= bs!1183178 d!1598702))

(declare-fun m!5993478 () Bool)

(assert (=> bs!1183178 m!5993478))

(assert (=> start!523892 d!1598702))

(declare-fun d!1598704 () Bool)

(assert (=> d!1598704 (= (inv!75074 totalInput!464) (isBalanced!4202 (c!847515 totalInput!464)))))

(declare-fun bs!1183179 () Bool)

(assert (= bs!1183179 d!1598704))

(declare-fun m!5993480 () Bool)

(assert (=> bs!1183179 m!5993480))

(assert (=> start!523892 d!1598704))

(declare-fun d!1598706 () Bool)

(assert (=> d!1598706 (= (isDefined!11362 lt!2050950) (not (isEmpty!30935 lt!2050950)))))

(declare-fun bs!1183180 () Bool)

(assert (= bs!1183180 d!1598706))

(declare-fun m!5993482 () Bool)

(assert (=> bs!1183180 m!5993482))

(assert (=> b!4967125 d!1598706))

(declare-fun d!1598708 () Bool)

(declare-fun isEmpty!30936 (Option!14450) Bool)

(assert (=> d!1598708 (= (isDefined!11363 lt!2050948) (not (isEmpty!30936 lt!2050948)))))

(declare-fun bs!1183181 () Bool)

(assert (= bs!1183181 d!1598708))

(declare-fun m!5993484 () Bool)

(assert (=> bs!1183181 m!5993484))

(assert (=> b!4967125 d!1598708))

(declare-fun d!1598710 () Bool)

(declare-fun lt!2051025 () Option!14449)

(assert (=> d!1598710 (= lt!2051025 (maxPrefix!4660 thiss!15247 rulesArg!259 lt!2050949))))

(declare-fun e!3104769 () Option!14449)

(assert (=> d!1598710 (= lt!2051025 e!3104769)))

(declare-fun c!847527 () Bool)

(assert (=> d!1598710 (= c!847527 (and (is-Cons!57444 rulesArg!259) (is-Nil!57444 (t!368628 rulesArg!259))))))

(declare-fun lt!2051022 () Unit!148361)

(declare-fun lt!2051021 () Unit!148361)

(assert (=> d!1598710 (= lt!2051022 lt!2051021)))

(assert (=> d!1598710 (isPrefix!5244 lt!2050949 lt!2050949)))

(assert (=> d!1598710 (= lt!2051021 (lemmaIsPrefixRefl!3568 lt!2050949 lt!2050949))))

(assert (=> d!1598710 (rulesValidInductive!3296 thiss!15247 rulesArg!259)))

(assert (=> d!1598710 (= (maxPrefixZipper!786 thiss!15247 rulesArg!259 lt!2050949) lt!2051025)))

(declare-fun call!346383 () Option!14449)

(declare-fun bm!346378 () Bool)

(declare-fun maxPrefixOneRuleZipper!296 (LexerInterface!7985 Rule!16586 List!57567) Option!14449)

(assert (=> bm!346378 (= call!346383 (maxPrefixOneRuleZipper!296 thiss!15247 (h!63892 rulesArg!259) lt!2050949))))

(declare-fun b!4967252 () Bool)

(assert (=> b!4967252 (= e!3104769 call!346383)))

(declare-fun b!4967253 () Bool)

(declare-fun lt!2051024 () Option!14449)

(declare-fun lt!2051023 () Option!14449)

(assert (=> b!4967253 (= e!3104769 (ite (and (is-None!14448 lt!2051024) (is-None!14448 lt!2051023)) None!14448 (ite (is-None!14448 lt!2051023) lt!2051024 (ite (is-None!14448 lt!2051024) lt!2051023 (ite (>= (size!38070 (_1!34385 (v!50437 lt!2051024))) (size!38070 (_1!34385 (v!50437 lt!2051023)))) lt!2051024 lt!2051023)))))))

(assert (=> b!4967253 (= lt!2051024 call!346383)))

(assert (=> b!4967253 (= lt!2051023 (maxPrefixZipper!786 thiss!15247 (t!368628 rulesArg!259) lt!2050949))))

(assert (= (and d!1598710 c!847527) b!4967252))

(assert (= (and d!1598710 (not c!847527)) b!4967253))

(assert (= (or b!4967252 b!4967253) bm!346378))

(assert (=> d!1598710 m!5993362))

(assert (=> d!1598710 m!5993340))

(assert (=> d!1598710 m!5993342))

(assert (=> d!1598710 m!5993368))

(declare-fun m!5993486 () Bool)

(assert (=> bm!346378 m!5993486))

(declare-fun m!5993488 () Bool)

(assert (=> b!4967253 m!5993488))

(assert (=> b!4967125 d!1598710))

(declare-fun d!1598712 () Bool)

(assert (=> d!1598712 (= (inv!75071 (tag!9257 (h!63892 rulesArg!259))) (= (mod (str.len (value!268641 (tag!9257 (h!63892 rulesArg!259)))) 2) 0))))

(assert (=> b!4967134 d!1598712))

(declare-fun d!1598714 () Bool)

(declare-fun res!2120230 () Bool)

(declare-fun e!3104772 () Bool)

(assert (=> d!1598714 (=> (not res!2120230) (not e!3104772))))

(declare-fun semiInverseModEq!3700 (Int Int) Bool)

(assert (=> d!1598714 (= res!2120230 (semiInverseModEq!3700 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))))))

(assert (=> d!1598714 (= (inv!75076 (transformation!8393 (h!63892 rulesArg!259))) e!3104772)))

(declare-fun b!4967256 () Bool)

(declare-fun equivClasses!3548 (Int Int) Bool)

(assert (=> b!4967256 (= e!3104772 (equivClasses!3548 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))))))

(assert (= (and d!1598714 res!2120230) b!4967256))

(declare-fun m!5993490 () Bool)

(assert (=> d!1598714 m!5993490))

(declare-fun m!5993492 () Bool)

(assert (=> b!4967256 m!5993492))

(assert (=> b!4967134 d!1598714))

(declare-fun b!4967273 () Bool)

(declare-fun res!2120246 () Bool)

(declare-fun e!3104785 () Bool)

(assert (=> b!4967273 (=> (not res!2120246) (not e!3104785))))

(declare-fun e!3104788 () Bool)

(assert (=> b!4967273 (= res!2120246 e!3104788)))

(declare-fun res!2120244 () Bool)

(assert (=> b!4967273 (=> res!2120244 e!3104788)))

(declare-fun lt!2051044 () Option!14450)

(assert (=> b!4967273 (= res!2120244 (not (isDefined!11363 lt!2051044)))))

(declare-fun b!4967274 () Bool)

(declare-fun e!3104787 () Bool)

(declare-fun e!3104790 () Bool)

(assert (=> b!4967274 (= e!3104787 e!3104790)))

(declare-fun res!2120248 () Bool)

(assert (=> b!4967274 (=> (not res!2120248) (not e!3104790))))

(assert (=> b!4967274 (= res!2120248 (= (_1!34386 (get!19941 lt!2051044)) (_1!34385 (get!19940 (maxPrefix!4660 thiss!15247 (t!368628 rulesArg!259) (list!18365 input!1342))))))))

(declare-fun b!4967275 () Bool)

(declare-fun e!3104789 () Option!14450)

(declare-fun lt!2051046 () Option!14450)

(declare-fun lt!2051041 () Option!14450)

(assert (=> b!4967275 (= e!3104789 (ite (and (is-None!14449 lt!2051046) (is-None!14449 lt!2051041)) None!14449 (ite (is-None!14449 lt!2051041) lt!2051046 (ite (is-None!14449 lt!2051046) lt!2051041 (ite (>= (size!38070 (_1!34386 (v!50438 lt!2051046))) (size!38070 (_1!34386 (v!50438 lt!2051041)))) lt!2051046 lt!2051041)))))))

(declare-fun call!346386 () Option!14450)

(assert (=> b!4967275 (= lt!2051046 call!346386)))

(assert (=> b!4967275 (= lt!2051041 (maxPrefixZipperSequenceV2!704 thiss!15247 (t!368628 (t!368628 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun b!4967276 () Bool)

(declare-fun e!3104786 () Bool)

(assert (=> b!4967276 (= e!3104788 e!3104786)))

(declare-fun res!2120243 () Bool)

(assert (=> b!4967276 (=> (not res!2120243) (not e!3104786))))

(assert (=> b!4967276 (= res!2120243 (= (_1!34386 (get!19941 lt!2051044)) (_1!34385 (get!19940 (maxPrefixZipper!786 thiss!15247 (t!368628 rulesArg!259) (list!18365 input!1342))))))))

(declare-fun bm!346381 () Bool)

(assert (=> bm!346381 (= call!346386 (maxPrefixOneRuleZipperSequenceV2!361 thiss!15247 (h!63892 (t!368628 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun d!1598716 () Bool)

(assert (=> d!1598716 e!3104785))

(declare-fun res!2120247 () Bool)

(assert (=> d!1598716 (=> (not res!2120247) (not e!3104785))))

(assert (=> d!1598716 (= res!2120247 (= (isDefined!11363 lt!2051044) (isDefined!11362 (maxPrefixZipper!786 thiss!15247 (t!368628 rulesArg!259) (list!18365 input!1342)))))))

(assert (=> d!1598716 (= lt!2051044 e!3104789)))

(declare-fun c!847530 () Bool)

(assert (=> d!1598716 (= c!847530 (and (is-Cons!57444 (t!368628 rulesArg!259)) (is-Nil!57444 (t!368628 (t!368628 rulesArg!259)))))))

(declare-fun lt!2051043 () Unit!148361)

(declare-fun lt!2051045 () Unit!148361)

(assert (=> d!1598716 (= lt!2051043 lt!2051045)))

(declare-fun lt!2051042 () List!57567)

(declare-fun lt!2051040 () List!57567)

(assert (=> d!1598716 (isPrefix!5244 lt!2051042 lt!2051040)))

(assert (=> d!1598716 (= lt!2051045 (lemmaIsPrefixRefl!3568 lt!2051042 lt!2051040))))

(assert (=> d!1598716 (= lt!2051040 (list!18365 input!1342))))

(assert (=> d!1598716 (= lt!2051042 (list!18365 input!1342))))

(assert (=> d!1598716 (rulesValidInductive!3296 thiss!15247 (t!368628 rulesArg!259))))

(assert (=> d!1598716 (= (maxPrefixZipperSequenceV2!704 thiss!15247 (t!368628 rulesArg!259) input!1342 totalInput!464) lt!2051044)))

(declare-fun b!4967277 () Bool)

(assert (=> b!4967277 (= e!3104790 (= (list!18365 (_2!34386 (get!19941 lt!2051044))) (_2!34385 (get!19940 (maxPrefix!4660 thiss!15247 (t!368628 rulesArg!259) (list!18365 input!1342))))))))

(declare-fun b!4967278 () Bool)

(assert (=> b!4967278 (= e!3104786 (= (list!18365 (_2!34386 (get!19941 lt!2051044))) (_2!34385 (get!19940 (maxPrefixZipper!786 thiss!15247 (t!368628 rulesArg!259) (list!18365 input!1342))))))))

(declare-fun b!4967279 () Bool)

(assert (=> b!4967279 (= e!3104789 call!346386)))

(declare-fun b!4967280 () Bool)

(assert (=> b!4967280 (= e!3104785 e!3104787)))

(declare-fun res!2120245 () Bool)

(assert (=> b!4967280 (=> res!2120245 e!3104787)))

(assert (=> b!4967280 (= res!2120245 (not (isDefined!11363 lt!2051044)))))

(assert (= (and d!1598716 c!847530) b!4967279))

(assert (= (and d!1598716 (not c!847530)) b!4967275))

(assert (= (or b!4967279 b!4967275) bm!346381))

(assert (= (and d!1598716 res!2120247) b!4967273))

(assert (= (and b!4967273 (not res!2120244)) b!4967276))

(assert (= (and b!4967276 res!2120243) b!4967278))

(assert (= (and b!4967273 res!2120246) b!4967280))

(assert (= (and b!4967280 (not res!2120245)) b!4967274))

(assert (= (and b!4967274 res!2120248) b!4967277))

(declare-fun m!5993494 () Bool)

(assert (=> b!4967280 m!5993494))

(declare-fun m!5993496 () Bool)

(assert (=> bm!346381 m!5993496))

(assert (=> b!4967278 m!5993376))

(assert (=> b!4967278 m!5993376))

(declare-fun m!5993498 () Bool)

(assert (=> b!4967278 m!5993498))

(assert (=> b!4967278 m!5993498))

(declare-fun m!5993500 () Bool)

(assert (=> b!4967278 m!5993500))

(declare-fun m!5993502 () Bool)

(assert (=> b!4967278 m!5993502))

(declare-fun m!5993504 () Bool)

(assert (=> b!4967278 m!5993504))

(assert (=> b!4967273 m!5993494))

(assert (=> b!4967274 m!5993504))

(assert (=> b!4967274 m!5993376))

(assert (=> b!4967274 m!5993376))

(declare-fun m!5993506 () Bool)

(assert (=> b!4967274 m!5993506))

(assert (=> b!4967274 m!5993506))

(declare-fun m!5993508 () Bool)

(assert (=> b!4967274 m!5993508))

(assert (=> b!4967277 m!5993376))

(assert (=> b!4967277 m!5993376))

(assert (=> b!4967277 m!5993506))

(assert (=> b!4967277 m!5993502))

(assert (=> b!4967277 m!5993506))

(assert (=> b!4967277 m!5993508))

(assert (=> b!4967277 m!5993504))

(assert (=> b!4967276 m!5993504))

(assert (=> b!4967276 m!5993376))

(assert (=> b!4967276 m!5993376))

(assert (=> b!4967276 m!5993498))

(assert (=> b!4967276 m!5993498))

(assert (=> b!4967276 m!5993500))

(declare-fun m!5993510 () Bool)

(assert (=> b!4967275 m!5993510))

(declare-fun m!5993512 () Bool)

(assert (=> d!1598716 m!5993512))

(assert (=> d!1598716 m!5993376))

(assert (=> d!1598716 m!5993376))

(assert (=> d!1598716 m!5993498))

(assert (=> d!1598716 m!5993494))

(assert (=> d!1598716 m!5993498))

(declare-fun m!5993514 () Bool)

(assert (=> d!1598716 m!5993514))

(declare-fun m!5993516 () Bool)

(assert (=> d!1598716 m!5993516))

(declare-fun m!5993518 () Bool)

(assert (=> d!1598716 m!5993518))

(assert (=> b!4967133 d!1598716))

(declare-fun b!4967358 () Bool)

(declare-fun e!3104850 () Bool)

(assert (=> b!4967358 (= e!3104850 true)))

(declare-fun b!4967357 () Bool)

(declare-fun e!3104849 () Bool)

(assert (=> b!4967357 (= e!3104849 e!3104850)))

(declare-fun b!4967347 () Bool)

(assert (=> b!4967347 e!3104849))

(assert (= b!4967357 b!4967358))

(assert (= b!4967347 b!4967357))

(declare-fun lambda!247368 () Int)

(declare-fun order!26205 () Int)

(declare-fun order!26203 () Int)

(declare-fun dynLambda!23159 (Int Int) Int)

(declare-fun dynLambda!23160 (Int Int) Int)

(assert (=> b!4967358 (< (dynLambda!23159 order!26203 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) (dynLambda!23160 order!26205 lambda!247368))))

(declare-fun order!26207 () Int)

(declare-fun dynLambda!23161 (Int Int) Int)

(assert (=> b!4967358 (< (dynLambda!23161 order!26207 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) (dynLambda!23160 order!26205 lambda!247368))))

(declare-fun d!1598718 () Bool)

(declare-fun e!3104840 () Bool)

(assert (=> d!1598718 e!3104840))

(declare-fun res!2120298 () Bool)

(assert (=> d!1598718 (=> (not res!2120298) (not e!3104840))))

(declare-fun lt!2051118 () Option!14450)

(assert (=> d!1598718 (= res!2120298 (= (isDefined!11363 lt!2051118) (isDefined!11362 (maxPrefixOneRule!3629 thiss!15247 (h!63892 rulesArg!259) (list!18365 input!1342)))))))

(declare-fun e!3104844 () Option!14450)

(assert (=> d!1598718 (= lt!2051118 e!3104844)))

(declare-fun c!847538 () Bool)

(declare-datatypes ((tuple2!62172 0))(
  ( (tuple2!62173 (_1!34389 BalanceConc!29720) (_2!34389 BalanceConc!29720)) )
))
(declare-fun lt!2051115 () tuple2!62172)

(declare-fun isEmpty!30937 (BalanceConc!29720) Bool)

(assert (=> d!1598718 (= c!847538 (isEmpty!30937 (_1!34389 lt!2051115)))))

(declare-fun findLongestMatchWithZipperSequenceV2!164 (Regex!13626 BalanceConc!29720 BalanceConc!29720) tuple2!62172)

(assert (=> d!1598718 (= lt!2051115 (findLongestMatchWithZipperSequenceV2!164 (regex!8393 (h!63892 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun ruleValid!3802 (LexerInterface!7985 Rule!16586) Bool)

(assert (=> d!1598718 (ruleValid!3802 thiss!15247 (h!63892 rulesArg!259))))

(assert (=> d!1598718 (= (maxPrefixOneRuleZipperSequenceV2!361 thiss!15247 (h!63892 rulesArg!259) input!1342 totalInput!464) lt!2051118)))

(declare-fun b!4967345 () Bool)

(assert (=> b!4967345 (= e!3104844 None!14449)))

(declare-fun b!4967346 () Bool)

(declare-fun e!3104843 () Bool)

(assert (=> b!4967346 (= e!3104840 e!3104843)))

(declare-fun res!2120297 () Bool)

(assert (=> b!4967346 (=> res!2120297 e!3104843)))

(assert (=> b!4967346 (= res!2120297 (not (isDefined!11363 lt!2051118)))))

(declare-fun size!38073 (BalanceConc!29720) Int)

(assert (=> b!4967347 (= e!3104844 (Some!14449 (tuple2!62167 (Token!15283 (apply!13904 (transformation!8393 (h!63892 rulesArg!259)) (_1!34389 lt!2051115)) (h!63892 rulesArg!259) (size!38073 (_1!34389 lt!2051115)) (list!18365 (_1!34389 lt!2051115))) (_2!34389 lt!2051115))))))

(declare-fun lt!2051120 () List!57567)

(assert (=> b!4967347 (= lt!2051120 (list!18365 input!1342))))

(declare-fun lt!2051119 () Unit!148361)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1816 (Regex!13626 List!57567) Unit!148361)

(assert (=> b!4967347 (= lt!2051119 (longestMatchIsAcceptedByMatchOrIsEmpty!1816 (regex!8393 (h!63892 rulesArg!259)) lt!2051120))))

(declare-fun res!2120300 () Bool)

(declare-fun isEmpty!30938 (List!57567) Bool)

(declare-datatypes ((tuple2!62174 0))(
  ( (tuple2!62175 (_1!34390 List!57567) (_2!34390 List!57567)) )
))
(declare-fun findLongestMatchInner!1855 (Regex!13626 List!57567 Int List!57567 List!57567 Int) tuple2!62174)

(assert (=> b!4967347 (= res!2120300 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))))))

(declare-fun e!3104841 () Bool)

(assert (=> b!4967347 (=> res!2120300 e!3104841)))

(assert (=> b!4967347 e!3104841))

(declare-fun lt!2051124 () Unit!148361)

(assert (=> b!4967347 (= lt!2051124 lt!2051119)))

(declare-fun lt!2051121 () Unit!148361)

(declare-fun lemmaInv!1334 (TokenValueInjection!16714) Unit!148361)

(assert (=> b!4967347 (= lt!2051121 (lemmaInv!1334 (transformation!8393 (h!63892 rulesArg!259))))))

(declare-fun lt!2051116 () Unit!148361)

(declare-fun ForallOf!1227 (Int BalanceConc!29720) Unit!148361)

(assert (=> b!4967347 (= lt!2051116 (ForallOf!1227 lambda!247368 (_1!34389 lt!2051115)))))

(declare-fun lt!2051122 () Unit!148361)

(assert (=> b!4967347 (= lt!2051122 (ForallOf!1227 lambda!247368 (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))))))

(declare-fun lt!2051117 () Option!14450)

(assert (=> b!4967347 (= lt!2051117 (Some!14449 (tuple2!62167 (Token!15283 (apply!13904 (transformation!8393 (h!63892 rulesArg!259)) (_1!34389 lt!2051115)) (h!63892 rulesArg!259) (size!38073 (_1!34389 lt!2051115)) (list!18365 (_1!34389 lt!2051115))) (_2!34389 lt!2051115))))))

(declare-fun lt!2051123 () Unit!148361)

(declare-fun lemmaEqSameImage!1168 (TokenValueInjection!16714 BalanceConc!29720 BalanceConc!29720) Unit!148361)

(assert (=> b!4967347 (= lt!2051123 (lemmaEqSameImage!1168 (transformation!8393 (h!63892 rulesArg!259)) (_1!34389 lt!2051115) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))))))

(declare-fun b!4967348 () Bool)

(assert (=> b!4967348 (= e!3104841 (matchR!6636 (regex!8393 (h!63892 rulesArg!259)) (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))))))

(declare-fun b!4967349 () Bool)

(declare-fun e!3104842 () Bool)

(assert (=> b!4967349 (= e!3104843 e!3104842)))

(declare-fun res!2120299 () Bool)

(assert (=> b!4967349 (=> (not res!2120299) (not e!3104842))))

(assert (=> b!4967349 (= res!2120299 (= (_1!34386 (get!19941 lt!2051118)) (_1!34385 (get!19940 (maxPrefixOneRule!3629 thiss!15247 (h!63892 rulesArg!259) (list!18365 input!1342))))))))

(declare-fun b!4967350 () Bool)

(assert (=> b!4967350 (= e!3104842 (= (list!18365 (_2!34386 (get!19941 lt!2051118))) (_2!34385 (get!19940 (maxPrefixOneRule!3629 thiss!15247 (h!63892 rulesArg!259) (list!18365 input!1342))))))))

(assert (= (and d!1598718 c!847538) b!4967345))

(assert (= (and d!1598718 (not c!847538)) b!4967347))

(assert (= (and b!4967347 (not res!2120300)) b!4967348))

(assert (= (and d!1598718 res!2120298) b!4967346))

(assert (= (and b!4967346 (not res!2120297)) b!4967349))

(assert (= (and b!4967349 res!2120299) b!4967350))

(declare-fun m!5993560 () Bool)

(assert (=> b!4967349 m!5993560))

(assert (=> b!4967349 m!5993376))

(assert (=> b!4967349 m!5993376))

(declare-fun m!5993562 () Bool)

(assert (=> b!4967349 m!5993562))

(assert (=> b!4967349 m!5993562))

(declare-fun m!5993564 () Bool)

(assert (=> b!4967349 m!5993564))

(assert (=> b!4967347 m!5993376))

(declare-fun m!5993566 () Bool)

(assert (=> b!4967347 m!5993566))

(declare-fun m!5993568 () Bool)

(assert (=> b!4967347 m!5993568))

(declare-fun m!5993570 () Bool)

(assert (=> b!4967347 m!5993570))

(declare-fun m!5993572 () Bool)

(assert (=> b!4967347 m!5993572))

(declare-fun m!5993574 () Bool)

(assert (=> b!4967347 m!5993574))

(assert (=> b!4967347 m!5993570))

(declare-fun m!5993576 () Bool)

(assert (=> b!4967347 m!5993576))

(declare-fun m!5993578 () Bool)

(assert (=> b!4967347 m!5993578))

(declare-fun m!5993580 () Bool)

(assert (=> b!4967347 m!5993580))

(declare-fun m!5993582 () Bool)

(assert (=> b!4967347 m!5993582))

(declare-fun m!5993584 () Bool)

(assert (=> b!4967347 m!5993584))

(declare-fun m!5993586 () Bool)

(assert (=> b!4967347 m!5993586))

(assert (=> b!4967347 m!5993572))

(assert (=> b!4967347 m!5993582))

(assert (=> b!4967347 m!5993582))

(declare-fun m!5993588 () Bool)

(assert (=> b!4967347 m!5993588))

(assert (=> b!4967347 m!5993574))

(declare-fun m!5993590 () Bool)

(assert (=> b!4967347 m!5993590))

(assert (=> b!4967350 m!5993560))

(assert (=> b!4967350 m!5993376))

(declare-fun m!5993592 () Bool)

(assert (=> b!4967350 m!5993592))

(assert (=> b!4967350 m!5993376))

(assert (=> b!4967350 m!5993562))

(assert (=> b!4967350 m!5993562))

(assert (=> b!4967350 m!5993564))

(assert (=> b!4967348 m!5993574))

(assert (=> b!4967348 m!5993570))

(assert (=> b!4967348 m!5993574))

(assert (=> b!4967348 m!5993570))

(assert (=> b!4967348 m!5993576))

(declare-fun m!5993594 () Bool)

(assert (=> b!4967348 m!5993594))

(declare-fun m!5993596 () Bool)

(assert (=> b!4967346 m!5993596))

(assert (=> d!1598718 m!5993376))

(assert (=> d!1598718 m!5993596))

(declare-fun m!5993598 () Bool)

(assert (=> d!1598718 m!5993598))

(assert (=> d!1598718 m!5993562))

(declare-fun m!5993600 () Bool)

(assert (=> d!1598718 m!5993600))

(assert (=> d!1598718 m!5993376))

(assert (=> d!1598718 m!5993562))

(declare-fun m!5993602 () Bool)

(assert (=> d!1598718 m!5993602))

(declare-fun m!5993604 () Bool)

(assert (=> d!1598718 m!5993604))

(assert (=> b!4967133 d!1598718))

(declare-fun d!1598728 () Bool)

(declare-fun c!847540 () Bool)

(assert (=> d!1598728 (= c!847540 (is-Node!15145 (c!847515 totalInput!464)))))

(declare-fun e!3104856 () Bool)

(assert (=> d!1598728 (= (inv!75075 (c!847515 totalInput!464)) e!3104856)))

(declare-fun b!4967367 () Bool)

(assert (=> b!4967367 (= e!3104856 (inv!75080 (c!847515 totalInput!464)))))

(declare-fun b!4967368 () Bool)

(declare-fun e!3104857 () Bool)

(assert (=> b!4967368 (= e!3104856 e!3104857)))

(declare-fun res!2120305 () Bool)

(assert (=> b!4967368 (= res!2120305 (not (is-Leaf!25167 (c!847515 totalInput!464))))))

(assert (=> b!4967368 (=> res!2120305 e!3104857)))

(declare-fun b!4967369 () Bool)

(assert (=> b!4967369 (= e!3104857 (inv!75081 (c!847515 totalInput!464)))))

(assert (= (and d!1598728 c!847540) b!4967367))

(assert (= (and d!1598728 (not c!847540)) b!4967368))

(assert (= (and b!4967368 (not res!2120305)) b!4967369))

(declare-fun m!5993606 () Bool)

(assert (=> b!4967367 m!5993606))

(declare-fun m!5993608 () Bool)

(assert (=> b!4967369 m!5993608))

(assert (=> b!4967131 d!1598728))

(declare-fun d!1598730 () Bool)

(assert (=> d!1598730 true))

(declare-fun lt!2051137 () Bool)

(declare-fun lambda!247372 () Int)

(declare-fun forall!13329 (List!57568 Int) Bool)

(assert (=> d!1598730 (= lt!2051137 (forall!13329 rulesArg!259 lambda!247372))))

(declare-fun e!3104869 () Bool)

(assert (=> d!1598730 (= lt!2051137 e!3104869)))

(declare-fun res!2120311 () Bool)

(assert (=> d!1598730 (=> res!2120311 e!3104869)))

(assert (=> d!1598730 (= res!2120311 (not (is-Cons!57444 rulesArg!259)))))

(assert (=> d!1598730 (= (rulesValidInductive!3296 thiss!15247 rulesArg!259) lt!2051137)))

(declare-fun b!4967380 () Bool)

(declare-fun e!3104868 () Bool)

(assert (=> b!4967380 (= e!3104869 e!3104868)))

(declare-fun res!2120310 () Bool)

(assert (=> b!4967380 (=> (not res!2120310) (not e!3104868))))

(assert (=> b!4967380 (= res!2120310 (ruleValid!3802 thiss!15247 (h!63892 rulesArg!259)))))

(declare-fun b!4967381 () Bool)

(assert (=> b!4967381 (= e!3104868 (rulesValidInductive!3296 thiss!15247 (t!368628 rulesArg!259)))))

(assert (= (and d!1598730 (not res!2120311)) b!4967380))

(assert (= (and b!4967380 res!2120310) b!4967381))

(declare-fun m!5993654 () Bool)

(assert (=> d!1598730 m!5993654))

(assert (=> b!4967380 m!5993602))

(assert (=> b!4967381 m!5993518))

(assert (=> b!4967132 d!1598730))

(declare-fun b!4967394 () Bool)

(declare-fun b_free!132775 () Bool)

(declare-fun b_next!133565 () Bool)

(assert (=> b!4967394 (= b_free!132775 (not b_next!133565))))

(declare-fun tp!1393301 () Bool)

(declare-fun b_and!348155 () Bool)

(assert (=> b!4967394 (= tp!1393301 b_and!348155)))

(declare-fun b_free!132777 () Bool)

(declare-fun b_next!133567 () Bool)

(assert (=> b!4967394 (= b_free!132777 (not b_next!133567))))

(declare-fun tp!1393300 () Bool)

(declare-fun b_and!348157 () Bool)

(assert (=> b!4967394 (= tp!1393300 b_and!348157)))

(declare-fun e!3104879 () Bool)

(assert (=> b!4967394 (= e!3104879 (and tp!1393301 tp!1393300))))

(declare-fun tp!1393299 () Bool)

(declare-fun e!3104881 () Bool)

(declare-fun b!4967393 () Bool)

(assert (=> b!4967393 (= e!3104881 (and tp!1393299 (inv!75071 (tag!9257 (h!63892 (t!368628 rulesArg!259)))) (inv!75076 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) e!3104879))))

(declare-fun b!4967392 () Bool)

(declare-fun e!3104880 () Bool)

(declare-fun tp!1393302 () Bool)

(assert (=> b!4967392 (= e!3104880 (and e!3104881 tp!1393302))))

(assert (=> b!4967135 (= tp!1393272 e!3104880)))

(assert (= b!4967393 b!4967394))

(assert (= b!4967392 b!4967393))

(assert (= (and b!4967135 (is-Cons!57444 (t!368628 rulesArg!259))) b!4967392))

(declare-fun m!5993660 () Bool)

(assert (=> b!4967393 m!5993660))

(declare-fun m!5993662 () Bool)

(assert (=> b!4967393 m!5993662))

(declare-fun e!3104884 () Bool)

(assert (=> b!4967134 (= tp!1393269 e!3104884)))

(declare-fun b!4967408 () Bool)

(declare-fun tp!1393316 () Bool)

(declare-fun tp!1393315 () Bool)

(assert (=> b!4967408 (= e!3104884 (and tp!1393316 tp!1393315))))

(declare-fun b!4967405 () Bool)

(declare-fun tp_is_empty!36333 () Bool)

(assert (=> b!4967405 (= e!3104884 tp_is_empty!36333)))

(declare-fun b!4967406 () Bool)

(declare-fun tp!1393313 () Bool)

(declare-fun tp!1393317 () Bool)

(assert (=> b!4967406 (= e!3104884 (and tp!1393313 tp!1393317))))

(declare-fun b!4967407 () Bool)

(declare-fun tp!1393314 () Bool)

(assert (=> b!4967407 (= e!3104884 tp!1393314)))

(assert (= (and b!4967134 (is-ElementMatch!13626 (regex!8393 (h!63892 rulesArg!259)))) b!4967405))

(assert (= (and b!4967134 (is-Concat!22330 (regex!8393 (h!63892 rulesArg!259)))) b!4967406))

(assert (= (and b!4967134 (is-Star!13626 (regex!8393 (h!63892 rulesArg!259)))) b!4967407))

(assert (= (and b!4967134 (is-Union!13626 (regex!8393 (h!63892 rulesArg!259)))) b!4967408))

(declare-fun e!3104890 () Bool)

(declare-fun tp!1393325 () Bool)

(declare-fun b!4967417 () Bool)

(declare-fun tp!1393326 () Bool)

(assert (=> b!4967417 (= e!3104890 (and (inv!75075 (left!41900 (c!847515 input!1342))) tp!1393326 (inv!75075 (right!42230 (c!847515 input!1342))) tp!1393325))))

(declare-fun b!4967419 () Bool)

(declare-fun e!3104889 () Bool)

(declare-fun tp!1393324 () Bool)

(assert (=> b!4967419 (= e!3104889 tp!1393324)))

(declare-fun b!4967418 () Bool)

(declare-fun inv!75082 (IArray!30351) Bool)

(assert (=> b!4967418 (= e!3104890 (and (inv!75082 (xs!18471 (c!847515 input!1342))) e!3104889))))

(assert (=> b!4967129 (= tp!1393270 (and (inv!75075 (c!847515 input!1342)) e!3104890))))

(assert (= (and b!4967129 (is-Node!15145 (c!847515 input!1342))) b!4967417))

(assert (= b!4967418 b!4967419))

(assert (= (and b!4967129 (is-Leaf!25167 (c!847515 input!1342))) b!4967418))

(declare-fun m!5993664 () Bool)

(assert (=> b!4967417 m!5993664))

(declare-fun m!5993666 () Bool)

(assert (=> b!4967417 m!5993666))

(declare-fun m!5993668 () Bool)

(assert (=> b!4967418 m!5993668))

(assert (=> b!4967129 m!5993366))

(declare-fun b!4967420 () Bool)

(declare-fun tp!1393328 () Bool)

(declare-fun e!3104892 () Bool)

(declare-fun tp!1393329 () Bool)

(assert (=> b!4967420 (= e!3104892 (and (inv!75075 (left!41900 (c!847515 totalInput!464))) tp!1393329 (inv!75075 (right!42230 (c!847515 totalInput!464))) tp!1393328))))

(declare-fun b!4967422 () Bool)

(declare-fun e!3104891 () Bool)

(declare-fun tp!1393327 () Bool)

(assert (=> b!4967422 (= e!3104891 tp!1393327)))

(declare-fun b!4967421 () Bool)

(assert (=> b!4967421 (= e!3104892 (and (inv!75082 (xs!18471 (c!847515 totalInput!464))) e!3104891))))

(assert (=> b!4967131 (= tp!1393271 (and (inv!75075 (c!847515 totalInput!464)) e!3104892))))

(assert (= (and b!4967131 (is-Node!15145 (c!847515 totalInput!464))) b!4967420))

(assert (= b!4967421 b!4967422))

(assert (= (and b!4967131 (is-Leaf!25167 (c!847515 totalInput!464))) b!4967421))

(declare-fun m!5993670 () Bool)

(assert (=> b!4967420 m!5993670))

(declare-fun m!5993672 () Bool)

(assert (=> b!4967420 m!5993672))

(declare-fun m!5993674 () Bool)

(assert (=> b!4967421 m!5993674))

(assert (=> b!4967131 m!5993330))

(push 1)

(assert (not b!4967422))

(assert (not b!4967278))

(assert (not b!4967227))

(assert (not d!1598700))

(assert (not b!4967369))

(assert (not b!4967131))

(assert (not bm!346378))

(assert b_and!348155)

(assert (not b_next!133567))

(assert (not b!4967417))

(assert (not d!1598716))

(assert (not d!1598710))

(assert (not d!1598676))

(assert (not b!4967381))

(assert (not d!1598706))

(assert (not d!1598678))

(assert (not d!1598684))

(assert (not d!1598704))

(assert (not d!1598702))

(assert (not b!4967392))

(assert (not b!4967421))

(assert (not d!1598708))

(assert (not b!4967348))

(assert (not b!4967273))

(assert (not b!4967256))

(assert (not b!4967380))

(assert (not b!4967234))

(assert (not d!1598718))

(assert (not b!4967276))

(assert (not b!4967277))

(assert (not d!1598714))

(assert b_and!348147)

(assert b_and!348157)

(assert (not b!4967280))

(assert (not b!4967393))

(assert (not b!4967246))

(assert (not d!1598730))

(assert (not b!4967275))

(assert (not bm!346375))

(assert (not b!4967253))

(assert (not b!4967230))

(assert (not d!1598680))

(assert (not b!4967202))

(assert (not b_next!133559))

(assert (not b!4967406))

(assert (not b!4967204))

(assert (not d!1598696))

(assert (not b_next!133565))

(assert (not b!4967420))

(assert (not b!4967232))

(assert (not b!4967235))

(assert (not b!4967350))

(assert (not b!4967195))

(assert b_and!348149)

(assert (not b!4967346))

(assert (not b!4967367))

(assert (not b!4967228))

(assert (not b!4967407))

(assert (not b!4967274))

(assert (not bm!346381))

(assert (not b_next!133557))

(assert (not b!4967349))

(assert (not b!4967233))

(assert (not b!4967418))

(assert (not d!1598692))

(assert (not b!4967247))

(assert (not b!4967408))

(assert (not b!4967231))

(assert (not b!4967419))

(assert tp_is_empty!36333)

(assert (not b!4967347))

(assert (not b!4967129))

(assert (not b!4967245))

(check-sat)

(pop 1)

(push 1)

(assert b_and!348147)

(assert b_and!348157)

(assert b_and!348149)

(assert (not b_next!133557))

(assert b_and!348155)

(assert (not b_next!133567))

(assert (not b_next!133559))

(assert (not b_next!133565))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1598770 () Bool)

(declare-fun lt!2051187 () Option!14449)

(assert (=> d!1598770 (= lt!2051187 (maxPrefixOneRule!3629 thiss!15247 (h!63892 rulesArg!259) lt!2050949))))

(declare-fun e!3104946 () Option!14449)

(assert (=> d!1598770 (= lt!2051187 e!3104946)))

(declare-fun c!847553 () Bool)

(declare-fun lt!2051184 () tuple2!62174)

(assert (=> d!1598770 (= c!847553 (isEmpty!30938 (_1!34390 lt!2051184)))))

(declare-fun findLongestMatchWithZipper!94 (Regex!13626 List!57567) tuple2!62174)

(assert (=> d!1598770 (= lt!2051184 (findLongestMatchWithZipper!94 (regex!8393 (h!63892 rulesArg!259)) lt!2050949))))

(assert (=> d!1598770 (ruleValid!3802 thiss!15247 (h!63892 rulesArg!259))))

(assert (=> d!1598770 (= (maxPrefixOneRuleZipper!296 thiss!15247 (h!63892 rulesArg!259) lt!2050949) lt!2051187)))

(declare-fun b!4967519 () Bool)

(assert (=> b!4967519 (= e!3104946 None!14448)))

(declare-fun b!4967520 () Bool)

(assert (=> b!4967520 (= e!3104946 (Some!14448 (tuple2!62165 (Token!15283 (apply!13904 (transformation!8393 (h!63892 rulesArg!259)) (seqFromList!6036 (_1!34390 lt!2051184))) (h!63892 rulesArg!259) (size!38072 (_1!34390 lt!2051184)) (_1!34390 lt!2051184)) (_2!34390 lt!2051184))))))

(declare-fun lt!2051185 () Unit!148361)

(assert (=> b!4967520 (= lt!2051185 (longestMatchIsAcceptedByMatchOrIsEmpty!1816 (regex!8393 (h!63892 rulesArg!259)) lt!2050949))))

(declare-fun res!2120371 () Bool)

(assert (=> b!4967520 (= res!2120371 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949)))))))

(declare-fun e!3104947 () Bool)

(assert (=> b!4967520 (=> res!2120371 e!3104947)))

(assert (=> b!4967520 e!3104947))

(declare-fun lt!2051188 () Unit!148361)

(assert (=> b!4967520 (= lt!2051188 lt!2051185)))

(declare-fun lt!2051183 () Unit!148361)

(assert (=> b!4967520 (= lt!2051183 (lemmaInv!1334 (transformation!8393 (h!63892 rulesArg!259))))))

(declare-fun lt!2051186 () Unit!148361)

(declare-fun lemmaSemiInverse!2602 (TokenValueInjection!16714 BalanceConc!29720) Unit!148361)

(assert (=> b!4967520 (= lt!2051186 (lemmaSemiInverse!2602 (transformation!8393 (h!63892 rulesArg!259)) (seqFromList!6036 (_1!34390 lt!2051184))))))

(declare-fun b!4967521 () Bool)

(assert (=> b!4967521 (= e!3104947 (matchR!6636 (regex!8393 (h!63892 rulesArg!259)) (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949)))))))

(assert (= (and d!1598770 c!847553) b!4967519))

(assert (= (and d!1598770 (not c!847553)) b!4967520))

(assert (= (and b!4967520 (not res!2120371)) b!4967521))

(assert (=> d!1598770 m!5993466))

(declare-fun m!5993750 () Bool)

(assert (=> d!1598770 m!5993750))

(declare-fun m!5993752 () Bool)

(assert (=> d!1598770 m!5993752))

(assert (=> d!1598770 m!5993602))

(declare-fun m!5993754 () Bool)

(assert (=> b!4967520 m!5993754))

(declare-fun m!5993756 () Bool)

(assert (=> b!4967520 m!5993756))

(declare-fun m!5993758 () Bool)

(assert (=> b!4967520 m!5993758))

(assert (=> b!4967520 m!5993574))

(declare-fun m!5993760 () Bool)

(assert (=> b!4967520 m!5993760))

(assert (=> b!4967520 m!5993574))

(assert (=> b!4967520 m!5993428))

(declare-fun m!5993762 () Bool)

(assert (=> b!4967520 m!5993762))

(declare-fun m!5993764 () Bool)

(assert (=> b!4967520 m!5993764))

(assert (=> b!4967520 m!5993428))

(assert (=> b!4967520 m!5993754))

(assert (=> b!4967520 m!5993566))

(assert (=> b!4967520 m!5993754))

(declare-fun m!5993766 () Bool)

(assert (=> b!4967520 m!5993766))

(assert (=> b!4967521 m!5993574))

(assert (=> b!4967521 m!5993428))

(assert (=> b!4967521 m!5993574))

(assert (=> b!4967521 m!5993428))

(assert (=> b!4967521 m!5993762))

(declare-fun m!5993768 () Bool)

(assert (=> b!4967521 m!5993768))

(assert (=> bm!346378 d!1598770))

(declare-fun b!4967530 () Bool)

(declare-fun e!3104952 () List!57567)

(assert (=> b!4967530 (= e!3104952 Nil!57443)))

(declare-fun b!4967532 () Bool)

(declare-fun e!3104953 () List!57567)

(declare-fun list!18369 (IArray!30351) List!57567)

(assert (=> b!4967532 (= e!3104953 (list!18369 (xs!18471 (c!847515 (_2!34386 lt!2050942)))))))

(declare-fun b!4967533 () Bool)

(assert (=> b!4967533 (= e!3104953 (++!12532 (list!18367 (left!41900 (c!847515 (_2!34386 lt!2050942)))) (list!18367 (right!42230 (c!847515 (_2!34386 lt!2050942))))))))

(declare-fun b!4967531 () Bool)

(assert (=> b!4967531 (= e!3104952 e!3104953)))

(declare-fun c!847559 () Bool)

(assert (=> b!4967531 (= c!847559 (is-Leaf!25167 (c!847515 (_2!34386 lt!2050942))))))

(declare-fun d!1598772 () Bool)

(declare-fun c!847558 () Bool)

(assert (=> d!1598772 (= c!847558 (is-Empty!15145 (c!847515 (_2!34386 lt!2050942))))))

(assert (=> d!1598772 (= (list!18367 (c!847515 (_2!34386 lt!2050942))) e!3104952)))

(assert (= (and d!1598772 c!847558) b!4967530))

(assert (= (and d!1598772 (not c!847558)) b!4967531))

(assert (= (and b!4967531 c!847559) b!4967532))

(assert (= (and b!4967531 (not c!847559)) b!4967533))

(declare-fun m!5993770 () Bool)

(assert (=> b!4967532 m!5993770))

(declare-fun m!5993772 () Bool)

(assert (=> b!4967533 m!5993772))

(declare-fun m!5993774 () Bool)

(assert (=> b!4967533 m!5993774))

(assert (=> b!4967533 m!5993772))

(assert (=> b!4967533 m!5993774))

(declare-fun m!5993776 () Bool)

(assert (=> b!4967533 m!5993776))

(assert (=> d!1598684 d!1598772))

(declare-fun d!1598774 () Bool)

(assert (=> d!1598774 (= (isEmpty!30935 lt!2051000) (not (is-Some!14448 lt!2051000)))))

(assert (=> d!1598692 d!1598774))

(assert (=> d!1598692 d!1598698))

(assert (=> d!1598692 d!1598700))

(assert (=> d!1598692 d!1598730))

(declare-fun d!1598776 () Bool)

(assert (=> d!1598776 (= (isEmpty!30936 lt!2050948) (not (is-Some!14449 lt!2050948)))))

(assert (=> d!1598708 d!1598776))

(declare-fun b!4967546 () Bool)

(declare-fun e!3104959 () Bool)

(declare-fun e!3104958 () Bool)

(assert (=> b!4967546 (= e!3104959 e!3104958)))

(declare-fun res!2120385 () Bool)

(assert (=> b!4967546 (=> (not res!2120385) (not e!3104958))))

(declare-fun height!2013 (Conc!15145) Int)

(assert (=> b!4967546 (= res!2120385 (<= (- 1) (- (height!2013 (left!41900 (c!847515 input!1342))) (height!2013 (right!42230 (c!847515 input!1342))))))))

(declare-fun d!1598778 () Bool)

(declare-fun res!2120386 () Bool)

(assert (=> d!1598778 (=> res!2120386 e!3104959)))

(assert (=> d!1598778 (= res!2120386 (not (is-Node!15145 (c!847515 input!1342))))))

(assert (=> d!1598778 (= (isBalanced!4202 (c!847515 input!1342)) e!3104959)))

(declare-fun b!4967547 () Bool)

(declare-fun res!2120388 () Bool)

(assert (=> b!4967547 (=> (not res!2120388) (not e!3104958))))

(assert (=> b!4967547 (= res!2120388 (isBalanced!4202 (left!41900 (c!847515 input!1342))))))

(declare-fun b!4967548 () Bool)

(declare-fun res!2120389 () Bool)

(assert (=> b!4967548 (=> (not res!2120389) (not e!3104958))))

(assert (=> b!4967548 (= res!2120389 (<= (- (height!2013 (left!41900 (c!847515 input!1342))) (height!2013 (right!42230 (c!847515 input!1342)))) 1))))

(declare-fun b!4967549 () Bool)

(declare-fun res!2120387 () Bool)

(assert (=> b!4967549 (=> (not res!2120387) (not e!3104958))))

(declare-fun isEmpty!30943 (Conc!15145) Bool)

(assert (=> b!4967549 (= res!2120387 (not (isEmpty!30943 (left!41900 (c!847515 input!1342)))))))

(declare-fun b!4967550 () Bool)

(declare-fun res!2120384 () Bool)

(assert (=> b!4967550 (=> (not res!2120384) (not e!3104958))))

(assert (=> b!4967550 (= res!2120384 (isBalanced!4202 (right!42230 (c!847515 input!1342))))))

(declare-fun b!4967551 () Bool)

(assert (=> b!4967551 (= e!3104958 (not (isEmpty!30943 (right!42230 (c!847515 input!1342)))))))

(assert (= (and d!1598778 (not res!2120386)) b!4967546))

(assert (= (and b!4967546 res!2120385) b!4967548))

(assert (= (and b!4967548 res!2120389) b!4967547))

(assert (= (and b!4967547 res!2120388) b!4967550))

(assert (= (and b!4967550 res!2120384) b!4967549))

(assert (= (and b!4967549 res!2120387) b!4967551))

(declare-fun m!5993778 () Bool)

(assert (=> b!4967546 m!5993778))

(declare-fun m!5993780 () Bool)

(assert (=> b!4967546 m!5993780))

(declare-fun m!5993782 () Bool)

(assert (=> b!4967551 m!5993782))

(assert (=> b!4967548 m!5993778))

(assert (=> b!4967548 m!5993780))

(declare-fun m!5993784 () Bool)

(assert (=> b!4967549 m!5993784))

(declare-fun m!5993786 () Bool)

(assert (=> b!4967547 m!5993786))

(declare-fun m!5993788 () Bool)

(assert (=> b!4967550 m!5993788))

(assert (=> d!1598702 d!1598778))

(declare-fun b!4967555 () Bool)

(declare-fun e!3104962 () Bool)

(assert (=> b!4967555 (= e!3104962 (>= (size!38072 (tail!9801 lt!2050949)) (size!38072 (tail!9801 lt!2050949))))))

(declare-fun b!4967552 () Bool)

(declare-fun e!3104961 () Bool)

(declare-fun e!3104960 () Bool)

(assert (=> b!4967552 (= e!3104961 e!3104960)))

(declare-fun res!2120392 () Bool)

(assert (=> b!4967552 (=> (not res!2120392) (not e!3104960))))

(assert (=> b!4967552 (= res!2120392 (not (is-Nil!57443 (tail!9801 lt!2050949))))))

(declare-fun b!4967554 () Bool)

(assert (=> b!4967554 (= e!3104960 (isPrefix!5244 (tail!9801 (tail!9801 lt!2050949)) (tail!9801 (tail!9801 lt!2050949))))))

(declare-fun d!1598780 () Bool)

(assert (=> d!1598780 e!3104962))

(declare-fun res!2120391 () Bool)

(assert (=> d!1598780 (=> res!2120391 e!3104962)))

(declare-fun lt!2051189 () Bool)

(assert (=> d!1598780 (= res!2120391 (not lt!2051189))))

(assert (=> d!1598780 (= lt!2051189 e!3104961)))

(declare-fun res!2120390 () Bool)

(assert (=> d!1598780 (=> res!2120390 e!3104961)))

(assert (=> d!1598780 (= res!2120390 (is-Nil!57443 (tail!9801 lt!2050949)))))

(assert (=> d!1598780 (= (isPrefix!5244 (tail!9801 lt!2050949) (tail!9801 lt!2050949)) lt!2051189)))

(declare-fun b!4967553 () Bool)

(declare-fun res!2120393 () Bool)

(assert (=> b!4967553 (=> (not res!2120393) (not e!3104960))))

(assert (=> b!4967553 (= res!2120393 (= (head!10668 (tail!9801 lt!2050949)) (head!10668 (tail!9801 lt!2050949))))))

(assert (= (and d!1598780 (not res!2120390)) b!4967552))

(assert (= (and b!4967552 res!2120392) b!4967553))

(assert (= (and b!4967553 res!2120393) b!4967554))

(assert (= (and d!1598780 (not res!2120391)) b!4967555))

(assert (=> b!4967555 m!5993470))

(declare-fun m!5993790 () Bool)

(assert (=> b!4967555 m!5993790))

(assert (=> b!4967555 m!5993470))

(assert (=> b!4967555 m!5993790))

(assert (=> b!4967554 m!5993470))

(declare-fun m!5993792 () Bool)

(assert (=> b!4967554 m!5993792))

(assert (=> b!4967554 m!5993470))

(assert (=> b!4967554 m!5993792))

(assert (=> b!4967554 m!5993792))

(assert (=> b!4967554 m!5993792))

(declare-fun m!5993794 () Bool)

(assert (=> b!4967554 m!5993794))

(assert (=> b!4967553 m!5993470))

(declare-fun m!5993796 () Bool)

(assert (=> b!4967553 m!5993796))

(assert (=> b!4967553 m!5993470))

(assert (=> b!4967553 m!5993796))

(assert (=> b!4967246 d!1598780))

(declare-fun d!1598782 () Bool)

(assert (=> d!1598782 (= (tail!9801 lt!2050949) (t!368627 lt!2050949))))

(assert (=> b!4967246 d!1598782))

(declare-fun b!4967556 () Bool)

(declare-fun e!3104963 () List!57567)

(assert (=> b!4967556 (= e!3104963 Nil!57443)))

(declare-fun b!4967558 () Bool)

(declare-fun e!3104964 () List!57567)

(assert (=> b!4967558 (= e!3104964 (list!18369 (xs!18471 (c!847515 (_2!34386 lt!2050944)))))))

(declare-fun b!4967559 () Bool)

(assert (=> b!4967559 (= e!3104964 (++!12532 (list!18367 (left!41900 (c!847515 (_2!34386 lt!2050944)))) (list!18367 (right!42230 (c!847515 (_2!34386 lt!2050944))))))))

(declare-fun b!4967557 () Bool)

(assert (=> b!4967557 (= e!3104963 e!3104964)))

(declare-fun c!847561 () Bool)

(assert (=> b!4967557 (= c!847561 (is-Leaf!25167 (c!847515 (_2!34386 lt!2050944))))))

(declare-fun d!1598784 () Bool)

(declare-fun c!847560 () Bool)

(assert (=> d!1598784 (= c!847560 (is-Empty!15145 (c!847515 (_2!34386 lt!2050944))))))

(assert (=> d!1598784 (= (list!18367 (c!847515 (_2!34386 lt!2050944))) e!3104963)))

(assert (= (and d!1598784 c!847560) b!4967556))

(assert (= (and d!1598784 (not c!847560)) b!4967557))

(assert (= (and b!4967557 c!847561) b!4967558))

(assert (= (and b!4967557 (not c!847561)) b!4967559))

(declare-fun m!5993798 () Bool)

(assert (=> b!4967558 m!5993798))

(declare-fun m!5993800 () Bool)

(assert (=> b!4967559 m!5993800))

(declare-fun m!5993802 () Bool)

(assert (=> b!4967559 m!5993802))

(assert (=> b!4967559 m!5993800))

(assert (=> b!4967559 m!5993802))

(declare-fun m!5993804 () Bool)

(assert (=> b!4967559 m!5993804))

(assert (=> d!1598696 d!1598784))

(assert (=> d!1598710 d!1598692))

(assert (=> d!1598710 d!1598698))

(assert (=> d!1598710 d!1598700))

(assert (=> d!1598710 d!1598730))

(declare-fun d!1598786 () Bool)

(assert (=> d!1598786 (= (isDefined!11362 lt!2051000) (not (isEmpty!30935 lt!2051000)))))

(declare-fun bs!1183191 () Bool)

(assert (= bs!1183191 d!1598786))

(assert (=> bs!1183191 m!5993460))

(assert (=> b!4967230 d!1598786))

(declare-fun b!4967560 () Bool)

(declare-fun e!3104966 () Bool)

(declare-fun e!3104965 () Bool)

(assert (=> b!4967560 (= e!3104966 e!3104965)))

(declare-fun res!2120395 () Bool)

(assert (=> b!4967560 (=> (not res!2120395) (not e!3104965))))

(assert (=> b!4967560 (= res!2120395 (<= (- 1) (- (height!2013 (left!41900 (c!847515 totalInput!464))) (height!2013 (right!42230 (c!847515 totalInput!464))))))))

(declare-fun d!1598788 () Bool)

(declare-fun res!2120396 () Bool)

(assert (=> d!1598788 (=> res!2120396 e!3104966)))

(assert (=> d!1598788 (= res!2120396 (not (is-Node!15145 (c!847515 totalInput!464))))))

(assert (=> d!1598788 (= (isBalanced!4202 (c!847515 totalInput!464)) e!3104966)))

(declare-fun b!4967561 () Bool)

(declare-fun res!2120398 () Bool)

(assert (=> b!4967561 (=> (not res!2120398) (not e!3104965))))

(assert (=> b!4967561 (= res!2120398 (isBalanced!4202 (left!41900 (c!847515 totalInput!464))))))

(declare-fun b!4967562 () Bool)

(declare-fun res!2120399 () Bool)

(assert (=> b!4967562 (=> (not res!2120399) (not e!3104965))))

(assert (=> b!4967562 (= res!2120399 (<= (- (height!2013 (left!41900 (c!847515 totalInput!464))) (height!2013 (right!42230 (c!847515 totalInput!464)))) 1))))

(declare-fun b!4967563 () Bool)

(declare-fun res!2120397 () Bool)

(assert (=> b!4967563 (=> (not res!2120397) (not e!3104965))))

(assert (=> b!4967563 (= res!2120397 (not (isEmpty!30943 (left!41900 (c!847515 totalInput!464)))))))

(declare-fun b!4967564 () Bool)

(declare-fun res!2120394 () Bool)

(assert (=> b!4967564 (=> (not res!2120394) (not e!3104965))))

(assert (=> b!4967564 (= res!2120394 (isBalanced!4202 (right!42230 (c!847515 totalInput!464))))))

(declare-fun b!4967565 () Bool)

(assert (=> b!4967565 (= e!3104965 (not (isEmpty!30943 (right!42230 (c!847515 totalInput!464)))))))

(assert (= (and d!1598788 (not res!2120396)) b!4967560))

(assert (= (and b!4967560 res!2120395) b!4967562))

(assert (= (and b!4967562 res!2120399) b!4967561))

(assert (= (and b!4967561 res!2120398) b!4967564))

(assert (= (and b!4967564 res!2120394) b!4967563))

(assert (= (and b!4967563 res!2120397) b!4967565))

(declare-fun m!5993806 () Bool)

(assert (=> b!4967560 m!5993806))

(declare-fun m!5993808 () Bool)

(assert (=> b!4967560 m!5993808))

(declare-fun m!5993810 () Bool)

(assert (=> b!4967565 m!5993810))

(assert (=> b!4967562 m!5993806))

(assert (=> b!4967562 m!5993808))

(declare-fun m!5993812 () Bool)

(assert (=> b!4967563 m!5993812))

(declare-fun m!5993814 () Bool)

(assert (=> b!4967561 m!5993814))

(declare-fun m!5993816 () Bool)

(assert (=> b!4967564 m!5993816))

(assert (=> d!1598704 d!1598788))

(declare-fun d!1598790 () Bool)

(declare-fun res!2120404 () Bool)

(declare-fun e!3104969 () Bool)

(assert (=> d!1598790 (=> (not res!2120404) (not e!3104969))))

(assert (=> d!1598790 (= res!2120404 (<= (size!38072 (list!18369 (xs!18471 (c!847515 totalInput!464)))) 512))))

(assert (=> d!1598790 (= (inv!75081 (c!847515 totalInput!464)) e!3104969)))

(declare-fun b!4967570 () Bool)

(declare-fun res!2120405 () Bool)

(assert (=> b!4967570 (=> (not res!2120405) (not e!3104969))))

(assert (=> b!4967570 (= res!2120405 (= (csize!30521 (c!847515 totalInput!464)) (size!38072 (list!18369 (xs!18471 (c!847515 totalInput!464))))))))

(declare-fun b!4967571 () Bool)

(assert (=> b!4967571 (= e!3104969 (and (> (csize!30521 (c!847515 totalInput!464)) 0) (<= (csize!30521 (c!847515 totalInput!464)) 512)))))

(assert (= (and d!1598790 res!2120404) b!4967570))

(assert (= (and b!4967570 res!2120405) b!4967571))

(declare-fun m!5993818 () Bool)

(assert (=> d!1598790 m!5993818))

(assert (=> d!1598790 m!5993818))

(declare-fun m!5993820 () Bool)

(assert (=> d!1598790 m!5993820))

(assert (=> b!4967570 m!5993818))

(assert (=> b!4967570 m!5993818))

(assert (=> b!4967570 m!5993820))

(assert (=> b!4967369 d!1598790))

(declare-fun d!1598792 () Bool)

(assert (=> d!1598792 (= (isDefined!11362 (maxPrefixOneRule!3629 thiss!15247 (h!63892 rulesArg!259) (list!18365 input!1342))) (not (isEmpty!30935 (maxPrefixOneRule!3629 thiss!15247 (h!63892 rulesArg!259) (list!18365 input!1342)))))))

(declare-fun bs!1183192 () Bool)

(assert (= bs!1183192 d!1598792))

(assert (=> bs!1183192 m!5993562))

(declare-fun m!5993822 () Bool)

(assert (=> bs!1183192 m!5993822))

(assert (=> d!1598718 d!1598792))

(assert (=> d!1598718 d!1598680))

(declare-fun d!1598794 () Bool)

(declare-fun lt!2051192 () Bool)

(assert (=> d!1598794 (= lt!2051192 (isEmpty!30938 (list!18365 (_1!34389 lt!2051115))))))

(assert (=> d!1598794 (= lt!2051192 (isEmpty!30943 (c!847515 (_1!34389 lt!2051115))))))

(assert (=> d!1598794 (= (isEmpty!30937 (_1!34389 lt!2051115)) lt!2051192)))

(declare-fun bs!1183193 () Bool)

(assert (= bs!1183193 d!1598794))

(assert (=> bs!1183193 m!5993572))

(assert (=> bs!1183193 m!5993572))

(declare-fun m!5993824 () Bool)

(assert (=> bs!1183193 m!5993824))

(declare-fun m!5993826 () Bool)

(assert (=> bs!1183193 m!5993826))

(assert (=> d!1598718 d!1598794))

(declare-fun d!1598796 () Bool)

(declare-fun res!2120410 () Bool)

(declare-fun e!3104972 () Bool)

(assert (=> d!1598796 (=> (not res!2120410) (not e!3104972))))

(declare-fun validRegex!5969 (Regex!13626) Bool)

(assert (=> d!1598796 (= res!2120410 (validRegex!5969 (regex!8393 (h!63892 rulesArg!259))))))

(assert (=> d!1598796 (= (ruleValid!3802 thiss!15247 (h!63892 rulesArg!259)) e!3104972)))

(declare-fun b!4967576 () Bool)

(declare-fun res!2120411 () Bool)

(assert (=> b!4967576 (=> (not res!2120411) (not e!3104972))))

(declare-fun nullable!4620 (Regex!13626) Bool)

(assert (=> b!4967576 (= res!2120411 (not (nullable!4620 (regex!8393 (h!63892 rulesArg!259)))))))

(declare-fun b!4967577 () Bool)

(assert (=> b!4967577 (= e!3104972 (not (= (tag!9257 (h!63892 rulesArg!259)) (String!65392 ""))))))

(assert (= (and d!1598796 res!2120410) b!4967576))

(assert (= (and b!4967576 res!2120411) b!4967577))

(declare-fun m!5993828 () Bool)

(assert (=> d!1598796 m!5993828))

(declare-fun m!5993830 () Bool)

(assert (=> b!4967576 m!5993830))

(assert (=> d!1598718 d!1598796))

(declare-fun d!1598798 () Bool)

(declare-fun lt!2051195 () tuple2!62172)

(declare-fun findLongestMatch!1697 (Regex!13626 List!57567) tuple2!62174)

(assert (=> d!1598798 (= (tuple2!62175 (list!18365 (_1!34389 lt!2051195)) (list!18365 (_2!34389 lt!2051195))) (findLongestMatch!1697 (regex!8393 (h!63892 rulesArg!259)) (list!18365 input!1342)))))

(declare-fun choose!36670 (Regex!13626 BalanceConc!29720 BalanceConc!29720) tuple2!62172)

(assert (=> d!1598798 (= lt!2051195 (choose!36670 (regex!8393 (h!63892 rulesArg!259)) input!1342 totalInput!464))))

(assert (=> d!1598798 (validRegex!5969 (regex!8393 (h!63892 rulesArg!259)))))

(assert (=> d!1598798 (= (findLongestMatchWithZipperSequenceV2!164 (regex!8393 (h!63892 rulesArg!259)) input!1342 totalInput!464) lt!2051195)))

(declare-fun bs!1183194 () Bool)

(assert (= bs!1183194 d!1598798))

(assert (=> bs!1183194 m!5993376))

(declare-fun m!5993832 () Bool)

(assert (=> bs!1183194 m!5993832))

(assert (=> bs!1183194 m!5993828))

(declare-fun m!5993834 () Bool)

(assert (=> bs!1183194 m!5993834))

(declare-fun m!5993836 () Bool)

(assert (=> bs!1183194 m!5993836))

(assert (=> bs!1183194 m!5993376))

(declare-fun m!5993838 () Bool)

(assert (=> bs!1183194 m!5993838))

(assert (=> d!1598718 d!1598798))

(declare-fun d!1598800 () Bool)

(declare-fun e!3104982 () Bool)

(assert (=> d!1598800 e!3104982))

(declare-fun res!2120431 () Bool)

(assert (=> d!1598800 (=> res!2120431 e!3104982)))

(declare-fun lt!2051210 () Option!14449)

(assert (=> d!1598800 (= res!2120431 (isEmpty!30935 lt!2051210))))

(declare-fun e!3104984 () Option!14449)

(assert (=> d!1598800 (= lt!2051210 e!3104984)))

(declare-fun c!847564 () Bool)

(declare-fun lt!2051207 () tuple2!62174)

(assert (=> d!1598800 (= c!847564 (isEmpty!30938 (_1!34390 lt!2051207)))))

(assert (=> d!1598800 (= lt!2051207 (findLongestMatch!1697 (regex!8393 (h!63892 rulesArg!259)) (list!18365 input!1342)))))

(assert (=> d!1598800 (ruleValid!3802 thiss!15247 (h!63892 rulesArg!259))))

(assert (=> d!1598800 (= (maxPrefixOneRule!3629 thiss!15247 (h!63892 rulesArg!259) (list!18365 input!1342)) lt!2051210)))

(declare-fun b!4967596 () Bool)

(declare-fun res!2120427 () Bool)

(declare-fun e!3104983 () Bool)

(assert (=> b!4967596 (=> (not res!2120427) (not e!3104983))))

(assert (=> b!4967596 (= res!2120427 (< (size!38072 (_2!34385 (get!19940 lt!2051210))) (size!38072 (list!18365 input!1342))))))

(declare-fun b!4967597 () Bool)

(declare-fun e!3104981 () Bool)

(assert (=> b!4967597 (= e!3104981 (matchR!6636 (regex!8393 (h!63892 rulesArg!259)) (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) (list!18365 input!1342) (list!18365 input!1342) (size!38072 (list!18365 input!1342))))))))

(declare-fun b!4967598 () Bool)

(declare-fun res!2120432 () Bool)

(assert (=> b!4967598 (=> (not res!2120432) (not e!3104983))))

(assert (=> b!4967598 (= res!2120432 (= (value!268642 (_1!34385 (get!19940 lt!2051210))) (apply!13904 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051210)))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051210)))))))))

(declare-fun b!4967599 () Bool)

(assert (=> b!4967599 (= e!3104984 (Some!14448 (tuple2!62165 (Token!15283 (apply!13904 (transformation!8393 (h!63892 rulesArg!259)) (seqFromList!6036 (_1!34390 lt!2051207))) (h!63892 rulesArg!259) (size!38073 (seqFromList!6036 (_1!34390 lt!2051207))) (_1!34390 lt!2051207)) (_2!34390 lt!2051207))))))

(declare-fun lt!2051206 () Unit!148361)

(assert (=> b!4967599 (= lt!2051206 (longestMatchIsAcceptedByMatchOrIsEmpty!1816 (regex!8393 (h!63892 rulesArg!259)) (list!18365 input!1342)))))

(declare-fun res!2120428 () Bool)

(assert (=> b!4967599 (= res!2120428 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) (list!18365 input!1342) (list!18365 input!1342) (size!38072 (list!18365 input!1342))))))))

(assert (=> b!4967599 (=> res!2120428 e!3104981)))

(assert (=> b!4967599 e!3104981))

(declare-fun lt!2051208 () Unit!148361)

(assert (=> b!4967599 (= lt!2051208 lt!2051206)))

(declare-fun lt!2051209 () Unit!148361)

(assert (=> b!4967599 (= lt!2051209 (lemmaSemiInverse!2602 (transformation!8393 (h!63892 rulesArg!259)) (seqFromList!6036 (_1!34390 lt!2051207))))))

(declare-fun b!4967600 () Bool)

(declare-fun res!2120426 () Bool)

(assert (=> b!4967600 (=> (not res!2120426) (not e!3104983))))

(assert (=> b!4967600 (= res!2120426 (= (rule!11637 (_1!34385 (get!19940 lt!2051210))) (h!63892 rulesArg!259)))))

(declare-fun b!4967601 () Bool)

(declare-fun res!2120429 () Bool)

(assert (=> b!4967601 (=> (not res!2120429) (not e!3104983))))

(assert (=> b!4967601 (= res!2120429 (= (++!12532 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051210)))) (_2!34385 (get!19940 lt!2051210))) (list!18365 input!1342)))))

(declare-fun b!4967602 () Bool)

(assert (=> b!4967602 (= e!3104984 None!14448)))

(declare-fun b!4967603 () Bool)

(assert (=> b!4967603 (= e!3104982 e!3104983)))

(declare-fun res!2120430 () Bool)

(assert (=> b!4967603 (=> (not res!2120430) (not e!3104983))))

(assert (=> b!4967603 (= res!2120430 (matchR!6636 (regex!8393 (h!63892 rulesArg!259)) (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051210))))))))

(declare-fun b!4967604 () Bool)

(assert (=> b!4967604 (= e!3104983 (= (size!38070 (_1!34385 (get!19940 lt!2051210))) (size!38072 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051210))))))))

(assert (= (and d!1598800 c!847564) b!4967602))

(assert (= (and d!1598800 (not c!847564)) b!4967599))

(assert (= (and b!4967599 (not res!2120428)) b!4967597))

(assert (= (and d!1598800 (not res!2120431)) b!4967603))

(assert (= (and b!4967603 res!2120430) b!4967601))

(assert (= (and b!4967601 res!2120429) b!4967596))

(assert (= (and b!4967596 res!2120427) b!4967600))

(assert (= (and b!4967600 res!2120426) b!4967598))

(assert (= (and b!4967598 res!2120432) b!4967604))

(declare-fun m!5993840 () Bool)

(assert (=> b!4967601 m!5993840))

(declare-fun m!5993842 () Bool)

(assert (=> b!4967601 m!5993842))

(assert (=> b!4967601 m!5993842))

(declare-fun m!5993844 () Bool)

(assert (=> b!4967601 m!5993844))

(assert (=> b!4967601 m!5993844))

(declare-fun m!5993846 () Bool)

(assert (=> b!4967601 m!5993846))

(assert (=> b!4967596 m!5993840))

(declare-fun m!5993848 () Bool)

(assert (=> b!4967596 m!5993848))

(assert (=> b!4967596 m!5993376))

(declare-fun m!5993850 () Bool)

(assert (=> b!4967596 m!5993850))

(assert (=> b!4967604 m!5993840))

(declare-fun m!5993852 () Bool)

(assert (=> b!4967604 m!5993852))

(assert (=> b!4967600 m!5993840))

(declare-fun m!5993854 () Bool)

(assert (=> d!1598800 m!5993854))

(declare-fun m!5993856 () Bool)

(assert (=> d!1598800 m!5993856))

(assert (=> d!1598800 m!5993376))

(assert (=> d!1598800 m!5993832))

(assert (=> d!1598800 m!5993602))

(assert (=> b!4967603 m!5993840))

(assert (=> b!4967603 m!5993842))

(assert (=> b!4967603 m!5993842))

(assert (=> b!4967603 m!5993844))

(assert (=> b!4967603 m!5993844))

(declare-fun m!5993858 () Bool)

(assert (=> b!4967603 m!5993858))

(assert (=> b!4967598 m!5993840))

(declare-fun m!5993860 () Bool)

(assert (=> b!4967598 m!5993860))

(assert (=> b!4967598 m!5993860))

(declare-fun m!5993862 () Bool)

(assert (=> b!4967598 m!5993862))

(declare-fun m!5993864 () Bool)

(assert (=> b!4967599 m!5993864))

(declare-fun m!5993866 () Bool)

(assert (=> b!4967599 m!5993866))

(assert (=> b!4967599 m!5993864))

(assert (=> b!4967599 m!5993376))

(assert (=> b!4967599 m!5993850))

(assert (=> b!4967599 m!5993574))

(declare-fun m!5993868 () Bool)

(assert (=> b!4967599 m!5993868))

(assert (=> b!4967599 m!5993864))

(declare-fun m!5993870 () Bool)

(assert (=> b!4967599 m!5993870))

(assert (=> b!4967599 m!5993574))

(assert (=> b!4967599 m!5993376))

(assert (=> b!4967599 m!5993376))

(assert (=> b!4967599 m!5993850))

(declare-fun m!5993872 () Bool)

(assert (=> b!4967599 m!5993872))

(assert (=> b!4967599 m!5993864))

(declare-fun m!5993874 () Bool)

(assert (=> b!4967599 m!5993874))

(assert (=> b!4967599 m!5993376))

(declare-fun m!5993876 () Bool)

(assert (=> b!4967599 m!5993876))

(assert (=> b!4967597 m!5993574))

(assert (=> b!4967597 m!5993376))

(assert (=> b!4967597 m!5993850))

(assert (=> b!4967597 m!5993574))

(assert (=> b!4967597 m!5993376))

(assert (=> b!4967597 m!5993376))

(assert (=> b!4967597 m!5993850))

(assert (=> b!4967597 m!5993872))

(declare-fun m!5993878 () Bool)

(assert (=> b!4967597 m!5993878))

(assert (=> d!1598718 d!1598800))

(declare-fun d!1598802 () Bool)

(assert (=> d!1598802 (= (isDefined!11363 lt!2051118) (not (isEmpty!30936 lt!2051118)))))

(declare-fun bs!1183195 () Bool)

(assert (= bs!1183195 d!1598802))

(declare-fun m!5993880 () Bool)

(assert (=> bs!1183195 m!5993880))

(assert (=> d!1598718 d!1598802))

(declare-fun d!1598804 () Bool)

(declare-fun res!2120439 () Bool)

(declare-fun e!3104987 () Bool)

(assert (=> d!1598804 (=> (not res!2120439) (not e!3104987))))

(declare-fun size!38076 (Conc!15145) Int)

(assert (=> d!1598804 (= res!2120439 (= (csize!30520 (c!847515 totalInput!464)) (+ (size!38076 (left!41900 (c!847515 totalInput!464))) (size!38076 (right!42230 (c!847515 totalInput!464))))))))

(assert (=> d!1598804 (= (inv!75080 (c!847515 totalInput!464)) e!3104987)))

(declare-fun b!4967611 () Bool)

(declare-fun res!2120440 () Bool)

(assert (=> b!4967611 (=> (not res!2120440) (not e!3104987))))

(assert (=> b!4967611 (= res!2120440 (and (not (= (left!41900 (c!847515 totalInput!464)) Empty!15145)) (not (= (right!42230 (c!847515 totalInput!464)) Empty!15145))))))

(declare-fun b!4967612 () Bool)

(declare-fun res!2120441 () Bool)

(assert (=> b!4967612 (=> (not res!2120441) (not e!3104987))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4967612 (= res!2120441 (= (cheight!15356 (c!847515 totalInput!464)) (+ (max!0 (height!2013 (left!41900 (c!847515 totalInput!464))) (height!2013 (right!42230 (c!847515 totalInput!464)))) 1)))))

(declare-fun b!4967613 () Bool)

(assert (=> b!4967613 (= e!3104987 (<= 0 (cheight!15356 (c!847515 totalInput!464))))))

(assert (= (and d!1598804 res!2120439) b!4967611))

(assert (= (and b!4967611 res!2120440) b!4967612))

(assert (= (and b!4967612 res!2120441) b!4967613))

(declare-fun m!5993882 () Bool)

(assert (=> d!1598804 m!5993882))

(declare-fun m!5993884 () Bool)

(assert (=> d!1598804 m!5993884))

(assert (=> b!4967612 m!5993806))

(assert (=> b!4967612 m!5993808))

(assert (=> b!4967612 m!5993806))

(assert (=> b!4967612 m!5993808))

(declare-fun m!5993886 () Bool)

(assert (=> b!4967612 m!5993886))

(assert (=> b!4967367 d!1598804))

(assert (=> b!4967380 d!1598796))

(declare-fun d!1598806 () Bool)

(declare-fun lt!2051213 () Int)

(assert (=> d!1598806 (>= lt!2051213 0)))

(declare-fun e!3104990 () Int)

(assert (=> d!1598806 (= lt!2051213 e!3104990)))

(declare-fun c!847567 () Bool)

(assert (=> d!1598806 (= c!847567 (is-Nil!57443 (list!18365 totalInput!464)))))

(assert (=> d!1598806 (= (size!38072 (list!18365 totalInput!464)) lt!2051213)))

(declare-fun b!4967618 () Bool)

(assert (=> b!4967618 (= e!3104990 0)))

(declare-fun b!4967619 () Bool)

(assert (=> b!4967619 (= e!3104990 (+ 1 (size!38072 (t!368627 (list!18365 totalInput!464)))))))

(assert (= (and d!1598806 c!847567) b!4967618))

(assert (= (and d!1598806 (not c!847567)) b!4967619))

(declare-fun m!5993888 () Bool)

(assert (=> b!4967619 m!5993888))

(assert (=> b!4967195 d!1598806))

(declare-fun d!1598808 () Bool)

(declare-fun lt!2051214 () Int)

(assert (=> d!1598808 (>= lt!2051214 0)))

(declare-fun e!3104991 () Int)

(assert (=> d!1598808 (= lt!2051214 e!3104991)))

(declare-fun c!847568 () Bool)

(assert (=> d!1598808 (= c!847568 (is-Nil!57443 lt!2050949))))

(assert (=> d!1598808 (= (size!38072 lt!2050949) lt!2051214)))

(declare-fun b!4967620 () Bool)

(assert (=> b!4967620 (= e!3104991 0)))

(declare-fun b!4967621 () Bool)

(assert (=> b!4967621 (= e!3104991 (+ 1 (size!38072 (t!368627 lt!2050949))))))

(assert (= (and d!1598808 c!847568) b!4967620))

(assert (= (and d!1598808 (not c!847568)) b!4967621))

(declare-fun m!5993890 () Bool)

(assert (=> b!4967621 m!5993890))

(assert (=> b!4967195 d!1598808))

(declare-fun d!1598810 () Bool)

(assert (=> d!1598810 (= (inv!75082 (xs!18471 (c!847515 totalInput!464))) (<= (size!38072 (innerList!15233 (xs!18471 (c!847515 totalInput!464)))) 2147483647))))

(declare-fun bs!1183196 () Bool)

(assert (= bs!1183196 d!1598810))

(declare-fun m!5993892 () Bool)

(assert (=> bs!1183196 m!5993892))

(assert (=> b!4967421 d!1598810))

(declare-fun d!1598812 () Bool)

(declare-fun lt!2051217 () Bool)

(declare-fun content!10183 (List!57568) (Set Rule!16586))

(assert (=> d!1598812 (= lt!2051217 (set.member (rule!11637 (_1!34385 (get!19940 lt!2051000))) (content!10183 rulesArg!259)))))

(declare-fun e!3104997 () Bool)

(assert (=> d!1598812 (= lt!2051217 e!3104997)))

(declare-fun res!2120447 () Bool)

(assert (=> d!1598812 (=> (not res!2120447) (not e!3104997))))

(assert (=> d!1598812 (= res!2120447 (is-Cons!57444 rulesArg!259))))

(assert (=> d!1598812 (= (contains!19538 rulesArg!259 (rule!11637 (_1!34385 (get!19940 lt!2051000)))) lt!2051217)))

(declare-fun b!4967626 () Bool)

(declare-fun e!3104996 () Bool)

(assert (=> b!4967626 (= e!3104997 e!3104996)))

(declare-fun res!2120446 () Bool)

(assert (=> b!4967626 (=> res!2120446 e!3104996)))

(assert (=> b!4967626 (= res!2120446 (= (h!63892 rulesArg!259) (rule!11637 (_1!34385 (get!19940 lt!2051000)))))))

(declare-fun b!4967627 () Bool)

(assert (=> b!4967627 (= e!3104996 (contains!19538 (t!368628 rulesArg!259) (rule!11637 (_1!34385 (get!19940 lt!2051000)))))))

(assert (= (and d!1598812 res!2120447) b!4967626))

(assert (= (and b!4967626 (not res!2120446)) b!4967627))

(declare-fun m!5993894 () Bool)

(assert (=> d!1598812 m!5993894))

(declare-fun m!5993896 () Bool)

(assert (=> d!1598812 m!5993896))

(declare-fun m!5993898 () Bool)

(assert (=> b!4967627 m!5993898))

(assert (=> b!4967228 d!1598812))

(declare-fun d!1598814 () Bool)

(assert (=> d!1598814 (= (get!19940 lt!2051000) (v!50437 lt!2051000))))

(assert (=> b!4967228 d!1598814))

(declare-fun d!1598816 () Bool)

(assert (=> d!1598816 true))

(declare-fun lambda!247375 () Int)

(declare-fun order!26215 () Int)

(declare-fun dynLambda!23165 (Int Int) Int)

(assert (=> d!1598816 (< (dynLambda!23159 order!26203 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) (dynLambda!23165 order!26215 lambda!247375))))

(declare-fun Forall2!1287 (Int) Bool)

(assert (=> d!1598816 (= (equivClasses!3548 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) (Forall2!1287 lambda!247375))))

(declare-fun bs!1183197 () Bool)

(assert (= bs!1183197 d!1598816))

(declare-fun m!5993900 () Bool)

(assert (=> bs!1183197 m!5993900))

(assert (=> b!4967256 d!1598816))

(declare-fun b!4967632 () Bool)

(declare-fun e!3105000 () List!57567)

(assert (=> b!4967632 (= e!3105000 Nil!57443)))

(declare-fun b!4967634 () Bool)

(declare-fun e!3105001 () List!57567)

(assert (=> b!4967634 (= e!3105001 (list!18369 (xs!18471 (c!847515 totalInput!464))))))

(declare-fun b!4967635 () Bool)

(assert (=> b!4967635 (= e!3105001 (++!12532 (list!18367 (left!41900 (c!847515 totalInput!464))) (list!18367 (right!42230 (c!847515 totalInput!464)))))))

(declare-fun b!4967633 () Bool)

(assert (=> b!4967633 (= e!3105000 e!3105001)))

(declare-fun c!847570 () Bool)

(assert (=> b!4967633 (= c!847570 (is-Leaf!25167 (c!847515 totalInput!464)))))

(declare-fun d!1598818 () Bool)

(declare-fun c!847569 () Bool)

(assert (=> d!1598818 (= c!847569 (is-Empty!15145 (c!847515 totalInput!464)))))

(assert (=> d!1598818 (= (list!18367 (c!847515 totalInput!464)) e!3105000)))

(assert (= (and d!1598818 c!847569) b!4967632))

(assert (= (and d!1598818 (not c!847569)) b!4967633))

(assert (= (and b!4967633 c!847570) b!4967634))

(assert (= (and b!4967633 (not c!847570)) b!4967635))

(assert (=> b!4967634 m!5993818))

(declare-fun m!5993902 () Bool)

(assert (=> b!4967635 m!5993902))

(declare-fun m!5993904 () Bool)

(assert (=> b!4967635 m!5993904))

(assert (=> b!4967635 m!5993902))

(assert (=> b!4967635 m!5993904))

(declare-fun m!5993906 () Bool)

(assert (=> b!4967635 m!5993906))

(assert (=> d!1598678 d!1598818))

(declare-fun d!1598820 () Bool)

(assert (=> d!1598820 (= (isDefined!11363 lt!2051044) (not (isEmpty!30936 lt!2051044)))))

(declare-fun bs!1183198 () Bool)

(assert (= bs!1183198 d!1598820))

(declare-fun m!5993908 () Bool)

(assert (=> bs!1183198 m!5993908))

(assert (=> b!4967273 d!1598820))

(declare-fun b!4967664 () Bool)

(declare-fun e!3105019 () Bool)

(declare-fun lt!2051220 () Bool)

(declare-fun call!346398 () Bool)

(assert (=> b!4967664 (= e!3105019 (= lt!2051220 call!346398))))

(declare-fun b!4967665 () Bool)

(declare-fun res!2120468 () Bool)

(declare-fun e!3105016 () Bool)

(assert (=> b!4967665 (=> (not res!2120468) (not e!3105016))))

(assert (=> b!4967665 (= res!2120468 (isEmpty!30938 (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))))))

(declare-fun b!4967666 () Bool)

(assert (=> b!4967666 (= e!3105016 (= (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))) (c!847514 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))))))

(declare-fun b!4967667 () Bool)

(declare-fun e!3105018 () Bool)

(assert (=> b!4967667 (= e!3105018 (not lt!2051220))))

(declare-fun b!4967668 () Bool)

(declare-fun e!3105022 () Bool)

(declare-fun derivativeStep!3922 (Regex!13626 C!27502) Regex!13626)

(assert (=> b!4967668 (= e!3105022 (matchR!6636 (derivativeStep!3922 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))) (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))) (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))))))

(declare-fun bm!346393 () Bool)

(assert (=> bm!346393 (= call!346398 (isEmpty!30938 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))

(declare-fun b!4967669 () Bool)

(declare-fun res!2120466 () Bool)

(assert (=> b!4967669 (=> (not res!2120466) (not e!3105016))))

(assert (=> b!4967669 (= res!2120466 (not call!346398))))

(declare-fun b!4967670 () Bool)

(declare-fun e!3105020 () Bool)

(declare-fun e!3105021 () Bool)

(assert (=> b!4967670 (= e!3105020 e!3105021)))

(declare-fun res!2120467 () Bool)

(assert (=> b!4967670 (=> (not res!2120467) (not e!3105021))))

(assert (=> b!4967670 (= res!2120467 (not lt!2051220))))

(declare-fun b!4967671 () Bool)

(declare-fun res!2120469 () Bool)

(declare-fun e!3105017 () Bool)

(assert (=> b!4967671 (=> res!2120469 e!3105017)))

(assert (=> b!4967671 (= res!2120469 (not (isEmpty!30938 (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))))

(declare-fun b!4967672 () Bool)

(assert (=> b!4967672 (= e!3105022 (nullable!4620 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))))

(declare-fun b!4967673 () Bool)

(assert (=> b!4967673 (= e!3105017 (not (= (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))) (c!847514 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))))))

(declare-fun b!4967674 () Bool)

(declare-fun res!2120473 () Bool)

(assert (=> b!4967674 (=> res!2120473 e!3105020)))

(assert (=> b!4967674 (= res!2120473 e!3105016)))

(declare-fun res!2120471 () Bool)

(assert (=> b!4967674 (=> (not res!2120471) (not e!3105016))))

(assert (=> b!4967674 (= res!2120471 lt!2051220)))

(declare-fun b!4967675 () Bool)

(assert (=> b!4967675 (= e!3105019 e!3105018)))

(declare-fun c!847579 () Bool)

(assert (=> b!4967675 (= c!847579 (is-EmptyLang!13626 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))))

(declare-fun d!1598822 () Bool)

(assert (=> d!1598822 e!3105019))

(declare-fun c!847578 () Bool)

(assert (=> d!1598822 (= c!847578 (is-EmptyExpr!13626 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))))

(assert (=> d!1598822 (= lt!2051220 e!3105022)))

(declare-fun c!847577 () Bool)

(assert (=> d!1598822 (= c!847577 (isEmpty!30938 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))

(assert (=> d!1598822 (validRegex!5969 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))))

(assert (=> d!1598822 (= (matchR!6636 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))) (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))) lt!2051220)))

(declare-fun b!4967676 () Bool)

(declare-fun res!2120472 () Bool)

(assert (=> b!4967676 (=> res!2120472 e!3105020)))

(assert (=> b!4967676 (= res!2120472 (not (is-ElementMatch!13626 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))))))

(assert (=> b!4967676 (= e!3105018 e!3105020)))

(declare-fun b!4967677 () Bool)

(assert (=> b!4967677 (= e!3105021 e!3105017)))

(declare-fun res!2120470 () Bool)

(assert (=> b!4967677 (=> res!2120470 e!3105017)))

(assert (=> b!4967677 (= res!2120470 call!346398)))

(assert (= (and d!1598822 c!847577) b!4967672))

(assert (= (and d!1598822 (not c!847577)) b!4967668))

(assert (= (and d!1598822 c!847578) b!4967664))

(assert (= (and d!1598822 (not c!847578)) b!4967675))

(assert (= (and b!4967675 c!847579) b!4967667))

(assert (= (and b!4967675 (not c!847579)) b!4967676))

(assert (= (and b!4967676 (not res!2120472)) b!4967674))

(assert (= (and b!4967674 res!2120471) b!4967669))

(assert (= (and b!4967669 res!2120466) b!4967665))

(assert (= (and b!4967665 res!2120468) b!4967666))

(assert (= (and b!4967674 (not res!2120473)) b!4967670))

(assert (= (and b!4967670 res!2120467) b!4967677))

(assert (= (and b!4967677 (not res!2120470)) b!4967671))

(assert (= (and b!4967671 (not res!2120469)) b!4967673))

(assert (= (or b!4967664 b!4967669 b!4967677) bm!346393))

(assert (=> b!4967668 m!5993452))

(declare-fun m!5993910 () Bool)

(assert (=> b!4967668 m!5993910))

(assert (=> b!4967668 m!5993910))

(declare-fun m!5993912 () Bool)

(assert (=> b!4967668 m!5993912))

(assert (=> b!4967668 m!5993452))

(declare-fun m!5993914 () Bool)

(assert (=> b!4967668 m!5993914))

(assert (=> b!4967668 m!5993912))

(assert (=> b!4967668 m!5993914))

(declare-fun m!5993916 () Bool)

(assert (=> b!4967668 m!5993916))

(assert (=> b!4967673 m!5993452))

(assert (=> b!4967673 m!5993910))

(assert (=> b!4967671 m!5993452))

(assert (=> b!4967671 m!5993914))

(assert (=> b!4967671 m!5993914))

(declare-fun m!5993918 () Bool)

(assert (=> b!4967671 m!5993918))

(assert (=> b!4967666 m!5993452))

(assert (=> b!4967666 m!5993910))

(declare-fun m!5993920 () Bool)

(assert (=> b!4967672 m!5993920))

(assert (=> b!4967665 m!5993452))

(assert (=> b!4967665 m!5993914))

(assert (=> b!4967665 m!5993914))

(assert (=> b!4967665 m!5993918))

(assert (=> bm!346393 m!5993452))

(declare-fun m!5993922 () Bool)

(assert (=> bm!346393 m!5993922))

(assert (=> d!1598822 m!5993452))

(assert (=> d!1598822 m!5993922))

(declare-fun m!5993924 () Bool)

(assert (=> d!1598822 m!5993924))

(assert (=> b!4967235 d!1598822))

(assert (=> b!4967235 d!1598814))

(declare-fun d!1598824 () Bool)

(assert (=> d!1598824 (= (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))) (list!18367 (c!847515 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))

(declare-fun bs!1183199 () Bool)

(assert (= bs!1183199 d!1598824))

(declare-fun m!5993926 () Bool)

(assert (=> bs!1183199 m!5993926))

(assert (=> b!4967235 d!1598824))

(declare-fun d!1598826 () Bool)

(declare-fun lt!2051223 () BalanceConc!29720)

(assert (=> d!1598826 (= (list!18365 lt!2051223) (originalCharacters!8672 (_1!34385 (get!19940 lt!2051000))))))

(declare-fun dynLambda!23166 (Int TokenValue!8703) BalanceConc!29720)

(assert (=> d!1598826 (= lt!2051223 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (value!268642 (_1!34385 (get!19940 lt!2051000)))))))

(assert (=> d!1598826 (= (charsOf!5437 (_1!34385 (get!19940 lt!2051000))) lt!2051223)))

(declare-fun b_lambda!196837 () Bool)

(assert (=> (not b_lambda!196837) (not d!1598826)))

(declare-fun t!368635 () Bool)

(declare-fun tb!260611 () Bool)

(assert (=> (and b!4967137 (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))) t!368635) tb!260611))

(declare-fun b!4967682 () Bool)

(declare-fun e!3105025 () Bool)

(declare-fun tp!1393371 () Bool)

(assert (=> b!4967682 (= e!3105025 (and (inv!75075 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (value!268642 (_1!34385 (get!19940 lt!2051000)))))) tp!1393371))))

(declare-fun result!325718 () Bool)

(assert (=> tb!260611 (= result!325718 (and (inv!75074 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (value!268642 (_1!34385 (get!19940 lt!2051000))))) e!3105025))))

(assert (= tb!260611 b!4967682))

(declare-fun m!5993928 () Bool)

(assert (=> b!4967682 m!5993928))

(declare-fun m!5993930 () Bool)

(assert (=> tb!260611 m!5993930))

(assert (=> d!1598826 t!368635))

(declare-fun b_and!348163 () Bool)

(assert (= b_and!348149 (and (=> t!368635 result!325718) b_and!348163)))

(declare-fun tb!260613 () Bool)

(declare-fun t!368637 () Bool)

(assert (=> (and b!4967394 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))) t!368637) tb!260613))

(declare-fun result!325722 () Bool)

(assert (= result!325722 result!325718))

(assert (=> d!1598826 t!368637))

(declare-fun b_and!348165 () Bool)

(assert (= b_and!348157 (and (=> t!368637 result!325722) b_and!348165)))

(declare-fun m!5993932 () Bool)

(assert (=> d!1598826 m!5993932))

(declare-fun m!5993934 () Bool)

(assert (=> d!1598826 m!5993934))

(assert (=> b!4967235 d!1598826))

(assert (=> b!4967234 d!1598824))

(assert (=> b!4967234 d!1598826))

(assert (=> b!4967234 d!1598814))

(declare-fun d!1598828 () Bool)

(assert (=> d!1598828 (= (get!19941 lt!2051118) (v!50438 lt!2051118))))

(assert (=> b!4967349 d!1598828))

(declare-fun d!1598830 () Bool)

(assert (=> d!1598830 (= (get!19940 (maxPrefixOneRule!3629 thiss!15247 (h!63892 rulesArg!259) (list!18365 input!1342))) (v!50437 (maxPrefixOneRule!3629 thiss!15247 (h!63892 rulesArg!259) (list!18365 input!1342))))))

(assert (=> b!4967349 d!1598830))

(assert (=> b!4967349 d!1598800))

(assert (=> b!4967349 d!1598680))

(declare-fun bs!1183200 () Bool)

(declare-fun d!1598832 () Bool)

(assert (= bs!1183200 (and d!1598832 d!1598730)))

(declare-fun lambda!247376 () Int)

(assert (=> bs!1183200 (= lambda!247376 lambda!247372)))

(assert (=> d!1598832 true))

(declare-fun lt!2051224 () Bool)

(assert (=> d!1598832 (= lt!2051224 (forall!13329 (t!368628 rulesArg!259) lambda!247376))))

(declare-fun e!3105027 () Bool)

(assert (=> d!1598832 (= lt!2051224 e!3105027)))

(declare-fun res!2120475 () Bool)

(assert (=> d!1598832 (=> res!2120475 e!3105027)))

(assert (=> d!1598832 (= res!2120475 (not (is-Cons!57444 (t!368628 rulesArg!259))))))

(assert (=> d!1598832 (= (rulesValidInductive!3296 thiss!15247 (t!368628 rulesArg!259)) lt!2051224)))

(declare-fun b!4967683 () Bool)

(declare-fun e!3105026 () Bool)

(assert (=> b!4967683 (= e!3105027 e!3105026)))

(declare-fun res!2120474 () Bool)

(assert (=> b!4967683 (=> (not res!2120474) (not e!3105026))))

(assert (=> b!4967683 (= res!2120474 (ruleValid!3802 thiss!15247 (h!63892 (t!368628 rulesArg!259))))))

(declare-fun b!4967684 () Bool)

(assert (=> b!4967684 (= e!3105026 (rulesValidInductive!3296 thiss!15247 (t!368628 (t!368628 rulesArg!259))))))

(assert (= (and d!1598832 (not res!2120475)) b!4967683))

(assert (= (and b!4967683 res!2120474) b!4967684))

(declare-fun m!5993936 () Bool)

(assert (=> d!1598832 m!5993936))

(declare-fun m!5993938 () Bool)

(assert (=> b!4967683 m!5993938))

(declare-fun m!5993940 () Bool)

(assert (=> b!4967684 m!5993940))

(assert (=> d!1598716 d!1598832))

(declare-fun d!1598834 () Bool)

(assert (=> d!1598834 (= (isDefined!11362 (maxPrefixZipper!786 thiss!15247 (t!368628 rulesArg!259) (list!18365 input!1342))) (not (isEmpty!30935 (maxPrefixZipper!786 thiss!15247 (t!368628 rulesArg!259) (list!18365 input!1342)))))))

(declare-fun bs!1183201 () Bool)

(assert (= bs!1183201 d!1598834))

(assert (=> bs!1183201 m!5993498))

(declare-fun m!5993942 () Bool)

(assert (=> bs!1183201 m!5993942))

(assert (=> d!1598716 d!1598834))

(assert (=> d!1598716 d!1598680))

(assert (=> d!1598716 d!1598820))

(declare-fun d!1598836 () Bool)

(assert (=> d!1598836 (isPrefix!5244 lt!2051042 lt!2051040)))

(declare-fun lt!2051225 () Unit!148361)

(assert (=> d!1598836 (= lt!2051225 (choose!36668 lt!2051042 lt!2051040))))

(assert (=> d!1598836 (= (lemmaIsPrefixRefl!3568 lt!2051042 lt!2051040) lt!2051225)))

(declare-fun bs!1183202 () Bool)

(assert (= bs!1183202 d!1598836))

(assert (=> bs!1183202 m!5993516))

(declare-fun m!5993944 () Bool)

(assert (=> bs!1183202 m!5993944))

(assert (=> d!1598716 d!1598836))

(declare-fun lt!2051230 () Option!14449)

(declare-fun d!1598838 () Bool)

(assert (=> d!1598838 (= lt!2051230 (maxPrefix!4660 thiss!15247 (t!368628 rulesArg!259) (list!18365 input!1342)))))

(declare-fun e!3105028 () Option!14449)

(assert (=> d!1598838 (= lt!2051230 e!3105028)))

(declare-fun c!847580 () Bool)

(assert (=> d!1598838 (= c!847580 (and (is-Cons!57444 (t!368628 rulesArg!259)) (is-Nil!57444 (t!368628 (t!368628 rulesArg!259)))))))

(declare-fun lt!2051227 () Unit!148361)

(declare-fun lt!2051226 () Unit!148361)

(assert (=> d!1598838 (= lt!2051227 lt!2051226)))

(assert (=> d!1598838 (isPrefix!5244 (list!18365 input!1342) (list!18365 input!1342))))

(assert (=> d!1598838 (= lt!2051226 (lemmaIsPrefixRefl!3568 (list!18365 input!1342) (list!18365 input!1342)))))

(assert (=> d!1598838 (rulesValidInductive!3296 thiss!15247 (t!368628 rulesArg!259))))

(assert (=> d!1598838 (= (maxPrefixZipper!786 thiss!15247 (t!368628 rulesArg!259) (list!18365 input!1342)) lt!2051230)))

(declare-fun call!346399 () Option!14449)

(declare-fun bm!346394 () Bool)

(assert (=> bm!346394 (= call!346399 (maxPrefixOneRuleZipper!296 thiss!15247 (h!63892 (t!368628 rulesArg!259)) (list!18365 input!1342)))))

(declare-fun b!4967685 () Bool)

(assert (=> b!4967685 (= e!3105028 call!346399)))

(declare-fun b!4967686 () Bool)

(declare-fun lt!2051229 () Option!14449)

(declare-fun lt!2051228 () Option!14449)

(assert (=> b!4967686 (= e!3105028 (ite (and (is-None!14448 lt!2051229) (is-None!14448 lt!2051228)) None!14448 (ite (is-None!14448 lt!2051228) lt!2051229 (ite (is-None!14448 lt!2051229) lt!2051228 (ite (>= (size!38070 (_1!34385 (v!50437 lt!2051229))) (size!38070 (_1!34385 (v!50437 lt!2051228)))) lt!2051229 lt!2051228)))))))

(assert (=> b!4967686 (= lt!2051229 call!346399)))

(assert (=> b!4967686 (= lt!2051228 (maxPrefixZipper!786 thiss!15247 (t!368628 (t!368628 rulesArg!259)) (list!18365 input!1342)))))

(assert (= (and d!1598838 c!847580) b!4967685))

(assert (= (and d!1598838 (not c!847580)) b!4967686))

(assert (= (or b!4967685 b!4967686) bm!346394))

(assert (=> d!1598838 m!5993376))

(assert (=> d!1598838 m!5993506))

(assert (=> d!1598838 m!5993376))

(assert (=> d!1598838 m!5993376))

(declare-fun m!5993946 () Bool)

(assert (=> d!1598838 m!5993946))

(assert (=> d!1598838 m!5993376))

(assert (=> d!1598838 m!5993376))

(declare-fun m!5993948 () Bool)

(assert (=> d!1598838 m!5993948))

(assert (=> d!1598838 m!5993518))

(assert (=> bm!346394 m!5993376))

(declare-fun m!5993950 () Bool)

(assert (=> bm!346394 m!5993950))

(assert (=> b!4967686 m!5993376))

(declare-fun m!5993952 () Bool)

(assert (=> b!4967686 m!5993952))

(assert (=> d!1598716 d!1598838))

(declare-fun b!4967690 () Bool)

(declare-fun e!3105031 () Bool)

(assert (=> b!4967690 (= e!3105031 (>= (size!38072 lt!2051040) (size!38072 lt!2051042)))))

(declare-fun b!4967687 () Bool)

(declare-fun e!3105030 () Bool)

(declare-fun e!3105029 () Bool)

(assert (=> b!4967687 (= e!3105030 e!3105029)))

(declare-fun res!2120478 () Bool)

(assert (=> b!4967687 (=> (not res!2120478) (not e!3105029))))

(assert (=> b!4967687 (= res!2120478 (not (is-Nil!57443 lt!2051040)))))

(declare-fun b!4967689 () Bool)

(assert (=> b!4967689 (= e!3105029 (isPrefix!5244 (tail!9801 lt!2051042) (tail!9801 lt!2051040)))))

(declare-fun d!1598840 () Bool)

(assert (=> d!1598840 e!3105031))

(declare-fun res!2120477 () Bool)

(assert (=> d!1598840 (=> res!2120477 e!3105031)))

(declare-fun lt!2051231 () Bool)

(assert (=> d!1598840 (= res!2120477 (not lt!2051231))))

(assert (=> d!1598840 (= lt!2051231 e!3105030)))

(declare-fun res!2120476 () Bool)

(assert (=> d!1598840 (=> res!2120476 e!3105030)))

(assert (=> d!1598840 (= res!2120476 (is-Nil!57443 lt!2051042))))

(assert (=> d!1598840 (= (isPrefix!5244 lt!2051042 lt!2051040) lt!2051231)))

(declare-fun b!4967688 () Bool)

(declare-fun res!2120479 () Bool)

(assert (=> b!4967688 (=> (not res!2120479) (not e!3105029))))

(assert (=> b!4967688 (= res!2120479 (= (head!10668 lt!2051042) (head!10668 lt!2051040)))))

(assert (= (and d!1598840 (not res!2120476)) b!4967687))

(assert (= (and b!4967687 res!2120478) b!4967688))

(assert (= (and b!4967688 res!2120479) b!4967689))

(assert (= (and d!1598840 (not res!2120477)) b!4967690))

(declare-fun m!5993954 () Bool)

(assert (=> b!4967690 m!5993954))

(declare-fun m!5993956 () Bool)

(assert (=> b!4967690 m!5993956))

(declare-fun m!5993958 () Bool)

(assert (=> b!4967689 m!5993958))

(declare-fun m!5993960 () Bool)

(assert (=> b!4967689 m!5993960))

(assert (=> b!4967689 m!5993958))

(assert (=> b!4967689 m!5993960))

(declare-fun m!5993962 () Bool)

(assert (=> b!4967689 m!5993962))

(declare-fun m!5993964 () Bool)

(assert (=> b!4967688 m!5993964))

(declare-fun m!5993966 () Bool)

(assert (=> b!4967688 m!5993966))

(assert (=> d!1598716 d!1598840))

(declare-fun d!1598842 () Bool)

(assert (=> d!1598842 (= (list!18365 (_1!34389 lt!2051115)) (list!18367 (c!847515 (_1!34389 lt!2051115))))))

(declare-fun bs!1183203 () Bool)

(assert (= bs!1183203 d!1598842))

(declare-fun m!5993968 () Bool)

(assert (=> bs!1183203 m!5993968))

(assert (=> b!4967347 d!1598842))

(declare-fun d!1598844 () Bool)

(declare-fun lt!2051234 () Int)

(assert (=> d!1598844 (= lt!2051234 (size!38072 (list!18365 (_1!34389 lt!2051115))))))

(assert (=> d!1598844 (= lt!2051234 (size!38076 (c!847515 (_1!34389 lt!2051115))))))

(assert (=> d!1598844 (= (size!38073 (_1!34389 lt!2051115)) lt!2051234)))

(declare-fun bs!1183204 () Bool)

(assert (= bs!1183204 d!1598844))

(assert (=> bs!1183204 m!5993572))

(assert (=> bs!1183204 m!5993572))

(declare-fun m!5993970 () Bool)

(assert (=> bs!1183204 m!5993970))

(declare-fun m!5993972 () Bool)

(assert (=> bs!1183204 m!5993972))

(assert (=> b!4967347 d!1598844))

(declare-fun bs!1183205 () Bool)

(declare-fun d!1598846 () Bool)

(assert (= bs!1183205 (and d!1598846 d!1598816)))

(declare-fun lambda!247379 () Int)

(assert (=> bs!1183205 (= lambda!247379 lambda!247375)))

(declare-fun b!4967697 () Bool)

(declare-fun e!3105036 () Bool)

(assert (=> b!4967697 (= e!3105036 true)))

(assert (=> d!1598846 e!3105036))

(assert (= d!1598846 b!4967697))

(assert (=> b!4967697 (< (dynLambda!23159 order!26203 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) (dynLambda!23165 order!26215 lambda!247379))))

(assert (=> b!4967697 (< (dynLambda!23161 order!26207 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) (dynLambda!23165 order!26215 lambda!247379))))

(declare-fun dynLambda!23167 (Int BalanceConc!29720) TokenValue!8703)

(assert (=> d!1598846 (= (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115)) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))))))

(declare-fun lt!2051237 () Unit!148361)

(declare-fun Forall2of!477 (Int BalanceConc!29720 BalanceConc!29720) Unit!148361)

(assert (=> d!1598846 (= lt!2051237 (Forall2of!477 lambda!247379 (_1!34389 lt!2051115) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))))))

(assert (=> d!1598846 (= (list!18365 (_1!34389 lt!2051115)) (list!18365 (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))))))

(assert (=> d!1598846 (= (lemmaEqSameImage!1168 (transformation!8393 (h!63892 rulesArg!259)) (_1!34389 lt!2051115) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))) lt!2051237)))

(declare-fun b_lambda!196839 () Bool)

(assert (=> (not b_lambda!196839) (not d!1598846)))

(declare-fun t!368639 () Bool)

(declare-fun tb!260615 () Bool)

(assert (=> (and b!4967137 (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) t!368639) tb!260615))

(declare-fun result!325724 () Bool)

(declare-fun inv!21 (TokenValue!8703) Bool)

(assert (=> tb!260615 (= result!325724 (inv!21 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115))))))

(declare-fun m!5993974 () Bool)

(assert (=> tb!260615 m!5993974))

(assert (=> d!1598846 t!368639))

(declare-fun b_and!348167 () Bool)

(assert (= b_and!348147 (and (=> t!368639 result!325724) b_and!348167)))

(declare-fun t!368641 () Bool)

(declare-fun tb!260617 () Bool)

(assert (=> (and b!4967394 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) t!368641) tb!260617))

(declare-fun result!325728 () Bool)

(assert (= result!325728 result!325724))

(assert (=> d!1598846 t!368641))

(declare-fun b_and!348169 () Bool)

(assert (= b_and!348155 (and (=> t!368641 result!325728) b_and!348169)))

(declare-fun b_lambda!196841 () Bool)

(assert (=> (not b_lambda!196841) (not d!1598846)))

(declare-fun t!368643 () Bool)

(declare-fun tb!260619 () Bool)

(assert (=> (and b!4967137 (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) t!368643) tb!260619))

(declare-fun result!325730 () Bool)

(assert (=> tb!260619 (= result!325730 (inv!21 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))))))

(declare-fun m!5993976 () Bool)

(assert (=> tb!260619 m!5993976))

(assert (=> d!1598846 t!368643))

(declare-fun b_and!348171 () Bool)

(assert (= b_and!348167 (and (=> t!368643 result!325730) b_and!348171)))

(declare-fun t!368645 () Bool)

(declare-fun tb!260621 () Bool)

(assert (=> (and b!4967394 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) t!368645) tb!260621))

(declare-fun result!325732 () Bool)

(assert (= result!325732 result!325730))

(assert (=> d!1598846 t!368645))

(declare-fun b_and!348173 () Bool)

(assert (= b_and!348169 (and (=> t!368645 result!325732) b_and!348173)))

(assert (=> d!1598846 m!5993582))

(declare-fun m!5993978 () Bool)

(assert (=> d!1598846 m!5993978))

(assert (=> d!1598846 m!5993582))

(declare-fun m!5993980 () Bool)

(assert (=> d!1598846 m!5993980))

(assert (=> d!1598846 m!5993582))

(declare-fun m!5993982 () Bool)

(assert (=> d!1598846 m!5993982))

(assert (=> d!1598846 m!5993572))

(declare-fun m!5993984 () Bool)

(assert (=> d!1598846 m!5993984))

(assert (=> b!4967347 d!1598846))

(declare-fun d!1598848 () Bool)

(declare-fun lt!2051238 () Int)

(assert (=> d!1598848 (>= lt!2051238 0)))

(declare-fun e!3105041 () Int)

(assert (=> d!1598848 (= lt!2051238 e!3105041)))

(declare-fun c!847581 () Bool)

(assert (=> d!1598848 (= c!847581 (is-Nil!57443 lt!2051120))))

(assert (=> d!1598848 (= (size!38072 lt!2051120) lt!2051238)))

(declare-fun b!4967700 () Bool)

(assert (=> b!4967700 (= e!3105041 0)))

(declare-fun b!4967701 () Bool)

(assert (=> b!4967701 (= e!3105041 (+ 1 (size!38072 (t!368627 lt!2051120))))))

(assert (= (and d!1598848 c!847581) b!4967700))

(assert (= (and d!1598848 (not c!847581)) b!4967701))

(declare-fun m!5993986 () Bool)

(assert (=> b!4967701 m!5993986))

(assert (=> b!4967347 d!1598848))

(declare-fun d!1598850 () Bool)

(declare-fun lt!2051239 () Int)

(assert (=> d!1598850 (>= lt!2051239 0)))

(declare-fun e!3105042 () Int)

(assert (=> d!1598850 (= lt!2051239 e!3105042)))

(declare-fun c!847582 () Bool)

(assert (=> d!1598850 (= c!847582 (is-Nil!57443 Nil!57443))))

(assert (=> d!1598850 (= (size!38072 Nil!57443) lt!2051239)))

(declare-fun b!4967702 () Bool)

(assert (=> b!4967702 (= e!3105042 0)))

(declare-fun b!4967703 () Bool)

(assert (=> b!4967703 (= e!3105042 (+ 1 (size!38072 (t!368627 Nil!57443))))))

(assert (= (and d!1598850 c!847582) b!4967702))

(assert (= (and d!1598850 (not c!847582)) b!4967703))

(declare-fun m!5993988 () Bool)

(assert (=> b!4967703 m!5993988))

(assert (=> b!4967347 d!1598850))

(declare-fun d!1598852 () Bool)

(declare-fun e!3105045 () Bool)

(assert (=> d!1598852 e!3105045))

(declare-fun res!2120484 () Bool)

(assert (=> d!1598852 (=> (not res!2120484) (not e!3105045))))

(assert (=> d!1598852 (= res!2120484 (semiInverseModEq!3700 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))))))

(declare-fun Unit!148366 () Unit!148361)

(assert (=> d!1598852 (= (lemmaInv!1334 (transformation!8393 (h!63892 rulesArg!259))) Unit!148366)))

(declare-fun b!4967706 () Bool)

(assert (=> b!4967706 (= e!3105045 (equivClasses!3548 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))))))

(assert (= (and d!1598852 res!2120484) b!4967706))

(assert (=> d!1598852 m!5993490))

(assert (=> b!4967706 m!5993492))

(assert (=> b!4967347 d!1598852))

(assert (=> b!4967347 d!1598680))

(declare-fun d!1598854 () Bool)

(declare-fun e!3105048 () Bool)

(assert (=> d!1598854 e!3105048))

(declare-fun res!2120487 () Bool)

(assert (=> d!1598854 (=> res!2120487 e!3105048)))

(assert (=> d!1598854 (= res!2120487 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))))))

(declare-fun lt!2051242 () Unit!148361)

(declare-fun choose!36671 (Regex!13626 List!57567) Unit!148361)

(assert (=> d!1598854 (= lt!2051242 (choose!36671 (regex!8393 (h!63892 rulesArg!259)) lt!2051120))))

(assert (=> d!1598854 (validRegex!5969 (regex!8393 (h!63892 rulesArg!259)))))

(assert (=> d!1598854 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1816 (regex!8393 (h!63892 rulesArg!259)) lt!2051120) lt!2051242)))

(declare-fun b!4967709 () Bool)

(assert (=> b!4967709 (= e!3105048 (matchR!6636 (regex!8393 (h!63892 rulesArg!259)) (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))))))

(assert (= (and d!1598854 (not res!2120487)) b!4967709))

(declare-fun m!5993990 () Bool)

(assert (=> d!1598854 m!5993990))

(assert (=> d!1598854 m!5993574))

(assert (=> d!1598854 m!5993570))

(assert (=> d!1598854 m!5993576))

(assert (=> d!1598854 m!5993570))

(assert (=> d!1598854 m!5993580))

(assert (=> d!1598854 m!5993574))

(assert (=> d!1598854 m!5993828))

(assert (=> b!4967709 m!5993574))

(assert (=> b!4967709 m!5993570))

(assert (=> b!4967709 m!5993574))

(assert (=> b!4967709 m!5993570))

(assert (=> b!4967709 m!5993576))

(assert (=> b!4967709 m!5993594))

(assert (=> b!4967347 d!1598854))

(declare-fun d!1598858 () Bool)

(assert (=> d!1598858 (= (apply!13904 (transformation!8393 (h!63892 rulesArg!259)) (_1!34389 lt!2051115)) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115)))))

(declare-fun b_lambda!196843 () Bool)

(assert (=> (not b_lambda!196843) (not d!1598858)))

(assert (=> d!1598858 t!368639))

(declare-fun b_and!348175 () Bool)

(assert (= b_and!348171 (and (=> t!368639 result!325724) b_and!348175)))

(assert (=> d!1598858 t!368641))

(declare-fun b_and!348177 () Bool)

(assert (= b_and!348173 (and (=> t!368641 result!325728) b_and!348177)))

(assert (=> d!1598858 m!5993984))

(assert (=> b!4967347 d!1598858))

(declare-fun b!4967804 () Bool)

(declare-fun e!3105105 () Unit!148361)

(declare-fun Unit!148367 () Unit!148361)

(assert (=> b!4967804 (= e!3105105 Unit!148367)))

(declare-fun b!4967805 () Bool)

(declare-fun c!847618 () Bool)

(declare-fun call!346431 () Bool)

(assert (=> b!4967805 (= c!847618 call!346431)))

(declare-fun lt!2051374 () Unit!148361)

(declare-fun lt!2051364 () Unit!148361)

(assert (=> b!4967805 (= lt!2051374 lt!2051364)))

(assert (=> b!4967805 (= lt!2051120 Nil!57443)))

(declare-fun call!346434 () Unit!148361)

(assert (=> b!4967805 (= lt!2051364 call!346434)))

(declare-fun lt!2051384 () Unit!148361)

(declare-fun lt!2051369 () Unit!148361)

(assert (=> b!4967805 (= lt!2051384 lt!2051369)))

(declare-fun call!346428 () Bool)

(assert (=> b!4967805 call!346428))

(declare-fun call!346430 () Unit!148361)

(assert (=> b!4967805 (= lt!2051369 call!346430)))

(declare-fun e!3105101 () tuple2!62174)

(declare-fun e!3105102 () tuple2!62174)

(assert (=> b!4967805 (= e!3105101 e!3105102)))

(declare-fun b!4967806 () Bool)

(declare-fun e!3105103 () Bool)

(declare-fun e!3105100 () Bool)

(assert (=> b!4967806 (= e!3105103 e!3105100)))

(declare-fun res!2120516 () Bool)

(assert (=> b!4967806 (=> res!2120516 e!3105100)))

(declare-fun lt!2051376 () tuple2!62174)

(assert (=> b!4967806 (= res!2120516 (isEmpty!30938 (_1!34390 lt!2051376)))))

(declare-fun bm!346423 () Bool)

(declare-fun call!346429 () Regex!13626)

(declare-fun call!346433 () C!27502)

(assert (=> bm!346423 (= call!346429 (derivativeStep!3922 (regex!8393 (h!63892 rulesArg!259)) call!346433))))

(declare-fun b!4967807 () Bool)

(declare-fun e!3105098 () tuple2!62174)

(assert (=> b!4967807 (= e!3105098 e!3105101)))

(declare-fun c!847620 () Bool)

(assert (=> b!4967807 (= c!847620 (= (size!38072 Nil!57443) (size!38072 lt!2051120)))))

(declare-fun b!4967808 () Bool)

(assert (=> b!4967808 (= e!3105102 (tuple2!62175 Nil!57443 lt!2051120))))

(declare-fun b!4967809 () Bool)

(assert (=> b!4967809 (= e!3105098 (tuple2!62175 Nil!57443 lt!2051120))))

(declare-fun b!4967810 () Bool)

(declare-fun e!3105099 () tuple2!62174)

(assert (=> b!4967810 (= e!3105099 (tuple2!62175 Nil!57443 lt!2051120))))

(declare-fun bm!346424 () Bool)

(assert (=> bm!346424 (= call!346430 (lemmaIsPrefixRefl!3568 lt!2051120 lt!2051120))))

(declare-fun bm!346425 () Bool)

(assert (=> bm!346425 (= call!346428 (isPrefix!5244 lt!2051120 lt!2051120))))

(declare-fun bm!346426 () Bool)

(declare-fun call!346427 () List!57567)

(assert (=> bm!346426 (= call!346427 (tail!9801 lt!2051120))))

(declare-fun b!4967811 () Bool)

(declare-fun c!847616 () Bool)

(assert (=> b!4967811 (= c!847616 call!346431)))

(declare-fun lt!2051382 () Unit!148361)

(declare-fun lt!2051359 () Unit!148361)

(assert (=> b!4967811 (= lt!2051382 lt!2051359)))

(declare-fun lt!2051362 () C!27502)

(declare-fun lt!2051372 () List!57567)

(assert (=> b!4967811 (= (++!12532 (++!12532 Nil!57443 (Cons!57443 lt!2051362 Nil!57443)) lt!2051372) lt!2051120)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1445 (List!57567 C!27502 List!57567 List!57567) Unit!148361)

(assert (=> b!4967811 (= lt!2051359 (lemmaMoveElementToOtherListKeepsConcatEq!1445 Nil!57443 lt!2051362 lt!2051372 lt!2051120))))

(assert (=> b!4967811 (= lt!2051372 (tail!9801 lt!2051120))))

(assert (=> b!4967811 (= lt!2051362 (head!10668 lt!2051120))))

(declare-fun lt!2051375 () Unit!148361)

(declare-fun lt!2051370 () Unit!148361)

(assert (=> b!4967811 (= lt!2051375 lt!2051370)))

(declare-fun getSuffix!3088 (List!57567 List!57567) List!57567)

(assert (=> b!4967811 (isPrefix!5244 (++!12532 Nil!57443 (Cons!57443 (head!10668 (getSuffix!3088 lt!2051120 Nil!57443)) Nil!57443)) lt!2051120)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!835 (List!57567 List!57567) Unit!148361)

(assert (=> b!4967811 (= lt!2051370 (lemmaAddHeadSuffixToPrefixStillPrefix!835 Nil!57443 lt!2051120))))

(declare-fun lt!2051379 () Unit!148361)

(declare-fun lt!2051381 () Unit!148361)

(assert (=> b!4967811 (= lt!2051379 lt!2051381)))

(assert (=> b!4967811 (= lt!2051381 (lemmaAddHeadSuffixToPrefixStillPrefix!835 Nil!57443 lt!2051120))))

(declare-fun lt!2051366 () List!57567)

(assert (=> b!4967811 (= lt!2051366 (++!12532 Nil!57443 (Cons!57443 (head!10668 lt!2051120) Nil!57443)))))

(declare-fun lt!2051368 () Unit!148361)

(assert (=> b!4967811 (= lt!2051368 e!3105105)))

(declare-fun c!847621 () Bool)

(assert (=> b!4967811 (= c!847621 (= (size!38072 Nil!57443) (size!38072 lt!2051120)))))

(declare-fun lt!2051367 () Unit!148361)

(declare-fun lt!2051385 () Unit!148361)

(assert (=> b!4967811 (= lt!2051367 lt!2051385)))

(assert (=> b!4967811 (<= (size!38072 Nil!57443) (size!38072 lt!2051120))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!761 (List!57567 List!57567) Unit!148361)

(assert (=> b!4967811 (= lt!2051385 (lemmaIsPrefixThenSmallerEqSize!761 Nil!57443 lt!2051120))))

(declare-fun e!3105104 () tuple2!62174)

(assert (=> b!4967811 (= e!3105101 e!3105104)))

(declare-fun b!4967812 () Bool)

(declare-fun lt!2051371 () tuple2!62174)

(assert (=> b!4967812 (= e!3105099 lt!2051371)))

(declare-fun b!4967813 () Bool)

(assert (=> b!4967813 (= e!3105102 (tuple2!62175 Nil!57443 Nil!57443))))

(declare-fun b!4967814 () Bool)

(declare-fun Unit!148369 () Unit!148361)

(assert (=> b!4967814 (= e!3105105 Unit!148369)))

(declare-fun lt!2051361 () Unit!148361)

(assert (=> b!4967814 (= lt!2051361 call!346430)))

(assert (=> b!4967814 call!346428))

(declare-fun lt!2051380 () Unit!148361)

(assert (=> b!4967814 (= lt!2051380 lt!2051361)))

(declare-fun lt!2051373 () Unit!148361)

(assert (=> b!4967814 (= lt!2051373 call!346434)))

(assert (=> b!4967814 (= lt!2051120 Nil!57443)))

(declare-fun lt!2051363 () Unit!148361)

(assert (=> b!4967814 (= lt!2051363 lt!2051373)))

(assert (=> b!4967814 false))

(declare-fun bm!346427 () Bool)

(assert (=> bm!346427 (= call!346431 (nullable!4620 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun b!4967815 () Bool)

(assert (=> b!4967815 (= e!3105104 e!3105099)))

(declare-fun call!346432 () tuple2!62174)

(assert (=> b!4967815 (= lt!2051371 call!346432)))

(declare-fun c!847619 () Bool)

(assert (=> b!4967815 (= c!847619 (isEmpty!30938 (_1!34390 lt!2051371)))))

(declare-fun d!1598860 () Bool)

(assert (=> d!1598860 e!3105103))

(declare-fun res!2120517 () Bool)

(assert (=> d!1598860 (=> (not res!2120517) (not e!3105103))))

(assert (=> d!1598860 (= res!2120517 (= (++!12532 (_1!34390 lt!2051376) (_2!34390 lt!2051376)) lt!2051120))))

(assert (=> d!1598860 (= lt!2051376 e!3105098)))

(declare-fun c!847617 () Bool)

(declare-fun lostCause!1133 (Regex!13626) Bool)

(assert (=> d!1598860 (= c!847617 (lostCause!1133 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun lt!2051365 () Unit!148361)

(declare-fun Unit!148371 () Unit!148361)

(assert (=> d!1598860 (= lt!2051365 Unit!148371)))

(assert (=> d!1598860 (= (getSuffix!3088 lt!2051120 Nil!57443) lt!2051120)))

(declare-fun lt!2051358 () Unit!148361)

(declare-fun lt!2051378 () Unit!148361)

(assert (=> d!1598860 (= lt!2051358 lt!2051378)))

(declare-fun lt!2051383 () List!57567)

(assert (=> d!1598860 (= lt!2051120 lt!2051383)))

(declare-fun lemmaSamePrefixThenSameSuffix!2501 (List!57567 List!57567 List!57567 List!57567 List!57567) Unit!148361)

(assert (=> d!1598860 (= lt!2051378 (lemmaSamePrefixThenSameSuffix!2501 Nil!57443 lt!2051120 Nil!57443 lt!2051383 lt!2051120))))

(assert (=> d!1598860 (= lt!2051383 (getSuffix!3088 lt!2051120 Nil!57443))))

(declare-fun lt!2051360 () Unit!148361)

(declare-fun lt!2051377 () Unit!148361)

(assert (=> d!1598860 (= lt!2051360 lt!2051377)))

(assert (=> d!1598860 (isPrefix!5244 Nil!57443 (++!12532 Nil!57443 lt!2051120))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3347 (List!57567 List!57567) Unit!148361)

(assert (=> d!1598860 (= lt!2051377 (lemmaConcatTwoListThenFirstIsPrefix!3347 Nil!57443 lt!2051120))))

(assert (=> d!1598860 (validRegex!5969 (regex!8393 (h!63892 rulesArg!259)))))

(assert (=> d!1598860 (= (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)) lt!2051376)))

(declare-fun bm!346422 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1208 (List!57567 List!57567 List!57567) Unit!148361)

(assert (=> bm!346422 (= call!346434 (lemmaIsPrefixSameLengthThenSameList!1208 lt!2051120 Nil!57443 lt!2051120))))

(declare-fun bm!346428 () Bool)

(assert (=> bm!346428 (= call!346432 (findLongestMatchInner!1855 call!346429 lt!2051366 (+ (size!38072 Nil!57443) 1) call!346427 lt!2051120 (size!38072 lt!2051120)))))

(declare-fun bm!346429 () Bool)

(assert (=> bm!346429 (= call!346433 (head!10668 lt!2051120))))

(declare-fun b!4967816 () Bool)

(assert (=> b!4967816 (= e!3105104 call!346432)))

(declare-fun b!4967817 () Bool)

(assert (=> b!4967817 (= e!3105100 (>= (size!38072 (_1!34390 lt!2051376)) (size!38072 Nil!57443)))))

(assert (= (and d!1598860 c!847617) b!4967809))

(assert (= (and d!1598860 (not c!847617)) b!4967807))

(assert (= (and b!4967807 c!847620) b!4967805))

(assert (= (and b!4967807 (not c!847620)) b!4967811))

(assert (= (and b!4967805 c!847618) b!4967813))

(assert (= (and b!4967805 (not c!847618)) b!4967808))

(assert (= (and b!4967811 c!847621) b!4967814))

(assert (= (and b!4967811 (not c!847621)) b!4967804))

(assert (= (and b!4967811 c!847616) b!4967815))

(assert (= (and b!4967811 (not c!847616)) b!4967816))

(assert (= (and b!4967815 c!847619) b!4967810))

(assert (= (and b!4967815 (not c!847619)) b!4967812))

(assert (= (or b!4967815 b!4967816) bm!346429))

(assert (= (or b!4967815 b!4967816) bm!346426))

(assert (= (or b!4967815 b!4967816) bm!346423))

(assert (= (or b!4967815 b!4967816) bm!346428))

(assert (= (or b!4967805 b!4967814) bm!346424))

(assert (= (or b!4967805 b!4967814) bm!346422))

(assert (= (or b!4967805 b!4967811) bm!346427))

(assert (= (or b!4967805 b!4967814) bm!346425))

(assert (= (and d!1598860 res!2120517) b!4967806))

(assert (= (and b!4967806 (not res!2120516)) b!4967817))

(declare-fun m!5994006 () Bool)

(assert (=> b!4967817 m!5994006))

(assert (=> b!4967817 m!5993574))

(declare-fun m!5994008 () Bool)

(assert (=> b!4967815 m!5994008))

(declare-fun m!5994010 () Bool)

(assert (=> b!4967806 m!5994010))

(declare-fun m!5994012 () Bool)

(assert (=> b!4967811 m!5994012))

(assert (=> b!4967811 m!5994012))

(declare-fun m!5994014 () Bool)

(assert (=> b!4967811 m!5994014))

(declare-fun m!5994016 () Bool)

(assert (=> b!4967811 m!5994016))

(assert (=> b!4967811 m!5993570))

(declare-fun m!5994018 () Bool)

(assert (=> b!4967811 m!5994018))

(declare-fun m!5994020 () Bool)

(assert (=> b!4967811 m!5994020))

(declare-fun m!5994022 () Bool)

(assert (=> b!4967811 m!5994022))

(declare-fun m!5994024 () Bool)

(assert (=> b!4967811 m!5994024))

(assert (=> b!4967811 m!5994018))

(declare-fun m!5994026 () Bool)

(assert (=> b!4967811 m!5994026))

(declare-fun m!5994028 () Bool)

(assert (=> b!4967811 m!5994028))

(declare-fun m!5994030 () Bool)

(assert (=> b!4967811 m!5994030))

(assert (=> b!4967811 m!5993574))

(declare-fun m!5994032 () Bool)

(assert (=> b!4967811 m!5994032))

(assert (=> b!4967811 m!5994016))

(declare-fun m!5994034 () Bool)

(assert (=> b!4967811 m!5994034))

(declare-fun m!5994036 () Bool)

(assert (=> bm!346425 m!5994036))

(assert (=> bm!346429 m!5994028))

(assert (=> bm!346428 m!5993570))

(declare-fun m!5994038 () Bool)

(assert (=> bm!346428 m!5994038))

(declare-fun m!5994040 () Bool)

(assert (=> bm!346424 m!5994040))

(declare-fun m!5994042 () Bool)

(assert (=> bm!346423 m!5994042))

(assert (=> bm!346426 m!5994022))

(declare-fun m!5994044 () Bool)

(assert (=> bm!346422 m!5994044))

(assert (=> bm!346427 m!5993830))

(declare-fun m!5994046 () Bool)

(assert (=> d!1598860 m!5994046))

(declare-fun m!5994048 () Bool)

(assert (=> d!1598860 m!5994048))

(declare-fun m!5994050 () Bool)

(assert (=> d!1598860 m!5994050))

(assert (=> d!1598860 m!5994016))

(assert (=> d!1598860 m!5994046))

(assert (=> d!1598860 m!5993828))

(declare-fun m!5994052 () Bool)

(assert (=> d!1598860 m!5994052))

(declare-fun m!5994054 () Bool)

(assert (=> d!1598860 m!5994054))

(declare-fun m!5994056 () Bool)

(assert (=> d!1598860 m!5994056))

(assert (=> b!4967347 d!1598860))

(declare-fun d!1598864 () Bool)

(declare-fun dynLambda!23168 (Int BalanceConc!29720) Bool)

(assert (=> d!1598864 (dynLambda!23168 lambda!247368 (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))))

(declare-fun lt!2051388 () Unit!148361)

(declare-fun choose!36672 (Int BalanceConc!29720) Unit!148361)

(assert (=> d!1598864 (= lt!2051388 (choose!36672 lambda!247368 (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))))))

(declare-fun Forall!1762 (Int) Bool)

(assert (=> d!1598864 (Forall!1762 lambda!247368)))

(assert (=> d!1598864 (= (ForallOf!1227 lambda!247368 (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))) lt!2051388)))

(declare-fun b_lambda!196845 () Bool)

(assert (=> (not b_lambda!196845) (not d!1598864)))

(declare-fun bs!1183206 () Bool)

(assert (= bs!1183206 d!1598864))

(assert (=> bs!1183206 m!5993582))

(declare-fun m!5994058 () Bool)

(assert (=> bs!1183206 m!5994058))

(assert (=> bs!1183206 m!5993582))

(declare-fun m!5994060 () Bool)

(assert (=> bs!1183206 m!5994060))

(declare-fun m!5994062 () Bool)

(assert (=> bs!1183206 m!5994062))

(assert (=> b!4967347 d!1598864))

(declare-fun d!1598866 () Bool)

(assert (=> d!1598866 (= (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))) (is-Nil!57443 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))))))

(assert (=> b!4967347 d!1598866))

(declare-fun d!1598868 () Bool)

(declare-fun fromListB!2731 (List!57567) BalanceConc!29720)

(assert (=> d!1598868 (= (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))) (fromListB!2731 (list!18365 (_1!34389 lt!2051115))))))

(declare-fun bs!1183207 () Bool)

(assert (= bs!1183207 d!1598868))

(assert (=> bs!1183207 m!5993572))

(declare-fun m!5994064 () Bool)

(assert (=> bs!1183207 m!5994064))

(assert (=> b!4967347 d!1598868))

(declare-fun d!1598870 () Bool)

(assert (=> d!1598870 (dynLambda!23168 lambda!247368 (_1!34389 lt!2051115))))

(declare-fun lt!2051389 () Unit!148361)

(assert (=> d!1598870 (= lt!2051389 (choose!36672 lambda!247368 (_1!34389 lt!2051115)))))

(assert (=> d!1598870 (Forall!1762 lambda!247368)))

(assert (=> d!1598870 (= (ForallOf!1227 lambda!247368 (_1!34389 lt!2051115)) lt!2051389)))

(declare-fun b_lambda!196847 () Bool)

(assert (=> (not b_lambda!196847) (not d!1598870)))

(declare-fun bs!1183208 () Bool)

(assert (= bs!1183208 d!1598870))

(declare-fun m!5994066 () Bool)

(assert (=> bs!1183208 m!5994066))

(declare-fun m!5994068 () Bool)

(assert (=> bs!1183208 m!5994068))

(assert (=> bs!1183208 m!5994062))

(assert (=> b!4967347 d!1598870))

(declare-fun d!1598872 () Bool)

(declare-fun lt!2051390 () Int)

(assert (=> d!1598872 (>= lt!2051390 0)))

(declare-fun e!3105110 () Int)

(assert (=> d!1598872 (= lt!2051390 e!3105110)))

(declare-fun c!847622 () Bool)

(assert (=> d!1598872 (= c!847622 (is-Nil!57443 (_2!34385 (get!19940 lt!2051000))))))

(assert (=> d!1598872 (= (size!38072 (_2!34385 (get!19940 lt!2051000))) lt!2051390)))

(declare-fun b!4967822 () Bool)

(assert (=> b!4967822 (= e!3105110 0)))

(declare-fun b!4967823 () Bool)

(assert (=> b!4967823 (= e!3105110 (+ 1 (size!38072 (t!368627 (_2!34385 (get!19940 lt!2051000))))))))

(assert (= (and d!1598872 c!847622) b!4967822))

(assert (= (and d!1598872 (not c!847622)) b!4967823))

(declare-fun m!5994070 () Bool)

(assert (=> b!4967823 m!5994070))

(assert (=> b!4967232 d!1598872))

(assert (=> b!4967232 d!1598814))

(assert (=> b!4967232 d!1598808))

(declare-fun d!1598874 () Bool)

(declare-fun c!847623 () Bool)

(assert (=> d!1598874 (= c!847623 (is-Node!15145 (left!41900 (c!847515 input!1342))))))

(declare-fun e!3105111 () Bool)

(assert (=> d!1598874 (= (inv!75075 (left!41900 (c!847515 input!1342))) e!3105111)))

(declare-fun b!4967824 () Bool)

(assert (=> b!4967824 (= e!3105111 (inv!75080 (left!41900 (c!847515 input!1342))))))

(declare-fun b!4967825 () Bool)

(declare-fun e!3105112 () Bool)

(assert (=> b!4967825 (= e!3105111 e!3105112)))

(declare-fun res!2120522 () Bool)

(assert (=> b!4967825 (= res!2120522 (not (is-Leaf!25167 (left!41900 (c!847515 input!1342)))))))

(assert (=> b!4967825 (=> res!2120522 e!3105112)))

(declare-fun b!4967826 () Bool)

(assert (=> b!4967826 (= e!3105112 (inv!75081 (left!41900 (c!847515 input!1342))))))

(assert (= (and d!1598874 c!847623) b!4967824))

(assert (= (and d!1598874 (not c!847623)) b!4967825))

(assert (= (and b!4967825 (not res!2120522)) b!4967826))

(declare-fun m!5994072 () Bool)

(assert (=> b!4967824 m!5994072))

(declare-fun m!5994074 () Bool)

(assert (=> b!4967826 m!5994074))

(assert (=> b!4967417 d!1598874))

(declare-fun d!1598876 () Bool)

(declare-fun c!847624 () Bool)

(assert (=> d!1598876 (= c!847624 (is-Node!15145 (right!42230 (c!847515 input!1342))))))

(declare-fun e!3105113 () Bool)

(assert (=> d!1598876 (= (inv!75075 (right!42230 (c!847515 input!1342))) e!3105113)))

(declare-fun b!4967827 () Bool)

(assert (=> b!4967827 (= e!3105113 (inv!75080 (right!42230 (c!847515 input!1342))))))

(declare-fun b!4967828 () Bool)

(declare-fun e!3105114 () Bool)

(assert (=> b!4967828 (= e!3105113 e!3105114)))

(declare-fun res!2120523 () Bool)

(assert (=> b!4967828 (= res!2120523 (not (is-Leaf!25167 (right!42230 (c!847515 input!1342)))))))

(assert (=> b!4967828 (=> res!2120523 e!3105114)))

(declare-fun b!4967829 () Bool)

(assert (=> b!4967829 (= e!3105114 (inv!75081 (right!42230 (c!847515 input!1342))))))

(assert (= (and d!1598876 c!847624) b!4967827))

(assert (= (and d!1598876 (not c!847624)) b!4967828))

(assert (= (and b!4967828 (not res!2120523)) b!4967829))

(declare-fun m!5994076 () Bool)

(assert (=> b!4967827 m!5994076))

(declare-fun m!5994078 () Bool)

(assert (=> b!4967829 m!5994078))

(assert (=> b!4967417 d!1598876))

(declare-fun d!1598878 () Bool)

(declare-fun res!2120528 () Bool)

(declare-fun e!3105119 () Bool)

(assert (=> d!1598878 (=> res!2120528 e!3105119)))

(assert (=> d!1598878 (= res!2120528 (is-Nil!57444 rulesArg!259))))

(assert (=> d!1598878 (= (forall!13329 rulesArg!259 lambda!247372) e!3105119)))

(declare-fun b!4967834 () Bool)

(declare-fun e!3105120 () Bool)

(assert (=> b!4967834 (= e!3105119 e!3105120)))

(declare-fun res!2120529 () Bool)

(assert (=> b!4967834 (=> (not res!2120529) (not e!3105120))))

(declare-fun dynLambda!23169 (Int Rule!16586) Bool)

(assert (=> b!4967834 (= res!2120529 (dynLambda!23169 lambda!247372 (h!63892 rulesArg!259)))))

(declare-fun b!4967835 () Bool)

(assert (=> b!4967835 (= e!3105120 (forall!13329 (t!368628 rulesArg!259) lambda!247372))))

(assert (= (and d!1598878 (not res!2120528)) b!4967834))

(assert (= (and b!4967834 res!2120529) b!4967835))

(declare-fun b_lambda!196849 () Bool)

(assert (=> (not b_lambda!196849) (not b!4967834)))

(declare-fun m!5994080 () Bool)

(assert (=> b!4967834 m!5994080))

(declare-fun m!5994082 () Bool)

(assert (=> b!4967835 m!5994082))

(assert (=> d!1598730 d!1598878))

(declare-fun d!1598880 () Bool)

(assert (=> d!1598880 (= (get!19941 lt!2051044) (v!50438 lt!2051044))))

(assert (=> b!4967278 d!1598880))

(declare-fun d!1598882 () Bool)

(assert (=> d!1598882 (= (list!18365 (_2!34386 (get!19941 lt!2051044))) (list!18367 (c!847515 (_2!34386 (get!19941 lt!2051044)))))))

(declare-fun bs!1183209 () Bool)

(assert (= bs!1183209 d!1598882))

(declare-fun m!5994084 () Bool)

(assert (=> bs!1183209 m!5994084))

(assert (=> b!4967278 d!1598882))

(assert (=> b!4967278 d!1598680))

(assert (=> b!4967278 d!1598838))

(declare-fun d!1598884 () Bool)

(assert (=> d!1598884 (= (get!19940 (maxPrefixZipper!786 thiss!15247 (t!368628 rulesArg!259) (list!18365 input!1342))) (v!50437 (maxPrefixZipper!786 thiss!15247 (t!368628 rulesArg!259) (list!18365 input!1342))))))

(assert (=> b!4967278 d!1598884))

(declare-fun bs!1183210 () Bool)

(declare-fun b!4967852 () Bool)

(assert (= bs!1183210 (and b!4967852 b!4967347)))

(declare-fun lambda!247380 () Int)

(assert (=> bs!1183210 (= (and (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (= lambda!247380 lambda!247368))))

(declare-fun b!4967857 () Bool)

(declare-fun e!3105135 () Bool)

(assert (=> b!4967857 (= e!3105135 true)))

(declare-fun b!4967856 () Bool)

(declare-fun e!3105134 () Bool)

(assert (=> b!4967856 (= e!3105134 e!3105135)))

(assert (=> b!4967852 e!3105134))

(assert (= b!4967856 b!4967857))

(assert (= b!4967852 b!4967856))

(assert (=> b!4967857 (< (dynLambda!23159 order!26203 (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) (dynLambda!23160 order!26205 lambda!247380))))

(assert (=> b!4967857 (< (dynLambda!23161 order!26207 (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) (dynLambda!23160 order!26205 lambda!247380))))

(declare-fun d!1598886 () Bool)

(declare-fun e!3105129 () Bool)

(assert (=> d!1598886 e!3105129))

(declare-fun res!2120533 () Bool)

(assert (=> d!1598886 (=> (not res!2120533) (not e!3105129))))

(declare-fun lt!2051422 () Option!14450)

(assert (=> d!1598886 (= res!2120533 (= (isDefined!11363 lt!2051422) (isDefined!11362 (maxPrefixOneRule!3629 thiss!15247 (h!63892 (t!368628 rulesArg!259)) (list!18365 input!1342)))))))

(declare-fun e!3105133 () Option!14450)

(assert (=> d!1598886 (= lt!2051422 e!3105133)))

(declare-fun c!847631 () Bool)

(declare-fun lt!2051419 () tuple2!62172)

(assert (=> d!1598886 (= c!847631 (isEmpty!30937 (_1!34389 lt!2051419)))))

(assert (=> d!1598886 (= lt!2051419 (findLongestMatchWithZipperSequenceV2!164 (regex!8393 (h!63892 (t!368628 rulesArg!259))) input!1342 totalInput!464))))

(assert (=> d!1598886 (ruleValid!3802 thiss!15247 (h!63892 (t!368628 rulesArg!259)))))

(assert (=> d!1598886 (= (maxPrefixOneRuleZipperSequenceV2!361 thiss!15247 (h!63892 (t!368628 rulesArg!259)) input!1342 totalInput!464) lt!2051422)))

(declare-fun b!4967850 () Bool)

(assert (=> b!4967850 (= e!3105133 None!14449)))

(declare-fun b!4967851 () Bool)

(declare-fun e!3105132 () Bool)

(assert (=> b!4967851 (= e!3105129 e!3105132)))

(declare-fun res!2120532 () Bool)

(assert (=> b!4967851 (=> res!2120532 e!3105132)))

(assert (=> b!4967851 (= res!2120532 (not (isDefined!11363 lt!2051422)))))

(assert (=> b!4967852 (= e!3105133 (Some!14449 (tuple2!62167 (Token!15283 (apply!13904 (transformation!8393 (h!63892 (t!368628 rulesArg!259))) (_1!34389 lt!2051419)) (h!63892 (t!368628 rulesArg!259)) (size!38073 (_1!34389 lt!2051419)) (list!18365 (_1!34389 lt!2051419))) (_2!34389 lt!2051419))))))

(declare-fun lt!2051424 () List!57567)

(assert (=> b!4967852 (= lt!2051424 (list!18365 input!1342))))

(declare-fun lt!2051423 () Unit!148361)

(assert (=> b!4967852 (= lt!2051423 (longestMatchIsAcceptedByMatchOrIsEmpty!1816 (regex!8393 (h!63892 (t!368628 rulesArg!259))) lt!2051424))))

(declare-fun res!2120535 () Bool)

(assert (=> b!4967852 (= res!2120535 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) lt!2051424 lt!2051424 (size!38072 lt!2051424)))))))

(declare-fun e!3105130 () Bool)

(assert (=> b!4967852 (=> res!2120535 e!3105130)))

(assert (=> b!4967852 e!3105130))

(declare-fun lt!2051428 () Unit!148361)

(assert (=> b!4967852 (= lt!2051428 lt!2051423)))

(declare-fun lt!2051425 () Unit!148361)

(assert (=> b!4967852 (= lt!2051425 (lemmaInv!1334 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))))))

(declare-fun lt!2051420 () Unit!148361)

(assert (=> b!4967852 (= lt!2051420 (ForallOf!1227 lambda!247380 (_1!34389 lt!2051419)))))

(declare-fun lt!2051426 () Unit!148361)

(assert (=> b!4967852 (= lt!2051426 (ForallOf!1227 lambda!247380 (seqFromList!6036 (list!18365 (_1!34389 lt!2051419)))))))

(declare-fun lt!2051421 () Option!14450)

(assert (=> b!4967852 (= lt!2051421 (Some!14449 (tuple2!62167 (Token!15283 (apply!13904 (transformation!8393 (h!63892 (t!368628 rulesArg!259))) (_1!34389 lt!2051419)) (h!63892 (t!368628 rulesArg!259)) (size!38073 (_1!34389 lt!2051419)) (list!18365 (_1!34389 lt!2051419))) (_2!34389 lt!2051419))))))

(declare-fun lt!2051427 () Unit!148361)

(assert (=> b!4967852 (= lt!2051427 (lemmaEqSameImage!1168 (transformation!8393 (h!63892 (t!368628 rulesArg!259))) (_1!34389 lt!2051419) (seqFromList!6036 (list!18365 (_1!34389 lt!2051419)))))))

(declare-fun b!4967853 () Bool)

(assert (=> b!4967853 (= e!3105130 (matchR!6636 (regex!8393 (h!63892 (t!368628 rulesArg!259))) (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) lt!2051424 lt!2051424 (size!38072 lt!2051424)))))))

(declare-fun b!4967854 () Bool)

(declare-fun e!3105131 () Bool)

(assert (=> b!4967854 (= e!3105132 e!3105131)))

(declare-fun res!2120534 () Bool)

(assert (=> b!4967854 (=> (not res!2120534) (not e!3105131))))

(assert (=> b!4967854 (= res!2120534 (= (_1!34386 (get!19941 lt!2051422)) (_1!34385 (get!19940 (maxPrefixOneRule!3629 thiss!15247 (h!63892 (t!368628 rulesArg!259)) (list!18365 input!1342))))))))

(declare-fun b!4967855 () Bool)

(assert (=> b!4967855 (= e!3105131 (= (list!18365 (_2!34386 (get!19941 lt!2051422))) (_2!34385 (get!19940 (maxPrefixOneRule!3629 thiss!15247 (h!63892 (t!368628 rulesArg!259)) (list!18365 input!1342))))))))

(assert (= (and d!1598886 c!847631) b!4967850))

(assert (= (and d!1598886 (not c!847631)) b!4967852))

(assert (= (and b!4967852 (not res!2120535)) b!4967853))

(assert (= (and d!1598886 res!2120533) b!4967851))

(assert (= (and b!4967851 (not res!2120532)) b!4967854))

(assert (= (and b!4967854 res!2120534) b!4967855))

(declare-fun m!5994138 () Bool)

(assert (=> b!4967854 m!5994138))

(assert (=> b!4967854 m!5993376))

(assert (=> b!4967854 m!5993376))

(declare-fun m!5994140 () Bool)

(assert (=> b!4967854 m!5994140))

(assert (=> b!4967854 m!5994140))

(declare-fun m!5994142 () Bool)

(assert (=> b!4967854 m!5994142))

(assert (=> b!4967852 m!5993376))

(declare-fun m!5994144 () Bool)

(assert (=> b!4967852 m!5994144))

(declare-fun m!5994146 () Bool)

(assert (=> b!4967852 m!5994146))

(declare-fun m!5994148 () Bool)

(assert (=> b!4967852 m!5994148))

(declare-fun m!5994150 () Bool)

(assert (=> b!4967852 m!5994150))

(assert (=> b!4967852 m!5993574))

(assert (=> b!4967852 m!5994148))

(declare-fun m!5994152 () Bool)

(assert (=> b!4967852 m!5994152))

(declare-fun m!5994154 () Bool)

(assert (=> b!4967852 m!5994154))

(declare-fun m!5994156 () Bool)

(assert (=> b!4967852 m!5994156))

(declare-fun m!5994158 () Bool)

(assert (=> b!4967852 m!5994158))

(declare-fun m!5994160 () Bool)

(assert (=> b!4967852 m!5994160))

(declare-fun m!5994162 () Bool)

(assert (=> b!4967852 m!5994162))

(assert (=> b!4967852 m!5994150))

(assert (=> b!4967852 m!5994158))

(assert (=> b!4967852 m!5994158))

(declare-fun m!5994164 () Bool)

(assert (=> b!4967852 m!5994164))

(assert (=> b!4967852 m!5993574))

(declare-fun m!5994166 () Bool)

(assert (=> b!4967852 m!5994166))

(assert (=> b!4967855 m!5994138))

(assert (=> b!4967855 m!5993376))

(declare-fun m!5994168 () Bool)

(assert (=> b!4967855 m!5994168))

(assert (=> b!4967855 m!5993376))

(assert (=> b!4967855 m!5994140))

(assert (=> b!4967855 m!5994140))

(assert (=> b!4967855 m!5994142))

(assert (=> b!4967853 m!5993574))

(assert (=> b!4967853 m!5994148))

(assert (=> b!4967853 m!5993574))

(assert (=> b!4967853 m!5994148))

(assert (=> b!4967853 m!5994152))

(declare-fun m!5994170 () Bool)

(assert (=> b!4967853 m!5994170))

(declare-fun m!5994172 () Bool)

(assert (=> b!4967851 m!5994172))

(assert (=> d!1598886 m!5993376))

(assert (=> d!1598886 m!5994172))

(declare-fun m!5994174 () Bool)

(assert (=> d!1598886 m!5994174))

(assert (=> d!1598886 m!5994140))

(declare-fun m!5994176 () Bool)

(assert (=> d!1598886 m!5994176))

(assert (=> d!1598886 m!5993376))

(assert (=> d!1598886 m!5994140))

(assert (=> d!1598886 m!5993938))

(declare-fun m!5994178 () Bool)

(assert (=> d!1598886 m!5994178))

(assert (=> bm!346381 d!1598886))

(declare-fun b!4967862 () Bool)

(declare-fun res!2120539 () Bool)

(declare-fun e!3105138 () Bool)

(assert (=> b!4967862 (=> (not res!2120539) (not e!3105138))))

(declare-fun e!3105141 () Bool)

(assert (=> b!4967862 (= res!2120539 e!3105141)))

(declare-fun res!2120537 () Bool)

(assert (=> b!4967862 (=> res!2120537 e!3105141)))

(declare-fun lt!2051435 () Option!14450)

(assert (=> b!4967862 (= res!2120537 (not (isDefined!11363 lt!2051435)))))

(declare-fun b!4967863 () Bool)

(declare-fun e!3105140 () Bool)

(declare-fun e!3105143 () Bool)

(assert (=> b!4967863 (= e!3105140 e!3105143)))

(declare-fun res!2120541 () Bool)

(assert (=> b!4967863 (=> (not res!2120541) (not e!3105143))))

(assert (=> b!4967863 (= res!2120541 (= (_1!34386 (get!19941 lt!2051435)) (_1!34385 (get!19940 (maxPrefix!4660 thiss!15247 (t!368628 (t!368628 rulesArg!259)) (list!18365 input!1342))))))))

(declare-fun b!4967864 () Bool)

(declare-fun e!3105142 () Option!14450)

(declare-fun lt!2051437 () Option!14450)

(declare-fun lt!2051432 () Option!14450)

(assert (=> b!4967864 (= e!3105142 (ite (and (is-None!14449 lt!2051437) (is-None!14449 lt!2051432)) None!14449 (ite (is-None!14449 lt!2051432) lt!2051437 (ite (is-None!14449 lt!2051437) lt!2051432 (ite (>= (size!38070 (_1!34386 (v!50438 lt!2051437))) (size!38070 (_1!34386 (v!50438 lt!2051432)))) lt!2051437 lt!2051432)))))))

(declare-fun call!346451 () Option!14450)

(assert (=> b!4967864 (= lt!2051437 call!346451)))

(assert (=> b!4967864 (= lt!2051432 (maxPrefixZipperSequenceV2!704 thiss!15247 (t!368628 (t!368628 (t!368628 rulesArg!259))) input!1342 totalInput!464))))

(declare-fun b!4967865 () Bool)

(declare-fun e!3105139 () Bool)

(assert (=> b!4967865 (= e!3105141 e!3105139)))

(declare-fun res!2120536 () Bool)

(assert (=> b!4967865 (=> (not res!2120536) (not e!3105139))))

(assert (=> b!4967865 (= res!2120536 (= (_1!34386 (get!19941 lt!2051435)) (_1!34385 (get!19940 (maxPrefixZipper!786 thiss!15247 (t!368628 (t!368628 rulesArg!259)) (list!18365 input!1342))))))))

(declare-fun bm!346446 () Bool)

(assert (=> bm!346446 (= call!346451 (maxPrefixOneRuleZipperSequenceV2!361 thiss!15247 (h!63892 (t!368628 (t!368628 rulesArg!259))) input!1342 totalInput!464))))

(declare-fun d!1598890 () Bool)

(assert (=> d!1598890 e!3105138))

(declare-fun res!2120540 () Bool)

(assert (=> d!1598890 (=> (not res!2120540) (not e!3105138))))

(assert (=> d!1598890 (= res!2120540 (= (isDefined!11363 lt!2051435) (isDefined!11362 (maxPrefixZipper!786 thiss!15247 (t!368628 (t!368628 rulesArg!259)) (list!18365 input!1342)))))))

(assert (=> d!1598890 (= lt!2051435 e!3105142)))

(declare-fun c!847634 () Bool)

(assert (=> d!1598890 (= c!847634 (and (is-Cons!57444 (t!368628 (t!368628 rulesArg!259))) (is-Nil!57444 (t!368628 (t!368628 (t!368628 rulesArg!259))))))))

(declare-fun lt!2051434 () Unit!148361)

(declare-fun lt!2051436 () Unit!148361)

(assert (=> d!1598890 (= lt!2051434 lt!2051436)))

(declare-fun lt!2051433 () List!57567)

(declare-fun lt!2051431 () List!57567)

(assert (=> d!1598890 (isPrefix!5244 lt!2051433 lt!2051431)))

(assert (=> d!1598890 (= lt!2051436 (lemmaIsPrefixRefl!3568 lt!2051433 lt!2051431))))

(assert (=> d!1598890 (= lt!2051431 (list!18365 input!1342))))

(assert (=> d!1598890 (= lt!2051433 (list!18365 input!1342))))

(assert (=> d!1598890 (rulesValidInductive!3296 thiss!15247 (t!368628 (t!368628 rulesArg!259)))))

(assert (=> d!1598890 (= (maxPrefixZipperSequenceV2!704 thiss!15247 (t!368628 (t!368628 rulesArg!259)) input!1342 totalInput!464) lt!2051435)))

(declare-fun b!4967866 () Bool)

(assert (=> b!4967866 (= e!3105143 (= (list!18365 (_2!34386 (get!19941 lt!2051435))) (_2!34385 (get!19940 (maxPrefix!4660 thiss!15247 (t!368628 (t!368628 rulesArg!259)) (list!18365 input!1342))))))))

(declare-fun b!4967867 () Bool)

(assert (=> b!4967867 (= e!3105139 (= (list!18365 (_2!34386 (get!19941 lt!2051435))) (_2!34385 (get!19940 (maxPrefixZipper!786 thiss!15247 (t!368628 (t!368628 rulesArg!259)) (list!18365 input!1342))))))))

(declare-fun b!4967868 () Bool)

(assert (=> b!4967868 (= e!3105142 call!346451)))

(declare-fun b!4967869 () Bool)

(assert (=> b!4967869 (= e!3105138 e!3105140)))

(declare-fun res!2120538 () Bool)

(assert (=> b!4967869 (=> res!2120538 e!3105140)))

(assert (=> b!4967869 (= res!2120538 (not (isDefined!11363 lt!2051435)))))

(assert (= (and d!1598890 c!847634) b!4967868))

(assert (= (and d!1598890 (not c!847634)) b!4967864))

(assert (= (or b!4967868 b!4967864) bm!346446))

(assert (= (and d!1598890 res!2120540) b!4967862))

(assert (= (and b!4967862 (not res!2120537)) b!4967865))

(assert (= (and b!4967865 res!2120536) b!4967867))

(assert (= (and b!4967862 res!2120539) b!4967869))

(assert (= (and b!4967869 (not res!2120538)) b!4967863))

(assert (= (and b!4967863 res!2120541) b!4967866))

(declare-fun m!5994184 () Bool)

(assert (=> b!4967869 m!5994184))

(declare-fun m!5994186 () Bool)

(assert (=> bm!346446 m!5994186))

(assert (=> b!4967867 m!5993376))

(assert (=> b!4967867 m!5993376))

(assert (=> b!4967867 m!5993952))

(assert (=> b!4967867 m!5993952))

(declare-fun m!5994188 () Bool)

(assert (=> b!4967867 m!5994188))

(declare-fun m!5994190 () Bool)

(assert (=> b!4967867 m!5994190))

(declare-fun m!5994192 () Bool)

(assert (=> b!4967867 m!5994192))

(assert (=> b!4967862 m!5994184))

(assert (=> b!4967863 m!5994192))

(assert (=> b!4967863 m!5993376))

(assert (=> b!4967863 m!5993376))

(declare-fun m!5994194 () Bool)

(assert (=> b!4967863 m!5994194))

(assert (=> b!4967863 m!5994194))

(declare-fun m!5994196 () Bool)

(assert (=> b!4967863 m!5994196))

(assert (=> b!4967866 m!5993376))

(assert (=> b!4967866 m!5993376))

(assert (=> b!4967866 m!5994194))

(assert (=> b!4967866 m!5994190))

(assert (=> b!4967866 m!5994194))

(assert (=> b!4967866 m!5994196))

(assert (=> b!4967866 m!5994192))

(assert (=> b!4967865 m!5994192))

(assert (=> b!4967865 m!5993376))

(assert (=> b!4967865 m!5993376))

(assert (=> b!4967865 m!5993952))

(assert (=> b!4967865 m!5993952))

(assert (=> b!4967865 m!5994188))

(declare-fun m!5994198 () Bool)

(assert (=> b!4967864 m!5994198))

(declare-fun m!5994200 () Bool)

(assert (=> d!1598890 m!5994200))

(assert (=> d!1598890 m!5993376))

(assert (=> d!1598890 m!5993376))

(assert (=> d!1598890 m!5993952))

(assert (=> d!1598890 m!5994184))

(assert (=> d!1598890 m!5993952))

(declare-fun m!5994202 () Bool)

(assert (=> d!1598890 m!5994202))

(declare-fun m!5994204 () Bool)

(assert (=> d!1598890 m!5994204))

(assert (=> d!1598890 m!5993940))

(assert (=> b!4967275 d!1598890))

(declare-fun b!4967913 () Bool)

(declare-fun e!3105166 () Int)

(declare-fun call!346455 () Int)

(assert (=> b!4967913 (= e!3105166 call!346455)))

(declare-fun b!4967914 () Bool)

(declare-fun e!3105165 () Bool)

(declare-fun lt!2051447 () List!57567)

(assert (=> b!4967914 (= e!3105165 (= (size!38072 lt!2051447) e!3105166))))

(declare-fun c!847655 () Bool)

(assert (=> b!4967914 (= c!847655 (<= (- (size!38072 (list!18365 totalInput!464)) (size!38072 lt!2050949)) 0))))

(declare-fun b!4967915 () Bool)

(declare-fun e!3105169 () Int)

(assert (=> b!4967915 (= e!3105166 e!3105169)))

(declare-fun c!847652 () Bool)

(assert (=> b!4967915 (= c!847652 (>= (- (size!38072 (list!18365 totalInput!464)) (size!38072 lt!2050949)) call!346455))))

(declare-fun d!1598896 () Bool)

(assert (=> d!1598896 e!3105165))

(declare-fun res!2120551 () Bool)

(assert (=> d!1598896 (=> (not res!2120551) (not e!3105165))))

(declare-fun content!10184 (List!57567) (Set C!27502))

(assert (=> d!1598896 (= res!2120551 (set.subset (content!10184 lt!2051447) (content!10184 (list!18365 totalInput!464))))))

(declare-fun e!3105167 () List!57567)

(assert (=> d!1598896 (= lt!2051447 e!3105167)))

(declare-fun c!847653 () Bool)

(assert (=> d!1598896 (= c!847653 (is-Nil!57443 (list!18365 totalInput!464)))))

(assert (=> d!1598896 (= (drop!2349 (list!18365 totalInput!464) (- (size!38072 (list!18365 totalInput!464)) (size!38072 lt!2050949))) lt!2051447)))

(declare-fun b!4967916 () Bool)

(declare-fun e!3105168 () List!57567)

(assert (=> b!4967916 (= e!3105168 (list!18365 totalInput!464))))

(declare-fun b!4967917 () Bool)

(assert (=> b!4967917 (= e!3105168 (drop!2349 (t!368627 (list!18365 totalInput!464)) (- (- (size!38072 (list!18365 totalInput!464)) (size!38072 lt!2050949)) 1)))))

(declare-fun b!4967918 () Bool)

(assert (=> b!4967918 (= e!3105167 Nil!57443)))

(declare-fun b!4967919 () Bool)

(assert (=> b!4967919 (= e!3105169 (- call!346455 (- (size!38072 (list!18365 totalInput!464)) (size!38072 lt!2050949))))))

(declare-fun b!4967920 () Bool)

(assert (=> b!4967920 (= e!3105167 e!3105168)))

(declare-fun c!847654 () Bool)

(assert (=> b!4967920 (= c!847654 (<= (- (size!38072 (list!18365 totalInput!464)) (size!38072 lt!2050949)) 0))))

(declare-fun b!4967921 () Bool)

(assert (=> b!4967921 (= e!3105169 0)))

(declare-fun bm!346450 () Bool)

(assert (=> bm!346450 (= call!346455 (size!38072 (list!18365 totalInput!464)))))

(assert (= (and d!1598896 c!847653) b!4967918))

(assert (= (and d!1598896 (not c!847653)) b!4967920))

(assert (= (and b!4967920 c!847654) b!4967916))

(assert (= (and b!4967920 (not c!847654)) b!4967917))

(assert (= (and d!1598896 res!2120551) b!4967914))

(assert (= (and b!4967914 c!847655) b!4967913))

(assert (= (and b!4967914 (not c!847655)) b!4967915))

(assert (= (and b!4967915 c!847652) b!4967921))

(assert (= (and b!4967915 (not c!847652)) b!4967919))

(assert (= (or b!4967913 b!4967915 b!4967919) bm!346450))

(declare-fun m!5994240 () Bool)

(assert (=> b!4967914 m!5994240))

(declare-fun m!5994242 () Bool)

(assert (=> d!1598896 m!5994242))

(assert (=> d!1598896 m!5993372))

(declare-fun m!5994244 () Bool)

(assert (=> d!1598896 m!5994244))

(declare-fun m!5994246 () Bool)

(assert (=> b!4967917 m!5994246))

(assert (=> bm!346450 m!5993372))

(assert (=> bm!346450 m!5993426))

(assert (=> d!1598676 d!1598896))

(assert (=> d!1598676 d!1598806))

(assert (=> d!1598676 d!1598808))

(declare-fun d!1598902 () Bool)

(declare-fun c!847656 () Bool)

(assert (=> d!1598902 (= c!847656 (is-Node!15145 (left!41900 (c!847515 totalInput!464))))))

(declare-fun e!3105170 () Bool)

(assert (=> d!1598902 (= (inv!75075 (left!41900 (c!847515 totalInput!464))) e!3105170)))

(declare-fun b!4967922 () Bool)

(assert (=> b!4967922 (= e!3105170 (inv!75080 (left!41900 (c!847515 totalInput!464))))))

(declare-fun b!4967923 () Bool)

(declare-fun e!3105171 () Bool)

(assert (=> b!4967923 (= e!3105170 e!3105171)))

(declare-fun res!2120552 () Bool)

(assert (=> b!4967923 (= res!2120552 (not (is-Leaf!25167 (left!41900 (c!847515 totalInput!464)))))))

(assert (=> b!4967923 (=> res!2120552 e!3105171)))

(declare-fun b!4967924 () Bool)

(assert (=> b!4967924 (= e!3105171 (inv!75081 (left!41900 (c!847515 totalInput!464))))))

(assert (= (and d!1598902 c!847656) b!4967922))

(assert (= (and d!1598902 (not c!847656)) b!4967923))

(assert (= (and b!4967923 (not res!2120552)) b!4967924))

(declare-fun m!5994248 () Bool)

(assert (=> b!4967922 m!5994248))

(declare-fun m!5994250 () Bool)

(assert (=> b!4967924 m!5994250))

(assert (=> b!4967420 d!1598902))

(declare-fun d!1598904 () Bool)

(declare-fun c!847657 () Bool)

(assert (=> d!1598904 (= c!847657 (is-Node!15145 (right!42230 (c!847515 totalInput!464))))))

(declare-fun e!3105172 () Bool)

(assert (=> d!1598904 (= (inv!75075 (right!42230 (c!847515 totalInput!464))) e!3105172)))

(declare-fun b!4967925 () Bool)

(assert (=> b!4967925 (= e!3105172 (inv!75080 (right!42230 (c!847515 totalInput!464))))))

(declare-fun b!4967926 () Bool)

(declare-fun e!3105173 () Bool)

(assert (=> b!4967926 (= e!3105172 e!3105173)))

(declare-fun res!2120553 () Bool)

(assert (=> b!4967926 (= res!2120553 (not (is-Leaf!25167 (right!42230 (c!847515 totalInput!464)))))))

(assert (=> b!4967926 (=> res!2120553 e!3105173)))

(declare-fun b!4967927 () Bool)

(assert (=> b!4967927 (= e!3105173 (inv!75081 (right!42230 (c!847515 totalInput!464))))))

(assert (= (and d!1598904 c!847657) b!4967925))

(assert (= (and d!1598904 (not c!847657)) b!4967926))

(assert (= (and b!4967926 (not res!2120553)) b!4967927))

(declare-fun m!5994252 () Bool)

(assert (=> b!4967925 m!5994252))

(declare-fun m!5994254 () Bool)

(assert (=> b!4967927 m!5994254))

(assert (=> b!4967420 d!1598904))

(assert (=> b!4967247 d!1598808))

(assert (=> b!4967129 d!1598682))

(declare-fun b!4967928 () Bool)

(declare-fun e!3105174 () List!57567)

(assert (=> b!4967928 (= e!3105174 Nil!57443)))

(declare-fun b!4967930 () Bool)

(declare-fun e!3105175 () List!57567)

(assert (=> b!4967930 (= e!3105175 (list!18369 (xs!18471 (c!847515 input!1342))))))

(declare-fun b!4967931 () Bool)

(assert (=> b!4967931 (= e!3105175 (++!12532 (list!18367 (left!41900 (c!847515 input!1342))) (list!18367 (right!42230 (c!847515 input!1342)))))))

(declare-fun b!4967929 () Bool)

(assert (=> b!4967929 (= e!3105174 e!3105175)))

(declare-fun c!847659 () Bool)

(assert (=> b!4967929 (= c!847659 (is-Leaf!25167 (c!847515 input!1342)))))

(declare-fun d!1598906 () Bool)

(declare-fun c!847658 () Bool)

(assert (=> d!1598906 (= c!847658 (is-Empty!15145 (c!847515 input!1342)))))

(assert (=> d!1598906 (= (list!18367 (c!847515 input!1342)) e!3105174)))

(assert (= (and d!1598906 c!847658) b!4967928))

(assert (= (and d!1598906 (not c!847658)) b!4967929))

(assert (= (and b!4967929 c!847659) b!4967930))

(assert (= (and b!4967929 (not c!847659)) b!4967931))

(declare-fun m!5994256 () Bool)

(assert (=> b!4967930 m!5994256))

(declare-fun m!5994258 () Bool)

(assert (=> b!4967931 m!5994258))

(declare-fun m!5994260 () Bool)

(assert (=> b!4967931 m!5994260))

(assert (=> b!4967931 m!5994258))

(assert (=> b!4967931 m!5994260))

(declare-fun m!5994262 () Bool)

(assert (=> b!4967931 m!5994262))

(assert (=> d!1598680 d!1598906))

(declare-fun lt!2051452 () Option!14449)

(declare-fun d!1598908 () Bool)

(assert (=> d!1598908 (= lt!2051452 (maxPrefix!4660 thiss!15247 (t!368628 rulesArg!259) lt!2050949))))

(declare-fun e!3105176 () Option!14449)

(assert (=> d!1598908 (= lt!2051452 e!3105176)))

(declare-fun c!847660 () Bool)

(assert (=> d!1598908 (= c!847660 (and (is-Cons!57444 (t!368628 rulesArg!259)) (is-Nil!57444 (t!368628 (t!368628 rulesArg!259)))))))

(declare-fun lt!2051449 () Unit!148361)

(declare-fun lt!2051448 () Unit!148361)

(assert (=> d!1598908 (= lt!2051449 lt!2051448)))

(assert (=> d!1598908 (isPrefix!5244 lt!2050949 lt!2050949)))

(assert (=> d!1598908 (= lt!2051448 (lemmaIsPrefixRefl!3568 lt!2050949 lt!2050949))))

(assert (=> d!1598908 (rulesValidInductive!3296 thiss!15247 (t!368628 rulesArg!259))))

(assert (=> d!1598908 (= (maxPrefixZipper!786 thiss!15247 (t!368628 rulesArg!259) lt!2050949) lt!2051452)))

(declare-fun call!346456 () Option!14449)

(declare-fun bm!346451 () Bool)

(assert (=> bm!346451 (= call!346456 (maxPrefixOneRuleZipper!296 thiss!15247 (h!63892 (t!368628 rulesArg!259)) lt!2050949))))

(declare-fun b!4967932 () Bool)

(assert (=> b!4967932 (= e!3105176 call!346456)))

(declare-fun b!4967933 () Bool)

(declare-fun lt!2051451 () Option!14449)

(declare-fun lt!2051450 () Option!14449)

(assert (=> b!4967933 (= e!3105176 (ite (and (is-None!14448 lt!2051451) (is-None!14448 lt!2051450)) None!14448 (ite (is-None!14448 lt!2051450) lt!2051451 (ite (is-None!14448 lt!2051451) lt!2051450 (ite (>= (size!38070 (_1!34385 (v!50437 lt!2051451))) (size!38070 (_1!34385 (v!50437 lt!2051450)))) lt!2051451 lt!2051450)))))))

(assert (=> b!4967933 (= lt!2051451 call!346456)))

(assert (=> b!4967933 (= lt!2051450 (maxPrefixZipper!786 thiss!15247 (t!368628 (t!368628 rulesArg!259)) lt!2050949))))

(assert (= (and d!1598908 c!847660) b!4967932))

(assert (= (and d!1598908 (not c!847660)) b!4967933))

(assert (= (or b!4967932 b!4967933) bm!346451))

(assert (=> d!1598908 m!5993448))

(assert (=> d!1598908 m!5993340))

(assert (=> d!1598908 m!5993342))

(assert (=> d!1598908 m!5993518))

(declare-fun m!5994264 () Bool)

(assert (=> bm!346451 m!5994264))

(declare-fun m!5994266 () Bool)

(assert (=> b!4967933 m!5994266))

(assert (=> b!4967253 d!1598908))

(assert (=> b!4967280 d!1598820))

(declare-fun d!1598910 () Bool)

(assert (=> d!1598910 (= (head!10668 lt!2050949) (h!63891 lt!2050949))))

(assert (=> b!4967245 d!1598910))

(assert (=> b!4967381 d!1598832))

(assert (=> b!4967231 d!1598814))

(declare-fun d!1598912 () Bool)

(assert (=> d!1598912 (= (apply!13904 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051000))))) (dynLambda!23167 (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051000))))))))

(declare-fun b_lambda!196851 () Bool)

(assert (=> (not b_lambda!196851) (not d!1598912)))

(declare-fun t!368648 () Bool)

(declare-fun tb!260623 () Bool)

(assert (=> (and b!4967137 (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))) t!368648) tb!260623))

(declare-fun result!325734 () Bool)

(assert (=> tb!260623 (= result!325734 (inv!21 (dynLambda!23167 (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051000)))))))))

(declare-fun m!5994268 () Bool)

(assert (=> tb!260623 m!5994268))

(assert (=> d!1598912 t!368648))

(declare-fun b_and!348179 () Bool)

(assert (= b_and!348175 (and (=> t!368648 result!325734) b_and!348179)))

(declare-fun t!368650 () Bool)

(declare-fun tb!260625 () Bool)

(assert (=> (and b!4967394 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))) t!368650) tb!260625))

(declare-fun result!325736 () Bool)

(assert (= result!325736 result!325734))

(assert (=> d!1598912 t!368650))

(declare-fun b_and!348181 () Bool)

(assert (= b_and!348177 (and (=> t!368650 result!325736) b_and!348181)))

(assert (=> d!1598912 m!5993444))

(declare-fun m!5994270 () Bool)

(assert (=> d!1598912 m!5994270))

(assert (=> b!4967231 d!1598912))

(declare-fun d!1598914 () Bool)

(assert (=> d!1598914 (= (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051000)))) (fromListB!2731 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051000)))))))

(declare-fun bs!1183211 () Bool)

(assert (= bs!1183211 d!1598914))

(declare-fun m!5994272 () Bool)

(assert (=> bs!1183211 m!5994272))

(assert (=> b!4967231 d!1598914))

(assert (=> b!4967131 d!1598728))

(declare-fun b!4967934 () Bool)

(declare-fun e!3105179 () Option!14449)

(declare-fun lt!2051455 () Option!14449)

(declare-fun lt!2051456 () Option!14449)

(assert (=> b!4967934 (= e!3105179 (ite (and (is-None!14448 lt!2051455) (is-None!14448 lt!2051456)) None!14448 (ite (is-None!14448 lt!2051456) lt!2051455 (ite (is-None!14448 lt!2051455) lt!2051456 (ite (>= (size!38070 (_1!34385 (v!50437 lt!2051455))) (size!38070 (_1!34385 (v!50437 lt!2051456)))) lt!2051455 lt!2051456)))))))

(declare-fun call!346457 () Option!14449)

(assert (=> b!4967934 (= lt!2051455 call!346457)))

(assert (=> b!4967934 (= lt!2051456 (maxPrefix!4660 thiss!15247 (t!368628 (t!368628 rulesArg!259)) lt!2050949))))

(declare-fun b!4967935 () Bool)

(declare-fun e!3105180 () Bool)

(declare-fun lt!2051453 () Option!14449)

(assert (=> b!4967935 (= e!3105180 (contains!19538 (t!368628 rulesArg!259) (rule!11637 (_1!34385 (get!19940 lt!2051453)))))))

(declare-fun b!4967936 () Bool)

(assert (=> b!4967936 (= e!3105179 call!346457)))

(declare-fun b!4967937 () Bool)

(declare-fun e!3105178 () Bool)

(assert (=> b!4967937 (= e!3105178 e!3105180)))

(declare-fun res!2120558 () Bool)

(assert (=> b!4967937 (=> (not res!2120558) (not e!3105180))))

(assert (=> b!4967937 (= res!2120558 (isDefined!11362 lt!2051453))))

(declare-fun b!4967938 () Bool)

(declare-fun res!2120554 () Bool)

(assert (=> b!4967938 (=> (not res!2120554) (not e!3105180))))

(assert (=> b!4967938 (= res!2120554 (= (value!268642 (_1!34385 (get!19940 lt!2051453))) (apply!13904 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453)))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051453)))))))))

(declare-fun b!4967939 () Bool)

(declare-fun res!2120555 () Bool)

(assert (=> b!4967939 (=> (not res!2120555) (not e!3105180))))

(assert (=> b!4967939 (= res!2120555 (< (size!38072 (_2!34385 (get!19940 lt!2051453))) (size!38072 lt!2050949)))))

(declare-fun b!4967940 () Bool)

(declare-fun res!2120559 () Bool)

(assert (=> b!4967940 (=> (not res!2120559) (not e!3105180))))

(assert (=> b!4967940 (= res!2120559 (= (++!12532 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051453)))) (_2!34385 (get!19940 lt!2051453))) lt!2050949))))

(declare-fun d!1598916 () Bool)

(assert (=> d!1598916 e!3105178))

(declare-fun res!2120556 () Bool)

(assert (=> d!1598916 (=> res!2120556 e!3105178)))

(assert (=> d!1598916 (= res!2120556 (isEmpty!30935 lt!2051453))))

(assert (=> d!1598916 (= lt!2051453 e!3105179)))

(declare-fun c!847661 () Bool)

(assert (=> d!1598916 (= c!847661 (and (is-Cons!57444 (t!368628 rulesArg!259)) (is-Nil!57444 (t!368628 (t!368628 rulesArg!259)))))))

(declare-fun lt!2051454 () Unit!148361)

(declare-fun lt!2051457 () Unit!148361)

(assert (=> d!1598916 (= lt!2051454 lt!2051457)))

(assert (=> d!1598916 (isPrefix!5244 lt!2050949 lt!2050949)))

(assert (=> d!1598916 (= lt!2051457 (lemmaIsPrefixRefl!3568 lt!2050949 lt!2050949))))

(assert (=> d!1598916 (rulesValidInductive!3296 thiss!15247 (t!368628 rulesArg!259))))

(assert (=> d!1598916 (= (maxPrefix!4660 thiss!15247 (t!368628 rulesArg!259) lt!2050949) lt!2051453)))

(declare-fun b!4967941 () Bool)

(declare-fun res!2120557 () Bool)

(assert (=> b!4967941 (=> (not res!2120557) (not e!3105180))))

(assert (=> b!4967941 (= res!2120557 (= (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051453)))) (originalCharacters!8672 (_1!34385 (get!19940 lt!2051453)))))))

(declare-fun bm!346452 () Bool)

(assert (=> bm!346452 (= call!346457 (maxPrefixOneRule!3629 thiss!15247 (h!63892 (t!368628 rulesArg!259)) lt!2050949))))

(declare-fun b!4967942 () Bool)

(declare-fun res!2120560 () Bool)

(assert (=> b!4967942 (=> (not res!2120560) (not e!3105180))))

(assert (=> b!4967942 (= res!2120560 (matchR!6636 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453)))) (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051453))))))))

(assert (= (and d!1598916 c!847661) b!4967936))

(assert (= (and d!1598916 (not c!847661)) b!4967934))

(assert (= (or b!4967936 b!4967934) bm!346452))

(assert (= (and d!1598916 (not res!2120556)) b!4967937))

(assert (= (and b!4967937 res!2120558) b!4967941))

(assert (= (and b!4967941 res!2120557) b!4967939))

(assert (= (and b!4967939 res!2120555) b!4967940))

(assert (= (and b!4967940 res!2120559) b!4967938))

(assert (= (and b!4967938 res!2120554) b!4967942))

(assert (= (and b!4967942 res!2120560) b!4967935))

(declare-fun m!5994274 () Bool)

(assert (=> b!4967938 m!5994274))

(declare-fun m!5994276 () Bool)

(assert (=> b!4967938 m!5994276))

(assert (=> b!4967938 m!5994276))

(declare-fun m!5994278 () Bool)

(assert (=> b!4967938 m!5994278))

(declare-fun m!5994280 () Bool)

(assert (=> b!4967934 m!5994280))

(assert (=> b!4967942 m!5994274))

(declare-fun m!5994282 () Bool)

(assert (=> b!4967942 m!5994282))

(assert (=> b!4967942 m!5994282))

(declare-fun m!5994284 () Bool)

(assert (=> b!4967942 m!5994284))

(assert (=> b!4967942 m!5994284))

(declare-fun m!5994286 () Bool)

(assert (=> b!4967942 m!5994286))

(assert (=> b!4967941 m!5994274))

(assert (=> b!4967941 m!5994282))

(assert (=> b!4967941 m!5994282))

(assert (=> b!4967941 m!5994284))

(declare-fun m!5994288 () Bool)

(assert (=> b!4967937 m!5994288))

(assert (=> b!4967940 m!5994274))

(assert (=> b!4967940 m!5994282))

(assert (=> b!4967940 m!5994282))

(assert (=> b!4967940 m!5994284))

(assert (=> b!4967940 m!5994284))

(declare-fun m!5994290 () Bool)

(assert (=> b!4967940 m!5994290))

(declare-fun m!5994292 () Bool)

(assert (=> d!1598916 m!5994292))

(assert (=> d!1598916 m!5993340))

(assert (=> d!1598916 m!5993342))

(assert (=> d!1598916 m!5993518))

(assert (=> b!4967939 m!5994274))

(declare-fun m!5994294 () Bool)

(assert (=> b!4967939 m!5994294))

(assert (=> b!4967939 m!5993428))

(assert (=> b!4967935 m!5994274))

(declare-fun m!5994296 () Bool)

(assert (=> b!4967935 m!5994296))

(declare-fun m!5994298 () Bool)

(assert (=> bm!346452 m!5994298))

(assert (=> b!4967227 d!1598916))

(declare-fun d!1598918 () Bool)

(assert (=> d!1598918 (= (isEmpty!30935 lt!2050950) (not (is-Some!14448 lt!2050950)))))

(assert (=> d!1598706 d!1598918))

(declare-fun d!1598920 () Bool)

(assert (=> d!1598920 (= (inv!75071 (tag!9257 (h!63892 (t!368628 rulesArg!259)))) (= (mod (str.len (value!268641 (tag!9257 (h!63892 (t!368628 rulesArg!259))))) 2) 0))))

(assert (=> b!4967393 d!1598920))

(declare-fun d!1598922 () Bool)

(declare-fun res!2120561 () Bool)

(declare-fun e!3105181 () Bool)

(assert (=> d!1598922 (=> (not res!2120561) (not e!3105181))))

(assert (=> d!1598922 (= res!2120561 (semiInverseModEq!3700 (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))))))

(assert (=> d!1598922 (= (inv!75076 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) e!3105181)))

(declare-fun b!4967943 () Bool)

(assert (=> b!4967943 (= e!3105181 (equivClasses!3548 (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))))))

(assert (= (and d!1598922 res!2120561) b!4967943))

(declare-fun m!5994300 () Bool)

(assert (=> d!1598922 m!5994300))

(declare-fun m!5994302 () Bool)

(assert (=> b!4967943 m!5994302))

(assert (=> b!4967393 d!1598922))

(assert (=> b!4967350 d!1598828))

(assert (=> b!4967350 d!1598680))

(assert (=> b!4967350 d!1598800))

(declare-fun d!1598924 () Bool)

(assert (=> d!1598924 (= (list!18365 (_2!34386 (get!19941 lt!2051118))) (list!18367 (c!847515 (_2!34386 (get!19941 lt!2051118)))))))

(declare-fun bs!1183212 () Bool)

(assert (= bs!1183212 d!1598924))

(declare-fun m!5994304 () Bool)

(assert (=> bs!1183212 m!5994304))

(assert (=> b!4967350 d!1598924))

(assert (=> b!4967350 d!1598830))

(declare-fun bs!1183213 () Bool)

(declare-fun d!1598926 () Bool)

(assert (= bs!1183213 (and d!1598926 b!4967347)))

(declare-fun lambda!247383 () Int)

(assert (=> bs!1183213 (= lambda!247383 lambda!247368)))

(declare-fun bs!1183214 () Bool)

(assert (= bs!1183214 (and d!1598926 b!4967852)))

(assert (=> bs!1183214 (= (and (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))))) (= lambda!247383 lambda!247380))))

(assert (=> d!1598926 true))

(assert (=> d!1598926 (< (dynLambda!23161 order!26207 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) (dynLambda!23160 order!26205 lambda!247383))))

(assert (=> d!1598926 true))

(assert (=> d!1598926 (< (dynLambda!23159 order!26203 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) (dynLambda!23160 order!26205 lambda!247383))))

(assert (=> d!1598926 (= (semiInverseModEq!3700 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) (Forall!1762 lambda!247383))))

(declare-fun bs!1183215 () Bool)

(assert (= bs!1183215 d!1598926))

(declare-fun m!5994306 () Bool)

(assert (=> bs!1183215 m!5994306))

(assert (=> d!1598714 d!1598926))

(declare-fun d!1598928 () Bool)

(assert (=> d!1598928 (= (inv!75082 (xs!18471 (c!847515 input!1342))) (<= (size!38072 (innerList!15233 (xs!18471 (c!847515 input!1342)))) 2147483647))))

(declare-fun bs!1183216 () Bool)

(assert (= bs!1183216 d!1598928))

(declare-fun m!5994308 () Bool)

(assert (=> bs!1183216 m!5994308))

(assert (=> b!4967418 d!1598928))

(declare-fun b!4967948 () Bool)

(declare-fun e!3105185 () Bool)

(declare-fun lt!2051458 () Bool)

(declare-fun call!346458 () Bool)

(assert (=> b!4967948 (= e!3105185 (= lt!2051458 call!346458))))

(declare-fun b!4967949 () Bool)

(declare-fun res!2120564 () Bool)

(declare-fun e!3105182 () Bool)

(assert (=> b!4967949 (=> (not res!2120564) (not e!3105182))))

(assert (=> b!4967949 (= res!2120564 (isEmpty!30938 (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120))))))))

(declare-fun b!4967950 () Bool)

(assert (=> b!4967950 (= e!3105182 (= (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))) (c!847514 (regex!8393 (h!63892 rulesArg!259)))))))

(declare-fun b!4967951 () Bool)

(declare-fun e!3105184 () Bool)

(assert (=> b!4967951 (= e!3105184 (not lt!2051458))))

(declare-fun b!4967952 () Bool)

(declare-fun e!3105188 () Bool)

(assert (=> b!4967952 (= e!3105188 (matchR!6636 (derivativeStep!3922 (regex!8393 (h!63892 rulesArg!259)) (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120))))) (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120))))))))

(declare-fun bm!346453 () Bool)

(assert (=> bm!346453 (= call!346458 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))))))

(declare-fun b!4967953 () Bool)

(declare-fun res!2120562 () Bool)

(assert (=> b!4967953 (=> (not res!2120562) (not e!3105182))))

(assert (=> b!4967953 (= res!2120562 (not call!346458))))

(declare-fun b!4967954 () Bool)

(declare-fun e!3105186 () Bool)

(declare-fun e!3105187 () Bool)

(assert (=> b!4967954 (= e!3105186 e!3105187)))

(declare-fun res!2120563 () Bool)

(assert (=> b!4967954 (=> (not res!2120563) (not e!3105187))))

(assert (=> b!4967954 (= res!2120563 (not lt!2051458))))

(declare-fun b!4967955 () Bool)

(declare-fun res!2120565 () Bool)

(declare-fun e!3105183 () Bool)

(assert (=> b!4967955 (=> res!2120565 e!3105183)))

(assert (=> b!4967955 (= res!2120565 (not (isEmpty!30938 (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))))))))

(declare-fun b!4967956 () Bool)

(assert (=> b!4967956 (= e!3105188 (nullable!4620 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun b!4967957 () Bool)

(assert (=> b!4967957 (= e!3105183 (not (= (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))) (c!847514 (regex!8393 (h!63892 rulesArg!259))))))))

(declare-fun b!4967958 () Bool)

(declare-fun res!2120569 () Bool)

(assert (=> b!4967958 (=> res!2120569 e!3105186)))

(assert (=> b!4967958 (= res!2120569 e!3105182)))

(declare-fun res!2120567 () Bool)

(assert (=> b!4967958 (=> (not res!2120567) (not e!3105182))))

(assert (=> b!4967958 (= res!2120567 lt!2051458)))

(declare-fun b!4967959 () Bool)

(assert (=> b!4967959 (= e!3105185 e!3105184)))

(declare-fun c!847664 () Bool)

(assert (=> b!4967959 (= c!847664 (is-EmptyLang!13626 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun d!1598930 () Bool)

(assert (=> d!1598930 e!3105185))

(declare-fun c!847663 () Bool)

(assert (=> d!1598930 (= c!847663 (is-EmptyExpr!13626 (regex!8393 (h!63892 rulesArg!259))))))

(assert (=> d!1598930 (= lt!2051458 e!3105188)))

(declare-fun c!847662 () Bool)

(assert (=> d!1598930 (= c!847662 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))))))

(assert (=> d!1598930 (validRegex!5969 (regex!8393 (h!63892 rulesArg!259)))))

(assert (=> d!1598930 (= (matchR!6636 (regex!8393 (h!63892 rulesArg!259)) (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))) lt!2051458)))

(declare-fun b!4967960 () Bool)

(declare-fun res!2120568 () Bool)

(assert (=> b!4967960 (=> res!2120568 e!3105186)))

(assert (=> b!4967960 (= res!2120568 (not (is-ElementMatch!13626 (regex!8393 (h!63892 rulesArg!259)))))))

(assert (=> b!4967960 (= e!3105184 e!3105186)))

(declare-fun b!4967961 () Bool)

(assert (=> b!4967961 (= e!3105187 e!3105183)))

(declare-fun res!2120566 () Bool)

(assert (=> b!4967961 (=> res!2120566 e!3105183)))

(assert (=> b!4967961 (= res!2120566 call!346458)))

(assert (= (and d!1598930 c!847662) b!4967956))

(assert (= (and d!1598930 (not c!847662)) b!4967952))

(assert (= (and d!1598930 c!847663) b!4967948))

(assert (= (and d!1598930 (not c!847663)) b!4967959))

(assert (= (and b!4967959 c!847664) b!4967951))

(assert (= (and b!4967959 (not c!847664)) b!4967960))

(assert (= (and b!4967960 (not res!2120568)) b!4967958))

(assert (= (and b!4967958 res!2120567) b!4967953))

(assert (= (and b!4967953 res!2120562) b!4967949))

(assert (= (and b!4967949 res!2120564) b!4967950))

(assert (= (and b!4967958 (not res!2120569)) b!4967954))

(assert (= (and b!4967954 res!2120563) b!4967961))

(assert (= (and b!4967961 (not res!2120566)) b!4967955))

(assert (= (and b!4967955 (not res!2120565)) b!4967957))

(assert (= (or b!4967948 b!4967953 b!4967961) bm!346453))

(declare-fun m!5994310 () Bool)

(assert (=> b!4967952 m!5994310))

(assert (=> b!4967952 m!5994310))

(declare-fun m!5994312 () Bool)

(assert (=> b!4967952 m!5994312))

(declare-fun m!5994314 () Bool)

(assert (=> b!4967952 m!5994314))

(assert (=> b!4967952 m!5994312))

(assert (=> b!4967952 m!5994314))

(declare-fun m!5994316 () Bool)

(assert (=> b!4967952 m!5994316))

(assert (=> b!4967957 m!5994310))

(assert (=> b!4967955 m!5994314))

(assert (=> b!4967955 m!5994314))

(declare-fun m!5994318 () Bool)

(assert (=> b!4967955 m!5994318))

(assert (=> b!4967950 m!5994310))

(assert (=> b!4967956 m!5993830))

(assert (=> b!4967949 m!5994314))

(assert (=> b!4967949 m!5994314))

(assert (=> b!4967949 m!5994318))

(assert (=> bm!346453 m!5993580))

(assert (=> d!1598930 m!5993580))

(assert (=> d!1598930 m!5993828))

(assert (=> b!4967348 d!1598930))

(assert (=> b!4967348 d!1598860))

(assert (=> b!4967348 d!1598850))

(assert (=> b!4967348 d!1598848))

(declare-fun d!1598932 () Bool)

(declare-fun e!3105190 () Bool)

(assert (=> d!1598932 e!3105190))

(declare-fun res!2120575 () Bool)

(assert (=> d!1598932 (=> res!2120575 e!3105190)))

(declare-fun lt!2051463 () Option!14449)

(assert (=> d!1598932 (= res!2120575 (isEmpty!30935 lt!2051463))))

(declare-fun e!3105192 () Option!14449)

(assert (=> d!1598932 (= lt!2051463 e!3105192)))

(declare-fun c!847665 () Bool)

(declare-fun lt!2051460 () tuple2!62174)

(assert (=> d!1598932 (= c!847665 (isEmpty!30938 (_1!34390 lt!2051460)))))

(assert (=> d!1598932 (= lt!2051460 (findLongestMatch!1697 (regex!8393 (h!63892 rulesArg!259)) lt!2050949))))

(assert (=> d!1598932 (ruleValid!3802 thiss!15247 (h!63892 rulesArg!259))))

(assert (=> d!1598932 (= (maxPrefixOneRule!3629 thiss!15247 (h!63892 rulesArg!259) lt!2050949) lt!2051463)))

(declare-fun b!4967962 () Bool)

(declare-fun res!2120571 () Bool)

(declare-fun e!3105191 () Bool)

(assert (=> b!4967962 (=> (not res!2120571) (not e!3105191))))

(assert (=> b!4967962 (= res!2120571 (< (size!38072 (_2!34385 (get!19940 lt!2051463))) (size!38072 lt!2050949)))))

(declare-fun b!4967963 () Bool)

(declare-fun e!3105189 () Bool)

(assert (=> b!4967963 (= e!3105189 (matchR!6636 (regex!8393 (h!63892 rulesArg!259)) (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949)))))))

(declare-fun b!4967964 () Bool)

(declare-fun res!2120576 () Bool)

(assert (=> b!4967964 (=> (not res!2120576) (not e!3105191))))

(assert (=> b!4967964 (= res!2120576 (= (value!268642 (_1!34385 (get!19940 lt!2051463))) (apply!13904 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051463)))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051463)))))))))

(declare-fun b!4967965 () Bool)

(assert (=> b!4967965 (= e!3105192 (Some!14448 (tuple2!62165 (Token!15283 (apply!13904 (transformation!8393 (h!63892 rulesArg!259)) (seqFromList!6036 (_1!34390 lt!2051460))) (h!63892 rulesArg!259) (size!38073 (seqFromList!6036 (_1!34390 lt!2051460))) (_1!34390 lt!2051460)) (_2!34390 lt!2051460))))))

(declare-fun lt!2051459 () Unit!148361)

(assert (=> b!4967965 (= lt!2051459 (longestMatchIsAcceptedByMatchOrIsEmpty!1816 (regex!8393 (h!63892 rulesArg!259)) lt!2050949))))

(declare-fun res!2120572 () Bool)

(assert (=> b!4967965 (= res!2120572 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949)))))))

(assert (=> b!4967965 (=> res!2120572 e!3105189)))

(assert (=> b!4967965 e!3105189))

(declare-fun lt!2051461 () Unit!148361)

(assert (=> b!4967965 (= lt!2051461 lt!2051459)))

(declare-fun lt!2051462 () Unit!148361)

(assert (=> b!4967965 (= lt!2051462 (lemmaSemiInverse!2602 (transformation!8393 (h!63892 rulesArg!259)) (seqFromList!6036 (_1!34390 lt!2051460))))))

(declare-fun b!4967966 () Bool)

(declare-fun res!2120570 () Bool)

(assert (=> b!4967966 (=> (not res!2120570) (not e!3105191))))

(assert (=> b!4967966 (= res!2120570 (= (rule!11637 (_1!34385 (get!19940 lt!2051463))) (h!63892 rulesArg!259)))))

(declare-fun b!4967967 () Bool)

(declare-fun res!2120573 () Bool)

(assert (=> b!4967967 (=> (not res!2120573) (not e!3105191))))

(assert (=> b!4967967 (= res!2120573 (= (++!12532 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051463)))) (_2!34385 (get!19940 lt!2051463))) lt!2050949))))

(declare-fun b!4967968 () Bool)

(assert (=> b!4967968 (= e!3105192 None!14448)))

(declare-fun b!4967969 () Bool)

(assert (=> b!4967969 (= e!3105190 e!3105191)))

(declare-fun res!2120574 () Bool)

(assert (=> b!4967969 (=> (not res!2120574) (not e!3105191))))

(assert (=> b!4967969 (= res!2120574 (matchR!6636 (regex!8393 (h!63892 rulesArg!259)) (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051463))))))))

(declare-fun b!4967970 () Bool)

(assert (=> b!4967970 (= e!3105191 (= (size!38070 (_1!34385 (get!19940 lt!2051463))) (size!38072 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051463))))))))

(assert (= (and d!1598932 c!847665) b!4967968))

(assert (= (and d!1598932 (not c!847665)) b!4967965))

(assert (= (and b!4967965 (not res!2120572)) b!4967963))

(assert (= (and d!1598932 (not res!2120575)) b!4967969))

(assert (= (and b!4967969 res!2120574) b!4967967))

(assert (= (and b!4967967 res!2120573) b!4967962))

(assert (= (and b!4967962 res!2120571) b!4967966))

(assert (= (and b!4967966 res!2120570) b!4967964))

(assert (= (and b!4967964 res!2120576) b!4967970))

(declare-fun m!5994320 () Bool)

(assert (=> b!4967967 m!5994320))

(declare-fun m!5994322 () Bool)

(assert (=> b!4967967 m!5994322))

(assert (=> b!4967967 m!5994322))

(declare-fun m!5994324 () Bool)

(assert (=> b!4967967 m!5994324))

(assert (=> b!4967967 m!5994324))

(declare-fun m!5994326 () Bool)

(assert (=> b!4967967 m!5994326))

(assert (=> b!4967962 m!5994320))

(declare-fun m!5994328 () Bool)

(assert (=> b!4967962 m!5994328))

(assert (=> b!4967962 m!5993428))

(assert (=> b!4967970 m!5994320))

(declare-fun m!5994330 () Bool)

(assert (=> b!4967970 m!5994330))

(assert (=> b!4967966 m!5994320))

(declare-fun m!5994332 () Bool)

(assert (=> d!1598932 m!5994332))

(declare-fun m!5994334 () Bool)

(assert (=> d!1598932 m!5994334))

(declare-fun m!5994336 () Bool)

(assert (=> d!1598932 m!5994336))

(assert (=> d!1598932 m!5993602))

(assert (=> b!4967969 m!5994320))

(assert (=> b!4967969 m!5994322))

(assert (=> b!4967969 m!5994322))

(assert (=> b!4967969 m!5994324))

(assert (=> b!4967969 m!5994324))

(declare-fun m!5994338 () Bool)

(assert (=> b!4967969 m!5994338))

(assert (=> b!4967964 m!5994320))

(declare-fun m!5994340 () Bool)

(assert (=> b!4967964 m!5994340))

(assert (=> b!4967964 m!5994340))

(declare-fun m!5994342 () Bool)

(assert (=> b!4967964 m!5994342))

(declare-fun m!5994344 () Bool)

(assert (=> b!4967965 m!5994344))

(declare-fun m!5994346 () Bool)

(assert (=> b!4967965 m!5994346))

(assert (=> b!4967965 m!5994344))

(assert (=> b!4967965 m!5993428))

(assert (=> b!4967965 m!5993574))

(assert (=> b!4967965 m!5993758))

(assert (=> b!4967965 m!5994344))

(declare-fun m!5994348 () Bool)

(assert (=> b!4967965 m!5994348))

(assert (=> b!4967965 m!5993574))

(assert (=> b!4967965 m!5993428))

(assert (=> b!4967965 m!5993762))

(assert (=> b!4967965 m!5994344))

(declare-fun m!5994350 () Bool)

(assert (=> b!4967965 m!5994350))

(assert (=> b!4967965 m!5993760))

(assert (=> b!4967963 m!5993574))

(assert (=> b!4967963 m!5993428))

(assert (=> b!4967963 m!5993574))

(assert (=> b!4967963 m!5993428))

(assert (=> b!4967963 m!5993762))

(assert (=> b!4967963 m!5993768))

(assert (=> bm!346375 d!1598932))

(declare-fun b!4967980 () Bool)

(declare-fun e!3105198 () List!57567)

(assert (=> b!4967980 (= e!3105198 (Cons!57443 (h!63891 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))) (++!12532 (t!368627 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))) (_2!34385 (get!19940 lt!2051000)))))))

(declare-fun b!4967982 () Bool)

(declare-fun e!3105197 () Bool)

(declare-fun lt!2051466 () List!57567)

(assert (=> b!4967982 (= e!3105197 (or (not (= (_2!34385 (get!19940 lt!2051000)) Nil!57443)) (= lt!2051466 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))))))

(declare-fun b!4967979 () Bool)

(assert (=> b!4967979 (= e!3105198 (_2!34385 (get!19940 lt!2051000)))))

(declare-fun d!1598934 () Bool)

(assert (=> d!1598934 e!3105197))

(declare-fun res!2120581 () Bool)

(assert (=> d!1598934 (=> (not res!2120581) (not e!3105197))))

(assert (=> d!1598934 (= res!2120581 (= (content!10184 lt!2051466) (set.union (content!10184 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))) (content!10184 (_2!34385 (get!19940 lt!2051000))))))))

(assert (=> d!1598934 (= lt!2051466 e!3105198)))

(declare-fun c!847668 () Bool)

(assert (=> d!1598934 (= c!847668 (is-Nil!57443 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))

(assert (=> d!1598934 (= (++!12532 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))) (_2!34385 (get!19940 lt!2051000))) lt!2051466)))

(declare-fun b!4967981 () Bool)

(declare-fun res!2120582 () Bool)

(assert (=> b!4967981 (=> (not res!2120582) (not e!3105197))))

(assert (=> b!4967981 (= res!2120582 (= (size!38072 lt!2051466) (+ (size!38072 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))) (size!38072 (_2!34385 (get!19940 lt!2051000))))))))

(assert (= (and d!1598934 c!847668) b!4967979))

(assert (= (and d!1598934 (not c!847668)) b!4967980))

(assert (= (and d!1598934 res!2120581) b!4967981))

(assert (= (and b!4967981 res!2120582) b!4967982))

(declare-fun m!5994352 () Bool)

(assert (=> b!4967980 m!5994352))

(declare-fun m!5994354 () Bool)

(assert (=> d!1598934 m!5994354))

(assert (=> d!1598934 m!5993452))

(declare-fun m!5994356 () Bool)

(assert (=> d!1598934 m!5994356))

(declare-fun m!5994358 () Bool)

(assert (=> d!1598934 m!5994358))

(declare-fun m!5994360 () Bool)

(assert (=> b!4967981 m!5994360))

(assert (=> b!4967981 m!5993452))

(declare-fun m!5994362 () Bool)

(assert (=> b!4967981 m!5994362))

(assert (=> b!4967981 m!5993462))

(assert (=> b!4967233 d!1598934))

(assert (=> b!4967233 d!1598824))

(assert (=> b!4967233 d!1598826))

(assert (=> b!4967233 d!1598814))

(assert (=> d!1598700 d!1598698))

(declare-fun d!1598936 () Bool)

(assert (=> d!1598936 (isPrefix!5244 lt!2050949 lt!2050949)))

(assert (=> d!1598936 true))

(declare-fun _$45!2274 () Unit!148361)

(assert (=> d!1598936 (= (choose!36668 lt!2050949 lt!2050949) _$45!2274)))

(declare-fun bs!1183217 () Bool)

(assert (= bs!1183217 d!1598936))

(assert (=> bs!1183217 m!5993340))

(assert (=> d!1598700 d!1598936))

(assert (=> b!4967346 d!1598802))

(assert (=> b!4967277 d!1598880))

(declare-fun b!4967983 () Bool)

(declare-fun e!3105200 () Option!14449)

(declare-fun lt!2051469 () Option!14449)

(declare-fun lt!2051470 () Option!14449)

(assert (=> b!4967983 (= e!3105200 (ite (and (is-None!14448 lt!2051469) (is-None!14448 lt!2051470)) None!14448 (ite (is-None!14448 lt!2051470) lt!2051469 (ite (is-None!14448 lt!2051469) lt!2051470 (ite (>= (size!38070 (_1!34385 (v!50437 lt!2051469))) (size!38070 (_1!34385 (v!50437 lt!2051470)))) lt!2051469 lt!2051470)))))))

(declare-fun call!346459 () Option!14449)

(assert (=> b!4967983 (= lt!2051469 call!346459)))

(assert (=> b!4967983 (= lt!2051470 (maxPrefix!4660 thiss!15247 (t!368628 (t!368628 rulesArg!259)) (list!18365 input!1342)))))

(declare-fun b!4967984 () Bool)

(declare-fun e!3105201 () Bool)

(declare-fun lt!2051467 () Option!14449)

(assert (=> b!4967984 (= e!3105201 (contains!19538 (t!368628 rulesArg!259) (rule!11637 (_1!34385 (get!19940 lt!2051467)))))))

(declare-fun b!4967985 () Bool)

(assert (=> b!4967985 (= e!3105200 call!346459)))

(declare-fun b!4967986 () Bool)

(declare-fun e!3105199 () Bool)

(assert (=> b!4967986 (= e!3105199 e!3105201)))

(declare-fun res!2120587 () Bool)

(assert (=> b!4967986 (=> (not res!2120587) (not e!3105201))))

(assert (=> b!4967986 (= res!2120587 (isDefined!11362 lt!2051467))))

(declare-fun b!4967987 () Bool)

(declare-fun res!2120583 () Bool)

(assert (=> b!4967987 (=> (not res!2120583) (not e!3105201))))

(assert (=> b!4967987 (= res!2120583 (= (value!268642 (_1!34385 (get!19940 lt!2051467))) (apply!13904 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467)))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051467)))))))))

(declare-fun b!4967988 () Bool)

(declare-fun res!2120584 () Bool)

(assert (=> b!4967988 (=> (not res!2120584) (not e!3105201))))

(assert (=> b!4967988 (= res!2120584 (< (size!38072 (_2!34385 (get!19940 lt!2051467))) (size!38072 (list!18365 input!1342))))))

(declare-fun b!4967989 () Bool)

(declare-fun res!2120588 () Bool)

(assert (=> b!4967989 (=> (not res!2120588) (not e!3105201))))

(assert (=> b!4967989 (= res!2120588 (= (++!12532 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051467)))) (_2!34385 (get!19940 lt!2051467))) (list!18365 input!1342)))))

(declare-fun d!1598938 () Bool)

(assert (=> d!1598938 e!3105199))

(declare-fun res!2120585 () Bool)

(assert (=> d!1598938 (=> res!2120585 e!3105199)))

(assert (=> d!1598938 (= res!2120585 (isEmpty!30935 lt!2051467))))

(assert (=> d!1598938 (= lt!2051467 e!3105200)))

(declare-fun c!847669 () Bool)

(assert (=> d!1598938 (= c!847669 (and (is-Cons!57444 (t!368628 rulesArg!259)) (is-Nil!57444 (t!368628 (t!368628 rulesArg!259)))))))

(declare-fun lt!2051468 () Unit!148361)

(declare-fun lt!2051471 () Unit!148361)

(assert (=> d!1598938 (= lt!2051468 lt!2051471)))

(assert (=> d!1598938 (isPrefix!5244 (list!18365 input!1342) (list!18365 input!1342))))

(assert (=> d!1598938 (= lt!2051471 (lemmaIsPrefixRefl!3568 (list!18365 input!1342) (list!18365 input!1342)))))

(assert (=> d!1598938 (rulesValidInductive!3296 thiss!15247 (t!368628 rulesArg!259))))

(assert (=> d!1598938 (= (maxPrefix!4660 thiss!15247 (t!368628 rulesArg!259) (list!18365 input!1342)) lt!2051467)))

(declare-fun b!4967990 () Bool)

(declare-fun res!2120586 () Bool)

(assert (=> b!4967990 (=> (not res!2120586) (not e!3105201))))

(assert (=> b!4967990 (= res!2120586 (= (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051467)))) (originalCharacters!8672 (_1!34385 (get!19940 lt!2051467)))))))

(declare-fun bm!346454 () Bool)

(assert (=> bm!346454 (= call!346459 (maxPrefixOneRule!3629 thiss!15247 (h!63892 (t!368628 rulesArg!259)) (list!18365 input!1342)))))

(declare-fun b!4967991 () Bool)

(declare-fun res!2120589 () Bool)

(assert (=> b!4967991 (=> (not res!2120589) (not e!3105201))))

(assert (=> b!4967991 (= res!2120589 (matchR!6636 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467)))) (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051467))))))))

(assert (= (and d!1598938 c!847669) b!4967985))

(assert (= (and d!1598938 (not c!847669)) b!4967983))

(assert (= (or b!4967985 b!4967983) bm!346454))

(assert (= (and d!1598938 (not res!2120585)) b!4967986))

(assert (= (and b!4967986 res!2120587) b!4967990))

(assert (= (and b!4967990 res!2120586) b!4967988))

(assert (= (and b!4967988 res!2120584) b!4967989))

(assert (= (and b!4967989 res!2120588) b!4967987))

(assert (= (and b!4967987 res!2120583) b!4967991))

(assert (= (and b!4967991 res!2120589) b!4967984))

(declare-fun m!5994364 () Bool)

(assert (=> b!4967987 m!5994364))

(declare-fun m!5994366 () Bool)

(assert (=> b!4967987 m!5994366))

(assert (=> b!4967987 m!5994366))

(declare-fun m!5994368 () Bool)

(assert (=> b!4967987 m!5994368))

(assert (=> b!4967983 m!5993376))

(assert (=> b!4967983 m!5994194))

(assert (=> b!4967991 m!5994364))

(declare-fun m!5994370 () Bool)

(assert (=> b!4967991 m!5994370))

(assert (=> b!4967991 m!5994370))

(declare-fun m!5994372 () Bool)

(assert (=> b!4967991 m!5994372))

(assert (=> b!4967991 m!5994372))

(declare-fun m!5994374 () Bool)

(assert (=> b!4967991 m!5994374))

(assert (=> b!4967990 m!5994364))

(assert (=> b!4967990 m!5994370))

(assert (=> b!4967990 m!5994370))

(assert (=> b!4967990 m!5994372))

(declare-fun m!5994376 () Bool)

(assert (=> b!4967986 m!5994376))

(assert (=> b!4967989 m!5994364))

(assert (=> b!4967989 m!5994370))

(assert (=> b!4967989 m!5994370))

(assert (=> b!4967989 m!5994372))

(assert (=> b!4967989 m!5994372))

(declare-fun m!5994378 () Bool)

(assert (=> b!4967989 m!5994378))

(declare-fun m!5994380 () Bool)

(assert (=> d!1598938 m!5994380))

(assert (=> d!1598938 m!5993376))

(assert (=> d!1598938 m!5993376))

(assert (=> d!1598938 m!5993946))

(assert (=> d!1598938 m!5993376))

(assert (=> d!1598938 m!5993376))

(assert (=> d!1598938 m!5993948))

(assert (=> d!1598938 m!5993518))

(assert (=> b!4967988 m!5994364))

(declare-fun m!5994382 () Bool)

(assert (=> b!4967988 m!5994382))

(assert (=> b!4967988 m!5993376))

(assert (=> b!4967988 m!5993850))

(assert (=> b!4967984 m!5994364))

(declare-fun m!5994384 () Bool)

(assert (=> b!4967984 m!5994384))

(assert (=> bm!346454 m!5993376))

(assert (=> bm!346454 m!5994140))

(assert (=> b!4967277 d!1598938))

(assert (=> b!4967277 d!1598882))

(assert (=> b!4967277 d!1598680))

(declare-fun d!1598940 () Bool)

(assert (=> d!1598940 (= (get!19940 (maxPrefix!4660 thiss!15247 (t!368628 rulesArg!259) (list!18365 input!1342))) (v!50437 (maxPrefix!4660 thiss!15247 (t!368628 rulesArg!259) (list!18365 input!1342))))))

(assert (=> b!4967277 d!1598940))

(declare-fun d!1598942 () Bool)

(declare-fun res!2120590 () Bool)

(declare-fun e!3105202 () Bool)

(assert (=> d!1598942 (=> (not res!2120590) (not e!3105202))))

(assert (=> d!1598942 (= res!2120590 (<= (size!38072 (list!18369 (xs!18471 (c!847515 input!1342)))) 512))))

(assert (=> d!1598942 (= (inv!75081 (c!847515 input!1342)) e!3105202)))

(declare-fun b!4967992 () Bool)

(declare-fun res!2120591 () Bool)

(assert (=> b!4967992 (=> (not res!2120591) (not e!3105202))))

(assert (=> b!4967992 (= res!2120591 (= (csize!30521 (c!847515 input!1342)) (size!38072 (list!18369 (xs!18471 (c!847515 input!1342))))))))

(declare-fun b!4967993 () Bool)

(assert (=> b!4967993 (= e!3105202 (and (> (csize!30521 (c!847515 input!1342)) 0) (<= (csize!30521 (c!847515 input!1342)) 512)))))

(assert (= (and d!1598942 res!2120590) b!4967992))

(assert (= (and b!4967992 res!2120591) b!4967993))

(assert (=> d!1598942 m!5994256))

(assert (=> d!1598942 m!5994256))

(declare-fun m!5994386 () Bool)

(assert (=> d!1598942 m!5994386))

(assert (=> b!4967992 m!5994256))

(assert (=> b!4967992 m!5994256))

(assert (=> b!4967992 m!5994386))

(assert (=> b!4967204 d!1598942))

(assert (=> b!4967276 d!1598880))

(assert (=> b!4967276 d!1598884))

(assert (=> b!4967276 d!1598838))

(assert (=> b!4967276 d!1598680))

(assert (=> b!4967274 d!1598880))

(assert (=> b!4967274 d!1598940))

(assert (=> b!4967274 d!1598938))

(assert (=> b!4967274 d!1598680))

(declare-fun d!1598944 () Bool)

(declare-fun res!2120592 () Bool)

(declare-fun e!3105203 () Bool)

(assert (=> d!1598944 (=> (not res!2120592) (not e!3105203))))

(assert (=> d!1598944 (= res!2120592 (= (csize!30520 (c!847515 input!1342)) (+ (size!38076 (left!41900 (c!847515 input!1342))) (size!38076 (right!42230 (c!847515 input!1342))))))))

(assert (=> d!1598944 (= (inv!75080 (c!847515 input!1342)) e!3105203)))

(declare-fun b!4967994 () Bool)

(declare-fun res!2120593 () Bool)

(assert (=> b!4967994 (=> (not res!2120593) (not e!3105203))))

(assert (=> b!4967994 (= res!2120593 (and (not (= (left!41900 (c!847515 input!1342)) Empty!15145)) (not (= (right!42230 (c!847515 input!1342)) Empty!15145))))))

(declare-fun b!4967995 () Bool)

(declare-fun res!2120594 () Bool)

(assert (=> b!4967995 (=> (not res!2120594) (not e!3105203))))

(assert (=> b!4967995 (= res!2120594 (= (cheight!15356 (c!847515 input!1342)) (+ (max!0 (height!2013 (left!41900 (c!847515 input!1342))) (height!2013 (right!42230 (c!847515 input!1342)))) 1)))))

(declare-fun b!4967996 () Bool)

(assert (=> b!4967996 (= e!3105203 (<= 0 (cheight!15356 (c!847515 input!1342))))))

(assert (= (and d!1598944 res!2120592) b!4967994))

(assert (= (and b!4967994 res!2120593) b!4967995))

(assert (= (and b!4967995 res!2120594) b!4967996))

(declare-fun m!5994388 () Bool)

(assert (=> d!1598944 m!5994388))

(declare-fun m!5994390 () Bool)

(assert (=> d!1598944 m!5994390))

(assert (=> b!4967995 m!5993778))

(assert (=> b!4967995 m!5993780))

(assert (=> b!4967995 m!5993778))

(assert (=> b!4967995 m!5993780))

(declare-fun m!5994392 () Bool)

(assert (=> b!4967995 m!5994392))

(assert (=> b!4967202 d!1598944))

(declare-fun e!3105204 () Bool)

(assert (=> b!4967393 (= tp!1393299 e!3105204)))

(declare-fun b!4968000 () Bool)

(declare-fun tp!1393375 () Bool)

(declare-fun tp!1393374 () Bool)

(assert (=> b!4968000 (= e!3105204 (and tp!1393375 tp!1393374))))

(declare-fun b!4967997 () Bool)

(assert (=> b!4967997 (= e!3105204 tp_is_empty!36333)))

(declare-fun b!4967998 () Bool)

(declare-fun tp!1393372 () Bool)

(declare-fun tp!1393376 () Bool)

(assert (=> b!4967998 (= e!3105204 (and tp!1393372 tp!1393376))))

(declare-fun b!4967999 () Bool)

(declare-fun tp!1393373 () Bool)

(assert (=> b!4967999 (= e!3105204 tp!1393373)))

(assert (= (and b!4967393 (is-ElementMatch!13626 (regex!8393 (h!63892 (t!368628 rulesArg!259))))) b!4967997))

(assert (= (and b!4967393 (is-Concat!22330 (regex!8393 (h!63892 (t!368628 rulesArg!259))))) b!4967998))

(assert (= (and b!4967393 (is-Star!13626 (regex!8393 (h!63892 (t!368628 rulesArg!259))))) b!4967999))

(assert (= (and b!4967393 (is-Union!13626 (regex!8393 (h!63892 (t!368628 rulesArg!259))))) b!4968000))

(declare-fun e!3105205 () Bool)

(assert (=> b!4967406 (= tp!1393313 e!3105205)))

(declare-fun b!4968004 () Bool)

(declare-fun tp!1393380 () Bool)

(declare-fun tp!1393379 () Bool)

(assert (=> b!4968004 (= e!3105205 (and tp!1393380 tp!1393379))))

(declare-fun b!4968001 () Bool)

(assert (=> b!4968001 (= e!3105205 tp_is_empty!36333)))

(declare-fun b!4968002 () Bool)

(declare-fun tp!1393377 () Bool)

(declare-fun tp!1393381 () Bool)

(assert (=> b!4968002 (= e!3105205 (and tp!1393377 tp!1393381))))

(declare-fun b!4968003 () Bool)

(declare-fun tp!1393378 () Bool)

(assert (=> b!4968003 (= e!3105205 tp!1393378)))

(assert (= (and b!4967406 (is-ElementMatch!13626 (regOne!27764 (regex!8393 (h!63892 rulesArg!259))))) b!4968001))

(assert (= (and b!4967406 (is-Concat!22330 (regOne!27764 (regex!8393 (h!63892 rulesArg!259))))) b!4968002))

(assert (= (and b!4967406 (is-Star!13626 (regOne!27764 (regex!8393 (h!63892 rulesArg!259))))) b!4968003))

(assert (= (and b!4967406 (is-Union!13626 (regOne!27764 (regex!8393 (h!63892 rulesArg!259))))) b!4968004))

(declare-fun e!3105206 () Bool)

(assert (=> b!4967406 (= tp!1393317 e!3105206)))

(declare-fun b!4968008 () Bool)

(declare-fun tp!1393385 () Bool)

(declare-fun tp!1393384 () Bool)

(assert (=> b!4968008 (= e!3105206 (and tp!1393385 tp!1393384))))

(declare-fun b!4968005 () Bool)

(assert (=> b!4968005 (= e!3105206 tp_is_empty!36333)))

(declare-fun b!4968006 () Bool)

(declare-fun tp!1393382 () Bool)

(declare-fun tp!1393386 () Bool)

(assert (=> b!4968006 (= e!3105206 (and tp!1393382 tp!1393386))))

(declare-fun b!4968007 () Bool)

(declare-fun tp!1393383 () Bool)

(assert (=> b!4968007 (= e!3105206 tp!1393383)))

(assert (= (and b!4967406 (is-ElementMatch!13626 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259))))) b!4968005))

(assert (= (and b!4967406 (is-Concat!22330 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259))))) b!4968006))

(assert (= (and b!4967406 (is-Star!13626 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259))))) b!4968007))

(assert (= (and b!4967406 (is-Union!13626 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259))))) b!4968008))

(declare-fun b!4968013 () Bool)

(declare-fun e!3105209 () Bool)

(declare-fun tp!1393389 () Bool)

(assert (=> b!4968013 (= e!3105209 (and tp_is_empty!36333 tp!1393389))))

(assert (=> b!4967419 (= tp!1393324 e!3105209)))

(assert (= (and b!4967419 (is-Cons!57443 (innerList!15233 (xs!18471 (c!847515 input!1342))))) b!4968013))

(declare-fun tp!1393392 () Bool)

(declare-fun b!4968014 () Bool)

(declare-fun e!3105211 () Bool)

(declare-fun tp!1393391 () Bool)

(assert (=> b!4968014 (= e!3105211 (and (inv!75075 (left!41900 (left!41900 (c!847515 totalInput!464)))) tp!1393392 (inv!75075 (right!42230 (left!41900 (c!847515 totalInput!464)))) tp!1393391))))

(declare-fun b!4968016 () Bool)

(declare-fun e!3105210 () Bool)

(declare-fun tp!1393390 () Bool)

(assert (=> b!4968016 (= e!3105210 tp!1393390)))

(declare-fun b!4968015 () Bool)

(assert (=> b!4968015 (= e!3105211 (and (inv!75082 (xs!18471 (left!41900 (c!847515 totalInput!464)))) e!3105210))))

(assert (=> b!4967420 (= tp!1393329 (and (inv!75075 (left!41900 (c!847515 totalInput!464))) e!3105211))))

(assert (= (and b!4967420 (is-Node!15145 (left!41900 (c!847515 totalInput!464)))) b!4968014))

(assert (= b!4968015 b!4968016))

(assert (= (and b!4967420 (is-Leaf!25167 (left!41900 (c!847515 totalInput!464)))) b!4968015))

(declare-fun m!5994394 () Bool)

(assert (=> b!4968014 m!5994394))

(declare-fun m!5994396 () Bool)

(assert (=> b!4968014 m!5994396))

(declare-fun m!5994398 () Bool)

(assert (=> b!4968015 m!5994398))

(assert (=> b!4967420 m!5993670))

(declare-fun b!4968017 () Bool)

(declare-fun e!3105213 () Bool)

(declare-fun tp!1393394 () Bool)

(declare-fun tp!1393395 () Bool)

(assert (=> b!4968017 (= e!3105213 (and (inv!75075 (left!41900 (right!42230 (c!847515 totalInput!464)))) tp!1393395 (inv!75075 (right!42230 (right!42230 (c!847515 totalInput!464)))) tp!1393394))))

(declare-fun b!4968019 () Bool)

(declare-fun e!3105212 () Bool)

(declare-fun tp!1393393 () Bool)

(assert (=> b!4968019 (= e!3105212 tp!1393393)))

(declare-fun b!4968018 () Bool)

(assert (=> b!4968018 (= e!3105213 (and (inv!75082 (xs!18471 (right!42230 (c!847515 totalInput!464)))) e!3105212))))

(assert (=> b!4967420 (= tp!1393328 (and (inv!75075 (right!42230 (c!847515 totalInput!464))) e!3105213))))

(assert (= (and b!4967420 (is-Node!15145 (right!42230 (c!847515 totalInput!464)))) b!4968017))

(assert (= b!4968018 b!4968019))

(assert (= (and b!4967420 (is-Leaf!25167 (right!42230 (c!847515 totalInput!464)))) b!4968018))

(declare-fun m!5994400 () Bool)

(assert (=> b!4968017 m!5994400))

(declare-fun m!5994402 () Bool)

(assert (=> b!4968017 m!5994402))

(declare-fun m!5994404 () Bool)

(assert (=> b!4968018 m!5994404))

(assert (=> b!4967420 m!5993672))

(declare-fun b!4968022 () Bool)

(declare-fun b_free!132783 () Bool)

(declare-fun b_next!133573 () Bool)

(assert (=> b!4968022 (= b_free!132783 (not b_next!133573))))

(declare-fun t!368652 () Bool)

(declare-fun tb!260627 () Bool)

(assert (=> (and b!4968022 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) t!368652) tb!260627))

(declare-fun result!325740 () Bool)

(assert (= result!325740 result!325724))

(assert (=> d!1598846 t!368652))

(declare-fun t!368654 () Bool)

(declare-fun tb!260629 () Bool)

(assert (=> (and b!4968022 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) t!368654) tb!260629))

(declare-fun result!325742 () Bool)

(assert (= result!325742 result!325730))

(assert (=> d!1598846 t!368654))

(assert (=> d!1598858 t!368652))

(declare-fun tb!260631 () Bool)

(declare-fun t!368656 () Bool)

(assert (=> (and b!4968022 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))) t!368656) tb!260631))

(declare-fun result!325744 () Bool)

(assert (= result!325744 result!325734))

(assert (=> d!1598912 t!368656))

(declare-fun tp!1393398 () Bool)

(declare-fun b_and!348183 () Bool)

(assert (=> b!4968022 (= tp!1393398 (and (=> t!368652 result!325740) (=> t!368654 result!325742) (=> t!368656 result!325744) b_and!348183))))

(declare-fun b_free!132785 () Bool)

(declare-fun b_next!133575 () Bool)

(assert (=> b!4968022 (= b_free!132785 (not b_next!133575))))

(declare-fun t!368658 () Bool)

(declare-fun tb!260633 () Bool)

(assert (=> (and b!4968022 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))) t!368658) tb!260633))

(declare-fun result!325746 () Bool)

(assert (= result!325746 result!325718))

(assert (=> d!1598826 t!368658))

(declare-fun b_and!348185 () Bool)

(declare-fun tp!1393397 () Bool)

(assert (=> b!4968022 (= tp!1393397 (and (=> t!368658 result!325746) b_and!348185))))

(declare-fun e!3105215 () Bool)

(assert (=> b!4968022 (= e!3105215 (and tp!1393398 tp!1393397))))

(declare-fun e!3105217 () Bool)

(declare-fun tp!1393396 () Bool)

(declare-fun b!4968021 () Bool)

(assert (=> b!4968021 (= e!3105217 (and tp!1393396 (inv!75071 (tag!9257 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (inv!75076 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) e!3105215))))

(declare-fun b!4968020 () Bool)

(declare-fun e!3105216 () Bool)

(declare-fun tp!1393399 () Bool)

(assert (=> b!4968020 (= e!3105216 (and e!3105217 tp!1393399))))

(assert (=> b!4967392 (= tp!1393302 e!3105216)))

(assert (= b!4968021 b!4968022))

(assert (= b!4968020 b!4968021))

(assert (= (and b!4967392 (is-Cons!57444 (t!368628 (t!368628 rulesArg!259)))) b!4968020))

(declare-fun m!5994406 () Bool)

(assert (=> b!4968021 m!5994406))

(declare-fun m!5994408 () Bool)

(assert (=> b!4968021 m!5994408))

(declare-fun e!3105218 () Bool)

(assert (=> b!4967407 (= tp!1393314 e!3105218)))

(declare-fun b!4968026 () Bool)

(declare-fun tp!1393403 () Bool)

(declare-fun tp!1393402 () Bool)

(assert (=> b!4968026 (= e!3105218 (and tp!1393403 tp!1393402))))

(declare-fun b!4968023 () Bool)

(assert (=> b!4968023 (= e!3105218 tp_is_empty!36333)))

(declare-fun b!4968024 () Bool)

(declare-fun tp!1393400 () Bool)

(declare-fun tp!1393404 () Bool)

(assert (=> b!4968024 (= e!3105218 (and tp!1393400 tp!1393404))))

(declare-fun b!4968025 () Bool)

(declare-fun tp!1393401 () Bool)

(assert (=> b!4968025 (= e!3105218 tp!1393401)))

(assert (= (and b!4967407 (is-ElementMatch!13626 (reg!13955 (regex!8393 (h!63892 rulesArg!259))))) b!4968023))

(assert (= (and b!4967407 (is-Concat!22330 (reg!13955 (regex!8393 (h!63892 rulesArg!259))))) b!4968024))

(assert (= (and b!4967407 (is-Star!13626 (reg!13955 (regex!8393 (h!63892 rulesArg!259))))) b!4968025))

(assert (= (and b!4967407 (is-Union!13626 (reg!13955 (regex!8393 (h!63892 rulesArg!259))))) b!4968026))

(declare-fun e!3105219 () Bool)

(assert (=> b!4967408 (= tp!1393316 e!3105219)))

(declare-fun b!4968030 () Bool)

(declare-fun tp!1393408 () Bool)

(declare-fun tp!1393407 () Bool)

(assert (=> b!4968030 (= e!3105219 (and tp!1393408 tp!1393407))))

(declare-fun b!4968027 () Bool)

(assert (=> b!4968027 (= e!3105219 tp_is_empty!36333)))

(declare-fun b!4968028 () Bool)

(declare-fun tp!1393405 () Bool)

(declare-fun tp!1393409 () Bool)

(assert (=> b!4968028 (= e!3105219 (and tp!1393405 tp!1393409))))

(declare-fun b!4968029 () Bool)

(declare-fun tp!1393406 () Bool)

(assert (=> b!4968029 (= e!3105219 tp!1393406)))

(assert (= (and b!4967408 (is-ElementMatch!13626 (regOne!27765 (regex!8393 (h!63892 rulesArg!259))))) b!4968027))

(assert (= (and b!4967408 (is-Concat!22330 (regOne!27765 (regex!8393 (h!63892 rulesArg!259))))) b!4968028))

(assert (= (and b!4967408 (is-Star!13626 (regOne!27765 (regex!8393 (h!63892 rulesArg!259))))) b!4968029))

(assert (= (and b!4967408 (is-Union!13626 (regOne!27765 (regex!8393 (h!63892 rulesArg!259))))) b!4968030))

(declare-fun e!3105220 () Bool)

(assert (=> b!4967408 (= tp!1393315 e!3105220)))

(declare-fun b!4968034 () Bool)

(declare-fun tp!1393413 () Bool)

(declare-fun tp!1393412 () Bool)

(assert (=> b!4968034 (= e!3105220 (and tp!1393413 tp!1393412))))

(declare-fun b!4968031 () Bool)

(assert (=> b!4968031 (= e!3105220 tp_is_empty!36333)))

(declare-fun b!4968032 () Bool)

(declare-fun tp!1393410 () Bool)

(declare-fun tp!1393414 () Bool)

(assert (=> b!4968032 (= e!3105220 (and tp!1393410 tp!1393414))))

(declare-fun b!4968033 () Bool)

(declare-fun tp!1393411 () Bool)

(assert (=> b!4968033 (= e!3105220 tp!1393411)))

(assert (= (and b!4967408 (is-ElementMatch!13626 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259))))) b!4968031))

(assert (= (and b!4967408 (is-Concat!22330 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259))))) b!4968032))

(assert (= (and b!4967408 (is-Star!13626 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259))))) b!4968033))

(assert (= (and b!4967408 (is-Union!13626 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259))))) b!4968034))

(declare-fun e!3105222 () Bool)

(declare-fun b!4968035 () Bool)

(declare-fun tp!1393417 () Bool)

(declare-fun tp!1393416 () Bool)

(assert (=> b!4968035 (= e!3105222 (and (inv!75075 (left!41900 (left!41900 (c!847515 input!1342)))) tp!1393417 (inv!75075 (right!42230 (left!41900 (c!847515 input!1342)))) tp!1393416))))

(declare-fun b!4968037 () Bool)

(declare-fun e!3105221 () Bool)

(declare-fun tp!1393415 () Bool)

(assert (=> b!4968037 (= e!3105221 tp!1393415)))

(declare-fun b!4968036 () Bool)

(assert (=> b!4968036 (= e!3105222 (and (inv!75082 (xs!18471 (left!41900 (c!847515 input!1342)))) e!3105221))))

(assert (=> b!4967417 (= tp!1393326 (and (inv!75075 (left!41900 (c!847515 input!1342))) e!3105222))))

(assert (= (and b!4967417 (is-Node!15145 (left!41900 (c!847515 input!1342)))) b!4968035))

(assert (= b!4968036 b!4968037))

(assert (= (and b!4967417 (is-Leaf!25167 (left!41900 (c!847515 input!1342)))) b!4968036))

(declare-fun m!5994410 () Bool)

(assert (=> b!4968035 m!5994410))

(declare-fun m!5994412 () Bool)

(assert (=> b!4968035 m!5994412))

(declare-fun m!5994414 () Bool)

(assert (=> b!4968036 m!5994414))

(assert (=> b!4967417 m!5993664))

(declare-fun tp!1393419 () Bool)

(declare-fun tp!1393420 () Bool)

(declare-fun e!3105224 () Bool)

(declare-fun b!4968038 () Bool)

(assert (=> b!4968038 (= e!3105224 (and (inv!75075 (left!41900 (right!42230 (c!847515 input!1342)))) tp!1393420 (inv!75075 (right!42230 (right!42230 (c!847515 input!1342)))) tp!1393419))))

(declare-fun b!4968040 () Bool)

(declare-fun e!3105223 () Bool)

(declare-fun tp!1393418 () Bool)

(assert (=> b!4968040 (= e!3105223 tp!1393418)))

(declare-fun b!4968039 () Bool)

(assert (=> b!4968039 (= e!3105224 (and (inv!75082 (xs!18471 (right!42230 (c!847515 input!1342)))) e!3105223))))

(assert (=> b!4967417 (= tp!1393325 (and (inv!75075 (right!42230 (c!847515 input!1342))) e!3105224))))

(assert (= (and b!4967417 (is-Node!15145 (right!42230 (c!847515 input!1342)))) b!4968038))

(assert (= b!4968039 b!4968040))

(assert (= (and b!4967417 (is-Leaf!25167 (right!42230 (c!847515 input!1342)))) b!4968039))

(declare-fun m!5994416 () Bool)

(assert (=> b!4968038 m!5994416))

(declare-fun m!5994418 () Bool)

(assert (=> b!4968038 m!5994418))

(declare-fun m!5994420 () Bool)

(assert (=> b!4968039 m!5994420))

(assert (=> b!4967417 m!5993666))

(declare-fun b!4968041 () Bool)

(declare-fun e!3105225 () Bool)

(declare-fun tp!1393421 () Bool)

(assert (=> b!4968041 (= e!3105225 (and tp_is_empty!36333 tp!1393421))))

(assert (=> b!4967422 (= tp!1393327 e!3105225)))

(assert (= (and b!4967422 (is-Cons!57443 (innerList!15233 (xs!18471 (c!847515 totalInput!464))))) b!4968041))

(declare-fun b_lambda!196853 () Bool)

(assert (= b_lambda!196839 (or (and b!4967137 b_free!132767) (and b!4967394 b_free!132775 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4968022 b_free!132783 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) b_lambda!196853)))

(declare-fun b_lambda!196855 () Bool)

(assert (= b_lambda!196847 (or b!4967347 b_lambda!196855)))

(declare-fun bs!1183218 () Bool)

(declare-fun d!1598946 () Bool)

(assert (= bs!1183218 (and d!1598946 b!4967347)))

(assert (=> bs!1183218 (= (dynLambda!23168 lambda!247368 (_1!34389 lt!2051115)) (= (list!18365 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115)))) (list!18365 (_1!34389 lt!2051115))))))

(declare-fun b_lambda!196865 () Bool)

(assert (=> (not b_lambda!196865) (not bs!1183218)))

(declare-fun t!368660 () Bool)

(declare-fun tb!260635 () Bool)

(assert (=> (and b!4967137 (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) t!368660) tb!260635))

(declare-fun b!4968042 () Bool)

(declare-fun e!3105226 () Bool)

(declare-fun tp!1393422 () Bool)

(assert (=> b!4968042 (= e!3105226 (and (inv!75075 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115))))) tp!1393422))))

(declare-fun result!325748 () Bool)

(assert (=> tb!260635 (= result!325748 (and (inv!75074 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115)))) e!3105226))))

(assert (= tb!260635 b!4968042))

(declare-fun m!5994422 () Bool)

(assert (=> b!4968042 m!5994422))

(declare-fun m!5994424 () Bool)

(assert (=> tb!260635 m!5994424))

(assert (=> bs!1183218 t!368660))

(declare-fun b_and!348187 () Bool)

(assert (= b_and!348163 (and (=> t!368660 result!325748) b_and!348187)))

(declare-fun t!368662 () Bool)

(declare-fun tb!260637 () Bool)

(assert (=> (and b!4967394 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) t!368662) tb!260637))

(declare-fun result!325750 () Bool)

(assert (= result!325750 result!325748))

(assert (=> bs!1183218 t!368662))

(declare-fun b_and!348189 () Bool)

(assert (= b_and!348165 (and (=> t!368662 result!325750) b_and!348189)))

(declare-fun t!368664 () Bool)

(declare-fun tb!260639 () Bool)

(assert (=> (and b!4968022 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) t!368664) tb!260639))

(declare-fun result!325752 () Bool)

(assert (= result!325752 result!325748))

(assert (=> bs!1183218 t!368664))

(declare-fun b_and!348191 () Bool)

(assert (= b_and!348185 (and (=> t!368664 result!325752) b_and!348191)))

(declare-fun b_lambda!196867 () Bool)

(assert (=> (not b_lambda!196867) (not bs!1183218)))

(assert (=> bs!1183218 t!368639))

(declare-fun b_and!348193 () Bool)

(assert (= b_and!348179 (and (=> t!368639 result!325724) b_and!348193)))

(assert (=> bs!1183218 t!368641))

(declare-fun b_and!348195 () Bool)

(assert (= b_and!348181 (and (=> t!368641 result!325728) b_and!348195)))

(assert (=> bs!1183218 t!368652))

(declare-fun b_and!348197 () Bool)

(assert (= b_and!348183 (and (=> t!368652 result!325740) b_and!348197)))

(assert (=> bs!1183218 m!5993984))

(assert (=> bs!1183218 m!5993572))

(assert (=> bs!1183218 m!5993984))

(declare-fun m!5994426 () Bool)

(assert (=> bs!1183218 m!5994426))

(assert (=> bs!1183218 m!5994426))

(declare-fun m!5994428 () Bool)

(assert (=> bs!1183218 m!5994428))

(assert (=> d!1598870 d!1598946))

(declare-fun b_lambda!196857 () Bool)

(assert (= b_lambda!196841 (or (and b!4967137 b_free!132767) (and b!4967394 b_free!132775 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4968022 b_free!132783 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) b_lambda!196857)))

(declare-fun b_lambda!196859 () Bool)

(assert (= b_lambda!196845 (or b!4967347 b_lambda!196859)))

(declare-fun bs!1183219 () Bool)

(declare-fun d!1598948 () Bool)

(assert (= bs!1183219 (and d!1598948 b!4967347)))

(assert (=> bs!1183219 (= (dynLambda!23168 lambda!247368 (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))) (= (list!18365 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))))) (list!18365 (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))))))

(declare-fun b_lambda!196869 () Bool)

(assert (=> (not b_lambda!196869) (not bs!1183219)))

(declare-fun t!368666 () Bool)

(declare-fun tb!260641 () Bool)

(assert (=> (and b!4967137 (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) t!368666) tb!260641))

(declare-fun e!3105227 () Bool)

(declare-fun b!4968043 () Bool)

(declare-fun tp!1393423 () Bool)

(assert (=> b!4968043 (= e!3105227 (and (inv!75075 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))))) tp!1393423))))

(declare-fun result!325754 () Bool)

(assert (=> tb!260641 (= result!325754 (and (inv!75074 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))))) e!3105227))))

(assert (= tb!260641 b!4968043))

(declare-fun m!5994430 () Bool)

(assert (=> b!4968043 m!5994430))

(declare-fun m!5994432 () Bool)

(assert (=> tb!260641 m!5994432))

(assert (=> bs!1183219 t!368666))

(declare-fun b_and!348199 () Bool)

(assert (= b_and!348187 (and (=> t!368666 result!325754) b_and!348199)))

(declare-fun t!368668 () Bool)

(declare-fun tb!260643 () Bool)

(assert (=> (and b!4967394 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) t!368668) tb!260643))

(declare-fun result!325756 () Bool)

(assert (= result!325756 result!325754))

(assert (=> bs!1183219 t!368668))

(declare-fun b_and!348201 () Bool)

(assert (= b_and!348189 (and (=> t!368668 result!325756) b_and!348201)))

(declare-fun t!368670 () Bool)

(declare-fun tb!260645 () Bool)

(assert (=> (and b!4968022 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) t!368670) tb!260645))

(declare-fun result!325758 () Bool)

(assert (= result!325758 result!325754))

(assert (=> bs!1183219 t!368670))

(declare-fun b_and!348203 () Bool)

(assert (= b_and!348191 (and (=> t!368670 result!325758) b_and!348203)))

(declare-fun b_lambda!196871 () Bool)

(assert (=> (not b_lambda!196871) (not bs!1183219)))

(assert (=> bs!1183219 t!368643))

(declare-fun b_and!348205 () Bool)

(assert (= b_and!348193 (and (=> t!368643 result!325730) b_and!348205)))

(assert (=> bs!1183219 t!368645))

(declare-fun b_and!348207 () Bool)

(assert (= b_and!348195 (and (=> t!368645 result!325732) b_and!348207)))

(assert (=> bs!1183219 t!368654))

(declare-fun b_and!348209 () Bool)

(assert (= b_and!348197 (and (=> t!368654 result!325742) b_and!348209)))

(assert (=> bs!1183219 m!5993582))

(assert (=> bs!1183219 m!5993980))

(assert (=> bs!1183219 m!5993582))

(assert (=> bs!1183219 m!5993982))

(assert (=> bs!1183219 m!5993980))

(declare-fun m!5994434 () Bool)

(assert (=> bs!1183219 m!5994434))

(assert (=> bs!1183219 m!5994434))

(declare-fun m!5994436 () Bool)

(assert (=> bs!1183219 m!5994436))

(assert (=> d!1598864 d!1598948))

(declare-fun b_lambda!196861 () Bool)

(assert (= b_lambda!196843 (or (and b!4967137 b_free!132767) (and b!4967394 b_free!132775 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4968022 b_free!132783 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) b_lambda!196861)))

(declare-fun b_lambda!196863 () Bool)

(assert (= b_lambda!196849 (or d!1598730 b_lambda!196863)))

(declare-fun bs!1183220 () Bool)

(declare-fun d!1598950 () Bool)

(assert (= bs!1183220 (and d!1598950 d!1598730)))

(assert (=> bs!1183220 (= (dynLambda!23169 lambda!247372 (h!63892 rulesArg!259)) (ruleValid!3802 thiss!15247 (h!63892 rulesArg!259)))))

(assert (=> bs!1183220 m!5993602))

(assert (=> b!4967834 d!1598950))

(push 1)

(assert (not b!4967938))

(assert b_and!348209)

(assert (not b!4967554))

(assert (not b!4967940))

(assert (not b!4968035))

(assert (not b!4967865))

(assert (not b!4967866))

(assert (not b!4967952))

(assert (not bs!1183218))

(assert (not b_lambda!196867))

(assert (not b!4967984))

(assert (not d!1598908))

(assert (not b_next!133567))

(assert (not bm!346427))

(assert (not b!4968036))

(assert (not d!1598822))

(assert (not b!4967550))

(assert (not b!4968039))

(assert (not b!4968030))

(assert (not b!4967417))

(assert (not bm!346428))

(assert b_and!348205)

(assert (not d!1598792))

(assert (not b!4968029))

(assert (not b!4967988))

(assert (not b!4968008))

(assert (not b_next!133573))

(assert (not bm!346393))

(assert (not b!4967684))

(assert (not tb!260619))

(assert (not b!4967950))

(assert (not bm!346452))

(assert (not b_lambda!196857))

(assert (not d!1598896))

(assert (not b!4967854))

(assert (not b!4967956))

(assert (not b!4967599))

(assert (not d!1598804))

(assert (not d!1598930))

(assert (not b!4967559))

(assert (not bm!346453))

(assert (not b!4968016))

(assert (not b!4967560))

(assert (not tb!260623))

(assert (not b!4968014))

(assert (not b!4967612))

(assert (not d!1598914))

(assert (not b!4967937))

(assert (not d!1598834))

(assert (not b!4968028))

(assert (not d!1598770))

(assert (not b!4968041))

(assert (not b!4968026))

(assert (not b!4967634))

(assert (not b!4967965))

(assert (not d!1598798))

(assert (not b!4967817))

(assert (not b!4968000))

(assert (not b!4968042))

(assert (not b!4967561))

(assert (not b!4967983))

(assert (not b!4967673))

(assert (not d!1598838))

(assert (not b!4967532))

(assert (not d!1598936))

(assert (not b!4967943))

(assert (not d!1598938))

(assert (not b!4967917))

(assert (not b!4967672))

(assert (not b!4967986))

(assert (not bm!346451))

(assert (not d!1598916))

(assert (not d!1598846))

(assert (not b!4967922))

(assert (not d!1598800))

(assert (not b!4967703))

(assert (not b!4968017))

(assert (not b_lambda!196863))

(assert (not b!4968037))

(assert (not b!4967601))

(assert (not b!4967942))

(assert (not d!1598790))

(assert (not d!1598882))

(assert (not b!4968033))

(assert (not b!4968025))

(assert (not b!4967621))

(assert (not d!1598812))

(assert (not b_lambda!196855))

(assert (not b_lambda!196851))

(assert (not b!4967547))

(assert (not b!4967600))

(assert (not b!4967520))

(assert (not d!1598824))

(assert (not b!4967671))

(assert (not b!4967990))

(assert (not b!4967852))

(assert (not b!4967969))

(assert (not b!4967548))

(assert (not b!4968018))

(assert (not b!4967562))

(assert (not b!4967827))

(assert (not b!4967596))

(assert (not b!4968020))

(assert (not d!1598832))

(assert (not b!4967989))

(assert (not d!1598860))

(assert (not b_lambda!196837))

(assert (not bm!346394))

(assert (not d!1598934))

(assert (not d!1598796))

(assert (not b_lambda!196869))

(assert (not b_lambda!196859))

(assert (not b!4967576))

(assert (not b!4967690))

(assert (not b!4967682))

(assert (not b!4967553))

(assert (not d!1598826))

(assert (not bm!346424))

(assert (not b_lambda!196865))

(assert (not d!1598810))

(assert (not b!4967627))

(assert (not b!4967987))

(assert (not b!4967980))

(assert (not b!4968038))

(assert (not b!4967991))

(assert (not b!4967862))

(assert (not d!1598852))

(assert (not b!4968007))

(assert (not d!1598794))

(assert (not b!4967835))

(assert (not b!4967563))

(assert (not b!4967815))

(assert (not b!4967941))

(assert (not b!4967551))

(assert (not b!4967998))

(assert (not b!4967619))

(assert (not d!1598864))

(assert (not b!4967867))

(assert (not b!4967635))

(assert (not b!4967826))

(assert (not b!4967806))

(assert (not d!1598928))

(assert (not b!4967570))

(assert (not b!4968006))

(assert (not d!1598820))

(assert (not b!4967934))

(assert (not b!4967688))

(assert (not b!4967933))

(assert (not bm!346429))

(assert (not tb!260611))

(assert (not d!1598926))

(assert (not b!4967914))

(assert (not b!4968015))

(assert (not b!4967967))

(assert (not bm!346446))

(assert (not b!4967930))

(assert (not b!4967851))

(assert (not b!4967598))

(assert (not d!1598942))

(assert (not b!4967962))

(assert (not b!4967521))

(assert (not b!4968032))

(assert (not b!4967533))

(assert (not b!4967565))

(assert (not tb!260641))

(assert (not bm!346426))

(assert (not b!4968019))

(assert (not d!1598932))

(assert (not b!4967931))

(assert (not b!4968002))

(assert (not b!4967957))

(assert (not b_next!133559))

(assert b_and!348203)

(assert (not b_next!133565))

(assert (not bm!346454))

(assert (not b!4968021))

(assert (not d!1598944))

(assert (not b!4967686))

(assert (not b!4967420))

(assert (not d!1598816))

(assert (not d!1598870))

(assert (not b!4967546))

(assert (not b!4968024))

(assert (not b!4967939))

(assert (not d!1598836))

(assert (not b!4967949))

(assert (not d!1598844))

(assert (not b!4967604))

(assert (not d!1598924))

(assert (not b!4968013))

(assert (not b!4968003))

(assert (not bs!1183219))

(assert b_and!348199)

(assert (not d!1598868))

(assert (not b!4967927))

(assert (not b!4967683))

(assert (not b!4967855))

(assert (not b!4967829))

(assert (not b!4967963))

(assert (not b!4967706))

(assert (not b_lambda!196853))

(assert (not b!4967863))

(assert (not b_lambda!196861))

(assert (not b!4967665))

(assert (not b!4967992))

(assert (not b!4967924))

(assert (not b!4967824))

(assert (not bm!346425))

(assert (not b!4968034))

(assert (not b!4967869))

(assert (not b!4967981))

(assert (not d!1598786))

(assert (not b!4968004))

(assert (not b!4967823))

(assert (not tb!260615))

(assert (not b_lambda!196871))

(assert (not b!4967689))

(assert (not b!4967701))

(assert (not b!4967811))

(assert (not tb!260635))

(assert (not b_next!133557))

(assert (not d!1598886))

(assert (not b!4967853))

(assert (not b!4967925))

(assert (not bm!346423))

(assert (not d!1598842))

(assert (not bm!346450))

(assert (not d!1598890))

(assert (not b!4967603))

(assert (not b!4967999))

(assert (not d!1598922))

(assert (not b!4967935))

(assert (not bm!346422))

(assert (not b!4967564))

(assert (not b!4967666))

(assert (not b!4967995))

(assert (not b!4967549))

(assert tp_is_empty!36333)

(assert (not b!4967597))

(assert (not bs!1183220))

(assert (not b!4967864))

(assert (not b!4967555))

(assert (not d!1598854))

(assert (not b!4967970))

(assert (not b_next!133575))

(assert (not b!4968043))

(assert b_and!348201)

(assert (not b!4967709))

(assert (not b!4968040))

(assert (not b!4967955))

(assert (not b!4967966))

(assert (not b!4967558))

(assert (not b!4967668))

(assert (not b!4967964))

(assert b_and!348207)

(assert (not d!1598802))

(check-sat)

(pop 1)

(push 1)

(assert b_and!348209)

(assert (not b_next!133567))

(assert b_and!348205)

(assert (not b_next!133573))

(assert b_and!348199)

(assert (not b_next!133557))

(assert b_and!348207)

(assert (not b_next!133559))

(assert b_and!348203)

(assert (not b_next!133565))

(assert b_and!348201)

(assert (not b_next!133575))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!196909 () Bool)

(assert (= b_lambda!196865 (or (and b!4967137 b_free!132769) (and b!4967394 b_free!132777 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4968022 b_free!132785 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))))) b_lambda!196909)))

(declare-fun b_lambda!196911 () Bool)

(assert (= b_lambda!196867 (or (and b!4967137 b_free!132767) (and b!4967394 b_free!132775 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4968022 b_free!132783 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) b_lambda!196911)))

(declare-fun b_lambda!196913 () Bool)

(assert (= b_lambda!196869 (or (and b!4967137 b_free!132769) (and b!4967394 b_free!132777 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4968022 b_free!132785 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))))) b_lambda!196913)))

(declare-fun b_lambda!196915 () Bool)

(assert (= b_lambda!196871 (or (and b!4967137 b_free!132767) (and b!4967394 b_free!132775 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4968022 b_free!132783 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) b_lambda!196915)))

(push 1)

(assert (not b!4967938))

(assert b_and!348209)

(assert (not b!4967554))

(assert (not b!4967940))

(assert (not b!4968035))

(assert (not b!4967865))

(assert (not b!4967866))

(assert (not b!4967952))

(assert (not bs!1183218))

(assert (not b!4967984))

(assert (not d!1598908))

(assert (not b_next!133567))

(assert (not bm!346427))

(assert (not b!4968036))

(assert (not d!1598822))

(assert (not b!4967550))

(assert (not b!4968039))

(assert (not b!4968030))

(assert (not b!4967417))

(assert (not bm!346428))

(assert b_and!348205)

(assert (not d!1598792))

(assert (not b!4968029))

(assert (not b!4967988))

(assert (not b!4968008))

(assert (not b_next!133573))

(assert (not bm!346393))

(assert (not b!4967684))

(assert (not tb!260619))

(assert (not b!4967950))

(assert (not bm!346452))

(assert (not b_lambda!196857))

(assert (not d!1598896))

(assert (not b!4967854))

(assert (not b!4967956))

(assert (not b!4967599))

(assert (not d!1598804))

(assert (not d!1598930))

(assert (not b!4967559))

(assert (not bm!346453))

(assert (not b!4967560))

(assert (not tb!260623))

(assert (not b!4968014))

(assert (not b_lambda!196909))

(assert (not b!4968016))

(assert (not b!4967612))

(assert (not d!1598914))

(assert (not b!4967937))

(assert (not d!1598834))

(assert (not b!4968028))

(assert (not d!1598770))

(assert (not b!4968041))

(assert (not b!4968026))

(assert (not b!4967634))

(assert (not b!4967965))

(assert (not d!1598798))

(assert (not b!4967817))

(assert (not b!4968000))

(assert (not b!4968042))

(assert (not b!4967561))

(assert (not b!4967983))

(assert (not b!4967673))

(assert (not d!1598838))

(assert (not b!4967532))

(assert (not d!1598936))

(assert (not b!4967943))

(assert (not d!1598938))

(assert (not b!4967917))

(assert (not b!4967672))

(assert (not b!4967986))

(assert (not bm!346451))

(assert (not d!1598916))

(assert (not d!1598846))

(assert (not b!4967922))

(assert (not d!1598800))

(assert (not b!4967703))

(assert (not b!4968017))

(assert (not b_lambda!196863))

(assert (not b!4968037))

(assert (not b!4967601))

(assert (not b!4967942))

(assert (not d!1598790))

(assert (not d!1598882))

(assert (not b!4968033))

(assert (not b!4968025))

(assert (not b!4967621))

(assert (not d!1598812))

(assert (not b_lambda!196855))

(assert (not b_lambda!196851))

(assert (not b!4967547))

(assert (not b!4967600))

(assert (not b!4967520))

(assert (not d!1598824))

(assert (not b!4967671))

(assert (not b!4967990))

(assert (not b!4967852))

(assert (not b!4967969))

(assert (not b!4967548))

(assert (not b!4968018))

(assert (not b!4967562))

(assert (not b!4967827))

(assert (not b!4967596))

(assert (not b!4968020))

(assert (not d!1598832))

(assert (not b!4967989))

(assert (not d!1598860))

(assert (not b_lambda!196837))

(assert (not bm!346394))

(assert (not d!1598934))

(assert (not d!1598796))

(assert (not b_lambda!196859))

(assert (not b!4967576))

(assert (not b!4967690))

(assert (not b!4967682))

(assert (not b!4967553))

(assert (not d!1598826))

(assert (not bm!346424))

(assert (not d!1598810))

(assert (not b!4967627))

(assert (not b!4967987))

(assert (not b!4967980))

(assert (not b!4968038))

(assert (not b!4967991))

(assert (not b!4967862))

(assert (not d!1598852))

(assert (not b!4968007))

(assert (not d!1598794))

(assert (not b!4967835))

(assert (not b!4967563))

(assert (not b!4967815))

(assert (not b!4967941))

(assert (not b!4967551))

(assert (not b!4967998))

(assert (not b!4967619))

(assert (not d!1598864))

(assert (not b!4967867))

(assert (not b!4967635))

(assert (not b!4967826))

(assert (not b!4967806))

(assert (not d!1598928))

(assert (not b!4967570))

(assert (not b!4968006))

(assert (not d!1598820))

(assert (not b!4967934))

(assert (not b!4967688))

(assert (not b!4967933))

(assert (not bm!346429))

(assert (not tb!260611))

(assert (not d!1598926))

(assert (not b!4967914))

(assert (not b!4968015))

(assert (not b!4967967))

(assert (not bm!346446))

(assert (not b!4967930))

(assert (not b!4967851))

(assert (not b!4967598))

(assert (not d!1598942))

(assert (not b!4967962))

(assert (not b!4967521))

(assert (not b!4968032))

(assert (not b!4967533))

(assert (not b!4967565))

(assert (not tb!260641))

(assert (not bm!346426))

(assert (not b!4968019))

(assert (not d!1598932))

(assert (not b!4967931))

(assert (not b!4968002))

(assert (not b!4967957))

(assert (not b_next!133559))

(assert b_and!348203)

(assert (not b_next!133565))

(assert (not bm!346454))

(assert (not b!4968021))

(assert (not d!1598944))

(assert (not b!4967686))

(assert (not b_lambda!196915))

(assert (not b!4967420))

(assert (not d!1598816))

(assert (not d!1598870))

(assert (not b!4968024))

(assert (not b!4967939))

(assert (not d!1598836))

(assert (not b_lambda!196913))

(assert (not b!4967546))

(assert (not b!4967949))

(assert (not d!1598844))

(assert (not b!4967604))

(assert (not d!1598924))

(assert (not b!4968013))

(assert (not b!4968003))

(assert (not bs!1183219))

(assert b_and!348199)

(assert (not d!1598868))

(assert (not b!4967927))

(assert (not b!4967683))

(assert (not b!4967855))

(assert (not b!4967829))

(assert (not b!4967963))

(assert (not b!4967706))

(assert (not b_lambda!196853))

(assert (not b!4967863))

(assert (not b_lambda!196861))

(assert (not b!4967665))

(assert (not b!4967992))

(assert (not b!4967924))

(assert (not b!4967824))

(assert (not bm!346425))

(assert (not b!4968034))

(assert (not b!4967869))

(assert (not b!4967981))

(assert (not d!1598786))

(assert (not b!4968004))

(assert (not b!4967823))

(assert (not tb!260615))

(assert (not b!4967689))

(assert (not b!4967701))

(assert (not b!4967811))

(assert (not tb!260635))

(assert (not b_next!133557))

(assert (not d!1598886))

(assert (not b!4967853))

(assert (not b!4967925))

(assert (not bm!346423))

(assert (not d!1598842))

(assert (not bm!346450))

(assert (not d!1598890))

(assert (not b!4967603))

(assert (not b!4967999))

(assert (not d!1598922))

(assert (not b!4967935))

(assert (not bm!346422))

(assert (not b_lambda!196911))

(assert (not b!4967564))

(assert (not b!4967666))

(assert (not b!4967995))

(assert (not b!4967549))

(assert tp_is_empty!36333)

(assert (not b!4967597))

(assert (not bs!1183220))

(assert (not b!4967864))

(assert (not b!4967555))

(assert (not d!1598854))

(assert (not b!4967970))

(assert (not b_next!133575))

(assert (not b!4968043))

(assert b_and!348201)

(assert (not b!4967709))

(assert (not b!4968040))

(assert (not b!4967955))

(assert (not b!4967966))

(assert (not b!4967558))

(assert (not b!4967668))

(assert (not b!4967964))

(assert b_and!348207)

(assert (not d!1598802))

(check-sat)

(pop 1)

(push 1)

(assert b_and!348209)

(assert (not b_next!133567))

(assert b_and!348205)

(assert (not b_next!133573))

(assert b_and!348199)

(assert (not b_next!133557))

(assert b_and!348207)

(assert (not b_next!133559))

(assert b_and!348203)

(assert (not b_next!133565))

(assert b_and!348201)

(assert (not b_next!133575))

(check-sat)

(get-model)

(pop 1)

(assert (=> d!1598838 d!1598938))

(declare-fun b!4968352 () Bool)

(declare-fun e!3105400 () Bool)

(assert (=> b!4968352 (= e!3105400 (>= (size!38072 (list!18365 input!1342)) (size!38072 (list!18365 input!1342))))))

(declare-fun b!4968349 () Bool)

(declare-fun e!3105399 () Bool)

(declare-fun e!3105398 () Bool)

(assert (=> b!4968349 (= e!3105399 e!3105398)))

(declare-fun res!2120749 () Bool)

(assert (=> b!4968349 (=> (not res!2120749) (not e!3105398))))

(assert (=> b!4968349 (= res!2120749 (not (is-Nil!57443 (list!18365 input!1342))))))

(declare-fun b!4968351 () Bool)

(assert (=> b!4968351 (= e!3105398 (isPrefix!5244 (tail!9801 (list!18365 input!1342)) (tail!9801 (list!18365 input!1342))))))

(declare-fun d!1599106 () Bool)

(assert (=> d!1599106 e!3105400))

(declare-fun res!2120748 () Bool)

(assert (=> d!1599106 (=> res!2120748 e!3105400)))

(declare-fun lt!2051581 () Bool)

(assert (=> d!1599106 (= res!2120748 (not lt!2051581))))

(assert (=> d!1599106 (= lt!2051581 e!3105399)))

(declare-fun res!2120747 () Bool)

(assert (=> d!1599106 (=> res!2120747 e!3105399)))

(assert (=> d!1599106 (= res!2120747 (is-Nil!57443 (list!18365 input!1342)))))

(assert (=> d!1599106 (= (isPrefix!5244 (list!18365 input!1342) (list!18365 input!1342)) lt!2051581)))

(declare-fun b!4968350 () Bool)

(declare-fun res!2120750 () Bool)

(assert (=> b!4968350 (=> (not res!2120750) (not e!3105398))))

(assert (=> b!4968350 (= res!2120750 (= (head!10668 (list!18365 input!1342)) (head!10668 (list!18365 input!1342))))))

(assert (= (and d!1599106 (not res!2120747)) b!4968349))

(assert (= (and b!4968349 res!2120749) b!4968350))

(assert (= (and b!4968350 res!2120750) b!4968351))

(assert (= (and d!1599106 (not res!2120748)) b!4968352))

(assert (=> b!4968352 m!5993376))

(assert (=> b!4968352 m!5993850))

(assert (=> b!4968352 m!5993376))

(assert (=> b!4968352 m!5993850))

(assert (=> b!4968351 m!5993376))

(declare-fun m!5994918 () Bool)

(assert (=> b!4968351 m!5994918))

(assert (=> b!4968351 m!5993376))

(assert (=> b!4968351 m!5994918))

(assert (=> b!4968351 m!5994918))

(assert (=> b!4968351 m!5994918))

(declare-fun m!5994920 () Bool)

(assert (=> b!4968351 m!5994920))

(assert (=> b!4968350 m!5993376))

(declare-fun m!5994922 () Bool)

(assert (=> b!4968350 m!5994922))

(assert (=> b!4968350 m!5993376))

(assert (=> b!4968350 m!5994922))

(assert (=> d!1598838 d!1599106))

(declare-fun d!1599108 () Bool)

(assert (=> d!1599108 (isPrefix!5244 (list!18365 input!1342) (list!18365 input!1342))))

(declare-fun lt!2051582 () Unit!148361)

(assert (=> d!1599108 (= lt!2051582 (choose!36668 (list!18365 input!1342) (list!18365 input!1342)))))

(assert (=> d!1599108 (= (lemmaIsPrefixRefl!3568 (list!18365 input!1342) (list!18365 input!1342)) lt!2051582)))

(declare-fun bs!1183251 () Bool)

(assert (= bs!1183251 d!1599108))

(assert (=> bs!1183251 m!5993376))

(assert (=> bs!1183251 m!5993376))

(assert (=> bs!1183251 m!5993946))

(assert (=> bs!1183251 m!5993376))

(assert (=> bs!1183251 m!5993376))

(declare-fun m!5994924 () Bool)

(assert (=> bs!1183251 m!5994924))

(assert (=> d!1598838 d!1599108))

(assert (=> d!1598838 d!1598832))

(declare-fun b!4968353 () Bool)

(declare-fun e!3105408 () Unit!148361)

(declare-fun Unit!148374 () Unit!148361)

(assert (=> b!4968353 (= e!3105408 Unit!148374)))

(declare-fun b!4968354 () Bool)

(declare-fun c!847715 () Bool)

(declare-fun call!346472 () Bool)

(assert (=> b!4968354 (= c!847715 call!346472)))

(declare-fun lt!2051599 () Unit!148361)

(declare-fun lt!2051589 () Unit!148361)

(assert (=> b!4968354 (= lt!2051599 lt!2051589)))

(assert (=> b!4968354 (= lt!2051120 lt!2051366)))

(declare-fun call!346475 () Unit!148361)

(assert (=> b!4968354 (= lt!2051589 call!346475)))

(declare-fun lt!2051609 () Unit!148361)

(declare-fun lt!2051594 () Unit!148361)

(assert (=> b!4968354 (= lt!2051609 lt!2051594)))

(declare-fun call!346469 () Bool)

(assert (=> b!4968354 call!346469))

(declare-fun call!346471 () Unit!148361)

(assert (=> b!4968354 (= lt!2051594 call!346471)))

(declare-fun e!3105404 () tuple2!62174)

(declare-fun e!3105405 () tuple2!62174)

(assert (=> b!4968354 (= e!3105404 e!3105405)))

(declare-fun b!4968355 () Bool)

(declare-fun e!3105406 () Bool)

(declare-fun e!3105403 () Bool)

(assert (=> b!4968355 (= e!3105406 e!3105403)))

(declare-fun res!2120751 () Bool)

(assert (=> b!4968355 (=> res!2120751 e!3105403)))

(declare-fun lt!2051601 () tuple2!62174)

(assert (=> b!4968355 (= res!2120751 (isEmpty!30938 (_1!34390 lt!2051601)))))

(declare-fun bm!346464 () Bool)

(declare-fun call!346470 () Regex!13626)

(declare-fun call!346474 () C!27502)

(assert (=> bm!346464 (= call!346470 (derivativeStep!3922 call!346429 call!346474))))

(declare-fun b!4968356 () Bool)

(declare-fun e!3105401 () tuple2!62174)

(assert (=> b!4968356 (= e!3105401 e!3105404)))

(declare-fun c!847717 () Bool)

(assert (=> b!4968356 (= c!847717 (= (+ (size!38072 Nil!57443) 1) (size!38072 lt!2051120)))))

(declare-fun b!4968357 () Bool)

(assert (=> b!4968357 (= e!3105405 (tuple2!62175 Nil!57443 lt!2051120))))

(declare-fun b!4968358 () Bool)

(assert (=> b!4968358 (= e!3105401 (tuple2!62175 Nil!57443 lt!2051120))))

(declare-fun b!4968359 () Bool)

(declare-fun e!3105402 () tuple2!62174)

(assert (=> b!4968359 (= e!3105402 (tuple2!62175 lt!2051366 call!346427))))

(declare-fun bm!346465 () Bool)

(assert (=> bm!346465 (= call!346471 (lemmaIsPrefixRefl!3568 lt!2051120 lt!2051120))))

(declare-fun bm!346466 () Bool)

(assert (=> bm!346466 (= call!346469 (isPrefix!5244 lt!2051120 lt!2051120))))

(declare-fun bm!346467 () Bool)

(declare-fun call!346468 () List!57567)

(assert (=> bm!346467 (= call!346468 (tail!9801 call!346427))))

(declare-fun b!4968360 () Bool)

(declare-fun c!847713 () Bool)

(assert (=> b!4968360 (= c!847713 call!346472)))

(declare-fun lt!2051607 () Unit!148361)

(declare-fun lt!2051584 () Unit!148361)

(assert (=> b!4968360 (= lt!2051607 lt!2051584)))

(declare-fun lt!2051597 () List!57567)

(declare-fun lt!2051587 () C!27502)

(assert (=> b!4968360 (= (++!12532 (++!12532 lt!2051366 (Cons!57443 lt!2051587 Nil!57443)) lt!2051597) lt!2051120)))

(assert (=> b!4968360 (= lt!2051584 (lemmaMoveElementToOtherListKeepsConcatEq!1445 lt!2051366 lt!2051587 lt!2051597 lt!2051120))))

(assert (=> b!4968360 (= lt!2051597 (tail!9801 call!346427))))

(assert (=> b!4968360 (= lt!2051587 (head!10668 call!346427))))

(declare-fun lt!2051600 () Unit!148361)

(declare-fun lt!2051595 () Unit!148361)

(assert (=> b!4968360 (= lt!2051600 lt!2051595)))

(assert (=> b!4968360 (isPrefix!5244 (++!12532 lt!2051366 (Cons!57443 (head!10668 (getSuffix!3088 lt!2051120 lt!2051366)) Nil!57443)) lt!2051120)))

(assert (=> b!4968360 (= lt!2051595 (lemmaAddHeadSuffixToPrefixStillPrefix!835 lt!2051366 lt!2051120))))

(declare-fun lt!2051604 () Unit!148361)

(declare-fun lt!2051606 () Unit!148361)

(assert (=> b!4968360 (= lt!2051604 lt!2051606)))

(assert (=> b!4968360 (= lt!2051606 (lemmaAddHeadSuffixToPrefixStillPrefix!835 lt!2051366 lt!2051120))))

(declare-fun lt!2051591 () List!57567)

(assert (=> b!4968360 (= lt!2051591 (++!12532 lt!2051366 (Cons!57443 (head!10668 call!346427) Nil!57443)))))

(declare-fun lt!2051593 () Unit!148361)

(assert (=> b!4968360 (= lt!2051593 e!3105408)))

(declare-fun c!847718 () Bool)

(assert (=> b!4968360 (= c!847718 (= (size!38072 lt!2051366) (size!38072 lt!2051120)))))

(declare-fun lt!2051592 () Unit!148361)

(declare-fun lt!2051610 () Unit!148361)

(assert (=> b!4968360 (= lt!2051592 lt!2051610)))

(assert (=> b!4968360 (<= (size!38072 lt!2051366) (size!38072 lt!2051120))))

(assert (=> b!4968360 (= lt!2051610 (lemmaIsPrefixThenSmallerEqSize!761 lt!2051366 lt!2051120))))

(declare-fun e!3105407 () tuple2!62174)

(assert (=> b!4968360 (= e!3105404 e!3105407)))

(declare-fun b!4968361 () Bool)

(declare-fun lt!2051596 () tuple2!62174)

(assert (=> b!4968361 (= e!3105402 lt!2051596)))

(declare-fun b!4968362 () Bool)

(assert (=> b!4968362 (= e!3105405 (tuple2!62175 lt!2051366 Nil!57443))))

(declare-fun b!4968363 () Bool)

(declare-fun Unit!148375 () Unit!148361)

(assert (=> b!4968363 (= e!3105408 Unit!148375)))

(declare-fun lt!2051586 () Unit!148361)

(assert (=> b!4968363 (= lt!2051586 call!346471)))

(assert (=> b!4968363 call!346469))

(declare-fun lt!2051605 () Unit!148361)

(assert (=> b!4968363 (= lt!2051605 lt!2051586)))

(declare-fun lt!2051598 () Unit!148361)

(assert (=> b!4968363 (= lt!2051598 call!346475)))

(assert (=> b!4968363 (= lt!2051120 lt!2051366)))

(declare-fun lt!2051588 () Unit!148361)

(assert (=> b!4968363 (= lt!2051588 lt!2051598)))

(assert (=> b!4968363 false))

(declare-fun bm!346468 () Bool)

(assert (=> bm!346468 (= call!346472 (nullable!4620 call!346429))))

(declare-fun b!4968364 () Bool)

(assert (=> b!4968364 (= e!3105407 e!3105402)))

(declare-fun call!346473 () tuple2!62174)

(assert (=> b!4968364 (= lt!2051596 call!346473)))

(declare-fun c!847716 () Bool)

(assert (=> b!4968364 (= c!847716 (isEmpty!30938 (_1!34390 lt!2051596)))))

(declare-fun d!1599110 () Bool)

(assert (=> d!1599110 e!3105406))

(declare-fun res!2120752 () Bool)

(assert (=> d!1599110 (=> (not res!2120752) (not e!3105406))))

(assert (=> d!1599110 (= res!2120752 (= (++!12532 (_1!34390 lt!2051601) (_2!34390 lt!2051601)) lt!2051120))))

(assert (=> d!1599110 (= lt!2051601 e!3105401)))

(declare-fun c!847714 () Bool)

(assert (=> d!1599110 (= c!847714 (lostCause!1133 call!346429))))

(declare-fun lt!2051590 () Unit!148361)

(declare-fun Unit!148376 () Unit!148361)

(assert (=> d!1599110 (= lt!2051590 Unit!148376)))

(assert (=> d!1599110 (= (getSuffix!3088 lt!2051120 lt!2051366) call!346427)))

(declare-fun lt!2051583 () Unit!148361)

(declare-fun lt!2051603 () Unit!148361)

(assert (=> d!1599110 (= lt!2051583 lt!2051603)))

(declare-fun lt!2051608 () List!57567)

(assert (=> d!1599110 (= call!346427 lt!2051608)))

(assert (=> d!1599110 (= lt!2051603 (lemmaSamePrefixThenSameSuffix!2501 lt!2051366 call!346427 lt!2051366 lt!2051608 lt!2051120))))

(assert (=> d!1599110 (= lt!2051608 (getSuffix!3088 lt!2051120 lt!2051366))))

(declare-fun lt!2051585 () Unit!148361)

(declare-fun lt!2051602 () Unit!148361)

(assert (=> d!1599110 (= lt!2051585 lt!2051602)))

(assert (=> d!1599110 (isPrefix!5244 lt!2051366 (++!12532 lt!2051366 call!346427))))

(assert (=> d!1599110 (= lt!2051602 (lemmaConcatTwoListThenFirstIsPrefix!3347 lt!2051366 call!346427))))

(assert (=> d!1599110 (validRegex!5969 call!346429)))

(assert (=> d!1599110 (= (findLongestMatchInner!1855 call!346429 lt!2051366 (+ (size!38072 Nil!57443) 1) call!346427 lt!2051120 (size!38072 lt!2051120)) lt!2051601)))

(declare-fun bm!346463 () Bool)

(assert (=> bm!346463 (= call!346475 (lemmaIsPrefixSameLengthThenSameList!1208 lt!2051120 lt!2051366 lt!2051120))))

(declare-fun bm!346469 () Bool)

(assert (=> bm!346469 (= call!346473 (findLongestMatchInner!1855 call!346470 lt!2051591 (+ (size!38072 Nil!57443) 1 1) call!346468 lt!2051120 (size!38072 lt!2051120)))))

(declare-fun bm!346470 () Bool)

(assert (=> bm!346470 (= call!346474 (head!10668 call!346427))))

(declare-fun b!4968365 () Bool)

(assert (=> b!4968365 (= e!3105407 call!346473)))

(declare-fun b!4968366 () Bool)

(assert (=> b!4968366 (= e!3105403 (>= (size!38072 (_1!34390 lt!2051601)) (size!38072 lt!2051366)))))

(assert (= (and d!1599110 c!847714) b!4968358))

(assert (= (and d!1599110 (not c!847714)) b!4968356))

(assert (= (and b!4968356 c!847717) b!4968354))

(assert (= (and b!4968356 (not c!847717)) b!4968360))

(assert (= (and b!4968354 c!847715) b!4968362))

(assert (= (and b!4968354 (not c!847715)) b!4968357))

(assert (= (and b!4968360 c!847718) b!4968363))

(assert (= (and b!4968360 (not c!847718)) b!4968353))

(assert (= (and b!4968360 c!847713) b!4968364))

(assert (= (and b!4968360 (not c!847713)) b!4968365))

(assert (= (and b!4968364 c!847716) b!4968359))

(assert (= (and b!4968364 (not c!847716)) b!4968361))

(assert (= (or b!4968364 b!4968365) bm!346470))

(assert (= (or b!4968364 b!4968365) bm!346467))

(assert (= (or b!4968364 b!4968365) bm!346464))

(assert (= (or b!4968364 b!4968365) bm!346469))

(assert (= (or b!4968354 b!4968363) bm!346465))

(assert (= (or b!4968354 b!4968363) bm!346463))

(assert (= (or b!4968354 b!4968360) bm!346468))

(assert (= (or b!4968354 b!4968363) bm!346466))

(assert (= (and d!1599110 res!2120752) b!4968355))

(assert (= (and b!4968355 (not res!2120751)) b!4968366))

(declare-fun m!5994926 () Bool)

(assert (=> b!4968366 m!5994926))

(declare-fun m!5994928 () Bool)

(assert (=> b!4968366 m!5994928))

(declare-fun m!5994930 () Bool)

(assert (=> b!4968364 m!5994930))

(declare-fun m!5994932 () Bool)

(assert (=> b!4968355 m!5994932))

(declare-fun m!5994934 () Bool)

(assert (=> b!4968360 m!5994934))

(assert (=> b!4968360 m!5994934))

(declare-fun m!5994936 () Bool)

(assert (=> b!4968360 m!5994936))

(declare-fun m!5994938 () Bool)

(assert (=> b!4968360 m!5994938))

(assert (=> b!4968360 m!5993570))

(declare-fun m!5994940 () Bool)

(assert (=> b!4968360 m!5994940))

(declare-fun m!5994942 () Bool)

(assert (=> b!4968360 m!5994942))

(declare-fun m!5994944 () Bool)

(assert (=> b!4968360 m!5994944))

(declare-fun m!5994946 () Bool)

(assert (=> b!4968360 m!5994946))

(assert (=> b!4968360 m!5994940))

(declare-fun m!5994948 () Bool)

(assert (=> b!4968360 m!5994948))

(declare-fun m!5994950 () Bool)

(assert (=> b!4968360 m!5994950))

(declare-fun m!5994952 () Bool)

(assert (=> b!4968360 m!5994952))

(assert (=> b!4968360 m!5994928))

(declare-fun m!5994954 () Bool)

(assert (=> b!4968360 m!5994954))

(assert (=> b!4968360 m!5994938))

(declare-fun m!5994956 () Bool)

(assert (=> b!4968360 m!5994956))

(assert (=> bm!346466 m!5994036))

(assert (=> bm!346470 m!5994950))

(assert (=> bm!346469 m!5993570))

(declare-fun m!5994958 () Bool)

(assert (=> bm!346469 m!5994958))

(assert (=> bm!346465 m!5994040))

(declare-fun m!5994960 () Bool)

(assert (=> bm!346464 m!5994960))

(assert (=> bm!346467 m!5994944))

(declare-fun m!5994962 () Bool)

(assert (=> bm!346463 m!5994962))

(declare-fun m!5994964 () Bool)

(assert (=> bm!346468 m!5994964))

(declare-fun m!5994966 () Bool)

(assert (=> d!1599110 m!5994966))

(declare-fun m!5994968 () Bool)

(assert (=> d!1599110 m!5994968))

(declare-fun m!5994970 () Bool)

(assert (=> d!1599110 m!5994970))

(assert (=> d!1599110 m!5994938))

(assert (=> d!1599110 m!5994966))

(declare-fun m!5994972 () Bool)

(assert (=> d!1599110 m!5994972))

(declare-fun m!5994974 () Bool)

(assert (=> d!1599110 m!5994974))

(declare-fun m!5994976 () Bool)

(assert (=> d!1599110 m!5994976))

(declare-fun m!5994978 () Bool)

(assert (=> d!1599110 m!5994978))

(assert (=> bm!346428 d!1599110))

(assert (=> d!1598908 d!1598916))

(assert (=> d!1598908 d!1598698))

(assert (=> d!1598908 d!1598700))

(assert (=> d!1598908 d!1598832))

(declare-fun d!1599112 () Bool)

(assert (=> d!1599112 (= (list!18365 (_2!34386 (get!19941 lt!2051435))) (list!18367 (c!847515 (_2!34386 (get!19941 lt!2051435)))))))

(declare-fun bs!1183252 () Bool)

(assert (= bs!1183252 d!1599112))

(declare-fun m!5994980 () Bool)

(assert (=> bs!1183252 m!5994980))

(assert (=> b!4967867 d!1599112))

(declare-fun d!1599114 () Bool)

(assert (=> d!1599114 (= (get!19940 (maxPrefixZipper!786 thiss!15247 (t!368628 (t!368628 rulesArg!259)) (list!18365 input!1342))) (v!50437 (maxPrefixZipper!786 thiss!15247 (t!368628 (t!368628 rulesArg!259)) (list!18365 input!1342))))))

(assert (=> b!4967867 d!1599114))

(assert (=> b!4967867 d!1598680))

(declare-fun d!1599116 () Bool)

(declare-fun lt!2051615 () Option!14449)

(assert (=> d!1599116 (= lt!2051615 (maxPrefix!4660 thiss!15247 (t!368628 (t!368628 rulesArg!259)) (list!18365 input!1342)))))

(declare-fun e!3105409 () Option!14449)

(assert (=> d!1599116 (= lt!2051615 e!3105409)))

(declare-fun c!847719 () Bool)

(assert (=> d!1599116 (= c!847719 (and (is-Cons!57444 (t!368628 (t!368628 rulesArg!259))) (is-Nil!57444 (t!368628 (t!368628 (t!368628 rulesArg!259))))))))

(declare-fun lt!2051612 () Unit!148361)

(declare-fun lt!2051611 () Unit!148361)

(assert (=> d!1599116 (= lt!2051612 lt!2051611)))

(assert (=> d!1599116 (isPrefix!5244 (list!18365 input!1342) (list!18365 input!1342))))

(assert (=> d!1599116 (= lt!2051611 (lemmaIsPrefixRefl!3568 (list!18365 input!1342) (list!18365 input!1342)))))

(assert (=> d!1599116 (rulesValidInductive!3296 thiss!15247 (t!368628 (t!368628 rulesArg!259)))))

(assert (=> d!1599116 (= (maxPrefixZipper!786 thiss!15247 (t!368628 (t!368628 rulesArg!259)) (list!18365 input!1342)) lt!2051615)))

(declare-fun bm!346471 () Bool)

(declare-fun call!346476 () Option!14449)

(assert (=> bm!346471 (= call!346476 (maxPrefixOneRuleZipper!296 thiss!15247 (h!63892 (t!368628 (t!368628 rulesArg!259))) (list!18365 input!1342)))))

(declare-fun b!4968367 () Bool)

(assert (=> b!4968367 (= e!3105409 call!346476)))

(declare-fun b!4968368 () Bool)

(declare-fun lt!2051614 () Option!14449)

(declare-fun lt!2051613 () Option!14449)

(assert (=> b!4968368 (= e!3105409 (ite (and (is-None!14448 lt!2051614) (is-None!14448 lt!2051613)) None!14448 (ite (is-None!14448 lt!2051613) lt!2051614 (ite (is-None!14448 lt!2051614) lt!2051613 (ite (>= (size!38070 (_1!34385 (v!50437 lt!2051614))) (size!38070 (_1!34385 (v!50437 lt!2051613)))) lt!2051614 lt!2051613)))))))

(assert (=> b!4968368 (= lt!2051614 call!346476)))

(assert (=> b!4968368 (= lt!2051613 (maxPrefixZipper!786 thiss!15247 (t!368628 (t!368628 (t!368628 rulesArg!259))) (list!18365 input!1342)))))

(assert (= (and d!1599116 c!847719) b!4968367))

(assert (= (and d!1599116 (not c!847719)) b!4968368))

(assert (= (or b!4968367 b!4968368) bm!346471))

(assert (=> d!1599116 m!5993376))

(assert (=> d!1599116 m!5994194))

(assert (=> d!1599116 m!5993376))

(assert (=> d!1599116 m!5993376))

(assert (=> d!1599116 m!5993946))

(assert (=> d!1599116 m!5993376))

(assert (=> d!1599116 m!5993376))

(assert (=> d!1599116 m!5993948))

(assert (=> d!1599116 m!5993940))

(assert (=> bm!346471 m!5993376))

(declare-fun m!5994982 () Bool)

(assert (=> bm!346471 m!5994982))

(assert (=> b!4968368 m!5993376))

(declare-fun m!5994984 () Bool)

(assert (=> b!4968368 m!5994984))

(assert (=> b!4967867 d!1599116))

(declare-fun d!1599118 () Bool)

(assert (=> d!1599118 (= (get!19941 lt!2051435) (v!50438 lt!2051435))))

(assert (=> b!4967867 d!1599118))

(declare-fun b!4968369 () Bool)

(declare-fun e!3105411 () Int)

(declare-fun call!346477 () Int)

(assert (=> b!4968369 (= e!3105411 call!346477)))

(declare-fun b!4968370 () Bool)

(declare-fun e!3105410 () Bool)

(declare-fun lt!2051616 () List!57567)

(assert (=> b!4968370 (= e!3105410 (= (size!38072 lt!2051616) e!3105411))))

(declare-fun c!847723 () Bool)

(assert (=> b!4968370 (= c!847723 (<= (- (- (size!38072 (list!18365 totalInput!464)) (size!38072 lt!2050949)) 1) 0))))

(declare-fun b!4968371 () Bool)

(declare-fun e!3105414 () Int)

(assert (=> b!4968371 (= e!3105411 e!3105414)))

(declare-fun c!847720 () Bool)

(assert (=> b!4968371 (= c!847720 (>= (- (- (size!38072 (list!18365 totalInput!464)) (size!38072 lt!2050949)) 1) call!346477))))

(declare-fun d!1599120 () Bool)

(assert (=> d!1599120 e!3105410))

(declare-fun res!2120753 () Bool)

(assert (=> d!1599120 (=> (not res!2120753) (not e!3105410))))

(assert (=> d!1599120 (= res!2120753 (set.subset (content!10184 lt!2051616) (content!10184 (t!368627 (list!18365 totalInput!464)))))))

(declare-fun e!3105412 () List!57567)

(assert (=> d!1599120 (= lt!2051616 e!3105412)))

(declare-fun c!847721 () Bool)

(assert (=> d!1599120 (= c!847721 (is-Nil!57443 (t!368627 (list!18365 totalInput!464))))))

(assert (=> d!1599120 (= (drop!2349 (t!368627 (list!18365 totalInput!464)) (- (- (size!38072 (list!18365 totalInput!464)) (size!38072 lt!2050949)) 1)) lt!2051616)))

(declare-fun b!4968372 () Bool)

(declare-fun e!3105413 () List!57567)

(assert (=> b!4968372 (= e!3105413 (t!368627 (list!18365 totalInput!464)))))

(declare-fun b!4968373 () Bool)

(assert (=> b!4968373 (= e!3105413 (drop!2349 (t!368627 (t!368627 (list!18365 totalInput!464))) (- (- (- (size!38072 (list!18365 totalInput!464)) (size!38072 lt!2050949)) 1) 1)))))

(declare-fun b!4968374 () Bool)

(assert (=> b!4968374 (= e!3105412 Nil!57443)))

(declare-fun b!4968375 () Bool)

(assert (=> b!4968375 (= e!3105414 (- call!346477 (- (- (size!38072 (list!18365 totalInput!464)) (size!38072 lt!2050949)) 1)))))

(declare-fun b!4968376 () Bool)

(assert (=> b!4968376 (= e!3105412 e!3105413)))

(declare-fun c!847722 () Bool)

(assert (=> b!4968376 (= c!847722 (<= (- (- (size!38072 (list!18365 totalInput!464)) (size!38072 lt!2050949)) 1) 0))))

(declare-fun b!4968377 () Bool)

(assert (=> b!4968377 (= e!3105414 0)))

(declare-fun bm!346472 () Bool)

(assert (=> bm!346472 (= call!346477 (size!38072 (t!368627 (list!18365 totalInput!464))))))

(assert (= (and d!1599120 c!847721) b!4968374))

(assert (= (and d!1599120 (not c!847721)) b!4968376))

(assert (= (and b!4968376 c!847722) b!4968372))

(assert (= (and b!4968376 (not c!847722)) b!4968373))

(assert (= (and d!1599120 res!2120753) b!4968370))

(assert (= (and b!4968370 c!847723) b!4968369))

(assert (= (and b!4968370 (not c!847723)) b!4968371))

(assert (= (and b!4968371 c!847720) b!4968377))

(assert (= (and b!4968371 (not c!847720)) b!4968375))

(assert (= (or b!4968369 b!4968371 b!4968375) bm!346472))

(declare-fun m!5994986 () Bool)

(assert (=> b!4968370 m!5994986))

(declare-fun m!5994988 () Bool)

(assert (=> d!1599120 m!5994988))

(declare-fun m!5994990 () Bool)

(assert (=> d!1599120 m!5994990))

(declare-fun m!5994992 () Bool)

(assert (=> b!4968373 m!5994992))

(assert (=> bm!346472 m!5993888))

(assert (=> b!4967917 d!1599120))

(declare-fun d!1599122 () Bool)

(declare-fun lt!2051617 () Bool)

(assert (=> d!1599122 (= lt!2051617 (set.member (rule!11637 (_1!34385 (get!19940 lt!2051467))) (content!10183 (t!368628 rulesArg!259))))))

(declare-fun e!3105416 () Bool)

(assert (=> d!1599122 (= lt!2051617 e!3105416)))

(declare-fun res!2120755 () Bool)

(assert (=> d!1599122 (=> (not res!2120755) (not e!3105416))))

(assert (=> d!1599122 (= res!2120755 (is-Cons!57444 (t!368628 rulesArg!259)))))

(assert (=> d!1599122 (= (contains!19538 (t!368628 rulesArg!259) (rule!11637 (_1!34385 (get!19940 lt!2051467)))) lt!2051617)))

(declare-fun b!4968378 () Bool)

(declare-fun e!3105415 () Bool)

(assert (=> b!4968378 (= e!3105416 e!3105415)))

(declare-fun res!2120754 () Bool)

(assert (=> b!4968378 (=> res!2120754 e!3105415)))

(assert (=> b!4968378 (= res!2120754 (= (h!63892 (t!368628 rulesArg!259)) (rule!11637 (_1!34385 (get!19940 lt!2051467)))))))

(declare-fun b!4968379 () Bool)

(assert (=> b!4968379 (= e!3105415 (contains!19538 (t!368628 (t!368628 rulesArg!259)) (rule!11637 (_1!34385 (get!19940 lt!2051467)))))))

(assert (= (and d!1599122 res!2120755) b!4968378))

(assert (= (and b!4968378 (not res!2120754)) b!4968379))

(declare-fun m!5994994 () Bool)

(assert (=> d!1599122 m!5994994))

(declare-fun m!5994996 () Bool)

(assert (=> d!1599122 m!5994996))

(declare-fun m!5994998 () Bool)

(assert (=> b!4968379 m!5994998))

(assert (=> b!4967984 d!1599122))

(declare-fun d!1599124 () Bool)

(assert (=> d!1599124 (= (get!19940 lt!2051467) (v!50437 lt!2051467))))

(assert (=> b!4967984 d!1599124))

(declare-fun b!4968380 () Bool)

(declare-fun e!3105420 () Bool)

(declare-fun lt!2051618 () Bool)

(declare-fun call!346478 () Bool)

(assert (=> b!4968380 (= e!3105420 (= lt!2051618 call!346478))))

(declare-fun b!4968381 () Bool)

(declare-fun res!2120758 () Bool)

(declare-fun e!3105417 () Bool)

(assert (=> b!4968381 (=> (not res!2120758) (not e!3105417))))

(assert (=> b!4968381 (= res!2120758 (isEmpty!30938 (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051467)))))))))

(declare-fun b!4968382 () Bool)

(assert (=> b!4968382 (= e!3105417 (= (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051467))))) (c!847514 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467)))))))))

(declare-fun b!4968383 () Bool)

(declare-fun e!3105419 () Bool)

(assert (=> b!4968383 (= e!3105419 (not lt!2051618))))

(declare-fun b!4968384 () Bool)

(declare-fun e!3105423 () Bool)

(assert (=> b!4968384 (= e!3105423 (matchR!6636 (derivativeStep!3922 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467)))) (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051467)))))) (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051467)))))))))

(declare-fun bm!346473 () Bool)

(assert (=> bm!346473 (= call!346478 (isEmpty!30938 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051467))))))))

(declare-fun b!4968385 () Bool)

(declare-fun res!2120756 () Bool)

(assert (=> b!4968385 (=> (not res!2120756) (not e!3105417))))

(assert (=> b!4968385 (= res!2120756 (not call!346478))))

(declare-fun b!4968386 () Bool)

(declare-fun e!3105421 () Bool)

(declare-fun e!3105422 () Bool)

(assert (=> b!4968386 (= e!3105421 e!3105422)))

(declare-fun res!2120757 () Bool)

(assert (=> b!4968386 (=> (not res!2120757) (not e!3105422))))

(assert (=> b!4968386 (= res!2120757 (not lt!2051618))))

(declare-fun b!4968387 () Bool)

(declare-fun res!2120759 () Bool)

(declare-fun e!3105418 () Bool)

(assert (=> b!4968387 (=> res!2120759 e!3105418)))

(assert (=> b!4968387 (= res!2120759 (not (isEmpty!30938 (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051467))))))))))

(declare-fun b!4968388 () Bool)

(assert (=> b!4968388 (= e!3105423 (nullable!4620 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467))))))))

(declare-fun b!4968389 () Bool)

(assert (=> b!4968389 (= e!3105418 (not (= (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051467))))) (c!847514 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467))))))))))

(declare-fun b!4968390 () Bool)

(declare-fun res!2120763 () Bool)

(assert (=> b!4968390 (=> res!2120763 e!3105421)))

(assert (=> b!4968390 (= res!2120763 e!3105417)))

(declare-fun res!2120761 () Bool)

(assert (=> b!4968390 (=> (not res!2120761) (not e!3105417))))

(assert (=> b!4968390 (= res!2120761 lt!2051618)))

(declare-fun b!4968391 () Bool)

(assert (=> b!4968391 (= e!3105420 e!3105419)))

(declare-fun c!847726 () Bool)

(assert (=> b!4968391 (= c!847726 (is-EmptyLang!13626 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467))))))))

(declare-fun d!1599126 () Bool)

(assert (=> d!1599126 e!3105420))

(declare-fun c!847725 () Bool)

(assert (=> d!1599126 (= c!847725 (is-EmptyExpr!13626 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467))))))))

(assert (=> d!1599126 (= lt!2051618 e!3105423)))

(declare-fun c!847724 () Bool)

(assert (=> d!1599126 (= c!847724 (isEmpty!30938 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051467))))))))

(assert (=> d!1599126 (validRegex!5969 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467)))))))

(assert (=> d!1599126 (= (matchR!6636 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467)))) (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051467))))) lt!2051618)))

(declare-fun b!4968392 () Bool)

(declare-fun res!2120762 () Bool)

(assert (=> b!4968392 (=> res!2120762 e!3105421)))

(assert (=> b!4968392 (= res!2120762 (not (is-ElementMatch!13626 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467)))))))))

(assert (=> b!4968392 (= e!3105419 e!3105421)))

(declare-fun b!4968393 () Bool)

(assert (=> b!4968393 (= e!3105422 e!3105418)))

(declare-fun res!2120760 () Bool)

(assert (=> b!4968393 (=> res!2120760 e!3105418)))

(assert (=> b!4968393 (= res!2120760 call!346478)))

(assert (= (and d!1599126 c!847724) b!4968388))

(assert (= (and d!1599126 (not c!847724)) b!4968384))

(assert (= (and d!1599126 c!847725) b!4968380))

(assert (= (and d!1599126 (not c!847725)) b!4968391))

(assert (= (and b!4968391 c!847726) b!4968383))

(assert (= (and b!4968391 (not c!847726)) b!4968392))

(assert (= (and b!4968392 (not res!2120762)) b!4968390))

(assert (= (and b!4968390 res!2120761) b!4968385))

(assert (= (and b!4968385 res!2120756) b!4968381))

(assert (= (and b!4968381 res!2120758) b!4968382))

(assert (= (and b!4968390 (not res!2120763)) b!4968386))

(assert (= (and b!4968386 res!2120757) b!4968393))

(assert (= (and b!4968393 (not res!2120760)) b!4968387))

(assert (= (and b!4968387 (not res!2120759)) b!4968389))

(assert (= (or b!4968380 b!4968385 b!4968393) bm!346473))

(assert (=> b!4968384 m!5994372))

(declare-fun m!5995000 () Bool)

(assert (=> b!4968384 m!5995000))

(assert (=> b!4968384 m!5995000))

(declare-fun m!5995002 () Bool)

(assert (=> b!4968384 m!5995002))

(assert (=> b!4968384 m!5994372))

(declare-fun m!5995004 () Bool)

(assert (=> b!4968384 m!5995004))

(assert (=> b!4968384 m!5995002))

(assert (=> b!4968384 m!5995004))

(declare-fun m!5995006 () Bool)

(assert (=> b!4968384 m!5995006))

(assert (=> b!4968389 m!5994372))

(assert (=> b!4968389 m!5995000))

(assert (=> b!4968387 m!5994372))

(assert (=> b!4968387 m!5995004))

(assert (=> b!4968387 m!5995004))

(declare-fun m!5995008 () Bool)

(assert (=> b!4968387 m!5995008))

(assert (=> b!4968382 m!5994372))

(assert (=> b!4968382 m!5995000))

(declare-fun m!5995010 () Bool)

(assert (=> b!4968388 m!5995010))

(assert (=> b!4968381 m!5994372))

(assert (=> b!4968381 m!5995004))

(assert (=> b!4968381 m!5995004))

(assert (=> b!4968381 m!5995008))

(assert (=> bm!346473 m!5994372))

(declare-fun m!5995012 () Bool)

(assert (=> bm!346473 m!5995012))

(assert (=> d!1599126 m!5994372))

(assert (=> d!1599126 m!5995012))

(declare-fun m!5995014 () Bool)

(assert (=> d!1599126 m!5995014))

(assert (=> b!4967991 d!1599126))

(assert (=> b!4967991 d!1599124))

(declare-fun d!1599128 () Bool)

(assert (=> d!1599128 (= (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051467)))) (list!18367 (c!847515 (charsOf!5437 (_1!34385 (get!19940 lt!2051467))))))))

(declare-fun bs!1183253 () Bool)

(assert (= bs!1183253 d!1599128))

(declare-fun m!5995016 () Bool)

(assert (=> bs!1183253 m!5995016))

(assert (=> b!4967991 d!1599128))

(declare-fun d!1599130 () Bool)

(declare-fun lt!2051619 () BalanceConc!29720)

(assert (=> d!1599130 (= (list!18365 lt!2051619) (originalCharacters!8672 (_1!34385 (get!19940 lt!2051467))))))

(assert (=> d!1599130 (= lt!2051619 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467))))) (value!268642 (_1!34385 (get!19940 lt!2051467)))))))

(assert (=> d!1599130 (= (charsOf!5437 (_1!34385 (get!19940 lt!2051467))) lt!2051619)))

(declare-fun b_lambda!196917 () Bool)

(assert (=> (not b_lambda!196917) (not d!1599130)))

(declare-fun t!368709 () Bool)

(declare-fun tb!260683 () Bool)

(assert (=> (and b!4967137 (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467)))))) t!368709) tb!260683))

(declare-fun b!4968394 () Bool)

(declare-fun e!3105424 () Bool)

(declare-fun tp!1393479 () Bool)

(assert (=> b!4968394 (= e!3105424 (and (inv!75075 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467))))) (value!268642 (_1!34385 (get!19940 lt!2051467)))))) tp!1393479))))

(declare-fun result!325802 () Bool)

(assert (=> tb!260683 (= result!325802 (and (inv!75074 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467))))) (value!268642 (_1!34385 (get!19940 lt!2051467))))) e!3105424))))

(assert (= tb!260683 b!4968394))

(declare-fun m!5995018 () Bool)

(assert (=> b!4968394 m!5995018))

(declare-fun m!5995020 () Bool)

(assert (=> tb!260683 m!5995020))

(assert (=> d!1599130 t!368709))

(declare-fun b_and!348259 () Bool)

(assert (= b_and!348199 (and (=> t!368709 result!325802) b_and!348259)))

(declare-fun t!368711 () Bool)

(declare-fun tb!260685 () Bool)

(assert (=> (and b!4967394 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467)))))) t!368711) tb!260685))

(declare-fun result!325804 () Bool)

(assert (= result!325804 result!325802))

(assert (=> d!1599130 t!368711))

(declare-fun b_and!348261 () Bool)

(assert (= b_and!348201 (and (=> t!368711 result!325804) b_and!348261)))

(declare-fun t!368713 () Bool)

(declare-fun tb!260687 () Bool)

(assert (=> (and b!4968022 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467)))))) t!368713) tb!260687))

(declare-fun result!325806 () Bool)

(assert (= result!325806 result!325802))

(assert (=> d!1599130 t!368713))

(declare-fun b_and!348263 () Bool)

(assert (= b_and!348203 (and (=> t!368713 result!325806) b_and!348263)))

(declare-fun m!5995022 () Bool)

(assert (=> d!1599130 m!5995022))

(declare-fun m!5995024 () Bool)

(assert (=> d!1599130 m!5995024))

(assert (=> b!4967991 d!1599130))

(declare-fun d!1599132 () Bool)

(assert (=> d!1599132 (= (head!10668 lt!2051042) (h!63891 lt!2051042))))

(assert (=> b!4967688 d!1599132))

(declare-fun d!1599134 () Bool)

(assert (=> d!1599134 (= (head!10668 lt!2051040) (h!63891 lt!2051040))))

(assert (=> b!4967688 d!1599134))

(declare-fun d!1599136 () Bool)

(assert (=> d!1599136 (isPrefix!5244 lt!2051120 lt!2051120)))

(declare-fun lt!2051620 () Unit!148361)

(assert (=> d!1599136 (= lt!2051620 (choose!36668 lt!2051120 lt!2051120))))

(assert (=> d!1599136 (= (lemmaIsPrefixRefl!3568 lt!2051120 lt!2051120) lt!2051620)))

(declare-fun bs!1183254 () Bool)

(assert (= bs!1183254 d!1599136))

(assert (=> bs!1183254 m!5994036))

(declare-fun m!5995026 () Bool)

(assert (=> bs!1183254 m!5995026))

(assert (=> bm!346424 d!1599136))

(declare-fun d!1599138 () Bool)

(declare-fun lt!2051621 () Int)

(assert (=> d!1599138 (>= lt!2051621 0)))

(declare-fun e!3105425 () Int)

(assert (=> d!1599138 (= lt!2051621 e!3105425)))

(declare-fun c!847727 () Bool)

(assert (=> d!1599138 (= c!847727 (is-Nil!57443 (_2!34385 (get!19940 lt!2051453))))))

(assert (=> d!1599138 (= (size!38072 (_2!34385 (get!19940 lt!2051453))) lt!2051621)))

(declare-fun b!4968395 () Bool)

(assert (=> b!4968395 (= e!3105425 0)))

(declare-fun b!4968396 () Bool)

(assert (=> b!4968396 (= e!3105425 (+ 1 (size!38072 (t!368627 (_2!34385 (get!19940 lt!2051453))))))))

(assert (= (and d!1599138 c!847727) b!4968395))

(assert (= (and d!1599138 (not c!847727)) b!4968396))

(declare-fun m!5995028 () Bool)

(assert (=> b!4968396 m!5995028))

(assert (=> b!4967939 d!1599138))

(declare-fun d!1599140 () Bool)

(assert (=> d!1599140 (= (get!19940 lt!2051453) (v!50437 lt!2051453))))

(assert (=> b!4967939 d!1599140))

(assert (=> b!4967939 d!1598808))

(declare-fun d!1599142 () Bool)

(assert (=> d!1599142 (= (list!18369 (xs!18471 (c!847515 totalInput!464))) (innerList!15233 (xs!18471 (c!847515 totalInput!464))))))

(assert (=> b!4967634 d!1599142))

(assert (=> b!4967709 d!1598930))

(assert (=> b!4967709 d!1598860))

(assert (=> b!4967709 d!1598850))

(assert (=> b!4967709 d!1598848))

(declare-fun b!4968397 () Bool)

(declare-fun e!3105429 () Bool)

(declare-fun lt!2051622 () Bool)

(declare-fun call!346479 () Bool)

(assert (=> b!4968397 (= e!3105429 (= lt!2051622 call!346479))))

(declare-fun b!4968398 () Bool)

(declare-fun res!2120766 () Bool)

(declare-fun e!3105426 () Bool)

(assert (=> b!4968398 (=> (not res!2120766) (not e!3105426))))

(assert (=> b!4968398 (= res!2120766 (isEmpty!30938 (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051210)))))))))

(declare-fun b!4968399 () Bool)

(assert (=> b!4968399 (= e!3105426 (= (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051210))))) (c!847514 (regex!8393 (h!63892 rulesArg!259)))))))

(declare-fun b!4968400 () Bool)

(declare-fun e!3105428 () Bool)

(assert (=> b!4968400 (= e!3105428 (not lt!2051622))))

(declare-fun b!4968401 () Bool)

(declare-fun e!3105432 () Bool)

(assert (=> b!4968401 (= e!3105432 (matchR!6636 (derivativeStep!3922 (regex!8393 (h!63892 rulesArg!259)) (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051210)))))) (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051210)))))))))

(declare-fun bm!346474 () Bool)

(assert (=> bm!346474 (= call!346479 (isEmpty!30938 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051210))))))))

(declare-fun b!4968402 () Bool)

(declare-fun res!2120764 () Bool)

(assert (=> b!4968402 (=> (not res!2120764) (not e!3105426))))

(assert (=> b!4968402 (= res!2120764 (not call!346479))))

(declare-fun b!4968403 () Bool)

(declare-fun e!3105430 () Bool)

(declare-fun e!3105431 () Bool)

(assert (=> b!4968403 (= e!3105430 e!3105431)))

(declare-fun res!2120765 () Bool)

(assert (=> b!4968403 (=> (not res!2120765) (not e!3105431))))

(assert (=> b!4968403 (= res!2120765 (not lt!2051622))))

(declare-fun b!4968404 () Bool)

(declare-fun res!2120767 () Bool)

(declare-fun e!3105427 () Bool)

(assert (=> b!4968404 (=> res!2120767 e!3105427)))

(assert (=> b!4968404 (= res!2120767 (not (isEmpty!30938 (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051210))))))))))

(declare-fun b!4968405 () Bool)

(assert (=> b!4968405 (= e!3105432 (nullable!4620 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun b!4968406 () Bool)

(assert (=> b!4968406 (= e!3105427 (not (= (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051210))))) (c!847514 (regex!8393 (h!63892 rulesArg!259))))))))

(declare-fun b!4968407 () Bool)

(declare-fun res!2120771 () Bool)

(assert (=> b!4968407 (=> res!2120771 e!3105430)))

(assert (=> b!4968407 (= res!2120771 e!3105426)))

(declare-fun res!2120769 () Bool)

(assert (=> b!4968407 (=> (not res!2120769) (not e!3105426))))

(assert (=> b!4968407 (= res!2120769 lt!2051622)))

(declare-fun b!4968408 () Bool)

(assert (=> b!4968408 (= e!3105429 e!3105428)))

(declare-fun c!847730 () Bool)

(assert (=> b!4968408 (= c!847730 (is-EmptyLang!13626 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun d!1599144 () Bool)

(assert (=> d!1599144 e!3105429))

(declare-fun c!847729 () Bool)

(assert (=> d!1599144 (= c!847729 (is-EmptyExpr!13626 (regex!8393 (h!63892 rulesArg!259))))))

(assert (=> d!1599144 (= lt!2051622 e!3105432)))

(declare-fun c!847728 () Bool)

(assert (=> d!1599144 (= c!847728 (isEmpty!30938 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051210))))))))

(assert (=> d!1599144 (validRegex!5969 (regex!8393 (h!63892 rulesArg!259)))))

(assert (=> d!1599144 (= (matchR!6636 (regex!8393 (h!63892 rulesArg!259)) (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051210))))) lt!2051622)))

(declare-fun b!4968409 () Bool)

(declare-fun res!2120770 () Bool)

(assert (=> b!4968409 (=> res!2120770 e!3105430)))

(assert (=> b!4968409 (= res!2120770 (not (is-ElementMatch!13626 (regex!8393 (h!63892 rulesArg!259)))))))

(assert (=> b!4968409 (= e!3105428 e!3105430)))

(declare-fun b!4968410 () Bool)

(assert (=> b!4968410 (= e!3105431 e!3105427)))

(declare-fun res!2120768 () Bool)

(assert (=> b!4968410 (=> res!2120768 e!3105427)))

(assert (=> b!4968410 (= res!2120768 call!346479)))

(assert (= (and d!1599144 c!847728) b!4968405))

(assert (= (and d!1599144 (not c!847728)) b!4968401))

(assert (= (and d!1599144 c!847729) b!4968397))

(assert (= (and d!1599144 (not c!847729)) b!4968408))

(assert (= (and b!4968408 c!847730) b!4968400))

(assert (= (and b!4968408 (not c!847730)) b!4968409))

(assert (= (and b!4968409 (not res!2120770)) b!4968407))

(assert (= (and b!4968407 res!2120769) b!4968402))

(assert (= (and b!4968402 res!2120764) b!4968398))

(assert (= (and b!4968398 res!2120766) b!4968399))

(assert (= (and b!4968407 (not res!2120771)) b!4968403))

(assert (= (and b!4968403 res!2120765) b!4968410))

(assert (= (and b!4968410 (not res!2120768)) b!4968404))

(assert (= (and b!4968404 (not res!2120767)) b!4968406))

(assert (= (or b!4968397 b!4968402 b!4968410) bm!346474))

(assert (=> b!4968401 m!5993844))

(declare-fun m!5995030 () Bool)

(assert (=> b!4968401 m!5995030))

(assert (=> b!4968401 m!5995030))

(declare-fun m!5995032 () Bool)

(assert (=> b!4968401 m!5995032))

(assert (=> b!4968401 m!5993844))

(declare-fun m!5995034 () Bool)

(assert (=> b!4968401 m!5995034))

(assert (=> b!4968401 m!5995032))

(assert (=> b!4968401 m!5995034))

(declare-fun m!5995036 () Bool)

(assert (=> b!4968401 m!5995036))

(assert (=> b!4968406 m!5993844))

(assert (=> b!4968406 m!5995030))

(assert (=> b!4968404 m!5993844))

(assert (=> b!4968404 m!5995034))

(assert (=> b!4968404 m!5995034))

(declare-fun m!5995038 () Bool)

(assert (=> b!4968404 m!5995038))

(assert (=> b!4968399 m!5993844))

(assert (=> b!4968399 m!5995030))

(assert (=> b!4968405 m!5993830))

(assert (=> b!4968398 m!5993844))

(assert (=> b!4968398 m!5995034))

(assert (=> b!4968398 m!5995034))

(assert (=> b!4968398 m!5995038))

(assert (=> bm!346474 m!5993844))

(declare-fun m!5995040 () Bool)

(assert (=> bm!346474 m!5995040))

(assert (=> d!1599144 m!5993844))

(assert (=> d!1599144 m!5995040))

(assert (=> d!1599144 m!5993828))

(assert (=> b!4967603 d!1599144))

(declare-fun d!1599146 () Bool)

(assert (=> d!1599146 (= (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051210)))) (list!18367 (c!847515 (charsOf!5437 (_1!34385 (get!19940 lt!2051210))))))))

(declare-fun bs!1183255 () Bool)

(assert (= bs!1183255 d!1599146))

(declare-fun m!5995042 () Bool)

(assert (=> bs!1183255 m!5995042))

(assert (=> b!4967603 d!1599146))

(declare-fun d!1599148 () Bool)

(declare-fun lt!2051623 () BalanceConc!29720)

(assert (=> d!1599148 (= (list!18365 lt!2051623) (originalCharacters!8672 (_1!34385 (get!19940 lt!2051210))))))

(assert (=> d!1599148 (= lt!2051623 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051210))))) (value!268642 (_1!34385 (get!19940 lt!2051210)))))))

(assert (=> d!1599148 (= (charsOf!5437 (_1!34385 (get!19940 lt!2051210))) lt!2051623)))

(declare-fun b_lambda!196919 () Bool)

(assert (=> (not b_lambda!196919) (not d!1599148)))

(declare-fun t!368715 () Bool)

(declare-fun tb!260689 () Bool)

(assert (=> (and b!4967137 (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051210)))))) t!368715) tb!260689))

(declare-fun b!4968411 () Bool)

(declare-fun e!3105433 () Bool)

(declare-fun tp!1393480 () Bool)

(assert (=> b!4968411 (= e!3105433 (and (inv!75075 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051210))))) (value!268642 (_1!34385 (get!19940 lt!2051210)))))) tp!1393480))))

(declare-fun result!325808 () Bool)

(assert (=> tb!260689 (= result!325808 (and (inv!75074 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051210))))) (value!268642 (_1!34385 (get!19940 lt!2051210))))) e!3105433))))

(assert (= tb!260689 b!4968411))

(declare-fun m!5995044 () Bool)

(assert (=> b!4968411 m!5995044))

(declare-fun m!5995046 () Bool)

(assert (=> tb!260689 m!5995046))

(assert (=> d!1599148 t!368715))

(declare-fun b_and!348265 () Bool)

(assert (= b_and!348259 (and (=> t!368715 result!325808) b_and!348265)))

(declare-fun t!368717 () Bool)

(declare-fun tb!260691 () Bool)

(assert (=> (and b!4967394 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051210)))))) t!368717) tb!260691))

(declare-fun result!325810 () Bool)

(assert (= result!325810 result!325808))

(assert (=> d!1599148 t!368717))

(declare-fun b_and!348267 () Bool)

(assert (= b_and!348261 (and (=> t!368717 result!325810) b_and!348267)))

(declare-fun t!368719 () Bool)

(declare-fun tb!260693 () Bool)

(assert (=> (and b!4968022 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051210)))))) t!368719) tb!260693))

(declare-fun result!325812 () Bool)

(assert (= result!325812 result!325808))

(assert (=> d!1599148 t!368719))

(declare-fun b_and!348269 () Bool)

(assert (= b_and!348263 (and (=> t!368719 result!325812) b_and!348269)))

(declare-fun m!5995048 () Bool)

(assert (=> d!1599148 m!5995048))

(declare-fun m!5995050 () Bool)

(assert (=> d!1599148 m!5995050))

(assert (=> b!4967603 d!1599148))

(declare-fun d!1599150 () Bool)

(assert (=> d!1599150 (= (get!19940 lt!2051210) (v!50437 lt!2051210))))

(assert (=> b!4967603 d!1599150))

(declare-fun d!1599152 () Bool)

(declare-fun res!2120772 () Bool)

(declare-fun e!3105434 () Bool)

(assert (=> d!1599152 (=> (not res!2120772) (not e!3105434))))

(assert (=> d!1599152 (= res!2120772 (= (csize!30520 (right!42230 (c!847515 totalInput!464))) (+ (size!38076 (left!41900 (right!42230 (c!847515 totalInput!464)))) (size!38076 (right!42230 (right!42230 (c!847515 totalInput!464)))))))))

(assert (=> d!1599152 (= (inv!75080 (right!42230 (c!847515 totalInput!464))) e!3105434)))

(declare-fun b!4968412 () Bool)

(declare-fun res!2120773 () Bool)

(assert (=> b!4968412 (=> (not res!2120773) (not e!3105434))))

(assert (=> b!4968412 (= res!2120773 (and (not (= (left!41900 (right!42230 (c!847515 totalInput!464))) Empty!15145)) (not (= (right!42230 (right!42230 (c!847515 totalInput!464))) Empty!15145))))))

(declare-fun b!4968413 () Bool)

(declare-fun res!2120774 () Bool)

(assert (=> b!4968413 (=> (not res!2120774) (not e!3105434))))

(assert (=> b!4968413 (= res!2120774 (= (cheight!15356 (right!42230 (c!847515 totalInput!464))) (+ (max!0 (height!2013 (left!41900 (right!42230 (c!847515 totalInput!464)))) (height!2013 (right!42230 (right!42230 (c!847515 totalInput!464))))) 1)))))

(declare-fun b!4968414 () Bool)

(assert (=> b!4968414 (= e!3105434 (<= 0 (cheight!15356 (right!42230 (c!847515 totalInput!464)))))))

(assert (= (and d!1599152 res!2120772) b!4968412))

(assert (= (and b!4968412 res!2120773) b!4968413))

(assert (= (and b!4968413 res!2120774) b!4968414))

(declare-fun m!5995052 () Bool)

(assert (=> d!1599152 m!5995052))

(declare-fun m!5995054 () Bool)

(assert (=> d!1599152 m!5995054))

(declare-fun m!5995056 () Bool)

(assert (=> b!4968413 m!5995056))

(declare-fun m!5995058 () Bool)

(assert (=> b!4968413 m!5995058))

(assert (=> b!4968413 m!5995056))

(assert (=> b!4968413 m!5995058))

(declare-fun m!5995060 () Bool)

(assert (=> b!4968413 m!5995060))

(assert (=> b!4967925 d!1599152))

(declare-fun d!1599154 () Bool)

(assert (=> d!1599154 (= (height!2013 (left!41900 (c!847515 input!1342))) (ite (is-Empty!15145 (left!41900 (c!847515 input!1342))) 0 (ite (is-Leaf!25167 (left!41900 (c!847515 input!1342))) 1 (cheight!15356 (left!41900 (c!847515 input!1342))))))))

(assert (=> b!4967548 d!1599154))

(declare-fun d!1599156 () Bool)

(assert (=> d!1599156 (= (height!2013 (right!42230 (c!847515 input!1342))) (ite (is-Empty!15145 (right!42230 (c!847515 input!1342))) 0 (ite (is-Leaf!25167 (right!42230 (c!847515 input!1342))) 1 (cheight!15356 (right!42230 (c!847515 input!1342))))))))

(assert (=> b!4967548 d!1599156))

(assert (=> b!4967866 d!1599112))

(declare-fun b!4968415 () Bool)

(declare-fun e!3105436 () Option!14449)

(declare-fun lt!2051626 () Option!14449)

(declare-fun lt!2051627 () Option!14449)

(assert (=> b!4968415 (= e!3105436 (ite (and (is-None!14448 lt!2051626) (is-None!14448 lt!2051627)) None!14448 (ite (is-None!14448 lt!2051627) lt!2051626 (ite (is-None!14448 lt!2051626) lt!2051627 (ite (>= (size!38070 (_1!34385 (v!50437 lt!2051626))) (size!38070 (_1!34385 (v!50437 lt!2051627)))) lt!2051626 lt!2051627)))))))

(declare-fun call!346480 () Option!14449)

(assert (=> b!4968415 (= lt!2051626 call!346480)))

(assert (=> b!4968415 (= lt!2051627 (maxPrefix!4660 thiss!15247 (t!368628 (t!368628 (t!368628 rulesArg!259))) (list!18365 input!1342)))))

(declare-fun b!4968416 () Bool)

(declare-fun e!3105437 () Bool)

(declare-fun lt!2051624 () Option!14449)

(assert (=> b!4968416 (= e!3105437 (contains!19538 (t!368628 (t!368628 rulesArg!259)) (rule!11637 (_1!34385 (get!19940 lt!2051624)))))))

(declare-fun b!4968417 () Bool)

(assert (=> b!4968417 (= e!3105436 call!346480)))

(declare-fun b!4968418 () Bool)

(declare-fun e!3105435 () Bool)

(assert (=> b!4968418 (= e!3105435 e!3105437)))

(declare-fun res!2120779 () Bool)

(assert (=> b!4968418 (=> (not res!2120779) (not e!3105437))))

(assert (=> b!4968418 (= res!2120779 (isDefined!11362 lt!2051624))))

(declare-fun b!4968419 () Bool)

(declare-fun res!2120775 () Bool)

(assert (=> b!4968419 (=> (not res!2120775) (not e!3105437))))

(assert (=> b!4968419 (= res!2120775 (= (value!268642 (_1!34385 (get!19940 lt!2051624))) (apply!13904 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051624)))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051624)))))))))

(declare-fun b!4968420 () Bool)

(declare-fun res!2120776 () Bool)

(assert (=> b!4968420 (=> (not res!2120776) (not e!3105437))))

(assert (=> b!4968420 (= res!2120776 (< (size!38072 (_2!34385 (get!19940 lt!2051624))) (size!38072 (list!18365 input!1342))))))

(declare-fun b!4968421 () Bool)

(declare-fun res!2120780 () Bool)

(assert (=> b!4968421 (=> (not res!2120780) (not e!3105437))))

(assert (=> b!4968421 (= res!2120780 (= (++!12532 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051624)))) (_2!34385 (get!19940 lt!2051624))) (list!18365 input!1342)))))

(declare-fun d!1599158 () Bool)

(assert (=> d!1599158 e!3105435))

(declare-fun res!2120777 () Bool)

(assert (=> d!1599158 (=> res!2120777 e!3105435)))

(assert (=> d!1599158 (= res!2120777 (isEmpty!30935 lt!2051624))))

(assert (=> d!1599158 (= lt!2051624 e!3105436)))

(declare-fun c!847731 () Bool)

(assert (=> d!1599158 (= c!847731 (and (is-Cons!57444 (t!368628 (t!368628 rulesArg!259))) (is-Nil!57444 (t!368628 (t!368628 (t!368628 rulesArg!259))))))))

(declare-fun lt!2051625 () Unit!148361)

(declare-fun lt!2051628 () Unit!148361)

(assert (=> d!1599158 (= lt!2051625 lt!2051628)))

(assert (=> d!1599158 (isPrefix!5244 (list!18365 input!1342) (list!18365 input!1342))))

(assert (=> d!1599158 (= lt!2051628 (lemmaIsPrefixRefl!3568 (list!18365 input!1342) (list!18365 input!1342)))))

(assert (=> d!1599158 (rulesValidInductive!3296 thiss!15247 (t!368628 (t!368628 rulesArg!259)))))

(assert (=> d!1599158 (= (maxPrefix!4660 thiss!15247 (t!368628 (t!368628 rulesArg!259)) (list!18365 input!1342)) lt!2051624)))

(declare-fun b!4968422 () Bool)

(declare-fun res!2120778 () Bool)

(assert (=> b!4968422 (=> (not res!2120778) (not e!3105437))))

(assert (=> b!4968422 (= res!2120778 (= (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051624)))) (originalCharacters!8672 (_1!34385 (get!19940 lt!2051624)))))))

(declare-fun bm!346475 () Bool)

(assert (=> bm!346475 (= call!346480 (maxPrefixOneRule!3629 thiss!15247 (h!63892 (t!368628 (t!368628 rulesArg!259))) (list!18365 input!1342)))))

(declare-fun b!4968423 () Bool)

(declare-fun res!2120781 () Bool)

(assert (=> b!4968423 (=> (not res!2120781) (not e!3105437))))

(assert (=> b!4968423 (= res!2120781 (matchR!6636 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051624)))) (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051624))))))))

(assert (= (and d!1599158 c!847731) b!4968417))

(assert (= (and d!1599158 (not c!847731)) b!4968415))

(assert (= (or b!4968417 b!4968415) bm!346475))

(assert (= (and d!1599158 (not res!2120777)) b!4968418))

(assert (= (and b!4968418 res!2120779) b!4968422))

(assert (= (and b!4968422 res!2120778) b!4968420))

(assert (= (and b!4968420 res!2120776) b!4968421))

(assert (= (and b!4968421 res!2120780) b!4968419))

(assert (= (and b!4968419 res!2120775) b!4968423))

(assert (= (and b!4968423 res!2120781) b!4968416))

(declare-fun m!5995062 () Bool)

(assert (=> b!4968419 m!5995062))

(declare-fun m!5995064 () Bool)

(assert (=> b!4968419 m!5995064))

(assert (=> b!4968419 m!5995064))

(declare-fun m!5995066 () Bool)

(assert (=> b!4968419 m!5995066))

(assert (=> b!4968415 m!5993376))

(declare-fun m!5995068 () Bool)

(assert (=> b!4968415 m!5995068))

(assert (=> b!4968423 m!5995062))

(declare-fun m!5995070 () Bool)

(assert (=> b!4968423 m!5995070))

(assert (=> b!4968423 m!5995070))

(declare-fun m!5995072 () Bool)

(assert (=> b!4968423 m!5995072))

(assert (=> b!4968423 m!5995072))

(declare-fun m!5995074 () Bool)

(assert (=> b!4968423 m!5995074))

(assert (=> b!4968422 m!5995062))

(assert (=> b!4968422 m!5995070))

(assert (=> b!4968422 m!5995070))

(assert (=> b!4968422 m!5995072))

(declare-fun m!5995076 () Bool)

(assert (=> b!4968418 m!5995076))

(assert (=> b!4968421 m!5995062))

(assert (=> b!4968421 m!5995070))

(assert (=> b!4968421 m!5995070))

(assert (=> b!4968421 m!5995072))

(assert (=> b!4968421 m!5995072))

(declare-fun m!5995078 () Bool)

(assert (=> b!4968421 m!5995078))

(declare-fun m!5995080 () Bool)

(assert (=> d!1599158 m!5995080))

(assert (=> d!1599158 m!5993376))

(assert (=> d!1599158 m!5993376))

(assert (=> d!1599158 m!5993946))

(assert (=> d!1599158 m!5993376))

(assert (=> d!1599158 m!5993376))

(assert (=> d!1599158 m!5993948))

(assert (=> d!1599158 m!5993940))

(assert (=> b!4968420 m!5995062))

(declare-fun m!5995082 () Bool)

(assert (=> b!4968420 m!5995082))

(assert (=> b!4968420 m!5993376))

(assert (=> b!4968420 m!5993850))

(assert (=> b!4968416 m!5995062))

(declare-fun m!5995084 () Bool)

(assert (=> b!4968416 m!5995084))

(assert (=> bm!346475 m!5993376))

(declare-fun m!5995086 () Bool)

(assert (=> bm!346475 m!5995086))

(assert (=> b!4967866 d!1599158))

(assert (=> b!4967866 d!1598680))

(assert (=> b!4967866 d!1599118))

(declare-fun d!1599160 () Bool)

(assert (=> d!1599160 (= (get!19940 (maxPrefix!4660 thiss!15247 (t!368628 (t!368628 rulesArg!259)) (list!18365 input!1342))) (v!50437 (maxPrefix!4660 thiss!15247 (t!368628 (t!368628 rulesArg!259)) (list!18365 input!1342))))))

(assert (=> b!4967866 d!1599160))

(declare-fun b!4968424 () Bool)

(declare-fun e!3105441 () Bool)

(declare-fun lt!2051629 () Bool)

(declare-fun call!346481 () Bool)

(assert (=> b!4968424 (= e!3105441 (= lt!2051629 call!346481))))

(declare-fun b!4968425 () Bool)

(declare-fun res!2120784 () Bool)

(declare-fun e!3105438 () Bool)

(assert (=> b!4968425 (=> (not res!2120784) (not e!3105438))))

(assert (=> b!4968425 (= res!2120784 (isEmpty!30938 (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949))))))))

(declare-fun b!4968426 () Bool)

(assert (=> b!4968426 (= e!3105438 (= (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949)))) (c!847514 (regex!8393 (h!63892 rulesArg!259)))))))

(declare-fun b!4968427 () Bool)

(declare-fun e!3105440 () Bool)

(assert (=> b!4968427 (= e!3105440 (not lt!2051629))))

(declare-fun b!4968428 () Bool)

(declare-fun e!3105444 () Bool)

(assert (=> b!4968428 (= e!3105444 (matchR!6636 (derivativeStep!3922 (regex!8393 (h!63892 rulesArg!259)) (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949))))) (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949))))))))

(declare-fun bm!346476 () Bool)

(assert (=> bm!346476 (= call!346481 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949)))))))

(declare-fun b!4968429 () Bool)

(declare-fun res!2120782 () Bool)

(assert (=> b!4968429 (=> (not res!2120782) (not e!3105438))))

(assert (=> b!4968429 (= res!2120782 (not call!346481))))

(declare-fun b!4968430 () Bool)

(declare-fun e!3105442 () Bool)

(declare-fun e!3105443 () Bool)

(assert (=> b!4968430 (= e!3105442 e!3105443)))

(declare-fun res!2120783 () Bool)

(assert (=> b!4968430 (=> (not res!2120783) (not e!3105443))))

(assert (=> b!4968430 (= res!2120783 (not lt!2051629))))

(declare-fun b!4968431 () Bool)

(declare-fun res!2120785 () Bool)

(declare-fun e!3105439 () Bool)

(assert (=> b!4968431 (=> res!2120785 e!3105439)))

(assert (=> b!4968431 (= res!2120785 (not (isEmpty!30938 (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949)))))))))

(declare-fun b!4968432 () Bool)

(assert (=> b!4968432 (= e!3105444 (nullable!4620 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun b!4968433 () Bool)

(assert (=> b!4968433 (= e!3105439 (not (= (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949)))) (c!847514 (regex!8393 (h!63892 rulesArg!259))))))))

(declare-fun b!4968434 () Bool)

(declare-fun res!2120789 () Bool)

(assert (=> b!4968434 (=> res!2120789 e!3105442)))

(assert (=> b!4968434 (= res!2120789 e!3105438)))

(declare-fun res!2120787 () Bool)

(assert (=> b!4968434 (=> (not res!2120787) (not e!3105438))))

(assert (=> b!4968434 (= res!2120787 lt!2051629)))

(declare-fun b!4968435 () Bool)

(assert (=> b!4968435 (= e!3105441 e!3105440)))

(declare-fun c!847734 () Bool)

(assert (=> b!4968435 (= c!847734 (is-EmptyLang!13626 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun d!1599162 () Bool)

(assert (=> d!1599162 e!3105441))

(declare-fun c!847733 () Bool)

(assert (=> d!1599162 (= c!847733 (is-EmptyExpr!13626 (regex!8393 (h!63892 rulesArg!259))))))

(assert (=> d!1599162 (= lt!2051629 e!3105444)))

(declare-fun c!847732 () Bool)

(assert (=> d!1599162 (= c!847732 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949)))))))

(assert (=> d!1599162 (validRegex!5969 (regex!8393 (h!63892 rulesArg!259)))))

(assert (=> d!1599162 (= (matchR!6636 (regex!8393 (h!63892 rulesArg!259)) (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949)))) lt!2051629)))

(declare-fun b!4968436 () Bool)

(declare-fun res!2120788 () Bool)

(assert (=> b!4968436 (=> res!2120788 e!3105442)))

(assert (=> b!4968436 (= res!2120788 (not (is-ElementMatch!13626 (regex!8393 (h!63892 rulesArg!259)))))))

(assert (=> b!4968436 (= e!3105440 e!3105442)))

(declare-fun b!4968437 () Bool)

(assert (=> b!4968437 (= e!3105443 e!3105439)))

(declare-fun res!2120786 () Bool)

(assert (=> b!4968437 (=> res!2120786 e!3105439)))

(assert (=> b!4968437 (= res!2120786 call!346481)))

(assert (= (and d!1599162 c!847732) b!4968432))

(assert (= (and d!1599162 (not c!847732)) b!4968428))

(assert (= (and d!1599162 c!847733) b!4968424))

(assert (= (and d!1599162 (not c!847733)) b!4968435))

(assert (= (and b!4968435 c!847734) b!4968427))

(assert (= (and b!4968435 (not c!847734)) b!4968436))

(assert (= (and b!4968436 (not res!2120788)) b!4968434))

(assert (= (and b!4968434 res!2120787) b!4968429))

(assert (= (and b!4968429 res!2120782) b!4968425))

(assert (= (and b!4968425 res!2120784) b!4968426))

(assert (= (and b!4968434 (not res!2120789)) b!4968430))

(assert (= (and b!4968430 res!2120783) b!4968437))

(assert (= (and b!4968437 (not res!2120786)) b!4968431))

(assert (= (and b!4968431 (not res!2120785)) b!4968433))

(assert (= (or b!4968424 b!4968429 b!4968437) bm!346476))

(declare-fun m!5995088 () Bool)

(assert (=> b!4968428 m!5995088))

(assert (=> b!4968428 m!5995088))

(declare-fun m!5995090 () Bool)

(assert (=> b!4968428 m!5995090))

(declare-fun m!5995092 () Bool)

(assert (=> b!4968428 m!5995092))

(assert (=> b!4968428 m!5995090))

(assert (=> b!4968428 m!5995092))

(declare-fun m!5995094 () Bool)

(assert (=> b!4968428 m!5995094))

(assert (=> b!4968433 m!5995088))

(assert (=> b!4968431 m!5995092))

(assert (=> b!4968431 m!5995092))

(declare-fun m!5995096 () Bool)

(assert (=> b!4968431 m!5995096))

(assert (=> b!4968426 m!5995088))

(assert (=> b!4968432 m!5993830))

(assert (=> b!4968425 m!5995092))

(assert (=> b!4968425 m!5995092))

(assert (=> b!4968425 m!5995096))

(assert (=> bm!346476 m!5993758))

(assert (=> d!1599162 m!5993758))

(assert (=> d!1599162 m!5993828))

(assert (=> b!4967963 d!1599162))

(declare-fun b!4968438 () Bool)

(declare-fun e!3105452 () Unit!148361)

(declare-fun Unit!148377 () Unit!148361)

(assert (=> b!4968438 (= e!3105452 Unit!148377)))

(declare-fun b!4968439 () Bool)

(declare-fun c!847737 () Bool)

(declare-fun call!346486 () Bool)

(assert (=> b!4968439 (= c!847737 call!346486)))

(declare-fun lt!2051646 () Unit!148361)

(declare-fun lt!2051636 () Unit!148361)

(assert (=> b!4968439 (= lt!2051646 lt!2051636)))

(assert (=> b!4968439 (= lt!2050949 Nil!57443)))

(declare-fun call!346489 () Unit!148361)

(assert (=> b!4968439 (= lt!2051636 call!346489)))

(declare-fun lt!2051656 () Unit!148361)

(declare-fun lt!2051641 () Unit!148361)

(assert (=> b!4968439 (= lt!2051656 lt!2051641)))

(declare-fun call!346483 () Bool)

(assert (=> b!4968439 call!346483))

(declare-fun call!346485 () Unit!148361)

(assert (=> b!4968439 (= lt!2051641 call!346485)))

(declare-fun e!3105448 () tuple2!62174)

(declare-fun e!3105449 () tuple2!62174)

(assert (=> b!4968439 (= e!3105448 e!3105449)))

(declare-fun b!4968440 () Bool)

(declare-fun e!3105450 () Bool)

(declare-fun e!3105447 () Bool)

(assert (=> b!4968440 (= e!3105450 e!3105447)))

(declare-fun res!2120790 () Bool)

(assert (=> b!4968440 (=> res!2120790 e!3105447)))

(declare-fun lt!2051648 () tuple2!62174)

(assert (=> b!4968440 (= res!2120790 (isEmpty!30938 (_1!34390 lt!2051648)))))

(declare-fun bm!346478 () Bool)

(declare-fun call!346484 () Regex!13626)

(declare-fun call!346488 () C!27502)

(assert (=> bm!346478 (= call!346484 (derivativeStep!3922 (regex!8393 (h!63892 rulesArg!259)) call!346488))))

(declare-fun b!4968441 () Bool)

(declare-fun e!3105445 () tuple2!62174)

(assert (=> b!4968441 (= e!3105445 e!3105448)))

(declare-fun c!847739 () Bool)

(assert (=> b!4968441 (= c!847739 (= (size!38072 Nil!57443) (size!38072 lt!2050949)))))

(declare-fun b!4968442 () Bool)

(assert (=> b!4968442 (= e!3105449 (tuple2!62175 Nil!57443 lt!2050949))))

(declare-fun b!4968443 () Bool)

(assert (=> b!4968443 (= e!3105445 (tuple2!62175 Nil!57443 lt!2050949))))

(declare-fun b!4968444 () Bool)

(declare-fun e!3105446 () tuple2!62174)

(assert (=> b!4968444 (= e!3105446 (tuple2!62175 Nil!57443 lt!2050949))))

(declare-fun bm!346479 () Bool)

(assert (=> bm!346479 (= call!346485 (lemmaIsPrefixRefl!3568 lt!2050949 lt!2050949))))

(declare-fun bm!346480 () Bool)

(assert (=> bm!346480 (= call!346483 (isPrefix!5244 lt!2050949 lt!2050949))))

(declare-fun bm!346481 () Bool)

(declare-fun call!346482 () List!57567)

(assert (=> bm!346481 (= call!346482 (tail!9801 lt!2050949))))

(declare-fun b!4968445 () Bool)

(declare-fun c!847735 () Bool)

(assert (=> b!4968445 (= c!847735 call!346486)))

(declare-fun lt!2051654 () Unit!148361)

(declare-fun lt!2051631 () Unit!148361)

(assert (=> b!4968445 (= lt!2051654 lt!2051631)))

(declare-fun lt!2051634 () C!27502)

(declare-fun lt!2051644 () List!57567)

(assert (=> b!4968445 (= (++!12532 (++!12532 Nil!57443 (Cons!57443 lt!2051634 Nil!57443)) lt!2051644) lt!2050949)))

(assert (=> b!4968445 (= lt!2051631 (lemmaMoveElementToOtherListKeepsConcatEq!1445 Nil!57443 lt!2051634 lt!2051644 lt!2050949))))

(assert (=> b!4968445 (= lt!2051644 (tail!9801 lt!2050949))))

(assert (=> b!4968445 (= lt!2051634 (head!10668 lt!2050949))))

(declare-fun lt!2051647 () Unit!148361)

(declare-fun lt!2051642 () Unit!148361)

(assert (=> b!4968445 (= lt!2051647 lt!2051642)))

(assert (=> b!4968445 (isPrefix!5244 (++!12532 Nil!57443 (Cons!57443 (head!10668 (getSuffix!3088 lt!2050949 Nil!57443)) Nil!57443)) lt!2050949)))

(assert (=> b!4968445 (= lt!2051642 (lemmaAddHeadSuffixToPrefixStillPrefix!835 Nil!57443 lt!2050949))))

(declare-fun lt!2051651 () Unit!148361)

(declare-fun lt!2051653 () Unit!148361)

(assert (=> b!4968445 (= lt!2051651 lt!2051653)))

(assert (=> b!4968445 (= lt!2051653 (lemmaAddHeadSuffixToPrefixStillPrefix!835 Nil!57443 lt!2050949))))

(declare-fun lt!2051638 () List!57567)

(assert (=> b!4968445 (= lt!2051638 (++!12532 Nil!57443 (Cons!57443 (head!10668 lt!2050949) Nil!57443)))))

(declare-fun lt!2051640 () Unit!148361)

(assert (=> b!4968445 (= lt!2051640 e!3105452)))

(declare-fun c!847740 () Bool)

(assert (=> b!4968445 (= c!847740 (= (size!38072 Nil!57443) (size!38072 lt!2050949)))))

(declare-fun lt!2051639 () Unit!148361)

(declare-fun lt!2051657 () Unit!148361)

(assert (=> b!4968445 (= lt!2051639 lt!2051657)))

(assert (=> b!4968445 (<= (size!38072 Nil!57443) (size!38072 lt!2050949))))

(assert (=> b!4968445 (= lt!2051657 (lemmaIsPrefixThenSmallerEqSize!761 Nil!57443 lt!2050949))))

(declare-fun e!3105451 () tuple2!62174)

(assert (=> b!4968445 (= e!3105448 e!3105451)))

(declare-fun b!4968446 () Bool)

(declare-fun lt!2051643 () tuple2!62174)

(assert (=> b!4968446 (= e!3105446 lt!2051643)))

(declare-fun b!4968447 () Bool)

(assert (=> b!4968447 (= e!3105449 (tuple2!62175 Nil!57443 Nil!57443))))

(declare-fun b!4968448 () Bool)

(declare-fun Unit!148378 () Unit!148361)

(assert (=> b!4968448 (= e!3105452 Unit!148378)))

(declare-fun lt!2051633 () Unit!148361)

(assert (=> b!4968448 (= lt!2051633 call!346485)))

(assert (=> b!4968448 call!346483))

(declare-fun lt!2051652 () Unit!148361)

(assert (=> b!4968448 (= lt!2051652 lt!2051633)))

(declare-fun lt!2051645 () Unit!148361)

(assert (=> b!4968448 (= lt!2051645 call!346489)))

(assert (=> b!4968448 (= lt!2050949 Nil!57443)))

(declare-fun lt!2051635 () Unit!148361)

(assert (=> b!4968448 (= lt!2051635 lt!2051645)))

(assert (=> b!4968448 false))

(declare-fun bm!346482 () Bool)

(assert (=> bm!346482 (= call!346486 (nullable!4620 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun b!4968449 () Bool)

(assert (=> b!4968449 (= e!3105451 e!3105446)))

(declare-fun call!346487 () tuple2!62174)

(assert (=> b!4968449 (= lt!2051643 call!346487)))

(declare-fun c!847738 () Bool)

(assert (=> b!4968449 (= c!847738 (isEmpty!30938 (_1!34390 lt!2051643)))))

(declare-fun d!1599164 () Bool)

(assert (=> d!1599164 e!3105450))

(declare-fun res!2120791 () Bool)

(assert (=> d!1599164 (=> (not res!2120791) (not e!3105450))))

(assert (=> d!1599164 (= res!2120791 (= (++!12532 (_1!34390 lt!2051648) (_2!34390 lt!2051648)) lt!2050949))))

(assert (=> d!1599164 (= lt!2051648 e!3105445)))

(declare-fun c!847736 () Bool)

(assert (=> d!1599164 (= c!847736 (lostCause!1133 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun lt!2051637 () Unit!148361)

(declare-fun Unit!148379 () Unit!148361)

(assert (=> d!1599164 (= lt!2051637 Unit!148379)))

(assert (=> d!1599164 (= (getSuffix!3088 lt!2050949 Nil!57443) lt!2050949)))

(declare-fun lt!2051630 () Unit!148361)

(declare-fun lt!2051650 () Unit!148361)

(assert (=> d!1599164 (= lt!2051630 lt!2051650)))

(declare-fun lt!2051655 () List!57567)

(assert (=> d!1599164 (= lt!2050949 lt!2051655)))

(assert (=> d!1599164 (= lt!2051650 (lemmaSamePrefixThenSameSuffix!2501 Nil!57443 lt!2050949 Nil!57443 lt!2051655 lt!2050949))))

(assert (=> d!1599164 (= lt!2051655 (getSuffix!3088 lt!2050949 Nil!57443))))

(declare-fun lt!2051632 () Unit!148361)

(declare-fun lt!2051649 () Unit!148361)

(assert (=> d!1599164 (= lt!2051632 lt!2051649)))

(assert (=> d!1599164 (isPrefix!5244 Nil!57443 (++!12532 Nil!57443 lt!2050949))))

(assert (=> d!1599164 (= lt!2051649 (lemmaConcatTwoListThenFirstIsPrefix!3347 Nil!57443 lt!2050949))))

(assert (=> d!1599164 (validRegex!5969 (regex!8393 (h!63892 rulesArg!259)))))

(assert (=> d!1599164 (= (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949)) lt!2051648)))

(declare-fun bm!346477 () Bool)

(assert (=> bm!346477 (= call!346489 (lemmaIsPrefixSameLengthThenSameList!1208 lt!2050949 Nil!57443 lt!2050949))))

(declare-fun bm!346483 () Bool)

(assert (=> bm!346483 (= call!346487 (findLongestMatchInner!1855 call!346484 lt!2051638 (+ (size!38072 Nil!57443) 1) call!346482 lt!2050949 (size!38072 lt!2050949)))))

(declare-fun bm!346484 () Bool)

(assert (=> bm!346484 (= call!346488 (head!10668 lt!2050949))))

(declare-fun b!4968450 () Bool)

(assert (=> b!4968450 (= e!3105451 call!346487)))

(declare-fun b!4968451 () Bool)

(assert (=> b!4968451 (= e!3105447 (>= (size!38072 (_1!34390 lt!2051648)) (size!38072 Nil!57443)))))

(assert (= (and d!1599164 c!847736) b!4968443))

(assert (= (and d!1599164 (not c!847736)) b!4968441))

(assert (= (and b!4968441 c!847739) b!4968439))

(assert (= (and b!4968441 (not c!847739)) b!4968445))

(assert (= (and b!4968439 c!847737) b!4968447))

(assert (= (and b!4968439 (not c!847737)) b!4968442))

(assert (= (and b!4968445 c!847740) b!4968448))

(assert (= (and b!4968445 (not c!847740)) b!4968438))

(assert (= (and b!4968445 c!847735) b!4968449))

(assert (= (and b!4968445 (not c!847735)) b!4968450))

(assert (= (and b!4968449 c!847738) b!4968444))

(assert (= (and b!4968449 (not c!847738)) b!4968446))

(assert (= (or b!4968449 b!4968450) bm!346484))

(assert (= (or b!4968449 b!4968450) bm!346481))

(assert (= (or b!4968449 b!4968450) bm!346478))

(assert (= (or b!4968449 b!4968450) bm!346483))

(assert (= (or b!4968439 b!4968448) bm!346479))

(assert (= (or b!4968439 b!4968448) bm!346477))

(assert (= (or b!4968439 b!4968445) bm!346482))

(assert (= (or b!4968439 b!4968448) bm!346480))

(assert (= (and d!1599164 res!2120791) b!4968440))

(assert (= (and b!4968440 (not res!2120790)) b!4968451))

(declare-fun m!5995098 () Bool)

(assert (=> b!4968451 m!5995098))

(assert (=> b!4968451 m!5993574))

(declare-fun m!5995100 () Bool)

(assert (=> b!4968449 m!5995100))

(declare-fun m!5995102 () Bool)

(assert (=> b!4968440 m!5995102))

(declare-fun m!5995104 () Bool)

(assert (=> b!4968445 m!5995104))

(assert (=> b!4968445 m!5995104))

(declare-fun m!5995106 () Bool)

(assert (=> b!4968445 m!5995106))

(declare-fun m!5995108 () Bool)

(assert (=> b!4968445 m!5995108))

(assert (=> b!4968445 m!5993428))

(declare-fun m!5995110 () Bool)

(assert (=> b!4968445 m!5995110))

(declare-fun m!5995112 () Bool)

(assert (=> b!4968445 m!5995112))

(assert (=> b!4968445 m!5993470))

(declare-fun m!5995114 () Bool)

(assert (=> b!4968445 m!5995114))

(assert (=> b!4968445 m!5995110))

(declare-fun m!5995116 () Bool)

(assert (=> b!4968445 m!5995116))

(assert (=> b!4968445 m!5993474))

(declare-fun m!5995118 () Bool)

(assert (=> b!4968445 m!5995118))

(assert (=> b!4968445 m!5993574))

(declare-fun m!5995120 () Bool)

(assert (=> b!4968445 m!5995120))

(assert (=> b!4968445 m!5995108))

(declare-fun m!5995122 () Bool)

(assert (=> b!4968445 m!5995122))

(assert (=> bm!346480 m!5993340))

(assert (=> bm!346484 m!5993474))

(assert (=> bm!346483 m!5993428))

(declare-fun m!5995124 () Bool)

(assert (=> bm!346483 m!5995124))

(assert (=> bm!346479 m!5993342))

(declare-fun m!5995126 () Bool)

(assert (=> bm!346478 m!5995126))

(assert (=> bm!346481 m!5993470))

(declare-fun m!5995128 () Bool)

(assert (=> bm!346477 m!5995128))

(assert (=> bm!346482 m!5993830))

(declare-fun m!5995130 () Bool)

(assert (=> d!1599164 m!5995130))

(declare-fun m!5995132 () Bool)

(assert (=> d!1599164 m!5995132))

(declare-fun m!5995134 () Bool)

(assert (=> d!1599164 m!5995134))

(assert (=> d!1599164 m!5995108))

(assert (=> d!1599164 m!5995130))

(assert (=> d!1599164 m!5993828))

(assert (=> d!1599164 m!5994052))

(declare-fun m!5995136 () Bool)

(assert (=> d!1599164 m!5995136))

(declare-fun m!5995138 () Bool)

(assert (=> d!1599164 m!5995138))

(assert (=> b!4967963 d!1599164))

(assert (=> b!4967963 d!1598850))

(assert (=> b!4967963 d!1598808))

(declare-fun d!1599166 () Bool)

(declare-fun res!2120792 () Bool)

(declare-fun e!3105453 () Bool)

(assert (=> d!1599166 (=> (not res!2120792) (not e!3105453))))

(assert (=> d!1599166 (= res!2120792 (<= (size!38072 (list!18369 (xs!18471 (left!41900 (c!847515 input!1342))))) 512))))

(assert (=> d!1599166 (= (inv!75081 (left!41900 (c!847515 input!1342))) e!3105453)))

(declare-fun b!4968452 () Bool)

(declare-fun res!2120793 () Bool)

(assert (=> b!4968452 (=> (not res!2120793) (not e!3105453))))

(assert (=> b!4968452 (= res!2120793 (= (csize!30521 (left!41900 (c!847515 input!1342))) (size!38072 (list!18369 (xs!18471 (left!41900 (c!847515 input!1342)))))))))

(declare-fun b!4968453 () Bool)

(assert (=> b!4968453 (= e!3105453 (and (> (csize!30521 (left!41900 (c!847515 input!1342))) 0) (<= (csize!30521 (left!41900 (c!847515 input!1342))) 512)))))

(assert (= (and d!1599166 res!2120792) b!4968452))

(assert (= (and b!4968452 res!2120793) b!4968453))

(declare-fun m!5995140 () Bool)

(assert (=> d!1599166 m!5995140))

(assert (=> d!1599166 m!5995140))

(declare-fun m!5995142 () Bool)

(assert (=> d!1599166 m!5995142))

(assert (=> b!4968452 m!5995140))

(assert (=> b!4968452 m!5995140))

(assert (=> b!4968452 m!5995142))

(assert (=> b!4967826 d!1599166))

(assert (=> bs!1183220 d!1598796))

(declare-fun d!1599168 () Bool)

(assert (=> d!1599168 (= (inv!75074 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))))) (isBalanced!4202 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))))))))

(declare-fun bs!1183256 () Bool)

(assert (= bs!1183256 d!1599168))

(declare-fun m!5995144 () Bool)

(assert (=> bs!1183256 m!5995144))

(assert (=> tb!260641 d!1599168))

(declare-fun d!1599170 () Bool)

(assert (=> d!1599170 (= (isEmpty!30938 (list!18365 (_1!34389 lt!2051115))) (is-Nil!57443 (list!18365 (_1!34389 lt!2051115))))))

(assert (=> d!1598794 d!1599170))

(assert (=> d!1598794 d!1598842))

(declare-fun d!1599172 () Bool)

(declare-fun lt!2051660 () Bool)

(assert (=> d!1599172 (= lt!2051660 (isEmpty!30938 (list!18367 (c!847515 (_1!34389 lt!2051115)))))))

(assert (=> d!1599172 (= lt!2051660 (= (size!38076 (c!847515 (_1!34389 lt!2051115))) 0))))

(assert (=> d!1599172 (= (isEmpty!30943 (c!847515 (_1!34389 lt!2051115))) lt!2051660)))

(declare-fun bs!1183257 () Bool)

(assert (= bs!1183257 d!1599172))

(assert (=> bs!1183257 m!5993968))

(assert (=> bs!1183257 m!5993968))

(declare-fun m!5995146 () Bool)

(assert (=> bs!1183257 m!5995146))

(assert (=> bs!1183257 m!5993972))

(assert (=> d!1598794 d!1599172))

(declare-fun d!1599174 () Bool)

(declare-fun e!3105456 () Bool)

(assert (=> d!1599174 e!3105456))

(declare-fun res!2120796 () Bool)

(assert (=> d!1599174 (=> (not res!2120796) (not e!3105456))))

(declare-fun lt!2051663 () BalanceConc!29720)

(assert (=> d!1599174 (= res!2120796 (= (list!18365 lt!2051663) (list!18365 (_1!34389 lt!2051115))))))

(declare-fun fromList!943 (List!57567) Conc!15145)

(assert (=> d!1599174 (= lt!2051663 (BalanceConc!29721 (fromList!943 (list!18365 (_1!34389 lt!2051115)))))))

(assert (=> d!1599174 (= (fromListB!2731 (list!18365 (_1!34389 lt!2051115))) lt!2051663)))

(declare-fun b!4968456 () Bool)

(assert (=> b!4968456 (= e!3105456 (isBalanced!4202 (fromList!943 (list!18365 (_1!34389 lt!2051115)))))))

(assert (= (and d!1599174 res!2120796) b!4968456))

(declare-fun m!5995148 () Bool)

(assert (=> d!1599174 m!5995148))

(assert (=> d!1599174 m!5993572))

(declare-fun m!5995150 () Bool)

(assert (=> d!1599174 m!5995150))

(assert (=> b!4968456 m!5993572))

(assert (=> b!4968456 m!5995150))

(assert (=> b!4968456 m!5995150))

(declare-fun m!5995152 () Bool)

(assert (=> b!4968456 m!5995152))

(assert (=> d!1598868 d!1599174))

(declare-fun bm!346491 () Bool)

(declare-fun call!346498 () Bool)

(declare-fun c!847746 () Bool)

(assert (=> bm!346491 (= call!346498 (validRegex!5969 (ite c!847746 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259))) (regOne!27764 (regex!8393 (h!63892 rulesArg!259))))))))

(declare-fun b!4968475 () Bool)

(declare-fun res!2120807 () Bool)

(declare-fun e!3105477 () Bool)

(assert (=> b!4968475 (=> res!2120807 e!3105477)))

(assert (=> b!4968475 (= res!2120807 (not (is-Concat!22330 (regex!8393 (h!63892 rulesArg!259)))))))

(declare-fun e!3105471 () Bool)

(assert (=> b!4968475 (= e!3105471 e!3105477)))

(declare-fun bm!346492 () Bool)

(declare-fun call!346497 () Bool)

(declare-fun c!847747 () Bool)

(assert (=> bm!346492 (= call!346497 (validRegex!5969 (ite c!847747 (reg!13955 (regex!8393 (h!63892 rulesArg!259))) (ite c!847746 (regOne!27765 (regex!8393 (h!63892 rulesArg!259))) (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))))))

(declare-fun bm!346493 () Bool)

(declare-fun call!346496 () Bool)

(assert (=> bm!346493 (= call!346496 call!346497)))

(declare-fun b!4968476 () Bool)

(declare-fun e!3105476 () Bool)

(assert (=> b!4968476 (= e!3105477 e!3105476)))

(declare-fun res!2120810 () Bool)

(assert (=> b!4968476 (=> (not res!2120810) (not e!3105476))))

(assert (=> b!4968476 (= res!2120810 call!346498)))

(declare-fun d!1599176 () Bool)

(declare-fun res!2120808 () Bool)

(declare-fun e!3105474 () Bool)

(assert (=> d!1599176 (=> res!2120808 e!3105474)))

(assert (=> d!1599176 (= res!2120808 (is-ElementMatch!13626 (regex!8393 (h!63892 rulesArg!259))))))

(assert (=> d!1599176 (= (validRegex!5969 (regex!8393 (h!63892 rulesArg!259))) e!3105474)))

(declare-fun b!4968477 () Bool)

(declare-fun res!2120809 () Bool)

(declare-fun e!3105472 () Bool)

(assert (=> b!4968477 (=> (not res!2120809) (not e!3105472))))

(assert (=> b!4968477 (= res!2120809 call!346496)))

(assert (=> b!4968477 (= e!3105471 e!3105472)))

(declare-fun b!4968478 () Bool)

(assert (=> b!4968478 (= e!3105472 call!346498)))

(declare-fun b!4968479 () Bool)

(declare-fun e!3105473 () Bool)

(declare-fun e!3105475 () Bool)

(assert (=> b!4968479 (= e!3105473 e!3105475)))

(declare-fun res!2120811 () Bool)

(assert (=> b!4968479 (= res!2120811 (not (nullable!4620 (reg!13955 (regex!8393 (h!63892 rulesArg!259))))))))

(assert (=> b!4968479 (=> (not res!2120811) (not e!3105475))))

(declare-fun b!4968480 () Bool)

(assert (=> b!4968480 (= e!3105476 call!346496)))

(declare-fun b!4968481 () Bool)

(assert (=> b!4968481 (= e!3105473 e!3105471)))

(assert (=> b!4968481 (= c!847746 (is-Union!13626 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun b!4968482 () Bool)

(assert (=> b!4968482 (= e!3105474 e!3105473)))

(assert (=> b!4968482 (= c!847747 (is-Star!13626 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun b!4968483 () Bool)

(assert (=> b!4968483 (= e!3105475 call!346497)))

(assert (= (and d!1599176 (not res!2120808)) b!4968482))

(assert (= (and b!4968482 c!847747) b!4968479))

(assert (= (and b!4968482 (not c!847747)) b!4968481))

(assert (= (and b!4968479 res!2120811) b!4968483))

(assert (= (and b!4968481 c!847746) b!4968477))

(assert (= (and b!4968481 (not c!847746)) b!4968475))

(assert (= (and b!4968477 res!2120809) b!4968478))

(assert (= (and b!4968475 (not res!2120807)) b!4968476))

(assert (= (and b!4968476 res!2120810) b!4968480))

(assert (= (or b!4968477 b!4968480) bm!346493))

(assert (= (or b!4968478 b!4968476) bm!346491))

(assert (= (or b!4968483 bm!346493) bm!346492))

(declare-fun m!5995154 () Bool)

(assert (=> bm!346491 m!5995154))

(declare-fun m!5995156 () Bool)

(assert (=> bm!346492 m!5995156))

(declare-fun m!5995158 () Bool)

(assert (=> b!4968479 m!5995158))

(assert (=> d!1598796 d!1599176))

(declare-fun d!1599178 () Bool)

(declare-fun choose!36676 (Int) Bool)

(assert (=> d!1599178 (= (Forall!1762 lambda!247383) (choose!36676 lambda!247383))))

(declare-fun bs!1183258 () Bool)

(assert (= bs!1183258 d!1599178))

(declare-fun m!5995160 () Bool)

(assert (=> bs!1183258 m!5995160))

(assert (=> d!1598926 d!1599178))

(declare-fun d!1599180 () Bool)

(assert (=> d!1599180 (= (isEmpty!30938 (_1!34390 lt!2051371)) (is-Nil!57443 (_1!34390 lt!2051371)))))

(assert (=> b!4967815 d!1599180))

(declare-fun d!1599182 () Bool)

(assert (=> d!1599182 (= (inv!75082 (xs!18471 (left!41900 (c!847515 totalInput!464)))) (<= (size!38072 (innerList!15233 (xs!18471 (left!41900 (c!847515 totalInput!464))))) 2147483647))))

(declare-fun bs!1183259 () Bool)

(assert (= bs!1183259 d!1599182))

(declare-fun m!5995162 () Bool)

(assert (=> bs!1183259 m!5995162))

(assert (=> b!4968015 d!1599182))

(declare-fun d!1599184 () Bool)

(declare-fun lt!2051664 () Int)

(assert (=> d!1599184 (>= lt!2051664 0)))

(declare-fun e!3105478 () Int)

(assert (=> d!1599184 (= lt!2051664 e!3105478)))

(declare-fun c!847748 () Bool)

(assert (=> d!1599184 (= c!847748 (is-Nil!57443 (t!368627 lt!2050949)))))

(assert (=> d!1599184 (= (size!38072 (t!368627 lt!2050949)) lt!2051664)))

(declare-fun b!4968484 () Bool)

(assert (=> b!4968484 (= e!3105478 0)))

(declare-fun b!4968485 () Bool)

(assert (=> b!4968485 (= e!3105478 (+ 1 (size!38072 (t!368627 (t!368627 lt!2050949)))))))

(assert (= (and d!1599184 c!847748) b!4968484))

(assert (= (and d!1599184 (not c!847748)) b!4968485))

(declare-fun m!5995164 () Bool)

(assert (=> b!4968485 m!5995164))

(assert (=> b!4967621 d!1599184))

(declare-fun b!4968487 () Bool)

(declare-fun e!3105480 () List!57567)

(assert (=> b!4968487 (= e!3105480 (Cons!57443 (h!63891 (list!18367 (left!41900 (c!847515 (_2!34386 lt!2050942))))) (++!12532 (t!368627 (list!18367 (left!41900 (c!847515 (_2!34386 lt!2050942))))) (list!18367 (right!42230 (c!847515 (_2!34386 lt!2050942)))))))))

(declare-fun b!4968489 () Bool)

(declare-fun e!3105479 () Bool)

(declare-fun lt!2051665 () List!57567)

(assert (=> b!4968489 (= e!3105479 (or (not (= (list!18367 (right!42230 (c!847515 (_2!34386 lt!2050942)))) Nil!57443)) (= lt!2051665 (list!18367 (left!41900 (c!847515 (_2!34386 lt!2050942)))))))))

(declare-fun b!4968486 () Bool)

(assert (=> b!4968486 (= e!3105480 (list!18367 (right!42230 (c!847515 (_2!34386 lt!2050942)))))))

(declare-fun d!1599186 () Bool)

(assert (=> d!1599186 e!3105479))

(declare-fun res!2120812 () Bool)

(assert (=> d!1599186 (=> (not res!2120812) (not e!3105479))))

(assert (=> d!1599186 (= res!2120812 (= (content!10184 lt!2051665) (set.union (content!10184 (list!18367 (left!41900 (c!847515 (_2!34386 lt!2050942))))) (content!10184 (list!18367 (right!42230 (c!847515 (_2!34386 lt!2050942))))))))))

(assert (=> d!1599186 (= lt!2051665 e!3105480)))

(declare-fun c!847749 () Bool)

(assert (=> d!1599186 (= c!847749 (is-Nil!57443 (list!18367 (left!41900 (c!847515 (_2!34386 lt!2050942))))))))

(assert (=> d!1599186 (= (++!12532 (list!18367 (left!41900 (c!847515 (_2!34386 lt!2050942)))) (list!18367 (right!42230 (c!847515 (_2!34386 lt!2050942))))) lt!2051665)))

(declare-fun b!4968488 () Bool)

(declare-fun res!2120813 () Bool)

(assert (=> b!4968488 (=> (not res!2120813) (not e!3105479))))

(assert (=> b!4968488 (= res!2120813 (= (size!38072 lt!2051665) (+ (size!38072 (list!18367 (left!41900 (c!847515 (_2!34386 lt!2050942))))) (size!38072 (list!18367 (right!42230 (c!847515 (_2!34386 lt!2050942))))))))))

(assert (= (and d!1599186 c!847749) b!4968486))

(assert (= (and d!1599186 (not c!847749)) b!4968487))

(assert (= (and d!1599186 res!2120812) b!4968488))

(assert (= (and b!4968488 res!2120813) b!4968489))

(assert (=> b!4968487 m!5993774))

(declare-fun m!5995166 () Bool)

(assert (=> b!4968487 m!5995166))

(declare-fun m!5995168 () Bool)

(assert (=> d!1599186 m!5995168))

(assert (=> d!1599186 m!5993772))

(declare-fun m!5995170 () Bool)

(assert (=> d!1599186 m!5995170))

(assert (=> d!1599186 m!5993774))

(declare-fun m!5995172 () Bool)

(assert (=> d!1599186 m!5995172))

(declare-fun m!5995174 () Bool)

(assert (=> b!4968488 m!5995174))

(assert (=> b!4968488 m!5993772))

(declare-fun m!5995176 () Bool)

(assert (=> b!4968488 m!5995176))

(assert (=> b!4968488 m!5993774))

(declare-fun m!5995178 () Bool)

(assert (=> b!4968488 m!5995178))

(assert (=> b!4967533 d!1599186))

(declare-fun b!4968490 () Bool)

(declare-fun e!3105481 () List!57567)

(assert (=> b!4968490 (= e!3105481 Nil!57443)))

(declare-fun b!4968492 () Bool)

(declare-fun e!3105482 () List!57567)

(assert (=> b!4968492 (= e!3105482 (list!18369 (xs!18471 (left!41900 (c!847515 (_2!34386 lt!2050942))))))))

(declare-fun b!4968493 () Bool)

(assert (=> b!4968493 (= e!3105482 (++!12532 (list!18367 (left!41900 (left!41900 (c!847515 (_2!34386 lt!2050942))))) (list!18367 (right!42230 (left!41900 (c!847515 (_2!34386 lt!2050942)))))))))

(declare-fun b!4968491 () Bool)

(assert (=> b!4968491 (= e!3105481 e!3105482)))

(declare-fun c!847751 () Bool)

(assert (=> b!4968491 (= c!847751 (is-Leaf!25167 (left!41900 (c!847515 (_2!34386 lt!2050942)))))))

(declare-fun d!1599188 () Bool)

(declare-fun c!847750 () Bool)

(assert (=> d!1599188 (= c!847750 (is-Empty!15145 (left!41900 (c!847515 (_2!34386 lt!2050942)))))))

(assert (=> d!1599188 (= (list!18367 (left!41900 (c!847515 (_2!34386 lt!2050942)))) e!3105481)))

(assert (= (and d!1599188 c!847750) b!4968490))

(assert (= (and d!1599188 (not c!847750)) b!4968491))

(assert (= (and b!4968491 c!847751) b!4968492))

(assert (= (and b!4968491 (not c!847751)) b!4968493))

(declare-fun m!5995180 () Bool)

(assert (=> b!4968492 m!5995180))

(declare-fun m!5995182 () Bool)

(assert (=> b!4968493 m!5995182))

(declare-fun m!5995184 () Bool)

(assert (=> b!4968493 m!5995184))

(assert (=> b!4968493 m!5995182))

(assert (=> b!4968493 m!5995184))

(declare-fun m!5995186 () Bool)

(assert (=> b!4968493 m!5995186))

(assert (=> b!4967533 d!1599188))

(declare-fun b!4968494 () Bool)

(declare-fun e!3105483 () List!57567)

(assert (=> b!4968494 (= e!3105483 Nil!57443)))

(declare-fun b!4968496 () Bool)

(declare-fun e!3105484 () List!57567)

(assert (=> b!4968496 (= e!3105484 (list!18369 (xs!18471 (right!42230 (c!847515 (_2!34386 lt!2050942))))))))

(declare-fun b!4968497 () Bool)

(assert (=> b!4968497 (= e!3105484 (++!12532 (list!18367 (left!41900 (right!42230 (c!847515 (_2!34386 lt!2050942))))) (list!18367 (right!42230 (right!42230 (c!847515 (_2!34386 lt!2050942)))))))))

(declare-fun b!4968495 () Bool)

(assert (=> b!4968495 (= e!3105483 e!3105484)))

(declare-fun c!847753 () Bool)

(assert (=> b!4968495 (= c!847753 (is-Leaf!25167 (right!42230 (c!847515 (_2!34386 lt!2050942)))))))

(declare-fun d!1599190 () Bool)

(declare-fun c!847752 () Bool)

(assert (=> d!1599190 (= c!847752 (is-Empty!15145 (right!42230 (c!847515 (_2!34386 lt!2050942)))))))

(assert (=> d!1599190 (= (list!18367 (right!42230 (c!847515 (_2!34386 lt!2050942)))) e!3105483)))

(assert (= (and d!1599190 c!847752) b!4968494))

(assert (= (and d!1599190 (not c!847752)) b!4968495))

(assert (= (and b!4968495 c!847753) b!4968496))

(assert (= (and b!4968495 (not c!847753)) b!4968497))

(declare-fun m!5995188 () Bool)

(assert (=> b!4968496 m!5995188))

(declare-fun m!5995190 () Bool)

(assert (=> b!4968497 m!5995190))

(declare-fun m!5995192 () Bool)

(assert (=> b!4968497 m!5995192))

(assert (=> b!4968497 m!5995190))

(assert (=> b!4968497 m!5995192))

(declare-fun m!5995194 () Bool)

(assert (=> b!4968497 m!5995194))

(assert (=> b!4967533 d!1599190))

(assert (=> b!4967983 d!1599158))

(declare-fun d!1599192 () Bool)

(assert (=> d!1599192 (= (isEmpty!30938 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))) (is-Nil!57443 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))

(assert (=> d!1598822 d!1599192))

(declare-fun bm!346494 () Bool)

(declare-fun call!346501 () Bool)

(declare-fun c!847754 () Bool)

(assert (=> bm!346494 (= call!346501 (validRegex!5969 (ite c!847754 (regTwo!27765 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (regOne!27764 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))))))

(declare-fun b!4968498 () Bool)

(declare-fun res!2120814 () Bool)

(declare-fun e!3105491 () Bool)

(assert (=> b!4968498 (=> res!2120814 e!3105491)))

(assert (=> b!4968498 (= res!2120814 (not (is-Concat!22330 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))))))

(declare-fun e!3105485 () Bool)

(assert (=> b!4968498 (= e!3105485 e!3105491)))

(declare-fun bm!346495 () Bool)

(declare-fun c!847755 () Bool)

(declare-fun call!346500 () Bool)

(assert (=> bm!346495 (= call!346500 (validRegex!5969 (ite c!847755 (reg!13955 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (ite c!847754 (regOne!27765 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (regTwo!27764 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))))))))

(declare-fun bm!346496 () Bool)

(declare-fun call!346499 () Bool)

(assert (=> bm!346496 (= call!346499 call!346500)))

(declare-fun b!4968499 () Bool)

(declare-fun e!3105490 () Bool)

(assert (=> b!4968499 (= e!3105491 e!3105490)))

(declare-fun res!2120817 () Bool)

(assert (=> b!4968499 (=> (not res!2120817) (not e!3105490))))

(assert (=> b!4968499 (= res!2120817 call!346501)))

(declare-fun d!1599194 () Bool)

(declare-fun res!2120815 () Bool)

(declare-fun e!3105488 () Bool)

(assert (=> d!1599194 (=> res!2120815 e!3105488)))

(assert (=> d!1599194 (= res!2120815 (is-ElementMatch!13626 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))))

(assert (=> d!1599194 (= (validRegex!5969 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) e!3105488)))

(declare-fun b!4968500 () Bool)

(declare-fun res!2120816 () Bool)

(declare-fun e!3105486 () Bool)

(assert (=> b!4968500 (=> (not res!2120816) (not e!3105486))))

(assert (=> b!4968500 (= res!2120816 call!346499)))

(assert (=> b!4968500 (= e!3105485 e!3105486)))

(declare-fun b!4968501 () Bool)

(assert (=> b!4968501 (= e!3105486 call!346501)))

(declare-fun b!4968502 () Bool)

(declare-fun e!3105487 () Bool)

(declare-fun e!3105489 () Bool)

(assert (=> b!4968502 (= e!3105487 e!3105489)))

(declare-fun res!2120818 () Bool)

(assert (=> b!4968502 (= res!2120818 (not (nullable!4620 (reg!13955 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))))))

(assert (=> b!4968502 (=> (not res!2120818) (not e!3105489))))

(declare-fun b!4968503 () Bool)

(assert (=> b!4968503 (= e!3105490 call!346499)))

(declare-fun b!4968504 () Bool)

(assert (=> b!4968504 (= e!3105487 e!3105485)))

(assert (=> b!4968504 (= c!847754 (is-Union!13626 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))))

(declare-fun b!4968505 () Bool)

(assert (=> b!4968505 (= e!3105488 e!3105487)))

(assert (=> b!4968505 (= c!847755 (is-Star!13626 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))))

(declare-fun b!4968506 () Bool)

(assert (=> b!4968506 (= e!3105489 call!346500)))

(assert (= (and d!1599194 (not res!2120815)) b!4968505))

(assert (= (and b!4968505 c!847755) b!4968502))

(assert (= (and b!4968505 (not c!847755)) b!4968504))

(assert (= (and b!4968502 res!2120818) b!4968506))

(assert (= (and b!4968504 c!847754) b!4968500))

(assert (= (and b!4968504 (not c!847754)) b!4968498))

(assert (= (and b!4968500 res!2120816) b!4968501))

(assert (= (and b!4968498 (not res!2120814)) b!4968499))

(assert (= (and b!4968499 res!2120817) b!4968503))

(assert (= (or b!4968500 b!4968503) bm!346496))

(assert (= (or b!4968501 b!4968499) bm!346494))

(assert (= (or b!4968506 bm!346496) bm!346495))

(declare-fun m!5995196 () Bool)

(assert (=> bm!346494 m!5995196))

(declare-fun m!5995198 () Bool)

(assert (=> bm!346495 m!5995198))

(declare-fun m!5995200 () Bool)

(assert (=> b!4968502 m!5995200))

(assert (=> d!1598822 d!1599194))

(declare-fun d!1599196 () Bool)

(declare-fun lostCauseFct!283 (Regex!13626) Bool)

(assert (=> d!1599196 (= (lostCause!1133 (regex!8393 (h!63892 rulesArg!259))) (lostCauseFct!283 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun bs!1183260 () Bool)

(assert (= bs!1183260 d!1599196))

(declare-fun m!5995202 () Bool)

(assert (=> bs!1183260 m!5995202))

(assert (=> d!1598860 d!1599196))

(declare-fun d!1599198 () Bool)

(assert (=> d!1599198 (isPrefix!5244 Nil!57443 (++!12532 Nil!57443 lt!2051120))))

(declare-fun lt!2051668 () Unit!148361)

(declare-fun choose!36677 (List!57567 List!57567) Unit!148361)

(assert (=> d!1599198 (= lt!2051668 (choose!36677 Nil!57443 lt!2051120))))

(assert (=> d!1599198 (= (lemmaConcatTwoListThenFirstIsPrefix!3347 Nil!57443 lt!2051120) lt!2051668)))

(declare-fun bs!1183261 () Bool)

(assert (= bs!1183261 d!1599198))

(assert (=> bs!1183261 m!5994046))

(assert (=> bs!1183261 m!5994046))

(assert (=> bs!1183261 m!5994048))

(declare-fun m!5995204 () Bool)

(assert (=> bs!1183261 m!5995204))

(assert (=> d!1598860 d!1599198))

(declare-fun b!4968508 () Bool)

(declare-fun e!3105493 () List!57567)

(assert (=> b!4968508 (= e!3105493 (Cons!57443 (h!63891 (_1!34390 lt!2051376)) (++!12532 (t!368627 (_1!34390 lt!2051376)) (_2!34390 lt!2051376))))))

(declare-fun b!4968510 () Bool)

(declare-fun e!3105492 () Bool)

(declare-fun lt!2051669 () List!57567)

(assert (=> b!4968510 (= e!3105492 (or (not (= (_2!34390 lt!2051376) Nil!57443)) (= lt!2051669 (_1!34390 lt!2051376))))))

(declare-fun b!4968507 () Bool)

(assert (=> b!4968507 (= e!3105493 (_2!34390 lt!2051376))))

(declare-fun d!1599200 () Bool)

(assert (=> d!1599200 e!3105492))

(declare-fun res!2120819 () Bool)

(assert (=> d!1599200 (=> (not res!2120819) (not e!3105492))))

(assert (=> d!1599200 (= res!2120819 (= (content!10184 lt!2051669) (set.union (content!10184 (_1!34390 lt!2051376)) (content!10184 (_2!34390 lt!2051376)))))))

(assert (=> d!1599200 (= lt!2051669 e!3105493)))

(declare-fun c!847756 () Bool)

(assert (=> d!1599200 (= c!847756 (is-Nil!57443 (_1!34390 lt!2051376)))))

(assert (=> d!1599200 (= (++!12532 (_1!34390 lt!2051376) (_2!34390 lt!2051376)) lt!2051669)))

(declare-fun b!4968509 () Bool)

(declare-fun res!2120820 () Bool)

(assert (=> b!4968509 (=> (not res!2120820) (not e!3105492))))

(assert (=> b!4968509 (= res!2120820 (= (size!38072 lt!2051669) (+ (size!38072 (_1!34390 lt!2051376)) (size!38072 (_2!34390 lt!2051376)))))))

(assert (= (and d!1599200 c!847756) b!4968507))

(assert (= (and d!1599200 (not c!847756)) b!4968508))

(assert (= (and d!1599200 res!2120819) b!4968509))

(assert (= (and b!4968509 res!2120820) b!4968510))

(declare-fun m!5995206 () Bool)

(assert (=> b!4968508 m!5995206))

(declare-fun m!5995208 () Bool)

(assert (=> d!1599200 m!5995208))

(declare-fun m!5995210 () Bool)

(assert (=> d!1599200 m!5995210))

(declare-fun m!5995212 () Bool)

(assert (=> d!1599200 m!5995212))

(declare-fun m!5995214 () Bool)

(assert (=> b!4968509 m!5995214))

(assert (=> b!4968509 m!5994006))

(declare-fun m!5995216 () Bool)

(assert (=> b!4968509 m!5995216))

(assert (=> d!1598860 d!1599200))

(declare-fun b!4968512 () Bool)

(declare-fun e!3105495 () List!57567)

(assert (=> b!4968512 (= e!3105495 (Cons!57443 (h!63891 Nil!57443) (++!12532 (t!368627 Nil!57443) lt!2051120)))))

(declare-fun b!4968514 () Bool)

(declare-fun e!3105494 () Bool)

(declare-fun lt!2051670 () List!57567)

(assert (=> b!4968514 (= e!3105494 (or (not (= lt!2051120 Nil!57443)) (= lt!2051670 Nil!57443)))))

(declare-fun b!4968511 () Bool)

(assert (=> b!4968511 (= e!3105495 lt!2051120)))

(declare-fun d!1599202 () Bool)

(assert (=> d!1599202 e!3105494))

(declare-fun res!2120821 () Bool)

(assert (=> d!1599202 (=> (not res!2120821) (not e!3105494))))

(assert (=> d!1599202 (= res!2120821 (= (content!10184 lt!2051670) (set.union (content!10184 Nil!57443) (content!10184 lt!2051120))))))

(assert (=> d!1599202 (= lt!2051670 e!3105495)))

(declare-fun c!847757 () Bool)

(assert (=> d!1599202 (= c!847757 (is-Nil!57443 Nil!57443))))

(assert (=> d!1599202 (= (++!12532 Nil!57443 lt!2051120) lt!2051670)))

(declare-fun b!4968513 () Bool)

(declare-fun res!2120822 () Bool)

(assert (=> b!4968513 (=> (not res!2120822) (not e!3105494))))

(assert (=> b!4968513 (= res!2120822 (= (size!38072 lt!2051670) (+ (size!38072 Nil!57443) (size!38072 lt!2051120))))))

(assert (= (and d!1599202 c!847757) b!4968511))

(assert (= (and d!1599202 (not c!847757)) b!4968512))

(assert (= (and d!1599202 res!2120821) b!4968513))

(assert (= (and b!4968513 res!2120822) b!4968514))

(declare-fun m!5995218 () Bool)

(assert (=> b!4968512 m!5995218))

(declare-fun m!5995220 () Bool)

(assert (=> d!1599202 m!5995220))

(declare-fun m!5995222 () Bool)

(assert (=> d!1599202 m!5995222))

(declare-fun m!5995224 () Bool)

(assert (=> d!1599202 m!5995224))

(declare-fun m!5995226 () Bool)

(assert (=> b!4968513 m!5995226))

(assert (=> b!4968513 m!5993574))

(assert (=> b!4968513 m!5993570))

(assert (=> d!1598860 d!1599202))

(assert (=> d!1598860 d!1599176))

(declare-fun d!1599204 () Bool)

(assert (=> d!1599204 (= lt!2051120 lt!2051383)))

(declare-fun lt!2051673 () Unit!148361)

(declare-fun choose!36678 (List!57567 List!57567 List!57567 List!57567 List!57567) Unit!148361)

(assert (=> d!1599204 (= lt!2051673 (choose!36678 Nil!57443 lt!2051120 Nil!57443 lt!2051383 lt!2051120))))

(assert (=> d!1599204 (isPrefix!5244 Nil!57443 lt!2051120)))

(assert (=> d!1599204 (= (lemmaSamePrefixThenSameSuffix!2501 Nil!57443 lt!2051120 Nil!57443 lt!2051383 lt!2051120) lt!2051673)))

(declare-fun bs!1183262 () Bool)

(assert (= bs!1183262 d!1599204))

(declare-fun m!5995228 () Bool)

(assert (=> bs!1183262 m!5995228))

(declare-fun m!5995230 () Bool)

(assert (=> bs!1183262 m!5995230))

(assert (=> d!1598860 d!1599204))

(declare-fun b!4968518 () Bool)

(declare-fun e!3105498 () Bool)

(assert (=> b!4968518 (= e!3105498 (>= (size!38072 (++!12532 Nil!57443 lt!2051120)) (size!38072 Nil!57443)))))

(declare-fun b!4968515 () Bool)

(declare-fun e!3105497 () Bool)

(declare-fun e!3105496 () Bool)

(assert (=> b!4968515 (= e!3105497 e!3105496)))

(declare-fun res!2120825 () Bool)

(assert (=> b!4968515 (=> (not res!2120825) (not e!3105496))))

(assert (=> b!4968515 (= res!2120825 (not (is-Nil!57443 (++!12532 Nil!57443 lt!2051120))))))

(declare-fun b!4968517 () Bool)

(assert (=> b!4968517 (= e!3105496 (isPrefix!5244 (tail!9801 Nil!57443) (tail!9801 (++!12532 Nil!57443 lt!2051120))))))

(declare-fun d!1599206 () Bool)

(assert (=> d!1599206 e!3105498))

(declare-fun res!2120824 () Bool)

(assert (=> d!1599206 (=> res!2120824 e!3105498)))

(declare-fun lt!2051674 () Bool)

(assert (=> d!1599206 (= res!2120824 (not lt!2051674))))

(assert (=> d!1599206 (= lt!2051674 e!3105497)))

(declare-fun res!2120823 () Bool)

(assert (=> d!1599206 (=> res!2120823 e!3105497)))

(assert (=> d!1599206 (= res!2120823 (is-Nil!57443 Nil!57443))))

(assert (=> d!1599206 (= (isPrefix!5244 Nil!57443 (++!12532 Nil!57443 lt!2051120)) lt!2051674)))

(declare-fun b!4968516 () Bool)

(declare-fun res!2120826 () Bool)

(assert (=> b!4968516 (=> (not res!2120826) (not e!3105496))))

(assert (=> b!4968516 (= res!2120826 (= (head!10668 Nil!57443) (head!10668 (++!12532 Nil!57443 lt!2051120))))))

(assert (= (and d!1599206 (not res!2120823)) b!4968515))

(assert (= (and b!4968515 res!2120825) b!4968516))

(assert (= (and b!4968516 res!2120826) b!4968517))

(assert (= (and d!1599206 (not res!2120824)) b!4968518))

(assert (=> b!4968518 m!5994046))

(declare-fun m!5995232 () Bool)

(assert (=> b!4968518 m!5995232))

(assert (=> b!4968518 m!5993574))

(declare-fun m!5995234 () Bool)

(assert (=> b!4968517 m!5995234))

(assert (=> b!4968517 m!5994046))

(declare-fun m!5995236 () Bool)

(assert (=> b!4968517 m!5995236))

(assert (=> b!4968517 m!5995234))

(assert (=> b!4968517 m!5995236))

(declare-fun m!5995238 () Bool)

(assert (=> b!4968517 m!5995238))

(declare-fun m!5995240 () Bool)

(assert (=> b!4968516 m!5995240))

(assert (=> b!4968516 m!5994046))

(declare-fun m!5995242 () Bool)

(assert (=> b!4968516 m!5995242))

(assert (=> d!1598860 d!1599206))

(declare-fun d!1599208 () Bool)

(declare-fun lt!2051677 () List!57567)

(assert (=> d!1599208 (= (++!12532 Nil!57443 lt!2051677) lt!2051120)))

(declare-fun e!3105501 () List!57567)

(assert (=> d!1599208 (= lt!2051677 e!3105501)))

(declare-fun c!847760 () Bool)

(assert (=> d!1599208 (= c!847760 (is-Cons!57443 Nil!57443))))

(assert (=> d!1599208 (>= (size!38072 lt!2051120) (size!38072 Nil!57443))))

(assert (=> d!1599208 (= (getSuffix!3088 lt!2051120 Nil!57443) lt!2051677)))

(declare-fun b!4968523 () Bool)

(assert (=> b!4968523 (= e!3105501 (getSuffix!3088 (tail!9801 lt!2051120) (t!368627 Nil!57443)))))

(declare-fun b!4968524 () Bool)

(assert (=> b!4968524 (= e!3105501 lt!2051120)))

(assert (= (and d!1599208 c!847760) b!4968523))

(assert (= (and d!1599208 (not c!847760)) b!4968524))

(declare-fun m!5995244 () Bool)

(assert (=> d!1599208 m!5995244))

(assert (=> d!1599208 m!5993570))

(assert (=> d!1599208 m!5993574))

(assert (=> b!4968523 m!5994022))

(assert (=> b!4968523 m!5994022))

(declare-fun m!5995246 () Bool)

(assert (=> b!4968523 m!5995246))

(assert (=> d!1598860 d!1599208))

(declare-fun d!1599210 () Bool)

(assert (=> d!1599210 (= (max!0 (height!2013 (left!41900 (c!847515 input!1342))) (height!2013 (right!42230 (c!847515 input!1342)))) (ite (< (height!2013 (left!41900 (c!847515 input!1342))) (height!2013 (right!42230 (c!847515 input!1342)))) (height!2013 (right!42230 (c!847515 input!1342))) (height!2013 (left!41900 (c!847515 input!1342)))))))

(assert (=> b!4967995 d!1599210))

(assert (=> b!4967995 d!1599154))

(assert (=> b!4967995 d!1599156))

(declare-fun d!1599212 () Bool)

(declare-fun e!3105503 () Bool)

(assert (=> d!1599212 e!3105503))

(declare-fun res!2120832 () Bool)

(assert (=> d!1599212 (=> res!2120832 e!3105503)))

(declare-fun lt!2051682 () Option!14449)

(assert (=> d!1599212 (= res!2120832 (isEmpty!30935 lt!2051682))))

(declare-fun e!3105505 () Option!14449)

(assert (=> d!1599212 (= lt!2051682 e!3105505)))

(declare-fun c!847761 () Bool)

(declare-fun lt!2051679 () tuple2!62174)

(assert (=> d!1599212 (= c!847761 (isEmpty!30938 (_1!34390 lt!2051679)))))

(assert (=> d!1599212 (= lt!2051679 (findLongestMatch!1697 (regex!8393 (h!63892 (t!368628 rulesArg!259))) (list!18365 input!1342)))))

(assert (=> d!1599212 (ruleValid!3802 thiss!15247 (h!63892 (t!368628 rulesArg!259)))))

(assert (=> d!1599212 (= (maxPrefixOneRule!3629 thiss!15247 (h!63892 (t!368628 rulesArg!259)) (list!18365 input!1342)) lt!2051682)))

(declare-fun b!4968525 () Bool)

(declare-fun res!2120828 () Bool)

(declare-fun e!3105504 () Bool)

(assert (=> b!4968525 (=> (not res!2120828) (not e!3105504))))

(assert (=> b!4968525 (= res!2120828 (< (size!38072 (_2!34385 (get!19940 lt!2051682))) (size!38072 (list!18365 input!1342))))))

(declare-fun b!4968526 () Bool)

(declare-fun e!3105502 () Bool)

(assert (=> b!4968526 (= e!3105502 (matchR!6636 (regex!8393 (h!63892 (t!368628 rulesArg!259))) (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) (list!18365 input!1342) (list!18365 input!1342) (size!38072 (list!18365 input!1342))))))))

(declare-fun b!4968527 () Bool)

(declare-fun res!2120833 () Bool)

(assert (=> b!4968527 (=> (not res!2120833) (not e!3105504))))

(assert (=> b!4968527 (= res!2120833 (= (value!268642 (_1!34385 (get!19940 lt!2051682))) (apply!13904 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051682)))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051682)))))))))

(declare-fun b!4968528 () Bool)

(assert (=> b!4968528 (= e!3105505 (Some!14448 (tuple2!62165 (Token!15283 (apply!13904 (transformation!8393 (h!63892 (t!368628 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051679))) (h!63892 (t!368628 rulesArg!259)) (size!38073 (seqFromList!6036 (_1!34390 lt!2051679))) (_1!34390 lt!2051679)) (_2!34390 lt!2051679))))))

(declare-fun lt!2051678 () Unit!148361)

(assert (=> b!4968528 (= lt!2051678 (longestMatchIsAcceptedByMatchOrIsEmpty!1816 (regex!8393 (h!63892 (t!368628 rulesArg!259))) (list!18365 input!1342)))))

(declare-fun res!2120829 () Bool)

(assert (=> b!4968528 (= res!2120829 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) (list!18365 input!1342) (list!18365 input!1342) (size!38072 (list!18365 input!1342))))))))

(assert (=> b!4968528 (=> res!2120829 e!3105502)))

(assert (=> b!4968528 e!3105502))

(declare-fun lt!2051680 () Unit!148361)

(assert (=> b!4968528 (= lt!2051680 lt!2051678)))

(declare-fun lt!2051681 () Unit!148361)

(assert (=> b!4968528 (= lt!2051681 (lemmaSemiInverse!2602 (transformation!8393 (h!63892 (t!368628 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051679))))))

(declare-fun b!4968529 () Bool)

(declare-fun res!2120827 () Bool)

(assert (=> b!4968529 (=> (not res!2120827) (not e!3105504))))

(assert (=> b!4968529 (= res!2120827 (= (rule!11637 (_1!34385 (get!19940 lt!2051682))) (h!63892 (t!368628 rulesArg!259))))))

(declare-fun b!4968530 () Bool)

(declare-fun res!2120830 () Bool)

(assert (=> b!4968530 (=> (not res!2120830) (not e!3105504))))

(assert (=> b!4968530 (= res!2120830 (= (++!12532 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051682)))) (_2!34385 (get!19940 lt!2051682))) (list!18365 input!1342)))))

(declare-fun b!4968531 () Bool)

(assert (=> b!4968531 (= e!3105505 None!14448)))

(declare-fun b!4968532 () Bool)

(assert (=> b!4968532 (= e!3105503 e!3105504)))

(declare-fun res!2120831 () Bool)

(assert (=> b!4968532 (=> (not res!2120831) (not e!3105504))))

(assert (=> b!4968532 (= res!2120831 (matchR!6636 (regex!8393 (h!63892 (t!368628 rulesArg!259))) (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051682))))))))

(declare-fun b!4968533 () Bool)

(assert (=> b!4968533 (= e!3105504 (= (size!38070 (_1!34385 (get!19940 lt!2051682))) (size!38072 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051682))))))))

(assert (= (and d!1599212 c!847761) b!4968531))

(assert (= (and d!1599212 (not c!847761)) b!4968528))

(assert (= (and b!4968528 (not res!2120829)) b!4968526))

(assert (= (and d!1599212 (not res!2120832)) b!4968532))

(assert (= (and b!4968532 res!2120831) b!4968530))

(assert (= (and b!4968530 res!2120830) b!4968525))

(assert (= (and b!4968525 res!2120828) b!4968529))

(assert (= (and b!4968529 res!2120827) b!4968527))

(assert (= (and b!4968527 res!2120833) b!4968533))

(declare-fun m!5995248 () Bool)

(assert (=> b!4968530 m!5995248))

(declare-fun m!5995250 () Bool)

(assert (=> b!4968530 m!5995250))

(assert (=> b!4968530 m!5995250))

(declare-fun m!5995252 () Bool)

(assert (=> b!4968530 m!5995252))

(assert (=> b!4968530 m!5995252))

(declare-fun m!5995254 () Bool)

(assert (=> b!4968530 m!5995254))

(assert (=> b!4968525 m!5995248))

(declare-fun m!5995256 () Bool)

(assert (=> b!4968525 m!5995256))

(assert (=> b!4968525 m!5993376))

(assert (=> b!4968525 m!5993850))

(assert (=> b!4968533 m!5995248))

(declare-fun m!5995258 () Bool)

(assert (=> b!4968533 m!5995258))

(assert (=> b!4968529 m!5995248))

(declare-fun m!5995260 () Bool)

(assert (=> d!1599212 m!5995260))

(declare-fun m!5995262 () Bool)

(assert (=> d!1599212 m!5995262))

(assert (=> d!1599212 m!5993376))

(declare-fun m!5995264 () Bool)

(assert (=> d!1599212 m!5995264))

(assert (=> d!1599212 m!5993938))

(assert (=> b!4968532 m!5995248))

(assert (=> b!4968532 m!5995250))

(assert (=> b!4968532 m!5995250))

(assert (=> b!4968532 m!5995252))

(assert (=> b!4968532 m!5995252))

(declare-fun m!5995266 () Bool)

(assert (=> b!4968532 m!5995266))

(assert (=> b!4968527 m!5995248))

(declare-fun m!5995268 () Bool)

(assert (=> b!4968527 m!5995268))

(assert (=> b!4968527 m!5995268))

(declare-fun m!5995270 () Bool)

(assert (=> b!4968527 m!5995270))

(declare-fun m!5995272 () Bool)

(assert (=> b!4968528 m!5995272))

(declare-fun m!5995274 () Bool)

(assert (=> b!4968528 m!5995274))

(assert (=> b!4968528 m!5995272))

(assert (=> b!4968528 m!5993376))

(assert (=> b!4968528 m!5993850))

(assert (=> b!4968528 m!5993574))

(declare-fun m!5995276 () Bool)

(assert (=> b!4968528 m!5995276))

(assert (=> b!4968528 m!5995272))

(declare-fun m!5995278 () Bool)

(assert (=> b!4968528 m!5995278))

(assert (=> b!4968528 m!5993574))

(assert (=> b!4968528 m!5993376))

(assert (=> b!4968528 m!5993376))

(assert (=> b!4968528 m!5993850))

(declare-fun m!5995280 () Bool)

(assert (=> b!4968528 m!5995280))

(assert (=> b!4968528 m!5995272))

(declare-fun m!5995282 () Bool)

(assert (=> b!4968528 m!5995282))

(assert (=> b!4968528 m!5993376))

(declare-fun m!5995284 () Bool)

(assert (=> b!4968528 m!5995284))

(assert (=> b!4968526 m!5993574))

(assert (=> b!4968526 m!5993376))

(assert (=> b!4968526 m!5993850))

(assert (=> b!4968526 m!5993574))

(assert (=> b!4968526 m!5993376))

(assert (=> b!4968526 m!5993376))

(assert (=> b!4968526 m!5993850))

(assert (=> b!4968526 m!5995280))

(declare-fun m!5995286 () Bool)

(assert (=> b!4968526 m!5995286))

(assert (=> bm!346454 d!1599212))

(assert (=> b!4967938 d!1599140))

(declare-fun d!1599214 () Bool)

(assert (=> d!1599214 (= (apply!13904 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453)))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051453))))) (dynLambda!23167 (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453))))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051453))))))))

(declare-fun b_lambda!196921 () Bool)

(assert (=> (not b_lambda!196921) (not d!1599214)))

(declare-fun t!368723 () Bool)

(declare-fun tb!260695 () Bool)

(assert (=> (and b!4967137 (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453)))))) t!368723) tb!260695))

(declare-fun result!325814 () Bool)

(assert (=> tb!260695 (= result!325814 (inv!21 (dynLambda!23167 (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453))))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051453)))))))))

(declare-fun m!5995288 () Bool)

(assert (=> tb!260695 m!5995288))

(assert (=> d!1599214 t!368723))

(declare-fun b_and!348271 () Bool)

(assert (= b_and!348205 (and (=> t!368723 result!325814) b_and!348271)))

(declare-fun t!368725 () Bool)

(declare-fun tb!260697 () Bool)

(assert (=> (and b!4967394 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453)))))) t!368725) tb!260697))

(declare-fun result!325816 () Bool)

(assert (= result!325816 result!325814))

(assert (=> d!1599214 t!368725))

(declare-fun b_and!348273 () Bool)

(assert (= b_and!348207 (and (=> t!368725 result!325816) b_and!348273)))

(declare-fun t!368727 () Bool)

(declare-fun tb!260699 () Bool)

(assert (=> (and b!4968022 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453)))))) t!368727) tb!260699))

(declare-fun result!325818 () Bool)

(assert (= result!325818 result!325814))

(assert (=> d!1599214 t!368727))

(declare-fun b_and!348275 () Bool)

(assert (= b_and!348209 (and (=> t!368727 result!325818) b_and!348275)))

(assert (=> d!1599214 m!5994276))

(declare-fun m!5995290 () Bool)

(assert (=> d!1599214 m!5995290))

(assert (=> b!4967938 d!1599214))

(declare-fun d!1599216 () Bool)

(assert (=> d!1599216 (= (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051453)))) (fromListB!2731 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051453)))))))

(declare-fun bs!1183263 () Bool)

(assert (= bs!1183263 d!1599216))

(declare-fun m!5995292 () Bool)

(assert (=> bs!1183263 m!5995292))

(assert (=> b!4967938 d!1599216))

(declare-fun d!1599218 () Bool)

(declare-fun res!2120834 () Bool)

(declare-fun e!3105507 () Bool)

(assert (=> d!1599218 (=> res!2120834 e!3105507)))

(assert (=> d!1599218 (= res!2120834 (is-Nil!57444 (t!368628 rulesArg!259)))))

(assert (=> d!1599218 (= (forall!13329 (t!368628 rulesArg!259) lambda!247372) e!3105507)))

(declare-fun b!4968534 () Bool)

(declare-fun e!3105508 () Bool)

(assert (=> b!4968534 (= e!3105507 e!3105508)))

(declare-fun res!2120835 () Bool)

(assert (=> b!4968534 (=> (not res!2120835) (not e!3105508))))

(assert (=> b!4968534 (= res!2120835 (dynLambda!23169 lambda!247372 (h!63892 (t!368628 rulesArg!259))))))

(declare-fun b!4968535 () Bool)

(assert (=> b!4968535 (= e!3105508 (forall!13329 (t!368628 (t!368628 rulesArg!259)) lambda!247372))))

(assert (= (and d!1599218 (not res!2120834)) b!4968534))

(assert (= (and b!4968534 res!2120835) b!4968535))

(declare-fun b_lambda!196923 () Bool)

(assert (=> (not b_lambda!196923) (not b!4968534)))

(declare-fun m!5995294 () Bool)

(assert (=> b!4968534 m!5995294))

(declare-fun m!5995296 () Bool)

(assert (=> b!4968535 m!5995296))

(assert (=> b!4967835 d!1599218))

(declare-fun d!1599220 () Bool)

(declare-fun c!847764 () Bool)

(assert (=> d!1599220 (= c!847764 (is-Nil!57443 lt!2051466))))

(declare-fun e!3105511 () (Set C!27502))

(assert (=> d!1599220 (= (content!10184 lt!2051466) e!3105511)))

(declare-fun b!4968540 () Bool)

(assert (=> b!4968540 (= e!3105511 (as set.empty (Set C!27502)))))

(declare-fun b!4968541 () Bool)

(assert (=> b!4968541 (= e!3105511 (set.union (set.insert (h!63891 lt!2051466) (as set.empty (Set C!27502))) (content!10184 (t!368627 lt!2051466))))))

(assert (= (and d!1599220 c!847764) b!4968540))

(assert (= (and d!1599220 (not c!847764)) b!4968541))

(declare-fun m!5995298 () Bool)

(assert (=> b!4968541 m!5995298))

(declare-fun m!5995300 () Bool)

(assert (=> b!4968541 m!5995300))

(assert (=> d!1598934 d!1599220))

(declare-fun d!1599222 () Bool)

(declare-fun c!847765 () Bool)

(assert (=> d!1599222 (= c!847765 (is-Nil!57443 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))

(declare-fun e!3105512 () (Set C!27502))

(assert (=> d!1599222 (= (content!10184 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))) e!3105512)))

(declare-fun b!4968542 () Bool)

(assert (=> b!4968542 (= e!3105512 (as set.empty (Set C!27502)))))

(declare-fun b!4968543 () Bool)

(assert (=> b!4968543 (= e!3105512 (set.union (set.insert (h!63891 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))) (as set.empty (Set C!27502))) (content!10184 (t!368627 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))))

(assert (= (and d!1599222 c!847765) b!4968542))

(assert (= (and d!1599222 (not c!847765)) b!4968543))

(declare-fun m!5995302 () Bool)

(assert (=> b!4968543 m!5995302))

(declare-fun m!5995304 () Bool)

(assert (=> b!4968543 m!5995304))

(assert (=> d!1598934 d!1599222))

(declare-fun d!1599224 () Bool)

(declare-fun c!847766 () Bool)

(assert (=> d!1599224 (= c!847766 (is-Nil!57443 (_2!34385 (get!19940 lt!2051000))))))

(declare-fun e!3105513 () (Set C!27502))

(assert (=> d!1599224 (= (content!10184 (_2!34385 (get!19940 lt!2051000))) e!3105513)))

(declare-fun b!4968544 () Bool)

(assert (=> b!4968544 (= e!3105513 (as set.empty (Set C!27502)))))

(declare-fun b!4968545 () Bool)

(assert (=> b!4968545 (= e!3105513 (set.union (set.insert (h!63891 (_2!34385 (get!19940 lt!2051000))) (as set.empty (Set C!27502))) (content!10184 (t!368627 (_2!34385 (get!19940 lt!2051000))))))))

(assert (= (and d!1599224 c!847766) b!4968544))

(assert (= (and d!1599224 (not c!847766)) b!4968545))

(declare-fun m!5995306 () Bool)

(assert (=> b!4968545 m!5995306))

(declare-fun m!5995308 () Bool)

(assert (=> b!4968545 m!5995308))

(assert (=> d!1598934 d!1599224))

(declare-fun b!4968547 () Bool)

(declare-fun e!3105515 () List!57567)

(assert (=> b!4968547 (= e!3105515 (Cons!57443 (h!63891 (list!18367 (left!41900 (c!847515 input!1342)))) (++!12532 (t!368627 (list!18367 (left!41900 (c!847515 input!1342)))) (list!18367 (right!42230 (c!847515 input!1342))))))))

(declare-fun b!4968549 () Bool)

(declare-fun e!3105514 () Bool)

(declare-fun lt!2051683 () List!57567)

(assert (=> b!4968549 (= e!3105514 (or (not (= (list!18367 (right!42230 (c!847515 input!1342))) Nil!57443)) (= lt!2051683 (list!18367 (left!41900 (c!847515 input!1342))))))))

(declare-fun b!4968546 () Bool)

(assert (=> b!4968546 (= e!3105515 (list!18367 (right!42230 (c!847515 input!1342))))))

(declare-fun d!1599226 () Bool)

(assert (=> d!1599226 e!3105514))

(declare-fun res!2120836 () Bool)

(assert (=> d!1599226 (=> (not res!2120836) (not e!3105514))))

(assert (=> d!1599226 (= res!2120836 (= (content!10184 lt!2051683) (set.union (content!10184 (list!18367 (left!41900 (c!847515 input!1342)))) (content!10184 (list!18367 (right!42230 (c!847515 input!1342)))))))))

(assert (=> d!1599226 (= lt!2051683 e!3105515)))

(declare-fun c!847767 () Bool)

(assert (=> d!1599226 (= c!847767 (is-Nil!57443 (list!18367 (left!41900 (c!847515 input!1342)))))))

(assert (=> d!1599226 (= (++!12532 (list!18367 (left!41900 (c!847515 input!1342))) (list!18367 (right!42230 (c!847515 input!1342)))) lt!2051683)))

(declare-fun b!4968548 () Bool)

(declare-fun res!2120837 () Bool)

(assert (=> b!4968548 (=> (not res!2120837) (not e!3105514))))

(assert (=> b!4968548 (= res!2120837 (= (size!38072 lt!2051683) (+ (size!38072 (list!18367 (left!41900 (c!847515 input!1342)))) (size!38072 (list!18367 (right!42230 (c!847515 input!1342)))))))))

(assert (= (and d!1599226 c!847767) b!4968546))

(assert (= (and d!1599226 (not c!847767)) b!4968547))

(assert (= (and d!1599226 res!2120836) b!4968548))

(assert (= (and b!4968548 res!2120837) b!4968549))

(assert (=> b!4968547 m!5994260))

(declare-fun m!5995310 () Bool)

(assert (=> b!4968547 m!5995310))

(declare-fun m!5995312 () Bool)

(assert (=> d!1599226 m!5995312))

(assert (=> d!1599226 m!5994258))

(declare-fun m!5995314 () Bool)

(assert (=> d!1599226 m!5995314))

(assert (=> d!1599226 m!5994260))

(declare-fun m!5995316 () Bool)

(assert (=> d!1599226 m!5995316))

(declare-fun m!5995318 () Bool)

(assert (=> b!4968548 m!5995318))

(assert (=> b!4968548 m!5994258))

(declare-fun m!5995320 () Bool)

(assert (=> b!4968548 m!5995320))

(assert (=> b!4968548 m!5994260))

(declare-fun m!5995322 () Bool)

(assert (=> b!4968548 m!5995322))

(assert (=> b!4967931 d!1599226))

(declare-fun b!4968550 () Bool)

(declare-fun e!3105516 () List!57567)

(assert (=> b!4968550 (= e!3105516 Nil!57443)))

(declare-fun b!4968552 () Bool)

(declare-fun e!3105517 () List!57567)

(assert (=> b!4968552 (= e!3105517 (list!18369 (xs!18471 (left!41900 (c!847515 input!1342)))))))

(declare-fun b!4968553 () Bool)

(assert (=> b!4968553 (= e!3105517 (++!12532 (list!18367 (left!41900 (left!41900 (c!847515 input!1342)))) (list!18367 (right!42230 (left!41900 (c!847515 input!1342))))))))

(declare-fun b!4968551 () Bool)

(assert (=> b!4968551 (= e!3105516 e!3105517)))

(declare-fun c!847769 () Bool)

(assert (=> b!4968551 (= c!847769 (is-Leaf!25167 (left!41900 (c!847515 input!1342))))))

(declare-fun d!1599228 () Bool)

(declare-fun c!847768 () Bool)

(assert (=> d!1599228 (= c!847768 (is-Empty!15145 (left!41900 (c!847515 input!1342))))))

(assert (=> d!1599228 (= (list!18367 (left!41900 (c!847515 input!1342))) e!3105516)))

(assert (= (and d!1599228 c!847768) b!4968550))

(assert (= (and d!1599228 (not c!847768)) b!4968551))

(assert (= (and b!4968551 c!847769) b!4968552))

(assert (= (and b!4968551 (not c!847769)) b!4968553))

(assert (=> b!4968552 m!5995140))

(declare-fun m!5995324 () Bool)

(assert (=> b!4968553 m!5995324))

(declare-fun m!5995326 () Bool)

(assert (=> b!4968553 m!5995326))

(assert (=> b!4968553 m!5995324))

(assert (=> b!4968553 m!5995326))

(declare-fun m!5995328 () Bool)

(assert (=> b!4968553 m!5995328))

(assert (=> b!4967931 d!1599228))

(declare-fun b!4968554 () Bool)

(declare-fun e!3105518 () List!57567)

(assert (=> b!4968554 (= e!3105518 Nil!57443)))

(declare-fun b!4968556 () Bool)

(declare-fun e!3105519 () List!57567)

(assert (=> b!4968556 (= e!3105519 (list!18369 (xs!18471 (right!42230 (c!847515 input!1342)))))))

(declare-fun b!4968557 () Bool)

(assert (=> b!4968557 (= e!3105519 (++!12532 (list!18367 (left!41900 (right!42230 (c!847515 input!1342)))) (list!18367 (right!42230 (right!42230 (c!847515 input!1342))))))))

(declare-fun b!4968555 () Bool)

(assert (=> b!4968555 (= e!3105518 e!3105519)))

(declare-fun c!847771 () Bool)

(assert (=> b!4968555 (= c!847771 (is-Leaf!25167 (right!42230 (c!847515 input!1342))))))

(declare-fun d!1599230 () Bool)

(declare-fun c!847770 () Bool)

(assert (=> d!1599230 (= c!847770 (is-Empty!15145 (right!42230 (c!847515 input!1342))))))

(assert (=> d!1599230 (= (list!18367 (right!42230 (c!847515 input!1342))) e!3105518)))

(assert (= (and d!1599230 c!847770) b!4968554))

(assert (= (and d!1599230 (not c!847770)) b!4968555))

(assert (= (and b!4968555 c!847771) b!4968556))

(assert (= (and b!4968555 (not c!847771)) b!4968557))

(declare-fun m!5995330 () Bool)

(assert (=> b!4968556 m!5995330))

(declare-fun m!5995332 () Bool)

(assert (=> b!4968557 m!5995332))

(declare-fun m!5995334 () Bool)

(assert (=> b!4968557 m!5995334))

(assert (=> b!4968557 m!5995332))

(assert (=> b!4968557 m!5995334))

(declare-fun m!5995336 () Bool)

(assert (=> b!4968557 m!5995336))

(assert (=> b!4967931 d!1599230))

(declare-fun d!1599232 () Bool)

(assert (=> d!1599232 (= (inv!75082 (xs!18471 (left!41900 (c!847515 input!1342)))) (<= (size!38072 (innerList!15233 (xs!18471 (left!41900 (c!847515 input!1342))))) 2147483647))))

(declare-fun bs!1183264 () Bool)

(assert (= bs!1183264 d!1599232))

(declare-fun m!5995338 () Bool)

(assert (=> bs!1183264 m!5995338))

(assert (=> b!4968036 d!1599232))

(declare-fun b!4968568 () Bool)

(declare-fun e!3105526 () Bool)

(declare-fun inv!16 (TokenValue!8703) Bool)

(assert (=> b!4968568 (= e!3105526 (inv!16 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))))))

(declare-fun d!1599234 () Bool)

(declare-fun c!847776 () Bool)

(assert (=> d!1599234 (= c!847776 (is-IntegerValue!26109 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))))))

(assert (=> d!1599234 (= (inv!21 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))) e!3105526)))

(declare-fun b!4968569 () Bool)

(declare-fun e!3105527 () Bool)

(assert (=> b!4968569 (= e!3105526 e!3105527)))

(declare-fun c!847777 () Bool)

(assert (=> b!4968569 (= c!847777 (is-IntegerValue!26110 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))))))

(declare-fun b!4968570 () Bool)

(declare-fun res!2120840 () Bool)

(declare-fun e!3105528 () Bool)

(assert (=> b!4968570 (=> res!2120840 e!3105528)))

(assert (=> b!4968570 (= res!2120840 (not (is-IntegerValue!26111 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))))))))

(assert (=> b!4968570 (= e!3105527 e!3105528)))

(declare-fun b!4968571 () Bool)

(declare-fun inv!15 (TokenValue!8703) Bool)

(assert (=> b!4968571 (= e!3105528 (inv!15 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))))))

(declare-fun b!4968572 () Bool)

(declare-fun inv!17 (TokenValue!8703) Bool)

(assert (=> b!4968572 (= e!3105527 (inv!17 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))))))

(assert (= (and d!1599234 c!847776) b!4968568))

(assert (= (and d!1599234 (not c!847776)) b!4968569))

(assert (= (and b!4968569 c!847777) b!4968572))

(assert (= (and b!4968569 (not c!847777)) b!4968570))

(assert (= (and b!4968570 (not res!2120840)) b!4968571))

(declare-fun m!5995340 () Bool)

(assert (=> b!4968568 m!5995340))

(declare-fun m!5995342 () Bool)

(assert (=> b!4968571 m!5995342))

(declare-fun m!5995344 () Bool)

(assert (=> b!4968572 m!5995344))

(assert (=> tb!260619 d!1599234))

(assert (=> bm!346393 d!1599192))

(declare-fun d!1599236 () Bool)

(assert (=> d!1599236 (dynLambda!23168 lambda!247368 (_1!34389 lt!2051115))))

(assert (=> d!1599236 true))

(declare-fun _$1!11237 () Unit!148361)

(assert (=> d!1599236 (= (choose!36672 lambda!247368 (_1!34389 lt!2051115)) _$1!11237)))

(declare-fun b_lambda!196925 () Bool)

(assert (=> (not b_lambda!196925) (not d!1599236)))

(declare-fun bs!1183265 () Bool)

(assert (= bs!1183265 d!1599236))

(assert (=> bs!1183265 m!5994066))

(assert (=> d!1598870 d!1599236))

(declare-fun d!1599238 () Bool)

(assert (=> d!1599238 (= (Forall!1762 lambda!247368) (choose!36676 lambda!247368))))

(declare-fun bs!1183266 () Bool)

(assert (= bs!1183266 d!1599238))

(declare-fun m!5995346 () Bool)

(assert (=> bs!1183266 m!5995346))

(assert (=> d!1598870 d!1599238))

(declare-fun b!4968573 () Bool)

(declare-fun e!3105530 () Bool)

(declare-fun e!3105529 () Bool)

(assert (=> b!4968573 (= e!3105530 e!3105529)))

(declare-fun res!2120842 () Bool)

(assert (=> b!4968573 (=> (not res!2120842) (not e!3105529))))

(assert (=> b!4968573 (= res!2120842 (<= (- 1) (- (height!2013 (left!41900 (left!41900 (c!847515 input!1342)))) (height!2013 (right!42230 (left!41900 (c!847515 input!1342)))))))))

(declare-fun d!1599240 () Bool)

(declare-fun res!2120843 () Bool)

(assert (=> d!1599240 (=> res!2120843 e!3105530)))

(assert (=> d!1599240 (= res!2120843 (not (is-Node!15145 (left!41900 (c!847515 input!1342)))))))

(assert (=> d!1599240 (= (isBalanced!4202 (left!41900 (c!847515 input!1342))) e!3105530)))

(declare-fun b!4968574 () Bool)

(declare-fun res!2120845 () Bool)

(assert (=> b!4968574 (=> (not res!2120845) (not e!3105529))))

(assert (=> b!4968574 (= res!2120845 (isBalanced!4202 (left!41900 (left!41900 (c!847515 input!1342)))))))

(declare-fun b!4968575 () Bool)

(declare-fun res!2120846 () Bool)

(assert (=> b!4968575 (=> (not res!2120846) (not e!3105529))))

(assert (=> b!4968575 (= res!2120846 (<= (- (height!2013 (left!41900 (left!41900 (c!847515 input!1342)))) (height!2013 (right!42230 (left!41900 (c!847515 input!1342))))) 1))))

(declare-fun b!4968576 () Bool)

(declare-fun res!2120844 () Bool)

(assert (=> b!4968576 (=> (not res!2120844) (not e!3105529))))

(assert (=> b!4968576 (= res!2120844 (not (isEmpty!30943 (left!41900 (left!41900 (c!847515 input!1342))))))))

(declare-fun b!4968577 () Bool)

(declare-fun res!2120841 () Bool)

(assert (=> b!4968577 (=> (not res!2120841) (not e!3105529))))

(assert (=> b!4968577 (= res!2120841 (isBalanced!4202 (right!42230 (left!41900 (c!847515 input!1342)))))))

(declare-fun b!4968578 () Bool)

(assert (=> b!4968578 (= e!3105529 (not (isEmpty!30943 (right!42230 (left!41900 (c!847515 input!1342))))))))

(assert (= (and d!1599240 (not res!2120843)) b!4968573))

(assert (= (and b!4968573 res!2120842) b!4968575))

(assert (= (and b!4968575 res!2120846) b!4968574))

(assert (= (and b!4968574 res!2120845) b!4968577))

(assert (= (and b!4968577 res!2120841) b!4968576))

(assert (= (and b!4968576 res!2120844) b!4968578))

(declare-fun m!5995348 () Bool)

(assert (=> b!4968573 m!5995348))

(declare-fun m!5995350 () Bool)

(assert (=> b!4968573 m!5995350))

(declare-fun m!5995352 () Bool)

(assert (=> b!4968578 m!5995352))

(assert (=> b!4968575 m!5995348))

(assert (=> b!4968575 m!5995350))

(declare-fun m!5995354 () Bool)

(assert (=> b!4968576 m!5995354))

(declare-fun m!5995356 () Bool)

(assert (=> b!4968574 m!5995356))

(declare-fun m!5995358 () Bool)

(assert (=> b!4968577 m!5995358))

(assert (=> b!4967547 d!1599240))

(declare-fun bs!1183267 () Bool)

(declare-fun b!4968581 () Bool)

(assert (= bs!1183267 (and b!4968581 b!4967347)))

(declare-fun lambda!247395 () Int)

(assert (=> bs!1183267 (= (and (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (= lambda!247395 lambda!247368))))

(declare-fun bs!1183268 () Bool)

(assert (= bs!1183268 (and b!4968581 b!4967852)))

(assert (=> bs!1183268 (= (and (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))))) (= lambda!247395 lambda!247380))))

(declare-fun bs!1183269 () Bool)

(assert (= bs!1183269 (and b!4968581 d!1598926)))

(assert (=> bs!1183269 (= (and (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (= lambda!247395 lambda!247383))))

(declare-fun b!4968586 () Bool)

(declare-fun e!3105537 () Bool)

(assert (=> b!4968586 (= e!3105537 true)))

(declare-fun b!4968585 () Bool)

(declare-fun e!3105536 () Bool)

(assert (=> b!4968585 (= e!3105536 e!3105537)))

(assert (=> b!4968581 e!3105536))

(assert (= b!4968585 b!4968586))

(assert (= b!4968581 b!4968585))

(assert (=> b!4968586 (< (dynLambda!23159 order!26203 (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259)))))) (dynLambda!23160 order!26205 lambda!247395))))

(assert (=> b!4968586 (< (dynLambda!23161 order!26207 (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259)))))) (dynLambda!23160 order!26205 lambda!247395))))

(declare-fun d!1599242 () Bool)

(declare-fun e!3105531 () Bool)

(assert (=> d!1599242 e!3105531))

(declare-fun res!2120848 () Bool)

(assert (=> d!1599242 (=> (not res!2120848) (not e!3105531))))

(declare-fun lt!2051687 () Option!14450)

(assert (=> d!1599242 (= res!2120848 (= (isDefined!11363 lt!2051687) (isDefined!11362 (maxPrefixOneRule!3629 thiss!15247 (h!63892 (t!368628 (t!368628 rulesArg!259))) (list!18365 input!1342)))))))

(declare-fun e!3105535 () Option!14450)

(assert (=> d!1599242 (= lt!2051687 e!3105535)))

(declare-fun c!847778 () Bool)

(declare-fun lt!2051684 () tuple2!62172)

(assert (=> d!1599242 (= c!847778 (isEmpty!30937 (_1!34389 lt!2051684)))))

(assert (=> d!1599242 (= lt!2051684 (findLongestMatchWithZipperSequenceV2!164 (regex!8393 (h!63892 (t!368628 (t!368628 rulesArg!259)))) input!1342 totalInput!464))))

(assert (=> d!1599242 (ruleValid!3802 thiss!15247 (h!63892 (t!368628 (t!368628 rulesArg!259))))))

(assert (=> d!1599242 (= (maxPrefixOneRuleZipperSequenceV2!361 thiss!15247 (h!63892 (t!368628 (t!368628 rulesArg!259))) input!1342 totalInput!464) lt!2051687)))

(declare-fun b!4968579 () Bool)

(assert (=> b!4968579 (= e!3105535 None!14449)))

(declare-fun b!4968580 () Bool)

(declare-fun e!3105534 () Bool)

(assert (=> b!4968580 (= e!3105531 e!3105534)))

(declare-fun res!2120847 () Bool)

(assert (=> b!4968580 (=> res!2120847 e!3105534)))

(assert (=> b!4968580 (= res!2120847 (not (isDefined!11363 lt!2051687)))))

(assert (=> b!4968581 (= e!3105535 (Some!14449 (tuple2!62167 (Token!15283 (apply!13904 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259)))) (_1!34389 lt!2051684)) (h!63892 (t!368628 (t!368628 rulesArg!259))) (size!38073 (_1!34389 lt!2051684)) (list!18365 (_1!34389 lt!2051684))) (_2!34389 lt!2051684))))))

(declare-fun lt!2051689 () List!57567)

(assert (=> b!4968581 (= lt!2051689 (list!18365 input!1342))))

(declare-fun lt!2051688 () Unit!148361)

(assert (=> b!4968581 (= lt!2051688 (longestMatchIsAcceptedByMatchOrIsEmpty!1816 (regex!8393 (h!63892 (t!368628 (t!368628 rulesArg!259)))) lt!2051689))))

(declare-fun res!2120850 () Bool)

(assert (=> b!4968581 (= res!2120850 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 (t!368628 rulesArg!259)))) Nil!57443 (size!38072 Nil!57443) lt!2051689 lt!2051689 (size!38072 lt!2051689)))))))

(declare-fun e!3105532 () Bool)

(assert (=> b!4968581 (=> res!2120850 e!3105532)))

(assert (=> b!4968581 e!3105532))

(declare-fun lt!2051693 () Unit!148361)

(assert (=> b!4968581 (= lt!2051693 lt!2051688)))

(declare-fun lt!2051690 () Unit!148361)

(assert (=> b!4968581 (= lt!2051690 (lemmaInv!1334 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))))))

(declare-fun lt!2051685 () Unit!148361)

(assert (=> b!4968581 (= lt!2051685 (ForallOf!1227 lambda!247395 (_1!34389 lt!2051684)))))

(declare-fun lt!2051691 () Unit!148361)

(assert (=> b!4968581 (= lt!2051691 (ForallOf!1227 lambda!247395 (seqFromList!6036 (list!18365 (_1!34389 lt!2051684)))))))

(declare-fun lt!2051686 () Option!14450)

(assert (=> b!4968581 (= lt!2051686 (Some!14449 (tuple2!62167 (Token!15283 (apply!13904 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259)))) (_1!34389 lt!2051684)) (h!63892 (t!368628 (t!368628 rulesArg!259))) (size!38073 (_1!34389 lt!2051684)) (list!18365 (_1!34389 lt!2051684))) (_2!34389 lt!2051684))))))

(declare-fun lt!2051692 () Unit!148361)

(assert (=> b!4968581 (= lt!2051692 (lemmaEqSameImage!1168 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259)))) (_1!34389 lt!2051684) (seqFromList!6036 (list!18365 (_1!34389 lt!2051684)))))))

(declare-fun b!4968582 () Bool)

(assert (=> b!4968582 (= e!3105532 (matchR!6636 (regex!8393 (h!63892 (t!368628 (t!368628 rulesArg!259)))) (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 (t!368628 rulesArg!259)))) Nil!57443 (size!38072 Nil!57443) lt!2051689 lt!2051689 (size!38072 lt!2051689)))))))

(declare-fun b!4968583 () Bool)

(declare-fun e!3105533 () Bool)

(assert (=> b!4968583 (= e!3105534 e!3105533)))

(declare-fun res!2120849 () Bool)

(assert (=> b!4968583 (=> (not res!2120849) (not e!3105533))))

(assert (=> b!4968583 (= res!2120849 (= (_1!34386 (get!19941 lt!2051687)) (_1!34385 (get!19940 (maxPrefixOneRule!3629 thiss!15247 (h!63892 (t!368628 (t!368628 rulesArg!259))) (list!18365 input!1342))))))))

(declare-fun b!4968584 () Bool)

(assert (=> b!4968584 (= e!3105533 (= (list!18365 (_2!34386 (get!19941 lt!2051687))) (_2!34385 (get!19940 (maxPrefixOneRule!3629 thiss!15247 (h!63892 (t!368628 (t!368628 rulesArg!259))) (list!18365 input!1342))))))))

(assert (= (and d!1599242 c!847778) b!4968579))

(assert (= (and d!1599242 (not c!847778)) b!4968581))

(assert (= (and b!4968581 (not res!2120850)) b!4968582))

(assert (= (and d!1599242 res!2120848) b!4968580))

(assert (= (and b!4968580 (not res!2120847)) b!4968583))

(assert (= (and b!4968583 res!2120849) b!4968584))

(declare-fun m!5995360 () Bool)

(assert (=> b!4968583 m!5995360))

(assert (=> b!4968583 m!5993376))

(assert (=> b!4968583 m!5993376))

(assert (=> b!4968583 m!5995086))

(assert (=> b!4968583 m!5995086))

(declare-fun m!5995362 () Bool)

(assert (=> b!4968583 m!5995362))

(assert (=> b!4968581 m!5993376))

(declare-fun m!5995364 () Bool)

(assert (=> b!4968581 m!5995364))

(declare-fun m!5995366 () Bool)

(assert (=> b!4968581 m!5995366))

(declare-fun m!5995368 () Bool)

(assert (=> b!4968581 m!5995368))

(declare-fun m!5995370 () Bool)

(assert (=> b!4968581 m!5995370))

(assert (=> b!4968581 m!5993574))

(assert (=> b!4968581 m!5995368))

(declare-fun m!5995372 () Bool)

(assert (=> b!4968581 m!5995372))

(declare-fun m!5995374 () Bool)

(assert (=> b!4968581 m!5995374))

(declare-fun m!5995376 () Bool)

(assert (=> b!4968581 m!5995376))

(declare-fun m!5995378 () Bool)

(assert (=> b!4968581 m!5995378))

(declare-fun m!5995380 () Bool)

(assert (=> b!4968581 m!5995380))

(declare-fun m!5995382 () Bool)

(assert (=> b!4968581 m!5995382))

(assert (=> b!4968581 m!5995370))

(assert (=> b!4968581 m!5995378))

(assert (=> b!4968581 m!5995378))

(declare-fun m!5995384 () Bool)

(assert (=> b!4968581 m!5995384))

(assert (=> b!4968581 m!5993574))

(declare-fun m!5995386 () Bool)

(assert (=> b!4968581 m!5995386))

(assert (=> b!4968584 m!5995360))

(assert (=> b!4968584 m!5993376))

(declare-fun m!5995388 () Bool)

(assert (=> b!4968584 m!5995388))

(assert (=> b!4968584 m!5993376))

(assert (=> b!4968584 m!5995086))

(assert (=> b!4968584 m!5995086))

(assert (=> b!4968584 m!5995362))

(assert (=> b!4968582 m!5993574))

(assert (=> b!4968582 m!5995368))

(assert (=> b!4968582 m!5993574))

(assert (=> b!4968582 m!5995368))

(assert (=> b!4968582 m!5995372))

(declare-fun m!5995390 () Bool)

(assert (=> b!4968582 m!5995390))

(declare-fun m!5995392 () Bool)

(assert (=> b!4968580 m!5995392))

(assert (=> d!1599242 m!5993376))

(assert (=> d!1599242 m!5995392))

(declare-fun m!5995394 () Bool)

(assert (=> d!1599242 m!5995394))

(assert (=> d!1599242 m!5995086))

(declare-fun m!5995396 () Bool)

(assert (=> d!1599242 m!5995396))

(assert (=> d!1599242 m!5993376))

(assert (=> d!1599242 m!5995086))

(declare-fun m!5995398 () Bool)

(assert (=> d!1599242 m!5995398))

(declare-fun m!5995400 () Bool)

(assert (=> d!1599242 m!5995400))

(assert (=> bm!346446 d!1599242))

(declare-fun d!1599244 () Bool)

(declare-fun lt!2051694 () Int)

(assert (=> d!1599244 (>= lt!2051694 0)))

(declare-fun e!3105538 () Int)

(assert (=> d!1599244 (= lt!2051694 e!3105538)))

(declare-fun c!847779 () Bool)

(assert (=> d!1599244 (= c!847779 (is-Nil!57443 (_2!34385 (get!19940 lt!2051463))))))

(assert (=> d!1599244 (= (size!38072 (_2!34385 (get!19940 lt!2051463))) lt!2051694)))

(declare-fun b!4968587 () Bool)

(assert (=> b!4968587 (= e!3105538 0)))

(declare-fun b!4968588 () Bool)

(assert (=> b!4968588 (= e!3105538 (+ 1 (size!38072 (t!368627 (_2!34385 (get!19940 lt!2051463))))))))

(assert (= (and d!1599244 c!847779) b!4968587))

(assert (= (and d!1599244 (not c!847779)) b!4968588))

(declare-fun m!5995402 () Bool)

(assert (=> b!4968588 m!5995402))

(assert (=> b!4967962 d!1599244))

(declare-fun d!1599246 () Bool)

(assert (=> d!1599246 (= (get!19940 lt!2051463) (v!50437 lt!2051463))))

(assert (=> b!4967962 d!1599246))

(assert (=> b!4967962 d!1598808))

(declare-fun d!1599248 () Bool)

(assert (=> d!1599248 (= (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))) (h!63891 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))))))

(assert (=> b!4967950 d!1599248))

(declare-fun d!1599250 () Bool)

(declare-fun lt!2051695 () Bool)

(assert (=> d!1599250 (= lt!2051695 (isEmpty!30938 (list!18367 (right!42230 (c!847515 totalInput!464)))))))

(assert (=> d!1599250 (= lt!2051695 (= (size!38076 (right!42230 (c!847515 totalInput!464))) 0))))

(assert (=> d!1599250 (= (isEmpty!30943 (right!42230 (c!847515 totalInput!464))) lt!2051695)))

(declare-fun bs!1183270 () Bool)

(assert (= bs!1183270 d!1599250))

(assert (=> bs!1183270 m!5993904))

(assert (=> bs!1183270 m!5993904))

(declare-fun m!5995404 () Bool)

(assert (=> bs!1183270 m!5995404))

(assert (=> bs!1183270 m!5993884))

(assert (=> b!4967565 d!1599250))

(declare-fun d!1599252 () Bool)

(declare-fun c!847780 () Bool)

(assert (=> d!1599252 (= c!847780 (is-Node!15145 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115))))))))

(declare-fun e!3105539 () Bool)

(assert (=> d!1599252 (= (inv!75075 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115))))) e!3105539)))

(declare-fun b!4968589 () Bool)

(assert (=> b!4968589 (= e!3105539 (inv!75080 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115))))))))

(declare-fun b!4968590 () Bool)

(declare-fun e!3105540 () Bool)

(assert (=> b!4968590 (= e!3105539 e!3105540)))

(declare-fun res!2120851 () Bool)

(assert (=> b!4968590 (= res!2120851 (not (is-Leaf!25167 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115)))))))))

(assert (=> b!4968590 (=> res!2120851 e!3105540)))

(declare-fun b!4968591 () Bool)

(assert (=> b!4968591 (= e!3105540 (inv!75081 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115))))))))

(assert (= (and d!1599252 c!847780) b!4968589))

(assert (= (and d!1599252 (not c!847780)) b!4968590))

(assert (= (and b!4968590 (not res!2120851)) b!4968591))

(declare-fun m!5995406 () Bool)

(assert (=> b!4968589 m!5995406))

(declare-fun m!5995408 () Bool)

(assert (=> b!4968591 m!5995408))

(assert (=> b!4968042 d!1599252))

(assert (=> b!4967970 d!1599246))

(declare-fun d!1599254 () Bool)

(declare-fun lt!2051696 () Int)

(assert (=> d!1599254 (>= lt!2051696 0)))

(declare-fun e!3105541 () Int)

(assert (=> d!1599254 (= lt!2051696 e!3105541)))

(declare-fun c!847781 () Bool)

(assert (=> d!1599254 (= c!847781 (is-Nil!57443 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051463)))))))

(assert (=> d!1599254 (= (size!38072 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051463)))) lt!2051696)))

(declare-fun b!4968592 () Bool)

(assert (=> b!4968592 (= e!3105541 0)))

(declare-fun b!4968593 () Bool)

(assert (=> b!4968593 (= e!3105541 (+ 1 (size!38072 (t!368627 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051463)))))))))

(assert (= (and d!1599254 c!847781) b!4968592))

(assert (= (and d!1599254 (not c!847781)) b!4968593))

(declare-fun m!5995410 () Bool)

(assert (=> b!4968593 m!5995410))

(assert (=> b!4967970 d!1599254))

(assert (=> b!4967957 d!1599248))

(declare-fun d!1599256 () Bool)

(assert (=> d!1599256 (= (isEmpty!30936 lt!2051118) (not (is-Some!14449 lt!2051118)))))

(assert (=> d!1598802 d!1599256))

(declare-fun d!1599258 () Bool)

(assert (=> d!1599258 (= (list!18365 (_2!34386 (get!19941 lt!2051422))) (list!18367 (c!847515 (_2!34386 (get!19941 lt!2051422)))))))

(declare-fun bs!1183271 () Bool)

(assert (= bs!1183271 d!1599258))

(declare-fun m!5995412 () Bool)

(assert (=> bs!1183271 m!5995412))

(assert (=> b!4967855 d!1599258))

(declare-fun d!1599260 () Bool)

(assert (=> d!1599260 (= (get!19941 lt!2051422) (v!50438 lt!2051422))))

(assert (=> b!4967855 d!1599260))

(declare-fun d!1599262 () Bool)

(assert (=> d!1599262 (= (get!19940 (maxPrefixOneRule!3629 thiss!15247 (h!63892 (t!368628 rulesArg!259)) (list!18365 input!1342))) (v!50437 (maxPrefixOneRule!3629 thiss!15247 (h!63892 (t!368628 rulesArg!259)) (list!18365 input!1342))))))

(assert (=> b!4967855 d!1599262))

(assert (=> b!4967855 d!1598680))

(assert (=> b!4967855 d!1599212))

(assert (=> d!1598786 d!1598774))

(declare-fun d!1599264 () Bool)

(declare-fun nullableFct!1253 (Regex!13626) Bool)

(assert (=> d!1599264 (= (nullable!4620 (regex!8393 (h!63892 rulesArg!259))) (nullableFct!1253 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun bs!1183272 () Bool)

(assert (= bs!1183272 d!1599264))

(declare-fun m!5995414 () Bool)

(assert (=> bs!1183272 m!5995414))

(assert (=> bm!346427 d!1599264))

(declare-fun d!1599266 () Bool)

(assert (not d!1599266))

(assert (=> b!4967703 d!1599266))

(declare-fun d!1599268 () Bool)

(assert (=> d!1599268 (= (isEmpty!30935 lt!2051467) (not (is-Some!14448 lt!2051467)))))

(assert (=> d!1598938 d!1599268))

(assert (=> d!1598938 d!1599106))

(assert (=> d!1598938 d!1599108))

(assert (=> d!1598938 d!1598832))

(declare-fun d!1599270 () Bool)

(declare-fun c!847782 () Bool)

(assert (=> d!1599270 (= c!847782 (is-Node!15145 (left!41900 (left!41900 (c!847515 input!1342)))))))

(declare-fun e!3105542 () Bool)

(assert (=> d!1599270 (= (inv!75075 (left!41900 (left!41900 (c!847515 input!1342)))) e!3105542)))

(declare-fun b!4968594 () Bool)

(assert (=> b!4968594 (= e!3105542 (inv!75080 (left!41900 (left!41900 (c!847515 input!1342)))))))

(declare-fun b!4968595 () Bool)

(declare-fun e!3105543 () Bool)

(assert (=> b!4968595 (= e!3105542 e!3105543)))

(declare-fun res!2120852 () Bool)

(assert (=> b!4968595 (= res!2120852 (not (is-Leaf!25167 (left!41900 (left!41900 (c!847515 input!1342))))))))

(assert (=> b!4968595 (=> res!2120852 e!3105543)))

(declare-fun b!4968596 () Bool)

(assert (=> b!4968596 (= e!3105543 (inv!75081 (left!41900 (left!41900 (c!847515 input!1342)))))))

(assert (= (and d!1599270 c!847782) b!4968594))

(assert (= (and d!1599270 (not c!847782)) b!4968595))

(assert (= (and b!4968595 (not res!2120852)) b!4968596))

(declare-fun m!5995416 () Bool)

(assert (=> b!4968594 m!5995416))

(declare-fun m!5995418 () Bool)

(assert (=> b!4968596 m!5995418))

(assert (=> b!4968035 d!1599270))

(declare-fun d!1599272 () Bool)

(declare-fun c!847783 () Bool)

(assert (=> d!1599272 (= c!847783 (is-Node!15145 (right!42230 (left!41900 (c!847515 input!1342)))))))

(declare-fun e!3105544 () Bool)

(assert (=> d!1599272 (= (inv!75075 (right!42230 (left!41900 (c!847515 input!1342)))) e!3105544)))

(declare-fun b!4968597 () Bool)

(assert (=> b!4968597 (= e!3105544 (inv!75080 (right!42230 (left!41900 (c!847515 input!1342)))))))

(declare-fun b!4968598 () Bool)

(declare-fun e!3105545 () Bool)

(assert (=> b!4968598 (= e!3105544 e!3105545)))

(declare-fun res!2120853 () Bool)

(assert (=> b!4968598 (= res!2120853 (not (is-Leaf!25167 (right!42230 (left!41900 (c!847515 input!1342))))))))

(assert (=> b!4968598 (=> res!2120853 e!3105545)))

(declare-fun b!4968599 () Bool)

(assert (=> b!4968599 (= e!3105545 (inv!75081 (right!42230 (left!41900 (c!847515 input!1342)))))))

(assert (= (and d!1599272 c!847783) b!4968597))

(assert (= (and d!1599272 (not c!847783)) b!4968598))

(assert (= (and b!4968598 (not res!2120853)) b!4968599))

(declare-fun m!5995420 () Bool)

(assert (=> b!4968597 m!5995420))

(declare-fun m!5995422 () Bool)

(assert (=> b!4968599 m!5995422))

(assert (=> b!4968035 d!1599272))

(declare-fun d!1599274 () Bool)

(declare-fun lt!2051697 () Bool)

(assert (=> d!1599274 (= lt!2051697 (set.member (rule!11637 (_1!34385 (get!19940 lt!2051000))) (content!10183 (t!368628 rulesArg!259))))))

(declare-fun e!3105547 () Bool)

(assert (=> d!1599274 (= lt!2051697 e!3105547)))

(declare-fun res!2120855 () Bool)

(assert (=> d!1599274 (=> (not res!2120855) (not e!3105547))))

(assert (=> d!1599274 (= res!2120855 (is-Cons!57444 (t!368628 rulesArg!259)))))

(assert (=> d!1599274 (= (contains!19538 (t!368628 rulesArg!259) (rule!11637 (_1!34385 (get!19940 lt!2051000)))) lt!2051697)))

(declare-fun b!4968600 () Bool)

(declare-fun e!3105546 () Bool)

(assert (=> b!4968600 (= e!3105547 e!3105546)))

(declare-fun res!2120854 () Bool)

(assert (=> b!4968600 (=> res!2120854 e!3105546)))

(assert (=> b!4968600 (= res!2120854 (= (h!63892 (t!368628 rulesArg!259)) (rule!11637 (_1!34385 (get!19940 lt!2051000)))))))

(declare-fun b!4968601 () Bool)

(assert (=> b!4968601 (= e!3105546 (contains!19538 (t!368628 (t!368628 rulesArg!259)) (rule!11637 (_1!34385 (get!19940 lt!2051000)))))))

(assert (= (and d!1599274 res!2120855) b!4968600))

(assert (= (and b!4968600 (not res!2120854)) b!4968601))

(assert (=> d!1599274 m!5994994))

(declare-fun m!5995424 () Bool)

(assert (=> d!1599274 m!5995424))

(declare-fun m!5995426 () Bool)

(assert (=> b!4968601 m!5995426))

(assert (=> b!4967627 d!1599274))

(declare-fun d!1599276 () Bool)

(declare-fun lt!2051698 () Int)

(assert (=> d!1599276 (>= lt!2051698 0)))

(declare-fun e!3105548 () Int)

(assert (=> d!1599276 (= lt!2051698 e!3105548)))

(declare-fun c!847784 () Bool)

(assert (=> d!1599276 (= c!847784 (is-Nil!57443 lt!2051466))))

(assert (=> d!1599276 (= (size!38072 lt!2051466) lt!2051698)))

(declare-fun b!4968602 () Bool)

(assert (=> b!4968602 (= e!3105548 0)))

(declare-fun b!4968603 () Bool)

(assert (=> b!4968603 (= e!3105548 (+ 1 (size!38072 (t!368627 lt!2051466))))))

(assert (= (and d!1599276 c!847784) b!4968602))

(assert (= (and d!1599276 (not c!847784)) b!4968603))

(declare-fun m!5995428 () Bool)

(assert (=> b!4968603 m!5995428))

(assert (=> b!4967981 d!1599276))

(declare-fun d!1599278 () Bool)

(declare-fun lt!2051699 () Int)

(assert (=> d!1599278 (>= lt!2051699 0)))

(declare-fun e!3105549 () Int)

(assert (=> d!1599278 (= lt!2051699 e!3105549)))

(declare-fun c!847785 () Bool)

(assert (=> d!1599278 (= c!847785 (is-Nil!57443 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))

(assert (=> d!1599278 (= (size!38072 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))) lt!2051699)))

(declare-fun b!4968604 () Bool)

(assert (=> b!4968604 (= e!3105549 0)))

(declare-fun b!4968605 () Bool)

(assert (=> b!4968605 (= e!3105549 (+ 1 (size!38072 (t!368627 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))))

(assert (= (and d!1599278 c!847785) b!4968604))

(assert (= (and d!1599278 (not c!847785)) b!4968605))

(declare-fun m!5995430 () Bool)

(assert (=> b!4968605 m!5995430))

(assert (=> b!4967981 d!1599278))

(assert (=> b!4967981 d!1598872))

(declare-fun d!1599280 () Bool)

(assert (=> d!1599280 (= (list!18369 (xs!18471 (c!847515 (_2!34386 lt!2050942)))) (innerList!15233 (xs!18471 (c!847515 (_2!34386 lt!2050942)))))))

(assert (=> b!4967532 d!1599280))

(declare-fun d!1599282 () Bool)

(declare-fun c!847786 () Bool)

(assert (=> d!1599282 (= c!847786 (is-Node!15145 (left!41900 (left!41900 (c!847515 totalInput!464)))))))

(declare-fun e!3105550 () Bool)

(assert (=> d!1599282 (= (inv!75075 (left!41900 (left!41900 (c!847515 totalInput!464)))) e!3105550)))

(declare-fun b!4968606 () Bool)

(assert (=> b!4968606 (= e!3105550 (inv!75080 (left!41900 (left!41900 (c!847515 totalInput!464)))))))

(declare-fun b!4968607 () Bool)

(declare-fun e!3105551 () Bool)

(assert (=> b!4968607 (= e!3105550 e!3105551)))

(declare-fun res!2120856 () Bool)

(assert (=> b!4968607 (= res!2120856 (not (is-Leaf!25167 (left!41900 (left!41900 (c!847515 totalInput!464))))))))

(assert (=> b!4968607 (=> res!2120856 e!3105551)))

(declare-fun b!4968608 () Bool)

(assert (=> b!4968608 (= e!3105551 (inv!75081 (left!41900 (left!41900 (c!847515 totalInput!464)))))))

(assert (= (and d!1599282 c!847786) b!4968606))

(assert (= (and d!1599282 (not c!847786)) b!4968607))

(assert (= (and b!4968607 (not res!2120856)) b!4968608))

(declare-fun m!5995432 () Bool)

(assert (=> b!4968606 m!5995432))

(declare-fun m!5995434 () Bool)

(assert (=> b!4968608 m!5995434))

(assert (=> b!4968014 d!1599282))

(declare-fun d!1599284 () Bool)

(declare-fun c!847787 () Bool)

(assert (=> d!1599284 (= c!847787 (is-Node!15145 (right!42230 (left!41900 (c!847515 totalInput!464)))))))

(declare-fun e!3105552 () Bool)

(assert (=> d!1599284 (= (inv!75075 (right!42230 (left!41900 (c!847515 totalInput!464)))) e!3105552)))

(declare-fun b!4968609 () Bool)

(assert (=> b!4968609 (= e!3105552 (inv!75080 (right!42230 (left!41900 (c!847515 totalInput!464)))))))

(declare-fun b!4968610 () Bool)

(declare-fun e!3105553 () Bool)

(assert (=> b!4968610 (= e!3105552 e!3105553)))

(declare-fun res!2120857 () Bool)

(assert (=> b!4968610 (= res!2120857 (not (is-Leaf!25167 (right!42230 (left!41900 (c!847515 totalInput!464))))))))

(assert (=> b!4968610 (=> res!2120857 e!3105553)))

(declare-fun b!4968611 () Bool)

(assert (=> b!4968611 (= e!3105553 (inv!75081 (right!42230 (left!41900 (c!847515 totalInput!464)))))))

(assert (= (and d!1599284 c!847787) b!4968609))

(assert (= (and d!1599284 (not c!847787)) b!4968610))

(assert (= (and b!4968610 (not res!2120857)) b!4968611))

(declare-fun m!5995436 () Bool)

(assert (=> b!4968609 m!5995436))

(declare-fun m!5995438 () Bool)

(assert (=> b!4968611 m!5995438))

(assert (=> b!4968014 d!1599284))

(declare-fun d!1599286 () Bool)

(assert (=> d!1599286 (= (isDefined!11362 lt!2051453) (not (isEmpty!30935 lt!2051453)))))

(declare-fun bs!1183273 () Bool)

(assert (= bs!1183273 d!1599286))

(assert (=> bs!1183273 m!5994292))

(assert (=> b!4967937 d!1599286))

(declare-fun d!1599288 () Bool)

(assert (=> d!1599288 (= (isEmpty!30935 (maxPrefixZipper!786 thiss!15247 (t!368628 rulesArg!259) (list!18365 input!1342))) (not (is-Some!14448 (maxPrefixZipper!786 thiss!15247 (t!368628 rulesArg!259) (list!18365 input!1342)))))))

(assert (=> d!1598834 d!1599288))

(declare-fun bs!1183274 () Bool)

(declare-fun d!1599290 () Bool)

(assert (= bs!1183274 (and d!1599290 d!1598730)))

(declare-fun lambda!247396 () Int)

(assert (=> bs!1183274 (= lambda!247396 lambda!247372)))

(declare-fun bs!1183275 () Bool)

(assert (= bs!1183275 (and d!1599290 d!1598832)))

(assert (=> bs!1183275 (= lambda!247396 lambda!247376)))

(assert (=> d!1599290 true))

(declare-fun lt!2051700 () Bool)

(assert (=> d!1599290 (= lt!2051700 (forall!13329 (t!368628 (t!368628 rulesArg!259)) lambda!247396))))

(declare-fun e!3105555 () Bool)

(assert (=> d!1599290 (= lt!2051700 e!3105555)))

(declare-fun res!2120859 () Bool)

(assert (=> d!1599290 (=> res!2120859 e!3105555)))

(assert (=> d!1599290 (= res!2120859 (not (is-Cons!57444 (t!368628 (t!368628 rulesArg!259)))))))

(assert (=> d!1599290 (= (rulesValidInductive!3296 thiss!15247 (t!368628 (t!368628 rulesArg!259))) lt!2051700)))

(declare-fun b!4968612 () Bool)

(declare-fun e!3105554 () Bool)

(assert (=> b!4968612 (= e!3105555 e!3105554)))

(declare-fun res!2120858 () Bool)

(assert (=> b!4968612 (=> (not res!2120858) (not e!3105554))))

(assert (=> b!4968612 (= res!2120858 (ruleValid!3802 thiss!15247 (h!63892 (t!368628 (t!368628 rulesArg!259)))))))

(declare-fun b!4968613 () Bool)

(assert (=> b!4968613 (= e!3105554 (rulesValidInductive!3296 thiss!15247 (t!368628 (t!368628 (t!368628 rulesArg!259)))))))

(assert (= (and d!1599290 (not res!2120859)) b!4968612))

(assert (= (and b!4968612 res!2120858) b!4968613))

(declare-fun m!5995440 () Bool)

(assert (=> d!1599290 m!5995440))

(assert (=> b!4968612 m!5995398))

(declare-fun m!5995442 () Bool)

(assert (=> b!4968613 m!5995442))

(assert (=> d!1598890 d!1599290))

(declare-fun d!1599292 () Bool)

(assert (=> d!1599292 (= (isDefined!11362 (maxPrefixZipper!786 thiss!15247 (t!368628 (t!368628 rulesArg!259)) (list!18365 input!1342))) (not (isEmpty!30935 (maxPrefixZipper!786 thiss!15247 (t!368628 (t!368628 rulesArg!259)) (list!18365 input!1342)))))))

(declare-fun bs!1183276 () Bool)

(assert (= bs!1183276 d!1599292))

(assert (=> bs!1183276 m!5993952))

(declare-fun m!5995444 () Bool)

(assert (=> bs!1183276 m!5995444))

(assert (=> d!1598890 d!1599292))

(declare-fun d!1599294 () Bool)

(assert (=> d!1599294 (= (isDefined!11363 lt!2051435) (not (isEmpty!30936 lt!2051435)))))

(declare-fun bs!1183277 () Bool)

(assert (= bs!1183277 d!1599294))

(declare-fun m!5995446 () Bool)

(assert (=> bs!1183277 m!5995446))

(assert (=> d!1598890 d!1599294))

(assert (=> d!1598890 d!1598680))

(assert (=> d!1598890 d!1599116))

(declare-fun d!1599296 () Bool)

(assert (=> d!1599296 (isPrefix!5244 lt!2051433 lt!2051431)))

(declare-fun lt!2051701 () Unit!148361)

(assert (=> d!1599296 (= lt!2051701 (choose!36668 lt!2051433 lt!2051431))))

(assert (=> d!1599296 (= (lemmaIsPrefixRefl!3568 lt!2051433 lt!2051431) lt!2051701)))

(declare-fun bs!1183278 () Bool)

(assert (= bs!1183278 d!1599296))

(assert (=> bs!1183278 m!5994204))

(declare-fun m!5995448 () Bool)

(assert (=> bs!1183278 m!5995448))

(assert (=> d!1598890 d!1599296))

(declare-fun b!4968617 () Bool)

(declare-fun e!3105558 () Bool)

(assert (=> b!4968617 (= e!3105558 (>= (size!38072 lt!2051431) (size!38072 lt!2051433)))))

(declare-fun b!4968614 () Bool)

(declare-fun e!3105557 () Bool)

(declare-fun e!3105556 () Bool)

(assert (=> b!4968614 (= e!3105557 e!3105556)))

(declare-fun res!2120862 () Bool)

(assert (=> b!4968614 (=> (not res!2120862) (not e!3105556))))

(assert (=> b!4968614 (= res!2120862 (not (is-Nil!57443 lt!2051431)))))

(declare-fun b!4968616 () Bool)

(assert (=> b!4968616 (= e!3105556 (isPrefix!5244 (tail!9801 lt!2051433) (tail!9801 lt!2051431)))))

(declare-fun d!1599298 () Bool)

(assert (=> d!1599298 e!3105558))

(declare-fun res!2120861 () Bool)

(assert (=> d!1599298 (=> res!2120861 e!3105558)))

(declare-fun lt!2051702 () Bool)

(assert (=> d!1599298 (= res!2120861 (not lt!2051702))))

(assert (=> d!1599298 (= lt!2051702 e!3105557)))

(declare-fun res!2120860 () Bool)

(assert (=> d!1599298 (=> res!2120860 e!3105557)))

(assert (=> d!1599298 (= res!2120860 (is-Nil!57443 lt!2051433))))

(assert (=> d!1599298 (= (isPrefix!5244 lt!2051433 lt!2051431) lt!2051702)))

(declare-fun b!4968615 () Bool)

(declare-fun res!2120863 () Bool)

(assert (=> b!4968615 (=> (not res!2120863) (not e!3105556))))

(assert (=> b!4968615 (= res!2120863 (= (head!10668 lt!2051433) (head!10668 lt!2051431)))))

(assert (= (and d!1599298 (not res!2120860)) b!4968614))

(assert (= (and b!4968614 res!2120862) b!4968615))

(assert (= (and b!4968615 res!2120863) b!4968616))

(assert (= (and d!1599298 (not res!2120861)) b!4968617))

(declare-fun m!5995450 () Bool)

(assert (=> b!4968617 m!5995450))

(declare-fun m!5995452 () Bool)

(assert (=> b!4968617 m!5995452))

(declare-fun m!5995454 () Bool)

(assert (=> b!4968616 m!5995454))

(declare-fun m!5995456 () Bool)

(assert (=> b!4968616 m!5995456))

(assert (=> b!4968616 m!5995454))

(assert (=> b!4968616 m!5995456))

(declare-fun m!5995458 () Bool)

(assert (=> b!4968616 m!5995458))

(declare-fun m!5995460 () Bool)

(assert (=> b!4968615 m!5995460))

(declare-fun m!5995462 () Bool)

(assert (=> b!4968615 m!5995462))

(assert (=> d!1598890 d!1599298))

(declare-fun d!1599300 () Bool)

(assert (=> d!1599300 (= (list!18369 (xs!18471 (c!847515 input!1342))) (innerList!15233 (xs!18471 (c!847515 input!1342))))))

(assert (=> b!4967930 d!1599300))

(declare-fun d!1599302 () Bool)

(declare-fun res!2120864 () Bool)

(declare-fun e!3105559 () Bool)

(assert (=> d!1599302 (=> (not res!2120864) (not e!3105559))))

(assert (=> d!1599302 (= res!2120864 (= (csize!30520 (left!41900 (c!847515 input!1342))) (+ (size!38076 (left!41900 (left!41900 (c!847515 input!1342)))) (size!38076 (right!42230 (left!41900 (c!847515 input!1342)))))))))

(assert (=> d!1599302 (= (inv!75080 (left!41900 (c!847515 input!1342))) e!3105559)))

(declare-fun b!4968618 () Bool)

(declare-fun res!2120865 () Bool)

(assert (=> b!4968618 (=> (not res!2120865) (not e!3105559))))

(assert (=> b!4968618 (= res!2120865 (and (not (= (left!41900 (left!41900 (c!847515 input!1342))) Empty!15145)) (not (= (right!42230 (left!41900 (c!847515 input!1342))) Empty!15145))))))

(declare-fun b!4968619 () Bool)

(declare-fun res!2120866 () Bool)

(assert (=> b!4968619 (=> (not res!2120866) (not e!3105559))))

(assert (=> b!4968619 (= res!2120866 (= (cheight!15356 (left!41900 (c!847515 input!1342))) (+ (max!0 (height!2013 (left!41900 (left!41900 (c!847515 input!1342)))) (height!2013 (right!42230 (left!41900 (c!847515 input!1342))))) 1)))))

(declare-fun b!4968620 () Bool)

(assert (=> b!4968620 (= e!3105559 (<= 0 (cheight!15356 (left!41900 (c!847515 input!1342)))))))

(assert (= (and d!1599302 res!2120864) b!4968618))

(assert (= (and b!4968618 res!2120865) b!4968619))

(assert (= (and b!4968619 res!2120866) b!4968620))

(declare-fun m!5995464 () Bool)

(assert (=> d!1599302 m!5995464))

(declare-fun m!5995466 () Bool)

(assert (=> d!1599302 m!5995466))

(assert (=> b!4968619 m!5995348))

(assert (=> b!4968619 m!5995350))

(assert (=> b!4968619 m!5995348))

(assert (=> b!4968619 m!5995350))

(declare-fun m!5995468 () Bool)

(assert (=> b!4968619 m!5995468))

(assert (=> b!4967824 d!1599302))

(declare-fun d!1599304 () Bool)

(assert (=> d!1599304 (= (isEmpty!30938 (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120))))) (is-Nil!57443 (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120))))))))

(assert (=> b!4967949 d!1599304))

(declare-fun d!1599306 () Bool)

(assert (=> d!1599306 (= (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))) (t!368627 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))))))

(assert (=> b!4967949 d!1599306))

(declare-fun b!4968621 () Bool)

(declare-fun e!3105563 () Bool)

(declare-fun lt!2051703 () Bool)

(declare-fun call!346502 () Bool)

(assert (=> b!4968621 (= e!3105563 (= lt!2051703 call!346502))))

(declare-fun b!4968622 () Bool)

(declare-fun res!2120869 () Bool)

(declare-fun e!3105560 () Bool)

(assert (=> b!4968622 (=> (not res!2120869) (not e!3105560))))

(assert (=> b!4968622 (= res!2120869 (isEmpty!30938 (tail!9801 (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))))

(declare-fun b!4968623 () Bool)

(assert (=> b!4968623 (= e!3105560 (= (head!10668 (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))) (c!847514 (derivativeStep!3922 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))) (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))))))))

(declare-fun b!4968624 () Bool)

(declare-fun e!3105562 () Bool)

(assert (=> b!4968624 (= e!3105562 (not lt!2051703))))

(declare-fun b!4968625 () Bool)

(declare-fun e!3105566 () Bool)

(assert (=> b!4968625 (= e!3105566 (matchR!6636 (derivativeStep!3922 (derivativeStep!3922 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))) (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))) (head!10668 (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))) (tail!9801 (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))))

(declare-fun bm!346497 () Bool)

(assert (=> bm!346497 (= call!346502 (isEmpty!30938 (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))))))

(declare-fun b!4968626 () Bool)

(declare-fun res!2120867 () Bool)

(assert (=> b!4968626 (=> (not res!2120867) (not e!3105560))))

(assert (=> b!4968626 (= res!2120867 (not call!346502))))

(declare-fun b!4968627 () Bool)

(declare-fun e!3105564 () Bool)

(declare-fun e!3105565 () Bool)

(assert (=> b!4968627 (= e!3105564 e!3105565)))

(declare-fun res!2120868 () Bool)

(assert (=> b!4968627 (=> (not res!2120868) (not e!3105565))))

(assert (=> b!4968627 (= res!2120868 (not lt!2051703))))

(declare-fun b!4968628 () Bool)

(declare-fun res!2120870 () Bool)

(declare-fun e!3105561 () Bool)

(assert (=> b!4968628 (=> res!2120870 e!3105561)))

(assert (=> b!4968628 (= res!2120870 (not (isEmpty!30938 (tail!9801 (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))))))))

(declare-fun b!4968629 () Bool)

(assert (=> b!4968629 (= e!3105566 (nullable!4620 (derivativeStep!3922 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))) (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))))

(declare-fun b!4968630 () Bool)

(assert (=> b!4968630 (= e!3105561 (not (= (head!10668 (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))) (c!847514 (derivativeStep!3922 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))) (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))))))

(declare-fun b!4968631 () Bool)

(declare-fun res!2120874 () Bool)

(assert (=> b!4968631 (=> res!2120874 e!3105564)))

(assert (=> b!4968631 (= res!2120874 e!3105560)))

(declare-fun res!2120872 () Bool)

(assert (=> b!4968631 (=> (not res!2120872) (not e!3105560))))

(assert (=> b!4968631 (= res!2120872 lt!2051703)))

(declare-fun b!4968632 () Bool)

(assert (=> b!4968632 (= e!3105563 e!3105562)))

(declare-fun c!847790 () Bool)

(assert (=> b!4968632 (= c!847790 (is-EmptyLang!13626 (derivativeStep!3922 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))) (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))))

(declare-fun d!1599308 () Bool)

(assert (=> d!1599308 e!3105563))

(declare-fun c!847789 () Bool)

(assert (=> d!1599308 (= c!847789 (is-EmptyExpr!13626 (derivativeStep!3922 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))) (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))))

(assert (=> d!1599308 (= lt!2051703 e!3105566)))

(declare-fun c!847788 () Bool)

(assert (=> d!1599308 (= c!847788 (isEmpty!30938 (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))))))

(assert (=> d!1599308 (validRegex!5969 (derivativeStep!3922 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))) (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))))))

(assert (=> d!1599308 (= (matchR!6636 (derivativeStep!3922 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))) (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))) (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))) lt!2051703)))

(declare-fun b!4968633 () Bool)

(declare-fun res!2120873 () Bool)

(assert (=> b!4968633 (=> res!2120873 e!3105564)))

(assert (=> b!4968633 (= res!2120873 (not (is-ElementMatch!13626 (derivativeStep!3922 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))) (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))))))))

(assert (=> b!4968633 (= e!3105562 e!3105564)))

(declare-fun b!4968634 () Bool)

(assert (=> b!4968634 (= e!3105565 e!3105561)))

(declare-fun res!2120871 () Bool)

(assert (=> b!4968634 (=> res!2120871 e!3105561)))

(assert (=> b!4968634 (= res!2120871 call!346502)))

(assert (= (and d!1599308 c!847788) b!4968629))

(assert (= (and d!1599308 (not c!847788)) b!4968625))

(assert (= (and d!1599308 c!847789) b!4968621))

(assert (= (and d!1599308 (not c!847789)) b!4968632))

(assert (= (and b!4968632 c!847790) b!4968624))

(assert (= (and b!4968632 (not c!847790)) b!4968633))

(assert (= (and b!4968633 (not res!2120873)) b!4968631))

(assert (= (and b!4968631 res!2120872) b!4968626))

(assert (= (and b!4968626 res!2120867) b!4968622))

(assert (= (and b!4968622 res!2120869) b!4968623))

(assert (= (and b!4968631 (not res!2120874)) b!4968627))

(assert (= (and b!4968627 res!2120868) b!4968634))

(assert (= (and b!4968634 (not res!2120871)) b!4968628))

(assert (= (and b!4968628 (not res!2120870)) b!4968630))

(assert (= (or b!4968621 b!4968626 b!4968634) bm!346497))

(assert (=> b!4968625 m!5993914))

(declare-fun m!5995470 () Bool)

(assert (=> b!4968625 m!5995470))

(assert (=> b!4968625 m!5993912))

(assert (=> b!4968625 m!5995470))

(declare-fun m!5995472 () Bool)

(assert (=> b!4968625 m!5995472))

(assert (=> b!4968625 m!5993914))

(declare-fun m!5995474 () Bool)

(assert (=> b!4968625 m!5995474))

(assert (=> b!4968625 m!5995472))

(assert (=> b!4968625 m!5995474))

(declare-fun m!5995476 () Bool)

(assert (=> b!4968625 m!5995476))

(assert (=> b!4968630 m!5993914))

(assert (=> b!4968630 m!5995470))

(assert (=> b!4968628 m!5993914))

(assert (=> b!4968628 m!5995474))

(assert (=> b!4968628 m!5995474))

(declare-fun m!5995478 () Bool)

(assert (=> b!4968628 m!5995478))

(assert (=> b!4968623 m!5993914))

(assert (=> b!4968623 m!5995470))

(assert (=> b!4968629 m!5993912))

(declare-fun m!5995480 () Bool)

(assert (=> b!4968629 m!5995480))

(assert (=> b!4968622 m!5993914))

(assert (=> b!4968622 m!5995474))

(assert (=> b!4968622 m!5995474))

(assert (=> b!4968622 m!5995478))

(assert (=> bm!346497 m!5993914))

(assert (=> bm!346497 m!5993918))

(assert (=> d!1599308 m!5993914))

(assert (=> d!1599308 m!5993918))

(assert (=> d!1599308 m!5993912))

(declare-fun m!5995482 () Bool)

(assert (=> d!1599308 m!5995482))

(assert (=> b!4967668 d!1599308))

(declare-fun b!4968656 () Bool)

(declare-fun e!3105577 () Regex!13626)

(assert (=> b!4968656 (= e!3105577 EmptyLang!13626)))

(declare-fun b!4968657 () Bool)

(declare-fun c!847802 () Bool)

(assert (=> b!4968657 (= c!847802 (is-Union!13626 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))))

(declare-fun e!3105580 () Regex!13626)

(declare-fun e!3105578 () Regex!13626)

(assert (=> b!4968657 (= e!3105580 e!3105578)))

(declare-fun b!4968658 () Bool)

(declare-fun call!346512 () Regex!13626)

(declare-fun call!346511 () Regex!13626)

(assert (=> b!4968658 (= e!3105578 (Union!13626 call!346512 call!346511))))

(declare-fun b!4968659 () Bool)

(declare-fun e!3105579 () Regex!13626)

(declare-fun call!346513 () Regex!13626)

(assert (=> b!4968659 (= e!3105579 (Concat!22330 call!346513 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))))

(declare-fun c!847805 () Bool)

(declare-fun bm!346506 () Bool)

(assert (=> bm!346506 (= call!346511 (derivativeStep!3922 (ite c!847802 (regTwo!27765 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (ite c!847805 (reg!13955 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (regOne!27764 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))) (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))))))

(declare-fun call!346514 () Regex!13626)

(declare-fun e!3105581 () Regex!13626)

(declare-fun b!4968660 () Bool)

(assert (=> b!4968660 (= e!3105581 (Union!13626 (Concat!22330 call!346514 (regTwo!27764 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))) call!346512))))

(declare-fun b!4968661 () Bool)

(declare-fun c!847801 () Bool)

(assert (=> b!4968661 (= c!847801 (nullable!4620 (regOne!27764 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))))))

(assert (=> b!4968661 (= e!3105579 e!3105581)))

(declare-fun b!4968662 () Bool)

(assert (=> b!4968662 (= e!3105580 (ite (= (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))) (c!847514 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))) EmptyExpr!13626 EmptyLang!13626))))

(declare-fun b!4968663 () Bool)

(assert (=> b!4968663 (= e!3105581 (Union!13626 (Concat!22330 call!346514 (regTwo!27764 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))) EmptyLang!13626))))

(declare-fun d!1599310 () Bool)

(declare-fun lt!2051706 () Regex!13626)

(assert (=> d!1599310 (validRegex!5969 lt!2051706)))

(assert (=> d!1599310 (= lt!2051706 e!3105577)))

(declare-fun c!847803 () Bool)

(assert (=> d!1599310 (= c!847803 (or (is-EmptyExpr!13626 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (is-EmptyLang!13626 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))))))

(assert (=> d!1599310 (validRegex!5969 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))))

(assert (=> d!1599310 (= (derivativeStep!3922 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))) (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))) lt!2051706)))

(declare-fun b!4968655 () Bool)

(assert (=> b!4968655 (= e!3105578 e!3105579)))

(assert (=> b!4968655 (= c!847805 (is-Star!13626 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))))

(declare-fun bm!346507 () Bool)

(assert (=> bm!346507 (= call!346512 (derivativeStep!3922 (ite c!847802 (regOne!27765 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (regTwo!27764 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))) (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))))))

(declare-fun bm!346508 () Bool)

(assert (=> bm!346508 (= call!346513 call!346511)))

(declare-fun b!4968664 () Bool)

(assert (=> b!4968664 (= e!3105577 e!3105580)))

(declare-fun c!847804 () Bool)

(assert (=> b!4968664 (= c!847804 (is-ElementMatch!13626 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))))

(declare-fun bm!346509 () Bool)

(assert (=> bm!346509 (= call!346514 call!346513)))

(assert (= (and d!1599310 c!847803) b!4968656))

(assert (= (and d!1599310 (not c!847803)) b!4968664))

(assert (= (and b!4968664 c!847804) b!4968662))

(assert (= (and b!4968664 (not c!847804)) b!4968657))

(assert (= (and b!4968657 c!847802) b!4968658))

(assert (= (and b!4968657 (not c!847802)) b!4968655))

(assert (= (and b!4968655 c!847805) b!4968659))

(assert (= (and b!4968655 (not c!847805)) b!4968661))

(assert (= (and b!4968661 c!847801) b!4968660))

(assert (= (and b!4968661 (not c!847801)) b!4968663))

(assert (= (or b!4968660 b!4968663) bm!346509))

(assert (= (or b!4968659 bm!346509) bm!346508))

(assert (= (or b!4968658 bm!346508) bm!346506))

(assert (= (or b!4968658 b!4968660) bm!346507))

(assert (=> bm!346506 m!5993910))

(declare-fun m!5995484 () Bool)

(assert (=> bm!346506 m!5995484))

(declare-fun m!5995486 () Bool)

(assert (=> b!4968661 m!5995486))

(declare-fun m!5995488 () Bool)

(assert (=> d!1599310 m!5995488))

(assert (=> d!1599310 m!5993924))

(assert (=> bm!346507 m!5993910))

(declare-fun m!5995490 () Bool)

(assert (=> bm!346507 m!5995490))

(assert (=> b!4967668 d!1599310))

(declare-fun d!1599312 () Bool)

(assert (=> d!1599312 (= (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))) (h!63891 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))

(assert (=> b!4967668 d!1599312))

(declare-fun d!1599314 () Bool)

(assert (=> d!1599314 (= (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))) (t!368627 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))

(assert (=> b!4967668 d!1599314))

(declare-fun d!1599316 () Bool)

(assert (=> d!1599316 (dynLambda!23168 lambda!247368 (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))))

(assert (=> d!1599316 true))

(declare-fun _$1!11238 () Unit!148361)

(assert (=> d!1599316 (= (choose!36672 lambda!247368 (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))) _$1!11238)))

(declare-fun b_lambda!196927 () Bool)

(assert (=> (not b_lambda!196927) (not d!1599316)))

(declare-fun bs!1183279 () Bool)

(assert (= bs!1183279 d!1599316))

(assert (=> bs!1183279 m!5993582))

(assert (=> bs!1183279 m!5994058))

(assert (=> d!1598864 d!1599316))

(assert (=> d!1598864 d!1599238))

(assert (=> b!4967417 d!1598874))

(assert (=> b!4967417 d!1598876))

(declare-fun d!1599318 () Bool)

(declare-fun dynLambda!23175 (Int BalanceConc!29720 BalanceConc!29720) Bool)

(assert (=> d!1599318 (dynLambda!23175 lambda!247379 (_1!34389 lt!2051115) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))))

(declare-fun lt!2051709 () Unit!148361)

(declare-fun choose!36679 (Int BalanceConc!29720 BalanceConc!29720) Unit!148361)

(assert (=> d!1599318 (= lt!2051709 (choose!36679 lambda!247379 (_1!34389 lt!2051115) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))))))

(assert (=> d!1599318 (Forall2!1287 lambda!247379)))

(assert (=> d!1599318 (= (Forall2of!477 lambda!247379 (_1!34389 lt!2051115) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))) lt!2051709)))

(declare-fun b_lambda!196929 () Bool)

(assert (=> (not b_lambda!196929) (not d!1599318)))

(declare-fun bs!1183280 () Bool)

(assert (= bs!1183280 d!1599318))

(assert (=> bs!1183280 m!5993582))

(declare-fun m!5995492 () Bool)

(assert (=> bs!1183280 m!5995492))

(assert (=> bs!1183280 m!5993582))

(declare-fun m!5995494 () Bool)

(assert (=> bs!1183280 m!5995494))

(declare-fun m!5995496 () Bool)

(assert (=> bs!1183280 m!5995496))

(assert (=> d!1598846 d!1599318))

(assert (=> d!1598846 d!1598842))

(declare-fun d!1599320 () Bool)

(assert (=> d!1599320 (= (list!18365 (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))) (list!18367 (c!847515 (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))))))

(declare-fun bs!1183281 () Bool)

(assert (= bs!1183281 d!1599320))

(declare-fun m!5995498 () Bool)

(assert (=> bs!1183281 m!5995498))

(assert (=> d!1598846 d!1599320))

(declare-fun d!1599322 () Bool)

(declare-fun lt!2051710 () Int)

(assert (=> d!1599322 (>= lt!2051710 0)))

(declare-fun e!3105582 () Int)

(assert (=> d!1599322 (= lt!2051710 e!3105582)))

(declare-fun c!847806 () Bool)

(assert (=> d!1599322 (= c!847806 (is-Nil!57443 (list!18369 (xs!18471 (c!847515 totalInput!464)))))))

(assert (=> d!1599322 (= (size!38072 (list!18369 (xs!18471 (c!847515 totalInput!464)))) lt!2051710)))

(declare-fun b!4968666 () Bool)

(assert (=> b!4968666 (= e!3105582 0)))

(declare-fun b!4968667 () Bool)

(assert (=> b!4968667 (= e!3105582 (+ 1 (size!38072 (t!368627 (list!18369 (xs!18471 (c!847515 totalInput!464)))))))))

(assert (= (and d!1599322 c!847806) b!4968666))

(assert (= (and d!1599322 (not c!847806)) b!4968667))

(declare-fun m!5995500 () Bool)

(assert (=> b!4968667 m!5995500))

(assert (=> d!1598790 d!1599322))

(assert (=> d!1598790 d!1599142))

(assert (=> b!4967990 d!1599128))

(assert (=> b!4967990 d!1599130))

(assert (=> b!4967990 d!1599124))

(assert (=> b!4967865 d!1599118))

(assert (=> b!4967865 d!1599114))

(assert (=> b!4967865 d!1599116))

(assert (=> b!4967865 d!1598680))

(declare-fun d!1599324 () Bool)

(assert (=> d!1599324 (= (isEmpty!30935 lt!2051463) (not (is-Some!14448 lt!2051463)))))

(assert (=> d!1598932 d!1599324))

(declare-fun d!1599326 () Bool)

(assert (=> d!1599326 (= (isEmpty!30938 (_1!34390 lt!2051460)) (is-Nil!57443 (_1!34390 lt!2051460)))))

(assert (=> d!1598932 d!1599326))

(declare-fun d!1599328 () Bool)

(declare-fun lt!2051734 () tuple2!62174)

(assert (=> d!1599328 (= (++!12532 (_1!34390 lt!2051734) (_2!34390 lt!2051734)) lt!2050949)))

(declare-fun sizeTr!361 (List!57567 Int) Int)

(assert (=> d!1599328 (= lt!2051734 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 0 lt!2050949 lt!2050949 (sizeTr!361 lt!2050949 0)))))

(declare-fun lt!2051730 () Unit!148361)

(declare-fun lt!2051733 () Unit!148361)

(assert (=> d!1599328 (= lt!2051730 lt!2051733)))

(declare-fun lt!2051731 () List!57567)

(declare-fun lt!2051728 () Int)

(assert (=> d!1599328 (= (sizeTr!361 lt!2051731 lt!2051728) (+ (size!38072 lt!2051731) lt!2051728))))

(declare-fun lemmaSizeTrEqualsSize!360 (List!57567 Int) Unit!148361)

(assert (=> d!1599328 (= lt!2051733 (lemmaSizeTrEqualsSize!360 lt!2051731 lt!2051728))))

(assert (=> d!1599328 (= lt!2051728 0)))

(assert (=> d!1599328 (= lt!2051731 Nil!57443)))

(declare-fun lt!2051727 () Unit!148361)

(declare-fun lt!2051729 () Unit!148361)

(assert (=> d!1599328 (= lt!2051727 lt!2051729)))

(declare-fun lt!2051732 () Int)

(assert (=> d!1599328 (= (sizeTr!361 lt!2050949 lt!2051732) (+ (size!38072 lt!2050949) lt!2051732))))

(assert (=> d!1599328 (= lt!2051729 (lemmaSizeTrEqualsSize!360 lt!2050949 lt!2051732))))

(assert (=> d!1599328 (= lt!2051732 0)))

(assert (=> d!1599328 (validRegex!5969 (regex!8393 (h!63892 rulesArg!259)))))

(assert (=> d!1599328 (= (findLongestMatch!1697 (regex!8393 (h!63892 rulesArg!259)) lt!2050949) lt!2051734)))

(declare-fun bs!1183282 () Bool)

(assert (= bs!1183282 d!1599328))

(declare-fun m!5995502 () Bool)

(assert (=> bs!1183282 m!5995502))

(declare-fun m!5995504 () Bool)

(assert (=> bs!1183282 m!5995504))

(declare-fun m!5995506 () Bool)

(assert (=> bs!1183282 m!5995506))

(declare-fun m!5995508 () Bool)

(assert (=> bs!1183282 m!5995508))

(declare-fun m!5995510 () Bool)

(assert (=> bs!1183282 m!5995510))

(declare-fun m!5995512 () Bool)

(assert (=> bs!1183282 m!5995512))

(declare-fun m!5995514 () Bool)

(assert (=> bs!1183282 m!5995514))

(assert (=> bs!1183282 m!5995502))

(declare-fun m!5995516 () Bool)

(assert (=> bs!1183282 m!5995516))

(assert (=> bs!1183282 m!5993828))

(assert (=> bs!1183282 m!5993428))

(assert (=> d!1598932 d!1599328))

(assert (=> d!1598932 d!1598796))

(declare-fun b!4968668 () Bool)

(declare-fun e!3105584 () Bool)

(declare-fun e!3105583 () Bool)

(assert (=> b!4968668 (= e!3105584 e!3105583)))

(declare-fun res!2120876 () Bool)

(assert (=> b!4968668 (=> (not res!2120876) (not e!3105583))))

(assert (=> b!4968668 (= res!2120876 (<= (- 1) (- (height!2013 (left!41900 (right!42230 (c!847515 totalInput!464)))) (height!2013 (right!42230 (right!42230 (c!847515 totalInput!464)))))))))

(declare-fun d!1599330 () Bool)

(declare-fun res!2120877 () Bool)

(assert (=> d!1599330 (=> res!2120877 e!3105584)))

(assert (=> d!1599330 (= res!2120877 (not (is-Node!15145 (right!42230 (c!847515 totalInput!464)))))))

(assert (=> d!1599330 (= (isBalanced!4202 (right!42230 (c!847515 totalInput!464))) e!3105584)))

(declare-fun b!4968669 () Bool)

(declare-fun res!2120879 () Bool)

(assert (=> b!4968669 (=> (not res!2120879) (not e!3105583))))

(assert (=> b!4968669 (= res!2120879 (isBalanced!4202 (left!41900 (right!42230 (c!847515 totalInput!464)))))))

(declare-fun b!4968670 () Bool)

(declare-fun res!2120880 () Bool)

(assert (=> b!4968670 (=> (not res!2120880) (not e!3105583))))

(assert (=> b!4968670 (= res!2120880 (<= (- (height!2013 (left!41900 (right!42230 (c!847515 totalInput!464)))) (height!2013 (right!42230 (right!42230 (c!847515 totalInput!464))))) 1))))

(declare-fun b!4968671 () Bool)

(declare-fun res!2120878 () Bool)

(assert (=> b!4968671 (=> (not res!2120878) (not e!3105583))))

(assert (=> b!4968671 (= res!2120878 (not (isEmpty!30943 (left!41900 (right!42230 (c!847515 totalInput!464))))))))

(declare-fun b!4968672 () Bool)

(declare-fun res!2120875 () Bool)

(assert (=> b!4968672 (=> (not res!2120875) (not e!3105583))))

(assert (=> b!4968672 (= res!2120875 (isBalanced!4202 (right!42230 (right!42230 (c!847515 totalInput!464)))))))

(declare-fun b!4968673 () Bool)

(assert (=> b!4968673 (= e!3105583 (not (isEmpty!30943 (right!42230 (right!42230 (c!847515 totalInput!464))))))))

(assert (= (and d!1599330 (not res!2120877)) b!4968668))

(assert (= (and b!4968668 res!2120876) b!4968670))

(assert (= (and b!4968670 res!2120880) b!4968669))

(assert (= (and b!4968669 res!2120879) b!4968672))

(assert (= (and b!4968672 res!2120875) b!4968671))

(assert (= (and b!4968671 res!2120878) b!4968673))

(assert (=> b!4968668 m!5995056))

(assert (=> b!4968668 m!5995058))

(declare-fun m!5995518 () Bool)

(assert (=> b!4968673 m!5995518))

(assert (=> b!4968670 m!5995056))

(assert (=> b!4968670 m!5995058))

(declare-fun m!5995520 () Bool)

(assert (=> b!4968671 m!5995520))

(declare-fun m!5995522 () Bool)

(assert (=> b!4968669 m!5995522))

(declare-fun m!5995524 () Bool)

(assert (=> b!4968672 m!5995524))

(assert (=> b!4967564 d!1599330))

(declare-fun b!4968675 () Bool)

(declare-fun e!3105586 () List!57567)

(assert (=> b!4968675 (= e!3105586 (Cons!57443 (h!63891 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051210))))) (++!12532 (t!368627 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051210))))) (_2!34385 (get!19940 lt!2051210)))))))

(declare-fun b!4968677 () Bool)

(declare-fun e!3105585 () Bool)

(declare-fun lt!2051735 () List!57567)

(assert (=> b!4968677 (= e!3105585 (or (not (= (_2!34385 (get!19940 lt!2051210)) Nil!57443)) (= lt!2051735 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051210)))))))))

(declare-fun b!4968674 () Bool)

(assert (=> b!4968674 (= e!3105586 (_2!34385 (get!19940 lt!2051210)))))

(declare-fun d!1599332 () Bool)

(assert (=> d!1599332 e!3105585))

(declare-fun res!2120881 () Bool)

(assert (=> d!1599332 (=> (not res!2120881) (not e!3105585))))

(assert (=> d!1599332 (= res!2120881 (= (content!10184 lt!2051735) (set.union (content!10184 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051210))))) (content!10184 (_2!34385 (get!19940 lt!2051210))))))))

(assert (=> d!1599332 (= lt!2051735 e!3105586)))

(declare-fun c!847807 () Bool)

(assert (=> d!1599332 (= c!847807 (is-Nil!57443 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051210))))))))

(assert (=> d!1599332 (= (++!12532 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051210)))) (_2!34385 (get!19940 lt!2051210))) lt!2051735)))

(declare-fun b!4968676 () Bool)

(declare-fun res!2120882 () Bool)

(assert (=> b!4968676 (=> (not res!2120882) (not e!3105585))))

(assert (=> b!4968676 (= res!2120882 (= (size!38072 lt!2051735) (+ (size!38072 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051210))))) (size!38072 (_2!34385 (get!19940 lt!2051210))))))))

(assert (= (and d!1599332 c!847807) b!4968674))

(assert (= (and d!1599332 (not c!847807)) b!4968675))

(assert (= (and d!1599332 res!2120881) b!4968676))

(assert (= (and b!4968676 res!2120882) b!4968677))

(declare-fun m!5995526 () Bool)

(assert (=> b!4968675 m!5995526))

(declare-fun m!5995528 () Bool)

(assert (=> d!1599332 m!5995528))

(assert (=> d!1599332 m!5993844))

(declare-fun m!5995530 () Bool)

(assert (=> d!1599332 m!5995530))

(declare-fun m!5995532 () Bool)

(assert (=> d!1599332 m!5995532))

(declare-fun m!5995534 () Bool)

(assert (=> b!4968676 m!5995534))

(assert (=> b!4968676 m!5993844))

(declare-fun m!5995536 () Bool)

(assert (=> b!4968676 m!5995536))

(assert (=> b!4968676 m!5993848))

(assert (=> b!4967601 d!1599332))

(assert (=> b!4967601 d!1599146))

(assert (=> b!4967601 d!1599148))

(assert (=> b!4967601 d!1599150))

(declare-fun d!1599334 () Bool)

(declare-fun lt!2051736 () Int)

(assert (=> d!1599334 (>= lt!2051736 0)))

(declare-fun e!3105587 () Int)

(assert (=> d!1599334 (= lt!2051736 e!3105587)))

(declare-fun c!847808 () Bool)

(assert (=> d!1599334 (= c!847808 (is-Nil!57443 (list!18365 (_1!34389 lt!2051115))))))

(assert (=> d!1599334 (= (size!38072 (list!18365 (_1!34389 lt!2051115))) lt!2051736)))

(declare-fun b!4968678 () Bool)

(assert (=> b!4968678 (= e!3105587 0)))

(declare-fun b!4968679 () Bool)

(assert (=> b!4968679 (= e!3105587 (+ 1 (size!38072 (t!368627 (list!18365 (_1!34389 lt!2051115))))))))

(assert (= (and d!1599334 c!847808) b!4968678))

(assert (= (and d!1599334 (not c!847808)) b!4968679))

(declare-fun m!5995538 () Bool)

(assert (=> b!4968679 m!5995538))

(assert (=> d!1598844 d!1599334))

(assert (=> d!1598844 d!1598842))

(declare-fun d!1599336 () Bool)

(declare-fun lt!2051739 () Int)

(assert (=> d!1599336 (= lt!2051739 (size!38072 (list!18367 (c!847515 (_1!34389 lt!2051115)))))))

(assert (=> d!1599336 (= lt!2051739 (ite (is-Empty!15145 (c!847515 (_1!34389 lt!2051115))) 0 (ite (is-Leaf!25167 (c!847515 (_1!34389 lt!2051115))) (csize!30521 (c!847515 (_1!34389 lt!2051115))) (csize!30520 (c!847515 (_1!34389 lt!2051115))))))))

(assert (=> d!1599336 (= (size!38076 (c!847515 (_1!34389 lt!2051115))) lt!2051739)))

(declare-fun bs!1183283 () Bool)

(assert (= bs!1183283 d!1599336))

(assert (=> bs!1183283 m!5993968))

(assert (=> bs!1183283 m!5993968))

(declare-fun m!5995540 () Bool)

(assert (=> bs!1183283 m!5995540))

(assert (=> d!1598844 d!1599336))

(assert (=> b!4967546 d!1599154))

(assert (=> b!4967546 d!1599156))

(assert (=> b!4967854 d!1599260))

(assert (=> b!4967854 d!1599262))

(assert (=> b!4967854 d!1599212))

(assert (=> b!4967854 d!1598680))

(declare-fun b!4968681 () Bool)

(declare-fun e!3105589 () List!57567)

(assert (=> b!4968681 (= e!3105589 (Cons!57443 (h!63891 (t!368627 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))) (++!12532 (t!368627 (t!368627 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))) (_2!34385 (get!19940 lt!2051000)))))))

(declare-fun b!4968683 () Bool)

(declare-fun e!3105588 () Bool)

(declare-fun lt!2051740 () List!57567)

(assert (=> b!4968683 (= e!3105588 (or (not (= (_2!34385 (get!19940 lt!2051000)) Nil!57443)) (= lt!2051740 (t!368627 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))))

(declare-fun b!4968680 () Bool)

(assert (=> b!4968680 (= e!3105589 (_2!34385 (get!19940 lt!2051000)))))

(declare-fun d!1599338 () Bool)

(assert (=> d!1599338 e!3105588))

(declare-fun res!2120883 () Bool)

(assert (=> d!1599338 (=> (not res!2120883) (not e!3105588))))

(assert (=> d!1599338 (= res!2120883 (= (content!10184 lt!2051740) (set.union (content!10184 (t!368627 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))) (content!10184 (_2!34385 (get!19940 lt!2051000))))))))

(assert (=> d!1599338 (= lt!2051740 e!3105589)))

(declare-fun c!847809 () Bool)

(assert (=> d!1599338 (= c!847809 (is-Nil!57443 (t!368627 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))))))

(assert (=> d!1599338 (= (++!12532 (t!368627 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))) (_2!34385 (get!19940 lt!2051000))) lt!2051740)))

(declare-fun b!4968682 () Bool)

(declare-fun res!2120884 () Bool)

(assert (=> b!4968682 (=> (not res!2120884) (not e!3105588))))

(assert (=> b!4968682 (= res!2120884 (= (size!38072 lt!2051740) (+ (size!38072 (t!368627 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))) (size!38072 (_2!34385 (get!19940 lt!2051000))))))))

(assert (= (and d!1599338 c!847809) b!4968680))

(assert (= (and d!1599338 (not c!847809)) b!4968681))

(assert (= (and d!1599338 res!2120883) b!4968682))

(assert (= (and b!4968682 res!2120884) b!4968683))

(declare-fun m!5995542 () Bool)

(assert (=> b!4968681 m!5995542))

(declare-fun m!5995544 () Bool)

(assert (=> d!1599338 m!5995544))

(assert (=> d!1599338 m!5995304))

(assert (=> d!1599338 m!5994358))

(declare-fun m!5995546 () Bool)

(assert (=> b!4968682 m!5995546))

(assert (=> b!4968682 m!5995430))

(assert (=> b!4968682 m!5993462))

(assert (=> b!4967980 d!1599338))

(declare-fun d!1599340 () Bool)

(declare-fun res!2120885 () Bool)

(declare-fun e!3105590 () Bool)

(assert (=> d!1599340 (=> (not res!2120885) (not e!3105590))))

(assert (=> d!1599340 (= res!2120885 (validRegex!5969 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))))

(assert (=> d!1599340 (= (ruleValid!3802 thiss!15247 (h!63892 (t!368628 rulesArg!259))) e!3105590)))

(declare-fun b!4968684 () Bool)

(declare-fun res!2120886 () Bool)

(assert (=> b!4968684 (=> (not res!2120886) (not e!3105590))))

(assert (=> b!4968684 (= res!2120886 (not (nullable!4620 (regex!8393 (h!63892 (t!368628 rulesArg!259))))))))

(declare-fun b!4968685 () Bool)

(assert (=> b!4968685 (= e!3105590 (not (= (tag!9257 (h!63892 (t!368628 rulesArg!259))) (String!65392 ""))))))

(assert (= (and d!1599340 res!2120885) b!4968684))

(assert (= (and b!4968684 res!2120886) b!4968685))

(declare-fun m!5995548 () Bool)

(assert (=> d!1599340 m!5995548))

(declare-fun m!5995550 () Bool)

(assert (=> b!4968684 m!5995550))

(assert (=> d!1598886 d!1599340))

(declare-fun d!1599342 () Bool)

(assert (=> d!1599342 (= (isDefined!11362 (maxPrefixOneRule!3629 thiss!15247 (h!63892 (t!368628 rulesArg!259)) (list!18365 input!1342))) (not (isEmpty!30935 (maxPrefixOneRule!3629 thiss!15247 (h!63892 (t!368628 rulesArg!259)) (list!18365 input!1342)))))))

(declare-fun bs!1183284 () Bool)

(assert (= bs!1183284 d!1599342))

(assert (=> bs!1183284 m!5994140))

(declare-fun m!5995552 () Bool)

(assert (=> bs!1183284 m!5995552))

(assert (=> d!1598886 d!1599342))

(declare-fun d!1599344 () Bool)

(declare-fun lt!2051741 () tuple2!62172)

(assert (=> d!1599344 (= (tuple2!62175 (list!18365 (_1!34389 lt!2051741)) (list!18365 (_2!34389 lt!2051741))) (findLongestMatch!1697 (regex!8393 (h!63892 (t!368628 rulesArg!259))) (list!18365 input!1342)))))

(assert (=> d!1599344 (= lt!2051741 (choose!36670 (regex!8393 (h!63892 (t!368628 rulesArg!259))) input!1342 totalInput!464))))

(assert (=> d!1599344 (validRegex!5969 (regex!8393 (h!63892 (t!368628 rulesArg!259))))))

(assert (=> d!1599344 (= (findLongestMatchWithZipperSequenceV2!164 (regex!8393 (h!63892 (t!368628 rulesArg!259))) input!1342 totalInput!464) lt!2051741)))

(declare-fun bs!1183285 () Bool)

(assert (= bs!1183285 d!1599344))

(assert (=> bs!1183285 m!5993376))

(assert (=> bs!1183285 m!5995264))

(assert (=> bs!1183285 m!5995548))

(declare-fun m!5995554 () Bool)

(assert (=> bs!1183285 m!5995554))

(declare-fun m!5995556 () Bool)

(assert (=> bs!1183285 m!5995556))

(assert (=> bs!1183285 m!5993376))

(declare-fun m!5995558 () Bool)

(assert (=> bs!1183285 m!5995558))

(assert (=> d!1598886 d!1599344))

(declare-fun d!1599346 () Bool)

(assert (=> d!1599346 (= (isDefined!11363 lt!2051422) (not (isEmpty!30936 lt!2051422)))))

(declare-fun bs!1183286 () Bool)

(assert (= bs!1183286 d!1599346))

(declare-fun m!5995560 () Bool)

(assert (=> bs!1183286 m!5995560))

(assert (=> d!1598886 d!1599346))

(assert (=> d!1598886 d!1598680))

(assert (=> d!1598886 d!1599212))

(declare-fun d!1599348 () Bool)

(declare-fun lt!2051742 () Bool)

(assert (=> d!1599348 (= lt!2051742 (isEmpty!30938 (list!18365 (_1!34389 lt!2051419))))))

(assert (=> d!1599348 (= lt!2051742 (isEmpty!30943 (c!847515 (_1!34389 lt!2051419))))))

(assert (=> d!1599348 (= (isEmpty!30937 (_1!34389 lt!2051419)) lt!2051742)))

(declare-fun bs!1183287 () Bool)

(assert (= bs!1183287 d!1599348))

(assert (=> bs!1183287 m!5994150))

(assert (=> bs!1183287 m!5994150))

(declare-fun m!5995562 () Bool)

(assert (=> bs!1183287 m!5995562))

(declare-fun m!5995564 () Bool)

(assert (=> bs!1183287 m!5995564))

(assert (=> d!1598886 d!1599348))

(declare-fun b!4968686 () Bool)

(declare-fun e!3105594 () Bool)

(declare-fun lt!2051743 () Bool)

(declare-fun call!346515 () Bool)

(assert (=> b!4968686 (= e!3105594 (= lt!2051743 call!346515))))

(declare-fun b!4968687 () Bool)

(declare-fun res!2120889 () Bool)

(declare-fun e!3105591 () Bool)

(assert (=> b!4968687 (=> (not res!2120889) (not e!3105591))))

(assert (=> b!4968687 (= res!2120889 (isEmpty!30938 (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051463)))))))))

(declare-fun b!4968688 () Bool)

(assert (=> b!4968688 (= e!3105591 (= (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051463))))) (c!847514 (regex!8393 (h!63892 rulesArg!259)))))))

(declare-fun b!4968689 () Bool)

(declare-fun e!3105593 () Bool)

(assert (=> b!4968689 (= e!3105593 (not lt!2051743))))

(declare-fun b!4968690 () Bool)

(declare-fun e!3105597 () Bool)

(assert (=> b!4968690 (= e!3105597 (matchR!6636 (derivativeStep!3922 (regex!8393 (h!63892 rulesArg!259)) (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051463)))))) (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051463)))))))))

(declare-fun bm!346510 () Bool)

(assert (=> bm!346510 (= call!346515 (isEmpty!30938 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051463))))))))

(declare-fun b!4968691 () Bool)

(declare-fun res!2120887 () Bool)

(assert (=> b!4968691 (=> (not res!2120887) (not e!3105591))))

(assert (=> b!4968691 (= res!2120887 (not call!346515))))

(declare-fun b!4968692 () Bool)

(declare-fun e!3105595 () Bool)

(declare-fun e!3105596 () Bool)

(assert (=> b!4968692 (= e!3105595 e!3105596)))

(declare-fun res!2120888 () Bool)

(assert (=> b!4968692 (=> (not res!2120888) (not e!3105596))))

(assert (=> b!4968692 (= res!2120888 (not lt!2051743))))

(declare-fun b!4968693 () Bool)

(declare-fun res!2120890 () Bool)

(declare-fun e!3105592 () Bool)

(assert (=> b!4968693 (=> res!2120890 e!3105592)))

(assert (=> b!4968693 (= res!2120890 (not (isEmpty!30938 (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051463))))))))))

(declare-fun b!4968694 () Bool)

(assert (=> b!4968694 (= e!3105597 (nullable!4620 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun b!4968695 () Bool)

(assert (=> b!4968695 (= e!3105592 (not (= (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051463))))) (c!847514 (regex!8393 (h!63892 rulesArg!259))))))))

(declare-fun b!4968696 () Bool)

(declare-fun res!2120894 () Bool)

(assert (=> b!4968696 (=> res!2120894 e!3105595)))

(assert (=> b!4968696 (= res!2120894 e!3105591)))

(declare-fun res!2120892 () Bool)

(assert (=> b!4968696 (=> (not res!2120892) (not e!3105591))))

(assert (=> b!4968696 (= res!2120892 lt!2051743)))

(declare-fun b!4968697 () Bool)

(assert (=> b!4968697 (= e!3105594 e!3105593)))

(declare-fun c!847812 () Bool)

(assert (=> b!4968697 (= c!847812 (is-EmptyLang!13626 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun d!1599350 () Bool)

(assert (=> d!1599350 e!3105594))

(declare-fun c!847811 () Bool)

(assert (=> d!1599350 (= c!847811 (is-EmptyExpr!13626 (regex!8393 (h!63892 rulesArg!259))))))

(assert (=> d!1599350 (= lt!2051743 e!3105597)))

(declare-fun c!847810 () Bool)

(assert (=> d!1599350 (= c!847810 (isEmpty!30938 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051463))))))))

(assert (=> d!1599350 (validRegex!5969 (regex!8393 (h!63892 rulesArg!259)))))

(assert (=> d!1599350 (= (matchR!6636 (regex!8393 (h!63892 rulesArg!259)) (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051463))))) lt!2051743)))

(declare-fun b!4968698 () Bool)

(declare-fun res!2120893 () Bool)

(assert (=> b!4968698 (=> res!2120893 e!3105595)))

(assert (=> b!4968698 (= res!2120893 (not (is-ElementMatch!13626 (regex!8393 (h!63892 rulesArg!259)))))))

(assert (=> b!4968698 (= e!3105593 e!3105595)))

(declare-fun b!4968699 () Bool)

(assert (=> b!4968699 (= e!3105596 e!3105592)))

(declare-fun res!2120891 () Bool)

(assert (=> b!4968699 (=> res!2120891 e!3105592)))

(assert (=> b!4968699 (= res!2120891 call!346515)))

(assert (= (and d!1599350 c!847810) b!4968694))

(assert (= (and d!1599350 (not c!847810)) b!4968690))

(assert (= (and d!1599350 c!847811) b!4968686))

(assert (= (and d!1599350 (not c!847811)) b!4968697))

(assert (= (and b!4968697 c!847812) b!4968689))

(assert (= (and b!4968697 (not c!847812)) b!4968698))

(assert (= (and b!4968698 (not res!2120893)) b!4968696))

(assert (= (and b!4968696 res!2120892) b!4968691))

(assert (= (and b!4968691 res!2120887) b!4968687))

(assert (= (and b!4968687 res!2120889) b!4968688))

(assert (= (and b!4968696 (not res!2120894)) b!4968692))

(assert (= (and b!4968692 res!2120888) b!4968699))

(assert (= (and b!4968699 (not res!2120891)) b!4968693))

(assert (= (and b!4968693 (not res!2120890)) b!4968695))

(assert (= (or b!4968686 b!4968691 b!4968699) bm!346510))

(assert (=> b!4968690 m!5994324))

(declare-fun m!5995566 () Bool)

(assert (=> b!4968690 m!5995566))

(assert (=> b!4968690 m!5995566))

(declare-fun m!5995568 () Bool)

(assert (=> b!4968690 m!5995568))

(assert (=> b!4968690 m!5994324))

(declare-fun m!5995570 () Bool)

(assert (=> b!4968690 m!5995570))

(assert (=> b!4968690 m!5995568))

(assert (=> b!4968690 m!5995570))

(declare-fun m!5995572 () Bool)

(assert (=> b!4968690 m!5995572))

(assert (=> b!4968695 m!5994324))

(assert (=> b!4968695 m!5995566))

(assert (=> b!4968693 m!5994324))

(assert (=> b!4968693 m!5995570))

(assert (=> b!4968693 m!5995570))

(declare-fun m!5995574 () Bool)

(assert (=> b!4968693 m!5995574))

(assert (=> b!4968688 m!5994324))

(assert (=> b!4968688 m!5995566))

(assert (=> b!4968694 m!5993830))

(assert (=> b!4968687 m!5994324))

(assert (=> b!4968687 m!5995570))

(assert (=> b!4968687 m!5995570))

(assert (=> b!4968687 m!5995574))

(assert (=> bm!346510 m!5994324))

(declare-fun m!5995576 () Bool)

(assert (=> bm!346510 m!5995576))

(assert (=> d!1599350 m!5994324))

(assert (=> d!1599350 m!5995576))

(assert (=> d!1599350 m!5993828))

(assert (=> b!4967969 d!1599350))

(declare-fun d!1599352 () Bool)

(assert (=> d!1599352 (= (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051463)))) (list!18367 (c!847515 (charsOf!5437 (_1!34385 (get!19940 lt!2051463))))))))

(declare-fun bs!1183288 () Bool)

(assert (= bs!1183288 d!1599352))

(declare-fun m!5995578 () Bool)

(assert (=> bs!1183288 m!5995578))

(assert (=> b!4967969 d!1599352))

(declare-fun d!1599354 () Bool)

(declare-fun lt!2051744 () BalanceConc!29720)

(assert (=> d!1599354 (= (list!18365 lt!2051744) (originalCharacters!8672 (_1!34385 (get!19940 lt!2051463))))))

(assert (=> d!1599354 (= lt!2051744 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051463))))) (value!268642 (_1!34385 (get!19940 lt!2051463)))))))

(assert (=> d!1599354 (= (charsOf!5437 (_1!34385 (get!19940 lt!2051463))) lt!2051744)))

(declare-fun b_lambda!196931 () Bool)

(assert (=> (not b_lambda!196931) (not d!1599354)))

(declare-fun tb!260701 () Bool)

(declare-fun t!368730 () Bool)

(assert (=> (and b!4967137 (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051463)))))) t!368730) tb!260701))

(declare-fun b!4968700 () Bool)

(declare-fun e!3105598 () Bool)

(declare-fun tp!1393481 () Bool)

(assert (=> b!4968700 (= e!3105598 (and (inv!75075 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051463))))) (value!268642 (_1!34385 (get!19940 lt!2051463)))))) tp!1393481))))

(declare-fun result!325820 () Bool)

(assert (=> tb!260701 (= result!325820 (and (inv!75074 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051463))))) (value!268642 (_1!34385 (get!19940 lt!2051463))))) e!3105598))))

(assert (= tb!260701 b!4968700))

(declare-fun m!5995580 () Bool)

(assert (=> b!4968700 m!5995580))

(declare-fun m!5995582 () Bool)

(assert (=> tb!260701 m!5995582))

(assert (=> d!1599354 t!368730))

(declare-fun b_and!348277 () Bool)

(assert (= b_and!348265 (and (=> t!368730 result!325820) b_and!348277)))

(declare-fun t!368732 () Bool)

(declare-fun tb!260703 () Bool)

(assert (=> (and b!4967394 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051463)))))) t!368732) tb!260703))

(declare-fun result!325822 () Bool)

(assert (= result!325822 result!325820))

(assert (=> d!1599354 t!368732))

(declare-fun b_and!348279 () Bool)

(assert (= b_and!348267 (and (=> t!368732 result!325822) b_and!348279)))

(declare-fun t!368734 () Bool)

(declare-fun tb!260705 () Bool)

(assert (=> (and b!4968022 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051463)))))) t!368734) tb!260705))

(declare-fun result!325824 () Bool)

(assert (= result!325824 result!325820))

(assert (=> d!1599354 t!368734))

(declare-fun b_and!348281 () Bool)

(assert (= b_and!348269 (and (=> t!368734 result!325824) b_and!348281)))

(declare-fun m!5995584 () Bool)

(assert (=> d!1599354 m!5995584))

(declare-fun m!5995586 () Bool)

(assert (=> d!1599354 m!5995586))

(assert (=> b!4967969 d!1599354))

(assert (=> b!4967969 d!1599246))

(declare-fun d!1599356 () Bool)

(assert (=> d!1599356 (= (list!18365 lt!2051223) (list!18367 (c!847515 lt!2051223)))))

(declare-fun bs!1183289 () Bool)

(assert (= bs!1183289 d!1599356))

(declare-fun m!5995588 () Bool)

(assert (=> bs!1183289 m!5995588))

(assert (=> d!1598826 d!1599356))

(assert (=> b!4967956 d!1599264))

(declare-fun d!1599358 () Bool)

(declare-fun lt!2051745 () Int)

(assert (=> d!1599358 (>= lt!2051745 0)))

(declare-fun e!3105599 () Int)

(assert (=> d!1599358 (= lt!2051745 e!3105599)))

(declare-fun c!847813 () Bool)

(assert (=> d!1599358 (= c!847813 (is-Nil!57443 (tail!9801 lt!2050949)))))

(assert (=> d!1599358 (= (size!38072 (tail!9801 lt!2050949)) lt!2051745)))

(declare-fun b!4968701 () Bool)

(assert (=> b!4968701 (= e!3105599 0)))

(declare-fun b!4968702 () Bool)

(assert (=> b!4968702 (= e!3105599 (+ 1 (size!38072 (t!368627 (tail!9801 lt!2050949)))))))

(assert (= (and d!1599358 c!847813) b!4968701))

(assert (= (and d!1599358 (not c!847813)) b!4968702))

(declare-fun m!5995590 () Bool)

(assert (=> b!4968702 m!5995590))

(assert (=> b!4967555 d!1599358))

(declare-fun d!1599360 () Bool)

(declare-fun e!3105600 () Bool)

(assert (=> d!1599360 e!3105600))

(declare-fun res!2120895 () Bool)

(assert (=> d!1599360 (=> (not res!2120895) (not e!3105600))))

(declare-fun lt!2051746 () BalanceConc!29720)

(assert (=> d!1599360 (= res!2120895 (= (list!18365 lt!2051746) (originalCharacters!8672 (_1!34385 (get!19940 lt!2051000)))))))

(assert (=> d!1599360 (= lt!2051746 (BalanceConc!29721 (fromList!943 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051000))))))))

(assert (=> d!1599360 (= (fromListB!2731 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051000)))) lt!2051746)))

(declare-fun b!4968703 () Bool)

(assert (=> b!4968703 (= e!3105600 (isBalanced!4202 (fromList!943 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051000))))))))

(assert (= (and d!1599360 res!2120895) b!4968703))

(declare-fun m!5995592 () Bool)

(assert (=> d!1599360 m!5995592))

(declare-fun m!5995594 () Bool)

(assert (=> d!1599360 m!5995594))

(assert (=> b!4968703 m!5995594))

(assert (=> b!4968703 m!5995594))

(declare-fun m!5995596 () Bool)

(assert (=> b!4968703 m!5995596))

(assert (=> d!1598914 d!1599360))

(declare-fun d!1599362 () Bool)

(declare-fun res!2120896 () Bool)

(declare-fun e!3105601 () Bool)

(assert (=> d!1599362 (=> (not res!2120896) (not e!3105601))))

(assert (=> d!1599362 (= res!2120896 (<= (size!38072 (list!18369 (xs!18471 (left!41900 (c!847515 totalInput!464))))) 512))))

(assert (=> d!1599362 (= (inv!75081 (left!41900 (c!847515 totalInput!464))) e!3105601)))

(declare-fun b!4968704 () Bool)

(declare-fun res!2120897 () Bool)

(assert (=> b!4968704 (=> (not res!2120897) (not e!3105601))))

(assert (=> b!4968704 (= res!2120897 (= (csize!30521 (left!41900 (c!847515 totalInput!464))) (size!38072 (list!18369 (xs!18471 (left!41900 (c!847515 totalInput!464)))))))))

(declare-fun b!4968705 () Bool)

(assert (=> b!4968705 (= e!3105601 (and (> (csize!30521 (left!41900 (c!847515 totalInput!464))) 0) (<= (csize!30521 (left!41900 (c!847515 totalInput!464))) 512)))))

(assert (= (and d!1599362 res!2120896) b!4968704))

(assert (= (and b!4968704 res!2120897) b!4968705))

(declare-fun m!5995598 () Bool)

(assert (=> d!1599362 m!5995598))

(assert (=> d!1599362 m!5995598))

(declare-fun m!5995600 () Bool)

(assert (=> d!1599362 m!5995600))

(assert (=> b!4968704 m!5995598))

(assert (=> b!4968704 m!5995598))

(assert (=> b!4968704 m!5995600))

(assert (=> b!4967924 d!1599362))

(declare-fun d!1599364 () Bool)

(declare-fun lt!2051747 () Int)

(assert (=> d!1599364 (>= lt!2051747 0)))

(declare-fun e!3105602 () Int)

(assert (=> d!1599364 (= lt!2051747 e!3105602)))

(declare-fun c!847814 () Bool)

(assert (=> d!1599364 (= c!847814 (is-Nil!57443 (t!368627 (_2!34385 (get!19940 lt!2051000)))))))

(assert (=> d!1599364 (= (size!38072 (t!368627 (_2!34385 (get!19940 lt!2051000)))) lt!2051747)))

(declare-fun b!4968706 () Bool)

(assert (=> b!4968706 (= e!3105602 0)))

(declare-fun b!4968707 () Bool)

(assert (=> b!4968707 (= e!3105602 (+ 1 (size!38072 (t!368627 (t!368627 (_2!34385 (get!19940 lt!2051000)))))))))

(assert (= (and d!1599364 c!847814) b!4968706))

(assert (= (and d!1599364 (not c!847814)) b!4968707))

(declare-fun m!5995602 () Bool)

(assert (=> b!4968707 m!5995602))

(assert (=> b!4967823 d!1599364))

(declare-fun d!1599366 () Bool)

(declare-fun lt!2051748 () Int)

(assert (=> d!1599366 (>= lt!2051748 0)))

(declare-fun e!3105603 () Int)

(assert (=> d!1599366 (= lt!2051748 e!3105603)))

(declare-fun c!847815 () Bool)

(assert (=> d!1599366 (= c!847815 (is-Nil!57443 lt!2051447))))

(assert (=> d!1599366 (= (size!38072 lt!2051447) lt!2051748)))

(declare-fun b!4968708 () Bool)

(assert (=> b!4968708 (= e!3105603 0)))

(declare-fun b!4968709 () Bool)

(assert (=> b!4968709 (= e!3105603 (+ 1 (size!38072 (t!368627 lt!2051447))))))

(assert (= (and d!1599366 c!847815) b!4968708))

(assert (= (and d!1599366 (not c!847815)) b!4968709))

(declare-fun m!5995604 () Bool)

(assert (=> b!4968709 m!5995604))

(assert (=> b!4967914 d!1599366))

(assert (=> bm!346450 d!1598806))

(declare-fun d!1599368 () Bool)

(declare-fun lt!2051749 () Bool)

(assert (=> d!1599368 (= lt!2051749 (isEmpty!30938 (list!18367 (left!41900 (c!847515 totalInput!464)))))))

(assert (=> d!1599368 (= lt!2051749 (= (size!38076 (left!41900 (c!847515 totalInput!464))) 0))))

(assert (=> d!1599368 (= (isEmpty!30943 (left!41900 (c!847515 totalInput!464))) lt!2051749)))

(declare-fun bs!1183290 () Bool)

(assert (= bs!1183290 d!1599368))

(assert (=> bs!1183290 m!5993902))

(assert (=> bs!1183290 m!5993902))

(declare-fun m!5995606 () Bool)

(assert (=> bs!1183290 m!5995606))

(assert (=> bs!1183290 m!5993882))

(assert (=> b!4967563 d!1599368))

(declare-fun bs!1183291 () Bool)

(declare-fun d!1599370 () Bool)

(assert (= bs!1183291 (and d!1599370 d!1598816)))

(declare-fun lambda!247397 () Int)

(assert (=> bs!1183291 (= (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) (= lambda!247397 lambda!247375))))

(declare-fun bs!1183292 () Bool)

(assert (= bs!1183292 (and d!1599370 d!1598846)))

(assert (=> bs!1183292 (= (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) (= lambda!247397 lambda!247379))))

(assert (=> d!1599370 true))

(assert (=> d!1599370 (< (dynLambda!23159 order!26203 (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) (dynLambda!23165 order!26215 lambda!247397))))

(assert (=> d!1599370 (= (equivClasses!3548 (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) (Forall2!1287 lambda!247397))))

(declare-fun bs!1183293 () Bool)

(assert (= bs!1183293 d!1599370))

(declare-fun m!5995608 () Bool)

(assert (=> bs!1183293 m!5995608))

(assert (=> b!4967943 d!1599370))

(declare-fun b!4968711 () Bool)

(declare-fun e!3105605 () List!57567)

(assert (=> b!4968711 (= e!3105605 (Cons!57443 (h!63891 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051467))))) (++!12532 (t!368627 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051467))))) (_2!34385 (get!19940 lt!2051467)))))))

(declare-fun b!4968713 () Bool)

(declare-fun e!3105604 () Bool)

(declare-fun lt!2051750 () List!57567)

(assert (=> b!4968713 (= e!3105604 (or (not (= (_2!34385 (get!19940 lt!2051467)) Nil!57443)) (= lt!2051750 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051467)))))))))

(declare-fun b!4968710 () Bool)

(assert (=> b!4968710 (= e!3105605 (_2!34385 (get!19940 lt!2051467)))))

(declare-fun d!1599372 () Bool)

(assert (=> d!1599372 e!3105604))

(declare-fun res!2120898 () Bool)

(assert (=> d!1599372 (=> (not res!2120898) (not e!3105604))))

(assert (=> d!1599372 (= res!2120898 (= (content!10184 lt!2051750) (set.union (content!10184 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051467))))) (content!10184 (_2!34385 (get!19940 lt!2051467))))))))

(assert (=> d!1599372 (= lt!2051750 e!3105605)))

(declare-fun c!847816 () Bool)

(assert (=> d!1599372 (= c!847816 (is-Nil!57443 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051467))))))))

(assert (=> d!1599372 (= (++!12532 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051467)))) (_2!34385 (get!19940 lt!2051467))) lt!2051750)))

(declare-fun b!4968712 () Bool)

(declare-fun res!2120899 () Bool)

(assert (=> b!4968712 (=> (not res!2120899) (not e!3105604))))

(assert (=> b!4968712 (= res!2120899 (= (size!38072 lt!2051750) (+ (size!38072 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051467))))) (size!38072 (_2!34385 (get!19940 lt!2051467))))))))

(assert (= (and d!1599372 c!847816) b!4968710))

(assert (= (and d!1599372 (not c!847816)) b!4968711))

(assert (= (and d!1599372 res!2120898) b!4968712))

(assert (= (and b!4968712 res!2120899) b!4968713))

(declare-fun m!5995610 () Bool)

(assert (=> b!4968711 m!5995610))

(declare-fun m!5995612 () Bool)

(assert (=> d!1599372 m!5995612))

(assert (=> d!1599372 m!5994372))

(declare-fun m!5995614 () Bool)

(assert (=> d!1599372 m!5995614))

(declare-fun m!5995616 () Bool)

(assert (=> d!1599372 m!5995616))

(declare-fun m!5995618 () Bool)

(assert (=> b!4968712 m!5995618))

(assert (=> b!4968712 m!5994372))

(declare-fun m!5995620 () Bool)

(assert (=> b!4968712 m!5995620))

(assert (=> b!4968712 m!5994382))

(assert (=> b!4967989 d!1599372))

(assert (=> b!4967989 d!1599128))

(assert (=> b!4967989 d!1599130))

(assert (=> b!4967989 d!1599124))

(declare-fun d!1599374 () Bool)

(declare-fun c!847817 () Bool)

(assert (=> d!1599374 (= c!847817 (is-Node!15145 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (value!268642 (_1!34385 (get!19940 lt!2051000)))))))))

(declare-fun e!3105606 () Bool)

(assert (=> d!1599374 (= (inv!75075 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (value!268642 (_1!34385 (get!19940 lt!2051000)))))) e!3105606)))

(declare-fun b!4968714 () Bool)

(assert (=> b!4968714 (= e!3105606 (inv!75080 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (value!268642 (_1!34385 (get!19940 lt!2051000)))))))))

(declare-fun b!4968715 () Bool)

(declare-fun e!3105607 () Bool)

(assert (=> b!4968715 (= e!3105606 e!3105607)))

(declare-fun res!2120900 () Bool)

(assert (=> b!4968715 (= res!2120900 (not (is-Leaf!25167 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (value!268642 (_1!34385 (get!19940 lt!2051000))))))))))

(assert (=> b!4968715 (=> res!2120900 e!3105607)))

(declare-fun b!4968716 () Bool)

(assert (=> b!4968716 (= e!3105607 (inv!75081 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (value!268642 (_1!34385 (get!19940 lt!2051000)))))))))

(assert (= (and d!1599374 c!847817) b!4968714))

(assert (= (and d!1599374 (not c!847817)) b!4968715))

(assert (= (and b!4968715 (not res!2120900)) b!4968716))

(declare-fun m!5995622 () Bool)

(assert (=> b!4968714 m!5995622))

(declare-fun m!5995624 () Bool)

(assert (=> b!4968716 m!5995624))

(assert (=> b!4967682 d!1599374))

(assert (=> b!4967521 d!1599162))

(assert (=> b!4967521 d!1599164))

(assert (=> b!4967521 d!1598850))

(assert (=> b!4967521 d!1598808))

(assert (=> d!1598936 d!1598698))

(declare-fun d!1599376 () Bool)

(declare-fun c!847818 () Bool)

(assert (=> d!1599376 (= c!847818 (is-Nil!57443 lt!2051447))))

(declare-fun e!3105608 () (Set C!27502))

(assert (=> d!1599376 (= (content!10184 lt!2051447) e!3105608)))

(declare-fun b!4968717 () Bool)

(assert (=> b!4968717 (= e!3105608 (as set.empty (Set C!27502)))))

(declare-fun b!4968718 () Bool)

(assert (=> b!4968718 (= e!3105608 (set.union (set.insert (h!63891 lt!2051447) (as set.empty (Set C!27502))) (content!10184 (t!368627 lt!2051447))))))

(assert (= (and d!1599376 c!847818) b!4968717))

(assert (= (and d!1599376 (not c!847818)) b!4968718))

(declare-fun m!5995626 () Bool)

(assert (=> b!4968718 m!5995626))

(declare-fun m!5995628 () Bool)

(assert (=> b!4968718 m!5995628))

(assert (=> d!1598896 d!1599376))

(declare-fun d!1599378 () Bool)

(declare-fun c!847819 () Bool)

(assert (=> d!1599378 (= c!847819 (is-Nil!57443 (list!18365 totalInput!464)))))

(declare-fun e!3105609 () (Set C!27502))

(assert (=> d!1599378 (= (content!10184 (list!18365 totalInput!464)) e!3105609)))

(declare-fun b!4968719 () Bool)

(assert (=> b!4968719 (= e!3105609 (as set.empty (Set C!27502)))))

(declare-fun b!4968720 () Bool)

(assert (=> b!4968720 (= e!3105609 (set.union (set.insert (h!63891 (list!18365 totalInput!464)) (as set.empty (Set C!27502))) (content!10184 (t!368627 (list!18365 totalInput!464)))))))

(assert (= (and d!1599378 c!847819) b!4968719))

(assert (= (and d!1599378 (not c!847819)) b!4968720))

(declare-fun m!5995630 () Bool)

(assert (=> b!4968720 m!5995630))

(assert (=> b!4968720 m!5994990))

(assert (=> d!1598896 d!1599378))

(assert (=> b!4967600 d!1599150))

(declare-fun b!4968721 () Bool)

(declare-fun res!2120904 () Bool)

(declare-fun e!3105610 () Bool)

(assert (=> b!4968721 (=> (not res!2120904) (not e!3105610))))

(declare-fun e!3105613 () Bool)

(assert (=> b!4968721 (= res!2120904 e!3105613)))

(declare-fun res!2120902 () Bool)

(assert (=> b!4968721 (=> res!2120902 e!3105613)))

(declare-fun lt!2051755 () Option!14450)

(assert (=> b!4968721 (= res!2120902 (not (isDefined!11363 lt!2051755)))))

(declare-fun b!4968722 () Bool)

(declare-fun e!3105612 () Bool)

(declare-fun e!3105615 () Bool)

(assert (=> b!4968722 (= e!3105612 e!3105615)))

(declare-fun res!2120906 () Bool)

(assert (=> b!4968722 (=> (not res!2120906) (not e!3105615))))

(assert (=> b!4968722 (= res!2120906 (= (_1!34386 (get!19941 lt!2051755)) (_1!34385 (get!19940 (maxPrefix!4660 thiss!15247 (t!368628 (t!368628 (t!368628 rulesArg!259))) (list!18365 input!1342))))))))

(declare-fun b!4968723 () Bool)

(declare-fun e!3105614 () Option!14450)

(declare-fun lt!2051757 () Option!14450)

(declare-fun lt!2051752 () Option!14450)

(assert (=> b!4968723 (= e!3105614 (ite (and (is-None!14449 lt!2051757) (is-None!14449 lt!2051752)) None!14449 (ite (is-None!14449 lt!2051752) lt!2051757 (ite (is-None!14449 lt!2051757) lt!2051752 (ite (>= (size!38070 (_1!34386 (v!50438 lt!2051757))) (size!38070 (_1!34386 (v!50438 lt!2051752)))) lt!2051757 lt!2051752)))))))

(declare-fun call!346516 () Option!14450)

(assert (=> b!4968723 (= lt!2051757 call!346516)))

(assert (=> b!4968723 (= lt!2051752 (maxPrefixZipperSequenceV2!704 thiss!15247 (t!368628 (t!368628 (t!368628 (t!368628 rulesArg!259)))) input!1342 totalInput!464))))

(declare-fun b!4968724 () Bool)

(declare-fun e!3105611 () Bool)

(assert (=> b!4968724 (= e!3105613 e!3105611)))

(declare-fun res!2120901 () Bool)

(assert (=> b!4968724 (=> (not res!2120901) (not e!3105611))))

(assert (=> b!4968724 (= res!2120901 (= (_1!34386 (get!19941 lt!2051755)) (_1!34385 (get!19940 (maxPrefixZipper!786 thiss!15247 (t!368628 (t!368628 (t!368628 rulesArg!259))) (list!18365 input!1342))))))))

(declare-fun bm!346511 () Bool)

(assert (=> bm!346511 (= call!346516 (maxPrefixOneRuleZipperSequenceV2!361 thiss!15247 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))) input!1342 totalInput!464))))

(declare-fun d!1599380 () Bool)

(assert (=> d!1599380 e!3105610))

(declare-fun res!2120905 () Bool)

(assert (=> d!1599380 (=> (not res!2120905) (not e!3105610))))

(assert (=> d!1599380 (= res!2120905 (= (isDefined!11363 lt!2051755) (isDefined!11362 (maxPrefixZipper!786 thiss!15247 (t!368628 (t!368628 (t!368628 rulesArg!259))) (list!18365 input!1342)))))))

(assert (=> d!1599380 (= lt!2051755 e!3105614)))

(declare-fun c!847820 () Bool)

(assert (=> d!1599380 (= c!847820 (and (is-Cons!57444 (t!368628 (t!368628 (t!368628 rulesArg!259)))) (is-Nil!57444 (t!368628 (t!368628 (t!368628 (t!368628 rulesArg!259)))))))))

(declare-fun lt!2051754 () Unit!148361)

(declare-fun lt!2051756 () Unit!148361)

(assert (=> d!1599380 (= lt!2051754 lt!2051756)))

(declare-fun lt!2051753 () List!57567)

(declare-fun lt!2051751 () List!57567)

(assert (=> d!1599380 (isPrefix!5244 lt!2051753 lt!2051751)))

(assert (=> d!1599380 (= lt!2051756 (lemmaIsPrefixRefl!3568 lt!2051753 lt!2051751))))

(assert (=> d!1599380 (= lt!2051751 (list!18365 input!1342))))

(assert (=> d!1599380 (= lt!2051753 (list!18365 input!1342))))

(assert (=> d!1599380 (rulesValidInductive!3296 thiss!15247 (t!368628 (t!368628 (t!368628 rulesArg!259))))))

(assert (=> d!1599380 (= (maxPrefixZipperSequenceV2!704 thiss!15247 (t!368628 (t!368628 (t!368628 rulesArg!259))) input!1342 totalInput!464) lt!2051755)))

(declare-fun b!4968725 () Bool)

(assert (=> b!4968725 (= e!3105615 (= (list!18365 (_2!34386 (get!19941 lt!2051755))) (_2!34385 (get!19940 (maxPrefix!4660 thiss!15247 (t!368628 (t!368628 (t!368628 rulesArg!259))) (list!18365 input!1342))))))))

(declare-fun b!4968726 () Bool)

(assert (=> b!4968726 (= e!3105611 (= (list!18365 (_2!34386 (get!19941 lt!2051755))) (_2!34385 (get!19940 (maxPrefixZipper!786 thiss!15247 (t!368628 (t!368628 (t!368628 rulesArg!259))) (list!18365 input!1342))))))))

(declare-fun b!4968727 () Bool)

(assert (=> b!4968727 (= e!3105614 call!346516)))

(declare-fun b!4968728 () Bool)

(assert (=> b!4968728 (= e!3105610 e!3105612)))

(declare-fun res!2120903 () Bool)

(assert (=> b!4968728 (=> res!2120903 e!3105612)))

(assert (=> b!4968728 (= res!2120903 (not (isDefined!11363 lt!2051755)))))

(assert (= (and d!1599380 c!847820) b!4968727))

(assert (= (and d!1599380 (not c!847820)) b!4968723))

(assert (= (or b!4968727 b!4968723) bm!346511))

(assert (= (and d!1599380 res!2120905) b!4968721))

(assert (= (and b!4968721 (not res!2120902)) b!4968724))

(assert (= (and b!4968724 res!2120901) b!4968726))

(assert (= (and b!4968721 res!2120904) b!4968728))

(assert (= (and b!4968728 (not res!2120903)) b!4968722))

(assert (= (and b!4968722 res!2120906) b!4968725))

(declare-fun m!5995632 () Bool)

(assert (=> b!4968728 m!5995632))

(declare-fun m!5995634 () Bool)

(assert (=> bm!346511 m!5995634))

(assert (=> b!4968726 m!5993376))

(assert (=> b!4968726 m!5993376))

(assert (=> b!4968726 m!5994984))

(assert (=> b!4968726 m!5994984))

(declare-fun m!5995636 () Bool)

(assert (=> b!4968726 m!5995636))

(declare-fun m!5995638 () Bool)

(assert (=> b!4968726 m!5995638))

(declare-fun m!5995640 () Bool)

(assert (=> b!4968726 m!5995640))

(assert (=> b!4968721 m!5995632))

(assert (=> b!4968722 m!5995640))

(assert (=> b!4968722 m!5993376))

(assert (=> b!4968722 m!5993376))

(assert (=> b!4968722 m!5995068))

(assert (=> b!4968722 m!5995068))

(declare-fun m!5995642 () Bool)

(assert (=> b!4968722 m!5995642))

(assert (=> b!4968725 m!5993376))

(assert (=> b!4968725 m!5993376))

(assert (=> b!4968725 m!5995068))

(assert (=> b!4968725 m!5995638))

(assert (=> b!4968725 m!5995068))

(assert (=> b!4968725 m!5995642))

(assert (=> b!4968725 m!5995640))

(assert (=> b!4968724 m!5995640))

(assert (=> b!4968724 m!5993376))

(assert (=> b!4968724 m!5993376))

(assert (=> b!4968724 m!5994984))

(assert (=> b!4968724 m!5994984))

(assert (=> b!4968724 m!5995636))

(declare-fun m!5995644 () Bool)

(assert (=> b!4968723 m!5995644))

(declare-fun m!5995646 () Bool)

(assert (=> d!1599380 m!5995646))

(assert (=> d!1599380 m!5993376))

(assert (=> d!1599380 m!5993376))

(assert (=> d!1599380 m!5994984))

(assert (=> d!1599380 m!5995632))

(assert (=> d!1599380 m!5994984))

(declare-fun m!5995648 () Bool)

(assert (=> d!1599380 m!5995648))

(declare-fun m!5995650 () Bool)

(assert (=> d!1599380 m!5995650))

(assert (=> d!1599380 m!5995442))

(assert (=> b!4967864 d!1599380))

(assert (=> d!1598770 d!1598932))

(declare-fun d!1599382 () Bool)

(assert (=> d!1599382 (= (isEmpty!30938 (_1!34390 lt!2051184)) (is-Nil!57443 (_1!34390 lt!2051184)))))

(assert (=> d!1598770 d!1599382))

(declare-fun d!1599384 () Bool)

(declare-fun lt!2051777 () tuple2!62174)

(assert (=> d!1599384 (= lt!2051777 (findLongestMatch!1697 (regex!8393 (h!63892 rulesArg!259)) lt!2050949))))

(declare-datatypes ((List!57572 0))(
  ( (Nil!57448) (Cons!57448 (h!63896 Regex!13626) (t!368867 List!57572)) )
))
(declare-datatypes ((Context!6278 0))(
  ( (Context!6279 (exprs!3639 List!57572)) )
))
(declare-fun lt!2051772 () (Set Context!6278))

(declare-fun findLongestMatchZipper!21 ((Set Context!6278) List!57567) tuple2!62174)

(assert (=> d!1599384 (= lt!2051777 (findLongestMatchZipper!21 lt!2051772 lt!2050949))))

(declare-fun lt!2051776 () Unit!148361)

(declare-fun lt!2051775 () Unit!148361)

(assert (=> d!1599384 (= lt!2051776 lt!2051775)))

(declare-fun lt!2051773 () Int)

(assert (=> d!1599384 (= (sizeTr!361 lt!2050949 lt!2051773) (+ (size!38072 lt!2050949) lt!2051773))))

(assert (=> d!1599384 (= lt!2051775 (lemmaSizeTrEqualsSize!360 lt!2050949 lt!2051773))))

(assert (=> d!1599384 (= lt!2051773 0)))

(declare-fun lt!2051778 () Unit!148361)

(declare-fun lt!2051774 () Unit!148361)

(assert (=> d!1599384 (= lt!2051778 lt!2051774)))

(assert (=> d!1599384 (= (findLongestMatchZipper!21 lt!2051772 lt!2050949) (findLongestMatch!1697 (regex!8393 (h!63892 rulesArg!259)) lt!2050949))))

(declare-fun longestMatchSameAsRegex!18 (Regex!13626 (Set Context!6278) List!57567) Unit!148361)

(assert (=> d!1599384 (= lt!2051774 (longestMatchSameAsRegex!18 (regex!8393 (h!63892 rulesArg!259)) lt!2051772 lt!2050949))))

(declare-fun focus!347 (Regex!13626) (Set Context!6278))

(assert (=> d!1599384 (= lt!2051772 (focus!347 (regex!8393 (h!63892 rulesArg!259))))))

(assert (=> d!1599384 (validRegex!5969 (regex!8393 (h!63892 rulesArg!259)))))

(assert (=> d!1599384 (= (findLongestMatchWithZipper!94 (regex!8393 (h!63892 rulesArg!259)) lt!2050949) lt!2051777)))

(declare-fun bs!1183294 () Bool)

(assert (= bs!1183294 d!1599384))

(declare-fun m!5995652 () Bool)

(assert (=> bs!1183294 m!5995652))

(assert (=> bs!1183294 m!5994336))

(assert (=> bs!1183294 m!5993428))

(declare-fun m!5995654 () Bool)

(assert (=> bs!1183294 m!5995654))

(declare-fun m!5995656 () Bool)

(assert (=> bs!1183294 m!5995656))

(declare-fun m!5995658 () Bool)

(assert (=> bs!1183294 m!5995658))

(assert (=> bs!1183294 m!5993828))

(declare-fun m!5995660 () Bool)

(assert (=> bs!1183294 m!5995660))

(assert (=> d!1598770 d!1599384))

(assert (=> d!1598770 d!1598796))

(declare-fun d!1599386 () Bool)

(declare-fun lt!2051779 () Int)

(assert (=> d!1599386 (>= lt!2051779 0)))

(declare-fun e!3105616 () Int)

(assert (=> d!1599386 (= lt!2051779 e!3105616)))

(declare-fun c!847821 () Bool)

(assert (=> d!1599386 (= c!847821 (is-Nil!57443 (t!368627 (list!18365 totalInput!464))))))

(assert (=> d!1599386 (= (size!38072 (t!368627 (list!18365 totalInput!464))) lt!2051779)))

(declare-fun b!4968729 () Bool)

(assert (=> b!4968729 (= e!3105616 0)))

(declare-fun b!4968730 () Bool)

(assert (=> b!4968730 (= e!3105616 (+ 1 (size!38072 (t!368627 (t!368627 (list!18365 totalInput!464))))))))

(assert (= (and d!1599386 c!847821) b!4968729))

(assert (= (and d!1599386 (not c!847821)) b!4968730))

(declare-fun m!5995662 () Bool)

(assert (=> b!4968730 m!5995662))

(assert (=> b!4967619 d!1599386))

(declare-fun d!1599388 () Bool)

(assert (=> d!1599388 (= (inv!75071 (tag!9257 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (= (mod (str.len (value!268641 (tag!9257 (h!63892 (t!368628 (t!368628 rulesArg!259)))))) 2) 0))))

(assert (=> b!4968021 d!1599388))

(declare-fun d!1599390 () Bool)

(declare-fun res!2120907 () Bool)

(declare-fun e!3105617 () Bool)

(assert (=> d!1599390 (=> (not res!2120907) (not e!3105617))))

(assert (=> d!1599390 (= res!2120907 (semiInverseModEq!3700 (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259)))))))))

(assert (=> d!1599390 (= (inv!75076 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) e!3105617)))

(declare-fun b!4968731 () Bool)

(assert (=> b!4968731 (= e!3105617 (equivClasses!3548 (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259)))))))))

(assert (= (and d!1599390 res!2120907) b!4968731))

(declare-fun m!5995664 () Bool)

(assert (=> d!1599390 m!5995664))

(declare-fun m!5995666 () Bool)

(assert (=> b!4968731 m!5995666))

(assert (=> b!4968021 d!1599390))

(declare-fun b!4968732 () Bool)

(declare-fun e!3105621 () Bool)

(declare-fun lt!2051780 () Bool)

(declare-fun call!346517 () Bool)

(assert (=> b!4968732 (= e!3105621 (= lt!2051780 call!346517))))

(declare-fun b!4968733 () Bool)

(declare-fun res!2120910 () Bool)

(declare-fun e!3105618 () Bool)

(assert (=> b!4968733 (=> (not res!2120910) (not e!3105618))))

(assert (=> b!4968733 (= res!2120910 (isEmpty!30938 (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) lt!2051424 lt!2051424 (size!38072 lt!2051424))))))))

(declare-fun b!4968734 () Bool)

(assert (=> b!4968734 (= e!3105618 (= (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) lt!2051424 lt!2051424 (size!38072 lt!2051424)))) (c!847514 (regex!8393 (h!63892 (t!368628 rulesArg!259))))))))

(declare-fun b!4968735 () Bool)

(declare-fun e!3105620 () Bool)

(assert (=> b!4968735 (= e!3105620 (not lt!2051780))))

(declare-fun b!4968736 () Bool)

(declare-fun e!3105624 () Bool)

(assert (=> b!4968736 (= e!3105624 (matchR!6636 (derivativeStep!3922 (regex!8393 (h!63892 (t!368628 rulesArg!259))) (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) lt!2051424 lt!2051424 (size!38072 lt!2051424))))) (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) lt!2051424 lt!2051424 (size!38072 lt!2051424))))))))

(declare-fun bm!346512 () Bool)

(assert (=> bm!346512 (= call!346517 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) lt!2051424 lt!2051424 (size!38072 lt!2051424)))))))

(declare-fun b!4968737 () Bool)

(declare-fun res!2120908 () Bool)

(assert (=> b!4968737 (=> (not res!2120908) (not e!3105618))))

(assert (=> b!4968737 (= res!2120908 (not call!346517))))

(declare-fun b!4968738 () Bool)

(declare-fun e!3105622 () Bool)

(declare-fun e!3105623 () Bool)

(assert (=> b!4968738 (= e!3105622 e!3105623)))

(declare-fun res!2120909 () Bool)

(assert (=> b!4968738 (=> (not res!2120909) (not e!3105623))))

(assert (=> b!4968738 (= res!2120909 (not lt!2051780))))

(declare-fun b!4968739 () Bool)

(declare-fun res!2120911 () Bool)

(declare-fun e!3105619 () Bool)

(assert (=> b!4968739 (=> res!2120911 e!3105619)))

(assert (=> b!4968739 (= res!2120911 (not (isEmpty!30938 (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) lt!2051424 lt!2051424 (size!38072 lt!2051424)))))))))

(declare-fun b!4968740 () Bool)

(assert (=> b!4968740 (= e!3105624 (nullable!4620 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))))

(declare-fun b!4968741 () Bool)

(assert (=> b!4968741 (= e!3105619 (not (= (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) lt!2051424 lt!2051424 (size!38072 lt!2051424)))) (c!847514 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))))))

(declare-fun b!4968742 () Bool)

(declare-fun res!2120915 () Bool)

(assert (=> b!4968742 (=> res!2120915 e!3105622)))

(assert (=> b!4968742 (= res!2120915 e!3105618)))

(declare-fun res!2120913 () Bool)

(assert (=> b!4968742 (=> (not res!2120913) (not e!3105618))))

(assert (=> b!4968742 (= res!2120913 lt!2051780)))

(declare-fun b!4968743 () Bool)

(assert (=> b!4968743 (= e!3105621 e!3105620)))

(declare-fun c!847824 () Bool)

(assert (=> b!4968743 (= c!847824 (is-EmptyLang!13626 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))))

(declare-fun d!1599392 () Bool)

(assert (=> d!1599392 e!3105621))

(declare-fun c!847823 () Bool)

(assert (=> d!1599392 (= c!847823 (is-EmptyExpr!13626 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))))

(assert (=> d!1599392 (= lt!2051780 e!3105624)))

(declare-fun c!847822 () Bool)

(assert (=> d!1599392 (= c!847822 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) lt!2051424 lt!2051424 (size!38072 lt!2051424)))))))

(assert (=> d!1599392 (validRegex!5969 (regex!8393 (h!63892 (t!368628 rulesArg!259))))))

(assert (=> d!1599392 (= (matchR!6636 (regex!8393 (h!63892 (t!368628 rulesArg!259))) (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) lt!2051424 lt!2051424 (size!38072 lt!2051424)))) lt!2051780)))

(declare-fun b!4968744 () Bool)

(declare-fun res!2120914 () Bool)

(assert (=> b!4968744 (=> res!2120914 e!3105622)))

(assert (=> b!4968744 (= res!2120914 (not (is-ElementMatch!13626 (regex!8393 (h!63892 (t!368628 rulesArg!259))))))))

(assert (=> b!4968744 (= e!3105620 e!3105622)))

(declare-fun b!4968745 () Bool)

(assert (=> b!4968745 (= e!3105623 e!3105619)))

(declare-fun res!2120912 () Bool)

(assert (=> b!4968745 (=> res!2120912 e!3105619)))

(assert (=> b!4968745 (= res!2120912 call!346517)))

(assert (= (and d!1599392 c!847822) b!4968740))

(assert (= (and d!1599392 (not c!847822)) b!4968736))

(assert (= (and d!1599392 c!847823) b!4968732))

(assert (= (and d!1599392 (not c!847823)) b!4968743))

(assert (= (and b!4968743 c!847824) b!4968735))

(assert (= (and b!4968743 (not c!847824)) b!4968744))

(assert (= (and b!4968744 (not res!2120914)) b!4968742))

(assert (= (and b!4968742 res!2120913) b!4968737))

(assert (= (and b!4968737 res!2120908) b!4968733))

(assert (= (and b!4968733 res!2120910) b!4968734))

(assert (= (and b!4968742 (not res!2120915)) b!4968738))

(assert (= (and b!4968738 res!2120909) b!4968745))

(assert (= (and b!4968745 (not res!2120912)) b!4968739))

(assert (= (and b!4968739 (not res!2120911)) b!4968741))

(assert (= (or b!4968732 b!4968737 b!4968745) bm!346512))

(declare-fun m!5995668 () Bool)

(assert (=> b!4968736 m!5995668))

(assert (=> b!4968736 m!5995668))

(declare-fun m!5995670 () Bool)

(assert (=> b!4968736 m!5995670))

(declare-fun m!5995672 () Bool)

(assert (=> b!4968736 m!5995672))

(assert (=> b!4968736 m!5995670))

(assert (=> b!4968736 m!5995672))

(declare-fun m!5995674 () Bool)

(assert (=> b!4968736 m!5995674))

(assert (=> b!4968741 m!5995668))

(assert (=> b!4968739 m!5995672))

(assert (=> b!4968739 m!5995672))

(declare-fun m!5995676 () Bool)

(assert (=> b!4968739 m!5995676))

(assert (=> b!4968734 m!5995668))

(assert (=> b!4968740 m!5995550))

(assert (=> b!4968733 m!5995672))

(assert (=> b!4968733 m!5995672))

(assert (=> b!4968733 m!5995676))

(assert (=> bm!346512 m!5994156))

(assert (=> d!1599392 m!5994156))

(assert (=> d!1599392 m!5995548))

(assert (=> b!4967853 d!1599392))

(declare-fun b!4968746 () Bool)

(declare-fun e!3105632 () Unit!148361)

(declare-fun Unit!148380 () Unit!148361)

(assert (=> b!4968746 (= e!3105632 Unit!148380)))

(declare-fun b!4968747 () Bool)

(declare-fun c!847827 () Bool)

(declare-fun call!346522 () Bool)

(assert (=> b!4968747 (= c!847827 call!346522)))

(declare-fun lt!2051797 () Unit!148361)

(declare-fun lt!2051787 () Unit!148361)

(assert (=> b!4968747 (= lt!2051797 lt!2051787)))

(assert (=> b!4968747 (= lt!2051424 Nil!57443)))

(declare-fun call!346525 () Unit!148361)

(assert (=> b!4968747 (= lt!2051787 call!346525)))

(declare-fun lt!2051807 () Unit!148361)

(declare-fun lt!2051792 () Unit!148361)

(assert (=> b!4968747 (= lt!2051807 lt!2051792)))

(declare-fun call!346519 () Bool)

(assert (=> b!4968747 call!346519))

(declare-fun call!346521 () Unit!148361)

(assert (=> b!4968747 (= lt!2051792 call!346521)))

(declare-fun e!3105628 () tuple2!62174)

(declare-fun e!3105629 () tuple2!62174)

(assert (=> b!4968747 (= e!3105628 e!3105629)))

(declare-fun b!4968748 () Bool)

(declare-fun e!3105630 () Bool)

(declare-fun e!3105627 () Bool)

(assert (=> b!4968748 (= e!3105630 e!3105627)))

(declare-fun res!2120916 () Bool)

(assert (=> b!4968748 (=> res!2120916 e!3105627)))

(declare-fun lt!2051799 () tuple2!62174)

(assert (=> b!4968748 (= res!2120916 (isEmpty!30938 (_1!34390 lt!2051799)))))

(declare-fun bm!346514 () Bool)

(declare-fun call!346520 () Regex!13626)

(declare-fun call!346524 () C!27502)

(assert (=> bm!346514 (= call!346520 (derivativeStep!3922 (regex!8393 (h!63892 (t!368628 rulesArg!259))) call!346524))))

(declare-fun b!4968749 () Bool)

(declare-fun e!3105625 () tuple2!62174)

(assert (=> b!4968749 (= e!3105625 e!3105628)))

(declare-fun c!847829 () Bool)

(assert (=> b!4968749 (= c!847829 (= (size!38072 Nil!57443) (size!38072 lt!2051424)))))

(declare-fun b!4968750 () Bool)

(assert (=> b!4968750 (= e!3105629 (tuple2!62175 Nil!57443 lt!2051424))))

(declare-fun b!4968751 () Bool)

(assert (=> b!4968751 (= e!3105625 (tuple2!62175 Nil!57443 lt!2051424))))

(declare-fun b!4968752 () Bool)

(declare-fun e!3105626 () tuple2!62174)

(assert (=> b!4968752 (= e!3105626 (tuple2!62175 Nil!57443 lt!2051424))))

(declare-fun bm!346515 () Bool)

(assert (=> bm!346515 (= call!346521 (lemmaIsPrefixRefl!3568 lt!2051424 lt!2051424))))

(declare-fun bm!346516 () Bool)

(assert (=> bm!346516 (= call!346519 (isPrefix!5244 lt!2051424 lt!2051424))))

(declare-fun bm!346517 () Bool)

(declare-fun call!346518 () List!57567)

(assert (=> bm!346517 (= call!346518 (tail!9801 lt!2051424))))

(declare-fun b!4968753 () Bool)

(declare-fun c!847825 () Bool)

(assert (=> b!4968753 (= c!847825 call!346522)))

(declare-fun lt!2051805 () Unit!148361)

(declare-fun lt!2051782 () Unit!148361)

(assert (=> b!4968753 (= lt!2051805 lt!2051782)))

(declare-fun lt!2051785 () C!27502)

(declare-fun lt!2051795 () List!57567)

(assert (=> b!4968753 (= (++!12532 (++!12532 Nil!57443 (Cons!57443 lt!2051785 Nil!57443)) lt!2051795) lt!2051424)))

(assert (=> b!4968753 (= lt!2051782 (lemmaMoveElementToOtherListKeepsConcatEq!1445 Nil!57443 lt!2051785 lt!2051795 lt!2051424))))

(assert (=> b!4968753 (= lt!2051795 (tail!9801 lt!2051424))))

(assert (=> b!4968753 (= lt!2051785 (head!10668 lt!2051424))))

(declare-fun lt!2051798 () Unit!148361)

(declare-fun lt!2051793 () Unit!148361)

(assert (=> b!4968753 (= lt!2051798 lt!2051793)))

(assert (=> b!4968753 (isPrefix!5244 (++!12532 Nil!57443 (Cons!57443 (head!10668 (getSuffix!3088 lt!2051424 Nil!57443)) Nil!57443)) lt!2051424)))

(assert (=> b!4968753 (= lt!2051793 (lemmaAddHeadSuffixToPrefixStillPrefix!835 Nil!57443 lt!2051424))))

(declare-fun lt!2051802 () Unit!148361)

(declare-fun lt!2051804 () Unit!148361)

(assert (=> b!4968753 (= lt!2051802 lt!2051804)))

(assert (=> b!4968753 (= lt!2051804 (lemmaAddHeadSuffixToPrefixStillPrefix!835 Nil!57443 lt!2051424))))

(declare-fun lt!2051789 () List!57567)

(assert (=> b!4968753 (= lt!2051789 (++!12532 Nil!57443 (Cons!57443 (head!10668 lt!2051424) Nil!57443)))))

(declare-fun lt!2051791 () Unit!148361)

(assert (=> b!4968753 (= lt!2051791 e!3105632)))

(declare-fun c!847830 () Bool)

(assert (=> b!4968753 (= c!847830 (= (size!38072 Nil!57443) (size!38072 lt!2051424)))))

(declare-fun lt!2051790 () Unit!148361)

(declare-fun lt!2051808 () Unit!148361)

(assert (=> b!4968753 (= lt!2051790 lt!2051808)))

(assert (=> b!4968753 (<= (size!38072 Nil!57443) (size!38072 lt!2051424))))

(assert (=> b!4968753 (= lt!2051808 (lemmaIsPrefixThenSmallerEqSize!761 Nil!57443 lt!2051424))))

(declare-fun e!3105631 () tuple2!62174)

(assert (=> b!4968753 (= e!3105628 e!3105631)))

(declare-fun b!4968754 () Bool)

(declare-fun lt!2051794 () tuple2!62174)

(assert (=> b!4968754 (= e!3105626 lt!2051794)))

(declare-fun b!4968755 () Bool)

(assert (=> b!4968755 (= e!3105629 (tuple2!62175 Nil!57443 Nil!57443))))

(declare-fun b!4968756 () Bool)

(declare-fun Unit!148381 () Unit!148361)

(assert (=> b!4968756 (= e!3105632 Unit!148381)))

(declare-fun lt!2051784 () Unit!148361)

(assert (=> b!4968756 (= lt!2051784 call!346521)))

(assert (=> b!4968756 call!346519))

(declare-fun lt!2051803 () Unit!148361)

(assert (=> b!4968756 (= lt!2051803 lt!2051784)))

(declare-fun lt!2051796 () Unit!148361)

(assert (=> b!4968756 (= lt!2051796 call!346525)))

(assert (=> b!4968756 (= lt!2051424 Nil!57443)))

(declare-fun lt!2051786 () Unit!148361)

(assert (=> b!4968756 (= lt!2051786 lt!2051796)))

(assert (=> b!4968756 false))

(declare-fun bm!346518 () Bool)

(assert (=> bm!346518 (= call!346522 (nullable!4620 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))))

(declare-fun b!4968757 () Bool)

(assert (=> b!4968757 (= e!3105631 e!3105626)))

(declare-fun call!346523 () tuple2!62174)

(assert (=> b!4968757 (= lt!2051794 call!346523)))

(declare-fun c!847828 () Bool)

(assert (=> b!4968757 (= c!847828 (isEmpty!30938 (_1!34390 lt!2051794)))))

(declare-fun d!1599394 () Bool)

(assert (=> d!1599394 e!3105630))

(declare-fun res!2120917 () Bool)

(assert (=> d!1599394 (=> (not res!2120917) (not e!3105630))))

(assert (=> d!1599394 (= res!2120917 (= (++!12532 (_1!34390 lt!2051799) (_2!34390 lt!2051799)) lt!2051424))))

(assert (=> d!1599394 (= lt!2051799 e!3105625)))

(declare-fun c!847826 () Bool)

(assert (=> d!1599394 (= c!847826 (lostCause!1133 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))))

(declare-fun lt!2051788 () Unit!148361)

(declare-fun Unit!148382 () Unit!148361)

(assert (=> d!1599394 (= lt!2051788 Unit!148382)))

(assert (=> d!1599394 (= (getSuffix!3088 lt!2051424 Nil!57443) lt!2051424)))

(declare-fun lt!2051781 () Unit!148361)

(declare-fun lt!2051801 () Unit!148361)

(assert (=> d!1599394 (= lt!2051781 lt!2051801)))

(declare-fun lt!2051806 () List!57567)

(assert (=> d!1599394 (= lt!2051424 lt!2051806)))

(assert (=> d!1599394 (= lt!2051801 (lemmaSamePrefixThenSameSuffix!2501 Nil!57443 lt!2051424 Nil!57443 lt!2051806 lt!2051424))))

(assert (=> d!1599394 (= lt!2051806 (getSuffix!3088 lt!2051424 Nil!57443))))

(declare-fun lt!2051783 () Unit!148361)

(declare-fun lt!2051800 () Unit!148361)

(assert (=> d!1599394 (= lt!2051783 lt!2051800)))

(assert (=> d!1599394 (isPrefix!5244 Nil!57443 (++!12532 Nil!57443 lt!2051424))))

(assert (=> d!1599394 (= lt!2051800 (lemmaConcatTwoListThenFirstIsPrefix!3347 Nil!57443 lt!2051424))))

(assert (=> d!1599394 (validRegex!5969 (regex!8393 (h!63892 (t!368628 rulesArg!259))))))

(assert (=> d!1599394 (= (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) lt!2051424 lt!2051424 (size!38072 lt!2051424)) lt!2051799)))

(declare-fun bm!346513 () Bool)

(assert (=> bm!346513 (= call!346525 (lemmaIsPrefixSameLengthThenSameList!1208 lt!2051424 Nil!57443 lt!2051424))))

(declare-fun bm!346519 () Bool)

(assert (=> bm!346519 (= call!346523 (findLongestMatchInner!1855 call!346520 lt!2051789 (+ (size!38072 Nil!57443) 1) call!346518 lt!2051424 (size!38072 lt!2051424)))))

(declare-fun bm!346520 () Bool)

(assert (=> bm!346520 (= call!346524 (head!10668 lt!2051424))))

(declare-fun b!4968758 () Bool)

(assert (=> b!4968758 (= e!3105631 call!346523)))

(declare-fun b!4968759 () Bool)

(assert (=> b!4968759 (= e!3105627 (>= (size!38072 (_1!34390 lt!2051799)) (size!38072 Nil!57443)))))

(assert (= (and d!1599394 c!847826) b!4968751))

(assert (= (and d!1599394 (not c!847826)) b!4968749))

(assert (= (and b!4968749 c!847829) b!4968747))

(assert (= (and b!4968749 (not c!847829)) b!4968753))

(assert (= (and b!4968747 c!847827) b!4968755))

(assert (= (and b!4968747 (not c!847827)) b!4968750))

(assert (= (and b!4968753 c!847830) b!4968756))

(assert (= (and b!4968753 (not c!847830)) b!4968746))

(assert (= (and b!4968753 c!847825) b!4968757))

(assert (= (and b!4968753 (not c!847825)) b!4968758))

(assert (= (and b!4968757 c!847828) b!4968752))

(assert (= (and b!4968757 (not c!847828)) b!4968754))

(assert (= (or b!4968757 b!4968758) bm!346520))

(assert (= (or b!4968757 b!4968758) bm!346517))

(assert (= (or b!4968757 b!4968758) bm!346514))

(assert (= (or b!4968757 b!4968758) bm!346519))

(assert (= (or b!4968747 b!4968756) bm!346515))

(assert (= (or b!4968747 b!4968756) bm!346513))

(assert (= (or b!4968747 b!4968753) bm!346518))

(assert (= (or b!4968747 b!4968756) bm!346516))

(assert (= (and d!1599394 res!2120917) b!4968748))

(assert (= (and b!4968748 (not res!2120916)) b!4968759))

(declare-fun m!5995678 () Bool)

(assert (=> b!4968759 m!5995678))

(assert (=> b!4968759 m!5993574))

(declare-fun m!5995680 () Bool)

(assert (=> b!4968757 m!5995680))

(declare-fun m!5995682 () Bool)

(assert (=> b!4968748 m!5995682))

(declare-fun m!5995684 () Bool)

(assert (=> b!4968753 m!5995684))

(assert (=> b!4968753 m!5995684))

(declare-fun m!5995686 () Bool)

(assert (=> b!4968753 m!5995686))

(declare-fun m!5995688 () Bool)

(assert (=> b!4968753 m!5995688))

(assert (=> b!4968753 m!5994148))

(declare-fun m!5995690 () Bool)

(assert (=> b!4968753 m!5995690))

(declare-fun m!5995692 () Bool)

(assert (=> b!4968753 m!5995692))

(declare-fun m!5995694 () Bool)

(assert (=> b!4968753 m!5995694))

(declare-fun m!5995696 () Bool)

(assert (=> b!4968753 m!5995696))

(assert (=> b!4968753 m!5995690))

(declare-fun m!5995698 () Bool)

(assert (=> b!4968753 m!5995698))

(declare-fun m!5995700 () Bool)

(assert (=> b!4968753 m!5995700))

(declare-fun m!5995702 () Bool)

(assert (=> b!4968753 m!5995702))

(assert (=> b!4968753 m!5993574))

(declare-fun m!5995704 () Bool)

(assert (=> b!4968753 m!5995704))

(assert (=> b!4968753 m!5995688))

(declare-fun m!5995706 () Bool)

(assert (=> b!4968753 m!5995706))

(declare-fun m!5995708 () Bool)

(assert (=> bm!346516 m!5995708))

(assert (=> bm!346520 m!5995700))

(assert (=> bm!346519 m!5994148))

(declare-fun m!5995710 () Bool)

(assert (=> bm!346519 m!5995710))

(declare-fun m!5995712 () Bool)

(assert (=> bm!346515 m!5995712))

(declare-fun m!5995714 () Bool)

(assert (=> bm!346514 m!5995714))

(assert (=> bm!346517 m!5995694))

(declare-fun m!5995716 () Bool)

(assert (=> bm!346513 m!5995716))

(assert (=> bm!346518 m!5995550))

(declare-fun m!5995718 () Bool)

(assert (=> d!1599394 m!5995718))

(declare-fun m!5995720 () Bool)

(assert (=> d!1599394 m!5995720))

(declare-fun m!5995722 () Bool)

(assert (=> d!1599394 m!5995722))

(assert (=> d!1599394 m!5995688))

(assert (=> d!1599394 m!5995718))

(assert (=> d!1599394 m!5995548))

(declare-fun m!5995724 () Bool)

(assert (=> d!1599394 m!5995724))

(declare-fun m!5995726 () Bool)

(assert (=> d!1599394 m!5995726))

(declare-fun m!5995728 () Bool)

(assert (=> d!1599394 m!5995728))

(assert (=> b!4967853 d!1599394))

(assert (=> b!4967853 d!1598850))

(declare-fun d!1599396 () Bool)

(declare-fun lt!2051809 () Int)

(assert (=> d!1599396 (>= lt!2051809 0)))

(declare-fun e!3105633 () Int)

(assert (=> d!1599396 (= lt!2051809 e!3105633)))

(declare-fun c!847831 () Bool)

(assert (=> d!1599396 (= c!847831 (is-Nil!57443 lt!2051424))))

(assert (=> d!1599396 (= (size!38072 lt!2051424) lt!2051809)))

(declare-fun b!4968760 () Bool)

(assert (=> b!4968760 (= e!3105633 0)))

(declare-fun b!4968761 () Bool)

(assert (=> b!4968761 (= e!3105633 (+ 1 (size!38072 (t!368627 lt!2051424))))))

(assert (= (and d!1599396 c!847831) b!4968760))

(assert (= (and d!1599396 (not c!847831)) b!4968761))

(declare-fun m!5995730 () Bool)

(assert (=> b!4968761 m!5995730))

(assert (=> b!4967853 d!1599396))

(declare-fun d!1599398 () Bool)

(assert (=> d!1599398 (= (inv!75082 (xs!18471 (right!42230 (c!847515 input!1342)))) (<= (size!38072 (innerList!15233 (xs!18471 (right!42230 (c!847515 input!1342))))) 2147483647))))

(declare-fun bs!1183295 () Bool)

(assert (= bs!1183295 d!1599398))

(declare-fun m!5995732 () Bool)

(assert (=> bs!1183295 m!5995732))

(assert (=> b!4968039 d!1599398))

(declare-fun d!1599400 () Bool)

(assert (=> d!1599400 (= (isEmpty!30935 lt!2051210) (not (is-Some!14448 lt!2051210)))))

(assert (=> d!1598800 d!1599400))

(declare-fun d!1599402 () Bool)

(assert (=> d!1599402 (= (isEmpty!30938 (_1!34390 lt!2051207)) (is-Nil!57443 (_1!34390 lt!2051207)))))

(assert (=> d!1598800 d!1599402))

(declare-fun d!1599404 () Bool)

(declare-fun lt!2051817 () tuple2!62174)

(assert (=> d!1599404 (= (++!12532 (_1!34390 lt!2051817) (_2!34390 lt!2051817)) (list!18365 input!1342))))

(assert (=> d!1599404 (= lt!2051817 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 0 (list!18365 input!1342) (list!18365 input!1342) (sizeTr!361 (list!18365 input!1342) 0)))))

(declare-fun lt!2051813 () Unit!148361)

(declare-fun lt!2051816 () Unit!148361)

(assert (=> d!1599404 (= lt!2051813 lt!2051816)))

(declare-fun lt!2051814 () List!57567)

(declare-fun lt!2051811 () Int)

(assert (=> d!1599404 (= (sizeTr!361 lt!2051814 lt!2051811) (+ (size!38072 lt!2051814) lt!2051811))))

(assert (=> d!1599404 (= lt!2051816 (lemmaSizeTrEqualsSize!360 lt!2051814 lt!2051811))))

(assert (=> d!1599404 (= lt!2051811 0)))

(assert (=> d!1599404 (= lt!2051814 Nil!57443)))

(declare-fun lt!2051810 () Unit!148361)

(declare-fun lt!2051812 () Unit!148361)

(assert (=> d!1599404 (= lt!2051810 lt!2051812)))

(declare-fun lt!2051815 () Int)

(assert (=> d!1599404 (= (sizeTr!361 (list!18365 input!1342) lt!2051815) (+ (size!38072 (list!18365 input!1342)) lt!2051815))))

(assert (=> d!1599404 (= lt!2051812 (lemmaSizeTrEqualsSize!360 (list!18365 input!1342) lt!2051815))))

(assert (=> d!1599404 (= lt!2051815 0)))

(assert (=> d!1599404 (validRegex!5969 (regex!8393 (h!63892 rulesArg!259)))))

(assert (=> d!1599404 (= (findLongestMatch!1697 (regex!8393 (h!63892 rulesArg!259)) (list!18365 input!1342)) lt!2051817)))

(declare-fun bs!1183296 () Bool)

(assert (= bs!1183296 d!1599404))

(assert (=> bs!1183296 m!5993376))

(declare-fun m!5995734 () Bool)

(assert (=> bs!1183296 m!5995734))

(declare-fun m!5995736 () Bool)

(assert (=> bs!1183296 m!5995736))

(declare-fun m!5995738 () Bool)

(assert (=> bs!1183296 m!5995738))

(assert (=> bs!1183296 m!5993376))

(declare-fun m!5995740 () Bool)

(assert (=> bs!1183296 m!5995740))

(assert (=> bs!1183296 m!5993376))

(declare-fun m!5995742 () Bool)

(assert (=> bs!1183296 m!5995742))

(declare-fun m!5995744 () Bool)

(assert (=> bs!1183296 m!5995744))

(declare-fun m!5995746 () Bool)

(assert (=> bs!1183296 m!5995746))

(assert (=> bs!1183296 m!5993376))

(assert (=> bs!1183296 m!5993376))

(assert (=> bs!1183296 m!5995734))

(declare-fun m!5995748 () Bool)

(assert (=> bs!1183296 m!5995748))

(assert (=> bs!1183296 m!5993828))

(assert (=> bs!1183296 m!5993376))

(assert (=> bs!1183296 m!5993850))

(assert (=> d!1598800 d!1599404))

(assert (=> d!1598800 d!1598796))

(declare-fun d!1599406 () Bool)

(assert (=> d!1599406 (= (inv!75082 (xs!18471 (right!42230 (c!847515 totalInput!464)))) (<= (size!38072 (innerList!15233 (xs!18471 (right!42230 (c!847515 totalInput!464))))) 2147483647))))

(declare-fun bs!1183297 () Bool)

(assert (= bs!1183297 d!1599406))

(declare-fun m!5995750 () Bool)

(assert (=> bs!1183297 m!5995750))

(assert (=> b!4968018 d!1599406))

(assert (=> b!4967955 d!1599304))

(assert (=> b!4967955 d!1599306))

(declare-fun d!1599408 () Bool)

(declare-fun c!847832 () Bool)

(assert (=> d!1599408 (= c!847832 (is-Node!15145 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))))))))

(declare-fun e!3105634 () Bool)

(assert (=> d!1599408 (= (inv!75075 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))))) e!3105634)))

(declare-fun b!4968762 () Bool)

(assert (=> b!4968762 (= e!3105634 (inv!75080 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))))))))

(declare-fun b!4968763 () Bool)

(declare-fun e!3105635 () Bool)

(assert (=> b!4968763 (= e!3105634 e!3105635)))

(declare-fun res!2120918 () Bool)

(assert (=> b!4968763 (= res!2120918 (not (is-Leaf!25167 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))))))))))

(assert (=> b!4968763 (=> res!2120918 e!3105635)))

(declare-fun b!4968764 () Bool)

(assert (=> b!4968764 (= e!3105635 (inv!75081 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))))))))

(assert (= (and d!1599408 c!847832) b!4968762))

(assert (= (and d!1599408 (not c!847832)) b!4968763))

(assert (= (and b!4968763 (not res!2120918)) b!4968764))

(declare-fun m!5995752 () Bool)

(assert (=> b!4968762 m!5995752))

(declare-fun m!5995754 () Bool)

(assert (=> b!4968764 m!5995754))

(assert (=> b!4968043 d!1599408))

(declare-fun d!1599410 () Bool)

(declare-fun lt!2051818 () Int)

(assert (=> d!1599410 (>= lt!2051818 0)))

(declare-fun e!3105636 () Int)

(assert (=> d!1599410 (= lt!2051818 e!3105636)))

(declare-fun c!847833 () Bool)

(assert (=> d!1599410 (= c!847833 (is-Nil!57443 (list!18369 (xs!18471 (c!847515 input!1342)))))))

(assert (=> d!1599410 (= (size!38072 (list!18369 (xs!18471 (c!847515 input!1342)))) lt!2051818)))

(declare-fun b!4968765 () Bool)

(assert (=> b!4968765 (= e!3105636 0)))

(declare-fun b!4968766 () Bool)

(assert (=> b!4968766 (= e!3105636 (+ 1 (size!38072 (t!368627 (list!18369 (xs!18471 (c!847515 input!1342)))))))))

(assert (= (and d!1599410 c!847833) b!4968765))

(assert (= (and d!1599410 (not c!847833)) b!4968766))

(declare-fun m!5995756 () Bool)

(assert (=> b!4968766 m!5995756))

(assert (=> b!4967992 d!1599410))

(assert (=> b!4967992 d!1599300))

(assert (=> b!4967666 d!1599312))

(declare-fun d!1599412 () Bool)

(declare-fun res!2120919 () Bool)

(declare-fun e!3105637 () Bool)

(assert (=> d!1599412 (=> (not res!2120919) (not e!3105637))))

(assert (=> d!1599412 (= res!2120919 (<= (size!38072 (list!18369 (xs!18471 (right!42230 (c!847515 input!1342))))) 512))))

(assert (=> d!1599412 (= (inv!75081 (right!42230 (c!847515 input!1342))) e!3105637)))

(declare-fun b!4968767 () Bool)

(declare-fun res!2120920 () Bool)

(assert (=> b!4968767 (=> (not res!2120920) (not e!3105637))))

(assert (=> b!4968767 (= res!2120920 (= (csize!30521 (right!42230 (c!847515 input!1342))) (size!38072 (list!18369 (xs!18471 (right!42230 (c!847515 input!1342)))))))))

(declare-fun b!4968768 () Bool)

(assert (=> b!4968768 (= e!3105637 (and (> (csize!30521 (right!42230 (c!847515 input!1342))) 0) (<= (csize!30521 (right!42230 (c!847515 input!1342))) 512)))))

(assert (= (and d!1599412 res!2120919) b!4968767))

(assert (= (and b!4968767 res!2120920) b!4968768))

(assert (=> d!1599412 m!5995330))

(assert (=> d!1599412 m!5995330))

(declare-fun m!5995758 () Bool)

(assert (=> d!1599412 m!5995758))

(assert (=> b!4968767 m!5995330))

(assert (=> b!4968767 m!5995330))

(assert (=> b!4968767 m!5995758))

(assert (=> b!4967829 d!1599412))

(declare-fun d!1599414 () Bool)

(declare-fun lt!2051819 () Int)

(assert (=> d!1599414 (>= lt!2051819 0)))

(declare-fun e!3105638 () Int)

(assert (=> d!1599414 (= lt!2051819 e!3105638)))

(declare-fun c!847834 () Bool)

(assert (=> d!1599414 (= c!847834 (is-Nil!57443 (innerList!15233 (xs!18471 (c!847515 input!1342)))))))

(assert (=> d!1599414 (= (size!38072 (innerList!15233 (xs!18471 (c!847515 input!1342)))) lt!2051819)))

(declare-fun b!4968769 () Bool)

(assert (=> b!4968769 (= e!3105638 0)))

(declare-fun b!4968770 () Bool)

(assert (=> b!4968770 (= e!3105638 (+ 1 (size!38072 (t!368627 (innerList!15233 (xs!18471 (c!847515 input!1342)))))))))

(assert (= (and d!1599414 c!847834) b!4968769))

(assert (= (and d!1599414 (not c!847834)) b!4968770))

(declare-fun m!5995760 () Bool)

(assert (=> b!4968770 m!5995760))

(assert (=> d!1598928 d!1599414))

(declare-fun b!4968774 () Bool)

(declare-fun e!3105641 () Bool)

(assert (=> b!4968774 (= e!3105641 (>= (size!38072 (tail!9801 (tail!9801 lt!2050949))) (size!38072 (tail!9801 (tail!9801 lt!2050949)))))))

(declare-fun b!4968771 () Bool)

(declare-fun e!3105640 () Bool)

(declare-fun e!3105639 () Bool)

(assert (=> b!4968771 (= e!3105640 e!3105639)))

(declare-fun res!2120923 () Bool)

(assert (=> b!4968771 (=> (not res!2120923) (not e!3105639))))

(assert (=> b!4968771 (= res!2120923 (not (is-Nil!57443 (tail!9801 (tail!9801 lt!2050949)))))))

(declare-fun b!4968773 () Bool)

(assert (=> b!4968773 (= e!3105639 (isPrefix!5244 (tail!9801 (tail!9801 (tail!9801 lt!2050949))) (tail!9801 (tail!9801 (tail!9801 lt!2050949)))))))

(declare-fun d!1599416 () Bool)

(assert (=> d!1599416 e!3105641))

(declare-fun res!2120922 () Bool)

(assert (=> d!1599416 (=> res!2120922 e!3105641)))

(declare-fun lt!2051820 () Bool)

(assert (=> d!1599416 (= res!2120922 (not lt!2051820))))

(assert (=> d!1599416 (= lt!2051820 e!3105640)))

(declare-fun res!2120921 () Bool)

(assert (=> d!1599416 (=> res!2120921 e!3105640)))

(assert (=> d!1599416 (= res!2120921 (is-Nil!57443 (tail!9801 (tail!9801 lt!2050949))))))

(assert (=> d!1599416 (= (isPrefix!5244 (tail!9801 (tail!9801 lt!2050949)) (tail!9801 (tail!9801 lt!2050949))) lt!2051820)))

(declare-fun b!4968772 () Bool)

(declare-fun res!2120924 () Bool)

(assert (=> b!4968772 (=> (not res!2120924) (not e!3105639))))

(assert (=> b!4968772 (= res!2120924 (= (head!10668 (tail!9801 (tail!9801 lt!2050949))) (head!10668 (tail!9801 (tail!9801 lt!2050949)))))))

(assert (= (and d!1599416 (not res!2120921)) b!4968771))

(assert (= (and b!4968771 res!2120923) b!4968772))

(assert (= (and b!4968772 res!2120924) b!4968773))

(assert (= (and d!1599416 (not res!2120922)) b!4968774))

(assert (=> b!4968774 m!5993792))

(declare-fun m!5995762 () Bool)

(assert (=> b!4968774 m!5995762))

(assert (=> b!4968774 m!5993792))

(assert (=> b!4968774 m!5995762))

(assert (=> b!4968773 m!5993792))

(declare-fun m!5995764 () Bool)

(assert (=> b!4968773 m!5995764))

(assert (=> b!4968773 m!5993792))

(assert (=> b!4968773 m!5995764))

(assert (=> b!4968773 m!5995764))

(assert (=> b!4968773 m!5995764))

(declare-fun m!5995766 () Bool)

(assert (=> b!4968773 m!5995766))

(assert (=> b!4968772 m!5993792))

(declare-fun m!5995768 () Bool)

(assert (=> b!4968772 m!5995768))

(assert (=> b!4968772 m!5993792))

(assert (=> b!4968772 m!5995768))

(assert (=> b!4967554 d!1599416))

(declare-fun d!1599418 () Bool)

(assert (=> d!1599418 (= (tail!9801 (tail!9801 lt!2050949)) (t!368627 (tail!9801 lt!2050949)))))

(assert (=> b!4967554 d!1599418))

(declare-fun d!1599420 () Bool)

(assert (=> d!1599420 (= (list!18365 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115)))) (list!18367 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115))))))))

(declare-fun bs!1183298 () Bool)

(assert (= bs!1183298 d!1599420))

(declare-fun m!5995770 () Bool)

(assert (=> bs!1183298 m!5995770))

(assert (=> bs!1183218 d!1599420))

(assert (=> bs!1183218 d!1598842))

(declare-fun d!1599422 () Bool)

(declare-fun res!2120925 () Bool)

(declare-fun e!3105642 () Bool)

(assert (=> d!1599422 (=> res!2120925 e!3105642)))

(assert (=> d!1599422 (= res!2120925 (is-Nil!57444 (t!368628 rulesArg!259)))))

(assert (=> d!1599422 (= (forall!13329 (t!368628 rulesArg!259) lambda!247376) e!3105642)))

(declare-fun b!4968775 () Bool)

(declare-fun e!3105643 () Bool)

(assert (=> b!4968775 (= e!3105642 e!3105643)))

(declare-fun res!2120926 () Bool)

(assert (=> b!4968775 (=> (not res!2120926) (not e!3105643))))

(assert (=> b!4968775 (= res!2120926 (dynLambda!23169 lambda!247376 (h!63892 (t!368628 rulesArg!259))))))

(declare-fun b!4968776 () Bool)

(assert (=> b!4968776 (= e!3105643 (forall!13329 (t!368628 (t!368628 rulesArg!259)) lambda!247376))))

(assert (= (and d!1599422 (not res!2120925)) b!4968775))

(assert (= (and b!4968775 res!2120926) b!4968776))

(declare-fun b_lambda!196933 () Bool)

(assert (=> (not b_lambda!196933) (not b!4968775)))

(declare-fun m!5995772 () Bool)

(assert (=> b!4968775 m!5995772))

(declare-fun m!5995774 () Bool)

(assert (=> b!4968776 m!5995774))

(assert (=> d!1598832 d!1599422))

(declare-fun d!1599424 () Bool)

(assert (=> d!1599424 (= (height!2013 (left!41900 (c!847515 totalInput!464))) (ite (is-Empty!15145 (left!41900 (c!847515 totalInput!464))) 0 (ite (is-Leaf!25167 (left!41900 (c!847515 totalInput!464))) 1 (cheight!15356 (left!41900 (c!847515 totalInput!464))))))))

(assert (=> b!4967562 d!1599424))

(declare-fun d!1599426 () Bool)

(assert (=> d!1599426 (= (height!2013 (right!42230 (c!847515 totalInput!464))) (ite (is-Empty!15145 (right!42230 (c!847515 totalInput!464))) 0 (ite (is-Leaf!25167 (right!42230 (c!847515 totalInput!464))) 1 (cheight!15356 (right!42230 (c!847515 totalInput!464))))))))

(assert (=> b!4967562 d!1599426))

(declare-fun bs!1183299 () Bool)

(declare-fun d!1599428 () Bool)

(assert (= bs!1183299 (and d!1599428 b!4967347)))

(declare-fun lambda!247400 () Int)

(assert (=> bs!1183299 (= lambda!247400 lambda!247368)))

(declare-fun bs!1183300 () Bool)

(assert (= bs!1183300 (and d!1599428 b!4967852)))

(assert (=> bs!1183300 (= (and (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))))) (= lambda!247400 lambda!247380))))

(declare-fun bs!1183301 () Bool)

(assert (= bs!1183301 (and d!1599428 d!1598926)))

(assert (=> bs!1183301 (= lambda!247400 lambda!247383)))

(declare-fun bs!1183302 () Bool)

(assert (= bs!1183302 (and d!1599428 b!4968581)))

(assert (=> bs!1183302 (= (and (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259)))))) (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))))) (= lambda!247400 lambda!247395))))

(declare-fun b!4968781 () Bool)

(declare-fun e!3105646 () Bool)

(assert (=> b!4968781 (= e!3105646 true)))

(assert (=> d!1599428 e!3105646))

(assert (= d!1599428 b!4968781))

(assert (=> b!4968781 (< (dynLambda!23159 order!26203 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) (dynLambda!23160 order!26205 lambda!247400))))

(assert (=> b!4968781 (< (dynLambda!23161 order!26207 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) (dynLambda!23160 order!26205 lambda!247400))))

(assert (=> d!1599428 (= (list!18365 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051207))))) (list!18365 (seqFromList!6036 (_1!34390 lt!2051207))))))

(declare-fun lt!2051823 () Unit!148361)

(assert (=> d!1599428 (= lt!2051823 (ForallOf!1227 lambda!247400 (seqFromList!6036 (_1!34390 lt!2051207))))))

(assert (=> d!1599428 (= (lemmaSemiInverse!2602 (transformation!8393 (h!63892 rulesArg!259)) (seqFromList!6036 (_1!34390 lt!2051207))) lt!2051823)))

(declare-fun b_lambda!196943 () Bool)

(assert (=> (not b_lambda!196943) (not d!1599428)))

(declare-fun t!368736 () Bool)

(declare-fun tb!260707 () Bool)

(assert (=> (and b!4967137 (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) t!368736) tb!260707))

(declare-fun e!3105647 () Bool)

(declare-fun tp!1393482 () Bool)

(declare-fun b!4968782 () Bool)

(assert (=> b!4968782 (= e!3105647 (and (inv!75075 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051207)))))) tp!1393482))))

(declare-fun result!325826 () Bool)

(assert (=> tb!260707 (= result!325826 (and (inv!75074 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051207))))) e!3105647))))

(assert (= tb!260707 b!4968782))

(declare-fun m!5995776 () Bool)

(assert (=> b!4968782 m!5995776))

(declare-fun m!5995778 () Bool)

(assert (=> tb!260707 m!5995778))

(assert (=> d!1599428 t!368736))

(declare-fun b_and!348283 () Bool)

(assert (= b_and!348277 (and (=> t!368736 result!325826) b_and!348283)))

(declare-fun t!368738 () Bool)

(declare-fun tb!260709 () Bool)

(assert (=> (and b!4967394 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) t!368738) tb!260709))

(declare-fun result!325828 () Bool)

(assert (= result!325828 result!325826))

(assert (=> d!1599428 t!368738))

(declare-fun b_and!348285 () Bool)

(assert (= b_and!348279 (and (=> t!368738 result!325828) b_and!348285)))

(declare-fun t!368740 () Bool)

(declare-fun tb!260711 () Bool)

(assert (=> (and b!4968022 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) t!368740) tb!260711))

(declare-fun result!325830 () Bool)

(assert (= result!325830 result!325826))

(assert (=> d!1599428 t!368740))

(declare-fun b_and!348287 () Bool)

(assert (= b_and!348281 (and (=> t!368740 result!325830) b_and!348287)))

(declare-fun b_lambda!196945 () Bool)

(assert (=> (not b_lambda!196945) (not d!1599428)))

(declare-fun t!368742 () Bool)

(declare-fun tb!260713 () Bool)

(assert (=> (and b!4967137 (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) t!368742) tb!260713))

(declare-fun result!325832 () Bool)

(assert (=> tb!260713 (= result!325832 (inv!21 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051207)))))))

(declare-fun m!5995780 () Bool)

(assert (=> tb!260713 m!5995780))

(assert (=> d!1599428 t!368742))

(declare-fun b_and!348289 () Bool)

(assert (= b_and!348271 (and (=> t!368742 result!325832) b_and!348289)))

(declare-fun t!368744 () Bool)

(declare-fun tb!260715 () Bool)

(assert (=> (and b!4967394 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) t!368744) tb!260715))

(declare-fun result!325834 () Bool)

(assert (= result!325834 result!325832))

(assert (=> d!1599428 t!368744))

(declare-fun b_and!348291 () Bool)

(assert (= b_and!348273 (and (=> t!368744 result!325834) b_and!348291)))

(declare-fun t!368746 () Bool)

(declare-fun tb!260717 () Bool)

(assert (=> (and b!4968022 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) t!368746) tb!260717))

(declare-fun result!325836 () Bool)

(assert (= result!325836 result!325832))

(assert (=> d!1599428 t!368746))

(declare-fun b_and!348293 () Bool)

(assert (= b_and!348275 (and (=> t!368746 result!325836) b_and!348293)))

(assert (=> d!1599428 m!5993864))

(declare-fun m!5995782 () Bool)

(assert (=> d!1599428 m!5995782))

(assert (=> d!1599428 m!5993864))

(declare-fun m!5995784 () Bool)

(assert (=> d!1599428 m!5995784))

(declare-fun m!5995786 () Bool)

(assert (=> d!1599428 m!5995786))

(declare-fun m!5995788 () Bool)

(assert (=> d!1599428 m!5995788))

(assert (=> d!1599428 m!5993864))

(declare-fun m!5995790 () Bool)

(assert (=> d!1599428 m!5995790))

(assert (=> d!1599428 m!5995782))

(assert (=> d!1599428 m!5995786))

(assert (=> b!4967599 d!1599428))

(declare-fun d!1599430 () Bool)

(assert (=> d!1599430 (= (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) (list!18365 input!1342) (list!18365 input!1342) (size!38072 (list!18365 input!1342))))) (is-Nil!57443 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) (list!18365 input!1342) (list!18365 input!1342) (size!38072 (list!18365 input!1342))))))))

(assert (=> b!4967599 d!1599430))

(declare-fun d!1599432 () Bool)

(assert (=> d!1599432 (= (seqFromList!6036 (_1!34390 lt!2051207)) (fromListB!2731 (_1!34390 lt!2051207)))))

(declare-fun bs!1183303 () Bool)

(assert (= bs!1183303 d!1599432))

(declare-fun m!5995792 () Bool)

(assert (=> bs!1183303 m!5995792))

(assert (=> b!4967599 d!1599432))

(assert (=> b!4967599 d!1598850))

(declare-fun d!1599434 () Bool)

(declare-fun e!3105649 () Bool)

(assert (=> d!1599434 e!3105649))

(declare-fun res!2120927 () Bool)

(assert (=> d!1599434 (=> res!2120927 e!3105649)))

(assert (=> d!1599434 (= res!2120927 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) (list!18365 input!1342) (list!18365 input!1342) (size!38072 (list!18365 input!1342))))))))

(declare-fun lt!2051824 () Unit!148361)

(assert (=> d!1599434 (= lt!2051824 (choose!36671 (regex!8393 (h!63892 rulesArg!259)) (list!18365 input!1342)))))

(assert (=> d!1599434 (validRegex!5969 (regex!8393 (h!63892 rulesArg!259)))))

(assert (=> d!1599434 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1816 (regex!8393 (h!63892 rulesArg!259)) (list!18365 input!1342)) lt!2051824)))

(declare-fun b!4968783 () Bool)

(assert (=> b!4968783 (= e!3105649 (matchR!6636 (regex!8393 (h!63892 rulesArg!259)) (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) (list!18365 input!1342) (list!18365 input!1342) (size!38072 (list!18365 input!1342))))))))

(assert (= (and d!1599434 (not res!2120927)) b!4968783))

(assert (=> d!1599434 m!5993376))

(declare-fun m!5995794 () Bool)

(assert (=> d!1599434 m!5995794))

(assert (=> d!1599434 m!5993574))

(assert (=> d!1599434 m!5993376))

(assert (=> d!1599434 m!5993376))

(assert (=> d!1599434 m!5993850))

(assert (=> d!1599434 m!5993872))

(assert (=> d!1599434 m!5993376))

(assert (=> d!1599434 m!5993850))

(assert (=> d!1599434 m!5993868))

(assert (=> d!1599434 m!5993574))

(assert (=> d!1599434 m!5993828))

(assert (=> b!4968783 m!5993574))

(assert (=> b!4968783 m!5993376))

(assert (=> b!4968783 m!5993850))

(assert (=> b!4968783 m!5993574))

(assert (=> b!4968783 m!5993376))

(assert (=> b!4968783 m!5993376))

(assert (=> b!4968783 m!5993850))

(assert (=> b!4968783 m!5993872))

(assert (=> b!4968783 m!5993878))

(assert (=> b!4967599 d!1599434))

(declare-fun d!1599436 () Bool)

(assert (=> d!1599436 (= (apply!13904 (transformation!8393 (h!63892 rulesArg!259)) (seqFromList!6036 (_1!34390 lt!2051207))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051207))))))

(declare-fun b_lambda!196947 () Bool)

(assert (=> (not b_lambda!196947) (not d!1599436)))

(assert (=> d!1599436 t!368742))

(declare-fun b_and!348295 () Bool)

(assert (= b_and!348289 (and (=> t!368742 result!325832) b_and!348295)))

(assert (=> d!1599436 t!368744))

(declare-fun b_and!348297 () Bool)

(assert (= b_and!348291 (and (=> t!368744 result!325834) b_and!348297)))

(assert (=> d!1599436 t!368746))

(declare-fun b_and!348299 () Bool)

(assert (= b_and!348293 (and (=> t!368746 result!325836) b_and!348299)))

(assert (=> d!1599436 m!5993864))

(assert (=> d!1599436 m!5995782))

(assert (=> b!4967599 d!1599436))

(declare-fun d!1599438 () Bool)

(declare-fun lt!2051825 () Int)

(assert (=> d!1599438 (= lt!2051825 (size!38072 (list!18365 (seqFromList!6036 (_1!34390 lt!2051207)))))))

(assert (=> d!1599438 (= lt!2051825 (size!38076 (c!847515 (seqFromList!6036 (_1!34390 lt!2051207)))))))

(assert (=> d!1599438 (= (size!38073 (seqFromList!6036 (_1!34390 lt!2051207))) lt!2051825)))

(declare-fun bs!1183304 () Bool)

(assert (= bs!1183304 d!1599438))

(assert (=> bs!1183304 m!5993864))

(assert (=> bs!1183304 m!5995784))

(assert (=> bs!1183304 m!5995784))

(declare-fun m!5995796 () Bool)

(assert (=> bs!1183304 m!5995796))

(declare-fun m!5995798 () Bool)

(assert (=> bs!1183304 m!5995798))

(assert (=> b!4967599 d!1599438))

(declare-fun b!4968784 () Bool)

(declare-fun e!3105657 () Unit!148361)

(declare-fun Unit!148383 () Unit!148361)

(assert (=> b!4968784 (= e!3105657 Unit!148383)))

(declare-fun b!4968785 () Bool)

(declare-fun c!847838 () Bool)

(declare-fun call!346530 () Bool)

(assert (=> b!4968785 (= c!847838 call!346530)))

(declare-fun lt!2051842 () Unit!148361)

(declare-fun lt!2051832 () Unit!148361)

(assert (=> b!4968785 (= lt!2051842 lt!2051832)))

(assert (=> b!4968785 (= (list!18365 input!1342) Nil!57443)))

(declare-fun call!346533 () Unit!148361)

(assert (=> b!4968785 (= lt!2051832 call!346533)))

(declare-fun lt!2051852 () Unit!148361)

(declare-fun lt!2051837 () Unit!148361)

(assert (=> b!4968785 (= lt!2051852 lt!2051837)))

(declare-fun call!346527 () Bool)

(assert (=> b!4968785 call!346527))

(declare-fun call!346529 () Unit!148361)

(assert (=> b!4968785 (= lt!2051837 call!346529)))

(declare-fun e!3105653 () tuple2!62174)

(declare-fun e!3105654 () tuple2!62174)

(assert (=> b!4968785 (= e!3105653 e!3105654)))

(declare-fun b!4968786 () Bool)

(declare-fun e!3105655 () Bool)

(declare-fun e!3105652 () Bool)

(assert (=> b!4968786 (= e!3105655 e!3105652)))

(declare-fun res!2120928 () Bool)

(assert (=> b!4968786 (=> res!2120928 e!3105652)))

(declare-fun lt!2051844 () tuple2!62174)

(assert (=> b!4968786 (= res!2120928 (isEmpty!30938 (_1!34390 lt!2051844)))))

(declare-fun bm!346522 () Bool)

(declare-fun call!346528 () Regex!13626)

(declare-fun call!346532 () C!27502)

(assert (=> bm!346522 (= call!346528 (derivativeStep!3922 (regex!8393 (h!63892 rulesArg!259)) call!346532))))

(declare-fun b!4968787 () Bool)

(declare-fun e!3105650 () tuple2!62174)

(assert (=> b!4968787 (= e!3105650 e!3105653)))

(declare-fun c!847840 () Bool)

(assert (=> b!4968787 (= c!847840 (= (size!38072 Nil!57443) (size!38072 (list!18365 input!1342))))))

(declare-fun b!4968788 () Bool)

(assert (=> b!4968788 (= e!3105654 (tuple2!62175 Nil!57443 (list!18365 input!1342)))))

(declare-fun b!4968789 () Bool)

(assert (=> b!4968789 (= e!3105650 (tuple2!62175 Nil!57443 (list!18365 input!1342)))))

(declare-fun b!4968790 () Bool)

(declare-fun e!3105651 () tuple2!62174)

(assert (=> b!4968790 (= e!3105651 (tuple2!62175 Nil!57443 (list!18365 input!1342)))))

(declare-fun bm!346523 () Bool)

(assert (=> bm!346523 (= call!346529 (lemmaIsPrefixRefl!3568 (list!18365 input!1342) (list!18365 input!1342)))))

(declare-fun bm!346524 () Bool)

(assert (=> bm!346524 (= call!346527 (isPrefix!5244 (list!18365 input!1342) (list!18365 input!1342)))))

(declare-fun bm!346525 () Bool)

(declare-fun call!346526 () List!57567)

(assert (=> bm!346525 (= call!346526 (tail!9801 (list!18365 input!1342)))))

(declare-fun b!4968791 () Bool)

(declare-fun c!847836 () Bool)

(assert (=> b!4968791 (= c!847836 call!346530)))

(declare-fun lt!2051850 () Unit!148361)

(declare-fun lt!2051827 () Unit!148361)

(assert (=> b!4968791 (= lt!2051850 lt!2051827)))

(declare-fun lt!2051830 () C!27502)

(declare-fun lt!2051840 () List!57567)

(assert (=> b!4968791 (= (++!12532 (++!12532 Nil!57443 (Cons!57443 lt!2051830 Nil!57443)) lt!2051840) (list!18365 input!1342))))

(assert (=> b!4968791 (= lt!2051827 (lemmaMoveElementToOtherListKeepsConcatEq!1445 Nil!57443 lt!2051830 lt!2051840 (list!18365 input!1342)))))

(assert (=> b!4968791 (= lt!2051840 (tail!9801 (list!18365 input!1342)))))

(assert (=> b!4968791 (= lt!2051830 (head!10668 (list!18365 input!1342)))))

(declare-fun lt!2051843 () Unit!148361)

(declare-fun lt!2051838 () Unit!148361)

(assert (=> b!4968791 (= lt!2051843 lt!2051838)))

(assert (=> b!4968791 (isPrefix!5244 (++!12532 Nil!57443 (Cons!57443 (head!10668 (getSuffix!3088 (list!18365 input!1342) Nil!57443)) Nil!57443)) (list!18365 input!1342))))

(assert (=> b!4968791 (= lt!2051838 (lemmaAddHeadSuffixToPrefixStillPrefix!835 Nil!57443 (list!18365 input!1342)))))

(declare-fun lt!2051847 () Unit!148361)

(declare-fun lt!2051849 () Unit!148361)

(assert (=> b!4968791 (= lt!2051847 lt!2051849)))

(assert (=> b!4968791 (= lt!2051849 (lemmaAddHeadSuffixToPrefixStillPrefix!835 Nil!57443 (list!18365 input!1342)))))

(declare-fun lt!2051834 () List!57567)

(assert (=> b!4968791 (= lt!2051834 (++!12532 Nil!57443 (Cons!57443 (head!10668 (list!18365 input!1342)) Nil!57443)))))

(declare-fun lt!2051836 () Unit!148361)

(assert (=> b!4968791 (= lt!2051836 e!3105657)))

(declare-fun c!847841 () Bool)

(assert (=> b!4968791 (= c!847841 (= (size!38072 Nil!57443) (size!38072 (list!18365 input!1342))))))

(declare-fun lt!2051835 () Unit!148361)

(declare-fun lt!2051853 () Unit!148361)

(assert (=> b!4968791 (= lt!2051835 lt!2051853)))

(assert (=> b!4968791 (<= (size!38072 Nil!57443) (size!38072 (list!18365 input!1342)))))

(assert (=> b!4968791 (= lt!2051853 (lemmaIsPrefixThenSmallerEqSize!761 Nil!57443 (list!18365 input!1342)))))

(declare-fun e!3105656 () tuple2!62174)

(assert (=> b!4968791 (= e!3105653 e!3105656)))

(declare-fun b!4968792 () Bool)

(declare-fun lt!2051839 () tuple2!62174)

(assert (=> b!4968792 (= e!3105651 lt!2051839)))

(declare-fun b!4968793 () Bool)

(assert (=> b!4968793 (= e!3105654 (tuple2!62175 Nil!57443 Nil!57443))))

(declare-fun b!4968794 () Bool)

(declare-fun Unit!148384 () Unit!148361)

(assert (=> b!4968794 (= e!3105657 Unit!148384)))

(declare-fun lt!2051829 () Unit!148361)

(assert (=> b!4968794 (= lt!2051829 call!346529)))

(assert (=> b!4968794 call!346527))

(declare-fun lt!2051848 () Unit!148361)

(assert (=> b!4968794 (= lt!2051848 lt!2051829)))

(declare-fun lt!2051841 () Unit!148361)

(assert (=> b!4968794 (= lt!2051841 call!346533)))

(assert (=> b!4968794 (= (list!18365 input!1342) Nil!57443)))

(declare-fun lt!2051831 () Unit!148361)

(assert (=> b!4968794 (= lt!2051831 lt!2051841)))

(assert (=> b!4968794 false))

(declare-fun bm!346526 () Bool)

(assert (=> bm!346526 (= call!346530 (nullable!4620 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun b!4968795 () Bool)

(assert (=> b!4968795 (= e!3105656 e!3105651)))

(declare-fun call!346531 () tuple2!62174)

(assert (=> b!4968795 (= lt!2051839 call!346531)))

(declare-fun c!847839 () Bool)

(assert (=> b!4968795 (= c!847839 (isEmpty!30938 (_1!34390 lt!2051839)))))

(declare-fun d!1599440 () Bool)

(assert (=> d!1599440 e!3105655))

(declare-fun res!2120929 () Bool)

(assert (=> d!1599440 (=> (not res!2120929) (not e!3105655))))

(assert (=> d!1599440 (= res!2120929 (= (++!12532 (_1!34390 lt!2051844) (_2!34390 lt!2051844)) (list!18365 input!1342)))))

(assert (=> d!1599440 (= lt!2051844 e!3105650)))

(declare-fun c!847837 () Bool)

(assert (=> d!1599440 (= c!847837 (lostCause!1133 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun lt!2051833 () Unit!148361)

(declare-fun Unit!148385 () Unit!148361)

(assert (=> d!1599440 (= lt!2051833 Unit!148385)))

(assert (=> d!1599440 (= (getSuffix!3088 (list!18365 input!1342) Nil!57443) (list!18365 input!1342))))

(declare-fun lt!2051826 () Unit!148361)

(declare-fun lt!2051846 () Unit!148361)

(assert (=> d!1599440 (= lt!2051826 lt!2051846)))

(declare-fun lt!2051851 () List!57567)

(assert (=> d!1599440 (= (list!18365 input!1342) lt!2051851)))

(assert (=> d!1599440 (= lt!2051846 (lemmaSamePrefixThenSameSuffix!2501 Nil!57443 (list!18365 input!1342) Nil!57443 lt!2051851 (list!18365 input!1342)))))

(assert (=> d!1599440 (= lt!2051851 (getSuffix!3088 (list!18365 input!1342) Nil!57443))))

(declare-fun lt!2051828 () Unit!148361)

(declare-fun lt!2051845 () Unit!148361)

(assert (=> d!1599440 (= lt!2051828 lt!2051845)))

(assert (=> d!1599440 (isPrefix!5244 Nil!57443 (++!12532 Nil!57443 (list!18365 input!1342)))))

(assert (=> d!1599440 (= lt!2051845 (lemmaConcatTwoListThenFirstIsPrefix!3347 Nil!57443 (list!18365 input!1342)))))

(assert (=> d!1599440 (validRegex!5969 (regex!8393 (h!63892 rulesArg!259)))))

(assert (=> d!1599440 (= (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) (list!18365 input!1342) (list!18365 input!1342) (size!38072 (list!18365 input!1342))) lt!2051844)))

(declare-fun bm!346521 () Bool)

(assert (=> bm!346521 (= call!346533 (lemmaIsPrefixSameLengthThenSameList!1208 (list!18365 input!1342) Nil!57443 (list!18365 input!1342)))))

(declare-fun bm!346527 () Bool)

(assert (=> bm!346527 (= call!346531 (findLongestMatchInner!1855 call!346528 lt!2051834 (+ (size!38072 Nil!57443) 1) call!346526 (list!18365 input!1342) (size!38072 (list!18365 input!1342))))))

(declare-fun bm!346528 () Bool)

(assert (=> bm!346528 (= call!346532 (head!10668 (list!18365 input!1342)))))

(declare-fun b!4968796 () Bool)

(assert (=> b!4968796 (= e!3105656 call!346531)))

(declare-fun b!4968797 () Bool)

(assert (=> b!4968797 (= e!3105652 (>= (size!38072 (_1!34390 lt!2051844)) (size!38072 Nil!57443)))))

(assert (= (and d!1599440 c!847837) b!4968789))

(assert (= (and d!1599440 (not c!847837)) b!4968787))

(assert (= (and b!4968787 c!847840) b!4968785))

(assert (= (and b!4968787 (not c!847840)) b!4968791))

(assert (= (and b!4968785 c!847838) b!4968793))

(assert (= (and b!4968785 (not c!847838)) b!4968788))

(assert (= (and b!4968791 c!847841) b!4968794))

(assert (= (and b!4968791 (not c!847841)) b!4968784))

(assert (= (and b!4968791 c!847836) b!4968795))

(assert (= (and b!4968791 (not c!847836)) b!4968796))

(assert (= (and b!4968795 c!847839) b!4968790))

(assert (= (and b!4968795 (not c!847839)) b!4968792))

(assert (= (or b!4968795 b!4968796) bm!346528))

(assert (= (or b!4968795 b!4968796) bm!346525))

(assert (= (or b!4968795 b!4968796) bm!346522))

(assert (= (or b!4968795 b!4968796) bm!346527))

(assert (= (or b!4968785 b!4968794) bm!346523))

(assert (= (or b!4968785 b!4968794) bm!346521))

(assert (= (or b!4968785 b!4968791) bm!346526))

(assert (= (or b!4968785 b!4968794) bm!346524))

(assert (= (and d!1599440 res!2120929) b!4968786))

(assert (= (and b!4968786 (not res!2120928)) b!4968797))

(declare-fun m!5995800 () Bool)

(assert (=> b!4968797 m!5995800))

(assert (=> b!4968797 m!5993574))

(declare-fun m!5995802 () Bool)

(assert (=> b!4968795 m!5995802))

(declare-fun m!5995804 () Bool)

(assert (=> b!4968786 m!5995804))

(declare-fun m!5995806 () Bool)

(assert (=> b!4968791 m!5995806))

(assert (=> b!4968791 m!5995806))

(assert (=> b!4968791 m!5993376))

(declare-fun m!5995808 () Bool)

(assert (=> b!4968791 m!5995808))

(assert (=> b!4968791 m!5993376))

(declare-fun m!5995810 () Bool)

(assert (=> b!4968791 m!5995810))

(assert (=> b!4968791 m!5993376))

(assert (=> b!4968791 m!5993850))

(declare-fun m!5995812 () Bool)

(assert (=> b!4968791 m!5995812))

(assert (=> b!4968791 m!5993376))

(declare-fun m!5995814 () Bool)

(assert (=> b!4968791 m!5995814))

(assert (=> b!4968791 m!5993376))

(assert (=> b!4968791 m!5994918))

(declare-fun m!5995816 () Bool)

(assert (=> b!4968791 m!5995816))

(assert (=> b!4968791 m!5995812))

(declare-fun m!5995818 () Bool)

(assert (=> b!4968791 m!5995818))

(assert (=> b!4968791 m!5993376))

(assert (=> b!4968791 m!5994922))

(assert (=> b!4968791 m!5993376))

(declare-fun m!5995820 () Bool)

(assert (=> b!4968791 m!5995820))

(assert (=> b!4968791 m!5993574))

(assert (=> b!4968791 m!5993376))

(declare-fun m!5995822 () Bool)

(assert (=> b!4968791 m!5995822))

(assert (=> b!4968791 m!5995810))

(declare-fun m!5995824 () Bool)

(assert (=> b!4968791 m!5995824))

(assert (=> bm!346524 m!5993376))

(assert (=> bm!346524 m!5993376))

(assert (=> bm!346524 m!5993946))

(assert (=> bm!346528 m!5993376))

(assert (=> bm!346528 m!5994922))

(assert (=> bm!346527 m!5993376))

(assert (=> bm!346527 m!5993850))

(declare-fun m!5995826 () Bool)

(assert (=> bm!346527 m!5995826))

(assert (=> bm!346523 m!5993376))

(assert (=> bm!346523 m!5993376))

(assert (=> bm!346523 m!5993948))

(declare-fun m!5995828 () Bool)

(assert (=> bm!346522 m!5995828))

(assert (=> bm!346525 m!5993376))

(assert (=> bm!346525 m!5994918))

(assert (=> bm!346521 m!5993376))

(assert (=> bm!346521 m!5993376))

(declare-fun m!5995830 () Bool)

(assert (=> bm!346521 m!5995830))

(assert (=> bm!346526 m!5993830))

(declare-fun m!5995832 () Bool)

(assert (=> d!1599440 m!5995832))

(declare-fun m!5995834 () Bool)

(assert (=> d!1599440 m!5995834))

(assert (=> d!1599440 m!5993376))

(assert (=> d!1599440 m!5993376))

(declare-fun m!5995836 () Bool)

(assert (=> d!1599440 m!5995836))

(assert (=> d!1599440 m!5993376))

(assert (=> d!1599440 m!5995810))

(assert (=> d!1599440 m!5993376))

(assert (=> d!1599440 m!5995832))

(assert (=> d!1599440 m!5993828))

(assert (=> d!1599440 m!5994052))

(declare-fun m!5995838 () Bool)

(assert (=> d!1599440 m!5995838))

(assert (=> d!1599440 m!5993376))

(declare-fun m!5995840 () Bool)

(assert (=> d!1599440 m!5995840))

(assert (=> b!4967599 d!1599440))

(declare-fun d!1599442 () Bool)

(declare-fun lt!2051854 () Int)

(assert (=> d!1599442 (>= lt!2051854 0)))

(declare-fun e!3105658 () Int)

(assert (=> d!1599442 (= lt!2051854 e!3105658)))

(declare-fun c!847842 () Bool)

(assert (=> d!1599442 (= c!847842 (is-Nil!57443 (list!18365 input!1342)))))

(assert (=> d!1599442 (= (size!38072 (list!18365 input!1342)) lt!2051854)))

(declare-fun b!4968798 () Bool)

(assert (=> b!4968798 (= e!3105658 0)))

(declare-fun b!4968799 () Bool)

(assert (=> b!4968799 (= e!3105658 (+ 1 (size!38072 (t!368627 (list!18365 input!1342)))))))

(assert (= (and d!1599442 c!847842) b!4968798))

(assert (= (and d!1599442 (not c!847842)) b!4968799))

(declare-fun m!5995842 () Bool)

(assert (=> b!4968799 m!5995842))

(assert (=> b!4967599 d!1599442))

(declare-fun d!1599444 () Bool)

(declare-fun lt!2051855 () Int)

(assert (=> d!1599444 (>= lt!2051855 0)))

(declare-fun e!3105659 () Int)

(assert (=> d!1599444 (= lt!2051855 e!3105659)))

(declare-fun c!847843 () Bool)

(assert (=> d!1599444 (= c!847843 (is-Nil!57443 (_2!34385 (get!19940 lt!2051467))))))

(assert (=> d!1599444 (= (size!38072 (_2!34385 (get!19940 lt!2051467))) lt!2051855)))

(declare-fun b!4968800 () Bool)

(assert (=> b!4968800 (= e!3105659 0)))

(declare-fun b!4968801 () Bool)

(assert (=> b!4968801 (= e!3105659 (+ 1 (size!38072 (t!368627 (_2!34385 (get!19940 lt!2051467))))))))

(assert (= (and d!1599444 c!847843) b!4968800))

(assert (= (and d!1599444 (not c!847843)) b!4968801))

(declare-fun m!5995844 () Bool)

(assert (=> b!4968801 m!5995844))

(assert (=> b!4967988 d!1599444))

(assert (=> b!4967988 d!1599124))

(assert (=> b!4967988 d!1599442))

(declare-fun d!1599446 () Bool)

(declare-fun lt!2051856 () Bool)

(assert (=> d!1599446 (= lt!2051856 (set.member (rule!11637 (_1!34385 (get!19940 lt!2051453))) (content!10183 (t!368628 rulesArg!259))))))

(declare-fun e!3105661 () Bool)

(assert (=> d!1599446 (= lt!2051856 e!3105661)))

(declare-fun res!2120931 () Bool)

(assert (=> d!1599446 (=> (not res!2120931) (not e!3105661))))

(assert (=> d!1599446 (= res!2120931 (is-Cons!57444 (t!368628 rulesArg!259)))))

(assert (=> d!1599446 (= (contains!19538 (t!368628 rulesArg!259) (rule!11637 (_1!34385 (get!19940 lt!2051453)))) lt!2051856)))

(declare-fun b!4968802 () Bool)

(declare-fun e!3105660 () Bool)

(assert (=> b!4968802 (= e!3105661 e!3105660)))

(declare-fun res!2120930 () Bool)

(assert (=> b!4968802 (=> res!2120930 e!3105660)))

(assert (=> b!4968802 (= res!2120930 (= (h!63892 (t!368628 rulesArg!259)) (rule!11637 (_1!34385 (get!19940 lt!2051453)))))))

(declare-fun b!4968803 () Bool)

(assert (=> b!4968803 (= e!3105660 (contains!19538 (t!368628 (t!368628 rulesArg!259)) (rule!11637 (_1!34385 (get!19940 lt!2051453)))))))

(assert (= (and d!1599446 res!2120931) b!4968802))

(assert (= (and b!4968802 (not res!2120930)) b!4968803))

(assert (=> d!1599446 m!5994994))

(declare-fun m!5995846 () Bool)

(assert (=> d!1599446 m!5995846))

(declare-fun m!5995848 () Bool)

(assert (=> b!4968803 m!5995848))

(assert (=> b!4967935 d!1599446))

(assert (=> b!4967935 d!1599140))

(declare-fun b!4968804 () Bool)

(declare-fun e!3105665 () Bool)

(declare-fun lt!2051857 () Bool)

(declare-fun call!346534 () Bool)

(assert (=> b!4968804 (= e!3105665 (= lt!2051857 call!346534))))

(declare-fun b!4968805 () Bool)

(declare-fun res!2120934 () Bool)

(declare-fun e!3105662 () Bool)

(assert (=> b!4968805 (=> (not res!2120934) (not e!3105662))))

(assert (=> b!4968805 (= res!2120934 (isEmpty!30938 (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051453)))))))))

(declare-fun b!4968806 () Bool)

(assert (=> b!4968806 (= e!3105662 (= (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051453))))) (c!847514 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453)))))))))

(declare-fun b!4968807 () Bool)

(declare-fun e!3105664 () Bool)

(assert (=> b!4968807 (= e!3105664 (not lt!2051857))))

(declare-fun b!4968808 () Bool)

(declare-fun e!3105668 () Bool)

(assert (=> b!4968808 (= e!3105668 (matchR!6636 (derivativeStep!3922 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453)))) (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051453)))))) (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051453)))))))))

(declare-fun bm!346529 () Bool)

(assert (=> bm!346529 (= call!346534 (isEmpty!30938 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051453))))))))

(declare-fun b!4968809 () Bool)

(declare-fun res!2120932 () Bool)

(assert (=> b!4968809 (=> (not res!2120932) (not e!3105662))))

(assert (=> b!4968809 (= res!2120932 (not call!346534))))

(declare-fun b!4968810 () Bool)

(declare-fun e!3105666 () Bool)

(declare-fun e!3105667 () Bool)

(assert (=> b!4968810 (= e!3105666 e!3105667)))

(declare-fun res!2120933 () Bool)

(assert (=> b!4968810 (=> (not res!2120933) (not e!3105667))))

(assert (=> b!4968810 (= res!2120933 (not lt!2051857))))

(declare-fun b!4968811 () Bool)

(declare-fun res!2120935 () Bool)

(declare-fun e!3105663 () Bool)

(assert (=> b!4968811 (=> res!2120935 e!3105663)))

(assert (=> b!4968811 (= res!2120935 (not (isEmpty!30938 (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051453))))))))))

(declare-fun b!4968812 () Bool)

(assert (=> b!4968812 (= e!3105668 (nullable!4620 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453))))))))

(declare-fun b!4968813 () Bool)

(assert (=> b!4968813 (= e!3105663 (not (= (head!10668 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051453))))) (c!847514 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453))))))))))

(declare-fun b!4968814 () Bool)

(declare-fun res!2120939 () Bool)

(assert (=> b!4968814 (=> res!2120939 e!3105666)))

(assert (=> b!4968814 (= res!2120939 e!3105662)))

(declare-fun res!2120937 () Bool)

(assert (=> b!4968814 (=> (not res!2120937) (not e!3105662))))

(assert (=> b!4968814 (= res!2120937 lt!2051857)))

(declare-fun b!4968815 () Bool)

(assert (=> b!4968815 (= e!3105665 e!3105664)))

(declare-fun c!847846 () Bool)

(assert (=> b!4968815 (= c!847846 (is-EmptyLang!13626 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453))))))))

(declare-fun d!1599448 () Bool)

(assert (=> d!1599448 e!3105665))

(declare-fun c!847845 () Bool)

(assert (=> d!1599448 (= c!847845 (is-EmptyExpr!13626 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453))))))))

(assert (=> d!1599448 (= lt!2051857 e!3105668)))

(declare-fun c!847844 () Bool)

(assert (=> d!1599448 (= c!847844 (isEmpty!30938 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051453))))))))

(assert (=> d!1599448 (validRegex!5969 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453)))))))

(assert (=> d!1599448 (= (matchR!6636 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453)))) (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051453))))) lt!2051857)))

(declare-fun b!4968816 () Bool)

(declare-fun res!2120938 () Bool)

(assert (=> b!4968816 (=> res!2120938 e!3105666)))

(assert (=> b!4968816 (= res!2120938 (not (is-ElementMatch!13626 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453)))))))))

(assert (=> b!4968816 (= e!3105664 e!3105666)))

(declare-fun b!4968817 () Bool)

(assert (=> b!4968817 (= e!3105667 e!3105663)))

(declare-fun res!2120936 () Bool)

(assert (=> b!4968817 (=> res!2120936 e!3105663)))

(assert (=> b!4968817 (= res!2120936 call!346534)))

(assert (= (and d!1599448 c!847844) b!4968812))

(assert (= (and d!1599448 (not c!847844)) b!4968808))

(assert (= (and d!1599448 c!847845) b!4968804))

(assert (= (and d!1599448 (not c!847845)) b!4968815))

(assert (= (and b!4968815 c!847846) b!4968807))

(assert (= (and b!4968815 (not c!847846)) b!4968816))

(assert (= (and b!4968816 (not res!2120938)) b!4968814))

(assert (= (and b!4968814 res!2120937) b!4968809))

(assert (= (and b!4968809 res!2120932) b!4968805))

(assert (= (and b!4968805 res!2120934) b!4968806))

(assert (= (and b!4968814 (not res!2120939)) b!4968810))

(assert (= (and b!4968810 res!2120933) b!4968817))

(assert (= (and b!4968817 (not res!2120936)) b!4968811))

(assert (= (and b!4968811 (not res!2120935)) b!4968813))

(assert (= (or b!4968804 b!4968809 b!4968817) bm!346529))

(assert (=> b!4968808 m!5994284))

(declare-fun m!5995850 () Bool)

(assert (=> b!4968808 m!5995850))

(assert (=> b!4968808 m!5995850))

(declare-fun m!5995852 () Bool)

(assert (=> b!4968808 m!5995852))

(assert (=> b!4968808 m!5994284))

(declare-fun m!5995854 () Bool)

(assert (=> b!4968808 m!5995854))

(assert (=> b!4968808 m!5995852))

(assert (=> b!4968808 m!5995854))

(declare-fun m!5995856 () Bool)

(assert (=> b!4968808 m!5995856))

(assert (=> b!4968813 m!5994284))

(assert (=> b!4968813 m!5995850))

(assert (=> b!4968811 m!5994284))

(assert (=> b!4968811 m!5995854))

(assert (=> b!4968811 m!5995854))

(declare-fun m!5995858 () Bool)

(assert (=> b!4968811 m!5995858))

(assert (=> b!4968806 m!5994284))

(assert (=> b!4968806 m!5995850))

(declare-fun m!5995860 () Bool)

(assert (=> b!4968812 m!5995860))

(assert (=> b!4968805 m!5994284))

(assert (=> b!4968805 m!5995854))

(assert (=> b!4968805 m!5995854))

(assert (=> b!4968805 m!5995858))

(assert (=> bm!346529 m!5994284))

(declare-fun m!5995862 () Bool)

(assert (=> bm!346529 m!5995862))

(assert (=> d!1599448 m!5994284))

(assert (=> d!1599448 m!5995862))

(declare-fun m!5995864 () Bool)

(assert (=> d!1599448 m!5995864))

(assert (=> b!4967942 d!1599448))

(assert (=> b!4967942 d!1599140))

(declare-fun d!1599450 () Bool)

(assert (=> d!1599450 (= (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051453)))) (list!18367 (c!847515 (charsOf!5437 (_1!34385 (get!19940 lt!2051453))))))))

(declare-fun bs!1183305 () Bool)

(assert (= bs!1183305 d!1599450))

(declare-fun m!5995866 () Bool)

(assert (=> bs!1183305 m!5995866))

(assert (=> b!4967942 d!1599450))

(declare-fun d!1599452 () Bool)

(declare-fun lt!2051858 () BalanceConc!29720)

(assert (=> d!1599452 (= (list!18365 lt!2051858) (originalCharacters!8672 (_1!34385 (get!19940 lt!2051453))))))

(assert (=> d!1599452 (= lt!2051858 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453))))) (value!268642 (_1!34385 (get!19940 lt!2051453)))))))

(assert (=> d!1599452 (= (charsOf!5437 (_1!34385 (get!19940 lt!2051453))) lt!2051858)))

(declare-fun b_lambda!196949 () Bool)

(assert (=> (not b_lambda!196949) (not d!1599452)))

(declare-fun tb!260719 () Bool)

(declare-fun t!368748 () Bool)

(assert (=> (and b!4967137 (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453)))))) t!368748) tb!260719))

(declare-fun b!4968818 () Bool)

(declare-fun e!3105669 () Bool)

(declare-fun tp!1393483 () Bool)

(assert (=> b!4968818 (= e!3105669 (and (inv!75075 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453))))) (value!268642 (_1!34385 (get!19940 lt!2051453)))))) tp!1393483))))

(declare-fun result!325838 () Bool)

(assert (=> tb!260719 (= result!325838 (and (inv!75074 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453))))) (value!268642 (_1!34385 (get!19940 lt!2051453))))) e!3105669))))

(assert (= tb!260719 b!4968818))

(declare-fun m!5995868 () Bool)

(assert (=> b!4968818 m!5995868))

(declare-fun m!5995870 () Bool)

(assert (=> tb!260719 m!5995870))

(assert (=> d!1599452 t!368748))

(declare-fun b_and!348301 () Bool)

(assert (= b_and!348283 (and (=> t!368748 result!325838) b_and!348301)))

(declare-fun t!368750 () Bool)

(declare-fun tb!260721 () Bool)

(assert (=> (and b!4967394 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453)))))) t!368750) tb!260721))

(declare-fun result!325840 () Bool)

(assert (= result!325840 result!325838))

(assert (=> d!1599452 t!368750))

(declare-fun b_and!348303 () Bool)

(assert (= b_and!348285 (and (=> t!368750 result!325840) b_and!348303)))

(declare-fun tb!260723 () Bool)

(declare-fun t!368752 () Bool)

(assert (=> (and b!4968022 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453)))))) t!368752) tb!260723))

(declare-fun result!325842 () Bool)

(assert (= result!325842 result!325838))

(assert (=> d!1599452 t!368752))

(declare-fun b_and!348305 () Bool)

(assert (= b_and!348287 (and (=> t!368752 result!325842) b_and!348305)))

(declare-fun m!5995872 () Bool)

(assert (=> d!1599452 m!5995872))

(declare-fun m!5995874 () Bool)

(assert (=> d!1599452 m!5995874))

(assert (=> b!4967942 d!1599452))

(declare-fun d!1599454 () Bool)

(declare-fun lt!2051859 () Int)

(assert (=> d!1599454 (>= lt!2051859 0)))

(declare-fun e!3105670 () Int)

(assert (=> d!1599454 (= lt!2051859 e!3105670)))

(declare-fun c!847847 () Bool)

(assert (=> d!1599454 (= c!847847 (is-Nil!57443 (t!368627 lt!2051120)))))

(assert (=> d!1599454 (= (size!38072 (t!368627 lt!2051120)) lt!2051859)))

(declare-fun b!4968819 () Bool)

(assert (=> b!4968819 (= e!3105670 0)))

(declare-fun b!4968820 () Bool)

(assert (=> b!4968820 (= e!3105670 (+ 1 (size!38072 (t!368627 (t!368627 lt!2051120)))))))

(assert (= (and d!1599454 c!847847) b!4968819))

(assert (= (and d!1599454 (not c!847847)) b!4968820))

(declare-fun m!5995876 () Bool)

(assert (=> b!4968820 m!5995876))

(assert (=> b!4967701 d!1599454))

(declare-fun b!4968822 () Bool)

(declare-fun e!3105672 () List!57567)

(assert (=> b!4968822 (= e!3105672 (Cons!57443 (h!63891 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051463))))) (++!12532 (t!368627 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051463))))) (_2!34385 (get!19940 lt!2051463)))))))

(declare-fun b!4968824 () Bool)

(declare-fun e!3105671 () Bool)

(declare-fun lt!2051860 () List!57567)

(assert (=> b!4968824 (= e!3105671 (or (not (= (_2!34385 (get!19940 lt!2051463)) Nil!57443)) (= lt!2051860 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051463)))))))))

(declare-fun b!4968821 () Bool)

(assert (=> b!4968821 (= e!3105672 (_2!34385 (get!19940 lt!2051463)))))

(declare-fun d!1599456 () Bool)

(assert (=> d!1599456 e!3105671))

(declare-fun res!2120940 () Bool)

(assert (=> d!1599456 (=> (not res!2120940) (not e!3105671))))

(assert (=> d!1599456 (= res!2120940 (= (content!10184 lt!2051860) (set.union (content!10184 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051463))))) (content!10184 (_2!34385 (get!19940 lt!2051463))))))))

(assert (=> d!1599456 (= lt!2051860 e!3105672)))

(declare-fun c!847848 () Bool)

(assert (=> d!1599456 (= c!847848 (is-Nil!57443 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051463))))))))

(assert (=> d!1599456 (= (++!12532 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051463)))) (_2!34385 (get!19940 lt!2051463))) lt!2051860)))

(declare-fun b!4968823 () Bool)

(declare-fun res!2120941 () Bool)

(assert (=> b!4968823 (=> (not res!2120941) (not e!3105671))))

(assert (=> b!4968823 (= res!2120941 (= (size!38072 lt!2051860) (+ (size!38072 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051463))))) (size!38072 (_2!34385 (get!19940 lt!2051463))))))))

(assert (= (and d!1599456 c!847848) b!4968821))

(assert (= (and d!1599456 (not c!847848)) b!4968822))

(assert (= (and d!1599456 res!2120940) b!4968823))

(assert (= (and b!4968823 res!2120941) b!4968824))

(declare-fun m!5995878 () Bool)

(assert (=> b!4968822 m!5995878))

(declare-fun m!5995880 () Bool)

(assert (=> d!1599456 m!5995880))

(assert (=> d!1599456 m!5994324))

(declare-fun m!5995882 () Bool)

(assert (=> d!1599456 m!5995882))

(declare-fun m!5995884 () Bool)

(assert (=> d!1599456 m!5995884))

(declare-fun m!5995886 () Bool)

(assert (=> b!4968823 m!5995886))

(assert (=> b!4968823 m!5994324))

(declare-fun m!5995888 () Bool)

(assert (=> b!4968823 m!5995888))

(assert (=> b!4968823 m!5994328))

(assert (=> b!4967967 d!1599456))

(assert (=> b!4967967 d!1599352))

(assert (=> b!4967967 d!1599354))

(assert (=> b!4967967 d!1599246))

(assert (=> b!4967673 d!1599312))

(assert (=> b!4967863 d!1599118))

(assert (=> b!4967863 d!1599160))

(assert (=> b!4967863 d!1599158))

(assert (=> b!4967863 d!1598680))

(declare-fun bs!1183306 () Bool)

(declare-fun d!1599458 () Bool)

(assert (= bs!1183306 (and d!1599458 b!4967852)))

(declare-fun lambda!247401 () Int)

(assert (=> bs!1183306 (= (and (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))))) (= lambda!247401 lambda!247380))))

(declare-fun bs!1183307 () Bool)

(assert (= bs!1183307 (and d!1599458 b!4967347)))

(assert (=> bs!1183307 (= lambda!247401 lambda!247368)))

(declare-fun bs!1183308 () Bool)

(assert (= bs!1183308 (and d!1599458 d!1598926)))

(assert (=> bs!1183308 (= lambda!247401 lambda!247383)))

(declare-fun bs!1183309 () Bool)

(assert (= bs!1183309 (and d!1599458 d!1599428)))

(assert (=> bs!1183309 (= lambda!247401 lambda!247400)))

(declare-fun bs!1183310 () Bool)

(assert (= bs!1183310 (and d!1599458 b!4968581)))

(assert (=> bs!1183310 (= (and (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259)))))) (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))))) (= lambda!247401 lambda!247395))))

(declare-fun b!4968825 () Bool)

(declare-fun e!3105673 () Bool)

(assert (=> b!4968825 (= e!3105673 true)))

(assert (=> d!1599458 e!3105673))

(assert (= d!1599458 b!4968825))

(assert (=> b!4968825 (< (dynLambda!23159 order!26203 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) (dynLambda!23160 order!26205 lambda!247401))))

(assert (=> b!4968825 (< (dynLambda!23161 order!26207 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) (dynLambda!23160 order!26205 lambda!247401))))

(assert (=> d!1599458 (= (list!18365 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051184))))) (list!18365 (seqFromList!6036 (_1!34390 lt!2051184))))))

(declare-fun lt!2051861 () Unit!148361)

(assert (=> d!1599458 (= lt!2051861 (ForallOf!1227 lambda!247401 (seqFromList!6036 (_1!34390 lt!2051184))))))

(assert (=> d!1599458 (= (lemmaSemiInverse!2602 (transformation!8393 (h!63892 rulesArg!259)) (seqFromList!6036 (_1!34390 lt!2051184))) lt!2051861)))

(declare-fun b_lambda!196951 () Bool)

(assert (=> (not b_lambda!196951) (not d!1599458)))

(declare-fun t!368754 () Bool)

(declare-fun tb!260725 () Bool)

(assert (=> (and b!4967137 (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) t!368754) tb!260725))

(declare-fun tp!1393484 () Bool)

(declare-fun b!4968826 () Bool)

(declare-fun e!3105674 () Bool)

(assert (=> b!4968826 (= e!3105674 (and (inv!75075 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051184)))))) tp!1393484))))

(declare-fun result!325844 () Bool)

(assert (=> tb!260725 (= result!325844 (and (inv!75074 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051184))))) e!3105674))))

(assert (= tb!260725 b!4968826))

(declare-fun m!5995890 () Bool)

(assert (=> b!4968826 m!5995890))

(declare-fun m!5995892 () Bool)

(assert (=> tb!260725 m!5995892))

(assert (=> d!1599458 t!368754))

(declare-fun b_and!348307 () Bool)

(assert (= b_and!348301 (and (=> t!368754 result!325844) b_and!348307)))

(declare-fun t!368756 () Bool)

(declare-fun tb!260727 () Bool)

(assert (=> (and b!4967394 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) t!368756) tb!260727))

(declare-fun result!325846 () Bool)

(assert (= result!325846 result!325844))

(assert (=> d!1599458 t!368756))

(declare-fun b_and!348309 () Bool)

(assert (= b_and!348303 (and (=> t!368756 result!325846) b_and!348309)))

(declare-fun t!368758 () Bool)

(declare-fun tb!260729 () Bool)

(assert (=> (and b!4968022 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) t!368758) tb!260729))

(declare-fun result!325848 () Bool)

(assert (= result!325848 result!325844))

(assert (=> d!1599458 t!368758))

(declare-fun b_and!348311 () Bool)

(assert (= b_and!348305 (and (=> t!368758 result!325848) b_and!348311)))

(declare-fun b_lambda!196953 () Bool)

(assert (=> (not b_lambda!196953) (not d!1599458)))

(declare-fun t!368760 () Bool)

(declare-fun tb!260731 () Bool)

(assert (=> (and b!4967137 (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) t!368760) tb!260731))

(declare-fun result!325850 () Bool)

(assert (=> tb!260731 (= result!325850 (inv!21 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051184)))))))

(declare-fun m!5995894 () Bool)

(assert (=> tb!260731 m!5995894))

(assert (=> d!1599458 t!368760))

(declare-fun b_and!348313 () Bool)

(assert (= b_and!348295 (and (=> t!368760 result!325850) b_and!348313)))

(declare-fun t!368762 () Bool)

(declare-fun tb!260733 () Bool)

(assert (=> (and b!4967394 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) t!368762) tb!260733))

(declare-fun result!325852 () Bool)

(assert (= result!325852 result!325850))

(assert (=> d!1599458 t!368762))

(declare-fun b_and!348315 () Bool)

(assert (= b_and!348297 (and (=> t!368762 result!325852) b_and!348315)))

(declare-fun t!368764 () Bool)

(declare-fun tb!260735 () Bool)

(assert (=> (and b!4968022 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) t!368764) tb!260735))

(declare-fun result!325854 () Bool)

(assert (= result!325854 result!325850))

(assert (=> d!1599458 t!368764))

(declare-fun b_and!348317 () Bool)

(assert (= b_and!348299 (and (=> t!368764 result!325854) b_and!348317)))

(assert (=> d!1599458 m!5993754))

(declare-fun m!5995896 () Bool)

(assert (=> d!1599458 m!5995896))

(assert (=> d!1599458 m!5993754))

(declare-fun m!5995898 () Bool)

(assert (=> d!1599458 m!5995898))

(declare-fun m!5995900 () Bool)

(assert (=> d!1599458 m!5995900))

(declare-fun m!5995902 () Bool)

(assert (=> d!1599458 m!5995902))

(assert (=> d!1599458 m!5993754))

(declare-fun m!5995904 () Bool)

(assert (=> d!1599458 m!5995904))

(assert (=> d!1599458 m!5995896))

(assert (=> d!1599458 m!5995900))

(assert (=> b!4967520 d!1599458))

(assert (=> b!4967520 d!1598808))

(assert (=> b!4967520 d!1598850))

(assert (=> b!4967520 d!1598852))

(declare-fun d!1599460 () Bool)

(assert (=> d!1599460 (= (seqFromList!6036 (_1!34390 lt!2051184)) (fromListB!2731 (_1!34390 lt!2051184)))))

(declare-fun bs!1183311 () Bool)

(assert (= bs!1183311 d!1599460))

(declare-fun m!5995906 () Bool)

(assert (=> bs!1183311 m!5995906))

(assert (=> b!4967520 d!1599460))

(assert (=> b!4967520 d!1599164))

(declare-fun d!1599462 () Bool)

(assert (=> d!1599462 (= (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949)))) (is-Nil!57443 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949)))))))

(assert (=> b!4967520 d!1599462))

(declare-fun d!1599464 () Bool)

(assert (=> d!1599464 (= (apply!13904 (transformation!8393 (h!63892 rulesArg!259)) (seqFromList!6036 (_1!34390 lt!2051184))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051184))))))

(declare-fun b_lambda!196955 () Bool)

(assert (=> (not b_lambda!196955) (not d!1599464)))

(assert (=> d!1599464 t!368760))

(declare-fun b_and!348319 () Bool)

(assert (= b_and!348313 (and (=> t!368760 result!325850) b_and!348319)))

(assert (=> d!1599464 t!368762))

(declare-fun b_and!348321 () Bool)

(assert (= b_and!348315 (and (=> t!368762 result!325852) b_and!348321)))

(assert (=> d!1599464 t!368764))

(declare-fun b_and!348323 () Bool)

(assert (= b_and!348317 (and (=> t!368764 result!325854) b_and!348323)))

(assert (=> d!1599464 m!5993754))

(assert (=> d!1599464 m!5995896))

(assert (=> b!4967520 d!1599464))

(declare-fun d!1599466 () Bool)

(declare-fun lt!2051862 () Int)

(assert (=> d!1599466 (>= lt!2051862 0)))

(declare-fun e!3105676 () Int)

(assert (=> d!1599466 (= lt!2051862 e!3105676)))

(declare-fun c!847849 () Bool)

(assert (=> d!1599466 (= c!847849 (is-Nil!57443 (_1!34390 lt!2051184)))))

(assert (=> d!1599466 (= (size!38072 (_1!34390 lt!2051184)) lt!2051862)))

(declare-fun b!4968827 () Bool)

(assert (=> b!4968827 (= e!3105676 0)))

(declare-fun b!4968828 () Bool)

(assert (=> b!4968828 (= e!3105676 (+ 1 (size!38072 (t!368627 (_1!34390 lt!2051184)))))))

(assert (= (and d!1599466 c!847849) b!4968827))

(assert (= (and d!1599466 (not c!847849)) b!4968828))

(declare-fun m!5995908 () Bool)

(assert (=> b!4968828 m!5995908))

(assert (=> b!4967520 d!1599466))

(declare-fun d!1599468 () Bool)

(declare-fun e!3105677 () Bool)

(assert (=> d!1599468 e!3105677))

(declare-fun res!2120942 () Bool)

(assert (=> d!1599468 (=> res!2120942 e!3105677)))

(assert (=> d!1599468 (= res!2120942 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949)))))))

(declare-fun lt!2051863 () Unit!148361)

(assert (=> d!1599468 (= lt!2051863 (choose!36671 (regex!8393 (h!63892 rulesArg!259)) lt!2050949))))

(assert (=> d!1599468 (validRegex!5969 (regex!8393 (h!63892 rulesArg!259)))))

(assert (=> d!1599468 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1816 (regex!8393 (h!63892 rulesArg!259)) lt!2050949) lt!2051863)))

(declare-fun b!4968829 () Bool)

(assert (=> b!4968829 (= e!3105677 (matchR!6636 (regex!8393 (h!63892 rulesArg!259)) (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949)))))))

(assert (= (and d!1599468 (not res!2120942)) b!4968829))

(declare-fun m!5995910 () Bool)

(assert (=> d!1599468 m!5995910))

(assert (=> d!1599468 m!5993574))

(assert (=> d!1599468 m!5993428))

(assert (=> d!1599468 m!5993762))

(assert (=> d!1599468 m!5993428))

(assert (=> d!1599468 m!5993758))

(assert (=> d!1599468 m!5993574))

(assert (=> d!1599468 m!5993828))

(assert (=> b!4968829 m!5993574))

(assert (=> b!4968829 m!5993428))

(assert (=> b!4968829 m!5993574))

(assert (=> b!4968829 m!5993428))

(assert (=> b!4968829 m!5993762))

(assert (=> b!4968829 m!5993768))

(assert (=> b!4967520 d!1599468))

(assert (=> b!4967420 d!1598902))

(assert (=> b!4967420 d!1598904))

(declare-fun d!1599470 () Bool)

(declare-fun c!847850 () Bool)

(assert (=> d!1599470 (= c!847850 (is-Node!15145 (left!41900 (right!42230 (c!847515 totalInput!464)))))))

(declare-fun e!3105678 () Bool)

(assert (=> d!1599470 (= (inv!75075 (left!41900 (right!42230 (c!847515 totalInput!464)))) e!3105678)))

(declare-fun b!4968830 () Bool)

(assert (=> b!4968830 (= e!3105678 (inv!75080 (left!41900 (right!42230 (c!847515 totalInput!464)))))))

(declare-fun b!4968831 () Bool)

(declare-fun e!3105679 () Bool)

(assert (=> b!4968831 (= e!3105678 e!3105679)))

(declare-fun res!2120943 () Bool)

(assert (=> b!4968831 (= res!2120943 (not (is-Leaf!25167 (left!41900 (right!42230 (c!847515 totalInput!464))))))))

(assert (=> b!4968831 (=> res!2120943 e!3105679)))

(declare-fun b!4968832 () Bool)

(assert (=> b!4968832 (= e!3105679 (inv!75081 (left!41900 (right!42230 (c!847515 totalInput!464)))))))

(assert (= (and d!1599470 c!847850) b!4968830))

(assert (= (and d!1599470 (not c!847850)) b!4968831))

(assert (= (and b!4968831 (not res!2120943)) b!4968832))

(declare-fun m!5995912 () Bool)

(assert (=> b!4968830 m!5995912))

(declare-fun m!5995914 () Bool)

(assert (=> b!4968832 m!5995914))

(assert (=> b!4968017 d!1599470))

(declare-fun d!1599472 () Bool)

(declare-fun c!847851 () Bool)

(assert (=> d!1599472 (= c!847851 (is-Node!15145 (right!42230 (right!42230 (c!847515 totalInput!464)))))))

(declare-fun e!3105680 () Bool)

(assert (=> d!1599472 (= (inv!75075 (right!42230 (right!42230 (c!847515 totalInput!464)))) e!3105680)))

(declare-fun b!4968833 () Bool)

(assert (=> b!4968833 (= e!3105680 (inv!75080 (right!42230 (right!42230 (c!847515 totalInput!464)))))))

(declare-fun b!4968834 () Bool)

(declare-fun e!3105681 () Bool)

(assert (=> b!4968834 (= e!3105680 e!3105681)))

(declare-fun res!2120944 () Bool)

(assert (=> b!4968834 (= res!2120944 (not (is-Leaf!25167 (right!42230 (right!42230 (c!847515 totalInput!464))))))))

(assert (=> b!4968834 (=> res!2120944 e!3105681)))

(declare-fun b!4968835 () Bool)

(assert (=> b!4968835 (= e!3105681 (inv!75081 (right!42230 (right!42230 (c!847515 totalInput!464)))))))

(assert (= (and d!1599472 c!847851) b!4968833))

(assert (= (and d!1599472 (not c!847851)) b!4968834))

(assert (= (and b!4968834 (not res!2120944)) b!4968835))

(declare-fun m!5995916 () Bool)

(assert (=> b!4968833 m!5995916))

(declare-fun m!5995918 () Bool)

(assert (=> b!4968835 m!5995918))

(assert (=> b!4968017 d!1599472))

(declare-fun d!1599474 () Bool)

(assert (=> d!1599474 (dynLambda!23168 lambda!247380 (_1!34389 lt!2051419))))

(declare-fun lt!2051864 () Unit!148361)

(assert (=> d!1599474 (= lt!2051864 (choose!36672 lambda!247380 (_1!34389 lt!2051419)))))

(assert (=> d!1599474 (Forall!1762 lambda!247380)))

(assert (=> d!1599474 (= (ForallOf!1227 lambda!247380 (_1!34389 lt!2051419)) lt!2051864)))

(declare-fun b_lambda!196957 () Bool)

(assert (=> (not b_lambda!196957) (not d!1599474)))

(declare-fun bs!1183312 () Bool)

(assert (= bs!1183312 d!1599474))

(declare-fun m!5995920 () Bool)

(assert (=> bs!1183312 m!5995920))

(declare-fun m!5995922 () Bool)

(assert (=> bs!1183312 m!5995922))

(declare-fun m!5995924 () Bool)

(assert (=> bs!1183312 m!5995924))

(assert (=> b!4967852 d!1599474))

(declare-fun d!1599476 () Bool)

(assert (=> d!1599476 (= (apply!13904 (transformation!8393 (h!63892 (t!368628 rulesArg!259))) (_1!34389 lt!2051419)) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (_1!34389 lt!2051419)))))

(declare-fun b_lambda!196959 () Bool)

(assert (=> (not b_lambda!196959) (not d!1599476)))

(declare-fun t!368766 () Bool)

(declare-fun tb!260737 () Bool)

(assert (=> (and b!4967137 (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) t!368766) tb!260737))

(declare-fun result!325856 () Bool)

(assert (=> tb!260737 (= result!325856 (inv!21 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (_1!34389 lt!2051419))))))

(declare-fun m!5995926 () Bool)

(assert (=> tb!260737 m!5995926))

(assert (=> d!1599476 t!368766))

(declare-fun b_and!348325 () Bool)

(assert (= b_and!348319 (and (=> t!368766 result!325856) b_and!348325)))

(declare-fun t!368768 () Bool)

(declare-fun tb!260739 () Bool)

(assert (=> (and b!4967394 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) t!368768) tb!260739))

(declare-fun result!325858 () Bool)

(assert (= result!325858 result!325856))

(assert (=> d!1599476 t!368768))

(declare-fun b_and!348327 () Bool)

(assert (= b_and!348321 (and (=> t!368768 result!325858) b_and!348327)))

(declare-fun t!368770 () Bool)

(declare-fun tb!260741 () Bool)

(assert (=> (and b!4968022 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) t!368770) tb!260741))

(declare-fun result!325860 () Bool)

(assert (= result!325860 result!325856))

(assert (=> d!1599476 t!368770))

(declare-fun b_and!348329 () Bool)

(assert (= b_and!348323 (and (=> t!368770 result!325860) b_and!348329)))

(declare-fun m!5995928 () Bool)

(assert (=> d!1599476 m!5995928))

(assert (=> b!4967852 d!1599476))

(declare-fun d!1599478 () Bool)

(assert (=> d!1599478 (= (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) lt!2051424 lt!2051424 (size!38072 lt!2051424)))) (is-Nil!57443 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) lt!2051424 lt!2051424 (size!38072 lt!2051424)))))))

(assert (=> b!4967852 d!1599478))

(declare-fun bs!1183313 () Bool)

(declare-fun d!1599480 () Bool)

(assert (= bs!1183313 (and d!1599480 d!1598816)))

(declare-fun lambda!247402 () Int)

(assert (=> bs!1183313 (= (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) (= lambda!247402 lambda!247375))))

(declare-fun bs!1183314 () Bool)

(assert (= bs!1183314 (and d!1599480 d!1598846)))

(assert (=> bs!1183314 (= (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) (= lambda!247402 lambda!247379))))

(declare-fun bs!1183315 () Bool)

(assert (= bs!1183315 (and d!1599480 d!1599370)))

(assert (=> bs!1183315 (= lambda!247402 lambda!247397)))

(declare-fun b!4968836 () Bool)

(declare-fun e!3105683 () Bool)

(assert (=> b!4968836 (= e!3105683 true)))

(assert (=> d!1599480 e!3105683))

(assert (= d!1599480 b!4968836))

(assert (=> b!4968836 (< (dynLambda!23159 order!26203 (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) (dynLambda!23165 order!26215 lambda!247402))))

(assert (=> b!4968836 (< (dynLambda!23161 order!26207 (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) (dynLambda!23165 order!26215 lambda!247402))))

(assert (=> d!1599480 (= (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (_1!34389 lt!2051419)) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051419)))))))

(declare-fun lt!2051865 () Unit!148361)

(assert (=> d!1599480 (= lt!2051865 (Forall2of!477 lambda!247402 (_1!34389 lt!2051419) (seqFromList!6036 (list!18365 (_1!34389 lt!2051419)))))))

(assert (=> d!1599480 (= (list!18365 (_1!34389 lt!2051419)) (list!18365 (seqFromList!6036 (list!18365 (_1!34389 lt!2051419)))))))

(assert (=> d!1599480 (= (lemmaEqSameImage!1168 (transformation!8393 (h!63892 (t!368628 rulesArg!259))) (_1!34389 lt!2051419) (seqFromList!6036 (list!18365 (_1!34389 lt!2051419)))) lt!2051865)))

(declare-fun b_lambda!196961 () Bool)

(assert (=> (not b_lambda!196961) (not d!1599480)))

(assert (=> d!1599480 t!368766))

(declare-fun b_and!348331 () Bool)

(assert (= b_and!348325 (and (=> t!368766 result!325856) b_and!348331)))

(assert (=> d!1599480 t!368768))

(declare-fun b_and!348333 () Bool)

(assert (= b_and!348327 (and (=> t!368768 result!325858) b_and!348333)))

(assert (=> d!1599480 t!368770))

(declare-fun b_and!348335 () Bool)

(assert (= b_and!348329 (and (=> t!368770 result!325860) b_and!348335)))

(declare-fun b_lambda!196963 () Bool)

(assert (=> (not b_lambda!196963) (not d!1599480)))

(declare-fun t!368772 () Bool)

(declare-fun tb!260743 () Bool)

(assert (=> (and b!4967137 (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) t!368772) tb!260743))

(declare-fun result!325862 () Bool)

(assert (=> tb!260743 (= result!325862 (inv!21 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051419))))))))

(declare-fun m!5995930 () Bool)

(assert (=> tb!260743 m!5995930))

(assert (=> d!1599480 t!368772))

(declare-fun b_and!348337 () Bool)

(assert (= b_and!348331 (and (=> t!368772 result!325862) b_and!348337)))

(declare-fun t!368774 () Bool)

(declare-fun tb!260745 () Bool)

(assert (=> (and b!4967394 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) t!368774) tb!260745))

(declare-fun result!325864 () Bool)

(assert (= result!325864 result!325862))

(assert (=> d!1599480 t!368774))

(declare-fun b_and!348339 () Bool)

(assert (= b_and!348333 (and (=> t!368774 result!325864) b_and!348339)))

(declare-fun t!368776 () Bool)

(declare-fun tb!260747 () Bool)

(assert (=> (and b!4968022 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) t!368776) tb!260747))

(declare-fun result!325866 () Bool)

(assert (= result!325866 result!325862))

(assert (=> d!1599480 t!368776))

(declare-fun b_and!348341 () Bool)

(assert (= b_and!348335 (and (=> t!368776 result!325866) b_and!348341)))

(assert (=> d!1599480 m!5994158))

(declare-fun m!5995932 () Bool)

(assert (=> d!1599480 m!5995932))

(assert (=> d!1599480 m!5994158))

(declare-fun m!5995934 () Bool)

(assert (=> d!1599480 m!5995934))

(assert (=> d!1599480 m!5994158))

(declare-fun m!5995936 () Bool)

(assert (=> d!1599480 m!5995936))

(assert (=> d!1599480 m!5994150))

(assert (=> d!1599480 m!5995928))

(assert (=> b!4967852 d!1599480))

(assert (=> b!4967852 d!1598850))

(declare-fun d!1599482 () Bool)

(declare-fun e!3105685 () Bool)

(assert (=> d!1599482 e!3105685))

(declare-fun res!2120945 () Bool)

(assert (=> d!1599482 (=> res!2120945 e!3105685)))

(assert (=> d!1599482 (= res!2120945 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) lt!2051424 lt!2051424 (size!38072 lt!2051424)))))))

(declare-fun lt!2051866 () Unit!148361)

(assert (=> d!1599482 (= lt!2051866 (choose!36671 (regex!8393 (h!63892 (t!368628 rulesArg!259))) lt!2051424))))

(assert (=> d!1599482 (validRegex!5969 (regex!8393 (h!63892 (t!368628 rulesArg!259))))))

(assert (=> d!1599482 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1816 (regex!8393 (h!63892 (t!368628 rulesArg!259))) lt!2051424) lt!2051866)))

(declare-fun b!4968837 () Bool)

(assert (=> b!4968837 (= e!3105685 (matchR!6636 (regex!8393 (h!63892 (t!368628 rulesArg!259))) (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) lt!2051424 lt!2051424 (size!38072 lt!2051424)))))))

(assert (= (and d!1599482 (not res!2120945)) b!4968837))

(declare-fun m!5995938 () Bool)

(assert (=> d!1599482 m!5995938))

(assert (=> d!1599482 m!5993574))

(assert (=> d!1599482 m!5994148))

(assert (=> d!1599482 m!5994152))

(assert (=> d!1599482 m!5994148))

(assert (=> d!1599482 m!5994156))

(assert (=> d!1599482 m!5993574))

(assert (=> d!1599482 m!5995548))

(assert (=> b!4968837 m!5993574))

(assert (=> b!4968837 m!5994148))

(assert (=> b!4968837 m!5993574))

(assert (=> b!4968837 m!5994148))

(assert (=> b!4968837 m!5994152))

(assert (=> b!4968837 m!5994170))

(assert (=> b!4967852 d!1599482))

(assert (=> b!4967852 d!1598680))

(declare-fun d!1599484 () Bool)

(declare-fun lt!2051867 () Int)

(assert (=> d!1599484 (= lt!2051867 (size!38072 (list!18365 (_1!34389 lt!2051419))))))

(assert (=> d!1599484 (= lt!2051867 (size!38076 (c!847515 (_1!34389 lt!2051419))))))

(assert (=> d!1599484 (= (size!38073 (_1!34389 lt!2051419)) lt!2051867)))

(declare-fun bs!1183316 () Bool)

(assert (= bs!1183316 d!1599484))

(assert (=> bs!1183316 m!5994150))

(assert (=> bs!1183316 m!5994150))

(declare-fun m!5995940 () Bool)

(assert (=> bs!1183316 m!5995940))

(declare-fun m!5995942 () Bool)

(assert (=> bs!1183316 m!5995942))

(assert (=> b!4967852 d!1599484))

(declare-fun d!1599486 () Bool)

(declare-fun e!3105686 () Bool)

(assert (=> d!1599486 e!3105686))

(declare-fun res!2120946 () Bool)

(assert (=> d!1599486 (=> (not res!2120946) (not e!3105686))))

(assert (=> d!1599486 (= res!2120946 (semiInverseModEq!3700 (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))))))

(declare-fun Unit!148386 () Unit!148361)

(assert (=> d!1599486 (= (lemmaInv!1334 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) Unit!148386)))

(declare-fun b!4968838 () Bool)

(assert (=> b!4968838 (= e!3105686 (equivClasses!3548 (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))))))

(assert (= (and d!1599486 res!2120946) b!4968838))

(assert (=> d!1599486 m!5994300))

(assert (=> b!4968838 m!5994302))

(assert (=> b!4967852 d!1599486))

(assert (=> b!4967852 d!1599394))

(declare-fun d!1599488 () Bool)

(assert (=> d!1599488 (= (list!18365 (_1!34389 lt!2051419)) (list!18367 (c!847515 (_1!34389 lt!2051419))))))

(declare-fun bs!1183317 () Bool)

(assert (= bs!1183317 d!1599488))

(declare-fun m!5995944 () Bool)

(assert (=> bs!1183317 m!5995944))

(assert (=> b!4967852 d!1599488))

(declare-fun d!1599490 () Bool)

(assert (=> d!1599490 (= (seqFromList!6036 (list!18365 (_1!34389 lt!2051419))) (fromListB!2731 (list!18365 (_1!34389 lt!2051419))))))

(declare-fun bs!1183318 () Bool)

(assert (= bs!1183318 d!1599490))

(assert (=> bs!1183318 m!5994150))

(declare-fun m!5995946 () Bool)

(assert (=> bs!1183318 m!5995946))

(assert (=> b!4967852 d!1599490))

(declare-fun d!1599492 () Bool)

(assert (=> d!1599492 (dynLambda!23168 lambda!247380 (seqFromList!6036 (list!18365 (_1!34389 lt!2051419))))))

(declare-fun lt!2051868 () Unit!148361)

(assert (=> d!1599492 (= lt!2051868 (choose!36672 lambda!247380 (seqFromList!6036 (list!18365 (_1!34389 lt!2051419)))))))

(assert (=> d!1599492 (Forall!1762 lambda!247380)))

(assert (=> d!1599492 (= (ForallOf!1227 lambda!247380 (seqFromList!6036 (list!18365 (_1!34389 lt!2051419)))) lt!2051868)))

(declare-fun b_lambda!196965 () Bool)

(assert (=> (not b_lambda!196965) (not d!1599492)))

(declare-fun bs!1183319 () Bool)

(assert (= bs!1183319 d!1599492))

(assert (=> bs!1183319 m!5994158))

(declare-fun m!5995948 () Bool)

(assert (=> bs!1183319 m!5995948))

(assert (=> bs!1183319 m!5994158))

(declare-fun m!5995950 () Bool)

(assert (=> bs!1183319 m!5995950))

(assert (=> bs!1183319 m!5995924))

(assert (=> b!4967852 d!1599492))

(assert (=> b!4967852 d!1599396))

(declare-fun d!1599494 () Bool)

(declare-fun c!847852 () Bool)

(assert (=> d!1599494 (= c!847852 (is-Node!15145 (left!41900 (right!42230 (c!847515 input!1342)))))))

(declare-fun e!3105687 () Bool)

(assert (=> d!1599494 (= (inv!75075 (left!41900 (right!42230 (c!847515 input!1342)))) e!3105687)))

(declare-fun b!4968839 () Bool)

(assert (=> b!4968839 (= e!3105687 (inv!75080 (left!41900 (right!42230 (c!847515 input!1342)))))))

(declare-fun b!4968840 () Bool)

(declare-fun e!3105688 () Bool)

(assert (=> b!4968840 (= e!3105687 e!3105688)))

(declare-fun res!2120947 () Bool)

(assert (=> b!4968840 (= res!2120947 (not (is-Leaf!25167 (left!41900 (right!42230 (c!847515 input!1342))))))))

(assert (=> b!4968840 (=> res!2120947 e!3105688)))

(declare-fun b!4968841 () Bool)

(assert (=> b!4968841 (= e!3105688 (inv!75081 (left!41900 (right!42230 (c!847515 input!1342)))))))

(assert (= (and d!1599494 c!847852) b!4968839))

(assert (= (and d!1599494 (not c!847852)) b!4968840))

(assert (= (and b!4968840 (not res!2120947)) b!4968841))

(declare-fun m!5995952 () Bool)

(assert (=> b!4968839 m!5995952))

(declare-fun m!5995954 () Bool)

(assert (=> b!4968841 m!5995954))

(assert (=> b!4968038 d!1599494))

(declare-fun d!1599496 () Bool)

(declare-fun c!847853 () Bool)

(assert (=> d!1599496 (= c!847853 (is-Node!15145 (right!42230 (right!42230 (c!847515 input!1342)))))))

(declare-fun e!3105689 () Bool)

(assert (=> d!1599496 (= (inv!75075 (right!42230 (right!42230 (c!847515 input!1342)))) e!3105689)))

(declare-fun b!4968842 () Bool)

(assert (=> b!4968842 (= e!3105689 (inv!75080 (right!42230 (right!42230 (c!847515 input!1342)))))))

(declare-fun b!4968843 () Bool)

(declare-fun e!3105690 () Bool)

(assert (=> b!4968843 (= e!3105689 e!3105690)))

(declare-fun res!2120948 () Bool)

(assert (=> b!4968843 (= res!2120948 (not (is-Leaf!25167 (right!42230 (right!42230 (c!847515 input!1342))))))))

(assert (=> b!4968843 (=> res!2120948 e!3105690)))

(declare-fun b!4968844 () Bool)

(assert (=> b!4968844 (= e!3105690 (inv!75081 (right!42230 (right!42230 (c!847515 input!1342)))))))

(assert (= (and d!1599496 c!847853) b!4968842))

(assert (= (and d!1599496 (not c!847853)) b!4968843))

(assert (= (and b!4968843 (not res!2120948)) b!4968844))

(declare-fun m!5995956 () Bool)

(assert (=> b!4968842 m!5995956))

(declare-fun m!5995958 () Bool)

(assert (=> b!4968844 m!5995958))

(assert (=> b!4968038 d!1599496))

(declare-fun d!1599498 () Bool)

(declare-fun lt!2051869 () Int)

(assert (=> d!1599498 (= lt!2051869 (size!38072 (list!18367 (left!41900 (c!847515 totalInput!464)))))))

(assert (=> d!1599498 (= lt!2051869 (ite (is-Empty!15145 (left!41900 (c!847515 totalInput!464))) 0 (ite (is-Leaf!25167 (left!41900 (c!847515 totalInput!464))) (csize!30521 (left!41900 (c!847515 totalInput!464))) (csize!30520 (left!41900 (c!847515 totalInput!464))))))))

(assert (=> d!1599498 (= (size!38076 (left!41900 (c!847515 totalInput!464))) lt!2051869)))

(declare-fun bs!1183320 () Bool)

(assert (= bs!1183320 d!1599498))

(assert (=> bs!1183320 m!5993902))

(assert (=> bs!1183320 m!5993902))

(declare-fun m!5995960 () Bool)

(assert (=> bs!1183320 m!5995960))

(assert (=> d!1598804 d!1599498))

(declare-fun d!1599500 () Bool)

(declare-fun lt!2051870 () Int)

(assert (=> d!1599500 (= lt!2051870 (size!38072 (list!18367 (right!42230 (c!847515 totalInput!464)))))))

(assert (=> d!1599500 (= lt!2051870 (ite (is-Empty!15145 (right!42230 (c!847515 totalInput!464))) 0 (ite (is-Leaf!25167 (right!42230 (c!847515 totalInput!464))) (csize!30521 (right!42230 (c!847515 totalInput!464))) (csize!30520 (right!42230 (c!847515 totalInput!464))))))))

(assert (=> d!1599500 (= (size!38076 (right!42230 (c!847515 totalInput!464))) lt!2051870)))

(declare-fun bs!1183321 () Bool)

(assert (= bs!1183321 d!1599500))

(assert (=> bs!1183321 m!5993904))

(assert (=> bs!1183321 m!5993904))

(declare-fun m!5995962 () Bool)

(assert (=> bs!1183321 m!5995962))

(assert (=> d!1598804 d!1599500))

(declare-fun d!1599502 () Bool)

(declare-fun res!2120949 () Bool)

(declare-fun e!3105691 () Bool)

(assert (=> d!1599502 (=> (not res!2120949) (not e!3105691))))

(assert (=> d!1599502 (= res!2120949 (= (csize!30520 (left!41900 (c!847515 totalInput!464))) (+ (size!38076 (left!41900 (left!41900 (c!847515 totalInput!464)))) (size!38076 (right!42230 (left!41900 (c!847515 totalInput!464)))))))))

(assert (=> d!1599502 (= (inv!75080 (left!41900 (c!847515 totalInput!464))) e!3105691)))

(declare-fun b!4968845 () Bool)

(declare-fun res!2120950 () Bool)

(assert (=> b!4968845 (=> (not res!2120950) (not e!3105691))))

(assert (=> b!4968845 (= res!2120950 (and (not (= (left!41900 (left!41900 (c!847515 totalInput!464))) Empty!15145)) (not (= (right!42230 (left!41900 (c!847515 totalInput!464))) Empty!15145))))))

(declare-fun b!4968846 () Bool)

(declare-fun res!2120951 () Bool)

(assert (=> b!4968846 (=> (not res!2120951) (not e!3105691))))

(assert (=> b!4968846 (= res!2120951 (= (cheight!15356 (left!41900 (c!847515 totalInput!464))) (+ (max!0 (height!2013 (left!41900 (left!41900 (c!847515 totalInput!464)))) (height!2013 (right!42230 (left!41900 (c!847515 totalInput!464))))) 1)))))

(declare-fun b!4968847 () Bool)

(assert (=> b!4968847 (= e!3105691 (<= 0 (cheight!15356 (left!41900 (c!847515 totalInput!464)))))))

(assert (= (and d!1599502 res!2120949) b!4968845))

(assert (= (and b!4968845 res!2120950) b!4968846))

(assert (= (and b!4968846 res!2120951) b!4968847))

(declare-fun m!5995964 () Bool)

(assert (=> d!1599502 m!5995964))

(declare-fun m!5995966 () Bool)

(assert (=> d!1599502 m!5995966))

(declare-fun m!5995968 () Bool)

(assert (=> b!4968846 m!5995968))

(declare-fun m!5995970 () Bool)

(assert (=> b!4968846 m!5995970))

(assert (=> b!4968846 m!5995968))

(assert (=> b!4968846 m!5995970))

(declare-fun m!5995972 () Bool)

(assert (=> b!4968846 m!5995972))

(assert (=> b!4967922 d!1599502))

(declare-fun d!1599504 () Bool)

(assert (=> d!1599504 (= (isEmpty!30938 (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))) (is-Nil!57443 (tail!9801 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))))))

(assert (=> b!4967665 d!1599504))

(assert (=> b!4967665 d!1599314))

(declare-fun b!4968849 () Bool)

(declare-fun e!3105693 () List!57567)

(assert (=> b!4968849 (= e!3105693 (Cons!57443 (h!63891 (list!18367 (left!41900 (c!847515 (_2!34386 lt!2050944))))) (++!12532 (t!368627 (list!18367 (left!41900 (c!847515 (_2!34386 lt!2050944))))) (list!18367 (right!42230 (c!847515 (_2!34386 lt!2050944)))))))))

(declare-fun b!4968851 () Bool)

(declare-fun e!3105692 () Bool)

(declare-fun lt!2051871 () List!57567)

(assert (=> b!4968851 (= e!3105692 (or (not (= (list!18367 (right!42230 (c!847515 (_2!34386 lt!2050944)))) Nil!57443)) (= lt!2051871 (list!18367 (left!41900 (c!847515 (_2!34386 lt!2050944)))))))))

(declare-fun b!4968848 () Bool)

(assert (=> b!4968848 (= e!3105693 (list!18367 (right!42230 (c!847515 (_2!34386 lt!2050944)))))))

(declare-fun d!1599506 () Bool)

(assert (=> d!1599506 e!3105692))

(declare-fun res!2120952 () Bool)

(assert (=> d!1599506 (=> (not res!2120952) (not e!3105692))))

(assert (=> d!1599506 (= res!2120952 (= (content!10184 lt!2051871) (set.union (content!10184 (list!18367 (left!41900 (c!847515 (_2!34386 lt!2050944))))) (content!10184 (list!18367 (right!42230 (c!847515 (_2!34386 lt!2050944))))))))))

(assert (=> d!1599506 (= lt!2051871 e!3105693)))

(declare-fun c!847854 () Bool)

(assert (=> d!1599506 (= c!847854 (is-Nil!57443 (list!18367 (left!41900 (c!847515 (_2!34386 lt!2050944))))))))

(assert (=> d!1599506 (= (++!12532 (list!18367 (left!41900 (c!847515 (_2!34386 lt!2050944)))) (list!18367 (right!42230 (c!847515 (_2!34386 lt!2050944))))) lt!2051871)))

(declare-fun b!4968850 () Bool)

(declare-fun res!2120953 () Bool)

(assert (=> b!4968850 (=> (not res!2120953) (not e!3105692))))

(assert (=> b!4968850 (= res!2120953 (= (size!38072 lt!2051871) (+ (size!38072 (list!18367 (left!41900 (c!847515 (_2!34386 lt!2050944))))) (size!38072 (list!18367 (right!42230 (c!847515 (_2!34386 lt!2050944))))))))))

(assert (= (and d!1599506 c!847854) b!4968848))

(assert (= (and d!1599506 (not c!847854)) b!4968849))

(assert (= (and d!1599506 res!2120952) b!4968850))

(assert (= (and b!4968850 res!2120953) b!4968851))

(assert (=> b!4968849 m!5993802))

(declare-fun m!5995974 () Bool)

(assert (=> b!4968849 m!5995974))

(declare-fun m!5995976 () Bool)

(assert (=> d!1599506 m!5995976))

(assert (=> d!1599506 m!5993800))

(declare-fun m!5995978 () Bool)

(assert (=> d!1599506 m!5995978))

(assert (=> d!1599506 m!5993802))

(declare-fun m!5995980 () Bool)

(assert (=> d!1599506 m!5995980))

(declare-fun m!5995982 () Bool)

(assert (=> b!4968850 m!5995982))

(assert (=> b!4968850 m!5993800))

(declare-fun m!5995984 () Bool)

(assert (=> b!4968850 m!5995984))

(assert (=> b!4968850 m!5993802))

(declare-fun m!5995986 () Bool)

(assert (=> b!4968850 m!5995986))

(assert (=> b!4967559 d!1599506))

(declare-fun b!4968852 () Bool)

(declare-fun e!3105694 () List!57567)

(assert (=> b!4968852 (= e!3105694 Nil!57443)))

(declare-fun b!4968854 () Bool)

(declare-fun e!3105695 () List!57567)

(assert (=> b!4968854 (= e!3105695 (list!18369 (xs!18471 (left!41900 (c!847515 (_2!34386 lt!2050944))))))))

(declare-fun b!4968855 () Bool)

(assert (=> b!4968855 (= e!3105695 (++!12532 (list!18367 (left!41900 (left!41900 (c!847515 (_2!34386 lt!2050944))))) (list!18367 (right!42230 (left!41900 (c!847515 (_2!34386 lt!2050944)))))))))

(declare-fun b!4968853 () Bool)

(assert (=> b!4968853 (= e!3105694 e!3105695)))

(declare-fun c!847856 () Bool)

(assert (=> b!4968853 (= c!847856 (is-Leaf!25167 (left!41900 (c!847515 (_2!34386 lt!2050944)))))))

(declare-fun d!1599508 () Bool)

(declare-fun c!847855 () Bool)

(assert (=> d!1599508 (= c!847855 (is-Empty!15145 (left!41900 (c!847515 (_2!34386 lt!2050944)))))))

(assert (=> d!1599508 (= (list!18367 (left!41900 (c!847515 (_2!34386 lt!2050944)))) e!3105694)))

(assert (= (and d!1599508 c!847855) b!4968852))

(assert (= (and d!1599508 (not c!847855)) b!4968853))

(assert (= (and b!4968853 c!847856) b!4968854))

(assert (= (and b!4968853 (not c!847856)) b!4968855))

(declare-fun m!5995988 () Bool)

(assert (=> b!4968854 m!5995988))

(declare-fun m!5995990 () Bool)

(assert (=> b!4968855 m!5995990))

(declare-fun m!5995992 () Bool)

(assert (=> b!4968855 m!5995992))

(assert (=> b!4968855 m!5995990))

(assert (=> b!4968855 m!5995992))

(declare-fun m!5995994 () Bool)

(assert (=> b!4968855 m!5995994))

(assert (=> b!4967559 d!1599508))

(declare-fun b!4968856 () Bool)

(declare-fun e!3105696 () List!57567)

(assert (=> b!4968856 (= e!3105696 Nil!57443)))

(declare-fun b!4968858 () Bool)

(declare-fun e!3105697 () List!57567)

(assert (=> b!4968858 (= e!3105697 (list!18369 (xs!18471 (right!42230 (c!847515 (_2!34386 lt!2050944))))))))

(declare-fun b!4968859 () Bool)

(assert (=> b!4968859 (= e!3105697 (++!12532 (list!18367 (left!41900 (right!42230 (c!847515 (_2!34386 lt!2050944))))) (list!18367 (right!42230 (right!42230 (c!847515 (_2!34386 lt!2050944)))))))))

(declare-fun b!4968857 () Bool)

(assert (=> b!4968857 (= e!3105696 e!3105697)))

(declare-fun c!847858 () Bool)

(assert (=> b!4968857 (= c!847858 (is-Leaf!25167 (right!42230 (c!847515 (_2!34386 lt!2050944)))))))

(declare-fun d!1599510 () Bool)

(declare-fun c!847857 () Bool)

(assert (=> d!1599510 (= c!847857 (is-Empty!15145 (right!42230 (c!847515 (_2!34386 lt!2050944)))))))

(assert (=> d!1599510 (= (list!18367 (right!42230 (c!847515 (_2!34386 lt!2050944)))) e!3105696)))

(assert (= (and d!1599510 c!847857) b!4968856))

(assert (= (and d!1599510 (not c!847857)) b!4968857))

(assert (= (and b!4968857 c!847858) b!4968858))

(assert (= (and b!4968857 (not c!847858)) b!4968859))

(declare-fun m!5995996 () Bool)

(assert (=> b!4968858 m!5995996))

(declare-fun m!5995998 () Bool)

(assert (=> b!4968859 m!5995998))

(declare-fun m!5996000 () Bool)

(assert (=> b!4968859 m!5996000))

(assert (=> b!4968859 m!5995998))

(assert (=> b!4968859 m!5996000))

(declare-fun m!5996002 () Bool)

(assert (=> b!4968859 m!5996002))

(assert (=> b!4967559 d!1599510))

(assert (=> b!4967987 d!1599124))

(declare-fun d!1599512 () Bool)

(assert (=> d!1599512 (= (apply!13904 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467)))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051467))))) (dynLambda!23167 (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467))))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051467))))))))

(declare-fun b_lambda!196967 () Bool)

(assert (=> (not b_lambda!196967) (not d!1599512)))

(declare-fun t!368778 () Bool)

(declare-fun tb!260749 () Bool)

(assert (=> (and b!4967137 (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467)))))) t!368778) tb!260749))

(declare-fun result!325868 () Bool)

(assert (=> tb!260749 (= result!325868 (inv!21 (dynLambda!23167 (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467))))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051467)))))))))

(declare-fun m!5996004 () Bool)

(assert (=> tb!260749 m!5996004))

(assert (=> d!1599512 t!368778))

(declare-fun b_and!348343 () Bool)

(assert (= b_and!348337 (and (=> t!368778 result!325868) b_and!348343)))

(declare-fun tb!260751 () Bool)

(declare-fun t!368780 () Bool)

(assert (=> (and b!4967394 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467)))))) t!368780) tb!260751))

(declare-fun result!325870 () Bool)

(assert (= result!325870 result!325868))

(assert (=> d!1599512 t!368780))

(declare-fun b_and!348345 () Bool)

(assert (= b_and!348339 (and (=> t!368780 result!325870) b_and!348345)))

(declare-fun tb!260753 () Bool)

(declare-fun t!368782 () Bool)

(assert (=> (and b!4968022 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467)))))) t!368782) tb!260753))

(declare-fun result!325872 () Bool)

(assert (= result!325872 result!325868))

(assert (=> d!1599512 t!368782))

(declare-fun b_and!348347 () Bool)

(assert (= b_and!348341 (and (=> t!368782 result!325872) b_and!348347)))

(assert (=> d!1599512 m!5994366))

(declare-fun m!5996006 () Bool)

(assert (=> d!1599512 m!5996006))

(assert (=> b!4967987 d!1599512))

(declare-fun d!1599514 () Bool)

(assert (=> d!1599514 (= (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051467)))) (fromListB!2731 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051467)))))))

(declare-fun bs!1183322 () Bool)

(assert (= bs!1183322 d!1599514))

(declare-fun m!5996008 () Bool)

(assert (=> bs!1183322 m!5996008))

(assert (=> b!4967987 d!1599514))

(declare-fun b!4968860 () Bool)

(declare-fun e!3105700 () Option!14449)

(declare-fun lt!2051874 () Option!14449)

(declare-fun lt!2051875 () Option!14449)

(assert (=> b!4968860 (= e!3105700 (ite (and (is-None!14448 lt!2051874) (is-None!14448 lt!2051875)) None!14448 (ite (is-None!14448 lt!2051875) lt!2051874 (ite (is-None!14448 lt!2051874) lt!2051875 (ite (>= (size!38070 (_1!34385 (v!50437 lt!2051874))) (size!38070 (_1!34385 (v!50437 lt!2051875)))) lt!2051874 lt!2051875)))))))

(declare-fun call!346535 () Option!14449)

(assert (=> b!4968860 (= lt!2051874 call!346535)))

(assert (=> b!4968860 (= lt!2051875 (maxPrefix!4660 thiss!15247 (t!368628 (t!368628 (t!368628 rulesArg!259))) lt!2050949))))

(declare-fun b!4968861 () Bool)

(declare-fun e!3105701 () Bool)

(declare-fun lt!2051872 () Option!14449)

(assert (=> b!4968861 (= e!3105701 (contains!19538 (t!368628 (t!368628 rulesArg!259)) (rule!11637 (_1!34385 (get!19940 lt!2051872)))))))

(declare-fun b!4968862 () Bool)

(assert (=> b!4968862 (= e!3105700 call!346535)))

(declare-fun b!4968863 () Bool)

(declare-fun e!3105699 () Bool)

(assert (=> b!4968863 (= e!3105699 e!3105701)))

(declare-fun res!2120958 () Bool)

(assert (=> b!4968863 (=> (not res!2120958) (not e!3105701))))

(assert (=> b!4968863 (= res!2120958 (isDefined!11362 lt!2051872))))

(declare-fun b!4968864 () Bool)

(declare-fun res!2120954 () Bool)

(assert (=> b!4968864 (=> (not res!2120954) (not e!3105701))))

(assert (=> b!4968864 (= res!2120954 (= (value!268642 (_1!34385 (get!19940 lt!2051872))) (apply!13904 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051872)))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051872)))))))))

(declare-fun b!4968865 () Bool)

(declare-fun res!2120955 () Bool)

(assert (=> b!4968865 (=> (not res!2120955) (not e!3105701))))

(assert (=> b!4968865 (= res!2120955 (< (size!38072 (_2!34385 (get!19940 lt!2051872))) (size!38072 lt!2050949)))))

(declare-fun b!4968866 () Bool)

(declare-fun res!2120959 () Bool)

(assert (=> b!4968866 (=> (not res!2120959) (not e!3105701))))

(assert (=> b!4968866 (= res!2120959 (= (++!12532 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051872)))) (_2!34385 (get!19940 lt!2051872))) lt!2050949))))

(declare-fun d!1599516 () Bool)

(assert (=> d!1599516 e!3105699))

(declare-fun res!2120956 () Bool)

(assert (=> d!1599516 (=> res!2120956 e!3105699)))

(assert (=> d!1599516 (= res!2120956 (isEmpty!30935 lt!2051872))))

(assert (=> d!1599516 (= lt!2051872 e!3105700)))

(declare-fun c!847859 () Bool)

(assert (=> d!1599516 (= c!847859 (and (is-Cons!57444 (t!368628 (t!368628 rulesArg!259))) (is-Nil!57444 (t!368628 (t!368628 (t!368628 rulesArg!259))))))))

(declare-fun lt!2051873 () Unit!148361)

(declare-fun lt!2051876 () Unit!148361)

(assert (=> d!1599516 (= lt!2051873 lt!2051876)))

(assert (=> d!1599516 (isPrefix!5244 lt!2050949 lt!2050949)))

(assert (=> d!1599516 (= lt!2051876 (lemmaIsPrefixRefl!3568 lt!2050949 lt!2050949))))

(assert (=> d!1599516 (rulesValidInductive!3296 thiss!15247 (t!368628 (t!368628 rulesArg!259)))))

(assert (=> d!1599516 (= (maxPrefix!4660 thiss!15247 (t!368628 (t!368628 rulesArg!259)) lt!2050949) lt!2051872)))

(declare-fun b!4968867 () Bool)

(declare-fun res!2120957 () Bool)

(assert (=> b!4968867 (=> (not res!2120957) (not e!3105701))))

(assert (=> b!4968867 (= res!2120957 (= (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051872)))) (originalCharacters!8672 (_1!34385 (get!19940 lt!2051872)))))))

(declare-fun bm!346530 () Bool)

(assert (=> bm!346530 (= call!346535 (maxPrefixOneRule!3629 thiss!15247 (h!63892 (t!368628 (t!368628 rulesArg!259))) lt!2050949))))

(declare-fun b!4968868 () Bool)

(declare-fun res!2120960 () Bool)

(assert (=> b!4968868 (=> (not res!2120960) (not e!3105701))))

(assert (=> b!4968868 (= res!2120960 (matchR!6636 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051872)))) (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051872))))))))

(assert (= (and d!1599516 c!847859) b!4968862))

(assert (= (and d!1599516 (not c!847859)) b!4968860))

(assert (= (or b!4968862 b!4968860) bm!346530))

(assert (= (and d!1599516 (not res!2120956)) b!4968863))

(assert (= (and b!4968863 res!2120958) b!4968867))

(assert (= (and b!4968867 res!2120957) b!4968865))

(assert (= (and b!4968865 res!2120955) b!4968866))

(assert (= (and b!4968866 res!2120959) b!4968864))

(assert (= (and b!4968864 res!2120954) b!4968868))

(assert (= (and b!4968868 res!2120960) b!4968861))

(declare-fun m!5996010 () Bool)

(assert (=> b!4968864 m!5996010))

(declare-fun m!5996012 () Bool)

(assert (=> b!4968864 m!5996012))

(assert (=> b!4968864 m!5996012))

(declare-fun m!5996014 () Bool)

(assert (=> b!4968864 m!5996014))

(declare-fun m!5996016 () Bool)

(assert (=> b!4968860 m!5996016))

(assert (=> b!4968868 m!5996010))

(declare-fun m!5996018 () Bool)

(assert (=> b!4968868 m!5996018))

(assert (=> b!4968868 m!5996018))

(declare-fun m!5996020 () Bool)

(assert (=> b!4968868 m!5996020))

(assert (=> b!4968868 m!5996020))

(declare-fun m!5996022 () Bool)

(assert (=> b!4968868 m!5996022))

(assert (=> b!4968867 m!5996010))

(assert (=> b!4968867 m!5996018))

(assert (=> b!4968867 m!5996018))

(assert (=> b!4968867 m!5996020))

(declare-fun m!5996024 () Bool)

(assert (=> b!4968863 m!5996024))

(assert (=> b!4968866 m!5996010))

(assert (=> b!4968866 m!5996018))

(assert (=> b!4968866 m!5996018))

(assert (=> b!4968866 m!5996020))

(assert (=> b!4968866 m!5996020))

(declare-fun m!5996026 () Bool)

(assert (=> b!4968866 m!5996026))

(declare-fun m!5996028 () Bool)

(assert (=> d!1599516 m!5996028))

(assert (=> d!1599516 m!5993340))

(assert (=> d!1599516 m!5993342))

(assert (=> d!1599516 m!5993940))

(assert (=> b!4968865 m!5996010))

(declare-fun m!5996030 () Bool)

(assert (=> b!4968865 m!5996030))

(assert (=> b!4968865 m!5993428))

(assert (=> b!4968861 m!5996010))

(declare-fun m!5996032 () Bool)

(assert (=> b!4968861 m!5996032))

(declare-fun m!5996034 () Bool)

(assert (=> bm!346530 m!5996034))

(assert (=> b!4967934 d!1599516))

(declare-fun d!1599518 () Bool)

(assert (=> d!1599518 (= (head!10668 (tail!9801 lt!2050949)) (h!63891 (tail!9801 lt!2050949)))))

(assert (=> b!4967553 d!1599518))

(declare-fun d!1599520 () Bool)

(declare-fun lt!2051877 () Int)

(assert (=> d!1599520 (>= lt!2051877 0)))

(declare-fun e!3105702 () Int)

(assert (=> d!1599520 (= lt!2051877 e!3105702)))

(declare-fun c!847860 () Bool)

(assert (=> d!1599520 (= c!847860 (is-Nil!57443 (_1!34390 lt!2051376)))))

(assert (=> d!1599520 (= (size!38072 (_1!34390 lt!2051376)) lt!2051877)))

(declare-fun b!4968869 () Bool)

(assert (=> b!4968869 (= e!3105702 0)))

(declare-fun b!4968870 () Bool)

(assert (=> b!4968870 (= e!3105702 (+ 1 (size!38072 (t!368627 (_1!34390 lt!2051376)))))))

(assert (= (and d!1599520 c!847860) b!4968869))

(assert (= (and d!1599520 (not c!847860)) b!4968870))

(declare-fun m!5996036 () Bool)

(assert (=> b!4968870 m!5996036))

(assert (=> b!4967817 d!1599520))

(assert (=> b!4967817 d!1598850))

(assert (=> b!4967598 d!1599150))

(declare-fun d!1599522 () Bool)

(assert (=> d!1599522 (= (apply!13904 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051210)))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051210))))) (dynLambda!23167 (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051210))))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051210))))))))

(declare-fun b_lambda!196969 () Bool)

(assert (=> (not b_lambda!196969) (not d!1599522)))

(declare-fun t!368784 () Bool)

(declare-fun tb!260755 () Bool)

(assert (=> (and b!4967137 (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051210)))))) t!368784) tb!260755))

(declare-fun result!325874 () Bool)

(assert (=> tb!260755 (= result!325874 (inv!21 (dynLambda!23167 (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051210))))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051210)))))))))

(declare-fun m!5996038 () Bool)

(assert (=> tb!260755 m!5996038))

(assert (=> d!1599522 t!368784))

(declare-fun b_and!348349 () Bool)

(assert (= b_and!348343 (and (=> t!368784 result!325874) b_and!348349)))

(declare-fun t!368786 () Bool)

(declare-fun tb!260757 () Bool)

(assert (=> (and b!4967394 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051210)))))) t!368786) tb!260757))

(declare-fun result!325876 () Bool)

(assert (= result!325876 result!325874))

(assert (=> d!1599522 t!368786))

(declare-fun b_and!348351 () Bool)

(assert (= b_and!348345 (and (=> t!368786 result!325876) b_and!348351)))

(declare-fun tb!260759 () Bool)

(declare-fun t!368788 () Bool)

(assert (=> (and b!4968022 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051210)))))) t!368788) tb!260759))

(declare-fun result!325878 () Bool)

(assert (= result!325878 result!325874))

(assert (=> d!1599522 t!368788))

(declare-fun b_and!348353 () Bool)

(assert (= b_and!348347 (and (=> t!368788 result!325878) b_and!348353)))

(assert (=> d!1599522 m!5993860))

(declare-fun m!5996040 () Bool)

(assert (=> d!1599522 m!5996040))

(assert (=> b!4967598 d!1599522))

(declare-fun d!1599524 () Bool)

(assert (=> d!1599524 (= (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051210)))) (fromListB!2731 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051210)))))))

(declare-fun bs!1183323 () Bool)

(assert (= bs!1183323 d!1599524))

(declare-fun m!5996042 () Bool)

(assert (=> bs!1183323 m!5996042))

(assert (=> b!4967598 d!1599524))

(declare-fun lt!2051882 () Option!14449)

(declare-fun d!1599526 () Bool)

(assert (=> d!1599526 (= lt!2051882 (maxPrefixOneRule!3629 thiss!15247 (h!63892 (t!368628 rulesArg!259)) (list!18365 input!1342)))))

(declare-fun e!3105704 () Option!14449)

(assert (=> d!1599526 (= lt!2051882 e!3105704)))

(declare-fun c!847861 () Bool)

(declare-fun lt!2051879 () tuple2!62174)

(assert (=> d!1599526 (= c!847861 (isEmpty!30938 (_1!34390 lt!2051879)))))

(assert (=> d!1599526 (= lt!2051879 (findLongestMatchWithZipper!94 (regex!8393 (h!63892 (t!368628 rulesArg!259))) (list!18365 input!1342)))))

(assert (=> d!1599526 (ruleValid!3802 thiss!15247 (h!63892 (t!368628 rulesArg!259)))))

(assert (=> d!1599526 (= (maxPrefixOneRuleZipper!296 thiss!15247 (h!63892 (t!368628 rulesArg!259)) (list!18365 input!1342)) lt!2051882)))

(declare-fun b!4968871 () Bool)

(assert (=> b!4968871 (= e!3105704 None!14448)))

(declare-fun b!4968872 () Bool)

(assert (=> b!4968872 (= e!3105704 (Some!14448 (tuple2!62165 (Token!15283 (apply!13904 (transformation!8393 (h!63892 (t!368628 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051879))) (h!63892 (t!368628 rulesArg!259)) (size!38072 (_1!34390 lt!2051879)) (_1!34390 lt!2051879)) (_2!34390 lt!2051879))))))

(declare-fun lt!2051880 () Unit!148361)

(assert (=> b!4968872 (= lt!2051880 (longestMatchIsAcceptedByMatchOrIsEmpty!1816 (regex!8393 (h!63892 (t!368628 rulesArg!259))) (list!18365 input!1342)))))

(declare-fun res!2120961 () Bool)

(assert (=> b!4968872 (= res!2120961 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) (list!18365 input!1342) (list!18365 input!1342) (size!38072 (list!18365 input!1342))))))))

(declare-fun e!3105705 () Bool)

(assert (=> b!4968872 (=> res!2120961 e!3105705)))

(assert (=> b!4968872 e!3105705))

(declare-fun lt!2051883 () Unit!148361)

(assert (=> b!4968872 (= lt!2051883 lt!2051880)))

(declare-fun lt!2051878 () Unit!148361)

(assert (=> b!4968872 (= lt!2051878 (lemmaInv!1334 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))))))

(declare-fun lt!2051881 () Unit!148361)

(assert (=> b!4968872 (= lt!2051881 (lemmaSemiInverse!2602 (transformation!8393 (h!63892 (t!368628 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051879))))))

(declare-fun b!4968873 () Bool)

(assert (=> b!4968873 (= e!3105705 (matchR!6636 (regex!8393 (h!63892 (t!368628 rulesArg!259))) (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) (list!18365 input!1342) (list!18365 input!1342) (size!38072 (list!18365 input!1342))))))))

(assert (= (and d!1599526 c!847861) b!4968871))

(assert (= (and d!1599526 (not c!847861)) b!4968872))

(assert (= (and b!4968872 (not res!2120961)) b!4968873))

(assert (=> d!1599526 m!5993376))

(assert (=> d!1599526 m!5994140))

(declare-fun m!5996044 () Bool)

(assert (=> d!1599526 m!5996044))

(assert (=> d!1599526 m!5993376))

(declare-fun m!5996046 () Bool)

(assert (=> d!1599526 m!5996046))

(assert (=> d!1599526 m!5993938))

(declare-fun m!5996048 () Bool)

(assert (=> b!4968872 m!5996048))

(declare-fun m!5996050 () Bool)

(assert (=> b!4968872 m!5996050))

(assert (=> b!4968872 m!5995276))

(assert (=> b!4968872 m!5993574))

(assert (=> b!4968872 m!5993376))

(assert (=> b!4968872 m!5995284))

(assert (=> b!4968872 m!5993574))

(assert (=> b!4968872 m!5993376))

(assert (=> b!4968872 m!5993376))

(assert (=> b!4968872 m!5993850))

(assert (=> b!4968872 m!5995280))

(declare-fun m!5996052 () Bool)

(assert (=> b!4968872 m!5996052))

(assert (=> b!4968872 m!5993376))

(assert (=> b!4968872 m!5993850))

(assert (=> b!4968872 m!5996048))

(assert (=> b!4968872 m!5994144))

(assert (=> b!4968872 m!5996048))

(declare-fun m!5996054 () Bool)

(assert (=> b!4968872 m!5996054))

(assert (=> b!4968873 m!5993574))

(assert (=> b!4968873 m!5993376))

(assert (=> b!4968873 m!5993850))

(assert (=> b!4968873 m!5993574))

(assert (=> b!4968873 m!5993376))

(assert (=> b!4968873 m!5993376))

(assert (=> b!4968873 m!5993850))

(assert (=> b!4968873 m!5995280))

(assert (=> b!4968873 m!5995286))

(assert (=> bm!346394 d!1599526))

(declare-fun b!4968874 () Bool)

(declare-fun e!3105707 () Bool)

(declare-fun e!3105706 () Bool)

(assert (=> b!4968874 (= e!3105707 e!3105706)))

(declare-fun res!2120963 () Bool)

(assert (=> b!4968874 (=> (not res!2120963) (not e!3105706))))

(assert (=> b!4968874 (= res!2120963 (<= (- 1) (- (height!2013 (left!41900 (left!41900 (c!847515 totalInput!464)))) (height!2013 (right!42230 (left!41900 (c!847515 totalInput!464)))))))))

(declare-fun d!1599528 () Bool)

(declare-fun res!2120964 () Bool)

(assert (=> d!1599528 (=> res!2120964 e!3105707)))

(assert (=> d!1599528 (= res!2120964 (not (is-Node!15145 (left!41900 (c!847515 totalInput!464)))))))

(assert (=> d!1599528 (= (isBalanced!4202 (left!41900 (c!847515 totalInput!464))) e!3105707)))

(declare-fun b!4968875 () Bool)

(declare-fun res!2120966 () Bool)

(assert (=> b!4968875 (=> (not res!2120966) (not e!3105706))))

(assert (=> b!4968875 (= res!2120966 (isBalanced!4202 (left!41900 (left!41900 (c!847515 totalInput!464)))))))

(declare-fun b!4968876 () Bool)

(declare-fun res!2120967 () Bool)

(assert (=> b!4968876 (=> (not res!2120967) (not e!3105706))))

(assert (=> b!4968876 (= res!2120967 (<= (- (height!2013 (left!41900 (left!41900 (c!847515 totalInput!464)))) (height!2013 (right!42230 (left!41900 (c!847515 totalInput!464))))) 1))))

(declare-fun b!4968877 () Bool)

(declare-fun res!2120965 () Bool)

(assert (=> b!4968877 (=> (not res!2120965) (not e!3105706))))

(assert (=> b!4968877 (= res!2120965 (not (isEmpty!30943 (left!41900 (left!41900 (c!847515 totalInput!464))))))))

(declare-fun b!4968878 () Bool)

(declare-fun res!2120962 () Bool)

(assert (=> b!4968878 (=> (not res!2120962) (not e!3105706))))

(assert (=> b!4968878 (= res!2120962 (isBalanced!4202 (right!42230 (left!41900 (c!847515 totalInput!464)))))))

(declare-fun b!4968879 () Bool)

(assert (=> b!4968879 (= e!3105706 (not (isEmpty!30943 (right!42230 (left!41900 (c!847515 totalInput!464))))))))

(assert (= (and d!1599528 (not res!2120964)) b!4968874))

(assert (= (and b!4968874 res!2120963) b!4968876))

(assert (= (and b!4968876 res!2120967) b!4968875))

(assert (= (and b!4968875 res!2120966) b!4968878))

(assert (= (and b!4968878 res!2120962) b!4968877))

(assert (= (and b!4968877 res!2120965) b!4968879))

(assert (=> b!4968874 m!5995968))

(assert (=> b!4968874 m!5995970))

(declare-fun m!5996056 () Bool)

(assert (=> b!4968879 m!5996056))

(assert (=> b!4968876 m!5995968))

(assert (=> b!4968876 m!5995970))

(declare-fun m!5996058 () Bool)

(assert (=> b!4968877 m!5996058))

(declare-fun m!5996060 () Bool)

(assert (=> b!4968875 m!5996060))

(declare-fun m!5996062 () Bool)

(assert (=> b!4968878 m!5996062))

(assert (=> b!4967561 d!1599528))

(declare-fun d!1599530 () Bool)

(assert (=> d!1599530 (= (inv!75074 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (value!268642 (_1!34385 (get!19940 lt!2051000))))) (isBalanced!4202 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (value!268642 (_1!34385 (get!19940 lt!2051000)))))))))

(declare-fun bs!1183324 () Bool)

(assert (= bs!1183324 d!1599530))

(declare-fun m!5996064 () Bool)

(assert (=> bs!1183324 m!5996064))

(assert (=> tb!260611 d!1599530))

(assert (=> b!4967862 d!1599294))

(declare-fun lt!2051888 () Option!14449)

(declare-fun d!1599532 () Bool)

(assert (=> d!1599532 (= lt!2051888 (maxPrefixOneRule!3629 thiss!15247 (h!63892 (t!368628 rulesArg!259)) lt!2050949))))

(declare-fun e!3105708 () Option!14449)

(assert (=> d!1599532 (= lt!2051888 e!3105708)))

(declare-fun c!847862 () Bool)

(declare-fun lt!2051885 () tuple2!62174)

(assert (=> d!1599532 (= c!847862 (isEmpty!30938 (_1!34390 lt!2051885)))))

(assert (=> d!1599532 (= lt!2051885 (findLongestMatchWithZipper!94 (regex!8393 (h!63892 (t!368628 rulesArg!259))) lt!2050949))))

(assert (=> d!1599532 (ruleValid!3802 thiss!15247 (h!63892 (t!368628 rulesArg!259)))))

(assert (=> d!1599532 (= (maxPrefixOneRuleZipper!296 thiss!15247 (h!63892 (t!368628 rulesArg!259)) lt!2050949) lt!2051888)))

(declare-fun b!4968880 () Bool)

(assert (=> b!4968880 (= e!3105708 None!14448)))

(declare-fun b!4968881 () Bool)

(assert (=> b!4968881 (= e!3105708 (Some!14448 (tuple2!62165 (Token!15283 (apply!13904 (transformation!8393 (h!63892 (t!368628 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051885))) (h!63892 (t!368628 rulesArg!259)) (size!38072 (_1!34390 lt!2051885)) (_1!34390 lt!2051885)) (_2!34390 lt!2051885))))))

(declare-fun lt!2051886 () Unit!148361)

(assert (=> b!4968881 (= lt!2051886 (longestMatchIsAcceptedByMatchOrIsEmpty!1816 (regex!8393 (h!63892 (t!368628 rulesArg!259))) lt!2050949))))

(declare-fun res!2120968 () Bool)

(assert (=> b!4968881 (= res!2120968 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949)))))))

(declare-fun e!3105709 () Bool)

(assert (=> b!4968881 (=> res!2120968 e!3105709)))

(assert (=> b!4968881 e!3105709))

(declare-fun lt!2051889 () Unit!148361)

(assert (=> b!4968881 (= lt!2051889 lt!2051886)))

(declare-fun lt!2051884 () Unit!148361)

(assert (=> b!4968881 (= lt!2051884 (lemmaInv!1334 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))))))

(declare-fun lt!2051887 () Unit!148361)

(assert (=> b!4968881 (= lt!2051887 (lemmaSemiInverse!2602 (transformation!8393 (h!63892 (t!368628 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051885))))))

(declare-fun b!4968882 () Bool)

(assert (=> b!4968882 (= e!3105709 (matchR!6636 (regex!8393 (h!63892 (t!368628 rulesArg!259))) (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949)))))))

(assert (= (and d!1599532 c!847862) b!4968880))

(assert (= (and d!1599532 (not c!847862)) b!4968881))

(assert (= (and b!4968881 (not res!2120968)) b!4968882))

(assert (=> d!1599532 m!5994298))

(declare-fun m!5996066 () Bool)

(assert (=> d!1599532 m!5996066))

(declare-fun m!5996068 () Bool)

(assert (=> d!1599532 m!5996068))

(assert (=> d!1599532 m!5993938))

(declare-fun m!5996070 () Bool)

(assert (=> b!4968881 m!5996070))

(declare-fun m!5996072 () Bool)

(assert (=> b!4968881 m!5996072))

(declare-fun m!5996074 () Bool)

(assert (=> b!4968881 m!5996074))

(assert (=> b!4968881 m!5993574))

(declare-fun m!5996076 () Bool)

(assert (=> b!4968881 m!5996076))

(assert (=> b!4968881 m!5993574))

(assert (=> b!4968881 m!5993428))

(declare-fun m!5996078 () Bool)

(assert (=> b!4968881 m!5996078))

(declare-fun m!5996080 () Bool)

(assert (=> b!4968881 m!5996080))

(assert (=> b!4968881 m!5993428))

(assert (=> b!4968881 m!5996070))

(assert (=> b!4968881 m!5994144))

(assert (=> b!4968881 m!5996070))

(declare-fun m!5996082 () Bool)

(assert (=> b!4968881 m!5996082))

(assert (=> b!4968882 m!5993574))

(assert (=> b!4968882 m!5993428))

(assert (=> b!4968882 m!5993574))

(assert (=> b!4968882 m!5993428))

(assert (=> b!4968882 m!5996078))

(declare-fun m!5996084 () Bool)

(assert (=> b!4968882 m!5996084))

(assert (=> bm!346451 d!1599532))

(declare-fun b!4968884 () Bool)

(declare-fun e!3105710 () Regex!13626)

(assert (=> b!4968884 (= e!3105710 EmptyLang!13626)))

(declare-fun b!4968885 () Bool)

(declare-fun c!847864 () Bool)

(assert (=> b!4968885 (= c!847864 (is-Union!13626 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun e!3105713 () Regex!13626)

(declare-fun e!3105711 () Regex!13626)

(assert (=> b!4968885 (= e!3105713 e!3105711)))

(declare-fun b!4968886 () Bool)

(declare-fun call!346537 () Regex!13626)

(declare-fun call!346536 () Regex!13626)

(assert (=> b!4968886 (= e!3105711 (Union!13626 call!346537 call!346536))))

(declare-fun b!4968887 () Bool)

(declare-fun e!3105712 () Regex!13626)

(declare-fun call!346538 () Regex!13626)

(assert (=> b!4968887 (= e!3105712 (Concat!22330 call!346538 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun bm!346531 () Bool)

(declare-fun c!847867 () Bool)

(assert (=> bm!346531 (= call!346536 (derivativeStep!3922 (ite c!847864 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259))) (ite c!847867 (reg!13955 (regex!8393 (h!63892 rulesArg!259))) (regOne!27764 (regex!8393 (h!63892 rulesArg!259))))) call!346433))))

(declare-fun call!346539 () Regex!13626)

(declare-fun e!3105714 () Regex!13626)

(declare-fun b!4968888 () Bool)

(assert (=> b!4968888 (= e!3105714 (Union!13626 (Concat!22330 call!346539 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))) call!346537))))

(declare-fun b!4968889 () Bool)

(declare-fun c!847863 () Bool)

(assert (=> b!4968889 (= c!847863 (nullable!4620 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))))

(assert (=> b!4968889 (= e!3105712 e!3105714)))

(declare-fun b!4968890 () Bool)

(assert (=> b!4968890 (= e!3105713 (ite (= call!346433 (c!847514 (regex!8393 (h!63892 rulesArg!259)))) EmptyExpr!13626 EmptyLang!13626))))

(declare-fun b!4968891 () Bool)

(assert (=> b!4968891 (= e!3105714 (Union!13626 (Concat!22330 call!346539 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))) EmptyLang!13626))))

(declare-fun d!1599534 () Bool)

(declare-fun lt!2051890 () Regex!13626)

(assert (=> d!1599534 (validRegex!5969 lt!2051890)))

(assert (=> d!1599534 (= lt!2051890 e!3105710)))

(declare-fun c!847865 () Bool)

(assert (=> d!1599534 (= c!847865 (or (is-EmptyExpr!13626 (regex!8393 (h!63892 rulesArg!259))) (is-EmptyLang!13626 (regex!8393 (h!63892 rulesArg!259)))))))

(assert (=> d!1599534 (validRegex!5969 (regex!8393 (h!63892 rulesArg!259)))))

(assert (=> d!1599534 (= (derivativeStep!3922 (regex!8393 (h!63892 rulesArg!259)) call!346433) lt!2051890)))

(declare-fun b!4968883 () Bool)

(assert (=> b!4968883 (= e!3105711 e!3105712)))

(assert (=> b!4968883 (= c!847867 (is-Star!13626 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun bm!346532 () Bool)

(assert (=> bm!346532 (= call!346537 (derivativeStep!3922 (ite c!847864 (regOne!27765 (regex!8393 (h!63892 rulesArg!259))) (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))) call!346433))))

(declare-fun bm!346533 () Bool)

(assert (=> bm!346533 (= call!346538 call!346536)))

(declare-fun b!4968892 () Bool)

(assert (=> b!4968892 (= e!3105710 e!3105713)))

(declare-fun c!847866 () Bool)

(assert (=> b!4968892 (= c!847866 (is-ElementMatch!13626 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun bm!346534 () Bool)

(assert (=> bm!346534 (= call!346539 call!346538)))

(assert (= (and d!1599534 c!847865) b!4968884))

(assert (= (and d!1599534 (not c!847865)) b!4968892))

(assert (= (and b!4968892 c!847866) b!4968890))

(assert (= (and b!4968892 (not c!847866)) b!4968885))

(assert (= (and b!4968885 c!847864) b!4968886))

(assert (= (and b!4968885 (not c!847864)) b!4968883))

(assert (= (and b!4968883 c!847867) b!4968887))

(assert (= (and b!4968883 (not c!847867)) b!4968889))

(assert (= (and b!4968889 c!847863) b!4968888))

(assert (= (and b!4968889 (not c!847863)) b!4968891))

(assert (= (or b!4968888 b!4968891) bm!346534))

(assert (= (or b!4968887 bm!346534) bm!346533))

(assert (= (or b!4968886 bm!346533) bm!346531))

(assert (= (or b!4968886 b!4968888) bm!346532))

(declare-fun m!5996086 () Bool)

(assert (=> bm!346531 m!5996086))

(declare-fun m!5996088 () Bool)

(assert (=> b!4968889 m!5996088))

(declare-fun m!5996090 () Bool)

(assert (=> d!1599534 m!5996090))

(assert (=> d!1599534 m!5993828))

(declare-fun m!5996092 () Bool)

(assert (=> bm!346532 m!5996092))

(assert (=> bm!346423 d!1599534))

(declare-fun b!4968893 () Bool)

(declare-fun e!3105715 () Bool)

(assert (=> b!4968893 (= e!3105715 (inv!16 (dynLambda!23167 (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051000)))))))))

(declare-fun d!1599536 () Bool)

(declare-fun c!847868 () Bool)

(assert (=> d!1599536 (= c!847868 (is-IntegerValue!26109 (dynLambda!23167 (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051000)))))))))

(assert (=> d!1599536 (= (inv!21 (dynLambda!23167 (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051000)))))) e!3105715)))

(declare-fun b!4968894 () Bool)

(declare-fun e!3105716 () Bool)

(assert (=> b!4968894 (= e!3105715 e!3105716)))

(declare-fun c!847869 () Bool)

(assert (=> b!4968894 (= c!847869 (is-IntegerValue!26110 (dynLambda!23167 (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051000)))))))))

(declare-fun b!4968895 () Bool)

(declare-fun res!2120969 () Bool)

(declare-fun e!3105717 () Bool)

(assert (=> b!4968895 (=> res!2120969 e!3105717)))

(assert (=> b!4968895 (= res!2120969 (not (is-IntegerValue!26111 (dynLambda!23167 (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051000))))))))))

(assert (=> b!4968895 (= e!3105716 e!3105717)))

(declare-fun b!4968896 () Bool)

(assert (=> b!4968896 (= e!3105717 (inv!15 (dynLambda!23167 (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051000)))))))))

(declare-fun b!4968897 () Bool)

(assert (=> b!4968897 (= e!3105716 (inv!17 (dynLambda!23167 (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051000)))))))))

(assert (= (and d!1599536 c!847868) b!4968893))

(assert (= (and d!1599536 (not c!847868)) b!4968894))

(assert (= (and b!4968894 c!847869) b!4968897))

(assert (= (and b!4968894 (not c!847869)) b!4968895))

(assert (= (and b!4968895 (not res!2120969)) b!4968896))

(declare-fun m!5996094 () Bool)

(assert (=> b!4968893 m!5996094))

(declare-fun m!5996096 () Bool)

(assert (=> b!4968896 m!5996096))

(declare-fun m!5996098 () Bool)

(assert (=> b!4968897 m!5996098))

(assert (=> tb!260623 d!1599536))

(declare-fun d!1599538 () Bool)

(declare-fun e!3105720 () Bool)

(assert (=> d!1599538 e!3105720))

(declare-fun res!2120972 () Bool)

(assert (=> d!1599538 (=> res!2120972 e!3105720)))

(assert (=> d!1599538 (= res!2120972 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))))))

(assert (=> d!1599538 true))

(declare-fun _$92!524 () Unit!148361)

(assert (=> d!1599538 (= (choose!36671 (regex!8393 (h!63892 rulesArg!259)) lt!2051120) _$92!524)))

(declare-fun b!4968900 () Bool)

(assert (=> b!4968900 (= e!3105720 (matchR!6636 (regex!8393 (h!63892 rulesArg!259)) (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))))))

(assert (= (and d!1599538 (not res!2120972)) b!4968900))

(assert (=> d!1599538 m!5993574))

(assert (=> d!1599538 m!5993570))

(assert (=> d!1599538 m!5993574))

(assert (=> d!1599538 m!5993570))

(assert (=> d!1599538 m!5993576))

(assert (=> d!1599538 m!5993580))

(assert (=> b!4968900 m!5993574))

(assert (=> b!4968900 m!5993570))

(assert (=> b!4968900 m!5993574))

(assert (=> b!4968900 m!5993570))

(assert (=> b!4968900 m!5993576))

(assert (=> b!4968900 m!5993594))

(assert (=> d!1598854 d!1599538))

(assert (=> d!1598854 d!1598848))

(assert (=> d!1598854 d!1598850))

(assert (=> d!1598854 d!1598866))

(assert (=> d!1598854 d!1598860))

(assert (=> d!1598854 d!1599176))

(declare-fun d!1599540 () Bool)

(assert (=> d!1599540 (= (max!0 (height!2013 (left!41900 (c!847515 totalInput!464))) (height!2013 (right!42230 (c!847515 totalInput!464)))) (ite (< (height!2013 (left!41900 (c!847515 totalInput!464))) (height!2013 (right!42230 (c!847515 totalInput!464)))) (height!2013 (right!42230 (c!847515 totalInput!464))) (height!2013 (left!41900 (c!847515 totalInput!464)))))))

(assert (=> b!4967612 d!1599540))

(assert (=> b!4967612 d!1599424))

(assert (=> b!4967612 d!1599426))

(declare-fun d!1599542 () Bool)

(declare-fun lt!2051891 () Int)

(assert (=> d!1599542 (>= lt!2051891 0)))

(declare-fun e!3105721 () Int)

(assert (=> d!1599542 (= lt!2051891 e!3105721)))

(declare-fun c!847870 () Bool)

(assert (=> d!1599542 (= c!847870 (is-Nil!57443 (innerList!15233 (xs!18471 (c!847515 totalInput!464)))))))

(assert (=> d!1599542 (= (size!38072 (innerList!15233 (xs!18471 (c!847515 totalInput!464)))) lt!2051891)))

(declare-fun b!4968901 () Bool)

(assert (=> b!4968901 (= e!3105721 0)))

(declare-fun b!4968902 () Bool)

(assert (=> b!4968902 (= e!3105721 (+ 1 (size!38072 (t!368627 (innerList!15233 (xs!18471 (c!847515 totalInput!464)))))))))

(assert (= (and d!1599542 c!847870) b!4968901))

(assert (= (and d!1599542 (not c!847870)) b!4968902))

(declare-fun m!5996100 () Bool)

(assert (=> b!4968902 m!5996100))

(assert (=> d!1598810 d!1599542))

(declare-fun b!4968906 () Bool)

(declare-fun e!3105724 () Bool)

(assert (=> b!4968906 (= e!3105724 (>= (size!38072 lt!2051120) (size!38072 (++!12532 Nil!57443 (Cons!57443 (head!10668 (getSuffix!3088 lt!2051120 Nil!57443)) Nil!57443)))))))

(declare-fun b!4968903 () Bool)

(declare-fun e!3105723 () Bool)

(declare-fun e!3105722 () Bool)

(assert (=> b!4968903 (= e!3105723 e!3105722)))

(declare-fun res!2120975 () Bool)

(assert (=> b!4968903 (=> (not res!2120975) (not e!3105722))))

(assert (=> b!4968903 (= res!2120975 (not (is-Nil!57443 lt!2051120)))))

(declare-fun b!4968905 () Bool)

(assert (=> b!4968905 (= e!3105722 (isPrefix!5244 (tail!9801 (++!12532 Nil!57443 (Cons!57443 (head!10668 (getSuffix!3088 lt!2051120 Nil!57443)) Nil!57443))) (tail!9801 lt!2051120)))))

(declare-fun d!1599544 () Bool)

(assert (=> d!1599544 e!3105724))

(declare-fun res!2120974 () Bool)

(assert (=> d!1599544 (=> res!2120974 e!3105724)))

(declare-fun lt!2051892 () Bool)

(assert (=> d!1599544 (= res!2120974 (not lt!2051892))))

(assert (=> d!1599544 (= lt!2051892 e!3105723)))

(declare-fun res!2120973 () Bool)

(assert (=> d!1599544 (=> res!2120973 e!3105723)))

(assert (=> d!1599544 (= res!2120973 (is-Nil!57443 (++!12532 Nil!57443 (Cons!57443 (head!10668 (getSuffix!3088 lt!2051120 Nil!57443)) Nil!57443))))))

(assert (=> d!1599544 (= (isPrefix!5244 (++!12532 Nil!57443 (Cons!57443 (head!10668 (getSuffix!3088 lt!2051120 Nil!57443)) Nil!57443)) lt!2051120) lt!2051892)))

(declare-fun b!4968904 () Bool)

(declare-fun res!2120976 () Bool)

(assert (=> b!4968904 (=> (not res!2120976) (not e!3105722))))

(assert (=> b!4968904 (= res!2120976 (= (head!10668 (++!12532 Nil!57443 (Cons!57443 (head!10668 (getSuffix!3088 lt!2051120 Nil!57443)) Nil!57443))) (head!10668 lt!2051120)))))

(assert (= (and d!1599544 (not res!2120973)) b!4968903))

(assert (= (and b!4968903 res!2120975) b!4968904))

(assert (= (and b!4968904 res!2120976) b!4968905))

(assert (= (and d!1599544 (not res!2120974)) b!4968906))

(assert (=> b!4968906 m!5993570))

(assert (=> b!4968906 m!5994012))

(declare-fun m!5996102 () Bool)

(assert (=> b!4968906 m!5996102))

(assert (=> b!4968905 m!5994012))

(declare-fun m!5996104 () Bool)

(assert (=> b!4968905 m!5996104))

(assert (=> b!4968905 m!5994022))

(assert (=> b!4968905 m!5996104))

(assert (=> b!4968905 m!5994022))

(declare-fun m!5996106 () Bool)

(assert (=> b!4968905 m!5996106))

(assert (=> b!4968904 m!5994012))

(declare-fun m!5996108 () Bool)

(assert (=> b!4968904 m!5996108))

(assert (=> b!4968904 m!5994028))

(assert (=> b!4967811 d!1599544))

(declare-fun d!1599546 () Bool)

(assert (=> d!1599546 (= (tail!9801 lt!2051120) (t!368627 lt!2051120))))

(assert (=> b!4967811 d!1599546))

(assert (=> b!4967811 d!1598848))

(assert (=> b!4967811 d!1598850))

(declare-fun b!4968908 () Bool)

(declare-fun e!3105726 () List!57567)

(assert (=> b!4968908 (= e!3105726 (Cons!57443 (h!63891 (++!12532 Nil!57443 (Cons!57443 lt!2051362 Nil!57443))) (++!12532 (t!368627 (++!12532 Nil!57443 (Cons!57443 lt!2051362 Nil!57443))) lt!2051372)))))

(declare-fun b!4968910 () Bool)

(declare-fun e!3105725 () Bool)

(declare-fun lt!2051893 () List!57567)

(assert (=> b!4968910 (= e!3105725 (or (not (= lt!2051372 Nil!57443)) (= lt!2051893 (++!12532 Nil!57443 (Cons!57443 lt!2051362 Nil!57443)))))))

(declare-fun b!4968907 () Bool)

(assert (=> b!4968907 (= e!3105726 lt!2051372)))

(declare-fun d!1599548 () Bool)

(assert (=> d!1599548 e!3105725))

(declare-fun res!2120977 () Bool)

(assert (=> d!1599548 (=> (not res!2120977) (not e!3105725))))

(assert (=> d!1599548 (= res!2120977 (= (content!10184 lt!2051893) (set.union (content!10184 (++!12532 Nil!57443 (Cons!57443 lt!2051362 Nil!57443))) (content!10184 lt!2051372))))))

(assert (=> d!1599548 (= lt!2051893 e!3105726)))

(declare-fun c!847871 () Bool)

(assert (=> d!1599548 (= c!847871 (is-Nil!57443 (++!12532 Nil!57443 (Cons!57443 lt!2051362 Nil!57443))))))

(assert (=> d!1599548 (= (++!12532 (++!12532 Nil!57443 (Cons!57443 lt!2051362 Nil!57443)) lt!2051372) lt!2051893)))

(declare-fun b!4968909 () Bool)

(declare-fun res!2120978 () Bool)

(assert (=> b!4968909 (=> (not res!2120978) (not e!3105725))))

(assert (=> b!4968909 (= res!2120978 (= (size!38072 lt!2051893) (+ (size!38072 (++!12532 Nil!57443 (Cons!57443 lt!2051362 Nil!57443))) (size!38072 lt!2051372))))))

(assert (= (and d!1599548 c!847871) b!4968907))

(assert (= (and d!1599548 (not c!847871)) b!4968908))

(assert (= (and d!1599548 res!2120977) b!4968909))

(assert (= (and b!4968909 res!2120978) b!4968910))

(declare-fun m!5996110 () Bool)

(assert (=> b!4968908 m!5996110))

(declare-fun m!5996112 () Bool)

(assert (=> d!1599548 m!5996112))

(assert (=> d!1599548 m!5994018))

(declare-fun m!5996114 () Bool)

(assert (=> d!1599548 m!5996114))

(declare-fun m!5996116 () Bool)

(assert (=> d!1599548 m!5996116))

(declare-fun m!5996118 () Bool)

(assert (=> b!4968909 m!5996118))

(assert (=> b!4968909 m!5994018))

(declare-fun m!5996120 () Bool)

(assert (=> b!4968909 m!5996120))

(declare-fun m!5996122 () Bool)

(assert (=> b!4968909 m!5996122))

(assert (=> b!4967811 d!1599548))

(declare-fun b!4968912 () Bool)

(declare-fun e!3105728 () List!57567)

(assert (=> b!4968912 (= e!3105728 (Cons!57443 (h!63891 Nil!57443) (++!12532 (t!368627 Nil!57443) (Cons!57443 (head!10668 (getSuffix!3088 lt!2051120 Nil!57443)) Nil!57443))))))

(declare-fun b!4968914 () Bool)

(declare-fun e!3105727 () Bool)

(declare-fun lt!2051894 () List!57567)

(assert (=> b!4968914 (= e!3105727 (or (not (= (Cons!57443 (head!10668 (getSuffix!3088 lt!2051120 Nil!57443)) Nil!57443) Nil!57443)) (= lt!2051894 Nil!57443)))))

(declare-fun b!4968911 () Bool)

(assert (=> b!4968911 (= e!3105728 (Cons!57443 (head!10668 (getSuffix!3088 lt!2051120 Nil!57443)) Nil!57443))))

(declare-fun d!1599550 () Bool)

(assert (=> d!1599550 e!3105727))

(declare-fun res!2120979 () Bool)

(assert (=> d!1599550 (=> (not res!2120979) (not e!3105727))))

(assert (=> d!1599550 (= res!2120979 (= (content!10184 lt!2051894) (set.union (content!10184 Nil!57443) (content!10184 (Cons!57443 (head!10668 (getSuffix!3088 lt!2051120 Nil!57443)) Nil!57443)))))))

(assert (=> d!1599550 (= lt!2051894 e!3105728)))

(declare-fun c!847872 () Bool)

(assert (=> d!1599550 (= c!847872 (is-Nil!57443 Nil!57443))))

(assert (=> d!1599550 (= (++!12532 Nil!57443 (Cons!57443 (head!10668 (getSuffix!3088 lt!2051120 Nil!57443)) Nil!57443)) lt!2051894)))

(declare-fun b!4968913 () Bool)

(declare-fun res!2120980 () Bool)

(assert (=> b!4968913 (=> (not res!2120980) (not e!3105727))))

(assert (=> b!4968913 (= res!2120980 (= (size!38072 lt!2051894) (+ (size!38072 Nil!57443) (size!38072 (Cons!57443 (head!10668 (getSuffix!3088 lt!2051120 Nil!57443)) Nil!57443)))))))

(assert (= (and d!1599550 c!847872) b!4968911))

(assert (= (and d!1599550 (not c!847872)) b!4968912))

(assert (= (and d!1599550 res!2120979) b!4968913))

(assert (= (and b!4968913 res!2120980) b!4968914))

(declare-fun m!5996124 () Bool)

(assert (=> b!4968912 m!5996124))

(declare-fun m!5996126 () Bool)

(assert (=> d!1599550 m!5996126))

(assert (=> d!1599550 m!5995222))

(declare-fun m!5996128 () Bool)

(assert (=> d!1599550 m!5996128))

(declare-fun m!5996130 () Bool)

(assert (=> b!4968913 m!5996130))

(assert (=> b!4968913 m!5993574))

(declare-fun m!5996132 () Bool)

(assert (=> b!4968913 m!5996132))

(assert (=> b!4967811 d!1599550))

(declare-fun b!4968916 () Bool)

(declare-fun e!3105730 () List!57567)

(assert (=> b!4968916 (= e!3105730 (Cons!57443 (h!63891 Nil!57443) (++!12532 (t!368627 Nil!57443) (Cons!57443 lt!2051362 Nil!57443))))))

(declare-fun b!4968918 () Bool)

(declare-fun e!3105729 () Bool)

(declare-fun lt!2051895 () List!57567)

(assert (=> b!4968918 (= e!3105729 (or (not (= (Cons!57443 lt!2051362 Nil!57443) Nil!57443)) (= lt!2051895 Nil!57443)))))

(declare-fun b!4968915 () Bool)

(assert (=> b!4968915 (= e!3105730 (Cons!57443 lt!2051362 Nil!57443))))

(declare-fun d!1599552 () Bool)

(assert (=> d!1599552 e!3105729))

(declare-fun res!2120981 () Bool)

(assert (=> d!1599552 (=> (not res!2120981) (not e!3105729))))

(assert (=> d!1599552 (= res!2120981 (= (content!10184 lt!2051895) (set.union (content!10184 Nil!57443) (content!10184 (Cons!57443 lt!2051362 Nil!57443)))))))

(assert (=> d!1599552 (= lt!2051895 e!3105730)))

(declare-fun c!847873 () Bool)

(assert (=> d!1599552 (= c!847873 (is-Nil!57443 Nil!57443))))

(assert (=> d!1599552 (= (++!12532 Nil!57443 (Cons!57443 lt!2051362 Nil!57443)) lt!2051895)))

(declare-fun b!4968917 () Bool)

(declare-fun res!2120982 () Bool)

(assert (=> b!4968917 (=> (not res!2120982) (not e!3105729))))

(assert (=> b!4968917 (= res!2120982 (= (size!38072 lt!2051895) (+ (size!38072 Nil!57443) (size!38072 (Cons!57443 lt!2051362 Nil!57443)))))))

(assert (= (and d!1599552 c!847873) b!4968915))

(assert (= (and d!1599552 (not c!847873)) b!4968916))

(assert (= (and d!1599552 res!2120981) b!4968917))

(assert (= (and b!4968917 res!2120982) b!4968918))

(declare-fun m!5996134 () Bool)

(assert (=> b!4968916 m!5996134))

(declare-fun m!5996136 () Bool)

(assert (=> d!1599552 m!5996136))

(assert (=> d!1599552 m!5995222))

(declare-fun m!5996138 () Bool)

(assert (=> d!1599552 m!5996138))

(declare-fun m!5996140 () Bool)

(assert (=> b!4968917 m!5996140))

(assert (=> b!4968917 m!5993574))

(declare-fun m!5996142 () Bool)

(assert (=> b!4968917 m!5996142))

(assert (=> b!4967811 d!1599552))

(declare-fun d!1599554 () Bool)

(assert (=> d!1599554 (<= (size!38072 Nil!57443) (size!38072 lt!2051120))))

(declare-fun lt!2051898 () Unit!148361)

(declare-fun choose!36680 (List!57567 List!57567) Unit!148361)

(assert (=> d!1599554 (= lt!2051898 (choose!36680 Nil!57443 lt!2051120))))

(assert (=> d!1599554 (isPrefix!5244 Nil!57443 lt!2051120)))

(assert (=> d!1599554 (= (lemmaIsPrefixThenSmallerEqSize!761 Nil!57443 lt!2051120) lt!2051898)))

(declare-fun bs!1183325 () Bool)

(assert (= bs!1183325 d!1599554))

(assert (=> bs!1183325 m!5993574))

(assert (=> bs!1183325 m!5993570))

(declare-fun m!5996144 () Bool)

(assert (=> bs!1183325 m!5996144))

(assert (=> bs!1183325 m!5995230))

(assert (=> b!4967811 d!1599554))

(declare-fun d!1599556 () Bool)

(assert (=> d!1599556 (isPrefix!5244 (++!12532 Nil!57443 (Cons!57443 (head!10668 (getSuffix!3088 lt!2051120 Nil!57443)) Nil!57443)) lt!2051120)))

(declare-fun lt!2051901 () Unit!148361)

(declare-fun choose!36681 (List!57567 List!57567) Unit!148361)

(assert (=> d!1599556 (= lt!2051901 (choose!36681 Nil!57443 lt!2051120))))

(assert (=> d!1599556 (isPrefix!5244 Nil!57443 lt!2051120)))

(assert (=> d!1599556 (= (lemmaAddHeadSuffixToPrefixStillPrefix!835 Nil!57443 lt!2051120) lt!2051901)))

(declare-fun bs!1183326 () Bool)

(assert (= bs!1183326 d!1599556))

(assert (=> bs!1183326 m!5995230))

(assert (=> bs!1183326 m!5994012))

(assert (=> bs!1183326 m!5994016))

(assert (=> bs!1183326 m!5994034))

(assert (=> bs!1183326 m!5994016))

(assert (=> bs!1183326 m!5994012))

(assert (=> bs!1183326 m!5994014))

(declare-fun m!5996146 () Bool)

(assert (=> bs!1183326 m!5996146))

(assert (=> b!4967811 d!1599556))

(declare-fun d!1599558 () Bool)

(assert (=> d!1599558 (= (head!10668 lt!2051120) (h!63891 lt!2051120))))

(assert (=> b!4967811 d!1599558))

(declare-fun d!1599560 () Bool)

(assert (=> d!1599560 (= (++!12532 (++!12532 Nil!57443 (Cons!57443 lt!2051362 Nil!57443)) lt!2051372) lt!2051120)))

(declare-fun lt!2051904 () Unit!148361)

(declare-fun choose!36682 (List!57567 C!27502 List!57567 List!57567) Unit!148361)

(assert (=> d!1599560 (= lt!2051904 (choose!36682 Nil!57443 lt!2051362 lt!2051372 lt!2051120))))

(assert (=> d!1599560 (= (++!12532 Nil!57443 (Cons!57443 lt!2051362 lt!2051372)) lt!2051120)))

(assert (=> d!1599560 (= (lemmaMoveElementToOtherListKeepsConcatEq!1445 Nil!57443 lt!2051362 lt!2051372 lt!2051120) lt!2051904)))

(declare-fun bs!1183327 () Bool)

(assert (= bs!1183327 d!1599560))

(assert (=> bs!1183327 m!5994018))

(assert (=> bs!1183327 m!5994018))

(assert (=> bs!1183327 m!5994026))

(declare-fun m!5996148 () Bool)

(assert (=> bs!1183327 m!5996148))

(declare-fun m!5996150 () Bool)

(assert (=> bs!1183327 m!5996150))

(assert (=> b!4967811 d!1599560))

(assert (=> b!4967811 d!1599208))

(declare-fun d!1599562 () Bool)

(assert (=> d!1599562 (= (head!10668 (getSuffix!3088 lt!2051120 Nil!57443)) (h!63891 (getSuffix!3088 lt!2051120 Nil!57443)))))

(assert (=> b!4967811 d!1599562))

(declare-fun b!4968920 () Bool)

(declare-fun e!3105732 () List!57567)

(assert (=> b!4968920 (= e!3105732 (Cons!57443 (h!63891 Nil!57443) (++!12532 (t!368627 Nil!57443) (Cons!57443 (head!10668 lt!2051120) Nil!57443))))))

(declare-fun b!4968922 () Bool)

(declare-fun e!3105731 () Bool)

(declare-fun lt!2051905 () List!57567)

(assert (=> b!4968922 (= e!3105731 (or (not (= (Cons!57443 (head!10668 lt!2051120) Nil!57443) Nil!57443)) (= lt!2051905 Nil!57443)))))

(declare-fun b!4968919 () Bool)

(assert (=> b!4968919 (= e!3105732 (Cons!57443 (head!10668 lt!2051120) Nil!57443))))

(declare-fun d!1599564 () Bool)

(assert (=> d!1599564 e!3105731))

(declare-fun res!2120983 () Bool)

(assert (=> d!1599564 (=> (not res!2120983) (not e!3105731))))

(assert (=> d!1599564 (= res!2120983 (= (content!10184 lt!2051905) (set.union (content!10184 Nil!57443) (content!10184 (Cons!57443 (head!10668 lt!2051120) Nil!57443)))))))

(assert (=> d!1599564 (= lt!2051905 e!3105732)))

(declare-fun c!847874 () Bool)

(assert (=> d!1599564 (= c!847874 (is-Nil!57443 Nil!57443))))

(assert (=> d!1599564 (= (++!12532 Nil!57443 (Cons!57443 (head!10668 lt!2051120) Nil!57443)) lt!2051905)))

(declare-fun b!4968921 () Bool)

(declare-fun res!2120984 () Bool)

(assert (=> b!4968921 (=> (not res!2120984) (not e!3105731))))

(assert (=> b!4968921 (= res!2120984 (= (size!38072 lt!2051905) (+ (size!38072 Nil!57443) (size!38072 (Cons!57443 (head!10668 lt!2051120) Nil!57443)))))))

(assert (= (and d!1599564 c!847874) b!4968919))

(assert (= (and d!1599564 (not c!847874)) b!4968920))

(assert (= (and d!1599564 res!2120983) b!4968921))

(assert (= (and b!4968921 res!2120984) b!4968922))

(declare-fun m!5996152 () Bool)

(assert (=> b!4968920 m!5996152))

(declare-fun m!5996154 () Bool)

(assert (=> d!1599564 m!5996154))

(assert (=> d!1599564 m!5995222))

(declare-fun m!5996156 () Bool)

(assert (=> d!1599564 m!5996156))

(declare-fun m!5996158 () Bool)

(assert (=> b!4968921 m!5996158))

(assert (=> b!4968921 m!5993574))

(declare-fun m!5996160 () Bool)

(assert (=> b!4968921 m!5996160))

(assert (=> b!4967811 d!1599564))

(assert (=> b!4967966 d!1599246))

(declare-fun d!1599566 () Bool)

(assert (=> d!1599566 (= (isEmpty!30935 (maxPrefixOneRule!3629 thiss!15247 (h!63892 rulesArg!259) (list!18365 input!1342))) (not (is-Some!14448 (maxPrefixOneRule!3629 thiss!15247 (h!63892 rulesArg!259) (list!18365 input!1342)))))))

(assert (=> d!1598792 d!1599566))

(declare-fun d!1599568 () Bool)

(declare-fun c!847877 () Bool)

(assert (=> d!1599568 (= c!847877 (is-Nil!57444 rulesArg!259))))

(declare-fun e!3105735 () (Set Rule!16586))

(assert (=> d!1599568 (= (content!10183 rulesArg!259) e!3105735)))

(declare-fun b!4968927 () Bool)

(assert (=> b!4968927 (= e!3105735 (as set.empty (Set Rule!16586)))))

(declare-fun b!4968928 () Bool)

(assert (=> b!4968928 (= e!3105735 (set.union (set.insert (h!63892 rulesArg!259) (as set.empty (Set Rule!16586))) (content!10183 (t!368628 rulesArg!259))))))

(assert (= (and d!1599568 c!847877) b!4968927))

(assert (= (and d!1599568 (not c!847877)) b!4968928))

(declare-fun m!5996162 () Bool)

(assert (=> b!4968928 m!5996162))

(assert (=> b!4968928 m!5994994))

(assert (=> d!1598812 d!1599568))

(assert (=> b!4967576 d!1599264))

(declare-fun d!1599570 () Bool)

(assert (=> d!1599570 (= (nullable!4620 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (nullableFct!1253 (regex!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))))

(declare-fun bs!1183328 () Bool)

(assert (= bs!1183328 d!1599570))

(declare-fun m!5996164 () Bool)

(assert (=> bs!1183328 m!5996164))

(assert (=> b!4967672 d!1599570))

(assert (=> d!1598836 d!1598840))

(declare-fun d!1599572 () Bool)

(assert (=> d!1599572 (isPrefix!5244 lt!2051042 lt!2051040)))

(assert (=> d!1599572 true))

(declare-fun _$45!2278 () Unit!148361)

(assert (=> d!1599572 (= (choose!36668 lt!2051042 lt!2051040) _$45!2278)))

(declare-fun bs!1183329 () Bool)

(assert (= bs!1183329 d!1599572))

(assert (=> bs!1183329 m!5993516))

(assert (=> d!1598836 d!1599572))

(declare-fun b!4968929 () Bool)

(declare-fun e!3105736 () List!57567)

(assert (=> b!4968929 (= e!3105736 Nil!57443)))

(declare-fun b!4968931 () Bool)

(declare-fun e!3105737 () List!57567)

(assert (=> b!4968931 (= e!3105737 (list!18369 (xs!18471 (c!847515 (_2!34386 (get!19941 lt!2051118))))))))

(declare-fun b!4968932 () Bool)

(assert (=> b!4968932 (= e!3105737 (++!12532 (list!18367 (left!41900 (c!847515 (_2!34386 (get!19941 lt!2051118))))) (list!18367 (right!42230 (c!847515 (_2!34386 (get!19941 lt!2051118)))))))))

(declare-fun b!4968930 () Bool)

(assert (=> b!4968930 (= e!3105736 e!3105737)))

(declare-fun c!847879 () Bool)

(assert (=> b!4968930 (= c!847879 (is-Leaf!25167 (c!847515 (_2!34386 (get!19941 lt!2051118)))))))

(declare-fun d!1599574 () Bool)

(declare-fun c!847878 () Bool)

(assert (=> d!1599574 (= c!847878 (is-Empty!15145 (c!847515 (_2!34386 (get!19941 lt!2051118)))))))

(assert (=> d!1599574 (= (list!18367 (c!847515 (_2!34386 (get!19941 lt!2051118)))) e!3105736)))

(assert (= (and d!1599574 c!847878) b!4968929))

(assert (= (and d!1599574 (not c!847878)) b!4968930))

(assert (= (and b!4968930 c!847879) b!4968931))

(assert (= (and b!4968930 (not c!847879)) b!4968932))

(declare-fun m!5996166 () Bool)

(assert (=> b!4968931 m!5996166))

(declare-fun m!5996168 () Bool)

(assert (=> b!4968932 m!5996168))

(declare-fun m!5996170 () Bool)

(assert (=> b!4968932 m!5996170))

(assert (=> b!4968932 m!5996168))

(assert (=> b!4968932 m!5996170))

(declare-fun m!5996172 () Bool)

(assert (=> b!4968932 m!5996172))

(assert (=> d!1598924 d!1599574))

(declare-fun d!1599576 () Bool)

(declare-fun e!3105739 () Bool)

(assert (=> d!1599576 e!3105739))

(declare-fun res!2120990 () Bool)

(assert (=> d!1599576 (=> res!2120990 e!3105739)))

(declare-fun lt!2051910 () Option!14449)

(assert (=> d!1599576 (= res!2120990 (isEmpty!30935 lt!2051910))))

(declare-fun e!3105741 () Option!14449)

(assert (=> d!1599576 (= lt!2051910 e!3105741)))

(declare-fun c!847880 () Bool)

(declare-fun lt!2051907 () tuple2!62174)

(assert (=> d!1599576 (= c!847880 (isEmpty!30938 (_1!34390 lt!2051907)))))

(assert (=> d!1599576 (= lt!2051907 (findLongestMatch!1697 (regex!8393 (h!63892 (t!368628 rulesArg!259))) lt!2050949))))

(assert (=> d!1599576 (ruleValid!3802 thiss!15247 (h!63892 (t!368628 rulesArg!259)))))

(assert (=> d!1599576 (= (maxPrefixOneRule!3629 thiss!15247 (h!63892 (t!368628 rulesArg!259)) lt!2050949) lt!2051910)))

(declare-fun b!4968933 () Bool)

(declare-fun res!2120986 () Bool)

(declare-fun e!3105740 () Bool)

(assert (=> b!4968933 (=> (not res!2120986) (not e!3105740))))

(assert (=> b!4968933 (= res!2120986 (< (size!38072 (_2!34385 (get!19940 lt!2051910))) (size!38072 lt!2050949)))))

(declare-fun b!4968934 () Bool)

(declare-fun e!3105738 () Bool)

(assert (=> b!4968934 (= e!3105738 (matchR!6636 (regex!8393 (h!63892 (t!368628 rulesArg!259))) (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949)))))))

(declare-fun b!4968935 () Bool)

(declare-fun res!2120991 () Bool)

(assert (=> b!4968935 (=> (not res!2120991) (not e!3105740))))

(assert (=> b!4968935 (= res!2120991 (= (value!268642 (_1!34385 (get!19940 lt!2051910))) (apply!13904 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051910)))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051910)))))))))

(declare-fun b!4968936 () Bool)

(assert (=> b!4968936 (= e!3105741 (Some!14448 (tuple2!62165 (Token!15283 (apply!13904 (transformation!8393 (h!63892 (t!368628 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051907))) (h!63892 (t!368628 rulesArg!259)) (size!38073 (seqFromList!6036 (_1!34390 lt!2051907))) (_1!34390 lt!2051907)) (_2!34390 lt!2051907))))))

(declare-fun lt!2051906 () Unit!148361)

(assert (=> b!4968936 (= lt!2051906 (longestMatchIsAcceptedByMatchOrIsEmpty!1816 (regex!8393 (h!63892 (t!368628 rulesArg!259))) lt!2050949))))

(declare-fun res!2120987 () Bool)

(assert (=> b!4968936 (= res!2120987 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 (t!368628 rulesArg!259))) Nil!57443 (size!38072 Nil!57443) lt!2050949 lt!2050949 (size!38072 lt!2050949)))))))

(assert (=> b!4968936 (=> res!2120987 e!3105738)))

(assert (=> b!4968936 e!3105738))

(declare-fun lt!2051908 () Unit!148361)

(assert (=> b!4968936 (= lt!2051908 lt!2051906)))

(declare-fun lt!2051909 () Unit!148361)

(assert (=> b!4968936 (= lt!2051909 (lemmaSemiInverse!2602 (transformation!8393 (h!63892 (t!368628 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051907))))))

(declare-fun b!4968937 () Bool)

(declare-fun res!2120985 () Bool)

(assert (=> b!4968937 (=> (not res!2120985) (not e!3105740))))

(assert (=> b!4968937 (= res!2120985 (= (rule!11637 (_1!34385 (get!19940 lt!2051910))) (h!63892 (t!368628 rulesArg!259))))))

(declare-fun b!4968938 () Bool)

(declare-fun res!2120988 () Bool)

(assert (=> b!4968938 (=> (not res!2120988) (not e!3105740))))

(assert (=> b!4968938 (= res!2120988 (= (++!12532 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051910)))) (_2!34385 (get!19940 lt!2051910))) lt!2050949))))

(declare-fun b!4968939 () Bool)

(assert (=> b!4968939 (= e!3105741 None!14448)))

(declare-fun b!4968940 () Bool)

(assert (=> b!4968940 (= e!3105739 e!3105740)))

(declare-fun res!2120989 () Bool)

(assert (=> b!4968940 (=> (not res!2120989) (not e!3105740))))

(assert (=> b!4968940 (= res!2120989 (matchR!6636 (regex!8393 (h!63892 (t!368628 rulesArg!259))) (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051910))))))))

(declare-fun b!4968941 () Bool)

(assert (=> b!4968941 (= e!3105740 (= (size!38070 (_1!34385 (get!19940 lt!2051910))) (size!38072 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051910))))))))

(assert (= (and d!1599576 c!847880) b!4968939))

(assert (= (and d!1599576 (not c!847880)) b!4968936))

(assert (= (and b!4968936 (not res!2120987)) b!4968934))

(assert (= (and d!1599576 (not res!2120990)) b!4968940))

(assert (= (and b!4968940 res!2120989) b!4968938))

(assert (= (and b!4968938 res!2120988) b!4968933))

(assert (= (and b!4968933 res!2120986) b!4968937))

(assert (= (and b!4968937 res!2120985) b!4968935))

(assert (= (and b!4968935 res!2120991) b!4968941))

(declare-fun m!5996174 () Bool)

(assert (=> b!4968938 m!5996174))

(declare-fun m!5996176 () Bool)

(assert (=> b!4968938 m!5996176))

(assert (=> b!4968938 m!5996176))

(declare-fun m!5996178 () Bool)

(assert (=> b!4968938 m!5996178))

(assert (=> b!4968938 m!5996178))

(declare-fun m!5996180 () Bool)

(assert (=> b!4968938 m!5996180))

(assert (=> b!4968933 m!5996174))

(declare-fun m!5996182 () Bool)

(assert (=> b!4968933 m!5996182))

(assert (=> b!4968933 m!5993428))

(assert (=> b!4968941 m!5996174))

(declare-fun m!5996184 () Bool)

(assert (=> b!4968941 m!5996184))

(assert (=> b!4968937 m!5996174))

(declare-fun m!5996186 () Bool)

(assert (=> d!1599576 m!5996186))

(declare-fun m!5996188 () Bool)

(assert (=> d!1599576 m!5996188))

(declare-fun m!5996190 () Bool)

(assert (=> d!1599576 m!5996190))

(assert (=> d!1599576 m!5993938))

(assert (=> b!4968940 m!5996174))

(assert (=> b!4968940 m!5996176))

(assert (=> b!4968940 m!5996176))

(assert (=> b!4968940 m!5996178))

(assert (=> b!4968940 m!5996178))

(declare-fun m!5996192 () Bool)

(assert (=> b!4968940 m!5996192))

(assert (=> b!4968935 m!5996174))

(declare-fun m!5996194 () Bool)

(assert (=> b!4968935 m!5996194))

(assert (=> b!4968935 m!5996194))

(declare-fun m!5996196 () Bool)

(assert (=> b!4968935 m!5996196))

(declare-fun m!5996198 () Bool)

(assert (=> b!4968936 m!5996198))

(declare-fun m!5996200 () Bool)

(assert (=> b!4968936 m!5996200))

(assert (=> b!4968936 m!5996198))

(assert (=> b!4968936 m!5993428))

(assert (=> b!4968936 m!5993574))

(assert (=> b!4968936 m!5996074))

(assert (=> b!4968936 m!5996198))

(declare-fun m!5996202 () Bool)

(assert (=> b!4968936 m!5996202))

(assert (=> b!4968936 m!5993574))

(assert (=> b!4968936 m!5993428))

(assert (=> b!4968936 m!5996078))

(assert (=> b!4968936 m!5996198))

(declare-fun m!5996204 () Bool)

(assert (=> b!4968936 m!5996204))

(assert (=> b!4968936 m!5996076))

(assert (=> b!4968934 m!5993574))

(assert (=> b!4968934 m!5993428))

(assert (=> b!4968934 m!5993574))

(assert (=> b!4968934 m!5993428))

(assert (=> b!4968934 m!5996078))

(assert (=> b!4968934 m!5996084))

(assert (=> bm!346452 d!1599576))

(assert (=> b!4967851 d!1599346))

(declare-fun d!1599578 () Bool)

(declare-fun lt!2051911 () Bool)

(assert (=> d!1599578 (= lt!2051911 (isEmpty!30938 (list!18367 (right!42230 (c!847515 input!1342)))))))

(assert (=> d!1599578 (= lt!2051911 (= (size!38076 (right!42230 (c!847515 input!1342))) 0))))

(assert (=> d!1599578 (= (isEmpty!30943 (right!42230 (c!847515 input!1342))) lt!2051911)))

(declare-fun bs!1183330 () Bool)

(assert (= bs!1183330 d!1599578))

(assert (=> bs!1183330 m!5994260))

(assert (=> bs!1183330 m!5994260))

(declare-fun m!5996206 () Bool)

(assert (=> bs!1183330 m!5996206))

(assert (=> bs!1183330 m!5994390))

(assert (=> b!4967551 d!1599578))

(assert (=> b!4967684 d!1599290))

(assert (=> b!4967869 d!1599294))

(declare-fun b!4968942 () Bool)

(declare-fun e!3105742 () List!57567)

(assert (=> b!4968942 (= e!3105742 Nil!57443)))

(declare-fun b!4968944 () Bool)

(declare-fun e!3105743 () List!57567)

(assert (=> b!4968944 (= e!3105743 (list!18369 (xs!18471 (c!847515 (_2!34386 (get!19941 lt!2051044))))))))

(declare-fun b!4968945 () Bool)

(assert (=> b!4968945 (= e!3105743 (++!12532 (list!18367 (left!41900 (c!847515 (_2!34386 (get!19941 lt!2051044))))) (list!18367 (right!42230 (c!847515 (_2!34386 (get!19941 lt!2051044)))))))))

(declare-fun b!4968943 () Bool)

(assert (=> b!4968943 (= e!3105742 e!3105743)))

(declare-fun c!847882 () Bool)

(assert (=> b!4968943 (= c!847882 (is-Leaf!25167 (c!847515 (_2!34386 (get!19941 lt!2051044)))))))

(declare-fun d!1599580 () Bool)

(declare-fun c!847881 () Bool)

(assert (=> d!1599580 (= c!847881 (is-Empty!15145 (c!847515 (_2!34386 (get!19941 lt!2051044)))))))

(assert (=> d!1599580 (= (list!18367 (c!847515 (_2!34386 (get!19941 lt!2051044)))) e!3105742)))

(assert (= (and d!1599580 c!847881) b!4968942))

(assert (= (and d!1599580 (not c!847881)) b!4968943))

(assert (= (and b!4968943 c!847882) b!4968944))

(assert (= (and b!4968943 (not c!847882)) b!4968945))

(declare-fun m!5996208 () Bool)

(assert (=> b!4968944 m!5996208))

(declare-fun m!5996210 () Bool)

(assert (=> b!4968945 m!5996210))

(declare-fun m!5996212 () Bool)

(assert (=> b!4968945 m!5996212))

(assert (=> b!4968945 m!5996210))

(assert (=> b!4968945 m!5996212))

(declare-fun m!5996214 () Bool)

(assert (=> b!4968945 m!5996214))

(assert (=> d!1598882 d!1599580))

(declare-fun d!1599582 () Bool)

(assert (=> d!1599582 (= (list!18369 (xs!18471 (c!847515 (_2!34386 lt!2050944)))) (innerList!15233 (xs!18471 (c!847515 (_2!34386 lt!2050944)))))))

(assert (=> b!4967558 d!1599582))

(declare-fun d!1599584 () Bool)

(assert (=> d!1599584 (= (isEmpty!30936 lt!2051044) (not (is-Some!14449 lt!2051044)))))

(assert (=> d!1598820 d!1599584))

(declare-fun bs!1183331 () Bool)

(declare-fun d!1599586 () Bool)

(assert (= bs!1183331 (and d!1599586 b!4967852)))

(declare-fun lambda!247403 () Int)

(assert (=> bs!1183331 (= lambda!247403 lambda!247380)))

(declare-fun bs!1183332 () Bool)

(assert (= bs!1183332 (and d!1599586 b!4967347)))

(assert (=> bs!1183332 (= (and (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (= lambda!247403 lambda!247368))))

(declare-fun bs!1183333 () Bool)

(assert (= bs!1183333 (and d!1599586 d!1598926)))

(assert (=> bs!1183333 (= (and (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (= lambda!247403 lambda!247383))))

(declare-fun bs!1183334 () Bool)

(assert (= bs!1183334 (and d!1599586 d!1599458)))

(assert (=> bs!1183334 (= (and (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (= lambda!247403 lambda!247401))))

(declare-fun bs!1183335 () Bool)

(assert (= bs!1183335 (and d!1599586 d!1599428)))

(assert (=> bs!1183335 (= (and (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (= lambda!247403 lambda!247400))))

(declare-fun bs!1183336 () Bool)

(assert (= bs!1183336 (and d!1599586 b!4968581)))

(assert (=> bs!1183336 (= (and (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259)))))) (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))))) (= lambda!247403 lambda!247395))))

(assert (=> d!1599586 true))

(assert (=> d!1599586 (< (dynLambda!23161 order!26207 (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) (dynLambda!23160 order!26205 lambda!247403))))

(assert (=> d!1599586 true))

(assert (=> d!1599586 (< (dynLambda!23159 order!26203 (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) (dynLambda!23160 order!26205 lambda!247403))))

(assert (=> d!1599586 (= (semiInverseModEq!3700 (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) (Forall!1762 lambda!247403))))

(declare-fun bs!1183337 () Bool)

(assert (= bs!1183337 d!1599586))

(declare-fun m!5996216 () Bool)

(assert (=> bs!1183337 m!5996216))

(assert (=> d!1598922 d!1599586))

(declare-fun d!1599588 () Bool)

(assert (=> d!1599588 (= (isDefined!11362 lt!2051467) (not (isEmpty!30935 lt!2051467)))))

(declare-fun bs!1183338 () Bool)

(assert (= bs!1183338 d!1599588))

(assert (=> bs!1183338 m!5994380))

(assert (=> b!4967986 d!1599588))

(declare-fun d!1599590 () Bool)

(assert (=> d!1599590 (= lt!2051120 Nil!57443)))

(declare-fun lt!2051914 () Unit!148361)

(declare-fun choose!36683 (List!57567 List!57567 List!57567) Unit!148361)

(assert (=> d!1599590 (= lt!2051914 (choose!36683 lt!2051120 Nil!57443 lt!2051120))))

(assert (=> d!1599590 (isPrefix!5244 lt!2051120 lt!2051120)))

(assert (=> d!1599590 (= (lemmaIsPrefixSameLengthThenSameList!1208 lt!2051120 Nil!57443 lt!2051120) lt!2051914)))

(declare-fun bs!1183339 () Bool)

(assert (= bs!1183339 d!1599590))

(declare-fun m!5996218 () Bool)

(assert (=> bs!1183339 m!5996218))

(assert (=> bs!1183339 m!5994036))

(assert (=> bm!346422 d!1599590))

(declare-fun d!1599592 () Bool)

(declare-fun res!2120992 () Bool)

(declare-fun e!3105744 () Bool)

(assert (=> d!1599592 (=> (not res!2120992) (not e!3105744))))

(assert (=> d!1599592 (= res!2120992 (= (csize!30520 (right!42230 (c!847515 input!1342))) (+ (size!38076 (left!41900 (right!42230 (c!847515 input!1342)))) (size!38076 (right!42230 (right!42230 (c!847515 input!1342)))))))))

(assert (=> d!1599592 (= (inv!75080 (right!42230 (c!847515 input!1342))) e!3105744)))

(declare-fun b!4968946 () Bool)

(declare-fun res!2120993 () Bool)

(assert (=> b!4968946 (=> (not res!2120993) (not e!3105744))))

(assert (=> b!4968946 (= res!2120993 (and (not (= (left!41900 (right!42230 (c!847515 input!1342))) Empty!15145)) (not (= (right!42230 (right!42230 (c!847515 input!1342))) Empty!15145))))))

(declare-fun b!4968947 () Bool)

(declare-fun res!2120994 () Bool)

(assert (=> b!4968947 (=> (not res!2120994) (not e!3105744))))

(assert (=> b!4968947 (= res!2120994 (= (cheight!15356 (right!42230 (c!847515 input!1342))) (+ (max!0 (height!2013 (left!41900 (right!42230 (c!847515 input!1342)))) (height!2013 (right!42230 (right!42230 (c!847515 input!1342))))) 1)))))

(declare-fun b!4968948 () Bool)

(assert (=> b!4968948 (= e!3105744 (<= 0 (cheight!15356 (right!42230 (c!847515 input!1342)))))))

(assert (= (and d!1599592 res!2120992) b!4968946))

(assert (= (and b!4968946 res!2120993) b!4968947))

(assert (= (and b!4968947 res!2120994) b!4968948))

(declare-fun m!5996220 () Bool)

(assert (=> d!1599592 m!5996220))

(declare-fun m!5996222 () Bool)

(assert (=> d!1599592 m!5996222))

(declare-fun m!5996224 () Bool)

(assert (=> b!4968947 m!5996224))

(declare-fun m!5996226 () Bool)

(assert (=> b!4968947 m!5996226))

(assert (=> b!4968947 m!5996224))

(assert (=> b!4968947 m!5996226))

(declare-fun m!5996228 () Bool)

(assert (=> b!4968947 m!5996228))

(assert (=> b!4967827 d!1599592))

(assert (=> d!1598852 d!1598926))

(declare-fun d!1599594 () Bool)

(assert (=> d!1599594 (= (isEmpty!30935 lt!2051453) (not (is-Some!14448 lt!2051453)))))

(assert (=> d!1598916 d!1599594))

(assert (=> d!1598916 d!1598698))

(assert (=> d!1598916 d!1598700))

(assert (=> d!1598916 d!1598832))

(declare-fun lt!2051919 () Option!14449)

(declare-fun d!1599596 () Bool)

(assert (=> d!1599596 (= lt!2051919 (maxPrefix!4660 thiss!15247 (t!368628 (t!368628 rulesArg!259)) lt!2050949))))

(declare-fun e!3105745 () Option!14449)

(assert (=> d!1599596 (= lt!2051919 e!3105745)))

(declare-fun c!847883 () Bool)

(assert (=> d!1599596 (= c!847883 (and (is-Cons!57444 (t!368628 (t!368628 rulesArg!259))) (is-Nil!57444 (t!368628 (t!368628 (t!368628 rulesArg!259))))))))

(declare-fun lt!2051916 () Unit!148361)

(declare-fun lt!2051915 () Unit!148361)

(assert (=> d!1599596 (= lt!2051916 lt!2051915)))

(assert (=> d!1599596 (isPrefix!5244 lt!2050949 lt!2050949)))

(assert (=> d!1599596 (= lt!2051915 (lemmaIsPrefixRefl!3568 lt!2050949 lt!2050949))))

(assert (=> d!1599596 (rulesValidInductive!3296 thiss!15247 (t!368628 (t!368628 rulesArg!259)))))

(assert (=> d!1599596 (= (maxPrefixZipper!786 thiss!15247 (t!368628 (t!368628 rulesArg!259)) lt!2050949) lt!2051919)))

(declare-fun bm!346535 () Bool)

(declare-fun call!346540 () Option!14449)

(assert (=> bm!346535 (= call!346540 (maxPrefixOneRuleZipper!296 thiss!15247 (h!63892 (t!368628 (t!368628 rulesArg!259))) lt!2050949))))

(declare-fun b!4968949 () Bool)

(assert (=> b!4968949 (= e!3105745 call!346540)))

(declare-fun b!4968950 () Bool)

(declare-fun lt!2051918 () Option!14449)

(declare-fun lt!2051917 () Option!14449)

(assert (=> b!4968950 (= e!3105745 (ite (and (is-None!14448 lt!2051918) (is-None!14448 lt!2051917)) None!14448 (ite (is-None!14448 lt!2051917) lt!2051918 (ite (is-None!14448 lt!2051918) lt!2051917 (ite (>= (size!38070 (_1!34385 (v!50437 lt!2051918))) (size!38070 (_1!34385 (v!50437 lt!2051917)))) lt!2051918 lt!2051917)))))))

(assert (=> b!4968950 (= lt!2051918 call!346540)))

(assert (=> b!4968950 (= lt!2051917 (maxPrefixZipper!786 thiss!15247 (t!368628 (t!368628 (t!368628 rulesArg!259))) lt!2050949))))

(assert (= (and d!1599596 c!847883) b!4968949))

(assert (= (and d!1599596 (not c!847883)) b!4968950))

(assert (= (or b!4968949 b!4968950) bm!346535))

(assert (=> d!1599596 m!5994280))

(assert (=> d!1599596 m!5993340))

(assert (=> d!1599596 m!5993342))

(assert (=> d!1599596 m!5993940))

(declare-fun m!5996230 () Bool)

(assert (=> bm!346535 m!5996230))

(declare-fun m!5996232 () Bool)

(assert (=> b!4968950 m!5996232))

(assert (=> b!4967933 d!1599596))

(assert (=> b!4967671 d!1599504))

(assert (=> b!4967671 d!1599314))

(assert (=> b!4967560 d!1599424))

(assert (=> b!4967560 d!1599426))

(declare-fun b!4968951 () Bool)

(declare-fun e!3105749 () Bool)

(declare-fun lt!2051920 () Bool)

(declare-fun call!346541 () Bool)

(assert (=> b!4968951 (= e!3105749 (= lt!2051920 call!346541))))

(declare-fun b!4968952 () Bool)

(declare-fun res!2120997 () Bool)

(declare-fun e!3105746 () Bool)

(assert (=> b!4968952 (=> (not res!2120997) (not e!3105746))))

(assert (=> b!4968952 (= res!2120997 (isEmpty!30938 (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) (list!18365 input!1342) (list!18365 input!1342) (size!38072 (list!18365 input!1342)))))))))

(declare-fun b!4968953 () Bool)

(assert (=> b!4968953 (= e!3105746 (= (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) (list!18365 input!1342) (list!18365 input!1342) (size!38072 (list!18365 input!1342))))) (c!847514 (regex!8393 (h!63892 rulesArg!259)))))))

(declare-fun b!4968954 () Bool)

(declare-fun e!3105748 () Bool)

(assert (=> b!4968954 (= e!3105748 (not lt!2051920))))

(declare-fun b!4968955 () Bool)

(declare-fun e!3105752 () Bool)

(assert (=> b!4968955 (= e!3105752 (matchR!6636 (derivativeStep!3922 (regex!8393 (h!63892 rulesArg!259)) (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) (list!18365 input!1342) (list!18365 input!1342) (size!38072 (list!18365 input!1342)))))) (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) (list!18365 input!1342) (list!18365 input!1342) (size!38072 (list!18365 input!1342)))))))))

(declare-fun bm!346536 () Bool)

(assert (=> bm!346536 (= call!346541 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) (list!18365 input!1342) (list!18365 input!1342) (size!38072 (list!18365 input!1342))))))))

(declare-fun b!4968956 () Bool)

(declare-fun res!2120995 () Bool)

(assert (=> b!4968956 (=> (not res!2120995) (not e!3105746))))

(assert (=> b!4968956 (= res!2120995 (not call!346541))))

(declare-fun b!4968957 () Bool)

(declare-fun e!3105750 () Bool)

(declare-fun e!3105751 () Bool)

(assert (=> b!4968957 (= e!3105750 e!3105751)))

(declare-fun res!2120996 () Bool)

(assert (=> b!4968957 (=> (not res!2120996) (not e!3105751))))

(assert (=> b!4968957 (= res!2120996 (not lt!2051920))))

(declare-fun b!4968958 () Bool)

(declare-fun res!2120998 () Bool)

(declare-fun e!3105747 () Bool)

(assert (=> b!4968958 (=> res!2120998 e!3105747)))

(assert (=> b!4968958 (= res!2120998 (not (isEmpty!30938 (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) (list!18365 input!1342) (list!18365 input!1342) (size!38072 (list!18365 input!1342))))))))))

(declare-fun b!4968959 () Bool)

(assert (=> b!4968959 (= e!3105752 (nullable!4620 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun b!4968960 () Bool)

(assert (=> b!4968960 (= e!3105747 (not (= (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) (list!18365 input!1342) (list!18365 input!1342) (size!38072 (list!18365 input!1342))))) (c!847514 (regex!8393 (h!63892 rulesArg!259))))))))

(declare-fun b!4968961 () Bool)

(declare-fun res!2121002 () Bool)

(assert (=> b!4968961 (=> res!2121002 e!3105750)))

(assert (=> b!4968961 (= res!2121002 e!3105746)))

(declare-fun res!2121000 () Bool)

(assert (=> b!4968961 (=> (not res!2121000) (not e!3105746))))

(assert (=> b!4968961 (= res!2121000 lt!2051920)))

(declare-fun b!4968962 () Bool)

(assert (=> b!4968962 (= e!3105749 e!3105748)))

(declare-fun c!847886 () Bool)

(assert (=> b!4968962 (= c!847886 (is-EmptyLang!13626 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun d!1599598 () Bool)

(assert (=> d!1599598 e!3105749))

(declare-fun c!847885 () Bool)

(assert (=> d!1599598 (= c!847885 (is-EmptyExpr!13626 (regex!8393 (h!63892 rulesArg!259))))))

(assert (=> d!1599598 (= lt!2051920 e!3105752)))

(declare-fun c!847884 () Bool)

(assert (=> d!1599598 (= c!847884 (isEmpty!30938 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) (list!18365 input!1342) (list!18365 input!1342) (size!38072 (list!18365 input!1342))))))))

(assert (=> d!1599598 (validRegex!5969 (regex!8393 (h!63892 rulesArg!259)))))

(assert (=> d!1599598 (= (matchR!6636 (regex!8393 (h!63892 rulesArg!259)) (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) (list!18365 input!1342) (list!18365 input!1342) (size!38072 (list!18365 input!1342))))) lt!2051920)))

(declare-fun b!4968963 () Bool)

(declare-fun res!2121001 () Bool)

(assert (=> b!4968963 (=> res!2121001 e!3105750)))

(assert (=> b!4968963 (= res!2121001 (not (is-ElementMatch!13626 (regex!8393 (h!63892 rulesArg!259)))))))

(assert (=> b!4968963 (= e!3105748 e!3105750)))

(declare-fun b!4968964 () Bool)

(assert (=> b!4968964 (= e!3105751 e!3105747)))

(declare-fun res!2120999 () Bool)

(assert (=> b!4968964 (=> res!2120999 e!3105747)))

(assert (=> b!4968964 (= res!2120999 call!346541)))

(assert (= (and d!1599598 c!847884) b!4968959))

(assert (= (and d!1599598 (not c!847884)) b!4968955))

(assert (= (and d!1599598 c!847885) b!4968951))

(assert (= (and d!1599598 (not c!847885)) b!4968962))

(assert (= (and b!4968962 c!847886) b!4968954))

(assert (= (and b!4968962 (not c!847886)) b!4968963))

(assert (= (and b!4968963 (not res!2121001)) b!4968961))

(assert (= (and b!4968961 res!2121000) b!4968956))

(assert (= (and b!4968956 res!2120995) b!4968952))

(assert (= (and b!4968952 res!2120997) b!4968953))

(assert (= (and b!4968961 (not res!2121002)) b!4968957))

(assert (= (and b!4968957 res!2120996) b!4968964))

(assert (= (and b!4968964 (not res!2120999)) b!4968958))

(assert (= (and b!4968958 (not res!2120998)) b!4968960))

(assert (= (or b!4968951 b!4968956 b!4968964) bm!346536))

(declare-fun m!5996234 () Bool)

(assert (=> b!4968955 m!5996234))

(assert (=> b!4968955 m!5996234))

(declare-fun m!5996236 () Bool)

(assert (=> b!4968955 m!5996236))

(declare-fun m!5996238 () Bool)

(assert (=> b!4968955 m!5996238))

(assert (=> b!4968955 m!5996236))

(assert (=> b!4968955 m!5996238))

(declare-fun m!5996240 () Bool)

(assert (=> b!4968955 m!5996240))

(assert (=> b!4968960 m!5996234))

(assert (=> b!4968958 m!5996238))

(assert (=> b!4968958 m!5996238))

(declare-fun m!5996242 () Bool)

(assert (=> b!4968958 m!5996242))

(assert (=> b!4968953 m!5996234))

(assert (=> b!4968959 m!5993830))

(assert (=> b!4968952 m!5996238))

(assert (=> b!4968952 m!5996238))

(assert (=> b!4968952 m!5996242))

(assert (=> bm!346536 m!5993868))

(assert (=> d!1599598 m!5993868))

(assert (=> d!1599598 m!5993828))

(assert (=> b!4967597 d!1599598))

(assert (=> b!4967597 d!1599440))

(assert (=> b!4967597 d!1598850))

(assert (=> b!4967597 d!1599442))

(assert (=> b!4967686 d!1599116))

(declare-fun d!1599600 () Bool)

(assert (=> d!1599600 (= (list!18365 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))))) (list!18367 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))))))))

(declare-fun bs!1183340 () Bool)

(assert (= bs!1183340 d!1599600))

(declare-fun m!5996244 () Bool)

(assert (=> bs!1183340 m!5996244))

(assert (=> bs!1183219 d!1599600))

(assert (=> bs!1183219 d!1599320))

(assert (=> b!4967570 d!1599322))

(assert (=> b!4967570 d!1599142))

(declare-fun d!1599602 () Bool)

(assert (=> d!1599602 (= (inv!75074 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115)))) (isBalanced!4202 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115))))))))

(declare-fun bs!1183341 () Bool)

(assert (= bs!1183341 d!1599602))

(declare-fun m!5996246 () Bool)

(assert (=> bs!1183341 m!5996246))

(assert (=> tb!260635 d!1599602))

(declare-fun bs!1183342 () Bool)

(declare-fun d!1599604 () Bool)

(assert (= bs!1183342 (and d!1599604 b!4967852)))

(declare-fun lambda!247404 () Int)

(assert (=> bs!1183342 (= (and (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))))) (= lambda!247404 lambda!247380))))

(declare-fun bs!1183343 () Bool)

(assert (= bs!1183343 (and d!1599604 b!4967347)))

(assert (=> bs!1183343 (= lambda!247404 lambda!247368)))

(declare-fun bs!1183344 () Bool)

(assert (= bs!1183344 (and d!1599604 d!1599586)))

(assert (=> bs!1183344 (= (and (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))))) (= lambda!247404 lambda!247403))))

(declare-fun bs!1183345 () Bool)

(assert (= bs!1183345 (and d!1599604 d!1598926)))

(assert (=> bs!1183345 (= lambda!247404 lambda!247383)))

(declare-fun bs!1183346 () Bool)

(assert (= bs!1183346 (and d!1599604 d!1599458)))

(assert (=> bs!1183346 (= lambda!247404 lambda!247401)))

(declare-fun bs!1183347 () Bool)

(assert (= bs!1183347 (and d!1599604 d!1599428)))

(assert (=> bs!1183347 (= lambda!247404 lambda!247400)))

(declare-fun bs!1183348 () Bool)

(assert (= bs!1183348 (and d!1599604 b!4968581)))

(assert (=> bs!1183348 (= (and (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259)))))) (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))))) (= lambda!247404 lambda!247395))))

(declare-fun b!4968965 () Bool)

(declare-fun e!3105753 () Bool)

(assert (=> b!4968965 (= e!3105753 true)))

(assert (=> d!1599604 e!3105753))

(assert (= d!1599604 b!4968965))

(assert (=> b!4968965 (< (dynLambda!23159 order!26203 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) (dynLambda!23160 order!26205 lambda!247404))))

(assert (=> b!4968965 (< (dynLambda!23161 order!26207 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) (dynLambda!23160 order!26205 lambda!247404))))

(assert (=> d!1599604 (= (list!18365 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051460))))) (list!18365 (seqFromList!6036 (_1!34390 lt!2051460))))))

(declare-fun lt!2051921 () Unit!148361)

(assert (=> d!1599604 (= lt!2051921 (ForallOf!1227 lambda!247404 (seqFromList!6036 (_1!34390 lt!2051460))))))

(assert (=> d!1599604 (= (lemmaSemiInverse!2602 (transformation!8393 (h!63892 rulesArg!259)) (seqFromList!6036 (_1!34390 lt!2051460))) lt!2051921)))

(declare-fun b_lambda!196971 () Bool)

(assert (=> (not b_lambda!196971) (not d!1599604)))

(declare-fun t!368790 () Bool)

(declare-fun tb!260761 () Bool)

(assert (=> (and b!4967137 (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) t!368790) tb!260761))

(declare-fun b!4968966 () Bool)

(declare-fun tp!1393485 () Bool)

(declare-fun e!3105754 () Bool)

(assert (=> b!4968966 (= e!3105754 (and (inv!75075 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051460)))))) tp!1393485))))

(declare-fun result!325880 () Bool)

(assert (=> tb!260761 (= result!325880 (and (inv!75074 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051460))))) e!3105754))))

(assert (= tb!260761 b!4968966))

(declare-fun m!5996248 () Bool)

(assert (=> b!4968966 m!5996248))

(declare-fun m!5996250 () Bool)

(assert (=> tb!260761 m!5996250))

(assert (=> d!1599604 t!368790))

(declare-fun b_and!348355 () Bool)

(assert (= b_and!348307 (and (=> t!368790 result!325880) b_and!348355)))

(declare-fun t!368792 () Bool)

(declare-fun tb!260763 () Bool)

(assert (=> (and b!4967394 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) t!368792) tb!260763))

(declare-fun result!325882 () Bool)

(assert (= result!325882 result!325880))

(assert (=> d!1599604 t!368792))

(declare-fun b_and!348357 () Bool)

(assert (= b_and!348309 (and (=> t!368792 result!325882) b_and!348357)))

(declare-fun t!368794 () Bool)

(declare-fun tb!260765 () Bool)

(assert (=> (and b!4968022 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) t!368794) tb!260765))

(declare-fun result!325884 () Bool)

(assert (= result!325884 result!325880))

(assert (=> d!1599604 t!368794))

(declare-fun b_and!348359 () Bool)

(assert (= b_and!348311 (and (=> t!368794 result!325884) b_and!348359)))

(declare-fun b_lambda!196973 () Bool)

(assert (=> (not b_lambda!196973) (not d!1599604)))

(declare-fun t!368796 () Bool)

(declare-fun tb!260767 () Bool)

(assert (=> (and b!4967137 (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) t!368796) tb!260767))

(declare-fun result!325886 () Bool)

(assert (=> tb!260767 (= result!325886 (inv!21 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051460)))))))

(declare-fun m!5996252 () Bool)

(assert (=> tb!260767 m!5996252))

(assert (=> d!1599604 t!368796))

(declare-fun b_and!348361 () Bool)

(assert (= b_and!348349 (and (=> t!368796 result!325886) b_and!348361)))

(declare-fun t!368798 () Bool)

(declare-fun tb!260769 () Bool)

(assert (=> (and b!4967394 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) t!368798) tb!260769))

(declare-fun result!325888 () Bool)

(assert (= result!325888 result!325886))

(assert (=> d!1599604 t!368798))

(declare-fun b_and!348363 () Bool)

(assert (= b_and!348351 (and (=> t!368798 result!325888) b_and!348363)))

(declare-fun t!368800 () Bool)

(declare-fun tb!260771 () Bool)

(assert (=> (and b!4968022 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) t!368800) tb!260771))

(declare-fun result!325890 () Bool)

(assert (= result!325890 result!325886))

(assert (=> d!1599604 t!368800))

(declare-fun b_and!348365 () Bool)

(assert (= b_and!348353 (and (=> t!368800 result!325890) b_and!348365)))

(assert (=> d!1599604 m!5994344))

(declare-fun m!5996254 () Bool)

(assert (=> d!1599604 m!5996254))

(assert (=> d!1599604 m!5994344))

(declare-fun m!5996256 () Bool)

(assert (=> d!1599604 m!5996256))

(declare-fun m!5996258 () Bool)

(assert (=> d!1599604 m!5996258))

(declare-fun m!5996260 () Bool)

(assert (=> d!1599604 m!5996260))

(assert (=> d!1599604 m!5994344))

(declare-fun m!5996262 () Bool)

(assert (=> d!1599604 m!5996262))

(assert (=> d!1599604 m!5996254))

(assert (=> d!1599604 m!5996258))

(assert (=> b!4967965 d!1599604))

(assert (=> b!4967965 d!1598808))

(declare-fun d!1599606 () Bool)

(assert (=> d!1599606 (= (seqFromList!6036 (_1!34390 lt!2051460)) (fromListB!2731 (_1!34390 lt!2051460)))))

(declare-fun bs!1183349 () Bool)

(assert (= bs!1183349 d!1599606))

(declare-fun m!5996264 () Bool)

(assert (=> bs!1183349 m!5996264))

(assert (=> b!4967965 d!1599606))

(declare-fun d!1599608 () Bool)

(declare-fun lt!2051922 () Int)

(assert (=> d!1599608 (= lt!2051922 (size!38072 (list!18365 (seqFromList!6036 (_1!34390 lt!2051460)))))))

(assert (=> d!1599608 (= lt!2051922 (size!38076 (c!847515 (seqFromList!6036 (_1!34390 lt!2051460)))))))

(assert (=> d!1599608 (= (size!38073 (seqFromList!6036 (_1!34390 lt!2051460))) lt!2051922)))

(declare-fun bs!1183350 () Bool)

(assert (= bs!1183350 d!1599608))

(assert (=> bs!1183350 m!5994344))

(assert (=> bs!1183350 m!5996256))

(assert (=> bs!1183350 m!5996256))

(declare-fun m!5996266 () Bool)

(assert (=> bs!1183350 m!5996266))

(declare-fun m!5996268 () Bool)

(assert (=> bs!1183350 m!5996268))

(assert (=> b!4967965 d!1599608))

(assert (=> b!4967965 d!1598850))

(declare-fun d!1599610 () Bool)

(assert (=> d!1599610 (= (apply!13904 (transformation!8393 (h!63892 rulesArg!259)) (seqFromList!6036 (_1!34390 lt!2051460))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (_1!34390 lt!2051460))))))

(declare-fun b_lambda!196975 () Bool)

(assert (=> (not b_lambda!196975) (not d!1599610)))

(assert (=> d!1599610 t!368796))

(declare-fun b_and!348367 () Bool)

(assert (= b_and!348361 (and (=> t!368796 result!325886) b_and!348367)))

(assert (=> d!1599610 t!368798))

(declare-fun b_and!348369 () Bool)

(assert (= b_and!348363 (and (=> t!368798 result!325888) b_and!348369)))

(assert (=> d!1599610 t!368800))

(declare-fun b_and!348371 () Bool)

(assert (= b_and!348365 (and (=> t!368800 result!325890) b_and!348371)))

(assert (=> d!1599610 m!5994344))

(assert (=> d!1599610 m!5996254))

(assert (=> b!4967965 d!1599610))

(assert (=> b!4967965 d!1599164))

(assert (=> b!4967965 d!1599462))

(assert (=> b!4967965 d!1599468))

(assert (=> bm!346453 d!1598866))

(declare-fun d!1599612 () Bool)

(declare-fun lt!2051923 () Int)

(assert (=> d!1599612 (>= lt!2051923 0)))

(declare-fun e!3105756 () Int)

(assert (=> d!1599612 (= lt!2051923 e!3105756)))

(declare-fun c!847887 () Bool)

(assert (=> d!1599612 (= c!847887 (is-Nil!57443 lt!2051040))))

(assert (=> d!1599612 (= (size!38072 lt!2051040) lt!2051923)))

(declare-fun b!4968967 () Bool)

(assert (=> b!4968967 (= e!3105756 0)))

(declare-fun b!4968968 () Bool)

(assert (=> b!4968968 (= e!3105756 (+ 1 (size!38072 (t!368627 lt!2051040))))))

(assert (= (and d!1599612 c!847887) b!4968967))

(assert (= (and d!1599612 (not c!847887)) b!4968968))

(declare-fun m!5996270 () Bool)

(assert (=> b!4968968 m!5996270))

(assert (=> b!4967690 d!1599612))

(declare-fun d!1599614 () Bool)

(declare-fun lt!2051924 () Int)

(assert (=> d!1599614 (>= lt!2051924 0)))

(declare-fun e!3105757 () Int)

(assert (=> d!1599614 (= lt!2051924 e!3105757)))

(declare-fun c!847888 () Bool)

(assert (=> d!1599614 (= c!847888 (is-Nil!57443 lt!2051042))))

(assert (=> d!1599614 (= (size!38072 lt!2051042) lt!2051924)))

(declare-fun b!4968969 () Bool)

(assert (=> b!4968969 (= e!3105757 0)))

(declare-fun b!4968970 () Bool)

(assert (=> b!4968970 (= e!3105757 (+ 1 (size!38072 (t!368627 lt!2051042))))))

(assert (= (and d!1599614 c!847888) b!4968969))

(assert (= (and d!1599614 (not c!847888)) b!4968970))

(declare-fun m!5996272 () Bool)

(assert (=> b!4968970 m!5996272))

(assert (=> b!4967690 d!1599614))

(assert (=> bm!346426 d!1599546))

(assert (=> b!4967941 d!1599450))

(assert (=> b!4967941 d!1599452))

(assert (=> b!4967941 d!1599140))

(declare-fun d!1599616 () Bool)

(declare-fun choose!36684 (Int) Bool)

(assert (=> d!1599616 (= (Forall2!1287 lambda!247375) (choose!36684 lambda!247375))))

(declare-fun bs!1183351 () Bool)

(assert (= bs!1183351 d!1599616))

(declare-fun m!5996274 () Bool)

(assert (=> bs!1183351 m!5996274))

(assert (=> d!1598816 d!1599616))

(assert (=> bm!346429 d!1599558))

(declare-fun b!4968971 () Bool)

(declare-fun e!3105759 () Bool)

(declare-fun e!3105758 () Bool)

(assert (=> b!4968971 (= e!3105759 e!3105758)))

(declare-fun res!2121004 () Bool)

(assert (=> b!4968971 (=> (not res!2121004) (not e!3105758))))

(assert (=> b!4968971 (= res!2121004 (<= (- 1) (- (height!2013 (left!41900 (right!42230 (c!847515 input!1342)))) (height!2013 (right!42230 (right!42230 (c!847515 input!1342)))))))))

(declare-fun d!1599618 () Bool)

(declare-fun res!2121005 () Bool)

(assert (=> d!1599618 (=> res!2121005 e!3105759)))

(assert (=> d!1599618 (= res!2121005 (not (is-Node!15145 (right!42230 (c!847515 input!1342)))))))

(assert (=> d!1599618 (= (isBalanced!4202 (right!42230 (c!847515 input!1342))) e!3105759)))

(declare-fun b!4968972 () Bool)

(declare-fun res!2121007 () Bool)

(assert (=> b!4968972 (=> (not res!2121007) (not e!3105758))))

(assert (=> b!4968972 (= res!2121007 (isBalanced!4202 (left!41900 (right!42230 (c!847515 input!1342)))))))

(declare-fun b!4968973 () Bool)

(declare-fun res!2121008 () Bool)

(assert (=> b!4968973 (=> (not res!2121008) (not e!3105758))))

(assert (=> b!4968973 (= res!2121008 (<= (- (height!2013 (left!41900 (right!42230 (c!847515 input!1342)))) (height!2013 (right!42230 (right!42230 (c!847515 input!1342))))) 1))))

(declare-fun b!4968974 () Bool)

(declare-fun res!2121006 () Bool)

(assert (=> b!4968974 (=> (not res!2121006) (not e!3105758))))

(assert (=> b!4968974 (= res!2121006 (not (isEmpty!30943 (left!41900 (right!42230 (c!847515 input!1342))))))))

(declare-fun b!4968975 () Bool)

(declare-fun res!2121003 () Bool)

(assert (=> b!4968975 (=> (not res!2121003) (not e!3105758))))

(assert (=> b!4968975 (= res!2121003 (isBalanced!4202 (right!42230 (right!42230 (c!847515 input!1342)))))))

(declare-fun b!4968976 () Bool)

(assert (=> b!4968976 (= e!3105758 (not (isEmpty!30943 (right!42230 (right!42230 (c!847515 input!1342))))))))

(assert (= (and d!1599618 (not res!2121005)) b!4968971))

(assert (= (and b!4968971 res!2121004) b!4968973))

(assert (= (and b!4968973 res!2121008) b!4968972))

(assert (= (and b!4968972 res!2121007) b!4968975))

(assert (= (and b!4968975 res!2121003) b!4968974))

(assert (= (and b!4968974 res!2121006) b!4968976))

(assert (=> b!4968971 m!5996224))

(assert (=> b!4968971 m!5996226))

(declare-fun m!5996276 () Bool)

(assert (=> b!4968976 m!5996276))

(assert (=> b!4968973 m!5996224))

(assert (=> b!4968973 m!5996226))

(declare-fun m!5996278 () Bool)

(assert (=> b!4968974 m!5996278))

(declare-fun m!5996280 () Bool)

(assert (=> b!4968972 m!5996280))

(declare-fun m!5996282 () Bool)

(assert (=> b!4968975 m!5996282))

(assert (=> b!4967550 d!1599618))

(assert (=> b!4967683 d!1599340))

(declare-fun b!4968977 () Bool)

(declare-fun e!3105760 () Bool)

(assert (=> b!4968977 (= e!3105760 (inv!16 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115))))))

(declare-fun d!1599620 () Bool)

(declare-fun c!847889 () Bool)

(assert (=> d!1599620 (= c!847889 (is-IntegerValue!26109 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115))))))

(assert (=> d!1599620 (= (inv!21 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115))) e!3105760)))

(declare-fun b!4968978 () Bool)

(declare-fun e!3105761 () Bool)

(assert (=> b!4968978 (= e!3105760 e!3105761)))

(declare-fun c!847890 () Bool)

(assert (=> b!4968978 (= c!847890 (is-IntegerValue!26110 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115))))))

(declare-fun b!4968979 () Bool)

(declare-fun res!2121009 () Bool)

(declare-fun e!3105762 () Bool)

(assert (=> b!4968979 (=> res!2121009 e!3105762)))

(assert (=> b!4968979 (= res!2121009 (not (is-IntegerValue!26111 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115)))))))

(assert (=> b!4968979 (= e!3105761 e!3105762)))

(declare-fun b!4968980 () Bool)

(assert (=> b!4968980 (= e!3105762 (inv!15 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115))))))

(declare-fun b!4968981 () Bool)

(assert (=> b!4968981 (= e!3105761 (inv!17 (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115))))))

(assert (= (and d!1599620 c!847889) b!4968977))

(assert (= (and d!1599620 (not c!847889)) b!4968978))

(assert (= (and b!4968978 c!847890) b!4968981))

(assert (= (and b!4968978 (not c!847890)) b!4968979))

(assert (= (and b!4968979 (not res!2121009)) b!4968980))

(declare-fun m!5996284 () Bool)

(assert (=> b!4968977 m!5996284))

(declare-fun m!5996286 () Bool)

(assert (=> b!4968980 m!5996286))

(declare-fun m!5996288 () Bool)

(assert (=> b!4968981 m!5996288))

(assert (=> tb!260615 d!1599620))

(declare-fun d!1599622 () Bool)

(declare-fun res!2121010 () Bool)

(declare-fun e!3105763 () Bool)

(assert (=> d!1599622 (=> (not res!2121010) (not e!3105763))))

(assert (=> d!1599622 (= res!2121010 (<= (size!38072 (list!18369 (xs!18471 (right!42230 (c!847515 totalInput!464))))) 512))))

(assert (=> d!1599622 (= (inv!75081 (right!42230 (c!847515 totalInput!464))) e!3105763)))

(declare-fun b!4968982 () Bool)

(declare-fun res!2121011 () Bool)

(assert (=> b!4968982 (=> (not res!2121011) (not e!3105763))))

(assert (=> b!4968982 (= res!2121011 (= (csize!30521 (right!42230 (c!847515 totalInput!464))) (size!38072 (list!18369 (xs!18471 (right!42230 (c!847515 totalInput!464)))))))))

(declare-fun b!4968983 () Bool)

(assert (=> b!4968983 (= e!3105763 (and (> (csize!30521 (right!42230 (c!847515 totalInput!464))) 0) (<= (csize!30521 (right!42230 (c!847515 totalInput!464))) 512)))))

(assert (= (and d!1599622 res!2121010) b!4968982))

(assert (= (and b!4968982 res!2121011) b!4968983))

(declare-fun m!5996290 () Bool)

(assert (=> d!1599622 m!5996290))

(assert (=> d!1599622 m!5996290))

(declare-fun m!5996292 () Bool)

(assert (=> d!1599622 m!5996292))

(assert (=> b!4968982 m!5996290))

(assert (=> b!4968982 m!5996290))

(assert (=> b!4968982 m!5996292))

(assert (=> b!4967927 d!1599622))

(assert (=> b!4967706 d!1598816))

(declare-fun d!1599624 () Bool)

(assert (=> d!1599624 (= (isEmpty!30938 (_1!34390 lt!2051376)) (is-Nil!57443 (_1!34390 lt!2051376)))))

(assert (=> b!4967806 d!1599624))

(declare-fun d!1599626 () Bool)

(assert (=> d!1599626 (= (list!18365 (_1!34389 lt!2051195)) (list!18367 (c!847515 (_1!34389 lt!2051195))))))

(declare-fun bs!1183352 () Bool)

(assert (= bs!1183352 d!1599626))

(declare-fun m!5996294 () Bool)

(assert (=> bs!1183352 m!5996294))

(assert (=> d!1598798 d!1599626))

(assert (=> d!1598798 d!1598680))

(assert (=> d!1598798 d!1599176))

(declare-fun d!1599628 () Bool)

(declare-fun res!2121014 () tuple2!62172)

(assert (=> d!1599628 (= (tuple2!62175 (list!18365 (_1!34389 res!2121014)) (list!18365 (_2!34389 res!2121014))) (findLongestMatch!1697 (regex!8393 (h!63892 rulesArg!259)) (list!18365 input!1342)))))

(declare-fun e!3105768 () Bool)

(declare-fun e!3105769 () Bool)

(assert (=> d!1599628 (and (inv!75074 (_1!34389 res!2121014)) e!3105768 (inv!75074 (_2!34389 res!2121014)) e!3105769)))

(assert (=> d!1599628 (= (choose!36670 (regex!8393 (h!63892 rulesArg!259)) input!1342 totalInput!464) res!2121014)))

(declare-fun b!4968988 () Bool)

(declare-fun tp!1393490 () Bool)

(assert (=> b!4968988 (= e!3105768 (and (inv!75075 (c!847515 (_1!34389 res!2121014))) tp!1393490))))

(declare-fun b!4968989 () Bool)

(declare-fun tp!1393491 () Bool)

(assert (=> b!4968989 (= e!3105769 (and (inv!75075 (c!847515 (_2!34389 res!2121014))) tp!1393491))))

(assert (= d!1599628 b!4968988))

(assert (= d!1599628 b!4968989))

(declare-fun m!5996296 () Bool)

(assert (=> d!1599628 m!5996296))

(assert (=> d!1599628 m!5993376))

(assert (=> d!1599628 m!5993832))

(declare-fun m!5996298 () Bool)

(assert (=> d!1599628 m!5996298))

(declare-fun m!5996300 () Bool)

(assert (=> d!1599628 m!5996300))

(assert (=> d!1599628 m!5993376))

(declare-fun m!5996302 () Bool)

(assert (=> d!1599628 m!5996302))

(declare-fun m!5996304 () Bool)

(assert (=> b!4968988 m!5996304))

(declare-fun m!5996306 () Bool)

(assert (=> b!4968989 m!5996306))

(assert (=> d!1598798 d!1599628))

(declare-fun d!1599630 () Bool)

(assert (=> d!1599630 (= (list!18365 (_2!34389 lt!2051195)) (list!18367 (c!847515 (_2!34389 lt!2051195))))))

(declare-fun bs!1183353 () Bool)

(assert (= bs!1183353 d!1599630))

(declare-fun m!5996308 () Bool)

(assert (=> bs!1183353 m!5996308))

(assert (=> d!1598798 d!1599630))

(assert (=> d!1598798 d!1599404))

(declare-fun d!1599632 () Bool)

(declare-fun lt!2051925 () Int)

(assert (=> d!1599632 (= lt!2051925 (size!38072 (list!18367 (left!41900 (c!847515 input!1342)))))))

(assert (=> d!1599632 (= lt!2051925 (ite (is-Empty!15145 (left!41900 (c!847515 input!1342))) 0 (ite (is-Leaf!25167 (left!41900 (c!847515 input!1342))) (csize!30521 (left!41900 (c!847515 input!1342))) (csize!30520 (left!41900 (c!847515 input!1342))))))))

(assert (=> d!1599632 (= (size!38076 (left!41900 (c!847515 input!1342))) lt!2051925)))

(declare-fun bs!1183354 () Bool)

(assert (= bs!1183354 d!1599632))

(assert (=> bs!1183354 m!5994258))

(assert (=> bs!1183354 m!5994258))

(assert (=> bs!1183354 m!5995320))

(assert (=> d!1598944 d!1599632))

(declare-fun d!1599634 () Bool)

(declare-fun lt!2051926 () Int)

(assert (=> d!1599634 (= lt!2051926 (size!38072 (list!18367 (right!42230 (c!847515 input!1342)))))))

(assert (=> d!1599634 (= lt!2051926 (ite (is-Empty!15145 (right!42230 (c!847515 input!1342))) 0 (ite (is-Leaf!25167 (right!42230 (c!847515 input!1342))) (csize!30521 (right!42230 (c!847515 input!1342))) (csize!30520 (right!42230 (c!847515 input!1342))))))))

(assert (=> d!1599634 (= (size!38076 (right!42230 (c!847515 input!1342))) lt!2051926)))

(declare-fun bs!1183355 () Bool)

(assert (= bs!1183355 d!1599634))

(assert (=> bs!1183355 m!5994260))

(assert (=> bs!1183355 m!5994260))

(assert (=> bs!1183355 m!5995322))

(assert (=> d!1598944 d!1599634))

(declare-fun b!4968993 () Bool)

(declare-fun e!3105772 () Bool)

(assert (=> b!4968993 (= e!3105772 (>= (size!38072 (tail!9801 lt!2051040)) (size!38072 (tail!9801 lt!2051042))))))

(declare-fun b!4968990 () Bool)

(declare-fun e!3105771 () Bool)

(declare-fun e!3105770 () Bool)

(assert (=> b!4968990 (= e!3105771 e!3105770)))

(declare-fun res!2121017 () Bool)

(assert (=> b!4968990 (=> (not res!2121017) (not e!3105770))))

(assert (=> b!4968990 (= res!2121017 (not (is-Nil!57443 (tail!9801 lt!2051040))))))

(declare-fun b!4968992 () Bool)

(assert (=> b!4968992 (= e!3105770 (isPrefix!5244 (tail!9801 (tail!9801 lt!2051042)) (tail!9801 (tail!9801 lt!2051040))))))

(declare-fun d!1599636 () Bool)

(assert (=> d!1599636 e!3105772))

(declare-fun res!2121016 () Bool)

(assert (=> d!1599636 (=> res!2121016 e!3105772)))

(declare-fun lt!2051927 () Bool)

(assert (=> d!1599636 (= res!2121016 (not lt!2051927))))

(assert (=> d!1599636 (= lt!2051927 e!3105771)))

(declare-fun res!2121015 () Bool)

(assert (=> d!1599636 (=> res!2121015 e!3105771)))

(assert (=> d!1599636 (= res!2121015 (is-Nil!57443 (tail!9801 lt!2051042)))))

(assert (=> d!1599636 (= (isPrefix!5244 (tail!9801 lt!2051042) (tail!9801 lt!2051040)) lt!2051927)))

(declare-fun b!4968991 () Bool)

(declare-fun res!2121018 () Bool)

(assert (=> b!4968991 (=> (not res!2121018) (not e!3105770))))

(assert (=> b!4968991 (= res!2121018 (= (head!10668 (tail!9801 lt!2051042)) (head!10668 (tail!9801 lt!2051040))))))

(assert (= (and d!1599636 (not res!2121015)) b!4968990))

(assert (= (and b!4968990 res!2121017) b!4968991))

(assert (= (and b!4968991 res!2121018) b!4968992))

(assert (= (and d!1599636 (not res!2121016)) b!4968993))

(assert (=> b!4968993 m!5993960))

(declare-fun m!5996310 () Bool)

(assert (=> b!4968993 m!5996310))

(assert (=> b!4968993 m!5993958))

(declare-fun m!5996312 () Bool)

(assert (=> b!4968993 m!5996312))

(assert (=> b!4968992 m!5993958))

(declare-fun m!5996314 () Bool)

(assert (=> b!4968992 m!5996314))

(assert (=> b!4968992 m!5993960))

(declare-fun m!5996316 () Bool)

(assert (=> b!4968992 m!5996316))

(assert (=> b!4968992 m!5996314))

(assert (=> b!4968992 m!5996316))

(declare-fun m!5996318 () Bool)

(assert (=> b!4968992 m!5996318))

(assert (=> b!4968991 m!5993958))

(declare-fun m!5996320 () Bool)

(assert (=> b!4968991 m!5996320))

(assert (=> b!4968991 m!5993960))

(declare-fun m!5996322 () Bool)

(assert (=> b!4968991 m!5996322))

(assert (=> b!4967689 d!1599636))

(declare-fun d!1599638 () Bool)

(assert (=> d!1599638 (= (tail!9801 lt!2051042) (t!368627 lt!2051042))))

(assert (=> b!4967689 d!1599638))

(declare-fun d!1599640 () Bool)

(assert (=> d!1599640 (= (tail!9801 lt!2051040) (t!368627 lt!2051040))))

(assert (=> b!4967689 d!1599640))

(assert (=> d!1598930 d!1598866))

(assert (=> d!1598930 d!1599176))

(declare-fun b!4968994 () Bool)

(declare-fun e!3105773 () List!57567)

(assert (=> b!4968994 (= e!3105773 Nil!57443)))

(declare-fun b!4968996 () Bool)

(declare-fun e!3105774 () List!57567)

(assert (=> b!4968996 (= e!3105774 (list!18369 (xs!18471 (c!847515 (_1!34389 lt!2051115)))))))

(declare-fun b!4968997 () Bool)

(assert (=> b!4968997 (= e!3105774 (++!12532 (list!18367 (left!41900 (c!847515 (_1!34389 lt!2051115)))) (list!18367 (right!42230 (c!847515 (_1!34389 lt!2051115))))))))

(declare-fun b!4968995 () Bool)

(assert (=> b!4968995 (= e!3105773 e!3105774)))

(declare-fun c!847892 () Bool)

(assert (=> b!4968995 (= c!847892 (is-Leaf!25167 (c!847515 (_1!34389 lt!2051115))))))

(declare-fun d!1599642 () Bool)

(declare-fun c!847891 () Bool)

(assert (=> d!1599642 (= c!847891 (is-Empty!15145 (c!847515 (_1!34389 lt!2051115))))))

(assert (=> d!1599642 (= (list!18367 (c!847515 (_1!34389 lt!2051115))) e!3105773)))

(assert (= (and d!1599642 c!847891) b!4968994))

(assert (= (and d!1599642 (not c!847891)) b!4968995))

(assert (= (and b!4968995 c!847892) b!4968996))

(assert (= (and b!4968995 (not c!847892)) b!4968997))

(declare-fun m!5996324 () Bool)

(assert (=> b!4968996 m!5996324))

(declare-fun m!5996326 () Bool)

(assert (=> b!4968997 m!5996326))

(declare-fun m!5996328 () Bool)

(assert (=> b!4968997 m!5996328))

(assert (=> b!4968997 m!5996326))

(assert (=> b!4968997 m!5996328))

(declare-fun m!5996330 () Bool)

(assert (=> b!4968997 m!5996330))

(assert (=> d!1598842 d!1599642))

(declare-fun d!1599644 () Bool)

(declare-fun lt!2051928 () Int)

(assert (=> d!1599644 (>= lt!2051928 0)))

(declare-fun e!3105775 () Int)

(assert (=> d!1599644 (= lt!2051928 e!3105775)))

(declare-fun c!847893 () Bool)

(assert (=> d!1599644 (= c!847893 (is-Nil!57443 (_2!34385 (get!19940 lt!2051210))))))

(assert (=> d!1599644 (= (size!38072 (_2!34385 (get!19940 lt!2051210))) lt!2051928)))

(declare-fun b!4968998 () Bool)

(assert (=> b!4968998 (= e!3105775 0)))

(declare-fun b!4968999 () Bool)

(assert (=> b!4968999 (= e!3105775 (+ 1 (size!38072 (t!368627 (_2!34385 (get!19940 lt!2051210))))))))

(assert (= (and d!1599644 c!847893) b!4968998))

(assert (= (and d!1599644 (not c!847893)) b!4968999))

(declare-fun m!5996332 () Bool)

(assert (=> b!4968999 m!5996332))

(assert (=> b!4967596 d!1599644))

(assert (=> b!4967596 d!1599150))

(assert (=> b!4967596 d!1599442))

(declare-fun b!4969000 () Bool)

(declare-fun e!3105779 () Bool)

(declare-fun lt!2051929 () Bool)

(declare-fun call!346542 () Bool)

(assert (=> b!4969000 (= e!3105779 (= lt!2051929 call!346542))))

(declare-fun b!4969001 () Bool)

(declare-fun res!2121021 () Bool)

(declare-fun e!3105776 () Bool)

(assert (=> b!4969001 (=> (not res!2121021) (not e!3105776))))

(assert (=> b!4969001 (= res!2121021 (isEmpty!30938 (tail!9801 (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))))))))

(declare-fun b!4969002 () Bool)

(assert (=> b!4969002 (= e!3105776 (= (head!10668 (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120))))) (c!847514 (derivativeStep!3922 (regex!8393 (h!63892 rulesArg!259)) (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120))))))))))

(declare-fun b!4969003 () Bool)

(declare-fun e!3105778 () Bool)

(assert (=> b!4969003 (= e!3105778 (not lt!2051929))))

(declare-fun b!4969004 () Bool)

(declare-fun e!3105782 () Bool)

(assert (=> b!4969004 (= e!3105782 (matchR!6636 (derivativeStep!3922 (derivativeStep!3922 (regex!8393 (h!63892 rulesArg!259)) (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120))))) (head!10668 (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))))) (tail!9801 (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))))))))

(declare-fun bm!346537 () Bool)

(assert (=> bm!346537 (= call!346542 (isEmpty!30938 (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120))))))))

(declare-fun b!4969005 () Bool)

(declare-fun res!2121019 () Bool)

(assert (=> b!4969005 (=> (not res!2121019) (not e!3105776))))

(assert (=> b!4969005 (= res!2121019 (not call!346542))))

(declare-fun b!4969006 () Bool)

(declare-fun e!3105780 () Bool)

(declare-fun e!3105781 () Bool)

(assert (=> b!4969006 (= e!3105780 e!3105781)))

(declare-fun res!2121020 () Bool)

(assert (=> b!4969006 (=> (not res!2121020) (not e!3105781))))

(assert (=> b!4969006 (= res!2121020 (not lt!2051929))))

(declare-fun b!4969007 () Bool)

(declare-fun res!2121022 () Bool)

(declare-fun e!3105777 () Bool)

(assert (=> b!4969007 (=> res!2121022 e!3105777)))

(assert (=> b!4969007 (= res!2121022 (not (isEmpty!30938 (tail!9801 (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120))))))))))

(declare-fun b!4969008 () Bool)

(assert (=> b!4969008 (= e!3105782 (nullable!4620 (derivativeStep!3922 (regex!8393 (h!63892 rulesArg!259)) (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))))))))

(declare-fun b!4969009 () Bool)

(assert (=> b!4969009 (= e!3105777 (not (= (head!10668 (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120))))) (c!847514 (derivativeStep!3922 (regex!8393 (h!63892 rulesArg!259)) (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))))))))))

(declare-fun b!4969010 () Bool)

(declare-fun res!2121026 () Bool)

(assert (=> b!4969010 (=> res!2121026 e!3105780)))

(assert (=> b!4969010 (= res!2121026 e!3105776)))

(declare-fun res!2121024 () Bool)

(assert (=> b!4969010 (=> (not res!2121024) (not e!3105776))))

(assert (=> b!4969010 (= res!2121024 lt!2051929)))

(declare-fun b!4969011 () Bool)

(assert (=> b!4969011 (= e!3105779 e!3105778)))

(declare-fun c!847896 () Bool)

(assert (=> b!4969011 (= c!847896 (is-EmptyLang!13626 (derivativeStep!3922 (regex!8393 (h!63892 rulesArg!259)) (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))))))))

(declare-fun d!1599646 () Bool)

(assert (=> d!1599646 e!3105779))

(declare-fun c!847895 () Bool)

(assert (=> d!1599646 (= c!847895 (is-EmptyExpr!13626 (derivativeStep!3922 (regex!8393 (h!63892 rulesArg!259)) (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))))))))

(assert (=> d!1599646 (= lt!2051929 e!3105782)))

(declare-fun c!847894 () Bool)

(assert (=> d!1599646 (= c!847894 (isEmpty!30938 (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120))))))))

(assert (=> d!1599646 (validRegex!5969 (derivativeStep!3922 (regex!8393 (h!63892 rulesArg!259)) (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120))))))))

(assert (=> d!1599646 (= (matchR!6636 (derivativeStep!3922 (regex!8393 (h!63892 rulesArg!259)) (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120))))) (tail!9801 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120))))) lt!2051929)))

(declare-fun b!4969012 () Bool)

(declare-fun res!2121025 () Bool)

(assert (=> b!4969012 (=> res!2121025 e!3105780)))

(assert (=> b!4969012 (= res!2121025 (not (is-ElementMatch!13626 (derivativeStep!3922 (regex!8393 (h!63892 rulesArg!259)) (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120))))))))))

(assert (=> b!4969012 (= e!3105778 e!3105780)))

(declare-fun b!4969013 () Bool)

(assert (=> b!4969013 (= e!3105781 e!3105777)))

(declare-fun res!2121023 () Bool)

(assert (=> b!4969013 (=> res!2121023 e!3105777)))

(assert (=> b!4969013 (= res!2121023 call!346542)))

(assert (= (and d!1599646 c!847894) b!4969008))

(assert (= (and d!1599646 (not c!847894)) b!4969004))

(assert (= (and d!1599646 c!847895) b!4969000))

(assert (= (and d!1599646 (not c!847895)) b!4969011))

(assert (= (and b!4969011 c!847896) b!4969003))

(assert (= (and b!4969011 (not c!847896)) b!4969012))

(assert (= (and b!4969012 (not res!2121025)) b!4969010))

(assert (= (and b!4969010 res!2121024) b!4969005))

(assert (= (and b!4969005 res!2121019) b!4969001))

(assert (= (and b!4969001 res!2121021) b!4969002))

(assert (= (and b!4969010 (not res!2121026)) b!4969006))

(assert (= (and b!4969006 res!2121020) b!4969013))

(assert (= (and b!4969013 (not res!2121023)) b!4969007))

(assert (= (and b!4969007 (not res!2121022)) b!4969009))

(assert (= (or b!4969000 b!4969005 b!4969013) bm!346537))

(assert (=> b!4969004 m!5994314))

(declare-fun m!5996334 () Bool)

(assert (=> b!4969004 m!5996334))

(assert (=> b!4969004 m!5994312))

(assert (=> b!4969004 m!5996334))

(declare-fun m!5996336 () Bool)

(assert (=> b!4969004 m!5996336))

(assert (=> b!4969004 m!5994314))

(declare-fun m!5996338 () Bool)

(assert (=> b!4969004 m!5996338))

(assert (=> b!4969004 m!5996336))

(assert (=> b!4969004 m!5996338))

(declare-fun m!5996340 () Bool)

(assert (=> b!4969004 m!5996340))

(assert (=> b!4969009 m!5994314))

(assert (=> b!4969009 m!5996334))

(assert (=> b!4969007 m!5994314))

(assert (=> b!4969007 m!5996338))

(assert (=> b!4969007 m!5996338))

(declare-fun m!5996342 () Bool)

(assert (=> b!4969007 m!5996342))

(assert (=> b!4969002 m!5994314))

(assert (=> b!4969002 m!5996334))

(assert (=> b!4969008 m!5994312))

(declare-fun m!5996344 () Bool)

(assert (=> b!4969008 m!5996344))

(assert (=> b!4969001 m!5994314))

(assert (=> b!4969001 m!5996338))

(assert (=> b!4969001 m!5996338))

(assert (=> b!4969001 m!5996342))

(assert (=> bm!346537 m!5994314))

(assert (=> bm!346537 m!5994318))

(assert (=> d!1599646 m!5994314))

(assert (=> d!1599646 m!5994318))

(assert (=> d!1599646 m!5994312))

(declare-fun m!5996346 () Bool)

(assert (=> d!1599646 m!5996346))

(assert (=> b!4967952 d!1599646))

(declare-fun b!4969015 () Bool)

(declare-fun e!3105783 () Regex!13626)

(assert (=> b!4969015 (= e!3105783 EmptyLang!13626)))

(declare-fun b!4969016 () Bool)

(declare-fun c!847898 () Bool)

(assert (=> b!4969016 (= c!847898 (is-Union!13626 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun e!3105786 () Regex!13626)

(declare-fun e!3105784 () Regex!13626)

(assert (=> b!4969016 (= e!3105786 e!3105784)))

(declare-fun b!4969017 () Bool)

(declare-fun call!346544 () Regex!13626)

(declare-fun call!346543 () Regex!13626)

(assert (=> b!4969017 (= e!3105784 (Union!13626 call!346544 call!346543))))

(declare-fun b!4969018 () Bool)

(declare-fun e!3105785 () Regex!13626)

(declare-fun call!346545 () Regex!13626)

(assert (=> b!4969018 (= e!3105785 (Concat!22330 call!346545 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun bm!346538 () Bool)

(declare-fun c!847901 () Bool)

(assert (=> bm!346538 (= call!346543 (derivativeStep!3922 (ite c!847898 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259))) (ite c!847901 (reg!13955 (regex!8393 (h!63892 rulesArg!259))) (regOne!27764 (regex!8393 (h!63892 rulesArg!259))))) (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120))))))))

(declare-fun b!4969019 () Bool)

(declare-fun call!346546 () Regex!13626)

(declare-fun e!3105787 () Regex!13626)

(assert (=> b!4969019 (= e!3105787 (Union!13626 (Concat!22330 call!346546 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))) call!346544))))

(declare-fun b!4969020 () Bool)

(declare-fun c!847897 () Bool)

(assert (=> b!4969020 (= c!847897 (nullable!4620 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))))

(assert (=> b!4969020 (= e!3105785 e!3105787)))

(declare-fun b!4969021 () Bool)

(assert (=> b!4969021 (= e!3105786 (ite (= (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120)))) (c!847514 (regex!8393 (h!63892 rulesArg!259)))) EmptyExpr!13626 EmptyLang!13626))))

(declare-fun b!4969022 () Bool)

(assert (=> b!4969022 (= e!3105787 (Union!13626 (Concat!22330 call!346546 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))) EmptyLang!13626))))

(declare-fun d!1599648 () Bool)

(declare-fun lt!2051930 () Regex!13626)

(assert (=> d!1599648 (validRegex!5969 lt!2051930)))

(assert (=> d!1599648 (= lt!2051930 e!3105783)))

(declare-fun c!847899 () Bool)

(assert (=> d!1599648 (= c!847899 (or (is-EmptyExpr!13626 (regex!8393 (h!63892 rulesArg!259))) (is-EmptyLang!13626 (regex!8393 (h!63892 rulesArg!259)))))))

(assert (=> d!1599648 (validRegex!5969 (regex!8393 (h!63892 rulesArg!259)))))

(assert (=> d!1599648 (= (derivativeStep!3922 (regex!8393 (h!63892 rulesArg!259)) (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120))))) lt!2051930)))

(declare-fun b!4969014 () Bool)

(assert (=> b!4969014 (= e!3105784 e!3105785)))

(assert (=> b!4969014 (= c!847901 (is-Star!13626 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun bm!346539 () Bool)

(assert (=> bm!346539 (= call!346544 (derivativeStep!3922 (ite c!847898 (regOne!27765 (regex!8393 (h!63892 rulesArg!259))) (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))) (head!10668 (_1!34390 (findLongestMatchInner!1855 (regex!8393 (h!63892 rulesArg!259)) Nil!57443 (size!38072 Nil!57443) lt!2051120 lt!2051120 (size!38072 lt!2051120))))))))

(declare-fun bm!346540 () Bool)

(assert (=> bm!346540 (= call!346545 call!346543)))

(declare-fun b!4969023 () Bool)

(assert (=> b!4969023 (= e!3105783 e!3105786)))

(declare-fun c!847900 () Bool)

(assert (=> b!4969023 (= c!847900 (is-ElementMatch!13626 (regex!8393 (h!63892 rulesArg!259))))))

(declare-fun bm!346541 () Bool)

(assert (=> bm!346541 (= call!346546 call!346545)))

(assert (= (and d!1599648 c!847899) b!4969015))

(assert (= (and d!1599648 (not c!847899)) b!4969023))

(assert (= (and b!4969023 c!847900) b!4969021))

(assert (= (and b!4969023 (not c!847900)) b!4969016))

(assert (= (and b!4969016 c!847898) b!4969017))

(assert (= (and b!4969016 (not c!847898)) b!4969014))

(assert (= (and b!4969014 c!847901) b!4969018))

(assert (= (and b!4969014 (not c!847901)) b!4969020))

(assert (= (and b!4969020 c!847897) b!4969019))

(assert (= (and b!4969020 (not c!847897)) b!4969022))

(assert (= (or b!4969019 b!4969022) bm!346541))

(assert (= (or b!4969018 bm!346541) bm!346540))

(assert (= (or b!4969017 bm!346540) bm!346538))

(assert (= (or b!4969017 b!4969019) bm!346539))

(assert (=> bm!346538 m!5994310))

(declare-fun m!5996348 () Bool)

(assert (=> bm!346538 m!5996348))

(assert (=> b!4969020 m!5996088))

(declare-fun m!5996350 () Bool)

(assert (=> d!1599648 m!5996350))

(assert (=> d!1599648 m!5993828))

(assert (=> bm!346539 m!5994310))

(declare-fun m!5996352 () Bool)

(assert (=> bm!346539 m!5996352))

(assert (=> b!4967952 d!1599648))

(assert (=> b!4967952 d!1599248))

(assert (=> b!4967952 d!1599306))

(assert (=> d!1598942 d!1599410))

(assert (=> d!1598942 d!1599300))

(declare-fun d!1599650 () Bool)

(declare-fun lt!2051931 () Bool)

(assert (=> d!1599650 (= lt!2051931 (isEmpty!30938 (list!18367 (left!41900 (c!847515 input!1342)))))))

(assert (=> d!1599650 (= lt!2051931 (= (size!38076 (left!41900 (c!847515 input!1342))) 0))))

(assert (=> d!1599650 (= (isEmpty!30943 (left!41900 (c!847515 input!1342))) lt!2051931)))

(declare-fun bs!1183356 () Bool)

(assert (= bs!1183356 d!1599650))

(assert (=> bs!1183356 m!5994258))

(assert (=> bs!1183356 m!5994258))

(declare-fun m!5996354 () Bool)

(assert (=> bs!1183356 m!5996354))

(assert (=> bs!1183356 m!5994388))

(assert (=> b!4967549 d!1599650))

(assert (=> b!4967604 d!1599150))

(declare-fun d!1599652 () Bool)

(declare-fun lt!2051932 () Int)

(assert (=> d!1599652 (>= lt!2051932 0)))

(declare-fun e!3105788 () Int)

(assert (=> d!1599652 (= lt!2051932 e!3105788)))

(declare-fun c!847902 () Bool)

(assert (=> d!1599652 (= c!847902 (is-Nil!57443 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051210)))))))

(assert (=> d!1599652 (= (size!38072 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051210)))) lt!2051932)))

(declare-fun b!4969024 () Bool)

(assert (=> b!4969024 (= e!3105788 0)))

(declare-fun b!4969025 () Bool)

(assert (=> b!4969025 (= e!3105788 (+ 1 (size!38072 (t!368627 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051210)))))))))

(assert (= (and d!1599652 c!847902) b!4969024))

(assert (= (and d!1599652 (not c!847902)) b!4969025))

(declare-fun m!5996356 () Bool)

(assert (=> b!4969025 m!5996356))

(assert (=> b!4967604 d!1599652))

(declare-fun b!4969027 () Bool)

(declare-fun e!3105790 () List!57567)

(assert (=> b!4969027 (= e!3105790 (Cons!57443 (h!63891 (list!18367 (left!41900 (c!847515 totalInput!464)))) (++!12532 (t!368627 (list!18367 (left!41900 (c!847515 totalInput!464)))) (list!18367 (right!42230 (c!847515 totalInput!464))))))))

(declare-fun b!4969029 () Bool)

(declare-fun e!3105789 () Bool)

(declare-fun lt!2051933 () List!57567)

(assert (=> b!4969029 (= e!3105789 (or (not (= (list!18367 (right!42230 (c!847515 totalInput!464))) Nil!57443)) (= lt!2051933 (list!18367 (left!41900 (c!847515 totalInput!464))))))))

(declare-fun b!4969026 () Bool)

(assert (=> b!4969026 (= e!3105790 (list!18367 (right!42230 (c!847515 totalInput!464))))))

(declare-fun d!1599654 () Bool)

(assert (=> d!1599654 e!3105789))

(declare-fun res!2121027 () Bool)

(assert (=> d!1599654 (=> (not res!2121027) (not e!3105789))))

(assert (=> d!1599654 (= res!2121027 (= (content!10184 lt!2051933) (set.union (content!10184 (list!18367 (left!41900 (c!847515 totalInput!464)))) (content!10184 (list!18367 (right!42230 (c!847515 totalInput!464)))))))))

(assert (=> d!1599654 (= lt!2051933 e!3105790)))

(declare-fun c!847903 () Bool)

(assert (=> d!1599654 (= c!847903 (is-Nil!57443 (list!18367 (left!41900 (c!847515 totalInput!464)))))))

(assert (=> d!1599654 (= (++!12532 (list!18367 (left!41900 (c!847515 totalInput!464))) (list!18367 (right!42230 (c!847515 totalInput!464)))) lt!2051933)))

(declare-fun b!4969028 () Bool)

(declare-fun res!2121028 () Bool)

(assert (=> b!4969028 (=> (not res!2121028) (not e!3105789))))

(assert (=> b!4969028 (= res!2121028 (= (size!38072 lt!2051933) (+ (size!38072 (list!18367 (left!41900 (c!847515 totalInput!464)))) (size!38072 (list!18367 (right!42230 (c!847515 totalInput!464)))))))))

(assert (= (and d!1599654 c!847903) b!4969026))

(assert (= (and d!1599654 (not c!847903)) b!4969027))

(assert (= (and d!1599654 res!2121027) b!4969028))

(assert (= (and b!4969028 res!2121028) b!4969029))

(assert (=> b!4969027 m!5993904))

(declare-fun m!5996358 () Bool)

(assert (=> b!4969027 m!5996358))

(declare-fun m!5996360 () Bool)

(assert (=> d!1599654 m!5996360))

(assert (=> d!1599654 m!5993902))

(declare-fun m!5996362 () Bool)

(assert (=> d!1599654 m!5996362))

(assert (=> d!1599654 m!5993904))

(declare-fun m!5996364 () Bool)

(assert (=> d!1599654 m!5996364))

(declare-fun m!5996366 () Bool)

(assert (=> b!4969028 m!5996366))

(assert (=> b!4969028 m!5993902))

(assert (=> b!4969028 m!5995960))

(assert (=> b!4969028 m!5993904))

(assert (=> b!4969028 m!5995962))

(assert (=> b!4967635 d!1599654))

(declare-fun b!4969030 () Bool)

(declare-fun e!3105791 () List!57567)

(assert (=> b!4969030 (= e!3105791 Nil!57443)))

(declare-fun b!4969032 () Bool)

(declare-fun e!3105792 () List!57567)

(assert (=> b!4969032 (= e!3105792 (list!18369 (xs!18471 (left!41900 (c!847515 totalInput!464)))))))

(declare-fun b!4969033 () Bool)

(assert (=> b!4969033 (= e!3105792 (++!12532 (list!18367 (left!41900 (left!41900 (c!847515 totalInput!464)))) (list!18367 (right!42230 (left!41900 (c!847515 totalInput!464))))))))

(declare-fun b!4969031 () Bool)

(assert (=> b!4969031 (= e!3105791 e!3105792)))

(declare-fun c!847905 () Bool)

(assert (=> b!4969031 (= c!847905 (is-Leaf!25167 (left!41900 (c!847515 totalInput!464))))))

(declare-fun d!1599656 () Bool)

(declare-fun c!847904 () Bool)

(assert (=> d!1599656 (= c!847904 (is-Empty!15145 (left!41900 (c!847515 totalInput!464))))))

(assert (=> d!1599656 (= (list!18367 (left!41900 (c!847515 totalInput!464))) e!3105791)))

(assert (= (and d!1599656 c!847904) b!4969030))

(assert (= (and d!1599656 (not c!847904)) b!4969031))

(assert (= (and b!4969031 c!847905) b!4969032))

(assert (= (and b!4969031 (not c!847905)) b!4969033))

(assert (=> b!4969032 m!5995598))

(declare-fun m!5996368 () Bool)

(assert (=> b!4969033 m!5996368))

(declare-fun m!5996370 () Bool)

(assert (=> b!4969033 m!5996370))

(assert (=> b!4969033 m!5996368))

(assert (=> b!4969033 m!5996370))

(declare-fun m!5996372 () Bool)

(assert (=> b!4969033 m!5996372))

(assert (=> b!4967635 d!1599656))

(declare-fun b!4969034 () Bool)

(declare-fun e!3105793 () List!57567)

(assert (=> b!4969034 (= e!3105793 Nil!57443)))

(declare-fun b!4969036 () Bool)

(declare-fun e!3105794 () List!57567)

(assert (=> b!4969036 (= e!3105794 (list!18369 (xs!18471 (right!42230 (c!847515 totalInput!464)))))))

(declare-fun b!4969037 () Bool)

(assert (=> b!4969037 (= e!3105794 (++!12532 (list!18367 (left!41900 (right!42230 (c!847515 totalInput!464)))) (list!18367 (right!42230 (right!42230 (c!847515 totalInput!464))))))))

(declare-fun b!4969035 () Bool)

(assert (=> b!4969035 (= e!3105793 e!3105794)))

(declare-fun c!847907 () Bool)

(assert (=> b!4969035 (= c!847907 (is-Leaf!25167 (right!42230 (c!847515 totalInput!464))))))

(declare-fun d!1599658 () Bool)

(declare-fun c!847906 () Bool)

(assert (=> d!1599658 (= c!847906 (is-Empty!15145 (right!42230 (c!847515 totalInput!464))))))

(assert (=> d!1599658 (= (list!18367 (right!42230 (c!847515 totalInput!464))) e!3105793)))

(assert (= (and d!1599658 c!847906) b!4969034))

(assert (= (and d!1599658 (not c!847906)) b!4969035))

(assert (= (and b!4969035 c!847907) b!4969036))

(assert (= (and b!4969035 (not c!847907)) b!4969037))

(assert (=> b!4969036 m!5996290))

(declare-fun m!5996374 () Bool)

(assert (=> b!4969037 m!5996374))

(declare-fun m!5996376 () Bool)

(assert (=> b!4969037 m!5996376))

(assert (=> b!4969037 m!5996374))

(assert (=> b!4969037 m!5996376))

(declare-fun m!5996378 () Bool)

(assert (=> b!4969037 m!5996378))

(assert (=> b!4967635 d!1599658))

(declare-fun b!4969039 () Bool)

(declare-fun e!3105796 () List!57567)

(assert (=> b!4969039 (= e!3105796 (Cons!57443 (h!63891 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051453))))) (++!12532 (t!368627 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051453))))) (_2!34385 (get!19940 lt!2051453)))))))

(declare-fun b!4969041 () Bool)

(declare-fun e!3105795 () Bool)

(declare-fun lt!2051934 () List!57567)

(assert (=> b!4969041 (= e!3105795 (or (not (= (_2!34385 (get!19940 lt!2051453)) Nil!57443)) (= lt!2051934 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051453)))))))))

(declare-fun b!4969038 () Bool)

(assert (=> b!4969038 (= e!3105796 (_2!34385 (get!19940 lt!2051453)))))

(declare-fun d!1599660 () Bool)

(assert (=> d!1599660 e!3105795))

(declare-fun res!2121029 () Bool)

(assert (=> d!1599660 (=> (not res!2121029) (not e!3105795))))

(assert (=> d!1599660 (= res!2121029 (= (content!10184 lt!2051934) (set.union (content!10184 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051453))))) (content!10184 (_2!34385 (get!19940 lt!2051453))))))))

(assert (=> d!1599660 (= lt!2051934 e!3105796)))

(declare-fun c!847908 () Bool)

(assert (=> d!1599660 (= c!847908 (is-Nil!57443 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051453))))))))

(assert (=> d!1599660 (= (++!12532 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051453)))) (_2!34385 (get!19940 lt!2051453))) lt!2051934)))

(declare-fun b!4969040 () Bool)

(declare-fun res!2121030 () Bool)

(assert (=> b!4969040 (=> (not res!2121030) (not e!3105795))))

(assert (=> b!4969040 (= res!2121030 (= (size!38072 lt!2051934) (+ (size!38072 (list!18365 (charsOf!5437 (_1!34385 (get!19940 lt!2051453))))) (size!38072 (_2!34385 (get!19940 lt!2051453))))))))

(assert (= (and d!1599660 c!847908) b!4969038))

(assert (= (and d!1599660 (not c!847908)) b!4969039))

(assert (= (and d!1599660 res!2121029) b!4969040))

(assert (= (and b!4969040 res!2121030) b!4969041))

(declare-fun m!5996380 () Bool)

(assert (=> b!4969039 m!5996380))

(declare-fun m!5996382 () Bool)

(assert (=> d!1599660 m!5996382))

(assert (=> d!1599660 m!5994284))

(declare-fun m!5996384 () Bool)

(assert (=> d!1599660 m!5996384))

(declare-fun m!5996386 () Bool)

(assert (=> d!1599660 m!5996386))

(declare-fun m!5996388 () Bool)

(assert (=> b!4969040 m!5996388))

(assert (=> b!4969040 m!5994284))

(declare-fun m!5996390 () Bool)

(assert (=> b!4969040 m!5996390))

(assert (=> b!4969040 m!5994294))

(assert (=> b!4967940 d!1599660))

(assert (=> b!4967940 d!1599450))

(assert (=> b!4967940 d!1599452))

(assert (=> b!4967940 d!1599140))

(declare-fun b!4969045 () Bool)

(declare-fun e!3105799 () Bool)

(assert (=> b!4969045 (= e!3105799 (>= (size!38072 lt!2051120) (size!38072 lt!2051120)))))

(declare-fun b!4969042 () Bool)

(declare-fun e!3105798 () Bool)

(declare-fun e!3105797 () Bool)

(assert (=> b!4969042 (= e!3105798 e!3105797)))

(declare-fun res!2121033 () Bool)

(assert (=> b!4969042 (=> (not res!2121033) (not e!3105797))))

(assert (=> b!4969042 (= res!2121033 (not (is-Nil!57443 lt!2051120)))))

(declare-fun b!4969044 () Bool)

(assert (=> b!4969044 (= e!3105797 (isPrefix!5244 (tail!9801 lt!2051120) (tail!9801 lt!2051120)))))

(declare-fun d!1599662 () Bool)

(assert (=> d!1599662 e!3105799))

(declare-fun res!2121032 () Bool)

(assert (=> d!1599662 (=> res!2121032 e!3105799)))

(declare-fun lt!2051935 () Bool)

(assert (=> d!1599662 (= res!2121032 (not lt!2051935))))

(assert (=> d!1599662 (= lt!2051935 e!3105798)))

(declare-fun res!2121031 () Bool)

(assert (=> d!1599662 (=> res!2121031 e!3105798)))

(assert (=> d!1599662 (= res!2121031 (is-Nil!57443 lt!2051120))))

(assert (=> d!1599662 (= (isPrefix!5244 lt!2051120 lt!2051120) lt!2051935)))

(declare-fun b!4969043 () Bool)

(declare-fun res!2121034 () Bool)

(assert (=> b!4969043 (=> (not res!2121034) (not e!3105797))))

(assert (=> b!4969043 (= res!2121034 (= (head!10668 lt!2051120) (head!10668 lt!2051120)))))

(assert (= (and d!1599662 (not res!2121031)) b!4969042))

(assert (= (and b!4969042 res!2121033) b!4969043))

(assert (= (and b!4969043 res!2121034) b!4969044))

(assert (= (and d!1599662 (not res!2121032)) b!4969045))

(assert (=> b!4969045 m!5993570))

(assert (=> b!4969045 m!5993570))

(assert (=> b!4969044 m!5994022))

(assert (=> b!4969044 m!5994022))

(assert (=> b!4969044 m!5994022))

(assert (=> b!4969044 m!5994022))

(declare-fun m!5996392 () Bool)

(assert (=> b!4969044 m!5996392))

(assert (=> b!4969043 m!5994028))

(assert (=> b!4969043 m!5994028))

(assert (=> bm!346425 d!1599662))

(assert (=> b!4967964 d!1599246))

(declare-fun d!1599664 () Bool)

(assert (=> d!1599664 (= (apply!13904 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051463)))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051463))))) (dynLambda!23167 (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051463))))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051463))))))))

(declare-fun b_lambda!196977 () Bool)

(assert (=> (not b_lambda!196977) (not d!1599664)))

(declare-fun tb!260773 () Bool)

(declare-fun t!368802 () Bool)

(assert (=> (and b!4967137 (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051463)))))) t!368802) tb!260773))

(declare-fun result!325892 () Bool)

(assert (=> tb!260773 (= result!325892 (inv!21 (dynLambda!23167 (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051463))))) (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051463)))))))))

(declare-fun m!5996394 () Bool)

(assert (=> tb!260773 m!5996394))

(assert (=> d!1599664 t!368802))

(declare-fun b_and!348373 () Bool)

(assert (= b_and!348367 (and (=> t!368802 result!325892) b_and!348373)))

(declare-fun t!368804 () Bool)

(declare-fun tb!260775 () Bool)

(assert (=> (and b!4967394 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051463)))))) t!368804) tb!260775))

(declare-fun result!325894 () Bool)

(assert (= result!325894 result!325892))

(assert (=> d!1599664 t!368804))

(declare-fun b_and!348375 () Bool)

(assert (= b_and!348369 (and (=> t!368804 result!325894) b_and!348375)))

(declare-fun t!368806 () Bool)

(declare-fun tb!260777 () Bool)

(assert (=> (and b!4968022 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051463)))))) t!368806) tb!260777))

(declare-fun result!325896 () Bool)

(assert (= result!325896 result!325892))

(assert (=> d!1599664 t!368806))

(declare-fun b_and!348377 () Bool)

(assert (= b_and!348371 (and (=> t!368806 result!325896) b_and!348377)))

(assert (=> d!1599664 m!5994340))

(declare-fun m!5996396 () Bool)

(assert (=> d!1599664 m!5996396))

(assert (=> b!4967964 d!1599664))

(declare-fun d!1599666 () Bool)

(assert (=> d!1599666 (= (seqFromList!6036 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051463)))) (fromListB!2731 (originalCharacters!8672 (_1!34385 (get!19940 lt!2051463)))))))

(declare-fun bs!1183357 () Bool)

(assert (= bs!1183357 d!1599666))

(declare-fun m!5996398 () Bool)

(assert (=> bs!1183357 m!5996398))

(assert (=> b!4967964 d!1599666))

(declare-fun b!4969046 () Bool)

(declare-fun e!3105801 () List!57567)

(assert (=> b!4969046 (= e!3105801 Nil!57443)))

(declare-fun b!4969048 () Bool)

(declare-fun e!3105802 () List!57567)

(assert (=> b!4969048 (= e!3105802 (list!18369 (xs!18471 (c!847515 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))))))

(declare-fun b!4969049 () Bool)

(assert (=> b!4969049 (= e!3105802 (++!12532 (list!18367 (left!41900 (c!847515 (charsOf!5437 (_1!34385 (get!19940 lt!2051000)))))) (list!18367 (right!42230 (c!847515 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))))

(declare-fun b!4969047 () Bool)

(assert (=> b!4969047 (= e!3105801 e!3105802)))

(declare-fun c!847910 () Bool)

(assert (=> b!4969047 (= c!847910 (is-Leaf!25167 (c!847515 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))

(declare-fun d!1599668 () Bool)

(declare-fun c!847909 () Bool)

(assert (=> d!1599668 (= c!847909 (is-Empty!15145 (c!847515 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))))))

(assert (=> d!1599668 (= (list!18367 (c!847515 (charsOf!5437 (_1!34385 (get!19940 lt!2051000))))) e!3105801)))

(assert (= (and d!1599668 c!847909) b!4969046))

(assert (= (and d!1599668 (not c!847909)) b!4969047))

(assert (= (and b!4969047 c!847910) b!4969048))

(assert (= (and b!4969047 (not c!847910)) b!4969049))

(declare-fun m!5996400 () Bool)

(assert (=> b!4969048 m!5996400))

(declare-fun m!5996402 () Bool)

(assert (=> b!4969049 m!5996402))

(declare-fun m!5996404 () Bool)

(assert (=> b!4969049 m!5996404))

(assert (=> b!4969049 m!5996402))

(assert (=> b!4969049 m!5996404))

(declare-fun m!5996406 () Bool)

(assert (=> b!4969049 m!5996406))

(assert (=> d!1598824 d!1599668))

(declare-fun e!3105803 () Bool)

(assert (=> b!4968033 (= tp!1393411 e!3105803)))

(declare-fun b!4969053 () Bool)

(declare-fun tp!1393495 () Bool)

(declare-fun tp!1393494 () Bool)

(assert (=> b!4969053 (= e!3105803 (and tp!1393495 tp!1393494))))

(declare-fun b!4969050 () Bool)

(assert (=> b!4969050 (= e!3105803 tp_is_empty!36333)))

(declare-fun b!4969051 () Bool)

(declare-fun tp!1393492 () Bool)

(declare-fun tp!1393496 () Bool)

(assert (=> b!4969051 (= e!3105803 (and tp!1393492 tp!1393496))))

(declare-fun b!4969052 () Bool)

(declare-fun tp!1393493 () Bool)

(assert (=> b!4969052 (= e!3105803 tp!1393493)))

(assert (= (and b!4968033 (is-ElementMatch!13626 (reg!13955 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969050))

(assert (= (and b!4968033 (is-Concat!22330 (reg!13955 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969051))

(assert (= (and b!4968033 (is-Star!13626 (reg!13955 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969052))

(assert (= (and b!4968033 (is-Union!13626 (reg!13955 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969053))

(declare-fun e!3105804 () Bool)

(assert (=> b!4968024 (= tp!1393400 e!3105804)))

(declare-fun b!4969057 () Bool)

(declare-fun tp!1393500 () Bool)

(declare-fun tp!1393499 () Bool)

(assert (=> b!4969057 (= e!3105804 (and tp!1393500 tp!1393499))))

(declare-fun b!4969054 () Bool)

(assert (=> b!4969054 (= e!3105804 tp_is_empty!36333)))

(declare-fun b!4969055 () Bool)

(declare-fun tp!1393497 () Bool)

(declare-fun tp!1393501 () Bool)

(assert (=> b!4969055 (= e!3105804 (and tp!1393497 tp!1393501))))

(declare-fun b!4969056 () Bool)

(declare-fun tp!1393498 () Bool)

(assert (=> b!4969056 (= e!3105804 tp!1393498)))

(assert (= (and b!4968024 (is-ElementMatch!13626 (regOne!27764 (reg!13955 (regex!8393 (h!63892 rulesArg!259)))))) b!4969054))

(assert (= (and b!4968024 (is-Concat!22330 (regOne!27764 (reg!13955 (regex!8393 (h!63892 rulesArg!259)))))) b!4969055))

(assert (= (and b!4968024 (is-Star!13626 (regOne!27764 (reg!13955 (regex!8393 (h!63892 rulesArg!259)))))) b!4969056))

(assert (= (and b!4968024 (is-Union!13626 (regOne!27764 (reg!13955 (regex!8393 (h!63892 rulesArg!259)))))) b!4969057))

(declare-fun e!3105805 () Bool)

(assert (=> b!4968024 (= tp!1393404 e!3105805)))

(declare-fun b!4969061 () Bool)

(declare-fun tp!1393505 () Bool)

(declare-fun tp!1393504 () Bool)

(assert (=> b!4969061 (= e!3105805 (and tp!1393505 tp!1393504))))

(declare-fun b!4969058 () Bool)

(assert (=> b!4969058 (= e!3105805 tp_is_empty!36333)))

(declare-fun b!4969059 () Bool)

(declare-fun tp!1393502 () Bool)

(declare-fun tp!1393506 () Bool)

(assert (=> b!4969059 (= e!3105805 (and tp!1393502 tp!1393506))))

(declare-fun b!4969060 () Bool)

(declare-fun tp!1393503 () Bool)

(assert (=> b!4969060 (= e!3105805 tp!1393503)))

(assert (= (and b!4968024 (is-ElementMatch!13626 (regTwo!27764 (reg!13955 (regex!8393 (h!63892 rulesArg!259)))))) b!4969058))

(assert (= (and b!4968024 (is-Concat!22330 (regTwo!27764 (reg!13955 (regex!8393 (h!63892 rulesArg!259)))))) b!4969059))

(assert (= (and b!4968024 (is-Star!13626 (regTwo!27764 (reg!13955 (regex!8393 (h!63892 rulesArg!259)))))) b!4969060))

(assert (= (and b!4968024 (is-Union!13626 (regTwo!27764 (reg!13955 (regex!8393 (h!63892 rulesArg!259)))))) b!4969061))

(declare-fun e!3105806 () Bool)

(assert (=> b!4968034 (= tp!1393413 e!3105806)))

(declare-fun b!4969065 () Bool)

(declare-fun tp!1393510 () Bool)

(declare-fun tp!1393509 () Bool)

(assert (=> b!4969065 (= e!3105806 (and tp!1393510 tp!1393509))))

(declare-fun b!4969062 () Bool)

(assert (=> b!4969062 (= e!3105806 tp_is_empty!36333)))

(declare-fun b!4969063 () Bool)

(declare-fun tp!1393507 () Bool)

(declare-fun tp!1393511 () Bool)

(assert (=> b!4969063 (= e!3105806 (and tp!1393507 tp!1393511))))

(declare-fun b!4969064 () Bool)

(declare-fun tp!1393508 () Bool)

(assert (=> b!4969064 (= e!3105806 tp!1393508)))

(assert (= (and b!4968034 (is-ElementMatch!13626 (regOne!27765 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969062))

(assert (= (and b!4968034 (is-Concat!22330 (regOne!27765 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969063))

(assert (= (and b!4968034 (is-Star!13626 (regOne!27765 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969064))

(assert (= (and b!4968034 (is-Union!13626 (regOne!27765 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969065))

(declare-fun e!3105807 () Bool)

(assert (=> b!4968034 (= tp!1393412 e!3105807)))

(declare-fun b!4969069 () Bool)

(declare-fun tp!1393515 () Bool)

(declare-fun tp!1393514 () Bool)

(assert (=> b!4969069 (= e!3105807 (and tp!1393515 tp!1393514))))

(declare-fun b!4969066 () Bool)

(assert (=> b!4969066 (= e!3105807 tp_is_empty!36333)))

(declare-fun b!4969067 () Bool)

(declare-fun tp!1393512 () Bool)

(declare-fun tp!1393516 () Bool)

(assert (=> b!4969067 (= e!3105807 (and tp!1393512 tp!1393516))))

(declare-fun b!4969068 () Bool)

(declare-fun tp!1393513 () Bool)

(assert (=> b!4969068 (= e!3105807 tp!1393513)))

(assert (= (and b!4968034 (is-ElementMatch!13626 (regTwo!27765 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969066))

(assert (= (and b!4968034 (is-Concat!22330 (regTwo!27765 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969067))

(assert (= (and b!4968034 (is-Star!13626 (regTwo!27765 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969068))

(assert (= (and b!4968034 (is-Union!13626 (regTwo!27765 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969069))

(declare-fun e!3105808 () Bool)

(assert (=> b!4968025 (= tp!1393401 e!3105808)))

(declare-fun b!4969073 () Bool)

(declare-fun tp!1393520 () Bool)

(declare-fun tp!1393519 () Bool)

(assert (=> b!4969073 (= e!3105808 (and tp!1393520 tp!1393519))))

(declare-fun b!4969070 () Bool)

(assert (=> b!4969070 (= e!3105808 tp_is_empty!36333)))

(declare-fun b!4969071 () Bool)

(declare-fun tp!1393517 () Bool)

(declare-fun tp!1393521 () Bool)

(assert (=> b!4969071 (= e!3105808 (and tp!1393517 tp!1393521))))

(declare-fun b!4969072 () Bool)

(declare-fun tp!1393518 () Bool)

(assert (=> b!4969072 (= e!3105808 tp!1393518)))

(assert (= (and b!4968025 (is-ElementMatch!13626 (reg!13955 (reg!13955 (regex!8393 (h!63892 rulesArg!259)))))) b!4969070))

(assert (= (and b!4968025 (is-Concat!22330 (reg!13955 (reg!13955 (regex!8393 (h!63892 rulesArg!259)))))) b!4969071))

(assert (= (and b!4968025 (is-Star!13626 (reg!13955 (reg!13955 (regex!8393 (h!63892 rulesArg!259)))))) b!4969072))

(assert (= (and b!4968025 (is-Union!13626 (reg!13955 (reg!13955 (regex!8393 (h!63892 rulesArg!259)))))) b!4969073))

(declare-fun b!4969074 () Bool)

(declare-fun e!3105809 () Bool)

(declare-fun tp!1393522 () Bool)

(assert (=> b!4969074 (= e!3105809 (and tp_is_empty!36333 tp!1393522))))

(assert (=> b!4968040 (= tp!1393418 e!3105809)))

(assert (= (and b!4968040 (is-Cons!57443 (innerList!15233 (xs!18471 (right!42230 (c!847515 input!1342)))))) b!4969074))

(declare-fun e!3105810 () Bool)

(assert (=> b!4968026 (= tp!1393403 e!3105810)))

(declare-fun b!4969078 () Bool)

(declare-fun tp!1393526 () Bool)

(declare-fun tp!1393525 () Bool)

(assert (=> b!4969078 (= e!3105810 (and tp!1393526 tp!1393525))))

(declare-fun b!4969075 () Bool)

(assert (=> b!4969075 (= e!3105810 tp_is_empty!36333)))

(declare-fun b!4969076 () Bool)

(declare-fun tp!1393523 () Bool)

(declare-fun tp!1393527 () Bool)

(assert (=> b!4969076 (= e!3105810 (and tp!1393523 tp!1393527))))

(declare-fun b!4969077 () Bool)

(declare-fun tp!1393524 () Bool)

(assert (=> b!4969077 (= e!3105810 tp!1393524)))

(assert (= (and b!4968026 (is-ElementMatch!13626 (regOne!27765 (reg!13955 (regex!8393 (h!63892 rulesArg!259)))))) b!4969075))

(assert (= (and b!4968026 (is-Concat!22330 (regOne!27765 (reg!13955 (regex!8393 (h!63892 rulesArg!259)))))) b!4969076))

(assert (= (and b!4968026 (is-Star!13626 (regOne!27765 (reg!13955 (regex!8393 (h!63892 rulesArg!259)))))) b!4969077))

(assert (= (and b!4968026 (is-Union!13626 (regOne!27765 (reg!13955 (regex!8393 (h!63892 rulesArg!259)))))) b!4969078))

(declare-fun e!3105811 () Bool)

(assert (=> b!4968026 (= tp!1393402 e!3105811)))

(declare-fun b!4969082 () Bool)

(declare-fun tp!1393531 () Bool)

(declare-fun tp!1393530 () Bool)

(assert (=> b!4969082 (= e!3105811 (and tp!1393531 tp!1393530))))

(declare-fun b!4969079 () Bool)

(assert (=> b!4969079 (= e!3105811 tp_is_empty!36333)))

(declare-fun b!4969080 () Bool)

(declare-fun tp!1393528 () Bool)

(declare-fun tp!1393532 () Bool)

(assert (=> b!4969080 (= e!3105811 (and tp!1393528 tp!1393532))))

(declare-fun b!4969081 () Bool)

(declare-fun tp!1393529 () Bool)

(assert (=> b!4969081 (= e!3105811 tp!1393529)))

(assert (= (and b!4968026 (is-ElementMatch!13626 (regTwo!27765 (reg!13955 (regex!8393 (h!63892 rulesArg!259)))))) b!4969079))

(assert (= (and b!4968026 (is-Concat!22330 (regTwo!27765 (reg!13955 (regex!8393 (h!63892 rulesArg!259)))))) b!4969080))

(assert (= (and b!4968026 (is-Star!13626 (regTwo!27765 (reg!13955 (regex!8393 (h!63892 rulesArg!259)))))) b!4969081))

(assert (= (and b!4968026 (is-Union!13626 (regTwo!27765 (reg!13955 (regex!8393 (h!63892 rulesArg!259)))))) b!4969082))

(declare-fun tp!1393535 () Bool)

(declare-fun b!4969083 () Bool)

(declare-fun tp!1393534 () Bool)

(declare-fun e!3105813 () Bool)

(assert (=> b!4969083 (= e!3105813 (and (inv!75075 (left!41900 (left!41900 (right!42230 (c!847515 totalInput!464))))) tp!1393535 (inv!75075 (right!42230 (left!41900 (right!42230 (c!847515 totalInput!464))))) tp!1393534))))

(declare-fun b!4969085 () Bool)

(declare-fun e!3105812 () Bool)

(declare-fun tp!1393533 () Bool)

(assert (=> b!4969085 (= e!3105812 tp!1393533)))

(declare-fun b!4969084 () Bool)

(assert (=> b!4969084 (= e!3105813 (and (inv!75082 (xs!18471 (left!41900 (right!42230 (c!847515 totalInput!464))))) e!3105812))))

(assert (=> b!4968017 (= tp!1393395 (and (inv!75075 (left!41900 (right!42230 (c!847515 totalInput!464)))) e!3105813))))

(assert (= (and b!4968017 (is-Node!15145 (left!41900 (right!42230 (c!847515 totalInput!464))))) b!4969083))

(assert (= b!4969084 b!4969085))

(assert (= (and b!4968017 (is-Leaf!25167 (left!41900 (right!42230 (c!847515 totalInput!464))))) b!4969084))

(declare-fun m!5996408 () Bool)

(assert (=> b!4969083 m!5996408))

(declare-fun m!5996410 () Bool)

(assert (=> b!4969083 m!5996410))

(declare-fun m!5996412 () Bool)

(assert (=> b!4969084 m!5996412))

(assert (=> b!4968017 m!5994400))

(declare-fun e!3105815 () Bool)

(declare-fun tp!1393538 () Bool)

(declare-fun tp!1393537 () Bool)

(declare-fun b!4969086 () Bool)

(assert (=> b!4969086 (= e!3105815 (and (inv!75075 (left!41900 (right!42230 (right!42230 (c!847515 totalInput!464))))) tp!1393538 (inv!75075 (right!42230 (right!42230 (right!42230 (c!847515 totalInput!464))))) tp!1393537))))

(declare-fun b!4969088 () Bool)

(declare-fun e!3105814 () Bool)

(declare-fun tp!1393536 () Bool)

(assert (=> b!4969088 (= e!3105814 tp!1393536)))

(declare-fun b!4969087 () Bool)

(assert (=> b!4969087 (= e!3105815 (and (inv!75082 (xs!18471 (right!42230 (right!42230 (c!847515 totalInput!464))))) e!3105814))))

(assert (=> b!4968017 (= tp!1393394 (and (inv!75075 (right!42230 (right!42230 (c!847515 totalInput!464)))) e!3105815))))

(assert (= (and b!4968017 (is-Node!15145 (right!42230 (right!42230 (c!847515 totalInput!464))))) b!4969086))

(assert (= b!4969087 b!4969088))

(assert (= (and b!4968017 (is-Leaf!25167 (right!42230 (right!42230 (c!847515 totalInput!464))))) b!4969087))

(declare-fun m!5996414 () Bool)

(assert (=> b!4969086 m!5996414))

(declare-fun m!5996416 () Bool)

(assert (=> b!4969086 m!5996416))

(declare-fun m!5996418 () Bool)

(assert (=> b!4969087 m!5996418))

(assert (=> b!4968017 m!5994402))

(declare-fun b!4969089 () Bool)

(declare-fun e!3105816 () Bool)

(declare-fun tp!1393539 () Bool)

(assert (=> b!4969089 (= e!3105816 (and tp_is_empty!36333 tp!1393539))))

(assert (=> b!4968013 (= tp!1393389 e!3105816)))

(assert (= (and b!4968013 (is-Cons!57443 (t!368627 (innerList!15233 (xs!18471 (c!847515 input!1342)))))) b!4969089))

(declare-fun e!3105817 () Bool)

(assert (=> b!4968032 (= tp!1393410 e!3105817)))

(declare-fun b!4969093 () Bool)

(declare-fun tp!1393543 () Bool)

(declare-fun tp!1393542 () Bool)

(assert (=> b!4969093 (= e!3105817 (and tp!1393543 tp!1393542))))

(declare-fun b!4969090 () Bool)

(assert (=> b!4969090 (= e!3105817 tp_is_empty!36333)))

(declare-fun b!4969091 () Bool)

(declare-fun tp!1393540 () Bool)

(declare-fun tp!1393544 () Bool)

(assert (=> b!4969091 (= e!3105817 (and tp!1393540 tp!1393544))))

(declare-fun b!4969092 () Bool)

(declare-fun tp!1393541 () Bool)

(assert (=> b!4969092 (= e!3105817 tp!1393541)))

(assert (= (and b!4968032 (is-ElementMatch!13626 (regOne!27764 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969090))

(assert (= (and b!4968032 (is-Concat!22330 (regOne!27764 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969091))

(assert (= (and b!4968032 (is-Star!13626 (regOne!27764 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969092))

(assert (= (and b!4968032 (is-Union!13626 (regOne!27764 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969093))

(declare-fun e!3105818 () Bool)

(assert (=> b!4968032 (= tp!1393414 e!3105818)))

(declare-fun b!4969097 () Bool)

(declare-fun tp!1393548 () Bool)

(declare-fun tp!1393547 () Bool)

(assert (=> b!4969097 (= e!3105818 (and tp!1393548 tp!1393547))))

(declare-fun b!4969094 () Bool)

(assert (=> b!4969094 (= e!3105818 tp_is_empty!36333)))

(declare-fun b!4969095 () Bool)

(declare-fun tp!1393545 () Bool)

(declare-fun tp!1393549 () Bool)

(assert (=> b!4969095 (= e!3105818 (and tp!1393545 tp!1393549))))

(declare-fun b!4969096 () Bool)

(declare-fun tp!1393546 () Bool)

(assert (=> b!4969096 (= e!3105818 tp!1393546)))

(assert (= (and b!4968032 (is-ElementMatch!13626 (regTwo!27764 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969094))

(assert (= (and b!4968032 (is-Concat!22330 (regTwo!27764 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969095))

(assert (= (and b!4968032 (is-Star!13626 (regTwo!27764 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969096))

(assert (= (and b!4968032 (is-Union!13626 (regTwo!27764 (regTwo!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969097))

(declare-fun b!4969098 () Bool)

(declare-fun e!3105819 () Bool)

(declare-fun tp!1393550 () Bool)

(assert (=> b!4969098 (= e!3105819 (and tp_is_empty!36333 tp!1393550))))

(assert (=> b!4968019 (= tp!1393393 e!3105819)))

(assert (= (and b!4968019 (is-Cons!57443 (innerList!15233 (xs!18471 (right!42230 (c!847515 totalInput!464)))))) b!4969098))

(declare-fun b!4969099 () Bool)

(declare-fun tp!1393552 () Bool)

(declare-fun e!3105821 () Bool)

(declare-fun tp!1393553 () Bool)

(assert (=> b!4969099 (= e!3105821 (and (inv!75075 (left!41900 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))))))) tp!1393553 (inv!75075 (right!42230 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))))))) tp!1393552))))

(declare-fun b!4969101 () Bool)

(declare-fun e!3105820 () Bool)

(declare-fun tp!1393551 () Bool)

(assert (=> b!4969101 (= e!3105820 tp!1393551)))

(declare-fun b!4969100 () Bool)

(assert (=> b!4969100 (= e!3105821 (and (inv!75082 (xs!18471 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))))))) e!3105820))))

(assert (=> b!4968043 (= tp!1393423 (and (inv!75075 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))))) e!3105821))))

(assert (= (and b!4968043 (is-Node!15145 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))))))) b!4969099))

(assert (= b!4969100 b!4969101))

(assert (= (and b!4968043 (is-Leaf!25167 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))))))) b!4969100))

(declare-fun m!5996420 () Bool)

(assert (=> b!4969099 m!5996420))

(declare-fun m!5996422 () Bool)

(assert (=> b!4969099 m!5996422))

(declare-fun m!5996424 () Bool)

(assert (=> b!4969100 m!5996424))

(assert (=> b!4968043 m!5994430))

(declare-fun tp!1393556 () Bool)

(declare-fun e!3105823 () Bool)

(declare-fun b!4969102 () Bool)

(declare-fun tp!1393555 () Bool)

(assert (=> b!4969102 (= e!3105823 (and (inv!75075 (left!41900 (left!41900 (right!42230 (c!847515 input!1342))))) tp!1393556 (inv!75075 (right!42230 (left!41900 (right!42230 (c!847515 input!1342))))) tp!1393555))))

(declare-fun b!4969104 () Bool)

(declare-fun e!3105822 () Bool)

(declare-fun tp!1393554 () Bool)

(assert (=> b!4969104 (= e!3105822 tp!1393554)))

(declare-fun b!4969103 () Bool)

(assert (=> b!4969103 (= e!3105823 (and (inv!75082 (xs!18471 (left!41900 (right!42230 (c!847515 input!1342))))) e!3105822))))

(assert (=> b!4968038 (= tp!1393420 (and (inv!75075 (left!41900 (right!42230 (c!847515 input!1342)))) e!3105823))))

(assert (= (and b!4968038 (is-Node!15145 (left!41900 (right!42230 (c!847515 input!1342))))) b!4969102))

(assert (= b!4969103 b!4969104))

(assert (= (and b!4968038 (is-Leaf!25167 (left!41900 (right!42230 (c!847515 input!1342))))) b!4969103))

(declare-fun m!5996426 () Bool)

(assert (=> b!4969102 m!5996426))

(declare-fun m!5996428 () Bool)

(assert (=> b!4969102 m!5996428))

(declare-fun m!5996430 () Bool)

(assert (=> b!4969103 m!5996430))

(assert (=> b!4968038 m!5994416))

(declare-fun e!3105825 () Bool)

(declare-fun b!4969105 () Bool)

(declare-fun tp!1393558 () Bool)

(declare-fun tp!1393559 () Bool)

(assert (=> b!4969105 (= e!3105825 (and (inv!75075 (left!41900 (right!42230 (right!42230 (c!847515 input!1342))))) tp!1393559 (inv!75075 (right!42230 (right!42230 (right!42230 (c!847515 input!1342))))) tp!1393558))))

(declare-fun b!4969107 () Bool)

(declare-fun e!3105824 () Bool)

(declare-fun tp!1393557 () Bool)

(assert (=> b!4969107 (= e!3105824 tp!1393557)))

(declare-fun b!4969106 () Bool)

(assert (=> b!4969106 (= e!3105825 (and (inv!75082 (xs!18471 (right!42230 (right!42230 (c!847515 input!1342))))) e!3105824))))

(assert (=> b!4968038 (= tp!1393419 (and (inv!75075 (right!42230 (right!42230 (c!847515 input!1342)))) e!3105825))))

(assert (= (and b!4968038 (is-Node!15145 (right!42230 (right!42230 (c!847515 input!1342))))) b!4969105))

(assert (= b!4969106 b!4969107))

(assert (= (and b!4968038 (is-Leaf!25167 (right!42230 (right!42230 (c!847515 input!1342))))) b!4969106))

(declare-fun m!5996432 () Bool)

(assert (=> b!4969105 m!5996432))

(declare-fun m!5996434 () Bool)

(assert (=> b!4969105 m!5996434))

(declare-fun m!5996436 () Bool)

(assert (=> b!4969106 m!5996436))

(assert (=> b!4968038 m!5994418))

(declare-fun e!3105826 () Bool)

(assert (=> b!4967999 (= tp!1393373 e!3105826)))

(declare-fun b!4969111 () Bool)

(declare-fun tp!1393563 () Bool)

(declare-fun tp!1393562 () Bool)

(assert (=> b!4969111 (= e!3105826 (and tp!1393563 tp!1393562))))

(declare-fun b!4969108 () Bool)

(assert (=> b!4969108 (= e!3105826 tp_is_empty!36333)))

(declare-fun b!4969109 () Bool)

(declare-fun tp!1393560 () Bool)

(declare-fun tp!1393564 () Bool)

(assert (=> b!4969109 (= e!3105826 (and tp!1393560 tp!1393564))))

(declare-fun b!4969110 () Bool)

(declare-fun tp!1393561 () Bool)

(assert (=> b!4969110 (= e!3105826 tp!1393561)))

(assert (= (and b!4967999 (is-ElementMatch!13626 (reg!13955 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))) b!4969108))

(assert (= (and b!4967999 (is-Concat!22330 (reg!13955 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))) b!4969109))

(assert (= (and b!4967999 (is-Star!13626 (reg!13955 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))) b!4969110))

(assert (= (and b!4967999 (is-Union!13626 (reg!13955 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))) b!4969111))

(declare-fun e!3105827 () Bool)

(assert (=> b!4968000 (= tp!1393375 e!3105827)))

(declare-fun b!4969115 () Bool)

(declare-fun tp!1393568 () Bool)

(declare-fun tp!1393567 () Bool)

(assert (=> b!4969115 (= e!3105827 (and tp!1393568 tp!1393567))))

(declare-fun b!4969112 () Bool)

(assert (=> b!4969112 (= e!3105827 tp_is_empty!36333)))

(declare-fun b!4969113 () Bool)

(declare-fun tp!1393565 () Bool)

(declare-fun tp!1393569 () Bool)

(assert (=> b!4969113 (= e!3105827 (and tp!1393565 tp!1393569))))

(declare-fun b!4969114 () Bool)

(declare-fun tp!1393566 () Bool)

(assert (=> b!4969114 (= e!3105827 tp!1393566)))

(assert (= (and b!4968000 (is-ElementMatch!13626 (regOne!27765 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))) b!4969112))

(assert (= (and b!4968000 (is-Concat!22330 (regOne!27765 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))) b!4969113))

(assert (= (and b!4968000 (is-Star!13626 (regOne!27765 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))) b!4969114))

(assert (= (and b!4968000 (is-Union!13626 (regOne!27765 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))) b!4969115))

(declare-fun e!3105828 () Bool)

(assert (=> b!4968000 (= tp!1393374 e!3105828)))

(declare-fun b!4969119 () Bool)

(declare-fun tp!1393573 () Bool)

(declare-fun tp!1393572 () Bool)

(assert (=> b!4969119 (= e!3105828 (and tp!1393573 tp!1393572))))

(declare-fun b!4969116 () Bool)

(assert (=> b!4969116 (= e!3105828 tp_is_empty!36333)))

(declare-fun b!4969117 () Bool)

(declare-fun tp!1393570 () Bool)

(declare-fun tp!1393574 () Bool)

(assert (=> b!4969117 (= e!3105828 (and tp!1393570 tp!1393574))))

(declare-fun b!4969118 () Bool)

(declare-fun tp!1393571 () Bool)

(assert (=> b!4969118 (= e!3105828 tp!1393571)))

(assert (= (and b!4968000 (is-ElementMatch!13626 (regTwo!27765 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))) b!4969116))

(assert (= (and b!4968000 (is-Concat!22330 (regTwo!27765 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))) b!4969117))

(assert (= (and b!4968000 (is-Star!13626 (regTwo!27765 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))) b!4969118))

(assert (= (and b!4968000 (is-Union!13626 (regTwo!27765 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))) b!4969119))

(declare-fun b!4969120 () Bool)

(declare-fun e!3105829 () Bool)

(declare-fun tp!1393575 () Bool)

(assert (=> b!4969120 (= e!3105829 (and tp_is_empty!36333 tp!1393575))))

(assert (=> b!4968016 (= tp!1393390 e!3105829)))

(assert (= (and b!4968016 (is-Cons!57443 (innerList!15233 (xs!18471 (left!41900 (c!847515 totalInput!464)))))) b!4969120))

(declare-fun tp!1393578 () Bool)

(declare-fun e!3105831 () Bool)

(declare-fun b!4969121 () Bool)

(declare-fun tp!1393577 () Bool)

(assert (=> b!4969121 (= e!3105831 (and (inv!75075 (left!41900 (left!41900 (left!41900 (c!847515 input!1342))))) tp!1393578 (inv!75075 (right!42230 (left!41900 (left!41900 (c!847515 input!1342))))) tp!1393577))))

(declare-fun b!4969123 () Bool)

(declare-fun e!3105830 () Bool)

(declare-fun tp!1393576 () Bool)

(assert (=> b!4969123 (= e!3105830 tp!1393576)))

(declare-fun b!4969122 () Bool)

(assert (=> b!4969122 (= e!3105831 (and (inv!75082 (xs!18471 (left!41900 (left!41900 (c!847515 input!1342))))) e!3105830))))

(assert (=> b!4968035 (= tp!1393417 (and (inv!75075 (left!41900 (left!41900 (c!847515 input!1342)))) e!3105831))))

(assert (= (and b!4968035 (is-Node!15145 (left!41900 (left!41900 (c!847515 input!1342))))) b!4969121))

(assert (= b!4969122 b!4969123))

(assert (= (and b!4968035 (is-Leaf!25167 (left!41900 (left!41900 (c!847515 input!1342))))) b!4969122))

(declare-fun m!5996438 () Bool)

(assert (=> b!4969121 m!5996438))

(declare-fun m!5996440 () Bool)

(assert (=> b!4969121 m!5996440))

(declare-fun m!5996442 () Bool)

(assert (=> b!4969122 m!5996442))

(assert (=> b!4968035 m!5994410))

(declare-fun tp!1393581 () Bool)

(declare-fun tp!1393580 () Bool)

(declare-fun b!4969124 () Bool)

(declare-fun e!3105833 () Bool)

(assert (=> b!4969124 (= e!3105833 (and (inv!75075 (left!41900 (right!42230 (left!41900 (c!847515 input!1342))))) tp!1393581 (inv!75075 (right!42230 (right!42230 (left!41900 (c!847515 input!1342))))) tp!1393580))))

(declare-fun b!4969126 () Bool)

(declare-fun e!3105832 () Bool)

(declare-fun tp!1393579 () Bool)

(assert (=> b!4969126 (= e!3105832 tp!1393579)))

(declare-fun b!4969125 () Bool)

(assert (=> b!4969125 (= e!3105833 (and (inv!75082 (xs!18471 (right!42230 (left!41900 (c!847515 input!1342))))) e!3105832))))

(assert (=> b!4968035 (= tp!1393416 (and (inv!75075 (right!42230 (left!41900 (c!847515 input!1342)))) e!3105833))))

(assert (= (and b!4968035 (is-Node!15145 (right!42230 (left!41900 (c!847515 input!1342))))) b!4969124))

(assert (= b!4969125 b!4969126))

(assert (= (and b!4968035 (is-Leaf!25167 (right!42230 (left!41900 (c!847515 input!1342))))) b!4969125))

(declare-fun m!5996444 () Bool)

(assert (=> b!4969124 m!5996444))

(declare-fun m!5996446 () Bool)

(assert (=> b!4969124 m!5996446))

(declare-fun m!5996448 () Bool)

(assert (=> b!4969125 m!5996448))

(assert (=> b!4968035 m!5994412))

(declare-fun e!3105834 () Bool)

(assert (=> b!4968006 (= tp!1393382 e!3105834)))

(declare-fun b!4969130 () Bool)

(declare-fun tp!1393585 () Bool)

(declare-fun tp!1393584 () Bool)

(assert (=> b!4969130 (= e!3105834 (and tp!1393585 tp!1393584))))

(declare-fun b!4969127 () Bool)

(assert (=> b!4969127 (= e!3105834 tp_is_empty!36333)))

(declare-fun b!4969128 () Bool)

(declare-fun tp!1393582 () Bool)

(declare-fun tp!1393586 () Bool)

(assert (=> b!4969128 (= e!3105834 (and tp!1393582 tp!1393586))))

(declare-fun b!4969129 () Bool)

(declare-fun tp!1393583 () Bool)

(assert (=> b!4969129 (= e!3105834 tp!1393583)))

(assert (= (and b!4968006 (is-ElementMatch!13626 (regOne!27764 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969127))

(assert (= (and b!4968006 (is-Concat!22330 (regOne!27764 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969128))

(assert (= (and b!4968006 (is-Star!13626 (regOne!27764 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969129))

(assert (= (and b!4968006 (is-Union!13626 (regOne!27764 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969130))

(declare-fun e!3105835 () Bool)

(assert (=> b!4968006 (= tp!1393386 e!3105835)))

(declare-fun b!4969134 () Bool)

(declare-fun tp!1393590 () Bool)

(declare-fun tp!1393589 () Bool)

(assert (=> b!4969134 (= e!3105835 (and tp!1393590 tp!1393589))))

(declare-fun b!4969131 () Bool)

(assert (=> b!4969131 (= e!3105835 tp_is_empty!36333)))

(declare-fun b!4969132 () Bool)

(declare-fun tp!1393587 () Bool)

(declare-fun tp!1393591 () Bool)

(assert (=> b!4969132 (= e!3105835 (and tp!1393587 tp!1393591))))

(declare-fun b!4969133 () Bool)

(declare-fun tp!1393588 () Bool)

(assert (=> b!4969133 (= e!3105835 tp!1393588)))

(assert (= (and b!4968006 (is-ElementMatch!13626 (regTwo!27764 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969131))

(assert (= (and b!4968006 (is-Concat!22330 (regTwo!27764 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969132))

(assert (= (and b!4968006 (is-Star!13626 (regTwo!27764 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969133))

(assert (= (and b!4968006 (is-Union!13626 (regTwo!27764 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969134))

(declare-fun e!3105836 () Bool)

(assert (=> b!4968007 (= tp!1393383 e!3105836)))

(declare-fun b!4969138 () Bool)

(declare-fun tp!1393595 () Bool)

(declare-fun tp!1393594 () Bool)

(assert (=> b!4969138 (= e!3105836 (and tp!1393595 tp!1393594))))

(declare-fun b!4969135 () Bool)

(assert (=> b!4969135 (= e!3105836 tp_is_empty!36333)))

(declare-fun b!4969136 () Bool)

(declare-fun tp!1393592 () Bool)

(declare-fun tp!1393596 () Bool)

(assert (=> b!4969136 (= e!3105836 (and tp!1393592 tp!1393596))))

(declare-fun b!4969137 () Bool)

(declare-fun tp!1393593 () Bool)

(assert (=> b!4969137 (= e!3105836 tp!1393593)))

(assert (= (and b!4968007 (is-ElementMatch!13626 (reg!13955 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969135))

(assert (= (and b!4968007 (is-Concat!22330 (reg!13955 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969136))

(assert (= (and b!4968007 (is-Star!13626 (reg!13955 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969137))

(assert (= (and b!4968007 (is-Union!13626 (reg!13955 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969138))

(declare-fun e!3105837 () Bool)

(assert (=> b!4967998 (= tp!1393372 e!3105837)))

(declare-fun b!4969142 () Bool)

(declare-fun tp!1393600 () Bool)

(declare-fun tp!1393599 () Bool)

(assert (=> b!4969142 (= e!3105837 (and tp!1393600 tp!1393599))))

(declare-fun b!4969139 () Bool)

(assert (=> b!4969139 (= e!3105837 tp_is_empty!36333)))

(declare-fun b!4969140 () Bool)

(declare-fun tp!1393597 () Bool)

(declare-fun tp!1393601 () Bool)

(assert (=> b!4969140 (= e!3105837 (and tp!1393597 tp!1393601))))

(declare-fun b!4969141 () Bool)

(declare-fun tp!1393598 () Bool)

(assert (=> b!4969141 (= e!3105837 tp!1393598)))

(assert (= (and b!4967998 (is-ElementMatch!13626 (regOne!27764 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))) b!4969139))

(assert (= (and b!4967998 (is-Concat!22330 (regOne!27764 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))) b!4969140))

(assert (= (and b!4967998 (is-Star!13626 (regOne!27764 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))) b!4969141))

(assert (= (and b!4967998 (is-Union!13626 (regOne!27764 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))) b!4969142))

(declare-fun e!3105838 () Bool)

(assert (=> b!4967998 (= tp!1393376 e!3105838)))

(declare-fun b!4969146 () Bool)

(declare-fun tp!1393605 () Bool)

(declare-fun tp!1393604 () Bool)

(assert (=> b!4969146 (= e!3105838 (and tp!1393605 tp!1393604))))

(declare-fun b!4969143 () Bool)

(assert (=> b!4969143 (= e!3105838 tp_is_empty!36333)))

(declare-fun b!4969144 () Bool)

(declare-fun tp!1393602 () Bool)

(declare-fun tp!1393606 () Bool)

(assert (=> b!4969144 (= e!3105838 (and tp!1393602 tp!1393606))))

(declare-fun b!4969145 () Bool)

(declare-fun tp!1393603 () Bool)

(assert (=> b!4969145 (= e!3105838 tp!1393603)))

(assert (= (and b!4967998 (is-ElementMatch!13626 (regTwo!27764 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))) b!4969143))

(assert (= (and b!4967998 (is-Concat!22330 (regTwo!27764 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))) b!4969144))

(assert (= (and b!4967998 (is-Star!13626 (regTwo!27764 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))) b!4969145))

(assert (= (and b!4967998 (is-Union!13626 (regTwo!27764 (regex!8393 (h!63892 (t!368628 rulesArg!259)))))) b!4969146))

(declare-fun tp!1393609 () Bool)

(declare-fun b!4969147 () Bool)

(declare-fun e!3105840 () Bool)

(declare-fun tp!1393608 () Bool)

(assert (=> b!4969147 (= e!3105840 (and (inv!75075 (left!41900 (left!41900 (left!41900 (c!847515 totalInput!464))))) tp!1393609 (inv!75075 (right!42230 (left!41900 (left!41900 (c!847515 totalInput!464))))) tp!1393608))))

(declare-fun b!4969149 () Bool)

(declare-fun e!3105839 () Bool)

(declare-fun tp!1393607 () Bool)

(assert (=> b!4969149 (= e!3105839 tp!1393607)))

(declare-fun b!4969148 () Bool)

(assert (=> b!4969148 (= e!3105840 (and (inv!75082 (xs!18471 (left!41900 (left!41900 (c!847515 totalInput!464))))) e!3105839))))

(assert (=> b!4968014 (= tp!1393392 (and (inv!75075 (left!41900 (left!41900 (c!847515 totalInput!464)))) e!3105840))))

(assert (= (and b!4968014 (is-Node!15145 (left!41900 (left!41900 (c!847515 totalInput!464))))) b!4969147))

(assert (= b!4969148 b!4969149))

(assert (= (and b!4968014 (is-Leaf!25167 (left!41900 (left!41900 (c!847515 totalInput!464))))) b!4969148))

(declare-fun m!5996450 () Bool)

(assert (=> b!4969147 m!5996450))

(declare-fun m!5996452 () Bool)

(assert (=> b!4969147 m!5996452))

(declare-fun m!5996454 () Bool)

(assert (=> b!4969148 m!5996454))

(assert (=> b!4968014 m!5994394))

(declare-fun tp!1393611 () Bool)

(declare-fun tp!1393612 () Bool)

(declare-fun b!4969150 () Bool)

(declare-fun e!3105842 () Bool)

(assert (=> b!4969150 (= e!3105842 (and (inv!75075 (left!41900 (right!42230 (left!41900 (c!847515 totalInput!464))))) tp!1393612 (inv!75075 (right!42230 (right!42230 (left!41900 (c!847515 totalInput!464))))) tp!1393611))))

(declare-fun b!4969152 () Bool)

(declare-fun e!3105841 () Bool)

(declare-fun tp!1393610 () Bool)

(assert (=> b!4969152 (= e!3105841 tp!1393610)))

(declare-fun b!4969151 () Bool)

(assert (=> b!4969151 (= e!3105842 (and (inv!75082 (xs!18471 (right!42230 (left!41900 (c!847515 totalInput!464))))) e!3105841))))

(assert (=> b!4968014 (= tp!1393391 (and (inv!75075 (right!42230 (left!41900 (c!847515 totalInput!464)))) e!3105842))))

(assert (= (and b!4968014 (is-Node!15145 (right!42230 (left!41900 (c!847515 totalInput!464))))) b!4969150))

(assert (= b!4969151 b!4969152))

(assert (= (and b!4968014 (is-Leaf!25167 (right!42230 (left!41900 (c!847515 totalInput!464))))) b!4969151))

(declare-fun m!5996456 () Bool)

(assert (=> b!4969150 m!5996456))

(declare-fun m!5996458 () Bool)

(assert (=> b!4969150 m!5996458))

(declare-fun m!5996460 () Bool)

(assert (=> b!4969151 m!5996460))

(assert (=> b!4968014 m!5994396))

(declare-fun e!3105843 () Bool)

(assert (=> b!4968008 (= tp!1393385 e!3105843)))

(declare-fun b!4969156 () Bool)

(declare-fun tp!1393616 () Bool)

(declare-fun tp!1393615 () Bool)

(assert (=> b!4969156 (= e!3105843 (and tp!1393616 tp!1393615))))

(declare-fun b!4969153 () Bool)

(assert (=> b!4969153 (= e!3105843 tp_is_empty!36333)))

(declare-fun b!4969154 () Bool)

(declare-fun tp!1393613 () Bool)

(declare-fun tp!1393617 () Bool)

(assert (=> b!4969154 (= e!3105843 (and tp!1393613 tp!1393617))))

(declare-fun b!4969155 () Bool)

(declare-fun tp!1393614 () Bool)

(assert (=> b!4969155 (= e!3105843 tp!1393614)))

(assert (= (and b!4968008 (is-ElementMatch!13626 (regOne!27765 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969153))

(assert (= (and b!4968008 (is-Concat!22330 (regOne!27765 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969154))

(assert (= (and b!4968008 (is-Star!13626 (regOne!27765 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969155))

(assert (= (and b!4968008 (is-Union!13626 (regOne!27765 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969156))

(declare-fun e!3105844 () Bool)

(assert (=> b!4968008 (= tp!1393384 e!3105844)))

(declare-fun b!4969160 () Bool)

(declare-fun tp!1393621 () Bool)

(declare-fun tp!1393620 () Bool)

(assert (=> b!4969160 (= e!3105844 (and tp!1393621 tp!1393620))))

(declare-fun b!4969157 () Bool)

(assert (=> b!4969157 (= e!3105844 tp_is_empty!36333)))

(declare-fun b!4969158 () Bool)

(declare-fun tp!1393618 () Bool)

(declare-fun tp!1393622 () Bool)

(assert (=> b!4969158 (= e!3105844 (and tp!1393618 tp!1393622))))

(declare-fun b!4969159 () Bool)

(declare-fun tp!1393619 () Bool)

(assert (=> b!4969159 (= e!3105844 tp!1393619)))

(assert (= (and b!4968008 (is-ElementMatch!13626 (regTwo!27765 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969157))

(assert (= (and b!4968008 (is-Concat!22330 (regTwo!27765 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969158))

(assert (= (and b!4968008 (is-Star!13626 (regTwo!27765 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969159))

(assert (= (and b!4968008 (is-Union!13626 (regTwo!27765 (regTwo!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969160))

(declare-fun b!4969161 () Bool)

(declare-fun e!3105845 () Bool)

(declare-fun tp!1393623 () Bool)

(assert (=> b!4969161 (= e!3105845 (and tp_is_empty!36333 tp!1393623))))

(assert (=> b!4968041 (= tp!1393421 e!3105845)))

(assert (= (and b!4968041 (is-Cons!57443 (t!368627 (innerList!15233 (xs!18471 (c!847515 totalInput!464)))))) b!4969161))

(declare-fun e!3105846 () Bool)

(assert (=> b!4968029 (= tp!1393406 e!3105846)))

(declare-fun b!4969165 () Bool)

(declare-fun tp!1393627 () Bool)

(declare-fun tp!1393626 () Bool)

(assert (=> b!4969165 (= e!3105846 (and tp!1393627 tp!1393626))))

(declare-fun b!4969162 () Bool)

(assert (=> b!4969162 (= e!3105846 tp_is_empty!36333)))

(declare-fun b!4969163 () Bool)

(declare-fun tp!1393624 () Bool)

(declare-fun tp!1393628 () Bool)

(assert (=> b!4969163 (= e!3105846 (and tp!1393624 tp!1393628))))

(declare-fun b!4969164 () Bool)

(declare-fun tp!1393625 () Bool)

(assert (=> b!4969164 (= e!3105846 tp!1393625)))

(assert (= (and b!4968029 (is-ElementMatch!13626 (reg!13955 (regOne!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969162))

(assert (= (and b!4968029 (is-Concat!22330 (reg!13955 (regOne!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969163))

(assert (= (and b!4968029 (is-Star!13626 (reg!13955 (regOne!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969164))

(assert (= (and b!4968029 (is-Union!13626 (reg!13955 (regOne!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969165))

(declare-fun e!3105847 () Bool)

(assert (=> b!4968030 (= tp!1393408 e!3105847)))

(declare-fun b!4969169 () Bool)

(declare-fun tp!1393632 () Bool)

(declare-fun tp!1393631 () Bool)

(assert (=> b!4969169 (= e!3105847 (and tp!1393632 tp!1393631))))

(declare-fun b!4969166 () Bool)

(assert (=> b!4969166 (= e!3105847 tp_is_empty!36333)))

(declare-fun b!4969167 () Bool)

(declare-fun tp!1393629 () Bool)

(declare-fun tp!1393633 () Bool)

(assert (=> b!4969167 (= e!3105847 (and tp!1393629 tp!1393633))))

(declare-fun b!4969168 () Bool)

(declare-fun tp!1393630 () Bool)

(assert (=> b!4969168 (= e!3105847 tp!1393630)))

(assert (= (and b!4968030 (is-ElementMatch!13626 (regOne!27765 (regOne!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969166))

(assert (= (and b!4968030 (is-Concat!22330 (regOne!27765 (regOne!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969167))

(assert (= (and b!4968030 (is-Star!13626 (regOne!27765 (regOne!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969168))

(assert (= (and b!4968030 (is-Union!13626 (regOne!27765 (regOne!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969169))

(declare-fun e!3105848 () Bool)

(assert (=> b!4968030 (= tp!1393407 e!3105848)))

(declare-fun b!4969173 () Bool)

(declare-fun tp!1393637 () Bool)

(declare-fun tp!1393636 () Bool)

(assert (=> b!4969173 (= e!3105848 (and tp!1393637 tp!1393636))))

(declare-fun b!4969170 () Bool)

(assert (=> b!4969170 (= e!3105848 tp_is_empty!36333)))

(declare-fun b!4969171 () Bool)

(declare-fun tp!1393634 () Bool)

(declare-fun tp!1393638 () Bool)

(assert (=> b!4969171 (= e!3105848 (and tp!1393634 tp!1393638))))

(declare-fun b!4969172 () Bool)

(declare-fun tp!1393635 () Bool)

(assert (=> b!4969172 (= e!3105848 tp!1393635)))

(assert (= (and b!4968030 (is-ElementMatch!13626 (regTwo!27765 (regOne!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969170))

(assert (= (and b!4968030 (is-Concat!22330 (regTwo!27765 (regOne!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969171))

(assert (= (and b!4968030 (is-Star!13626 (regTwo!27765 (regOne!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969172))

(assert (= (and b!4968030 (is-Union!13626 (regTwo!27765 (regOne!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969173))

(declare-fun b!4969174 () Bool)

(declare-fun e!3105849 () Bool)

(declare-fun tp!1393639 () Bool)

(assert (=> b!4969174 (= e!3105849 (and tp_is_empty!36333 tp!1393639))))

(assert (=> b!4968037 (= tp!1393415 e!3105849)))

(assert (= (and b!4968037 (is-Cons!57443 (innerList!15233 (xs!18471 (left!41900 (c!847515 input!1342)))))) b!4969174))

(declare-fun tp!1393642 () Bool)

(declare-fun e!3105851 () Bool)

(declare-fun tp!1393641 () Bool)

(declare-fun b!4969175 () Bool)

(assert (=> b!4969175 (= e!3105851 (and (inv!75075 (left!41900 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (value!268642 (_1!34385 (get!19940 lt!2051000))))))) tp!1393642 (inv!75075 (right!42230 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (value!268642 (_1!34385 (get!19940 lt!2051000))))))) tp!1393641))))

(declare-fun b!4969177 () Bool)

(declare-fun e!3105850 () Bool)

(declare-fun tp!1393640 () Bool)

(assert (=> b!4969177 (= e!3105850 tp!1393640)))

(declare-fun b!4969176 () Bool)

(assert (=> b!4969176 (= e!3105851 (and (inv!75082 (xs!18471 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (value!268642 (_1!34385 (get!19940 lt!2051000))))))) e!3105850))))

(assert (=> b!4967682 (= tp!1393371 (and (inv!75075 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (value!268642 (_1!34385 (get!19940 lt!2051000)))))) e!3105851))))

(assert (= (and b!4967682 (is-Node!15145 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (value!268642 (_1!34385 (get!19940 lt!2051000))))))) b!4969175))

(assert (= b!4969176 b!4969177))

(assert (= (and b!4967682 (is-Leaf!25167 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))) (value!268642 (_1!34385 (get!19940 lt!2051000))))))) b!4969176))

(declare-fun m!5996462 () Bool)

(assert (=> b!4969175 m!5996462))

(declare-fun m!5996464 () Bool)

(assert (=> b!4969175 m!5996464))

(declare-fun m!5996466 () Bool)

(assert (=> b!4969176 m!5996466))

(assert (=> b!4967682 m!5993928))

(declare-fun e!3105852 () Bool)

(assert (=> b!4968028 (= tp!1393405 e!3105852)))

(declare-fun b!4969181 () Bool)

(declare-fun tp!1393646 () Bool)

(declare-fun tp!1393645 () Bool)

(assert (=> b!4969181 (= e!3105852 (and tp!1393646 tp!1393645))))

(declare-fun b!4969178 () Bool)

(assert (=> b!4969178 (= e!3105852 tp_is_empty!36333)))

(declare-fun b!4969179 () Bool)

(declare-fun tp!1393643 () Bool)

(declare-fun tp!1393647 () Bool)

(assert (=> b!4969179 (= e!3105852 (and tp!1393643 tp!1393647))))

(declare-fun b!4969180 () Bool)

(declare-fun tp!1393644 () Bool)

(assert (=> b!4969180 (= e!3105852 tp!1393644)))

(assert (= (and b!4968028 (is-ElementMatch!13626 (regOne!27764 (regOne!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969178))

(assert (= (and b!4968028 (is-Concat!22330 (regOne!27764 (regOne!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969179))

(assert (= (and b!4968028 (is-Star!13626 (regOne!27764 (regOne!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969180))

(assert (= (and b!4968028 (is-Union!13626 (regOne!27764 (regOne!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969181))

(declare-fun e!3105853 () Bool)

(assert (=> b!4968028 (= tp!1393409 e!3105853)))

(declare-fun b!4969185 () Bool)

(declare-fun tp!1393651 () Bool)

(declare-fun tp!1393650 () Bool)

(assert (=> b!4969185 (= e!3105853 (and tp!1393651 tp!1393650))))

(declare-fun b!4969182 () Bool)

(assert (=> b!4969182 (= e!3105853 tp_is_empty!36333)))

(declare-fun b!4969183 () Bool)

(declare-fun tp!1393648 () Bool)

(declare-fun tp!1393652 () Bool)

(assert (=> b!4969183 (= e!3105853 (and tp!1393648 tp!1393652))))

(declare-fun b!4969184 () Bool)

(declare-fun tp!1393649 () Bool)

(assert (=> b!4969184 (= e!3105853 tp!1393649)))

(assert (= (and b!4968028 (is-ElementMatch!13626 (regTwo!27764 (regOne!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969182))

(assert (= (and b!4968028 (is-Concat!22330 (regTwo!27764 (regOne!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969183))

(assert (= (and b!4968028 (is-Star!13626 (regTwo!27764 (regOne!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969184))

(assert (= (and b!4968028 (is-Union!13626 (regTwo!27764 (regOne!27765 (regex!8393 (h!63892 rulesArg!259)))))) b!4969185))

(declare-fun e!3105854 () Bool)

(assert (=> b!4968004 (= tp!1393380 e!3105854)))

(declare-fun b!4969189 () Bool)

(declare-fun tp!1393656 () Bool)

(declare-fun tp!1393655 () Bool)

(assert (=> b!4969189 (= e!3105854 (and tp!1393656 tp!1393655))))

(declare-fun b!4969186 () Bool)

(assert (=> b!4969186 (= e!3105854 tp_is_empty!36333)))

(declare-fun b!4969187 () Bool)

(declare-fun tp!1393653 () Bool)

(declare-fun tp!1393657 () Bool)

(assert (=> b!4969187 (= e!3105854 (and tp!1393653 tp!1393657))))

(declare-fun b!4969188 () Bool)

(declare-fun tp!1393654 () Bool)

(assert (=> b!4969188 (= e!3105854 tp!1393654)))

(assert (= (and b!4968004 (is-ElementMatch!13626 (regOne!27765 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969186))

(assert (= (and b!4968004 (is-Concat!22330 (regOne!27765 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969187))

(assert (= (and b!4968004 (is-Star!13626 (regOne!27765 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969188))

(assert (= (and b!4968004 (is-Union!13626 (regOne!27765 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969189))

(declare-fun e!3105855 () Bool)

(assert (=> b!4968004 (= tp!1393379 e!3105855)))

(declare-fun b!4969193 () Bool)

(declare-fun tp!1393661 () Bool)

(declare-fun tp!1393660 () Bool)

(assert (=> b!4969193 (= e!3105855 (and tp!1393661 tp!1393660))))

(declare-fun b!4969190 () Bool)

(assert (=> b!4969190 (= e!3105855 tp_is_empty!36333)))

(declare-fun b!4969191 () Bool)

(declare-fun tp!1393658 () Bool)

(declare-fun tp!1393662 () Bool)

(assert (=> b!4969191 (= e!3105855 (and tp!1393658 tp!1393662))))

(declare-fun b!4969192 () Bool)

(declare-fun tp!1393659 () Bool)

(assert (=> b!4969192 (= e!3105855 tp!1393659)))

(assert (= (and b!4968004 (is-ElementMatch!13626 (regTwo!27765 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969190))

(assert (= (and b!4968004 (is-Concat!22330 (regTwo!27765 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969191))

(assert (= (and b!4968004 (is-Star!13626 (regTwo!27765 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969192))

(assert (= (and b!4968004 (is-Union!13626 (regTwo!27765 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969193))

(declare-fun e!3105856 () Bool)

(assert (=> b!4968002 (= tp!1393377 e!3105856)))

(declare-fun b!4969197 () Bool)

(declare-fun tp!1393666 () Bool)

(declare-fun tp!1393665 () Bool)

(assert (=> b!4969197 (= e!3105856 (and tp!1393666 tp!1393665))))

(declare-fun b!4969194 () Bool)

(assert (=> b!4969194 (= e!3105856 tp_is_empty!36333)))

(declare-fun b!4969195 () Bool)

(declare-fun tp!1393663 () Bool)

(declare-fun tp!1393667 () Bool)

(assert (=> b!4969195 (= e!3105856 (and tp!1393663 tp!1393667))))

(declare-fun b!4969196 () Bool)

(declare-fun tp!1393664 () Bool)

(assert (=> b!4969196 (= e!3105856 tp!1393664)))

(assert (= (and b!4968002 (is-ElementMatch!13626 (regOne!27764 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969194))

(assert (= (and b!4968002 (is-Concat!22330 (regOne!27764 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969195))

(assert (= (and b!4968002 (is-Star!13626 (regOne!27764 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969196))

(assert (= (and b!4968002 (is-Union!13626 (regOne!27764 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969197))

(declare-fun e!3105857 () Bool)

(assert (=> b!4968002 (= tp!1393381 e!3105857)))

(declare-fun b!4969201 () Bool)

(declare-fun tp!1393671 () Bool)

(declare-fun tp!1393670 () Bool)

(assert (=> b!4969201 (= e!3105857 (and tp!1393671 tp!1393670))))

(declare-fun b!4969198 () Bool)

(assert (=> b!4969198 (= e!3105857 tp_is_empty!36333)))

(declare-fun b!4969199 () Bool)

(declare-fun tp!1393668 () Bool)

(declare-fun tp!1393672 () Bool)

(assert (=> b!4969199 (= e!3105857 (and tp!1393668 tp!1393672))))

(declare-fun b!4969200 () Bool)

(declare-fun tp!1393669 () Bool)

(assert (=> b!4969200 (= e!3105857 tp!1393669)))

(assert (= (and b!4968002 (is-ElementMatch!13626 (regTwo!27764 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969198))

(assert (= (and b!4968002 (is-Concat!22330 (regTwo!27764 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969199))

(assert (= (and b!4968002 (is-Star!13626 (regTwo!27764 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969200))

(assert (= (and b!4968002 (is-Union!13626 (regTwo!27764 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969201))

(declare-fun b!4969204 () Bool)

(declare-fun b_free!132791 () Bool)

(declare-fun b_next!133581 () Bool)

(assert (=> b!4969204 (= b_free!132791 (not b_next!133581))))

(declare-fun t!368808 () Bool)

(declare-fun tb!260779 () Bool)

(assert (=> (and b!4969204 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) t!368808) tb!260779))

(declare-fun result!325898 () Bool)

(assert (= result!325898 result!325832))

(assert (=> d!1599428 t!368808))

(declare-fun t!368810 () Bool)

(declare-fun tb!260781 () Bool)

(assert (=> (and b!4969204 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) t!368810) tb!260781))

(declare-fun result!325900 () Bool)

(assert (= result!325900 result!325730))

(assert (=> d!1598846 t!368810))

(declare-fun t!368812 () Bool)

(declare-fun tb!260783 () Bool)

(assert (=> (and b!4969204 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) t!368812) tb!260783))

(declare-fun result!325902 () Bool)

(assert (= result!325902 result!325724))

(assert (=> d!1598858 t!368812))

(declare-fun t!368814 () Bool)

(declare-fun tb!260785 () Bool)

(assert (=> (and b!4969204 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))) t!368814) tb!260785))

(declare-fun result!325904 () Bool)

(assert (= result!325904 result!325734))

(assert (=> d!1598912 t!368814))

(declare-fun t!368816 () Bool)

(declare-fun tb!260787 () Bool)

(assert (=> (and b!4969204 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) t!368816) tb!260787))

(declare-fun result!325906 () Bool)

(assert (= result!325906 result!325886))

(assert (=> d!1599610 t!368816))

(assert (=> d!1599604 t!368816))

(declare-fun tb!260789 () Bool)

(declare-fun t!368818 () Bool)

(assert (=> (and b!4969204 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051210)))))) t!368818) tb!260789))

(declare-fun result!325908 () Bool)

(assert (= result!325908 result!325874))

(assert (=> d!1599522 t!368818))

(declare-fun t!368820 () Bool)

(declare-fun tb!260791 () Bool)

(assert (=> (and b!4969204 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259)))) t!368820) tb!260791))

(declare-fun result!325910 () Bool)

(assert (= result!325910 result!325850))

(assert (=> d!1599464 t!368820))

(declare-fun t!368822 () Bool)

(declare-fun tb!260793 () Bool)

(assert (=> (and b!4969204 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) t!368822) tb!260793))

(declare-fun result!325912 () Bool)

(assert (= result!325912 result!325856))

(assert (=> d!1599476 t!368822))

(assert (=> d!1599436 t!368808))

(assert (=> bs!1183219 t!368810))

(declare-fun tb!260795 () Bool)

(declare-fun t!368824 () Bool)

(assert (=> (and b!4969204 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453)))))) t!368824) tb!260795))

(declare-fun result!325914 () Bool)

(assert (= result!325914 result!325814))

(assert (=> d!1599214 t!368824))

(assert (=> d!1599458 t!368820))

(declare-fun tb!260797 () Bool)

(declare-fun t!368826 () Bool)

(assert (=> (and b!4969204 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051463)))))) t!368826) tb!260797))

(declare-fun result!325916 () Bool)

(assert (= result!325916 result!325892))

(assert (=> d!1599664 t!368826))

(assert (=> d!1599480 t!368822))

(assert (=> d!1598846 t!368812))

(declare-fun t!368828 () Bool)

(declare-fun tb!260799 () Bool)

(assert (=> (and b!4969204 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467)))))) t!368828) tb!260799))

(declare-fun result!325918 () Bool)

(assert (= result!325918 result!325868))

(assert (=> d!1599512 t!368828))

(declare-fun t!368830 () Bool)

(declare-fun tb!260801 () Bool)

(assert (=> (and b!4969204 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) t!368830) tb!260801))

(declare-fun result!325920 () Bool)

(assert (= result!325920 result!325862))

(assert (=> d!1599480 t!368830))

(assert (=> bs!1183218 t!368812))

(declare-fun tp!1393675 () Bool)

(declare-fun b_and!348379 () Bool)

(assert (=> b!4969204 (= tp!1393675 (and (=> t!368828 result!325918) (=> t!368812 result!325902) (=> t!368810 result!325900) (=> t!368814 result!325904) (=> t!368820 result!325910) (=> t!368830 result!325920) (=> t!368822 result!325912) (=> t!368826 result!325916) (=> t!368824 result!325914) (=> t!368816 result!325906) (=> t!368808 result!325898) (=> t!368818 result!325908) b_and!348379))))

(declare-fun b_free!132793 () Bool)

(declare-fun b_next!133583 () Bool)

(assert (=> b!4969204 (= b_free!132793 (not b_next!133583))))

(declare-fun tb!260803 () Bool)

(declare-fun t!368832 () Bool)

(assert (=> (and b!4969204 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051463)))))) t!368832) tb!260803))

(declare-fun result!325922 () Bool)

(assert (= result!325922 result!325820))

(assert (=> d!1599354 t!368832))

(declare-fun t!368834 () Bool)

(declare-fun tb!260805 () Bool)

(assert (=> (and b!4969204 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051453)))))) t!368834) tb!260805))

(declare-fun result!325924 () Bool)

(assert (= result!325924 result!325838))

(assert (=> d!1599452 t!368834))

(declare-fun t!368836 () Bool)

(declare-fun tb!260807 () Bool)

(assert (=> (and b!4969204 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) t!368836) tb!260807))

(declare-fun result!325926 () Bool)

(assert (= result!325926 result!325826))

(assert (=> d!1599428 t!368836))

(declare-fun t!368838 () Bool)

(declare-fun tb!260809 () Bool)

(assert (=> (and b!4969204 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051467)))))) t!368838) tb!260809))

(declare-fun result!325928 () Bool)

(assert (= result!325928 result!325802))

(assert (=> d!1599130 t!368838))

(declare-fun tb!260811 () Bool)

(declare-fun t!368840 () Bool)

(assert (=> (and b!4969204 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051210)))))) t!368840) tb!260811))

(declare-fun result!325930 () Bool)

(assert (= result!325930 result!325808))

(assert (=> d!1599148 t!368840))

(declare-fun tb!260813 () Bool)

(declare-fun t!368842 () Bool)

(assert (=> (and b!4969204 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000)))))) t!368842) tb!260813))

(declare-fun result!325932 () Bool)

(assert (= result!325932 result!325718))

(assert (=> d!1598826 t!368842))

(declare-fun t!368844 () Bool)

(declare-fun tb!260815 () Bool)

(assert (=> (and b!4969204 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) t!368844) tb!260815))

(declare-fun result!325934 () Bool)

(assert (= result!325934 result!325880))

(assert (=> d!1599604 t!368844))

(declare-fun t!368846 () Bool)

(declare-fun tb!260817 () Bool)

(assert (=> (and b!4969204 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) t!368846) tb!260817))

(declare-fun result!325936 () Bool)

(assert (= result!325936 result!325748))

(assert (=> bs!1183218 t!368846))

(declare-fun t!368848 () Bool)

(declare-fun tb!260819 () Bool)

(assert (=> (and b!4969204 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) t!368848) tb!260819))

(declare-fun result!325938 () Bool)

(assert (= result!325938 result!325754))

(assert (=> bs!1183219 t!368848))

(declare-fun t!368850 () Bool)

(declare-fun tb!260821 () Bool)

(assert (=> (and b!4969204 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259)))) t!368850) tb!260821))

(declare-fun result!325940 () Bool)

(assert (= result!325940 result!325844))

(assert (=> d!1599458 t!368850))

(declare-fun tp!1393674 () Bool)

(declare-fun b_and!348381 () Bool)

(assert (=> b!4969204 (= tp!1393674 (and (=> t!368836 result!325926) (=> t!368844 result!325934) (=> t!368838 result!325928) (=> t!368842 result!325932) (=> t!368850 result!325940) (=> t!368848 result!325938) (=> t!368840 result!325930) (=> t!368834 result!325924) (=> t!368832 result!325922) (=> t!368846 result!325936) b_and!348381))))

(declare-fun e!3105859 () Bool)

(assert (=> b!4969204 (= e!3105859 (and tp!1393675 tp!1393674))))

(declare-fun tp!1393673 () Bool)

(declare-fun e!3105861 () Bool)

(declare-fun b!4969203 () Bool)

(assert (=> b!4969203 (= e!3105861 (and tp!1393673 (inv!75071 (tag!9257 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (inv!75076 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) e!3105859))))

(declare-fun b!4969202 () Bool)

(declare-fun e!3105860 () Bool)

(declare-fun tp!1393676 () Bool)

(assert (=> b!4969202 (= e!3105860 (and e!3105861 tp!1393676))))

(assert (=> b!4968020 (= tp!1393399 e!3105860)))

(assert (= b!4969203 b!4969204))

(assert (= b!4969202 b!4969203))

(assert (= (and b!4968020 (is-Cons!57444 (t!368628 (t!368628 (t!368628 rulesArg!259))))) b!4969202))

(declare-fun m!5996468 () Bool)

(assert (=> b!4969203 m!5996468))

(declare-fun m!5996470 () Bool)

(assert (=> b!4969203 m!5996470))

(declare-fun e!3105862 () Bool)

(assert (=> b!4968003 (= tp!1393378 e!3105862)))

(declare-fun b!4969208 () Bool)

(declare-fun tp!1393680 () Bool)

(declare-fun tp!1393679 () Bool)

(assert (=> b!4969208 (= e!3105862 (and tp!1393680 tp!1393679))))

(declare-fun b!4969205 () Bool)

(assert (=> b!4969205 (= e!3105862 tp_is_empty!36333)))

(declare-fun b!4969206 () Bool)

(declare-fun tp!1393677 () Bool)

(declare-fun tp!1393681 () Bool)

(assert (=> b!4969206 (= e!3105862 (and tp!1393677 tp!1393681))))

(declare-fun b!4969207 () Bool)

(declare-fun tp!1393678 () Bool)

(assert (=> b!4969207 (= e!3105862 tp!1393678)))

(assert (= (and b!4968003 (is-ElementMatch!13626 (reg!13955 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969205))

(assert (= (and b!4968003 (is-Concat!22330 (reg!13955 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969206))

(assert (= (and b!4968003 (is-Star!13626 (reg!13955 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969207))

(assert (= (and b!4968003 (is-Union!13626 (reg!13955 (regOne!27764 (regex!8393 (h!63892 rulesArg!259)))))) b!4969208))

(declare-fun e!3105863 () Bool)

(assert (=> b!4968021 (= tp!1393396 e!3105863)))

(declare-fun b!4969212 () Bool)

(declare-fun tp!1393685 () Bool)

(declare-fun tp!1393684 () Bool)

(assert (=> b!4969212 (= e!3105863 (and tp!1393685 tp!1393684))))

(declare-fun b!4969209 () Bool)

(assert (=> b!4969209 (= e!3105863 tp_is_empty!36333)))

(declare-fun b!4969210 () Bool)

(declare-fun tp!1393682 () Bool)

(declare-fun tp!1393686 () Bool)

(assert (=> b!4969210 (= e!3105863 (and tp!1393682 tp!1393686))))

(declare-fun b!4969211 () Bool)

(declare-fun tp!1393683 () Bool)

(assert (=> b!4969211 (= e!3105863 tp!1393683)))

(assert (= (and b!4968021 (is-ElementMatch!13626 (regex!8393 (h!63892 (t!368628 (t!368628 rulesArg!259)))))) b!4969209))

(assert (= (and b!4968021 (is-Concat!22330 (regex!8393 (h!63892 (t!368628 (t!368628 rulesArg!259)))))) b!4969210))

(assert (= (and b!4968021 (is-Star!13626 (regex!8393 (h!63892 (t!368628 (t!368628 rulesArg!259)))))) b!4969211))

(assert (= (and b!4968021 (is-Union!13626 (regex!8393 (h!63892 (t!368628 (t!368628 rulesArg!259)))))) b!4969212))

(declare-fun tp!1393689 () Bool)

(declare-fun e!3105865 () Bool)

(declare-fun b!4969213 () Bool)

(declare-fun tp!1393688 () Bool)

(assert (=> b!4969213 (= e!3105865 (and (inv!75075 (left!41900 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115)))))) tp!1393689 (inv!75075 (right!42230 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115)))))) tp!1393688))))

(declare-fun b!4969215 () Bool)

(declare-fun e!3105864 () Bool)

(declare-fun tp!1393687 () Bool)

(assert (=> b!4969215 (= e!3105864 tp!1393687)))

(declare-fun b!4969214 () Bool)

(assert (=> b!4969214 (= e!3105865 (and (inv!75082 (xs!18471 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115)))))) e!3105864))))

(assert (=> b!4968042 (= tp!1393422 (and (inv!75075 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115))))) e!3105865))))

(assert (= (and b!4968042 (is-Node!15145 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115)))))) b!4969213))

(assert (= b!4969214 b!4969215))

(assert (= (and b!4968042 (is-Leaf!25167 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115)))))) b!4969214))

(declare-fun m!5996472 () Bool)

(assert (=> b!4969213 m!5996472))

(declare-fun m!5996474 () Bool)

(assert (=> b!4969213 m!5996474))

(declare-fun m!5996476 () Bool)

(assert (=> b!4969214 m!5996476))

(assert (=> b!4968042 m!5994422))

(declare-fun b_lambda!196979 () Bool)

(assert (= b_lambda!196943 (or (and b!4967137 b_free!132769) (and b!4967394 b_free!132777 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4968022 b_free!132785 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4969204 b_free!132793 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))))) b_lambda!196979)))

(declare-fun b_lambda!196981 () Bool)

(assert (= b_lambda!196837 (or (and b!4967137 b_free!132769 (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))) (and b!4967394 b_free!132777 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))) (and b!4968022 b_free!132785 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))) (and b!4969204 b_free!132793 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toChars!11211 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))) b_lambda!196981)))

(declare-fun b_lambda!196983 () Bool)

(assert (= b_lambda!196971 (or (and b!4967137 b_free!132769) (and b!4967394 b_free!132777 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4968022 b_free!132785 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4969204 b_free!132793 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))))) b_lambda!196983)))

(declare-fun b_lambda!196985 () Bool)

(assert (= b_lambda!196953 (or (and b!4967137 b_free!132767) (and b!4967394 b_free!132775 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4968022 b_free!132783 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4969204 b_free!132791 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) b_lambda!196985)))

(declare-fun b_lambda!196987 () Bool)

(assert (= b_lambda!196973 (or (and b!4967137 b_free!132767) (and b!4967394 b_free!132775 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4968022 b_free!132783 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4969204 b_free!132791 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) b_lambda!196987)))

(declare-fun b_lambda!196989 () Bool)

(assert (= b_lambda!196975 (or (and b!4967137 b_free!132767) (and b!4967394 b_free!132775 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4968022 b_free!132783 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4969204 b_free!132791 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) b_lambda!196989)))

(declare-fun b_lambda!196991 () Bool)

(assert (= b_lambda!196951 (or (and b!4967137 b_free!132769) (and b!4967394 b_free!132777 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4968022 b_free!132785 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4969204 b_free!132793 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))))) b_lambda!196991)))

(declare-fun b_lambda!196993 () Bool)

(assert (= b_lambda!196929 (or d!1598846 b_lambda!196993)))

(declare-fun bs!1183358 () Bool)

(declare-fun d!1599670 () Bool)

(assert (= bs!1183358 (and d!1599670 d!1598846)))

(declare-fun res!2121035 () Bool)

(declare-fun e!3105866 () Bool)

(assert (=> bs!1183358 (=> res!2121035 e!3105866)))

(assert (=> bs!1183358 (= res!2121035 (not (= (list!18365 (_1!34389 lt!2051115)) (list!18365 (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))))))))

(assert (=> bs!1183358 (= (dynLambda!23175 lambda!247379 (_1!34389 lt!2051115) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115)))) e!3105866)))

(declare-fun b!4969216 () Bool)

(assert (=> b!4969216 (= e!3105866 (= (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (_1!34389 lt!2051115)) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051115))))))))

(assert (= (and bs!1183358 (not res!2121035)) b!4969216))

(declare-fun b_lambda!197021 () Bool)

(assert (=> (not b_lambda!197021) (not b!4969216)))

(assert (=> b!4969216 t!368639))

(declare-fun b_and!348383 () Bool)

(assert (= b_and!348373 (and (=> t!368639 result!325724) b_and!348383)))

(assert (=> b!4969216 t!368641))

(declare-fun b_and!348385 () Bool)

(assert (= b_and!348375 (and (=> t!368641 result!325728) b_and!348385)))

(assert (=> b!4969216 t!368652))

(declare-fun b_and!348387 () Bool)

(assert (= b_and!348377 (and (=> t!368652 result!325740) b_and!348387)))

(assert (=> b!4969216 t!368812))

(declare-fun b_and!348389 () Bool)

(assert (= b_and!348379 (and (=> t!368812 result!325902) b_and!348389)))

(declare-fun b_lambda!197023 () Bool)

(assert (=> (not b_lambda!197023) (not b!4969216)))

(assert (=> b!4969216 t!368643))

(declare-fun b_and!348391 () Bool)

(assert (= b_and!348383 (and (=> t!368643 result!325730) b_and!348391)))

(assert (=> b!4969216 t!368645))

(declare-fun b_and!348393 () Bool)

(assert (= b_and!348385 (and (=> t!368645 result!325732) b_and!348393)))

(assert (=> b!4969216 t!368654))

(declare-fun b_and!348395 () Bool)

(assert (= b_and!348387 (and (=> t!368654 result!325742) b_and!348395)))

(assert (=> b!4969216 t!368810))

(declare-fun b_and!348397 () Bool)

(assert (= b_and!348389 (and (=> t!368810 result!325900) b_and!348397)))

(assert (=> bs!1183358 m!5993572))

(assert (=> bs!1183358 m!5993582))

(assert (=> bs!1183358 m!5993982))

(assert (=> b!4969216 m!5993984))

(assert (=> b!4969216 m!5993582))

(assert (=> b!4969216 m!5993980))

(assert (=> d!1599318 d!1599670))

(declare-fun b_lambda!196995 () Bool)

(assert (= b_lambda!196961 (or (and b!4967137 b_free!132767 (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))))) (and b!4967394 b_free!132775) (and b!4968022 b_free!132783 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))))) (and b!4969204 b_free!132791 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))))) b_lambda!196995)))

(declare-fun b_lambda!196997 () Bool)

(assert (= b_lambda!196933 (or d!1598832 b_lambda!196997)))

(declare-fun bs!1183359 () Bool)

(declare-fun d!1599672 () Bool)

(assert (= bs!1183359 (and d!1599672 d!1598832)))

(assert (=> bs!1183359 (= (dynLambda!23169 lambda!247376 (h!63892 (t!368628 rulesArg!259))) (ruleValid!3802 thiss!15247 (h!63892 (t!368628 rulesArg!259))))))

(assert (=> bs!1183359 m!5993938))

(assert (=> b!4968775 d!1599672))

(declare-fun b_lambda!196999 () Bool)

(assert (= b_lambda!196925 (or b!4967347 b_lambda!196999)))

(assert (=> d!1599236 d!1598946))

(declare-fun b_lambda!197001 () Bool)

(assert (= b_lambda!196965 (or b!4967852 b_lambda!197001)))

(declare-fun bs!1183360 () Bool)

(declare-fun d!1599674 () Bool)

(assert (= bs!1183360 (and d!1599674 b!4967852)))

(assert (=> bs!1183360 (= (dynLambda!23168 lambda!247380 (seqFromList!6036 (list!18365 (_1!34389 lt!2051419)))) (= (list!18365 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051419)))))) (list!18365 (seqFromList!6036 (list!18365 (_1!34389 lt!2051419))))))))

(declare-fun b_lambda!197025 () Bool)

(assert (=> (not b_lambda!197025) (not bs!1183360)))

(declare-fun t!368852 () Bool)

(declare-fun tb!260823 () Bool)

(assert (=> (and b!4967137 (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) t!368852) tb!260823))

(declare-fun b!4969217 () Bool)

(declare-fun tp!1393690 () Bool)

(declare-fun e!3105867 () Bool)

(assert (=> b!4969217 (= e!3105867 (and (inv!75075 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051419))))))) tp!1393690))))

(declare-fun result!325942 () Bool)

(assert (=> tb!260823 (= result!325942 (and (inv!75074 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (seqFromList!6036 (list!18365 (_1!34389 lt!2051419)))))) e!3105867))))

(assert (= tb!260823 b!4969217))

(declare-fun m!5996478 () Bool)

(assert (=> b!4969217 m!5996478))

(declare-fun m!5996480 () Bool)

(assert (=> tb!260823 m!5996480))

(assert (=> bs!1183360 t!368852))

(declare-fun b_and!348399 () Bool)

(assert (= b_and!348355 (and (=> t!368852 result!325942) b_and!348399)))

(declare-fun t!368854 () Bool)

(declare-fun tb!260825 () Bool)

(assert (=> (and b!4967394 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) t!368854) tb!260825))

(declare-fun result!325944 () Bool)

(assert (= result!325944 result!325942))

(assert (=> bs!1183360 t!368854))

(declare-fun b_and!348401 () Bool)

(assert (= b_and!348357 (and (=> t!368854 result!325944) b_and!348401)))

(declare-fun t!368856 () Bool)

(declare-fun tb!260827 () Bool)

(assert (=> (and b!4968022 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) t!368856) tb!260827))

(declare-fun result!325946 () Bool)

(assert (= result!325946 result!325942))

(assert (=> bs!1183360 t!368856))

(declare-fun b_and!348403 () Bool)

(assert (= b_and!348359 (and (=> t!368856 result!325946) b_and!348403)))

(declare-fun t!368858 () Bool)

(declare-fun tb!260829 () Bool)

(assert (=> (and b!4969204 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) t!368858) tb!260829))

(declare-fun result!325948 () Bool)

(assert (= result!325948 result!325942))

(assert (=> bs!1183360 t!368858))

(declare-fun b_and!348405 () Bool)

(assert (= b_and!348381 (and (=> t!368858 result!325948) b_and!348405)))

(declare-fun b_lambda!197027 () Bool)

(assert (=> (not b_lambda!197027) (not bs!1183360)))

(assert (=> bs!1183360 t!368772))

(declare-fun b_and!348407 () Bool)

(assert (= b_and!348391 (and (=> t!368772 result!325862) b_and!348407)))

(assert (=> bs!1183360 t!368774))

(declare-fun b_and!348409 () Bool)

(assert (= b_and!348393 (and (=> t!368774 result!325864) b_and!348409)))

(assert (=> bs!1183360 t!368776))

(declare-fun b_and!348411 () Bool)

(assert (= b_and!348395 (and (=> t!368776 result!325866) b_and!348411)))

(assert (=> bs!1183360 t!368830))

(declare-fun b_and!348413 () Bool)

(assert (= b_and!348397 (and (=> t!368830 result!325920) b_and!348413)))

(assert (=> bs!1183360 m!5994158))

(assert (=> bs!1183360 m!5995934))

(assert (=> bs!1183360 m!5994158))

(assert (=> bs!1183360 m!5995936))

(assert (=> bs!1183360 m!5995934))

(declare-fun m!5996482 () Bool)

(assert (=> bs!1183360 m!5996482))

(assert (=> bs!1183360 m!5996482))

(declare-fun m!5996484 () Bool)

(assert (=> bs!1183360 m!5996484))

(assert (=> d!1599492 d!1599674))

(declare-fun b_lambda!197003 () Bool)

(assert (= b_lambda!196945 (or (and b!4967137 b_free!132767) (and b!4967394 b_free!132775 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4968022 b_free!132783 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4969204 b_free!132791 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) b_lambda!197003)))

(declare-fun b_lambda!197005 () Bool)

(assert (= b_lambda!196959 (or (and b!4967137 b_free!132767 (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))))) (and b!4967394 b_free!132775) (and b!4968022 b_free!132783 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))))) (and b!4969204 b_free!132791 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))))) b_lambda!197005)))

(declare-fun b_lambda!197007 () Bool)

(assert (= b_lambda!196957 (or b!4967852 b_lambda!197007)))

(declare-fun bs!1183361 () Bool)

(declare-fun d!1599676 () Bool)

(assert (= bs!1183361 (and d!1599676 b!4967852)))

(assert (=> bs!1183361 (= (dynLambda!23168 lambda!247380 (_1!34389 lt!2051419)) (= (list!18365 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (_1!34389 lt!2051419)))) (list!18365 (_1!34389 lt!2051419))))))

(declare-fun b_lambda!197029 () Bool)

(assert (=> (not b_lambda!197029) (not bs!1183361)))

(declare-fun t!368860 () Bool)

(declare-fun tb!260831 () Bool)

(assert (=> (and b!4967137 (= (toChars!11211 (transformation!8393 (h!63892 rulesArg!259))) (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) t!368860) tb!260831))

(declare-fun b!4969218 () Bool)

(declare-fun e!3105868 () Bool)

(declare-fun tp!1393691 () Bool)

(assert (=> b!4969218 (= e!3105868 (and (inv!75075 (c!847515 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (_1!34389 lt!2051419))))) tp!1393691))))

(declare-fun result!325950 () Bool)

(assert (=> tb!260831 (= result!325950 (and (inv!75074 (dynLambda!23166 (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (dynLambda!23167 (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (_1!34389 lt!2051419)))) e!3105868))))

(assert (= tb!260831 b!4969218))

(declare-fun m!5996486 () Bool)

(assert (=> b!4969218 m!5996486))

(declare-fun m!5996488 () Bool)

(assert (=> tb!260831 m!5996488))

(assert (=> bs!1183361 t!368860))

(declare-fun b_and!348415 () Bool)

(assert (= b_and!348399 (and (=> t!368860 result!325950) b_and!348415)))

(declare-fun t!368862 () Bool)

(declare-fun tb!260833 () Bool)

(assert (=> (and b!4967394 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) t!368862) tb!260833))

(declare-fun result!325952 () Bool)

(assert (= result!325952 result!325950))

(assert (=> bs!1183361 t!368862))

(declare-fun b_and!348417 () Bool)

(assert (= b_and!348401 (and (=> t!368862 result!325952) b_and!348417)))

(declare-fun t!368864 () Bool)

(declare-fun tb!260835 () Bool)

(assert (=> (and b!4968022 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) t!368864) tb!260835))

(declare-fun result!325954 () Bool)

(assert (= result!325954 result!325950))

(assert (=> bs!1183361 t!368864))

(declare-fun b_and!348419 () Bool)

(assert (= b_and!348403 (and (=> t!368864 result!325954) b_and!348419)))

(declare-fun t!368866 () Bool)

(declare-fun tb!260837 () Bool)

(assert (=> (and b!4969204 (= (toChars!11211 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toChars!11211 (transformation!8393 (h!63892 (t!368628 rulesArg!259))))) t!368866) tb!260837))

(declare-fun result!325956 () Bool)

(assert (= result!325956 result!325950))

(assert (=> bs!1183361 t!368866))

(declare-fun b_and!348421 () Bool)

(assert (= b_and!348405 (and (=> t!368866 result!325956) b_and!348421)))

(declare-fun b_lambda!197031 () Bool)

(assert (=> (not b_lambda!197031) (not bs!1183361)))

(assert (=> bs!1183361 t!368766))

(declare-fun b_and!348423 () Bool)

(assert (= b_and!348407 (and (=> t!368766 result!325856) b_and!348423)))

(assert (=> bs!1183361 t!368768))

(declare-fun b_and!348425 () Bool)

(assert (= b_and!348409 (and (=> t!368768 result!325858) b_and!348425)))

(assert (=> bs!1183361 t!368770))

(declare-fun b_and!348427 () Bool)

(assert (= b_and!348411 (and (=> t!368770 result!325860) b_and!348427)))

(assert (=> bs!1183361 t!368822))

(declare-fun b_and!348429 () Bool)

(assert (= b_and!348413 (and (=> t!368822 result!325912) b_and!348429)))

(assert (=> bs!1183361 m!5995928))

(assert (=> bs!1183361 m!5994150))

(assert (=> bs!1183361 m!5995928))

(declare-fun m!5996490 () Bool)

(assert (=> bs!1183361 m!5996490))

(assert (=> bs!1183361 m!5996490))

(declare-fun m!5996492 () Bool)

(assert (=> bs!1183361 m!5996492))

(assert (=> d!1599474 d!1599676))

(declare-fun b_lambda!197009 () Bool)

(assert (= b_lambda!196927 (or b!4967347 b_lambda!197009)))

(assert (=> d!1599316 d!1598948))

(declare-fun b_lambda!197011 () Bool)

(assert (= b_lambda!196963 (or (and b!4967137 b_free!132767 (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))))) (and b!4967394 b_free!132775) (and b!4968022 b_free!132783 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))))) (and b!4969204 b_free!132791 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))))) b_lambda!197011)))

(declare-fun b_lambda!197013 () Bool)

(assert (= b_lambda!196923 (or d!1598730 b_lambda!197013)))

(declare-fun bs!1183362 () Bool)

(declare-fun d!1599678 () Bool)

(assert (= bs!1183362 (and d!1599678 d!1598730)))

(assert (=> bs!1183362 (= (dynLambda!23169 lambda!247372 (h!63892 (t!368628 rulesArg!259))) (ruleValid!3802 thiss!15247 (h!63892 (t!368628 rulesArg!259))))))

(assert (=> bs!1183362 m!5993938))

(assert (=> b!4968534 d!1599678))

(declare-fun b_lambda!197015 () Bool)

(assert (= b_lambda!196955 (or (and b!4967137 b_free!132767) (and b!4967394 b_free!132775 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4968022 b_free!132783 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4969204 b_free!132791 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) b_lambda!197015)))

(declare-fun b_lambda!197017 () Bool)

(assert (= b_lambda!196947 (or (and b!4967137 b_free!132767) (and b!4967394 b_free!132775 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4968022 b_free!132783 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) (and b!4969204 b_free!132791 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))))) b_lambda!197017)))

(declare-fun b_lambda!197019 () Bool)

(assert (= b_lambda!196851 (or (and b!4967137 b_free!132767 (= (toValue!11352 (transformation!8393 (h!63892 rulesArg!259))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))) (and b!4967394 b_free!132775 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 rulesArg!259)))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))) (and b!4968022 b_free!132783 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 rulesArg!259))))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))) (and b!4969204 b_free!132791 (= (toValue!11352 (transformation!8393 (h!63892 (t!368628 (t!368628 (t!368628 rulesArg!259)))))) (toValue!11352 (transformation!8393 (rule!11637 (_1!34385 (get!19940 lt!2051000))))))) b_lambda!197019)))

(push 1)

(assert (not b!4968492))

(assert (not b!4969200))

(assert (not b!4969040))

(assert (not d!1599524))

(assert (not b!4969163))

(assert (not bm!346511))

(assert (not d!1599336))

(assert (not b!4968035))

(assert (not b!4968623))

(assert (not b!4968877))

(assert (not b!4969179))

(assert (not b!4968396))

(assert (not b!4968933))

(assert (not b!4968849))

(assert (not b!4969148))

(assert (not b!4969039))

(assert (not b_lambda!196993))

(assert (not b!4968952))

(assert (not b!4968703))

(assert (not d!1599616))

(assert (not bm!346522))

(assert (not b_lambda!197023))

(assert (not b!4968526))

(assert (not b!4968433))

(assert (not d!1599290))

(assert (not bm!346513))

(assert (not b!4968945))

(assert (not bs!1183361))

(assert (not d!1599486))

(assert (not bm!346519))

(assert b_and!348419)

(assert (not bm!346535))

(assert (not b!4968568))

(assert (not b!4968445))

(assert (not b_next!133567))

(assert (not b!4968753))

(assert (not b!4969189))

(assert (not bm!346463))

(assert (not d!1599534))

(assert (not b!4968605))

(assert (not b!4969049))

(assert (not b!4968405))

(assert (not b!4969158))

(assert (not d!1599592))

(assert (not b!4968578))

(assert (not tb!260731))

(assert (not b!4968917))

(assert (not d!1599448))

(assert (not b!4968373))

(assert (not b!4969159))

(assert (not b!4968364))

(assert (not b!4968509))

(assert (not b!4968837))

(assert (not b!4969103))

(assert (not bm!346491))

(assert (not b!4969187))

(assert (not b!4969181))

(assert (not b!4969151))

(assert b_and!348417)

(assert (not tb!260755))

(assert (not b!4969111))

(assert (not b!4968682))

(assert (not d!1599650))

(assert (not b!4968368))

(assert (not b!4968452))

(assert (not d!1599484))

(assert (not b!4968557))

(assert (not b!4968989))

(assert (not b!4968823))

(assert (not b!4968820))

(assert (not b!4968728))

(assert (not b_next!133573))

(assert (not b!4969188))

(assert (not b!4968351))

(assert (not b_lambda!196921))

(assert (not b!4969008))

(assert (not b!4968617))

(assert (not b!4968588))

(assert (not bm!346495))

(assert (not b!4968912))

(assert (not b!4969086))

(assert (not b!4968731))

(assert (not b_lambda!197005))

(assert (not b!4968603))

(assert (not b!4969213))

(assert (not b_lambda!196857))

(assert (not tb!260719))

(assert (not b!4968980))

(assert (not b!4968599))

(assert (not b!4968673))

(assert (not b_lambda!196931))

(assert (not b!4968734))

(assert (not b!4969210))

(assert (not d!1599482))

(assert (not d!1599110))

(assert (not b!4968759))

(assert (not b!4968973))

(assert (not b!4969091))

(assert (not b!4969156))

(assert (not d!1599390))

(assert (not d!1599428))

(assert (not b!4968425))

(assert (not b!4969141))

(assert (not b_lambda!197009))

(assert (not d!1599660))

(assert (not b!4968797))

(assert (not b!4969028))

(assert (not b!4968355))

(assert (not b!4969110))

(assert (not b!4968014))

(assert (not d!1599136))

(assert (not b!4969064))

(assert (not d!1599328))

(assert (not d!1599666))

(assert (not b!4968739))

(assert (not b!4968801))

(assert (not b!4968766))

(assert (not d!1599370))

(assert (not d!1599516))

(assert (not b_lambda!196909))

(assert (not d!1599294))

(assert (not b!4968508))

(assert (not b!4968900))

(assert (not b!4969084))

(assert (not b_lambda!197001))

(assert (not d!1599338))

(assert b_and!348415)

(assert (not b_lambda!196985))

(assert (not bm!346518))

(assert (not d!1599530))

(assert (not b!4968693))

(assert (not bm!346530))

(assert (not b!4968432))

(assert (not bs!1183359))

(assert (not b!4968882))

(assert (not b_lambda!197025))

(assert (not d!1599628))

(assert (not b!4969183))

(assert (not d!1599354))

(assert (not b!4968584))

(assert (not b_lambda!196917))

(assert (not d!1599146))

(assert (not b!4969150))

(assert (not b!4969105))

(assert (not b!4968868))

(assert (not d!1599242))

(assert (not d!1599556))

(assert (not b!4969168))

(assert (not b!4968042))

(assert (not b!4968711))

(assert (not b!4968916))

(assert (not b!4969176))

(assert (not b!4968982))

(assert (not b!4968593))

(assert (not b!4968782))

(assert (not bs!1183360))

(assert (not b!4969072))

(assert (not b!4968456))

(assert (not d!1599550))

(assert (not d!1599148))

(assert (not d!1599606))

(assert (not tb!260831))

(assert (not b!4969004))

(assert (not b!4969076))

(assert (not b!4968360))

(assert (not b!4969177))

(assert (not b!4968981))

(assert (not b!4969212))

(assert (not b!4968726))

(assert (not b!4969074))

(assert (not b!4969020))

(assert (not b!4969149))

(assert (not b!4969044))

(assert (not d!1599500))

(assert (not b!4968411))

(assert (not d!1599130))

(assert (not b!4969033))

(assert (not b!4968671))

(assert b_and!348421)

(assert (not b_lambda!196977))

(assert (not b!4969129))

(assert (not b!4968783))

(assert (not b!4968968))

(assert (not b!4969051))

(assert (not b!4968422))

(assert (not b!4969123))

(assert (not b!4968485))

(assert (not b!4968672))

(assert (not b!4969089))

(assert (not d!1599450))

(assert (not b!4969048))

(assert (not b!4969171))

(assert (not b!4969063))

(assert (not b!4968958))

(assert (not b!4968940))

(assert (not d!1599626))

(assert (not b!4968381))

(assert (not b!4968932))

(assert (not b!4968860))

(assert (not b!4968866))

(assert (not b!4968382))

(assert (not d!1599564))

(assert (not b!4969202))

(assert (not b!4968661))

(assert (not b!4968619))

(assert (not b!4969055))

(assert (not b_lambda!196991))

(assert (not bm!346484))

(assert (not d!1599202))

(assert (not b!4969061))

(assert (not b!4968681))

(assert (not b!4968846))

(assert (not b!4968829))

(assert (not b!4968423))

(assert (not b!4969083))

(assert (not b!4969032))

(assert (not b!4969217))

(assert (not b!4968547))

(assert (not b!4968805))

(assert (not b!4968577))

(assert (not b!4968017))

(assert (not b!4969126))

(assert (not b_lambda!196863))

(assert (not d!1599604))

(assert (not b!4969096))

(assert (not b!4968615))

(assert (not b!4969142))

(assert (not b!4968451))

(assert (not b!4968612))

(assert (not b_lambda!196981))

(assert (not b!4968496))

(assert (not b!4968931))

(assert (not b!4968855))

(assert (not b_lambda!197003))

(assert (not bm!346472))

(assert (not b!4969133))

(assert (not d!1599392))

(assert (not b!4968694))

(assert (not d!1599162))

(assert (not bm!346492))

(assert (not b_lambda!196855))

(assert (not b!4969107))

(assert (not b!4968761))

(assert (not b!4968867))

(assert (not b!4968803))

(assert (not d!1599554))

(assert (not b!4968741))

(assert (not b!4969113))

(assert (not b_lambda!196995))

(assert (not b!4968428))

(assert (not b_lambda!197031))

(assert (not d!1599598))

(assert (not b!4968449))

(assert (not b!4969052))

(assert (not b!4968795))

(assert (not d!1599368))

(assert (not bs!1183362))

(assert (not b!4969144))

(assert (not b!4968440))

(assert (not b_lambda!196989))

(assert (not b!4968858))

(assert (not b!4968722))

(assert (not d!1599152))

(assert (not b!4968850))

(assert (not b!4969037))

(assert (not b!4969180))

(assert (not d!1599292))

(assert (not b!4968971))

(assert (not b!4968813))

(assert (not d!1599434))

(assert (not d!1599346))

(assert (not d!1599432))

(assert (not b!4968479))

(assert b_and!348427)

(assert (not tb!260695))

(assert (not b!4968905))

(assert (not b!4968700))

(assert (not d!1599506))

(assert (not b_lambda!196859))

(assert (not bm!346471))

(assert (not b!4969071))

(assert (not b!4969104))

(assert (not d!1599308))

(assert (not b!4969120))

(assert (not bm!346466))

(assert (not b_lambda!196999))

(assert (not b!4968839))

(assert (not b!4969036))

(assert (not b!4968842))

(assert (not d!1599200))

(assert (not b!4968993))

(assert (not b!4968833))

(assert (not bm!346539))

(assert (not b!4968960))

(assert (not b!4969207))

(assert (not bm!346478))

(assert (not bm!346520))

(assert (not bm!346523))

(assert (not b!4968854))

(assert (not b!4967682))

(assert (not b!4968976))

(assert (not b!4968608))

(assert (not d!1599394))

(assert (not b!4969093))

(assert (not bm!346497))

(assert (not b!4968545))

(assert (not b!4969173))

(assert (not d!1599460))

(assert (not b!4968352))

(assert (not b_lambda!197019))

(assert (not b!4969053))

(assert (not d!1599590))

(assert (not b!4968740))

(assert (not b!4968516))

(assert (not d!1599356))

(assert (not b!4969175))

(assert (not bm!346473))

(assert (not b!4968687))

(assert (not b!4968582))

(assert (not bm!346507))

(assert (not b!4968938))

(assert (not b!4969165))

(assert (not tb!260737))

(assert (not b!4968038))

(assert (not b!4969117))

(assert (not b!4968707))

(assert (not b!4968757))

(assert (not b!4969136))

(assert (not b!4969069))

(assert (not d!1599178))

(assert (not tb!260701))

(assert (not b!4968992))

(assert (not b!4968936))

(assert (not b!4968828))

(assert (not b!4968959))

(assert (not b!4968591))

(assert (not b!4969060))

(assert (not b!4968622))

(assert (not b!4969169))

(assert (not d!1599128))

(assert (not b!4968806))

(assert (not b!4968575))

(assert (not b!4969109))

(assert (not d!1599498))

(assert (not bm!346467))

(assert (not b_lambda!197021))

(assert (not d!1599576))

(assert (not d!1599208))

(assert (not b!4968714))

(assert (not d!1599318))

(assert (not b!4968997))

(assert (not d!1599630))

(assert (not d!1599348))

(assert (not tb!260749))

(assert (not b!4968601))

(assert (not d!1599226))

(assert (not d!1599198))

(assert (not bm!346515))

(assert (not d!1599532))

(assert (not b!4968419))

(assert (not b!4968874))

(assert (not b!4968583))

(assert (not d!1599310))

(assert (not d!1599274))

(assert (not b!4968859))

(assert (not b!4968572))

(assert (not d!1599492))

(assert (not b!4968812))

(assert (not b!4969174))

(assert (not b!4968934))

(assert (not bm!346516))

(assert (not b!4968786))

(assert (not b!4969092))

(assert (not bm!346524))

(assert (not b!4968530))

(assert (not b!4968748))

(assert (not b!4968676))

(assert (not bm!346536))

(assert (not b!4968893))

(assert (not bm!346465))

(assert (not b_lambda!196997))

(assert (not b!4968487))

(assert (not d!1599480))

(assert (not d!1599452))

(assert (not b!4968718))

(assert (not b!4969145))

(assert (not b!4969085))

(assert (not b!4968861))

(assert (not b!4968762))

(assert (not b!4968421))

(assert (not b!4968573))

(assert (not b!4968629))

(assert (not b!4968970))

(assert (not b!4968730))

(assert (not d!1599204))

(assert (not d!1599362))

(assert (not d!1599490))

(assert (not b!4969138))

(assert (not b!4969002))

(assert (not d!1599572))

(assert (not d!1599296))

(assert (not b!4969195))

(assert (not bm!346526))

(assert (not b!4969130))

(assert (not b!4968543))

(assert (not d!1599608))

(assert (not b!4969146))

(assert (not b!4968523))

(assert (not b!4969045))

(assert (not b!4968764))

(assert (not d!1599440))

(assert (not b!4968404))

(assert (not d!1599172))

(assert (not d!1599182))

(assert (not b!4968616))

(assert (not tb!260761))

(assert (not d!1599446))

(assert (not b!4968791))

(assert (not tb!260683))

(assert (not d!1599526))

(assert (not b!4968556))

(assert (not bm!346527))

(assert (not bm!346529))

(assert (not tb!260823))

(assert (not b!4968906))

(assert (not b!4968947))

(assert (not b!4969214))

(assert (not b!4969155))

(assert (not b!4968532))

(assert (not b!4969100))

(assert (not bm!346537))

(assert (not b!4968416))

(assert (not b!4969119))

(assert (not b!4968529))

(assert (not b!4968709))

(assert (not b!4969124))

(assert (not d!1599320))

(assert (not b!4968574))

(assert (not b!4968721))

(assert (not b!4968725))

(assert (not b!4968667))

(assert (not d!1599646))

(assert (not b!4969088))

(assert (not tb!260713))

(assert (not bm!346480))

(assert (not bm!346481))

(assert (not b!4968497))

(assert (not bm!346514))

(assert (not b!4969167))

(assert (not d!1599468))

(assert (not b!4969102))

(assert (not d!1599168))

(assert (not d!1599578))

(assert (not b!4969191))

(assert (not b_next!133583))

(assert (not b_next!133559))

(assert (not d!1599286))

(assert (not bm!346483))

(assert (not b!4968832))

(assert (not d!1599258))

(assert (not d!1599458))

(assert (not b!4969009))

(assert (not b_next!133565))

(assert (not b!4968630))

(assert (not d!1599602))

(assert (not b!4968872))

(assert (not b!4968670))

(assert (not bs!1183358))

(assert (not d!1599212))

(assert (not b_lambda!196983))

(assert (not b!4969043))

(assert (not b!4968525))

(assert (not b!4969118))

(assert (not b_lambda!197011))

(assert (not d!1599264))

(assert (not d!1599538))

(assert (not b!4968720))

(assert (not b!4969077))

(assert (not b!4968870))

(assert (not b_lambda!196915))

(assert (not d!1599166))

(assert (not b!4969199))

(assert (not b!4968863))

(assert (not b!4968502))

(assert (not b!4968736))

(assert (not b!4969068))

(assert (not b!4968733))

(assert (not b!4968398))

(assert (not b!4969073))

(assert (not b!4969114))

(assert (not b!4969196))

(assert (not b!4968613))

(assert (not b!4969059))

(assert (not b!4969161))

(assert (not b!4968773))

(assert (not d!1599144))

(assert (not tb!260689))

(assert (not b!4968493))

(assert (not b!4969007))

(assert (not b_lambda!196949))

(assert (not b!4969140))

(assert (not b!4968913))

(assert (not b!4968406))

(assert (not b!4968594))

(assert (not d!1599344))

(assert (not b!4968399))

(assert (not b!4968826))

(assert (not b!4968864))

(assert (not d!1599122))

(assert (not tb!260767))

(assert (not bm!346528))

(assert (not b_lambda!196913))

(assert (not b!4968844))

(assert (not d!1599570))

(assert (not b!4968818))

(assert (not bm!346470))

(assert (not b_lambda!196979))

(assert (not b!4969154))

(assert (not b!4969056))

(assert (not b!4968606))

(assert (not b!4968723))

(assert (not b!4969160))

(assert (not d!1599384))

(assert (not bm!346464))

(assert (not d!1599232))

(assert (not b_lambda!197027))

(assert (not b!4968668))

(assert (not b!4969027))

(assert (not tb!260773))

(assert (not b!4968996))

(assert (not d!1599164))

(assert (not d!1599552))

(assert (not d!1599120))

(assert (not b!4968596))

(assert (not tb!260743))

(assert (not d!1599412))

(assert (not b!4968904))

(assert (not b!4968712))

(assert (not d!1599596))

(assert (not b!4968513))

(assert (not b!4968716))

(assert (not b_lambda!196861))

(assert (not b!4968838))

(assert (not b!4968597))

(assert (not b!4969087))

(assert (not d!1599340))

(assert (not d!1599250))

(assert (not bm!346482))

(assert (not b!4969134))

(assert (not b!4969101))

(assert (not b!4968935))

(assert (not d!1599116))

(assert (not b!4969185))

(assert (not d!1599560))

(assert (not b!4968366))

(assert (not b!4969057))

(assert (not b!4968878))

(assert (not d!1599632))

(assert (not b!4969132))

(assert (not b!4968553))

(assert (not b_lambda!196853))

(assert (not bm!346506))

(assert (not b!4969208))

(assert (not bm!346521))

(assert (not b!4968690))

(assert (not b!4968902))

(assert (not b!4969152))

(assert (not d!1599302))

(assert (not b!4968881))

(assert (not b!4968865))

(assert (not bm!346474))

(assert (not b!4968974))

(assert b_and!348423)

(assert (not b!4968609))

(assert (not d!1599126))

(assert (not b!4969164))

(assert (not d!1599586))

(assert (not b!4968767))

(assert (not b!4968413))

(assert (not b!4968937))

(assert (not bm!346532))

(assert (not d!1599398))

(assert (not d!1599352))

(assert (not bm!346525))

(assert (not b!4969147))

(assert (not bm!346531))

(assert (not d!1599332))

(assert (not b!4968808))

(assert (not bm!346517))

(assert (not b!4968822))

(assert (not b!4968418))

(assert (not b!4969081))

(assert (not d!1599420))

(assert (not b!4969106))

(assert (not b!4968394))

(assert (not b!4968379))

(assert (not b!4969065))

(assert (not b!4968955))

(assert (not b!4968975))

(assert (not b!4968988))

(assert (not b!4969115))

(assert (not b!4968841))

(assert (not b!4968909))

(assert (not b!4968774))

(assert (not d!1599438))

(assert (not b!4969098))

(assert (not d!1599488))

(assert (not b!4968928))

(assert (not d!1599108))

(assert (not b!4968388))

(assert (not bm!346477))

(assert (not b!4969218))

(assert (not b!4969025))

(assert (not d!1599456))

(assert (not bm!346476))

(assert (not b!4968920))

(assert (not b!4968695))

(assert (not tb!260725))

(assert (not b!4968528))

(assert (not b!4968977))

(assert (not d!1599634))

(assert (not b_lambda!196969))

(assert (not b!4968589))

(assert (not b_next!133581))

(assert (not b!4969122))

(assert (not b!4968950))

(assert (not b!4968389))

(assert (not d!1599474))

(assert (not d!1599342))

(assert (not b!4969128))

(assert (not d!1599406))

(assert (not b!4968944))

(assert (not b_lambda!197015))

(assert (not b!4968966))

(assert (not b!4968350))

(assert (not b!4968518))

(assert (not b!4968889))

(assert (not b!4968991))

(assert (not b!4968941))

(assert (not d!1599196))

(assert (not b_next!133557))

(assert (not b!4968684))

(assert (not b!4968576))

(assert (not b!4968702))

(assert (not b!4968384))

(assert (not b_lambda!196987))

(assert (not b!4968897))

(assert (not bm!346479))

(assert (not b_lambda!197017))

(assert (not b_lambda!196967))

(assert (not b!4968431))

(assert (not b!4968873))

(assert (not d!1599238))

(assert (not b!4968679))

(assert (not b!4968953))

(assert (not d!1599502))

(assert (not b!4968875))

(assert (not b!4968552))

(assert (not b!4968370))

(assert (not b!4968908))

(assert (not d!1599112))

(assert (not b!4968675))

(assert (not b!4968921))

(assert (not b!4968611))

(assert (not b!4969137))

(assert (not b!4968415))

(assert (not b!4969206))

(assert (not b_lambda!197013))

(assert (not b!4969197))

(assert b_and!348429)

(assert (not d!1599548))

(assert (not b!4968548))

(assert (not b!4968580))

(assert (not b!4969172))

(assert (not b!4969192))

(assert (not b!4968669))

(assert (not bm!346494))

(assert tp_is_empty!36333)

(assert (not tb!260707))

(assert (not b!4968835))

(assert (not b!4968776))

(assert (not b!4968688))

(assert (not b!4968512))

(assert (not d!1599174))

(assert (not b!4968799))

(assert (not b_lambda!196911))

(assert (not b!4969082))

(assert (not b!4968811))

(assert (not b!4969211))

(assert (not d!1599404))

(assert (not d!1599648))

(assert (not b!4969001))

(assert (not b!4968571))

(assert (not d!1599350))

(assert (not d!1599622))

(assert (not b!4968770))

(assert (not d!1599360))

(assert (not b!4968724))

(assert (not b!4968043))

(assert (not b!4968527))

(assert (not d!1599600))

(assert (not b_lambda!197007))

(assert (not b!4968517))

(assert (not b!4969078))

(assert (not b!4969125))

(assert (not b!4968879))

(assert (not b!4968535))

(assert (not bm!346475))

(assert (not b_next!133575))

(assert (not b!4968581))

(assert (not b_lambda!197029))

(assert (not bm!346510))

(assert (not b!4968420))

(assert (not b!4968830))

(assert (not b!4968972))

(assert (not b_lambda!196919))

(assert (not b!4968426))

(assert (not b!4968533))

(assert (not b!4969215))

(assert b_and!348425)

(assert (not d!1599186))

(assert (not d!1599158))

(assert (not bm!346469))

(assert (not b!4968541))

(assert (not d!1599588))

(assert (not bm!346468))

(assert (not b!4968628))

(assert (not bm!346538))

(assert (not b!4968999))

(assert (not b!4969099))

(assert (not b!4969067))

(assert (not b!4968876))

(assert (not d!1599380))

(assert (not b!4968488))

(assert (not b!4968704))

(assert (not d!1599514))

(assert (not b!4969097))

(assert (not d!1599216))

(assert (not b!4968896))

(assert (not d!1599654))

(assert (not b!4969201))

(assert (not d!1599372))

(assert (not b!4969203))

(assert (not b!4968625))

(assert (not b!4969121))

(assert (not b!4969080))

(assert (not b!4968387))

(assert (not b!4969095))

(assert (not b!4968401))

(assert (not bm!346512))

(assert (not b!4969184))

(assert (not b!4968772))

(assert (not b!4969193))

(check-sat)

(pop 1)

(push 1)

(assert b_and!348417)

(assert (not b_next!133573))

(assert b_and!348415)

(assert b_and!348421)

(assert b_and!348427)

(assert b_and!348423)

(assert b_and!348429)

(assert b_and!348419)

(assert (not b_next!133567))

(assert (not b_next!133559))

(assert (not b_next!133565))

(assert (not b_next!133583))

(assert (not b_next!133581))

(assert (not b_next!133557))

(assert (not b_next!133575))

(assert b_and!348425)

(check-sat)

(pop 1)


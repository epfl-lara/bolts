; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!522508 () Bool)

(assert start!522508)

(declare-fun b!4957071 () Bool)

(declare-fun b_free!132331 () Bool)

(declare-fun b_next!133121 () Bool)

(assert (=> b!4957071 (= b_free!132331 (not b_next!133121))))

(declare-fun tp!1390187 () Bool)

(declare-fun b_and!347183 () Bool)

(assert (=> b!4957071 (= tp!1390187 b_and!347183)))

(declare-fun b_free!132333 () Bool)

(declare-fun b_next!133123 () Bool)

(assert (=> b!4957071 (= b_free!132333 (not b_next!133123))))

(declare-fun tp!1390186 () Bool)

(declare-fun b_and!347185 () Bool)

(assert (=> b!4957071 (= tp!1390186 b_and!347185)))

(declare-fun e!3097771 () Bool)

(declare-datatypes ((List!57367 0))(
  ( (Nil!57243) (Cons!57243 (h!63691 (_ BitVec 16)) (t!367933 List!57367)) )
))
(declare-datatypes ((TokenValue!8637 0))(
  ( (FloatLiteralValue!17274 (text!60904 List!57367)) (TokenValueExt!8636 (__x!34567 Int)) (Broken!43185 (value!266737 List!57367)) (Object!8760) (End!8637) (Def!8637) (Underscore!8637) (Match!8637) (Else!8637) (Error!8637) (Case!8637) (If!8637) (Extends!8637) (Abstract!8637) (Class!8637) (Val!8637) (DelimiterValue!17274 (del!8697 List!57367)) (KeywordValue!8643 (value!266738 List!57367)) (CommentValue!17274 (value!266739 List!57367)) (WhitespaceValue!17274 (value!266740 List!57367)) (IndentationValue!8637 (value!266741 List!57367)) (String!65060) (Int32!8637) (Broken!43186 (value!266742 List!57367)) (Boolean!8638) (Unit!148137) (OperatorValue!8640 (op!8697 List!57367)) (IdentifierValue!17274 (value!266743 List!57367)) (IdentifierValue!17275 (value!266744 List!57367)) (WhitespaceValue!17275 (value!266745 List!57367)) (True!17274) (False!17274) (Broken!43187 (value!266746 List!57367)) (Broken!43188 (value!266747 List!57367)) (True!17275) (RightBrace!8637) (RightBracket!8637) (Colon!8637) (Null!8637) (Comma!8637) (LeftBracket!8637) (False!17275) (LeftBrace!8637) (ImaginaryLiteralValue!8637 (text!60905 List!57367)) (StringLiteralValue!25911 (value!266748 List!57367)) (EOFValue!8637 (value!266749 List!57367)) (IdentValue!8637 (value!266750 List!57367)) (DelimiterValue!17275 (value!266751 List!57367)) (DedentValue!8637 (value!266752 List!57367)) (NewLineValue!8637 (value!266753 List!57367)) (IntegerValue!25911 (value!266754 (_ BitVec 32)) (text!60906 List!57367)) (IntegerValue!25912 (value!266755 Int) (text!60907 List!57367)) (Times!8637) (Or!8637) (Equal!8637) (Minus!8637) (Broken!43189 (value!266756 List!57367)) (And!8637) (Div!8637) (LessEqual!8637) (Mod!8637) (Concat!22197) (Not!8637) (Plus!8637) (SpaceValue!8637 (value!266757 List!57367)) (IntegerValue!25913 (value!266758 Int) (text!60908 List!57367)) (StringLiteralValue!25912 (text!60909 List!57367)) (FloatLiteralValue!17275 (text!60910 List!57367)) (BytesLiteralValue!8637 (value!266759 List!57367)) (CommentValue!17275 (value!266760 List!57367)) (StringLiteralValue!25913 (value!266761 List!57367)) (ErrorTokenValue!8637 (msg!8698 List!57367)) )
))
(declare-datatypes ((C!27370 0))(
  ( (C!27371 (val!23051 Int)) )
))
(declare-datatypes ((List!57368 0))(
  ( (Nil!57244) (Cons!57244 (h!63692 C!27370) (t!367934 List!57368)) )
))
(declare-datatypes ((IArray!30219 0))(
  ( (IArray!30220 (innerList!15167 List!57368)) )
))
(declare-datatypes ((Regex!13560 0))(
  ( (ElementMatch!13560 (c!846220 C!27370)) (Concat!22198 (regOne!27632 Regex!13560) (regTwo!27632 Regex!13560)) (EmptyExpr!13560) (Star!13560 (reg!13889 Regex!13560)) (EmptyLang!13560) (Union!13560 (regOne!27633 Regex!13560) (regTwo!27633 Regex!13560)) )
))
(declare-datatypes ((String!65061 0))(
  ( (String!65062 (value!266762 String)) )
))
(declare-datatypes ((Conc!15079 0))(
  ( (Node!15079 (left!41749 Conc!15079) (right!42079 Conc!15079) (csize!30388 Int) (cheight!15290 Int)) (Leaf!25068 (xs!18405 IArray!30219) (csize!30389 Int)) (Empty!15079) )
))
(declare-datatypes ((BalanceConc!29588 0))(
  ( (BalanceConc!29589 (c!846221 Conc!15079)) )
))
(declare-datatypes ((TokenValueInjection!16582 0))(
  ( (TokenValueInjection!16583 (toValue!11278 Int) (toChars!11137 Int)) )
))
(declare-datatypes ((Rule!16454 0))(
  ( (Rule!16455 (regex!8327 Regex!13560) (tag!9191 String!65061) (isSeparator!8327 Bool) (transformation!8327 TokenValueInjection!16582)) )
))
(declare-datatypes ((List!57369 0))(
  ( (Nil!57245) (Cons!57245 (h!63693 Rule!16454) (t!367935 List!57369)) )
))
(declare-fun rulesArg!259 () List!57369)

(declare-fun tp!1390183 () Bool)

(declare-fun e!3097776 () Bool)

(declare-fun b!4957067 () Bool)

(declare-fun inv!74689 (String!65061) Bool)

(declare-fun inv!74692 (TokenValueInjection!16582) Bool)

(assert (=> b!4957067 (= e!3097771 (and tp!1390183 (inv!74689 (tag!9191 (h!63693 rulesArg!259))) (inv!74692 (transformation!8327 (h!63693 rulesArg!259))) e!3097776))))

(declare-fun b!4957068 () Bool)

(declare-fun e!3097777 () Bool)

(declare-datatypes ((Token!15154 0))(
  ( (Token!15155 (value!266763 TokenValue!8637) (rule!11545 Rule!16454) (size!37953 Int) (originalCharacters!8608 List!57368)) )
))
(declare-datatypes ((tuple2!61832 0))(
  ( (tuple2!61833 (_1!34219 Token!15154) (_2!34219 BalanceConc!29588)) )
))
(declare-fun lt!2046064 () tuple2!61832)

(declare-datatypes ((tuple2!61834 0))(
  ( (tuple2!61835 (_1!34220 Token!15154) (_2!34220 List!57368)) )
))
(declare-fun lt!2046068 () tuple2!61834)

(declare-fun list!18270 (BalanceConc!29588) List!57368)

(assert (=> b!4957068 (= e!3097777 (not (= (list!18270 (_2!34219 lt!2046064)) (_2!34220 lt!2046068))))))

(declare-fun b!4957069 () Bool)

(declare-fun e!3097774 () Bool)

(declare-fun e!3097784 () Bool)

(assert (=> b!4957069 (= e!3097774 e!3097784)))

(declare-fun res!2115175 () Bool)

(assert (=> b!4957069 (=> (not res!2115175) (not e!3097784))))

(declare-fun lt!2046065 () List!57368)

(declare-fun totalInput!464 () BalanceConc!29588)

(declare-fun isSuffix!1126 (List!57368 List!57368) Bool)

(assert (=> b!4957069 (= res!2115175 (isSuffix!1126 lt!2046065 (list!18270 totalInput!464)))))

(declare-fun input!1342 () BalanceConc!29588)

(assert (=> b!4957069 (= lt!2046065 (list!18270 input!1342))))

(declare-fun b!4957070 () Bool)

(declare-fun res!2115177 () Bool)

(assert (=> b!4957070 (=> (not res!2115177) (not e!3097774))))

(declare-fun isEmpty!30775 (List!57369) Bool)

(assert (=> b!4957070 (= res!2115177 (not (isEmpty!30775 rulesArg!259)))))

(assert (=> b!4957071 (= e!3097776 (and tp!1390187 tp!1390186))))

(declare-fun b!4957072 () Bool)

(declare-fun e!3097783 () Bool)

(declare-fun tp!1390185 () Bool)

(declare-fun inv!74693 (Conc!15079) Bool)

(assert (=> b!4957072 (= e!3097783 (and (inv!74693 (c!846221 input!1342)) tp!1390185))))

(declare-fun b!4957073 () Bool)

(declare-fun res!2115179 () Bool)

(declare-fun e!3097781 () Bool)

(assert (=> b!4957073 (=> res!2115179 e!3097781)))

(declare-fun lt!2046063 () Bool)

(assert (=> b!4957073 (= res!2115179 lt!2046063)))

(declare-fun b!4957074 () Bool)

(declare-fun e!3097778 () Bool)

(declare-fun tp!1390188 () Bool)

(assert (=> b!4957074 (= e!3097778 (and e!3097771 tp!1390188))))

(declare-fun b!4957075 () Bool)

(declare-fun e!3097773 () Bool)

(declare-fun e!3097779 () Bool)

(assert (=> b!4957075 (= e!3097773 e!3097779)))

(declare-fun res!2115183 () Bool)

(assert (=> b!4957075 (=> res!2115183 e!3097779)))

(declare-fun lt!2046072 () Bool)

(declare-datatypes ((Option!14323 0))(
  ( (None!14322) (Some!14322 (v!50307 tuple2!61834)) )
))
(declare-fun lt!2046070 () Option!14323)

(declare-fun isDefined!11250 (Option!14323) Bool)

(assert (=> b!4957075 (= res!2115183 (not (= lt!2046072 (isDefined!11250 lt!2046070))))))

(declare-datatypes ((Option!14324 0))(
  ( (None!14323) (Some!14323 (v!50308 tuple2!61832)) )
))
(declare-fun lt!2046066 () Option!14324)

(declare-fun isDefined!11251 (Option!14324) Bool)

(assert (=> b!4957075 (= lt!2046072 (isDefined!11251 lt!2046066))))

(declare-datatypes ((LexerInterface!7919 0))(
  ( (LexerInterfaceExt!7916 (__x!34568 Int)) (Lexer!7917) )
))
(declare-fun thiss!15247 () LexerInterface!7919)

(declare-fun maxPrefixZipper!724 (LexerInterface!7919 List!57369 List!57368) Option!14323)

(assert (=> b!4957075 (= lt!2046070 (maxPrefixZipper!724 thiss!15247 rulesArg!259 lt!2046065))))

(declare-fun b!4957076 () Bool)

(declare-fun e!3097775 () Bool)

(assert (=> b!4957076 (= e!3097775 e!3097777)))

(declare-fun res!2115182 () Bool)

(assert (=> b!4957076 (=> res!2115182 e!3097777)))

(assert (=> b!4957076 (= res!2115182 (not (= (_1!34219 lt!2046064) (_1!34220 lt!2046068))))))

(declare-fun get!19811 (Option!14323) tuple2!61834)

(assert (=> b!4957076 (= lt!2046068 (get!19811 lt!2046070))))

(declare-fun get!19812 (Option!14324) tuple2!61832)

(assert (=> b!4957076 (= lt!2046064 (get!19812 lt!2046066))))

(declare-fun b!4957077 () Bool)

(declare-fun e!3097772 () Bool)

(declare-fun lt!2046067 () Option!14323)

(assert (=> b!4957077 (= e!3097772 (isDefined!11250 lt!2046067))))

(declare-fun b!4957078 () Bool)

(declare-fun e!3097770 () Bool)

(declare-fun tp!1390184 () Bool)

(assert (=> b!4957078 (= e!3097770 (and (inv!74693 (c!846221 totalInput!464)) tp!1390184))))

(declare-fun b!4957079 () Bool)

(assert (=> b!4957079 (= e!3097781 e!3097772)))

(declare-fun res!2115173 () Bool)

(assert (=> b!4957079 (=> res!2115173 e!3097772)))

(assert (=> b!4957079 (= res!2115173 (not (= (_1!34219 (get!19812 lt!2046066)) (_1!34220 (get!19811 lt!2046067)))))))

(declare-fun maxPrefix!4630 (LexerInterface!7919 List!57369 List!57368) Option!14323)

(assert (=> b!4957079 (= lt!2046067 (maxPrefix!4630 thiss!15247 rulesArg!259 lt!2046065))))

(declare-fun b!4957080 () Bool)

(declare-fun res!2115174 () Bool)

(assert (=> b!4957080 (=> (not res!2115174) (not e!3097774))))

(declare-fun rulesValidInductive!3230 (LexerInterface!7919 List!57369) Bool)

(assert (=> b!4957080 (= res!2115174 (rulesValidInductive!3230 thiss!15247 rulesArg!259))))

(declare-fun b!4957081 () Bool)

(declare-fun e!3097782 () Bool)

(assert (=> b!4957081 (= e!3097784 (not e!3097782))))

(declare-fun res!2115180 () Bool)

(assert (=> b!4957081 (=> res!2115180 e!3097782)))

(assert (=> b!4957081 (= res!2115180 (or (and (is-Cons!57245 rulesArg!259) (is-Nil!57245 (t!367935 rulesArg!259))) (not (is-Cons!57245 rulesArg!259))))))

(declare-fun isPrefix!5180 (List!57368 List!57368) Bool)

(assert (=> b!4957081 (isPrefix!5180 lt!2046065 lt!2046065)))

(declare-datatypes ((Unit!148138 0))(
  ( (Unit!148139) )
))
(declare-fun lt!2046071 () Unit!148138)

(declare-fun lemmaIsPrefixRefl!3504 (List!57368 List!57368) Unit!148138)

(assert (=> b!4957081 (= lt!2046071 (lemmaIsPrefixRefl!3504 lt!2046065 lt!2046065))))

(declare-fun b!4957083 () Bool)

(assert (=> b!4957083 (= e!3097779 e!3097781)))

(declare-fun res!2115176 () Bool)

(assert (=> b!4957083 (=> res!2115176 e!3097781)))

(assert (=> b!4957083 (= res!2115176 e!3097775)))

(declare-fun res!2115178 () Bool)

(assert (=> b!4957083 (=> (not res!2115178) (not e!3097775))))

(assert (=> b!4957083 (= res!2115178 (not lt!2046063))))

(assert (=> b!4957083 (= lt!2046063 (not lt!2046072))))

(declare-fun res!2115184 () Bool)

(assert (=> start!522508 (=> (not res!2115184) (not e!3097774))))

(assert (=> start!522508 (= res!2115184 (is-Lexer!7917 thiss!15247))))

(assert (=> start!522508 e!3097774))

(assert (=> start!522508 true))

(assert (=> start!522508 e!3097778))

(declare-fun inv!74694 (BalanceConc!29588) Bool)

(assert (=> start!522508 (and (inv!74694 input!1342) e!3097783)))

(assert (=> start!522508 (and (inv!74694 totalInput!464) e!3097770)))

(declare-fun b!4957082 () Bool)

(assert (=> b!4957082 (= e!3097782 e!3097773)))

(declare-fun res!2115181 () Bool)

(assert (=> b!4957082 (=> res!2115181 e!3097773)))

(declare-fun lt!2046069 () Option!14324)

(assert (=> b!4957082 (= res!2115181 (or (and (is-None!14323 lt!2046066) (is-None!14323 lt!2046069)) (not (is-None!14323 lt!2046069))))))

(declare-fun maxPrefixZipperSequenceV2!658 (LexerInterface!7919 List!57369 BalanceConc!29588 BalanceConc!29588) Option!14324)

(assert (=> b!4957082 (= lt!2046069 (maxPrefixZipperSequenceV2!658 thiss!15247 (t!367935 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!311 (LexerInterface!7919 Rule!16454 BalanceConc!29588 BalanceConc!29588) Option!14324)

(assert (=> b!4957082 (= lt!2046066 (maxPrefixOneRuleZipperSequenceV2!311 thiss!15247 (h!63693 rulesArg!259) input!1342 totalInput!464))))

(assert (= (and start!522508 res!2115184) b!4957080))

(assert (= (and b!4957080 res!2115174) b!4957070))

(assert (= (and b!4957070 res!2115177) b!4957069))

(assert (= (and b!4957069 res!2115175) b!4957081))

(assert (= (and b!4957081 (not res!2115180)) b!4957082))

(assert (= (and b!4957082 (not res!2115181)) b!4957075))

(assert (= (and b!4957075 (not res!2115183)) b!4957083))

(assert (= (and b!4957083 res!2115178) b!4957076))

(assert (= (and b!4957076 (not res!2115182)) b!4957068))

(assert (= (and b!4957083 (not res!2115176)) b!4957073))

(assert (= (and b!4957073 (not res!2115179)) b!4957079))

(assert (= (and b!4957079 (not res!2115173)) b!4957077))

(assert (= b!4957067 b!4957071))

(assert (= b!4957074 b!4957067))

(assert (= (and start!522508 (is-Cons!57245 rulesArg!259)) b!4957074))

(assert (= start!522508 b!4957072))

(assert (= start!522508 b!4957078))

(declare-fun m!5981632 () Bool)

(assert (=> b!4957081 m!5981632))

(declare-fun m!5981634 () Bool)

(assert (=> b!4957081 m!5981634))

(declare-fun m!5981636 () Bool)

(assert (=> b!4957082 m!5981636))

(declare-fun m!5981638 () Bool)

(assert (=> b!4957082 m!5981638))

(declare-fun m!5981640 () Bool)

(assert (=> b!4957069 m!5981640))

(assert (=> b!4957069 m!5981640))

(declare-fun m!5981642 () Bool)

(assert (=> b!4957069 m!5981642))

(declare-fun m!5981644 () Bool)

(assert (=> b!4957069 m!5981644))

(declare-fun m!5981646 () Bool)

(assert (=> b!4957080 m!5981646))

(declare-fun m!5981648 () Bool)

(assert (=> b!4957068 m!5981648))

(declare-fun m!5981650 () Bool)

(assert (=> b!4957077 m!5981650))

(declare-fun m!5981652 () Bool)

(assert (=> start!522508 m!5981652))

(declare-fun m!5981654 () Bool)

(assert (=> start!522508 m!5981654))

(declare-fun m!5981656 () Bool)

(assert (=> b!4957075 m!5981656))

(declare-fun m!5981658 () Bool)

(assert (=> b!4957075 m!5981658))

(declare-fun m!5981660 () Bool)

(assert (=> b!4957075 m!5981660))

(declare-fun m!5981662 () Bool)

(assert (=> b!4957067 m!5981662))

(declare-fun m!5981664 () Bool)

(assert (=> b!4957067 m!5981664))

(declare-fun m!5981666 () Bool)

(assert (=> b!4957076 m!5981666))

(declare-fun m!5981668 () Bool)

(assert (=> b!4957076 m!5981668))

(assert (=> b!4957079 m!5981668))

(declare-fun m!5981670 () Bool)

(assert (=> b!4957079 m!5981670))

(declare-fun m!5981672 () Bool)

(assert (=> b!4957079 m!5981672))

(declare-fun m!5981674 () Bool)

(assert (=> b!4957078 m!5981674))

(declare-fun m!5981676 () Bool)

(assert (=> b!4957070 m!5981676))

(declare-fun m!5981678 () Bool)

(assert (=> b!4957072 m!5981678))

(push 1)

(assert (not b!4957074))

(assert (not b!4957069))

(assert (not b!4957076))

(assert (not b!4957079))

(assert (not b!4957070))

(assert (not b!4957080))

(assert (not b!4957075))

(assert (not b_next!133121))

(assert b_and!347183)

(assert (not b!4957078))

(assert (not b!4957082))

(assert (not b!4957077))

(assert b_and!347185)

(assert (not b!4957081))

(assert (not b!4957072))

(assert (not start!522508))

(assert (not b!4957067))

(assert (not b!4957068))

(assert (not b_next!133123))

(check-sat)

(pop 1)

(push 1)

(assert b_and!347183)

(assert b_and!347185)

(assert (not b_next!133121))

(assert (not b_next!133123))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1595697 () Bool)

(declare-fun e!3097832 () Bool)

(assert (=> d!1595697 e!3097832))

(declare-fun res!2115236 () Bool)

(assert (=> d!1595697 (=> res!2115236 e!3097832)))

(declare-fun lt!2046105 () Bool)

(assert (=> d!1595697 (= res!2115236 (not lt!2046105))))

(declare-fun drop!2325 (List!57368 Int) List!57368)

(declare-fun size!37955 (List!57368) Int)

(assert (=> d!1595697 (= lt!2046105 (= lt!2046065 (drop!2325 (list!18270 totalInput!464) (- (size!37955 (list!18270 totalInput!464)) (size!37955 lt!2046065)))))))

(assert (=> d!1595697 (= (isSuffix!1126 lt!2046065 (list!18270 totalInput!464)) lt!2046105)))

(declare-fun b!4957137 () Bool)

(assert (=> b!4957137 (= e!3097832 (>= (size!37955 (list!18270 totalInput!464)) (size!37955 lt!2046065)))))

(assert (= (and d!1595697 (not res!2115236)) b!4957137))

(assert (=> d!1595697 m!5981640))

(declare-fun m!5981728 () Bool)

(assert (=> d!1595697 m!5981728))

(declare-fun m!5981730 () Bool)

(assert (=> d!1595697 m!5981730))

(assert (=> d!1595697 m!5981640))

(declare-fun m!5981732 () Bool)

(assert (=> d!1595697 m!5981732))

(assert (=> b!4957137 m!5981640))

(assert (=> b!4957137 m!5981728))

(assert (=> b!4957137 m!5981730))

(assert (=> b!4957069 d!1595697))

(declare-fun d!1595699 () Bool)

(declare-fun list!18272 (Conc!15079) List!57368)

(assert (=> d!1595699 (= (list!18270 totalInput!464) (list!18272 (c!846221 totalInput!464)))))

(declare-fun bs!1182557 () Bool)

(assert (= bs!1182557 d!1595699))

(declare-fun m!5981734 () Bool)

(assert (=> bs!1182557 m!5981734))

(assert (=> b!4957069 d!1595699))

(declare-fun d!1595701 () Bool)

(assert (=> d!1595701 (= (list!18270 input!1342) (list!18272 (c!846221 input!1342)))))

(declare-fun bs!1182558 () Bool)

(assert (= bs!1182558 d!1595701))

(declare-fun m!5981736 () Bool)

(assert (=> bs!1182558 m!5981736))

(assert (=> b!4957069 d!1595701))

(declare-fun d!1595703 () Bool)

(assert (=> d!1595703 true))

(declare-fun lt!2046131 () Bool)

(declare-fun lambda!247119 () Int)

(declare-fun forall!13303 (List!57369 Int) Bool)

(assert (=> d!1595703 (= lt!2046131 (forall!13303 rulesArg!259 lambda!247119))))

(declare-fun e!3097859 () Bool)

(assert (=> d!1595703 (= lt!2046131 e!3097859)))

(declare-fun res!2115260 () Bool)

(assert (=> d!1595703 (=> res!2115260 e!3097859)))

(assert (=> d!1595703 (= res!2115260 (not (is-Cons!57245 rulesArg!259)))))

(assert (=> d!1595703 (= (rulesValidInductive!3230 thiss!15247 rulesArg!259) lt!2046131)))

(declare-fun b!4957173 () Bool)

(declare-fun e!3097860 () Bool)

(assert (=> b!4957173 (= e!3097859 e!3097860)))

(declare-fun res!2115261 () Bool)

(assert (=> b!4957173 (=> (not res!2115261) (not e!3097860))))

(declare-fun ruleValid!3777 (LexerInterface!7919 Rule!16454) Bool)

(assert (=> b!4957173 (= res!2115261 (ruleValid!3777 thiss!15247 (h!63693 rulesArg!259)))))

(declare-fun b!4957174 () Bool)

(assert (=> b!4957174 (= e!3097860 (rulesValidInductive!3230 thiss!15247 (t!367935 rulesArg!259)))))

(assert (= (and d!1595703 (not res!2115260)) b!4957173))

(assert (= (and b!4957173 res!2115261) b!4957174))

(declare-fun m!5981762 () Bool)

(assert (=> d!1595703 m!5981762))

(declare-fun m!5981764 () Bool)

(assert (=> b!4957173 m!5981764))

(declare-fun m!5981766 () Bool)

(assert (=> b!4957174 m!5981766))

(assert (=> b!4957080 d!1595703))

(declare-fun d!1595725 () Bool)

(declare-fun c!846233 () Bool)

(assert (=> d!1595725 (= c!846233 (is-Node!15079 (c!846221 totalInput!464)))))

(declare-fun e!3097865 () Bool)

(assert (=> d!1595725 (= (inv!74693 (c!846221 totalInput!464)) e!3097865)))

(declare-fun b!4957183 () Bool)

(declare-fun inv!74698 (Conc!15079) Bool)

(assert (=> b!4957183 (= e!3097865 (inv!74698 (c!846221 totalInput!464)))))

(declare-fun b!4957184 () Bool)

(declare-fun e!3097866 () Bool)

(assert (=> b!4957184 (= e!3097865 e!3097866)))

(declare-fun res!2115264 () Bool)

(assert (=> b!4957184 (= res!2115264 (not (is-Leaf!25068 (c!846221 totalInput!464))))))

(assert (=> b!4957184 (=> res!2115264 e!3097866)))

(declare-fun b!4957185 () Bool)

(declare-fun inv!74699 (Conc!15079) Bool)

(assert (=> b!4957185 (= e!3097866 (inv!74699 (c!846221 totalInput!464)))))

(assert (= (and d!1595725 c!846233) b!4957183))

(assert (= (and d!1595725 (not c!846233)) b!4957184))

(assert (= (and b!4957184 (not res!2115264)) b!4957185))

(declare-fun m!5981768 () Bool)

(assert (=> b!4957183 m!5981768))

(declare-fun m!5981770 () Bool)

(assert (=> b!4957185 m!5981770))

(assert (=> b!4957078 d!1595725))

(declare-fun d!1595727 () Bool)

(assert (=> d!1595727 (= (get!19812 lt!2046066) (v!50308 lt!2046066))))

(assert (=> b!4957079 d!1595727))

(declare-fun d!1595729 () Bool)

(assert (=> d!1595729 (= (get!19811 lt!2046067) (v!50307 lt!2046067))))

(assert (=> b!4957079 d!1595729))

(declare-fun bm!345902 () Bool)

(declare-fun call!345907 () Option!14323)

(declare-fun maxPrefixOneRule!3605 (LexerInterface!7919 Rule!16454 List!57368) Option!14323)

(assert (=> bm!345902 (= call!345907 (maxPrefixOneRule!3605 thiss!15247 (h!63693 rulesArg!259) lt!2046065))))

(declare-fun b!4957204 () Bool)

(declare-fun e!3097873 () Option!14323)

(declare-fun lt!2046142 () Option!14323)

(declare-fun lt!2046143 () Option!14323)

(assert (=> b!4957204 (= e!3097873 (ite (and (is-None!14322 lt!2046142) (is-None!14322 lt!2046143)) None!14322 (ite (is-None!14322 lt!2046143) lt!2046142 (ite (is-None!14322 lt!2046142) lt!2046143 (ite (>= (size!37953 (_1!34220 (v!50307 lt!2046142))) (size!37953 (_1!34220 (v!50307 lt!2046143)))) lt!2046142 lt!2046143)))))))

(assert (=> b!4957204 (= lt!2046142 call!345907)))

(assert (=> b!4957204 (= lt!2046143 (maxPrefix!4630 thiss!15247 (t!367935 rulesArg!259) lt!2046065))))

(declare-fun b!4957205 () Bool)

(declare-fun res!2115280 () Bool)

(declare-fun e!3097874 () Bool)

(assert (=> b!4957205 (=> (not res!2115280) (not e!3097874))))

(declare-fun lt!2046146 () Option!14323)

(declare-fun ++!12510 (List!57368 List!57368) List!57368)

(declare-fun charsOf!5415 (Token!15154) BalanceConc!29588)

(assert (=> b!4957205 (= res!2115280 (= (++!12510 (list!18270 (charsOf!5415 (_1!34220 (get!19811 lt!2046146)))) (_2!34220 (get!19811 lt!2046146))) lt!2046065))))

(declare-fun b!4957206 () Bool)

(declare-fun res!2115283 () Bool)

(assert (=> b!4957206 (=> (not res!2115283) (not e!3097874))))

(declare-fun matchR!6612 (Regex!13560 List!57368) Bool)

(assert (=> b!4957206 (= res!2115283 (matchR!6612 (regex!8327 (rule!11545 (_1!34220 (get!19811 lt!2046146)))) (list!18270 (charsOf!5415 (_1!34220 (get!19811 lt!2046146))))))))

(declare-fun b!4957207 () Bool)

(declare-fun res!2115279 () Bool)

(assert (=> b!4957207 (=> (not res!2115279) (not e!3097874))))

(assert (=> b!4957207 (= res!2115279 (= (list!18270 (charsOf!5415 (_1!34220 (get!19811 lt!2046146)))) (originalCharacters!8608 (_1!34220 (get!19811 lt!2046146)))))))

(declare-fun b!4957208 () Bool)

(declare-fun e!3097875 () Bool)

(assert (=> b!4957208 (= e!3097875 e!3097874)))

(declare-fun res!2115285 () Bool)

(assert (=> b!4957208 (=> (not res!2115285) (not e!3097874))))

(assert (=> b!4957208 (= res!2115285 (isDefined!11250 lt!2046146))))

(declare-fun d!1595731 () Bool)

(assert (=> d!1595731 e!3097875))

(declare-fun res!2115282 () Bool)

(assert (=> d!1595731 (=> res!2115282 e!3097875)))

(declare-fun isEmpty!30777 (Option!14323) Bool)

(assert (=> d!1595731 (= res!2115282 (isEmpty!30777 lt!2046146))))

(assert (=> d!1595731 (= lt!2046146 e!3097873)))

(declare-fun c!846236 () Bool)

(assert (=> d!1595731 (= c!846236 (and (is-Cons!57245 rulesArg!259) (is-Nil!57245 (t!367935 rulesArg!259))))))

(declare-fun lt!2046144 () Unit!148138)

(declare-fun lt!2046145 () Unit!148138)

(assert (=> d!1595731 (= lt!2046144 lt!2046145)))

(assert (=> d!1595731 (isPrefix!5180 lt!2046065 lt!2046065)))

(assert (=> d!1595731 (= lt!2046145 (lemmaIsPrefixRefl!3504 lt!2046065 lt!2046065))))

(assert (=> d!1595731 (rulesValidInductive!3230 thiss!15247 rulesArg!259)))

(assert (=> d!1595731 (= (maxPrefix!4630 thiss!15247 rulesArg!259 lt!2046065) lt!2046146)))

(declare-fun b!4957209 () Bool)

(declare-fun contains!19516 (List!57369 Rule!16454) Bool)

(assert (=> b!4957209 (= e!3097874 (contains!19516 rulesArg!259 (rule!11545 (_1!34220 (get!19811 lt!2046146)))))))

(declare-fun b!4957210 () Bool)

(declare-fun res!2115284 () Bool)

(assert (=> b!4957210 (=> (not res!2115284) (not e!3097874))))

(assert (=> b!4957210 (= res!2115284 (< (size!37955 (_2!34220 (get!19811 lt!2046146))) (size!37955 lt!2046065)))))

(declare-fun b!4957211 () Bool)

(declare-fun res!2115281 () Bool)

(assert (=> b!4957211 (=> (not res!2115281) (not e!3097874))))

(declare-fun apply!13880 (TokenValueInjection!16582 BalanceConc!29588) TokenValue!8637)

(declare-fun seqFromList!6012 (List!57368) BalanceConc!29588)

(assert (=> b!4957211 (= res!2115281 (= (value!266763 (_1!34220 (get!19811 lt!2046146))) (apply!13880 (transformation!8327 (rule!11545 (_1!34220 (get!19811 lt!2046146)))) (seqFromList!6012 (originalCharacters!8608 (_1!34220 (get!19811 lt!2046146)))))))))

(declare-fun b!4957212 () Bool)

(assert (=> b!4957212 (= e!3097873 call!345907)))

(assert (= (and d!1595731 c!846236) b!4957212))

(assert (= (and d!1595731 (not c!846236)) b!4957204))

(assert (= (or b!4957212 b!4957204) bm!345902))

(assert (= (and d!1595731 (not res!2115282)) b!4957208))

(assert (= (and b!4957208 res!2115285) b!4957207))

(assert (= (and b!4957207 res!2115279) b!4957210))

(assert (= (and b!4957210 res!2115284) b!4957205))

(assert (= (and b!4957205 res!2115280) b!4957211))

(assert (= (and b!4957211 res!2115281) b!4957206))

(assert (= (and b!4957206 res!2115283) b!4957209))

(declare-fun m!5981772 () Bool)

(assert (=> b!4957208 m!5981772))

(declare-fun m!5981774 () Bool)

(assert (=> b!4957211 m!5981774))

(declare-fun m!5981776 () Bool)

(assert (=> b!4957211 m!5981776))

(assert (=> b!4957211 m!5981776))

(declare-fun m!5981778 () Bool)

(assert (=> b!4957211 m!5981778))

(declare-fun m!5981780 () Bool)

(assert (=> b!4957204 m!5981780))

(assert (=> b!4957207 m!5981774))

(declare-fun m!5981782 () Bool)

(assert (=> b!4957207 m!5981782))

(assert (=> b!4957207 m!5981782))

(declare-fun m!5981784 () Bool)

(assert (=> b!4957207 m!5981784))

(assert (=> b!4957209 m!5981774))

(declare-fun m!5981786 () Bool)

(assert (=> b!4957209 m!5981786))

(assert (=> b!4957210 m!5981774))

(declare-fun m!5981788 () Bool)

(assert (=> b!4957210 m!5981788))

(assert (=> b!4957210 m!5981730))

(declare-fun m!5981790 () Bool)

(assert (=> bm!345902 m!5981790))

(assert (=> b!4957205 m!5981774))

(assert (=> b!4957205 m!5981782))

(assert (=> b!4957205 m!5981782))

(assert (=> b!4957205 m!5981784))

(assert (=> b!4957205 m!5981784))

(declare-fun m!5981792 () Bool)

(assert (=> b!4957205 m!5981792))

(declare-fun m!5981794 () Bool)

(assert (=> d!1595731 m!5981794))

(assert (=> d!1595731 m!5981632))

(assert (=> d!1595731 m!5981634))

(assert (=> d!1595731 m!5981646))

(assert (=> b!4957206 m!5981774))

(assert (=> b!4957206 m!5981782))

(assert (=> b!4957206 m!5981782))

(assert (=> b!4957206 m!5981784))

(assert (=> b!4957206 m!5981784))

(declare-fun m!5981796 () Bool)

(assert (=> b!4957206 m!5981796))

(assert (=> b!4957079 d!1595731))

(declare-fun d!1595733 () Bool)

(assert (=> d!1595733 (= (list!18270 (_2!34219 lt!2046064)) (list!18272 (c!846221 (_2!34219 lt!2046064))))))

(declare-fun bs!1182563 () Bool)

(assert (= bs!1182563 d!1595733))

(declare-fun m!5981798 () Bool)

(assert (=> bs!1182563 m!5981798))

(assert (=> b!4957068 d!1595733))

(declare-fun e!3097888 () Bool)

(declare-fun b!4957229 () Bool)

(declare-fun lt!2046163 () Option!14324)

(assert (=> b!4957229 (= e!3097888 (= (list!18270 (_2!34219 (get!19812 lt!2046163))) (_2!34220 (get!19811 (maxPrefixZipper!724 thiss!15247 (t!367935 rulesArg!259) (list!18270 input!1342))))))))

(declare-fun b!4957230 () Bool)

(declare-fun e!3097891 () Bool)

(declare-fun e!3097889 () Bool)

(assert (=> b!4957230 (= e!3097891 e!3097889)))

(declare-fun res!2115300 () Bool)

(assert (=> b!4957230 (=> (not res!2115300) (not e!3097889))))

(assert (=> b!4957230 (= res!2115300 (= (_1!34219 (get!19812 lt!2046163)) (_1!34220 (get!19811 (maxPrefix!4630 thiss!15247 (t!367935 rulesArg!259) (list!18270 input!1342))))))))

(declare-fun b!4957231 () Bool)

(declare-fun res!2115299 () Bool)

(declare-fun e!3097890 () Bool)

(assert (=> b!4957231 (=> (not res!2115299) (not e!3097890))))

(declare-fun e!3097893 () Bool)

(assert (=> b!4957231 (= res!2115299 e!3097893)))

(declare-fun res!2115303 () Bool)

(assert (=> b!4957231 (=> res!2115303 e!3097893)))

(assert (=> b!4957231 (= res!2115303 (not (isDefined!11251 lt!2046163)))))

(declare-fun call!345910 () Option!14324)

(declare-fun bm!345905 () Bool)

(assert (=> bm!345905 (= call!345910 (maxPrefixOneRuleZipperSequenceV2!311 thiss!15247 (h!63693 (t!367935 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun b!4957232 () Bool)

(assert (=> b!4957232 (= e!3097889 (= (list!18270 (_2!34219 (get!19812 lt!2046163))) (_2!34220 (get!19811 (maxPrefix!4630 thiss!15247 (t!367935 rulesArg!259) (list!18270 input!1342))))))))

(declare-fun d!1595735 () Bool)

(assert (=> d!1595735 e!3097890))

(declare-fun res!2115298 () Bool)

(assert (=> d!1595735 (=> (not res!2115298) (not e!3097890))))

(assert (=> d!1595735 (= res!2115298 (= (isDefined!11251 lt!2046163) (isDefined!11250 (maxPrefixZipper!724 thiss!15247 (t!367935 rulesArg!259) (list!18270 input!1342)))))))

(declare-fun e!3097892 () Option!14324)

(assert (=> d!1595735 (= lt!2046163 e!3097892)))

(declare-fun c!846239 () Bool)

(assert (=> d!1595735 (= c!846239 (and (is-Cons!57245 (t!367935 rulesArg!259)) (is-Nil!57245 (t!367935 (t!367935 rulesArg!259)))))))

(declare-fun lt!2046166 () Unit!148138)

(declare-fun lt!2046164 () Unit!148138)

(assert (=> d!1595735 (= lt!2046166 lt!2046164)))

(declare-fun lt!2046161 () List!57368)

(declare-fun lt!2046167 () List!57368)

(assert (=> d!1595735 (isPrefix!5180 lt!2046161 lt!2046167)))

(assert (=> d!1595735 (= lt!2046164 (lemmaIsPrefixRefl!3504 lt!2046161 lt!2046167))))

(assert (=> d!1595735 (= lt!2046167 (list!18270 input!1342))))

(assert (=> d!1595735 (= lt!2046161 (list!18270 input!1342))))

(assert (=> d!1595735 (rulesValidInductive!3230 thiss!15247 (t!367935 rulesArg!259))))

(assert (=> d!1595735 (= (maxPrefixZipperSequenceV2!658 thiss!15247 (t!367935 rulesArg!259) input!1342 totalInput!464) lt!2046163)))

(declare-fun b!4957233 () Bool)

(declare-fun lt!2046165 () Option!14324)

(declare-fun lt!2046162 () Option!14324)

(assert (=> b!4957233 (= e!3097892 (ite (and (is-None!14323 lt!2046165) (is-None!14323 lt!2046162)) None!14323 (ite (is-None!14323 lt!2046162) lt!2046165 (ite (is-None!14323 lt!2046165) lt!2046162 (ite (>= (size!37953 (_1!34219 (v!50308 lt!2046165))) (size!37953 (_1!34219 (v!50308 lt!2046162)))) lt!2046165 lt!2046162)))))))

(assert (=> b!4957233 (= lt!2046165 call!345910)))

(assert (=> b!4957233 (= lt!2046162 (maxPrefixZipperSequenceV2!658 thiss!15247 (t!367935 (t!367935 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun b!4957234 () Bool)

(assert (=> b!4957234 (= e!3097892 call!345910)))

(declare-fun b!4957235 () Bool)

(assert (=> b!4957235 (= e!3097893 e!3097888)))

(declare-fun res!2115301 () Bool)

(assert (=> b!4957235 (=> (not res!2115301) (not e!3097888))))

(assert (=> b!4957235 (= res!2115301 (= (_1!34219 (get!19812 lt!2046163)) (_1!34220 (get!19811 (maxPrefixZipper!724 thiss!15247 (t!367935 rulesArg!259) (list!18270 input!1342))))))))

(declare-fun b!4957236 () Bool)

(assert (=> b!4957236 (= e!3097890 e!3097891)))

(declare-fun res!2115302 () Bool)

(assert (=> b!4957236 (=> res!2115302 e!3097891)))

(assert (=> b!4957236 (= res!2115302 (not (isDefined!11251 lt!2046163)))))

(assert (= (and d!1595735 c!846239) b!4957234))

(assert (= (and d!1595735 (not c!846239)) b!4957233))

(assert (= (or b!4957234 b!4957233) bm!345905))

(assert (= (and d!1595735 res!2115298) b!4957231))

(assert (= (and b!4957231 (not res!2115303)) b!4957235))

(assert (= (and b!4957235 res!2115301) b!4957229))

(assert (= (and b!4957231 res!2115299) b!4957236))

(assert (= (and b!4957236 (not res!2115302)) b!4957230))

(assert (= (and b!4957230 res!2115300) b!4957232))

(declare-fun m!5981800 () Bool)

(assert (=> bm!345905 m!5981800))

(assert (=> b!4957229 m!5981644))

(declare-fun m!5981802 () Bool)

(assert (=> b!4957229 m!5981802))

(declare-fun m!5981804 () Bool)

(assert (=> b!4957229 m!5981804))

(assert (=> b!4957229 m!5981644))

(declare-fun m!5981806 () Bool)

(assert (=> b!4957229 m!5981806))

(assert (=> b!4957229 m!5981802))

(declare-fun m!5981808 () Bool)

(assert (=> b!4957229 m!5981808))

(assert (=> b!4957235 m!5981804))

(assert (=> b!4957235 m!5981644))

(assert (=> b!4957235 m!5981644))

(assert (=> b!4957235 m!5981802))

(assert (=> b!4957235 m!5981802))

(assert (=> b!4957235 m!5981808))

(assert (=> b!4957230 m!5981804))

(assert (=> b!4957230 m!5981644))

(assert (=> b!4957230 m!5981644))

(declare-fun m!5981810 () Bool)

(assert (=> b!4957230 m!5981810))

(assert (=> b!4957230 m!5981810))

(declare-fun m!5981812 () Bool)

(assert (=> b!4957230 m!5981812))

(assert (=> b!4957232 m!5981810))

(assert (=> b!4957232 m!5981812))

(assert (=> b!4957232 m!5981804))

(assert (=> b!4957232 m!5981644))

(assert (=> b!4957232 m!5981644))

(assert (=> b!4957232 m!5981810))

(assert (=> b!4957232 m!5981806))

(declare-fun m!5981814 () Bool)

(assert (=> b!4957236 m!5981814))

(declare-fun m!5981816 () Bool)

(assert (=> b!4957233 m!5981816))

(assert (=> b!4957231 m!5981814))

(assert (=> d!1595735 m!5981644))

(assert (=> d!1595735 m!5981802))

(declare-fun m!5981818 () Bool)

(assert (=> d!1595735 m!5981818))

(assert (=> d!1595735 m!5981802))

(declare-fun m!5981820 () Bool)

(assert (=> d!1595735 m!5981820))

(assert (=> d!1595735 m!5981814))

(assert (=> d!1595735 m!5981644))

(assert (=> d!1595735 m!5981766))

(declare-fun m!5981822 () Bool)

(assert (=> d!1595735 m!5981822))

(assert (=> b!4957082 d!1595735))

(declare-fun b!4957262 () Bool)

(declare-fun e!3097914 () Bool)

(assert (=> b!4957262 (= e!3097914 true)))

(declare-fun b!4957261 () Bool)

(declare-fun e!3097913 () Bool)

(assert (=> b!4957261 (= e!3097913 e!3097914)))

(declare-fun b!4957253 () Bool)

(assert (=> b!4957253 e!3097913))

(assert (= b!4957261 b!4957262))

(assert (= b!4957253 b!4957261))

(declare-fun order!26075 () Int)

(declare-fun order!26077 () Int)

(declare-fun lambda!247124 () Int)

(declare-fun dynLambda!23075 (Int Int) Int)

(declare-fun dynLambda!23076 (Int Int) Int)

(assert (=> b!4957262 (< (dynLambda!23075 order!26075 (toValue!11278 (transformation!8327 (h!63693 rulesArg!259)))) (dynLambda!23076 order!26077 lambda!247124))))

(declare-fun order!26079 () Int)

(declare-fun dynLambda!23077 (Int Int) Int)

(assert (=> b!4957262 (< (dynLambda!23077 order!26079 (toChars!11137 (transformation!8327 (h!63693 rulesArg!259)))) (dynLambda!23076 order!26077 lambda!247124))))

(declare-fun b!4957249 () Bool)

(declare-fun e!3097904 () Option!14324)

(assert (=> b!4957249 (= e!3097904 None!14323)))

(declare-fun lt!2046197 () Option!14324)

(declare-fun e!3097908 () Bool)

(declare-fun b!4957250 () Bool)

(assert (=> b!4957250 (= e!3097908 (= (list!18270 (_2!34219 (get!19812 lt!2046197))) (_2!34220 (get!19811 (maxPrefixOneRule!3605 thiss!15247 (h!63693 rulesArg!259) (list!18270 input!1342))))))))

(declare-fun b!4957251 () Bool)

(declare-fun e!3097907 () Bool)

(assert (=> b!4957251 (= e!3097907 e!3097908)))

(declare-fun res!2115314 () Bool)

(assert (=> b!4957251 (=> (not res!2115314) (not e!3097908))))

(assert (=> b!4957251 (= res!2115314 (= (_1!34219 (get!19812 lt!2046197)) (_1!34220 (get!19811 (maxPrefixOneRule!3605 thiss!15247 (h!63693 rulesArg!259) (list!18270 input!1342))))))))

(declare-datatypes ((tuple2!61840 0))(
  ( (tuple2!61841 (_1!34223 BalanceConc!29588) (_2!34223 BalanceConc!29588)) )
))
(declare-fun lt!2046188 () tuple2!61840)

(declare-fun size!37956 (BalanceConc!29588) Int)

(assert (=> b!4957253 (= e!3097904 (Some!14323 (tuple2!61833 (Token!15155 (apply!13880 (transformation!8327 (h!63693 rulesArg!259)) (_1!34223 lt!2046188)) (h!63693 rulesArg!259) (size!37956 (_1!34223 lt!2046188)) (list!18270 (_1!34223 lt!2046188))) (_2!34223 lt!2046188))))))

(declare-fun lt!2046192 () List!57368)

(assert (=> b!4957253 (= lt!2046192 (list!18270 input!1342))))

(declare-fun lt!2046193 () Unit!148138)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1796 (Regex!13560 List!57368) Unit!148138)

(assert (=> b!4957253 (= lt!2046193 (longestMatchIsAcceptedByMatchOrIsEmpty!1796 (regex!8327 (h!63693 rulesArg!259)) lt!2046192))))

(declare-fun res!2115312 () Bool)

(declare-fun isEmpty!30778 (List!57368) Bool)

(declare-datatypes ((tuple2!61842 0))(
  ( (tuple2!61843 (_1!34224 List!57368) (_2!34224 List!57368)) )
))
(declare-fun findLongestMatchInner!1835 (Regex!13560 List!57368 Int List!57368 List!57368 Int) tuple2!61842)

(assert (=> b!4957253 (= res!2115312 (isEmpty!30778 (_1!34224 (findLongestMatchInner!1835 (regex!8327 (h!63693 rulesArg!259)) Nil!57244 (size!37955 Nil!57244) lt!2046192 lt!2046192 (size!37955 lt!2046192)))))))

(declare-fun e!3097906 () Bool)

(assert (=> b!4957253 (=> res!2115312 e!3097906)))

(assert (=> b!4957253 e!3097906))

(declare-fun lt!2046189 () Unit!148138)

(assert (=> b!4957253 (= lt!2046189 lt!2046193)))

(declare-fun lt!2046195 () Unit!148138)

(declare-fun lemmaInv!1314 (TokenValueInjection!16582) Unit!148138)

(assert (=> b!4957253 (= lt!2046195 (lemmaInv!1314 (transformation!8327 (h!63693 rulesArg!259))))))

(declare-fun lt!2046194 () Unit!148138)

(declare-fun ForallOf!1207 (Int BalanceConc!29588) Unit!148138)

(assert (=> b!4957253 (= lt!2046194 (ForallOf!1207 lambda!247124 (_1!34223 lt!2046188)))))

(declare-fun lt!2046196 () Unit!148138)

(assert (=> b!4957253 (= lt!2046196 (ForallOf!1207 lambda!247124 (seqFromList!6012 (list!18270 (_1!34223 lt!2046188)))))))

(declare-fun lt!2046190 () Option!14324)

(assert (=> b!4957253 (= lt!2046190 (Some!14323 (tuple2!61833 (Token!15155 (apply!13880 (transformation!8327 (h!63693 rulesArg!259)) (_1!34223 lt!2046188)) (h!63693 rulesArg!259) (size!37956 (_1!34223 lt!2046188)) (list!18270 (_1!34223 lt!2046188))) (_2!34223 lt!2046188))))))

(declare-fun lt!2046191 () Unit!148138)

(declare-fun lemmaEqSameImage!1148 (TokenValueInjection!16582 BalanceConc!29588 BalanceConc!29588) Unit!148138)

(assert (=> b!4957253 (= lt!2046191 (lemmaEqSameImage!1148 (transformation!8327 (h!63693 rulesArg!259)) (_1!34223 lt!2046188) (seqFromList!6012 (list!18270 (_1!34223 lt!2046188)))))))

(declare-fun b!4957254 () Bool)

(assert (=> b!4957254 (= e!3097906 (matchR!6612 (regex!8327 (h!63693 rulesArg!259)) (_1!34224 (findLongestMatchInner!1835 (regex!8327 (h!63693 rulesArg!259)) Nil!57244 (size!37955 Nil!57244) lt!2046192 lt!2046192 (size!37955 lt!2046192)))))))

(declare-fun d!1595737 () Bool)

(declare-fun e!3097905 () Bool)

(assert (=> d!1595737 e!3097905))

(declare-fun res!2115315 () Bool)

(assert (=> d!1595737 (=> (not res!2115315) (not e!3097905))))

(assert (=> d!1595737 (= res!2115315 (= (isDefined!11251 lt!2046197) (isDefined!11250 (maxPrefixOneRule!3605 thiss!15247 (h!63693 rulesArg!259) (list!18270 input!1342)))))))

(assert (=> d!1595737 (= lt!2046197 e!3097904)))

(declare-fun c!846242 () Bool)

(declare-fun isEmpty!30779 (BalanceConc!29588) Bool)

(assert (=> d!1595737 (= c!846242 (isEmpty!30779 (_1!34223 lt!2046188)))))

(declare-fun findLongestMatchWithZipperSequenceV2!144 (Regex!13560 BalanceConc!29588 BalanceConc!29588) tuple2!61840)

(assert (=> d!1595737 (= lt!2046188 (findLongestMatchWithZipperSequenceV2!144 (regex!8327 (h!63693 rulesArg!259)) input!1342 totalInput!464))))

(assert (=> d!1595737 (ruleValid!3777 thiss!15247 (h!63693 rulesArg!259))))

(assert (=> d!1595737 (= (maxPrefixOneRuleZipperSequenceV2!311 thiss!15247 (h!63693 rulesArg!259) input!1342 totalInput!464) lt!2046197)))

(declare-fun b!4957252 () Bool)

(assert (=> b!4957252 (= e!3097905 e!3097907)))

(declare-fun res!2115313 () Bool)

(assert (=> b!4957252 (=> res!2115313 e!3097907)))

(assert (=> b!4957252 (= res!2115313 (not (isDefined!11251 lt!2046197)))))

(assert (= (and d!1595737 c!846242) b!4957249))

(assert (= (and d!1595737 (not c!846242)) b!4957253))

(assert (= (and b!4957253 (not res!2115312)) b!4957254))

(assert (= (and d!1595737 res!2115315) b!4957252))

(assert (= (and b!4957252 (not res!2115313)) b!4957251))

(assert (= (and b!4957251 res!2115314) b!4957250))

(declare-fun m!5981824 () Bool)

(assert (=> b!4957250 m!5981824))

(declare-fun m!5981826 () Bool)

(assert (=> b!4957250 m!5981826))

(declare-fun m!5981828 () Bool)

(assert (=> b!4957250 m!5981828))

(assert (=> b!4957250 m!5981644))

(declare-fun m!5981830 () Bool)

(assert (=> b!4957250 m!5981830))

(assert (=> b!4957250 m!5981644))

(assert (=> b!4957250 m!5981824))

(assert (=> b!4957251 m!5981830))

(assert (=> b!4957251 m!5981644))

(assert (=> b!4957251 m!5981644))

(assert (=> b!4957251 m!5981824))

(assert (=> b!4957251 m!5981824))

(assert (=> b!4957251 m!5981826))

(assert (=> d!1595737 m!5981764))

(assert (=> d!1595737 m!5981644))

(assert (=> d!1595737 m!5981824))

(declare-fun m!5981832 () Bool)

(assert (=> d!1595737 m!5981832))

(declare-fun m!5981834 () Bool)

(assert (=> d!1595737 m!5981834))

(assert (=> d!1595737 m!5981644))

(assert (=> d!1595737 m!5981824))

(declare-fun m!5981836 () Bool)

(assert (=> d!1595737 m!5981836))

(declare-fun m!5981838 () Bool)

(assert (=> d!1595737 m!5981838))

(declare-fun m!5981840 () Bool)

(assert (=> b!4957254 m!5981840))

(declare-fun m!5981842 () Bool)

(assert (=> b!4957254 m!5981842))

(assert (=> b!4957254 m!5981840))

(assert (=> b!4957254 m!5981842))

(declare-fun m!5981844 () Bool)

(assert (=> b!4957254 m!5981844))

(declare-fun m!5981846 () Bool)

(assert (=> b!4957254 m!5981846))

(declare-fun m!5981848 () Bool)

(assert (=> b!4957253 m!5981848))

(declare-fun m!5981850 () Bool)

(assert (=> b!4957253 m!5981850))

(declare-fun m!5981852 () Bool)

(assert (=> b!4957253 m!5981852))

(assert (=> b!4957253 m!5981842))

(assert (=> b!4957253 m!5981840))

(assert (=> b!4957253 m!5981842))

(assert (=> b!4957253 m!5981844))

(declare-fun m!5981854 () Bool)

(assert (=> b!4957253 m!5981854))

(declare-fun m!5981856 () Bool)

(assert (=> b!4957253 m!5981856))

(declare-fun m!5981858 () Bool)

(assert (=> b!4957253 m!5981858))

(declare-fun m!5981860 () Bool)

(assert (=> b!4957253 m!5981860))

(assert (=> b!4957253 m!5981858))

(declare-fun m!5981862 () Bool)

(assert (=> b!4957253 m!5981862))

(assert (=> b!4957253 m!5981644))

(assert (=> b!4957253 m!5981840))

(assert (=> b!4957253 m!5981856))

(declare-fun m!5981864 () Bool)

(assert (=> b!4957253 m!5981864))

(assert (=> b!4957253 m!5981858))

(declare-fun m!5981866 () Bool)

(assert (=> b!4957253 m!5981866))

(assert (=> b!4957252 m!5981832))

(assert (=> b!4957082 d!1595737))

(declare-fun d!1595739 () Bool)

(declare-fun c!846243 () Bool)

(assert (=> d!1595739 (= c!846243 (is-Node!15079 (c!846221 input!1342)))))

(declare-fun e!3097915 () Bool)

(assert (=> d!1595739 (= (inv!74693 (c!846221 input!1342)) e!3097915)))

(declare-fun b!4957263 () Bool)

(assert (=> b!4957263 (= e!3097915 (inv!74698 (c!846221 input!1342)))))

(declare-fun b!4957264 () Bool)

(declare-fun e!3097916 () Bool)

(assert (=> b!4957264 (= e!3097915 e!3097916)))

(declare-fun res!2115316 () Bool)

(assert (=> b!4957264 (= res!2115316 (not (is-Leaf!25068 (c!846221 input!1342))))))

(assert (=> b!4957264 (=> res!2115316 e!3097916)))

(declare-fun b!4957265 () Bool)

(assert (=> b!4957265 (= e!3097916 (inv!74699 (c!846221 input!1342)))))

(assert (= (and d!1595739 c!846243) b!4957263))

(assert (= (and d!1595739 (not c!846243)) b!4957264))

(assert (= (and b!4957264 (not res!2115316)) b!4957265))

(declare-fun m!5981868 () Bool)

(assert (=> b!4957263 m!5981868))

(declare-fun m!5981870 () Bool)

(assert (=> b!4957265 m!5981870))

(assert (=> b!4957072 d!1595739))

(declare-fun b!4957280 () Bool)

(declare-fun e!3097927 () Bool)

(declare-fun tail!9778 (List!57368) List!57368)

(assert (=> b!4957280 (= e!3097927 (isPrefix!5180 (tail!9778 lt!2046065) (tail!9778 lt!2046065)))))

(declare-fun d!1595741 () Bool)

(declare-fun e!3097926 () Bool)

(assert (=> d!1595741 e!3097926))

(declare-fun res!2115329 () Bool)

(assert (=> d!1595741 (=> res!2115329 e!3097926)))

(declare-fun lt!2046201 () Bool)

(assert (=> d!1595741 (= res!2115329 (not lt!2046201))))

(declare-fun e!3097925 () Bool)

(assert (=> d!1595741 (= lt!2046201 e!3097925)))

(declare-fun res!2115327 () Bool)

(assert (=> d!1595741 (=> res!2115327 e!3097925)))

(assert (=> d!1595741 (= res!2115327 (is-Nil!57244 lt!2046065))))

(assert (=> d!1595741 (= (isPrefix!5180 lt!2046065 lt!2046065) lt!2046201)))

(declare-fun b!4957281 () Bool)

(assert (=> b!4957281 (= e!3097926 (>= (size!37955 lt!2046065) (size!37955 lt!2046065)))))

(declare-fun b!4957278 () Bool)

(assert (=> b!4957278 (= e!3097925 e!3097927)))

(declare-fun res!2115328 () Bool)

(assert (=> b!4957278 (=> (not res!2115328) (not e!3097927))))

(assert (=> b!4957278 (= res!2115328 (not (is-Nil!57244 lt!2046065)))))

(declare-fun b!4957279 () Bool)

(declare-fun res!2115330 () Bool)

(assert (=> b!4957279 (=> (not res!2115330) (not e!3097927))))

(declare-fun head!10645 (List!57368) C!27370)

(assert (=> b!4957279 (= res!2115330 (= (head!10645 lt!2046065) (head!10645 lt!2046065)))))

(assert (= (and d!1595741 (not res!2115327)) b!4957278))

(assert (= (and b!4957278 res!2115328) b!4957279))

(assert (= (and b!4957279 res!2115330) b!4957280))

(assert (= (and d!1595741 (not res!2115329)) b!4957281))

(declare-fun m!5981882 () Bool)

(assert (=> b!4957280 m!5981882))

(assert (=> b!4957280 m!5981882))

(assert (=> b!4957280 m!5981882))

(assert (=> b!4957280 m!5981882))

(declare-fun m!5981884 () Bool)

(assert (=> b!4957280 m!5981884))

(assert (=> b!4957281 m!5981730))

(assert (=> b!4957281 m!5981730))

(declare-fun m!5981886 () Bool)

(assert (=> b!4957279 m!5981886))

(assert (=> b!4957279 m!5981886))

(assert (=> b!4957081 d!1595741))

(declare-fun d!1595751 () Bool)

(assert (=> d!1595751 (isPrefix!5180 lt!2046065 lt!2046065)))

(declare-fun lt!2046204 () Unit!148138)

(declare-fun choose!36625 (List!57368 List!57368) Unit!148138)

(assert (=> d!1595751 (= lt!2046204 (choose!36625 lt!2046065 lt!2046065))))

(assert (=> d!1595751 (= (lemmaIsPrefixRefl!3504 lt!2046065 lt!2046065) lt!2046204)))

(declare-fun bs!1182566 () Bool)

(assert (= bs!1182566 d!1595751))

(assert (=> bs!1182566 m!5981632))

(declare-fun m!5981888 () Bool)

(assert (=> bs!1182566 m!5981888))

(assert (=> b!4957081 d!1595751))

(declare-fun d!1595755 () Bool)

(assert (=> d!1595755 (= (isEmpty!30775 rulesArg!259) (is-Nil!57245 rulesArg!259))))

(assert (=> b!4957070 d!1595755))

(declare-fun d!1595757 () Bool)

(assert (=> d!1595757 (= (isDefined!11250 lt!2046070) (not (isEmpty!30777 lt!2046070)))))

(declare-fun bs!1182567 () Bool)

(assert (= bs!1182567 d!1595757))

(declare-fun m!5981890 () Bool)

(assert (=> bs!1182567 m!5981890))

(assert (=> b!4957075 d!1595757))

(declare-fun d!1595759 () Bool)

(declare-fun isEmpty!30780 (Option!14324) Bool)

(assert (=> d!1595759 (= (isDefined!11251 lt!2046066) (not (isEmpty!30780 lt!2046066)))))

(declare-fun bs!1182568 () Bool)

(assert (= bs!1182568 d!1595759))

(declare-fun m!5981892 () Bool)

(assert (=> bs!1182568 m!5981892))

(assert (=> b!4957075 d!1595759))

(declare-fun d!1595761 () Bool)

(declare-fun lt!2046235 () Option!14323)

(assert (=> d!1595761 (= lt!2046235 (maxPrefix!4630 thiss!15247 rulesArg!259 lt!2046065))))

(declare-fun e!3097947 () Option!14323)

(assert (=> d!1595761 (= lt!2046235 e!3097947)))

(declare-fun c!846250 () Bool)

(assert (=> d!1595761 (= c!846250 (and (is-Cons!57245 rulesArg!259) (is-Nil!57245 (t!367935 rulesArg!259))))))

(declare-fun lt!2046233 () Unit!148138)

(declare-fun lt!2046237 () Unit!148138)

(assert (=> d!1595761 (= lt!2046233 lt!2046237)))

(assert (=> d!1595761 (isPrefix!5180 lt!2046065 lt!2046065)))

(assert (=> d!1595761 (= lt!2046237 (lemmaIsPrefixRefl!3504 lt!2046065 lt!2046065))))

(assert (=> d!1595761 (rulesValidInductive!3230 thiss!15247 rulesArg!259)))

(assert (=> d!1595761 (= (maxPrefixZipper!724 thiss!15247 rulesArg!259 lt!2046065) lt!2046235)))

(declare-fun bm!345911 () Bool)

(declare-fun call!345916 () Option!14323)

(declare-fun maxPrefixOneRuleZipper!274 (LexerInterface!7919 Rule!16454 List!57368) Option!14323)

(assert (=> bm!345911 (= call!345916 (maxPrefixOneRuleZipper!274 thiss!15247 (h!63693 rulesArg!259) lt!2046065))))

(declare-fun b!4957322 () Bool)

(assert (=> b!4957322 (= e!3097947 call!345916)))

(declare-fun b!4957323 () Bool)

(declare-fun lt!2046236 () Option!14323)

(declare-fun lt!2046234 () Option!14323)

(assert (=> b!4957323 (= e!3097947 (ite (and (is-None!14322 lt!2046236) (is-None!14322 lt!2046234)) None!14322 (ite (is-None!14322 lt!2046234) lt!2046236 (ite (is-None!14322 lt!2046236) lt!2046234 (ite (>= (size!37953 (_1!34220 (v!50307 lt!2046236))) (size!37953 (_1!34220 (v!50307 lt!2046234)))) lt!2046236 lt!2046234)))))))

(assert (=> b!4957323 (= lt!2046236 call!345916)))

(assert (=> b!4957323 (= lt!2046234 (maxPrefixZipper!724 thiss!15247 (t!367935 rulesArg!259) lt!2046065))))

(assert (= (and d!1595761 c!846250) b!4957322))

(assert (= (and d!1595761 (not c!846250)) b!4957323))

(assert (= (or b!4957322 b!4957323) bm!345911))

(assert (=> d!1595761 m!5981672))

(assert (=> d!1595761 m!5981632))

(assert (=> d!1595761 m!5981634))

(assert (=> d!1595761 m!5981646))

(declare-fun m!5981910 () Bool)

(assert (=> bm!345911 m!5981910))

(declare-fun m!5981912 () Bool)

(assert (=> b!4957323 m!5981912))

(assert (=> b!4957075 d!1595761))

(declare-fun d!1595775 () Bool)

(declare-fun isBalanced!4177 (Conc!15079) Bool)

(assert (=> d!1595775 (= (inv!74694 input!1342) (isBalanced!4177 (c!846221 input!1342)))))

(declare-fun bs!1182571 () Bool)

(assert (= bs!1182571 d!1595775))

(declare-fun m!5981938 () Bool)

(assert (=> bs!1182571 m!5981938))

(assert (=> start!522508 d!1595775))

(declare-fun d!1595779 () Bool)

(assert (=> d!1595779 (= (inv!74694 totalInput!464) (isBalanced!4177 (c!846221 totalInput!464)))))

(declare-fun bs!1182572 () Bool)

(assert (= bs!1182572 d!1595779))

(declare-fun m!5981942 () Bool)

(assert (=> bs!1182572 m!5981942))

(assert (=> start!522508 d!1595779))

(declare-fun d!1595781 () Bool)

(assert (=> d!1595781 (= (isDefined!11250 lt!2046067) (not (isEmpty!30777 lt!2046067)))))

(declare-fun bs!1182574 () Bool)

(assert (= bs!1182574 d!1595781))

(declare-fun m!5981946 () Bool)

(assert (=> bs!1182574 m!5981946))

(assert (=> b!4957077 d!1595781))

(declare-fun d!1595785 () Bool)

(assert (=> d!1595785 (= (inv!74689 (tag!9191 (h!63693 rulesArg!259))) (= (mod (str.len (value!266762 (tag!9191 (h!63693 rulesArg!259)))) 2) 0))))

(assert (=> b!4957067 d!1595785))

(declare-fun d!1595787 () Bool)

(declare-fun res!2115361 () Bool)

(declare-fun e!3097950 () Bool)

(assert (=> d!1595787 (=> (not res!2115361) (not e!3097950))))

(declare-fun semiInverseModEq!3676 (Int Int) Bool)

(assert (=> d!1595787 (= res!2115361 (semiInverseModEq!3676 (toChars!11137 (transformation!8327 (h!63693 rulesArg!259))) (toValue!11278 (transformation!8327 (h!63693 rulesArg!259)))))))

(assert (=> d!1595787 (= (inv!74692 (transformation!8327 (h!63693 rulesArg!259))) e!3097950)))

(declare-fun b!4957326 () Bool)

(declare-fun equivClasses!3524 (Int Int) Bool)

(assert (=> b!4957326 (= e!3097950 (equivClasses!3524 (toChars!11137 (transformation!8327 (h!63693 rulesArg!259))) (toValue!11278 (transformation!8327 (h!63693 rulesArg!259)))))))

(assert (= (and d!1595787 res!2115361) b!4957326))

(declare-fun m!5981948 () Bool)

(assert (=> d!1595787 m!5981948))

(declare-fun m!5981950 () Bool)

(assert (=> b!4957326 m!5981950))

(assert (=> b!4957067 d!1595787))

(declare-fun d!1595789 () Bool)

(assert (=> d!1595789 (= (get!19811 lt!2046070) (v!50307 lt!2046070))))

(assert (=> b!4957076 d!1595789))

(assert (=> b!4957076 d!1595727))

(declare-fun b!4957337 () Bool)

(declare-fun b_free!132339 () Bool)

(declare-fun b_next!133129 () Bool)

(assert (=> b!4957337 (= b_free!132339 (not b_next!133129))))

(declare-fun tp!1390217 () Bool)

(declare-fun b_and!347191 () Bool)

(assert (=> b!4957337 (= tp!1390217 b_and!347191)))

(declare-fun b_free!132341 () Bool)

(declare-fun b_next!133131 () Bool)

(assert (=> b!4957337 (= b_free!132341 (not b_next!133131))))

(declare-fun tp!1390216 () Bool)

(declare-fun b_and!347193 () Bool)

(assert (=> b!4957337 (= tp!1390216 b_and!347193)))

(declare-fun e!3097959 () Bool)

(assert (=> b!4957337 (= e!3097959 (and tp!1390217 tp!1390216))))

(declare-fun tp!1390218 () Bool)

(declare-fun e!3097962 () Bool)

(declare-fun b!4957336 () Bool)

(assert (=> b!4957336 (= e!3097962 (and tp!1390218 (inv!74689 (tag!9191 (h!63693 (t!367935 rulesArg!259)))) (inv!74692 (transformation!8327 (h!63693 (t!367935 rulesArg!259)))) e!3097959))))

(declare-fun b!4957335 () Bool)

(declare-fun e!3097961 () Bool)

(declare-fun tp!1390215 () Bool)

(assert (=> b!4957335 (= e!3097961 (and e!3097962 tp!1390215))))

(assert (=> b!4957074 (= tp!1390188 e!3097961)))

(assert (= b!4957336 b!4957337))

(assert (= b!4957335 b!4957336))

(assert (= (and b!4957074 (is-Cons!57245 (t!367935 rulesArg!259))) b!4957335))

(declare-fun m!5981952 () Bool)

(assert (=> b!4957336 m!5981952))

(declare-fun m!5981954 () Bool)

(assert (=> b!4957336 m!5981954))

(declare-fun tp!1390226 () Bool)

(declare-fun e!3097968 () Bool)

(declare-fun b!4957346 () Bool)

(declare-fun tp!1390227 () Bool)

(assert (=> b!4957346 (= e!3097968 (and (inv!74693 (left!41749 (c!846221 totalInput!464))) tp!1390226 (inv!74693 (right!42079 (c!846221 totalInput!464))) tp!1390227))))

(declare-fun b!4957348 () Bool)

(declare-fun e!3097967 () Bool)

(declare-fun tp!1390225 () Bool)

(assert (=> b!4957348 (= e!3097967 tp!1390225)))

(declare-fun b!4957347 () Bool)

(declare-fun inv!74700 (IArray!30219) Bool)

(assert (=> b!4957347 (= e!3097968 (and (inv!74700 (xs!18405 (c!846221 totalInput!464))) e!3097967))))

(assert (=> b!4957078 (= tp!1390184 (and (inv!74693 (c!846221 totalInput!464)) e!3097968))))

(assert (= (and b!4957078 (is-Node!15079 (c!846221 totalInput!464))) b!4957346))

(assert (= b!4957347 b!4957348))

(assert (= (and b!4957078 (is-Leaf!25068 (c!846221 totalInput!464))) b!4957347))

(declare-fun m!5981956 () Bool)

(assert (=> b!4957346 m!5981956))

(declare-fun m!5981958 () Bool)

(assert (=> b!4957346 m!5981958))

(declare-fun m!5981960 () Bool)

(assert (=> b!4957347 m!5981960))

(assert (=> b!4957078 m!5981674))

(declare-fun e!3097971 () Bool)

(assert (=> b!4957067 (= tp!1390183 e!3097971)))

(declare-fun b!4957361 () Bool)

(declare-fun tp!1390238 () Bool)

(assert (=> b!4957361 (= e!3097971 tp!1390238)))

(declare-fun b!4957359 () Bool)

(declare-fun tp_is_empty!36281 () Bool)

(assert (=> b!4957359 (= e!3097971 tp_is_empty!36281)))

(declare-fun b!4957362 () Bool)

(declare-fun tp!1390241 () Bool)

(declare-fun tp!1390242 () Bool)

(assert (=> b!4957362 (= e!3097971 (and tp!1390241 tp!1390242))))

(declare-fun b!4957360 () Bool)

(declare-fun tp!1390239 () Bool)

(declare-fun tp!1390240 () Bool)

(assert (=> b!4957360 (= e!3097971 (and tp!1390239 tp!1390240))))

(assert (= (and b!4957067 (is-ElementMatch!13560 (regex!8327 (h!63693 rulesArg!259)))) b!4957359))

(assert (= (and b!4957067 (is-Concat!22198 (regex!8327 (h!63693 rulesArg!259)))) b!4957360))

(assert (= (and b!4957067 (is-Star!13560 (regex!8327 (h!63693 rulesArg!259)))) b!4957361))

(assert (= (and b!4957067 (is-Union!13560 (regex!8327 (h!63693 rulesArg!259)))) b!4957362))

(declare-fun tp!1390245 () Bool)

(declare-fun tp!1390244 () Bool)

(declare-fun e!3097973 () Bool)

(declare-fun b!4957363 () Bool)

(assert (=> b!4957363 (= e!3097973 (and (inv!74693 (left!41749 (c!846221 input!1342))) tp!1390244 (inv!74693 (right!42079 (c!846221 input!1342))) tp!1390245))))

(declare-fun b!4957365 () Bool)

(declare-fun e!3097972 () Bool)

(declare-fun tp!1390243 () Bool)

(assert (=> b!4957365 (= e!3097972 tp!1390243)))

(declare-fun b!4957364 () Bool)

(assert (=> b!4957364 (= e!3097973 (and (inv!74700 (xs!18405 (c!846221 input!1342))) e!3097972))))

(assert (=> b!4957072 (= tp!1390185 (and (inv!74693 (c!846221 input!1342)) e!3097973))))

(assert (= (and b!4957072 (is-Node!15079 (c!846221 input!1342))) b!4957363))

(assert (= b!4957364 b!4957365))

(assert (= (and b!4957072 (is-Leaf!25068 (c!846221 input!1342))) b!4957364))

(declare-fun m!5981962 () Bool)

(assert (=> b!4957363 m!5981962))

(declare-fun m!5981964 () Bool)

(assert (=> b!4957363 m!5981964))

(declare-fun m!5981966 () Bool)

(assert (=> b!4957364 m!5981966))

(assert (=> b!4957072 m!5981678))

(push 1)

(assert (not b!4957205))

(assert (not b!4957137))

(assert (not b!4957209))

(assert (not b!4957206))

(assert (not b!4957346))

(assert (not b!4957207))

(assert (not b!4957183))

(assert (not b!4957252))

(assert (not b!4957361))

(assert (not b!4957254))

(assert (not b!4957210))

(assert (not d!1595699))

(assert (not d!1595703))

(assert (not d!1595751))

(assert b_and!347183)

(assert (not b!4957078))

(assert (not d!1595733))

(assert (not b!4957185))

(assert (not bm!345905))

(assert (not d!1595779))

(assert (not b!4957360))

(assert (not b!4957253))

(assert (not b!4957323))

(assert (not bm!345902))

(assert (not b!4957235))

(assert b_and!347185)

(assert (not b!4957363))

(assert (not b!4957236))

(assert (not b!4957233))

(assert (not d!1595757))

(assert (not b!4957281))

(assert (not b!4957204))

(assert (not b!4957174))

(assert (not b_next!133131))

(assert (not b!4957250))

(assert (not d!1595731))

(assert (not d!1595787))

(assert (not b!4957280))

(assert (not b!4957208))

(assert b_and!347191)

(assert (not b!4957326))

(assert (not b!4957211))

(assert (not b!4957251))

(assert (not b!4957364))

(assert (not b!4957232))

(assert (not bm!345911))

(assert (not b!4957231))

(assert tp_is_empty!36281)

(assert (not d!1595759))

(assert (not d!1595737))

(assert (not b_next!133129))

(assert (not b!4957335))

(assert (not b!4957072))

(assert (not b!4957229))

(assert (not d!1595735))

(assert (not d!1595701))

(assert (not b!4957365))

(assert (not b_next!133123))

(assert (not b!4957348))

(assert (not d!1595781))

(assert (not b!4957265))

(assert (not d!1595697))

(assert b_and!347193)

(assert (not b!4957173))

(assert (not d!1595761))

(assert (not b!4957263))

(assert (not b!4957279))

(assert (not b!4957230))

(assert (not b!4957362))

(assert (not b!4957336))

(assert (not d!1595775))

(assert (not b_next!133121))

(assert (not b!4957347))

(check-sat)

(pop 1)

(push 1)

(assert b_and!347183)

(assert b_and!347185)

(assert (not b_next!133131))

(assert b_and!347191)

(assert (not b_next!133129))

(assert (not b_next!133123))

(assert b_and!347193)

(assert (not b_next!133121))

(check-sat)

(pop 1)


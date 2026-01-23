; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128238 () Bool)

(assert start!128238)

(declare-fun b!1406234 () Bool)

(declare-fun b_free!34331 () Bool)

(declare-fun b_next!35035 () Bool)

(assert (=> b!1406234 (= b_free!34331 (not b_next!35035))))

(declare-fun tp!399495 () Bool)

(declare-fun b_and!94155 () Bool)

(assert (=> b!1406234 (= tp!399495 b_and!94155)))

(declare-fun b_free!34333 () Bool)

(declare-fun b_next!35037 () Bool)

(assert (=> b!1406234 (= b_free!34333 (not b_next!35037))))

(declare-fun tp!399488 () Bool)

(declare-fun b_and!94157 () Bool)

(assert (=> b!1406234 (= tp!399488 b_and!94157)))

(declare-fun b!1406248 () Bool)

(declare-fun b_free!34335 () Bool)

(declare-fun b_next!35039 () Bool)

(assert (=> b!1406248 (= b_free!34335 (not b_next!35039))))

(declare-fun tp!399485 () Bool)

(declare-fun b_and!94159 () Bool)

(assert (=> b!1406248 (= tp!399485 b_and!94159)))

(declare-fun b_free!34337 () Bool)

(declare-fun b_next!35041 () Bool)

(assert (=> b!1406248 (= b_free!34337 (not b_next!35041))))

(declare-fun tp!399493 () Bool)

(declare-fun b_and!94161 () Bool)

(assert (=> b!1406248 (= tp!399493 b_and!94161)))

(declare-fun b!1406262 () Bool)

(declare-fun b_free!34339 () Bool)

(declare-fun b_next!35043 () Bool)

(assert (=> b!1406262 (= b_free!34339 (not b_next!35043))))

(declare-fun tp!399494 () Bool)

(declare-fun b_and!94163 () Bool)

(assert (=> b!1406262 (= tp!399494 b_and!94163)))

(declare-fun b_free!34341 () Bool)

(declare-fun b_next!35045 () Bool)

(assert (=> b!1406262 (= b_free!34341 (not b_next!35045))))

(declare-fun tp!399491 () Bool)

(declare-fun b_and!94165 () Bool)

(assert (=> b!1406262 (= tp!399491 b_and!94165)))

(declare-fun b!1406237 () Bool)

(assert (=> b!1406237 true))

(assert (=> b!1406237 true))

(declare-fun b!1406226 () Bool)

(assert (=> b!1406226 true))

(declare-fun b!1406253 () Bool)

(assert (=> b!1406253 true))

(declare-fun bs!338534 () Bool)

(declare-fun b!1406261 () Bool)

(assert (= bs!338534 (and b!1406261 b!1406253)))

(declare-fun lambda!62063 () Int)

(declare-fun lambda!62062 () Int)

(assert (=> bs!338534 (not (= lambda!62063 lambda!62062))))

(assert (=> b!1406261 true))

(declare-fun b!1406218 () Bool)

(declare-fun res!636668 () Bool)

(declare-fun e!897748 () Bool)

(assert (=> b!1406218 (=> res!636668 e!897748)))

(declare-datatypes ((List!14382 0))(
  ( (Nil!14316) (Cons!14316 (h!19717 (_ BitVec 16)) (t!123051 List!14382)) )
))
(declare-datatypes ((TokenValue!2571 0))(
  ( (FloatLiteralValue!5142 (text!18442 List!14382)) (TokenValueExt!2570 (__x!8971 Int)) (Broken!12855 (value!80315 List!14382)) (Object!2636) (End!2571) (Def!2571) (Underscore!2571) (Match!2571) (Else!2571) (Error!2571) (Case!2571) (If!2571) (Extends!2571) (Abstract!2571) (Class!2571) (Val!2571) (DelimiterValue!5142 (del!2631 List!14382)) (KeywordValue!2577 (value!80316 List!14382)) (CommentValue!5142 (value!80317 List!14382)) (WhitespaceValue!5142 (value!80318 List!14382)) (IndentationValue!2571 (value!80319 List!14382)) (String!17090) (Int32!2571) (Broken!12856 (value!80320 List!14382)) (Boolean!2572) (Unit!20678) (OperatorValue!2574 (op!2631 List!14382)) (IdentifierValue!5142 (value!80321 List!14382)) (IdentifierValue!5143 (value!80322 List!14382)) (WhitespaceValue!5143 (value!80323 List!14382)) (True!5142) (False!5142) (Broken!12857 (value!80324 List!14382)) (Broken!12858 (value!80325 List!14382)) (True!5143) (RightBrace!2571) (RightBracket!2571) (Colon!2571) (Null!2571) (Comma!2571) (LeftBracket!2571) (False!5143) (LeftBrace!2571) (ImaginaryLiteralValue!2571 (text!18443 List!14382)) (StringLiteralValue!7713 (value!80326 List!14382)) (EOFValue!2571 (value!80327 List!14382)) (IdentValue!2571 (value!80328 List!14382)) (DelimiterValue!5143 (value!80329 List!14382)) (DedentValue!2571 (value!80330 List!14382)) (NewLineValue!2571 (value!80331 List!14382)) (IntegerValue!7713 (value!80332 (_ BitVec 32)) (text!18444 List!14382)) (IntegerValue!7714 (value!80333 Int) (text!18445 List!14382)) (Times!2571) (Or!2571) (Equal!2571) (Minus!2571) (Broken!12859 (value!80334 List!14382)) (And!2571) (Div!2571) (LessEqual!2571) (Mod!2571) (Concat!6366) (Not!2571) (Plus!2571) (SpaceValue!2571 (value!80335 List!14382)) (IntegerValue!7715 (value!80336 Int) (text!18446 List!14382)) (StringLiteralValue!7714 (text!18447 List!14382)) (FloatLiteralValue!5143 (text!18448 List!14382)) (BytesLiteralValue!2571 (value!80337 List!14382)) (CommentValue!5143 (value!80338 List!14382)) (StringLiteralValue!7715 (value!80339 List!14382)) (ErrorTokenValue!2571 (msg!2632 List!14382)) )
))
(declare-datatypes ((C!7880 0))(
  ( (C!7881 (val!4500 Int)) )
))
(declare-datatypes ((List!14383 0))(
  ( (Nil!14317) (Cons!14317 (h!19718 C!7880) (t!123052 List!14383)) )
))
(declare-datatypes ((IArray!9449 0))(
  ( (IArray!9450 (innerList!4782 List!14383)) )
))
(declare-datatypes ((Conc!4722 0))(
  ( (Node!4722 (left!12224 Conc!4722) (right!12554 Conc!4722) (csize!9674 Int) (cheight!4933 Int)) (Leaf!7159 (xs!7449 IArray!9449) (csize!9675 Int)) (Empty!4722) )
))
(declare-datatypes ((BalanceConc!9384 0))(
  ( (BalanceConc!9385 (c!231208 Conc!4722)) )
))
(declare-datatypes ((String!17091 0))(
  ( (String!17092 (value!80340 String)) )
))
(declare-datatypes ((Regex!3795 0))(
  ( (ElementMatch!3795 (c!231209 C!7880)) (Concat!6367 (regOne!8102 Regex!3795) (regTwo!8102 Regex!3795)) (EmptyExpr!3795) (Star!3795 (reg!4124 Regex!3795)) (EmptyLang!3795) (Union!3795 (regOne!8103 Regex!3795) (regTwo!8103 Regex!3795)) )
))
(declare-datatypes ((TokenValueInjection!4802 0))(
  ( (TokenValueInjection!4803 (toValue!3772 Int) (toChars!3631 Int)) )
))
(declare-datatypes ((Rule!4762 0))(
  ( (Rule!4763 (regex!2481 Regex!3795) (tag!2743 String!17091) (isSeparator!2481 Bool) (transformation!2481 TokenValueInjection!4802)) )
))
(declare-datatypes ((Token!4624 0))(
  ( (Token!4625 (value!80341 TokenValue!2571) (rule!4244 Rule!4762) (size!11781 Int) (originalCharacters!3343 List!14383)) )
))
(declare-datatypes ((List!14384 0))(
  ( (Nil!14318) (Cons!14318 (h!19719 Token!4624) (t!123053 List!14384)) )
))
(declare-datatypes ((IArray!9451 0))(
  ( (IArray!9452 (innerList!4783 List!14384)) )
))
(declare-datatypes ((Conc!4723 0))(
  ( (Node!4723 (left!12225 Conc!4723) (right!12555 Conc!4723) (csize!9676 Int) (cheight!4934 Int)) (Leaf!7160 (xs!7450 IArray!9451) (csize!9677 Int)) (Empty!4723) )
))
(declare-datatypes ((BalanceConc!9386 0))(
  ( (BalanceConc!9387 (c!231210 Conc!4723)) )
))
(declare-datatypes ((tuple2!13946 0))(
  ( (tuple2!13947 (_1!7859 BalanceConc!9386) (_2!7859 BalanceConc!9384)) )
))
(declare-fun lt!469323 () tuple2!13946)

(declare-fun isEmpty!8716 (BalanceConc!9384) Bool)

(assert (=> b!1406218 (= res!636668 (not (isEmpty!8716 (_2!7859 lt!469323))))))

(declare-fun b!1406219 () Bool)

(declare-fun e!897728 () Bool)

(declare-fun e!897744 () Bool)

(assert (=> b!1406219 (= e!897728 e!897744)))

(declare-fun res!636646 () Bool)

(assert (=> b!1406219 (=> res!636646 e!897744)))

(declare-fun lt!469313 () Bool)

(assert (=> b!1406219 (= res!636646 lt!469313)))

(declare-datatypes ((Unit!20679 0))(
  ( (Unit!20680) )
))
(declare-fun lt!469303 () Unit!20679)

(declare-fun e!897756 () Unit!20679)

(assert (=> b!1406219 (= lt!469303 e!897756)))

(declare-fun c!231206 () Bool)

(assert (=> b!1406219 (= c!231206 lt!469313)))

(declare-fun t1!34 () Token!4624)

(declare-fun lt!469310 () C!7880)

(declare-fun contains!2825 (List!14383 C!7880) Bool)

(declare-fun usedCharacters!292 (Regex!3795) List!14383)

(assert (=> b!1406219 (= lt!469313 (not (contains!2825 (usedCharacters!292 (regex!2481 (rule!4244 t1!34))) lt!469310)))))

(declare-fun b!1406220 () Bool)

(declare-fun res!636655 () Bool)

(assert (=> b!1406220 (=> res!636655 e!897748)))

(declare-datatypes ((List!14385 0))(
  ( (Nil!14319) (Cons!14319 (h!19720 Rule!4762) (t!123054 List!14385)) )
))
(declare-fun rules!2550 () List!14385)

(declare-fun contains!2826 (List!14385 Rule!4762) Bool)

(assert (=> b!1406220 (= res!636655 (not (contains!2826 rules!2550 (rule!4244 t1!34))))))

(declare-fun e!897752 () Bool)

(declare-fun b!1406221 () Bool)

(declare-fun tp!399489 () Bool)

(declare-fun e!897741 () Bool)

(declare-fun inv!18615 (String!17091) Bool)

(declare-fun inv!18618 (TokenValueInjection!4802) Bool)

(assert (=> b!1406221 (= e!897752 (and tp!399489 (inv!18615 (tag!2743 (rule!4244 t1!34))) (inv!18618 (transformation!2481 (rule!4244 t1!34))) e!897741))))

(declare-fun b!1406222 () Bool)

(declare-fun res!636656 () Bool)

(declare-fun e!897734 () Bool)

(assert (=> b!1406222 (=> res!636656 e!897734)))

(declare-fun lt!469324 () Regex!3795)

(declare-fun lt!469309 () List!14383)

(declare-fun matchR!1786 (Regex!3795 List!14383) Bool)

(assert (=> b!1406222 (= res!636656 (not (matchR!1786 lt!469324 lt!469309)))))

(declare-fun b!1406224 () Bool)

(declare-fun res!636637 () Bool)

(declare-fun e!897757 () Bool)

(assert (=> b!1406224 (=> res!636637 e!897757)))

(declare-fun lt!469300 () BalanceConc!9384)

(declare-fun lt!469301 () List!14384)

(declare-datatypes ((LexerInterface!2176 0))(
  ( (LexerInterfaceExt!2173 (__x!8972 Int)) (Lexer!2174) )
))
(declare-fun thiss!19762 () LexerInterface!2176)

(declare-datatypes ((tuple2!13948 0))(
  ( (tuple2!13949 (_1!7860 List!14384) (_2!7860 List!14383)) )
))
(declare-fun lexList!690 (LexerInterface!2176 List!14385 List!14383) tuple2!13948)

(declare-fun list!5593 (BalanceConc!9384) List!14383)

(assert (=> b!1406224 (= res!636637 (not (= (lexList!690 thiss!19762 rules!2550 (list!5593 lt!469300)) (tuple2!13949 lt!469301 Nil!14317))))))

(declare-fun b!1406225 () Bool)

(declare-fun e!897738 () Bool)

(assert (=> b!1406225 (= e!897738 e!897734)))

(declare-fun res!636664 () Bool)

(assert (=> b!1406225 (=> res!636664 e!897734)))

(declare-fun lt!469319 () List!14383)

(assert (=> b!1406225 (= res!636664 (not (contains!2825 lt!469319 lt!469310)))))

(declare-fun lt!469311 () BalanceConc!9384)

(declare-fun apply!3665 (BalanceConc!9384 Int) C!7880)

(assert (=> b!1406225 (= lt!469310 (apply!3665 lt!469311 0))))

(declare-fun e!897735 () Bool)

(assert (=> b!1406226 (= e!897734 e!897735)))

(declare-fun res!636647 () Bool)

(assert (=> b!1406226 (=> res!636647 e!897735)))

(declare-fun lambda!62060 () Int)

(declare-fun lambda!62061 () Int)

(declare-datatypes ((List!14386 0))(
  ( (Nil!14320) (Cons!14320 (h!19721 Regex!3795) (t!123055 List!14386)) )
))
(declare-fun exists!606 (List!14386 Int) Bool)

(declare-fun map!3182 (List!14385 Int) List!14386)

(assert (=> b!1406226 (= res!636647 (not (exists!606 (map!3182 rules!2550 lambda!62060) lambda!62061)))))

(declare-fun lt!469317 () List!14386)

(assert (=> b!1406226 (exists!606 lt!469317 lambda!62061)))

(declare-fun lt!469315 () Unit!20679)

(declare-fun matchRGenUnionSpec!206 (Regex!3795 List!14386 List!14383) Unit!20679)

(assert (=> b!1406226 (= lt!469315 (matchRGenUnionSpec!206 lt!469324 lt!469317 lt!469309))))

(assert (=> b!1406226 (= lt!469317 (map!3182 rules!2550 lambda!62060))))

(declare-fun b!1406227 () Bool)

(declare-fun e!897740 () Bool)

(declare-fun e!897729 () Bool)

(assert (=> b!1406227 (= e!897740 e!897729)))

(declare-fun res!636657 () Bool)

(assert (=> b!1406227 (=> (not res!636657) (not e!897729))))

(declare-fun prefixMatch!304 (Regex!3795 List!14383) Bool)

(assert (=> b!1406227 (= res!636657 (prefixMatch!304 lt!469324 lt!469319))))

(declare-fun rulesRegex!364 (LexerInterface!2176 List!14385) Regex!3795)

(assert (=> b!1406227 (= lt!469324 (rulesRegex!364 thiss!19762 rules!2550))))

(declare-fun lt!469297 () List!14383)

(declare-fun lt!469299 () C!7880)

(declare-fun ++!3724 (List!14383 List!14383) List!14383)

(assert (=> b!1406227 (= lt!469319 (++!3724 lt!469297 (Cons!14317 lt!469299 Nil!14317)))))

(declare-fun lt!469306 () BalanceConc!9384)

(assert (=> b!1406227 (= lt!469299 (apply!3665 lt!469306 0))))

(assert (=> b!1406227 (= lt!469297 (list!5593 lt!469311))))

(declare-fun charsOf!1453 (Token!4624) BalanceConc!9384)

(assert (=> b!1406227 (= lt!469311 (charsOf!1453 t1!34))))

(declare-fun tp!399486 () Bool)

(declare-fun b!1406228 () Bool)

(declare-fun e!897733 () Bool)

(declare-fun inv!21 (TokenValue!2571) Bool)

(assert (=> b!1406228 (= e!897733 (and (inv!21 (value!80341 t1!34)) e!897752 tp!399486))))

(declare-fun tp!399487 () Bool)

(declare-fun b!1406229 () Bool)

(declare-fun e!897743 () Bool)

(declare-fun e!897753 () Bool)

(assert (=> b!1406229 (= e!897743 (and tp!399487 (inv!18615 (tag!2743 (h!19720 rules!2550))) (inv!18618 (transformation!2481 (h!19720 rules!2550))) e!897753))))

(declare-fun b!1406230 () Bool)

(declare-fun res!636650 () Bool)

(assert (=> b!1406230 (=> res!636650 e!897734)))

(assert (=> b!1406230 (= res!636650 (not (contains!2825 lt!469319 lt!469299)))))

(declare-fun b!1406231 () Bool)

(declare-fun Unit!20681 () Unit!20679)

(assert (=> b!1406231 (= e!897756 Unit!20681)))

(declare-fun b!1406232 () Bool)

(assert (=> b!1406232 (= e!897748 e!897757)))

(declare-fun res!636642 () Bool)

(assert (=> b!1406232 (=> res!636642 e!897757)))

(declare-fun lt!469316 () tuple2!13946)

(declare-fun list!5594 (BalanceConc!9386) List!14384)

(assert (=> b!1406232 (= res!636642 (not (= (list!5594 (_1!7859 lt!469316)) lt!469301)))))

(declare-fun t2!34 () Token!4624)

(assert (=> b!1406232 (= lt!469301 (Cons!14318 t2!34 Nil!14318))))

(declare-fun lex!1001 (LexerInterface!2176 List!14385 BalanceConc!9384) tuple2!13946)

(assert (=> b!1406232 (= lt!469316 (lex!1001 thiss!19762 rules!2550 lt!469300))))

(declare-fun print!940 (LexerInterface!2176 BalanceConc!9386) BalanceConc!9384)

(declare-fun singletonSeq!1148 (Token!4624) BalanceConc!9386)

(assert (=> b!1406232 (= lt!469300 (print!940 thiss!19762 (singletonSeq!1148 t2!34)))))

(declare-fun tp!399496 () Bool)

(declare-fun b!1406233 () Bool)

(declare-fun e!897731 () Bool)

(declare-fun e!897739 () Bool)

(assert (=> b!1406233 (= e!897731 (and (inv!21 (value!80341 t2!34)) e!897739 tp!399496))))

(assert (=> b!1406234 (= e!897741 (and tp!399495 tp!399488))))

(declare-fun b!1406235 () Bool)

(declare-fun res!636634 () Bool)

(assert (=> b!1406235 (=> res!636634 e!897748)))

(declare-datatypes ((tuple2!13950 0))(
  ( (tuple2!13951 (_1!7861 Token!4624) (_2!7861 List!14383)) )
))
(declare-datatypes ((Option!2744 0))(
  ( (None!2743) (Some!2743 (v!21703 tuple2!13950)) )
))
(declare-fun maxPrefix!1150 (LexerInterface!2176 List!14385 List!14383) Option!2744)

(assert (=> b!1406235 (= res!636634 (not (= (maxPrefix!1150 thiss!19762 rules!2550 lt!469297) (Some!2743 (tuple2!13951 t1!34 Nil!14317)))))))

(declare-fun b!1406236 () Bool)

(declare-fun e!897727 () Bool)

(assert (=> b!1406236 (= e!897727 e!897740)))

(declare-fun res!636658 () Bool)

(assert (=> b!1406236 (=> (not res!636658) (not e!897740))))

(declare-fun size!11782 (BalanceConc!9384) Int)

(assert (=> b!1406236 (= res!636658 (> (size!11782 lt!469306) 0))))

(assert (=> b!1406236 (= lt!469306 (charsOf!1453 t2!34))))

(declare-fun e!897736 () Bool)

(assert (=> b!1406237 (= e!897729 (not e!897736))))

(declare-fun res!636638 () Bool)

(assert (=> b!1406237 (=> res!636638 e!897736)))

(declare-fun lambda!62059 () Int)

(declare-fun Exists!945 (Int) Bool)

(assert (=> b!1406237 (= res!636638 (not (Exists!945 lambda!62059)))))

(assert (=> b!1406237 (Exists!945 lambda!62059)))

(declare-fun lt!469314 () Unit!20679)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!263 (Regex!3795 List!14383) Unit!20679)

(assert (=> b!1406237 (= lt!469314 (lemmaPrefixMatchThenExistsStringThatMatches!263 lt!469324 lt!469319))))

(declare-fun b!1406238 () Bool)

(declare-fun res!636667 () Bool)

(assert (=> b!1406238 (=> (not res!636667) (not e!897740))))

(declare-fun sepAndNonSepRulesDisjointChars!854 (List!14385 List!14385) Bool)

(assert (=> b!1406238 (= res!636667 (sepAndNonSepRulesDisjointChars!854 rules!2550 rules!2550))))

(declare-fun b!1406239 () Bool)

(declare-fun e!897737 () Bool)

(assert (=> b!1406239 (= e!897737 e!897748)))

(declare-fun res!636665 () Bool)

(assert (=> b!1406239 (=> res!636665 e!897748)))

(declare-fun lt!469302 () List!14384)

(assert (=> b!1406239 (= res!636665 (not (= (list!5594 (_1!7859 lt!469323)) lt!469302)))))

(assert (=> b!1406239 (= lt!469302 (Cons!14318 t1!34 Nil!14318))))

(declare-fun lt!469312 () BalanceConc!9384)

(assert (=> b!1406239 (= lt!469323 (lex!1001 thiss!19762 rules!2550 lt!469312))))

(assert (=> b!1406239 (= lt!469312 (print!940 thiss!19762 (singletonSeq!1148 t1!34)))))

(declare-fun lt!469305 () Rule!4762)

(declare-fun getWitness!494 (List!14385 Int) Rule!4762)

(assert (=> b!1406239 (= lt!469305 (getWitness!494 rules!2550 lambda!62062))))

(declare-fun b!1406240 () Bool)

(declare-fun e!897750 () Bool)

(declare-fun e!897726 () Bool)

(assert (=> b!1406240 (= e!897750 e!897726)))

(declare-fun res!636654 () Bool)

(assert (=> b!1406240 (=> res!636654 e!897726)))

(declare-fun lt!469296 () Regex!3795)

(declare-fun validRegex!1663 (Regex!3795) Bool)

(assert (=> b!1406240 (= res!636654 (not (validRegex!1663 lt!469296)))))

(assert (=> b!1406240 (not (contains!2825 (usedCharacters!292 (regex!2481 lt!469305)) lt!469299))))

(declare-fun lt!469304 () Unit!20679)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!28 (LexerInterface!2176 List!14385 List!14385 Rule!4762 Rule!4762 C!7880) Unit!20679)

(assert (=> b!1406240 (= lt!469304 (lemmaNonSepRuleNotContainsCharContainedInASepRule!28 thiss!19762 rules!2550 rules!2550 lt!469305 (rule!4244 t2!34) lt!469299))))

(declare-fun b!1406241 () Bool)

(declare-fun res!636639 () Bool)

(assert (=> b!1406241 (=> res!636639 e!897734)))

(assert (=> b!1406241 (= res!636639 (not (contains!2825 lt!469309 lt!469310)))))

(declare-fun b!1406242 () Bool)

(declare-fun e!897754 () Bool)

(assert (=> b!1406242 (= e!897757 e!897754)))

(declare-fun res!636633 () Bool)

(assert (=> b!1406242 (=> res!636633 e!897754)))

(declare-fun lt!469298 () List!14383)

(assert (=> b!1406242 (= res!636633 (not (= (maxPrefix!1150 thiss!19762 rules!2550 lt!469298) (Some!2743 (tuple2!13951 t2!34 Nil!14317)))))))

(assert (=> b!1406242 (= lt!469298 (list!5593 lt!469306))))

(declare-fun b!1406243 () Bool)

(declare-fun res!636652 () Bool)

(assert (=> b!1406243 (=> (not res!636652) (not e!897740))))

(declare-fun separableTokensPredicate!459 (LexerInterface!2176 Token!4624 Token!4624 List!14385) Bool)

(assert (=> b!1406243 (= res!636652 (not (separableTokensPredicate!459 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1406244 () Bool)

(declare-fun e!897732 () Bool)

(assert (=> b!1406244 (= e!897744 e!897732)))

(declare-fun res!636641 () Bool)

(assert (=> b!1406244 (=> res!636641 e!897732)))

(declare-fun lt!469307 () Bool)

(assert (=> b!1406244 (= res!636641 lt!469307)))

(declare-fun lt!469321 () Unit!20679)

(declare-fun e!897747 () Unit!20679)

(assert (=> b!1406244 (= lt!469321 e!897747)))

(declare-fun c!231207 () Bool)

(assert (=> b!1406244 (= c!231207 lt!469307)))

(assert (=> b!1406244 (= lt!469307 (not (contains!2825 (usedCharacters!292 (regex!2481 (rule!4244 t2!34))) lt!469299)))))

(declare-fun b!1406245 () Bool)

(declare-fun res!636651 () Bool)

(assert (=> b!1406245 (=> (not res!636651) (not e!897727))))

(declare-fun isEmpty!8717 (List!14385) Bool)

(assert (=> b!1406245 (= res!636651 (not (isEmpty!8717 rules!2550)))))

(declare-fun b!1406246 () Bool)

(declare-fun res!636644 () Bool)

(assert (=> b!1406246 (=> (not res!636644) (not e!897727))))

(assert (=> b!1406246 (= res!636644 (not (= (isSeparator!2481 (rule!4244 t1!34)) (isSeparator!2481 (rule!4244 t2!34)))))))

(declare-fun b!1406247 () Bool)

(declare-fun res!636632 () Bool)

(assert (=> b!1406247 (=> res!636632 e!897754)))

(assert (=> b!1406247 (= res!636632 (not (contains!2826 rules!2550 (rule!4244 t2!34))))))

(declare-fun e!897758 () Bool)

(assert (=> b!1406248 (= e!897758 (and tp!399485 tp!399493))))

(declare-fun b!1406249 () Bool)

(declare-fun res!636660 () Bool)

(assert (=> b!1406249 (=> res!636660 e!897748)))

(assert (=> b!1406249 (= res!636660 (not (= (lexList!690 thiss!19762 rules!2550 (list!5593 lt!469312)) (tuple2!13949 lt!469302 Nil!14317))))))

(declare-fun b!1406250 () Bool)

(declare-fun e!897730 () Bool)

(assert (=> b!1406250 (= e!897735 e!897730)))

(declare-fun res!636666 () Bool)

(assert (=> b!1406250 (=> res!636666 e!897730)))

(declare-fun contains!2827 (List!14386 Regex!3795) Bool)

(assert (=> b!1406250 (= res!636666 (not (contains!2827 (map!3182 rules!2550 lambda!62060) lt!469296)))))

(declare-fun getWitness!495 (List!14386 Int) Regex!3795)

(assert (=> b!1406250 (= lt!469296 (getWitness!495 (map!3182 rules!2550 lambda!62060) lambda!62061))))

(declare-fun b!1406251 () Bool)

(declare-fun res!636635 () Bool)

(assert (=> b!1406251 (=> (not res!636635) (not e!897727))))

(declare-fun rulesInvariant!2046 (LexerInterface!2176 List!14385) Bool)

(assert (=> b!1406251 (= res!636635 (rulesInvariant!2046 thiss!19762 rules!2550))))

(declare-fun b!1406252 () Bool)

(declare-fun res!636648 () Bool)

(assert (=> b!1406252 (=> res!636648 e!897754)))

(assert (=> b!1406252 (= res!636648 (not (contains!2826 rules!2550 lt!469305)))))

(assert (=> b!1406253 (= e!897730 e!897737)))

(declare-fun res!636662 () Bool)

(assert (=> b!1406253 (=> res!636662 e!897737)))

(declare-fun exists!607 (List!14385 Int) Bool)

(assert (=> b!1406253 (= res!636662 (not (exists!607 rules!2550 lambda!62062)))))

(assert (=> b!1406253 (exists!607 rules!2550 lambda!62062)))

(declare-fun lt!469295 () Unit!20679)

(declare-fun lemmaMapContains!192 (List!14385 Int Regex!3795) Unit!20679)

(assert (=> b!1406253 (= lt!469295 (lemmaMapContains!192 rules!2550 lambda!62060 lt!469296))))

(declare-fun b!1406254 () Bool)

(declare-fun res!636663 () Bool)

(assert (=> b!1406254 (=> (not res!636663) (not e!897727))))

(declare-fun rulesProduceIndividualToken!1145 (LexerInterface!2176 List!14385 Token!4624) Bool)

(assert (=> b!1406254 (= res!636663 (rulesProduceIndividualToken!1145 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1406255 () Bool)

(declare-fun Unit!20682 () Unit!20679)

(assert (=> b!1406255 (= e!897756 Unit!20682)))

(declare-fun lt!469320 () Unit!20679)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!226 (Regex!3795 List!14383 C!7880) Unit!20679)

(declare-fun head!2619 (List!14383) C!7880)

(assert (=> b!1406255 (= lt!469320 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!226 (regex!2481 (rule!4244 t1!34)) lt!469297 (head!2619 lt!469297)))))

(assert (=> b!1406255 false))

(declare-fun b!1406256 () Bool)

(declare-fun res!636661 () Bool)

(assert (=> b!1406256 (=> res!636661 e!897757)))

(assert (=> b!1406256 (= res!636661 (not (isEmpty!8716 (_2!7859 lt!469316))))))

(declare-fun b!1406223 () Bool)

(assert (=> b!1406223 (= e!897726 (not (contains!2825 (usedCharacters!292 lt!469296) lt!469299)))))

(declare-fun res!636653 () Bool)

(assert (=> start!128238 (=> (not res!636653) (not e!897727))))

(get-info :version)

(assert (=> start!128238 (= res!636653 ((_ is Lexer!2174) thiss!19762))))

(assert (=> start!128238 e!897727))

(assert (=> start!128238 true))

(declare-fun e!897745 () Bool)

(assert (=> start!128238 e!897745))

(declare-fun inv!18619 (Token!4624) Bool)

(assert (=> start!128238 (and (inv!18619 t1!34) e!897733)))

(assert (=> start!128238 (and (inv!18619 t2!34) e!897731)))

(declare-fun tp!399490 () Bool)

(declare-fun b!1406257 () Bool)

(assert (=> b!1406257 (= e!897739 (and tp!399490 (inv!18615 (tag!2743 (rule!4244 t2!34))) (inv!18618 (transformation!2481 (rule!4244 t2!34))) e!897758))))

(declare-fun b!1406258 () Bool)

(declare-fun Unit!20683 () Unit!20679)

(assert (=> b!1406258 (= e!897747 Unit!20683)))

(declare-fun lt!469294 () Unit!20679)

(assert (=> b!1406258 (= lt!469294 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!226 (regex!2481 (rule!4244 t2!34)) lt!469298 (head!2619 lt!469298)))))

(assert (=> b!1406258 false))

(declare-fun b!1406259 () Bool)

(assert (=> b!1406259 (= e!897732 e!897750)))

(declare-fun res!636643 () Bool)

(assert (=> b!1406259 (=> res!636643 e!897750)))

(assert (=> b!1406259 (= res!636643 (or (isSeparator!2481 lt!469305) (isSeparator!2481 (rule!4244 t1!34))))))

(assert (=> b!1406259 (= (regex!2481 lt!469305) lt!469296)))

(declare-fun b!1406260 () Bool)

(declare-fun res!636659 () Bool)

(assert (=> b!1406260 (=> res!636659 e!897734)))

(assert (=> b!1406260 (= res!636659 (not (contains!2825 lt!469309 lt!469299)))))

(assert (=> b!1406261 (= e!897754 e!897728)))

(declare-fun res!636649 () Bool)

(assert (=> b!1406261 (=> res!636649 e!897728)))

(assert (=> b!1406261 (= res!636649 (not (matchR!1786 (regex!2481 (rule!4244 t1!34)) lt!469297)))))

(declare-fun lt!469322 () Unit!20679)

(declare-fun forallContained!676 (List!14385 Int Rule!4762) Unit!20679)

(assert (=> b!1406261 (= lt!469322 (forallContained!676 rules!2550 lambda!62063 (rule!4244 t2!34)))))

(declare-fun lt!469308 () Unit!20679)

(assert (=> b!1406261 (= lt!469308 (forallContained!676 rules!2550 lambda!62063 (rule!4244 t1!34)))))

(declare-fun lt!469318 () Unit!20679)

(assert (=> b!1406261 (= lt!469318 (forallContained!676 rules!2550 lambda!62063 lt!469305))))

(assert (=> b!1406262 (= e!897753 (and tp!399494 tp!399491))))

(declare-fun b!1406263 () Bool)

(assert (=> b!1406263 (= e!897736 e!897738)))

(declare-fun res!636645 () Bool)

(assert (=> b!1406263 (=> res!636645 e!897738)))

(declare-fun getSuffix!641 (List!14383 List!14383) List!14383)

(assert (=> b!1406263 (= res!636645 (not (= lt!469309 (++!3724 lt!469319 (getSuffix!641 lt!469309 lt!469319)))))))

(declare-fun pickWitness!248 (Int) List!14383)

(assert (=> b!1406263 (= lt!469309 (pickWitness!248 lambda!62059))))

(declare-fun b!1406264 () Bool)

(declare-fun res!636640 () Bool)

(assert (=> b!1406264 (=> (not res!636640) (not e!897727))))

(assert (=> b!1406264 (= res!636640 (rulesProduceIndividualToken!1145 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1406265 () Bool)

(declare-fun res!636636 () Bool)

(assert (=> b!1406265 (=> res!636636 e!897728)))

(assert (=> b!1406265 (= res!636636 (not (matchR!1786 (regex!2481 (rule!4244 t2!34)) lt!469298)))))

(declare-fun b!1406266 () Bool)

(declare-fun Unit!20684 () Unit!20679)

(assert (=> b!1406266 (= e!897747 Unit!20684)))

(declare-fun b!1406267 () Bool)

(declare-fun tp!399492 () Bool)

(assert (=> b!1406267 (= e!897745 (and e!897743 tp!399492))))

(assert (= (and start!128238 res!636653) b!1406245))

(assert (= (and b!1406245 res!636651) b!1406251))

(assert (= (and b!1406251 res!636635) b!1406254))

(assert (= (and b!1406254 res!636663) b!1406264))

(assert (= (and b!1406264 res!636640) b!1406246))

(assert (= (and b!1406246 res!636644) b!1406236))

(assert (= (and b!1406236 res!636658) b!1406238))

(assert (= (and b!1406238 res!636667) b!1406243))

(assert (= (and b!1406243 res!636652) b!1406227))

(assert (= (and b!1406227 res!636657) b!1406237))

(assert (= (and b!1406237 (not res!636638)) b!1406263))

(assert (= (and b!1406263 (not res!636645)) b!1406225))

(assert (= (and b!1406225 (not res!636664)) b!1406241))

(assert (= (and b!1406241 (not res!636639)) b!1406230))

(assert (= (and b!1406230 (not res!636650)) b!1406260))

(assert (= (and b!1406260 (not res!636659)) b!1406222))

(assert (= (and b!1406222 (not res!636656)) b!1406226))

(assert (= (and b!1406226 (not res!636647)) b!1406250))

(assert (= (and b!1406250 (not res!636666)) b!1406253))

(assert (= (and b!1406253 (not res!636662)) b!1406239))

(assert (= (and b!1406239 (not res!636665)) b!1406218))

(assert (= (and b!1406218 (not res!636668)) b!1406249))

(assert (= (and b!1406249 (not res!636660)) b!1406235))

(assert (= (and b!1406235 (not res!636634)) b!1406220))

(assert (= (and b!1406220 (not res!636655)) b!1406232))

(assert (= (and b!1406232 (not res!636642)) b!1406256))

(assert (= (and b!1406256 (not res!636661)) b!1406224))

(assert (= (and b!1406224 (not res!636637)) b!1406242))

(assert (= (and b!1406242 (not res!636633)) b!1406247))

(assert (= (and b!1406247 (not res!636632)) b!1406252))

(assert (= (and b!1406252 (not res!636648)) b!1406261))

(assert (= (and b!1406261 (not res!636649)) b!1406265))

(assert (= (and b!1406265 (not res!636636)) b!1406219))

(assert (= (and b!1406219 c!231206) b!1406255))

(assert (= (and b!1406219 (not c!231206)) b!1406231))

(assert (= (and b!1406219 (not res!636646)) b!1406244))

(assert (= (and b!1406244 c!231207) b!1406258))

(assert (= (and b!1406244 (not c!231207)) b!1406266))

(assert (= (and b!1406244 (not res!636641)) b!1406259))

(assert (= (and b!1406259 (not res!636643)) b!1406240))

(assert (= (and b!1406240 (not res!636654)) b!1406223))

(assert (= b!1406229 b!1406262))

(assert (= b!1406267 b!1406229))

(assert (= (and start!128238 ((_ is Cons!14319) rules!2550)) b!1406267))

(assert (= b!1406221 b!1406234))

(assert (= b!1406228 b!1406221))

(assert (= start!128238 b!1406228))

(assert (= b!1406257 b!1406248))

(assert (= b!1406233 b!1406257))

(assert (= start!128238 b!1406233))

(declare-fun m!1583753 () Bool)

(assert (=> b!1406264 m!1583753))

(declare-fun m!1583755 () Bool)

(assert (=> b!1406257 m!1583755))

(declare-fun m!1583757 () Bool)

(assert (=> b!1406257 m!1583757))

(declare-fun m!1583759 () Bool)

(assert (=> b!1406223 m!1583759))

(assert (=> b!1406223 m!1583759))

(declare-fun m!1583761 () Bool)

(assert (=> b!1406223 m!1583761))

(declare-fun m!1583763 () Bool)

(assert (=> b!1406236 m!1583763))

(declare-fun m!1583765 () Bool)

(assert (=> b!1406236 m!1583765))

(declare-fun m!1583767 () Bool)

(assert (=> b!1406218 m!1583767))

(declare-fun m!1583769 () Bool)

(assert (=> b!1406255 m!1583769))

(assert (=> b!1406255 m!1583769))

(declare-fun m!1583771 () Bool)

(assert (=> b!1406255 m!1583771))

(declare-fun m!1583773 () Bool)

(assert (=> b!1406230 m!1583773))

(declare-fun m!1583775 () Bool)

(assert (=> b!1406237 m!1583775))

(assert (=> b!1406237 m!1583775))

(declare-fun m!1583777 () Bool)

(assert (=> b!1406237 m!1583777))

(declare-fun m!1583779 () Bool)

(assert (=> b!1406221 m!1583779))

(declare-fun m!1583781 () Bool)

(assert (=> b!1406221 m!1583781))

(declare-fun m!1583783 () Bool)

(assert (=> b!1406250 m!1583783))

(assert (=> b!1406250 m!1583783))

(declare-fun m!1583785 () Bool)

(assert (=> b!1406250 m!1583785))

(assert (=> b!1406250 m!1583783))

(assert (=> b!1406250 m!1583783))

(declare-fun m!1583787 () Bool)

(assert (=> b!1406250 m!1583787))

(declare-fun m!1583789 () Bool)

(assert (=> start!128238 m!1583789))

(declare-fun m!1583791 () Bool)

(assert (=> start!128238 m!1583791))

(declare-fun m!1583793 () Bool)

(assert (=> b!1406241 m!1583793))

(declare-fun m!1583795 () Bool)

(assert (=> b!1406243 m!1583795))

(declare-fun m!1583797 () Bool)

(assert (=> b!1406256 m!1583797))

(declare-fun m!1583799 () Bool)

(assert (=> b!1406258 m!1583799))

(assert (=> b!1406258 m!1583799))

(declare-fun m!1583801 () Bool)

(assert (=> b!1406258 m!1583801))

(declare-fun m!1583803 () Bool)

(assert (=> b!1406232 m!1583803))

(declare-fun m!1583805 () Bool)

(assert (=> b!1406232 m!1583805))

(declare-fun m!1583807 () Bool)

(assert (=> b!1406232 m!1583807))

(assert (=> b!1406232 m!1583807))

(declare-fun m!1583809 () Bool)

(assert (=> b!1406232 m!1583809))

(assert (=> b!1406226 m!1583783))

(declare-fun m!1583811 () Bool)

(assert (=> b!1406226 m!1583811))

(declare-fun m!1583813 () Bool)

(assert (=> b!1406226 m!1583813))

(assert (=> b!1406226 m!1583783))

(declare-fun m!1583815 () Bool)

(assert (=> b!1406226 m!1583815))

(assert (=> b!1406226 m!1583783))

(declare-fun m!1583817 () Bool)

(assert (=> b!1406251 m!1583817))

(declare-fun m!1583819 () Bool)

(assert (=> b!1406225 m!1583819))

(declare-fun m!1583821 () Bool)

(assert (=> b!1406225 m!1583821))

(declare-fun m!1583823 () Bool)

(assert (=> b!1406220 m!1583823))

(declare-fun m!1583825 () Bool)

(assert (=> b!1406265 m!1583825))

(declare-fun m!1583827 () Bool)

(assert (=> b!1406254 m!1583827))

(declare-fun m!1583829 () Bool)

(assert (=> b!1406253 m!1583829))

(assert (=> b!1406253 m!1583829))

(declare-fun m!1583831 () Bool)

(assert (=> b!1406253 m!1583831))

(declare-fun m!1583833 () Bool)

(assert (=> b!1406263 m!1583833))

(assert (=> b!1406263 m!1583833))

(declare-fun m!1583835 () Bool)

(assert (=> b!1406263 m!1583835))

(declare-fun m!1583837 () Bool)

(assert (=> b!1406263 m!1583837))

(declare-fun m!1583839 () Bool)

(assert (=> b!1406224 m!1583839))

(assert (=> b!1406224 m!1583839))

(declare-fun m!1583841 () Bool)

(assert (=> b!1406224 m!1583841))

(declare-fun m!1583843 () Bool)

(assert (=> b!1406260 m!1583843))

(declare-fun m!1583845 () Bool)

(assert (=> b!1406252 m!1583845))

(declare-fun m!1583847 () Bool)

(assert (=> b!1406219 m!1583847))

(assert (=> b!1406219 m!1583847))

(declare-fun m!1583849 () Bool)

(assert (=> b!1406219 m!1583849))

(declare-fun m!1583851 () Bool)

(assert (=> b!1406229 m!1583851))

(declare-fun m!1583853 () Bool)

(assert (=> b!1406229 m!1583853))

(declare-fun m!1583855 () Bool)

(assert (=> b!1406238 m!1583855))

(declare-fun m!1583857 () Bool)

(assert (=> b!1406233 m!1583857))

(declare-fun m!1583859 () Bool)

(assert (=> b!1406242 m!1583859))

(declare-fun m!1583861 () Bool)

(assert (=> b!1406242 m!1583861))

(declare-fun m!1583863 () Bool)

(assert (=> b!1406247 m!1583863))

(declare-fun m!1583865 () Bool)

(assert (=> b!1406249 m!1583865))

(assert (=> b!1406249 m!1583865))

(declare-fun m!1583867 () Bool)

(assert (=> b!1406249 m!1583867))

(declare-fun m!1583869 () Bool)

(assert (=> b!1406261 m!1583869))

(declare-fun m!1583871 () Bool)

(assert (=> b!1406261 m!1583871))

(declare-fun m!1583873 () Bool)

(assert (=> b!1406261 m!1583873))

(declare-fun m!1583875 () Bool)

(assert (=> b!1406261 m!1583875))

(declare-fun m!1583877 () Bool)

(assert (=> b!1406245 m!1583877))

(declare-fun m!1583879 () Bool)

(assert (=> b!1406222 m!1583879))

(declare-fun m!1583881 () Bool)

(assert (=> b!1406235 m!1583881))

(declare-fun m!1583883 () Bool)

(assert (=> b!1406227 m!1583883))

(declare-fun m!1583885 () Bool)

(assert (=> b!1406227 m!1583885))

(declare-fun m!1583887 () Bool)

(assert (=> b!1406227 m!1583887))

(declare-fun m!1583889 () Bool)

(assert (=> b!1406227 m!1583889))

(declare-fun m!1583891 () Bool)

(assert (=> b!1406227 m!1583891))

(declare-fun m!1583893 () Bool)

(assert (=> b!1406227 m!1583893))

(declare-fun m!1583895 () Bool)

(assert (=> b!1406244 m!1583895))

(assert (=> b!1406244 m!1583895))

(declare-fun m!1583897 () Bool)

(assert (=> b!1406244 m!1583897))

(declare-fun m!1583899 () Bool)

(assert (=> b!1406228 m!1583899))

(declare-fun m!1583901 () Bool)

(assert (=> b!1406240 m!1583901))

(declare-fun m!1583903 () Bool)

(assert (=> b!1406240 m!1583903))

(assert (=> b!1406240 m!1583903))

(declare-fun m!1583905 () Bool)

(assert (=> b!1406240 m!1583905))

(declare-fun m!1583907 () Bool)

(assert (=> b!1406240 m!1583907))

(declare-fun m!1583909 () Bool)

(assert (=> b!1406239 m!1583909))

(declare-fun m!1583911 () Bool)

(assert (=> b!1406239 m!1583911))

(declare-fun m!1583913 () Bool)

(assert (=> b!1406239 m!1583913))

(declare-fun m!1583915 () Bool)

(assert (=> b!1406239 m!1583915))

(declare-fun m!1583917 () Bool)

(assert (=> b!1406239 m!1583917))

(assert (=> b!1406239 m!1583913))

(check-sat (not b!1406267) (not b_next!35035) (not b!1406254) (not b!1406227) (not b!1406244) (not b!1406221) (not b!1406245) (not b_next!35045) (not b!1406218) (not start!128238) b_and!94159 b_and!94165 (not b!1406224) (not b!1406240) (not b!1406233) (not b!1406243) b_and!94157 (not b!1406247) (not b!1406257) (not b_next!35039) (not b!1406258) (not b!1406263) (not b!1406225) b_and!94161 (not b!1406219) b_and!94163 (not b!1406236) (not b!1406260) (not b!1406223) (not b!1406261) (not b!1406229) (not b!1406252) (not b!1406232) (not b!1406256) (not b!1406249) (not b!1406230) (not b!1406265) (not b!1406264) (not b_next!35043) b_and!94155 (not b!1406226) (not b!1406235) (not b_next!35041) (not b!1406238) (not b!1406253) (not b!1406237) (not b!1406241) (not b!1406228) (not b!1406251) (not b!1406220) (not b!1406250) (not b!1406239) (not b_next!35037) (not b!1406222) (not b!1406255) (not b!1406242))
(check-sat b_and!94157 (not b_next!35039) (not b_next!35035) b_and!94161 b_and!94163 (not b_next!35045) b_and!94159 (not b_next!35041) b_and!94165 (not b_next!35037) (not b_next!35043) b_and!94155)

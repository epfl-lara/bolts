; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!746316 () Bool)

(assert start!746316)

(declare-fun b!7908221 () Bool)

(declare-fun b_free!135071 () Bool)

(declare-fun b_next!135861 () Bool)

(assert (=> b!7908221 (= b_free!135071 (not b_next!135861))))

(declare-fun tp!2355842 () Bool)

(declare-fun b_and!353283 () Bool)

(assert (=> b!7908221 (= tp!2355842 b_and!353283)))

(declare-fun b_free!135073 () Bool)

(declare-fun b_next!135863 () Bool)

(assert (=> b!7908221 (= b_free!135073 (not b_next!135863))))

(declare-fun tp!2355843 () Bool)

(declare-fun b_and!353285 () Bool)

(assert (=> b!7908221 (= tp!2355843 b_and!353285)))

(declare-fun tp!2355845 () Bool)

(declare-fun b!7908217 () Bool)

(declare-fun e!4668154 () Bool)

(declare-datatypes ((List!74434 0))(
  ( (Nil!74310) (Cons!74310 (h!80758 (_ BitVec 16)) (t!389735 List!74434)) )
))
(declare-datatypes ((TokenValue!8954 0))(
  ( (FloatLiteralValue!17908 (text!63123 List!74434)) (TokenValueExt!8953 (__x!35195 Int)) (Broken!44770 (value!288138 List!74434)) (Object!9077) (End!8954) (Def!8954) (Underscore!8954) (Match!8954) (Else!8954) (Error!8954) (Case!8954) (If!8954) (Extends!8954) (Abstract!8954) (Class!8954) (Val!8954) (DelimiterValue!17908 (del!9014 List!74434)) (KeywordValue!8960 (value!288139 List!74434)) (CommentValue!17908 (value!288140 List!74434)) (WhitespaceValue!17908 (value!288141 List!74434)) (IndentationValue!8954 (value!288142 List!74434)) (String!83191) (Int32!8954) (Broken!44771 (value!288143 List!74434)) (Boolean!8955) (Unit!169352) (OperatorValue!8957 (op!9014 List!74434)) (IdentifierValue!17908 (value!288144 List!74434)) (IdentifierValue!17909 (value!288145 List!74434)) (WhitespaceValue!17909 (value!288146 List!74434)) (True!17908) (False!17908) (Broken!44772 (value!288147 List!74434)) (Broken!44773 (value!288148 List!74434)) (True!17909) (RightBrace!8954) (RightBracket!8954) (Colon!8954) (Null!8954) (Comma!8954) (LeftBracket!8954) (False!17909) (LeftBrace!8954) (ImaginaryLiteralValue!8954 (text!63124 List!74434)) (StringLiteralValue!26862 (value!288149 List!74434)) (EOFValue!8954 (value!288150 List!74434)) (IdentValue!8954 (value!288151 List!74434)) (DelimiterValue!17909 (value!288152 List!74434)) (DedentValue!8954 (value!288153 List!74434)) (NewLineValue!8954 (value!288154 List!74434)) (IntegerValue!26862 (value!288155 (_ BitVec 32)) (text!63125 List!74434)) (IntegerValue!26863 (value!288156 Int) (text!63126 List!74434)) (Times!8954) (Or!8954) (Equal!8954) (Minus!8954) (Broken!44774 (value!288157 List!74434)) (And!8954) (Div!8954) (LessEqual!8954) (Mod!8954) (Concat!30295) (Not!8954) (Plus!8954) (SpaceValue!8954 (value!288158 List!74434)) (IntegerValue!26864 (value!288159 Int) (text!63127 List!74434)) (StringLiteralValue!26863 (text!63128 List!74434)) (FloatLiteralValue!17909 (text!63129 List!74434)) (BytesLiteralValue!8954 (value!288160 List!74434)) (CommentValue!17909 (value!288161 List!74434)) (StringLiteralValue!26864 (value!288162 List!74434)) (ErrorTokenValue!8954 (msg!9015 List!74434)) )
))
(declare-datatypes ((C!43012 0))(
  ( (C!43013 (val!31970 Int)) )
))
(declare-datatypes ((List!74435 0))(
  ( (Nil!74311) (Cons!74311 (h!80759 C!43012) (t!389736 List!74435)) )
))
(declare-datatypes ((IArray!31685 0))(
  ( (IArray!31686 (innerList!15900 List!74435)) )
))
(declare-datatypes ((Conc!15812 0))(
  ( (Node!15812 (left!56686 Conc!15812) (right!57016 Conc!15812) (csize!31854 Int) (cheight!16023 Int)) (Leaf!30099 (xs!19194 IArray!31685) (csize!31855 Int)) (Empty!15812) )
))
(declare-datatypes ((BalanceConc!30742 0))(
  ( (BalanceConc!30743 (c!1450935 Conc!15812)) )
))
(declare-datatypes ((Regex!21341 0))(
  ( (ElementMatch!21341 (c!1450936 C!43012)) (Concat!30296 (regOne!43194 Regex!21341) (regTwo!43194 Regex!21341)) (EmptyExpr!21341) (Star!21341 (reg!21670 Regex!21341)) (EmptyLang!21341) (Union!21341 (regOne!43195 Regex!21341) (regTwo!43195 Regex!21341)) )
))
(declare-datatypes ((String!83192 0))(
  ( (String!83193 (value!288163 String)) )
))
(declare-datatypes ((TokenValueInjection!17216 0))(
  ( (TokenValueInjection!17217 (toValue!11695 Int) (toChars!11554 Int)) )
))
(declare-datatypes ((Rule!17076 0))(
  ( (Rule!17077 (regex!8638 Regex!21341) (tag!9502 String!83192) (isSeparator!8638 Bool) (transformation!8638 TokenValueInjection!17216)) )
))
(declare-datatypes ((List!74436 0))(
  ( (Nil!74312) (Cons!74312 (h!80760 Rule!17076) (t!389737 List!74436)) )
))
(declare-fun rulesArg!141 () List!74436)

(declare-fun e!4668157 () Bool)

(declare-fun inv!95327 (String!83192) Bool)

(declare-fun inv!95329 (TokenValueInjection!17216) Bool)

(assert (=> b!7908217 (= e!4668157 (and tp!2355845 (inv!95327 (tag!9502 (h!80760 rulesArg!141))) (inv!95329 (transformation!8638 (h!80760 rulesArg!141))) e!4668154))))

(declare-fun b!7908218 () Bool)

(declare-fun e!4668151 () Bool)

(declare-fun tp!2355844 () Bool)

(assert (=> b!7908218 (= e!4668151 (and e!4668157 tp!2355844))))

(declare-fun b!7908219 () Bool)

(declare-fun res!3138605 () Bool)

(declare-fun e!4668156 () Bool)

(assert (=> b!7908219 (=> res!3138605 e!4668156)))

(declare-datatypes ((Token!15696 0))(
  ( (Token!15697 (value!288164 TokenValue!8954) (rule!11940 Rule!17076) (size!43085 Int) (originalCharacters!8879 List!74435)) )
))
(declare-datatypes ((tuple2!70328 0))(
  ( (tuple2!70329 (_1!38467 Token!15696) (_2!38467 List!74435)) )
))
(declare-datatypes ((Option!17920 0))(
  ( (None!17919) (Some!17919 (v!55072 tuple2!70328)) )
))
(declare-fun lt!2685762 () Option!17920)

(declare-fun isEmpty!42658 (Option!17920) Bool)

(assert (=> b!7908219 (= res!3138605 (isEmpty!42658 lt!2685762))))

(declare-fun b!7908220 () Bool)

(declare-fun res!3138602 () Bool)

(declare-fun e!4668153 () Bool)

(assert (=> b!7908220 (=> (not res!3138602) (not e!4668153))))

(declare-fun lt!2685765 () tuple2!70328)

(declare-fun input!1184 () List!74435)

(declare-fun size!43086 (List!74435) Int)

(assert (=> b!7908220 (= res!3138602 (< (size!43086 (_2!38467 lt!2685765)) (size!43086 input!1184)))))

(assert (=> b!7908221 (= e!4668154 (and tp!2355842 tp!2355843))))

(declare-fun b!7908222 () Bool)

(declare-fun e!4668155 () Bool)

(declare-fun e!4668158 () Bool)

(assert (=> b!7908222 (= e!4668155 (not e!4668158))))

(declare-fun res!3138599 () Bool)

(assert (=> b!7908222 (=> res!3138599 e!4668158)))

(get-info :version)

(assert (=> b!7908222 (= res!3138599 (or (and ((_ is Cons!74312) rulesArg!141) ((_ is Nil!74312) (t!389737 rulesArg!141))) (not ((_ is Cons!74312) rulesArg!141))))))

(declare-fun isPrefix!6471 (List!74435 List!74435) Bool)

(assert (=> b!7908222 (isPrefix!6471 input!1184 input!1184)))

(declare-datatypes ((Unit!169353 0))(
  ( (Unit!169354) )
))
(declare-fun lt!2685764 () Unit!169353)

(declare-fun lemmaIsPrefixRefl!3982 (List!74435 List!74435) Unit!169353)

(assert (=> b!7908222 (= lt!2685764 (lemmaIsPrefixRefl!3982 input!1184 input!1184))))

(declare-fun b!7908223 () Bool)

(declare-fun e!4668159 () Bool)

(assert (=> b!7908223 (= e!4668156 e!4668159)))

(declare-fun res!3138596 () Bool)

(assert (=> b!7908223 (=> (not res!3138596) (not e!4668159))))

(declare-fun isDefined!14492 (Option!17920) Bool)

(assert (=> b!7908223 (= res!3138596 (isDefined!14492 lt!2685762))))

(declare-fun b!7908224 () Bool)

(declare-fun res!3138603 () Bool)

(assert (=> b!7908224 (=> (not res!3138603) (not e!4668155))))

(declare-fun isEmpty!42659 (List!74436) Bool)

(assert (=> b!7908224 (= res!3138603 (not (isEmpty!42659 rulesArg!141)))))

(declare-fun b!7908225 () Bool)

(declare-fun res!3138601 () Bool)

(assert (=> b!7908225 (=> (not res!3138601) (not e!4668153))))

(declare-fun lt!2685763 () List!74435)

(declare-fun ++!18192 (List!74435 List!74435) List!74435)

(assert (=> b!7908225 (= res!3138601 (= (++!18192 lt!2685763 (_2!38467 lt!2685765)) input!1184))))

(declare-fun b!7908226 () Bool)

(declare-fun res!3138595 () Bool)

(assert (=> b!7908226 (=> (not res!3138595) (not e!4668153))))

(declare-fun apply!14361 (TokenValueInjection!17216 BalanceConc!30742) TokenValue!8954)

(declare-fun seqFromList!6179 (List!74435) BalanceConc!30742)

(assert (=> b!7908226 (= res!3138595 (= (value!288164 (_1!38467 lt!2685765)) (apply!14361 (transformation!8638 (rule!11940 (_1!38467 lt!2685765))) (seqFromList!6179 (originalCharacters!8879 (_1!38467 lt!2685765))))))))

(declare-fun b!7908227 () Bool)

(declare-fun e!4668152 () Bool)

(declare-fun tp_is_empty!53057 () Bool)

(declare-fun tp!2355846 () Bool)

(assert (=> b!7908227 (= e!4668152 (and tp_is_empty!53057 tp!2355846))))

(declare-fun b!7908228 () Bool)

(declare-fun res!3138604 () Bool)

(assert (=> b!7908228 (=> (not res!3138604) (not e!4668153))))

(declare-fun matchR!10668 (Regex!21341 List!74435) Bool)

(assert (=> b!7908228 (= res!3138604 (matchR!10668 (regex!8638 (rule!11940 (_1!38467 lt!2685765))) lt!2685763))))

(declare-fun b!7908229 () Bool)

(declare-fun contains!20902 (List!74436 Rule!17076) Bool)

(assert (=> b!7908229 (= e!4668153 (contains!20902 rulesArg!141 (rule!11940 (_1!38467 lt!2685765))))))

(declare-fun b!7908230 () Bool)

(assert (=> b!7908230 (= e!4668158 e!4668156)))

(declare-fun res!3138600 () Bool)

(assert (=> b!7908230 (=> res!3138600 e!4668156)))

(declare-fun lt!2685766 () Option!17920)

(assert (=> b!7908230 (= res!3138600 (or (and ((_ is None!17919) lt!2685766) ((_ is None!17919) lt!2685762)) ((_ is None!17919) lt!2685762) ((_ is None!17919) lt!2685766) (>= (size!43085 (_1!38467 (v!55072 lt!2685766))) (size!43085 (_1!38467 (v!55072 lt!2685762))))))))

(declare-datatypes ((LexerInterface!8230 0))(
  ( (LexerInterfaceExt!8227 (__x!35196 Int)) (Lexer!8228) )
))
(declare-fun thiss!14377 () LexerInterface!8230)

(declare-fun maxPrefix!4755 (LexerInterface!8230 List!74436 List!74435) Option!17920)

(assert (=> b!7908230 (= lt!2685762 (maxPrefix!4755 thiss!14377 (t!389737 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3806 (LexerInterface!8230 Rule!17076 List!74435) Option!17920)

(assert (=> b!7908230 (= lt!2685766 (maxPrefixOneRule!3806 thiss!14377 (h!80760 rulesArg!141) input!1184))))

(declare-fun res!3138597 () Bool)

(assert (=> start!746316 (=> (not res!3138597) (not e!4668155))))

(assert (=> start!746316 (= res!3138597 ((_ is Lexer!8228) thiss!14377))))

(assert (=> start!746316 e!4668155))

(assert (=> start!746316 true))

(assert (=> start!746316 e!4668151))

(assert (=> start!746316 e!4668152))

(declare-fun b!7908231 () Bool)

(assert (=> b!7908231 (= e!4668159 e!4668153)))

(declare-fun res!3138594 () Bool)

(assert (=> b!7908231 (=> (not res!3138594) (not e!4668153))))

(assert (=> b!7908231 (= res!3138594 (= lt!2685763 (originalCharacters!8879 (_1!38467 lt!2685765))))))

(declare-fun list!19282 (BalanceConc!30742) List!74435)

(declare-fun charsOf!5582 (Token!15696) BalanceConc!30742)

(assert (=> b!7908231 (= lt!2685763 (list!19282 (charsOf!5582 (_1!38467 lt!2685765))))))

(declare-fun get!26711 (Option!17920) tuple2!70328)

(assert (=> b!7908231 (= lt!2685765 (get!26711 lt!2685762))))

(declare-fun b!7908232 () Bool)

(declare-fun res!3138598 () Bool)

(assert (=> b!7908232 (=> (not res!3138598) (not e!4668155))))

(declare-fun rulesValidInductive!3449 (LexerInterface!8230 List!74436) Bool)

(assert (=> b!7908232 (= res!3138598 (rulesValidInductive!3449 thiss!14377 rulesArg!141))))

(assert (= (and start!746316 res!3138597) b!7908232))

(assert (= (and b!7908232 res!3138598) b!7908224))

(assert (= (and b!7908224 res!3138603) b!7908222))

(assert (= (and b!7908222 (not res!3138599)) b!7908230))

(assert (= (and b!7908230 (not res!3138600)) b!7908219))

(assert (= (and b!7908219 (not res!3138605)) b!7908223))

(assert (= (and b!7908223 res!3138596) b!7908231))

(assert (= (and b!7908231 res!3138594) b!7908220))

(assert (= (and b!7908220 res!3138602) b!7908225))

(assert (= (and b!7908225 res!3138601) b!7908226))

(assert (= (and b!7908226 res!3138595) b!7908228))

(assert (= (and b!7908228 res!3138604) b!7908229))

(assert (= b!7908217 b!7908221))

(assert (= b!7908218 b!7908217))

(assert (= (and start!746316 ((_ is Cons!74312) rulesArg!141)) b!7908218))

(assert (= (and start!746316 ((_ is Cons!74311) input!1184)) b!7908227))

(declare-fun m!8282124 () Bool)

(assert (=> b!7908217 m!8282124))

(declare-fun m!8282126 () Bool)

(assert (=> b!7908217 m!8282126))

(declare-fun m!8282128 () Bool)

(assert (=> b!7908220 m!8282128))

(declare-fun m!8282130 () Bool)

(assert (=> b!7908220 m!8282130))

(declare-fun m!8282132 () Bool)

(assert (=> b!7908224 m!8282132))

(declare-fun m!8282134 () Bool)

(assert (=> b!7908219 m!8282134))

(declare-fun m!8282136 () Bool)

(assert (=> b!7908222 m!8282136))

(declare-fun m!8282138 () Bool)

(assert (=> b!7908222 m!8282138))

(declare-fun m!8282140 () Bool)

(assert (=> b!7908223 m!8282140))

(declare-fun m!8282142 () Bool)

(assert (=> b!7908230 m!8282142))

(declare-fun m!8282144 () Bool)

(assert (=> b!7908230 m!8282144))

(declare-fun m!8282146 () Bool)

(assert (=> b!7908228 m!8282146))

(declare-fun m!8282148 () Bool)

(assert (=> b!7908229 m!8282148))

(declare-fun m!8282150 () Bool)

(assert (=> b!7908225 m!8282150))

(declare-fun m!8282152 () Bool)

(assert (=> b!7908226 m!8282152))

(assert (=> b!7908226 m!8282152))

(declare-fun m!8282154 () Bool)

(assert (=> b!7908226 m!8282154))

(declare-fun m!8282156 () Bool)

(assert (=> b!7908232 m!8282156))

(declare-fun m!8282158 () Bool)

(assert (=> b!7908231 m!8282158))

(assert (=> b!7908231 m!8282158))

(declare-fun m!8282160 () Bool)

(assert (=> b!7908231 m!8282160))

(declare-fun m!8282162 () Bool)

(assert (=> b!7908231 m!8282162))

(check-sat (not b!7908227) (not b!7908230) (not b_next!135863) (not b!7908222) (not b!7908217) (not b!7908219) (not b_next!135861) (not b!7908229) (not b!7908226) (not b!7908220) (not b!7908228) b_and!353283 (not b!7908225) (not b!7908223) (not b!7908232) b_and!353285 tp_is_empty!53057 (not b!7908218) (not b!7908224) (not b!7908231))
(check-sat b_and!353285 b_and!353283 (not b_next!135863) (not b_next!135861))
(get-model)

(declare-fun d!2359705 () Bool)

(assert (=> d!2359705 (= (inv!95327 (tag!9502 (h!80760 rulesArg!141))) (= (mod (str.len (value!288163 (tag!9502 (h!80760 rulesArg!141)))) 2) 0))))

(assert (=> b!7908217 d!2359705))

(declare-fun d!2359707 () Bool)

(declare-fun res!3138637 () Bool)

(declare-fun e!4668181 () Bool)

(assert (=> d!2359707 (=> (not res!3138637) (not e!4668181))))

(declare-fun semiInverseModEq!3828 (Int Int) Bool)

(assert (=> d!2359707 (= res!3138637 (semiInverseModEq!3828 (toChars!11554 (transformation!8638 (h!80760 rulesArg!141))) (toValue!11695 (transformation!8638 (h!80760 rulesArg!141)))))))

(assert (=> d!2359707 (= (inv!95329 (transformation!8638 (h!80760 rulesArg!141))) e!4668181)))

(declare-fun b!7908271 () Bool)

(declare-fun equivClasses!3643 (Int Int) Bool)

(assert (=> b!7908271 (= e!4668181 (equivClasses!3643 (toChars!11554 (transformation!8638 (h!80760 rulesArg!141))) (toValue!11695 (transformation!8638 (h!80760 rulesArg!141)))))))

(assert (= (and d!2359707 res!3138637) b!7908271))

(declare-fun m!8282168 () Bool)

(assert (=> d!2359707 m!8282168))

(declare-fun m!8282170 () Bool)

(assert (=> b!7908271 m!8282170))

(assert (=> b!7908217 d!2359707))

(declare-fun b!7908322 () Bool)

(declare-fun res!3138672 () Bool)

(declare-fun e!4668214 () Bool)

(assert (=> b!7908322 (=> res!3138672 e!4668214)))

(assert (=> b!7908322 (= res!3138672 (not ((_ is ElementMatch!21341) (regex!8638 (rule!11940 (_1!38467 lt!2685765))))))))

(declare-fun e!4668217 () Bool)

(assert (=> b!7908322 (= e!4668217 e!4668214)))

(declare-fun b!7908323 () Bool)

(declare-fun e!4668213 () Bool)

(declare-fun nullable!9498 (Regex!21341) Bool)

(assert (=> b!7908323 (= e!4668213 (nullable!9498 (regex!8638 (rule!11940 (_1!38467 lt!2685765)))))))

(declare-fun b!7908324 () Bool)

(declare-fun res!3138670 () Bool)

(declare-fun e!4668215 () Bool)

(assert (=> b!7908324 (=> (not res!3138670) (not e!4668215))))

(declare-fun isEmpty!42661 (List!74435) Bool)

(declare-fun tail!15704 (List!74435) List!74435)

(assert (=> b!7908324 (= res!3138670 (isEmpty!42661 (tail!15704 lt!2685763)))))

(declare-fun b!7908325 () Bool)

(declare-fun res!3138675 () Bool)

(assert (=> b!7908325 (=> (not res!3138675) (not e!4668215))))

(declare-fun call!733492 () Bool)

(assert (=> b!7908325 (= res!3138675 (not call!733492))))

(declare-fun b!7908326 () Bool)

(declare-fun res!3138668 () Bool)

(assert (=> b!7908326 (=> res!3138668 e!4668214)))

(assert (=> b!7908326 (= res!3138668 e!4668215)))

(declare-fun res!3138671 () Bool)

(assert (=> b!7908326 (=> (not res!3138671) (not e!4668215))))

(declare-fun lt!2685779 () Bool)

(assert (=> b!7908326 (= res!3138671 lt!2685779)))

(declare-fun b!7908327 () Bool)

(declare-fun e!4668216 () Bool)

(assert (=> b!7908327 (= e!4668214 e!4668216)))

(declare-fun res!3138669 () Bool)

(assert (=> b!7908327 (=> (not res!3138669) (not e!4668216))))

(assert (=> b!7908327 (= res!3138669 (not lt!2685779))))

(declare-fun d!2359709 () Bool)

(declare-fun e!4668218 () Bool)

(assert (=> d!2359709 e!4668218))

(declare-fun c!1450956 () Bool)

(assert (=> d!2359709 (= c!1450956 ((_ is EmptyExpr!21341) (regex!8638 (rule!11940 (_1!38467 lt!2685765)))))))

(assert (=> d!2359709 (= lt!2685779 e!4668213)))

(declare-fun c!1450958 () Bool)

(assert (=> d!2359709 (= c!1450958 (isEmpty!42661 lt!2685763))))

(declare-fun validRegex!11661 (Regex!21341) Bool)

(assert (=> d!2359709 (validRegex!11661 (regex!8638 (rule!11940 (_1!38467 lt!2685765))))))

(assert (=> d!2359709 (= (matchR!10668 (regex!8638 (rule!11940 (_1!38467 lt!2685765))) lt!2685763) lt!2685779)))

(declare-fun b!7908328 () Bool)

(declare-fun e!4668212 () Bool)

(assert (=> b!7908328 (= e!4668216 e!4668212)))

(declare-fun res!3138673 () Bool)

(assert (=> b!7908328 (=> res!3138673 e!4668212)))

(assert (=> b!7908328 (= res!3138673 call!733492)))

(declare-fun b!7908329 () Bool)

(declare-fun head!16161 (List!74435) C!43012)

(assert (=> b!7908329 (= e!4668215 (= (head!16161 lt!2685763) (c!1450936 (regex!8638 (rule!11940 (_1!38467 lt!2685765))))))))

(declare-fun bm!733487 () Bool)

(assert (=> bm!733487 (= call!733492 (isEmpty!42661 lt!2685763))))

(declare-fun b!7908330 () Bool)

(assert (=> b!7908330 (= e!4668218 e!4668217)))

(declare-fun c!1450957 () Bool)

(assert (=> b!7908330 (= c!1450957 ((_ is EmptyLang!21341) (regex!8638 (rule!11940 (_1!38467 lt!2685765)))))))

(declare-fun b!7908331 () Bool)

(declare-fun derivativeStep!6440 (Regex!21341 C!43012) Regex!21341)

(assert (=> b!7908331 (= e!4668213 (matchR!10668 (derivativeStep!6440 (regex!8638 (rule!11940 (_1!38467 lt!2685765))) (head!16161 lt!2685763)) (tail!15704 lt!2685763)))))

(declare-fun b!7908332 () Bool)

(assert (=> b!7908332 (= e!4668217 (not lt!2685779))))

(declare-fun b!7908333 () Bool)

(declare-fun res!3138674 () Bool)

(assert (=> b!7908333 (=> res!3138674 e!4668212)))

(assert (=> b!7908333 (= res!3138674 (not (isEmpty!42661 (tail!15704 lt!2685763))))))

(declare-fun b!7908334 () Bool)

(assert (=> b!7908334 (= e!4668218 (= lt!2685779 call!733492))))

(declare-fun b!7908335 () Bool)

(assert (=> b!7908335 (= e!4668212 (not (= (head!16161 lt!2685763) (c!1450936 (regex!8638 (rule!11940 (_1!38467 lt!2685765)))))))))

(assert (= (and d!2359709 c!1450958) b!7908323))

(assert (= (and d!2359709 (not c!1450958)) b!7908331))

(assert (= (and d!2359709 c!1450956) b!7908334))

(assert (= (and d!2359709 (not c!1450956)) b!7908330))

(assert (= (and b!7908330 c!1450957) b!7908332))

(assert (= (and b!7908330 (not c!1450957)) b!7908322))

(assert (= (and b!7908322 (not res!3138672)) b!7908326))

(assert (= (and b!7908326 res!3138671) b!7908325))

(assert (= (and b!7908325 res!3138675) b!7908324))

(assert (= (and b!7908324 res!3138670) b!7908329))

(assert (= (and b!7908326 (not res!3138668)) b!7908327))

(assert (= (and b!7908327 res!3138669) b!7908328))

(assert (= (and b!7908328 (not res!3138673)) b!7908333))

(assert (= (and b!7908333 (not res!3138674)) b!7908335))

(assert (= (or b!7908334 b!7908325 b!7908328) bm!733487))

(declare-fun m!8282200 () Bool)

(assert (=> b!7908331 m!8282200))

(assert (=> b!7908331 m!8282200))

(declare-fun m!8282202 () Bool)

(assert (=> b!7908331 m!8282202))

(declare-fun m!8282204 () Bool)

(assert (=> b!7908331 m!8282204))

(assert (=> b!7908331 m!8282202))

(assert (=> b!7908331 m!8282204))

(declare-fun m!8282206 () Bool)

(assert (=> b!7908331 m!8282206))

(declare-fun m!8282208 () Bool)

(assert (=> b!7908323 m!8282208))

(assert (=> b!7908329 m!8282200))

(assert (=> b!7908333 m!8282204))

(assert (=> b!7908333 m!8282204))

(declare-fun m!8282210 () Bool)

(assert (=> b!7908333 m!8282210))

(assert (=> b!7908324 m!8282204))

(assert (=> b!7908324 m!8282204))

(assert (=> b!7908324 m!8282210))

(assert (=> b!7908335 m!8282200))

(declare-fun m!8282212 () Bool)

(assert (=> d!2359709 m!8282212))

(declare-fun m!8282214 () Bool)

(assert (=> d!2359709 m!8282214))

(assert (=> bm!733487 m!8282212))

(assert (=> b!7908228 d!2359709))

(declare-fun d!2359723 () Bool)

(declare-fun list!19283 (Conc!15812) List!74435)

(assert (=> d!2359723 (= (list!19282 (charsOf!5582 (_1!38467 lt!2685765))) (list!19283 (c!1450935 (charsOf!5582 (_1!38467 lt!2685765)))))))

(declare-fun bs!1968174 () Bool)

(assert (= bs!1968174 d!2359723))

(declare-fun m!8282216 () Bool)

(assert (=> bs!1968174 m!8282216))

(assert (=> b!7908231 d!2359723))

(declare-fun d!2359725 () Bool)

(declare-fun lt!2685782 () BalanceConc!30742)

(assert (=> d!2359725 (= (list!19282 lt!2685782) (originalCharacters!8879 (_1!38467 lt!2685765)))))

(declare-fun dynLambda!30101 (Int TokenValue!8954) BalanceConc!30742)

(assert (=> d!2359725 (= lt!2685782 (dynLambda!30101 (toChars!11554 (transformation!8638 (rule!11940 (_1!38467 lt!2685765)))) (value!288164 (_1!38467 lt!2685765))))))

(assert (=> d!2359725 (= (charsOf!5582 (_1!38467 lt!2685765)) lt!2685782)))

(declare-fun b_lambda!289909 () Bool)

(assert (=> (not b_lambda!289909) (not d!2359725)))

(declare-fun t!389741 () Bool)

(declare-fun tb!263141 () Bool)

(assert (=> (and b!7908221 (= (toChars!11554 (transformation!8638 (h!80760 rulesArg!141))) (toChars!11554 (transformation!8638 (rule!11940 (_1!38467 lt!2685765))))) t!389741) tb!263141))

(declare-fun b!7908340 () Bool)

(declare-fun e!4668221 () Bool)

(declare-fun tp!2355849 () Bool)

(declare-fun inv!95330 (Conc!15812) Bool)

(assert (=> b!7908340 (= e!4668221 (and (inv!95330 (c!1450935 (dynLambda!30101 (toChars!11554 (transformation!8638 (rule!11940 (_1!38467 lt!2685765)))) (value!288164 (_1!38467 lt!2685765))))) tp!2355849))))

(declare-fun result!360366 () Bool)

(declare-fun inv!95331 (BalanceConc!30742) Bool)

(assert (=> tb!263141 (= result!360366 (and (inv!95331 (dynLambda!30101 (toChars!11554 (transformation!8638 (rule!11940 (_1!38467 lt!2685765)))) (value!288164 (_1!38467 lt!2685765)))) e!4668221))))

(assert (= tb!263141 b!7908340))

(declare-fun m!8282218 () Bool)

(assert (=> b!7908340 m!8282218))

(declare-fun m!8282220 () Bool)

(assert (=> tb!263141 m!8282220))

(assert (=> d!2359725 t!389741))

(declare-fun b_and!353289 () Bool)

(assert (= b_and!353285 (and (=> t!389741 result!360366) b_and!353289)))

(declare-fun m!8282222 () Bool)

(assert (=> d!2359725 m!8282222))

(declare-fun m!8282224 () Bool)

(assert (=> d!2359725 m!8282224))

(assert (=> b!7908231 d!2359725))

(declare-fun d!2359727 () Bool)

(assert (=> d!2359727 (= (get!26711 lt!2685762) (v!55072 lt!2685762))))

(assert (=> b!7908231 d!2359727))

(declare-fun d!2359729 () Bool)

(declare-fun lt!2685785 () Int)

(assert (=> d!2359729 (>= lt!2685785 0)))

(declare-fun e!4668224 () Int)

(assert (=> d!2359729 (= lt!2685785 e!4668224)))

(declare-fun c!1450961 () Bool)

(assert (=> d!2359729 (= c!1450961 ((_ is Nil!74311) (_2!38467 lt!2685765)))))

(assert (=> d!2359729 (= (size!43086 (_2!38467 lt!2685765)) lt!2685785)))

(declare-fun b!7908345 () Bool)

(assert (=> b!7908345 (= e!4668224 0)))

(declare-fun b!7908346 () Bool)

(assert (=> b!7908346 (= e!4668224 (+ 1 (size!43086 (t!389736 (_2!38467 lt!2685765)))))))

(assert (= (and d!2359729 c!1450961) b!7908345))

(assert (= (and d!2359729 (not c!1450961)) b!7908346))

(declare-fun m!8282226 () Bool)

(assert (=> b!7908346 m!8282226))

(assert (=> b!7908220 d!2359729))

(declare-fun d!2359731 () Bool)

(declare-fun lt!2685786 () Int)

(assert (=> d!2359731 (>= lt!2685786 0)))

(declare-fun e!4668225 () Int)

(assert (=> d!2359731 (= lt!2685786 e!4668225)))

(declare-fun c!1450962 () Bool)

(assert (=> d!2359731 (= c!1450962 ((_ is Nil!74311) input!1184))))

(assert (=> d!2359731 (= (size!43086 input!1184) lt!2685786)))

(declare-fun b!7908347 () Bool)

(assert (=> b!7908347 (= e!4668225 0)))

(declare-fun b!7908348 () Bool)

(assert (=> b!7908348 (= e!4668225 (+ 1 (size!43086 (t!389736 input!1184))))))

(assert (= (and d!2359731 c!1450962) b!7908347))

(assert (= (and d!2359731 (not c!1450962)) b!7908348))

(declare-fun m!8282228 () Bool)

(assert (=> b!7908348 m!8282228))

(assert (=> b!7908220 d!2359731))

(declare-fun d!2359733 () Bool)

(assert (=> d!2359733 (= (isEmpty!42658 lt!2685762) (not ((_ is Some!17919) lt!2685762)))))

(assert (=> b!7908219 d!2359733))

(declare-fun b!7908400 () Bool)

(declare-fun e!4668247 () Option!17920)

(declare-fun lt!2685826 () Option!17920)

(declare-fun lt!2685822 () Option!17920)

(assert (=> b!7908400 (= e!4668247 (ite (and ((_ is None!17919) lt!2685826) ((_ is None!17919) lt!2685822)) None!17919 (ite ((_ is None!17919) lt!2685822) lt!2685826 (ite ((_ is None!17919) lt!2685826) lt!2685822 (ite (>= (size!43085 (_1!38467 (v!55072 lt!2685826))) (size!43085 (_1!38467 (v!55072 lt!2685822)))) lt!2685826 lt!2685822)))))))

(declare-fun call!733498 () Option!17920)

(assert (=> b!7908400 (= lt!2685826 call!733498)))

(assert (=> b!7908400 (= lt!2685822 (maxPrefix!4755 thiss!14377 (t!389737 (t!389737 rulesArg!141)) input!1184))))

(declare-fun b!7908401 () Bool)

(declare-fun res!3138713 () Bool)

(declare-fun e!4668246 () Bool)

(assert (=> b!7908401 (=> (not res!3138713) (not e!4668246))))

(declare-fun lt!2685824 () Option!17920)

(assert (=> b!7908401 (= res!3138713 (matchR!10668 (regex!8638 (rule!11940 (_1!38467 (get!26711 lt!2685824)))) (list!19282 (charsOf!5582 (_1!38467 (get!26711 lt!2685824))))))))

(declare-fun b!7908402 () Bool)

(declare-fun res!3138715 () Bool)

(assert (=> b!7908402 (=> (not res!3138715) (not e!4668246))))

(assert (=> b!7908402 (= res!3138715 (< (size!43086 (_2!38467 (get!26711 lt!2685824))) (size!43086 input!1184)))))

(declare-fun d!2359735 () Bool)

(declare-fun e!4668245 () Bool)

(assert (=> d!2359735 e!4668245))

(declare-fun res!3138718 () Bool)

(assert (=> d!2359735 (=> res!3138718 e!4668245)))

(assert (=> d!2359735 (= res!3138718 (isEmpty!42658 lt!2685824))))

(assert (=> d!2359735 (= lt!2685824 e!4668247)))

(declare-fun c!1450970 () Bool)

(assert (=> d!2359735 (= c!1450970 (and ((_ is Cons!74312) (t!389737 rulesArg!141)) ((_ is Nil!74312) (t!389737 (t!389737 rulesArg!141)))))))

(declare-fun lt!2685825 () Unit!169353)

(declare-fun lt!2685823 () Unit!169353)

(assert (=> d!2359735 (= lt!2685825 lt!2685823)))

(assert (=> d!2359735 (isPrefix!6471 input!1184 input!1184)))

(assert (=> d!2359735 (= lt!2685823 (lemmaIsPrefixRefl!3982 input!1184 input!1184))))

(assert (=> d!2359735 (rulesValidInductive!3449 thiss!14377 (t!389737 rulesArg!141))))

(assert (=> d!2359735 (= (maxPrefix!4755 thiss!14377 (t!389737 rulesArg!141) input!1184) lt!2685824)))

(declare-fun b!7908403 () Bool)

(assert (=> b!7908403 (= e!4668245 e!4668246)))

(declare-fun res!3138719 () Bool)

(assert (=> b!7908403 (=> (not res!3138719) (not e!4668246))))

(assert (=> b!7908403 (= res!3138719 (isDefined!14492 lt!2685824))))

(declare-fun b!7908404 () Bool)

(declare-fun res!3138717 () Bool)

(assert (=> b!7908404 (=> (not res!3138717) (not e!4668246))))

(assert (=> b!7908404 (= res!3138717 (= (++!18192 (list!19282 (charsOf!5582 (_1!38467 (get!26711 lt!2685824)))) (_2!38467 (get!26711 lt!2685824))) input!1184))))

(declare-fun bm!733493 () Bool)

(assert (=> bm!733493 (= call!733498 (maxPrefixOneRule!3806 thiss!14377 (h!80760 (t!389737 rulesArg!141)) input!1184))))

(declare-fun b!7908405 () Bool)

(declare-fun res!3138716 () Bool)

(assert (=> b!7908405 (=> (not res!3138716) (not e!4668246))))

(assert (=> b!7908405 (= res!3138716 (= (list!19282 (charsOf!5582 (_1!38467 (get!26711 lt!2685824)))) (originalCharacters!8879 (_1!38467 (get!26711 lt!2685824)))))))

(declare-fun b!7908406 () Bool)

(assert (=> b!7908406 (= e!4668247 call!733498)))

(declare-fun b!7908407 () Bool)

(assert (=> b!7908407 (= e!4668246 (contains!20902 (t!389737 rulesArg!141) (rule!11940 (_1!38467 (get!26711 lt!2685824)))))))

(declare-fun b!7908408 () Bool)

(declare-fun res!3138714 () Bool)

(assert (=> b!7908408 (=> (not res!3138714) (not e!4668246))))

(assert (=> b!7908408 (= res!3138714 (= (value!288164 (_1!38467 (get!26711 lt!2685824))) (apply!14361 (transformation!8638 (rule!11940 (_1!38467 (get!26711 lt!2685824)))) (seqFromList!6179 (originalCharacters!8879 (_1!38467 (get!26711 lt!2685824)))))))))

(assert (= (and d!2359735 c!1450970) b!7908406))

(assert (= (and d!2359735 (not c!1450970)) b!7908400))

(assert (= (or b!7908406 b!7908400) bm!733493))

(assert (= (and d!2359735 (not res!3138718)) b!7908403))

(assert (= (and b!7908403 res!3138719) b!7908405))

(assert (= (and b!7908405 res!3138716) b!7908402))

(assert (= (and b!7908402 res!3138715) b!7908404))

(assert (= (and b!7908404 res!3138717) b!7908408))

(assert (= (and b!7908408 res!3138714) b!7908401))

(assert (= (and b!7908401 res!3138713) b!7908407))

(declare-fun m!8282258 () Bool)

(assert (=> b!7908404 m!8282258))

(declare-fun m!8282260 () Bool)

(assert (=> b!7908404 m!8282260))

(assert (=> b!7908404 m!8282260))

(declare-fun m!8282262 () Bool)

(assert (=> b!7908404 m!8282262))

(assert (=> b!7908404 m!8282262))

(declare-fun m!8282264 () Bool)

(assert (=> b!7908404 m!8282264))

(assert (=> b!7908408 m!8282258))

(declare-fun m!8282266 () Bool)

(assert (=> b!7908408 m!8282266))

(assert (=> b!7908408 m!8282266))

(declare-fun m!8282268 () Bool)

(assert (=> b!7908408 m!8282268))

(assert (=> b!7908401 m!8282258))

(assert (=> b!7908401 m!8282260))

(assert (=> b!7908401 m!8282260))

(assert (=> b!7908401 m!8282262))

(assert (=> b!7908401 m!8282262))

(declare-fun m!8282270 () Bool)

(assert (=> b!7908401 m!8282270))

(declare-fun m!8282272 () Bool)

(assert (=> b!7908403 m!8282272))

(declare-fun m!8282274 () Bool)

(assert (=> d!2359735 m!8282274))

(assert (=> d!2359735 m!8282136))

(assert (=> d!2359735 m!8282138))

(declare-fun m!8282276 () Bool)

(assert (=> d!2359735 m!8282276))

(assert (=> b!7908405 m!8282258))

(assert (=> b!7908405 m!8282260))

(assert (=> b!7908405 m!8282260))

(assert (=> b!7908405 m!8282262))

(declare-fun m!8282278 () Bool)

(assert (=> bm!733493 m!8282278))

(assert (=> b!7908407 m!8282258))

(declare-fun m!8282280 () Bool)

(assert (=> b!7908407 m!8282280))

(declare-fun m!8282282 () Bool)

(assert (=> b!7908400 m!8282282))

(assert (=> b!7908402 m!8282258))

(declare-fun m!8282284 () Bool)

(assert (=> b!7908402 m!8282284))

(assert (=> b!7908402 m!8282130))

(assert (=> b!7908230 d!2359735))

(declare-fun b!7908464 () Bool)

(declare-fun e!4668279 () Bool)

(declare-fun e!4668277 () Bool)

(assert (=> b!7908464 (= e!4668279 e!4668277)))

(declare-fun res!3138771 () Bool)

(assert (=> b!7908464 (=> (not res!3138771) (not e!4668277))))

(declare-fun lt!2685853 () Option!17920)

(assert (=> b!7908464 (= res!3138771 (matchR!10668 (regex!8638 (h!80760 rulesArg!141)) (list!19282 (charsOf!5582 (_1!38467 (get!26711 lt!2685853))))))))

(declare-fun b!7908465 () Bool)

(declare-fun e!4668280 () Bool)

(declare-datatypes ((tuple2!70332 0))(
  ( (tuple2!70333 (_1!38469 List!74435) (_2!38469 List!74435)) )
))
(declare-fun findLongestMatchInner!2166 (Regex!21341 List!74435 Int List!74435 List!74435 Int) tuple2!70332)

(assert (=> b!7908465 (= e!4668280 (matchR!10668 (regex!8638 (h!80760 rulesArg!141)) (_1!38469 (findLongestMatchInner!2166 (regex!8638 (h!80760 rulesArg!141)) Nil!74311 (size!43086 Nil!74311) input!1184 input!1184 (size!43086 input!1184)))))))

(declare-fun b!7908466 () Bool)

(declare-fun res!3138775 () Bool)

(assert (=> b!7908466 (=> (not res!3138775) (not e!4668277))))

(assert (=> b!7908466 (= res!3138775 (= (rule!11940 (_1!38467 (get!26711 lt!2685853))) (h!80760 rulesArg!141)))))

(declare-fun b!7908467 () Bool)

(declare-fun res!3138772 () Bool)

(assert (=> b!7908467 (=> (not res!3138772) (not e!4668277))))

(assert (=> b!7908467 (= res!3138772 (= (value!288164 (_1!38467 (get!26711 lt!2685853))) (apply!14361 (transformation!8638 (rule!11940 (_1!38467 (get!26711 lt!2685853)))) (seqFromList!6179 (originalCharacters!8879 (_1!38467 (get!26711 lt!2685853)))))))))

(declare-fun d!2359739 () Bool)

(assert (=> d!2359739 e!4668279))

(declare-fun res!3138773 () Bool)

(assert (=> d!2359739 (=> res!3138773 e!4668279)))

(assert (=> d!2359739 (= res!3138773 (isEmpty!42658 lt!2685853))))

(declare-fun e!4668278 () Option!17920)

(assert (=> d!2359739 (= lt!2685853 e!4668278)))

(declare-fun c!1450974 () Bool)

(declare-fun lt!2685850 () tuple2!70332)

(assert (=> d!2359739 (= c!1450974 (isEmpty!42661 (_1!38469 lt!2685850)))))

(declare-fun findLongestMatch!1933 (Regex!21341 List!74435) tuple2!70332)

(assert (=> d!2359739 (= lt!2685850 (findLongestMatch!1933 (regex!8638 (h!80760 rulesArg!141)) input!1184))))

(declare-fun ruleValid!3949 (LexerInterface!8230 Rule!17076) Bool)

(assert (=> d!2359739 (ruleValid!3949 thiss!14377 (h!80760 rulesArg!141))))

(assert (=> d!2359739 (= (maxPrefixOneRule!3806 thiss!14377 (h!80760 rulesArg!141) input!1184) lt!2685853)))

(declare-fun b!7908468 () Bool)

(declare-fun size!43088 (BalanceConc!30742) Int)

(assert (=> b!7908468 (= e!4668278 (Some!17919 (tuple2!70329 (Token!15697 (apply!14361 (transformation!8638 (h!80760 rulesArg!141)) (seqFromList!6179 (_1!38469 lt!2685850))) (h!80760 rulesArg!141) (size!43088 (seqFromList!6179 (_1!38469 lt!2685850))) (_1!38469 lt!2685850)) (_2!38469 lt!2685850))))))

(declare-fun lt!2685854 () Unit!169353)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2129 (Regex!21341 List!74435) Unit!169353)

(assert (=> b!7908468 (= lt!2685854 (longestMatchIsAcceptedByMatchOrIsEmpty!2129 (regex!8638 (h!80760 rulesArg!141)) input!1184))))

(declare-fun res!3138770 () Bool)

(assert (=> b!7908468 (= res!3138770 (isEmpty!42661 (_1!38469 (findLongestMatchInner!2166 (regex!8638 (h!80760 rulesArg!141)) Nil!74311 (size!43086 Nil!74311) input!1184 input!1184 (size!43086 input!1184)))))))

(assert (=> b!7908468 (=> res!3138770 e!4668280)))

(assert (=> b!7908468 e!4668280))

(declare-fun lt!2685851 () Unit!169353)

(assert (=> b!7908468 (= lt!2685851 lt!2685854)))

(declare-fun lt!2685852 () Unit!169353)

(declare-fun lemmaSemiInverse!2676 (TokenValueInjection!17216 BalanceConc!30742) Unit!169353)

(assert (=> b!7908468 (= lt!2685852 (lemmaSemiInverse!2676 (transformation!8638 (h!80760 rulesArg!141)) (seqFromList!6179 (_1!38469 lt!2685850))))))

(declare-fun b!7908469 () Bool)

(assert (=> b!7908469 (= e!4668278 None!17919)))

(declare-fun b!7908470 () Bool)

(declare-fun res!3138774 () Bool)

(assert (=> b!7908470 (=> (not res!3138774) (not e!4668277))))

(assert (=> b!7908470 (= res!3138774 (= (++!18192 (list!19282 (charsOf!5582 (_1!38467 (get!26711 lt!2685853)))) (_2!38467 (get!26711 lt!2685853))) input!1184))))

(declare-fun b!7908471 () Bool)

(declare-fun res!3138769 () Bool)

(assert (=> b!7908471 (=> (not res!3138769) (not e!4668277))))

(assert (=> b!7908471 (= res!3138769 (< (size!43086 (_2!38467 (get!26711 lt!2685853))) (size!43086 input!1184)))))

(declare-fun b!7908472 () Bool)

(assert (=> b!7908472 (= e!4668277 (= (size!43085 (_1!38467 (get!26711 lt!2685853))) (size!43086 (originalCharacters!8879 (_1!38467 (get!26711 lt!2685853))))))))

(assert (= (and d!2359739 c!1450974) b!7908469))

(assert (= (and d!2359739 (not c!1450974)) b!7908468))

(assert (= (and b!7908468 (not res!3138770)) b!7908465))

(assert (= (and d!2359739 (not res!3138773)) b!7908464))

(assert (= (and b!7908464 res!3138771) b!7908470))

(assert (= (and b!7908470 res!3138774) b!7908471))

(assert (= (and b!7908471 res!3138769) b!7908466))

(assert (= (and b!7908466 res!3138775) b!7908467))

(assert (= (and b!7908467 res!3138772) b!7908472))

(declare-fun m!8282338 () Bool)

(assert (=> b!7908468 m!8282338))

(assert (=> b!7908468 m!8282338))

(assert (=> b!7908468 m!8282130))

(declare-fun m!8282340 () Bool)

(assert (=> b!7908468 m!8282340))

(declare-fun m!8282342 () Bool)

(assert (=> b!7908468 m!8282342))

(declare-fun m!8282344 () Bool)

(assert (=> b!7908468 m!8282344))

(declare-fun m!8282346 () Bool)

(assert (=> b!7908468 m!8282346))

(assert (=> b!7908468 m!8282130))

(assert (=> b!7908468 m!8282344))

(declare-fun m!8282348 () Bool)

(assert (=> b!7908468 m!8282348))

(assert (=> b!7908468 m!8282344))

(declare-fun m!8282350 () Bool)

(assert (=> b!7908468 m!8282350))

(assert (=> b!7908468 m!8282344))

(declare-fun m!8282352 () Bool)

(assert (=> b!7908468 m!8282352))

(declare-fun m!8282354 () Bool)

(assert (=> b!7908467 m!8282354))

(declare-fun m!8282356 () Bool)

(assert (=> b!7908467 m!8282356))

(assert (=> b!7908467 m!8282356))

(declare-fun m!8282358 () Bool)

(assert (=> b!7908467 m!8282358))

(assert (=> b!7908470 m!8282354))

(declare-fun m!8282360 () Bool)

(assert (=> b!7908470 m!8282360))

(assert (=> b!7908470 m!8282360))

(declare-fun m!8282362 () Bool)

(assert (=> b!7908470 m!8282362))

(assert (=> b!7908470 m!8282362))

(declare-fun m!8282364 () Bool)

(assert (=> b!7908470 m!8282364))

(assert (=> b!7908465 m!8282338))

(assert (=> b!7908465 m!8282130))

(assert (=> b!7908465 m!8282338))

(assert (=> b!7908465 m!8282130))

(assert (=> b!7908465 m!8282340))

(declare-fun m!8282366 () Bool)

(assert (=> b!7908465 m!8282366))

(assert (=> b!7908466 m!8282354))

(assert (=> b!7908471 m!8282354))

(declare-fun m!8282368 () Bool)

(assert (=> b!7908471 m!8282368))

(assert (=> b!7908471 m!8282130))

(declare-fun m!8282370 () Bool)

(assert (=> d!2359739 m!8282370))

(declare-fun m!8282372 () Bool)

(assert (=> d!2359739 m!8282372))

(declare-fun m!8282374 () Bool)

(assert (=> d!2359739 m!8282374))

(declare-fun m!8282376 () Bool)

(assert (=> d!2359739 m!8282376))

(assert (=> b!7908472 m!8282354))

(declare-fun m!8282378 () Bool)

(assert (=> b!7908472 m!8282378))

(assert (=> b!7908464 m!8282354))

(assert (=> b!7908464 m!8282360))

(assert (=> b!7908464 m!8282360))

(assert (=> b!7908464 m!8282362))

(assert (=> b!7908464 m!8282362))

(declare-fun m!8282380 () Bool)

(assert (=> b!7908464 m!8282380))

(assert (=> b!7908230 d!2359739))

(declare-fun d!2359747 () Bool)

(declare-fun lt!2685857 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15740 (List!74436) (InoxSet Rule!17076))

(assert (=> d!2359747 (= lt!2685857 (select (content!15740 rulesArg!141) (rule!11940 (_1!38467 lt!2685765))))))

(declare-fun e!4668286 () Bool)

(assert (=> d!2359747 (= lt!2685857 e!4668286)))

(declare-fun res!3138781 () Bool)

(assert (=> d!2359747 (=> (not res!3138781) (not e!4668286))))

(assert (=> d!2359747 (= res!3138781 ((_ is Cons!74312) rulesArg!141))))

(assert (=> d!2359747 (= (contains!20902 rulesArg!141 (rule!11940 (_1!38467 lt!2685765))) lt!2685857)))

(declare-fun b!7908477 () Bool)

(declare-fun e!4668285 () Bool)

(assert (=> b!7908477 (= e!4668286 e!4668285)))

(declare-fun res!3138780 () Bool)

(assert (=> b!7908477 (=> res!3138780 e!4668285)))

(assert (=> b!7908477 (= res!3138780 (= (h!80760 rulesArg!141) (rule!11940 (_1!38467 lt!2685765))))))

(declare-fun b!7908478 () Bool)

(assert (=> b!7908478 (= e!4668285 (contains!20902 (t!389737 rulesArg!141) (rule!11940 (_1!38467 lt!2685765))))))

(assert (= (and d!2359747 res!3138781) b!7908477))

(assert (= (and b!7908477 (not res!3138780)) b!7908478))

(declare-fun m!8282382 () Bool)

(assert (=> d!2359747 m!8282382))

(declare-fun m!8282384 () Bool)

(assert (=> d!2359747 m!8282384))

(declare-fun m!8282386 () Bool)

(assert (=> b!7908478 m!8282386))

(assert (=> b!7908229 d!2359747))

(declare-fun d!2359749 () Bool)

(assert (=> d!2359749 (= (isDefined!14492 lt!2685762) (not (isEmpty!42658 lt!2685762)))))

(declare-fun bs!1968176 () Bool)

(assert (= bs!1968176 d!2359749))

(assert (=> bs!1968176 m!8282134))

(assert (=> b!7908223 d!2359749))

(declare-fun b!7908489 () Bool)

(declare-fun e!4668295 () Bool)

(assert (=> b!7908489 (= e!4668295 (isPrefix!6471 (tail!15704 input!1184) (tail!15704 input!1184)))))

(declare-fun d!2359751 () Bool)

(declare-fun e!4668293 () Bool)

(assert (=> d!2359751 e!4668293))

(declare-fun res!3138793 () Bool)

(assert (=> d!2359751 (=> res!3138793 e!4668293)))

(declare-fun lt!2685860 () Bool)

(assert (=> d!2359751 (= res!3138793 (not lt!2685860))))

(declare-fun e!4668294 () Bool)

(assert (=> d!2359751 (= lt!2685860 e!4668294)))

(declare-fun res!3138790 () Bool)

(assert (=> d!2359751 (=> res!3138790 e!4668294)))

(assert (=> d!2359751 (= res!3138790 ((_ is Nil!74311) input!1184))))

(assert (=> d!2359751 (= (isPrefix!6471 input!1184 input!1184) lt!2685860)))

(declare-fun b!7908487 () Bool)

(assert (=> b!7908487 (= e!4668294 e!4668295)))

(declare-fun res!3138791 () Bool)

(assert (=> b!7908487 (=> (not res!3138791) (not e!4668295))))

(assert (=> b!7908487 (= res!3138791 (not ((_ is Nil!74311) input!1184)))))

(declare-fun b!7908488 () Bool)

(declare-fun res!3138792 () Bool)

(assert (=> b!7908488 (=> (not res!3138792) (not e!4668295))))

(assert (=> b!7908488 (= res!3138792 (= (head!16161 input!1184) (head!16161 input!1184)))))

(declare-fun b!7908490 () Bool)

(assert (=> b!7908490 (= e!4668293 (>= (size!43086 input!1184) (size!43086 input!1184)))))

(assert (= (and d!2359751 (not res!3138790)) b!7908487))

(assert (= (and b!7908487 res!3138791) b!7908488))

(assert (= (and b!7908488 res!3138792) b!7908489))

(assert (= (and d!2359751 (not res!3138793)) b!7908490))

(declare-fun m!8282388 () Bool)

(assert (=> b!7908489 m!8282388))

(assert (=> b!7908489 m!8282388))

(assert (=> b!7908489 m!8282388))

(assert (=> b!7908489 m!8282388))

(declare-fun m!8282390 () Bool)

(assert (=> b!7908489 m!8282390))

(declare-fun m!8282392 () Bool)

(assert (=> b!7908488 m!8282392))

(assert (=> b!7908488 m!8282392))

(assert (=> b!7908490 m!8282130))

(assert (=> b!7908490 m!8282130))

(assert (=> b!7908222 d!2359751))

(declare-fun d!2359753 () Bool)

(assert (=> d!2359753 (isPrefix!6471 input!1184 input!1184)))

(declare-fun lt!2685863 () Unit!169353)

(declare-fun choose!59736 (List!74435 List!74435) Unit!169353)

(assert (=> d!2359753 (= lt!2685863 (choose!59736 input!1184 input!1184))))

(assert (=> d!2359753 (= (lemmaIsPrefixRefl!3982 input!1184 input!1184) lt!2685863)))

(declare-fun bs!1968177 () Bool)

(assert (= bs!1968177 d!2359753))

(assert (=> bs!1968177 m!8282136))

(declare-fun m!8282394 () Bool)

(assert (=> bs!1968177 m!8282394))

(assert (=> b!7908222 d!2359753))

(declare-fun d!2359755 () Bool)

(assert (=> d!2359755 true))

(declare-fun lt!2685873 () Bool)

(declare-fun lambda!472533 () Int)

(declare-fun forall!18458 (List!74436 Int) Bool)

(assert (=> d!2359755 (= lt!2685873 (forall!18458 rulesArg!141 lambda!472533))))

(declare-fun e!4668333 () Bool)

(assert (=> d!2359755 (= lt!2685873 e!4668333)))

(declare-fun res!3138809 () Bool)

(assert (=> d!2359755 (=> res!3138809 e!4668333)))

(assert (=> d!2359755 (= res!3138809 (not ((_ is Cons!74312) rulesArg!141)))))

(assert (=> d!2359755 (= (rulesValidInductive!3449 thiss!14377 rulesArg!141) lt!2685873)))

(declare-fun b!7908549 () Bool)

(declare-fun e!4668332 () Bool)

(assert (=> b!7908549 (= e!4668333 e!4668332)))

(declare-fun res!3138810 () Bool)

(assert (=> b!7908549 (=> (not res!3138810) (not e!4668332))))

(assert (=> b!7908549 (= res!3138810 (ruleValid!3949 thiss!14377 (h!80760 rulesArg!141)))))

(declare-fun b!7908550 () Bool)

(assert (=> b!7908550 (= e!4668332 (rulesValidInductive!3449 thiss!14377 (t!389737 rulesArg!141)))))

(assert (= (and d!2359755 (not res!3138809)) b!7908549))

(assert (= (and b!7908549 res!3138810) b!7908550))

(declare-fun m!8282428 () Bool)

(assert (=> d!2359755 m!8282428))

(assert (=> b!7908549 m!8282376))

(assert (=> b!7908550 m!8282276))

(assert (=> b!7908232 d!2359755))

(declare-fun d!2359771 () Bool)

(declare-fun dynLambda!30103 (Int BalanceConc!30742) TokenValue!8954)

(assert (=> d!2359771 (= (apply!14361 (transformation!8638 (rule!11940 (_1!38467 lt!2685765))) (seqFromList!6179 (originalCharacters!8879 (_1!38467 lt!2685765)))) (dynLambda!30103 (toValue!11695 (transformation!8638 (rule!11940 (_1!38467 lt!2685765)))) (seqFromList!6179 (originalCharacters!8879 (_1!38467 lt!2685765)))))))

(declare-fun b_lambda!289913 () Bool)

(assert (=> (not b_lambda!289913) (not d!2359771)))

(declare-fun tb!263149 () Bool)

(declare-fun t!389749 () Bool)

(assert (=> (and b!7908221 (= (toValue!11695 (transformation!8638 (h!80760 rulesArg!141))) (toValue!11695 (transformation!8638 (rule!11940 (_1!38467 lt!2685765))))) t!389749) tb!263149))

(declare-fun result!360384 () Bool)

(declare-fun inv!21 (TokenValue!8954) Bool)

(assert (=> tb!263149 (= result!360384 (inv!21 (dynLambda!30103 (toValue!11695 (transformation!8638 (rule!11940 (_1!38467 lt!2685765)))) (seqFromList!6179 (originalCharacters!8879 (_1!38467 lt!2685765))))))))

(declare-fun m!8282430 () Bool)

(assert (=> tb!263149 m!8282430))

(assert (=> d!2359771 t!389749))

(declare-fun b_and!353297 () Bool)

(assert (= b_and!353283 (and (=> t!389749 result!360384) b_and!353297)))

(assert (=> d!2359771 m!8282152))

(declare-fun m!8282432 () Bool)

(assert (=> d!2359771 m!8282432))

(assert (=> b!7908226 d!2359771))

(declare-fun d!2359773 () Bool)

(declare-fun fromListB!2789 (List!74435) BalanceConc!30742)

(assert (=> d!2359773 (= (seqFromList!6179 (originalCharacters!8879 (_1!38467 lt!2685765))) (fromListB!2789 (originalCharacters!8879 (_1!38467 lt!2685765))))))

(declare-fun bs!1968179 () Bool)

(assert (= bs!1968179 d!2359773))

(declare-fun m!8282434 () Bool)

(assert (=> bs!1968179 m!8282434))

(assert (=> b!7908226 d!2359773))

(declare-fun b!7908565 () Bool)

(declare-fun res!3138815 () Bool)

(declare-fun e!4668341 () Bool)

(assert (=> b!7908565 (=> (not res!3138815) (not e!4668341))))

(declare-fun lt!2685876 () List!74435)

(assert (=> b!7908565 (= res!3138815 (= (size!43086 lt!2685876) (+ (size!43086 lt!2685763) (size!43086 (_2!38467 lt!2685765)))))))

(declare-fun b!7908563 () Bool)

(declare-fun e!4668342 () List!74435)

(assert (=> b!7908563 (= e!4668342 (_2!38467 lt!2685765))))

(declare-fun b!7908564 () Bool)

(assert (=> b!7908564 (= e!4668342 (Cons!74311 (h!80759 lt!2685763) (++!18192 (t!389736 lt!2685763) (_2!38467 lt!2685765))))))

(declare-fun d!2359775 () Bool)

(assert (=> d!2359775 e!4668341))

(declare-fun res!3138816 () Bool)

(assert (=> d!2359775 (=> (not res!3138816) (not e!4668341))))

(declare-fun content!15741 (List!74435) (InoxSet C!43012))

(assert (=> d!2359775 (= res!3138816 (= (content!15741 lt!2685876) ((_ map or) (content!15741 lt!2685763) (content!15741 (_2!38467 lt!2685765)))))))

(assert (=> d!2359775 (= lt!2685876 e!4668342)))

(declare-fun c!1450980 () Bool)

(assert (=> d!2359775 (= c!1450980 ((_ is Nil!74311) lt!2685763))))

(assert (=> d!2359775 (= (++!18192 lt!2685763 (_2!38467 lt!2685765)) lt!2685876)))

(declare-fun b!7908566 () Bool)

(assert (=> b!7908566 (= e!4668341 (or (not (= (_2!38467 lt!2685765) Nil!74311)) (= lt!2685876 lt!2685763)))))

(assert (= (and d!2359775 c!1450980) b!7908563))

(assert (= (and d!2359775 (not c!1450980)) b!7908564))

(assert (= (and d!2359775 res!3138816) b!7908565))

(assert (= (and b!7908565 res!3138815) b!7908566))

(declare-fun m!8282436 () Bool)

(assert (=> b!7908565 m!8282436))

(declare-fun m!8282438 () Bool)

(assert (=> b!7908565 m!8282438))

(assert (=> b!7908565 m!8282128))

(declare-fun m!8282440 () Bool)

(assert (=> b!7908564 m!8282440))

(declare-fun m!8282442 () Bool)

(assert (=> d!2359775 m!8282442))

(declare-fun m!8282444 () Bool)

(assert (=> d!2359775 m!8282444))

(declare-fun m!8282446 () Bool)

(assert (=> d!2359775 m!8282446))

(assert (=> b!7908225 d!2359775))

(declare-fun d!2359777 () Bool)

(assert (=> d!2359777 (= (isEmpty!42659 rulesArg!141) ((_ is Nil!74312) rulesArg!141))))

(assert (=> b!7908224 d!2359777))

(declare-fun b!7908577 () Bool)

(declare-fun b_free!135079 () Bool)

(declare-fun b_next!135869 () Bool)

(assert (=> b!7908577 (= b_free!135079 (not b_next!135869))))

(declare-fun tb!263151 () Bool)

(declare-fun t!389751 () Bool)

(assert (=> (and b!7908577 (= (toValue!11695 (transformation!8638 (h!80760 (t!389737 rulesArg!141)))) (toValue!11695 (transformation!8638 (rule!11940 (_1!38467 lt!2685765))))) t!389751) tb!263151))

(declare-fun result!360390 () Bool)

(assert (= result!360390 result!360384))

(assert (=> d!2359771 t!389751))

(declare-fun tp!2355893 () Bool)

(declare-fun b_and!353299 () Bool)

(assert (=> b!7908577 (= tp!2355893 (and (=> t!389751 result!360390) b_and!353299))))

(declare-fun b_free!135081 () Bool)

(declare-fun b_next!135871 () Bool)

(assert (=> b!7908577 (= b_free!135081 (not b_next!135871))))

(declare-fun tb!263153 () Bool)

(declare-fun t!389753 () Bool)

(assert (=> (and b!7908577 (= (toChars!11554 (transformation!8638 (h!80760 (t!389737 rulesArg!141)))) (toChars!11554 (transformation!8638 (rule!11940 (_1!38467 lt!2685765))))) t!389753) tb!263153))

(declare-fun result!360392 () Bool)

(assert (= result!360392 result!360366))

(assert (=> d!2359725 t!389753))

(declare-fun b_and!353301 () Bool)

(declare-fun tp!2355894 () Bool)

(assert (=> b!7908577 (= tp!2355894 (and (=> t!389753 result!360392) b_and!353301))))

(declare-fun e!4668354 () Bool)

(assert (=> b!7908577 (= e!4668354 (and tp!2355893 tp!2355894))))

(declare-fun e!4668353 () Bool)

(declare-fun tp!2355892 () Bool)

(declare-fun b!7908576 () Bool)

(assert (=> b!7908576 (= e!4668353 (and tp!2355892 (inv!95327 (tag!9502 (h!80760 (t!389737 rulesArg!141)))) (inv!95329 (transformation!8638 (h!80760 (t!389737 rulesArg!141)))) e!4668354))))

(declare-fun b!7908575 () Bool)

(declare-fun e!4668351 () Bool)

(declare-fun tp!2355891 () Bool)

(assert (=> b!7908575 (= e!4668351 (and e!4668353 tp!2355891))))

(assert (=> b!7908218 (= tp!2355844 e!4668351)))

(assert (= b!7908576 b!7908577))

(assert (= b!7908575 b!7908576))

(assert (= (and b!7908218 ((_ is Cons!74312) (t!389737 rulesArg!141))) b!7908575))

(declare-fun m!8282448 () Bool)

(assert (=> b!7908576 m!8282448))

(declare-fun m!8282450 () Bool)

(assert (=> b!7908576 m!8282450))

(declare-fun b!7908591 () Bool)

(declare-fun e!4668357 () Bool)

(declare-fun tp!2355906 () Bool)

(declare-fun tp!2355908 () Bool)

(assert (=> b!7908591 (= e!4668357 (and tp!2355906 tp!2355908))))

(assert (=> b!7908217 (= tp!2355845 e!4668357)))

(declare-fun b!7908589 () Bool)

(declare-fun tp!2355909 () Bool)

(declare-fun tp!2355905 () Bool)

(assert (=> b!7908589 (= e!4668357 (and tp!2355909 tp!2355905))))

(declare-fun b!7908590 () Bool)

(declare-fun tp!2355907 () Bool)

(assert (=> b!7908590 (= e!4668357 tp!2355907)))

(declare-fun b!7908588 () Bool)

(assert (=> b!7908588 (= e!4668357 tp_is_empty!53057)))

(assert (= (and b!7908217 ((_ is ElementMatch!21341) (regex!8638 (h!80760 rulesArg!141)))) b!7908588))

(assert (= (and b!7908217 ((_ is Concat!30296) (regex!8638 (h!80760 rulesArg!141)))) b!7908589))

(assert (= (and b!7908217 ((_ is Star!21341) (regex!8638 (h!80760 rulesArg!141)))) b!7908590))

(assert (= (and b!7908217 ((_ is Union!21341) (regex!8638 (h!80760 rulesArg!141)))) b!7908591))

(declare-fun b!7908596 () Bool)

(declare-fun e!4668360 () Bool)

(declare-fun tp!2355912 () Bool)

(assert (=> b!7908596 (= e!4668360 (and tp_is_empty!53057 tp!2355912))))

(assert (=> b!7908227 (= tp!2355846 e!4668360)))

(assert (= (and b!7908227 ((_ is Cons!74311) (t!389736 input!1184))) b!7908596))

(check-sat (not b!7908465) (not b_next!135869) (not b!7908329) (not b!7908489) (not d!2359755) (not b!7908408) (not d!2359709) (not b!7908401) (not d!2359739) (not d!2359723) (not b!7908407) (not b!7908576) (not b_next!135871) (not tb!263141) b_and!353297 (not b!7908590) (not b!7908466) (not b!7908490) (not b!7908335) (not b!7908467) (not b!7908346) (not d!2359735) (not b!7908596) (not b!7908471) (not d!2359707) tp_is_empty!53057 (not b!7908333) (not b!7908468) (not b!7908472) (not b!7908404) b_and!353301 (not b_lambda!289913) b_and!353299 (not tb!263149) (not bm!733487) (not d!2359725) (not b!7908488) (not b!7908470) (not bm!733493) (not d!2359753) (not b_next!135863) (not b!7908403) (not b!7908324) (not b!7908549) (not b!7908575) (not b!7908405) (not b!7908340) (not d!2359773) (not b!7908402) (not d!2359747) (not b!7908323) (not b!7908591) (not b!7908478) (not d!2359775) (not b!7908564) (not b!7908565) (not b!7908589) (not b_next!135861) b_and!353289 (not b!7908348) (not b!7908400) (not b!7908331) (not b!7908271) (not d!2359749) (not b_lambda!289909) (not b!7908464) (not b!7908550))
(check-sat (not b_next!135871) b_and!353297 (not b_next!135869) (not b_next!135863) (not b_next!135861) b_and!353289 b_and!353299 b_and!353301)

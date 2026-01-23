; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216024 () Bool)

(assert start!216024)

(declare-fun b!2217383 () Bool)

(declare-fun b_free!64203 () Bool)

(declare-fun b_next!64907 () Bool)

(assert (=> b!2217383 (= b_free!64203 (not b_next!64907))))

(declare-fun tp!690669 () Bool)

(declare-fun b_and!174103 () Bool)

(assert (=> b!2217383 (= tp!690669 b_and!174103)))

(declare-fun b_free!64205 () Bool)

(declare-fun b_next!64909 () Bool)

(assert (=> b!2217383 (= b_free!64205 (not b_next!64909))))

(declare-fun tp!690657 () Bool)

(declare-fun b_and!174105 () Bool)

(assert (=> b!2217383 (= tp!690657 b_and!174105)))

(declare-fun b!2217382 () Bool)

(declare-fun b_free!64207 () Bool)

(declare-fun b_next!64911 () Bool)

(assert (=> b!2217382 (= b_free!64207 (not b_next!64911))))

(declare-fun tp!690658 () Bool)

(declare-fun b_and!174107 () Bool)

(assert (=> b!2217382 (= tp!690658 b_and!174107)))

(declare-fun b_free!64209 () Bool)

(declare-fun b_next!64913 () Bool)

(assert (=> b!2217382 (= b_free!64209 (not b_next!64913))))

(declare-fun tp!690670 () Bool)

(declare-fun b_and!174109 () Bool)

(assert (=> b!2217382 (= tp!690670 b_and!174109)))

(declare-fun b_free!64211 () Bool)

(declare-fun b_next!64915 () Bool)

(assert (=> start!216024 (= b_free!64211 (not b_next!64915))))

(declare-fun tp!690667 () Bool)

(declare-fun b_and!174111 () Bool)

(assert (=> start!216024 (= tp!690667 b_and!174111)))

(declare-fun b!2217397 () Bool)

(declare-fun b_free!64213 () Bool)

(declare-fun b_next!64917 () Bool)

(assert (=> b!2217397 (= b_free!64213 (not b_next!64917))))

(declare-fun tp!690663 () Bool)

(declare-fun b_and!174113 () Bool)

(assert (=> b!2217397 (= tp!690663 b_and!174113)))

(declare-fun b_free!64215 () Bool)

(declare-fun b_next!64919 () Bool)

(assert (=> b!2217397 (= b_free!64215 (not b_next!64919))))

(declare-fun tp!690659 () Bool)

(declare-fun b_and!174115 () Bool)

(assert (=> b!2217397 (= tp!690659 b_and!174115)))

(declare-fun b!2217392 () Bool)

(declare-fun b_free!64217 () Bool)

(declare-fun b_next!64921 () Bool)

(assert (=> b!2217392 (= b_free!64217 (not b_next!64921))))

(declare-fun tp!690668 () Bool)

(declare-fun b_and!174117 () Bool)

(assert (=> b!2217392 (= tp!690668 b_and!174117)))

(declare-fun b_free!64219 () Bool)

(declare-fun b_next!64923 () Bool)

(assert (=> b!2217392 (= b_free!64219 (not b_next!64923))))

(declare-fun tp!690664 () Bool)

(declare-fun b_and!174119 () Bool)

(assert (=> b!2217392 (= tp!690664 b_and!174119)))

(declare-fun b!2217377 () Bool)

(declare-fun e!1415956 () Bool)

(declare-fun e!1415941 () Bool)

(assert (=> b!2217377 (= e!1415956 e!1415941)))

(declare-fun res!952302 () Bool)

(assert (=> b!2217377 (=> (not res!952302) (not e!1415941))))

(declare-fun lt!826872 () Int)

(declare-datatypes ((List!26025 0))(
  ( (Nil!25941) (Cons!25941 (h!31342 (_ BitVec 16)) (t!199257 List!26025)) )
))
(declare-datatypes ((TokenValue!4319 0))(
  ( (FloatLiteralValue!8638 (text!30678 List!26025)) (TokenValueExt!4318 (__x!17091 Int)) (Broken!21595 (value!131922 List!26025)) (Object!4402) (End!4319) (Def!4319) (Underscore!4319) (Match!4319) (Else!4319) (Error!4319) (Case!4319) (If!4319) (Extends!4319) (Abstract!4319) (Class!4319) (Val!4319) (DelimiterValue!8638 (del!4379 List!26025)) (KeywordValue!4325 (value!131923 List!26025)) (CommentValue!8638 (value!131924 List!26025)) (WhitespaceValue!8638 (value!131925 List!26025)) (IndentationValue!4319 (value!131926 List!26025)) (String!28270) (Int32!4319) (Broken!21596 (value!131927 List!26025)) (Boolean!4320) (Unit!38931) (OperatorValue!4322 (op!4379 List!26025)) (IdentifierValue!8638 (value!131928 List!26025)) (IdentifierValue!8639 (value!131929 List!26025)) (WhitespaceValue!8639 (value!131930 List!26025)) (True!8638) (False!8638) (Broken!21597 (value!131931 List!26025)) (Broken!21598 (value!131932 List!26025)) (True!8639) (RightBrace!4319) (RightBracket!4319) (Colon!4319) (Null!4319) (Comma!4319) (LeftBracket!4319) (False!8639) (LeftBrace!4319) (ImaginaryLiteralValue!4319 (text!30679 List!26025)) (StringLiteralValue!12957 (value!131933 List!26025)) (EOFValue!4319 (value!131934 List!26025)) (IdentValue!4319 (value!131935 List!26025)) (DelimiterValue!8639 (value!131936 List!26025)) (DedentValue!4319 (value!131937 List!26025)) (NewLineValue!4319 (value!131938 List!26025)) (IntegerValue!12957 (value!131939 (_ BitVec 32)) (text!30680 List!26025)) (IntegerValue!12958 (value!131940 Int) (text!30681 List!26025)) (Times!4319) (Or!4319) (Equal!4319) (Minus!4319) (Broken!21599 (value!131941 List!26025)) (And!4319) (Div!4319) (LessEqual!4319) (Mod!4319) (Concat!10646) (Not!4319) (Plus!4319) (SpaceValue!4319 (value!131942 List!26025)) (IntegerValue!12959 (value!131943 Int) (text!30682 List!26025)) (StringLiteralValue!12958 (text!30683 List!26025)) (FloatLiteralValue!8639 (text!30684 List!26025)) (BytesLiteralValue!4319 (value!131944 List!26025)) (CommentValue!8639 (value!131945 List!26025)) (StringLiteralValue!12959 (value!131946 List!26025)) (ErrorTokenValue!4319 (msg!4380 List!26025)) )
))
(declare-datatypes ((C!12800 0))(
  ( (C!12801 (val!7412 Int)) )
))
(declare-datatypes ((List!26026 0))(
  ( (Nil!25942) (Cons!25942 (h!31343 C!12800) (t!199258 List!26026)) )
))
(declare-datatypes ((IArray!16975 0))(
  ( (IArray!16976 (innerList!8545 List!26026)) )
))
(declare-datatypes ((Conc!8485 0))(
  ( (Node!8485 (left!19936 Conc!8485) (right!20266 Conc!8485) (csize!17200 Int) (cheight!8696 Int)) (Leaf!12429 (xs!11427 IArray!16975) (csize!17201 Int)) (Empty!8485) )
))
(declare-datatypes ((BalanceConc!16688 0))(
  ( (BalanceConc!16689 (c!354079 Conc!8485)) )
))
(declare-datatypes ((TokenValueInjection!8222 0))(
  ( (TokenValueInjection!8223 (toValue!5898 Int) (toChars!5757 Int)) )
))
(declare-datatypes ((Regex!6327 0))(
  ( (ElementMatch!6327 (c!354080 C!12800)) (Concat!10647 (regOne!13166 Regex!6327) (regTwo!13166 Regex!6327)) (EmptyExpr!6327) (Star!6327 (reg!6656 Regex!6327)) (EmptyLang!6327) (Union!6327 (regOne!13167 Regex!6327) (regTwo!13167 Regex!6327)) )
))
(declare-datatypes ((String!28271 0))(
  ( (String!28272 (value!131947 String)) )
))
(declare-datatypes ((Rule!8166 0))(
  ( (Rule!8167 (regex!4183 Regex!6327) (tag!4673 String!28271) (isSeparator!4183 Bool) (transformation!4183 TokenValueInjection!8222)) )
))
(declare-datatypes ((Token!7848 0))(
  ( (Token!7849 (value!131948 TokenValue!4319) (rule!6483 Rule!8166) (size!20249 Int) (originalCharacters!4955 List!26026)) )
))
(declare-datatypes ((List!26027 0))(
  ( (Nil!25943) (Cons!25943 (h!31344 Token!7848) (t!199259 List!26027)) )
))
(declare-fun lt!826873 () List!26027)

(declare-fun size!20250 (List!26027) Int)

(assert (=> b!2217377 (= res!952302 (< lt!826872 (size!20250 lt!826873)))))

(declare-fun i!1797 () Int)

(assert (=> b!2217377 (= lt!826872 (+ 1 (- i!1797 1)))))

(declare-fun t1!61 () Token!7848)

(declare-fun tp!690660 () Bool)

(declare-fun b!2217378 () Bool)

(declare-fun e!1415948 () Bool)

(declare-fun e!1415953 () Bool)

(declare-fun inv!21 (TokenValue!4319) Bool)

(assert (=> b!2217378 (= e!1415953 (and (inv!21 (value!131948 t1!61)) e!1415948 tp!690660))))

(declare-fun tp!690671 () Bool)

(declare-fun e!1415955 () Bool)

(declare-fun b!2217379 () Bool)

(declare-fun e!1415945 () Bool)

(declare-fun l!6601 () List!26027)

(declare-fun inv!35158 (Token!7848) Bool)

(assert (=> b!2217379 (= e!1415955 (and (inv!35158 (h!31344 l!6601)) e!1415945 tp!690671))))

(declare-fun b!2217380 () Bool)

(declare-fun e!1415952 () Bool)

(assert (=> b!2217380 (= e!1415941 e!1415952)))

(declare-fun res!952300 () Bool)

(assert (=> b!2217380 (=> res!952300 e!1415952)))

(declare-fun apply!6429 (List!26027 Int) Token!7848)

(assert (=> b!2217380 (= res!952300 (not (= (apply!6429 lt!826873 (- i!1797 1)) t1!61)))))

(declare-fun tp!690661 () Bool)

(declare-fun e!1415960 () Bool)

(declare-fun b!2217381 () Bool)

(declare-fun e!1415942 () Bool)

(declare-fun inv!35155 (String!28271) Bool)

(declare-fun inv!35159 (TokenValueInjection!8222) Bool)

(assert (=> b!2217381 (= e!1415942 (and tp!690661 (inv!35155 (tag!4673 (rule!6483 (h!31344 l!6601)))) (inv!35159 (transformation!4183 (rule!6483 (h!31344 l!6601)))) e!1415960))))

(assert (=> b!2217382 (= e!1415960 (and tp!690658 tp!690670))))

(declare-fun res!952298 () Bool)

(declare-fun e!1415951 () Bool)

(assert (=> start!216024 (=> (not res!952298) (not e!1415951))))

(declare-datatypes ((LexerInterface!3780 0))(
  ( (LexerInterfaceExt!3777 (__x!17092 Int)) (Lexer!3778) )
))
(declare-fun thiss!27908 () LexerInterface!3780)

(get-info :version)

(assert (=> start!216024 (= res!952298 ((_ is Lexer!3778) thiss!27908))))

(assert (=> start!216024 e!1415951))

(assert (=> start!216024 true))

(declare-fun e!1415949 () Bool)

(assert (=> start!216024 e!1415949))

(declare-fun t2!61 () Token!7848)

(declare-fun e!1415940 () Bool)

(assert (=> start!216024 (and (inv!35158 t2!61) e!1415940)))

(assert (=> start!216024 tp!690667))

(assert (=> start!216024 e!1415955))

(assert (=> start!216024 (and (inv!35158 t1!61) e!1415953)))

(declare-fun e!1415961 () Bool)

(assert (=> b!2217383 (= e!1415961 (and tp!690669 tp!690657))))

(declare-fun b!2217384 () Bool)

(declare-fun res!952304 () Bool)

(assert (=> b!2217384 (=> (not res!952304) (not e!1415951))))

(assert (=> b!2217384 (= res!952304 (= (apply!6429 l!6601 (+ 1 i!1797)) t2!61))))

(declare-fun b!2217385 () Bool)

(declare-fun res!952305 () Bool)

(assert (=> b!2217385 (=> (not res!952305) (not e!1415951))))

(assert (=> b!2217385 (= res!952305 (>= i!1797 0))))

(declare-fun b!2217386 () Bool)

(declare-fun tp!690672 () Bool)

(assert (=> b!2217386 (= e!1415945 (and (inv!21 (value!131948 (h!31344 l!6601))) e!1415942 tp!690672))))

(declare-fun b!2217387 () Bool)

(declare-fun res!952296 () Bool)

(assert (=> b!2217387 (=> (not res!952296) (not e!1415951))))

(declare-fun p!3128 () Int)

(declare-datatypes ((List!26028 0))(
  ( (Nil!25944) (Cons!25944 (h!31345 Rule!8166) (t!199260 List!26028)) )
))
(declare-fun rules!4462 () List!26028)

(declare-fun tokensListTwoByTwoPredicateList!50 (LexerInterface!3780 List!26027 List!26028 Int) Bool)

(assert (=> b!2217387 (= res!952296 (tokensListTwoByTwoPredicateList!50 thiss!27908 l!6601 rules!4462 p!3128))))

(declare-fun b!2217388 () Bool)

(declare-fun tp!690666 () Bool)

(assert (=> b!2217388 (= e!1415948 (and tp!690666 (inv!35155 (tag!4673 (rule!6483 t1!61))) (inv!35159 (transformation!4183 (rule!6483 t1!61))) e!1415961))))

(declare-fun b!2217389 () Bool)

(assert (=> b!2217389 (= e!1415951 e!1415956)))

(declare-fun res!952303 () Bool)

(assert (=> b!2217389 (=> (not res!952303) (not e!1415956))))

(assert (=> b!2217389 (= res!952303 (tokensListTwoByTwoPredicateList!50 thiss!27908 lt!826873 rules!4462 p!3128))))

(declare-fun tail!3224 (List!26027) List!26027)

(assert (=> b!2217389 (= lt!826873 (tail!3224 l!6601))))

(declare-fun b!2217390 () Bool)

(declare-fun res!952301 () Bool)

(assert (=> b!2217390 (=> (not res!952301) (not e!1415951))))

(assert (=> b!2217390 (= res!952301 (< (+ 1 i!1797) (size!20250 l!6601)))))

(declare-fun b!2217391 () Bool)

(declare-fun res!952297 () Bool)

(assert (=> b!2217391 (=> (not res!952297) (not e!1415956))))

(assert (=> b!2217391 (= res!952297 (>= (- i!1797 1) 0))))

(declare-fun e!1415939 () Bool)

(assert (=> b!2217392 (= e!1415939 (and tp!690668 tp!690664))))

(declare-fun b!2217393 () Bool)

(declare-fun res!952306 () Bool)

(assert (=> b!2217393 (=> (not res!952306) (not e!1415951))))

(assert (=> b!2217393 (= res!952306 (not (= i!1797 0)))))

(declare-fun b!2217394 () Bool)

(assert (=> b!2217394 (= e!1415952 (not (= (apply!6429 lt!826873 lt!826872) t2!61)))))

(declare-fun b!2217395 () Bool)

(declare-fun res!952299 () Bool)

(assert (=> b!2217395 (=> (not res!952299) (not e!1415951))))

(assert (=> b!2217395 (= res!952299 (= (apply!6429 l!6601 i!1797) t1!61))))

(declare-fun b!2217396 () Bool)

(declare-fun e!1415946 () Bool)

(declare-fun tp!690674 () Bool)

(assert (=> b!2217396 (= e!1415949 (and e!1415946 tp!690674))))

(declare-fun e!1415957 () Bool)

(assert (=> b!2217397 (= e!1415957 (and tp!690663 tp!690659))))

(declare-fun b!2217398 () Bool)

(declare-fun e!1415959 () Bool)

(declare-fun tp!690673 () Bool)

(assert (=> b!2217398 (= e!1415940 (and (inv!21 (value!131948 t2!61)) e!1415959 tp!690673))))

(declare-fun tp!690665 () Bool)

(declare-fun b!2217399 () Bool)

(assert (=> b!2217399 (= e!1415946 (and tp!690665 (inv!35155 (tag!4673 (h!31345 rules!4462))) (inv!35159 (transformation!4183 (h!31345 rules!4462))) e!1415939))))

(declare-fun tp!690662 () Bool)

(declare-fun b!2217400 () Bool)

(assert (=> b!2217400 (= e!1415959 (and tp!690662 (inv!35155 (tag!4673 (rule!6483 t2!61))) (inv!35159 (transformation!4183 (rule!6483 t2!61))) e!1415957))))

(assert (= (and start!216024 res!952298) b!2217387))

(assert (= (and b!2217387 res!952296) b!2217385))

(assert (= (and b!2217385 res!952305) b!2217390))

(assert (= (and b!2217390 res!952301) b!2217395))

(assert (= (and b!2217395 res!952299) b!2217384))

(assert (= (and b!2217384 res!952304) b!2217393))

(assert (= (and b!2217393 res!952306) b!2217389))

(assert (= (and b!2217389 res!952303) b!2217391))

(assert (= (and b!2217391 res!952297) b!2217377))

(assert (= (and b!2217377 res!952302) b!2217380))

(assert (= (and b!2217380 (not res!952300)) b!2217394))

(assert (= b!2217399 b!2217392))

(assert (= b!2217396 b!2217399))

(assert (= (and start!216024 ((_ is Cons!25944) rules!4462)) b!2217396))

(assert (= b!2217400 b!2217397))

(assert (= b!2217398 b!2217400))

(assert (= start!216024 b!2217398))

(assert (= b!2217381 b!2217382))

(assert (= b!2217386 b!2217381))

(assert (= b!2217379 b!2217386))

(assert (= (and start!216024 ((_ is Cons!25943) l!6601)) b!2217379))

(assert (= b!2217388 b!2217383))

(assert (= b!2217378 b!2217388))

(assert (= start!216024 b!2217378))

(declare-fun m!2658405 () Bool)

(assert (=> b!2217389 m!2658405))

(declare-fun m!2658407 () Bool)

(assert (=> b!2217389 m!2658407))

(declare-fun m!2658409 () Bool)

(assert (=> start!216024 m!2658409))

(declare-fun m!2658411 () Bool)

(assert (=> start!216024 m!2658411))

(declare-fun m!2658413 () Bool)

(assert (=> b!2217379 m!2658413))

(declare-fun m!2658415 () Bool)

(assert (=> b!2217394 m!2658415))

(declare-fun m!2658417 () Bool)

(assert (=> b!2217386 m!2658417))

(declare-fun m!2658419 () Bool)

(assert (=> b!2217377 m!2658419))

(declare-fun m!2658421 () Bool)

(assert (=> b!2217381 m!2658421))

(declare-fun m!2658423 () Bool)

(assert (=> b!2217381 m!2658423))

(declare-fun m!2658425 () Bool)

(assert (=> b!2217398 m!2658425))

(declare-fun m!2658427 () Bool)

(assert (=> b!2217399 m!2658427))

(declare-fun m!2658429 () Bool)

(assert (=> b!2217399 m!2658429))

(declare-fun m!2658431 () Bool)

(assert (=> b!2217390 m!2658431))

(declare-fun m!2658433 () Bool)

(assert (=> b!2217380 m!2658433))

(declare-fun m!2658435 () Bool)

(assert (=> b!2217395 m!2658435))

(declare-fun m!2658437 () Bool)

(assert (=> b!2217378 m!2658437))

(declare-fun m!2658439 () Bool)

(assert (=> b!2217400 m!2658439))

(declare-fun m!2658441 () Bool)

(assert (=> b!2217400 m!2658441))

(declare-fun m!2658443 () Bool)

(assert (=> b!2217384 m!2658443))

(declare-fun m!2658445 () Bool)

(assert (=> b!2217388 m!2658445))

(declare-fun m!2658447 () Bool)

(assert (=> b!2217388 m!2658447))

(declare-fun m!2658449 () Bool)

(assert (=> b!2217387 m!2658449))

(check-sat (not b_next!64921) (not b_next!64911) b_and!174105 (not b!2217381) (not b!2217394) (not b!2217400) (not b_next!64909) b_and!174113 (not b!2217379) b_and!174103 (not b_next!64917) (not b!2217388) (not b!2217377) b_and!174111 b_and!174115 (not b!2217380) (not b!2217399) (not b_next!64913) (not b_next!64915) b_and!174119 (not b!2217384) (not b!2217398) (not b_next!64923) (not b!2217395) (not start!216024) (not b!2217389) (not b!2217386) b_and!174109 (not b!2217378) (not b!2217387) (not b_next!64919) (not b!2217390) b_and!174117 (not b!2217396) b_and!174107 (not b_next!64907))
(check-sat (not b_next!64921) (not b_next!64911) b_and!174105 (not b_next!64923) (not b_next!64909) b_and!174113 b_and!174109 b_and!174103 (not b_next!64917) (not b_next!64919) b_and!174117 b_and!174111 b_and!174115 (not b_next!64913) (not b_next!64915) b_and!174119 b_and!174107 (not b_next!64907))
(get-model)

(declare-fun d!662882 () Bool)

(assert (=> d!662882 (= (inv!35155 (tag!4673 (rule!6483 t1!61))) (= (mod (str.len (value!131947 (tag!4673 (rule!6483 t1!61)))) 2) 0))))

(assert (=> b!2217388 d!662882))

(declare-fun d!662884 () Bool)

(declare-fun res!952333 () Bool)

(declare-fun e!1415984 () Bool)

(assert (=> d!662884 (=> (not res!952333) (not e!1415984))))

(declare-fun semiInverseModEq!1674 (Int Int) Bool)

(assert (=> d!662884 (= res!952333 (semiInverseModEq!1674 (toChars!5757 (transformation!4183 (rule!6483 t1!61))) (toValue!5898 (transformation!4183 (rule!6483 t1!61)))))))

(assert (=> d!662884 (= (inv!35159 (transformation!4183 (rule!6483 t1!61))) e!1415984)))

(declare-fun b!2217435 () Bool)

(declare-fun equivClasses!1601 (Int Int) Bool)

(assert (=> b!2217435 (= e!1415984 (equivClasses!1601 (toChars!5757 (transformation!4183 (rule!6483 t1!61))) (toValue!5898 (transformation!4183 (rule!6483 t1!61)))))))

(assert (= (and d!662884 res!952333) b!2217435))

(declare-fun m!2658483 () Bool)

(assert (=> d!662884 m!2658483))

(declare-fun m!2658487 () Bool)

(assert (=> b!2217435 m!2658487))

(assert (=> b!2217388 d!662884))

(declare-fun d!662888 () Bool)

(declare-fun lt!826884 () Int)

(assert (=> d!662888 (>= lt!826884 0)))

(declare-fun e!1415994 () Int)

(assert (=> d!662888 (= lt!826884 e!1415994)))

(declare-fun c!354091 () Bool)

(assert (=> d!662888 (= c!354091 ((_ is Nil!25943) lt!826873))))

(assert (=> d!662888 (= (size!20250 lt!826873) lt!826884)))

(declare-fun b!2217449 () Bool)

(assert (=> b!2217449 (= e!1415994 0)))

(declare-fun b!2217450 () Bool)

(assert (=> b!2217450 (= e!1415994 (+ 1 (size!20250 (t!199259 lt!826873))))))

(assert (= (and d!662888 c!354091) b!2217449))

(assert (= (and d!662888 (not c!354091)) b!2217450))

(declare-fun m!2658499 () Bool)

(assert (=> b!2217450 m!2658499))

(assert (=> b!2217377 d!662888))

(declare-fun b!2217473 () Bool)

(declare-fun e!1416011 () Bool)

(declare-fun e!1416010 () Bool)

(assert (=> b!2217473 (= e!1416011 e!1416010)))

(declare-fun c!354101 () Bool)

(assert (=> b!2217473 (= c!354101 ((_ is IntegerValue!12958) (value!131948 t1!61)))))

(declare-fun b!2217474 () Bool)

(declare-fun e!1416009 () Bool)

(declare-fun inv!15 (TokenValue!4319) Bool)

(assert (=> b!2217474 (= e!1416009 (inv!15 (value!131948 t1!61)))))

(declare-fun b!2217475 () Bool)

(declare-fun res!952345 () Bool)

(assert (=> b!2217475 (=> res!952345 e!1416009)))

(assert (=> b!2217475 (= res!952345 (not ((_ is IntegerValue!12959) (value!131948 t1!61))))))

(assert (=> b!2217475 (= e!1416010 e!1416009)))

(declare-fun d!662896 () Bool)

(declare-fun c!354100 () Bool)

(assert (=> d!662896 (= c!354100 ((_ is IntegerValue!12957) (value!131948 t1!61)))))

(assert (=> d!662896 (= (inv!21 (value!131948 t1!61)) e!1416011)))

(declare-fun b!2217476 () Bool)

(declare-fun inv!17 (TokenValue!4319) Bool)

(assert (=> b!2217476 (= e!1416010 (inv!17 (value!131948 t1!61)))))

(declare-fun b!2217477 () Bool)

(declare-fun inv!16 (TokenValue!4319) Bool)

(assert (=> b!2217477 (= e!1416011 (inv!16 (value!131948 t1!61)))))

(assert (= (and d!662896 c!354100) b!2217477))

(assert (= (and d!662896 (not c!354100)) b!2217473))

(assert (= (and b!2217473 c!354101) b!2217476))

(assert (= (and b!2217473 (not c!354101)) b!2217475))

(assert (= (and b!2217475 (not res!952345)) b!2217474))

(declare-fun m!2658507 () Bool)

(assert (=> b!2217474 m!2658507))

(declare-fun m!2658511 () Bool)

(assert (=> b!2217476 m!2658511))

(declare-fun m!2658515 () Bool)

(assert (=> b!2217477 m!2658515))

(assert (=> b!2217378 d!662896))

(declare-fun d!662902 () Bool)

(assert (=> d!662902 (= (inv!35155 (tag!4673 (h!31345 rules!4462))) (= (mod (str.len (value!131947 (tag!4673 (h!31345 rules!4462)))) 2) 0))))

(assert (=> b!2217399 d!662902))

(declare-fun d!662904 () Bool)

(declare-fun res!952349 () Bool)

(declare-fun e!1416016 () Bool)

(assert (=> d!662904 (=> (not res!952349) (not e!1416016))))

(assert (=> d!662904 (= res!952349 (semiInverseModEq!1674 (toChars!5757 (transformation!4183 (h!31345 rules!4462))) (toValue!5898 (transformation!4183 (h!31345 rules!4462)))))))

(assert (=> d!662904 (= (inv!35159 (transformation!4183 (h!31345 rules!4462))) e!1416016)))

(declare-fun b!2217485 () Bool)

(assert (=> b!2217485 (= e!1416016 (equivClasses!1601 (toChars!5757 (transformation!4183 (h!31345 rules!4462))) (toValue!5898 (transformation!4183 (h!31345 rules!4462)))))))

(assert (= (and d!662904 res!952349) b!2217485))

(declare-fun m!2658517 () Bool)

(assert (=> d!662904 m!2658517))

(declare-fun m!2658519 () Bool)

(assert (=> b!2217485 m!2658519))

(assert (=> b!2217399 d!662904))

(declare-fun d!662906 () Bool)

(assert (=> d!662906 (= (inv!35155 (tag!4673 (rule!6483 t2!61))) (= (mod (str.len (value!131947 (tag!4673 (rule!6483 t2!61)))) 2) 0))))

(assert (=> b!2217400 d!662906))

(declare-fun d!662908 () Bool)

(declare-fun res!952350 () Bool)

(declare-fun e!1416018 () Bool)

(assert (=> d!662908 (=> (not res!952350) (not e!1416018))))

(assert (=> d!662908 (= res!952350 (semiInverseModEq!1674 (toChars!5757 (transformation!4183 (rule!6483 t2!61))) (toValue!5898 (transformation!4183 (rule!6483 t2!61)))))))

(assert (=> d!662908 (= (inv!35159 (transformation!4183 (rule!6483 t2!61))) e!1416018)))

(declare-fun b!2217487 () Bool)

(assert (=> b!2217487 (= e!1416018 (equivClasses!1601 (toChars!5757 (transformation!4183 (rule!6483 t2!61))) (toValue!5898 (transformation!4183 (rule!6483 t2!61)))))))

(assert (= (and d!662908 res!952350) b!2217487))

(declare-fun m!2658525 () Bool)

(assert (=> d!662908 m!2658525))

(declare-fun m!2658527 () Bool)

(assert (=> b!2217487 m!2658527))

(assert (=> b!2217400 d!662908))

(declare-fun d!662910 () Bool)

(declare-fun res!952364 () Bool)

(declare-fun e!1416040 () Bool)

(assert (=> d!662910 (=> res!952364 e!1416040)))

(assert (=> d!662910 (= res!952364 (or (not ((_ is Cons!25943) lt!826873)) (not ((_ is Cons!25943) (t!199259 lt!826873)))))))

(assert (=> d!662910 (= (tokensListTwoByTwoPredicateList!50 thiss!27908 lt!826873 rules!4462 p!3128) e!1416040)))

(declare-fun b!2217519 () Bool)

(declare-fun e!1416041 () Bool)

(assert (=> b!2217519 (= e!1416040 e!1416041)))

(declare-fun res!952365 () Bool)

(assert (=> b!2217519 (=> (not res!952365) (not e!1416041))))

(declare-fun dynLambda!11488 (Int Token!7848 Token!7848 List!26028) Bool)

(assert (=> b!2217519 (= res!952365 (dynLambda!11488 p!3128 (h!31344 lt!826873) (h!31344 (t!199259 lt!826873)) rules!4462))))

(declare-fun b!2217520 () Bool)

(assert (=> b!2217520 (= e!1416041 (tokensListTwoByTwoPredicateList!50 thiss!27908 (Cons!25943 (h!31344 (t!199259 lt!826873)) (t!199259 (t!199259 lt!826873))) rules!4462 p!3128))))

(assert (= (and d!662910 (not res!952364)) b!2217519))

(assert (= (and b!2217519 res!952365) b!2217520))

(declare-fun b_lambda!71479 () Bool)

(assert (=> (not b_lambda!71479) (not b!2217519)))

(declare-fun t!199290 () Bool)

(declare-fun tb!132781 () Bool)

(assert (=> (and start!216024 (= p!3128 p!3128) t!199290) tb!132781))

(declare-fun result!161082 () Bool)

(assert (=> tb!132781 (= result!161082 true)))

(assert (=> b!2217519 t!199290))

(declare-fun b_and!174149 () Bool)

(assert (= b_and!174111 (and (=> t!199290 result!161082) b_and!174149)))

(declare-fun m!2658575 () Bool)

(assert (=> b!2217519 m!2658575))

(declare-fun m!2658577 () Bool)

(assert (=> b!2217520 m!2658577))

(assert (=> b!2217389 d!662910))

(declare-fun d!662936 () Bool)

(assert (=> d!662936 (= (tail!3224 l!6601) (t!199259 l!6601))))

(assert (=> b!2217389 d!662936))

(declare-fun d!662938 () Bool)

(declare-fun lt!826887 () Int)

(assert (=> d!662938 (>= lt!826887 0)))

(declare-fun e!1416048 () Int)

(assert (=> d!662938 (= lt!826887 e!1416048)))

(declare-fun c!354110 () Bool)

(assert (=> d!662938 (= c!354110 ((_ is Nil!25943) l!6601))))

(assert (=> d!662938 (= (size!20250 l!6601) lt!826887)))

(declare-fun b!2217538 () Bool)

(assert (=> b!2217538 (= e!1416048 0)))

(declare-fun b!2217539 () Bool)

(assert (=> b!2217539 (= e!1416048 (+ 1 (size!20250 (t!199259 l!6601))))))

(assert (= (and d!662938 c!354110) b!2217538))

(assert (= (and d!662938 (not c!354110)) b!2217539))

(declare-fun m!2658579 () Bool)

(assert (=> b!2217539 m!2658579))

(assert (=> b!2217390 d!662938))

(declare-fun d!662940 () Bool)

(declare-fun res!952370 () Bool)

(declare-fun e!1416074 () Bool)

(assert (=> d!662940 (=> (not res!952370) (not e!1416074))))

(declare-fun isEmpty!14838 (List!26026) Bool)

(assert (=> d!662940 (= res!952370 (not (isEmpty!14838 (originalCharacters!4955 (h!31344 l!6601)))))))

(assert (=> d!662940 (= (inv!35158 (h!31344 l!6601)) e!1416074)))

(declare-fun b!2217572 () Bool)

(declare-fun res!952371 () Bool)

(assert (=> b!2217572 (=> (not res!952371) (not e!1416074))))

(declare-fun list!10064 (BalanceConc!16688) List!26026)

(declare-fun dynLambda!11489 (Int TokenValue!4319) BalanceConc!16688)

(assert (=> b!2217572 (= res!952371 (= (originalCharacters!4955 (h!31344 l!6601)) (list!10064 (dynLambda!11489 (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601)))) (value!131948 (h!31344 l!6601))))))))

(declare-fun b!2217573 () Bool)

(declare-fun size!20252 (List!26026) Int)

(assert (=> b!2217573 (= e!1416074 (= (size!20249 (h!31344 l!6601)) (size!20252 (originalCharacters!4955 (h!31344 l!6601)))))))

(assert (= (and d!662940 res!952370) b!2217572))

(assert (= (and b!2217572 res!952371) b!2217573))

(declare-fun b_lambda!71481 () Bool)

(assert (=> (not b_lambda!71481) (not b!2217572)))

(declare-fun tb!132789 () Bool)

(declare-fun t!199298 () Bool)

(assert (=> (and b!2217383 (= (toChars!5757 (transformation!4183 (rule!6483 t1!61))) (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601))))) t!199298) tb!132789))

(declare-fun b!2217585 () Bool)

(declare-fun e!1416087 () Bool)

(declare-fun tp!690744 () Bool)

(declare-fun inv!35162 (Conc!8485) Bool)

(assert (=> b!2217585 (= e!1416087 (and (inv!35162 (c!354079 (dynLambda!11489 (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601)))) (value!131948 (h!31344 l!6601))))) tp!690744))))

(declare-fun result!161096 () Bool)

(declare-fun inv!35163 (BalanceConc!16688) Bool)

(assert (=> tb!132789 (= result!161096 (and (inv!35163 (dynLambda!11489 (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601)))) (value!131948 (h!31344 l!6601)))) e!1416087))))

(assert (= tb!132789 b!2217585))

(declare-fun m!2658589 () Bool)

(assert (=> b!2217585 m!2658589))

(declare-fun m!2658591 () Bool)

(assert (=> tb!132789 m!2658591))

(assert (=> b!2217572 t!199298))

(declare-fun b_and!174159 () Bool)

(assert (= b_and!174105 (and (=> t!199298 result!161096) b_and!174159)))

(declare-fun t!199306 () Bool)

(declare-fun tb!132797 () Bool)

(assert (=> (and b!2217382 (= (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601)))) (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601))))) t!199306) tb!132797))

(declare-fun result!161106 () Bool)

(assert (= result!161106 result!161096))

(assert (=> b!2217572 t!199306))

(declare-fun b_and!174161 () Bool)

(assert (= b_and!174109 (and (=> t!199306 result!161106) b_and!174161)))

(declare-fun tb!132799 () Bool)

(declare-fun t!199308 () Bool)

(assert (=> (and b!2217397 (= (toChars!5757 (transformation!4183 (rule!6483 t2!61))) (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601))))) t!199308) tb!132799))

(declare-fun result!161108 () Bool)

(assert (= result!161108 result!161096))

(assert (=> b!2217572 t!199308))

(declare-fun b_and!174163 () Bool)

(assert (= b_and!174115 (and (=> t!199308 result!161108) b_and!174163)))

(declare-fun t!199310 () Bool)

(declare-fun tb!132801 () Bool)

(assert (=> (and b!2217392 (= (toChars!5757 (transformation!4183 (h!31345 rules!4462))) (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601))))) t!199310) tb!132801))

(declare-fun result!161110 () Bool)

(assert (= result!161110 result!161096))

(assert (=> b!2217572 t!199310))

(declare-fun b_and!174165 () Bool)

(assert (= b_and!174119 (and (=> t!199310 result!161110) b_and!174165)))

(declare-fun m!2658597 () Bool)

(assert (=> d!662940 m!2658597))

(declare-fun m!2658599 () Bool)

(assert (=> b!2217572 m!2658599))

(assert (=> b!2217572 m!2658599))

(declare-fun m!2658601 () Bool)

(assert (=> b!2217572 m!2658601))

(declare-fun m!2658603 () Bool)

(assert (=> b!2217573 m!2658603))

(assert (=> b!2217379 d!662940))

(declare-fun d!662942 () Bool)

(declare-fun lt!826890 () Token!7848)

(declare-fun contains!4307 (List!26027 Token!7848) Bool)

(assert (=> d!662942 (contains!4307 lt!826873 lt!826890)))

(declare-fun e!1416092 () Token!7848)

(assert (=> d!662942 (= lt!826890 e!1416092)))

(declare-fun c!354113 () Bool)

(assert (=> d!662942 (= c!354113 (= (- i!1797 1) 0))))

(declare-fun e!1416093 () Bool)

(assert (=> d!662942 e!1416093))

(declare-fun res!952374 () Bool)

(assert (=> d!662942 (=> (not res!952374) (not e!1416093))))

(assert (=> d!662942 (= res!952374 (<= 0 (- i!1797 1)))))

(assert (=> d!662942 (= (apply!6429 lt!826873 (- i!1797 1)) lt!826890)))

(declare-fun b!2217592 () Bool)

(assert (=> b!2217592 (= e!1416093 (< (- i!1797 1) (size!20250 lt!826873)))))

(declare-fun b!2217593 () Bool)

(declare-fun head!4739 (List!26027) Token!7848)

(assert (=> b!2217593 (= e!1416092 (head!4739 lt!826873))))

(declare-fun b!2217594 () Bool)

(assert (=> b!2217594 (= e!1416092 (apply!6429 (tail!3224 lt!826873) (- (- i!1797 1) 1)))))

(assert (= (and d!662942 res!952374) b!2217592))

(assert (= (and d!662942 c!354113) b!2217593))

(assert (= (and d!662942 (not c!354113)) b!2217594))

(declare-fun m!2658605 () Bool)

(assert (=> d!662942 m!2658605))

(assert (=> b!2217592 m!2658419))

(declare-fun m!2658607 () Bool)

(assert (=> b!2217593 m!2658607))

(declare-fun m!2658609 () Bool)

(assert (=> b!2217594 m!2658609))

(assert (=> b!2217594 m!2658609))

(declare-fun m!2658611 () Bool)

(assert (=> b!2217594 m!2658611))

(assert (=> b!2217380 d!662942))

(declare-fun d!662944 () Bool)

(assert (=> d!662944 (= (inv!35155 (tag!4673 (rule!6483 (h!31344 l!6601)))) (= (mod (str.len (value!131947 (tag!4673 (rule!6483 (h!31344 l!6601))))) 2) 0))))

(assert (=> b!2217381 d!662944))

(declare-fun d!662946 () Bool)

(declare-fun res!952375 () Bool)

(declare-fun e!1416094 () Bool)

(assert (=> d!662946 (=> (not res!952375) (not e!1416094))))

(assert (=> d!662946 (= res!952375 (semiInverseModEq!1674 (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601)))) (toValue!5898 (transformation!4183 (rule!6483 (h!31344 l!6601))))))))

(assert (=> d!662946 (= (inv!35159 (transformation!4183 (rule!6483 (h!31344 l!6601)))) e!1416094)))

(declare-fun b!2217595 () Bool)

(assert (=> b!2217595 (= e!1416094 (equivClasses!1601 (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601)))) (toValue!5898 (transformation!4183 (rule!6483 (h!31344 l!6601))))))))

(assert (= (and d!662946 res!952375) b!2217595))

(declare-fun m!2658613 () Bool)

(assert (=> d!662946 m!2658613))

(declare-fun m!2658615 () Bool)

(assert (=> b!2217595 m!2658615))

(assert (=> b!2217381 d!662946))

(declare-fun d!662948 () Bool)

(declare-fun lt!826891 () Token!7848)

(assert (=> d!662948 (contains!4307 lt!826873 lt!826891)))

(declare-fun e!1416095 () Token!7848)

(assert (=> d!662948 (= lt!826891 e!1416095)))

(declare-fun c!354114 () Bool)

(assert (=> d!662948 (= c!354114 (= lt!826872 0))))

(declare-fun e!1416096 () Bool)

(assert (=> d!662948 e!1416096))

(declare-fun res!952376 () Bool)

(assert (=> d!662948 (=> (not res!952376) (not e!1416096))))

(assert (=> d!662948 (= res!952376 (<= 0 lt!826872))))

(assert (=> d!662948 (= (apply!6429 lt!826873 lt!826872) lt!826891)))

(declare-fun b!2217596 () Bool)

(assert (=> b!2217596 (= e!1416096 (< lt!826872 (size!20250 lt!826873)))))

(declare-fun b!2217597 () Bool)

(assert (=> b!2217597 (= e!1416095 (head!4739 lt!826873))))

(declare-fun b!2217598 () Bool)

(assert (=> b!2217598 (= e!1416095 (apply!6429 (tail!3224 lt!826873) (- lt!826872 1)))))

(assert (= (and d!662948 res!952376) b!2217596))

(assert (= (and d!662948 c!354114) b!2217597))

(assert (= (and d!662948 (not c!354114)) b!2217598))

(declare-fun m!2658617 () Bool)

(assert (=> d!662948 m!2658617))

(assert (=> b!2217596 m!2658419))

(assert (=> b!2217597 m!2658607))

(assert (=> b!2217598 m!2658609))

(assert (=> b!2217598 m!2658609))

(declare-fun m!2658619 () Bool)

(assert (=> b!2217598 m!2658619))

(assert (=> b!2217394 d!662948))

(declare-fun d!662950 () Bool)

(declare-fun lt!826892 () Token!7848)

(assert (=> d!662950 (contains!4307 l!6601 lt!826892)))

(declare-fun e!1416097 () Token!7848)

(assert (=> d!662950 (= lt!826892 e!1416097)))

(declare-fun c!354115 () Bool)

(assert (=> d!662950 (= c!354115 (= (+ 1 i!1797) 0))))

(declare-fun e!1416098 () Bool)

(assert (=> d!662950 e!1416098))

(declare-fun res!952377 () Bool)

(assert (=> d!662950 (=> (not res!952377) (not e!1416098))))

(assert (=> d!662950 (= res!952377 (<= 0 (+ 1 i!1797)))))

(assert (=> d!662950 (= (apply!6429 l!6601 (+ 1 i!1797)) lt!826892)))

(declare-fun b!2217599 () Bool)

(assert (=> b!2217599 (= e!1416098 (< (+ 1 i!1797) (size!20250 l!6601)))))

(declare-fun b!2217600 () Bool)

(assert (=> b!2217600 (= e!1416097 (head!4739 l!6601))))

(declare-fun b!2217601 () Bool)

(assert (=> b!2217601 (= e!1416097 (apply!6429 (tail!3224 l!6601) (- (+ 1 i!1797) 1)))))

(assert (= (and d!662950 res!952377) b!2217599))

(assert (= (and d!662950 c!354115) b!2217600))

(assert (= (and d!662950 (not c!354115)) b!2217601))

(declare-fun m!2658621 () Bool)

(assert (=> d!662950 m!2658621))

(assert (=> b!2217599 m!2658431))

(declare-fun m!2658623 () Bool)

(assert (=> b!2217600 m!2658623))

(assert (=> b!2217601 m!2658407))

(assert (=> b!2217601 m!2658407))

(declare-fun m!2658625 () Bool)

(assert (=> b!2217601 m!2658625))

(assert (=> b!2217384 d!662950))

(declare-fun d!662952 () Bool)

(declare-fun lt!826893 () Token!7848)

(assert (=> d!662952 (contains!4307 l!6601 lt!826893)))

(declare-fun e!1416099 () Token!7848)

(assert (=> d!662952 (= lt!826893 e!1416099)))

(declare-fun c!354116 () Bool)

(assert (=> d!662952 (= c!354116 (= i!1797 0))))

(declare-fun e!1416100 () Bool)

(assert (=> d!662952 e!1416100))

(declare-fun res!952378 () Bool)

(assert (=> d!662952 (=> (not res!952378) (not e!1416100))))

(assert (=> d!662952 (= res!952378 (<= 0 i!1797))))

(assert (=> d!662952 (= (apply!6429 l!6601 i!1797) lt!826893)))

(declare-fun b!2217602 () Bool)

(assert (=> b!2217602 (= e!1416100 (< i!1797 (size!20250 l!6601)))))

(declare-fun b!2217603 () Bool)

(assert (=> b!2217603 (= e!1416099 (head!4739 l!6601))))

(declare-fun b!2217604 () Bool)

(assert (=> b!2217604 (= e!1416099 (apply!6429 (tail!3224 l!6601) (- i!1797 1)))))

(assert (= (and d!662952 res!952378) b!2217602))

(assert (= (and d!662952 c!354116) b!2217603))

(assert (= (and d!662952 (not c!354116)) b!2217604))

(declare-fun m!2658627 () Bool)

(assert (=> d!662952 m!2658627))

(assert (=> b!2217602 m!2658431))

(assert (=> b!2217603 m!2658623))

(assert (=> b!2217604 m!2658407))

(assert (=> b!2217604 m!2658407))

(declare-fun m!2658629 () Bool)

(assert (=> b!2217604 m!2658629))

(assert (=> b!2217395 d!662952))

(declare-fun b!2217605 () Bool)

(declare-fun e!1416103 () Bool)

(declare-fun e!1416102 () Bool)

(assert (=> b!2217605 (= e!1416103 e!1416102)))

(declare-fun c!354118 () Bool)

(assert (=> b!2217605 (= c!354118 ((_ is IntegerValue!12958) (value!131948 (h!31344 l!6601))))))

(declare-fun b!2217606 () Bool)

(declare-fun e!1416101 () Bool)

(assert (=> b!2217606 (= e!1416101 (inv!15 (value!131948 (h!31344 l!6601))))))

(declare-fun b!2217607 () Bool)

(declare-fun res!952379 () Bool)

(assert (=> b!2217607 (=> res!952379 e!1416101)))

(assert (=> b!2217607 (= res!952379 (not ((_ is IntegerValue!12959) (value!131948 (h!31344 l!6601)))))))

(assert (=> b!2217607 (= e!1416102 e!1416101)))

(declare-fun d!662954 () Bool)

(declare-fun c!354117 () Bool)

(assert (=> d!662954 (= c!354117 ((_ is IntegerValue!12957) (value!131948 (h!31344 l!6601))))))

(assert (=> d!662954 (= (inv!21 (value!131948 (h!31344 l!6601))) e!1416103)))

(declare-fun b!2217608 () Bool)

(assert (=> b!2217608 (= e!1416102 (inv!17 (value!131948 (h!31344 l!6601))))))

(declare-fun b!2217609 () Bool)

(assert (=> b!2217609 (= e!1416103 (inv!16 (value!131948 (h!31344 l!6601))))))

(assert (= (and d!662954 c!354117) b!2217609))

(assert (= (and d!662954 (not c!354117)) b!2217605))

(assert (= (and b!2217605 c!354118) b!2217608))

(assert (= (and b!2217605 (not c!354118)) b!2217607))

(assert (= (and b!2217607 (not res!952379)) b!2217606))

(declare-fun m!2658631 () Bool)

(assert (=> b!2217606 m!2658631))

(declare-fun m!2658633 () Bool)

(assert (=> b!2217608 m!2658633))

(declare-fun m!2658635 () Bool)

(assert (=> b!2217609 m!2658635))

(assert (=> b!2217386 d!662954))

(declare-fun b!2217610 () Bool)

(declare-fun e!1416106 () Bool)

(declare-fun e!1416105 () Bool)

(assert (=> b!2217610 (= e!1416106 e!1416105)))

(declare-fun c!354120 () Bool)

(assert (=> b!2217610 (= c!354120 ((_ is IntegerValue!12958) (value!131948 t2!61)))))

(declare-fun b!2217611 () Bool)

(declare-fun e!1416104 () Bool)

(assert (=> b!2217611 (= e!1416104 (inv!15 (value!131948 t2!61)))))

(declare-fun b!2217612 () Bool)

(declare-fun res!952380 () Bool)

(assert (=> b!2217612 (=> res!952380 e!1416104)))

(assert (=> b!2217612 (= res!952380 (not ((_ is IntegerValue!12959) (value!131948 t2!61))))))

(assert (=> b!2217612 (= e!1416105 e!1416104)))

(declare-fun d!662956 () Bool)

(declare-fun c!354119 () Bool)

(assert (=> d!662956 (= c!354119 ((_ is IntegerValue!12957) (value!131948 t2!61)))))

(assert (=> d!662956 (= (inv!21 (value!131948 t2!61)) e!1416106)))

(declare-fun b!2217613 () Bool)

(assert (=> b!2217613 (= e!1416105 (inv!17 (value!131948 t2!61)))))

(declare-fun b!2217614 () Bool)

(assert (=> b!2217614 (= e!1416106 (inv!16 (value!131948 t2!61)))))

(assert (= (and d!662956 c!354119) b!2217614))

(assert (= (and d!662956 (not c!354119)) b!2217610))

(assert (= (and b!2217610 c!354120) b!2217613))

(assert (= (and b!2217610 (not c!354120)) b!2217612))

(assert (= (and b!2217612 (not res!952380)) b!2217611))

(declare-fun m!2658637 () Bool)

(assert (=> b!2217611 m!2658637))

(declare-fun m!2658639 () Bool)

(assert (=> b!2217613 m!2658639))

(declare-fun m!2658641 () Bool)

(assert (=> b!2217614 m!2658641))

(assert (=> b!2217398 d!662956))

(declare-fun d!662958 () Bool)

(declare-fun res!952381 () Bool)

(declare-fun e!1416107 () Bool)

(assert (=> d!662958 (=> (not res!952381) (not e!1416107))))

(assert (=> d!662958 (= res!952381 (not (isEmpty!14838 (originalCharacters!4955 t2!61))))))

(assert (=> d!662958 (= (inv!35158 t2!61) e!1416107)))

(declare-fun b!2217615 () Bool)

(declare-fun res!952382 () Bool)

(assert (=> b!2217615 (=> (not res!952382) (not e!1416107))))

(assert (=> b!2217615 (= res!952382 (= (originalCharacters!4955 t2!61) (list!10064 (dynLambda!11489 (toChars!5757 (transformation!4183 (rule!6483 t2!61))) (value!131948 t2!61)))))))

(declare-fun b!2217616 () Bool)

(assert (=> b!2217616 (= e!1416107 (= (size!20249 t2!61) (size!20252 (originalCharacters!4955 t2!61))))))

(assert (= (and d!662958 res!952381) b!2217615))

(assert (= (and b!2217615 res!952382) b!2217616))

(declare-fun b_lambda!71493 () Bool)

(assert (=> (not b_lambda!71493) (not b!2217615)))

(declare-fun t!199312 () Bool)

(declare-fun tb!132803 () Bool)

(assert (=> (and b!2217383 (= (toChars!5757 (transformation!4183 (rule!6483 t1!61))) (toChars!5757 (transformation!4183 (rule!6483 t2!61)))) t!199312) tb!132803))

(declare-fun b!2217617 () Bool)

(declare-fun e!1416108 () Bool)

(declare-fun tp!690745 () Bool)

(assert (=> b!2217617 (= e!1416108 (and (inv!35162 (c!354079 (dynLambda!11489 (toChars!5757 (transformation!4183 (rule!6483 t2!61))) (value!131948 t2!61)))) tp!690745))))

(declare-fun result!161112 () Bool)

(assert (=> tb!132803 (= result!161112 (and (inv!35163 (dynLambda!11489 (toChars!5757 (transformation!4183 (rule!6483 t2!61))) (value!131948 t2!61))) e!1416108))))

(assert (= tb!132803 b!2217617))

(declare-fun m!2658643 () Bool)

(assert (=> b!2217617 m!2658643))

(declare-fun m!2658645 () Bool)

(assert (=> tb!132803 m!2658645))

(assert (=> b!2217615 t!199312))

(declare-fun b_and!174167 () Bool)

(assert (= b_and!174159 (and (=> t!199312 result!161112) b_and!174167)))

(declare-fun t!199314 () Bool)

(declare-fun tb!132805 () Bool)

(assert (=> (and b!2217382 (= (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601)))) (toChars!5757 (transformation!4183 (rule!6483 t2!61)))) t!199314) tb!132805))

(declare-fun result!161114 () Bool)

(assert (= result!161114 result!161112))

(assert (=> b!2217615 t!199314))

(declare-fun b_and!174169 () Bool)

(assert (= b_and!174161 (and (=> t!199314 result!161114) b_and!174169)))

(declare-fun t!199316 () Bool)

(declare-fun tb!132807 () Bool)

(assert (=> (and b!2217397 (= (toChars!5757 (transformation!4183 (rule!6483 t2!61))) (toChars!5757 (transformation!4183 (rule!6483 t2!61)))) t!199316) tb!132807))

(declare-fun result!161116 () Bool)

(assert (= result!161116 result!161112))

(assert (=> b!2217615 t!199316))

(declare-fun b_and!174171 () Bool)

(assert (= b_and!174163 (and (=> t!199316 result!161116) b_and!174171)))

(declare-fun t!199318 () Bool)

(declare-fun tb!132809 () Bool)

(assert (=> (and b!2217392 (= (toChars!5757 (transformation!4183 (h!31345 rules!4462))) (toChars!5757 (transformation!4183 (rule!6483 t2!61)))) t!199318) tb!132809))

(declare-fun result!161118 () Bool)

(assert (= result!161118 result!161112))

(assert (=> b!2217615 t!199318))

(declare-fun b_and!174173 () Bool)

(assert (= b_and!174165 (and (=> t!199318 result!161118) b_and!174173)))

(declare-fun m!2658647 () Bool)

(assert (=> d!662958 m!2658647))

(declare-fun m!2658649 () Bool)

(assert (=> b!2217615 m!2658649))

(assert (=> b!2217615 m!2658649))

(declare-fun m!2658651 () Bool)

(assert (=> b!2217615 m!2658651))

(declare-fun m!2658653 () Bool)

(assert (=> b!2217616 m!2658653))

(assert (=> start!216024 d!662958))

(declare-fun d!662960 () Bool)

(declare-fun res!952383 () Bool)

(declare-fun e!1416109 () Bool)

(assert (=> d!662960 (=> (not res!952383) (not e!1416109))))

(assert (=> d!662960 (= res!952383 (not (isEmpty!14838 (originalCharacters!4955 t1!61))))))

(assert (=> d!662960 (= (inv!35158 t1!61) e!1416109)))

(declare-fun b!2217618 () Bool)

(declare-fun res!952384 () Bool)

(assert (=> b!2217618 (=> (not res!952384) (not e!1416109))))

(assert (=> b!2217618 (= res!952384 (= (originalCharacters!4955 t1!61) (list!10064 (dynLambda!11489 (toChars!5757 (transformation!4183 (rule!6483 t1!61))) (value!131948 t1!61)))))))

(declare-fun b!2217619 () Bool)

(assert (=> b!2217619 (= e!1416109 (= (size!20249 t1!61) (size!20252 (originalCharacters!4955 t1!61))))))

(assert (= (and d!662960 res!952383) b!2217618))

(assert (= (and b!2217618 res!952384) b!2217619))

(declare-fun b_lambda!71495 () Bool)

(assert (=> (not b_lambda!71495) (not b!2217618)))

(declare-fun t!199320 () Bool)

(declare-fun tb!132811 () Bool)

(assert (=> (and b!2217383 (= (toChars!5757 (transformation!4183 (rule!6483 t1!61))) (toChars!5757 (transformation!4183 (rule!6483 t1!61)))) t!199320) tb!132811))

(declare-fun b!2217620 () Bool)

(declare-fun e!1416110 () Bool)

(declare-fun tp!690746 () Bool)

(assert (=> b!2217620 (= e!1416110 (and (inv!35162 (c!354079 (dynLambda!11489 (toChars!5757 (transformation!4183 (rule!6483 t1!61))) (value!131948 t1!61)))) tp!690746))))

(declare-fun result!161120 () Bool)

(assert (=> tb!132811 (= result!161120 (and (inv!35163 (dynLambda!11489 (toChars!5757 (transformation!4183 (rule!6483 t1!61))) (value!131948 t1!61))) e!1416110))))

(assert (= tb!132811 b!2217620))

(declare-fun m!2658655 () Bool)

(assert (=> b!2217620 m!2658655))

(declare-fun m!2658657 () Bool)

(assert (=> tb!132811 m!2658657))

(assert (=> b!2217618 t!199320))

(declare-fun b_and!174175 () Bool)

(assert (= b_and!174167 (and (=> t!199320 result!161120) b_and!174175)))

(declare-fun tb!132813 () Bool)

(declare-fun t!199322 () Bool)

(assert (=> (and b!2217382 (= (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601)))) (toChars!5757 (transformation!4183 (rule!6483 t1!61)))) t!199322) tb!132813))

(declare-fun result!161122 () Bool)

(assert (= result!161122 result!161120))

(assert (=> b!2217618 t!199322))

(declare-fun b_and!174177 () Bool)

(assert (= b_and!174169 (and (=> t!199322 result!161122) b_and!174177)))

(declare-fun t!199324 () Bool)

(declare-fun tb!132815 () Bool)

(assert (=> (and b!2217397 (= (toChars!5757 (transformation!4183 (rule!6483 t2!61))) (toChars!5757 (transformation!4183 (rule!6483 t1!61)))) t!199324) tb!132815))

(declare-fun result!161124 () Bool)

(assert (= result!161124 result!161120))

(assert (=> b!2217618 t!199324))

(declare-fun b_and!174179 () Bool)

(assert (= b_and!174171 (and (=> t!199324 result!161124) b_and!174179)))

(declare-fun t!199326 () Bool)

(declare-fun tb!132817 () Bool)

(assert (=> (and b!2217392 (= (toChars!5757 (transformation!4183 (h!31345 rules!4462))) (toChars!5757 (transformation!4183 (rule!6483 t1!61)))) t!199326) tb!132817))

(declare-fun result!161126 () Bool)

(assert (= result!161126 result!161120))

(assert (=> b!2217618 t!199326))

(declare-fun b_and!174181 () Bool)

(assert (= b_and!174173 (and (=> t!199326 result!161126) b_and!174181)))

(declare-fun m!2658659 () Bool)

(assert (=> d!662960 m!2658659))

(declare-fun m!2658661 () Bool)

(assert (=> b!2217618 m!2658661))

(assert (=> b!2217618 m!2658661))

(declare-fun m!2658663 () Bool)

(assert (=> b!2217618 m!2658663))

(declare-fun m!2658665 () Bool)

(assert (=> b!2217619 m!2658665))

(assert (=> start!216024 d!662960))

(declare-fun d!662962 () Bool)

(declare-fun res!952385 () Bool)

(declare-fun e!1416111 () Bool)

(assert (=> d!662962 (=> res!952385 e!1416111)))

(assert (=> d!662962 (= res!952385 (or (not ((_ is Cons!25943) l!6601)) (not ((_ is Cons!25943) (t!199259 l!6601)))))))

(assert (=> d!662962 (= (tokensListTwoByTwoPredicateList!50 thiss!27908 l!6601 rules!4462 p!3128) e!1416111)))

(declare-fun b!2217621 () Bool)

(declare-fun e!1416112 () Bool)

(assert (=> b!2217621 (= e!1416111 e!1416112)))

(declare-fun res!952386 () Bool)

(assert (=> b!2217621 (=> (not res!952386) (not e!1416112))))

(assert (=> b!2217621 (= res!952386 (dynLambda!11488 p!3128 (h!31344 l!6601) (h!31344 (t!199259 l!6601)) rules!4462))))

(declare-fun b!2217622 () Bool)

(assert (=> b!2217622 (= e!1416112 (tokensListTwoByTwoPredicateList!50 thiss!27908 (Cons!25943 (h!31344 (t!199259 l!6601)) (t!199259 (t!199259 l!6601))) rules!4462 p!3128))))

(assert (= (and d!662962 (not res!952385)) b!2217621))

(assert (= (and b!2217621 res!952386) b!2217622))

(declare-fun b_lambda!71497 () Bool)

(assert (=> (not b_lambda!71497) (not b!2217621)))

(declare-fun t!199328 () Bool)

(declare-fun tb!132819 () Bool)

(assert (=> (and start!216024 (= p!3128 p!3128) t!199328) tb!132819))

(declare-fun result!161128 () Bool)

(assert (=> tb!132819 (= result!161128 true)))

(assert (=> b!2217621 t!199328))

(declare-fun b_and!174183 () Bool)

(assert (= b_and!174149 (and (=> t!199328 result!161128) b_and!174183)))

(declare-fun m!2658667 () Bool)

(assert (=> b!2217621 m!2658667))

(declare-fun m!2658669 () Bool)

(assert (=> b!2217622 m!2658669))

(assert (=> b!2217387 d!662962))

(declare-fun e!1416115 () Bool)

(assert (=> b!2217388 (= tp!690666 e!1416115)))

(declare-fun b!2217634 () Bool)

(declare-fun tp!690761 () Bool)

(declare-fun tp!690759 () Bool)

(assert (=> b!2217634 (= e!1416115 (and tp!690761 tp!690759))))

(declare-fun b!2217636 () Bool)

(declare-fun tp!690757 () Bool)

(declare-fun tp!690760 () Bool)

(assert (=> b!2217636 (= e!1416115 (and tp!690757 tp!690760))))

(declare-fun b!2217635 () Bool)

(declare-fun tp!690758 () Bool)

(assert (=> b!2217635 (= e!1416115 tp!690758)))

(declare-fun b!2217633 () Bool)

(declare-fun tp_is_empty!9829 () Bool)

(assert (=> b!2217633 (= e!1416115 tp_is_empty!9829)))

(assert (= (and b!2217388 ((_ is ElementMatch!6327) (regex!4183 (rule!6483 t1!61)))) b!2217633))

(assert (= (and b!2217388 ((_ is Concat!10647) (regex!4183 (rule!6483 t1!61)))) b!2217634))

(assert (= (and b!2217388 ((_ is Star!6327) (regex!4183 (rule!6483 t1!61)))) b!2217635))

(assert (= (and b!2217388 ((_ is Union!6327) (regex!4183 (rule!6483 t1!61)))) b!2217636))

(declare-fun b!2217641 () Bool)

(declare-fun e!1416118 () Bool)

(declare-fun tp!690764 () Bool)

(assert (=> b!2217641 (= e!1416118 (and tp_is_empty!9829 tp!690764))))

(assert (=> b!2217378 (= tp!690660 e!1416118)))

(assert (= (and b!2217378 ((_ is Cons!25942) (originalCharacters!4955 t1!61))) b!2217641))

(declare-fun e!1416119 () Bool)

(assert (=> b!2217399 (= tp!690665 e!1416119)))

(declare-fun b!2217643 () Bool)

(declare-fun tp!690769 () Bool)

(declare-fun tp!690767 () Bool)

(assert (=> b!2217643 (= e!1416119 (and tp!690769 tp!690767))))

(declare-fun b!2217645 () Bool)

(declare-fun tp!690765 () Bool)

(declare-fun tp!690768 () Bool)

(assert (=> b!2217645 (= e!1416119 (and tp!690765 tp!690768))))

(declare-fun b!2217644 () Bool)

(declare-fun tp!690766 () Bool)

(assert (=> b!2217644 (= e!1416119 tp!690766)))

(declare-fun b!2217642 () Bool)

(assert (=> b!2217642 (= e!1416119 tp_is_empty!9829)))

(assert (= (and b!2217399 ((_ is ElementMatch!6327) (regex!4183 (h!31345 rules!4462)))) b!2217642))

(assert (= (and b!2217399 ((_ is Concat!10647) (regex!4183 (h!31345 rules!4462)))) b!2217643))

(assert (= (and b!2217399 ((_ is Star!6327) (regex!4183 (h!31345 rules!4462)))) b!2217644))

(assert (= (and b!2217399 ((_ is Union!6327) (regex!4183 (h!31345 rules!4462)))) b!2217645))

(declare-fun e!1416120 () Bool)

(assert (=> b!2217400 (= tp!690662 e!1416120)))

(declare-fun b!2217647 () Bool)

(declare-fun tp!690774 () Bool)

(declare-fun tp!690772 () Bool)

(assert (=> b!2217647 (= e!1416120 (and tp!690774 tp!690772))))

(declare-fun b!2217649 () Bool)

(declare-fun tp!690770 () Bool)

(declare-fun tp!690773 () Bool)

(assert (=> b!2217649 (= e!1416120 (and tp!690770 tp!690773))))

(declare-fun b!2217648 () Bool)

(declare-fun tp!690771 () Bool)

(assert (=> b!2217648 (= e!1416120 tp!690771)))

(declare-fun b!2217646 () Bool)

(assert (=> b!2217646 (= e!1416120 tp_is_empty!9829)))

(assert (= (and b!2217400 ((_ is ElementMatch!6327) (regex!4183 (rule!6483 t2!61)))) b!2217646))

(assert (= (and b!2217400 ((_ is Concat!10647) (regex!4183 (rule!6483 t2!61)))) b!2217647))

(assert (= (and b!2217400 ((_ is Star!6327) (regex!4183 (rule!6483 t2!61)))) b!2217648))

(assert (= (and b!2217400 ((_ is Union!6327) (regex!4183 (rule!6483 t2!61)))) b!2217649))

(declare-fun b!2217663 () Bool)

(declare-fun b_free!64229 () Bool)

(declare-fun b_next!64933 () Bool)

(assert (=> b!2217663 (= b_free!64229 (not b_next!64933))))

(declare-fun tp!690788 () Bool)

(declare-fun b_and!174185 () Bool)

(assert (=> b!2217663 (= tp!690788 b_and!174185)))

(declare-fun b_free!64231 () Bool)

(declare-fun b_next!64935 () Bool)

(assert (=> b!2217663 (= b_free!64231 (not b_next!64935))))

(declare-fun t!199330 () Bool)

(declare-fun tb!132821 () Bool)

(assert (=> (and b!2217663 (= (toChars!5757 (transformation!4183 (rule!6483 (h!31344 (t!199259 l!6601))))) (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601))))) t!199330) tb!132821))

(declare-fun result!161136 () Bool)

(assert (= result!161136 result!161096))

(assert (=> b!2217572 t!199330))

(declare-fun tb!132823 () Bool)

(declare-fun t!199332 () Bool)

(assert (=> (and b!2217663 (= (toChars!5757 (transformation!4183 (rule!6483 (h!31344 (t!199259 l!6601))))) (toChars!5757 (transformation!4183 (rule!6483 t2!61)))) t!199332) tb!132823))

(declare-fun result!161138 () Bool)

(assert (= result!161138 result!161112))

(assert (=> b!2217615 t!199332))

(declare-fun tb!132825 () Bool)

(declare-fun t!199334 () Bool)

(assert (=> (and b!2217663 (= (toChars!5757 (transformation!4183 (rule!6483 (h!31344 (t!199259 l!6601))))) (toChars!5757 (transformation!4183 (rule!6483 t1!61)))) t!199334) tb!132825))

(declare-fun result!161140 () Bool)

(assert (= result!161140 result!161120))

(assert (=> b!2217618 t!199334))

(declare-fun tp!690785 () Bool)

(declare-fun b_and!174187 () Bool)

(assert (=> b!2217663 (= tp!690785 (and (=> t!199330 result!161136) (=> t!199332 result!161138) (=> t!199334 result!161140) b_and!174187))))

(declare-fun tp!690787 () Bool)

(declare-fun e!1416135 () Bool)

(declare-fun e!1416138 () Bool)

(declare-fun b!2217660 () Bool)

(assert (=> b!2217660 (= e!1416138 (and (inv!35158 (h!31344 (t!199259 l!6601))) e!1416135 tp!690787))))

(declare-fun e!1416137 () Bool)

(assert (=> b!2217663 (= e!1416137 (and tp!690788 tp!690785))))

(assert (=> b!2217379 (= tp!690671 e!1416138)))

(declare-fun b!2217662 () Bool)

(declare-fun tp!690789 () Bool)

(declare-fun e!1416136 () Bool)

(assert (=> b!2217662 (= e!1416136 (and tp!690789 (inv!35155 (tag!4673 (rule!6483 (h!31344 (t!199259 l!6601))))) (inv!35159 (transformation!4183 (rule!6483 (h!31344 (t!199259 l!6601))))) e!1416137))))

(declare-fun b!2217661 () Bool)

(declare-fun tp!690786 () Bool)

(assert (=> b!2217661 (= e!1416135 (and (inv!21 (value!131948 (h!31344 (t!199259 l!6601)))) e!1416136 tp!690786))))

(assert (= b!2217662 b!2217663))

(assert (= b!2217661 b!2217662))

(assert (= b!2217660 b!2217661))

(assert (= (and b!2217379 ((_ is Cons!25943) (t!199259 l!6601))) b!2217660))

(declare-fun m!2658671 () Bool)

(assert (=> b!2217660 m!2658671))

(declare-fun m!2658673 () Bool)

(assert (=> b!2217662 m!2658673))

(declare-fun m!2658675 () Bool)

(assert (=> b!2217662 m!2658675))

(declare-fun m!2658677 () Bool)

(assert (=> b!2217661 m!2658677))

(declare-fun e!1416139 () Bool)

(assert (=> b!2217381 (= tp!690661 e!1416139)))

(declare-fun b!2217665 () Bool)

(declare-fun tp!690794 () Bool)

(declare-fun tp!690792 () Bool)

(assert (=> b!2217665 (= e!1416139 (and tp!690794 tp!690792))))

(declare-fun b!2217667 () Bool)

(declare-fun tp!690790 () Bool)

(declare-fun tp!690793 () Bool)

(assert (=> b!2217667 (= e!1416139 (and tp!690790 tp!690793))))

(declare-fun b!2217666 () Bool)

(declare-fun tp!690791 () Bool)

(assert (=> b!2217666 (= e!1416139 tp!690791)))

(declare-fun b!2217664 () Bool)

(assert (=> b!2217664 (= e!1416139 tp_is_empty!9829)))

(assert (= (and b!2217381 ((_ is ElementMatch!6327) (regex!4183 (rule!6483 (h!31344 l!6601))))) b!2217664))

(assert (= (and b!2217381 ((_ is Concat!10647) (regex!4183 (rule!6483 (h!31344 l!6601))))) b!2217665))

(assert (= (and b!2217381 ((_ is Star!6327) (regex!4183 (rule!6483 (h!31344 l!6601))))) b!2217666))

(assert (= (and b!2217381 ((_ is Union!6327) (regex!4183 (rule!6483 (h!31344 l!6601))))) b!2217667))

(declare-fun b!2217678 () Bool)

(declare-fun b_free!64233 () Bool)

(declare-fun b_next!64937 () Bool)

(assert (=> b!2217678 (= b_free!64233 (not b_next!64937))))

(declare-fun tp!690806 () Bool)

(declare-fun b_and!174189 () Bool)

(assert (=> b!2217678 (= tp!690806 b_and!174189)))

(declare-fun b_free!64235 () Bool)

(declare-fun b_next!64939 () Bool)

(assert (=> b!2217678 (= b_free!64235 (not b_next!64939))))

(declare-fun tb!132827 () Bool)

(declare-fun t!199336 () Bool)

(assert (=> (and b!2217678 (= (toChars!5757 (transformation!4183 (h!31345 (t!199260 rules!4462)))) (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601))))) t!199336) tb!132827))

(declare-fun result!161144 () Bool)

(assert (= result!161144 result!161096))

(assert (=> b!2217572 t!199336))

(declare-fun t!199338 () Bool)

(declare-fun tb!132829 () Bool)

(assert (=> (and b!2217678 (= (toChars!5757 (transformation!4183 (h!31345 (t!199260 rules!4462)))) (toChars!5757 (transformation!4183 (rule!6483 t2!61)))) t!199338) tb!132829))

(declare-fun result!161146 () Bool)

(assert (= result!161146 result!161112))

(assert (=> b!2217615 t!199338))

(declare-fun t!199340 () Bool)

(declare-fun tb!132831 () Bool)

(assert (=> (and b!2217678 (= (toChars!5757 (transformation!4183 (h!31345 (t!199260 rules!4462)))) (toChars!5757 (transformation!4183 (rule!6483 t1!61)))) t!199340) tb!132831))

(declare-fun result!161148 () Bool)

(assert (= result!161148 result!161120))

(assert (=> b!2217618 t!199340))

(declare-fun tp!690803 () Bool)

(declare-fun b_and!174191 () Bool)

(assert (=> b!2217678 (= tp!690803 (and (=> t!199336 result!161144) (=> t!199338 result!161146) (=> t!199340 result!161148) b_and!174191))))

(declare-fun e!1416151 () Bool)

(assert (=> b!2217678 (= e!1416151 (and tp!690806 tp!690803))))

(declare-fun e!1416149 () Bool)

(declare-fun tp!690805 () Bool)

(declare-fun b!2217677 () Bool)

(assert (=> b!2217677 (= e!1416149 (and tp!690805 (inv!35155 (tag!4673 (h!31345 (t!199260 rules!4462)))) (inv!35159 (transformation!4183 (h!31345 (t!199260 rules!4462)))) e!1416151))))

(declare-fun b!2217676 () Bool)

(declare-fun e!1416150 () Bool)

(declare-fun tp!690804 () Bool)

(assert (=> b!2217676 (= e!1416150 (and e!1416149 tp!690804))))

(assert (=> b!2217396 (= tp!690674 e!1416150)))

(assert (= b!2217677 b!2217678))

(assert (= b!2217676 b!2217677))

(assert (= (and b!2217396 ((_ is Cons!25944) (t!199260 rules!4462))) b!2217676))

(declare-fun m!2658679 () Bool)

(assert (=> b!2217677 m!2658679))

(declare-fun m!2658681 () Bool)

(assert (=> b!2217677 m!2658681))

(declare-fun b!2217679 () Bool)

(declare-fun e!1416152 () Bool)

(declare-fun tp!690807 () Bool)

(assert (=> b!2217679 (= e!1416152 (and tp_is_empty!9829 tp!690807))))

(assert (=> b!2217386 (= tp!690672 e!1416152)))

(assert (= (and b!2217386 ((_ is Cons!25942) (originalCharacters!4955 (h!31344 l!6601)))) b!2217679))

(declare-fun b!2217680 () Bool)

(declare-fun e!1416153 () Bool)

(declare-fun tp!690808 () Bool)

(assert (=> b!2217680 (= e!1416153 (and tp_is_empty!9829 tp!690808))))

(assert (=> b!2217398 (= tp!690673 e!1416153)))

(assert (= (and b!2217398 ((_ is Cons!25942) (originalCharacters!4955 t2!61))) b!2217680))

(declare-fun b_lambda!71499 () Bool)

(assert (= b_lambda!71479 (or (and start!216024 b_free!64211) b_lambda!71499)))

(declare-fun b_lambda!71501 () Bool)

(assert (= b_lambda!71493 (or (and b!2217382 b_free!64209 (= (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601)))) (toChars!5757 (transformation!4183 (rule!6483 t2!61))))) (and b!2217663 b_free!64231 (= (toChars!5757 (transformation!4183 (rule!6483 (h!31344 (t!199259 l!6601))))) (toChars!5757 (transformation!4183 (rule!6483 t2!61))))) (and b!2217392 b_free!64219 (= (toChars!5757 (transformation!4183 (h!31345 rules!4462))) (toChars!5757 (transformation!4183 (rule!6483 t2!61))))) (and b!2217383 b_free!64205 (= (toChars!5757 (transformation!4183 (rule!6483 t1!61))) (toChars!5757 (transformation!4183 (rule!6483 t2!61))))) (and b!2217397 b_free!64215) (and b!2217678 b_free!64235 (= (toChars!5757 (transformation!4183 (h!31345 (t!199260 rules!4462)))) (toChars!5757 (transformation!4183 (rule!6483 t2!61))))) b_lambda!71501)))

(declare-fun b_lambda!71503 () Bool)

(assert (= b_lambda!71481 (or (and b!2217392 b_free!64219 (= (toChars!5757 (transformation!4183 (h!31345 rules!4462))) (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601)))))) (and b!2217383 b_free!64205 (= (toChars!5757 (transformation!4183 (rule!6483 t1!61))) (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601)))))) (and b!2217397 b_free!64215 (= (toChars!5757 (transformation!4183 (rule!6483 t2!61))) (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601)))))) (and b!2217382 b_free!64209) (and b!2217663 b_free!64231 (= (toChars!5757 (transformation!4183 (rule!6483 (h!31344 (t!199259 l!6601))))) (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601)))))) (and b!2217678 b_free!64235 (= (toChars!5757 (transformation!4183 (h!31345 (t!199260 rules!4462)))) (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601)))))) b_lambda!71503)))

(declare-fun b_lambda!71505 () Bool)

(assert (= b_lambda!71497 (or (and start!216024 b_free!64211) b_lambda!71505)))

(declare-fun b_lambda!71507 () Bool)

(assert (= b_lambda!71495 (or (and b!2217397 b_free!64215 (= (toChars!5757 (transformation!4183 (rule!6483 t2!61))) (toChars!5757 (transformation!4183 (rule!6483 t1!61))))) (and b!2217678 b_free!64235 (= (toChars!5757 (transformation!4183 (h!31345 (t!199260 rules!4462)))) (toChars!5757 (transformation!4183 (rule!6483 t1!61))))) (and b!2217383 b_free!64205) (and b!2217663 b_free!64231 (= (toChars!5757 (transformation!4183 (rule!6483 (h!31344 (t!199259 l!6601))))) (toChars!5757 (transformation!4183 (rule!6483 t1!61))))) (and b!2217392 b_free!64219 (= (toChars!5757 (transformation!4183 (h!31345 rules!4462))) (toChars!5757 (transformation!4183 (rule!6483 t1!61))))) (and b!2217382 b_free!64209 (= (toChars!5757 (transformation!4183 (rule!6483 (h!31344 l!6601)))) (toChars!5757 (transformation!4183 (rule!6483 t1!61))))) b_lambda!71507)))

(check-sat (not b!2217435) (not b_lambda!71501) b_and!174103 (not b_next!64919) (not b!2217613) (not b!2217636) b_and!174185 (not tb!132789) (not b_next!64913) (not b!2217609) (not d!662952) (not b_next!64921) (not b!2217634) (not b!2217487) (not b!2217676) (not b!2217594) (not b!2217601) (not b_next!64911) (not b!2217608) b_and!174183 (not b!2217598) (not b!2217680) (not d!662946) b_and!174181 (not b_lambda!71507) (not b!2217648) (not d!662948) (not b!2217573) (not b!2217619) (not b!2217600) b_and!174175 (not b_next!64915) (not b!2217635) (not b_next!64933) (not b!2217665) (not b_next!64923) (not b!2217647) (not b!2217603) (not b_next!64939) tp_is_empty!9829 (not b!2217520) b_and!174187 (not b_next!64909) (not b!2217615) b_and!174191 (not b!2217485) (not b!2217606) (not b!2217477) (not b_lambda!71499) (not b!2217679) (not b!2217677) (not d!662908) (not b!2217660) (not b!2217643) (not b!2217602) b_and!174113 (not b!2217661) (not b_lambda!71505) (not b!2217572) (not b!2217597) (not b!2217476) (not d!662960) (not d!662958) (not d!662904) (not b!2217595) (not b_next!64935) (not b_next!64937) (not d!662942) (not b!2217622) (not b!2217662) (not b!2217592) (not tb!132811) (not tb!132803) (not b!2217644) (not b!2217645) (not b!2217599) (not b!2217585) (not b_next!64917) b_and!174117 (not b!2217539) (not d!662940) (not b!2217616) (not b!2217641) (not b!2217604) (not b!2217593) b_and!174179 (not b_lambda!71503) (not b!2217450) (not b!2217666) (not b!2217474) (not b!2217617) (not b!2217649) (not b!2217620) (not b!2217611) (not d!662884) b_and!174189 b_and!174107 (not d!662950) (not b!2217614) (not b_next!64907) b_and!174177 (not b!2217596) (not b!2217667) (not b!2217618))
(check-sat (not b_next!64921) (not b_next!64911) b_and!174183 b_and!174181 (not b_next!64909) b_and!174191 b_and!174113 b_and!174103 (not b_next!64917) (not b_next!64919) b_and!174117 b_and!174179 b_and!174189 b_and!174185 (not b_next!64913) b_and!174175 (not b_next!64915) (not b_next!64933) (not b_next!64923) (not b_next!64939) b_and!174187 (not b_next!64935) (not b_next!64937) b_and!174107 (not b_next!64907) b_and!174177)

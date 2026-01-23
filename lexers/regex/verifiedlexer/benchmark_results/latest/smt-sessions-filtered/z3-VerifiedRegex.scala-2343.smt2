; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115634 () Bool)

(assert start!115634)

(declare-fun b!1309401 () Bool)

(declare-fun b_free!31515 () Bool)

(declare-fun b_next!32219 () Bool)

(assert (=> b!1309401 (= b_free!31515 (not b_next!32219))))

(declare-fun tp!381813 () Bool)

(declare-fun b_and!87463 () Bool)

(assert (=> b!1309401 (= tp!381813 b_and!87463)))

(declare-fun b_free!31517 () Bool)

(declare-fun b_next!32221 () Bool)

(assert (=> b!1309401 (= b_free!31517 (not b_next!32221))))

(declare-fun tp!381814 () Bool)

(declare-fun b_and!87465 () Bool)

(assert (=> b!1309401 (= tp!381814 b_and!87465)))

(declare-fun b!1309385 () Bool)

(declare-fun b_free!31519 () Bool)

(declare-fun b_next!32223 () Bool)

(assert (=> b!1309385 (= b_free!31519 (not b_next!32223))))

(declare-fun tp!381824 () Bool)

(declare-fun b_and!87467 () Bool)

(assert (=> b!1309385 (= tp!381824 b_and!87467)))

(declare-fun b_free!31521 () Bool)

(declare-fun b_next!32225 () Bool)

(assert (=> b!1309385 (= b_free!31521 (not b_next!32225))))

(declare-fun tp!381818 () Bool)

(declare-fun b_and!87469 () Bool)

(assert (=> b!1309385 (= tp!381818 b_and!87469)))

(declare-fun b!1309396 () Bool)

(declare-fun b_free!31523 () Bool)

(declare-fun b_next!32227 () Bool)

(assert (=> b!1309396 (= b_free!31523 (not b_next!32227))))

(declare-fun tp!381820 () Bool)

(declare-fun b_and!87471 () Bool)

(assert (=> b!1309396 (= tp!381820 b_and!87471)))

(declare-fun b_free!31525 () Bool)

(declare-fun b_next!32229 () Bool)

(assert (=> b!1309396 (= b_free!31525 (not b_next!32229))))

(declare-fun tp!381815 () Bool)

(declare-fun b_and!87473 () Bool)

(assert (=> b!1309396 (= tp!381815 b_and!87473)))

(declare-fun b!1309380 () Bool)

(assert (=> b!1309380 true))

(assert (=> b!1309380 true))

(declare-fun b!1309381 () Bool)

(assert (=> b!1309381 true))

(declare-fun b!1309373 () Bool)

(assert (=> b!1309373 true))

(declare-fun b!1309365 () Bool)

(declare-fun e!839689 () Bool)

(declare-fun tp!381823 () Bool)

(declare-fun e!839691 () Bool)

(declare-datatypes ((C!7508 0))(
  ( (C!7509 (val!4314 Int)) )
))
(declare-datatypes ((List!13328 0))(
  ( (Nil!13262) (Cons!13262 (h!18663 C!7508) (t!117987 List!13328)) )
))
(declare-datatypes ((IArray!8725 0))(
  ( (IArray!8726 (innerList!4420 List!13328)) )
))
(declare-datatypes ((List!13329 0))(
  ( (Nil!13263) (Cons!13263 (h!18664 (_ BitVec 16)) (t!117988 List!13329)) )
))
(declare-datatypes ((Conc!4360 0))(
  ( (Node!4360 (left!11405 Conc!4360) (right!11735 Conc!4360) (csize!8950 Int) (cheight!4571 Int)) (Leaf!6704 (xs!7075 IArray!8725) (csize!8951 Int)) (Empty!4360) )
))
(declare-datatypes ((BalanceConc!8660 0))(
  ( (BalanceConc!8661 (c!214918 Conc!4360)) )
))
(declare-datatypes ((TokenValue!2385 0))(
  ( (FloatLiteralValue!4770 (text!17140 List!13329)) (TokenValueExt!2384 (__x!8599 Int)) (Broken!11925 (value!75014 List!13329)) (Object!2450) (End!2385) (Def!2385) (Underscore!2385) (Match!2385) (Else!2385) (Error!2385) (Case!2385) (If!2385) (Extends!2385) (Abstract!2385) (Class!2385) (Val!2385) (DelimiterValue!4770 (del!2445 List!13329)) (KeywordValue!2391 (value!75015 List!13329)) (CommentValue!4770 (value!75016 List!13329)) (WhitespaceValue!4770 (value!75017 List!13329)) (IndentationValue!2385 (value!75018 List!13329)) (String!16160) (Int32!2385) (Broken!11926 (value!75019 List!13329)) (Boolean!2386) (Unit!19325) (OperatorValue!2388 (op!2445 List!13329)) (IdentifierValue!4770 (value!75020 List!13329)) (IdentifierValue!4771 (value!75021 List!13329)) (WhitespaceValue!4771 (value!75022 List!13329)) (True!4770) (False!4770) (Broken!11927 (value!75023 List!13329)) (Broken!11928 (value!75024 List!13329)) (True!4771) (RightBrace!2385) (RightBracket!2385) (Colon!2385) (Null!2385) (Comma!2385) (LeftBracket!2385) (False!4771) (LeftBrace!2385) (ImaginaryLiteralValue!2385 (text!17141 List!13329)) (StringLiteralValue!7155 (value!75025 List!13329)) (EOFValue!2385 (value!75026 List!13329)) (IdentValue!2385 (value!75027 List!13329)) (DelimiterValue!4771 (value!75028 List!13329)) (DedentValue!2385 (value!75029 List!13329)) (NewLineValue!2385 (value!75030 List!13329)) (IntegerValue!7155 (value!75031 (_ BitVec 32)) (text!17142 List!13329)) (IntegerValue!7156 (value!75032 Int) (text!17143 List!13329)) (Times!2385) (Or!2385) (Equal!2385) (Minus!2385) (Broken!11929 (value!75033 List!13329)) (And!2385) (Div!2385) (LessEqual!2385) (Mod!2385) (Concat!5994) (Not!2385) (Plus!2385) (SpaceValue!2385 (value!75034 List!13329)) (IntegerValue!7157 (value!75035 Int) (text!17144 List!13329)) (StringLiteralValue!7156 (text!17145 List!13329)) (FloatLiteralValue!4771 (text!17146 List!13329)) (BytesLiteralValue!2385 (value!75036 List!13329)) (CommentValue!4771 (value!75037 List!13329)) (StringLiteralValue!7157 (value!75038 List!13329)) (ErrorTokenValue!2385 (msg!2446 List!13329)) )
))
(declare-datatypes ((Regex!3609 0))(
  ( (ElementMatch!3609 (c!214919 C!7508)) (Concat!5995 (regOne!7730 Regex!3609) (regTwo!7730 Regex!3609)) (EmptyExpr!3609) (Star!3609 (reg!3938 Regex!3609)) (EmptyLang!3609) (Union!3609 (regOne!7731 Regex!3609) (regTwo!7731 Regex!3609)) )
))
(declare-datatypes ((String!16161 0))(
  ( (String!16162 (value!75039 String)) )
))
(declare-datatypes ((TokenValueInjection!4430 0))(
  ( (TokenValueInjection!4431 (toValue!3514 Int) (toChars!3373 Int)) )
))
(declare-datatypes ((Rule!4390 0))(
  ( (Rule!4391 (regex!2295 Regex!3609) (tag!2557 String!16161) (isSeparator!2295 Bool) (transformation!2295 TokenValueInjection!4430)) )
))
(declare-datatypes ((List!13330 0))(
  ( (Nil!13264) (Cons!13264 (h!18665 Rule!4390) (t!117989 List!13330)) )
))
(declare-fun rules!2550 () List!13330)

(declare-fun inv!17644 (String!16161) Bool)

(declare-fun inv!17647 (TokenValueInjection!4430) Bool)

(assert (=> b!1309365 (= e!839691 (and tp!381823 (inv!17644 (tag!2557 (h!18665 rules!2550))) (inv!17647 (transformation!2295 (h!18665 rules!2550))) e!839689))))

(declare-fun b!1309366 () Bool)

(declare-fun res!587653 () Bool)

(declare-fun e!839695 () Bool)

(assert (=> b!1309366 (=> res!587653 e!839695)))

(declare-datatypes ((Token!4252 0))(
  ( (Token!4253 (value!75040 TokenValue!2385) (rule!4034 Rule!4390) (size!10782 Int) (originalCharacters!3157 List!13328)) )
))
(declare-datatypes ((List!13331 0))(
  ( (Nil!13265) (Cons!13265 (h!18666 Token!4252) (t!117990 List!13331)) )
))
(declare-datatypes ((IArray!8727 0))(
  ( (IArray!8728 (innerList!4421 List!13331)) )
))
(declare-datatypes ((Conc!4361 0))(
  ( (Node!4361 (left!11406 Conc!4361) (right!11736 Conc!4361) (csize!8952 Int) (cheight!4572 Int)) (Leaf!6705 (xs!7076 IArray!8727) (csize!8953 Int)) (Empty!4361) )
))
(declare-datatypes ((BalanceConc!8662 0))(
  ( (BalanceConc!8663 (c!214920 Conc!4361)) )
))
(declare-datatypes ((tuple2!12866 0))(
  ( (tuple2!12867 (_1!7319 BalanceConc!8662) (_2!7319 BalanceConc!8660)) )
))
(declare-fun lt!431159 () tuple2!12866)

(declare-fun isEmpty!7844 (BalanceConc!8660) Bool)

(assert (=> b!1309366 (= res!587653 (not (isEmpty!7844 (_2!7319 lt!431159))))))

(declare-fun b!1309367 () Bool)

(declare-fun res!587654 () Bool)

(declare-fun e!839690 () Bool)

(assert (=> b!1309367 (=> (not res!587654) (not e!839690))))

(declare-fun t1!34 () Token!4252)

(declare-datatypes ((LexerInterface!1990 0))(
  ( (LexerInterfaceExt!1987 (__x!8600 Int)) (Lexer!1988) )
))
(declare-fun thiss!19762 () LexerInterface!1990)

(declare-fun rulesProduceIndividualToken!959 (LexerInterface!1990 List!13330 Token!4252) Bool)

(assert (=> b!1309367 (= res!587654 (rulesProduceIndividualToken!959 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1309368 () Bool)

(declare-fun res!587636 () Bool)

(assert (=> b!1309368 (=> (not res!587636) (not e!839690))))

(declare-fun t2!34 () Token!4252)

(assert (=> b!1309368 (= res!587636 (not (= (isSeparator!2295 (rule!4034 t1!34)) (isSeparator!2295 (rule!4034 t2!34)))))))

(declare-fun b!1309369 () Bool)

(declare-fun res!587639 () Bool)

(declare-fun e!839701 () Bool)

(assert (=> b!1309369 (=> res!587639 e!839701)))

(declare-fun lt!431154 () List!13328)

(declare-fun lt!431162 () C!7508)

(declare-fun contains!2295 (List!13328 C!7508) Bool)

(assert (=> b!1309369 (= res!587639 (not (contains!2295 lt!431154 lt!431162)))))

(declare-fun b!1309370 () Bool)

(declare-fun res!587658 () Bool)

(assert (=> b!1309370 (=> res!587658 e!839701)))

(declare-fun lt!431161 () List!13328)

(assert (=> b!1309370 (= res!587658 (not (contains!2295 lt!431161 lt!431162)))))

(declare-fun b!1309371 () Bool)

(assert (=> b!1309371 (= e!839695 true)))

(declare-fun lt!431164 () Bool)

(declare-fun rulesValidInductive!718 (LexerInterface!1990 List!13330) Bool)

(assert (=> b!1309371 (= lt!431164 (rulesValidInductive!718 thiss!19762 rules!2550))))

(declare-fun lt!431173 () List!13328)

(declare-fun lt!431168 () BalanceConc!8660)

(declare-fun list!4978 (BalanceConc!8660) List!13328)

(assert (=> b!1309371 (= lt!431173 (list!4978 lt!431168))))

(declare-fun b!1309372 () Bool)

(declare-fun res!587650 () Bool)

(declare-fun e!839692 () Bool)

(assert (=> b!1309372 (=> res!587650 e!839692)))

(declare-fun lt!431157 () List!13328)

(declare-datatypes ((tuple2!12868 0))(
  ( (tuple2!12869 (_1!7320 Token!4252) (_2!7320 List!13328)) )
))
(declare-datatypes ((Option!2560 0))(
  ( (None!2559) (Some!2559 (v!21073 tuple2!12868)) )
))
(declare-fun maxPrefix!1000 (LexerInterface!1990 List!13330 List!13328) Option!2560)

(assert (=> b!1309372 (= res!587650 (not (= (maxPrefix!1000 thiss!19762 rules!2550 lt!431157) (Some!2559 (tuple2!12869 t1!34 Nil!13262)))))))

(declare-fun e!839704 () Bool)

(declare-fun e!839694 () Bool)

(assert (=> b!1309373 (= e!839704 e!839694)))

(declare-fun res!587656 () Bool)

(assert (=> b!1309373 (=> res!587656 e!839694)))

(declare-fun lambda!52817 () Int)

(declare-fun exists!292 (List!13330 Int) Bool)

(assert (=> b!1309373 (= res!587656 (not (exists!292 rules!2550 lambda!52817)))))

(assert (=> b!1309373 (exists!292 rules!2550 lambda!52817)))

(declare-datatypes ((Unit!19326 0))(
  ( (Unit!19327) )
))
(declare-fun lt!431174 () Unit!19326)

(declare-fun lambda!52815 () Int)

(declare-fun lt!431155 () Regex!3609)

(declare-fun lemmaMapContains!38 (List!13330 Int Regex!3609) Unit!19326)

(assert (=> b!1309373 (= lt!431174 (lemmaMapContains!38 rules!2550 lambda!52815 lt!431155))))

(declare-fun res!587648 () Bool)

(assert (=> start!115634 (=> (not res!587648) (not e!839690))))

(get-info :version)

(assert (=> start!115634 (= res!587648 ((_ is Lexer!1988) thiss!19762))))

(assert (=> start!115634 e!839690))

(assert (=> start!115634 true))

(declare-fun e!839684 () Bool)

(assert (=> start!115634 e!839684))

(declare-fun e!839697 () Bool)

(declare-fun inv!17648 (Token!4252) Bool)

(assert (=> start!115634 (and (inv!17648 t1!34) e!839697)))

(declare-fun e!839707 () Bool)

(assert (=> start!115634 (and (inv!17648 t2!34) e!839707)))

(declare-fun b!1309374 () Bool)

(declare-fun res!587640 () Bool)

(assert (=> b!1309374 (=> res!587640 e!839695)))

(declare-fun lt!431171 () List!13331)

(declare-fun lt!431160 () BalanceConc!8660)

(declare-datatypes ((tuple2!12870 0))(
  ( (tuple2!12871 (_1!7321 List!13331) (_2!7321 List!13328)) )
))
(declare-fun lexList!528 (LexerInterface!1990 List!13330 List!13328) tuple2!12870)

(assert (=> b!1309374 (= res!587640 (not (= (lexList!528 thiss!19762 rules!2550 (list!4978 lt!431160)) (tuple2!12871 lt!431171 Nil!13262))))))

(declare-fun b!1309375 () Bool)

(declare-fun res!587659 () Bool)

(assert (=> b!1309375 (=> (not res!587659) (not e!839690))))

(declare-fun rulesInvariant!1860 (LexerInterface!1990 List!13330) Bool)

(assert (=> b!1309375 (= res!587659 (rulesInvariant!1860 thiss!19762 rules!2550))))

(declare-fun b!1309376 () Bool)

(declare-fun e!839706 () Bool)

(assert (=> b!1309376 (= e!839706 e!839701)))

(declare-fun res!587637 () Bool)

(assert (=> b!1309376 (=> res!587637 e!839701)))

(declare-fun lt!431170 () C!7508)

(assert (=> b!1309376 (= res!587637 (not (contains!2295 lt!431161 lt!431170)))))

(declare-fun lt!431169 () BalanceConc!8660)

(declare-fun apply!2983 (BalanceConc!8660 Int) C!7508)

(assert (=> b!1309376 (= lt!431170 (apply!2983 lt!431169 0))))

(declare-fun b!1309377 () Bool)

(declare-fun e!839703 () Bool)

(assert (=> b!1309377 (= e!839690 e!839703)))

(declare-fun res!587646 () Bool)

(assert (=> b!1309377 (=> (not res!587646) (not e!839703))))

(declare-fun size!10783 (BalanceConc!8660) Int)

(assert (=> b!1309377 (= res!587646 (> (size!10783 lt!431168) 0))))

(declare-fun charsOf!1267 (Token!4252) BalanceConc!8660)

(assert (=> b!1309377 (= lt!431168 (charsOf!1267 t2!34))))

(declare-fun b!1309378 () Bool)

(declare-fun res!587643 () Bool)

(assert (=> b!1309378 (=> (not res!587643) (not e!839703))))

(declare-fun separableTokensPredicate!273 (LexerInterface!1990 Token!4252 Token!4252 List!13330) Bool)

(assert (=> b!1309378 (= res!587643 (not (separableTokensPredicate!273 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1309379 () Bool)

(declare-fun res!587642 () Bool)

(assert (=> b!1309379 (=> res!587642 e!839701)))

(declare-fun lt!431156 () Regex!3609)

(declare-fun matchR!1611 (Regex!3609 List!13328) Bool)

(assert (=> b!1309379 (= res!587642 (not (matchR!1611 lt!431156 lt!431154)))))

(declare-fun e!839698 () Bool)

(declare-fun e!839702 () Bool)

(assert (=> b!1309380 (= e!839698 (not e!839702))))

(declare-fun res!587655 () Bool)

(assert (=> b!1309380 (=> res!587655 e!839702)))

(declare-fun lambda!52814 () Int)

(declare-fun Exists!767 (Int) Bool)

(assert (=> b!1309380 (= res!587655 (not (Exists!767 lambda!52814)))))

(assert (=> b!1309380 (Exists!767 lambda!52814)))

(declare-fun lt!431158 () Unit!19326)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!85 (Regex!3609 List!13328) Unit!19326)

(assert (=> b!1309380 (= lt!431158 (lemmaPrefixMatchThenExistsStringThatMatches!85 lt!431156 lt!431161))))

(declare-fun e!839686 () Bool)

(assert (=> b!1309381 (= e!839701 e!839686)))

(declare-fun res!587652 () Bool)

(assert (=> b!1309381 (=> res!587652 e!839686)))

(declare-fun lambda!52816 () Int)

(declare-datatypes ((List!13332 0))(
  ( (Nil!13266) (Cons!13266 (h!18667 Regex!3609) (t!117991 List!13332)) )
))
(declare-fun exists!293 (List!13332 Int) Bool)

(declare-fun map!2909 (List!13330 Int) List!13332)

(assert (=> b!1309381 (= res!587652 (not (exists!293 (map!2909 rules!2550 lambda!52815) lambda!52816)))))

(declare-fun lt!431172 () List!13332)

(assert (=> b!1309381 (exists!293 lt!431172 lambda!52816)))

(declare-fun lt!431153 () Unit!19326)

(declare-fun matchRGenUnionSpec!46 (Regex!3609 List!13332 List!13328) Unit!19326)

(assert (=> b!1309381 (= lt!431153 (matchRGenUnionSpec!46 lt!431156 lt!431172 lt!431154))))

(assert (=> b!1309381 (= lt!431172 (map!2909 rules!2550 lambda!52815))))

(declare-fun b!1309382 () Bool)

(assert (=> b!1309382 (= e!839703 e!839698)))

(declare-fun res!587644 () Bool)

(assert (=> b!1309382 (=> (not res!587644) (not e!839698))))

(declare-fun prefixMatch!122 (Regex!3609 List!13328) Bool)

(assert (=> b!1309382 (= res!587644 (prefixMatch!122 lt!431156 lt!431161))))

(declare-fun rulesRegex!180 (LexerInterface!1990 List!13330) Regex!3609)

(assert (=> b!1309382 (= lt!431156 (rulesRegex!180 thiss!19762 rules!2550))))

(declare-fun ++!3374 (List!13328 List!13328) List!13328)

(assert (=> b!1309382 (= lt!431161 (++!3374 lt!431157 (Cons!13262 lt!431162 Nil!13262)))))

(assert (=> b!1309382 (= lt!431162 (apply!2983 lt!431168 0))))

(assert (=> b!1309382 (= lt!431157 (list!4978 lt!431169))))

(assert (=> b!1309382 (= lt!431169 (charsOf!1267 t1!34))))

(declare-fun b!1309383 () Bool)

(assert (=> b!1309383 (= e!839694 e!839692)))

(declare-fun res!587635 () Bool)

(assert (=> b!1309383 (=> res!587635 e!839692)))

(declare-fun lt!431166 () tuple2!12866)

(declare-fun lt!431167 () List!13331)

(declare-fun list!4979 (BalanceConc!8662) List!13331)

(assert (=> b!1309383 (= res!587635 (not (= (list!4979 (_1!7319 lt!431166)) lt!431167)))))

(assert (=> b!1309383 (= lt!431167 (Cons!13265 t1!34 Nil!13265))))

(declare-fun lt!431163 () BalanceConc!8660)

(declare-fun lex!825 (LexerInterface!1990 List!13330 BalanceConc!8660) tuple2!12866)

(assert (=> b!1309383 (= lt!431166 (lex!825 thiss!19762 rules!2550 lt!431163))))

(declare-fun print!764 (LexerInterface!1990 BalanceConc!8662) BalanceConc!8660)

(declare-fun singletonSeq!868 (Token!4252) BalanceConc!8662)

(assert (=> b!1309383 (= lt!431163 (print!764 thiss!19762 (singletonSeq!868 t1!34)))))

(declare-fun lt!431165 () Rule!4390)

(declare-fun getWitness!184 (List!13330 Int) Rule!4390)

(assert (=> b!1309383 (= lt!431165 (getWitness!184 rules!2550 lambda!52817))))

(declare-fun b!1309384 () Bool)

(declare-fun res!587641 () Bool)

(assert (=> b!1309384 (=> res!587641 e!839692)))

(declare-fun contains!2296 (List!13330 Rule!4390) Bool)

(assert (=> b!1309384 (= res!587641 (not (contains!2296 rules!2550 (rule!4034 t1!34))))))

(declare-fun e!839708 () Bool)

(assert (=> b!1309385 (= e!839708 (and tp!381824 tp!381818))))

(declare-fun b!1309386 () Bool)

(declare-fun e!839685 () Bool)

(declare-fun e!839688 () Bool)

(declare-fun tp!381816 () Bool)

(assert (=> b!1309386 (= e!839685 (and tp!381816 (inv!17644 (tag!2557 (rule!4034 t1!34))) (inv!17647 (transformation!2295 (rule!4034 t1!34))) e!839688))))

(declare-fun e!839700 () Bool)

(declare-fun tp!381822 () Bool)

(declare-fun b!1309387 () Bool)

(declare-fun inv!21 (TokenValue!2385) Bool)

(assert (=> b!1309387 (= e!839707 (and (inv!21 (value!75040 t2!34)) e!839700 tp!381822))))

(declare-fun b!1309388 () Bool)

(declare-fun res!587662 () Bool)

(assert (=> b!1309388 (=> res!587662 e!839692)))

(assert (=> b!1309388 (= res!587662 (not (= (lexList!528 thiss!19762 rules!2550 (list!4978 lt!431163)) (tuple2!12871 lt!431167 Nil!13262))))))

(declare-fun b!1309389 () Bool)

(assert (=> b!1309389 (= e!839692 e!839695)))

(declare-fun res!587651 () Bool)

(assert (=> b!1309389 (=> res!587651 e!839695)))

(assert (=> b!1309389 (= res!587651 (not (= (list!4979 (_1!7319 lt!431159)) lt!431171)))))

(assert (=> b!1309389 (= lt!431171 (Cons!13265 t2!34 Nil!13265))))

(assert (=> b!1309389 (= lt!431159 (lex!825 thiss!19762 rules!2550 lt!431160))))

(assert (=> b!1309389 (= lt!431160 (print!764 thiss!19762 (singletonSeq!868 t2!34)))))

(declare-fun b!1309390 () Bool)

(declare-fun res!587647 () Bool)

(assert (=> b!1309390 (=> (not res!587647) (not e!839703))))

(declare-fun sepAndNonSepRulesDisjointChars!668 (List!13330 List!13330) Bool)

(assert (=> b!1309390 (= res!587647 (sepAndNonSepRulesDisjointChars!668 rules!2550 rules!2550))))

(declare-fun b!1309391 () Bool)

(assert (=> b!1309391 (= e!839702 e!839706)))

(declare-fun res!587660 () Bool)

(assert (=> b!1309391 (=> res!587660 e!839706)))

(declare-fun getSuffix!465 (List!13328 List!13328) List!13328)

(assert (=> b!1309391 (= res!587660 (not (= lt!431154 (++!3374 lt!431161 (getSuffix!465 lt!431154 lt!431161)))))))

(declare-fun pickWitness!72 (Int) List!13328)

(assert (=> b!1309391 (= lt!431154 (pickWitness!72 lambda!52814))))

(declare-fun b!1309392 () Bool)

(assert (=> b!1309392 (= e!839686 e!839704)))

(declare-fun res!587657 () Bool)

(assert (=> b!1309392 (=> res!587657 e!839704)))

(declare-fun contains!2297 (List!13332 Regex!3609) Bool)

(assert (=> b!1309392 (= res!587657 (not (contains!2297 (map!2909 rules!2550 lambda!52815) lt!431155)))))

(declare-fun getWitness!185 (List!13332 Int) Regex!3609)

(assert (=> b!1309392 (= lt!431155 (getWitness!185 (map!2909 rules!2550 lambda!52815) lambda!52816))))

(declare-fun b!1309393 () Bool)

(declare-fun res!587649 () Bool)

(assert (=> b!1309393 (=> res!587649 e!839701)))

(assert (=> b!1309393 (= res!587649 (not (contains!2295 lt!431154 lt!431170)))))

(declare-fun b!1309394 () Bool)

(declare-fun tp!381817 () Bool)

(assert (=> b!1309394 (= e!839700 (and tp!381817 (inv!17644 (tag!2557 (rule!4034 t2!34))) (inv!17647 (transformation!2295 (rule!4034 t2!34))) e!839708))))

(declare-fun b!1309395 () Bool)

(declare-fun res!587661 () Bool)

(assert (=> b!1309395 (=> (not res!587661) (not e!839690))))

(declare-fun isEmpty!7845 (List!13330) Bool)

(assert (=> b!1309395 (= res!587661 (not (isEmpty!7845 rules!2550)))))

(assert (=> b!1309396 (= e!839688 (and tp!381820 tp!381815))))

(declare-fun b!1309397 () Bool)

(declare-fun res!587638 () Bool)

(assert (=> b!1309397 (=> (not res!587638) (not e!839690))))

(assert (=> b!1309397 (= res!587638 (rulesProduceIndividualToken!959 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1309398 () Bool)

(declare-fun res!587645 () Bool)

(assert (=> b!1309398 (=> res!587645 e!839692)))

(assert (=> b!1309398 (= res!587645 (not (isEmpty!7844 (_2!7319 lt!431166))))))

(declare-fun b!1309399 () Bool)

(declare-fun tp!381821 () Bool)

(assert (=> b!1309399 (= e!839697 (and (inv!21 (value!75040 t1!34)) e!839685 tp!381821))))

(declare-fun b!1309400 () Bool)

(declare-fun tp!381819 () Bool)

(assert (=> b!1309400 (= e!839684 (and e!839691 tp!381819))))

(assert (=> b!1309401 (= e!839689 (and tp!381813 tp!381814))))

(assert (= (and start!115634 res!587648) b!1309395))

(assert (= (and b!1309395 res!587661) b!1309375))

(assert (= (and b!1309375 res!587659) b!1309367))

(assert (= (and b!1309367 res!587654) b!1309397))

(assert (= (and b!1309397 res!587638) b!1309368))

(assert (= (and b!1309368 res!587636) b!1309377))

(assert (= (and b!1309377 res!587646) b!1309390))

(assert (= (and b!1309390 res!587647) b!1309378))

(assert (= (and b!1309378 res!587643) b!1309382))

(assert (= (and b!1309382 res!587644) b!1309380))

(assert (= (and b!1309380 (not res!587655)) b!1309391))

(assert (= (and b!1309391 (not res!587660)) b!1309376))

(assert (= (and b!1309376 (not res!587637)) b!1309393))

(assert (= (and b!1309393 (not res!587649)) b!1309370))

(assert (= (and b!1309370 (not res!587658)) b!1309369))

(assert (= (and b!1309369 (not res!587639)) b!1309379))

(assert (= (and b!1309379 (not res!587642)) b!1309381))

(assert (= (and b!1309381 (not res!587652)) b!1309392))

(assert (= (and b!1309392 (not res!587657)) b!1309373))

(assert (= (and b!1309373 (not res!587656)) b!1309383))

(assert (= (and b!1309383 (not res!587635)) b!1309398))

(assert (= (and b!1309398 (not res!587645)) b!1309388))

(assert (= (and b!1309388 (not res!587662)) b!1309372))

(assert (= (and b!1309372 (not res!587650)) b!1309384))

(assert (= (and b!1309384 (not res!587641)) b!1309389))

(assert (= (and b!1309389 (not res!587651)) b!1309366))

(assert (= (and b!1309366 (not res!587653)) b!1309374))

(assert (= (and b!1309374 (not res!587640)) b!1309371))

(assert (= b!1309365 b!1309401))

(assert (= b!1309400 b!1309365))

(assert (= (and start!115634 ((_ is Cons!13264) rules!2550)) b!1309400))

(assert (= b!1309386 b!1309396))

(assert (= b!1309399 b!1309386))

(assert (= start!115634 b!1309399))

(assert (= b!1309394 b!1309385))

(assert (= b!1309387 b!1309394))

(assert (= start!115634 b!1309387))

(declare-fun m!1460991 () Bool)

(assert (=> b!1309392 m!1460991))

(assert (=> b!1309392 m!1460991))

(declare-fun m!1460993 () Bool)

(assert (=> b!1309392 m!1460993))

(assert (=> b!1309392 m!1460991))

(assert (=> b!1309392 m!1460991))

(declare-fun m!1460995 () Bool)

(assert (=> b!1309392 m!1460995))

(declare-fun m!1460997 () Bool)

(assert (=> b!1309370 m!1460997))

(declare-fun m!1460999 () Bool)

(assert (=> b!1309397 m!1460999))

(declare-fun m!1461001 () Bool)

(assert (=> b!1309375 m!1461001))

(declare-fun m!1461003 () Bool)

(assert (=> b!1309376 m!1461003))

(declare-fun m!1461005 () Bool)

(assert (=> b!1309376 m!1461005))

(declare-fun m!1461007 () Bool)

(assert (=> b!1309387 m!1461007))

(declare-fun m!1461009 () Bool)

(assert (=> b!1309383 m!1461009))

(declare-fun m!1461011 () Bool)

(assert (=> b!1309383 m!1461011))

(assert (=> b!1309383 m!1461009))

(declare-fun m!1461013 () Bool)

(assert (=> b!1309383 m!1461013))

(declare-fun m!1461015 () Bool)

(assert (=> b!1309383 m!1461015))

(declare-fun m!1461017 () Bool)

(assert (=> b!1309383 m!1461017))

(declare-fun m!1461019 () Bool)

(assert (=> b!1309378 m!1461019))

(declare-fun m!1461021 () Bool)

(assert (=> b!1309384 m!1461021))

(declare-fun m!1461023 () Bool)

(assert (=> b!1309393 m!1461023))

(declare-fun m!1461025 () Bool)

(assert (=> b!1309391 m!1461025))

(assert (=> b!1309391 m!1461025))

(declare-fun m!1461027 () Bool)

(assert (=> b!1309391 m!1461027))

(declare-fun m!1461029 () Bool)

(assert (=> b!1309391 m!1461029))

(declare-fun m!1461031 () Bool)

(assert (=> b!1309389 m!1461031))

(declare-fun m!1461033 () Bool)

(assert (=> b!1309389 m!1461033))

(declare-fun m!1461035 () Bool)

(assert (=> b!1309389 m!1461035))

(assert (=> b!1309389 m!1461035))

(declare-fun m!1461037 () Bool)

(assert (=> b!1309389 m!1461037))

(declare-fun m!1461039 () Bool)

(assert (=> b!1309379 m!1461039))

(declare-fun m!1461041 () Bool)

(assert (=> b!1309386 m!1461041))

(declare-fun m!1461043 () Bool)

(assert (=> b!1309386 m!1461043))

(declare-fun m!1461045 () Bool)

(assert (=> b!1309365 m!1461045))

(declare-fun m!1461047 () Bool)

(assert (=> b!1309365 m!1461047))

(declare-fun m!1461049 () Bool)

(assert (=> b!1309373 m!1461049))

(assert (=> b!1309373 m!1461049))

(declare-fun m!1461051 () Bool)

(assert (=> b!1309373 m!1461051))

(declare-fun m!1461053 () Bool)

(assert (=> b!1309398 m!1461053))

(declare-fun m!1461055 () Bool)

(assert (=> b!1309388 m!1461055))

(assert (=> b!1309388 m!1461055))

(declare-fun m!1461057 () Bool)

(assert (=> b!1309388 m!1461057))

(declare-fun m!1461059 () Bool)

(assert (=> b!1309372 m!1461059))

(declare-fun m!1461061 () Bool)

(assert (=> b!1309369 m!1461061))

(declare-fun m!1461063 () Bool)

(assert (=> start!115634 m!1461063))

(declare-fun m!1461065 () Bool)

(assert (=> start!115634 m!1461065))

(declare-fun m!1461067 () Bool)

(assert (=> b!1309382 m!1461067))

(declare-fun m!1461069 () Bool)

(assert (=> b!1309382 m!1461069))

(declare-fun m!1461071 () Bool)

(assert (=> b!1309382 m!1461071))

(declare-fun m!1461073 () Bool)

(assert (=> b!1309382 m!1461073))

(declare-fun m!1461075 () Bool)

(assert (=> b!1309382 m!1461075))

(declare-fun m!1461077 () Bool)

(assert (=> b!1309382 m!1461077))

(declare-fun m!1461079 () Bool)

(assert (=> b!1309394 m!1461079))

(declare-fun m!1461081 () Bool)

(assert (=> b!1309394 m!1461081))

(declare-fun m!1461083 () Bool)

(assert (=> b!1309366 m!1461083))

(declare-fun m!1461085 () Bool)

(assert (=> b!1309380 m!1461085))

(assert (=> b!1309380 m!1461085))

(declare-fun m!1461087 () Bool)

(assert (=> b!1309380 m!1461087))

(declare-fun m!1461089 () Bool)

(assert (=> b!1309381 m!1461089))

(assert (=> b!1309381 m!1460991))

(assert (=> b!1309381 m!1460991))

(declare-fun m!1461091 () Bool)

(assert (=> b!1309381 m!1461091))

(declare-fun m!1461093 () Bool)

(assert (=> b!1309381 m!1461093))

(assert (=> b!1309381 m!1460991))

(declare-fun m!1461095 () Bool)

(assert (=> b!1309371 m!1461095))

(declare-fun m!1461097 () Bool)

(assert (=> b!1309371 m!1461097))

(declare-fun m!1461099 () Bool)

(assert (=> b!1309395 m!1461099))

(declare-fun m!1461101 () Bool)

(assert (=> b!1309367 m!1461101))

(declare-fun m!1461103 () Bool)

(assert (=> b!1309374 m!1461103))

(assert (=> b!1309374 m!1461103))

(declare-fun m!1461105 () Bool)

(assert (=> b!1309374 m!1461105))

(declare-fun m!1461107 () Bool)

(assert (=> b!1309377 m!1461107))

(declare-fun m!1461109 () Bool)

(assert (=> b!1309377 m!1461109))

(declare-fun m!1461111 () Bool)

(assert (=> b!1309399 m!1461111))

(declare-fun m!1461113 () Bool)

(assert (=> b!1309390 m!1461113))

(check-sat (not b!1309378) (not b_next!32225) (not b_next!32227) b_and!87473 (not b_next!32223) (not b!1309365) (not b!1309376) (not b!1309387) (not b!1309369) (not start!115634) (not b!1309394) (not b!1309397) (not b!1309373) (not b_next!32221) (not b!1309393) (not b!1309383) (not b!1309366) (not b!1309384) (not b!1309391) b_and!87471 (not b!1309371) (not b!1309370) (not b!1309386) b_and!87467 (not b!1309392) (not b!1309400) (not b!1309380) b_and!87469 (not b!1309374) (not b!1309379) (not b!1309381) (not b!1309377) b_and!87463 (not b!1309382) (not b!1309390) (not b!1309375) (not b!1309367) (not b!1309388) (not b!1309395) (not b!1309398) (not b_next!32219) b_and!87465 (not b!1309389) (not b!1309399) (not b!1309372) (not b_next!32229))
(check-sat (not b_next!32225) (not b_next!32227) b_and!87473 (not b_next!32223) (not b_next!32221) b_and!87471 b_and!87467 b_and!87469 b_and!87463 (not b_next!32229) (not b_next!32219) b_and!87465)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115042 () Bool)

(assert start!115042)

(declare-fun b!1303149 () Bool)

(declare-fun b_free!31131 () Bool)

(declare-fun b_next!31835 () Bool)

(assert (=> b!1303149 (= b_free!31131 (not b_next!31835))))

(declare-fun tp!380361 () Bool)

(declare-fun b_and!86983 () Bool)

(assert (=> b!1303149 (= tp!380361 b_and!86983)))

(declare-fun b_free!31133 () Bool)

(declare-fun b_next!31837 () Bool)

(assert (=> b!1303149 (= b_free!31133 (not b_next!31837))))

(declare-fun tp!380362 () Bool)

(declare-fun b_and!86985 () Bool)

(assert (=> b!1303149 (= tp!380362 b_and!86985)))

(declare-fun b!1303143 () Bool)

(declare-fun b_free!31135 () Bool)

(declare-fun b_next!31839 () Bool)

(assert (=> b!1303143 (= b_free!31135 (not b_next!31839))))

(declare-fun tp!380354 () Bool)

(declare-fun b_and!86987 () Bool)

(assert (=> b!1303143 (= tp!380354 b_and!86987)))

(declare-fun b_free!31137 () Bool)

(declare-fun b_next!31841 () Bool)

(assert (=> b!1303143 (= b_free!31137 (not b_next!31841))))

(declare-fun tp!380355 () Bool)

(declare-fun b_and!86989 () Bool)

(assert (=> b!1303143 (= tp!380355 b_and!86989)))

(declare-fun b!1303163 () Bool)

(declare-fun b_free!31139 () Bool)

(declare-fun b_next!31843 () Bool)

(assert (=> b!1303163 (= b_free!31139 (not b_next!31843))))

(declare-fun tp!380360 () Bool)

(declare-fun b_and!86991 () Bool)

(assert (=> b!1303163 (= tp!380360 b_and!86991)))

(declare-fun b_free!31141 () Bool)

(declare-fun b_next!31845 () Bool)

(assert (=> b!1303163 (= b_free!31141 (not b_next!31845))))

(declare-fun tp!380358 () Bool)

(declare-fun b_and!86993 () Bool)

(assert (=> b!1303163 (= tp!380358 b_and!86993)))

(declare-fun b!1303157 () Bool)

(assert (=> b!1303157 true))

(assert (=> b!1303157 true))

(declare-fun b!1303167 () Bool)

(assert (=> b!1303167 true))

(declare-fun b!1303145 () Bool)

(assert (=> b!1303145 true))

(declare-fun tp!380351 () Bool)

(declare-datatypes ((List!13172 0))(
  ( (Nil!13106) (Cons!13106 (h!18507 (_ BitVec 16)) (t!117733 List!13172)) )
))
(declare-datatypes ((TokenValue!2355 0))(
  ( (FloatLiteralValue!4710 (text!16930 List!13172)) (TokenValueExt!2354 (__x!8539 Int)) (Broken!11775 (value!74159 List!13172)) (Object!2420) (End!2355) (Def!2355) (Underscore!2355) (Match!2355) (Else!2355) (Error!2355) (Case!2355) (If!2355) (Extends!2355) (Abstract!2355) (Class!2355) (Val!2355) (DelimiterValue!4710 (del!2415 List!13172)) (KeywordValue!2361 (value!74160 List!13172)) (CommentValue!4710 (value!74161 List!13172)) (WhitespaceValue!4710 (value!74162 List!13172)) (IndentationValue!2355 (value!74163 List!13172)) (String!16010) (Int32!2355) (Broken!11776 (value!74164 List!13172)) (Boolean!2356) (Unit!19215) (OperatorValue!2358 (op!2415 List!13172)) (IdentifierValue!4710 (value!74165 List!13172)) (IdentifierValue!4711 (value!74166 List!13172)) (WhitespaceValue!4711 (value!74167 List!13172)) (True!4710) (False!4710) (Broken!11777 (value!74168 List!13172)) (Broken!11778 (value!74169 List!13172)) (True!4711) (RightBrace!2355) (RightBracket!2355) (Colon!2355) (Null!2355) (Comma!2355) (LeftBracket!2355) (False!4711) (LeftBrace!2355) (ImaginaryLiteralValue!2355 (text!16931 List!13172)) (StringLiteralValue!7065 (value!74170 List!13172)) (EOFValue!2355 (value!74171 List!13172)) (IdentValue!2355 (value!74172 List!13172)) (DelimiterValue!4711 (value!74173 List!13172)) (DedentValue!2355 (value!74174 List!13172)) (NewLineValue!2355 (value!74175 List!13172)) (IntegerValue!7065 (value!74176 (_ BitVec 32)) (text!16932 List!13172)) (IntegerValue!7066 (value!74177 Int) (text!16933 List!13172)) (Times!2355) (Or!2355) (Equal!2355) (Minus!2355) (Broken!11779 (value!74178 List!13172)) (And!2355) (Div!2355) (LessEqual!2355) (Mod!2355) (Concat!5934) (Not!2355) (Plus!2355) (SpaceValue!2355 (value!74179 List!13172)) (IntegerValue!7067 (value!74180 Int) (text!16934 List!13172)) (StringLiteralValue!7066 (text!16935 List!13172)) (FloatLiteralValue!4711 (text!16936 List!13172)) (BytesLiteralValue!2355 (value!74181 List!13172)) (CommentValue!4711 (value!74182 List!13172)) (StringLiteralValue!7067 (value!74183 List!13172)) (ErrorTokenValue!2355 (msg!2416 List!13172)) )
))
(declare-datatypes ((C!7448 0))(
  ( (C!7449 (val!4284 Int)) )
))
(declare-datatypes ((List!13173 0))(
  ( (Nil!13107) (Cons!13107 (h!18508 C!7448) (t!117734 List!13173)) )
))
(declare-datatypes ((IArray!8605 0))(
  ( (IArray!8606 (innerList!4360 List!13173)) )
))
(declare-datatypes ((Conc!4300 0))(
  ( (Node!4300 (left!11270 Conc!4300) (right!11600 Conc!4300) (csize!8830 Int) (cheight!4511 Int)) (Leaf!6629 (xs!7015 IArray!8605) (csize!8831 Int)) (Empty!4300) )
))
(declare-datatypes ((BalanceConc!8540 0))(
  ( (BalanceConc!8541 (c!214258 Conc!4300)) )
))
(declare-datatypes ((Regex!3579 0))(
  ( (ElementMatch!3579 (c!214259 C!7448)) (Concat!5935 (regOne!7670 Regex!3579) (regTwo!7670 Regex!3579)) (EmptyExpr!3579) (Star!3579 (reg!3908 Regex!3579)) (EmptyLang!3579) (Union!3579 (regOne!7671 Regex!3579) (regTwo!7671 Regex!3579)) )
))
(declare-datatypes ((String!16011 0))(
  ( (String!16012 (value!74184 String)) )
))
(declare-datatypes ((TokenValueInjection!4370 0))(
  ( (TokenValueInjection!4371 (toValue!3480 Int) (toChars!3339 Int)) )
))
(declare-datatypes ((Rule!4330 0))(
  ( (Rule!4331 (regex!2265 Regex!3579) (tag!2527 String!16011) (isSeparator!2265 Bool) (transformation!2265 TokenValueInjection!4370)) )
))
(declare-datatypes ((Token!4192 0))(
  ( (Token!4193 (value!74185 TokenValue!2355) (rule!4004 Rule!4330) (size!10696 Int) (originalCharacters!3127 List!13173)) )
))
(declare-fun t1!34 () Token!4192)

(declare-fun e!835629 () Bool)

(declare-fun b!1303139 () Bool)

(declare-fun e!835630 () Bool)

(declare-fun inv!21 (TokenValue!2355) Bool)

(assert (=> b!1303139 (= e!835630 (and (inv!21 (value!74185 t1!34)) e!835629 tp!380351))))

(declare-fun b!1303140 () Bool)

(declare-fun res!583983 () Bool)

(declare-fun e!835648 () Bool)

(assert (=> b!1303140 (=> res!583983 e!835648)))

(declare-fun lt!428527 () List!13173)

(declare-fun lt!428523 () C!7448)

(declare-fun contains!2214 (List!13173 C!7448) Bool)

(assert (=> b!1303140 (= res!583983 (not (contains!2214 lt!428527 lt!428523)))))

(declare-fun e!835635 () Bool)

(declare-fun e!835640 () Bool)

(declare-fun b!1303141 () Bool)

(declare-fun tp!380356 () Bool)

(declare-datatypes ((List!13174 0))(
  ( (Nil!13108) (Cons!13108 (h!18509 Rule!4330) (t!117735 List!13174)) )
))
(declare-fun rules!2550 () List!13174)

(declare-fun inv!17525 (String!16011) Bool)

(declare-fun inv!17528 (TokenValueInjection!4370) Bool)

(assert (=> b!1303141 (= e!835640 (and tp!380356 (inv!17525 (tag!2527 (h!18509 rules!2550))) (inv!17528 (transformation!2265 (h!18509 rules!2550))) e!835635))))

(declare-fun b!1303142 () Bool)

(declare-fun e!835646 () Bool)

(declare-fun tp!380359 () Bool)

(declare-fun e!835636 () Bool)

(declare-fun t2!34 () Token!4192)

(assert (=> b!1303142 (= e!835636 (and tp!380359 (inv!17525 (tag!2527 (rule!4004 t2!34))) (inv!17528 (transformation!2265 (rule!4004 t2!34))) e!835646))))

(declare-fun e!835634 () Bool)

(assert (=> b!1303143 (= e!835634 (and tp!380354 tp!380355))))

(declare-fun b!1303144 () Bool)

(declare-fun res!583971 () Bool)

(declare-fun e!835637 () Bool)

(assert (=> b!1303144 (=> (not res!583971) (not e!835637))))

(assert (=> b!1303144 (= res!583971 (not (= (isSeparator!2265 (rule!4004 t1!34)) (isSeparator!2265 (rule!4004 t2!34)))))))

(declare-fun b!1303146 () Bool)

(declare-fun res!583973 () Bool)

(declare-fun e!835628 () Bool)

(assert (=> b!1303146 (=> (not res!583973) (not e!835628))))

(declare-fun sepAndNonSepRulesDisjointChars!638 (List!13174 List!13174) Bool)

(assert (=> b!1303146 (= res!583973 (sepAndNonSepRulesDisjointChars!638 rules!2550 rules!2550))))

(declare-fun b!1303147 () Bool)

(declare-fun e!835639 () Bool)

(declare-fun tp!380352 () Bool)

(assert (=> b!1303147 (= e!835639 (and e!835640 tp!380352))))

(declare-fun b!1303148 () Bool)

(declare-fun res!583988 () Bool)

(assert (=> b!1303148 (=> (not res!583988) (not e!835637))))

(declare-datatypes ((LexerInterface!1960 0))(
  ( (LexerInterfaceExt!1957 (__x!8540 Int)) (Lexer!1958) )
))
(declare-fun thiss!19762 () LexerInterface!1960)

(declare-fun rulesProduceIndividualToken!929 (LexerInterface!1960 List!13174 Token!4192) Bool)

(assert (=> b!1303148 (= res!583988 (rulesProduceIndividualToken!929 thiss!19762 rules!2550 t2!34))))

(assert (=> b!1303149 (= e!835646 (and tp!380361 tp!380362))))

(declare-fun b!1303150 () Bool)

(declare-fun e!835631 () Bool)

(assert (=> b!1303150 (= e!835631 e!835648)))

(declare-fun res!583984 () Bool)

(assert (=> b!1303150 (=> res!583984 e!835648)))

(declare-fun lt!428530 () C!7448)

(assert (=> b!1303150 (= res!583984 (not (contains!2214 lt!428527 lt!428530)))))

(declare-fun lt!428528 () BalanceConc!8540)

(declare-fun apply!2931 (BalanceConc!8540 Int) C!7448)

(assert (=> b!1303150 (= lt!428530 (apply!2931 lt!428528 0))))

(declare-fun e!835643 () Bool)

(declare-fun tp!380357 () Bool)

(declare-fun b!1303151 () Bool)

(assert (=> b!1303151 (= e!835643 (and (inv!21 (value!74185 t2!34)) e!835636 tp!380357))))

(declare-fun b!1303152 () Bool)

(declare-fun e!835649 () Bool)

(declare-fun e!835633 () Bool)

(assert (=> b!1303152 (= e!835649 e!835633)))

(declare-fun res!583970 () Bool)

(assert (=> b!1303152 (=> res!583970 e!835633)))

(declare-fun lt!428516 () Regex!3579)

(declare-fun lambda!51687 () Int)

(declare-datatypes ((List!13175 0))(
  ( (Nil!13109) (Cons!13109 (h!18510 Regex!3579) (t!117736 List!13175)) )
))
(declare-fun contains!2215 (List!13175 Regex!3579) Bool)

(declare-fun map!2864 (List!13174 Int) List!13175)

(assert (=> b!1303152 (= res!583970 (not (contains!2215 (map!2864 rules!2550 lambda!51687) lt!428516)))))

(declare-fun lambda!51688 () Int)

(declare-fun getWitness!124 (List!13175 Int) Regex!3579)

(assert (=> b!1303152 (= lt!428516 (getWitness!124 (map!2864 rules!2550 lambda!51687) lambda!51688))))

(declare-fun b!1303153 () Bool)

(declare-fun res!583982 () Bool)

(assert (=> b!1303153 (=> res!583982 e!835648)))

(declare-fun lt!428522 () List!13173)

(assert (=> b!1303153 (= res!583982 (not (contains!2214 lt!428522 lt!428530)))))

(declare-fun b!1303154 () Bool)

(assert (=> b!1303154 (= e!835637 e!835628)))

(declare-fun res!583980 () Bool)

(assert (=> b!1303154 (=> (not res!583980) (not e!835628))))

(declare-fun lt!428524 () BalanceConc!8540)

(declare-fun size!10697 (BalanceConc!8540) Int)

(assert (=> b!1303154 (= res!583980 (> (size!10697 lt!428524) 0))))

(declare-fun charsOf!1237 (Token!4192) BalanceConc!8540)

(assert (=> b!1303154 (= lt!428524 (charsOf!1237 t2!34))))

(declare-fun b!1303155 () Bool)

(declare-fun e!835642 () Bool)

(assert (=> b!1303155 (= e!835628 e!835642)))

(declare-fun res!583969 () Bool)

(assert (=> b!1303155 (=> (not res!583969) (not e!835642))))

(declare-fun lt!428521 () Regex!3579)

(declare-fun prefixMatch!92 (Regex!3579 List!13173) Bool)

(assert (=> b!1303155 (= res!583969 (prefixMatch!92 lt!428521 lt!428527))))

(declare-fun rulesRegex!150 (LexerInterface!1960 List!13174) Regex!3579)

(assert (=> b!1303155 (= lt!428521 (rulesRegex!150 thiss!19762 rules!2550))))

(declare-fun lt!428518 () List!13173)

(declare-fun ++!3336 (List!13173 List!13173) List!13173)

(assert (=> b!1303155 (= lt!428527 (++!3336 lt!428518 (Cons!13107 lt!428523 Nil!13107)))))

(assert (=> b!1303155 (= lt!428523 (apply!2931 lt!428524 0))))

(declare-fun list!4907 (BalanceConc!8540) List!13173)

(assert (=> b!1303155 (= lt!428518 (list!4907 lt!428528))))

(assert (=> b!1303155 (= lt!428528 (charsOf!1237 t1!34))))

(declare-fun tp!380353 () Bool)

(declare-fun b!1303156 () Bool)

(assert (=> b!1303156 (= e!835629 (and tp!380353 (inv!17525 (tag!2527 (rule!4004 t1!34))) (inv!17528 (transformation!2265 (rule!4004 t1!34))) e!835634))))

(declare-fun res!583981 () Bool)

(assert (=> start!115042 (=> (not res!583981) (not e!835637))))

(get-info :version)

(assert (=> start!115042 (= res!583981 ((_ is Lexer!1958) thiss!19762))))

(assert (=> start!115042 e!835637))

(assert (=> start!115042 true))

(assert (=> start!115042 e!835639))

(declare-fun inv!17529 (Token!4192) Bool)

(assert (=> start!115042 (and (inv!17529 t1!34) e!835630)))

(assert (=> start!115042 (and (inv!17529 t2!34) e!835643)))

(declare-fun e!835632 () Bool)

(assert (=> b!1303145 (= e!835633 e!835632)))

(declare-fun res!583979 () Bool)

(assert (=> b!1303145 (=> res!583979 e!835632)))

(declare-fun lambda!51689 () Int)

(declare-fun exists!232 (List!13174 Int) Bool)

(assert (=> b!1303145 (= res!583979 (not (exists!232 rules!2550 lambda!51689)))))

(assert (=> b!1303145 (exists!232 rules!2550 lambda!51689)))

(declare-datatypes ((Unit!19216 0))(
  ( (Unit!19217) )
))
(declare-fun lt!428517 () Unit!19216)

(declare-fun lemmaMapContains!8 (List!13174 Int Regex!3579) Unit!19216)

(assert (=> b!1303145 (= lt!428517 (lemmaMapContains!8 rules!2550 lambda!51687 lt!428516))))

(declare-fun e!835650 () Bool)

(assert (=> b!1303157 (= e!835642 (not e!835650))))

(declare-fun res!583977 () Bool)

(assert (=> b!1303157 (=> res!583977 e!835650)))

(declare-fun lambda!51686 () Int)

(declare-fun Exists!737 (Int) Bool)

(assert (=> b!1303157 (= res!583977 (not (Exists!737 lambda!51686)))))

(assert (=> b!1303157 (Exists!737 lambda!51686)))

(declare-fun lt!428526 () Unit!19216)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!55 (Regex!3579 List!13173) Unit!19216)

(assert (=> b!1303157 (= lt!428526 (lemmaPrefixMatchThenExistsStringThatMatches!55 lt!428521 lt!428527))))

(declare-fun b!1303158 () Bool)

(assert (=> b!1303158 (= e!835632 true)))

(declare-fun lt!428520 () BalanceConc!8540)

(declare-datatypes ((List!13176 0))(
  ( (Nil!13110) (Cons!13110 (h!18511 Token!4192) (t!117737 List!13176)) )
))
(declare-datatypes ((IArray!8607 0))(
  ( (IArray!8608 (innerList!4361 List!13176)) )
))
(declare-datatypes ((Conc!4301 0))(
  ( (Node!4301 (left!11271 Conc!4301) (right!11601 Conc!4301) (csize!8832 Int) (cheight!4512 Int)) (Leaf!6630 (xs!7016 IArray!8607) (csize!8833 Int)) (Empty!4301) )
))
(declare-datatypes ((BalanceConc!8542 0))(
  ( (BalanceConc!8543 (c!214260 Conc!4301)) )
))
(declare-fun print!734 (LexerInterface!1960 BalanceConc!8542) BalanceConc!8540)

(declare-fun singletonSeq!834 (Token!4192) BalanceConc!8542)

(assert (=> b!1303158 (= lt!428520 (print!734 thiss!19762 (singletonSeq!834 t1!34)))))

(declare-fun lt!428529 () Rule!4330)

(declare-fun getWitness!125 (List!13174 Int) Rule!4330)

(assert (=> b!1303158 (= lt!428529 (getWitness!125 rules!2550 lambda!51689))))

(declare-fun b!1303159 () Bool)

(declare-fun res!583978 () Bool)

(assert (=> b!1303159 (=> res!583978 e!835648)))

(declare-fun matchR!1581 (Regex!3579 List!13173) Bool)

(assert (=> b!1303159 (= res!583978 (not (matchR!1581 lt!428521 lt!428522)))))

(declare-fun b!1303160 () Bool)

(declare-fun res!583972 () Bool)

(assert (=> b!1303160 (=> (not res!583972) (not e!835637))))

(declare-fun rulesInvariant!1830 (LexerInterface!1960 List!13174) Bool)

(assert (=> b!1303160 (= res!583972 (rulesInvariant!1830 thiss!19762 rules!2550))))

(declare-fun b!1303161 () Bool)

(assert (=> b!1303161 (= e!835650 e!835631)))

(declare-fun res!583987 () Bool)

(assert (=> b!1303161 (=> res!583987 e!835631)))

(declare-fun getSuffix!435 (List!13173 List!13173) List!13173)

(assert (=> b!1303161 (= res!583987 (not (= lt!428522 (++!3336 lt!428527 (getSuffix!435 lt!428522 lt!428527)))))))

(declare-fun pickWitness!42 (Int) List!13173)

(assert (=> b!1303161 (= lt!428522 (pickWitness!42 lambda!51686))))

(declare-fun b!1303162 () Bool)

(declare-fun res!583975 () Bool)

(assert (=> b!1303162 (=> (not res!583975) (not e!835637))))

(declare-fun isEmpty!7763 (List!13174) Bool)

(assert (=> b!1303162 (= res!583975 (not (isEmpty!7763 rules!2550)))))

(assert (=> b!1303163 (= e!835635 (and tp!380360 tp!380358))))

(declare-fun b!1303164 () Bool)

(declare-fun res!583974 () Bool)

(assert (=> b!1303164 (=> res!583974 e!835648)))

(assert (=> b!1303164 (= res!583974 (not (contains!2214 lt!428522 lt!428523)))))

(declare-fun b!1303165 () Bool)

(declare-fun res!583976 () Bool)

(assert (=> b!1303165 (=> (not res!583976) (not e!835628))))

(declare-fun separableTokensPredicate!243 (LexerInterface!1960 Token!4192 Token!4192 List!13174) Bool)

(assert (=> b!1303165 (= res!583976 (not (separableTokensPredicate!243 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1303166 () Bool)

(declare-fun res!583985 () Bool)

(assert (=> b!1303166 (=> (not res!583985) (not e!835637))))

(assert (=> b!1303166 (= res!583985 (rulesProduceIndividualToken!929 thiss!19762 rules!2550 t1!34))))

(assert (=> b!1303167 (= e!835648 e!835649)))

(declare-fun res!583986 () Bool)

(assert (=> b!1303167 (=> res!583986 e!835649)))

(declare-fun exists!233 (List!13175 Int) Bool)

(assert (=> b!1303167 (= res!583986 (not (exists!233 (map!2864 rules!2550 lambda!51687) lambda!51688)))))

(declare-fun lt!428525 () List!13175)

(assert (=> b!1303167 (exists!233 lt!428525 lambda!51688)))

(declare-fun lt!428519 () Unit!19216)

(declare-fun matchRGenUnionSpec!16 (Regex!3579 List!13175 List!13173) Unit!19216)

(assert (=> b!1303167 (= lt!428519 (matchRGenUnionSpec!16 lt!428521 lt!428525 lt!428522))))

(assert (=> b!1303167 (= lt!428525 (map!2864 rules!2550 lambda!51687))))

(assert (= (and start!115042 res!583981) b!1303162))

(assert (= (and b!1303162 res!583975) b!1303160))

(assert (= (and b!1303160 res!583972) b!1303166))

(assert (= (and b!1303166 res!583985) b!1303148))

(assert (= (and b!1303148 res!583988) b!1303144))

(assert (= (and b!1303144 res!583971) b!1303154))

(assert (= (and b!1303154 res!583980) b!1303146))

(assert (= (and b!1303146 res!583973) b!1303165))

(assert (= (and b!1303165 res!583976) b!1303155))

(assert (= (and b!1303155 res!583969) b!1303157))

(assert (= (and b!1303157 (not res!583977)) b!1303161))

(assert (= (and b!1303161 (not res!583987)) b!1303150))

(assert (= (and b!1303150 (not res!583984)) b!1303153))

(assert (= (and b!1303153 (not res!583982)) b!1303140))

(assert (= (and b!1303140 (not res!583983)) b!1303164))

(assert (= (and b!1303164 (not res!583974)) b!1303159))

(assert (= (and b!1303159 (not res!583978)) b!1303167))

(assert (= (and b!1303167 (not res!583986)) b!1303152))

(assert (= (and b!1303152 (not res!583970)) b!1303145))

(assert (= (and b!1303145 (not res!583979)) b!1303158))

(assert (= b!1303141 b!1303163))

(assert (= b!1303147 b!1303141))

(assert (= (and start!115042 ((_ is Cons!13108) rules!2550)) b!1303147))

(assert (= b!1303156 b!1303143))

(assert (= b!1303139 b!1303156))

(assert (= start!115042 b!1303139))

(assert (= b!1303142 b!1303149))

(assert (= b!1303151 b!1303142))

(assert (= start!115042 b!1303151))

(declare-fun m!1454495 () Bool)

(assert (=> b!1303162 m!1454495))

(declare-fun m!1454497 () Bool)

(assert (=> b!1303152 m!1454497))

(assert (=> b!1303152 m!1454497))

(declare-fun m!1454499 () Bool)

(assert (=> b!1303152 m!1454499))

(assert (=> b!1303152 m!1454497))

(assert (=> b!1303152 m!1454497))

(declare-fun m!1454501 () Bool)

(assert (=> b!1303152 m!1454501))

(declare-fun m!1454503 () Bool)

(assert (=> b!1303140 m!1454503))

(declare-fun m!1454505 () Bool)

(assert (=> b!1303161 m!1454505))

(assert (=> b!1303161 m!1454505))

(declare-fun m!1454507 () Bool)

(assert (=> b!1303161 m!1454507))

(declare-fun m!1454509 () Bool)

(assert (=> b!1303161 m!1454509))

(declare-fun m!1454511 () Bool)

(assert (=> b!1303141 m!1454511))

(declare-fun m!1454513 () Bool)

(assert (=> b!1303141 m!1454513))

(declare-fun m!1454515 () Bool)

(assert (=> b!1303142 m!1454515))

(declare-fun m!1454517 () Bool)

(assert (=> b!1303142 m!1454517))

(declare-fun m!1454519 () Bool)

(assert (=> b!1303150 m!1454519))

(declare-fun m!1454521 () Bool)

(assert (=> b!1303150 m!1454521))

(declare-fun m!1454523 () Bool)

(assert (=> b!1303160 m!1454523))

(declare-fun m!1454525 () Bool)

(assert (=> b!1303148 m!1454525))

(declare-fun m!1454527 () Bool)

(assert (=> b!1303158 m!1454527))

(assert (=> b!1303158 m!1454527))

(declare-fun m!1454529 () Bool)

(assert (=> b!1303158 m!1454529))

(declare-fun m!1454531 () Bool)

(assert (=> b!1303158 m!1454531))

(declare-fun m!1454533 () Bool)

(assert (=> b!1303165 m!1454533))

(declare-fun m!1454535 () Bool)

(assert (=> start!115042 m!1454535))

(declare-fun m!1454537 () Bool)

(assert (=> start!115042 m!1454537))

(declare-fun m!1454539 () Bool)

(assert (=> b!1303154 m!1454539))

(declare-fun m!1454541 () Bool)

(assert (=> b!1303154 m!1454541))

(declare-fun m!1454543 () Bool)

(assert (=> b!1303164 m!1454543))

(declare-fun m!1454545 () Bool)

(assert (=> b!1303155 m!1454545))

(declare-fun m!1454547 () Bool)

(assert (=> b!1303155 m!1454547))

(declare-fun m!1454549 () Bool)

(assert (=> b!1303155 m!1454549))

(declare-fun m!1454551 () Bool)

(assert (=> b!1303155 m!1454551))

(declare-fun m!1454553 () Bool)

(assert (=> b!1303155 m!1454553))

(declare-fun m!1454555 () Bool)

(assert (=> b!1303155 m!1454555))

(declare-fun m!1454557 () Bool)

(assert (=> b!1303153 m!1454557))

(assert (=> b!1303167 m!1454497))

(declare-fun m!1454559 () Bool)

(assert (=> b!1303167 m!1454559))

(assert (=> b!1303167 m!1454497))

(declare-fun m!1454561 () Bool)

(assert (=> b!1303167 m!1454561))

(assert (=> b!1303167 m!1454497))

(declare-fun m!1454563 () Bool)

(assert (=> b!1303167 m!1454563))

(declare-fun m!1454565 () Bool)

(assert (=> b!1303166 m!1454565))

(declare-fun m!1454567 () Bool)

(assert (=> b!1303156 m!1454567))

(declare-fun m!1454569 () Bool)

(assert (=> b!1303156 m!1454569))

(declare-fun m!1454571 () Bool)

(assert (=> b!1303146 m!1454571))

(declare-fun m!1454573 () Bool)

(assert (=> b!1303145 m!1454573))

(assert (=> b!1303145 m!1454573))

(declare-fun m!1454575 () Bool)

(assert (=> b!1303145 m!1454575))

(declare-fun m!1454577 () Bool)

(assert (=> b!1303157 m!1454577))

(assert (=> b!1303157 m!1454577))

(declare-fun m!1454579 () Bool)

(assert (=> b!1303157 m!1454579))

(declare-fun m!1454581 () Bool)

(assert (=> b!1303139 m!1454581))

(declare-fun m!1454583 () Bool)

(assert (=> b!1303159 m!1454583))

(declare-fun m!1454585 () Bool)

(assert (=> b!1303151 m!1454585))

(check-sat (not b_next!31843) (not b!1303157) (not b!1303164) (not b_next!31839) (not b!1303156) (not b!1303141) (not b!1303140) (not b!1303162) (not b_next!31841) b_and!86987 (not b_next!31837) (not b!1303167) (not b!1303155) (not b!1303147) (not b!1303160) (not b!1303146) (not start!115042) (not b_next!31845) (not b!1303139) (not b!1303151) b_and!86993 (not b!1303158) b_and!86991 (not b!1303148) (not b!1303165) (not b!1303145) (not b!1303153) (not b!1303142) (not b!1303154) (not b_next!31835) (not b!1303152) (not b!1303159) (not b!1303150) b_and!86985 b_and!86989 b_and!86983 (not b!1303161) (not b!1303166))
(check-sat (not b_next!31843) (not b_next!31845) b_and!86993 (not b_next!31839) b_and!86991 (not b_next!31841) b_and!86987 (not b_next!31835) (not b_next!31837) b_and!86983 b_and!86985 b_and!86989)

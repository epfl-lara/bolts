; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112858 () Bool)

(assert start!112858)

(declare-fun b!1288163 () Bool)

(declare-fun b_free!30339 () Bool)

(declare-fun b_next!31043 () Bool)

(assert (=> b!1288163 (= b_free!30339 (not b_next!31043))))

(declare-fun tp!375309 () Bool)

(declare-fun b_and!85663 () Bool)

(assert (=> b!1288163 (= tp!375309 b_and!85663)))

(declare-fun b_free!30341 () Bool)

(declare-fun b_next!31045 () Bool)

(assert (=> b!1288163 (= b_free!30341 (not b_next!31045))))

(declare-fun tp!375305 () Bool)

(declare-fun b_and!85665 () Bool)

(assert (=> b!1288163 (= tp!375305 b_and!85665)))

(declare-fun b!1288169 () Bool)

(declare-fun b_free!30343 () Bool)

(declare-fun b_next!31047 () Bool)

(assert (=> b!1288169 (= b_free!30343 (not b_next!31047))))

(declare-fun tp!375313 () Bool)

(declare-fun b_and!85667 () Bool)

(assert (=> b!1288169 (= tp!375313 b_and!85667)))

(declare-fun b_free!30345 () Bool)

(declare-fun b_next!31049 () Bool)

(assert (=> b!1288169 (= b_free!30345 (not b_next!31049))))

(declare-fun tp!375316 () Bool)

(declare-fun b_and!85669 () Bool)

(assert (=> b!1288169 (= tp!375316 b_and!85669)))

(declare-fun b!1288180 () Bool)

(declare-fun b_free!30347 () Bool)

(declare-fun b_next!31051 () Bool)

(assert (=> b!1288180 (= b_free!30347 (not b_next!31051))))

(declare-fun tp!375307 () Bool)

(declare-fun b_and!85671 () Bool)

(assert (=> b!1288180 (= tp!375307 b_and!85671)))

(declare-fun b_free!30349 () Bool)

(declare-fun b_next!31053 () Bool)

(assert (=> b!1288180 (= b_free!30349 (not b_next!31053))))

(declare-fun tp!375311 () Bool)

(declare-fun b_and!85673 () Bool)

(assert (=> b!1288180 (= tp!375311 b_and!85673)))

(declare-fun e!826101 () Bool)

(assert (=> b!1288163 (= e!826101 (and tp!375309 tp!375305))))

(declare-fun b!1288164 () Bool)

(declare-fun e!826087 () Bool)

(declare-fun e!826102 () Bool)

(assert (=> b!1288164 (= e!826087 e!826102)))

(declare-fun res!577444 () Bool)

(assert (=> b!1288164 (=> (not res!577444) (not e!826102))))

(declare-datatypes ((C!7340 0))(
  ( (C!7341 (val!4230 Int)) )
))
(declare-datatypes ((List!12911 0))(
  ( (Nil!12845) (Cons!12845 (h!18246 C!7340) (t!116962 List!12911)) )
))
(declare-datatypes ((IArray!8447 0))(
  ( (IArray!8448 (innerList!4281 List!12911)) )
))
(declare-datatypes ((Conc!4221 0))(
  ( (Node!4221 (left!11056 Conc!4221) (right!11386 Conc!4221) (csize!8672 Int) (cheight!4432 Int)) (Leaf!6523 (xs!6932 IArray!8447) (csize!8673 Int)) (Empty!4221) )
))
(declare-datatypes ((BalanceConc!8382 0))(
  ( (BalanceConc!8383 (c!212049 Conc!4221)) )
))
(declare-fun lt!424360 () BalanceConc!8382)

(declare-fun size!10475 (BalanceConc!8382) Int)

(assert (=> b!1288164 (= res!577444 (> (size!10475 lt!424360) 0))))

(declare-datatypes ((List!12912 0))(
  ( (Nil!12846) (Cons!12846 (h!18247 (_ BitVec 16)) (t!116963 List!12912)) )
))
(declare-datatypes ((TokenValue!2301 0))(
  ( (FloatLiteralValue!4602 (text!16552 List!12912)) (TokenValueExt!2300 (__x!8431 Int)) (Broken!11505 (value!72620 List!12912)) (Object!2366) (End!2301) (Def!2301) (Underscore!2301) (Match!2301) (Else!2301) (Error!2301) (Case!2301) (If!2301) (Extends!2301) (Abstract!2301) (Class!2301) (Val!2301) (DelimiterValue!4602 (del!2361 List!12912)) (KeywordValue!2307 (value!72621 List!12912)) (CommentValue!4602 (value!72622 List!12912)) (WhitespaceValue!4602 (value!72623 List!12912)) (IndentationValue!2301 (value!72624 List!12912)) (String!15740) (Int32!2301) (Broken!11506 (value!72625 List!12912)) (Boolean!2302) (Unit!19021) (OperatorValue!2304 (op!2361 List!12912)) (IdentifierValue!4602 (value!72626 List!12912)) (IdentifierValue!4603 (value!72627 List!12912)) (WhitespaceValue!4603 (value!72628 List!12912)) (True!4602) (False!4602) (Broken!11507 (value!72629 List!12912)) (Broken!11508 (value!72630 List!12912)) (True!4603) (RightBrace!2301) (RightBracket!2301) (Colon!2301) (Null!2301) (Comma!2301) (LeftBracket!2301) (False!4603) (LeftBrace!2301) (ImaginaryLiteralValue!2301 (text!16553 List!12912)) (StringLiteralValue!6903 (value!72631 List!12912)) (EOFValue!2301 (value!72632 List!12912)) (IdentValue!2301 (value!72633 List!12912)) (DelimiterValue!4603 (value!72634 List!12912)) (DedentValue!2301 (value!72635 List!12912)) (NewLineValue!2301 (value!72636 List!12912)) (IntegerValue!6903 (value!72637 (_ BitVec 32)) (text!16554 List!12912)) (IntegerValue!6904 (value!72638 Int) (text!16555 List!12912)) (Times!2301) (Or!2301) (Equal!2301) (Minus!2301) (Broken!11509 (value!72639 List!12912)) (And!2301) (Div!2301) (LessEqual!2301) (Mod!2301) (Concat!5826) (Not!2301) (Plus!2301) (SpaceValue!2301 (value!72640 List!12912)) (IntegerValue!6905 (value!72641 Int) (text!16556 List!12912)) (StringLiteralValue!6904 (text!16557 List!12912)) (FloatLiteralValue!4603 (text!16558 List!12912)) (BytesLiteralValue!2301 (value!72642 List!12912)) (CommentValue!4603 (value!72643 List!12912)) (StringLiteralValue!6905 (value!72644 List!12912)) (ErrorTokenValue!2301 (msg!2362 List!12912)) )
))
(declare-datatypes ((Regex!3525 0))(
  ( (ElementMatch!3525 (c!212050 C!7340)) (Concat!5827 (regOne!7562 Regex!3525) (regTwo!7562 Regex!3525)) (EmptyExpr!3525) (Star!3525 (reg!3854 Regex!3525)) (EmptyLang!3525) (Union!3525 (regOne!7563 Regex!3525) (regTwo!7563 Regex!3525)) )
))
(declare-datatypes ((String!15741 0))(
  ( (String!15742 (value!72645 String)) )
))
(declare-datatypes ((TokenValueInjection!4262 0))(
  ( (TokenValueInjection!4263 (toValue!3402 Int) (toChars!3261 Int)) )
))
(declare-datatypes ((Rule!4222 0))(
  ( (Rule!4223 (regex!2211 Regex!3525) (tag!2473 String!15741) (isSeparator!2211 Bool) (transformation!2211 TokenValueInjection!4262)) )
))
(declare-datatypes ((Token!4084 0))(
  ( (Token!4085 (value!72646 TokenValue!2301) (rule!3950 Rule!4222) (size!10476 Int) (originalCharacters!3073 List!12911)) )
))
(declare-fun t2!34 () Token!4084)

(declare-fun charsOf!1183 (Token!4084) BalanceConc!8382)

(assert (=> b!1288164 (= lt!424360 (charsOf!1183 t2!34))))

(declare-fun b!1288165 () Bool)

(declare-fun res!577441 () Bool)

(assert (=> b!1288165 (=> (not res!577441) (not e!826102))))

(declare-fun t1!34 () Token!4084)

(declare-datatypes ((LexerInterface!1906 0))(
  ( (LexerInterfaceExt!1903 (__x!8432 Int)) (Lexer!1904) )
))
(declare-fun thiss!19762 () LexerInterface!1906)

(declare-datatypes ((List!12913 0))(
  ( (Nil!12847) (Cons!12847 (h!18248 Rule!4222) (t!116964 List!12913)) )
))
(declare-fun rules!2550 () List!12913)

(declare-fun separableTokensPredicate!189 (LexerInterface!1906 Token!4084 Token!4084 List!12913) Bool)

(assert (=> b!1288165 (= res!577441 (not (separableTokensPredicate!189 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1288166 () Bool)

(declare-fun res!577436 () Bool)

(assert (=> b!1288166 (=> (not res!577436) (not e!826102))))

(declare-fun sepAndNonSepRulesDisjointChars!584 (List!12913 List!12913) Bool)

(assert (=> b!1288166 (= res!577436 (sepAndNonSepRulesDisjointChars!584 rules!2550 rules!2550))))

(declare-fun b!1288167 () Bool)

(declare-fun tp!375315 () Bool)

(declare-fun e!826093 () Bool)

(declare-fun inv!17259 (String!15741) Bool)

(declare-fun inv!17262 (TokenValueInjection!4262) Bool)

(assert (=> b!1288167 (= e!826093 (and tp!375315 (inv!17259 (tag!2473 (h!18248 rules!2550))) (inv!17262 (transformation!2211 (h!18248 rules!2550))) e!826101))))

(declare-fun e!826097 () Bool)

(declare-fun tp!375306 () Bool)

(declare-fun b!1288168 () Bool)

(declare-fun e!826100 () Bool)

(declare-fun inv!21 (TokenValue!2301) Bool)

(assert (=> b!1288168 (= e!826100 (and (inv!21 (value!72646 t2!34)) e!826097 tp!375306))))

(declare-fun e!826089 () Bool)

(assert (=> b!1288169 (= e!826089 (and tp!375313 tp!375316))))

(declare-fun b!1288170 () Bool)

(declare-fun res!577442 () Bool)

(assert (=> b!1288170 (=> (not res!577442) (not e!826087))))

(declare-fun rulesInvariant!1776 (LexerInterface!1906 List!12913) Bool)

(assert (=> b!1288170 (= res!577442 (rulesInvariant!1776 thiss!19762 rules!2550))))

(declare-fun b!1288171 () Bool)

(declare-fun res!577440 () Bool)

(assert (=> b!1288171 (=> (not res!577440) (not e!826087))))

(declare-fun rulesProduceIndividualToken!875 (LexerInterface!1906 List!12913 Token!4084) Bool)

(assert (=> b!1288171 (= res!577440 (rulesProduceIndividualToken!875 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1288172 () Bool)

(declare-fun e!826088 () Bool)

(declare-fun tp!375310 () Bool)

(assert (=> b!1288172 (= e!826088 (and e!826093 tp!375310))))

(declare-fun b!1288173 () Bool)

(declare-fun tp!375314 () Bool)

(declare-fun e!826091 () Bool)

(declare-fun e!826094 () Bool)

(assert (=> b!1288173 (= e!826091 (and (inv!21 (value!72646 t1!34)) e!826094 tp!375314))))

(declare-fun b!1288174 () Bool)

(declare-fun tp!375312 () Bool)

(declare-fun e!826099 () Bool)

(assert (=> b!1288174 (= e!826094 (and tp!375312 (inv!17259 (tag!2473 (rule!3950 t1!34))) (inv!17262 (transformation!2211 (rule!3950 t1!34))) e!826099))))

(declare-fun b!1288175 () Bool)

(assert (=> b!1288175 (= e!826102 false)))

(declare-fun tp!375308 () Bool)

(declare-fun b!1288176 () Bool)

(assert (=> b!1288176 (= e!826097 (and tp!375308 (inv!17259 (tag!2473 (rule!3950 t2!34))) (inv!17262 (transformation!2211 (rule!3950 t2!34))) e!826089))))

(declare-fun b!1288177 () Bool)

(declare-fun res!577435 () Bool)

(assert (=> b!1288177 (=> (not res!577435) (not e!826087))))

(assert (=> b!1288177 (= res!577435 (not (= (isSeparator!2211 (rule!3950 t1!34)) (isSeparator!2211 (rule!3950 t2!34)))))))

(declare-fun b!1288178 () Bool)

(declare-fun res!577443 () Bool)

(assert (=> b!1288178 (=> (not res!577443) (not e!826087))))

(declare-fun isEmpty!7624 (List!12913) Bool)

(assert (=> b!1288178 (= res!577443 (not (isEmpty!7624 rules!2550)))))

(declare-fun res!577437 () Bool)

(assert (=> start!112858 (=> (not res!577437) (not e!826087))))

(get-info :version)

(assert (=> start!112858 (= res!577437 ((_ is Lexer!1904) thiss!19762))))

(assert (=> start!112858 e!826087))

(assert (=> start!112858 true))

(assert (=> start!112858 e!826088))

(declare-fun inv!17263 (Token!4084) Bool)

(assert (=> start!112858 (and (inv!17263 t1!34) e!826091)))

(assert (=> start!112858 (and (inv!17263 t2!34) e!826100)))

(declare-fun b!1288179 () Bool)

(declare-fun res!577438 () Bool)

(assert (=> b!1288179 (=> (not res!577438) (not e!826102))))

(declare-fun prefixMatch!38 (Regex!3525 List!12911) Bool)

(declare-fun rulesRegex!96 (LexerInterface!1906 List!12913) Regex!3525)

(declare-fun ++!3247 (List!12911 List!12911) List!12911)

(declare-fun list!4783 (BalanceConc!8382) List!12911)

(declare-fun apply!2773 (BalanceConc!8382 Int) C!7340)

(assert (=> b!1288179 (= res!577438 (prefixMatch!38 (rulesRegex!96 thiss!19762 rules!2550) (++!3247 (list!4783 (charsOf!1183 t1!34)) (Cons!12845 (apply!2773 lt!424360 0) Nil!12845))))))

(assert (=> b!1288180 (= e!826099 (and tp!375307 tp!375311))))

(declare-fun b!1288181 () Bool)

(declare-fun res!577439 () Bool)

(assert (=> b!1288181 (=> (not res!577439) (not e!826087))))

(assert (=> b!1288181 (= res!577439 (rulesProduceIndividualToken!875 thiss!19762 rules!2550 t1!34))))

(assert (= (and start!112858 res!577437) b!1288178))

(assert (= (and b!1288178 res!577443) b!1288170))

(assert (= (and b!1288170 res!577442) b!1288181))

(assert (= (and b!1288181 res!577439) b!1288171))

(assert (= (and b!1288171 res!577440) b!1288177))

(assert (= (and b!1288177 res!577435) b!1288164))

(assert (= (and b!1288164 res!577444) b!1288166))

(assert (= (and b!1288166 res!577436) b!1288165))

(assert (= (and b!1288165 res!577441) b!1288179))

(assert (= (and b!1288179 res!577438) b!1288175))

(assert (= b!1288167 b!1288163))

(assert (= b!1288172 b!1288167))

(assert (= (and start!112858 ((_ is Cons!12847) rules!2550)) b!1288172))

(assert (= b!1288174 b!1288180))

(assert (= b!1288173 b!1288174))

(assert (= start!112858 b!1288173))

(assert (= b!1288176 b!1288169))

(assert (= b!1288168 b!1288176))

(assert (= start!112858 b!1288168))

(declare-fun m!1438699 () Bool)

(assert (=> b!1288179 m!1438699))

(assert (=> b!1288179 m!1438699))

(declare-fun m!1438701 () Bool)

(assert (=> b!1288179 m!1438701))

(assert (=> b!1288179 m!1438701))

(declare-fun m!1438703 () Bool)

(assert (=> b!1288179 m!1438703))

(declare-fun m!1438705 () Bool)

(assert (=> b!1288179 m!1438705))

(declare-fun m!1438707 () Bool)

(assert (=> b!1288179 m!1438707))

(assert (=> b!1288179 m!1438707))

(assert (=> b!1288179 m!1438703))

(declare-fun m!1438709 () Bool)

(assert (=> b!1288179 m!1438709))

(declare-fun m!1438711 () Bool)

(assert (=> b!1288170 m!1438711))

(declare-fun m!1438713 () Bool)

(assert (=> b!1288166 m!1438713))

(declare-fun m!1438715 () Bool)

(assert (=> b!1288167 m!1438715))

(declare-fun m!1438717 () Bool)

(assert (=> b!1288167 m!1438717))

(declare-fun m!1438719 () Bool)

(assert (=> b!1288164 m!1438719))

(declare-fun m!1438721 () Bool)

(assert (=> b!1288164 m!1438721))

(declare-fun m!1438723 () Bool)

(assert (=> b!1288171 m!1438723))

(declare-fun m!1438725 () Bool)

(assert (=> b!1288165 m!1438725))

(declare-fun m!1438727 () Bool)

(assert (=> b!1288181 m!1438727))

(declare-fun m!1438729 () Bool)

(assert (=> b!1288176 m!1438729))

(declare-fun m!1438731 () Bool)

(assert (=> b!1288176 m!1438731))

(declare-fun m!1438733 () Bool)

(assert (=> b!1288173 m!1438733))

(declare-fun m!1438735 () Bool)

(assert (=> start!112858 m!1438735))

(declare-fun m!1438737 () Bool)

(assert (=> start!112858 m!1438737))

(declare-fun m!1438739 () Bool)

(assert (=> b!1288178 m!1438739))

(declare-fun m!1438741 () Bool)

(assert (=> b!1288174 m!1438741))

(declare-fun m!1438743 () Bool)

(assert (=> b!1288174 m!1438743))

(declare-fun m!1438745 () Bool)

(assert (=> b!1288168 m!1438745))

(check-sat b_and!85669 b_and!85671 b_and!85665 (not b!1288173) (not b!1288179) (not b!1288164) (not b_next!31049) (not b_next!31053) (not start!112858) (not b!1288171) (not b!1288165) (not b!1288168) (not b_next!31051) (not b!1288176) (not b_next!31043) (not b!1288167) b_and!85667 (not b!1288166) (not b_next!31045) (not b!1288172) b_and!85663 b_and!85673 (not b!1288174) (not b!1288181) (not b!1288178) (not b_next!31047) (not b!1288170))
(check-sat b_and!85669 b_and!85671 b_and!85665 (not b_next!31051) (not b_next!31043) (not b_next!31049) b_and!85667 (not b_next!31045) (not b_next!31053) (not b_next!31047) b_and!85663 b_and!85673)

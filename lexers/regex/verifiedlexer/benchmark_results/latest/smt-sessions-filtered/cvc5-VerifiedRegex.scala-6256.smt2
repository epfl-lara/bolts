; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!307576 () Bool)

(assert start!307576)

(declare-fun b!3303632 () Bool)

(declare-fun b_free!86765 () Bool)

(declare-fun b_next!87469 () Bool)

(assert (=> b!3303632 (= b_free!86765 (not b_next!87469))))

(declare-fun tp!1034266 () Bool)

(declare-fun b_and!226251 () Bool)

(assert (=> b!3303632 (= tp!1034266 b_and!226251)))

(declare-fun b_free!86767 () Bool)

(declare-fun b_next!87471 () Bool)

(assert (=> b!3303632 (= b_free!86767 (not b_next!87471))))

(declare-fun tp!1034265 () Bool)

(declare-fun b_and!226253 () Bool)

(assert (=> b!3303632 (= tp!1034265 b_and!226253)))

(declare-fun b!3303639 () Bool)

(declare-fun b_free!86769 () Bool)

(declare-fun b_next!87473 () Bool)

(assert (=> b!3303639 (= b_free!86769 (not b_next!87473))))

(declare-fun tp!1034261 () Bool)

(declare-fun b_and!226255 () Bool)

(assert (=> b!3303639 (= tp!1034261 b_and!226255)))

(declare-fun b_free!86771 () Bool)

(declare-fun b_next!87475 () Bool)

(assert (=> b!3303639 (= b_free!86771 (not b_next!87475))))

(declare-fun tp!1034270 () Bool)

(declare-fun b_and!226257 () Bool)

(assert (=> b!3303639 (= tp!1034270 b_and!226257)))

(declare-fun b!3303638 () Bool)

(declare-fun b_free!86773 () Bool)

(declare-fun b_next!87477 () Bool)

(assert (=> b!3303638 (= b_free!86773 (not b_next!87477))))

(declare-fun tp!1034268 () Bool)

(declare-fun b_and!226259 () Bool)

(assert (=> b!3303638 (= tp!1034268 b_and!226259)))

(declare-fun b_free!86775 () Bool)

(declare-fun b_next!87479 () Bool)

(assert (=> b!3303638 (= b_free!86775 (not b_next!87479))))

(declare-fun tp!1034260 () Bool)

(declare-fun b_and!226261 () Bool)

(assert (=> b!3303638 (= tp!1034260 b_and!226261)))

(declare-fun b!3303629 () Bool)

(declare-fun res!1339913 () Bool)

(declare-fun e!2054486 () Bool)

(assert (=> b!3303629 (=> (not res!1339913) (not e!2054486))))

(declare-datatypes ((LexerInterface!4880 0))(
  ( (LexerInterfaceExt!4877 (__x!23259 Int)) (Lexer!4878) )
))
(declare-fun thiss!18206 () LexerInterface!4880)

(declare-datatypes ((C!20286 0))(
  ( (C!20287 (val!12191 Int)) )
))
(declare-datatypes ((Regex!10050 0))(
  ( (ElementMatch!10050 (c!560508 C!20286)) (Concat!15571 (regOne!20612 Regex!10050) (regTwo!20612 Regex!10050)) (EmptyExpr!10050) (Star!10050 (reg!10379 Regex!10050)) (EmptyLang!10050) (Union!10050 (regOne!20613 Regex!10050) (regTwo!20613 Regex!10050)) )
))
(declare-datatypes ((List!36602 0))(
  ( (Nil!36478) (Cons!36478 (h!41898 (_ BitVec 16)) (t!253271 List!36602)) )
))
(declare-datatypes ((TokenValue!5521 0))(
  ( (FloatLiteralValue!11042 (text!39092 List!36602)) (TokenValueExt!5520 (__x!23260 Int)) (Broken!27605 (value!171229 List!36602)) (Object!5644) (End!5521) (Def!5521) (Underscore!5521) (Match!5521) (Else!5521) (Error!5521) (Case!5521) (If!5521) (Extends!5521) (Abstract!5521) (Class!5521) (Val!5521) (DelimiterValue!11042 (del!5581 List!36602)) (KeywordValue!5527 (value!171230 List!36602)) (CommentValue!11042 (value!171231 List!36602)) (WhitespaceValue!11042 (value!171232 List!36602)) (IndentationValue!5521 (value!171233 List!36602)) (String!40940) (Int32!5521) (Broken!27606 (value!171234 List!36602)) (Boolean!5522) (Unit!51422) (OperatorValue!5524 (op!5581 List!36602)) (IdentifierValue!11042 (value!171235 List!36602)) (IdentifierValue!11043 (value!171236 List!36602)) (WhitespaceValue!11043 (value!171237 List!36602)) (True!11042) (False!11042) (Broken!27607 (value!171238 List!36602)) (Broken!27608 (value!171239 List!36602)) (True!11043) (RightBrace!5521) (RightBracket!5521) (Colon!5521) (Null!5521) (Comma!5521) (LeftBracket!5521) (False!11043) (LeftBrace!5521) (ImaginaryLiteralValue!5521 (text!39093 List!36602)) (StringLiteralValue!16563 (value!171240 List!36602)) (EOFValue!5521 (value!171241 List!36602)) (IdentValue!5521 (value!171242 List!36602)) (DelimiterValue!11043 (value!171243 List!36602)) (DedentValue!5521 (value!171244 List!36602)) (NewLineValue!5521 (value!171245 List!36602)) (IntegerValue!16563 (value!171246 (_ BitVec 32)) (text!39094 List!36602)) (IntegerValue!16564 (value!171247 Int) (text!39095 List!36602)) (Times!5521) (Or!5521) (Equal!5521) (Minus!5521) (Broken!27609 (value!171248 List!36602)) (And!5521) (Div!5521) (LessEqual!5521) (Mod!5521) (Concat!15572) (Not!5521) (Plus!5521) (SpaceValue!5521 (value!171249 List!36602)) (IntegerValue!16565 (value!171250 Int) (text!39096 List!36602)) (StringLiteralValue!16564 (text!39097 List!36602)) (FloatLiteralValue!11043 (text!39098 List!36602)) (BytesLiteralValue!5521 (value!171251 List!36602)) (CommentValue!11043 (value!171252 List!36602)) (StringLiteralValue!16565 (value!171253 List!36602)) (ErrorTokenValue!5521 (msg!5582 List!36602)) )
))
(declare-datatypes ((List!36603 0))(
  ( (Nil!36479) (Cons!36479 (h!41899 C!20286) (t!253272 List!36603)) )
))
(declare-datatypes ((IArray!21919 0))(
  ( (IArray!21920 (innerList!11017 List!36603)) )
))
(declare-datatypes ((Conc!10957 0))(
  ( (Node!10957 (left!28413 Conc!10957) (right!28743 Conc!10957) (csize!22144 Int) (cheight!11168 Int)) (Leaf!17214 (xs!14095 IArray!21919) (csize!22145 Int)) (Empty!10957) )
))
(declare-datatypes ((BalanceConc!21528 0))(
  ( (BalanceConc!21529 (c!560509 Conc!10957)) )
))
(declare-datatypes ((String!40941 0))(
  ( (String!40942 (value!171254 String)) )
))
(declare-datatypes ((TokenValueInjection!10470 0))(
  ( (TokenValueInjection!10471 (toValue!7423 Int) (toChars!7282 Int)) )
))
(declare-datatypes ((Rule!10382 0))(
  ( (Rule!10383 (regex!5291 Regex!10050) (tag!5837 String!40941) (isSeparator!5291 Bool) (transformation!5291 TokenValueInjection!10470)) )
))
(declare-datatypes ((List!36604 0))(
  ( (Nil!36480) (Cons!36480 (h!41900 Rule!10382) (t!253273 List!36604)) )
))
(declare-fun rules!2135 () List!36604)

(declare-fun rulesInvariant!4277 (LexerInterface!4880 List!36604) Bool)

(assert (=> b!3303629 (= res!1339913 (rulesInvariant!4277 thiss!18206 rules!2135))))

(declare-datatypes ((Token!9948 0))(
  ( (Token!9949 (value!171255 TokenValue!5521) (rule!7795 Rule!10382) (size!27550 Int) (originalCharacters!6005 List!36603)) )
))
(declare-datatypes ((List!36605 0))(
  ( (Nil!36481) (Cons!36481 (h!41901 Token!9948) (t!253274 List!36605)) )
))
(declare-fun tokens!494 () List!36605)

(declare-fun e!2054480 () Bool)

(declare-fun b!3303630 () Bool)

(declare-fun e!2054482 () Bool)

(declare-fun tp!1034264 () Bool)

(declare-fun inv!21 (TokenValue!5521) Bool)

(assert (=> b!3303630 (= e!2054482 (and (inv!21 (value!171255 (h!41901 tokens!494))) e!2054480 tp!1034264))))

(declare-fun b!3303631 () Bool)

(declare-fun res!1339912 () Bool)

(assert (=> b!3303631 (=> (not res!1339912) (not e!2054486))))

(assert (=> b!3303631 (= res!1339912 (and (not (is-Nil!36481 tokens!494)) (not (is-Nil!36481 (t!253274 tokens!494)))))))

(declare-fun e!2054483 () Bool)

(assert (=> b!3303632 (= e!2054483 (and tp!1034266 tp!1034265))))

(declare-fun b!3303633 () Bool)

(declare-fun res!1339909 () Bool)

(assert (=> b!3303633 (=> (not res!1339909) (not e!2054486))))

(declare-fun separatorToken!241 () Token!9948)

(assert (=> b!3303633 (= res!1339909 (isSeparator!5291 (rule!7795 separatorToken!241)))))

(declare-fun res!1339910 () Bool)

(assert (=> start!307576 (=> (not res!1339910) (not e!2054486))))

(assert (=> start!307576 (= res!1339910 (is-Lexer!4878 thiss!18206))))

(assert (=> start!307576 e!2054486))

(assert (=> start!307576 true))

(declare-fun e!2054493 () Bool)

(assert (=> start!307576 e!2054493))

(declare-fun e!2054487 () Bool)

(assert (=> start!307576 e!2054487))

(declare-fun e!2054479 () Bool)

(declare-fun inv!49438 (Token!9948) Bool)

(assert (=> start!307576 (and (inv!49438 separatorToken!241) e!2054479)))

(declare-fun b!3303634 () Bool)

(declare-fun res!1339915 () Bool)

(assert (=> b!3303634 (=> (not res!1339915) (not e!2054486))))

(declare-fun isEmpty!20620 (List!36604) Bool)

(assert (=> b!3303634 (= res!1339915 (not (isEmpty!20620 rules!2135)))))

(declare-fun b!3303635 () Bool)

(declare-fun e!2054481 () Bool)

(assert (=> b!3303635 (= e!2054486 (not e!2054481))))

(declare-fun res!1339916 () Bool)

(assert (=> b!3303635 (=> res!1339916 e!2054481)))

(declare-fun lt!1119934 () List!36603)

(declare-fun lt!1119933 () List!36603)

(assert (=> b!3303635 (= res!1339916 (not (= lt!1119934 lt!1119933)))))

(declare-fun printList!1430 (LexerInterface!4880 List!36605) List!36603)

(assert (=> b!3303635 (= lt!1119933 (printList!1430 thiss!18206 (Cons!36481 (h!41901 tokens!494) Nil!36481)))))

(declare-fun lt!1119932 () BalanceConc!21528)

(declare-fun list!13072 (BalanceConc!21528) List!36603)

(assert (=> b!3303635 (= lt!1119934 (list!13072 lt!1119932))))

(declare-datatypes ((IArray!21921 0))(
  ( (IArray!21922 (innerList!11018 List!36605)) )
))
(declare-datatypes ((Conc!10958 0))(
  ( (Node!10958 (left!28414 Conc!10958) (right!28744 Conc!10958) (csize!22146 Int) (cheight!11169 Int)) (Leaf!17215 (xs!14096 IArray!21921) (csize!22147 Int)) (Empty!10958) )
))
(declare-datatypes ((BalanceConc!21530 0))(
  ( (BalanceConc!21531 (c!560510 Conc!10958)) )
))
(declare-fun lt!1119931 () BalanceConc!21530)

(declare-fun printTailRec!1377 (LexerInterface!4880 BalanceConc!21530 Int BalanceConc!21528) BalanceConc!21528)

(assert (=> b!3303635 (= lt!1119932 (printTailRec!1377 thiss!18206 lt!1119931 0 (BalanceConc!21529 Empty!10957)))))

(declare-fun print!1945 (LexerInterface!4880 BalanceConc!21530) BalanceConc!21528)

(assert (=> b!3303635 (= lt!1119932 (print!1945 thiss!18206 lt!1119931))))

(declare-fun singletonSeq!2387 (Token!9948) BalanceConc!21530)

(assert (=> b!3303635 (= lt!1119931 (singletonSeq!2387 (h!41901 tokens!494)))))

(declare-fun b!3303636 () Bool)

(declare-fun charsOf!3307 (Token!9948) BalanceConc!21528)

(assert (=> b!3303636 (= e!2054481 (= lt!1119933 (list!13072 (charsOf!3307 (h!41901 tokens!494)))))))

(declare-fun tp!1034262 () Bool)

(declare-fun b!3303637 () Bool)

(assert (=> b!3303637 (= e!2054487 (and (inv!49438 (h!41901 tokens!494)) e!2054482 tp!1034262))))

(declare-fun e!2054488 () Bool)

(assert (=> b!3303638 (= e!2054488 (and tp!1034268 tp!1034260))))

(declare-fun e!2054491 () Bool)

(assert (=> b!3303639 (= e!2054491 (and tp!1034261 tp!1034270))))

(declare-fun b!3303640 () Bool)

(declare-fun res!1339917 () Bool)

(assert (=> b!3303640 (=> (not res!1339917) (not e!2054486))))

(declare-fun lambda!118936 () Int)

(declare-fun forall!7553 (List!36605 Int) Bool)

(assert (=> b!3303640 (= res!1339917 (forall!7553 tokens!494 lambda!118936))))

(declare-fun b!3303641 () Bool)

(declare-fun e!2054489 () Bool)

(declare-fun tp!1034267 () Bool)

(assert (=> b!3303641 (= e!2054493 (and e!2054489 tp!1034267))))

(declare-fun tp!1034269 () Bool)

(declare-fun e!2054484 () Bool)

(declare-fun b!3303642 () Bool)

(assert (=> b!3303642 (= e!2054479 (and (inv!21 (value!171255 separatorToken!241)) e!2054484 tp!1034269))))

(declare-fun b!3303643 () Bool)

(declare-fun tp!1034271 () Bool)

(declare-fun inv!49435 (String!40941) Bool)

(declare-fun inv!49439 (TokenValueInjection!10470) Bool)

(assert (=> b!3303643 (= e!2054484 (and tp!1034271 (inv!49435 (tag!5837 (rule!7795 separatorToken!241))) (inv!49439 (transformation!5291 (rule!7795 separatorToken!241))) e!2054488))))

(declare-fun tp!1034263 () Bool)

(declare-fun b!3303644 () Bool)

(assert (=> b!3303644 (= e!2054489 (and tp!1034263 (inv!49435 (tag!5837 (h!41900 rules!2135))) (inv!49439 (transformation!5291 (h!41900 rules!2135))) e!2054483))))

(declare-fun b!3303645 () Bool)

(declare-fun tp!1034259 () Bool)

(assert (=> b!3303645 (= e!2054480 (and tp!1034259 (inv!49435 (tag!5837 (rule!7795 (h!41901 tokens!494)))) (inv!49439 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) e!2054491))))

(declare-fun b!3303646 () Bool)

(declare-fun res!1339911 () Bool)

(assert (=> b!3303646 (=> (not res!1339911) (not e!2054486))))

(declare-fun rulesProduceIndividualToken!2372 (LexerInterface!4880 List!36604 Token!9948) Bool)

(assert (=> b!3303646 (= res!1339911 (rulesProduceIndividualToken!2372 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3303647 () Bool)

(declare-fun res!1339918 () Bool)

(assert (=> b!3303647 (=> (not res!1339918) (not e!2054486))))

(declare-fun rulesProduceEachTokenIndividually!1331 (LexerInterface!4880 List!36604 BalanceConc!21530) Bool)

(declare-fun seqFromList!3643 (List!36605) BalanceConc!21530)

(assert (=> b!3303647 (= res!1339918 (rulesProduceEachTokenIndividually!1331 thiss!18206 rules!2135 (seqFromList!3643 tokens!494)))))

(declare-fun b!3303648 () Bool)

(declare-fun res!1339914 () Bool)

(assert (=> b!3303648 (=> (not res!1339914) (not e!2054486))))

(declare-fun sepAndNonSepRulesDisjointChars!1485 (List!36604 List!36604) Bool)

(assert (=> b!3303648 (= res!1339914 (sepAndNonSepRulesDisjointChars!1485 rules!2135 rules!2135))))

(assert (= (and start!307576 res!1339910) b!3303634))

(assert (= (and b!3303634 res!1339915) b!3303629))

(assert (= (and b!3303629 res!1339913) b!3303647))

(assert (= (and b!3303647 res!1339918) b!3303646))

(assert (= (and b!3303646 res!1339911) b!3303633))

(assert (= (and b!3303633 res!1339909) b!3303640))

(assert (= (and b!3303640 res!1339917) b!3303648))

(assert (= (and b!3303648 res!1339914) b!3303631))

(assert (= (and b!3303631 res!1339912) b!3303635))

(assert (= (and b!3303635 (not res!1339916)) b!3303636))

(assert (= b!3303644 b!3303632))

(assert (= b!3303641 b!3303644))

(assert (= (and start!307576 (is-Cons!36480 rules!2135)) b!3303641))

(assert (= b!3303645 b!3303639))

(assert (= b!3303630 b!3303645))

(assert (= b!3303637 b!3303630))

(assert (= (and start!307576 (is-Cons!36481 tokens!494)) b!3303637))

(assert (= b!3303643 b!3303638))

(assert (= b!3303642 b!3303643))

(assert (= start!307576 b!3303642))

(declare-fun m!3629475 () Bool)

(assert (=> b!3303629 m!3629475))

(declare-fun m!3629477 () Bool)

(assert (=> b!3303637 m!3629477))

(declare-fun m!3629479 () Bool)

(assert (=> b!3303648 m!3629479))

(declare-fun m!3629481 () Bool)

(assert (=> b!3303646 m!3629481))

(declare-fun m!3629483 () Bool)

(assert (=> start!307576 m!3629483))

(declare-fun m!3629485 () Bool)

(assert (=> b!3303645 m!3629485))

(declare-fun m!3629487 () Bool)

(assert (=> b!3303645 m!3629487))

(declare-fun m!3629489 () Bool)

(assert (=> b!3303630 m!3629489))

(declare-fun m!3629491 () Bool)

(assert (=> b!3303636 m!3629491))

(assert (=> b!3303636 m!3629491))

(declare-fun m!3629493 () Bool)

(assert (=> b!3303636 m!3629493))

(declare-fun m!3629495 () Bool)

(assert (=> b!3303644 m!3629495))

(declare-fun m!3629497 () Bool)

(assert (=> b!3303644 m!3629497))

(declare-fun m!3629499 () Bool)

(assert (=> b!3303643 m!3629499))

(declare-fun m!3629501 () Bool)

(assert (=> b!3303643 m!3629501))

(declare-fun m!3629503 () Bool)

(assert (=> b!3303647 m!3629503))

(assert (=> b!3303647 m!3629503))

(declare-fun m!3629505 () Bool)

(assert (=> b!3303647 m!3629505))

(declare-fun m!3629507 () Bool)

(assert (=> b!3303640 m!3629507))

(declare-fun m!3629509 () Bool)

(assert (=> b!3303635 m!3629509))

(declare-fun m!3629511 () Bool)

(assert (=> b!3303635 m!3629511))

(declare-fun m!3629513 () Bool)

(assert (=> b!3303635 m!3629513))

(declare-fun m!3629515 () Bool)

(assert (=> b!3303635 m!3629515))

(declare-fun m!3629517 () Bool)

(assert (=> b!3303635 m!3629517))

(declare-fun m!3629519 () Bool)

(assert (=> b!3303634 m!3629519))

(declare-fun m!3629521 () Bool)

(assert (=> b!3303642 m!3629521))

(push 1)

(assert (not b_next!87469))

(assert b_and!226259)

(assert (not b_next!87479))

(assert (not b!3303634))

(assert (not b!3303637))

(assert (not b!3303644))

(assert (not b_next!87477))

(assert (not start!307576))

(assert (not b!3303635))

(assert b_and!226261)

(assert (not b!3303629))

(assert (not b!3303647))

(assert (not b!3303640))

(assert (not b!3303648))

(assert b_and!226255)

(assert (not b!3303641))

(assert (not b!3303642))

(assert (not b!3303630))

(assert (not b!3303643))

(assert b_and!226253)

(assert (not b_next!87475))

(assert (not b!3303645))

(assert b_and!226251)

(assert (not b_next!87471))

(assert (not b!3303636))

(assert (not b_next!87473))

(assert (not b!3303646))

(assert b_and!226257)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!87469))

(assert b_and!226259)

(assert b_and!226255)

(assert b_and!226253)

(assert (not b_next!87475))

(assert (not b_next!87479))

(assert (not b_next!87473))

(assert b_and!226257)

(assert (not b_next!87477))

(assert b_and!226261)

(assert b_and!226251)

(assert (not b_next!87471))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!925091 () Bool)

(assert (=> d!925091 (= (isEmpty!20620 rules!2135) (is-Nil!36480 rules!2135))))

(assert (=> b!3303634 d!925091))

(declare-fun d!925093 () Bool)

(assert (=> d!925093 (= (inv!49435 (tag!5837 (h!41900 rules!2135))) (= (mod (str.len (value!171254 (tag!5837 (h!41900 rules!2135)))) 2) 0))))

(assert (=> b!3303644 d!925093))

(declare-fun d!925095 () Bool)

(declare-fun res!1339956 () Bool)

(declare-fun e!2054547 () Bool)

(assert (=> d!925095 (=> (not res!1339956) (not e!2054547))))

(declare-fun semiInverseModEq!2188 (Int Int) Bool)

(assert (=> d!925095 (= res!1339956 (semiInverseModEq!2188 (toChars!7282 (transformation!5291 (h!41900 rules!2135))) (toValue!7423 (transformation!5291 (h!41900 rules!2135)))))))

(assert (=> d!925095 (= (inv!49439 (transformation!5291 (h!41900 rules!2135))) e!2054547)))

(declare-fun b!3303711 () Bool)

(declare-fun equivClasses!2087 (Int Int) Bool)

(assert (=> b!3303711 (= e!2054547 (equivClasses!2087 (toChars!7282 (transformation!5291 (h!41900 rules!2135))) (toValue!7423 (transformation!5291 (h!41900 rules!2135)))))))

(assert (= (and d!925095 res!1339956) b!3303711))

(declare-fun m!3629571 () Bool)

(assert (=> d!925095 m!3629571))

(declare-fun m!3629573 () Bool)

(assert (=> b!3303711 m!3629573))

(assert (=> b!3303644 d!925095))

(declare-fun d!925097 () Bool)

(declare-fun lt!1119951 () Bool)

(declare-fun e!2054577 () Bool)

(assert (=> d!925097 (= lt!1119951 e!2054577)))

(declare-fun res!1339989 () Bool)

(assert (=> d!925097 (=> (not res!1339989) (not e!2054577))))

(declare-fun list!13074 (BalanceConc!21530) List!36605)

(declare-datatypes ((tuple2!35978 0))(
  ( (tuple2!35979 (_1!21123 BalanceConc!21530) (_2!21123 BalanceConc!21528)) )
))
(declare-fun lex!2208 (LexerInterface!4880 List!36604 BalanceConc!21528) tuple2!35978)

(assert (=> d!925097 (= res!1339989 (= (list!13074 (_1!21123 (lex!2208 thiss!18206 rules!2135 (print!1945 thiss!18206 (singletonSeq!2387 separatorToken!241))))) (list!13074 (singletonSeq!2387 separatorToken!241))))))

(declare-fun e!2054578 () Bool)

(assert (=> d!925097 (= lt!1119951 e!2054578)))

(declare-fun res!1339987 () Bool)

(assert (=> d!925097 (=> (not res!1339987) (not e!2054578))))

(declare-fun lt!1119952 () tuple2!35978)

(declare-fun size!27552 (BalanceConc!21530) Int)

(assert (=> d!925097 (= res!1339987 (= (size!27552 (_1!21123 lt!1119952)) 1))))

(assert (=> d!925097 (= lt!1119952 (lex!2208 thiss!18206 rules!2135 (print!1945 thiss!18206 (singletonSeq!2387 separatorToken!241))))))

(assert (=> d!925097 (not (isEmpty!20620 rules!2135))))

(assert (=> d!925097 (= (rulesProduceIndividualToken!2372 thiss!18206 rules!2135 separatorToken!241) lt!1119951)))

(declare-fun b!3303754 () Bool)

(declare-fun res!1339988 () Bool)

(assert (=> b!3303754 (=> (not res!1339988) (not e!2054578))))

(declare-fun apply!8377 (BalanceConc!21530 Int) Token!9948)

(assert (=> b!3303754 (= res!1339988 (= (apply!8377 (_1!21123 lt!1119952) 0) separatorToken!241))))

(declare-fun b!3303755 () Bool)

(declare-fun isEmpty!20622 (BalanceConc!21528) Bool)

(assert (=> b!3303755 (= e!2054578 (isEmpty!20622 (_2!21123 lt!1119952)))))

(declare-fun b!3303756 () Bool)

(assert (=> b!3303756 (= e!2054577 (isEmpty!20622 (_2!21123 (lex!2208 thiss!18206 rules!2135 (print!1945 thiss!18206 (singletonSeq!2387 separatorToken!241))))))))

(assert (= (and d!925097 res!1339987) b!3303754))

(assert (= (and b!3303754 res!1339988) b!3303755))

(assert (= (and d!925097 res!1339989) b!3303756))

(declare-fun m!3629605 () Bool)

(assert (=> d!925097 m!3629605))

(declare-fun m!3629607 () Bool)

(assert (=> d!925097 m!3629607))

(declare-fun m!3629609 () Bool)

(assert (=> d!925097 m!3629609))

(assert (=> d!925097 m!3629519))

(declare-fun m!3629611 () Bool)

(assert (=> d!925097 m!3629611))

(assert (=> d!925097 m!3629611))

(assert (=> d!925097 m!3629605))

(declare-fun m!3629613 () Bool)

(assert (=> d!925097 m!3629613))

(assert (=> d!925097 m!3629611))

(declare-fun m!3629615 () Bool)

(assert (=> d!925097 m!3629615))

(declare-fun m!3629617 () Bool)

(assert (=> b!3303754 m!3629617))

(declare-fun m!3629619 () Bool)

(assert (=> b!3303755 m!3629619))

(assert (=> b!3303756 m!3629611))

(assert (=> b!3303756 m!3629611))

(assert (=> b!3303756 m!3629605))

(assert (=> b!3303756 m!3629605))

(assert (=> b!3303756 m!3629607))

(declare-fun m!3629621 () Bool)

(assert (=> b!3303756 m!3629621))

(assert (=> b!3303646 d!925097))

(declare-fun d!925115 () Bool)

(declare-fun list!13075 (Conc!10957) List!36603)

(assert (=> d!925115 (= (list!13072 lt!1119932) (list!13075 (c!560509 lt!1119932)))))

(declare-fun bs!548846 () Bool)

(assert (= bs!548846 d!925115))

(declare-fun m!3629623 () Bool)

(assert (=> bs!548846 m!3629623))

(assert (=> b!3303635 d!925115))

(declare-fun d!925117 () Bool)

(declare-fun lt!1119955 () BalanceConc!21528)

(assert (=> d!925117 (= (list!13072 lt!1119955) (printList!1430 thiss!18206 (list!13074 lt!1119931)))))

(assert (=> d!925117 (= lt!1119955 (printTailRec!1377 thiss!18206 lt!1119931 0 (BalanceConc!21529 Empty!10957)))))

(assert (=> d!925117 (= (print!1945 thiss!18206 lt!1119931) lt!1119955)))

(declare-fun bs!548847 () Bool)

(assert (= bs!548847 d!925117))

(declare-fun m!3629625 () Bool)

(assert (=> bs!548847 m!3629625))

(declare-fun m!3629627 () Bool)

(assert (=> bs!548847 m!3629627))

(assert (=> bs!548847 m!3629627))

(declare-fun m!3629629 () Bool)

(assert (=> bs!548847 m!3629629))

(assert (=> bs!548847 m!3629515))

(assert (=> b!3303635 d!925117))

(declare-fun d!925119 () Bool)

(declare-fun lt!1119976 () BalanceConc!21528)

(declare-fun printListTailRec!594 (LexerInterface!4880 List!36605 List!36603) List!36603)

(declare-fun dropList!1111 (BalanceConc!21530 Int) List!36605)

(assert (=> d!925119 (= (list!13072 lt!1119976) (printListTailRec!594 thiss!18206 (dropList!1111 lt!1119931 0) (list!13072 (BalanceConc!21529 Empty!10957))))))

(declare-fun e!2054584 () BalanceConc!21528)

(assert (=> d!925119 (= lt!1119976 e!2054584)))

(declare-fun c!560523 () Bool)

(assert (=> d!925119 (= c!560523 (>= 0 (size!27552 lt!1119931)))))

(declare-fun e!2054583 () Bool)

(assert (=> d!925119 e!2054583))

(declare-fun res!1339992 () Bool)

(assert (=> d!925119 (=> (not res!1339992) (not e!2054583))))

(assert (=> d!925119 (= res!1339992 (>= 0 0))))

(assert (=> d!925119 (= (printTailRec!1377 thiss!18206 lt!1119931 0 (BalanceConc!21529 Empty!10957)) lt!1119976)))

(declare-fun b!3303763 () Bool)

(assert (=> b!3303763 (= e!2054583 (<= 0 (size!27552 lt!1119931)))))

(declare-fun b!3303764 () Bool)

(assert (=> b!3303764 (= e!2054584 (BalanceConc!21529 Empty!10957))))

(declare-fun b!3303765 () Bool)

(declare-fun ++!8827 (BalanceConc!21528 BalanceConc!21528) BalanceConc!21528)

(assert (=> b!3303765 (= e!2054584 (printTailRec!1377 thiss!18206 lt!1119931 (+ 0 1) (++!8827 (BalanceConc!21529 Empty!10957) (charsOf!3307 (apply!8377 lt!1119931 0)))))))

(declare-fun lt!1119973 () List!36605)

(assert (=> b!3303765 (= lt!1119973 (list!13074 lt!1119931))))

(declare-datatypes ((Unit!51424 0))(
  ( (Unit!51425) )
))
(declare-fun lt!1119974 () Unit!51424)

(declare-fun lemmaDropApply!1070 (List!36605 Int) Unit!51424)

(assert (=> b!3303765 (= lt!1119974 (lemmaDropApply!1070 lt!1119973 0))))

(declare-fun head!7126 (List!36605) Token!9948)

(declare-fun drop!1902 (List!36605 Int) List!36605)

(declare-fun apply!8378 (List!36605 Int) Token!9948)

(assert (=> b!3303765 (= (head!7126 (drop!1902 lt!1119973 0)) (apply!8378 lt!1119973 0))))

(declare-fun lt!1119975 () Unit!51424)

(assert (=> b!3303765 (= lt!1119975 lt!1119974)))

(declare-fun lt!1119970 () List!36605)

(assert (=> b!3303765 (= lt!1119970 (list!13074 lt!1119931))))

(declare-fun lt!1119972 () Unit!51424)

(declare-fun lemmaDropTail!954 (List!36605 Int) Unit!51424)

(assert (=> b!3303765 (= lt!1119972 (lemmaDropTail!954 lt!1119970 0))))

(declare-fun tail!5264 (List!36605) List!36605)

(assert (=> b!3303765 (= (tail!5264 (drop!1902 lt!1119970 0)) (drop!1902 lt!1119970 (+ 0 1)))))

(declare-fun lt!1119971 () Unit!51424)

(assert (=> b!3303765 (= lt!1119971 lt!1119972)))

(assert (= (and d!925119 res!1339992) b!3303763))

(assert (= (and d!925119 c!560523) b!3303764))

(assert (= (and d!925119 (not c!560523)) b!3303765))

(declare-fun m!3629631 () Bool)

(assert (=> d!925119 m!3629631))

(declare-fun m!3629633 () Bool)

(assert (=> d!925119 m!3629633))

(declare-fun m!3629635 () Bool)

(assert (=> d!925119 m!3629635))

(assert (=> d!925119 m!3629631))

(assert (=> d!925119 m!3629635))

(declare-fun m!3629637 () Bool)

(assert (=> d!925119 m!3629637))

(declare-fun m!3629639 () Bool)

(assert (=> d!925119 m!3629639))

(assert (=> b!3303763 m!3629639))

(declare-fun m!3629641 () Bool)

(assert (=> b!3303765 m!3629641))

(declare-fun m!3629643 () Bool)

(assert (=> b!3303765 m!3629643))

(declare-fun m!3629645 () Bool)

(assert (=> b!3303765 m!3629645))

(declare-fun m!3629647 () Bool)

(assert (=> b!3303765 m!3629647))

(declare-fun m!3629649 () Bool)

(assert (=> b!3303765 m!3629649))

(declare-fun m!3629651 () Bool)

(assert (=> b!3303765 m!3629651))

(declare-fun m!3629653 () Bool)

(assert (=> b!3303765 m!3629653))

(assert (=> b!3303765 m!3629627))

(declare-fun m!3629655 () Bool)

(assert (=> b!3303765 m!3629655))

(declare-fun m!3629657 () Bool)

(assert (=> b!3303765 m!3629657))

(declare-fun m!3629659 () Bool)

(assert (=> b!3303765 m!3629659))

(declare-fun m!3629661 () Bool)

(assert (=> b!3303765 m!3629661))

(assert (=> b!3303765 m!3629649))

(assert (=> b!3303765 m!3629641))

(declare-fun m!3629663 () Bool)

(assert (=> b!3303765 m!3629663))

(assert (=> b!3303765 m!3629643))

(assert (=> b!3303765 m!3629645))

(assert (=> b!3303765 m!3629657))

(assert (=> b!3303635 d!925119))

(declare-fun d!925121 () Bool)

(declare-fun e!2054587 () Bool)

(assert (=> d!925121 e!2054587))

(declare-fun res!1339995 () Bool)

(assert (=> d!925121 (=> (not res!1339995) (not e!2054587))))

(declare-fun lt!1119979 () BalanceConc!21530)

(assert (=> d!925121 (= res!1339995 (= (list!13074 lt!1119979) (Cons!36481 (h!41901 tokens!494) Nil!36481)))))

(declare-fun singleton!1027 (Token!9948) BalanceConc!21530)

(assert (=> d!925121 (= lt!1119979 (singleton!1027 (h!41901 tokens!494)))))

(assert (=> d!925121 (= (singletonSeq!2387 (h!41901 tokens!494)) lt!1119979)))

(declare-fun b!3303768 () Bool)

(declare-fun isBalanced!3274 (Conc!10958) Bool)

(assert (=> b!3303768 (= e!2054587 (isBalanced!3274 (c!560510 lt!1119979)))))

(assert (= (and d!925121 res!1339995) b!3303768))

(declare-fun m!3629665 () Bool)

(assert (=> d!925121 m!3629665))

(declare-fun m!3629667 () Bool)

(assert (=> d!925121 m!3629667))

(declare-fun m!3629669 () Bool)

(assert (=> b!3303768 m!3629669))

(assert (=> b!3303635 d!925121))

(declare-fun d!925123 () Bool)

(declare-fun c!560526 () Bool)

(assert (=> d!925123 (= c!560526 (is-Cons!36481 (Cons!36481 (h!41901 tokens!494) Nil!36481)))))

(declare-fun e!2054590 () List!36603)

(assert (=> d!925123 (= (printList!1430 thiss!18206 (Cons!36481 (h!41901 tokens!494) Nil!36481)) e!2054590)))

(declare-fun b!3303773 () Bool)

(declare-fun ++!8828 (List!36603 List!36603) List!36603)

(assert (=> b!3303773 (= e!2054590 (++!8828 (list!13072 (charsOf!3307 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481)))) (printList!1430 thiss!18206 (t!253274 (Cons!36481 (h!41901 tokens!494) Nil!36481)))))))

(declare-fun b!3303774 () Bool)

(assert (=> b!3303774 (= e!2054590 Nil!36479)))

(assert (= (and d!925123 c!560526) b!3303773))

(assert (= (and d!925123 (not c!560526)) b!3303774))

(declare-fun m!3629671 () Bool)

(assert (=> b!3303773 m!3629671))

(assert (=> b!3303773 m!3629671))

(declare-fun m!3629673 () Bool)

(assert (=> b!3303773 m!3629673))

(declare-fun m!3629675 () Bool)

(assert (=> b!3303773 m!3629675))

(assert (=> b!3303773 m!3629673))

(assert (=> b!3303773 m!3629675))

(declare-fun m!3629677 () Bool)

(assert (=> b!3303773 m!3629677))

(assert (=> b!3303635 d!925123))

(declare-fun d!925125 () Bool)

(assert (=> d!925125 (= (inv!49435 (tag!5837 (rule!7795 (h!41901 tokens!494)))) (= (mod (str.len (value!171254 (tag!5837 (rule!7795 (h!41901 tokens!494))))) 2) 0))))

(assert (=> b!3303645 d!925125))

(declare-fun d!925127 () Bool)

(declare-fun res!1339996 () Bool)

(declare-fun e!2054591 () Bool)

(assert (=> d!925127 (=> (not res!1339996) (not e!2054591))))

(assert (=> d!925127 (= res!1339996 (semiInverseModEq!2188 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (toValue!7423 (transformation!5291 (rule!7795 (h!41901 tokens!494))))))))

(assert (=> d!925127 (= (inv!49439 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) e!2054591)))

(declare-fun b!3303775 () Bool)

(assert (=> b!3303775 (= e!2054591 (equivClasses!2087 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (toValue!7423 (transformation!5291 (rule!7795 (h!41901 tokens!494))))))))

(assert (= (and d!925127 res!1339996) b!3303775))

(declare-fun m!3629679 () Bool)

(assert (=> d!925127 m!3629679))

(declare-fun m!3629681 () Bool)

(assert (=> b!3303775 m!3629681))

(assert (=> b!3303645 d!925127))

(declare-fun b!3303786 () Bool)

(declare-fun e!2054598 () Bool)

(declare-fun e!2054600 () Bool)

(assert (=> b!3303786 (= e!2054598 e!2054600)))

(declare-fun c!560532 () Bool)

(assert (=> b!3303786 (= c!560532 (is-IntegerValue!16564 (value!171255 separatorToken!241)))))

(declare-fun b!3303787 () Bool)

(declare-fun res!1339999 () Bool)

(declare-fun e!2054599 () Bool)

(assert (=> b!3303787 (=> res!1339999 e!2054599)))

(assert (=> b!3303787 (= res!1339999 (not (is-IntegerValue!16565 (value!171255 separatorToken!241))))))

(assert (=> b!3303787 (= e!2054600 e!2054599)))

(declare-fun b!3303789 () Bool)

(declare-fun inv!16 (TokenValue!5521) Bool)

(assert (=> b!3303789 (= e!2054598 (inv!16 (value!171255 separatorToken!241)))))

(declare-fun b!3303790 () Bool)

(declare-fun inv!17 (TokenValue!5521) Bool)

(assert (=> b!3303790 (= e!2054600 (inv!17 (value!171255 separatorToken!241)))))

(declare-fun b!3303788 () Bool)

(declare-fun inv!15 (TokenValue!5521) Bool)

(assert (=> b!3303788 (= e!2054599 (inv!15 (value!171255 separatorToken!241)))))

(declare-fun d!925129 () Bool)

(declare-fun c!560531 () Bool)

(assert (=> d!925129 (= c!560531 (is-IntegerValue!16563 (value!171255 separatorToken!241)))))

(assert (=> d!925129 (= (inv!21 (value!171255 separatorToken!241)) e!2054598)))

(assert (= (and d!925129 c!560531) b!3303789))

(assert (= (and d!925129 (not c!560531)) b!3303786))

(assert (= (and b!3303786 c!560532) b!3303790))

(assert (= (and b!3303786 (not c!560532)) b!3303787))

(assert (= (and b!3303787 (not res!1339999)) b!3303788))

(declare-fun m!3629683 () Bool)

(assert (=> b!3303789 m!3629683))

(declare-fun m!3629685 () Bool)

(assert (=> b!3303790 m!3629685))

(declare-fun m!3629687 () Bool)

(assert (=> b!3303788 m!3629687))

(assert (=> b!3303642 d!925129))

(declare-fun d!925131 () Bool)

(assert (=> d!925131 (= (inv!49435 (tag!5837 (rule!7795 separatorToken!241))) (= (mod (str.len (value!171254 (tag!5837 (rule!7795 separatorToken!241)))) 2) 0))))

(assert (=> b!3303643 d!925131))

(declare-fun d!925133 () Bool)

(declare-fun res!1340000 () Bool)

(declare-fun e!2054601 () Bool)

(assert (=> d!925133 (=> (not res!1340000) (not e!2054601))))

(assert (=> d!925133 (= res!1340000 (semiInverseModEq!2188 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (toValue!7423 (transformation!5291 (rule!7795 separatorToken!241)))))))

(assert (=> d!925133 (= (inv!49439 (transformation!5291 (rule!7795 separatorToken!241))) e!2054601)))

(declare-fun b!3303791 () Bool)

(assert (=> b!3303791 (= e!2054601 (equivClasses!2087 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (toValue!7423 (transformation!5291 (rule!7795 separatorToken!241)))))))

(assert (= (and d!925133 res!1340000) b!3303791))

(declare-fun m!3629689 () Bool)

(assert (=> d!925133 m!3629689))

(declare-fun m!3629691 () Bool)

(assert (=> b!3303791 m!3629691))

(assert (=> b!3303643 d!925133))

(declare-fun b!3303792 () Bool)

(declare-fun e!2054602 () Bool)

(declare-fun e!2054604 () Bool)

(assert (=> b!3303792 (= e!2054602 e!2054604)))

(declare-fun c!560534 () Bool)

(assert (=> b!3303792 (= c!560534 (is-IntegerValue!16564 (value!171255 (h!41901 tokens!494))))))

(declare-fun b!3303793 () Bool)

(declare-fun res!1340001 () Bool)

(declare-fun e!2054603 () Bool)

(assert (=> b!3303793 (=> res!1340001 e!2054603)))

(assert (=> b!3303793 (= res!1340001 (not (is-IntegerValue!16565 (value!171255 (h!41901 tokens!494)))))))

(assert (=> b!3303793 (= e!2054604 e!2054603)))

(declare-fun b!3303795 () Bool)

(assert (=> b!3303795 (= e!2054602 (inv!16 (value!171255 (h!41901 tokens!494))))))

(declare-fun b!3303796 () Bool)

(assert (=> b!3303796 (= e!2054604 (inv!17 (value!171255 (h!41901 tokens!494))))))

(declare-fun b!3303794 () Bool)

(assert (=> b!3303794 (= e!2054603 (inv!15 (value!171255 (h!41901 tokens!494))))))

(declare-fun d!925135 () Bool)

(declare-fun c!560533 () Bool)

(assert (=> d!925135 (= c!560533 (is-IntegerValue!16563 (value!171255 (h!41901 tokens!494))))))

(assert (=> d!925135 (= (inv!21 (value!171255 (h!41901 tokens!494))) e!2054602)))

(assert (= (and d!925135 c!560533) b!3303795))

(assert (= (and d!925135 (not c!560533)) b!3303792))

(assert (= (and b!3303792 c!560534) b!3303796))

(assert (= (and b!3303792 (not c!560534)) b!3303793))

(assert (= (and b!3303793 (not res!1340001)) b!3303794))

(declare-fun m!3629693 () Bool)

(assert (=> b!3303795 m!3629693))

(declare-fun m!3629695 () Bool)

(assert (=> b!3303796 m!3629695))

(declare-fun m!3629697 () Bool)

(assert (=> b!3303794 m!3629697))

(assert (=> b!3303630 d!925135))

(declare-fun d!925137 () Bool)

(declare-fun res!1340006 () Bool)

(declare-fun e!2054609 () Bool)

(assert (=> d!925137 (=> res!1340006 e!2054609)))

(assert (=> d!925137 (= res!1340006 (is-Nil!36481 tokens!494))))

(assert (=> d!925137 (= (forall!7553 tokens!494 lambda!118936) e!2054609)))

(declare-fun b!3303801 () Bool)

(declare-fun e!2054610 () Bool)

(assert (=> b!3303801 (= e!2054609 e!2054610)))

(declare-fun res!1340007 () Bool)

(assert (=> b!3303801 (=> (not res!1340007) (not e!2054610))))

(declare-fun dynLambda!14940 (Int Token!9948) Bool)

(assert (=> b!3303801 (= res!1340007 (dynLambda!14940 lambda!118936 (h!41901 tokens!494)))))

(declare-fun b!3303802 () Bool)

(assert (=> b!3303802 (= e!2054610 (forall!7553 (t!253274 tokens!494) lambda!118936))))

(assert (= (and d!925137 (not res!1340006)) b!3303801))

(assert (= (and b!3303801 res!1340007) b!3303802))

(declare-fun b_lambda!92233 () Bool)

(assert (=> (not b_lambda!92233) (not b!3303801)))

(declare-fun m!3629699 () Bool)

(assert (=> b!3303801 m!3629699))

(declare-fun m!3629701 () Bool)

(assert (=> b!3303802 m!3629701))

(assert (=> b!3303640 d!925137))

(declare-fun d!925139 () Bool)

(declare-fun res!1340010 () Bool)

(declare-fun e!2054613 () Bool)

(assert (=> d!925139 (=> (not res!1340010) (not e!2054613))))

(declare-fun rulesValid!1948 (LexerInterface!4880 List!36604) Bool)

(assert (=> d!925139 (= res!1340010 (rulesValid!1948 thiss!18206 rules!2135))))

(assert (=> d!925139 (= (rulesInvariant!4277 thiss!18206 rules!2135) e!2054613)))

(declare-fun b!3303805 () Bool)

(declare-datatypes ((List!36610 0))(
  ( (Nil!36486) (Cons!36486 (h!41906 String!40941) (t!253322 List!36610)) )
))
(declare-fun noDuplicateTag!1944 (LexerInterface!4880 List!36604 List!36610) Bool)

(assert (=> b!3303805 (= e!2054613 (noDuplicateTag!1944 thiss!18206 rules!2135 Nil!36486))))

(assert (= (and d!925139 res!1340010) b!3303805))

(declare-fun m!3629703 () Bool)

(assert (=> d!925139 m!3629703))

(declare-fun m!3629705 () Bool)

(assert (=> b!3303805 m!3629705))

(assert (=> b!3303629 d!925139))

(declare-fun d!925141 () Bool)

(declare-fun res!1340015 () Bool)

(declare-fun e!2054616 () Bool)

(assert (=> d!925141 (=> (not res!1340015) (not e!2054616))))

(declare-fun isEmpty!20623 (List!36603) Bool)

(assert (=> d!925141 (= res!1340015 (not (isEmpty!20623 (originalCharacters!6005 separatorToken!241))))))

(assert (=> d!925141 (= (inv!49438 separatorToken!241) e!2054616)))

(declare-fun b!3303810 () Bool)

(declare-fun res!1340016 () Bool)

(assert (=> b!3303810 (=> (not res!1340016) (not e!2054616))))

(declare-fun dynLambda!14941 (Int TokenValue!5521) BalanceConc!21528)

(assert (=> b!3303810 (= res!1340016 (= (originalCharacters!6005 separatorToken!241) (list!13072 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (value!171255 separatorToken!241)))))))

(declare-fun b!3303811 () Bool)

(declare-fun size!27553 (List!36603) Int)

(assert (=> b!3303811 (= e!2054616 (= (size!27550 separatorToken!241) (size!27553 (originalCharacters!6005 separatorToken!241))))))

(assert (= (and d!925141 res!1340015) b!3303810))

(assert (= (and b!3303810 res!1340016) b!3303811))

(declare-fun b_lambda!92235 () Bool)

(assert (=> (not b_lambda!92235) (not b!3303810)))

(declare-fun t!253288 () Bool)

(declare-fun tb!171321 () Bool)

(assert (=> (and b!3303632 (= (toChars!7282 (transformation!5291 (h!41900 rules!2135))) (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241)))) t!253288) tb!171321))

(declare-fun b!3303816 () Bool)

(declare-fun e!2054619 () Bool)

(declare-fun tp!1034316 () Bool)

(declare-fun inv!49442 (Conc!10957) Bool)

(assert (=> b!3303816 (= e!2054619 (and (inv!49442 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (value!171255 separatorToken!241)))) tp!1034316))))

(declare-fun result!214100 () Bool)

(declare-fun inv!49443 (BalanceConc!21528) Bool)

(assert (=> tb!171321 (= result!214100 (and (inv!49443 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (value!171255 separatorToken!241))) e!2054619))))

(assert (= tb!171321 b!3303816))

(declare-fun m!3629707 () Bool)

(assert (=> b!3303816 m!3629707))

(declare-fun m!3629709 () Bool)

(assert (=> tb!171321 m!3629709))

(assert (=> b!3303810 t!253288))

(declare-fun b_and!226281 () Bool)

(assert (= b_and!226253 (and (=> t!253288 result!214100) b_and!226281)))

(declare-fun tb!171323 () Bool)

(declare-fun t!253290 () Bool)

(assert (=> (and b!3303639 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241)))) t!253290) tb!171323))

(declare-fun result!214104 () Bool)

(assert (= result!214104 result!214100))

(assert (=> b!3303810 t!253290))

(declare-fun b_and!226283 () Bool)

(assert (= b_and!226257 (and (=> t!253290 result!214104) b_and!226283)))

(declare-fun t!253292 () Bool)

(declare-fun tb!171325 () Bool)

(assert (=> (and b!3303638 (= (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241)))) t!253292) tb!171325))

(declare-fun result!214106 () Bool)

(assert (= result!214106 result!214100))

(assert (=> b!3303810 t!253292))

(declare-fun b_and!226285 () Bool)

(assert (= b_and!226261 (and (=> t!253292 result!214106) b_and!226285)))

(declare-fun m!3629711 () Bool)

(assert (=> d!925141 m!3629711))

(declare-fun m!3629713 () Bool)

(assert (=> b!3303810 m!3629713))

(assert (=> b!3303810 m!3629713))

(declare-fun m!3629715 () Bool)

(assert (=> b!3303810 m!3629715))

(declare-fun m!3629717 () Bool)

(assert (=> b!3303811 m!3629717))

(assert (=> start!307576 d!925141))

(declare-fun bs!548848 () Bool)

(declare-fun d!925143 () Bool)

(assert (= bs!548848 (and d!925143 b!3303640)))

(declare-fun lambda!118944 () Int)

(assert (=> bs!548848 (not (= lambda!118944 lambda!118936))))

(declare-fun b!3303830 () Bool)

(declare-fun e!2054631 () Bool)

(assert (=> b!3303830 (= e!2054631 true)))

(declare-fun b!3303829 () Bool)

(declare-fun e!2054630 () Bool)

(assert (=> b!3303829 (= e!2054630 e!2054631)))

(declare-fun b!3303828 () Bool)

(declare-fun e!2054629 () Bool)

(assert (=> b!3303828 (= e!2054629 e!2054630)))

(assert (=> d!925143 e!2054629))

(assert (= b!3303829 b!3303830))

(assert (= b!3303828 b!3303829))

(assert (= (and d!925143 (is-Cons!36480 rules!2135)) b!3303828))

(declare-fun order!18929 () Int)

(declare-fun order!18927 () Int)

(declare-fun dynLambda!14942 (Int Int) Int)

(declare-fun dynLambda!14943 (Int Int) Int)

(assert (=> b!3303830 (< (dynLambda!14942 order!18927 (toValue!7423 (transformation!5291 (h!41900 rules!2135)))) (dynLambda!14943 order!18929 lambda!118944))))

(declare-fun order!18931 () Int)

(declare-fun dynLambda!14944 (Int Int) Int)

(assert (=> b!3303830 (< (dynLambda!14944 order!18931 (toChars!7282 (transformation!5291 (h!41900 rules!2135)))) (dynLambda!14943 order!18929 lambda!118944))))

(assert (=> d!925143 true))

(declare-fun e!2054622 () Bool)

(assert (=> d!925143 e!2054622))

(declare-fun res!1340019 () Bool)

(assert (=> d!925143 (=> (not res!1340019) (not e!2054622))))

(declare-fun lt!1119984 () Bool)

(assert (=> d!925143 (= res!1340019 (= lt!1119984 (forall!7553 (list!13074 (seqFromList!3643 tokens!494)) lambda!118944)))))

(declare-fun forall!7555 (BalanceConc!21530 Int) Bool)

(assert (=> d!925143 (= lt!1119984 (forall!7555 (seqFromList!3643 tokens!494) lambda!118944))))

(assert (=> d!925143 (not (isEmpty!20620 rules!2135))))

(assert (=> d!925143 (= (rulesProduceEachTokenIndividually!1331 thiss!18206 rules!2135 (seqFromList!3643 tokens!494)) lt!1119984)))

(declare-fun b!3303819 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1760 (LexerInterface!4880 List!36604 List!36605) Bool)

(assert (=> b!3303819 (= e!2054622 (= lt!1119984 (rulesProduceEachTokenIndividuallyList!1760 thiss!18206 rules!2135 (list!13074 (seqFromList!3643 tokens!494)))))))

(assert (= (and d!925143 res!1340019) b!3303819))

(assert (=> d!925143 m!3629503))

(declare-fun m!3629719 () Bool)

(assert (=> d!925143 m!3629719))

(assert (=> d!925143 m!3629719))

(declare-fun m!3629721 () Bool)

(assert (=> d!925143 m!3629721))

(assert (=> d!925143 m!3629503))

(declare-fun m!3629723 () Bool)

(assert (=> d!925143 m!3629723))

(assert (=> d!925143 m!3629519))

(assert (=> b!3303819 m!3629503))

(assert (=> b!3303819 m!3629719))

(assert (=> b!3303819 m!3629719))

(declare-fun m!3629725 () Bool)

(assert (=> b!3303819 m!3629725))

(assert (=> b!3303647 d!925143))

(declare-fun d!925145 () Bool)

(declare-fun fromListB!1599 (List!36605) BalanceConc!21530)

(assert (=> d!925145 (= (seqFromList!3643 tokens!494) (fromListB!1599 tokens!494))))

(declare-fun bs!548849 () Bool)

(assert (= bs!548849 d!925145))

(declare-fun m!3629727 () Bool)

(assert (=> bs!548849 m!3629727))

(assert (=> b!3303647 d!925145))

(declare-fun d!925147 () Bool)

(assert (=> d!925147 (= (list!13072 (charsOf!3307 (h!41901 tokens!494))) (list!13075 (c!560509 (charsOf!3307 (h!41901 tokens!494)))))))

(declare-fun bs!548850 () Bool)

(assert (= bs!548850 d!925147))

(declare-fun m!3629729 () Bool)

(assert (=> bs!548850 m!3629729))

(assert (=> b!3303636 d!925147))

(declare-fun d!925149 () Bool)

(declare-fun lt!1119987 () BalanceConc!21528)

(assert (=> d!925149 (= (list!13072 lt!1119987) (originalCharacters!6005 (h!41901 tokens!494)))))

(assert (=> d!925149 (= lt!1119987 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (value!171255 (h!41901 tokens!494))))))

(assert (=> d!925149 (= (charsOf!3307 (h!41901 tokens!494)) lt!1119987)))

(declare-fun b_lambda!92237 () Bool)

(assert (=> (not b_lambda!92237) (not d!925149)))

(declare-fun tb!171327 () Bool)

(declare-fun t!253302 () Bool)

(assert (=> (and b!3303632 (= (toChars!7282 (transformation!5291 (h!41900 rules!2135))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494))))) t!253302) tb!171327))

(declare-fun b!3303833 () Bool)

(declare-fun e!2054634 () Bool)

(declare-fun tp!1034317 () Bool)

(assert (=> b!3303833 (= e!2054634 (and (inv!49442 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (value!171255 (h!41901 tokens!494))))) tp!1034317))))

(declare-fun result!214108 () Bool)

(assert (=> tb!171327 (= result!214108 (and (inv!49443 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (value!171255 (h!41901 tokens!494)))) e!2054634))))

(assert (= tb!171327 b!3303833))

(declare-fun m!3629731 () Bool)

(assert (=> b!3303833 m!3629731))

(declare-fun m!3629733 () Bool)

(assert (=> tb!171327 m!3629733))

(assert (=> d!925149 t!253302))

(declare-fun b_and!226287 () Bool)

(assert (= b_and!226281 (and (=> t!253302 result!214108) b_and!226287)))

(declare-fun t!253304 () Bool)

(declare-fun tb!171329 () Bool)

(assert (=> (and b!3303639 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494))))) t!253304) tb!171329))

(declare-fun result!214110 () Bool)

(assert (= result!214110 result!214108))

(assert (=> d!925149 t!253304))

(declare-fun b_and!226289 () Bool)

(assert (= b_and!226283 (and (=> t!253304 result!214110) b_and!226289)))

(declare-fun t!253306 () Bool)

(declare-fun tb!171331 () Bool)

(assert (=> (and b!3303638 (= (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494))))) t!253306) tb!171331))

(declare-fun result!214112 () Bool)

(assert (= result!214112 result!214108))

(assert (=> d!925149 t!253306))

(declare-fun b_and!226291 () Bool)

(assert (= b_and!226285 (and (=> t!253306 result!214112) b_and!226291)))

(declare-fun m!3629735 () Bool)

(assert (=> d!925149 m!3629735))

(declare-fun m!3629737 () Bool)

(assert (=> d!925149 m!3629737))

(assert (=> b!3303636 d!925149))

(declare-fun d!925151 () Bool)

(declare-fun res!1340027 () Bool)

(declare-fun e!2054646 () Bool)

(assert (=> d!925151 (=> res!1340027 e!2054646)))

(assert (=> d!925151 (= res!1340027 (not (is-Cons!36480 rules!2135)))))

(assert (=> d!925151 (= (sepAndNonSepRulesDisjointChars!1485 rules!2135 rules!2135) e!2054646)))

(declare-fun b!3303849 () Bool)

(declare-fun e!2054647 () Bool)

(assert (=> b!3303849 (= e!2054646 e!2054647)))

(declare-fun res!1340028 () Bool)

(assert (=> b!3303849 (=> (not res!1340028) (not e!2054647))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!624 (Rule!10382 List!36604) Bool)

(assert (=> b!3303849 (= res!1340028 (ruleDisjointCharsFromAllFromOtherType!624 (h!41900 rules!2135) rules!2135))))

(declare-fun b!3303850 () Bool)

(assert (=> b!3303850 (= e!2054647 (sepAndNonSepRulesDisjointChars!1485 rules!2135 (t!253273 rules!2135)))))

(assert (= (and d!925151 (not res!1340027)) b!3303849))

(assert (= (and b!3303849 res!1340028) b!3303850))

(declare-fun m!3629739 () Bool)

(assert (=> b!3303849 m!3629739))

(declare-fun m!3629741 () Bool)

(assert (=> b!3303850 m!3629741))

(assert (=> b!3303648 d!925151))

(declare-fun d!925153 () Bool)

(declare-fun res!1340029 () Bool)

(declare-fun e!2054648 () Bool)

(assert (=> d!925153 (=> (not res!1340029) (not e!2054648))))

(assert (=> d!925153 (= res!1340029 (not (isEmpty!20623 (originalCharacters!6005 (h!41901 tokens!494)))))))

(assert (=> d!925153 (= (inv!49438 (h!41901 tokens!494)) e!2054648)))

(declare-fun b!3303851 () Bool)

(declare-fun res!1340030 () Bool)

(assert (=> b!3303851 (=> (not res!1340030) (not e!2054648))))

(assert (=> b!3303851 (= res!1340030 (= (originalCharacters!6005 (h!41901 tokens!494)) (list!13072 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (value!171255 (h!41901 tokens!494))))))))

(declare-fun b!3303852 () Bool)

(assert (=> b!3303852 (= e!2054648 (= (size!27550 (h!41901 tokens!494)) (size!27553 (originalCharacters!6005 (h!41901 tokens!494)))))))

(assert (= (and d!925153 res!1340029) b!3303851))

(assert (= (and b!3303851 res!1340030) b!3303852))

(declare-fun b_lambda!92239 () Bool)

(assert (=> (not b_lambda!92239) (not b!3303851)))

(assert (=> b!3303851 t!253302))

(declare-fun b_and!226293 () Bool)

(assert (= b_and!226287 (and (=> t!253302 result!214108) b_and!226293)))

(assert (=> b!3303851 t!253304))

(declare-fun b_and!226295 () Bool)

(assert (= b_and!226289 (and (=> t!253304 result!214110) b_and!226295)))

(assert (=> b!3303851 t!253306))

(declare-fun b_and!226297 () Bool)

(assert (= b_and!226291 (and (=> t!253306 result!214112) b_and!226297)))

(declare-fun m!3629743 () Bool)

(assert (=> d!925153 m!3629743))

(assert (=> b!3303851 m!3629737))

(assert (=> b!3303851 m!3629737))

(declare-fun m!3629745 () Bool)

(assert (=> b!3303851 m!3629745))

(declare-fun m!3629747 () Bool)

(assert (=> b!3303852 m!3629747))

(assert (=> b!3303637 d!925153))

(declare-fun b!3303869 () Bool)

(declare-fun e!2054654 () Bool)

(declare-fun tp!1034331 () Bool)

(declare-fun tp!1034332 () Bool)

(assert (=> b!3303869 (= e!2054654 (and tp!1034331 tp!1034332))))

(declare-fun b!3303870 () Bool)

(declare-fun tp!1034329 () Bool)

(assert (=> b!3303870 (= e!2054654 tp!1034329)))

(declare-fun b!3303868 () Bool)

(declare-fun tp_is_empty!17363 () Bool)

(assert (=> b!3303868 (= e!2054654 tp_is_empty!17363)))

(assert (=> b!3303644 (= tp!1034263 e!2054654)))

(declare-fun b!3303871 () Bool)

(declare-fun tp!1034330 () Bool)

(declare-fun tp!1034328 () Bool)

(assert (=> b!3303871 (= e!2054654 (and tp!1034330 tp!1034328))))

(assert (= (and b!3303644 (is-ElementMatch!10050 (regex!5291 (h!41900 rules!2135)))) b!3303868))

(assert (= (and b!3303644 (is-Concat!15571 (regex!5291 (h!41900 rules!2135)))) b!3303869))

(assert (= (and b!3303644 (is-Star!10050 (regex!5291 (h!41900 rules!2135)))) b!3303870))

(assert (= (and b!3303644 (is-Union!10050 (regex!5291 (h!41900 rules!2135)))) b!3303871))

(declare-fun b!3303876 () Bool)

(declare-fun e!2054657 () Bool)

(declare-fun tp!1034335 () Bool)

(assert (=> b!3303876 (= e!2054657 (and tp_is_empty!17363 tp!1034335))))

(assert (=> b!3303630 (= tp!1034264 e!2054657)))

(assert (= (and b!3303630 (is-Cons!36479 (originalCharacters!6005 (h!41901 tokens!494)))) b!3303876))

(declare-fun b!3303878 () Bool)

(declare-fun e!2054658 () Bool)

(declare-fun tp!1034339 () Bool)

(declare-fun tp!1034340 () Bool)

(assert (=> b!3303878 (= e!2054658 (and tp!1034339 tp!1034340))))

(declare-fun b!3303879 () Bool)

(declare-fun tp!1034337 () Bool)

(assert (=> b!3303879 (= e!2054658 tp!1034337)))

(declare-fun b!3303877 () Bool)

(assert (=> b!3303877 (= e!2054658 tp_is_empty!17363)))

(assert (=> b!3303645 (= tp!1034259 e!2054658)))

(declare-fun b!3303880 () Bool)

(declare-fun tp!1034338 () Bool)

(declare-fun tp!1034336 () Bool)

(assert (=> b!3303880 (= e!2054658 (and tp!1034338 tp!1034336))))

(assert (= (and b!3303645 (is-ElementMatch!10050 (regex!5291 (rule!7795 (h!41901 tokens!494))))) b!3303877))

(assert (= (and b!3303645 (is-Concat!15571 (regex!5291 (rule!7795 (h!41901 tokens!494))))) b!3303878))

(assert (= (and b!3303645 (is-Star!10050 (regex!5291 (rule!7795 (h!41901 tokens!494))))) b!3303879))

(assert (= (and b!3303645 (is-Union!10050 (regex!5291 (rule!7795 (h!41901 tokens!494))))) b!3303880))

(declare-fun b!3303881 () Bool)

(declare-fun e!2054659 () Bool)

(declare-fun tp!1034341 () Bool)

(assert (=> b!3303881 (= e!2054659 (and tp_is_empty!17363 tp!1034341))))

(assert (=> b!3303642 (= tp!1034269 e!2054659)))

(assert (= (and b!3303642 (is-Cons!36479 (originalCharacters!6005 separatorToken!241))) b!3303881))

(declare-fun b!3303892 () Bool)

(declare-fun b_free!86789 () Bool)

(declare-fun b_next!87493 () Bool)

(assert (=> b!3303892 (= b_free!86789 (not b_next!87493))))

(declare-fun tp!1034350 () Bool)

(declare-fun b_and!226299 () Bool)

(assert (=> b!3303892 (= tp!1034350 b_and!226299)))

(declare-fun b_free!86791 () Bool)

(declare-fun b_next!87495 () Bool)

(assert (=> b!3303892 (= b_free!86791 (not b_next!87495))))

(declare-fun tb!171333 () Bool)

(declare-fun t!253308 () Bool)

(assert (=> (and b!3303892 (= (toChars!7282 (transformation!5291 (h!41900 (t!253273 rules!2135)))) (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241)))) t!253308) tb!171333))

(declare-fun result!214120 () Bool)

(assert (= result!214120 result!214100))

(assert (=> b!3303810 t!253308))

(declare-fun tb!171335 () Bool)

(declare-fun t!253310 () Bool)

(assert (=> (and b!3303892 (= (toChars!7282 (transformation!5291 (h!41900 (t!253273 rules!2135)))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494))))) t!253310) tb!171335))

(declare-fun result!214122 () Bool)

(assert (= result!214122 result!214108))

(assert (=> d!925149 t!253310))

(assert (=> b!3303851 t!253310))

(declare-fun b_and!226301 () Bool)

(declare-fun tp!1034352 () Bool)

(assert (=> b!3303892 (= tp!1034352 (and (=> t!253308 result!214120) (=> t!253310 result!214122) b_and!226301))))

(declare-fun e!2054668 () Bool)

(assert (=> b!3303892 (= e!2054668 (and tp!1034350 tp!1034352))))

(declare-fun b!3303891 () Bool)

(declare-fun e!2054669 () Bool)

(declare-fun tp!1034353 () Bool)

(assert (=> b!3303891 (= e!2054669 (and tp!1034353 (inv!49435 (tag!5837 (h!41900 (t!253273 rules!2135)))) (inv!49439 (transformation!5291 (h!41900 (t!253273 rules!2135)))) e!2054668))))

(declare-fun b!3303890 () Bool)

(declare-fun e!2054670 () Bool)

(declare-fun tp!1034351 () Bool)

(assert (=> b!3303890 (= e!2054670 (and e!2054669 tp!1034351))))

(assert (=> b!3303641 (= tp!1034267 e!2054670)))

(assert (= b!3303891 b!3303892))

(assert (= b!3303890 b!3303891))

(assert (= (and b!3303641 (is-Cons!36480 (t!253273 rules!2135))) b!3303890))

(declare-fun m!3629761 () Bool)

(assert (=> b!3303891 m!3629761))

(declare-fun m!3629763 () Bool)

(assert (=> b!3303891 m!3629763))

(declare-fun b!3303894 () Bool)

(declare-fun e!2054672 () Bool)

(declare-fun tp!1034357 () Bool)

(declare-fun tp!1034358 () Bool)

(assert (=> b!3303894 (= e!2054672 (and tp!1034357 tp!1034358))))

(declare-fun b!3303895 () Bool)

(declare-fun tp!1034355 () Bool)

(assert (=> b!3303895 (= e!2054672 tp!1034355)))

(declare-fun b!3303893 () Bool)

(assert (=> b!3303893 (= e!2054672 tp_is_empty!17363)))

(assert (=> b!3303643 (= tp!1034271 e!2054672)))

(declare-fun b!3303896 () Bool)

(declare-fun tp!1034356 () Bool)

(declare-fun tp!1034354 () Bool)

(assert (=> b!3303896 (= e!2054672 (and tp!1034356 tp!1034354))))

(assert (= (and b!3303643 (is-ElementMatch!10050 (regex!5291 (rule!7795 separatorToken!241)))) b!3303893))

(assert (= (and b!3303643 (is-Concat!15571 (regex!5291 (rule!7795 separatorToken!241)))) b!3303894))

(assert (= (and b!3303643 (is-Star!10050 (regex!5291 (rule!7795 separatorToken!241)))) b!3303895))

(assert (= (and b!3303643 (is-Union!10050 (regex!5291 (rule!7795 separatorToken!241)))) b!3303896))

(declare-fun b!3303911 () Bool)

(declare-fun b_free!86793 () Bool)

(declare-fun b_next!87497 () Bool)

(assert (=> b!3303911 (= b_free!86793 (not b_next!87497))))

(declare-fun tp!1034373 () Bool)

(declare-fun b_and!226309 () Bool)

(assert (=> b!3303911 (= tp!1034373 b_and!226309)))

(declare-fun b_free!86795 () Bool)

(declare-fun b_next!87499 () Bool)

(assert (=> b!3303911 (= b_free!86795 (not b_next!87499))))

(declare-fun t!253312 () Bool)

(declare-fun tb!171337 () Bool)

(assert (=> (and b!3303911 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))) (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241)))) t!253312) tb!171337))

(declare-fun result!214126 () Bool)

(assert (= result!214126 result!214100))

(assert (=> b!3303810 t!253312))

(declare-fun t!253314 () Bool)

(declare-fun tb!171339 () Bool)

(assert (=> (and b!3303911 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494))))) t!253314) tb!171339))

(declare-fun result!214128 () Bool)

(assert (= result!214128 result!214108))

(assert (=> d!925149 t!253314))

(assert (=> b!3303851 t!253314))

(declare-fun tp!1034372 () Bool)

(declare-fun b_and!226311 () Bool)

(assert (=> b!3303911 (= tp!1034372 (and (=> t!253312 result!214126) (=> t!253314 result!214128) b_and!226311))))

(declare-fun tp!1034369 () Bool)

(declare-fun b!3303910 () Bool)

(declare-fun e!2054689 () Bool)

(declare-fun e!2054690 () Bool)

(assert (=> b!3303910 (= e!2054690 (and tp!1034369 (inv!49435 (tag!5837 (rule!7795 (h!41901 (t!253274 tokens!494))))) (inv!49439 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))) e!2054689))))

(declare-fun e!2054688 () Bool)

(declare-fun b!3303908 () Bool)

(declare-fun tp!1034370 () Bool)

(declare-fun e!2054687 () Bool)

(assert (=> b!3303908 (= e!2054688 (and (inv!49438 (h!41901 (t!253274 tokens!494))) e!2054687 tp!1034370))))

(assert (=> b!3303911 (= e!2054689 (and tp!1034373 tp!1034372))))

(assert (=> b!3303637 (= tp!1034262 e!2054688)))

(declare-fun tp!1034371 () Bool)

(declare-fun b!3303909 () Bool)

(assert (=> b!3303909 (= e!2054687 (and (inv!21 (value!171255 (h!41901 (t!253274 tokens!494)))) e!2054690 tp!1034371))))

(assert (= b!3303910 b!3303911))

(assert (= b!3303909 b!3303910))

(assert (= b!3303908 b!3303909))

(assert (= (and b!3303637 (is-Cons!36481 (t!253274 tokens!494))) b!3303908))

(declare-fun m!3629771 () Bool)

(assert (=> b!3303910 m!3629771))

(declare-fun m!3629773 () Bool)

(assert (=> b!3303910 m!3629773))

(declare-fun m!3629775 () Bool)

(assert (=> b!3303908 m!3629775))

(declare-fun m!3629777 () Bool)

(assert (=> b!3303909 m!3629777))

(declare-fun b_lambda!92243 () Bool)

(assert (= b_lambda!92239 (or (and b!3303639 b_free!86771) (and b!3303911 b_free!86795 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))))) (and b!3303638 b_free!86775 (= (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))))) (and b!3303632 b_free!86767 (= (toChars!7282 (transformation!5291 (h!41900 rules!2135))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))))) (and b!3303892 b_free!86791 (= (toChars!7282 (transformation!5291 (h!41900 (t!253273 rules!2135)))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))))) b_lambda!92243)))

(declare-fun b_lambda!92245 () Bool)

(assert (= b_lambda!92237 (or (and b!3303639 b_free!86771) (and b!3303911 b_free!86795 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))))) (and b!3303638 b_free!86775 (= (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))))) (and b!3303632 b_free!86767 (= (toChars!7282 (transformation!5291 (h!41900 rules!2135))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))))) (and b!3303892 b_free!86791 (= (toChars!7282 (transformation!5291 (h!41900 (t!253273 rules!2135)))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))))) b_lambda!92245)))

(declare-fun b_lambda!92247 () Bool)

(assert (= b_lambda!92235 (or (and b!3303632 b_free!86767 (= (toChars!7282 (transformation!5291 (h!41900 rules!2135))) (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))))) (and b!3303911 b_free!86795 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))) (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))))) (and b!3303638 b_free!86775) (and b!3303639 b_free!86771 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))))) (and b!3303892 b_free!86791 (= (toChars!7282 (transformation!5291 (h!41900 (t!253273 rules!2135)))) (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))))) b_lambda!92247)))

(declare-fun b_lambda!92249 () Bool)

(assert (= b_lambda!92233 (or b!3303640 b_lambda!92249)))

(declare-fun bs!548854 () Bool)

(declare-fun d!925167 () Bool)

(assert (= bs!548854 (and d!925167 b!3303640)))

(assert (=> bs!548854 (= (dynLambda!14940 lambda!118936 (h!41901 tokens!494)) (not (isSeparator!5291 (rule!7795 (h!41901 tokens!494)))))))

(assert (=> b!3303801 d!925167))

(push 1)

(assert (not b!3303796))

(assert (not b_lambda!92249))

(assert (not b!3303790))

(assert b_and!226297)

(assert (not d!925127))

(assert (not b!3303711))

(assert (not b!3303871))

(assert (not b!3303754))

(assert (not b_next!87469))

(assert (not b!3303810))

(assert (not d!925095))

(assert b_and!226259)

(assert b_and!226309)

(assert (not b!3303833))

(assert b_and!226255)

(assert tp_is_empty!17363)

(assert (not tb!171321))

(assert (not b!3303881))

(assert (not d!925149))

(assert (not d!925097))

(assert (not d!925119))

(assert b_and!226293)

(assert (not b!3303869))

(assert (not b_next!87475))

(assert (not d!925147))

(assert (not d!925133))

(assert (not d!925145))

(assert (not b!3303768))

(assert (not b!3303828))

(assert (not b!3303909))

(assert b_and!226295)

(assert (not b_next!87479))

(assert (not b!3303802))

(assert b_and!226301)

(assert (not b!3303870))

(assert (not b!3303795))

(assert (not b!3303788))

(assert (not b!3303850))

(assert (not d!925117))

(assert (not b!3303878))

(assert (not b!3303890))

(assert (not b!3303896))

(assert (not b_next!87495))

(assert b_and!226251)

(assert (not b_next!87471))

(assert b_and!226299)

(assert (not b!3303895))

(assert (not b!3303891))

(assert (not b!3303765))

(assert (not b!3303852))

(assert (not b!3303811))

(assert (not b!3303819))

(assert (not b_next!87473))

(assert (not b!3303805))

(assert (not b_lambda!92247))

(assert (not d!925153))

(assert (not b!3303908))

(assert (not d!925139))

(assert (not d!925121))

(assert (not b_next!87477))

(assert (not b!3303789))

(assert (not d!925143))

(assert (not b!3303763))

(assert (not b!3303876))

(assert (not b!3303910))

(assert (not b_next!87497))

(assert (not b!3303756))

(assert (not tb!171327))

(assert (not b!3303816))

(assert (not b!3303879))

(assert (not b!3303849))

(assert (not b_next!87493))

(assert (not b!3303894))

(assert (not d!925141))

(assert (not b!3303880))

(assert (not b_next!87499))

(assert (not b_lambda!92245))

(assert (not b_lambda!92243))

(assert (not b!3303755))

(assert b_and!226311)

(assert (not b!3303791))

(assert (not b!3303794))

(assert (not b!3303775))

(assert (not b!3303851))

(assert (not d!925115))

(assert (not b!3303773))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!87469))

(assert b_and!226255)

(assert b_and!226293)

(assert (not b_next!87475))

(assert (not b_next!87473))

(assert (not b_next!87477))

(assert (not b_next!87497))

(assert (not b_next!87493))

(assert b_and!226297)

(assert (not b_next!87499))

(assert b_and!226311)

(assert b_and!226259)

(assert b_and!226309)

(assert b_and!226295)

(assert (not b_next!87479))

(assert b_and!226301)

(assert (not b_next!87495))

(assert b_and!226251)

(assert (not b_next!87471))

(assert b_and!226299)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!925191 () Bool)

(assert (=> d!925191 (= (list!13072 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (value!171255 separatorToken!241))) (list!13075 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (value!171255 separatorToken!241)))))))

(declare-fun bs!548858 () Bool)

(assert (= bs!548858 d!925191))

(declare-fun m!3629891 () Bool)

(assert (=> bs!548858 m!3629891))

(assert (=> b!3303810 d!925191))

(declare-fun d!925193 () Bool)

(assert (=> d!925193 true))

(declare-fun order!18939 () Int)

(declare-fun lambda!118952 () Int)

(declare-fun dynLambda!14950 (Int Int) Int)

(assert (=> d!925193 (< (dynLambda!14944 order!18931 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494))))) (dynLambda!14950 order!18939 lambda!118952))))

(assert (=> d!925193 true))

(assert (=> d!925193 (< (dynLambda!14942 order!18927 (toValue!7423 (transformation!5291 (rule!7795 (h!41901 tokens!494))))) (dynLambda!14950 order!18939 lambda!118952))))

(declare-fun Forall!1290 (Int) Bool)

(assert (=> d!925193 (= (semiInverseModEq!2188 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (toValue!7423 (transformation!5291 (rule!7795 (h!41901 tokens!494))))) (Forall!1290 lambda!118952))))

(declare-fun bs!548859 () Bool)

(assert (= bs!548859 d!925193))

(declare-fun m!3629893 () Bool)

(assert (=> bs!548859 m!3629893))

(assert (=> d!925127 d!925193))

(declare-fun d!925195 () Bool)

(declare-fun charsToInt!0 (List!36602) (_ BitVec 32))

(assert (=> d!925195 (= (inv!16 (value!171255 separatorToken!241)) (= (charsToInt!0 (text!39094 (value!171255 separatorToken!241))) (value!171246 (value!171255 separatorToken!241))))))

(declare-fun bs!548860 () Bool)

(assert (= bs!548860 d!925195))

(declare-fun m!3629895 () Bool)

(assert (=> bs!548860 m!3629895))

(assert (=> b!3303789 d!925195))

(declare-fun d!925197 () Bool)

(declare-fun res!1340061 () Bool)

(declare-fun e!2054763 () Bool)

(assert (=> d!925197 (=> (not res!1340061) (not e!2054763))))

(assert (=> d!925197 (= res!1340061 (not (isEmpty!20623 (originalCharacters!6005 (h!41901 (t!253274 tokens!494))))))))

(assert (=> d!925197 (= (inv!49438 (h!41901 (t!253274 tokens!494))) e!2054763)))

(declare-fun b!3304013 () Bool)

(declare-fun res!1340062 () Bool)

(assert (=> b!3304013 (=> (not res!1340062) (not e!2054763))))

(assert (=> b!3304013 (= res!1340062 (= (originalCharacters!6005 (h!41901 (t!253274 tokens!494))) (list!13072 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))) (value!171255 (h!41901 (t!253274 tokens!494)))))))))

(declare-fun b!3304014 () Bool)

(assert (=> b!3304014 (= e!2054763 (= (size!27550 (h!41901 (t!253274 tokens!494))) (size!27553 (originalCharacters!6005 (h!41901 (t!253274 tokens!494))))))))

(assert (= (and d!925197 res!1340061) b!3304013))

(assert (= (and b!3304013 res!1340062) b!3304014))

(declare-fun b_lambda!92263 () Bool)

(assert (=> (not b_lambda!92263) (not b!3304013)))

(declare-fun t!253334 () Bool)

(declare-fun tb!171355 () Bool)

(assert (=> (and b!3303632 (= (toChars!7282 (transformation!5291 (h!41900 rules!2135))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494)))))) t!253334) tb!171355))

(declare-fun b!3304015 () Bool)

(declare-fun e!2054764 () Bool)

(declare-fun tp!1034431 () Bool)

(assert (=> b!3304015 (= e!2054764 (and (inv!49442 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))) (value!171255 (h!41901 (t!253274 tokens!494)))))) tp!1034431))))

(declare-fun result!214152 () Bool)

(assert (=> tb!171355 (= result!214152 (and (inv!49443 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))) (value!171255 (h!41901 (t!253274 tokens!494))))) e!2054764))))

(assert (= tb!171355 b!3304015))

(declare-fun m!3629897 () Bool)

(assert (=> b!3304015 m!3629897))

(declare-fun m!3629899 () Bool)

(assert (=> tb!171355 m!3629899))

(assert (=> b!3304013 t!253334))

(declare-fun b_and!226327 () Bool)

(assert (= b_and!226293 (and (=> t!253334 result!214152) b_and!226327)))

(declare-fun t!253336 () Bool)

(declare-fun tb!171357 () Bool)

(assert (=> (and b!3303911 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494)))))) t!253336) tb!171357))

(declare-fun result!214154 () Bool)

(assert (= result!214154 result!214152))

(assert (=> b!3304013 t!253336))

(declare-fun b_and!226329 () Bool)

(assert (= b_and!226311 (and (=> t!253336 result!214154) b_and!226329)))

(declare-fun t!253338 () Bool)

(declare-fun tb!171359 () Bool)

(assert (=> (and b!3303639 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494)))))) t!253338) tb!171359))

(declare-fun result!214156 () Bool)

(assert (= result!214156 result!214152))

(assert (=> b!3304013 t!253338))

(declare-fun b_and!226331 () Bool)

(assert (= b_and!226295 (and (=> t!253338 result!214156) b_and!226331)))

(declare-fun tb!171361 () Bool)

(declare-fun t!253340 () Bool)

(assert (=> (and b!3303892 (= (toChars!7282 (transformation!5291 (h!41900 (t!253273 rules!2135)))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494)))))) t!253340) tb!171361))

(declare-fun result!214158 () Bool)

(assert (= result!214158 result!214152))

(assert (=> b!3304013 t!253340))

(declare-fun b_and!226333 () Bool)

(assert (= b_and!226301 (and (=> t!253340 result!214158) b_and!226333)))

(declare-fun t!253342 () Bool)

(declare-fun tb!171363 () Bool)

(assert (=> (and b!3303638 (= (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494)))))) t!253342) tb!171363))

(declare-fun result!214160 () Bool)

(assert (= result!214160 result!214152))

(assert (=> b!3304013 t!253342))

(declare-fun b_and!226335 () Bool)

(assert (= b_and!226297 (and (=> t!253342 result!214160) b_and!226335)))

(declare-fun m!3629901 () Bool)

(assert (=> d!925197 m!3629901))

(declare-fun m!3629903 () Bool)

(assert (=> b!3304013 m!3629903))

(assert (=> b!3304013 m!3629903))

(declare-fun m!3629905 () Bool)

(assert (=> b!3304013 m!3629905))

(declare-fun m!3629907 () Bool)

(assert (=> b!3304014 m!3629907))

(assert (=> b!3303908 d!925197))

(declare-fun d!925199 () Bool)

(declare-fun res!1340063 () Bool)

(declare-fun e!2054765 () Bool)

(assert (=> d!925199 (=> res!1340063 e!2054765)))

(assert (=> d!925199 (= res!1340063 (not (is-Cons!36480 (t!253273 rules!2135))))))

(assert (=> d!925199 (= (sepAndNonSepRulesDisjointChars!1485 rules!2135 (t!253273 rules!2135)) e!2054765)))

(declare-fun b!3304016 () Bool)

(declare-fun e!2054766 () Bool)

(assert (=> b!3304016 (= e!2054765 e!2054766)))

(declare-fun res!1340064 () Bool)

(assert (=> b!3304016 (=> (not res!1340064) (not e!2054766))))

(assert (=> b!3304016 (= res!1340064 (ruleDisjointCharsFromAllFromOtherType!624 (h!41900 (t!253273 rules!2135)) rules!2135))))

(declare-fun b!3304017 () Bool)

(assert (=> b!3304017 (= e!2054766 (sepAndNonSepRulesDisjointChars!1485 rules!2135 (t!253273 (t!253273 rules!2135))))))

(assert (= (and d!925199 (not res!1340063)) b!3304016))

(assert (= (and b!3304016 res!1340064) b!3304017))

(declare-fun m!3629909 () Bool)

(assert (=> b!3304016 m!3629909))

(declare-fun m!3629911 () Bool)

(assert (=> b!3304017 m!3629911))

(assert (=> b!3303850 d!925199))

(declare-fun d!925201 () Bool)

(declare-fun res!1340065 () Bool)

(declare-fun e!2054767 () Bool)

(assert (=> d!925201 (=> res!1340065 e!2054767)))

(assert (=> d!925201 (= res!1340065 (is-Nil!36481 (t!253274 tokens!494)))))

(assert (=> d!925201 (= (forall!7553 (t!253274 tokens!494) lambda!118936) e!2054767)))

(declare-fun b!3304018 () Bool)

(declare-fun e!2054768 () Bool)

(assert (=> b!3304018 (= e!2054767 e!2054768)))

(declare-fun res!1340066 () Bool)

(assert (=> b!3304018 (=> (not res!1340066) (not e!2054768))))

(assert (=> b!3304018 (= res!1340066 (dynLambda!14940 lambda!118936 (h!41901 (t!253274 tokens!494))))))

(declare-fun b!3304019 () Bool)

(assert (=> b!3304019 (= e!2054768 (forall!7553 (t!253274 (t!253274 tokens!494)) lambda!118936))))

(assert (= (and d!925201 (not res!1340065)) b!3304018))

(assert (= (and b!3304018 res!1340066) b!3304019))

(declare-fun b_lambda!92265 () Bool)

(assert (=> (not b_lambda!92265) (not b!3304018)))

(declare-fun m!3629913 () Bool)

(assert (=> b!3304018 m!3629913))

(declare-fun m!3629915 () Bool)

(assert (=> b!3304019 m!3629915))

(assert (=> b!3303802 d!925201))

(declare-fun d!925203 () Bool)

(assert (=> d!925203 (= (inv!49435 (tag!5837 (rule!7795 (h!41901 (t!253274 tokens!494))))) (= (mod (str.len (value!171254 (tag!5837 (rule!7795 (h!41901 (t!253274 tokens!494)))))) 2) 0))))

(assert (=> b!3303910 d!925203))

(declare-fun d!925205 () Bool)

(declare-fun res!1340067 () Bool)

(declare-fun e!2054769 () Bool)

(assert (=> d!925205 (=> (not res!1340067) (not e!2054769))))

(assert (=> d!925205 (= res!1340067 (semiInverseModEq!2188 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))) (toValue!7423 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494)))))))))

(assert (=> d!925205 (= (inv!49439 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))) e!2054769)))

(declare-fun b!3304020 () Bool)

(assert (=> b!3304020 (= e!2054769 (equivClasses!2087 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))) (toValue!7423 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494)))))))))

(assert (= (and d!925205 res!1340067) b!3304020))

(declare-fun m!3629917 () Bool)

(assert (=> d!925205 m!3629917))

(declare-fun m!3629919 () Bool)

(assert (=> b!3304020 m!3629919))

(assert (=> b!3303910 d!925205))

(declare-fun d!925207 () Bool)

(declare-fun res!1340072 () Bool)

(declare-fun e!2054774 () Bool)

(assert (=> d!925207 (=> res!1340072 e!2054774)))

(assert (=> d!925207 (= res!1340072 (is-Nil!36480 rules!2135))))

(assert (=> d!925207 (= (noDuplicateTag!1944 thiss!18206 rules!2135 Nil!36486) e!2054774)))

(declare-fun b!3304025 () Bool)

(declare-fun e!2054775 () Bool)

(assert (=> b!3304025 (= e!2054774 e!2054775)))

(declare-fun res!1340073 () Bool)

(assert (=> b!3304025 (=> (not res!1340073) (not e!2054775))))

(declare-fun contains!6590 (List!36610 String!40941) Bool)

(assert (=> b!3304025 (= res!1340073 (not (contains!6590 Nil!36486 (tag!5837 (h!41900 rules!2135)))))))

(declare-fun b!3304026 () Bool)

(assert (=> b!3304026 (= e!2054775 (noDuplicateTag!1944 thiss!18206 (t!253273 rules!2135) (Cons!36486 (tag!5837 (h!41900 rules!2135)) Nil!36486)))))

(assert (= (and d!925207 (not res!1340072)) b!3304025))

(assert (= (and b!3304025 res!1340073) b!3304026))

(declare-fun m!3629921 () Bool)

(assert (=> b!3304025 m!3629921))

(declare-fun m!3629923 () Bool)

(assert (=> b!3304026 m!3629923))

(assert (=> b!3303805 d!925207))

(declare-fun d!925209 () Bool)

(assert (=> d!925209 true))

(declare-fun lt!1120027 () Bool)

(declare-fun rulesValidInductive!1804 (LexerInterface!4880 List!36604) Bool)

(assert (=> d!925209 (= lt!1120027 (rulesValidInductive!1804 thiss!18206 rules!2135))))

(declare-fun lambda!118955 () Int)

(declare-fun forall!7557 (List!36604 Int) Bool)

(assert (=> d!925209 (= lt!1120027 (forall!7557 rules!2135 lambda!118955))))

(assert (=> d!925209 (= (rulesValid!1948 thiss!18206 rules!2135) lt!1120027)))

(declare-fun bs!548861 () Bool)

(assert (= bs!548861 d!925209))

(declare-fun m!3629925 () Bool)

(assert (=> bs!548861 m!3629925))

(declare-fun m!3629927 () Bool)

(assert (=> bs!548861 m!3629927))

(assert (=> d!925139 d!925209))

(declare-fun b!3304041 () Bool)

(declare-fun e!2054780 () Bool)

(declare-fun e!2054781 () Bool)

(assert (=> b!3304041 (= e!2054780 e!2054781)))

(declare-fun res!1340091 () Bool)

(assert (=> b!3304041 (=> (not res!1340091) (not e!2054781))))

(declare-fun height!1601 (Conc!10958) Int)

(assert (=> b!3304041 (= res!1340091 (<= (- 1) (- (height!1601 (left!28414 (c!560510 lt!1119979))) (height!1601 (right!28744 (c!560510 lt!1119979))))))))

(declare-fun b!3304042 () Bool)

(declare-fun res!1340089 () Bool)

(assert (=> b!3304042 (=> (not res!1340089) (not e!2054781))))

(assert (=> b!3304042 (= res!1340089 (isBalanced!3274 (right!28744 (c!560510 lt!1119979))))))

(declare-fun b!3304043 () Bool)

(declare-fun res!1340090 () Bool)

(assert (=> b!3304043 (=> (not res!1340090) (not e!2054781))))

(assert (=> b!3304043 (= res!1340090 (isBalanced!3274 (left!28414 (c!560510 lt!1119979))))))

(declare-fun b!3304045 () Bool)

(declare-fun res!1340086 () Bool)

(assert (=> b!3304045 (=> (not res!1340086) (not e!2054781))))

(assert (=> b!3304045 (= res!1340086 (<= (- (height!1601 (left!28414 (c!560510 lt!1119979))) (height!1601 (right!28744 (c!560510 lt!1119979)))) 1))))

(declare-fun b!3304046 () Bool)

(declare-fun isEmpty!20626 (Conc!10958) Bool)

(assert (=> b!3304046 (= e!2054781 (not (isEmpty!20626 (right!28744 (c!560510 lt!1119979)))))))

(declare-fun d!925211 () Bool)

(declare-fun res!1340087 () Bool)

(assert (=> d!925211 (=> res!1340087 e!2054780)))

(assert (=> d!925211 (= res!1340087 (not (is-Node!10958 (c!560510 lt!1119979))))))

(assert (=> d!925211 (= (isBalanced!3274 (c!560510 lt!1119979)) e!2054780)))

(declare-fun b!3304044 () Bool)

(declare-fun res!1340088 () Bool)

(assert (=> b!3304044 (=> (not res!1340088) (not e!2054781))))

(assert (=> b!3304044 (= res!1340088 (not (isEmpty!20626 (left!28414 (c!560510 lt!1119979)))))))

(assert (= (and d!925211 (not res!1340087)) b!3304041))

(assert (= (and b!3304041 res!1340091) b!3304045))

(assert (= (and b!3304045 res!1340086) b!3304043))

(assert (= (and b!3304043 res!1340090) b!3304042))

(assert (= (and b!3304042 res!1340089) b!3304044))

(assert (= (and b!3304044 res!1340088) b!3304046))

(declare-fun m!3629929 () Bool)

(assert (=> b!3304041 m!3629929))

(declare-fun m!3629931 () Bool)

(assert (=> b!3304041 m!3629931))

(declare-fun m!3629933 () Bool)

(assert (=> b!3304046 m!3629933))

(declare-fun m!3629935 () Bool)

(assert (=> b!3304042 m!3629935))

(assert (=> b!3304045 m!3629929))

(assert (=> b!3304045 m!3629931))

(declare-fun m!3629937 () Bool)

(assert (=> b!3304044 m!3629937))

(declare-fun m!3629939 () Bool)

(assert (=> b!3304043 m!3629939))

(assert (=> b!3303768 d!925211))

(declare-fun bs!548862 () Bool)

(declare-fun d!925213 () Bool)

(assert (= bs!548862 (and d!925213 d!925193)))

(declare-fun lambda!118956 () Int)

(assert (=> bs!548862 (= (and (= (toChars!7282 (transformation!5291 (h!41900 rules!2135))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494))))) (= (toValue!7423 (transformation!5291 (h!41900 rules!2135))) (toValue!7423 (transformation!5291 (rule!7795 (h!41901 tokens!494)))))) (= lambda!118956 lambda!118952))))

(assert (=> d!925213 true))

(assert (=> d!925213 (< (dynLambda!14944 order!18931 (toChars!7282 (transformation!5291 (h!41900 rules!2135)))) (dynLambda!14950 order!18939 lambda!118956))))

(assert (=> d!925213 true))

(assert (=> d!925213 (< (dynLambda!14942 order!18927 (toValue!7423 (transformation!5291 (h!41900 rules!2135)))) (dynLambda!14950 order!18939 lambda!118956))))

(assert (=> d!925213 (= (semiInverseModEq!2188 (toChars!7282 (transformation!5291 (h!41900 rules!2135))) (toValue!7423 (transformation!5291 (h!41900 rules!2135)))) (Forall!1290 lambda!118956))))

(declare-fun bs!548863 () Bool)

(assert (= bs!548863 d!925213))

(declare-fun m!3629941 () Bool)

(assert (=> bs!548863 m!3629941))

(assert (=> d!925095 d!925213))

(declare-fun d!925215 () Bool)

(assert (=> d!925215 (= (isEmpty!20623 (originalCharacters!6005 separatorToken!241)) (is-Nil!36479 (originalCharacters!6005 separatorToken!241)))))

(assert (=> d!925141 d!925215))

(declare-fun d!925217 () Bool)

(assert (=> d!925217 (= (isEmpty!20623 (originalCharacters!6005 (h!41901 tokens!494))) (is-Nil!36479 (originalCharacters!6005 (h!41901 tokens!494))))))

(assert (=> d!925153 d!925217))

(declare-fun b!3304057 () Bool)

(declare-fun e!2054787 () List!36603)

(declare-fun list!13078 (IArray!21919) List!36603)

(assert (=> b!3304057 (= e!2054787 (list!13078 (xs!14095 (c!560509 (charsOf!3307 (h!41901 tokens!494))))))))

(declare-fun b!3304055 () Bool)

(declare-fun e!2054786 () List!36603)

(assert (=> b!3304055 (= e!2054786 Nil!36479)))

(declare-fun b!3304058 () Bool)

(assert (=> b!3304058 (= e!2054787 (++!8828 (list!13075 (left!28413 (c!560509 (charsOf!3307 (h!41901 tokens!494))))) (list!13075 (right!28743 (c!560509 (charsOf!3307 (h!41901 tokens!494)))))))))

(declare-fun d!925219 () Bool)

(declare-fun c!560547 () Bool)

(assert (=> d!925219 (= c!560547 (is-Empty!10957 (c!560509 (charsOf!3307 (h!41901 tokens!494)))))))

(assert (=> d!925219 (= (list!13075 (c!560509 (charsOf!3307 (h!41901 tokens!494)))) e!2054786)))

(declare-fun b!3304056 () Bool)

(assert (=> b!3304056 (= e!2054786 e!2054787)))

(declare-fun c!560548 () Bool)

(assert (=> b!3304056 (= c!560548 (is-Leaf!17214 (c!560509 (charsOf!3307 (h!41901 tokens!494)))))))

(assert (= (and d!925219 c!560547) b!3304055))

(assert (= (and d!925219 (not c!560547)) b!3304056))

(assert (= (and b!3304056 c!560548) b!3304057))

(assert (= (and b!3304056 (not c!560548)) b!3304058))

(declare-fun m!3629943 () Bool)

(assert (=> b!3304057 m!3629943))

(declare-fun m!3629945 () Bool)

(assert (=> b!3304058 m!3629945))

(declare-fun m!3629947 () Bool)

(assert (=> b!3304058 m!3629947))

(assert (=> b!3304058 m!3629945))

(assert (=> b!3304058 m!3629947))

(declare-fun m!3629949 () Bool)

(assert (=> b!3304058 m!3629949))

(assert (=> d!925147 d!925219))

(declare-fun d!925221 () Bool)

(assert (=> d!925221 (= (inv!16 (value!171255 (h!41901 tokens!494))) (= (charsToInt!0 (text!39094 (value!171255 (h!41901 tokens!494)))) (value!171246 (value!171255 (h!41901 tokens!494)))))))

(declare-fun bs!548864 () Bool)

(assert (= bs!548864 d!925221))

(declare-fun m!3629951 () Bool)

(assert (=> bs!548864 m!3629951))

(assert (=> b!3303795 d!925221))

(declare-fun b!3304061 () Bool)

(declare-fun e!2054789 () List!36603)

(assert (=> b!3304061 (= e!2054789 (list!13078 (xs!14095 (c!560509 lt!1119932))))))

(declare-fun b!3304059 () Bool)

(declare-fun e!2054788 () List!36603)

(assert (=> b!3304059 (= e!2054788 Nil!36479)))

(declare-fun b!3304062 () Bool)

(assert (=> b!3304062 (= e!2054789 (++!8828 (list!13075 (left!28413 (c!560509 lt!1119932))) (list!13075 (right!28743 (c!560509 lt!1119932)))))))

(declare-fun d!925223 () Bool)

(declare-fun c!560549 () Bool)

(assert (=> d!925223 (= c!560549 (is-Empty!10957 (c!560509 lt!1119932)))))

(assert (=> d!925223 (= (list!13075 (c!560509 lt!1119932)) e!2054788)))

(declare-fun b!3304060 () Bool)

(assert (=> b!3304060 (= e!2054788 e!2054789)))

(declare-fun c!560550 () Bool)

(assert (=> b!3304060 (= c!560550 (is-Leaf!17214 (c!560509 lt!1119932)))))

(assert (= (and d!925223 c!560549) b!3304059))

(assert (= (and d!925223 (not c!560549)) b!3304060))

(assert (= (and b!3304060 c!560550) b!3304061))

(assert (= (and b!3304060 (not c!560550)) b!3304062))

(declare-fun m!3629953 () Bool)

(assert (=> b!3304061 m!3629953))

(declare-fun m!3629955 () Bool)

(assert (=> b!3304062 m!3629955))

(declare-fun m!3629957 () Bool)

(assert (=> b!3304062 m!3629957))

(assert (=> b!3304062 m!3629955))

(assert (=> b!3304062 m!3629957))

(declare-fun m!3629959 () Bool)

(assert (=> b!3304062 m!3629959))

(assert (=> d!925115 d!925223))

(declare-fun d!925225 () Bool)

(declare-fun lt!1120030 () Bool)

(assert (=> d!925225 (= lt!1120030 (isEmpty!20623 (list!13072 (_2!21123 lt!1119952))))))

(declare-fun isEmpty!20627 (Conc!10957) Bool)

(assert (=> d!925225 (= lt!1120030 (isEmpty!20627 (c!560509 (_2!21123 lt!1119952))))))

(assert (=> d!925225 (= (isEmpty!20622 (_2!21123 lt!1119952)) lt!1120030)))

(declare-fun bs!548865 () Bool)

(assert (= bs!548865 d!925225))

(declare-fun m!3629961 () Bool)

(assert (=> bs!548865 m!3629961))

(assert (=> bs!548865 m!3629961))

(declare-fun m!3629963 () Bool)

(assert (=> bs!548865 m!3629963))

(declare-fun m!3629965 () Bool)

(assert (=> bs!548865 m!3629965))

(assert (=> b!3303755 d!925225))

(declare-fun d!925227 () Bool)

(declare-fun list!13079 (Conc!10958) List!36605)

(assert (=> d!925227 (= (list!13074 (singletonSeq!2387 separatorToken!241)) (list!13079 (c!560510 (singletonSeq!2387 separatorToken!241))))))

(declare-fun bs!548866 () Bool)

(assert (= bs!548866 d!925227))

(declare-fun m!3629967 () Bool)

(assert (=> bs!548866 m!3629967))

(assert (=> d!925097 d!925227))

(declare-fun d!925229 () Bool)

(assert (=> d!925229 (= (list!13074 (_1!21123 (lex!2208 thiss!18206 rules!2135 (print!1945 thiss!18206 (singletonSeq!2387 separatorToken!241))))) (list!13079 (c!560510 (_1!21123 (lex!2208 thiss!18206 rules!2135 (print!1945 thiss!18206 (singletonSeq!2387 separatorToken!241)))))))))

(declare-fun bs!548867 () Bool)

(assert (= bs!548867 d!925229))

(declare-fun m!3629969 () Bool)

(assert (=> bs!548867 m!3629969))

(assert (=> d!925097 d!925229))

(declare-fun d!925231 () Bool)

(declare-fun e!2054790 () Bool)

(assert (=> d!925231 e!2054790))

(declare-fun res!1340092 () Bool)

(assert (=> d!925231 (=> (not res!1340092) (not e!2054790))))

(declare-fun lt!1120031 () BalanceConc!21530)

(assert (=> d!925231 (= res!1340092 (= (list!13074 lt!1120031) (Cons!36481 separatorToken!241 Nil!36481)))))

(assert (=> d!925231 (= lt!1120031 (singleton!1027 separatorToken!241))))

(assert (=> d!925231 (= (singletonSeq!2387 separatorToken!241) lt!1120031)))

(declare-fun b!3304063 () Bool)

(assert (=> b!3304063 (= e!2054790 (isBalanced!3274 (c!560510 lt!1120031)))))

(assert (= (and d!925231 res!1340092) b!3304063))

(declare-fun m!3629971 () Bool)

(assert (=> d!925231 m!3629971))

(declare-fun m!3629973 () Bool)

(assert (=> d!925231 m!3629973))

(declare-fun m!3629975 () Bool)

(assert (=> b!3304063 m!3629975))

(assert (=> d!925097 d!925231))

(declare-fun d!925233 () Bool)

(declare-fun lt!1120034 () Int)

(declare-fun size!27556 (List!36605) Int)

(assert (=> d!925233 (= lt!1120034 (size!27556 (list!13074 (_1!21123 lt!1119952))))))

(declare-fun size!27557 (Conc!10958) Int)

(assert (=> d!925233 (= lt!1120034 (size!27557 (c!560510 (_1!21123 lt!1119952))))))

(assert (=> d!925233 (= (size!27552 (_1!21123 lt!1119952)) lt!1120034)))

(declare-fun bs!548868 () Bool)

(assert (= bs!548868 d!925233))

(declare-fun m!3629977 () Bool)

(assert (=> bs!548868 m!3629977))

(assert (=> bs!548868 m!3629977))

(declare-fun m!3629979 () Bool)

(assert (=> bs!548868 m!3629979))

(declare-fun m!3629981 () Bool)

(assert (=> bs!548868 m!3629981))

(assert (=> d!925097 d!925233))

(declare-fun d!925235 () Bool)

(declare-fun lt!1120035 () BalanceConc!21528)

(assert (=> d!925235 (= (list!13072 lt!1120035) (printList!1430 thiss!18206 (list!13074 (singletonSeq!2387 separatorToken!241))))))

(assert (=> d!925235 (= lt!1120035 (printTailRec!1377 thiss!18206 (singletonSeq!2387 separatorToken!241) 0 (BalanceConc!21529 Empty!10957)))))

(assert (=> d!925235 (= (print!1945 thiss!18206 (singletonSeq!2387 separatorToken!241)) lt!1120035)))

(declare-fun bs!548869 () Bool)

(assert (= bs!548869 d!925235))

(declare-fun m!3629983 () Bool)

(assert (=> bs!548869 m!3629983))

(assert (=> bs!548869 m!3629611))

(assert (=> bs!548869 m!3629615))

(assert (=> bs!548869 m!3629615))

(declare-fun m!3629985 () Bool)

(assert (=> bs!548869 m!3629985))

(assert (=> bs!548869 m!3629611))

(declare-fun m!3629987 () Bool)

(assert (=> bs!548869 m!3629987))

(assert (=> d!925097 d!925235))

(assert (=> d!925097 d!925091))

(declare-fun b!3304074 () Bool)

(declare-fun res!1340101 () Bool)

(declare-fun e!2054798 () Bool)

(assert (=> b!3304074 (=> (not res!1340101) (not e!2054798))))

(declare-fun lt!1120038 () tuple2!35978)

(declare-datatypes ((tuple2!35982 0))(
  ( (tuple2!35983 (_1!21125 List!36605) (_2!21125 List!36603)) )
))
(declare-fun lexList!1352 (LexerInterface!4880 List!36604 List!36603) tuple2!35982)

(assert (=> b!3304074 (= res!1340101 (= (list!13074 (_1!21123 lt!1120038)) (_1!21125 (lexList!1352 thiss!18206 rules!2135 (list!13072 (print!1945 thiss!18206 (singletonSeq!2387 separatorToken!241)))))))))

(declare-fun b!3304075 () Bool)

(assert (=> b!3304075 (= e!2054798 (= (list!13072 (_2!21123 lt!1120038)) (_2!21125 (lexList!1352 thiss!18206 rules!2135 (list!13072 (print!1945 thiss!18206 (singletonSeq!2387 separatorToken!241)))))))))

(declare-fun d!925237 () Bool)

(assert (=> d!925237 e!2054798))

(declare-fun res!1340099 () Bool)

(assert (=> d!925237 (=> (not res!1340099) (not e!2054798))))

(declare-fun e!2054797 () Bool)

(assert (=> d!925237 (= res!1340099 e!2054797)))

(declare-fun c!560553 () Bool)

(assert (=> d!925237 (= c!560553 (> (size!27552 (_1!21123 lt!1120038)) 0))))

(declare-fun lexTailRecV2!962 (LexerInterface!4880 List!36604 BalanceConc!21528 BalanceConc!21528 BalanceConc!21528 BalanceConc!21530) tuple2!35978)

(assert (=> d!925237 (= lt!1120038 (lexTailRecV2!962 thiss!18206 rules!2135 (print!1945 thiss!18206 (singletonSeq!2387 separatorToken!241)) (BalanceConc!21529 Empty!10957) (print!1945 thiss!18206 (singletonSeq!2387 separatorToken!241)) (BalanceConc!21531 Empty!10958)))))

(assert (=> d!925237 (= (lex!2208 thiss!18206 rules!2135 (print!1945 thiss!18206 (singletonSeq!2387 separatorToken!241))) lt!1120038)))

(declare-fun b!3304076 () Bool)

(declare-fun e!2054799 () Bool)

(declare-fun isEmpty!20628 (BalanceConc!21530) Bool)

(assert (=> b!3304076 (= e!2054799 (not (isEmpty!20628 (_1!21123 lt!1120038))))))

(declare-fun b!3304077 () Bool)

(assert (=> b!3304077 (= e!2054797 (= (_2!21123 lt!1120038) (print!1945 thiss!18206 (singletonSeq!2387 separatorToken!241))))))

(declare-fun b!3304078 () Bool)

(assert (=> b!3304078 (= e!2054797 e!2054799)))

(declare-fun res!1340100 () Bool)

(declare-fun size!27558 (BalanceConc!21528) Int)

(assert (=> b!3304078 (= res!1340100 (< (size!27558 (_2!21123 lt!1120038)) (size!27558 (print!1945 thiss!18206 (singletonSeq!2387 separatorToken!241)))))))

(assert (=> b!3304078 (=> (not res!1340100) (not e!2054799))))

(assert (= (and d!925237 c!560553) b!3304078))

(assert (= (and d!925237 (not c!560553)) b!3304077))

(assert (= (and b!3304078 res!1340100) b!3304076))

(assert (= (and d!925237 res!1340099) b!3304074))

(assert (= (and b!3304074 res!1340101) b!3304075))

(declare-fun m!3629989 () Bool)

(assert (=> b!3304076 m!3629989))

(declare-fun m!3629991 () Bool)

(assert (=> d!925237 m!3629991))

(assert (=> d!925237 m!3629605))

(assert (=> d!925237 m!3629605))

(declare-fun m!3629993 () Bool)

(assert (=> d!925237 m!3629993))

(declare-fun m!3629995 () Bool)

(assert (=> b!3304074 m!3629995))

(assert (=> b!3304074 m!3629605))

(declare-fun m!3629997 () Bool)

(assert (=> b!3304074 m!3629997))

(assert (=> b!3304074 m!3629997))

(declare-fun m!3629999 () Bool)

(assert (=> b!3304074 m!3629999))

(declare-fun m!3630001 () Bool)

(assert (=> b!3304078 m!3630001))

(assert (=> b!3304078 m!3629605))

(declare-fun m!3630003 () Bool)

(assert (=> b!3304078 m!3630003))

(declare-fun m!3630005 () Bool)

(assert (=> b!3304075 m!3630005))

(assert (=> b!3304075 m!3629605))

(assert (=> b!3304075 m!3629997))

(assert (=> b!3304075 m!3629997))

(assert (=> b!3304075 m!3629999))

(assert (=> d!925097 d!925237))

(declare-fun d!925239 () Bool)

(assert (=> d!925239 (= (list!13072 lt!1119955) (list!13075 (c!560509 lt!1119955)))))

(declare-fun bs!548870 () Bool)

(assert (= bs!548870 d!925239))

(declare-fun m!3630007 () Bool)

(assert (=> bs!548870 m!3630007))

(assert (=> d!925117 d!925239))

(declare-fun d!925241 () Bool)

(declare-fun c!560554 () Bool)

(assert (=> d!925241 (= c!560554 (is-Cons!36481 (list!13074 lt!1119931)))))

(declare-fun e!2054800 () List!36603)

(assert (=> d!925241 (= (printList!1430 thiss!18206 (list!13074 lt!1119931)) e!2054800)))

(declare-fun b!3304079 () Bool)

(assert (=> b!3304079 (= e!2054800 (++!8828 (list!13072 (charsOf!3307 (h!41901 (list!13074 lt!1119931)))) (printList!1430 thiss!18206 (t!253274 (list!13074 lt!1119931)))))))

(declare-fun b!3304080 () Bool)

(assert (=> b!3304080 (= e!2054800 Nil!36479)))

(assert (= (and d!925241 c!560554) b!3304079))

(assert (= (and d!925241 (not c!560554)) b!3304080))

(declare-fun m!3630009 () Bool)

(assert (=> b!3304079 m!3630009))

(assert (=> b!3304079 m!3630009))

(declare-fun m!3630011 () Bool)

(assert (=> b!3304079 m!3630011))

(declare-fun m!3630013 () Bool)

(assert (=> b!3304079 m!3630013))

(assert (=> b!3304079 m!3630011))

(assert (=> b!3304079 m!3630013))

(declare-fun m!3630015 () Bool)

(assert (=> b!3304079 m!3630015))

(assert (=> d!925117 d!925241))

(declare-fun d!925243 () Bool)

(assert (=> d!925243 (= (list!13074 lt!1119931) (list!13079 (c!560510 lt!1119931)))))

(declare-fun bs!548871 () Bool)

(assert (= bs!548871 d!925243))

(declare-fun m!3630017 () Bool)

(assert (=> bs!548871 m!3630017))

(assert (=> d!925117 d!925243))

(assert (=> d!925117 d!925119))

(declare-fun d!925245 () Bool)

(declare-fun isBalanced!3276 (Conc!10957) Bool)

(assert (=> d!925245 (= (inv!49443 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (value!171255 (h!41901 tokens!494)))) (isBalanced!3276 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (value!171255 (h!41901 tokens!494))))))))

(declare-fun bs!548872 () Bool)

(assert (= bs!548872 d!925245))

(declare-fun m!3630019 () Bool)

(assert (=> bs!548872 m!3630019))

(assert (=> tb!171327 d!925245))

(declare-fun d!925247 () Bool)

(declare-fun lt!1120041 () Int)

(assert (=> d!925247 (>= lt!1120041 0)))

(declare-fun e!2054803 () Int)

(assert (=> d!925247 (= lt!1120041 e!2054803)))

(declare-fun c!560557 () Bool)

(assert (=> d!925247 (= c!560557 (is-Nil!36479 (originalCharacters!6005 (h!41901 tokens!494))))))

(assert (=> d!925247 (= (size!27553 (originalCharacters!6005 (h!41901 tokens!494))) lt!1120041)))

(declare-fun b!3304085 () Bool)

(assert (=> b!3304085 (= e!2054803 0)))

(declare-fun b!3304086 () Bool)

(assert (=> b!3304086 (= e!2054803 (+ 1 (size!27553 (t!253272 (originalCharacters!6005 (h!41901 tokens!494))))))))

(assert (= (and d!925247 c!560557) b!3304085))

(assert (= (and d!925247 (not c!560557)) b!3304086))

(declare-fun m!3630021 () Bool)

(assert (=> b!3304086 m!3630021))

(assert (=> b!3303852 d!925247))

(declare-fun bs!548873 () Bool)

(declare-fun d!925249 () Bool)

(assert (= bs!548873 (and d!925249 d!925193)))

(declare-fun lambda!118957 () Int)

(assert (=> bs!548873 (= (and (= (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494))))) (= (toValue!7423 (transformation!5291 (rule!7795 separatorToken!241))) (toValue!7423 (transformation!5291 (rule!7795 (h!41901 tokens!494)))))) (= lambda!118957 lambda!118952))))

(declare-fun bs!548874 () Bool)

(assert (= bs!548874 (and d!925249 d!925213)))

(assert (=> bs!548874 (= (and (= (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (toChars!7282 (transformation!5291 (h!41900 rules!2135)))) (= (toValue!7423 (transformation!5291 (rule!7795 separatorToken!241))) (toValue!7423 (transformation!5291 (h!41900 rules!2135))))) (= lambda!118957 lambda!118956))))

(assert (=> d!925249 true))

(assert (=> d!925249 (< (dynLambda!14944 order!18931 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241)))) (dynLambda!14950 order!18939 lambda!118957))))

(assert (=> d!925249 true))

(assert (=> d!925249 (< (dynLambda!14942 order!18927 (toValue!7423 (transformation!5291 (rule!7795 separatorToken!241)))) (dynLambda!14950 order!18939 lambda!118957))))

(assert (=> d!925249 (= (semiInverseModEq!2188 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (toValue!7423 (transformation!5291 (rule!7795 separatorToken!241)))) (Forall!1290 lambda!118957))))

(declare-fun bs!548875 () Bool)

(assert (= bs!548875 d!925249))

(declare-fun m!3630023 () Bool)

(assert (=> bs!548875 m!3630023))

(assert (=> d!925133 d!925249))

(declare-fun d!925251 () Bool)

(assert (=> d!925251 (= (list!13072 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (value!171255 (h!41901 tokens!494)))) (list!13075 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (value!171255 (h!41901 tokens!494))))))))

(declare-fun bs!548876 () Bool)

(assert (= bs!548876 d!925251))

(declare-fun m!3630025 () Bool)

(assert (=> bs!548876 m!3630025))

(assert (=> b!3303851 d!925251))

(declare-fun d!925253 () Bool)

(declare-fun c!560560 () Bool)

(assert (=> d!925253 (= c!560560 (is-Node!10957 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (value!171255 (h!41901 tokens!494))))))))

(declare-fun e!2054808 () Bool)

(assert (=> d!925253 (= (inv!49442 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (value!171255 (h!41901 tokens!494))))) e!2054808)))

(declare-fun b!3304093 () Bool)

(declare-fun inv!49446 (Conc!10957) Bool)

(assert (=> b!3304093 (= e!2054808 (inv!49446 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (value!171255 (h!41901 tokens!494))))))))

(declare-fun b!3304094 () Bool)

(declare-fun e!2054809 () Bool)

(assert (=> b!3304094 (= e!2054808 e!2054809)))

(declare-fun res!1340106 () Bool)

(assert (=> b!3304094 (= res!1340106 (not (is-Leaf!17214 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (value!171255 (h!41901 tokens!494)))))))))

(assert (=> b!3304094 (=> res!1340106 e!2054809)))

(declare-fun b!3304095 () Bool)

(declare-fun inv!49447 (Conc!10957) Bool)

(assert (=> b!3304095 (= e!2054809 (inv!49447 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (value!171255 (h!41901 tokens!494))))))))

(assert (= (and d!925253 c!560560) b!3304093))

(assert (= (and d!925253 (not c!560560)) b!3304094))

(assert (= (and b!3304094 (not res!1340106)) b!3304095))

(declare-fun m!3630027 () Bool)

(assert (=> b!3304093 m!3630027))

(declare-fun m!3630029 () Bool)

(assert (=> b!3304095 m!3630029))

(assert (=> b!3303833 d!925253))

(declare-fun d!925255 () Bool)

(declare-fun charsToBigInt!0 (List!36602 Int) Int)

(assert (=> d!925255 (= (inv!15 (value!171255 separatorToken!241)) (= (charsToBigInt!0 (text!39096 (value!171255 separatorToken!241)) 0) (value!171250 (value!171255 separatorToken!241))))))

(declare-fun bs!548877 () Bool)

(assert (= bs!548877 d!925255))

(declare-fun m!3630031 () Bool)

(assert (=> bs!548877 m!3630031))

(assert (=> b!3303788 d!925255))

(declare-fun d!925257 () Bool)

(declare-fun lt!1120042 () Int)

(assert (=> d!925257 (>= lt!1120042 0)))

(declare-fun e!2054810 () Int)

(assert (=> d!925257 (= lt!1120042 e!2054810)))

(declare-fun c!560561 () Bool)

(assert (=> d!925257 (= c!560561 (is-Nil!36479 (originalCharacters!6005 separatorToken!241)))))

(assert (=> d!925257 (= (size!27553 (originalCharacters!6005 separatorToken!241)) lt!1120042)))

(declare-fun b!3304096 () Bool)

(assert (=> b!3304096 (= e!2054810 0)))

(declare-fun b!3304097 () Bool)

(assert (=> b!3304097 (= e!2054810 (+ 1 (size!27553 (t!253272 (originalCharacters!6005 separatorToken!241)))))))

(assert (= (and d!925257 c!560561) b!3304096))

(assert (= (and d!925257 (not c!560561)) b!3304097))

(declare-fun m!3630033 () Bool)

(assert (=> b!3304097 m!3630033))

(assert (=> b!3303811 d!925257))

(declare-fun d!925259 () Bool)

(declare-fun lt!1120043 () Int)

(assert (=> d!925259 (= lt!1120043 (size!27556 (list!13074 lt!1119931)))))

(assert (=> d!925259 (= lt!1120043 (size!27557 (c!560510 lt!1119931)))))

(assert (=> d!925259 (= (size!27552 lt!1119931) lt!1120043)))

(declare-fun bs!548878 () Bool)

(assert (= bs!548878 d!925259))

(assert (=> bs!548878 m!3629627))

(assert (=> bs!548878 m!3629627))

(declare-fun m!3630035 () Bool)

(assert (=> bs!548878 m!3630035))

(declare-fun m!3630037 () Bool)

(assert (=> bs!548878 m!3630037))

(assert (=> b!3303763 d!925259))

(declare-fun bm!240158 () Bool)

(declare-fun call!240163 () Bool)

(assert (=> bm!240158 (= call!240163 (ruleDisjointCharsFromAllFromOtherType!624 (h!41900 rules!2135) (t!253273 rules!2135)))))

(declare-fun b!3304106 () Bool)

(declare-fun e!2054818 () Bool)

(declare-fun e!2054817 () Bool)

(assert (=> b!3304106 (= e!2054818 e!2054817)))

(declare-fun res!1340113 () Bool)

(assert (=> b!3304106 (= res!1340113 (not (is-Cons!36480 rules!2135)))))

(assert (=> b!3304106 (=> res!1340113 e!2054817)))

(declare-fun b!3304107 () Bool)

(declare-fun e!2054819 () Bool)

(assert (=> b!3304107 (= e!2054818 e!2054819)))

(declare-fun res!1340112 () Bool)

(declare-fun rulesUseDisjointChars!294 (Rule!10382 Rule!10382) Bool)

(assert (=> b!3304107 (= res!1340112 (rulesUseDisjointChars!294 (h!41900 rules!2135) (h!41900 rules!2135)))))

(assert (=> b!3304107 (=> (not res!1340112) (not e!2054819))))

(declare-fun b!3304108 () Bool)

(assert (=> b!3304108 (= e!2054819 call!240163)))

(declare-fun b!3304109 () Bool)

(assert (=> b!3304109 (= e!2054817 call!240163)))

(declare-fun d!925261 () Bool)

(declare-fun c!560564 () Bool)

(assert (=> d!925261 (= c!560564 (and (is-Cons!36480 rules!2135) (not (= (isSeparator!5291 (h!41900 rules!2135)) (isSeparator!5291 (h!41900 rules!2135))))))))

(assert (=> d!925261 (= (ruleDisjointCharsFromAllFromOtherType!624 (h!41900 rules!2135) rules!2135) e!2054818)))

(assert (= (and d!925261 c!560564) b!3304107))

(assert (= (and d!925261 (not c!560564)) b!3304106))

(assert (= (and b!3304107 res!1340112) b!3304108))

(assert (= (and b!3304106 (not res!1340113)) b!3304109))

(assert (= (or b!3304108 b!3304109) bm!240158))

(declare-fun m!3630039 () Bool)

(assert (=> bm!240158 m!3630039))

(declare-fun m!3630041 () Bool)

(assert (=> b!3304107 m!3630041))

(assert (=> b!3303849 d!925261))

(declare-fun b!3304128 () Bool)

(declare-fun e!2054833 () Int)

(declare-fun e!2054832 () Int)

(assert (=> b!3304128 (= e!2054833 e!2054832)))

(declare-fun c!560575 () Bool)

(declare-fun call!240166 () Int)

(assert (=> b!3304128 (= c!560575 (>= 0 call!240166))))

(declare-fun b!3304129 () Bool)

(declare-fun e!2054834 () Bool)

(declare-fun lt!1120046 () List!36605)

(assert (=> b!3304129 (= e!2054834 (= (size!27556 lt!1120046) e!2054833))))

(declare-fun c!560576 () Bool)

(assert (=> b!3304129 (= c!560576 (<= 0 0))))

(declare-fun b!3304130 () Bool)

(assert (=> b!3304130 (= e!2054833 call!240166)))

(declare-fun b!3304132 () Bool)

(declare-fun e!2054831 () List!36605)

(assert (=> b!3304132 (= e!2054831 Nil!36481)))

(declare-fun b!3304133 () Bool)

(declare-fun e!2054830 () List!36605)

(assert (=> b!3304133 (= e!2054830 (drop!1902 (t!253274 lt!1119970) (- 0 1)))))

(declare-fun bm!240161 () Bool)

(assert (=> bm!240161 (= call!240166 (size!27556 lt!1119970))))

(declare-fun b!3304134 () Bool)

(assert (=> b!3304134 (= e!2054832 0)))

(declare-fun d!925263 () Bool)

(assert (=> d!925263 e!2054834))

(declare-fun res!1340117 () Bool)

(assert (=> d!925263 (=> (not res!1340117) (not e!2054834))))

(declare-fun content!4963 (List!36605) (Set Token!9948))

(assert (=> d!925263 (= res!1340117 (set.subset (content!4963 lt!1120046) (content!4963 lt!1119970)))))

(assert (=> d!925263 (= lt!1120046 e!2054831)))

(declare-fun c!560574 () Bool)

(assert (=> d!925263 (= c!560574 (is-Nil!36481 lt!1119970))))

(assert (=> d!925263 (= (drop!1902 lt!1119970 0) lt!1120046)))

(declare-fun b!3304131 () Bool)

(assert (=> b!3304131 (= e!2054832 (- call!240166 0))))

(declare-fun b!3304135 () Bool)

(assert (=> b!3304135 (= e!2054830 lt!1119970)))

(declare-fun b!3304136 () Bool)

(assert (=> b!3304136 (= e!2054831 e!2054830)))

(declare-fun c!560573 () Bool)

(assert (=> b!3304136 (= c!560573 (<= 0 0))))

(assert (= (and d!925263 c!560574) b!3304132))

(assert (= (and d!925263 (not c!560574)) b!3304136))

(assert (= (and b!3304136 c!560573) b!3304135))

(assert (= (and b!3304136 (not c!560573)) b!3304133))

(assert (= (and d!925263 res!1340117) b!3304129))

(assert (= (and b!3304129 c!560576) b!3304130))

(assert (= (and b!3304129 (not c!560576)) b!3304128))

(assert (= (and b!3304128 c!560575) b!3304134))

(assert (= (and b!3304128 (not c!560575)) b!3304131))

(assert (= (or b!3304130 b!3304128 b!3304131) bm!240161))

(declare-fun m!3630043 () Bool)

(assert (=> b!3304129 m!3630043))

(declare-fun m!3630045 () Bool)

(assert (=> b!3304133 m!3630045))

(declare-fun m!3630047 () Bool)

(assert (=> bm!240161 m!3630047))

(declare-fun m!3630049 () Bool)

(assert (=> d!925263 m!3630049))

(declare-fun m!3630051 () Bool)

(assert (=> d!925263 m!3630051))

(assert (=> b!3303765 d!925263))

(declare-fun b!3304137 () Bool)

(declare-fun e!2054838 () Int)

(declare-fun e!2054837 () Int)

(assert (=> b!3304137 (= e!2054838 e!2054837)))

(declare-fun c!560579 () Bool)

(declare-fun call!240167 () Int)

(assert (=> b!3304137 (= c!560579 (>= (+ 0 1) call!240167))))

(declare-fun b!3304138 () Bool)

(declare-fun e!2054839 () Bool)

(declare-fun lt!1120047 () List!36605)

(assert (=> b!3304138 (= e!2054839 (= (size!27556 lt!1120047) e!2054838))))

(declare-fun c!560580 () Bool)

(assert (=> b!3304138 (= c!560580 (<= (+ 0 1) 0))))

(declare-fun b!3304139 () Bool)

(assert (=> b!3304139 (= e!2054838 call!240167)))

(declare-fun b!3304141 () Bool)

(declare-fun e!2054836 () List!36605)

(assert (=> b!3304141 (= e!2054836 Nil!36481)))

(declare-fun b!3304142 () Bool)

(declare-fun e!2054835 () List!36605)

(assert (=> b!3304142 (= e!2054835 (drop!1902 (t!253274 lt!1119970) (- (+ 0 1) 1)))))

(declare-fun bm!240162 () Bool)

(assert (=> bm!240162 (= call!240167 (size!27556 lt!1119970))))

(declare-fun b!3304143 () Bool)

(assert (=> b!3304143 (= e!2054837 0)))

(declare-fun d!925265 () Bool)

(assert (=> d!925265 e!2054839))

(declare-fun res!1340118 () Bool)

(assert (=> d!925265 (=> (not res!1340118) (not e!2054839))))

(assert (=> d!925265 (= res!1340118 (set.subset (content!4963 lt!1120047) (content!4963 lt!1119970)))))

(assert (=> d!925265 (= lt!1120047 e!2054836)))

(declare-fun c!560578 () Bool)

(assert (=> d!925265 (= c!560578 (is-Nil!36481 lt!1119970))))

(assert (=> d!925265 (= (drop!1902 lt!1119970 (+ 0 1)) lt!1120047)))

(declare-fun b!3304140 () Bool)

(assert (=> b!3304140 (= e!2054837 (- call!240167 (+ 0 1)))))

(declare-fun b!3304144 () Bool)

(assert (=> b!3304144 (= e!2054835 lt!1119970)))

(declare-fun b!3304145 () Bool)

(assert (=> b!3304145 (= e!2054836 e!2054835)))

(declare-fun c!560577 () Bool)

(assert (=> b!3304145 (= c!560577 (<= (+ 0 1) 0))))

(assert (= (and d!925265 c!560578) b!3304141))

(assert (= (and d!925265 (not c!560578)) b!3304145))

(assert (= (and b!3304145 c!560577) b!3304144))

(assert (= (and b!3304145 (not c!560577)) b!3304142))

(assert (= (and d!925265 res!1340118) b!3304138))

(assert (= (and b!3304138 c!560580) b!3304139))

(assert (= (and b!3304138 (not c!560580)) b!3304137))

(assert (= (and b!3304137 c!560579) b!3304143))

(assert (= (and b!3304137 (not c!560579)) b!3304140))

(assert (= (or b!3304139 b!3304137 b!3304140) bm!240162))

(declare-fun m!3630053 () Bool)

(assert (=> b!3304138 m!3630053))

(declare-fun m!3630055 () Bool)

(assert (=> b!3304142 m!3630055))

(assert (=> bm!240162 m!3630047))

(declare-fun m!3630057 () Bool)

(assert (=> d!925265 m!3630057))

(assert (=> d!925265 m!3630051))

(assert (=> b!3303765 d!925265))

(declare-fun d!925267 () Bool)

(assert (=> d!925267 (= (tail!5264 (drop!1902 lt!1119970 0)) (t!253274 (drop!1902 lt!1119970 0)))))

(assert (=> b!3303765 d!925267))

(declare-fun b!3304146 () Bool)

(declare-fun e!2054843 () Int)

(declare-fun e!2054842 () Int)

(assert (=> b!3304146 (= e!2054843 e!2054842)))

(declare-fun c!560583 () Bool)

(declare-fun call!240168 () Int)

(assert (=> b!3304146 (= c!560583 (>= 0 call!240168))))

(declare-fun b!3304147 () Bool)

(declare-fun e!2054844 () Bool)

(declare-fun lt!1120048 () List!36605)

(assert (=> b!3304147 (= e!2054844 (= (size!27556 lt!1120048) e!2054843))))

(declare-fun c!560584 () Bool)

(assert (=> b!3304147 (= c!560584 (<= 0 0))))

(declare-fun b!3304148 () Bool)

(assert (=> b!3304148 (= e!2054843 call!240168)))

(declare-fun b!3304150 () Bool)

(declare-fun e!2054841 () List!36605)

(assert (=> b!3304150 (= e!2054841 Nil!36481)))

(declare-fun b!3304151 () Bool)

(declare-fun e!2054840 () List!36605)

(assert (=> b!3304151 (= e!2054840 (drop!1902 (t!253274 lt!1119973) (- 0 1)))))

(declare-fun bm!240163 () Bool)

(assert (=> bm!240163 (= call!240168 (size!27556 lt!1119973))))

(declare-fun b!3304152 () Bool)

(assert (=> b!3304152 (= e!2054842 0)))

(declare-fun d!925269 () Bool)

(assert (=> d!925269 e!2054844))

(declare-fun res!1340120 () Bool)

(assert (=> d!925269 (=> (not res!1340120) (not e!2054844))))

(assert (=> d!925269 (= res!1340120 (set.subset (content!4963 lt!1120048) (content!4963 lt!1119973)))))

(assert (=> d!925269 (= lt!1120048 e!2054841)))

(declare-fun c!560582 () Bool)

(assert (=> d!925269 (= c!560582 (is-Nil!36481 lt!1119973))))

(assert (=> d!925269 (= (drop!1902 lt!1119973 0) lt!1120048)))

(declare-fun b!3304149 () Bool)

(assert (=> b!3304149 (= e!2054842 (- call!240168 0))))

(declare-fun b!3304153 () Bool)

(assert (=> b!3304153 (= e!2054840 lt!1119973)))

(declare-fun b!3304154 () Bool)

(assert (=> b!3304154 (= e!2054841 e!2054840)))

(declare-fun c!560581 () Bool)

(assert (=> b!3304154 (= c!560581 (<= 0 0))))

(assert (= (and d!925269 c!560582) b!3304150))

(assert (= (and d!925269 (not c!560582)) b!3304154))

(assert (= (and b!3304154 c!560581) b!3304153))

(assert (= (and b!3304154 (not c!560581)) b!3304151))

(assert (= (and d!925269 res!1340120) b!3304147))

(assert (= (and b!3304147 c!560584) b!3304148))

(assert (= (and b!3304147 (not c!560584)) b!3304146))

(assert (= (and b!3304146 c!560583) b!3304152))

(assert (= (and b!3304146 (not c!560583)) b!3304149))

(assert (= (or b!3304148 b!3304146 b!3304149) bm!240163))

(declare-fun m!3630059 () Bool)

(assert (=> b!3304147 m!3630059))

(declare-fun m!3630061 () Bool)

(assert (=> b!3304151 m!3630061))

(declare-fun m!3630063 () Bool)

(assert (=> bm!240163 m!3630063))

(declare-fun m!3630065 () Bool)

(assert (=> d!925269 m!3630065))

(declare-fun m!3630067 () Bool)

(assert (=> d!925269 m!3630067))

(assert (=> b!3303765 d!925269))

(declare-fun d!925271 () Bool)

(declare-fun lt!1120049 () BalanceConc!21528)

(assert (=> d!925271 (= (list!13072 lt!1120049) (originalCharacters!6005 (apply!8377 lt!1119931 0)))))

(assert (=> d!925271 (= lt!1120049 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (apply!8377 lt!1119931 0)))) (value!171255 (apply!8377 lt!1119931 0))))))

(assert (=> d!925271 (= (charsOf!3307 (apply!8377 lt!1119931 0)) lt!1120049)))

(declare-fun b_lambda!92267 () Bool)

(assert (=> (not b_lambda!92267) (not d!925271)))

(declare-fun t!253346 () Bool)

(declare-fun tb!171365 () Bool)

(assert (=> (and b!3303638 (= (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (toChars!7282 (transformation!5291 (rule!7795 (apply!8377 lt!1119931 0))))) t!253346) tb!171365))

(declare-fun b!3304155 () Bool)

(declare-fun e!2054845 () Bool)

(declare-fun tp!1034432 () Bool)

(assert (=> b!3304155 (= e!2054845 (and (inv!49442 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (apply!8377 lt!1119931 0)))) (value!171255 (apply!8377 lt!1119931 0))))) tp!1034432))))

(declare-fun result!214162 () Bool)

(assert (=> tb!171365 (= result!214162 (and (inv!49443 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (apply!8377 lt!1119931 0)))) (value!171255 (apply!8377 lt!1119931 0)))) e!2054845))))

(assert (= tb!171365 b!3304155))

(declare-fun m!3630069 () Bool)

(assert (=> b!3304155 m!3630069))

(declare-fun m!3630071 () Bool)

(assert (=> tb!171365 m!3630071))

(assert (=> d!925271 t!253346))

(declare-fun b_and!226337 () Bool)

(assert (= b_and!226335 (and (=> t!253346 result!214162) b_and!226337)))

(declare-fun tb!171367 () Bool)

(declare-fun t!253348 () Bool)

(assert (=> (and b!3303639 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (toChars!7282 (transformation!5291 (rule!7795 (apply!8377 lt!1119931 0))))) t!253348) tb!171367))

(declare-fun result!214164 () Bool)

(assert (= result!214164 result!214162))

(assert (=> d!925271 t!253348))

(declare-fun b_and!226339 () Bool)

(assert (= b_and!226331 (and (=> t!253348 result!214164) b_and!226339)))

(declare-fun tb!171369 () Bool)

(declare-fun t!253350 () Bool)

(assert (=> (and b!3303911 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))) (toChars!7282 (transformation!5291 (rule!7795 (apply!8377 lt!1119931 0))))) t!253350) tb!171369))

(declare-fun result!214166 () Bool)

(assert (= result!214166 result!214162))

(assert (=> d!925271 t!253350))

(declare-fun b_and!226341 () Bool)

(assert (= b_and!226329 (and (=> t!253350 result!214166) b_and!226341)))

(declare-fun tb!171371 () Bool)

(declare-fun t!253352 () Bool)

(assert (=> (and b!3303632 (= (toChars!7282 (transformation!5291 (h!41900 rules!2135))) (toChars!7282 (transformation!5291 (rule!7795 (apply!8377 lt!1119931 0))))) t!253352) tb!171371))

(declare-fun result!214168 () Bool)

(assert (= result!214168 result!214162))

(assert (=> d!925271 t!253352))

(declare-fun b_and!226343 () Bool)

(assert (= b_and!226327 (and (=> t!253352 result!214168) b_and!226343)))

(declare-fun tb!171373 () Bool)

(declare-fun t!253354 () Bool)

(assert (=> (and b!3303892 (= (toChars!7282 (transformation!5291 (h!41900 (t!253273 rules!2135)))) (toChars!7282 (transformation!5291 (rule!7795 (apply!8377 lt!1119931 0))))) t!253354) tb!171373))

(declare-fun result!214170 () Bool)

(assert (= result!214170 result!214162))

(assert (=> d!925271 t!253354))

(declare-fun b_and!226345 () Bool)

(assert (= b_and!226333 (and (=> t!253354 result!214170) b_and!226345)))

(declare-fun m!3630073 () Bool)

(assert (=> d!925271 m!3630073))

(declare-fun m!3630075 () Bool)

(assert (=> d!925271 m!3630075))

(assert (=> b!3303765 d!925271))

(declare-fun d!925273 () Bool)

(assert (=> d!925273 (= (head!7126 (drop!1902 lt!1119973 0)) (apply!8378 lt!1119973 0))))

(declare-fun lt!1120052 () Unit!51424)

(declare-fun choose!19131 (List!36605 Int) Unit!51424)

(assert (=> d!925273 (= lt!1120052 (choose!19131 lt!1119973 0))))

(declare-fun e!2054848 () Bool)

(assert (=> d!925273 e!2054848))

(declare-fun res!1340123 () Bool)

(assert (=> d!925273 (=> (not res!1340123) (not e!2054848))))

(assert (=> d!925273 (= res!1340123 (>= 0 0))))

(assert (=> d!925273 (= (lemmaDropApply!1070 lt!1119973 0) lt!1120052)))

(declare-fun b!3304158 () Bool)

(assert (=> b!3304158 (= e!2054848 (< 0 (size!27556 lt!1119973)))))

(assert (= (and d!925273 res!1340123) b!3304158))

(assert (=> d!925273 m!3629649))

(assert (=> d!925273 m!3629649))

(assert (=> d!925273 m!3629651))

(assert (=> d!925273 m!3629663))

(declare-fun m!3630077 () Bool)

(assert (=> d!925273 m!3630077))

(assert (=> b!3304158 m!3630063))

(assert (=> b!3303765 d!925273))

(declare-fun d!925275 () Bool)

(declare-fun lt!1120055 () Token!9948)

(declare-fun contains!6591 (List!36605 Token!9948) Bool)

(assert (=> d!925275 (contains!6591 lt!1119973 lt!1120055)))

(declare-fun e!2054853 () Token!9948)

(assert (=> d!925275 (= lt!1120055 e!2054853)))

(declare-fun c!560587 () Bool)

(assert (=> d!925275 (= c!560587 (= 0 0))))

(declare-fun e!2054854 () Bool)

(assert (=> d!925275 e!2054854))

(declare-fun res!1340126 () Bool)

(assert (=> d!925275 (=> (not res!1340126) (not e!2054854))))

(assert (=> d!925275 (= res!1340126 (<= 0 0))))

(assert (=> d!925275 (= (apply!8378 lt!1119973 0) lt!1120055)))

(declare-fun b!3304165 () Bool)

(assert (=> b!3304165 (= e!2054854 (< 0 (size!27556 lt!1119973)))))

(declare-fun b!3304166 () Bool)

(assert (=> b!3304166 (= e!2054853 (head!7126 lt!1119973))))

(declare-fun b!3304167 () Bool)

(assert (=> b!3304167 (= e!2054853 (apply!8378 (tail!5264 lt!1119973) (- 0 1)))))

(assert (= (and d!925275 res!1340126) b!3304165))

(assert (= (and d!925275 c!560587) b!3304166))

(assert (= (and d!925275 (not c!560587)) b!3304167))

(declare-fun m!3630079 () Bool)

(assert (=> d!925275 m!3630079))

(assert (=> b!3304165 m!3630063))

(declare-fun m!3630081 () Bool)

(assert (=> b!3304166 m!3630081))

(declare-fun m!3630083 () Bool)

(assert (=> b!3304167 m!3630083))

(assert (=> b!3304167 m!3630083))

(declare-fun m!3630085 () Bool)

(assert (=> b!3304167 m!3630085))

(assert (=> b!3303765 d!925275))

(declare-fun d!925277 () Bool)

(declare-fun lt!1120058 () Token!9948)

(assert (=> d!925277 (= lt!1120058 (apply!8378 (list!13074 lt!1119931) 0))))

(declare-fun apply!8381 (Conc!10958 Int) Token!9948)

(assert (=> d!925277 (= lt!1120058 (apply!8381 (c!560510 lt!1119931) 0))))

(declare-fun e!2054857 () Bool)

(assert (=> d!925277 e!2054857))

(declare-fun res!1340129 () Bool)

(assert (=> d!925277 (=> (not res!1340129) (not e!2054857))))

(assert (=> d!925277 (= res!1340129 (<= 0 0))))

(assert (=> d!925277 (= (apply!8377 lt!1119931 0) lt!1120058)))

(declare-fun b!3304170 () Bool)

(assert (=> b!3304170 (= e!2054857 (< 0 (size!27552 lt!1119931)))))

(assert (= (and d!925277 res!1340129) b!3304170))

(assert (=> d!925277 m!3629627))

(assert (=> d!925277 m!3629627))

(declare-fun m!3630087 () Bool)

(assert (=> d!925277 m!3630087))

(declare-fun m!3630089 () Bool)

(assert (=> d!925277 m!3630089))

(assert (=> b!3304170 m!3629639))

(assert (=> b!3303765 d!925277))

(declare-fun b!3304182 () Bool)

(declare-fun e!2054860 () Bool)

(declare-fun lt!1120061 () BalanceConc!21528)

(assert (=> b!3304182 (= e!2054860 (= (list!13072 lt!1120061) (++!8828 (list!13072 (BalanceConc!21529 Empty!10957)) (list!13072 (charsOf!3307 (apply!8377 lt!1119931 0))))))))

(declare-fun d!925279 () Bool)

(assert (=> d!925279 e!2054860))

(declare-fun res!1340141 () Bool)

(assert (=> d!925279 (=> (not res!1340141) (not e!2054860))))

(declare-fun appendAssocInst!756 (Conc!10957 Conc!10957) Bool)

(assert (=> d!925279 (= res!1340141 (appendAssocInst!756 (c!560509 (BalanceConc!21529 Empty!10957)) (c!560509 (charsOf!3307 (apply!8377 lt!1119931 0)))))))

(declare-fun ++!8831 (Conc!10957 Conc!10957) Conc!10957)

(assert (=> d!925279 (= lt!1120061 (BalanceConc!21529 (++!8831 (c!560509 (BalanceConc!21529 Empty!10957)) (c!560509 (charsOf!3307 (apply!8377 lt!1119931 0))))))))

(assert (=> d!925279 (= (++!8827 (BalanceConc!21529 Empty!10957) (charsOf!3307 (apply!8377 lt!1119931 0))) lt!1120061)))

(declare-fun b!3304180 () Bool)

(declare-fun res!1340140 () Bool)

(assert (=> b!3304180 (=> (not res!1340140) (not e!2054860))))

(declare-fun height!1602 (Conc!10957) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3304180 (= res!1340140 (<= (height!1602 (++!8831 (c!560509 (BalanceConc!21529 Empty!10957)) (c!560509 (charsOf!3307 (apply!8377 lt!1119931 0))))) (+ (max!0 (height!1602 (c!560509 (BalanceConc!21529 Empty!10957))) (height!1602 (c!560509 (charsOf!3307 (apply!8377 lt!1119931 0))))) 1)))))

(declare-fun b!3304179 () Bool)

(declare-fun res!1340139 () Bool)

(assert (=> b!3304179 (=> (not res!1340139) (not e!2054860))))

(assert (=> b!3304179 (= res!1340139 (isBalanced!3276 (++!8831 (c!560509 (BalanceConc!21529 Empty!10957)) (c!560509 (charsOf!3307 (apply!8377 lt!1119931 0))))))))

(declare-fun b!3304181 () Bool)

(declare-fun res!1340138 () Bool)

(assert (=> b!3304181 (=> (not res!1340138) (not e!2054860))))

(assert (=> b!3304181 (= res!1340138 (>= (height!1602 (++!8831 (c!560509 (BalanceConc!21529 Empty!10957)) (c!560509 (charsOf!3307 (apply!8377 lt!1119931 0))))) (max!0 (height!1602 (c!560509 (BalanceConc!21529 Empty!10957))) (height!1602 (c!560509 (charsOf!3307 (apply!8377 lt!1119931 0)))))))))

(assert (= (and d!925279 res!1340141) b!3304179))

(assert (= (and b!3304179 res!1340139) b!3304180))

(assert (= (and b!3304180 res!1340140) b!3304181))

(assert (= (and b!3304181 res!1340138) b!3304182))

(declare-fun m!3630091 () Bool)

(assert (=> d!925279 m!3630091))

(declare-fun m!3630093 () Bool)

(assert (=> d!925279 m!3630093))

(declare-fun m!3630095 () Bool)

(assert (=> b!3304182 m!3630095))

(assert (=> b!3304182 m!3629635))

(assert (=> b!3304182 m!3629643))

(declare-fun m!3630097 () Bool)

(assert (=> b!3304182 m!3630097))

(assert (=> b!3304182 m!3629635))

(assert (=> b!3304182 m!3630097))

(declare-fun m!3630099 () Bool)

(assert (=> b!3304182 m!3630099))

(assert (=> b!3304179 m!3630093))

(assert (=> b!3304179 m!3630093))

(declare-fun m!3630101 () Bool)

(assert (=> b!3304179 m!3630101))

(declare-fun m!3630103 () Bool)

(assert (=> b!3304180 m!3630103))

(declare-fun m!3630105 () Bool)

(assert (=> b!3304180 m!3630105))

(declare-fun m!3630107 () Bool)

(assert (=> b!3304180 m!3630107))

(assert (=> b!3304180 m!3630103))

(assert (=> b!3304180 m!3630105))

(assert (=> b!3304180 m!3630093))

(assert (=> b!3304180 m!3630093))

(declare-fun m!3630109 () Bool)

(assert (=> b!3304180 m!3630109))

(assert (=> b!3304181 m!3630103))

(assert (=> b!3304181 m!3630105))

(assert (=> b!3304181 m!3630107))

(assert (=> b!3304181 m!3630103))

(assert (=> b!3304181 m!3630105))

(assert (=> b!3304181 m!3630093))

(assert (=> b!3304181 m!3630093))

(assert (=> b!3304181 m!3630109))

(assert (=> b!3303765 d!925279))

(declare-fun d!925281 () Bool)

(declare-fun lt!1120068 () BalanceConc!21528)

(assert (=> d!925281 (= (list!13072 lt!1120068) (printListTailRec!594 thiss!18206 (dropList!1111 lt!1119931 (+ 0 1)) (list!13072 (++!8827 (BalanceConc!21529 Empty!10957) (charsOf!3307 (apply!8377 lt!1119931 0))))))))

(declare-fun e!2054862 () BalanceConc!21528)

(assert (=> d!925281 (= lt!1120068 e!2054862)))

(declare-fun c!560591 () Bool)

(assert (=> d!925281 (= c!560591 (>= (+ 0 1) (size!27552 lt!1119931)))))

(declare-fun e!2054861 () Bool)

(assert (=> d!925281 e!2054861))

(declare-fun res!1340142 () Bool)

(assert (=> d!925281 (=> (not res!1340142) (not e!2054861))))

(assert (=> d!925281 (= res!1340142 (>= (+ 0 1) 0))))

(assert (=> d!925281 (= (printTailRec!1377 thiss!18206 lt!1119931 (+ 0 1) (++!8827 (BalanceConc!21529 Empty!10957) (charsOf!3307 (apply!8377 lt!1119931 0)))) lt!1120068)))

(declare-fun b!3304183 () Bool)

(assert (=> b!3304183 (= e!2054861 (<= (+ 0 1) (size!27552 lt!1119931)))))

(declare-fun b!3304184 () Bool)

(assert (=> b!3304184 (= e!2054862 (++!8827 (BalanceConc!21529 Empty!10957) (charsOf!3307 (apply!8377 lt!1119931 0))))))

(declare-fun b!3304185 () Bool)

(assert (=> b!3304185 (= e!2054862 (printTailRec!1377 thiss!18206 lt!1119931 (+ 0 1 1) (++!8827 (++!8827 (BalanceConc!21529 Empty!10957) (charsOf!3307 (apply!8377 lt!1119931 0))) (charsOf!3307 (apply!8377 lt!1119931 (+ 0 1))))))))

(declare-fun lt!1120065 () List!36605)

(assert (=> b!3304185 (= lt!1120065 (list!13074 lt!1119931))))

(declare-fun lt!1120066 () Unit!51424)

(assert (=> b!3304185 (= lt!1120066 (lemmaDropApply!1070 lt!1120065 (+ 0 1)))))

(assert (=> b!3304185 (= (head!7126 (drop!1902 lt!1120065 (+ 0 1))) (apply!8378 lt!1120065 (+ 0 1)))))

(declare-fun lt!1120067 () Unit!51424)

(assert (=> b!3304185 (= lt!1120067 lt!1120066)))

(declare-fun lt!1120062 () List!36605)

(assert (=> b!3304185 (= lt!1120062 (list!13074 lt!1119931))))

(declare-fun lt!1120064 () Unit!51424)

(assert (=> b!3304185 (= lt!1120064 (lemmaDropTail!954 lt!1120062 (+ 0 1)))))

(assert (=> b!3304185 (= (tail!5264 (drop!1902 lt!1120062 (+ 0 1))) (drop!1902 lt!1120062 (+ 0 1 1)))))

(declare-fun lt!1120063 () Unit!51424)

(assert (=> b!3304185 (= lt!1120063 lt!1120064)))

(assert (= (and d!925281 res!1340142) b!3304183))

(assert (= (and d!925281 c!560591) b!3304184))

(assert (= (and d!925281 (not c!560591)) b!3304185))

(declare-fun m!3630111 () Bool)

(assert (=> d!925281 m!3630111))

(declare-fun m!3630113 () Bool)

(assert (=> d!925281 m!3630113))

(assert (=> d!925281 m!3629645))

(declare-fun m!3630115 () Bool)

(assert (=> d!925281 m!3630115))

(assert (=> d!925281 m!3630111))

(assert (=> d!925281 m!3630115))

(declare-fun m!3630117 () Bool)

(assert (=> d!925281 m!3630117))

(assert (=> d!925281 m!3629639))

(assert (=> b!3304183 m!3629639))

(declare-fun m!3630119 () Bool)

(assert (=> b!3304185 m!3630119))

(declare-fun m!3630121 () Bool)

(assert (=> b!3304185 m!3630121))

(declare-fun m!3630123 () Bool)

(assert (=> b!3304185 m!3630123))

(declare-fun m!3630125 () Bool)

(assert (=> b!3304185 m!3630125))

(declare-fun m!3630127 () Bool)

(assert (=> b!3304185 m!3630127))

(declare-fun m!3630129 () Bool)

(assert (=> b!3304185 m!3630129))

(declare-fun m!3630131 () Bool)

(assert (=> b!3304185 m!3630131))

(assert (=> b!3304185 m!3629627))

(declare-fun m!3630133 () Bool)

(assert (=> b!3304185 m!3630133))

(declare-fun m!3630135 () Bool)

(assert (=> b!3304185 m!3630135))

(declare-fun m!3630137 () Bool)

(assert (=> b!3304185 m!3630137))

(declare-fun m!3630139 () Bool)

(assert (=> b!3304185 m!3630139))

(assert (=> b!3304185 m!3630127))

(assert (=> b!3304185 m!3630119))

(declare-fun m!3630141 () Bool)

(assert (=> b!3304185 m!3630141))

(assert (=> b!3304185 m!3629645))

(assert (=> b!3304185 m!3630121))

(assert (=> b!3304185 m!3630123))

(assert (=> b!3304185 m!3630135))

(assert (=> b!3303765 d!925281))

(declare-fun d!925283 () Bool)

(assert (=> d!925283 (= (tail!5264 (drop!1902 lt!1119970 0)) (drop!1902 lt!1119970 (+ 0 1)))))

(declare-fun lt!1120071 () Unit!51424)

(declare-fun choose!19132 (List!36605 Int) Unit!51424)

(assert (=> d!925283 (= lt!1120071 (choose!19132 lt!1119970 0))))

(declare-fun e!2054865 () Bool)

(assert (=> d!925283 e!2054865))

(declare-fun res!1340145 () Bool)

(assert (=> d!925283 (=> (not res!1340145) (not e!2054865))))

(assert (=> d!925283 (= res!1340145 (>= 0 0))))

(assert (=> d!925283 (= (lemmaDropTail!954 lt!1119970 0) lt!1120071)))

(declare-fun b!3304188 () Bool)

(assert (=> b!3304188 (= e!2054865 (< 0 (size!27556 lt!1119970)))))

(assert (= (and d!925283 res!1340145) b!3304188))

(assert (=> d!925283 m!3629657))

(assert (=> d!925283 m!3629657))

(assert (=> d!925283 m!3629659))

(assert (=> d!925283 m!3629655))

(declare-fun m!3630143 () Bool)

(assert (=> d!925283 m!3630143))

(assert (=> b!3304188 m!3630047))

(assert (=> b!3303765 d!925283))

(declare-fun d!925285 () Bool)

(assert (=> d!925285 (= (head!7126 (drop!1902 lt!1119973 0)) (h!41901 (drop!1902 lt!1119973 0)))))

(assert (=> b!3303765 d!925285))

(assert (=> b!3303765 d!925243))

(declare-fun b!3304189 () Bool)

(declare-fun e!2054866 () Bool)

(declare-fun e!2054868 () Bool)

(assert (=> b!3304189 (= e!2054866 e!2054868)))

(declare-fun c!560593 () Bool)

(assert (=> b!3304189 (= c!560593 (is-IntegerValue!16564 (value!171255 (h!41901 (t!253274 tokens!494)))))))

(declare-fun b!3304190 () Bool)

(declare-fun res!1340146 () Bool)

(declare-fun e!2054867 () Bool)

(assert (=> b!3304190 (=> res!1340146 e!2054867)))

(assert (=> b!3304190 (= res!1340146 (not (is-IntegerValue!16565 (value!171255 (h!41901 (t!253274 tokens!494))))))))

(assert (=> b!3304190 (= e!2054868 e!2054867)))

(declare-fun b!3304192 () Bool)

(assert (=> b!3304192 (= e!2054866 (inv!16 (value!171255 (h!41901 (t!253274 tokens!494)))))))

(declare-fun b!3304193 () Bool)

(assert (=> b!3304193 (= e!2054868 (inv!17 (value!171255 (h!41901 (t!253274 tokens!494)))))))

(declare-fun b!3304191 () Bool)

(assert (=> b!3304191 (= e!2054867 (inv!15 (value!171255 (h!41901 (t!253274 tokens!494)))))))

(declare-fun d!925287 () Bool)

(declare-fun c!560592 () Bool)

(assert (=> d!925287 (= c!560592 (is-IntegerValue!16563 (value!171255 (h!41901 (t!253274 tokens!494)))))))

(assert (=> d!925287 (= (inv!21 (value!171255 (h!41901 (t!253274 tokens!494)))) e!2054866)))

(assert (= (and d!925287 c!560592) b!3304192))

(assert (= (and d!925287 (not c!560592)) b!3304189))

(assert (= (and b!3304189 c!560593) b!3304193))

(assert (= (and b!3304189 (not c!560593)) b!3304190))

(assert (= (and b!3304190 (not res!1340146)) b!3304191))

(declare-fun m!3630145 () Bool)

(assert (=> b!3304192 m!3630145))

(declare-fun m!3630147 () Bool)

(assert (=> b!3304193 m!3630147))

(declare-fun m!3630149 () Bool)

(assert (=> b!3304191 m!3630149))

(assert (=> b!3303909 d!925287))

(declare-fun d!925289 () Bool)

(assert (=> d!925289 (= (inv!49443 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (value!171255 separatorToken!241))) (isBalanced!3276 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (value!171255 separatorToken!241)))))))

(declare-fun bs!548879 () Bool)

(assert (= bs!548879 d!925289))

(declare-fun m!3630151 () Bool)

(assert (=> bs!548879 m!3630151))

(assert (=> tb!171321 d!925289))

(declare-fun d!925291 () Bool)

(declare-fun charsToBigInt!1 (List!36602) Int)

(assert (=> d!925291 (= (inv!17 (value!171255 separatorToken!241)) (= (charsToBigInt!1 (text!39095 (value!171255 separatorToken!241))) (value!171247 (value!171255 separatorToken!241))))))

(declare-fun bs!548880 () Bool)

(assert (= bs!548880 d!925291))

(declare-fun m!3630153 () Bool)

(assert (=> bs!548880 m!3630153))

(assert (=> b!3303790 d!925291))

(declare-fun d!925293 () Bool)

(declare-fun e!2054871 () Bool)

(assert (=> d!925293 e!2054871))

(declare-fun res!1340149 () Bool)

(assert (=> d!925293 (=> (not res!1340149) (not e!2054871))))

(declare-fun lt!1120074 () BalanceConc!21530)

(assert (=> d!925293 (= res!1340149 (= (list!13074 lt!1120074) tokens!494))))

(declare-fun fromList!656 (List!36605) Conc!10958)

(assert (=> d!925293 (= lt!1120074 (BalanceConc!21531 (fromList!656 tokens!494)))))

(assert (=> d!925293 (= (fromListB!1599 tokens!494) lt!1120074)))

(declare-fun b!3304196 () Bool)

(assert (=> b!3304196 (= e!2054871 (isBalanced!3274 (fromList!656 tokens!494)))))

(assert (= (and d!925293 res!1340149) b!3304196))

(declare-fun m!3630155 () Bool)

(assert (=> d!925293 m!3630155))

(declare-fun m!3630157 () Bool)

(assert (=> d!925293 m!3630157))

(assert (=> b!3304196 m!3630157))

(assert (=> b!3304196 m!3630157))

(declare-fun m!3630159 () Bool)

(assert (=> b!3304196 m!3630159))

(assert (=> d!925145 d!925293))

(declare-fun d!925295 () Bool)

(declare-fun c!560595 () Bool)

(assert (=> d!925295 (= c!560595 (is-Node!10957 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (value!171255 separatorToken!241)))))))

(declare-fun e!2054872 () Bool)

(assert (=> d!925295 (= (inv!49442 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (value!171255 separatorToken!241)))) e!2054872)))

(declare-fun b!3304197 () Bool)

(assert (=> b!3304197 (= e!2054872 (inv!49446 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (value!171255 separatorToken!241)))))))

(declare-fun b!3304198 () Bool)

(declare-fun e!2054873 () Bool)

(assert (=> b!3304198 (= e!2054872 e!2054873)))

(declare-fun res!1340150 () Bool)

(assert (=> b!3304198 (= res!1340150 (not (is-Leaf!17214 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (value!171255 separatorToken!241))))))))

(assert (=> b!3304198 (=> res!1340150 e!2054873)))

(declare-fun b!3304199 () Bool)

(assert (=> b!3304199 (= e!2054873 (inv!49447 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (value!171255 separatorToken!241)))))))

(assert (= (and d!925295 c!560595) b!3304197))

(assert (= (and d!925295 (not c!560595)) b!3304198))

(assert (= (and b!3304198 (not res!1340150)) b!3304199))

(declare-fun m!3630161 () Bool)

(assert (=> b!3304197 m!3630161))

(declare-fun m!3630163 () Bool)

(assert (=> b!3304199 m!3630163))

(assert (=> b!3303816 d!925295))

(declare-fun d!925297 () Bool)

(assert (=> d!925297 true))

(declare-fun order!18941 () Int)

(declare-fun lambda!118960 () Int)

(declare-fun dynLambda!14951 (Int Int) Int)

(assert (=> d!925297 (< (dynLambda!14942 order!18927 (toValue!7423 (transformation!5291 (h!41900 rules!2135)))) (dynLambda!14951 order!18941 lambda!118960))))

(declare-fun Forall2!887 (Int) Bool)

(assert (=> d!925297 (= (equivClasses!2087 (toChars!7282 (transformation!5291 (h!41900 rules!2135))) (toValue!7423 (transformation!5291 (h!41900 rules!2135)))) (Forall2!887 lambda!118960))))

(declare-fun bs!548881 () Bool)

(assert (= bs!548881 d!925297))

(declare-fun m!3630165 () Bool)

(assert (=> bs!548881 m!3630165))

(assert (=> b!3303711 d!925297))

(declare-fun d!925299 () Bool)

(assert (=> d!925299 (= (inv!49435 (tag!5837 (h!41900 (t!253273 rules!2135)))) (= (mod (str.len (value!171254 (tag!5837 (h!41900 (t!253273 rules!2135))))) 2) 0))))

(assert (=> b!3303891 d!925299))

(declare-fun d!925301 () Bool)

(declare-fun res!1340153 () Bool)

(declare-fun e!2054876 () Bool)

(assert (=> d!925301 (=> (not res!1340153) (not e!2054876))))

(assert (=> d!925301 (= res!1340153 (semiInverseModEq!2188 (toChars!7282 (transformation!5291 (h!41900 (t!253273 rules!2135)))) (toValue!7423 (transformation!5291 (h!41900 (t!253273 rules!2135))))))))

(assert (=> d!925301 (= (inv!49439 (transformation!5291 (h!41900 (t!253273 rules!2135)))) e!2054876)))

(declare-fun b!3304204 () Bool)

(assert (=> b!3304204 (= e!2054876 (equivClasses!2087 (toChars!7282 (transformation!5291 (h!41900 (t!253273 rules!2135)))) (toValue!7423 (transformation!5291 (h!41900 (t!253273 rules!2135))))))))

(assert (= (and d!925301 res!1340153) b!3304204))

(declare-fun m!3630167 () Bool)

(assert (=> d!925301 m!3630167))

(declare-fun m!3630169 () Bool)

(assert (=> b!3304204 m!3630169))

(assert (=> b!3303891 d!925301))

(declare-fun bs!548882 () Bool)

(declare-fun d!925303 () Bool)

(assert (= bs!548882 (and d!925303 d!925297)))

(declare-fun lambda!118961 () Int)

(assert (=> bs!548882 (= (= (toValue!7423 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (toValue!7423 (transformation!5291 (h!41900 rules!2135)))) (= lambda!118961 lambda!118960))))

(assert (=> d!925303 true))

(assert (=> d!925303 (< (dynLambda!14942 order!18927 (toValue!7423 (transformation!5291 (rule!7795 (h!41901 tokens!494))))) (dynLambda!14951 order!18941 lambda!118961))))

(assert (=> d!925303 (= (equivClasses!2087 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (toValue!7423 (transformation!5291 (rule!7795 (h!41901 tokens!494))))) (Forall2!887 lambda!118961))))

(declare-fun bs!548883 () Bool)

(assert (= bs!548883 d!925303))

(declare-fun m!3630171 () Bool)

(assert (=> bs!548883 m!3630171))

(assert (=> b!3303775 d!925303))

(declare-fun d!925305 () Bool)

(assert (=> d!925305 (= (inv!17 (value!171255 (h!41901 tokens!494))) (= (charsToBigInt!1 (text!39095 (value!171255 (h!41901 tokens!494)))) (value!171247 (value!171255 (h!41901 tokens!494)))))))

(declare-fun bs!548884 () Bool)

(assert (= bs!548884 d!925305))

(declare-fun m!3630173 () Bool)

(assert (=> bs!548884 m!3630173))

(assert (=> b!3303796 d!925305))

(declare-fun d!925307 () Bool)

(declare-fun lt!1120075 () Token!9948)

(assert (=> d!925307 (= lt!1120075 (apply!8378 (list!13074 (_1!21123 lt!1119952)) 0))))

(assert (=> d!925307 (= lt!1120075 (apply!8381 (c!560510 (_1!21123 lt!1119952)) 0))))

(declare-fun e!2054877 () Bool)

(assert (=> d!925307 e!2054877))

(declare-fun res!1340154 () Bool)

(assert (=> d!925307 (=> (not res!1340154) (not e!2054877))))

(assert (=> d!925307 (= res!1340154 (<= 0 0))))

(assert (=> d!925307 (= (apply!8377 (_1!21123 lt!1119952) 0) lt!1120075)))

(declare-fun b!3304205 () Bool)

(assert (=> b!3304205 (= e!2054877 (< 0 (size!27552 (_1!21123 lt!1119952))))))

(assert (= (and d!925307 res!1340154) b!3304205))

(assert (=> d!925307 m!3629977))

(assert (=> d!925307 m!3629977))

(declare-fun m!3630175 () Bool)

(assert (=> d!925307 m!3630175))

(declare-fun m!3630177 () Bool)

(assert (=> d!925307 m!3630177))

(assert (=> b!3304205 m!3629613))

(assert (=> b!3303754 d!925307))

(declare-fun lt!1120076 () Bool)

(declare-fun d!925309 () Bool)

(assert (=> d!925309 (= lt!1120076 (isEmpty!20623 (list!13072 (_2!21123 (lex!2208 thiss!18206 rules!2135 (print!1945 thiss!18206 (singletonSeq!2387 separatorToken!241)))))))))

(assert (=> d!925309 (= lt!1120076 (isEmpty!20627 (c!560509 (_2!21123 (lex!2208 thiss!18206 rules!2135 (print!1945 thiss!18206 (singletonSeq!2387 separatorToken!241)))))))))

(assert (=> d!925309 (= (isEmpty!20622 (_2!21123 (lex!2208 thiss!18206 rules!2135 (print!1945 thiss!18206 (singletonSeq!2387 separatorToken!241))))) lt!1120076)))

(declare-fun bs!548885 () Bool)

(assert (= bs!548885 d!925309))

(declare-fun m!3630179 () Bool)

(assert (=> bs!548885 m!3630179))

(assert (=> bs!548885 m!3630179))

(declare-fun m!3630181 () Bool)

(assert (=> bs!548885 m!3630181))

(declare-fun m!3630183 () Bool)

(assert (=> bs!548885 m!3630183))

(assert (=> b!3303756 d!925309))

(assert (=> b!3303756 d!925237))

(assert (=> b!3303756 d!925235))

(assert (=> b!3303756 d!925231))

(declare-fun d!925311 () Bool)

(assert (=> d!925311 (= (inv!15 (value!171255 (h!41901 tokens!494))) (= (charsToBigInt!0 (text!39096 (value!171255 (h!41901 tokens!494))) 0) (value!171250 (value!171255 (h!41901 tokens!494)))))))

(declare-fun bs!548886 () Bool)

(assert (= bs!548886 d!925311))

(declare-fun m!3630185 () Bool)

(assert (=> bs!548886 m!3630185))

(assert (=> b!3303794 d!925311))

(declare-fun b!3304216 () Bool)

(declare-fun res!1340159 () Bool)

(declare-fun e!2054882 () Bool)

(assert (=> b!3304216 (=> (not res!1340159) (not e!2054882))))

(declare-fun lt!1120079 () List!36603)

(assert (=> b!3304216 (= res!1340159 (= (size!27553 lt!1120079) (+ (size!27553 (list!13072 (charsOf!3307 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481))))) (size!27553 (printList!1430 thiss!18206 (t!253274 (Cons!36481 (h!41901 tokens!494) Nil!36481)))))))))

(declare-fun b!3304217 () Bool)

(assert (=> b!3304217 (= e!2054882 (or (not (= (printList!1430 thiss!18206 (t!253274 (Cons!36481 (h!41901 tokens!494) Nil!36481))) Nil!36479)) (= lt!1120079 (list!13072 (charsOf!3307 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481)))))))))

(declare-fun d!925313 () Bool)

(assert (=> d!925313 e!2054882))

(declare-fun res!1340160 () Bool)

(assert (=> d!925313 (=> (not res!1340160) (not e!2054882))))

(declare-fun content!4964 (List!36603) (Set C!20286))

(assert (=> d!925313 (= res!1340160 (= (content!4964 lt!1120079) (set.union (content!4964 (list!13072 (charsOf!3307 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481))))) (content!4964 (printList!1430 thiss!18206 (t!253274 (Cons!36481 (h!41901 tokens!494) Nil!36481)))))))))

(declare-fun e!2054883 () List!36603)

(assert (=> d!925313 (= lt!1120079 e!2054883)))

(declare-fun c!560598 () Bool)

(assert (=> d!925313 (= c!560598 (is-Nil!36479 (list!13072 (charsOf!3307 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481))))))))

(assert (=> d!925313 (= (++!8828 (list!13072 (charsOf!3307 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481)))) (printList!1430 thiss!18206 (t!253274 (Cons!36481 (h!41901 tokens!494) Nil!36481)))) lt!1120079)))

(declare-fun b!3304215 () Bool)

(assert (=> b!3304215 (= e!2054883 (Cons!36479 (h!41899 (list!13072 (charsOf!3307 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481))))) (++!8828 (t!253272 (list!13072 (charsOf!3307 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481))))) (printList!1430 thiss!18206 (t!253274 (Cons!36481 (h!41901 tokens!494) Nil!36481))))))))

(declare-fun b!3304214 () Bool)

(assert (=> b!3304214 (= e!2054883 (printList!1430 thiss!18206 (t!253274 (Cons!36481 (h!41901 tokens!494) Nil!36481))))))

(assert (= (and d!925313 c!560598) b!3304214))

(assert (= (and d!925313 (not c!560598)) b!3304215))

(assert (= (and d!925313 res!1340160) b!3304216))

(assert (= (and b!3304216 res!1340159) b!3304217))

(declare-fun m!3630187 () Bool)

(assert (=> b!3304216 m!3630187))

(assert (=> b!3304216 m!3629673))

(declare-fun m!3630189 () Bool)

(assert (=> b!3304216 m!3630189))

(assert (=> b!3304216 m!3629675))

(declare-fun m!3630191 () Bool)

(assert (=> b!3304216 m!3630191))

(declare-fun m!3630193 () Bool)

(assert (=> d!925313 m!3630193))

(assert (=> d!925313 m!3629673))

(declare-fun m!3630195 () Bool)

(assert (=> d!925313 m!3630195))

(assert (=> d!925313 m!3629675))

(declare-fun m!3630197 () Bool)

(assert (=> d!925313 m!3630197))

(assert (=> b!3304215 m!3629675))

(declare-fun m!3630199 () Bool)

(assert (=> b!3304215 m!3630199))

(assert (=> b!3303773 d!925313))

(declare-fun d!925315 () Bool)

(assert (=> d!925315 (= (list!13072 (charsOf!3307 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481)))) (list!13075 (c!560509 (charsOf!3307 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481))))))))

(declare-fun bs!548887 () Bool)

(assert (= bs!548887 d!925315))

(declare-fun m!3630201 () Bool)

(assert (=> bs!548887 m!3630201))

(assert (=> b!3303773 d!925315))

(declare-fun d!925317 () Bool)

(declare-fun lt!1120080 () BalanceConc!21528)

(assert (=> d!925317 (= (list!13072 lt!1120080) (originalCharacters!6005 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481))))))

(assert (=> d!925317 (= lt!1120080 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481))))) (value!171255 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481)))))))

(assert (=> d!925317 (= (charsOf!3307 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481))) lt!1120080)))

(declare-fun b_lambda!92269 () Bool)

(assert (=> (not b_lambda!92269) (not d!925317)))

(declare-fun t!253356 () Bool)

(declare-fun tb!171375 () Bool)

(assert (=> (and b!3303892 (= (toChars!7282 (transformation!5291 (h!41900 (t!253273 rules!2135)))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481)))))) t!253356) tb!171375))

(declare-fun b!3304218 () Bool)

(declare-fun e!2054884 () Bool)

(declare-fun tp!1034433 () Bool)

(assert (=> b!3304218 (= e!2054884 (and (inv!49442 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481))))) (value!171255 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481)))))) tp!1034433))))

(declare-fun result!214172 () Bool)

(assert (=> tb!171375 (= result!214172 (and (inv!49443 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481))))) (value!171255 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481))))) e!2054884))))

(assert (= tb!171375 b!3304218))

(declare-fun m!3630203 () Bool)

(assert (=> b!3304218 m!3630203))

(declare-fun m!3630205 () Bool)

(assert (=> tb!171375 m!3630205))

(assert (=> d!925317 t!253356))

(declare-fun b_and!226347 () Bool)

(assert (= b_and!226345 (and (=> t!253356 result!214172) b_and!226347)))

(declare-fun t!253358 () Bool)

(declare-fun tb!171377 () Bool)

(assert (=> (and b!3303638 (= (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481)))))) t!253358) tb!171377))

(declare-fun result!214174 () Bool)

(assert (= result!214174 result!214172))

(assert (=> d!925317 t!253358))

(declare-fun b_and!226349 () Bool)

(assert (= b_and!226337 (and (=> t!253358 result!214174) b_and!226349)))

(declare-fun t!253360 () Bool)

(declare-fun tb!171379 () Bool)

(assert (=> (and b!3303639 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481)))))) t!253360) tb!171379))

(declare-fun result!214176 () Bool)

(assert (= result!214176 result!214172))

(assert (=> d!925317 t!253360))

(declare-fun b_and!226351 () Bool)

(assert (= b_and!226339 (and (=> t!253360 result!214176) b_and!226351)))

(declare-fun t!253362 () Bool)

(declare-fun tb!171381 () Bool)

(assert (=> (and b!3303911 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481)))))) t!253362) tb!171381))

(declare-fun result!214178 () Bool)

(assert (= result!214178 result!214172))

(assert (=> d!925317 t!253362))

(declare-fun b_and!226353 () Bool)

(assert (= b_and!226341 (and (=> t!253362 result!214178) b_and!226353)))

(declare-fun t!253364 () Bool)

(declare-fun tb!171383 () Bool)

(assert (=> (and b!3303632 (= (toChars!7282 (transformation!5291 (h!41900 rules!2135))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481)))))) t!253364) tb!171383))

(declare-fun result!214180 () Bool)

(assert (= result!214180 result!214172))

(assert (=> d!925317 t!253364))

(declare-fun b_and!226355 () Bool)

(assert (= b_and!226343 (and (=> t!253364 result!214180) b_and!226355)))

(declare-fun m!3630207 () Bool)

(assert (=> d!925317 m!3630207))

(declare-fun m!3630209 () Bool)

(assert (=> d!925317 m!3630209))

(assert (=> b!3303773 d!925317))

(declare-fun d!925319 () Bool)

(declare-fun c!560599 () Bool)

(assert (=> d!925319 (= c!560599 (is-Cons!36481 (t!253274 (Cons!36481 (h!41901 tokens!494) Nil!36481))))))

(declare-fun e!2054885 () List!36603)

(assert (=> d!925319 (= (printList!1430 thiss!18206 (t!253274 (Cons!36481 (h!41901 tokens!494) Nil!36481))) e!2054885)))

(declare-fun b!3304219 () Bool)

(assert (=> b!3304219 (= e!2054885 (++!8828 (list!13072 (charsOf!3307 (h!41901 (t!253274 (Cons!36481 (h!41901 tokens!494) Nil!36481))))) (printList!1430 thiss!18206 (t!253274 (t!253274 (Cons!36481 (h!41901 tokens!494) Nil!36481))))))))

(declare-fun b!3304220 () Bool)

(assert (=> b!3304220 (= e!2054885 Nil!36479)))

(assert (= (and d!925319 c!560599) b!3304219))

(assert (= (and d!925319 (not c!560599)) b!3304220))

(declare-fun m!3630211 () Bool)

(assert (=> b!3304219 m!3630211))

(assert (=> b!3304219 m!3630211))

(declare-fun m!3630213 () Bool)

(assert (=> b!3304219 m!3630213))

(declare-fun m!3630215 () Bool)

(assert (=> b!3304219 m!3630215))

(assert (=> b!3304219 m!3630213))

(assert (=> b!3304219 m!3630215))

(declare-fun m!3630217 () Bool)

(assert (=> b!3304219 m!3630217))

(assert (=> b!3303773 d!925319))

(declare-fun bs!548896 () Bool)

(declare-fun d!925321 () Bool)

(assert (= bs!548896 (and d!925321 b!3303640)))

(declare-fun lambda!118970 () Int)

(assert (=> bs!548896 (not (= lambda!118970 lambda!118936))))

(declare-fun bs!548897 () Bool)

(assert (= bs!548897 (and d!925321 d!925143)))

(assert (=> bs!548897 (= lambda!118970 lambda!118944)))

(declare-fun b!3304328 () Bool)

(declare-fun e!2054953 () Bool)

(assert (=> b!3304328 (= e!2054953 true)))

(declare-fun b!3304327 () Bool)

(declare-fun e!2054952 () Bool)

(assert (=> b!3304327 (= e!2054952 e!2054953)))

(declare-fun b!3304326 () Bool)

(declare-fun e!2054951 () Bool)

(assert (=> b!3304326 (= e!2054951 e!2054952)))

(assert (=> d!925321 e!2054951))

(assert (= b!3304327 b!3304328))

(assert (= b!3304326 b!3304327))

(assert (= (and d!925321 (is-Cons!36480 rules!2135)) b!3304326))

(assert (=> b!3304328 (< (dynLambda!14942 order!18927 (toValue!7423 (transformation!5291 (h!41900 rules!2135)))) (dynLambda!14943 order!18929 lambda!118970))))

(assert (=> b!3304328 (< (dynLambda!14944 order!18931 (toChars!7282 (transformation!5291 (h!41900 rules!2135)))) (dynLambda!14943 order!18929 lambda!118970))))

(assert (=> d!925321 true))

(declare-fun lt!1120120 () Bool)

(assert (=> d!925321 (= lt!1120120 (forall!7553 (list!13074 (seqFromList!3643 tokens!494)) lambda!118970))))

(declare-fun e!2054950 () Bool)

(assert (=> d!925321 (= lt!1120120 e!2054950)))

(declare-fun res!1340208 () Bool)

(assert (=> d!925321 (=> res!1340208 e!2054950)))

(assert (=> d!925321 (= res!1340208 (not (is-Cons!36481 (list!13074 (seqFromList!3643 tokens!494)))))))

(assert (=> d!925321 (not (isEmpty!20620 rules!2135))))

(assert (=> d!925321 (= (rulesProduceEachTokenIndividuallyList!1760 thiss!18206 rules!2135 (list!13074 (seqFromList!3643 tokens!494))) lt!1120120)))

(declare-fun b!3304324 () Bool)

(declare-fun e!2054949 () Bool)

(assert (=> b!3304324 (= e!2054950 e!2054949)))

(declare-fun res!1340209 () Bool)

(assert (=> b!3304324 (=> (not res!1340209) (not e!2054949))))

(assert (=> b!3304324 (= res!1340209 (rulesProduceIndividualToken!2372 thiss!18206 rules!2135 (h!41901 (list!13074 (seqFromList!3643 tokens!494)))))))

(declare-fun b!3304325 () Bool)

(assert (=> b!3304325 (= e!2054949 (rulesProduceEachTokenIndividuallyList!1760 thiss!18206 rules!2135 (t!253274 (list!13074 (seqFromList!3643 tokens!494)))))))

(assert (= (and d!925321 (not res!1340208)) b!3304324))

(assert (= (and b!3304324 res!1340209) b!3304325))

(assert (=> d!925321 m!3629719))

(declare-fun m!3630373 () Bool)

(assert (=> d!925321 m!3630373))

(assert (=> d!925321 m!3629519))

(declare-fun m!3630375 () Bool)

(assert (=> b!3304324 m!3630375))

(declare-fun m!3630377 () Bool)

(assert (=> b!3304325 m!3630377))

(assert (=> b!3303819 d!925321))

(declare-fun d!925379 () Bool)

(assert (=> d!925379 (= (list!13074 (seqFromList!3643 tokens!494)) (list!13079 (c!560510 (seqFromList!3643 tokens!494))))))

(declare-fun bs!548899 () Bool)

(assert (= bs!548899 d!925379))

(declare-fun m!3630379 () Bool)

(assert (=> bs!548899 m!3630379))

(assert (=> b!3303819 d!925379))

(declare-fun bs!548900 () Bool)

(declare-fun d!925381 () Bool)

(assert (= bs!548900 (and d!925381 d!925297)))

(declare-fun lambda!118971 () Int)

(assert (=> bs!548900 (= (= (toValue!7423 (transformation!5291 (rule!7795 separatorToken!241))) (toValue!7423 (transformation!5291 (h!41900 rules!2135)))) (= lambda!118971 lambda!118960))))

(declare-fun bs!548901 () Bool)

(assert (= bs!548901 (and d!925381 d!925303)))

(assert (=> bs!548901 (= (= (toValue!7423 (transformation!5291 (rule!7795 separatorToken!241))) (toValue!7423 (transformation!5291 (rule!7795 (h!41901 tokens!494))))) (= lambda!118971 lambda!118961))))

(assert (=> d!925381 true))

(assert (=> d!925381 (< (dynLambda!14942 order!18927 (toValue!7423 (transformation!5291 (rule!7795 separatorToken!241)))) (dynLambda!14951 order!18941 lambda!118971))))

(assert (=> d!925381 (= (equivClasses!2087 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (toValue!7423 (transformation!5291 (rule!7795 separatorToken!241)))) (Forall2!887 lambda!118971))))

(declare-fun bs!548902 () Bool)

(assert (= bs!548902 d!925381))

(declare-fun m!3630381 () Bool)

(assert (=> bs!548902 m!3630381))

(assert (=> b!3303791 d!925381))

(declare-fun d!925383 () Bool)

(assert (=> d!925383 (= (list!13072 lt!1119987) (list!13075 (c!560509 lt!1119987)))))

(declare-fun bs!548903 () Bool)

(assert (= bs!548903 d!925383))

(declare-fun m!3630383 () Bool)

(assert (=> bs!548903 m!3630383))

(assert (=> d!925149 d!925383))

(declare-fun d!925385 () Bool)

(assert (=> d!925385 (= (list!13074 lt!1119979) (list!13079 (c!560510 lt!1119979)))))

(declare-fun bs!548904 () Bool)

(assert (= bs!548904 d!925385))

(declare-fun m!3630385 () Bool)

(assert (=> bs!548904 m!3630385))

(assert (=> d!925121 d!925385))

(declare-fun d!925387 () Bool)

(declare-fun e!2054962 () Bool)

(assert (=> d!925387 e!2054962))

(declare-fun res!1340212 () Bool)

(assert (=> d!925387 (=> (not res!1340212) (not e!2054962))))

(declare-fun lt!1120123 () BalanceConc!21530)

(assert (=> d!925387 (= res!1340212 (= (list!13074 lt!1120123) (Cons!36481 (h!41901 tokens!494) Nil!36481)))))

(declare-fun choose!19133 (Token!9948) BalanceConc!21530)

(assert (=> d!925387 (= lt!1120123 (choose!19133 (h!41901 tokens!494)))))

(assert (=> d!925387 (= (singleton!1027 (h!41901 tokens!494)) lt!1120123)))

(declare-fun b!3304343 () Bool)

(assert (=> b!3304343 (= e!2054962 (isBalanced!3274 (c!560510 lt!1120123)))))

(assert (= (and d!925387 res!1340212) b!3304343))

(declare-fun m!3630397 () Bool)

(assert (=> d!925387 m!3630397))

(declare-fun m!3630399 () Bool)

(assert (=> d!925387 m!3630399))

(declare-fun m!3630401 () Bool)

(assert (=> b!3304343 m!3630401))

(assert (=> d!925121 d!925387))

(declare-fun d!925393 () Bool)

(declare-fun res!1340213 () Bool)

(declare-fun e!2054963 () Bool)

(assert (=> d!925393 (=> res!1340213 e!2054963)))

(assert (=> d!925393 (= res!1340213 (is-Nil!36481 (list!13074 (seqFromList!3643 tokens!494))))))

(assert (=> d!925393 (= (forall!7553 (list!13074 (seqFromList!3643 tokens!494)) lambda!118944) e!2054963)))

(declare-fun b!3304344 () Bool)

(declare-fun e!2054964 () Bool)

(assert (=> b!3304344 (= e!2054963 e!2054964)))

(declare-fun res!1340214 () Bool)

(assert (=> b!3304344 (=> (not res!1340214) (not e!2054964))))

(assert (=> b!3304344 (= res!1340214 (dynLambda!14940 lambda!118944 (h!41901 (list!13074 (seqFromList!3643 tokens!494)))))))

(declare-fun b!3304345 () Bool)

(assert (=> b!3304345 (= e!2054964 (forall!7553 (t!253274 (list!13074 (seqFromList!3643 tokens!494))) lambda!118944))))

(assert (= (and d!925393 (not res!1340213)) b!3304344))

(assert (= (and b!3304344 res!1340214) b!3304345))

(declare-fun b_lambda!92275 () Bool)

(assert (=> (not b_lambda!92275) (not b!3304344)))

(declare-fun m!3630403 () Bool)

(assert (=> b!3304344 m!3630403))

(declare-fun m!3630405 () Bool)

(assert (=> b!3304345 m!3630405))

(assert (=> d!925143 d!925393))

(assert (=> d!925143 d!925379))

(declare-fun d!925395 () Bool)

(declare-fun lt!1120126 () Bool)

(assert (=> d!925395 (= lt!1120126 (forall!7553 (list!13074 (seqFromList!3643 tokens!494)) lambda!118944))))

(declare-fun forall!7558 (Conc!10958 Int) Bool)

(assert (=> d!925395 (= lt!1120126 (forall!7558 (c!560510 (seqFromList!3643 tokens!494)) lambda!118944))))

(assert (=> d!925395 (= (forall!7555 (seqFromList!3643 tokens!494) lambda!118944) lt!1120126)))

(declare-fun bs!548907 () Bool)

(assert (= bs!548907 d!925395))

(assert (=> bs!548907 m!3629503))

(assert (=> bs!548907 m!3629719))

(assert (=> bs!548907 m!3629719))

(assert (=> bs!548907 m!3629721))

(declare-fun m!3630411 () Bool)

(assert (=> bs!548907 m!3630411))

(assert (=> d!925143 d!925395))

(assert (=> d!925143 d!925091))

(declare-fun d!925399 () Bool)

(assert (=> d!925399 (= (dropList!1111 lt!1119931 0) (drop!1902 (list!13079 (c!560510 lt!1119931)) 0))))

(declare-fun bs!548910 () Bool)

(assert (= bs!548910 d!925399))

(assert (=> bs!548910 m!3630017))

(assert (=> bs!548910 m!3630017))

(declare-fun m!3630417 () Bool)

(assert (=> bs!548910 m!3630417))

(assert (=> d!925119 d!925399))

(declare-fun d!925405 () Bool)

(assert (=> d!925405 (= (list!13072 (BalanceConc!21529 Empty!10957)) (list!13075 (c!560509 (BalanceConc!21529 Empty!10957))))))

(declare-fun bs!548911 () Bool)

(assert (= bs!548911 d!925405))

(declare-fun m!3630419 () Bool)

(assert (=> bs!548911 m!3630419))

(assert (=> d!925119 d!925405))

(declare-fun d!925407 () Bool)

(declare-fun lt!1120144 () List!36603)

(assert (=> d!925407 (= lt!1120144 (++!8828 (list!13072 (BalanceConc!21529 Empty!10957)) (printList!1430 thiss!18206 (dropList!1111 lt!1119931 0))))))

(declare-fun e!2054978 () List!36603)

(assert (=> d!925407 (= lt!1120144 e!2054978)))

(declare-fun c!560642 () Bool)

(assert (=> d!925407 (= c!560642 (is-Cons!36481 (dropList!1111 lt!1119931 0)))))

(assert (=> d!925407 (= (printListTailRec!594 thiss!18206 (dropList!1111 lt!1119931 0) (list!13072 (BalanceConc!21529 Empty!10957))) lt!1120144)))

(declare-fun b!3304367 () Bool)

(assert (=> b!3304367 (= e!2054978 (printListTailRec!594 thiss!18206 (t!253274 (dropList!1111 lt!1119931 0)) (++!8828 (list!13072 (BalanceConc!21529 Empty!10957)) (list!13072 (charsOf!3307 (h!41901 (dropList!1111 lt!1119931 0)))))))))

(declare-fun lt!1120145 () List!36603)

(assert (=> b!3304367 (= lt!1120145 (list!13072 (charsOf!3307 (h!41901 (dropList!1111 lt!1119931 0)))))))

(declare-fun lt!1120143 () List!36603)

(assert (=> b!3304367 (= lt!1120143 (printList!1430 thiss!18206 (t!253274 (dropList!1111 lt!1119931 0))))))

(declare-fun lt!1120149 () Unit!51424)

(declare-fun lemmaConcatAssociativity!1817 (List!36603 List!36603 List!36603) Unit!51424)

(assert (=> b!3304367 (= lt!1120149 (lemmaConcatAssociativity!1817 (list!13072 (BalanceConc!21529 Empty!10957)) lt!1120145 lt!1120143))))

(assert (=> b!3304367 (= (++!8828 (++!8828 (list!13072 (BalanceConc!21529 Empty!10957)) lt!1120145) lt!1120143) (++!8828 (list!13072 (BalanceConc!21529 Empty!10957)) (++!8828 lt!1120145 lt!1120143)))))

(declare-fun lt!1120146 () Unit!51424)

(assert (=> b!3304367 (= lt!1120146 lt!1120149)))

(declare-fun b!3304368 () Bool)

(assert (=> b!3304368 (= e!2054978 (list!13072 (BalanceConc!21529 Empty!10957)))))

(assert (= (and d!925407 c!560642) b!3304367))

(assert (= (and d!925407 (not c!560642)) b!3304368))

(assert (=> d!925407 m!3629631))

(declare-fun m!3630437 () Bool)

(assert (=> d!925407 m!3630437))

(assert (=> d!925407 m!3629635))

(assert (=> d!925407 m!3630437))

(declare-fun m!3630439 () Bool)

(assert (=> d!925407 m!3630439))

(declare-fun m!3630441 () Bool)

(assert (=> b!3304367 m!3630441))

(declare-fun m!3630445 () Bool)

(assert (=> b!3304367 m!3630445))

(assert (=> b!3304367 m!3629635))

(declare-fun m!3630447 () Bool)

(assert (=> b!3304367 m!3630447))

(assert (=> b!3304367 m!3629635))

(declare-fun m!3630449 () Bool)

(assert (=> b!3304367 m!3630449))

(declare-fun m!3630451 () Bool)

(assert (=> b!3304367 m!3630451))

(declare-fun m!3630453 () Bool)

(assert (=> b!3304367 m!3630453))

(declare-fun m!3630455 () Bool)

(assert (=> b!3304367 m!3630455))

(declare-fun m!3630457 () Bool)

(assert (=> b!3304367 m!3630457))

(assert (=> b!3304367 m!3629635))

(declare-fun m!3630459 () Bool)

(assert (=> b!3304367 m!3630459))

(assert (=> b!3304367 m!3630453))

(assert (=> b!3304367 m!3630459))

(declare-fun m!3630461 () Bool)

(assert (=> b!3304367 m!3630461))

(assert (=> b!3304367 m!3630449))

(assert (=> b!3304367 m!3629635))

(assert (=> b!3304367 m!3630455))

(assert (=> b!3304367 m!3630441))

(assert (=> d!925119 d!925407))

(declare-fun d!925421 () Bool)

(assert (=> d!925421 (= (list!13072 lt!1119976) (list!13075 (c!560509 lt!1119976)))))

(declare-fun bs!548917 () Bool)

(assert (= bs!548917 d!925421))

(declare-fun m!3630463 () Bool)

(assert (=> bs!548917 m!3630463))

(assert (=> d!925119 d!925421))

(assert (=> d!925119 d!925259))

(declare-fun e!2054987 () Bool)

(declare-fun tp!1034442 () Bool)

(declare-fun b!3304383 () Bool)

(declare-fun tp!1034444 () Bool)

(assert (=> b!3304383 (= e!2054987 (and (inv!49442 (left!28413 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (value!171255 (h!41901 tokens!494)))))) tp!1034442 (inv!49442 (right!28743 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (value!171255 (h!41901 tokens!494)))))) tp!1034444))))

(declare-fun b!3304385 () Bool)

(declare-fun e!2054986 () Bool)

(declare-fun tp!1034443 () Bool)

(assert (=> b!3304385 (= e!2054986 tp!1034443)))

(declare-fun b!3304384 () Bool)

(declare-fun inv!49448 (IArray!21919) Bool)

(assert (=> b!3304384 (= e!2054987 (and (inv!49448 (xs!14095 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (value!171255 (h!41901 tokens!494)))))) e!2054986))))

(assert (=> b!3303833 (= tp!1034317 (and (inv!49442 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (value!171255 (h!41901 tokens!494))))) e!2054987))))

(assert (= (and b!3303833 (is-Node!10957 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (value!171255 (h!41901 tokens!494)))))) b!3304383))

(assert (= b!3304384 b!3304385))

(assert (= (and b!3303833 (is-Leaf!17214 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (value!171255 (h!41901 tokens!494)))))) b!3304384))

(declare-fun m!3630487 () Bool)

(assert (=> b!3304383 m!3630487))

(declare-fun m!3630489 () Bool)

(assert (=> b!3304383 m!3630489))

(declare-fun m!3630491 () Bool)

(assert (=> b!3304384 m!3630491))

(assert (=> b!3303833 m!3629731))

(declare-fun b!3304387 () Bool)

(declare-fun e!2054988 () Bool)

(declare-fun tp!1034448 () Bool)

(declare-fun tp!1034449 () Bool)

(assert (=> b!3304387 (= e!2054988 (and tp!1034448 tp!1034449))))

(declare-fun b!3304388 () Bool)

(declare-fun tp!1034446 () Bool)

(assert (=> b!3304388 (= e!2054988 tp!1034446)))

(declare-fun b!3304386 () Bool)

(assert (=> b!3304386 (= e!2054988 tp_is_empty!17363)))

(assert (=> b!3303871 (= tp!1034330 e!2054988)))

(declare-fun b!3304389 () Bool)

(declare-fun tp!1034447 () Bool)

(declare-fun tp!1034445 () Bool)

(assert (=> b!3304389 (= e!2054988 (and tp!1034447 tp!1034445))))

(assert (= (and b!3303871 (is-ElementMatch!10050 (regOne!20613 (regex!5291 (h!41900 rules!2135))))) b!3304386))

(assert (= (and b!3303871 (is-Concat!15571 (regOne!20613 (regex!5291 (h!41900 rules!2135))))) b!3304387))

(assert (= (and b!3303871 (is-Star!10050 (regOne!20613 (regex!5291 (h!41900 rules!2135))))) b!3304388))

(assert (= (and b!3303871 (is-Union!10050 (regOne!20613 (regex!5291 (h!41900 rules!2135))))) b!3304389))

(declare-fun b!3304391 () Bool)

(declare-fun e!2054989 () Bool)

(declare-fun tp!1034453 () Bool)

(declare-fun tp!1034454 () Bool)

(assert (=> b!3304391 (= e!2054989 (and tp!1034453 tp!1034454))))

(declare-fun b!3304392 () Bool)

(declare-fun tp!1034451 () Bool)

(assert (=> b!3304392 (= e!2054989 tp!1034451)))

(declare-fun b!3304390 () Bool)

(assert (=> b!3304390 (= e!2054989 tp_is_empty!17363)))

(assert (=> b!3303871 (= tp!1034328 e!2054989)))

(declare-fun b!3304393 () Bool)

(declare-fun tp!1034452 () Bool)

(declare-fun tp!1034450 () Bool)

(assert (=> b!3304393 (= e!2054989 (and tp!1034452 tp!1034450))))

(assert (= (and b!3303871 (is-ElementMatch!10050 (regTwo!20613 (regex!5291 (h!41900 rules!2135))))) b!3304390))

(assert (= (and b!3303871 (is-Concat!15571 (regTwo!20613 (regex!5291 (h!41900 rules!2135))))) b!3304391))

(assert (= (and b!3303871 (is-Star!10050 (regTwo!20613 (regex!5291 (h!41900 rules!2135))))) b!3304392))

(assert (= (and b!3303871 (is-Union!10050 (regTwo!20613 (regex!5291 (h!41900 rules!2135))))) b!3304393))

(declare-fun b!3304395 () Bool)

(declare-fun e!2054990 () Bool)

(declare-fun tp!1034458 () Bool)

(declare-fun tp!1034459 () Bool)

(assert (=> b!3304395 (= e!2054990 (and tp!1034458 tp!1034459))))

(declare-fun b!3304396 () Bool)

(declare-fun tp!1034456 () Bool)

(assert (=> b!3304396 (= e!2054990 tp!1034456)))

(declare-fun b!3304394 () Bool)

(assert (=> b!3304394 (= e!2054990 tp_is_empty!17363)))

(assert (=> b!3303878 (= tp!1034339 e!2054990)))

(declare-fun b!3304397 () Bool)

(declare-fun tp!1034457 () Bool)

(declare-fun tp!1034455 () Bool)

(assert (=> b!3304397 (= e!2054990 (and tp!1034457 tp!1034455))))

(assert (= (and b!3303878 (is-ElementMatch!10050 (regOne!20612 (regex!5291 (rule!7795 (h!41901 tokens!494)))))) b!3304394))

(assert (= (and b!3303878 (is-Concat!15571 (regOne!20612 (regex!5291 (rule!7795 (h!41901 tokens!494)))))) b!3304395))

(assert (= (and b!3303878 (is-Star!10050 (regOne!20612 (regex!5291 (rule!7795 (h!41901 tokens!494)))))) b!3304396))

(assert (= (and b!3303878 (is-Union!10050 (regOne!20612 (regex!5291 (rule!7795 (h!41901 tokens!494)))))) b!3304397))

(declare-fun b!3304399 () Bool)

(declare-fun e!2054991 () Bool)

(declare-fun tp!1034463 () Bool)

(declare-fun tp!1034464 () Bool)

(assert (=> b!3304399 (= e!2054991 (and tp!1034463 tp!1034464))))

(declare-fun b!3304400 () Bool)

(declare-fun tp!1034461 () Bool)

(assert (=> b!3304400 (= e!2054991 tp!1034461)))

(declare-fun b!3304398 () Bool)

(assert (=> b!3304398 (= e!2054991 tp_is_empty!17363)))

(assert (=> b!3303878 (= tp!1034340 e!2054991)))

(declare-fun b!3304401 () Bool)

(declare-fun tp!1034462 () Bool)

(declare-fun tp!1034460 () Bool)

(assert (=> b!3304401 (= e!2054991 (and tp!1034462 tp!1034460))))

(assert (= (and b!3303878 (is-ElementMatch!10050 (regTwo!20612 (regex!5291 (rule!7795 (h!41901 tokens!494)))))) b!3304398))

(assert (= (and b!3303878 (is-Concat!15571 (regTwo!20612 (regex!5291 (rule!7795 (h!41901 tokens!494)))))) b!3304399))

(assert (= (and b!3303878 (is-Star!10050 (regTwo!20612 (regex!5291 (rule!7795 (h!41901 tokens!494)))))) b!3304400))

(assert (= (and b!3303878 (is-Union!10050 (regTwo!20612 (regex!5291 (rule!7795 (h!41901 tokens!494)))))) b!3304401))

(declare-fun b!3304404 () Bool)

(declare-fun b_free!86805 () Bool)

(declare-fun b_next!87509 () Bool)

(assert (=> b!3304404 (= b_free!86805 (not b_next!87509))))

(declare-fun tp!1034465 () Bool)

(declare-fun b_and!226377 () Bool)

(assert (=> b!3304404 (= tp!1034465 b_and!226377)))

(declare-fun b_free!86807 () Bool)

(declare-fun b_next!87511 () Bool)

(assert (=> b!3304404 (= b_free!86807 (not b_next!87511))))

(declare-fun tb!171405 () Bool)

(declare-fun t!253391 () Bool)

(assert (=> (and b!3304404 (= (toChars!7282 (transformation!5291 (h!41900 (t!253273 (t!253273 rules!2135))))) (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241)))) t!253391) tb!171405))

(declare-fun result!214204 () Bool)

(assert (= result!214204 result!214100))

(assert (=> b!3303810 t!253391))

(declare-fun t!253393 () Bool)

(declare-fun tb!171407 () Bool)

(assert (=> (and b!3304404 (= (toChars!7282 (transformation!5291 (h!41900 (t!253273 (t!253273 rules!2135))))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494)))))) t!253393) tb!171407))

(declare-fun result!214206 () Bool)

(assert (= result!214206 result!214152))

(assert (=> b!3304013 t!253393))

(declare-fun t!253395 () Bool)

(declare-fun tb!171409 () Bool)

(assert (=> (and b!3304404 (= (toChars!7282 (transformation!5291 (h!41900 (t!253273 (t!253273 rules!2135))))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494))))) t!253395) tb!171409))

(declare-fun result!214208 () Bool)

(assert (= result!214208 result!214108))

(assert (=> d!925149 t!253395))

(declare-fun t!253397 () Bool)

(declare-fun tb!171411 () Bool)

(assert (=> (and b!3304404 (= (toChars!7282 (transformation!5291 (h!41900 (t!253273 (t!253273 rules!2135))))) (toChars!7282 (transformation!5291 (rule!7795 (apply!8377 lt!1119931 0))))) t!253397) tb!171411))

(declare-fun result!214210 () Bool)

(assert (= result!214210 result!214162))

(assert (=> d!925271 t!253397))

(assert (=> b!3303851 t!253395))

(declare-fun t!253399 () Bool)

(declare-fun tb!171413 () Bool)

(assert (=> (and b!3304404 (= (toChars!7282 (transformation!5291 (h!41900 (t!253273 (t!253273 rules!2135))))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481)))))) t!253399) tb!171413))

(declare-fun result!214212 () Bool)

(assert (= result!214212 result!214172))

(assert (=> d!925317 t!253399))

(declare-fun tp!1034467 () Bool)

(declare-fun b_and!226379 () Bool)

(assert (=> b!3304404 (= tp!1034467 (and (=> t!253391 result!214204) (=> t!253395 result!214208) (=> t!253397 result!214210) (=> t!253393 result!214206) (=> t!253399 result!214212) b_and!226379))))

(declare-fun e!2054992 () Bool)

(assert (=> b!3304404 (= e!2054992 (and tp!1034465 tp!1034467))))

(declare-fun tp!1034468 () Bool)

(declare-fun b!3304403 () Bool)

(declare-fun e!2054993 () Bool)

(assert (=> b!3304403 (= e!2054993 (and tp!1034468 (inv!49435 (tag!5837 (h!41900 (t!253273 (t!253273 rules!2135))))) (inv!49439 (transformation!5291 (h!41900 (t!253273 (t!253273 rules!2135))))) e!2054992))))

(declare-fun b!3304402 () Bool)

(declare-fun e!2054994 () Bool)

(declare-fun tp!1034466 () Bool)

(assert (=> b!3304402 (= e!2054994 (and e!2054993 tp!1034466))))

(assert (=> b!3303890 (= tp!1034351 e!2054994)))

(assert (= b!3304403 b!3304404))

(assert (= b!3304402 b!3304403))

(assert (= (and b!3303890 (is-Cons!36480 (t!253273 (t!253273 rules!2135)))) b!3304402))

(declare-fun m!3630493 () Bool)

(assert (=> b!3304403 m!3630493))

(declare-fun m!3630495 () Bool)

(assert (=> b!3304403 m!3630495))

(declare-fun b!3304406 () Bool)

(declare-fun e!2054996 () Bool)

(declare-fun tp!1034472 () Bool)

(declare-fun tp!1034473 () Bool)

(assert (=> b!3304406 (= e!2054996 (and tp!1034472 tp!1034473))))

(declare-fun b!3304407 () Bool)

(declare-fun tp!1034470 () Bool)

(assert (=> b!3304407 (= e!2054996 tp!1034470)))

(declare-fun b!3304405 () Bool)

(assert (=> b!3304405 (= e!2054996 tp_is_empty!17363)))

(assert (=> b!3303894 (= tp!1034357 e!2054996)))

(declare-fun b!3304408 () Bool)

(declare-fun tp!1034471 () Bool)

(declare-fun tp!1034469 () Bool)

(assert (=> b!3304408 (= e!2054996 (and tp!1034471 tp!1034469))))

(assert (= (and b!3303894 (is-ElementMatch!10050 (regOne!20612 (regex!5291 (rule!7795 separatorToken!241))))) b!3304405))

(assert (= (and b!3303894 (is-Concat!15571 (regOne!20612 (regex!5291 (rule!7795 separatorToken!241))))) b!3304406))

(assert (= (and b!3303894 (is-Star!10050 (regOne!20612 (regex!5291 (rule!7795 separatorToken!241))))) b!3304407))

(assert (= (and b!3303894 (is-Union!10050 (regOne!20612 (regex!5291 (rule!7795 separatorToken!241))))) b!3304408))

(declare-fun b!3304414 () Bool)

(declare-fun e!2054999 () Bool)

(declare-fun tp!1034477 () Bool)

(declare-fun tp!1034478 () Bool)

(assert (=> b!3304414 (= e!2054999 (and tp!1034477 tp!1034478))))

(declare-fun b!3304415 () Bool)

(declare-fun tp!1034475 () Bool)

(assert (=> b!3304415 (= e!2054999 tp!1034475)))

(declare-fun b!3304413 () Bool)

(assert (=> b!3304413 (= e!2054999 tp_is_empty!17363)))

(assert (=> b!3303894 (= tp!1034358 e!2054999)))

(declare-fun b!3304416 () Bool)

(declare-fun tp!1034476 () Bool)

(declare-fun tp!1034474 () Bool)

(assert (=> b!3304416 (= e!2054999 (and tp!1034476 tp!1034474))))

(assert (= (and b!3303894 (is-ElementMatch!10050 (regTwo!20612 (regex!5291 (rule!7795 separatorToken!241))))) b!3304413))

(assert (= (and b!3303894 (is-Concat!15571 (regTwo!20612 (regex!5291 (rule!7795 separatorToken!241))))) b!3304414))

(assert (= (and b!3303894 (is-Star!10050 (regTwo!20612 (regex!5291 (rule!7795 separatorToken!241))))) b!3304415))

(assert (= (and b!3303894 (is-Union!10050 (regTwo!20612 (regex!5291 (rule!7795 separatorToken!241))))) b!3304416))

(declare-fun b!3304420 () Bool)

(declare-fun b_free!86809 () Bool)

(declare-fun b_next!87513 () Bool)

(assert (=> b!3304420 (= b_free!86809 (not b_next!87513))))

(declare-fun tp!1034483 () Bool)

(declare-fun b_and!226381 () Bool)

(assert (=> b!3304420 (= tp!1034483 b_and!226381)))

(declare-fun b_free!86811 () Bool)

(declare-fun b_next!87515 () Bool)

(assert (=> b!3304420 (= b_free!86811 (not b_next!87515))))

(declare-fun tb!171415 () Bool)

(declare-fun t!253401 () Bool)

(assert (=> (and b!3304420 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 (t!253274 tokens!494)))))) (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241)))) t!253401) tb!171415))

(declare-fun result!214214 () Bool)

(assert (= result!214214 result!214100))

(assert (=> b!3303810 t!253401))

(declare-fun t!253403 () Bool)

(declare-fun tb!171417 () Bool)

(assert (=> (and b!3304420 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 (t!253274 tokens!494)))))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494)))))) t!253403) tb!171417))

(declare-fun result!214216 () Bool)

(assert (= result!214216 result!214152))

(assert (=> b!3304013 t!253403))

(declare-fun t!253405 () Bool)

(declare-fun tb!171419 () Bool)

(assert (=> (and b!3304420 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 (t!253274 tokens!494)))))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494))))) t!253405) tb!171419))

(declare-fun result!214218 () Bool)

(assert (= result!214218 result!214108))

(assert (=> d!925149 t!253405))

(declare-fun tb!171421 () Bool)

(declare-fun t!253407 () Bool)

(assert (=> (and b!3304420 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 (t!253274 tokens!494)))))) (toChars!7282 (transformation!5291 (rule!7795 (apply!8377 lt!1119931 0))))) t!253407) tb!171421))

(declare-fun result!214220 () Bool)

(assert (= result!214220 result!214162))

(assert (=> d!925271 t!253407))

(assert (=> b!3303851 t!253405))

(declare-fun t!253409 () Bool)

(declare-fun tb!171423 () Bool)

(assert (=> (and b!3304420 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 (t!253274 tokens!494)))))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (Cons!36481 (h!41901 tokens!494) Nil!36481)))))) t!253409) tb!171423))

(declare-fun result!214222 () Bool)

(assert (= result!214222 result!214172))

(assert (=> d!925317 t!253409))

(declare-fun tp!1034482 () Bool)

(declare-fun b_and!226383 () Bool)

(assert (=> b!3304420 (= tp!1034482 (and (=> t!253409 result!214222) (=> t!253407 result!214220) (=> t!253403 result!214216) (=> t!253405 result!214218) (=> t!253401 result!214214) b_and!226383))))

(declare-fun e!2055003 () Bool)

(declare-fun tp!1034479 () Bool)

(declare-fun e!2055004 () Bool)

(declare-fun b!3304419 () Bool)

(assert (=> b!3304419 (= e!2055004 (and tp!1034479 (inv!49435 (tag!5837 (rule!7795 (h!41901 (t!253274 (t!253274 tokens!494)))))) (inv!49439 (transformation!5291 (rule!7795 (h!41901 (t!253274 (t!253274 tokens!494)))))) e!2055003))))

(declare-fun tp!1034480 () Bool)

(declare-fun b!3304417 () Bool)

(declare-fun e!2055001 () Bool)

(declare-fun e!2055002 () Bool)

(assert (=> b!3304417 (= e!2055002 (and (inv!49438 (h!41901 (t!253274 (t!253274 tokens!494)))) e!2055001 tp!1034480))))

(assert (=> b!3304420 (= e!2055003 (and tp!1034483 tp!1034482))))

(assert (=> b!3303908 (= tp!1034370 e!2055002)))

(declare-fun tp!1034481 () Bool)

(declare-fun b!3304418 () Bool)

(assert (=> b!3304418 (= e!2055001 (and (inv!21 (value!171255 (h!41901 (t!253274 (t!253274 tokens!494))))) e!2055004 tp!1034481))))

(assert (= b!3304419 b!3304420))

(assert (= b!3304418 b!3304419))

(assert (= b!3304417 b!3304418))

(assert (= (and b!3303908 (is-Cons!36481 (t!253274 (t!253274 tokens!494)))) b!3304417))

(declare-fun m!3630497 () Bool)

(assert (=> b!3304419 m!3630497))

(declare-fun m!3630499 () Bool)

(assert (=> b!3304419 m!3630499))

(declare-fun m!3630501 () Bool)

(assert (=> b!3304417 m!3630501))

(declare-fun m!3630503 () Bool)

(assert (=> b!3304418 m!3630503))

(declare-fun b!3304426 () Bool)

(declare-fun e!2055008 () Bool)

(declare-fun tp!1034487 () Bool)

(declare-fun tp!1034488 () Bool)

(assert (=> b!3304426 (= e!2055008 (and tp!1034487 tp!1034488))))

(declare-fun b!3304427 () Bool)

(declare-fun tp!1034485 () Bool)

(assert (=> b!3304427 (= e!2055008 tp!1034485)))

(declare-fun b!3304425 () Bool)

(assert (=> b!3304425 (= e!2055008 tp_is_empty!17363)))

(assert (=> b!3303869 (= tp!1034331 e!2055008)))

(declare-fun b!3304428 () Bool)

(declare-fun tp!1034486 () Bool)

(declare-fun tp!1034484 () Bool)

(assert (=> b!3304428 (= e!2055008 (and tp!1034486 tp!1034484))))

(assert (= (and b!3303869 (is-ElementMatch!10050 (regOne!20612 (regex!5291 (h!41900 rules!2135))))) b!3304425))

(assert (= (and b!3303869 (is-Concat!15571 (regOne!20612 (regex!5291 (h!41900 rules!2135))))) b!3304426))

(assert (= (and b!3303869 (is-Star!10050 (regOne!20612 (regex!5291 (h!41900 rules!2135))))) b!3304427))

(assert (= (and b!3303869 (is-Union!10050 (regOne!20612 (regex!5291 (h!41900 rules!2135))))) b!3304428))

(declare-fun b!3304430 () Bool)

(declare-fun e!2055009 () Bool)

(declare-fun tp!1034492 () Bool)

(declare-fun tp!1034493 () Bool)

(assert (=> b!3304430 (= e!2055009 (and tp!1034492 tp!1034493))))

(declare-fun b!3304431 () Bool)

(declare-fun tp!1034490 () Bool)

(assert (=> b!3304431 (= e!2055009 tp!1034490)))

(declare-fun b!3304429 () Bool)

(assert (=> b!3304429 (= e!2055009 tp_is_empty!17363)))

(assert (=> b!3303869 (= tp!1034332 e!2055009)))

(declare-fun b!3304432 () Bool)

(declare-fun tp!1034491 () Bool)

(declare-fun tp!1034489 () Bool)

(assert (=> b!3304432 (= e!2055009 (and tp!1034491 tp!1034489))))

(assert (= (and b!3303869 (is-ElementMatch!10050 (regTwo!20612 (regex!5291 (h!41900 rules!2135))))) b!3304429))

(assert (= (and b!3303869 (is-Concat!15571 (regTwo!20612 (regex!5291 (h!41900 rules!2135))))) b!3304430))

(assert (= (and b!3303869 (is-Star!10050 (regTwo!20612 (regex!5291 (h!41900 rules!2135))))) b!3304431))

(assert (= (and b!3303869 (is-Union!10050 (regTwo!20612 (regex!5291 (h!41900 rules!2135))))) b!3304432))

(declare-fun b!3304434 () Bool)

(declare-fun e!2055010 () Bool)

(declare-fun tp!1034497 () Bool)

(declare-fun tp!1034498 () Bool)

(assert (=> b!3304434 (= e!2055010 (and tp!1034497 tp!1034498))))

(declare-fun b!3304435 () Bool)

(declare-fun tp!1034495 () Bool)

(assert (=> b!3304435 (= e!2055010 tp!1034495)))

(declare-fun b!3304433 () Bool)

(assert (=> b!3304433 (= e!2055010 tp_is_empty!17363)))

(assert (=> b!3303870 (= tp!1034329 e!2055010)))

(declare-fun b!3304436 () Bool)

(declare-fun tp!1034496 () Bool)

(declare-fun tp!1034494 () Bool)

(assert (=> b!3304436 (= e!2055010 (and tp!1034496 tp!1034494))))

(assert (= (and b!3303870 (is-ElementMatch!10050 (reg!10379 (regex!5291 (h!41900 rules!2135))))) b!3304433))

(assert (= (and b!3303870 (is-Concat!15571 (reg!10379 (regex!5291 (h!41900 rules!2135))))) b!3304434))

(assert (= (and b!3303870 (is-Star!10050 (reg!10379 (regex!5291 (h!41900 rules!2135))))) b!3304435))

(assert (= (and b!3303870 (is-Union!10050 (reg!10379 (regex!5291 (h!41900 rules!2135))))) b!3304436))

(declare-fun b!3304437 () Bool)

(declare-fun e!2055011 () Bool)

(declare-fun tp!1034499 () Bool)

(assert (=> b!3304437 (= e!2055011 (and tp_is_empty!17363 tp!1034499))))

(assert (=> b!3303909 (= tp!1034371 e!2055011)))

(assert (= (and b!3303909 (is-Cons!36479 (originalCharacters!6005 (h!41901 (t!253274 tokens!494))))) b!3304437))

(declare-fun b!3304443 () Bool)

(declare-fun e!2055014 () Bool)

(declare-fun tp!1034503 () Bool)

(declare-fun tp!1034504 () Bool)

(assert (=> b!3304443 (= e!2055014 (and tp!1034503 tp!1034504))))

(declare-fun b!3304444 () Bool)

(declare-fun tp!1034501 () Bool)

(assert (=> b!3304444 (= e!2055014 tp!1034501)))

(declare-fun b!3304442 () Bool)

(assert (=> b!3304442 (= e!2055014 tp_is_empty!17363)))

(assert (=> b!3303910 (= tp!1034369 e!2055014)))

(declare-fun b!3304445 () Bool)

(declare-fun tp!1034502 () Bool)

(declare-fun tp!1034500 () Bool)

(assert (=> b!3304445 (= e!2055014 (and tp!1034502 tp!1034500))))

(assert (= (and b!3303910 (is-ElementMatch!10050 (regex!5291 (rule!7795 (h!41901 (t!253274 tokens!494)))))) b!3304442))

(assert (= (and b!3303910 (is-Concat!15571 (regex!5291 (rule!7795 (h!41901 (t!253274 tokens!494)))))) b!3304443))

(assert (= (and b!3303910 (is-Star!10050 (regex!5291 (rule!7795 (h!41901 (t!253274 tokens!494)))))) b!3304444))

(assert (= (and b!3303910 (is-Union!10050 (regex!5291 (rule!7795 (h!41901 (t!253274 tokens!494)))))) b!3304445))

(declare-fun b!3304448 () Bool)

(declare-fun e!2055017 () Bool)

(assert (=> b!3304448 (= e!2055017 true)))

(declare-fun b!3304447 () Bool)

(declare-fun e!2055016 () Bool)

(assert (=> b!3304447 (= e!2055016 e!2055017)))

(declare-fun b!3304446 () Bool)

(declare-fun e!2055015 () Bool)

(assert (=> b!3304446 (= e!2055015 e!2055016)))

(assert (=> b!3303828 e!2055015))

(assert (= b!3304447 b!3304448))

(assert (= b!3304446 b!3304447))

(assert (= (and b!3303828 (is-Cons!36480 (t!253273 rules!2135))) b!3304446))

(assert (=> b!3304448 (< (dynLambda!14942 order!18927 (toValue!7423 (transformation!5291 (h!41900 (t!253273 rules!2135))))) (dynLambda!14943 order!18929 lambda!118944))))

(assert (=> b!3304448 (< (dynLambda!14944 order!18931 (toChars!7282 (transformation!5291 (h!41900 (t!253273 rules!2135))))) (dynLambda!14943 order!18929 lambda!118944))))

(declare-fun b!3304449 () Bool)

(declare-fun e!2055018 () Bool)

(declare-fun tp!1034505 () Bool)

(assert (=> b!3304449 (= e!2055018 (and tp_is_empty!17363 tp!1034505))))

(assert (=> b!3303881 (= tp!1034341 e!2055018)))

(assert (= (and b!3303881 (is-Cons!36479 (t!253272 (originalCharacters!6005 separatorToken!241)))) b!3304449))

(declare-fun tp!1034508 () Bool)

(declare-fun b!3304450 () Bool)

(declare-fun e!2055020 () Bool)

(declare-fun tp!1034506 () Bool)

(assert (=> b!3304450 (= e!2055020 (and (inv!49442 (left!28413 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (value!171255 separatorToken!241))))) tp!1034506 (inv!49442 (right!28743 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (value!171255 separatorToken!241))))) tp!1034508))))

(declare-fun b!3304452 () Bool)

(declare-fun e!2055019 () Bool)

(declare-fun tp!1034507 () Bool)

(assert (=> b!3304452 (= e!2055019 tp!1034507)))

(declare-fun b!3304451 () Bool)

(assert (=> b!3304451 (= e!2055020 (and (inv!49448 (xs!14095 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (value!171255 separatorToken!241))))) e!2055019))))

(assert (=> b!3303816 (= tp!1034316 (and (inv!49442 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (value!171255 separatorToken!241)))) e!2055020))))

(assert (= (and b!3303816 (is-Node!10957 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (value!171255 separatorToken!241))))) b!3304450))

(assert (= b!3304451 b!3304452))

(assert (= (and b!3303816 (is-Leaf!17214 (c!560509 (dynLambda!14941 (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (value!171255 separatorToken!241))))) b!3304451))

(declare-fun m!3630519 () Bool)

(assert (=> b!3304450 m!3630519))

(declare-fun m!3630521 () Bool)

(assert (=> b!3304450 m!3630521))

(declare-fun m!3630523 () Bool)

(assert (=> b!3304451 m!3630523))

(assert (=> b!3303816 m!3629707))

(declare-fun b!3304454 () Bool)

(declare-fun e!2055021 () Bool)

(declare-fun tp!1034512 () Bool)

(declare-fun tp!1034513 () Bool)

(assert (=> b!3304454 (= e!2055021 (and tp!1034512 tp!1034513))))

(declare-fun b!3304455 () Bool)

(declare-fun tp!1034510 () Bool)

(assert (=> b!3304455 (= e!2055021 tp!1034510)))

(declare-fun b!3304453 () Bool)

(assert (=> b!3304453 (= e!2055021 tp_is_empty!17363)))

(assert (=> b!3303895 (= tp!1034355 e!2055021)))

(declare-fun b!3304456 () Bool)

(declare-fun tp!1034511 () Bool)

(declare-fun tp!1034509 () Bool)

(assert (=> b!3304456 (= e!2055021 (and tp!1034511 tp!1034509))))

(assert (= (and b!3303895 (is-ElementMatch!10050 (reg!10379 (regex!5291 (rule!7795 separatorToken!241))))) b!3304453))

(assert (= (and b!3303895 (is-Concat!15571 (reg!10379 (regex!5291 (rule!7795 separatorToken!241))))) b!3304454))

(assert (= (and b!3303895 (is-Star!10050 (reg!10379 (regex!5291 (rule!7795 separatorToken!241))))) b!3304455))

(assert (= (and b!3303895 (is-Union!10050 (reg!10379 (regex!5291 (rule!7795 separatorToken!241))))) b!3304456))

(declare-fun b!3304458 () Bool)

(declare-fun e!2055022 () Bool)

(declare-fun tp!1034517 () Bool)

(declare-fun tp!1034518 () Bool)

(assert (=> b!3304458 (= e!2055022 (and tp!1034517 tp!1034518))))

(declare-fun b!3304459 () Bool)

(declare-fun tp!1034515 () Bool)

(assert (=> b!3304459 (= e!2055022 tp!1034515)))

(declare-fun b!3304457 () Bool)

(assert (=> b!3304457 (= e!2055022 tp_is_empty!17363)))

(assert (=> b!3303891 (= tp!1034353 e!2055022)))

(declare-fun b!3304460 () Bool)

(declare-fun tp!1034516 () Bool)

(declare-fun tp!1034514 () Bool)

(assert (=> b!3304460 (= e!2055022 (and tp!1034516 tp!1034514))))

(assert (= (and b!3303891 (is-ElementMatch!10050 (regex!5291 (h!41900 (t!253273 rules!2135))))) b!3304457))

(assert (= (and b!3303891 (is-Concat!15571 (regex!5291 (h!41900 (t!253273 rules!2135))))) b!3304458))

(assert (= (and b!3303891 (is-Star!10050 (regex!5291 (h!41900 (t!253273 rules!2135))))) b!3304459))

(assert (= (and b!3303891 (is-Union!10050 (regex!5291 (h!41900 (t!253273 rules!2135))))) b!3304460))

(declare-fun b!3304462 () Bool)

(declare-fun e!2055023 () Bool)

(declare-fun tp!1034522 () Bool)

(declare-fun tp!1034523 () Bool)

(assert (=> b!3304462 (= e!2055023 (and tp!1034522 tp!1034523))))

(declare-fun b!3304463 () Bool)

(declare-fun tp!1034520 () Bool)

(assert (=> b!3304463 (= e!2055023 tp!1034520)))

(declare-fun b!3304461 () Bool)

(assert (=> b!3304461 (= e!2055023 tp_is_empty!17363)))

(assert (=> b!3303879 (= tp!1034337 e!2055023)))

(declare-fun b!3304464 () Bool)

(declare-fun tp!1034521 () Bool)

(declare-fun tp!1034519 () Bool)

(assert (=> b!3304464 (= e!2055023 (and tp!1034521 tp!1034519))))

(assert (= (and b!3303879 (is-ElementMatch!10050 (reg!10379 (regex!5291 (rule!7795 (h!41901 tokens!494)))))) b!3304461))

(assert (= (and b!3303879 (is-Concat!15571 (reg!10379 (regex!5291 (rule!7795 (h!41901 tokens!494)))))) b!3304462))

(assert (= (and b!3303879 (is-Star!10050 (reg!10379 (regex!5291 (rule!7795 (h!41901 tokens!494)))))) b!3304463))

(assert (= (and b!3303879 (is-Union!10050 (reg!10379 (regex!5291 (rule!7795 (h!41901 tokens!494)))))) b!3304464))

(declare-fun b!3304465 () Bool)

(declare-fun e!2055024 () Bool)

(declare-fun tp!1034524 () Bool)

(assert (=> b!3304465 (= e!2055024 (and tp_is_empty!17363 tp!1034524))))

(assert (=> b!3303876 (= tp!1034335 e!2055024)))

(assert (= (and b!3303876 (is-Cons!36479 (t!253272 (originalCharacters!6005 (h!41901 tokens!494))))) b!3304465))

(declare-fun b!3304468 () Bool)

(declare-fun e!2055026 () Bool)

(declare-fun tp!1034529 () Bool)

(declare-fun tp!1034530 () Bool)

(assert (=> b!3304468 (= e!2055026 (and tp!1034529 tp!1034530))))

(declare-fun b!3304469 () Bool)

(declare-fun tp!1034527 () Bool)

(assert (=> b!3304469 (= e!2055026 tp!1034527)))

(declare-fun b!3304467 () Bool)

(assert (=> b!3304467 (= e!2055026 tp_is_empty!17363)))

(assert (=> b!3303896 (= tp!1034356 e!2055026)))

(declare-fun b!3304470 () Bool)

(declare-fun tp!1034528 () Bool)

(declare-fun tp!1034526 () Bool)

(assert (=> b!3304470 (= e!2055026 (and tp!1034528 tp!1034526))))

(assert (= (and b!3303896 (is-ElementMatch!10050 (regOne!20613 (regex!5291 (rule!7795 separatorToken!241))))) b!3304467))

(assert (= (and b!3303896 (is-Concat!15571 (regOne!20613 (regex!5291 (rule!7795 separatorToken!241))))) b!3304468))

(assert (= (and b!3303896 (is-Star!10050 (regOne!20613 (regex!5291 (rule!7795 separatorToken!241))))) b!3304469))

(assert (= (and b!3303896 (is-Union!10050 (regOne!20613 (regex!5291 (rule!7795 separatorToken!241))))) b!3304470))

(declare-fun b!3304472 () Bool)

(declare-fun e!2055027 () Bool)

(declare-fun tp!1034534 () Bool)

(declare-fun tp!1034535 () Bool)

(assert (=> b!3304472 (= e!2055027 (and tp!1034534 tp!1034535))))

(declare-fun b!3304473 () Bool)

(declare-fun tp!1034532 () Bool)

(assert (=> b!3304473 (= e!2055027 tp!1034532)))

(declare-fun b!3304471 () Bool)

(assert (=> b!3304471 (= e!2055027 tp_is_empty!17363)))

(assert (=> b!3303896 (= tp!1034354 e!2055027)))

(declare-fun b!3304474 () Bool)

(declare-fun tp!1034533 () Bool)

(declare-fun tp!1034531 () Bool)

(assert (=> b!3304474 (= e!2055027 (and tp!1034533 tp!1034531))))

(assert (= (and b!3303896 (is-ElementMatch!10050 (regTwo!20613 (regex!5291 (rule!7795 separatorToken!241))))) b!3304471))

(assert (= (and b!3303896 (is-Concat!15571 (regTwo!20613 (regex!5291 (rule!7795 separatorToken!241))))) b!3304472))

(assert (= (and b!3303896 (is-Star!10050 (regTwo!20613 (regex!5291 (rule!7795 separatorToken!241))))) b!3304473))

(assert (= (and b!3303896 (is-Union!10050 (regTwo!20613 (regex!5291 (rule!7795 separatorToken!241))))) b!3304474))

(declare-fun b!3304476 () Bool)

(declare-fun e!2055028 () Bool)

(declare-fun tp!1034539 () Bool)

(declare-fun tp!1034540 () Bool)

(assert (=> b!3304476 (= e!2055028 (and tp!1034539 tp!1034540))))

(declare-fun b!3304477 () Bool)

(declare-fun tp!1034537 () Bool)

(assert (=> b!3304477 (= e!2055028 tp!1034537)))

(declare-fun b!3304475 () Bool)

(assert (=> b!3304475 (= e!2055028 tp_is_empty!17363)))

(assert (=> b!3303880 (= tp!1034338 e!2055028)))

(declare-fun b!3304478 () Bool)

(declare-fun tp!1034538 () Bool)

(declare-fun tp!1034536 () Bool)

(assert (=> b!3304478 (= e!2055028 (and tp!1034538 tp!1034536))))

(assert (= (and b!3303880 (is-ElementMatch!10050 (regOne!20613 (regex!5291 (rule!7795 (h!41901 tokens!494)))))) b!3304475))

(assert (= (and b!3303880 (is-Concat!15571 (regOne!20613 (regex!5291 (rule!7795 (h!41901 tokens!494)))))) b!3304476))

(assert (= (and b!3303880 (is-Star!10050 (regOne!20613 (regex!5291 (rule!7795 (h!41901 tokens!494)))))) b!3304477))

(assert (= (and b!3303880 (is-Union!10050 (regOne!20613 (regex!5291 (rule!7795 (h!41901 tokens!494)))))) b!3304478))

(declare-fun b!3304480 () Bool)

(declare-fun e!2055029 () Bool)

(declare-fun tp!1034544 () Bool)

(declare-fun tp!1034545 () Bool)

(assert (=> b!3304480 (= e!2055029 (and tp!1034544 tp!1034545))))

(declare-fun b!3304481 () Bool)

(declare-fun tp!1034542 () Bool)

(assert (=> b!3304481 (= e!2055029 tp!1034542)))

(declare-fun b!3304479 () Bool)

(assert (=> b!3304479 (= e!2055029 tp_is_empty!17363)))

(assert (=> b!3303880 (= tp!1034336 e!2055029)))

(declare-fun b!3304482 () Bool)

(declare-fun tp!1034543 () Bool)

(declare-fun tp!1034541 () Bool)

(assert (=> b!3304482 (= e!2055029 (and tp!1034543 tp!1034541))))

(assert (= (and b!3303880 (is-ElementMatch!10050 (regTwo!20613 (regex!5291 (rule!7795 (h!41901 tokens!494)))))) b!3304479))

(assert (= (and b!3303880 (is-Concat!15571 (regTwo!20613 (regex!5291 (rule!7795 (h!41901 tokens!494)))))) b!3304480))

(assert (= (and b!3303880 (is-Star!10050 (regTwo!20613 (regex!5291 (rule!7795 (h!41901 tokens!494)))))) b!3304481))

(assert (= (and b!3303880 (is-Union!10050 (regTwo!20613 (regex!5291 (rule!7795 (h!41901 tokens!494)))))) b!3304482))

(declare-fun b_lambda!92281 () Bool)

(assert (= b_lambda!92265 (or b!3303640 b_lambda!92281)))

(declare-fun bs!548924 () Bool)

(declare-fun d!925439 () Bool)

(assert (= bs!548924 (and d!925439 b!3303640)))

(assert (=> bs!548924 (= (dynLambda!14940 lambda!118936 (h!41901 (t!253274 tokens!494))) (not (isSeparator!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))))))

(assert (=> b!3304018 d!925439))

(declare-fun b_lambda!92283 () Bool)

(assert (= b_lambda!92275 (or d!925143 b_lambda!92283)))

(declare-fun bs!548925 () Bool)

(declare-fun d!925441 () Bool)

(assert (= bs!548925 (and d!925441 d!925143)))

(assert (=> bs!548925 (= (dynLambda!14940 lambda!118944 (h!41901 (list!13074 (seqFromList!3643 tokens!494)))) (rulesProduceIndividualToken!2372 thiss!18206 rules!2135 (h!41901 (list!13074 (seqFromList!3643 tokens!494)))))))

(assert (=> bs!548925 m!3630375))

(assert (=> b!3304344 d!925441))

(declare-fun b_lambda!92285 () Bool)

(assert (= b_lambda!92263 (or (and b!3303892 b_free!86791 (= (toChars!7282 (transformation!5291 (h!41900 (t!253273 rules!2135)))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))))) (and b!3303638 b_free!86775 (= (toChars!7282 (transformation!5291 (rule!7795 separatorToken!241))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))))) (and b!3303632 b_free!86767 (= (toChars!7282 (transformation!5291 (h!41900 rules!2135))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))))) (and b!3303911 b_free!86795) (and b!3304404 b_free!86807 (= (toChars!7282 (transformation!5291 (h!41900 (t!253273 (t!253273 rules!2135))))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))))) (and b!3304420 b_free!86811 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 (t!253274 tokens!494)))))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))))) (and b!3303639 b_free!86771 (= (toChars!7282 (transformation!5291 (rule!7795 (h!41901 tokens!494)))) (toChars!7282 (transformation!5291 (rule!7795 (h!41901 (t!253274 tokens!494))))))) b_lambda!92285)))

(push 1)

(assert (not b!3304151))

(assert (not b!3304419))

(assert (not b!3304417))

(assert (not d!925225))

(assert (not b!3304388))

(assert (not b!3304435))

(assert b_and!226347)

(assert (not b_next!87469))

(assert (not b!3304216))

(assert (not b_lambda!92269))

(assert (not b!3304472))

(assert (not b!3304462))

(assert (not b!3304476))

(assert b_and!226259)

(assert (not d!925249))

(assert b_and!226309)

(assert (not b!3304061))

(assert (not b_next!87513))

(assert (not b!3304416))

(assert (not b!3303833))

(assert b_and!226255)

(assert (not d!925209))

(assert (not b!3304431))

(assert tp_is_empty!17363)

(assert (not b!3304396))

(assert (not b!3304025))

(assert (not tb!171375))

(assert (not d!925269))

(assert (not b!3304191))

(assert (not b!3304456))

(assert (not b!3304075))

(assert (not b!3304454))

(assert (not b!3304432))

(assert (not d!925309))

(assert (not b!3304078))

(assert (not b!3304129))

(assert (not b!3304469))

(assert b_and!226349)

(assert (not d!925195))

(assert (not b!3304426))

(assert (not b!3304058))

(assert (not b!3304449))

(assert (not d!925243))

(assert (not d!925213))

(assert (not b!3304464))

(assert (not b!3304452))

(assert (not d!925245))

(assert (not b!3304181))

(assert (not d!925405))

(assert (not b!3304408))

(assert (not b_next!87475))

(assert (not b!3304401))

(assert (not b!3304041))

(assert (not b!3304399))

(assert (not b!3304395))

(assert (not d!925387))

(assert (not b!3304057))

(assert (not b_next!87511))

(assert (not b!3304430))

(assert (not b!3304470))

(assert (not b_next!87479))

(assert (not b!3304428))

(assert (not d!925381))

(assert (not b!3304474))

(assert (not b!3304017))

(assert (not d!925291))

(assert (not d!925237))

(assert (not b!3304043))

(assert b_and!226355)

(assert (not b!3304218))

(assert (not d!925229))

(assert (not b!3304013))

(assert (not d!925283))

(assert (not d!925205))

(assert (not b!3304477))

(assert (not b!3304387))

(assert (not b!3304167))

(assert (not b!3304076))

(assert (not b_next!87495))

(assert b_and!226251)

(assert (not d!925271))

(assert (not b_next!87471))

(assert b_and!226299)

(assert (not d!925255))

(assert (not b!3304400))

(assert (not b!3304465))

(assert (not d!925421))

(assert (not b!3304436))

(assert (not d!925281))

(assert (not b!3304019))

(assert (not d!925293))

(assert (not b!3304325))

(assert (not b!3304478))

(assert (not d!925193))

(assert (not b!3304414))

(assert (not b!3304215))

(assert (not bm!240161))

(assert (not bm!240158))

(assert (not b!3304147))

(assert (not d!925307))

(assert (not b!3304016))

(assert (not b!3304385))

(assert (not b!3304389))

(assert (not d!925379))

(assert (not b!3304393))

(assert (not b!3304343))

(assert (not b!3304418))

(assert (not b_next!87473))

(assert (not b!3304042))

(assert (not b_lambda!92267))

(assert (not b_lambda!92247))

(assert (not d!925303))

(assert (not b!3304367))

(assert (not b!3304402))

(assert (not b!3304326))

(assert (not b!3304182))

(assert (not b!3304045))

(assert (not b!3304463))

(assert (not b!3304046))

(assert (not b!3304079))

(assert (not d!925235))

(assert (not d!925251))

(assert (not d!925297))

(assert (not b!3304166))

(assert b_and!226353)

(assert (not d!925311))

(assert (not b_next!87477))

(assert (not d!925259))

(assert (not d!925227))

(assert (not b!3304199))

(assert (not b!3304192))

(assert (not b!3304446))

(assert (not b_next!87509))

(assert (not d!925305))

(assert (not b!3304133))

(assert (not d!925265))

(assert (not b!3304219))

(assert (not b!3304451))

(assert (not b!3304403))

(assert (not b_lambda!92283))

(assert (not d!925279))

(assert (not b!3304480))

(assert (not b_lambda!92249))

(assert (not b!3304415))

(assert (not b_lambda!92285))

(assert (not b!3304460))

(assert b_and!226377)

(assert (not d!925321))

(assert (not b!3304443))

(assert (not b!3304383))

(assert b_and!226351)

(assert (not b!3304097))

(assert (not d!925275))

(assert (not b!3304138))

(assert (not b!3304384))

(assert (not b!3304204))

(assert (not b!3304179))

(assert (not d!925395))

(assert (not b!3304093))

(assert (not b_next!87497))

(assert (not b!3304407))

(assert (not d!925407))

(assert (not b!3304459))

(assert (not b!3304074))

(assert (not b!3303816))

(assert (not d!925191))

(assert (not b!3304345))

(assert (not b!3304450))

(assert b_and!226381)

(assert (not d!925233))

(assert (not d!925221))

(assert (not b!3304014))

(assert (not b!3304197))

(assert (not b_next!87493))

(assert (not b!3304158))

(assert (not b!3304107))

(assert (not d!925263))

(assert (not b!3304391))

(assert (not b!3304086))

(assert (not b_next!87515))

(assert (not bm!240163))

(assert (not b!3304015))

(assert (not b!3304392))

(assert (not b!3304170))

(assert b_and!226379)

(assert (not b!3304481))

(assert (not b!3304482))

(assert (not b!3304180))

(assert (not bs!548925))

(assert (not d!925277))

(assert (not d!925301))

(assert (not d!925289))

(assert (not b!3304185))

(assert (not d!925317))

(assert (not d!925273))

(assert (not d!925383))

(assert (not b_next!87499))

(assert (not d!925399))

(assert (not b!3304473))

(assert (not b!3304437))

(assert (not b!3304044))

(assert (not b!3304205))

(assert (not b_lambda!92243))

(assert (not b!3304193))

(assert (not tb!171355))

(assert (not b!3304434))

(assert (not b_lambda!92245))

(assert (not d!925313))

(assert (not d!925231))

(assert (not d!925315))

(assert (not b!3304455))

(assert (not b!3304142))

(assert (not b!3304155))

(assert (not d!925239))

(assert (not b!3304165))

(assert (not b!3304427))

(assert (not d!925197))

(assert (not bm!240162))

(assert (not b!3304026))

(assert (not tb!171365))

(assert (not b!3304196))

(assert (not b!3304183))

(assert (not b!3304062))

(assert (not b!3304444))

(assert (not d!925385))

(assert (not b_lambda!92281))

(assert (not b!3304095))

(assert b_and!226383)

(assert (not b!3304020))

(assert (not b!3304188))

(assert (not b!3304468))

(assert (not b!3304324))

(assert (not b!3304397))

(assert (not b!3304406))

(assert (not b!3304445))

(assert (not b!3304063))

(assert (not b!3304458))

(check-sat)

(pop 1)

(push 1)

(assert b_and!226255)

(assert b_and!226349)

(assert (not b_next!87475))

(assert b_and!226355)

(assert (not b_next!87473))

(assert (not b_next!87509))

(assert b_and!226377)

(assert b_and!226351)

(assert (not b_next!87497))

(assert b_and!226381)

(assert b_and!226379)

(assert (not b_next!87499))

(assert b_and!226383)

(assert b_and!226347)

(assert (not b_next!87469))

(assert b_and!226259)

(assert (not b_next!87513))

(assert b_and!226309)

(assert (not b_next!87511))

(assert (not b_next!87479))

(assert (not b_next!87495))

(assert b_and!226251)

(assert (not b_next!87471))

(assert b_and!226299)

(assert b_and!226353)

(assert (not b_next!87477))

(assert (not b_next!87493))

(assert (not b_next!87515))

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!137692 () Bool)

(assert start!137692)

(declare-fun b!1470353 () Bool)

(declare-fun b_free!37083 () Bool)

(declare-fun b_next!37787 () Bool)

(assert (=> b!1470353 (= b_free!37083 (not b_next!37787))))

(declare-fun tp!414777 () Bool)

(declare-fun b_and!100757 () Bool)

(assert (=> b!1470353 (= tp!414777 b_and!100757)))

(declare-fun b_free!37085 () Bool)

(declare-fun b_next!37789 () Bool)

(assert (=> b!1470353 (= b_free!37085 (not b_next!37789))))

(declare-fun tp!414774 () Bool)

(declare-fun b_and!100759 () Bool)

(assert (=> b!1470353 (= tp!414774 b_and!100759)))

(declare-fun b!1470366 () Bool)

(declare-fun b_free!37087 () Bool)

(declare-fun b_next!37791 () Bool)

(assert (=> b!1470366 (= b_free!37087 (not b_next!37791))))

(declare-fun tp!414773 () Bool)

(declare-fun b_and!100761 () Bool)

(assert (=> b!1470366 (= tp!414773 b_and!100761)))

(declare-fun b_free!37089 () Bool)

(declare-fun b_next!37793 () Bool)

(assert (=> b!1470366 (= b_free!37089 (not b_next!37793))))

(declare-fun tp!414779 () Bool)

(declare-fun b_and!100763 () Bool)

(assert (=> b!1470366 (= tp!414779 b_and!100763)))

(declare-fun b!1470352 () Bool)

(declare-fun b_free!37091 () Bool)

(declare-fun b_next!37795 () Bool)

(assert (=> b!1470352 (= b_free!37091 (not b_next!37795))))

(declare-fun tp!414770 () Bool)

(declare-fun b_and!100765 () Bool)

(assert (=> b!1470352 (= tp!414770 b_and!100765)))

(declare-fun b_free!37093 () Bool)

(declare-fun b_next!37797 () Bool)

(assert (=> b!1470352 (= b_free!37093 (not b_next!37797))))

(declare-fun tp!414769 () Bool)

(declare-fun b_and!100767 () Bool)

(assert (=> b!1470352 (= tp!414769 b_and!100767)))

(declare-fun e!938821 () Bool)

(assert (=> b!1470352 (= e!938821 (and tp!414770 tp!414769))))

(declare-fun e!938811 () Bool)

(assert (=> b!1470353 (= e!938811 (and tp!414777 tp!414774))))

(declare-fun b!1470354 () Bool)

(declare-fun e!938810 () Bool)

(declare-fun e!938815 () Bool)

(declare-fun tp!414772 () Bool)

(declare-datatypes ((List!15465 0))(
  ( (Nil!15399) (Cons!15399 (h!20800 (_ BitVec 16)) (t!135558 List!15465)) )
))
(declare-datatypes ((TokenValue!2826 0))(
  ( (FloatLiteralValue!5652 (text!20227 List!15465)) (TokenValueExt!2825 (__x!9442 Int)) (Broken!14130 (value!87599 List!15465)) (Object!2891) (End!2826) (Def!2826) (Underscore!2826) (Match!2826) (Else!2826) (Error!2826) (Case!2826) (If!2826) (Extends!2826) (Abstract!2826) (Class!2826) (Val!2826) (DelimiterValue!5652 (del!2886 List!15465)) (KeywordValue!2832 (value!87600 List!15465)) (CommentValue!5652 (value!87601 List!15465)) (WhitespaceValue!5652 (value!87602 List!15465)) (IndentationValue!2826 (value!87603 List!15465)) (String!18387) (Int32!2826) (Broken!14131 (value!87604 List!15465)) (Boolean!2827) (Unit!25097) (OperatorValue!2829 (op!2886 List!15465)) (IdentifierValue!5652 (value!87605 List!15465)) (IdentifierValue!5653 (value!87606 List!15465)) (WhitespaceValue!5653 (value!87607 List!15465)) (True!5652) (False!5652) (Broken!14132 (value!87608 List!15465)) (Broken!14133 (value!87609 List!15465)) (True!5653) (RightBrace!2826) (RightBracket!2826) (Colon!2826) (Null!2826) (Comma!2826) (LeftBracket!2826) (False!5653) (LeftBrace!2826) (ImaginaryLiteralValue!2826 (text!20228 List!15465)) (StringLiteralValue!8478 (value!87610 List!15465)) (EOFValue!2826 (value!87611 List!15465)) (IdentValue!2826 (value!87612 List!15465)) (DelimiterValue!5653 (value!87613 List!15465)) (DedentValue!2826 (value!87614 List!15465)) (NewLineValue!2826 (value!87615 List!15465)) (IntegerValue!8478 (value!87616 (_ BitVec 32)) (text!20229 List!15465)) (IntegerValue!8479 (value!87617 Int) (text!20230 List!15465)) (Times!2826) (Or!2826) (Equal!2826) (Minus!2826) (Broken!14134 (value!87618 List!15465)) (And!2826) (Div!2826) (LessEqual!2826) (Mod!2826) (Concat!6876) (Not!2826) (Plus!2826) (SpaceValue!2826 (value!87619 List!15465)) (IntegerValue!8480 (value!87620 Int) (text!20231 List!15465)) (StringLiteralValue!8479 (text!20232 List!15465)) (FloatLiteralValue!5653 (text!20233 List!15465)) (BytesLiteralValue!2826 (value!87621 List!15465)) (CommentValue!5653 (value!87622 List!15465)) (StringLiteralValue!8480 (value!87623 List!15465)) (ErrorTokenValue!2826 (msg!2887 List!15465)) )
))
(declare-datatypes ((C!8278 0))(
  ( (C!8279 (val!4709 Int)) )
))
(declare-datatypes ((Regex!4050 0))(
  ( (ElementMatch!4050 (c!242224 C!8278)) (Concat!6877 (regOne!8612 Regex!4050) (regTwo!8612 Regex!4050)) (EmptyExpr!4050) (Star!4050 (reg!4379 Regex!4050)) (EmptyLang!4050) (Union!4050 (regOne!8613 Regex!4050) (regTwo!8613 Regex!4050)) )
))
(declare-datatypes ((String!18388 0))(
  ( (String!18389 (value!87624 String)) )
))
(declare-datatypes ((List!15466 0))(
  ( (Nil!15400) (Cons!15400 (h!20801 C!8278) (t!135559 List!15466)) )
))
(declare-datatypes ((IArray!10513 0))(
  ( (IArray!10514 (innerList!5314 List!15466)) )
))
(declare-datatypes ((Conc!5254 0))(
  ( (Node!5254 (left!13041 Conc!5254) (right!13371 Conc!5254) (csize!10738 Int) (cheight!5465 Int)) (Leaf!7824 (xs!8009 IArray!10513) (csize!10739 Int)) (Empty!5254) )
))
(declare-datatypes ((BalanceConc!10448 0))(
  ( (BalanceConc!10449 (c!242225 Conc!5254)) )
))
(declare-datatypes ((TokenValueInjection!5312 0))(
  ( (TokenValueInjection!5313 (toValue!4059 Int) (toChars!3918 Int)) )
))
(declare-datatypes ((Rule!5272 0))(
  ( (Rule!5273 (regex!2736 Regex!4050) (tag!3000 String!18388) (isSeparator!2736 Bool) (transformation!2736 TokenValueInjection!5312)) )
))
(declare-datatypes ((Token!5134 0))(
  ( (Token!5135 (value!87625 TokenValue!2826) (rule!4513 Rule!5272) (size!12523 Int) (originalCharacters!3598 List!15466)) )
))
(declare-datatypes ((List!15467 0))(
  ( (Nil!15401) (Cons!15401 (h!20802 Token!5134) (t!135560 List!15467)) )
))
(declare-fun l1!3136 () List!15467)

(declare-fun inv!21 (TokenValue!2826) Bool)

(assert (=> b!1470354 (= e!938815 (and (inv!21 (value!87625 (h!20802 l1!3136))) e!938810 tp!414772))))

(declare-fun b!1470355 () Bool)

(declare-fun e!938816 () Bool)

(assert (=> b!1470355 (= e!938816 false)))

(declare-datatypes ((List!15468 0))(
  ( (Nil!15402) (Cons!15402 (h!20803 Rule!5272) (t!135561 List!15468)) )
))
(declare-fun rules!4290 () List!15468)

(declare-fun lt!511310 () Bool)

(declare-datatypes ((LexerInterface!2392 0))(
  ( (LexerInterfaceExt!2389 (__x!9443 Int)) (Lexer!2390) )
))
(declare-fun thiss!27374 () LexerInterface!2392)

(declare-fun tokensListTwoByTwoPredicateSeparableList!252 (LexerInterface!2392 List!15467 List!15468) Bool)

(assert (=> b!1470355 (= lt!511310 (tokensListTwoByTwoPredicateSeparableList!252 thiss!27374 l1!3136 rules!4290))))

(declare-fun b!1470356 () Bool)

(declare-fun res!664804 () Bool)

(assert (=> b!1470356 (=> (not res!664804) (not e!938816))))

(declare-fun rulesInvariant!2181 (LexerInterface!2392 List!15468) Bool)

(assert (=> b!1470356 (= res!664804 (rulesInvariant!2181 thiss!27374 rules!4290))))

(declare-fun tp!414781 () Bool)

(declare-fun l2!3105 () List!15467)

(declare-fun e!938809 () Bool)

(declare-fun b!1470357 () Bool)

(declare-fun e!938806 () Bool)

(assert (=> b!1470357 (= e!938806 (and (inv!21 (value!87625 (h!20802 l2!3105))) e!938809 tp!414781))))

(declare-fun b!1470358 () Bool)

(declare-fun res!664802 () Bool)

(assert (=> b!1470358 (=> (not res!664802) (not e!938816))))

(declare-fun rulesProduceEachTokenIndividuallyList!759 (LexerInterface!2392 List!15468 List!15467) Bool)

(assert (=> b!1470358 (= res!664802 (rulesProduceEachTokenIndividuallyList!759 thiss!27374 rules!4290 l2!3105))))

(declare-fun e!938818 () Bool)

(declare-fun tp!414778 () Bool)

(declare-fun b!1470359 () Bool)

(declare-fun inv!20603 (String!18388) Bool)

(declare-fun inv!20606 (TokenValueInjection!5312) Bool)

(assert (=> b!1470359 (= e!938818 (and tp!414778 (inv!20603 (tag!3000 (h!20803 rules!4290))) (inv!20606 (transformation!2736 (h!20803 rules!4290))) e!938811))))

(declare-fun b!1470360 () Bool)

(declare-fun res!664801 () Bool)

(assert (=> b!1470360 (=> (not res!664801) (not e!938816))))

(assert (=> b!1470360 (= res!664801 (rulesProduceEachTokenIndividuallyList!759 thiss!27374 rules!4290 l1!3136))))

(declare-fun b!1470361 () Bool)

(declare-fun res!664803 () Bool)

(assert (=> b!1470361 (=> (not res!664803) (not e!938816))))

(declare-fun isEmpty!9624 (List!15468) Bool)

(assert (=> b!1470361 (= res!664803 (not (isEmpty!9624 rules!4290)))))

(declare-fun res!664800 () Bool)

(assert (=> start!137692 (=> (not res!664800) (not e!938816))))

(assert (=> start!137692 (= res!664800 (is-Lexer!2390 thiss!27374))))

(assert (=> start!137692 e!938816))

(assert (=> start!137692 true))

(declare-fun e!938817 () Bool)

(assert (=> start!137692 e!938817))

(declare-fun e!938805 () Bool)

(assert (=> start!137692 e!938805))

(declare-fun e!938812 () Bool)

(assert (=> start!137692 e!938812))

(declare-fun b!1470362 () Bool)

(declare-fun tp!414775 () Bool)

(declare-fun inv!20607 (Token!5134) Bool)

(assert (=> b!1470362 (= e!938805 (and (inv!20607 (h!20802 l1!3136)) e!938815 tp!414775))))

(declare-fun tp!414776 () Bool)

(declare-fun b!1470363 () Bool)

(assert (=> b!1470363 (= e!938810 (and tp!414776 (inv!20603 (tag!3000 (rule!4513 (h!20802 l1!3136)))) (inv!20606 (transformation!2736 (rule!4513 (h!20802 l1!3136)))) e!938821))))

(declare-fun b!1470364 () Bool)

(declare-fun tp!414780 () Bool)

(assert (=> b!1470364 (= e!938812 (and (inv!20607 (h!20802 l2!3105)) e!938806 tp!414780))))

(declare-fun b!1470365 () Bool)

(declare-fun e!938814 () Bool)

(declare-fun tp!414782 () Bool)

(assert (=> b!1470365 (= e!938809 (and tp!414782 (inv!20603 (tag!3000 (rule!4513 (h!20802 l2!3105)))) (inv!20606 (transformation!2736 (rule!4513 (h!20802 l2!3105)))) e!938814))))

(assert (=> b!1470366 (= e!938814 (and tp!414773 tp!414779))))

(declare-fun b!1470367 () Bool)

(declare-fun tp!414771 () Bool)

(assert (=> b!1470367 (= e!938817 (and e!938818 tp!414771))))

(assert (= (and start!137692 res!664800) b!1470361))

(assert (= (and b!1470361 res!664803) b!1470356))

(assert (= (and b!1470356 res!664804) b!1470360))

(assert (= (and b!1470360 res!664801) b!1470358))

(assert (= (and b!1470358 res!664802) b!1470355))

(assert (= b!1470359 b!1470353))

(assert (= b!1470367 b!1470359))

(assert (= (and start!137692 (is-Cons!15402 rules!4290)) b!1470367))

(assert (= b!1470363 b!1470352))

(assert (= b!1470354 b!1470363))

(assert (= b!1470362 b!1470354))

(assert (= (and start!137692 (is-Cons!15401 l1!3136)) b!1470362))

(assert (= b!1470365 b!1470366))

(assert (= b!1470357 b!1470365))

(assert (= b!1470364 b!1470357))

(assert (= (and start!137692 (is-Cons!15401 l2!3105)) b!1470364))

(declare-fun m!1714585 () Bool)

(assert (=> b!1470361 m!1714585))

(declare-fun m!1714587 () Bool)

(assert (=> b!1470364 m!1714587))

(declare-fun m!1714589 () Bool)

(assert (=> b!1470359 m!1714589))

(declare-fun m!1714591 () Bool)

(assert (=> b!1470359 m!1714591))

(declare-fun m!1714593 () Bool)

(assert (=> b!1470357 m!1714593))

(declare-fun m!1714595 () Bool)

(assert (=> b!1470355 m!1714595))

(declare-fun m!1714597 () Bool)

(assert (=> b!1470363 m!1714597))

(declare-fun m!1714599 () Bool)

(assert (=> b!1470363 m!1714599))

(declare-fun m!1714601 () Bool)

(assert (=> b!1470358 m!1714601))

(declare-fun m!1714603 () Bool)

(assert (=> b!1470360 m!1714603))

(declare-fun m!1714605 () Bool)

(assert (=> b!1470356 m!1714605))

(declare-fun m!1714607 () Bool)

(assert (=> b!1470365 m!1714607))

(declare-fun m!1714609 () Bool)

(assert (=> b!1470365 m!1714609))

(declare-fun m!1714611 () Bool)

(assert (=> b!1470362 m!1714611))

(declare-fun m!1714613 () Bool)

(assert (=> b!1470354 m!1714613))

(push 1)

(assert (not b!1470360))

(assert b_and!100761)

(assert (not b!1470362))

(assert (not b!1470356))

(assert b_and!100765)

(assert b_and!100759)

(assert (not b!1470364))

(assert (not b!1470359))

(assert (not b_next!37795))

(assert (not b!1470365))

(assert b_and!100763)

(assert (not b!1470357))

(assert (not b!1470355))

(assert (not b!1470363))

(assert (not b_next!37797))

(assert (not b!1470358))

(assert (not b!1470361))

(assert (not b!1470367))

(assert (not b_next!37791))

(assert (not b!1470354))

(assert (not b_next!37793))

(assert b_and!100757)

(assert (not b_next!37787))

(assert b_and!100767)

(assert (not b_next!37789))

(check-sat)

(pop 1)

(push 1)

(assert b_and!100761)

(assert b_and!100763)

(assert (not b_next!37797))

(assert b_and!100765)

(assert b_and!100759)

(assert (not b_next!37795))

(assert (not b_next!37791))

(assert (not b_next!37793))

(assert b_and!100757)

(assert (not b_next!37787))

(assert b_and!100767)

(assert (not b_next!37789))

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!240544 () Bool)

(assert start!240544)

(declare-fun b!2466427 () Bool)

(declare-fun b_free!70997 () Bool)

(declare-fun b_next!71701 () Bool)

(assert (=> b!2466427 (= b_free!70997 (not b_next!71701))))

(declare-fun tp!786775 () Bool)

(declare-fun b_and!186485 () Bool)

(assert (=> b!2466427 (= tp!786775 b_and!186485)))

(declare-fun b_free!70999 () Bool)

(declare-fun b_next!71703 () Bool)

(assert (=> b!2466427 (= b_free!70999 (not b_next!71703))))

(declare-fun tp!786762 () Bool)

(declare-fun b_and!186487 () Bool)

(assert (=> b!2466427 (= tp!786762 b_and!186487)))

(declare-fun b!2466431 () Bool)

(declare-fun b_free!71001 () Bool)

(declare-fun b_next!71705 () Bool)

(assert (=> b!2466431 (= b_free!71001 (not b_next!71705))))

(declare-fun tp!786769 () Bool)

(declare-fun b_and!186489 () Bool)

(assert (=> b!2466431 (= tp!786769 b_and!186489)))

(declare-fun b_free!71003 () Bool)

(declare-fun b_next!71707 () Bool)

(assert (=> b!2466431 (= b_free!71003 (not b_next!71707))))

(declare-fun tp!786766 () Bool)

(declare-fun b_and!186491 () Bool)

(assert (=> b!2466431 (= tp!786766 b_and!186491)))

(declare-fun b!2466432 () Bool)

(declare-fun b_free!71005 () Bool)

(declare-fun b_next!71709 () Bool)

(assert (=> b!2466432 (= b_free!71005 (not b_next!71709))))

(declare-fun tp!786760 () Bool)

(declare-fun b_and!186493 () Bool)

(assert (=> b!2466432 (= tp!786760 b_and!186493)))

(declare-fun b_free!71007 () Bool)

(declare-fun b_next!71711 () Bool)

(assert (=> b!2466432 (= b_free!71007 (not b_next!71711))))

(declare-fun tp!786772 () Bool)

(declare-fun b_and!186495 () Bool)

(assert (=> b!2466432 (= tp!786772 b_and!186495)))

(declare-fun b!2466434 () Bool)

(declare-fun b_free!71009 () Bool)

(declare-fun b_next!71713 () Bool)

(assert (=> b!2466434 (= b_free!71009 (not b_next!71713))))

(declare-fun tp!786765 () Bool)

(declare-fun b_and!186497 () Bool)

(assert (=> b!2466434 (= tp!786765 b_and!186497)))

(declare-fun b_free!71011 () Bool)

(declare-fun b_next!71715 () Bool)

(assert (=> b!2466434 (= b_free!71011 (not b_next!71715))))

(declare-fun tp!786768 () Bool)

(declare-fun b_and!186499 () Bool)

(assert (=> b!2466434 (= tp!786768 b_and!186499)))

(declare-fun b!2466423 () Bool)

(declare-fun res!1044653 () Bool)

(declare-fun e!1564240 () Bool)

(assert (=> b!2466423 (=> (not res!1044653) (not e!1564240))))

(declare-fun i!1803 () Int)

(declare-datatypes ((List!28826 0))(
  ( (Nil!28726) (Cons!28726 (h!34127 (_ BitVec 16)) (t!209413 List!28826)) )
))
(declare-datatypes ((TokenValue!4656 0))(
  ( (FloatLiteralValue!9312 (text!33037 List!28826)) (TokenValueExt!4655 (__x!18567 Int)) (Broken!23280 (value!142776 List!28826)) (Object!4755) (End!4656) (Def!4656) (Underscore!4656) (Match!4656) (Else!4656) (Error!4656) (Case!4656) (If!4656) (Extends!4656) (Abstract!4656) (Class!4656) (Val!4656) (DelimiterValue!9312 (del!4716 List!28826)) (KeywordValue!4662 (value!142777 List!28826)) (CommentValue!9312 (value!142778 List!28826)) (WhitespaceValue!9312 (value!142779 List!28826)) (IndentationValue!4656 (value!142780 List!28826)) (String!31577) (Int32!4656) (Broken!23281 (value!142781 List!28826)) (Boolean!4657) (Unit!42069) (OperatorValue!4659 (op!4716 List!28826)) (IdentifierValue!9312 (value!142782 List!28826)) (IdentifierValue!9313 (value!142783 List!28826)) (WhitespaceValue!9313 (value!142784 List!28826)) (True!9312) (False!9312) (Broken!23282 (value!142785 List!28826)) (Broken!23283 (value!142786 List!28826)) (True!9313) (RightBrace!4656) (RightBracket!4656) (Colon!4656) (Null!4656) (Comma!4656) (LeftBracket!4656) (False!9313) (LeftBrace!4656) (ImaginaryLiteralValue!4656 (text!33038 List!28826)) (StringLiteralValue!13968 (value!142787 List!28826)) (EOFValue!4656 (value!142788 List!28826)) (IdentValue!4656 (value!142789 List!28826)) (DelimiterValue!9313 (value!142790 List!28826)) (DedentValue!4656 (value!142791 List!28826)) (NewLineValue!4656 (value!142792 List!28826)) (IntegerValue!13968 (value!142793 (_ BitVec 32)) (text!33039 List!28826)) (IntegerValue!13969 (value!142794 Int) (text!33040 List!28826)) (Times!4656) (Or!4656) (Equal!4656) (Minus!4656) (Broken!23284 (value!142795 List!28826)) (And!4656) (Div!4656) (LessEqual!4656) (Mod!4656) (Concat!11914) (Not!4656) (Plus!4656) (SpaceValue!4656 (value!142796 List!28826)) (IntegerValue!13970 (value!142797 Int) (text!33041 List!28826)) (StringLiteralValue!13969 (text!33042 List!28826)) (FloatLiteralValue!9313 (text!33043 List!28826)) (BytesLiteralValue!4656 (value!142798 List!28826)) (CommentValue!9313 (value!142799 List!28826)) (StringLiteralValue!13970 (value!142800 List!28826)) (ErrorTokenValue!4656 (msg!4717 List!28826)) )
))
(declare-datatypes ((C!14674 0))(
  ( (C!14675 (val!8597 Int)) )
))
(declare-datatypes ((List!28827 0))(
  ( (Nil!28727) (Cons!28727 (h!34128 C!14674) (t!209414 List!28827)) )
))
(declare-datatypes ((IArray!18369 0))(
  ( (IArray!18370 (innerList!9242 List!28827)) )
))
(declare-datatypes ((Conc!9182 0))(
  ( (Node!9182 (left!22056 Conc!9182) (right!22386 Conc!9182) (csize!18594 Int) (cheight!9393 Int)) (Leaf!13725 (xs!12162 IArray!18369) (csize!18595 Int)) (Empty!9182) )
))
(declare-datatypes ((BalanceConc!17978 0))(
  ( (BalanceConc!17979 (c!393278 Conc!9182)) )
))
(declare-datatypes ((Regex!7258 0))(
  ( (ElementMatch!7258 (c!393279 C!14674)) (Concat!11915 (regOne!15028 Regex!7258) (regTwo!15028 Regex!7258)) (EmptyExpr!7258) (Star!7258 (reg!7587 Regex!7258)) (EmptyLang!7258) (Union!7258 (regOne!15029 Regex!7258) (regTwo!15029 Regex!7258)) )
))
(declare-datatypes ((String!31578 0))(
  ( (String!31579 (value!142801 String)) )
))
(declare-datatypes ((TokenValueInjection!8812 0))(
  ( (TokenValueInjection!8813 (toValue!6330 Int) (toChars!6189 Int)) )
))
(declare-datatypes ((Rule!8740 0))(
  ( (Rule!8741 (regex!4470 Regex!7258) (tag!4960 String!31578) (isSeparator!4470 Bool) (transformation!4470 TokenValueInjection!8812)) )
))
(declare-datatypes ((Token!8410 0))(
  ( (Token!8411 (value!142802 TokenValue!4656) (rule!6828 Rule!8740) (size!22358 Int) (originalCharacters!5236 List!28827)) )
))
(declare-datatypes ((List!28828 0))(
  ( (Nil!28728) (Cons!28728 (h!34129 Token!8410) (t!209415 List!28828)) )
))
(declare-fun l!6611 () List!28828)

(declare-fun size!22359 (List!28828) Int)

(assert (=> b!2466423 (= res!1044653 (< (+ 1 i!1803) (size!22359 l!6611)))))

(declare-fun res!1044654 () Bool)

(assert (=> start!240544 (=> (not res!1044654) (not e!1564240))))

(declare-datatypes ((LexerInterface!4067 0))(
  ( (LexerInterfaceExt!4064 (__x!18568 Int)) (Lexer!4065) )
))
(declare-fun thiss!27932 () LexerInterface!4067)

(assert (=> start!240544 (= res!1044654 (is-Lexer!4065 thiss!27932))))

(assert (=> start!240544 e!1564240))

(assert (=> start!240544 true))

(declare-fun e!1564238 () Bool)

(assert (=> start!240544 e!1564238))

(declare-fun t2!67 () Token!8410)

(declare-fun e!1564254 () Bool)

(declare-fun inv!38816 (Token!8410) Bool)

(assert (=> start!240544 (and (inv!38816 t2!67) e!1564254)))

(declare-fun e!1564255 () Bool)

(assert (=> start!240544 e!1564255))

(declare-fun t1!67 () Token!8410)

(declare-fun e!1564246 () Bool)

(assert (=> start!240544 (and (inv!38816 t1!67) e!1564246)))

(declare-fun b!2466424 () Bool)

(declare-fun e!1564241 () Bool)

(declare-fun tp!786774 () Bool)

(assert (=> b!2466424 (= e!1564238 (and e!1564241 tp!786774))))

(declare-fun b!2466425 () Bool)

(declare-fun res!1044655 () Bool)

(assert (=> b!2466425 (=> (not res!1044655) (not e!1564240))))

(declare-datatypes ((List!28829 0))(
  ( (Nil!28729) (Cons!28729 (h!34130 Rule!8740) (t!209416 List!28829)) )
))
(declare-fun rules!4472 () List!28829)

(declare-fun rulesProduceEachTokenIndividuallyList!1383 (LexerInterface!4067 List!28829 List!28828) Bool)

(assert (=> b!2466425 (= res!1044655 (rulesProduceEachTokenIndividuallyList!1383 thiss!27932 rules!4472 l!6611))))

(declare-fun b!2466426 () Bool)

(declare-fun res!1044648 () Bool)

(assert (=> b!2466426 (=> (not res!1044648) (not e!1564240))))

(declare-fun apply!6758 (List!28828 Int) Token!8410)

(assert (=> b!2466426 (= res!1044648 (= (apply!6758 l!6611 i!1803) t1!67))))

(declare-fun e!1564239 () Bool)

(assert (=> b!2466427 (= e!1564239 (and tp!786775 tp!786762))))

(declare-fun e!1564250 () Bool)

(declare-fun b!2466428 () Bool)

(declare-fun tp!786773 () Bool)

(declare-fun inv!21 (TokenValue!4656) Bool)

(assert (=> b!2466428 (= e!1564254 (and (inv!21 (value!142802 t2!67)) e!1564250 tp!786773))))

(declare-fun b!2466429 () Bool)

(assert (=> b!2466429 (= e!1564240 (and (not (= i!1803 0)) (= l!6611 Nil!28728)))))

(declare-fun b!2466430 () Bool)

(declare-fun res!1044656 () Bool)

(assert (=> b!2466430 (=> (not res!1044656) (not e!1564240))))

(declare-fun rulesInvariant!3567 (LexerInterface!4067 List!28829) Bool)

(assert (=> b!2466430 (= res!1044656 (rulesInvariant!3567 thiss!27932 rules!4472))))

(declare-fun e!1564237 () Bool)

(assert (=> b!2466431 (= e!1564237 (and tp!786769 tp!786766))))

(declare-fun e!1564253 () Bool)

(assert (=> b!2466432 (= e!1564253 (and tp!786760 tp!786772))))

(declare-fun e!1564244 () Bool)

(declare-fun tp!786764 () Bool)

(declare-fun b!2466433 () Bool)

(declare-fun e!1564247 () Bool)

(declare-fun inv!38813 (String!31578) Bool)

(declare-fun inv!38817 (TokenValueInjection!8812) Bool)

(assert (=> b!2466433 (= e!1564244 (and tp!786764 (inv!38813 (tag!4960 (rule!6828 t1!67))) (inv!38817 (transformation!4470 (rule!6828 t1!67))) e!1564247))))

(assert (=> b!2466434 (= e!1564247 (and tp!786765 tp!786768))))

(declare-fun e!1564256 () Bool)

(declare-fun b!2466435 () Bool)

(declare-fun tp!786776 () Bool)

(declare-fun e!1564252 () Bool)

(assert (=> b!2466435 (= e!1564256 (and (inv!21 (value!142802 (h!34129 l!6611))) e!1564252 tp!786776))))

(declare-fun b!2466436 () Bool)

(declare-fun res!1044652 () Bool)

(assert (=> b!2466436 (=> (not res!1044652) (not e!1564240))))

(assert (=> b!2466436 (= res!1044652 (= (apply!6758 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun b!2466437 () Bool)

(declare-fun res!1044649 () Bool)

(assert (=> b!2466437 (=> (not res!1044649) (not e!1564240))))

(declare-fun isEmpty!16698 (List!28829) Bool)

(assert (=> b!2466437 (= res!1044649 (not (isEmpty!16698 rules!4472)))))

(declare-fun tp!786771 () Bool)

(declare-fun b!2466438 () Bool)

(assert (=> b!2466438 (= e!1564250 (and tp!786771 (inv!38813 (tag!4960 (rule!6828 t2!67))) (inv!38817 (transformation!4470 (rule!6828 t2!67))) e!1564253))))

(declare-fun b!2466439 () Bool)

(declare-fun tp!786763 () Bool)

(assert (=> b!2466439 (= e!1564252 (and tp!786763 (inv!38813 (tag!4960 (rule!6828 (h!34129 l!6611)))) (inv!38817 (transformation!4470 (rule!6828 (h!34129 l!6611)))) e!1564239))))

(declare-fun b!2466440 () Bool)

(declare-fun res!1044651 () Bool)

(assert (=> b!2466440 (=> (not res!1044651) (not e!1564240))))

(assert (=> b!2466440 (= res!1044651 (>= i!1803 0))))

(declare-fun b!2466441 () Bool)

(declare-fun res!1044650 () Bool)

(assert (=> b!2466441 (=> (not res!1044650) (not e!1564240))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!606 (LexerInterface!4067 List!28828 List!28829) Bool)

(assert (=> b!2466441 (= res!1044650 (tokensListTwoByTwoPredicateSeparableList!606 thiss!27932 l!6611 rules!4472))))

(declare-fun b!2466442 () Bool)

(declare-fun tp!786770 () Bool)

(assert (=> b!2466442 (= e!1564255 (and (inv!38816 (h!34129 l!6611)) e!1564256 tp!786770))))

(declare-fun b!2466443 () Bool)

(declare-fun tp!786767 () Bool)

(assert (=> b!2466443 (= e!1564241 (and tp!786767 (inv!38813 (tag!4960 (h!34130 rules!4472))) (inv!38817 (transformation!4470 (h!34130 rules!4472))) e!1564237))))

(declare-fun tp!786761 () Bool)

(declare-fun b!2466444 () Bool)

(assert (=> b!2466444 (= e!1564246 (and (inv!21 (value!142802 t1!67)) e!1564244 tp!786761))))

(assert (= (and start!240544 res!1044654) b!2466437))

(assert (= (and b!2466437 res!1044649) b!2466430))

(assert (= (and b!2466430 res!1044656) b!2466425))

(assert (= (and b!2466425 res!1044655) b!2466441))

(assert (= (and b!2466441 res!1044650) b!2466440))

(assert (= (and b!2466440 res!1044651) b!2466423))

(assert (= (and b!2466423 res!1044653) b!2466426))

(assert (= (and b!2466426 res!1044648) b!2466436))

(assert (= (and b!2466436 res!1044652) b!2466429))

(assert (= b!2466443 b!2466431))

(assert (= b!2466424 b!2466443))

(assert (= (and start!240544 (is-Cons!28729 rules!4472)) b!2466424))

(assert (= b!2466438 b!2466432))

(assert (= b!2466428 b!2466438))

(assert (= start!240544 b!2466428))

(assert (= b!2466439 b!2466427))

(assert (= b!2466435 b!2466439))

(assert (= b!2466442 b!2466435))

(assert (= (and start!240544 (is-Cons!28728 l!6611)) b!2466442))

(assert (= b!2466433 b!2466434))

(assert (= b!2466444 b!2466433))

(assert (= start!240544 b!2466444))

(declare-fun m!2835867 () Bool)

(assert (=> b!2466442 m!2835867))

(declare-fun m!2835869 () Bool)

(assert (=> b!2466428 m!2835869))

(declare-fun m!2835871 () Bool)

(assert (=> b!2466437 m!2835871))

(declare-fun m!2835873 () Bool)

(assert (=> b!2466430 m!2835873))

(declare-fun m!2835875 () Bool)

(assert (=> b!2466438 m!2835875))

(declare-fun m!2835877 () Bool)

(assert (=> b!2466438 m!2835877))

(declare-fun m!2835879 () Bool)

(assert (=> b!2466439 m!2835879))

(declare-fun m!2835881 () Bool)

(assert (=> b!2466439 m!2835881))

(declare-fun m!2835883 () Bool)

(assert (=> b!2466423 m!2835883))

(declare-fun m!2835885 () Bool)

(assert (=> b!2466441 m!2835885))

(declare-fun m!2835887 () Bool)

(assert (=> b!2466435 m!2835887))

(declare-fun m!2835889 () Bool)

(assert (=> b!2466436 m!2835889))

(declare-fun m!2835891 () Bool)

(assert (=> b!2466425 m!2835891))

(declare-fun m!2835893 () Bool)

(assert (=> b!2466444 m!2835893))

(declare-fun m!2835895 () Bool)

(assert (=> start!240544 m!2835895))

(declare-fun m!2835897 () Bool)

(assert (=> start!240544 m!2835897))

(declare-fun m!2835899 () Bool)

(assert (=> b!2466426 m!2835899))

(declare-fun m!2835901 () Bool)

(assert (=> b!2466443 m!2835901))

(declare-fun m!2835903 () Bool)

(assert (=> b!2466443 m!2835903))

(declare-fun m!2835905 () Bool)

(assert (=> b!2466433 m!2835905))

(declare-fun m!2835907 () Bool)

(assert (=> b!2466433 m!2835907))

(push 1)

(assert (not b_next!71707))

(assert (not b_next!71715))

(assert (not b!2466430))

(assert (not start!240544))

(assert b_and!186485)

(assert (not b!2466433))

(assert (not b!2466439))

(assert (not b_next!71705))

(assert b_and!186499)

(assert (not b!2466436))

(assert (not b!2466425))

(assert (not b!2466443))

(assert (not b!2466437))

(assert (not b!2466442))

(assert b_and!186497)

(assert (not b_next!71711))

(assert (not b!2466441))

(assert b_and!186491)

(assert (not b!2466423))

(assert b_and!186489)

(assert (not b_next!71709))

(assert (not b!2466426))

(assert b_and!186493)

(assert (not b_next!71701))

(assert (not b!2466444))

(assert (not b_next!71703))

(assert b_and!186487)

(assert (not b!2466424))

(assert b_and!186495)

(assert (not b!2466435))

(assert (not b_next!71713))

(assert (not b!2466428))

(assert (not b!2466438))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!71707))

(assert b_and!186497)

(assert (not b_next!71715))

(assert (not b_next!71711))

(assert (not b_next!71701))

(assert b_and!186485)

(assert b_and!186495)

(assert (not b_next!71705))

(assert b_and!186499)

(assert (not b_next!71713))

(assert b_and!186491)

(assert b_and!186489)

(assert (not b_next!71709))

(assert b_and!186493)

(assert (not b_next!71703))

(assert b_and!186487)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2466521 () Bool)

(declare-fun e!1564327 () Bool)

(declare-fun inv!15 (TokenValue!4656) Bool)

(assert (=> b!2466521 (= e!1564327 (inv!15 (value!142802 (h!34129 l!6611))))))

(declare-fun d!710129 () Bool)

(declare-fun c!393286 () Bool)

(assert (=> d!710129 (= c!393286 (is-IntegerValue!13968 (value!142802 (h!34129 l!6611))))))

(declare-fun e!1564329 () Bool)

(assert (=> d!710129 (= (inv!21 (value!142802 (h!34129 l!6611))) e!1564329)))

(declare-fun b!2466522 () Bool)

(declare-fun inv!16 (TokenValue!4656) Bool)

(assert (=> b!2466522 (= e!1564329 (inv!16 (value!142802 (h!34129 l!6611))))))

(declare-fun b!2466523 () Bool)

(declare-fun res!1044694 () Bool)

(assert (=> b!2466523 (=> res!1044694 e!1564327)))

(assert (=> b!2466523 (= res!1044694 (not (is-IntegerValue!13970 (value!142802 (h!34129 l!6611)))))))

(declare-fun e!1564328 () Bool)

(assert (=> b!2466523 (= e!1564328 e!1564327)))

(declare-fun b!2466524 () Bool)

(assert (=> b!2466524 (= e!1564329 e!1564328)))

(declare-fun c!393287 () Bool)

(assert (=> b!2466524 (= c!393287 (is-IntegerValue!13969 (value!142802 (h!34129 l!6611))))))

(declare-fun b!2466525 () Bool)

(declare-fun inv!17 (TokenValue!4656) Bool)

(assert (=> b!2466525 (= e!1564328 (inv!17 (value!142802 (h!34129 l!6611))))))

(assert (= (and d!710129 c!393286) b!2466522))

(assert (= (and d!710129 (not c!393286)) b!2466524))

(assert (= (and b!2466524 c!393287) b!2466525))

(assert (= (and b!2466524 (not c!393287)) b!2466523))

(assert (= (and b!2466523 (not res!1044694)) b!2466521))

(declare-fun m!2835951 () Bool)

(assert (=> b!2466521 m!2835951))

(declare-fun m!2835953 () Bool)

(assert (=> b!2466522 m!2835953))

(declare-fun m!2835955 () Bool)

(assert (=> b!2466525 m!2835955))

(assert (=> b!2466435 d!710129))

(declare-fun d!710131 () Bool)

(declare-fun lt!882315 () Int)

(assert (=> d!710131 (>= lt!882315 0)))

(declare-fun e!1564332 () Int)

(assert (=> d!710131 (= lt!882315 e!1564332)))

(declare-fun c!393290 () Bool)

(assert (=> d!710131 (= c!393290 (is-Nil!28728 l!6611))))

(assert (=> d!710131 (= (size!22359 l!6611) lt!882315)))

(declare-fun b!2466530 () Bool)

(assert (=> b!2466530 (= e!1564332 0)))

(declare-fun b!2466531 () Bool)

(assert (=> b!2466531 (= e!1564332 (+ 1 (size!22359 (t!209415 l!6611))))))

(assert (= (and d!710131 c!393290) b!2466530))

(assert (= (and d!710131 (not c!393290)) b!2466531))

(declare-fun m!2835957 () Bool)

(assert (=> b!2466531 m!2835957))

(assert (=> b!2466423 d!710131))

(declare-fun b!2466532 () Bool)

(declare-fun e!1564333 () Bool)

(assert (=> b!2466532 (= e!1564333 (inv!15 (value!142802 t1!67)))))

(declare-fun d!710133 () Bool)

(declare-fun c!393291 () Bool)

(assert (=> d!710133 (= c!393291 (is-IntegerValue!13968 (value!142802 t1!67)))))

(declare-fun e!1564335 () Bool)

(assert (=> d!710133 (= (inv!21 (value!142802 t1!67)) e!1564335)))

(declare-fun b!2466533 () Bool)

(assert (=> b!2466533 (= e!1564335 (inv!16 (value!142802 t1!67)))))

(declare-fun b!2466534 () Bool)

(declare-fun res!1044695 () Bool)

(assert (=> b!2466534 (=> res!1044695 e!1564333)))

(assert (=> b!2466534 (= res!1044695 (not (is-IntegerValue!13970 (value!142802 t1!67))))))

(declare-fun e!1564334 () Bool)

(assert (=> b!2466534 (= e!1564334 e!1564333)))

(declare-fun b!2466535 () Bool)

(assert (=> b!2466535 (= e!1564335 e!1564334)))

(declare-fun c!393292 () Bool)

(assert (=> b!2466535 (= c!393292 (is-IntegerValue!13969 (value!142802 t1!67)))))

(declare-fun b!2466536 () Bool)

(assert (=> b!2466536 (= e!1564334 (inv!17 (value!142802 t1!67)))))

(assert (= (and d!710133 c!393291) b!2466533))

(assert (= (and d!710133 (not c!393291)) b!2466535))

(assert (= (and b!2466535 c!393292) b!2466536))

(assert (= (and b!2466535 (not c!393292)) b!2466534))

(assert (= (and b!2466534 (not res!1044695)) b!2466532))

(declare-fun m!2835959 () Bool)

(assert (=> b!2466532 m!2835959))

(declare-fun m!2835961 () Bool)

(assert (=> b!2466533 m!2835961))

(declare-fun m!2835963 () Bool)

(assert (=> b!2466536 m!2835963))

(assert (=> b!2466444 d!710133))

(declare-fun d!710135 () Bool)

(assert (=> d!710135 (= (inv!38813 (tag!4960 (rule!6828 t1!67))) (= (mod (str.len (value!142801 (tag!4960 (rule!6828 t1!67)))) 2) 0))))

(assert (=> b!2466433 d!710135))

(declare-fun d!710137 () Bool)

(declare-fun res!1044698 () Bool)

(declare-fun e!1564338 () Bool)

(assert (=> d!710137 (=> (not res!1044698) (not e!1564338))))

(declare-fun semiInverseModEq!1839 (Int Int) Bool)

(assert (=> d!710137 (= res!1044698 (semiInverseModEq!1839 (toChars!6189 (transformation!4470 (rule!6828 t1!67))) (toValue!6330 (transformation!4470 (rule!6828 t1!67)))))))

(assert (=> d!710137 (= (inv!38817 (transformation!4470 (rule!6828 t1!67))) e!1564338)))

(declare-fun b!2466539 () Bool)

(declare-fun equivClasses!1750 (Int Int) Bool)

(assert (=> b!2466539 (= e!1564338 (equivClasses!1750 (toChars!6189 (transformation!4470 (rule!6828 t1!67))) (toValue!6330 (transformation!4470 (rule!6828 t1!67)))))))

(assert (= (and d!710137 res!1044698) b!2466539))

(declare-fun m!2835965 () Bool)

(assert (=> d!710137 m!2835965))

(declare-fun m!2835967 () Bool)

(assert (=> b!2466539 m!2835967))

(assert (=> b!2466433 d!710137))

(declare-fun d!710141 () Bool)

(assert (=> d!710141 (= (isEmpty!16698 rules!4472) (is-Nil!28729 rules!4472))))

(assert (=> b!2466437 d!710141))

(declare-fun d!710143 () Bool)

(declare-fun lt!882318 () Token!8410)

(declare-fun contains!4904 (List!28828 Token!8410) Bool)

(assert (=> d!710143 (contains!4904 l!6611 lt!882318)))

(declare-fun e!1564343 () Token!8410)

(assert (=> d!710143 (= lt!882318 e!1564343)))

(declare-fun c!393295 () Bool)

(assert (=> d!710143 (= c!393295 (= i!1803 0))))

(declare-fun e!1564344 () Bool)

(assert (=> d!710143 e!1564344))

(declare-fun res!1044701 () Bool)

(assert (=> d!710143 (=> (not res!1044701) (not e!1564344))))

(assert (=> d!710143 (= res!1044701 (<= 0 i!1803))))

(assert (=> d!710143 (= (apply!6758 l!6611 i!1803) lt!882318)))

(declare-fun b!2466546 () Bool)

(assert (=> b!2466546 (= e!1564344 (< i!1803 (size!22359 l!6611)))))

(declare-fun b!2466547 () Bool)

(declare-fun head!5630 (List!28828) Token!8410)

(assert (=> b!2466547 (= e!1564343 (head!5630 l!6611))))

(declare-fun b!2466548 () Bool)

(declare-fun tail!3903 (List!28828) List!28828)

(assert (=> b!2466548 (= e!1564343 (apply!6758 (tail!3903 l!6611) (- i!1803 1)))))

(assert (= (and d!710143 res!1044701) b!2466546))

(assert (= (and d!710143 c!393295) b!2466547))

(assert (= (and d!710143 (not c!393295)) b!2466548))

(declare-fun m!2835969 () Bool)

(assert (=> d!710143 m!2835969))

(assert (=> b!2466546 m!2835883))

(declare-fun m!2835971 () Bool)

(assert (=> b!2466547 m!2835971))

(declare-fun m!2835973 () Bool)

(assert (=> b!2466548 m!2835973))

(assert (=> b!2466548 m!2835973))

(declare-fun m!2835975 () Bool)

(assert (=> b!2466548 m!2835975))

(assert (=> b!2466426 d!710143))

(declare-fun d!710145 () Bool)

(declare-fun lt!882321 () Token!8410)

(assert (=> d!710145 (contains!4904 l!6611 lt!882321)))

(declare-fun e!1564349 () Token!8410)

(assert (=> d!710145 (= lt!882321 e!1564349)))

(declare-fun c!393298 () Bool)

(assert (=> d!710145 (= c!393298 (= (+ 1 i!1803) 0))))

(declare-fun e!1564350 () Bool)

(assert (=> d!710145 e!1564350))

(declare-fun res!1044704 () Bool)

(assert (=> d!710145 (=> (not res!1044704) (not e!1564350))))

(assert (=> d!710145 (= res!1044704 (<= 0 (+ 1 i!1803)))))

(assert (=> d!710145 (= (apply!6758 l!6611 (+ 1 i!1803)) lt!882321)))

(declare-fun b!2466555 () Bool)

(assert (=> b!2466555 (= e!1564350 (< (+ 1 i!1803) (size!22359 l!6611)))))

(declare-fun b!2466556 () Bool)

(assert (=> b!2466556 (= e!1564349 (head!5630 l!6611))))

(declare-fun b!2466557 () Bool)

(assert (=> b!2466557 (= e!1564349 (apply!6758 (tail!3903 l!6611) (- (+ 1 i!1803) 1)))))

(assert (= (and d!710145 res!1044704) b!2466555))

(assert (= (and d!710145 c!393298) b!2466556))

(assert (= (and d!710145 (not c!393298)) b!2466557))

(declare-fun m!2835977 () Bool)

(assert (=> d!710145 m!2835977))

(assert (=> b!2466555 m!2835883))

(assert (=> b!2466556 m!2835971))

(assert (=> b!2466557 m!2835973))

(assert (=> b!2466557 m!2835973))

(declare-fun m!2835979 () Bool)

(assert (=> b!2466557 m!2835979))

(assert (=> b!2466436 d!710145))

(declare-fun b!2466628 () Bool)

(declare-fun e!1564402 () Bool)

(assert (=> b!2466628 (= e!1564402 true)))

(declare-fun b!2466627 () Bool)

(declare-fun e!1564401 () Bool)

(assert (=> b!2466627 (= e!1564401 e!1564402)))

(declare-fun b!2466626 () Bool)

(declare-fun e!1564400 () Bool)

(assert (=> b!2466626 (= e!1564400 e!1564401)))

(declare-fun d!710147 () Bool)

(assert (=> d!710147 e!1564400))

(assert (= b!2466627 b!2466628))

(assert (= b!2466626 b!2466627))

(assert (= (and d!710147 (is-Cons!28729 rules!4472)) b!2466626))

(declare-fun lambda!93238 () Int)

(declare-fun order!15563 () Int)

(declare-fun order!15561 () Int)

(declare-fun dynLambda!12335 (Int Int) Int)

(declare-fun dynLambda!12336 (Int Int) Int)

(assert (=> b!2466628 (< (dynLambda!12335 order!15561 (toValue!6330 (transformation!4470 (h!34130 rules!4472)))) (dynLambda!12336 order!15563 lambda!93238))))

(declare-fun order!15565 () Int)

(declare-fun dynLambda!12337 (Int Int) Int)

(assert (=> b!2466628 (< (dynLambda!12337 order!15565 (toChars!6189 (transformation!4470 (h!34130 rules!4472)))) (dynLambda!12336 order!15563 lambda!93238))))

(assert (=> d!710147 true))

(declare-fun lt!882330 () Bool)

(declare-fun forall!5896 (List!28828 Int) Bool)

(assert (=> d!710147 (= lt!882330 (forall!5896 l!6611 lambda!93238))))

(declare-fun e!1564392 () Bool)

(assert (=> d!710147 (= lt!882330 e!1564392)))

(declare-fun res!1044736 () Bool)

(assert (=> d!710147 (=> res!1044736 e!1564392)))

(assert (=> d!710147 (= res!1044736 (not (is-Cons!28728 l!6611)))))

(assert (=> d!710147 (not (isEmpty!16698 rules!4472))))

(assert (=> d!710147 (= (rulesProduceEachTokenIndividuallyList!1383 thiss!27932 rules!4472 l!6611) lt!882330)))

(declare-fun b!2466616 () Bool)

(declare-fun e!1564393 () Bool)

(assert (=> b!2466616 (= e!1564392 e!1564393)))

(declare-fun res!1044737 () Bool)

(assert (=> b!2466616 (=> (not res!1044737) (not e!1564393))))

(declare-fun rulesProduceIndividualToken!1802 (LexerInterface!4067 List!28829 Token!8410) Bool)

(assert (=> b!2466616 (= res!1044737 (rulesProduceIndividualToken!1802 thiss!27932 rules!4472 (h!34129 l!6611)))))

(declare-fun b!2466617 () Bool)

(assert (=> b!2466617 (= e!1564393 (rulesProduceEachTokenIndividuallyList!1383 thiss!27932 rules!4472 (t!209415 l!6611)))))

(assert (= (and d!710147 (not res!1044736)) b!2466616))

(assert (= (and b!2466616 res!1044737) b!2466617))

(declare-fun m!2836053 () Bool)

(assert (=> d!710147 m!2836053))

(assert (=> d!710147 m!2835871))

(declare-fun m!2836055 () Bool)

(assert (=> b!2466616 m!2836055))

(declare-fun m!2836057 () Bool)

(assert (=> b!2466617 m!2836057))

(assert (=> b!2466425 d!710147))

(declare-fun d!710181 () Bool)

(declare-fun res!1044742 () Bool)

(declare-fun e!1564405 () Bool)

(assert (=> d!710181 (=> (not res!1044742) (not e!1564405))))

(declare-fun isEmpty!16700 (List!28827) Bool)

(assert (=> d!710181 (= res!1044742 (not (isEmpty!16700 (originalCharacters!5236 t2!67))))))

(assert (=> d!710181 (= (inv!38816 t2!67) e!1564405)))

(declare-fun b!2466635 () Bool)

(declare-fun res!1044743 () Bool)

(assert (=> b!2466635 (=> (not res!1044743) (not e!1564405))))

(declare-fun list!11124 (BalanceConc!17978) List!28827)

(declare-fun dynLambda!12338 (Int TokenValue!4656) BalanceConc!17978)

(assert (=> b!2466635 (= res!1044743 (= (originalCharacters!5236 t2!67) (list!11124 (dynLambda!12338 (toChars!6189 (transformation!4470 (rule!6828 t2!67))) (value!142802 t2!67)))))))

(declare-fun b!2466636 () Bool)

(declare-fun size!22362 (List!28827) Int)

(assert (=> b!2466636 (= e!1564405 (= (size!22358 t2!67) (size!22362 (originalCharacters!5236 t2!67))))))

(assert (= (and d!710181 res!1044742) b!2466635))

(assert (= (and b!2466635 res!1044743) b!2466636))

(declare-fun b_lambda!75613 () Bool)

(assert (=> (not b_lambda!75613) (not b!2466635)))

(declare-fun t!209450 () Bool)

(declare-fun tb!139417 () Bool)

(assert (=> (and b!2466427 (= (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611)))) (toChars!6189 (transformation!4470 (rule!6828 t2!67)))) t!209450) tb!139417))

(declare-fun b!2466641 () Bool)

(declare-fun e!1564408 () Bool)

(declare-fun tp!786835 () Bool)

(declare-fun inv!38820 (Conc!9182) Bool)

(assert (=> b!2466641 (= e!1564408 (and (inv!38820 (c!393278 (dynLambda!12338 (toChars!6189 (transformation!4470 (rule!6828 t2!67))) (value!142802 t2!67)))) tp!786835))))

(declare-fun result!172066 () Bool)

(declare-fun inv!38821 (BalanceConc!17978) Bool)

(assert (=> tb!139417 (= result!172066 (and (inv!38821 (dynLambda!12338 (toChars!6189 (transformation!4470 (rule!6828 t2!67))) (value!142802 t2!67))) e!1564408))))

(assert (= tb!139417 b!2466641))

(declare-fun m!2836059 () Bool)

(assert (=> b!2466641 m!2836059))

(declare-fun m!2836061 () Bool)

(assert (=> tb!139417 m!2836061))

(assert (=> b!2466635 t!209450))

(declare-fun b_and!186541 () Bool)

(assert (= b_and!186487 (and (=> t!209450 result!172066) b_and!186541)))

(declare-fun t!209452 () Bool)

(declare-fun tb!139419 () Bool)

(assert (=> (and b!2466431 (= (toChars!6189 (transformation!4470 (h!34130 rules!4472))) (toChars!6189 (transformation!4470 (rule!6828 t2!67)))) t!209452) tb!139419))

(declare-fun result!172070 () Bool)

(assert (= result!172070 result!172066))

(assert (=> b!2466635 t!209452))

(declare-fun b_and!186543 () Bool)

(assert (= b_and!186491 (and (=> t!209452 result!172070) b_and!186543)))

(declare-fun t!209454 () Bool)

(declare-fun tb!139421 () Bool)

(assert (=> (and b!2466432 (= (toChars!6189 (transformation!4470 (rule!6828 t2!67))) (toChars!6189 (transformation!4470 (rule!6828 t2!67)))) t!209454) tb!139421))

(declare-fun result!172072 () Bool)

(assert (= result!172072 result!172066))

(assert (=> b!2466635 t!209454))

(declare-fun b_and!186545 () Bool)

(assert (= b_and!186495 (and (=> t!209454 result!172072) b_and!186545)))

(declare-fun tb!139423 () Bool)

(declare-fun t!209456 () Bool)

(assert (=> (and b!2466434 (= (toChars!6189 (transformation!4470 (rule!6828 t1!67))) (toChars!6189 (transformation!4470 (rule!6828 t2!67)))) t!209456) tb!139423))

(declare-fun result!172074 () Bool)

(assert (= result!172074 result!172066))

(assert (=> b!2466635 t!209456))

(declare-fun b_and!186547 () Bool)

(assert (= b_and!186499 (and (=> t!209456 result!172074) b_and!186547)))

(declare-fun m!2836063 () Bool)

(assert (=> d!710181 m!2836063))

(declare-fun m!2836065 () Bool)

(assert (=> b!2466635 m!2836065))

(assert (=> b!2466635 m!2836065))

(declare-fun m!2836067 () Bool)

(assert (=> b!2466635 m!2836067))

(declare-fun m!2836069 () Bool)

(assert (=> b!2466636 m!2836069))

(assert (=> start!240544 d!710181))

(declare-fun d!710183 () Bool)

(declare-fun res!1044744 () Bool)

(declare-fun e!1564409 () Bool)

(assert (=> d!710183 (=> (not res!1044744) (not e!1564409))))

(assert (=> d!710183 (= res!1044744 (not (isEmpty!16700 (originalCharacters!5236 t1!67))))))

(assert (=> d!710183 (= (inv!38816 t1!67) e!1564409)))

(declare-fun b!2466642 () Bool)

(declare-fun res!1044745 () Bool)

(assert (=> b!2466642 (=> (not res!1044745) (not e!1564409))))

(assert (=> b!2466642 (= res!1044745 (= (originalCharacters!5236 t1!67) (list!11124 (dynLambda!12338 (toChars!6189 (transformation!4470 (rule!6828 t1!67))) (value!142802 t1!67)))))))

(declare-fun b!2466643 () Bool)

(assert (=> b!2466643 (= e!1564409 (= (size!22358 t1!67) (size!22362 (originalCharacters!5236 t1!67))))))

(assert (= (and d!710183 res!1044744) b!2466642))

(assert (= (and b!2466642 res!1044745) b!2466643))

(declare-fun b_lambda!75615 () Bool)

(assert (=> (not b_lambda!75615) (not b!2466642)))

(declare-fun tb!139425 () Bool)

(declare-fun t!209458 () Bool)

(assert (=> (and b!2466427 (= (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611)))) (toChars!6189 (transformation!4470 (rule!6828 t1!67)))) t!209458) tb!139425))

(declare-fun b!2466644 () Bool)

(declare-fun e!1564410 () Bool)

(declare-fun tp!786836 () Bool)

(assert (=> b!2466644 (= e!1564410 (and (inv!38820 (c!393278 (dynLambda!12338 (toChars!6189 (transformation!4470 (rule!6828 t1!67))) (value!142802 t1!67)))) tp!786836))))

(declare-fun result!172076 () Bool)

(assert (=> tb!139425 (= result!172076 (and (inv!38821 (dynLambda!12338 (toChars!6189 (transformation!4470 (rule!6828 t1!67))) (value!142802 t1!67))) e!1564410))))

(assert (= tb!139425 b!2466644))

(declare-fun m!2836071 () Bool)

(assert (=> b!2466644 m!2836071))

(declare-fun m!2836073 () Bool)

(assert (=> tb!139425 m!2836073))

(assert (=> b!2466642 t!209458))

(declare-fun b_and!186549 () Bool)

(assert (= b_and!186541 (and (=> t!209458 result!172076) b_and!186549)))

(declare-fun t!209460 () Bool)

(declare-fun tb!139427 () Bool)

(assert (=> (and b!2466431 (= (toChars!6189 (transformation!4470 (h!34130 rules!4472))) (toChars!6189 (transformation!4470 (rule!6828 t1!67)))) t!209460) tb!139427))

(declare-fun result!172078 () Bool)

(assert (= result!172078 result!172076))

(assert (=> b!2466642 t!209460))

(declare-fun b_and!186551 () Bool)

(assert (= b_and!186543 (and (=> t!209460 result!172078) b_and!186551)))

(declare-fun tb!139429 () Bool)

(declare-fun t!209462 () Bool)

(assert (=> (and b!2466432 (= (toChars!6189 (transformation!4470 (rule!6828 t2!67))) (toChars!6189 (transformation!4470 (rule!6828 t1!67)))) t!209462) tb!139429))

(declare-fun result!172080 () Bool)

(assert (= result!172080 result!172076))

(assert (=> b!2466642 t!209462))

(declare-fun b_and!186553 () Bool)

(assert (= b_and!186545 (and (=> t!209462 result!172080) b_and!186553)))

(declare-fun t!209464 () Bool)

(declare-fun tb!139431 () Bool)

(assert (=> (and b!2466434 (= (toChars!6189 (transformation!4470 (rule!6828 t1!67))) (toChars!6189 (transformation!4470 (rule!6828 t1!67)))) t!209464) tb!139431))

(declare-fun result!172082 () Bool)

(assert (= result!172082 result!172076))

(assert (=> b!2466642 t!209464))

(declare-fun b_and!186555 () Bool)

(assert (= b_and!186547 (and (=> t!209464 result!172082) b_and!186555)))

(declare-fun m!2836075 () Bool)

(assert (=> d!710183 m!2836075))

(declare-fun m!2836077 () Bool)

(assert (=> b!2466642 m!2836077))

(assert (=> b!2466642 m!2836077))

(declare-fun m!2836079 () Bool)

(assert (=> b!2466642 m!2836079))

(declare-fun m!2836081 () Bool)

(assert (=> b!2466643 m!2836081))

(assert (=> start!240544 d!710183))

(declare-fun d!710185 () Bool)

(assert (=> d!710185 (= (inv!38813 (tag!4960 (rule!6828 (h!34129 l!6611)))) (= (mod (str.len (value!142801 (tag!4960 (rule!6828 (h!34129 l!6611))))) 2) 0))))

(assert (=> b!2466439 d!710185))

(declare-fun d!710187 () Bool)

(declare-fun res!1044746 () Bool)

(declare-fun e!1564411 () Bool)

(assert (=> d!710187 (=> (not res!1044746) (not e!1564411))))

(assert (=> d!710187 (= res!1044746 (semiInverseModEq!1839 (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611)))) (toValue!6330 (transformation!4470 (rule!6828 (h!34129 l!6611))))))))

(assert (=> d!710187 (= (inv!38817 (transformation!4470 (rule!6828 (h!34129 l!6611)))) e!1564411)))

(declare-fun b!2466645 () Bool)

(assert (=> b!2466645 (= e!1564411 (equivClasses!1750 (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611)))) (toValue!6330 (transformation!4470 (rule!6828 (h!34129 l!6611))))))))

(assert (= (and d!710187 res!1044746) b!2466645))

(declare-fun m!2836083 () Bool)

(assert (=> d!710187 m!2836083))

(declare-fun m!2836085 () Bool)

(assert (=> b!2466645 m!2836085))

(assert (=> b!2466439 d!710187))

(declare-fun b!2466646 () Bool)

(declare-fun e!1564412 () Bool)

(assert (=> b!2466646 (= e!1564412 (inv!15 (value!142802 t2!67)))))

(declare-fun d!710189 () Bool)

(declare-fun c!393309 () Bool)

(assert (=> d!710189 (= c!393309 (is-IntegerValue!13968 (value!142802 t2!67)))))

(declare-fun e!1564414 () Bool)

(assert (=> d!710189 (= (inv!21 (value!142802 t2!67)) e!1564414)))

(declare-fun b!2466647 () Bool)

(assert (=> b!2466647 (= e!1564414 (inv!16 (value!142802 t2!67)))))

(declare-fun b!2466648 () Bool)

(declare-fun res!1044747 () Bool)

(assert (=> b!2466648 (=> res!1044747 e!1564412)))

(assert (=> b!2466648 (= res!1044747 (not (is-IntegerValue!13970 (value!142802 t2!67))))))

(declare-fun e!1564413 () Bool)

(assert (=> b!2466648 (= e!1564413 e!1564412)))

(declare-fun b!2466649 () Bool)

(assert (=> b!2466649 (= e!1564414 e!1564413)))

(declare-fun c!393310 () Bool)

(assert (=> b!2466649 (= c!393310 (is-IntegerValue!13969 (value!142802 t2!67)))))

(declare-fun b!2466650 () Bool)

(assert (=> b!2466650 (= e!1564413 (inv!17 (value!142802 t2!67)))))

(assert (= (and d!710189 c!393309) b!2466647))

(assert (= (and d!710189 (not c!393309)) b!2466649))

(assert (= (and b!2466649 c!393310) b!2466650))

(assert (= (and b!2466649 (not c!393310)) b!2466648))

(assert (= (and b!2466648 (not res!1044747)) b!2466646))

(declare-fun m!2836087 () Bool)

(assert (=> b!2466646 m!2836087))

(declare-fun m!2836089 () Bool)

(assert (=> b!2466647 m!2836089))

(declare-fun m!2836091 () Bool)

(assert (=> b!2466650 m!2836091))

(assert (=> b!2466428 d!710189))

(declare-fun d!710191 () Bool)

(assert (=> d!710191 (= (inv!38813 (tag!4960 (rule!6828 t2!67))) (= (mod (str.len (value!142801 (tag!4960 (rule!6828 t2!67)))) 2) 0))))

(assert (=> b!2466438 d!710191))

(declare-fun d!710193 () Bool)

(declare-fun res!1044748 () Bool)

(declare-fun e!1564415 () Bool)

(assert (=> d!710193 (=> (not res!1044748) (not e!1564415))))

(assert (=> d!710193 (= res!1044748 (semiInverseModEq!1839 (toChars!6189 (transformation!4470 (rule!6828 t2!67))) (toValue!6330 (transformation!4470 (rule!6828 t2!67)))))))

(assert (=> d!710193 (= (inv!38817 (transformation!4470 (rule!6828 t2!67))) e!1564415)))

(declare-fun b!2466651 () Bool)

(assert (=> b!2466651 (= e!1564415 (equivClasses!1750 (toChars!6189 (transformation!4470 (rule!6828 t2!67))) (toValue!6330 (transformation!4470 (rule!6828 t2!67)))))))

(assert (= (and d!710193 res!1044748) b!2466651))

(declare-fun m!2836093 () Bool)

(assert (=> d!710193 m!2836093))

(declare-fun m!2836095 () Bool)

(assert (=> b!2466651 m!2836095))

(assert (=> b!2466438 d!710193))

(declare-fun d!710195 () Bool)

(assert (=> d!710195 (= (inv!38813 (tag!4960 (h!34130 rules!4472))) (= (mod (str.len (value!142801 (tag!4960 (h!34130 rules!4472)))) 2) 0))))

(assert (=> b!2466443 d!710195))

(declare-fun d!710197 () Bool)

(declare-fun res!1044749 () Bool)

(declare-fun e!1564416 () Bool)

(assert (=> d!710197 (=> (not res!1044749) (not e!1564416))))

(assert (=> d!710197 (= res!1044749 (semiInverseModEq!1839 (toChars!6189 (transformation!4470 (h!34130 rules!4472))) (toValue!6330 (transformation!4470 (h!34130 rules!4472)))))))

(assert (=> d!710197 (= (inv!38817 (transformation!4470 (h!34130 rules!4472))) e!1564416)))

(declare-fun b!2466652 () Bool)

(assert (=> b!2466652 (= e!1564416 (equivClasses!1750 (toChars!6189 (transformation!4470 (h!34130 rules!4472))) (toValue!6330 (transformation!4470 (h!34130 rules!4472)))))))

(assert (= (and d!710197 res!1044749) b!2466652))

(declare-fun m!2836097 () Bool)

(assert (=> d!710197 m!2836097))

(declare-fun m!2836099 () Bool)

(assert (=> b!2466652 m!2836099))

(assert (=> b!2466443 d!710197))

(declare-fun d!710199 () Bool)

(declare-fun res!1044750 () Bool)

(declare-fun e!1564417 () Bool)

(assert (=> d!710199 (=> (not res!1044750) (not e!1564417))))

(assert (=> d!710199 (= res!1044750 (not (isEmpty!16700 (originalCharacters!5236 (h!34129 l!6611)))))))

(assert (=> d!710199 (= (inv!38816 (h!34129 l!6611)) e!1564417)))

(declare-fun b!2466653 () Bool)

(declare-fun res!1044751 () Bool)

(assert (=> b!2466653 (=> (not res!1044751) (not e!1564417))))

(assert (=> b!2466653 (= res!1044751 (= (originalCharacters!5236 (h!34129 l!6611)) (list!11124 (dynLambda!12338 (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611)))) (value!142802 (h!34129 l!6611))))))))

(declare-fun b!2466654 () Bool)

(assert (=> b!2466654 (= e!1564417 (= (size!22358 (h!34129 l!6611)) (size!22362 (originalCharacters!5236 (h!34129 l!6611)))))))

(assert (= (and d!710199 res!1044750) b!2466653))

(assert (= (and b!2466653 res!1044751) b!2466654))

(declare-fun b_lambda!75617 () Bool)

(assert (=> (not b_lambda!75617) (not b!2466653)))

(declare-fun t!209466 () Bool)

(declare-fun tb!139433 () Bool)

(assert (=> (and b!2466427 (= (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611)))) (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611))))) t!209466) tb!139433))

(declare-fun b!2466655 () Bool)

(declare-fun e!1564418 () Bool)

(declare-fun tp!786837 () Bool)

(assert (=> b!2466655 (= e!1564418 (and (inv!38820 (c!393278 (dynLambda!12338 (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611)))) (value!142802 (h!34129 l!6611))))) tp!786837))))

(declare-fun result!172084 () Bool)

(assert (=> tb!139433 (= result!172084 (and (inv!38821 (dynLambda!12338 (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611)))) (value!142802 (h!34129 l!6611)))) e!1564418))))

(assert (= tb!139433 b!2466655))

(declare-fun m!2836101 () Bool)

(assert (=> b!2466655 m!2836101))

(declare-fun m!2836103 () Bool)

(assert (=> tb!139433 m!2836103))

(assert (=> b!2466653 t!209466))

(declare-fun b_and!186557 () Bool)

(assert (= b_and!186549 (and (=> t!209466 result!172084) b_and!186557)))

(declare-fun tb!139435 () Bool)

(declare-fun t!209468 () Bool)

(assert (=> (and b!2466431 (= (toChars!6189 (transformation!4470 (h!34130 rules!4472))) (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611))))) t!209468) tb!139435))

(declare-fun result!172086 () Bool)

(assert (= result!172086 result!172084))

(assert (=> b!2466653 t!209468))

(declare-fun b_and!186559 () Bool)

(assert (= b_and!186551 (and (=> t!209468 result!172086) b_and!186559)))

(declare-fun t!209470 () Bool)

(declare-fun tb!139437 () Bool)

(assert (=> (and b!2466432 (= (toChars!6189 (transformation!4470 (rule!6828 t2!67))) (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611))))) t!209470) tb!139437))

(declare-fun result!172088 () Bool)

(assert (= result!172088 result!172084))

(assert (=> b!2466653 t!209470))

(declare-fun b_and!186561 () Bool)

(assert (= b_and!186553 (and (=> t!209470 result!172088) b_and!186561)))

(declare-fun tb!139439 () Bool)

(declare-fun t!209472 () Bool)

(assert (=> (and b!2466434 (= (toChars!6189 (transformation!4470 (rule!6828 t1!67))) (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611))))) t!209472) tb!139439))

(declare-fun result!172090 () Bool)

(assert (= result!172090 result!172084))

(assert (=> b!2466653 t!209472))

(declare-fun b_and!186563 () Bool)

(assert (= b_and!186555 (and (=> t!209472 result!172090) b_and!186563)))

(declare-fun m!2836105 () Bool)

(assert (=> d!710199 m!2836105))

(declare-fun m!2836107 () Bool)

(assert (=> b!2466653 m!2836107))

(assert (=> b!2466653 m!2836107))

(declare-fun m!2836109 () Bool)

(assert (=> b!2466653 m!2836109))

(declare-fun m!2836111 () Bool)

(assert (=> b!2466654 m!2836111))

(assert (=> b!2466442 d!710199))

(declare-fun d!710201 () Bool)

(declare-fun res!1044757 () Bool)

(declare-fun e!1564424 () Bool)

(assert (=> d!710201 (=> res!1044757 e!1564424)))

(assert (=> d!710201 (= res!1044757 (or (not (is-Cons!28728 l!6611)) (not (is-Cons!28728 (t!209415 l!6611)))))))

(assert (=> d!710201 (= (tokensListTwoByTwoPredicateSeparableList!606 thiss!27932 l!6611 rules!4472) e!1564424)))

(declare-fun b!2466660 () Bool)

(declare-fun e!1564423 () Bool)

(assert (=> b!2466660 (= e!1564424 e!1564423)))

(declare-fun res!1044756 () Bool)

(assert (=> b!2466660 (=> (not res!1044756) (not e!1564423))))

(declare-fun separableTokensPredicate!847 (LexerInterface!4067 Token!8410 Token!8410 List!28829) Bool)

(assert (=> b!2466660 (= res!1044756 (separableTokensPredicate!847 thiss!27932 (h!34129 l!6611) (h!34129 (t!209415 l!6611)) rules!4472))))

(declare-datatypes ((Unit!42071 0))(
  ( (Unit!42072) )
))
(declare-fun lt!882345 () Unit!42071)

(declare-fun Unit!42073 () Unit!42071)

(assert (=> b!2466660 (= lt!882345 Unit!42073)))

(declare-fun size!22363 (BalanceConc!17978) Int)

(declare-fun charsOf!2818 (Token!8410) BalanceConc!17978)

(assert (=> b!2466660 (> (size!22363 (charsOf!2818 (h!34129 (t!209415 l!6611)))) 0)))

(declare-fun lt!882350 () Unit!42071)

(declare-fun Unit!42074 () Unit!42071)

(assert (=> b!2466660 (= lt!882350 Unit!42074)))

(assert (=> b!2466660 (rulesProduceIndividualToken!1802 thiss!27932 rules!4472 (h!34129 (t!209415 l!6611)))))

(declare-fun lt!882349 () Unit!42071)

(declare-fun Unit!42075 () Unit!42071)

(assert (=> b!2466660 (= lt!882349 Unit!42075)))

(assert (=> b!2466660 (rulesProduceIndividualToken!1802 thiss!27932 rules!4472 (h!34129 l!6611))))

(declare-fun lt!882347 () Unit!42071)

(declare-fun lt!882348 () Unit!42071)

(assert (=> b!2466660 (= lt!882347 lt!882348)))

(assert (=> b!2466660 (rulesProduceIndividualToken!1802 thiss!27932 rules!4472 (h!34129 (t!209415 l!6611)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!663 (LexerInterface!4067 List!28829 List!28828 Token!8410) Unit!42071)

(assert (=> b!2466660 (= lt!882348 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!663 thiss!27932 rules!4472 l!6611 (h!34129 (t!209415 l!6611))))))

(declare-fun lt!882346 () Unit!42071)

(declare-fun lt!882351 () Unit!42071)

(assert (=> b!2466660 (= lt!882346 lt!882351)))

(assert (=> b!2466660 (rulesProduceIndividualToken!1802 thiss!27932 rules!4472 (h!34129 l!6611))))

(assert (=> b!2466660 (= lt!882351 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!663 thiss!27932 rules!4472 l!6611 (h!34129 l!6611)))))

(declare-fun b!2466661 () Bool)

(assert (=> b!2466661 (= e!1564423 (tokensListTwoByTwoPredicateSeparableList!606 thiss!27932 (Cons!28728 (h!34129 (t!209415 l!6611)) (t!209415 (t!209415 l!6611))) rules!4472))))

(assert (= (and d!710201 (not res!1044757)) b!2466660))

(assert (= (and b!2466660 res!1044756) b!2466661))

(declare-fun m!2836113 () Bool)

(assert (=> b!2466660 m!2836113))

(declare-fun m!2836115 () Bool)

(assert (=> b!2466660 m!2836115))

(assert (=> b!2466660 m!2836113))

(declare-fun m!2836117 () Bool)

(assert (=> b!2466660 m!2836117))

(assert (=> b!2466660 m!2836055))

(declare-fun m!2836119 () Bool)

(assert (=> b!2466660 m!2836119))

(declare-fun m!2836121 () Bool)

(assert (=> b!2466660 m!2836121))

(declare-fun m!2836123 () Bool)

(assert (=> b!2466660 m!2836123))

(declare-fun m!2836125 () Bool)

(assert (=> b!2466661 m!2836125))

(assert (=> b!2466441 d!710201))

(declare-fun d!710203 () Bool)

(declare-fun res!1044760 () Bool)

(declare-fun e!1564427 () Bool)

(assert (=> d!710203 (=> (not res!1044760) (not e!1564427))))

(declare-fun rulesValid!1664 (LexerInterface!4067 List!28829) Bool)

(assert (=> d!710203 (= res!1044760 (rulesValid!1664 thiss!27932 rules!4472))))

(assert (=> d!710203 (= (rulesInvariant!3567 thiss!27932 rules!4472) e!1564427)))

(declare-fun b!2466664 () Bool)

(declare-datatypes ((List!28834 0))(
  ( (Nil!28734) (Cons!28734 (h!34135 String!31578) (t!209485 List!28834)) )
))
(declare-fun noDuplicateTag!1662 (LexerInterface!4067 List!28829 List!28834) Bool)

(assert (=> b!2466664 (= e!1564427 (noDuplicateTag!1662 thiss!27932 rules!4472 Nil!28734))))

(assert (= (and d!710203 res!1044760) b!2466664))

(declare-fun m!2836127 () Bool)

(assert (=> d!710203 m!2836127))

(declare-fun m!2836129 () Bool)

(assert (=> b!2466664 m!2836129))

(assert (=> b!2466430 d!710203))

(declare-fun b!2466669 () Bool)

(declare-fun e!1564430 () Bool)

(declare-fun tp_is_empty!11941 () Bool)

(declare-fun tp!786840 () Bool)

(assert (=> b!2466669 (= e!1564430 (and tp_is_empty!11941 tp!786840))))

(assert (=> b!2466435 (= tp!786776 e!1564430)))

(assert (= (and b!2466435 (is-Cons!28727 (originalCharacters!5236 (h!34129 l!6611)))) b!2466669))

(declare-fun b!2466680 () Bool)

(declare-fun b_free!71029 () Bool)

(declare-fun b_next!71733 () Bool)

(assert (=> b!2466680 (= b_free!71029 (not b_next!71733))))

(declare-fun tp!786849 () Bool)

(declare-fun b_and!186565 () Bool)

(assert (=> b!2466680 (= tp!786849 b_and!186565)))

(declare-fun b_free!71031 () Bool)

(declare-fun b_next!71735 () Bool)

(assert (=> b!2466680 (= b_free!71031 (not b_next!71735))))

(declare-fun t!209474 () Bool)

(declare-fun tb!139441 () Bool)

(assert (=> (and b!2466680 (= (toChars!6189 (transformation!4470 (h!34130 (t!209416 rules!4472)))) (toChars!6189 (transformation!4470 (rule!6828 t2!67)))) t!209474) tb!139441))

(declare-fun result!172096 () Bool)

(assert (= result!172096 result!172066))

(assert (=> b!2466635 t!209474))

(declare-fun t!209476 () Bool)

(declare-fun tb!139443 () Bool)

(assert (=> (and b!2466680 (= (toChars!6189 (transformation!4470 (h!34130 (t!209416 rules!4472)))) (toChars!6189 (transformation!4470 (rule!6828 t1!67)))) t!209476) tb!139443))

(declare-fun result!172098 () Bool)

(assert (= result!172098 result!172076))

(assert (=> b!2466642 t!209476))

(declare-fun t!209478 () Bool)

(declare-fun tb!139445 () Bool)

(assert (=> (and b!2466680 (= (toChars!6189 (transformation!4470 (h!34130 (t!209416 rules!4472)))) (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611))))) t!209478) tb!139445))

(declare-fun result!172100 () Bool)

(assert (= result!172100 result!172084))

(assert (=> b!2466653 t!209478))

(declare-fun tp!786852 () Bool)

(declare-fun b_and!186567 () Bool)

(assert (=> b!2466680 (= tp!786852 (and (=> t!209474 result!172096) (=> t!209476 result!172098) (=> t!209478 result!172100) b_and!186567))))

(declare-fun e!1564442 () Bool)

(assert (=> b!2466680 (= e!1564442 (and tp!786849 tp!786852))))

(declare-fun tp!786850 () Bool)

(declare-fun b!2466679 () Bool)

(declare-fun e!1564441 () Bool)

(assert (=> b!2466679 (= e!1564441 (and tp!786850 (inv!38813 (tag!4960 (h!34130 (t!209416 rules!4472)))) (inv!38817 (transformation!4470 (h!34130 (t!209416 rules!4472)))) e!1564442))))

(declare-fun b!2466678 () Bool)

(declare-fun e!1564440 () Bool)

(declare-fun tp!786851 () Bool)

(assert (=> b!2466678 (= e!1564440 (and e!1564441 tp!786851))))

(assert (=> b!2466424 (= tp!786774 e!1564440)))

(assert (= b!2466679 b!2466680))

(assert (= b!2466678 b!2466679))

(assert (= (and b!2466424 (is-Cons!28729 (t!209416 rules!4472))) b!2466678))

(declare-fun m!2836131 () Bool)

(assert (=> b!2466679 m!2836131))

(declare-fun m!2836133 () Bool)

(assert (=> b!2466679 m!2836133))

(declare-fun b!2466681 () Bool)

(declare-fun e!1564443 () Bool)

(declare-fun tp!786853 () Bool)

(assert (=> b!2466681 (= e!1564443 (and tp_is_empty!11941 tp!786853))))

(assert (=> b!2466444 (= tp!786761 e!1564443)))

(assert (= (and b!2466444 (is-Cons!28727 (originalCharacters!5236 t1!67))) b!2466681))

(declare-fun b!2466694 () Bool)

(declare-fun e!1564446 () Bool)

(declare-fun tp!786868 () Bool)

(assert (=> b!2466694 (= e!1564446 tp!786868)))

(declare-fun b!2466693 () Bool)

(declare-fun tp!786867 () Bool)

(declare-fun tp!786864 () Bool)

(assert (=> b!2466693 (= e!1564446 (and tp!786867 tp!786864))))

(assert (=> b!2466433 (= tp!786764 e!1564446)))

(declare-fun b!2466692 () Bool)

(assert (=> b!2466692 (= e!1564446 tp_is_empty!11941)))

(declare-fun b!2466695 () Bool)

(declare-fun tp!786865 () Bool)

(declare-fun tp!786866 () Bool)

(assert (=> b!2466695 (= e!1564446 (and tp!786865 tp!786866))))

(assert (= (and b!2466433 (is-ElementMatch!7258 (regex!4470 (rule!6828 t1!67)))) b!2466692))

(assert (= (and b!2466433 (is-Concat!11915 (regex!4470 (rule!6828 t1!67)))) b!2466693))

(assert (= (and b!2466433 (is-Star!7258 (regex!4470 (rule!6828 t1!67)))) b!2466694))

(assert (= (and b!2466433 (is-Union!7258 (regex!4470 (rule!6828 t1!67)))) b!2466695))

(declare-fun b!2466698 () Bool)

(declare-fun e!1564447 () Bool)

(declare-fun tp!786873 () Bool)

(assert (=> b!2466698 (= e!1564447 tp!786873)))

(declare-fun b!2466697 () Bool)

(declare-fun tp!786872 () Bool)

(declare-fun tp!786869 () Bool)

(assert (=> b!2466697 (= e!1564447 (and tp!786872 tp!786869))))

(assert (=> b!2466439 (= tp!786763 e!1564447)))

(declare-fun b!2466696 () Bool)

(assert (=> b!2466696 (= e!1564447 tp_is_empty!11941)))

(declare-fun b!2466699 () Bool)

(declare-fun tp!786870 () Bool)

(declare-fun tp!786871 () Bool)

(assert (=> b!2466699 (= e!1564447 (and tp!786870 tp!786871))))

(assert (= (and b!2466439 (is-ElementMatch!7258 (regex!4470 (rule!6828 (h!34129 l!6611))))) b!2466696))

(assert (= (and b!2466439 (is-Concat!11915 (regex!4470 (rule!6828 (h!34129 l!6611))))) b!2466697))

(assert (= (and b!2466439 (is-Star!7258 (regex!4470 (rule!6828 (h!34129 l!6611))))) b!2466698))

(assert (= (and b!2466439 (is-Union!7258 (regex!4470 (rule!6828 (h!34129 l!6611))))) b!2466699))

(declare-fun b!2466700 () Bool)

(declare-fun e!1564448 () Bool)

(declare-fun tp!786874 () Bool)

(assert (=> b!2466700 (= e!1564448 (and tp_is_empty!11941 tp!786874))))

(assert (=> b!2466428 (= tp!786773 e!1564448)))

(assert (= (and b!2466428 (is-Cons!28727 (originalCharacters!5236 t2!67))) b!2466700))

(declare-fun b!2466703 () Bool)

(declare-fun e!1564449 () Bool)

(declare-fun tp!786879 () Bool)

(assert (=> b!2466703 (= e!1564449 tp!786879)))

(declare-fun b!2466702 () Bool)

(declare-fun tp!786878 () Bool)

(declare-fun tp!786875 () Bool)

(assert (=> b!2466702 (= e!1564449 (and tp!786878 tp!786875))))

(assert (=> b!2466438 (= tp!786771 e!1564449)))

(declare-fun b!2466701 () Bool)

(assert (=> b!2466701 (= e!1564449 tp_is_empty!11941)))

(declare-fun b!2466704 () Bool)

(declare-fun tp!786876 () Bool)

(declare-fun tp!786877 () Bool)

(assert (=> b!2466704 (= e!1564449 (and tp!786876 tp!786877))))

(assert (= (and b!2466438 (is-ElementMatch!7258 (regex!4470 (rule!6828 t2!67)))) b!2466701))

(assert (= (and b!2466438 (is-Concat!11915 (regex!4470 (rule!6828 t2!67)))) b!2466702))

(assert (= (and b!2466438 (is-Star!7258 (regex!4470 (rule!6828 t2!67)))) b!2466703))

(assert (= (and b!2466438 (is-Union!7258 (regex!4470 (rule!6828 t2!67)))) b!2466704))

(declare-fun b!2466707 () Bool)

(declare-fun e!1564450 () Bool)

(declare-fun tp!786884 () Bool)

(assert (=> b!2466707 (= e!1564450 tp!786884)))

(declare-fun b!2466706 () Bool)

(declare-fun tp!786883 () Bool)

(declare-fun tp!786880 () Bool)

(assert (=> b!2466706 (= e!1564450 (and tp!786883 tp!786880))))

(assert (=> b!2466443 (= tp!786767 e!1564450)))

(declare-fun b!2466705 () Bool)

(assert (=> b!2466705 (= e!1564450 tp_is_empty!11941)))

(declare-fun b!2466708 () Bool)

(declare-fun tp!786881 () Bool)

(declare-fun tp!786882 () Bool)

(assert (=> b!2466708 (= e!1564450 (and tp!786881 tp!786882))))

(assert (= (and b!2466443 (is-ElementMatch!7258 (regex!4470 (h!34130 rules!4472)))) b!2466705))

(assert (= (and b!2466443 (is-Concat!11915 (regex!4470 (h!34130 rules!4472)))) b!2466706))

(assert (= (and b!2466443 (is-Star!7258 (regex!4470 (h!34130 rules!4472)))) b!2466707))

(assert (= (and b!2466443 (is-Union!7258 (regex!4470 (h!34130 rules!4472)))) b!2466708))

(declare-fun b!2466722 () Bool)

(declare-fun b_free!71033 () Bool)

(declare-fun b_next!71737 () Bool)

(assert (=> b!2466722 (= b_free!71033 (not b_next!71737))))

(declare-fun tp!786899 () Bool)

(declare-fun b_and!186569 () Bool)

(assert (=> b!2466722 (= tp!786899 b_and!186569)))

(declare-fun b_free!71035 () Bool)

(declare-fun b_next!71739 () Bool)

(assert (=> b!2466722 (= b_free!71035 (not b_next!71739))))

(declare-fun t!209480 () Bool)

(declare-fun tb!139447 () Bool)

(assert (=> (and b!2466722 (= (toChars!6189 (transformation!4470 (rule!6828 (h!34129 (t!209415 l!6611))))) (toChars!6189 (transformation!4470 (rule!6828 t2!67)))) t!209480) tb!139447))

(declare-fun result!172106 () Bool)

(assert (= result!172106 result!172066))

(assert (=> b!2466635 t!209480))

(declare-fun t!209482 () Bool)

(declare-fun tb!139449 () Bool)

(assert (=> (and b!2466722 (= (toChars!6189 (transformation!4470 (rule!6828 (h!34129 (t!209415 l!6611))))) (toChars!6189 (transformation!4470 (rule!6828 t1!67)))) t!209482) tb!139449))

(declare-fun result!172108 () Bool)

(assert (= result!172108 result!172076))

(assert (=> b!2466642 t!209482))

(declare-fun t!209484 () Bool)

(declare-fun tb!139451 () Bool)

(assert (=> (and b!2466722 (= (toChars!6189 (transformation!4470 (rule!6828 (h!34129 (t!209415 l!6611))))) (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611))))) t!209484) tb!139451))

(declare-fun result!172110 () Bool)

(assert (= result!172110 result!172084))

(assert (=> b!2466653 t!209484))

(declare-fun tp!786898 () Bool)

(declare-fun b_and!186571 () Bool)

(assert (=> b!2466722 (= tp!786898 (and (=> t!209480 result!172106) (=> t!209482 result!172108) (=> t!209484 result!172110) b_and!186571))))

(declare-fun e!1564464 () Bool)

(declare-fun b!2466721 () Bool)

(declare-fun e!1564467 () Bool)

(declare-fun tp!786896 () Bool)

(assert (=> b!2466721 (= e!1564467 (and tp!786896 (inv!38813 (tag!4960 (rule!6828 (h!34129 (t!209415 l!6611))))) (inv!38817 (transformation!4470 (rule!6828 (h!34129 (t!209415 l!6611))))) e!1564464))))

(declare-fun b!2466720 () Bool)

(declare-fun tp!786895 () Bool)

(declare-fun e!1564463 () Bool)

(assert (=> b!2466720 (= e!1564463 (and (inv!21 (value!142802 (h!34129 (t!209415 l!6611)))) e!1564467 tp!786895))))

(assert (=> b!2466722 (= e!1564464 (and tp!786899 tp!786898))))

(declare-fun e!1564466 () Bool)

(declare-fun tp!786897 () Bool)

(declare-fun b!2466719 () Bool)

(assert (=> b!2466719 (= e!1564466 (and (inv!38816 (h!34129 (t!209415 l!6611))) e!1564463 tp!786897))))

(assert (=> b!2466442 (= tp!786770 e!1564466)))

(assert (= b!2466721 b!2466722))

(assert (= b!2466720 b!2466721))

(assert (= b!2466719 b!2466720))

(assert (= (and b!2466442 (is-Cons!28728 (t!209415 l!6611))) b!2466719))

(declare-fun m!2836135 () Bool)

(assert (=> b!2466721 m!2836135))

(declare-fun m!2836137 () Bool)

(assert (=> b!2466721 m!2836137))

(declare-fun m!2836139 () Bool)

(assert (=> b!2466720 m!2836139))

(declare-fun m!2836141 () Bool)

(assert (=> b!2466719 m!2836141))

(declare-fun b_lambda!75619 () Bool)

(assert (= b_lambda!75617 (or (and b!2466434 b_free!71011 (= (toChars!6189 (transformation!4470 (rule!6828 t1!67))) (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611)))))) (and b!2466431 b_free!71003 (= (toChars!6189 (transformation!4470 (h!34130 rules!4472))) (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611)))))) (and b!2466722 b_free!71035 (= (toChars!6189 (transformation!4470 (rule!6828 (h!34129 (t!209415 l!6611))))) (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611)))))) (and b!2466432 b_free!71007 (= (toChars!6189 (transformation!4470 (rule!6828 t2!67))) (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611)))))) (and b!2466427 b_free!70999) (and b!2466680 b_free!71031 (= (toChars!6189 (transformation!4470 (h!34130 (t!209416 rules!4472)))) (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611)))))) b_lambda!75619)))

(declare-fun b_lambda!75621 () Bool)

(assert (= b_lambda!75613 (or (and b!2466680 b_free!71031 (= (toChars!6189 (transformation!4470 (h!34130 (t!209416 rules!4472)))) (toChars!6189 (transformation!4470 (rule!6828 t2!67))))) (and b!2466722 b_free!71035 (= (toChars!6189 (transformation!4470 (rule!6828 (h!34129 (t!209415 l!6611))))) (toChars!6189 (transformation!4470 (rule!6828 t2!67))))) (and b!2466431 b_free!71003 (= (toChars!6189 (transformation!4470 (h!34130 rules!4472))) (toChars!6189 (transformation!4470 (rule!6828 t2!67))))) (and b!2466432 b_free!71007) (and b!2466434 b_free!71011 (= (toChars!6189 (transformation!4470 (rule!6828 t1!67))) (toChars!6189 (transformation!4470 (rule!6828 t2!67))))) (and b!2466427 b_free!70999 (= (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611)))) (toChars!6189 (transformation!4470 (rule!6828 t2!67))))) b_lambda!75621)))

(declare-fun b_lambda!75623 () Bool)

(assert (= b_lambda!75615 (or (and b!2466427 b_free!70999 (= (toChars!6189 (transformation!4470 (rule!6828 (h!34129 l!6611)))) (toChars!6189 (transformation!4470 (rule!6828 t1!67))))) (and b!2466432 b_free!71007 (= (toChars!6189 (transformation!4470 (rule!6828 t2!67))) (toChars!6189 (transformation!4470 (rule!6828 t1!67))))) (and b!2466434 b_free!71011) (and b!2466680 b_free!71031 (= (toChars!6189 (transformation!4470 (h!34130 (t!209416 rules!4472)))) (toChars!6189 (transformation!4470 (rule!6828 t1!67))))) (and b!2466722 b_free!71035 (= (toChars!6189 (transformation!4470 (rule!6828 (h!34129 (t!209415 l!6611))))) (toChars!6189 (transformation!4470 (rule!6828 t1!67))))) (and b!2466431 b_free!71003 (= (toChars!6189 (transformation!4470 (h!34130 rules!4472))) (toChars!6189 (transformation!4470 (rule!6828 t1!67))))) b_lambda!75623)))

(push 1)

(assert (not b!2466536))

(assert b_and!186563)

(assert b_and!186571)

(assert (not b!2466699))

(assert (not b!2466700))

(assert (not d!710147))

(assert (not b_next!71739))

(assert (not b!2466661))

(assert (not b!2466721))

(assert (not b!2466719))

(assert (not b_next!71733))

(assert (not b_next!71707))

(assert (not d!710203))

(assert b_and!186497)

(assert (not b!2466522))

(assert (not b!2466635))

(assert (not b!2466653))

(assert (not d!710199))

(assert (not b!2466720))

(assert (not b!2466643))

(assert (not b_next!71715))

(assert b_and!186569)

(assert (not b!2466702))

(assert (not b!2466617))

(assert (not b!2466707))

(assert (not b_next!71711))

(assert (not d!710193))

(assert (not b!2466660))

(assert b_and!186561)

(assert (not b!2466678))

(assert (not b!2466650))

(assert (not b!2466539))

(assert (not b!2466556))

(assert (not b!2466626))

(assert (not b!2466703))

(assert (not b_lambda!75623))

(assert (not b!2466533))

(assert (not d!710183))

(assert b_and!186489)

(assert b_and!186565)

(assert (not d!710187))

(assert (not b!2466645))

(assert (not b_next!71709))

(assert (not b!2466706))

(assert b_and!186493)

(assert b_and!186557)

(assert (not b!2466616))

(assert (not b_next!71735))

(assert (not b!2466548))

(assert (not b!2466532))

(assert (not b!2466547))

(assert (not b!2466654))

(assert (not b!2466695))

(assert (not b!2466647))

(assert (not b_next!71701))

(assert (not b_next!71737))

(assert b_and!186485)

(assert (not b!2466679))

(assert (not d!710197))

(assert (not b!2466557))

(assert (not b!2466531))

(assert (not b!2466641))

(assert (not b_next!71703))

(assert (not b!2466642))

(assert (not b!2466651))

(assert (not b!2466698))

(assert (not b!2466669))

(assert (not d!710137))

(assert (not tb!139433))

(assert (not b!2466681))

(assert (not b_next!71705))

(assert (not b!2466546))

(assert (not tb!139425))

(assert b_and!186559)

(assert (not b_lambda!75619))

(assert (not d!710143))

(assert (not b!2466655))

(assert (not b!2466694))

(assert (not b!2466646))

(assert (not b!2466521))

(assert (not b!2466652))

(assert (not d!710145))

(assert (not b!2466555))

(assert (not b!2466708))

(assert (not b_next!71713))

(assert (not b!2466664))

(assert (not d!710181))

(assert (not b_lambda!75621))

(assert (not b!2466525))

(assert b_and!186567)

(assert tp_is_empty!11941)

(assert (not b!2466644))

(assert (not b!2466636))

(assert (not tb!139417))

(assert (not b!2466693))

(assert (not b!2466704))

(assert (not b!2466697))

(check-sat)

(pop 1)

(push 1)

(assert b_and!186497)

(assert b_and!186563)

(assert b_and!186571)

(assert b_and!186489)

(assert b_and!186565)

(assert (not b_next!71735))

(assert (not b_next!71701))

(assert (not b_next!71703))

(assert (not b_next!71739))

(assert (not b_next!71705))

(assert b_and!186559)

(assert (not b_next!71713))

(assert b_and!186567)

(assert (not b_next!71733))

(assert (not b_next!71707))

(assert (not b_next!71715))

(assert b_and!186569)

(assert (not b_next!71711))

(assert b_and!186561)

(assert (not b_next!71709))

(assert b_and!186493)

(assert b_and!186557)

(assert (not b_next!71737))

(assert b_and!186485)

(check-sat)

(pop 1)


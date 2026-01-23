; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!351932 () Bool)

(assert start!351932)

(declare-fun b!3748663 () Bool)

(declare-fun b_free!100133 () Bool)

(declare-fun b_next!100837 () Bool)

(assert (=> b!3748663 (= b_free!100133 (not b_next!100837))))

(declare-fun tp!1144130 () Bool)

(declare-fun b_and!278367 () Bool)

(assert (=> b!3748663 (= tp!1144130 b_and!278367)))

(declare-fun b_free!100135 () Bool)

(declare-fun b_next!100839 () Bool)

(assert (=> b!3748663 (= b_free!100135 (not b_next!100839))))

(declare-fun tp!1144139 () Bool)

(declare-fun b_and!278369 () Bool)

(assert (=> b!3748663 (= tp!1144139 b_and!278369)))

(declare-fun b!3748658 () Bool)

(declare-fun b_free!100137 () Bool)

(declare-fun b_next!100841 () Bool)

(assert (=> b!3748658 (= b_free!100137 (not b_next!100841))))

(declare-fun tp!1144137 () Bool)

(declare-fun b_and!278371 () Bool)

(assert (=> b!3748658 (= tp!1144137 b_and!278371)))

(declare-fun b_free!100139 () Bool)

(declare-fun b_next!100843 () Bool)

(assert (=> b!3748658 (= b_free!100139 (not b_next!100843))))

(declare-fun tp!1144136 () Bool)

(declare-fun b_and!278373 () Bool)

(assert (=> b!3748658 (= tp!1144136 b_and!278373)))

(declare-fun b!3748660 () Bool)

(declare-fun b_free!100141 () Bool)

(declare-fun b_next!100845 () Bool)

(assert (=> b!3748660 (= b_free!100141 (not b_next!100845))))

(declare-fun tp!1144140 () Bool)

(declare-fun b_and!278375 () Bool)

(assert (=> b!3748660 (= tp!1144140 b_and!278375)))

(declare-fun b_free!100143 () Bool)

(declare-fun b_next!100847 () Bool)

(assert (=> b!3748660 (= b_free!100143 (not b_next!100847))))

(declare-fun tp!1144129 () Bool)

(declare-fun b_and!278377 () Bool)

(assert (=> b!3748660 (= tp!1144129 b_and!278377)))

(declare-fun e!2318351 () Bool)

(declare-datatypes ((C!22198 0))(
  ( (C!22199 (val!13147 Int)) )
))
(declare-datatypes ((List!40041 0))(
  ( (Nil!39917) (Cons!39917 (h!45337 C!22198) (t!302724 List!40041)) )
))
(declare-datatypes ((IArray!24401 0))(
  ( (IArray!24402 (innerList!12258 List!40041)) )
))
(declare-datatypes ((Regex!11006 0))(
  ( (ElementMatch!11006 (c!649060 C!22198)) (Concat!17337 (regOne!22524 Regex!11006) (regTwo!22524 Regex!11006)) (EmptyExpr!11006) (Star!11006 (reg!11335 Regex!11006)) (EmptyLang!11006) (Union!11006 (regOne!22525 Regex!11006) (regTwo!22525 Regex!11006)) )
))
(declare-datatypes ((List!40042 0))(
  ( (Nil!39918) (Cons!39918 (h!45338 (_ BitVec 16)) (t!302725 List!40042)) )
))
(declare-datatypes ((TokenValue!6331 0))(
  ( (FloatLiteralValue!12662 (text!44762 List!40042)) (TokenValueExt!6330 (__x!24879 Int)) (Broken!31655 (value!194419 List!40042)) (Object!6454) (End!6331) (Def!6331) (Underscore!6331) (Match!6331) (Else!6331) (Error!6331) (Case!6331) (If!6331) (Extends!6331) (Abstract!6331) (Class!6331) (Val!6331) (DelimiterValue!12662 (del!6391 List!40042)) (KeywordValue!6337 (value!194420 List!40042)) (CommentValue!12662 (value!194421 List!40042)) (WhitespaceValue!12662 (value!194422 List!40042)) (IndentationValue!6331 (value!194423 List!40042)) (String!45282) (Int32!6331) (Broken!31656 (value!194424 List!40042)) (Boolean!6332) (Unit!57710) (OperatorValue!6334 (op!6391 List!40042)) (IdentifierValue!12662 (value!194425 List!40042)) (IdentifierValue!12663 (value!194426 List!40042)) (WhitespaceValue!12663 (value!194427 List!40042)) (True!12662) (False!12662) (Broken!31657 (value!194428 List!40042)) (Broken!31658 (value!194429 List!40042)) (True!12663) (RightBrace!6331) (RightBracket!6331) (Colon!6331) (Null!6331) (Comma!6331) (LeftBracket!6331) (False!12663) (LeftBrace!6331) (ImaginaryLiteralValue!6331 (text!44763 List!40042)) (StringLiteralValue!18993 (value!194430 List!40042)) (EOFValue!6331 (value!194431 List!40042)) (IdentValue!6331 (value!194432 List!40042)) (DelimiterValue!12663 (value!194433 List!40042)) (DedentValue!6331 (value!194434 List!40042)) (NewLineValue!6331 (value!194435 List!40042)) (IntegerValue!18993 (value!194436 (_ BitVec 32)) (text!44764 List!40042)) (IntegerValue!18994 (value!194437 Int) (text!44765 List!40042)) (Times!6331) (Or!6331) (Equal!6331) (Minus!6331) (Broken!31659 (value!194438 List!40042)) (And!6331) (Div!6331) (LessEqual!6331) (Mod!6331) (Concat!17338) (Not!6331) (Plus!6331) (SpaceValue!6331 (value!194439 List!40042)) (IntegerValue!18995 (value!194440 Int) (text!44766 List!40042)) (StringLiteralValue!18994 (text!44767 List!40042)) (FloatLiteralValue!12663 (text!44768 List!40042)) (BytesLiteralValue!6331 (value!194441 List!40042)) (CommentValue!12663 (value!194442 List!40042)) (StringLiteralValue!18995 (value!194443 List!40042)) (ErrorTokenValue!6331 (msg!6392 List!40042)) )
))
(declare-datatypes ((String!45283 0))(
  ( (String!45284 (value!194444 String)) )
))
(declare-datatypes ((Conc!12198 0))(
  ( (Node!12198 (left!30888 Conc!12198) (right!31218 Conc!12198) (csize!24626 Int) (cheight!12409 Int)) (Leaf!18933 (xs!15400 IArray!24401) (csize!24627 Int)) (Empty!12198) )
))
(declare-datatypes ((BalanceConc!24010 0))(
  ( (BalanceConc!24011 (c!649061 Conc!12198)) )
))
(declare-datatypes ((TokenValueInjection!12090 0))(
  ( (TokenValueInjection!12091 (toValue!8449 Int) (toChars!8308 Int)) )
))
(declare-datatypes ((Rule!12002 0))(
  ( (Rule!12003 (regex!6101 Regex!11006) (tag!6961 String!45283) (isSeparator!6101 Bool) (transformation!6101 TokenValueInjection!12090)) )
))
(declare-datatypes ((Token!11340 0))(
  ( (Token!11341 (value!194445 TokenValue!6331) (rule!8865 Rule!12002) (size!30062 Int) (originalCharacters!6701 List!40041)) )
))
(declare-datatypes ((List!40043 0))(
  ( (Nil!39919) (Cons!39919 (h!45339 Token!11340) (t!302726 List!40043)) )
))
(declare-fun tokens!606 () List!40043)

(declare-fun e!2318357 () Bool)

(declare-fun b!3748649 () Bool)

(declare-fun tp!1144135 () Bool)

(declare-fun inv!53418 (String!45283) Bool)

(declare-fun inv!53421 (TokenValueInjection!12090) Bool)

(assert (=> b!3748649 (= e!2318351 (and tp!1144135 (inv!53418 (tag!6961 (rule!8865 (h!45339 tokens!606)))) (inv!53421 (transformation!6101 (rule!8865 (h!45339 tokens!606)))) e!2318357))))

(declare-fun tp!1144138 () Bool)

(declare-fun b!3748650 () Bool)

(declare-fun e!2318349 () Bool)

(declare-fun inv!21 (TokenValue!6331) Bool)

(assert (=> b!3748650 (= e!2318349 (and (inv!21 (value!194445 (h!45339 tokens!606))) e!2318351 tp!1144138))))

(declare-fun b!3748651 () Bool)

(declare-fun e!2318355 () Bool)

(declare-fun ListPrimitiveSize!262 (List!40043) Int)

(assert (=> b!3748651 (= e!2318355 (< (ListPrimitiveSize!262 tokens!606) 0))))

(declare-fun b!3748653 () Bool)

(declare-fun res!1519474 () Bool)

(assert (=> b!3748653 (=> (not res!1519474) (not e!2318355))))

(declare-datatypes ((LexerInterface!5690 0))(
  ( (LexerInterfaceExt!5687 (__x!24880 Int)) (Lexer!5688) )
))
(declare-fun thiss!27232 () LexerInterface!5690)

(declare-datatypes ((List!40044 0))(
  ( (Nil!39920) (Cons!39920 (h!45340 Rule!12002) (t!302727 List!40044)) )
))
(declare-fun rules!4236 () List!40044)

(declare-fun rulesProduceEachTokenIndividuallyList!1918 (LexerInterface!5690 List!40044 List!40043) Bool)

(assert (=> b!3748653 (= res!1519474 (rulesProduceEachTokenIndividuallyList!1918 thiss!27232 rules!4236 tokens!606))))

(declare-fun b!3748654 () Bool)

(declare-fun e!2318350 () Bool)

(declare-fun e!2318352 () Bool)

(declare-fun tp!1144134 () Bool)

(assert (=> b!3748654 (= e!2318350 (and e!2318352 tp!1144134))))

(declare-fun b!3748655 () Bool)

(declare-fun e!2318343 () Bool)

(declare-fun tp!1144141 () Bool)

(declare-fun inv!53422 (Token!11340) Bool)

(assert (=> b!3748655 (= e!2318343 (and (inv!53422 (h!45339 tokens!606)) e!2318349 tp!1144141))))

(declare-fun b!3748656 () Bool)

(declare-fun e!2318348 () Bool)

(declare-fun e!2318347 () Bool)

(declare-fun tp!1144132 () Bool)

(declare-fun t!8579 () Token!11340)

(assert (=> b!3748656 (= e!2318347 (and tp!1144132 (inv!53418 (tag!6961 (rule!8865 t!8579))) (inv!53421 (transformation!6101 (rule!8865 t!8579))) e!2318348))))

(declare-fun b!3748657 () Bool)

(declare-fun res!1519473 () Bool)

(assert (=> b!3748657 (=> (not res!1519473) (not e!2318355))))

(declare-fun rulesInvariant!5087 (LexerInterface!5690 List!40044) Bool)

(assert (=> b!3748657 (= res!1519473 (rulesInvariant!5087 thiss!27232 rules!4236))))

(declare-fun e!2318354 () Bool)

(assert (=> b!3748658 (= e!2318354 (and tp!1144137 tp!1144136))))

(declare-fun b!3748659 () Bool)

(declare-fun res!1519472 () Bool)

(assert (=> b!3748659 (=> (not res!1519472) (not e!2318355))))

(declare-fun isEmpty!23523 (List!40044) Bool)

(assert (=> b!3748659 (= res!1519472 (not (isEmpty!23523 rules!4236)))))

(assert (=> b!3748660 (= e!2318357 (and tp!1144140 tp!1144129))))

(declare-fun b!3748661 () Bool)

(declare-fun tp!1144133 () Bool)

(assert (=> b!3748661 (= e!2318352 (and tp!1144133 (inv!53418 (tag!6961 (h!45340 rules!4236))) (inv!53421 (transformation!6101 (h!45340 rules!4236))) e!2318354))))

(declare-fun tp!1144131 () Bool)

(declare-fun b!3748662 () Bool)

(declare-fun e!2318344 () Bool)

(assert (=> b!3748662 (= e!2318344 (and (inv!21 (value!194445 t!8579)) e!2318347 tp!1144131))))

(assert (=> b!3748663 (= e!2318348 (and tp!1144130 tp!1144139))))

(declare-fun b!3748652 () Bool)

(declare-fun res!1519476 () Bool)

(assert (=> b!3748652 (=> (not res!1519476) (not e!2318355))))

(declare-fun contains!8153 (List!40043 Token!11340) Bool)

(assert (=> b!3748652 (= res!1519476 (contains!8153 tokens!606 t!8579))))

(declare-fun res!1519475 () Bool)

(assert (=> start!351932 (=> (not res!1519475) (not e!2318355))))

(assert (=> start!351932 (= res!1519475 (is-Lexer!5688 thiss!27232))))

(assert (=> start!351932 e!2318355))

(assert (=> start!351932 true))

(assert (=> start!351932 e!2318350))

(assert (=> start!351932 e!2318343))

(assert (=> start!351932 (and (inv!53422 t!8579) e!2318344)))

(assert (= (and start!351932 res!1519475) b!3748659))

(assert (= (and b!3748659 res!1519472) b!3748657))

(assert (= (and b!3748657 res!1519473) b!3748652))

(assert (= (and b!3748652 res!1519476) b!3748653))

(assert (= (and b!3748653 res!1519474) b!3748651))

(assert (= b!3748661 b!3748658))

(assert (= b!3748654 b!3748661))

(assert (= (and start!351932 (is-Cons!39920 rules!4236)) b!3748654))

(assert (= b!3748649 b!3748660))

(assert (= b!3748650 b!3748649))

(assert (= b!3748655 b!3748650))

(assert (= (and start!351932 (is-Cons!39919 tokens!606)) b!3748655))

(assert (= b!3748656 b!3748663))

(assert (= b!3748662 b!3748656))

(assert (= start!351932 b!3748662))

(declare-fun m!4240341 () Bool)

(assert (=> b!3748659 m!4240341))

(declare-fun m!4240343 () Bool)

(assert (=> b!3748651 m!4240343))

(declare-fun m!4240345 () Bool)

(assert (=> b!3748661 m!4240345))

(declare-fun m!4240347 () Bool)

(assert (=> b!3748661 m!4240347))

(declare-fun m!4240349 () Bool)

(assert (=> b!3748653 m!4240349))

(declare-fun m!4240351 () Bool)

(assert (=> b!3748657 m!4240351))

(declare-fun m!4240353 () Bool)

(assert (=> b!3748662 m!4240353))

(declare-fun m!4240355 () Bool)

(assert (=> b!3748656 m!4240355))

(declare-fun m!4240357 () Bool)

(assert (=> b!3748656 m!4240357))

(declare-fun m!4240359 () Bool)

(assert (=> b!3748655 m!4240359))

(declare-fun m!4240361 () Bool)

(assert (=> b!3748649 m!4240361))

(declare-fun m!4240363 () Bool)

(assert (=> b!3748649 m!4240363))

(declare-fun m!4240365 () Bool)

(assert (=> start!351932 m!4240365))

(declare-fun m!4240367 () Bool)

(assert (=> b!3748652 m!4240367))

(declare-fun m!4240369 () Bool)

(assert (=> b!3748650 m!4240369))

(push 1)

(assert (not b!3748654))

(assert (not b!3748661))

(assert (not b!3748649))

(assert b_and!278371)

(assert (not b!3748656))

(assert b_and!278377)

(assert (not b!3748653))

(assert b_and!278367)

(assert (not b!3748657))

(assert b_and!278369)

(assert (not b_next!100845))

(assert (not b_next!100847))

(assert (not b_next!100841))

(assert (not b!3748659))

(assert (not b!3748651))

(assert b_and!278373)

(assert (not start!351932))

(assert (not b_next!100837))

(assert (not b!3748652))

(assert (not b_next!100839))

(assert (not b_next!100843))

(assert (not b!3748650))

(assert b_and!278375)

(assert (not b!3748655))

(assert (not b!3748662))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!100841))

(assert b_and!278373)

(assert (not b_next!100837))

(assert b_and!278375)

(assert b_and!278371)

(assert b_and!278377)

(assert b_and!278367)

(assert b_and!278369)

(assert (not b_next!100845))

(assert (not b_next!100847))

(assert (not b_next!100839))

(assert (not b_next!100843))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1093729 () Bool)

(declare-fun c!649068 () Bool)

(assert (=> d!1093729 (= c!649068 (is-IntegerValue!18993 (value!194445 (h!45339 tokens!606))))))

(declare-fun e!2318418 () Bool)

(assert (=> d!1093729 (= (inv!21 (value!194445 (h!45339 tokens!606))) e!2318418)))

(declare-fun b!3748722 () Bool)

(declare-fun e!2318417 () Bool)

(declare-fun inv!17 (TokenValue!6331) Bool)

(assert (=> b!3748722 (= e!2318417 (inv!17 (value!194445 (h!45339 tokens!606))))))

(declare-fun b!3748723 () Bool)

(assert (=> b!3748723 (= e!2318418 e!2318417)))

(declare-fun c!649069 () Bool)

(assert (=> b!3748723 (= c!649069 (is-IntegerValue!18994 (value!194445 (h!45339 tokens!606))))))

(declare-fun b!3748724 () Bool)

(declare-fun inv!16 (TokenValue!6331) Bool)

(assert (=> b!3748724 (= e!2318418 (inv!16 (value!194445 (h!45339 tokens!606))))))

(declare-fun b!3748725 () Bool)

(declare-fun res!1519501 () Bool)

(declare-fun e!2318416 () Bool)

(assert (=> b!3748725 (=> res!1519501 e!2318416)))

(assert (=> b!3748725 (= res!1519501 (not (is-IntegerValue!18995 (value!194445 (h!45339 tokens!606)))))))

(assert (=> b!3748725 (= e!2318417 e!2318416)))

(declare-fun b!3748726 () Bool)

(declare-fun inv!15 (TokenValue!6331) Bool)

(assert (=> b!3748726 (= e!2318416 (inv!15 (value!194445 (h!45339 tokens!606))))))

(assert (= (and d!1093729 c!649068) b!3748724))

(assert (= (and d!1093729 (not c!649068)) b!3748723))

(assert (= (and b!3748723 c!649069) b!3748722))

(assert (= (and b!3748723 (not c!649069)) b!3748725))

(assert (= (and b!3748725 (not res!1519501)) b!3748726))

(declare-fun m!4240405 () Bool)

(assert (=> b!3748722 m!4240405))

(declare-fun m!4240407 () Bool)

(assert (=> b!3748724 m!4240407))

(declare-fun m!4240409 () Bool)

(assert (=> b!3748726 m!4240409))

(assert (=> b!3748650 d!1093729))

(declare-fun d!1093733 () Bool)

(assert (=> d!1093733 (= (inv!53418 (tag!6961 (h!45340 rules!4236))) (= (mod (str.len (value!194444 (tag!6961 (h!45340 rules!4236)))) 2) 0))))

(assert (=> b!3748661 d!1093733))

(declare-fun d!1093735 () Bool)

(declare-fun res!1519510 () Bool)

(declare-fun e!2318426 () Bool)

(assert (=> d!1093735 (=> (not res!1519510) (not e!2318426))))

(declare-fun semiInverseModEq!2609 (Int Int) Bool)

(assert (=> d!1093735 (= res!1519510 (semiInverseModEq!2609 (toChars!8308 (transformation!6101 (h!45340 rules!4236))) (toValue!8449 (transformation!6101 (h!45340 rules!4236)))))))

(assert (=> d!1093735 (= (inv!53421 (transformation!6101 (h!45340 rules!4236))) e!2318426)))

(declare-fun b!3748739 () Bool)

(declare-fun equivClasses!2508 (Int Int) Bool)

(assert (=> b!3748739 (= e!2318426 (equivClasses!2508 (toChars!8308 (transformation!6101 (h!45340 rules!4236))) (toValue!8449 (transformation!6101 (h!45340 rules!4236)))))))

(assert (= (and d!1093735 res!1519510) b!3748739))

(declare-fun m!4240411 () Bool)

(assert (=> d!1093735 m!4240411))

(declare-fun m!4240413 () Bool)

(assert (=> b!3748739 m!4240413))

(assert (=> b!3748661 d!1093735))

(declare-fun d!1093737 () Bool)

(declare-fun c!649070 () Bool)

(assert (=> d!1093737 (= c!649070 (is-IntegerValue!18993 (value!194445 t!8579)))))

(declare-fun e!2318429 () Bool)

(assert (=> d!1093737 (= (inv!21 (value!194445 t!8579)) e!2318429)))

(declare-fun b!3748740 () Bool)

(declare-fun e!2318428 () Bool)

(assert (=> b!3748740 (= e!2318428 (inv!17 (value!194445 t!8579)))))

(declare-fun b!3748741 () Bool)

(assert (=> b!3748741 (= e!2318429 e!2318428)))

(declare-fun c!649071 () Bool)

(assert (=> b!3748741 (= c!649071 (is-IntegerValue!18994 (value!194445 t!8579)))))

(declare-fun b!3748742 () Bool)

(assert (=> b!3748742 (= e!2318429 (inv!16 (value!194445 t!8579)))))

(declare-fun b!3748743 () Bool)

(declare-fun res!1519511 () Bool)

(declare-fun e!2318427 () Bool)

(assert (=> b!3748743 (=> res!1519511 e!2318427)))

(assert (=> b!3748743 (= res!1519511 (not (is-IntegerValue!18995 (value!194445 t!8579))))))

(assert (=> b!3748743 (= e!2318428 e!2318427)))

(declare-fun b!3748744 () Bool)

(assert (=> b!3748744 (= e!2318427 (inv!15 (value!194445 t!8579)))))

(assert (= (and d!1093737 c!649070) b!3748742))

(assert (= (and d!1093737 (not c!649070)) b!3748741))

(assert (= (and b!3748741 c!649071) b!3748740))

(assert (= (and b!3748741 (not c!649071)) b!3748743))

(assert (= (and b!3748743 (not res!1519511)) b!3748744))

(declare-fun m!4240415 () Bool)

(assert (=> b!3748740 m!4240415))

(declare-fun m!4240417 () Bool)

(assert (=> b!3748742 m!4240417))

(declare-fun m!4240419 () Bool)

(assert (=> b!3748744 m!4240419))

(assert (=> b!3748662 d!1093737))

(declare-fun d!1093739 () Bool)

(declare-fun lt!1299691 () Int)

(assert (=> d!1093739 (>= lt!1299691 0)))

(declare-fun e!2318433 () Int)

(assert (=> d!1093739 (= lt!1299691 e!2318433)))

(declare-fun c!649074 () Bool)

(assert (=> d!1093739 (= c!649074 (is-Nil!39919 tokens!606))))

(assert (=> d!1093739 (= (ListPrimitiveSize!262 tokens!606) lt!1299691)))

(declare-fun b!3748750 () Bool)

(assert (=> b!3748750 (= e!2318433 0)))

(declare-fun b!3748751 () Bool)

(assert (=> b!3748751 (= e!2318433 (+ 1 (ListPrimitiveSize!262 (t!302726 tokens!606))))))

(assert (= (and d!1093739 c!649074) b!3748750))

(assert (= (and d!1093739 (not c!649074)) b!3748751))

(declare-fun m!4240433 () Bool)

(assert (=> b!3748751 m!4240433))

(assert (=> b!3748651 d!1093739))

(declare-fun d!1093743 () Bool)

(assert (=> d!1093743 (= (inv!53418 (tag!6961 (rule!8865 (h!45339 tokens!606)))) (= (mod (str.len (value!194444 (tag!6961 (rule!8865 (h!45339 tokens!606))))) 2) 0))))

(assert (=> b!3748649 d!1093743))

(declare-fun d!1093745 () Bool)

(declare-fun res!1519512 () Bool)

(declare-fun e!2318434 () Bool)

(assert (=> d!1093745 (=> (not res!1519512) (not e!2318434))))

(assert (=> d!1093745 (= res!1519512 (semiInverseModEq!2609 (toChars!8308 (transformation!6101 (rule!8865 (h!45339 tokens!606)))) (toValue!8449 (transformation!6101 (rule!8865 (h!45339 tokens!606))))))))

(assert (=> d!1093745 (= (inv!53421 (transformation!6101 (rule!8865 (h!45339 tokens!606)))) e!2318434)))

(declare-fun b!3748752 () Bool)

(assert (=> b!3748752 (= e!2318434 (equivClasses!2508 (toChars!8308 (transformation!6101 (rule!8865 (h!45339 tokens!606)))) (toValue!8449 (transformation!6101 (rule!8865 (h!45339 tokens!606))))))))

(assert (= (and d!1093745 res!1519512) b!3748752))

(declare-fun m!4240435 () Bool)

(assert (=> d!1093745 m!4240435))

(declare-fun m!4240437 () Bool)

(assert (=> b!3748752 m!4240437))

(assert (=> b!3748649 d!1093745))

(declare-fun d!1093747 () Bool)

(assert (=> d!1093747 (= (isEmpty!23523 rules!4236) (is-Nil!39920 rules!4236))))

(assert (=> b!3748659 d!1093747))

(declare-fun d!1093749 () Bool)

(declare-fun res!1519520 () Bool)

(declare-fun e!2318446 () Bool)

(assert (=> d!1093749 (=> (not res!1519520) (not e!2318446))))

(declare-fun isEmpty!23525 (List!40041) Bool)

(assert (=> d!1093749 (= res!1519520 (not (isEmpty!23525 (originalCharacters!6701 t!8579))))))

(assert (=> d!1093749 (= (inv!53422 t!8579) e!2318446)))

(declare-fun b!3748772 () Bool)

(declare-fun res!1519521 () Bool)

(assert (=> b!3748772 (=> (not res!1519521) (not e!2318446))))

(declare-fun list!14702 (BalanceConc!24010) List!40041)

(declare-fun dynLambda!17226 (Int TokenValue!6331) BalanceConc!24010)

(assert (=> b!3748772 (= res!1519521 (= (originalCharacters!6701 t!8579) (list!14702 (dynLambda!17226 (toChars!8308 (transformation!6101 (rule!8865 t!8579))) (value!194445 t!8579)))))))

(declare-fun b!3748773 () Bool)

(declare-fun size!30064 (List!40041) Int)

(assert (=> b!3748773 (= e!2318446 (= (size!30062 t!8579) (size!30064 (originalCharacters!6701 t!8579))))))

(assert (= (and d!1093749 res!1519520) b!3748772))

(assert (= (and b!3748772 res!1519521) b!3748773))

(declare-fun b_lambda!109869 () Bool)

(assert (=> (not b_lambda!109869) (not b!3748772)))

(declare-fun t!302739 () Bool)

(declare-fun tb!214403 () Bool)

(assert (=> (and b!3748663 (= (toChars!8308 (transformation!6101 (rule!8865 t!8579))) (toChars!8308 (transformation!6101 (rule!8865 t!8579)))) t!302739) tb!214403))

(declare-fun b!3748786 () Bool)

(declare-fun e!2318454 () Bool)

(declare-fun tp!1144187 () Bool)

(declare-fun inv!53425 (Conc!12198) Bool)

(assert (=> b!3748786 (= e!2318454 (and (inv!53425 (c!649061 (dynLambda!17226 (toChars!8308 (transformation!6101 (rule!8865 t!8579))) (value!194445 t!8579)))) tp!1144187))))

(declare-fun result!261726 () Bool)

(declare-fun inv!53426 (BalanceConc!24010) Bool)

(assert (=> tb!214403 (= result!261726 (and (inv!53426 (dynLambda!17226 (toChars!8308 (transformation!6101 (rule!8865 t!8579))) (value!194445 t!8579))) e!2318454))))

(assert (= tb!214403 b!3748786))

(declare-fun m!4240455 () Bool)

(assert (=> b!3748786 m!4240455))

(declare-fun m!4240457 () Bool)

(assert (=> tb!214403 m!4240457))

(assert (=> b!3748772 t!302739))

(declare-fun b_and!278401 () Bool)

(assert (= b_and!278369 (and (=> t!302739 result!261726) b_and!278401)))

(declare-fun t!302747 () Bool)

(declare-fun tb!214411 () Bool)

(assert (=> (and b!3748658 (= (toChars!8308 (transformation!6101 (h!45340 rules!4236))) (toChars!8308 (transformation!6101 (rule!8865 t!8579)))) t!302747) tb!214411))

(declare-fun result!261736 () Bool)

(assert (= result!261736 result!261726))

(assert (=> b!3748772 t!302747))

(declare-fun b_and!278405 () Bool)

(assert (= b_and!278373 (and (=> t!302747 result!261736) b_and!278405)))

(declare-fun t!302749 () Bool)

(declare-fun tb!214413 () Bool)

(assert (=> (and b!3748660 (= (toChars!8308 (transformation!6101 (rule!8865 (h!45339 tokens!606)))) (toChars!8308 (transformation!6101 (rule!8865 t!8579)))) t!302749) tb!214413))

(declare-fun result!261738 () Bool)

(assert (= result!261738 result!261726))

(assert (=> b!3748772 t!302749))

(declare-fun b_and!278407 () Bool)

(assert (= b_and!278377 (and (=> t!302749 result!261738) b_and!278407)))

(declare-fun m!4240463 () Bool)

(assert (=> d!1093749 m!4240463))

(declare-fun m!4240465 () Bool)

(assert (=> b!3748772 m!4240465))

(assert (=> b!3748772 m!4240465))

(declare-fun m!4240469 () Bool)

(assert (=> b!3748772 m!4240469))

(declare-fun m!4240473 () Bool)

(assert (=> b!3748773 m!4240473))

(assert (=> start!351932 d!1093749))

(declare-fun d!1093757 () Bool)

(declare-fun res!1519525 () Bool)

(declare-fun e!2318455 () Bool)

(assert (=> d!1093757 (=> (not res!1519525) (not e!2318455))))

(assert (=> d!1093757 (= res!1519525 (not (isEmpty!23525 (originalCharacters!6701 (h!45339 tokens!606)))))))

(assert (=> d!1093757 (= (inv!53422 (h!45339 tokens!606)) e!2318455)))

(declare-fun b!3748787 () Bool)

(declare-fun res!1519526 () Bool)

(assert (=> b!3748787 (=> (not res!1519526) (not e!2318455))))

(assert (=> b!3748787 (= res!1519526 (= (originalCharacters!6701 (h!45339 tokens!606)) (list!14702 (dynLambda!17226 (toChars!8308 (transformation!6101 (rule!8865 (h!45339 tokens!606)))) (value!194445 (h!45339 tokens!606))))))))

(declare-fun b!3748788 () Bool)

(assert (=> b!3748788 (= e!2318455 (= (size!30062 (h!45339 tokens!606)) (size!30064 (originalCharacters!6701 (h!45339 tokens!606)))))))

(assert (= (and d!1093757 res!1519525) b!3748787))

(assert (= (and b!3748787 res!1519526) b!3748788))

(declare-fun b_lambda!109873 () Bool)

(assert (=> (not b_lambda!109873) (not b!3748787)))

(declare-fun t!302751 () Bool)

(declare-fun tb!214415 () Bool)

(assert (=> (and b!3748663 (= (toChars!8308 (transformation!6101 (rule!8865 t!8579))) (toChars!8308 (transformation!6101 (rule!8865 (h!45339 tokens!606))))) t!302751) tb!214415))

(declare-fun b!3748789 () Bool)

(declare-fun e!2318456 () Bool)

(declare-fun tp!1144188 () Bool)

(assert (=> b!3748789 (= e!2318456 (and (inv!53425 (c!649061 (dynLambda!17226 (toChars!8308 (transformation!6101 (rule!8865 (h!45339 tokens!606)))) (value!194445 (h!45339 tokens!606))))) tp!1144188))))

(declare-fun result!261740 () Bool)

(assert (=> tb!214415 (= result!261740 (and (inv!53426 (dynLambda!17226 (toChars!8308 (transformation!6101 (rule!8865 (h!45339 tokens!606)))) (value!194445 (h!45339 tokens!606)))) e!2318456))))

(assert (= tb!214415 b!3748789))

(declare-fun m!4240475 () Bool)

(assert (=> b!3748789 m!4240475))

(declare-fun m!4240477 () Bool)

(assert (=> tb!214415 m!4240477))

(assert (=> b!3748787 t!302751))

(declare-fun b_and!278409 () Bool)

(assert (= b_and!278401 (and (=> t!302751 result!261740) b_and!278409)))

(declare-fun t!302753 () Bool)

(declare-fun tb!214417 () Bool)

(assert (=> (and b!3748658 (= (toChars!8308 (transformation!6101 (h!45340 rules!4236))) (toChars!8308 (transformation!6101 (rule!8865 (h!45339 tokens!606))))) t!302753) tb!214417))

(declare-fun result!261742 () Bool)

(assert (= result!261742 result!261740))

(assert (=> b!3748787 t!302753))

(declare-fun b_and!278411 () Bool)

(assert (= b_and!278405 (and (=> t!302753 result!261742) b_and!278411)))

(declare-fun t!302755 () Bool)

(declare-fun tb!214419 () Bool)

(assert (=> (and b!3748660 (= (toChars!8308 (transformation!6101 (rule!8865 (h!45339 tokens!606)))) (toChars!8308 (transformation!6101 (rule!8865 (h!45339 tokens!606))))) t!302755) tb!214419))

(declare-fun result!261744 () Bool)

(assert (= result!261744 result!261740))

(assert (=> b!3748787 t!302755))

(declare-fun b_and!278413 () Bool)

(assert (= b_and!278407 (and (=> t!302755 result!261744) b_and!278413)))

(declare-fun m!4240479 () Bool)

(assert (=> d!1093757 m!4240479))

(declare-fun m!4240481 () Bool)

(assert (=> b!3748787 m!4240481))

(assert (=> b!3748787 m!4240481))

(declare-fun m!4240483 () Bool)

(assert (=> b!3748787 m!4240483))

(declare-fun m!4240485 () Bool)

(assert (=> b!3748788 m!4240485))

(assert (=> b!3748655 d!1093757))

(declare-fun d!1093761 () Bool)

(declare-fun res!1519529 () Bool)

(declare-fun e!2318459 () Bool)

(assert (=> d!1093761 (=> (not res!1519529) (not e!2318459))))

(declare-fun rulesValid!2366 (LexerInterface!5690 List!40044) Bool)

(assert (=> d!1093761 (= res!1519529 (rulesValid!2366 thiss!27232 rules!4236))))

(assert (=> d!1093761 (= (rulesInvariant!5087 thiss!27232 rules!4236) e!2318459)))

(declare-fun b!3748792 () Bool)

(declare-datatypes ((List!40049 0))(
  ( (Nil!39925) (Cons!39925 (h!45345 String!45283) (t!302768 List!40049)) )
))
(declare-fun noDuplicateTag!2367 (LexerInterface!5690 List!40044 List!40049) Bool)

(assert (=> b!3748792 (= e!2318459 (noDuplicateTag!2367 thiss!27232 rules!4236 Nil!39925))))

(assert (= (and d!1093761 res!1519529) b!3748792))

(declare-fun m!4240487 () Bool)

(assert (=> d!1093761 m!4240487))

(declare-fun m!4240489 () Bool)

(assert (=> b!3748792 m!4240489))

(assert (=> b!3748657 d!1093761))

(declare-fun d!1093763 () Bool)

(assert (=> d!1093763 (= (inv!53418 (tag!6961 (rule!8865 t!8579))) (= (mod (str.len (value!194444 (tag!6961 (rule!8865 t!8579)))) 2) 0))))

(assert (=> b!3748656 d!1093763))

(declare-fun d!1093765 () Bool)

(declare-fun res!1519532 () Bool)

(declare-fun e!2318462 () Bool)

(assert (=> d!1093765 (=> (not res!1519532) (not e!2318462))))

(assert (=> d!1093765 (= res!1519532 (semiInverseModEq!2609 (toChars!8308 (transformation!6101 (rule!8865 t!8579))) (toValue!8449 (transformation!6101 (rule!8865 t!8579)))))))

(assert (=> d!1093765 (= (inv!53421 (transformation!6101 (rule!8865 t!8579))) e!2318462)))

(declare-fun b!3748795 () Bool)

(assert (=> b!3748795 (= e!2318462 (equivClasses!2508 (toChars!8308 (transformation!6101 (rule!8865 t!8579))) (toValue!8449 (transformation!6101 (rule!8865 t!8579)))))))

(assert (= (and d!1093765 res!1519532) b!3748795))

(declare-fun m!4240491 () Bool)

(assert (=> d!1093765 m!4240491))

(declare-fun m!4240493 () Bool)

(assert (=> b!3748795 m!4240493))

(assert (=> b!3748656 d!1093765))

(declare-fun b!3748818 () Bool)

(declare-fun e!2318483 () Bool)

(assert (=> b!3748818 (= e!2318483 true)))

(declare-fun b!3748817 () Bool)

(declare-fun e!2318482 () Bool)

(assert (=> b!3748817 (= e!2318482 e!2318483)))

(declare-fun b!3748816 () Bool)

(declare-fun e!2318481 () Bool)

(assert (=> b!3748816 (= e!2318481 e!2318482)))

(declare-fun d!1093767 () Bool)

(assert (=> d!1093767 e!2318481))

(assert (= b!3748817 b!3748818))

(assert (= b!3748816 b!3748817))

(assert (= (and d!1093767 (is-Cons!39920 rules!4236)) b!3748816))

(declare-fun order!21763 () Int)

(declare-fun lambda!125184 () Int)

(declare-fun order!21765 () Int)

(declare-fun dynLambda!17227 (Int Int) Int)

(declare-fun dynLambda!17228 (Int Int) Int)

(assert (=> b!3748818 (< (dynLambda!17227 order!21763 (toValue!8449 (transformation!6101 (h!45340 rules!4236)))) (dynLambda!17228 order!21765 lambda!125184))))

(declare-fun order!21767 () Int)

(declare-fun dynLambda!17229 (Int Int) Int)

(assert (=> b!3748818 (< (dynLambda!17229 order!21767 (toChars!8308 (transformation!6101 (h!45340 rules!4236)))) (dynLambda!17228 order!21765 lambda!125184))))

(assert (=> d!1093767 true))

(declare-fun lt!1299696 () Bool)

(declare-fun forall!8191 (List!40043 Int) Bool)

(assert (=> d!1093767 (= lt!1299696 (forall!8191 tokens!606 lambda!125184))))

(declare-fun e!2318473 () Bool)

(assert (=> d!1093767 (= lt!1299696 e!2318473)))

(declare-fun res!1519544 () Bool)

(assert (=> d!1093767 (=> res!1519544 e!2318473)))

(assert (=> d!1093767 (= res!1519544 (not (is-Cons!39919 tokens!606)))))

(assert (=> d!1093767 (not (isEmpty!23523 rules!4236))))

(assert (=> d!1093767 (= (rulesProduceEachTokenIndividuallyList!1918 thiss!27232 rules!4236 tokens!606) lt!1299696)))

(declare-fun b!3748806 () Bool)

(declare-fun e!2318474 () Bool)

(assert (=> b!3748806 (= e!2318473 e!2318474)))

(declare-fun res!1519543 () Bool)

(assert (=> b!3748806 (=> (not res!1519543) (not e!2318474))))

(declare-fun rulesProduceIndividualToken!2606 (LexerInterface!5690 List!40044 Token!11340) Bool)

(assert (=> b!3748806 (= res!1519543 (rulesProduceIndividualToken!2606 thiss!27232 rules!4236 (h!45339 tokens!606)))))

(declare-fun b!3748807 () Bool)

(assert (=> b!3748807 (= e!2318474 (rulesProduceEachTokenIndividuallyList!1918 thiss!27232 rules!4236 (t!302726 tokens!606)))))

(assert (= (and d!1093767 (not res!1519544)) b!3748806))

(assert (= (and b!3748806 res!1519543) b!3748807))

(declare-fun m!4240503 () Bool)

(assert (=> d!1093767 m!4240503))

(assert (=> d!1093767 m!4240341))

(declare-fun m!4240505 () Bool)

(assert (=> b!3748806 m!4240505))

(declare-fun m!4240507 () Bool)

(assert (=> b!3748807 m!4240507))

(assert (=> b!3748653 d!1093767))

(declare-fun d!1093775 () Bool)

(declare-fun lt!1299699 () Bool)

(declare-fun content!5854 (List!40043) (Set Token!11340))

(assert (=> d!1093775 (= lt!1299699 (set.member t!8579 (content!5854 tokens!606)))))

(declare-fun e!2318488 () Bool)

(assert (=> d!1093775 (= lt!1299699 e!2318488)))

(declare-fun res!1519550 () Bool)

(assert (=> d!1093775 (=> (not res!1519550) (not e!2318488))))

(assert (=> d!1093775 (= res!1519550 (is-Cons!39919 tokens!606))))

(assert (=> d!1093775 (= (contains!8153 tokens!606 t!8579) lt!1299699)))

(declare-fun b!3748825 () Bool)

(declare-fun e!2318489 () Bool)

(assert (=> b!3748825 (= e!2318488 e!2318489)))

(declare-fun res!1519549 () Bool)

(assert (=> b!3748825 (=> res!1519549 e!2318489)))

(assert (=> b!3748825 (= res!1519549 (= (h!45339 tokens!606) t!8579))))

(declare-fun b!3748826 () Bool)

(assert (=> b!3748826 (= e!2318489 (contains!8153 (t!302726 tokens!606) t!8579))))

(assert (= (and d!1093775 res!1519550) b!3748825))

(assert (= (and b!3748825 (not res!1519549)) b!3748826))

(declare-fun m!4240509 () Bool)

(assert (=> d!1093775 m!4240509))

(declare-fun m!4240511 () Bool)

(assert (=> d!1093775 m!4240511))

(declare-fun m!4240513 () Bool)

(assert (=> b!3748826 m!4240513))

(assert (=> b!3748652 d!1093775))

(declare-fun b!3748831 () Bool)

(declare-fun e!2318492 () Bool)

(declare-fun tp_is_empty!19011 () Bool)

(declare-fun tp!1144191 () Bool)

(assert (=> b!3748831 (= e!2318492 (and tp_is_empty!19011 tp!1144191))))

(assert (=> b!3748650 (= tp!1144138 e!2318492)))

(assert (= (and b!3748650 (is-Cons!39917 (originalCharacters!6701 (h!45339 tokens!606)))) b!3748831))

(declare-fun b!3748842 () Bool)

(declare-fun e!2318495 () Bool)

(assert (=> b!3748842 (= e!2318495 tp_is_empty!19011)))

(assert (=> b!3748661 (= tp!1144133 e!2318495)))

(declare-fun b!3748845 () Bool)

(declare-fun tp!1144205 () Bool)

(declare-fun tp!1144203 () Bool)

(assert (=> b!3748845 (= e!2318495 (and tp!1144205 tp!1144203))))

(declare-fun b!3748844 () Bool)

(declare-fun tp!1144204 () Bool)

(assert (=> b!3748844 (= e!2318495 tp!1144204)))

(declare-fun b!3748843 () Bool)

(declare-fun tp!1144206 () Bool)

(declare-fun tp!1144202 () Bool)

(assert (=> b!3748843 (= e!2318495 (and tp!1144206 tp!1144202))))

(assert (= (and b!3748661 (is-ElementMatch!11006 (regex!6101 (h!45340 rules!4236)))) b!3748842))

(assert (= (and b!3748661 (is-Concat!17337 (regex!6101 (h!45340 rules!4236)))) b!3748843))

(assert (= (and b!3748661 (is-Star!11006 (regex!6101 (h!45340 rules!4236)))) b!3748844))

(assert (= (and b!3748661 (is-Union!11006 (regex!6101 (h!45340 rules!4236)))) b!3748845))

(declare-fun b!3748859 () Bool)

(declare-fun b_free!100157 () Bool)

(declare-fun b_next!100861 () Bool)

(assert (=> b!3748859 (= b_free!100157 (not b_next!100861))))

(declare-fun tp!1144219 () Bool)

(declare-fun b_and!278415 () Bool)

(assert (=> b!3748859 (= tp!1144219 b_and!278415)))

(declare-fun b_free!100159 () Bool)

(declare-fun b_next!100863 () Bool)

(assert (=> b!3748859 (= b_free!100159 (not b_next!100863))))

(declare-fun tb!214421 () Bool)

(declare-fun t!302761 () Bool)

(assert (=> (and b!3748859 (= (toChars!8308 (transformation!6101 (rule!8865 (h!45339 (t!302726 tokens!606))))) (toChars!8308 (transformation!6101 (rule!8865 t!8579)))) t!302761) tb!214421))

(declare-fun result!261752 () Bool)

(assert (= result!261752 result!261726))

(assert (=> b!3748772 t!302761))

(declare-fun t!302763 () Bool)

(declare-fun tb!214423 () Bool)

(assert (=> (and b!3748859 (= (toChars!8308 (transformation!6101 (rule!8865 (h!45339 (t!302726 tokens!606))))) (toChars!8308 (transformation!6101 (rule!8865 (h!45339 tokens!606))))) t!302763) tb!214423))

(declare-fun result!261754 () Bool)

(assert (= result!261754 result!261740))

(assert (=> b!3748787 t!302763))

(declare-fun tp!1144220 () Bool)

(declare-fun b_and!278417 () Bool)

(assert (=> b!3748859 (= tp!1144220 (and (=> t!302761 result!261752) (=> t!302763 result!261754) b_and!278417))))

(declare-fun b!3748857 () Bool)

(declare-fun e!2318510 () Bool)

(declare-fun e!2318509 () Bool)

(declare-fun tp!1144221 () Bool)

(assert (=> b!3748857 (= e!2318509 (and (inv!21 (value!194445 (h!45339 (t!302726 tokens!606)))) e!2318510 tp!1144221))))

(declare-fun tp!1144217 () Bool)

(declare-fun e!2318511 () Bool)

(declare-fun b!3748856 () Bool)

(assert (=> b!3748856 (= e!2318511 (and (inv!53422 (h!45339 (t!302726 tokens!606))) e!2318509 tp!1144217))))

(declare-fun e!2318508 () Bool)

(assert (=> b!3748859 (= e!2318508 (and tp!1144219 tp!1144220))))

(assert (=> b!3748655 (= tp!1144141 e!2318511)))

(declare-fun b!3748858 () Bool)

(declare-fun tp!1144218 () Bool)

(assert (=> b!3748858 (= e!2318510 (and tp!1144218 (inv!53418 (tag!6961 (rule!8865 (h!45339 (t!302726 tokens!606))))) (inv!53421 (transformation!6101 (rule!8865 (h!45339 (t!302726 tokens!606))))) e!2318508))))

(assert (= b!3748858 b!3748859))

(assert (= b!3748857 b!3748858))

(assert (= b!3748856 b!3748857))

(assert (= (and b!3748655 (is-Cons!39919 (t!302726 tokens!606))) b!3748856))

(declare-fun m!4240515 () Bool)

(assert (=> b!3748857 m!4240515))

(declare-fun m!4240517 () Bool)

(assert (=> b!3748856 m!4240517))

(declare-fun m!4240519 () Bool)

(assert (=> b!3748858 m!4240519))

(declare-fun m!4240521 () Bool)

(assert (=> b!3748858 m!4240521))

(declare-fun b!3748860 () Bool)

(declare-fun e!2318514 () Bool)

(declare-fun tp!1144222 () Bool)

(assert (=> b!3748860 (= e!2318514 (and tp_is_empty!19011 tp!1144222))))

(assert (=> b!3748662 (= tp!1144131 e!2318514)))

(assert (= (and b!3748662 (is-Cons!39917 (originalCharacters!6701 t!8579))) b!3748860))

(declare-fun b!3748861 () Bool)

(declare-fun e!2318515 () Bool)

(assert (=> b!3748861 (= e!2318515 tp_is_empty!19011)))

(assert (=> b!3748656 (= tp!1144132 e!2318515)))

(declare-fun b!3748864 () Bool)

(declare-fun tp!1144226 () Bool)

(declare-fun tp!1144224 () Bool)

(assert (=> b!3748864 (= e!2318515 (and tp!1144226 tp!1144224))))

(declare-fun b!3748863 () Bool)

(declare-fun tp!1144225 () Bool)

(assert (=> b!3748863 (= e!2318515 tp!1144225)))

(declare-fun b!3748862 () Bool)

(declare-fun tp!1144227 () Bool)

(declare-fun tp!1144223 () Bool)

(assert (=> b!3748862 (= e!2318515 (and tp!1144227 tp!1144223))))

(assert (= (and b!3748656 (is-ElementMatch!11006 (regex!6101 (rule!8865 t!8579)))) b!3748861))

(assert (= (and b!3748656 (is-Concat!17337 (regex!6101 (rule!8865 t!8579)))) b!3748862))

(assert (= (and b!3748656 (is-Star!11006 (regex!6101 (rule!8865 t!8579)))) b!3748863))

(assert (= (and b!3748656 (is-Union!11006 (regex!6101 (rule!8865 t!8579)))) b!3748864))

(declare-fun b!3748875 () Bool)

(declare-fun b_free!100161 () Bool)

(declare-fun b_next!100865 () Bool)

(assert (=> b!3748875 (= b_free!100161 (not b_next!100865))))

(declare-fun tp!1144239 () Bool)

(declare-fun b_and!278419 () Bool)

(assert (=> b!3748875 (= tp!1144239 b_and!278419)))

(declare-fun b_free!100163 () Bool)

(declare-fun b_next!100867 () Bool)

(assert (=> b!3748875 (= b_free!100163 (not b_next!100867))))

(declare-fun t!302765 () Bool)

(declare-fun tb!214425 () Bool)

(assert (=> (and b!3748875 (= (toChars!8308 (transformation!6101 (h!45340 (t!302727 rules!4236)))) (toChars!8308 (transformation!6101 (rule!8865 t!8579)))) t!302765) tb!214425))

(declare-fun result!261758 () Bool)

(assert (= result!261758 result!261726))

(assert (=> b!3748772 t!302765))

(declare-fun t!302767 () Bool)

(declare-fun tb!214427 () Bool)

(assert (=> (and b!3748875 (= (toChars!8308 (transformation!6101 (h!45340 (t!302727 rules!4236)))) (toChars!8308 (transformation!6101 (rule!8865 (h!45339 tokens!606))))) t!302767) tb!214427))

(declare-fun result!261760 () Bool)

(assert (= result!261760 result!261740))

(assert (=> b!3748787 t!302767))

(declare-fun tp!1144238 () Bool)

(declare-fun b_and!278421 () Bool)

(assert (=> b!3748875 (= tp!1144238 (and (=> t!302765 result!261758) (=> t!302767 result!261760) b_and!278421))))

(declare-fun e!2318524 () Bool)

(assert (=> b!3748875 (= e!2318524 (and tp!1144239 tp!1144238))))

(declare-fun tp!1144237 () Bool)

(declare-fun b!3748874 () Bool)

(declare-fun e!2318525 () Bool)

(assert (=> b!3748874 (= e!2318525 (and tp!1144237 (inv!53418 (tag!6961 (h!45340 (t!302727 rules!4236)))) (inv!53421 (transformation!6101 (h!45340 (t!302727 rules!4236)))) e!2318524))))

(declare-fun b!3748873 () Bool)

(declare-fun e!2318527 () Bool)

(declare-fun tp!1144236 () Bool)

(assert (=> b!3748873 (= e!2318527 (and e!2318525 tp!1144236))))

(assert (=> b!3748654 (= tp!1144134 e!2318527)))

(assert (= b!3748874 b!3748875))

(assert (= b!3748873 b!3748874))

(assert (= (and b!3748654 (is-Cons!39920 (t!302727 rules!4236))) b!3748873))

(declare-fun m!4240523 () Bool)

(assert (=> b!3748874 m!4240523))

(declare-fun m!4240525 () Bool)

(assert (=> b!3748874 m!4240525))

(declare-fun b!3748876 () Bool)

(declare-fun e!2318528 () Bool)

(assert (=> b!3748876 (= e!2318528 tp_is_empty!19011)))

(assert (=> b!3748649 (= tp!1144135 e!2318528)))

(declare-fun b!3748879 () Bool)

(declare-fun tp!1144243 () Bool)

(declare-fun tp!1144241 () Bool)

(assert (=> b!3748879 (= e!2318528 (and tp!1144243 tp!1144241))))

(declare-fun b!3748878 () Bool)

(declare-fun tp!1144242 () Bool)

(assert (=> b!3748878 (= e!2318528 tp!1144242)))

(declare-fun b!3748877 () Bool)

(declare-fun tp!1144244 () Bool)

(declare-fun tp!1144240 () Bool)

(assert (=> b!3748877 (= e!2318528 (and tp!1144244 tp!1144240))))

(assert (= (and b!3748649 (is-ElementMatch!11006 (regex!6101 (rule!8865 (h!45339 tokens!606))))) b!3748876))

(assert (= (and b!3748649 (is-Concat!17337 (regex!6101 (rule!8865 (h!45339 tokens!606))))) b!3748877))

(assert (= (and b!3748649 (is-Star!11006 (regex!6101 (rule!8865 (h!45339 tokens!606))))) b!3748878))

(assert (= (and b!3748649 (is-Union!11006 (regex!6101 (rule!8865 (h!45339 tokens!606))))) b!3748879))

(declare-fun b_lambda!109875 () Bool)

(assert (= b_lambda!109873 (or (and b!3748875 b_free!100163 (= (toChars!8308 (transformation!6101 (h!45340 (t!302727 rules!4236)))) (toChars!8308 (transformation!6101 (rule!8865 (h!45339 tokens!606)))))) (and b!3748658 b_free!100139 (= (toChars!8308 (transformation!6101 (h!45340 rules!4236))) (toChars!8308 (transformation!6101 (rule!8865 (h!45339 tokens!606)))))) (and b!3748660 b_free!100143) (and b!3748663 b_free!100135 (= (toChars!8308 (transformation!6101 (rule!8865 t!8579))) (toChars!8308 (transformation!6101 (rule!8865 (h!45339 tokens!606)))))) (and b!3748859 b_free!100159 (= (toChars!8308 (transformation!6101 (rule!8865 (h!45339 (t!302726 tokens!606))))) (toChars!8308 (transformation!6101 (rule!8865 (h!45339 tokens!606)))))) b_lambda!109875)))

(declare-fun b_lambda!109877 () Bool)

(assert (= b_lambda!109869 (or (and b!3748859 b_free!100159 (= (toChars!8308 (transformation!6101 (rule!8865 (h!45339 (t!302726 tokens!606))))) (toChars!8308 (transformation!6101 (rule!8865 t!8579))))) (and b!3748875 b_free!100163 (= (toChars!8308 (transformation!6101 (h!45340 (t!302727 rules!4236)))) (toChars!8308 (transformation!6101 (rule!8865 t!8579))))) (and b!3748658 b_free!100139 (= (toChars!8308 (transformation!6101 (h!45340 rules!4236))) (toChars!8308 (transformation!6101 (rule!8865 t!8579))))) (and b!3748660 b_free!100143 (= (toChars!8308 (transformation!6101 (rule!8865 (h!45339 tokens!606)))) (toChars!8308 (transformation!6101 (rule!8865 t!8579))))) (and b!3748663 b_free!100135) b_lambda!109877)))

(push 1)

(assert b_and!278419)

(assert b_and!278371)

(assert (not b!3748856))

(assert b_and!278367)

(assert (not d!1093749))

(assert (not b_next!100865))

(assert (not d!1093757))

(assert (not b!3748826))

(assert b_and!278417)

(assert (not b!3748739))

(assert (not b_next!100845))

(assert (not b_next!100847))

(assert (not b!3748724))

(assert (not b_next!100841))

(assert (not d!1093735))

(assert (not b!3748773))

(assert (not b_next!100863))

(assert (not b!3748795))

(assert (not b_next!100861))

(assert b_and!278409)

(assert (not d!1093775))

(assert (not b!3748863))

(assert (not b!3748878))

(assert (not b!3748860))

(assert (not b_lambda!109877))

(assert (not b!3748742))

(assert (not d!1093767))

(assert (not b!3748831))

(assert (not b!3748877))

(assert (not b!3748792))

(assert (not b_next!100837))

(assert (not b_next!100867))

(assert (not b!3748857))

(assert (not b!3748806))

(assert (not b!3748786))

(assert (not b!3748844))

(assert (not b!3748843))

(assert (not b!3748879))

(assert (not b_next!100839))

(assert tp_is_empty!19011)

(assert (not b_next!100843))

(assert b_and!278421)

(assert (not b!3748787))

(assert (not b!3748858))

(assert b_and!278375)

(assert (not b!3748874))

(assert (not b_lambda!109875))

(assert (not tb!214403))

(assert (not b!3748816))

(assert b_and!278411)

(assert (not b!3748862))

(assert (not b!3748752))

(assert (not b!3748788))

(assert (not b!3748864))

(assert (not d!1093765))

(assert (not b!3748726))

(assert (not tb!214415))

(assert b_and!278413)

(assert (not b!3748873))

(assert (not b!3748751))

(assert (not d!1093761))

(assert (not b!3748722))

(assert (not b!3748744))

(assert (not b!3748789))

(assert (not b!3748807))

(assert (not b!3748772))

(assert (not b!3748740))

(assert (not d!1093745))

(assert (not b!3748845))

(assert b_and!278415)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!100865))

(assert b_and!278417)

(assert (not b_next!100841))

(assert b_and!278409)

(assert b_and!278419)

(assert b_and!278421)

(assert b_and!278375)

(assert b_and!278371)

(assert b_and!278411)

(assert b_and!278413)

(assert b_and!278367)

(assert b_and!278415)

(assert (not b_next!100845))

(assert (not b_next!100847))

(assert (not b_next!100863))

(assert (not b_next!100861))

(assert (not b_next!100837))

(assert (not b_next!100867))

(assert (not b_next!100839))

(assert (not b_next!100843))

(check-sat)

(pop 1)


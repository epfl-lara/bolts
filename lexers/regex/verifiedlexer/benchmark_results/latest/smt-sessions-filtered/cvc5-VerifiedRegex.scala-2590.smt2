; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!138600 () Bool)

(assert start!138600)

(declare-fun b!1477422 () Bool)

(declare-fun b_free!37851 () Bool)

(declare-fun b_next!38555 () Bool)

(assert (=> b!1477422 (= b_free!37851 (not b_next!38555))))

(declare-fun tp!418325 () Bool)

(declare-fun b_and!102161 () Bool)

(assert (=> b!1477422 (= tp!418325 b_and!102161)))

(declare-fun b_free!37853 () Bool)

(declare-fun b_next!38557 () Bool)

(assert (=> b!1477422 (= b_free!37853 (not b_next!38557))))

(declare-fun tp!418331 () Bool)

(declare-fun b_and!102163 () Bool)

(assert (=> b!1477422 (= tp!418331 b_and!102163)))

(declare-fun b!1477413 () Bool)

(declare-fun b_free!37855 () Bool)

(declare-fun b_next!38559 () Bool)

(assert (=> b!1477413 (= b_free!37855 (not b_next!38559))))

(declare-fun tp!418327 () Bool)

(declare-fun b_and!102165 () Bool)

(assert (=> b!1477413 (= tp!418327 b_and!102165)))

(declare-fun b_free!37857 () Bool)

(declare-fun b_next!38561 () Bool)

(assert (=> b!1477413 (= b_free!37857 (not b_next!38561))))

(declare-fun tp!418332 () Bool)

(declare-fun b_and!102167 () Bool)

(assert (=> b!1477413 (= tp!418332 b_and!102167)))

(declare-fun b!1477411 () Bool)

(declare-fun b_free!37859 () Bool)

(declare-fun b_next!38563 () Bool)

(assert (=> b!1477411 (= b_free!37859 (not b_next!38563))))

(declare-fun tp!418322 () Bool)

(declare-fun b_and!102169 () Bool)

(assert (=> b!1477411 (= tp!418322 b_and!102169)))

(declare-fun b_free!37861 () Bool)

(declare-fun b_next!38565 () Bool)

(assert (=> b!1477411 (= b_free!37861 (not b_next!38565))))

(declare-fun tp!418330 () Bool)

(declare-fun b_and!102171 () Bool)

(assert (=> b!1477411 (= tp!418330 b_and!102171)))

(declare-fun e!944115 () Bool)

(declare-fun tp!418323 () Bool)

(declare-fun b!1477410 () Bool)

(declare-fun e!944119 () Bool)

(declare-datatypes ((List!15656 0))(
  ( (Nil!15590) (Cons!15590 (h!20991 (_ BitVec 16)) (t!136801 List!15656)) )
))
(declare-datatypes ((TokenValue!2868 0))(
  ( (FloatLiteralValue!5736 (text!20521 List!15656)) (TokenValueExt!2867 (__x!9526 Int)) (Broken!14340 (value!88796 List!15656)) (Object!2933) (End!2868) (Def!2868) (Underscore!2868) (Match!2868) (Else!2868) (Error!2868) (Case!2868) (If!2868) (Extends!2868) (Abstract!2868) (Class!2868) (Val!2868) (DelimiterValue!5736 (del!2928 List!15656)) (KeywordValue!2874 (value!88797 List!15656)) (CommentValue!5736 (value!88798 List!15656)) (WhitespaceValue!5736 (value!88799 List!15656)) (IndentationValue!2868 (value!88800 List!15656)) (String!18597) (Int32!2868) (Broken!14341 (value!88801 List!15656)) (Boolean!2869) (Unit!25357) (OperatorValue!2871 (op!2928 List!15656)) (IdentifierValue!5736 (value!88802 List!15656)) (IdentifierValue!5737 (value!88803 List!15656)) (WhitespaceValue!5737 (value!88804 List!15656)) (True!5736) (False!5736) (Broken!14342 (value!88805 List!15656)) (Broken!14343 (value!88806 List!15656)) (True!5737) (RightBrace!2868) (RightBracket!2868) (Colon!2868) (Null!2868) (Comma!2868) (LeftBracket!2868) (False!5737) (LeftBrace!2868) (ImaginaryLiteralValue!2868 (text!20522 List!15656)) (StringLiteralValue!8604 (value!88807 List!15656)) (EOFValue!2868 (value!88808 List!15656)) (IdentValue!2868 (value!88809 List!15656)) (DelimiterValue!5737 (value!88810 List!15656)) (DedentValue!2868 (value!88811 List!15656)) (NewLineValue!2868 (value!88812 List!15656)) (IntegerValue!8604 (value!88813 (_ BitVec 32)) (text!20523 List!15656)) (IntegerValue!8605 (value!88814 Int) (text!20524 List!15656)) (Times!2868) (Or!2868) (Equal!2868) (Minus!2868) (Broken!14344 (value!88815 List!15656)) (And!2868) (Div!2868) (LessEqual!2868) (Mod!2868) (Concat!6960) (Not!2868) (Plus!2868) (SpaceValue!2868 (value!88816 List!15656)) (IntegerValue!8606 (value!88817 Int) (text!20525 List!15656)) (StringLiteralValue!8605 (text!20526 List!15656)) (FloatLiteralValue!5737 (text!20527 List!15656)) (BytesLiteralValue!2868 (value!88818 List!15656)) (CommentValue!5737 (value!88819 List!15656)) (StringLiteralValue!8606 (value!88820 List!15656)) (ErrorTokenValue!2868 (msg!2929 List!15656)) )
))
(declare-datatypes ((C!8362 0))(
  ( (C!8363 (val!4751 Int)) )
))
(declare-datatypes ((Regex!4092 0))(
  ( (ElementMatch!4092 (c!242685 C!8362)) (Concat!6961 (regOne!8696 Regex!4092) (regTwo!8696 Regex!4092)) (EmptyExpr!4092) (Star!4092 (reg!4421 Regex!4092)) (EmptyLang!4092) (Union!4092 (regOne!8697 Regex!4092) (regTwo!8697 Regex!4092)) )
))
(declare-datatypes ((String!18598 0))(
  ( (String!18599 (value!88821 String)) )
))
(declare-datatypes ((List!15657 0))(
  ( (Nil!15591) (Cons!15591 (h!20992 C!8362) (t!136802 List!15657)) )
))
(declare-datatypes ((IArray!10623 0))(
  ( (IArray!10624 (innerList!5369 List!15657)) )
))
(declare-datatypes ((Conc!5309 0))(
  ( (Node!5309 (left!13149 Conc!5309) (right!13479 Conc!5309) (csize!10848 Int) (cheight!5520 Int)) (Leaf!7900 (xs!8064 IArray!10623) (csize!10849 Int)) (Empty!5309) )
))
(declare-datatypes ((BalanceConc!10558 0))(
  ( (BalanceConc!10559 (c!242686 Conc!5309)) )
))
(declare-datatypes ((TokenValueInjection!5396 0))(
  ( (TokenValueInjection!5397 (toValue!4113 Int) (toChars!3972 Int)) )
))
(declare-datatypes ((Rule!5356 0))(
  ( (Rule!5357 (regex!2778 Regex!4092) (tag!3042 String!18598) (isSeparator!2778 Bool) (transformation!2778 TokenValueInjection!5396)) )
))
(declare-datatypes ((Token!5218 0))(
  ( (Token!5219 (value!88822 TokenValue!2868) (rule!4555 Rule!5356) (size!12626 Int) (originalCharacters!3640 List!15657)) )
))
(declare-datatypes ((List!15658 0))(
  ( (Nil!15592) (Cons!15592 (h!20993 Token!5218) (t!136803 List!15658)) )
))
(declare-fun l2!3105 () List!15658)

(declare-fun inv!21 (TokenValue!2868) Bool)

(assert (=> b!1477410 (= e!944119 (and (inv!21 (value!88822 (h!20993 l2!3105))) e!944115 tp!418323))))

(declare-fun e!944124 () Bool)

(assert (=> b!1477411 (= e!944124 (and tp!418322 tp!418330))))

(declare-fun b!1477412 () Bool)

(declare-fun res!667684 () Bool)

(declare-fun e!944117 () Bool)

(assert (=> b!1477412 (=> (not res!667684) (not e!944117))))

(declare-fun l1!3136 () List!15658)

(declare-fun isEmpty!9741 (List!15658) Bool)

(assert (=> b!1477412 (= res!667684 (not (isEmpty!9741 l1!3136)))))

(declare-fun res!667685 () Bool)

(assert (=> start!138600 (=> (not res!667685) (not e!944117))))

(declare-datatypes ((LexerInterface!2434 0))(
  ( (LexerInterfaceExt!2431 (__x!9527 Int)) (Lexer!2432) )
))
(declare-fun thiss!27374 () LexerInterface!2434)

(assert (=> start!138600 (= res!667685 (is-Lexer!2432 thiss!27374))))

(assert (=> start!138600 e!944117))

(assert (=> start!138600 true))

(declare-fun e!944121 () Bool)

(assert (=> start!138600 e!944121))

(declare-fun e!944126 () Bool)

(assert (=> start!138600 e!944126))

(declare-fun e!944130 () Bool)

(assert (=> start!138600 e!944130))

(declare-fun e!944131 () Bool)

(assert (=> b!1477413 (= e!944131 (and tp!418327 tp!418332))))

(declare-fun b!1477414 () Bool)

(declare-fun res!667680 () Bool)

(assert (=> b!1477414 (=> (not res!667680) (not e!944117))))

(declare-datatypes ((List!15659 0))(
  ( (Nil!15593) (Cons!15593 (h!20994 Rule!5356) (t!136804 List!15659)) )
))
(declare-fun rules!4290 () List!15659)

(declare-fun tokensListTwoByTwoPredicateSeparableList!294 (LexerInterface!2434 List!15658 List!15659) Bool)

(assert (=> b!1477414 (= res!667680 (tokensListTwoByTwoPredicateSeparableList!294 thiss!27374 l2!3105 rules!4290))))

(declare-fun b!1477415 () Bool)

(declare-fun res!667681 () Bool)

(assert (=> b!1477415 (=> (not res!667681) (not e!944117))))

(assert (=> b!1477415 (= res!667681 (not (isEmpty!9741 l2!3105)))))

(declare-fun b!1477416 () Bool)

(declare-fun res!667679 () Bool)

(assert (=> b!1477416 (=> (not res!667679) (not e!944117))))

(declare-fun isEmpty!9742 (List!15659) Bool)

(assert (=> b!1477416 (= res!667679 (not (isEmpty!9742 rules!4290)))))

(declare-fun b!1477417 () Bool)

(declare-fun e!944120 () Bool)

(declare-fun tp!418334 () Bool)

(assert (=> b!1477417 (= e!944121 (and e!944120 tp!418334))))

(declare-fun tp!418328 () Bool)

(declare-fun b!1477418 () Bool)

(declare-fun inv!20800 (String!18598) Bool)

(declare-fun inv!20803 (TokenValueInjection!5396) Bool)

(assert (=> b!1477418 (= e!944115 (and tp!418328 (inv!20800 (tag!3042 (rule!4555 (h!20993 l2!3105)))) (inv!20803 (transformation!2778 (rule!4555 (h!20993 l2!3105)))) e!944131))))

(declare-fun b!1477419 () Bool)

(declare-fun contains!2939 (List!15658 Token!5218) Bool)

(declare-fun head!3066 (List!15658) Token!5218)

(assert (=> b!1477419 (= e!944117 (not (contains!2939 l2!3105 (head!3066 l2!3105))))))

(declare-fun lt!513410 () Token!5218)

(declare-fun rulesProduceIndividualToken!1291 (LexerInterface!2434 List!15659 Token!5218) Bool)

(assert (=> b!1477419 (rulesProduceIndividualToken!1291 thiss!27374 rules!4290 lt!513410)))

(declare-datatypes ((Unit!25358 0))(
  ( (Unit!25359) )
))
(declare-fun lt!513411 () Unit!25358)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!472 (LexerInterface!2434 List!15659 List!15658 Token!5218) Unit!25358)

(assert (=> b!1477419 (= lt!513411 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!472 thiss!27374 rules!4290 l1!3136 lt!513410))))

(declare-fun last!336 (List!15658) Token!5218)

(assert (=> b!1477419 (= lt!513410 (last!336 l1!3136))))

(declare-fun b!1477420 () Bool)

(declare-fun res!667683 () Bool)

(assert (=> b!1477420 (=> (not res!667683) (not e!944117))))

(declare-fun rulesProduceEachTokenIndividuallyList!801 (LexerInterface!2434 List!15659 List!15658) Bool)

(assert (=> b!1477420 (= res!667683 (rulesProduceEachTokenIndividuallyList!801 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1477421 () Bool)

(declare-fun tp!418326 () Bool)

(declare-fun e!944123 () Bool)

(assert (=> b!1477421 (= e!944120 (and tp!418326 (inv!20800 (tag!3042 (h!20994 rules!4290))) (inv!20803 (transformation!2778 (h!20994 rules!4290))) e!944123))))

(assert (=> b!1477422 (= e!944123 (and tp!418325 tp!418331))))

(declare-fun tp!418324 () Bool)

(declare-fun e!944127 () Bool)

(declare-fun b!1477423 () Bool)

(declare-fun e!944125 () Bool)

(assert (=> b!1477423 (= e!944127 (and (inv!21 (value!88822 (h!20993 l1!3136))) e!944125 tp!418324))))

(declare-fun b!1477424 () Bool)

(declare-fun tp!418329 () Bool)

(declare-fun inv!20804 (Token!5218) Bool)

(assert (=> b!1477424 (= e!944126 (and (inv!20804 (h!20993 l1!3136)) e!944127 tp!418329))))

(declare-fun b!1477425 () Bool)

(declare-fun res!667682 () Bool)

(assert (=> b!1477425 (=> (not res!667682) (not e!944117))))

(assert (=> b!1477425 (= res!667682 (tokensListTwoByTwoPredicateSeparableList!294 thiss!27374 l1!3136 rules!4290))))

(declare-fun b!1477426 () Bool)

(declare-fun res!667687 () Bool)

(assert (=> b!1477426 (=> (not res!667687) (not e!944117))))

(declare-fun rulesInvariant!2223 (LexerInterface!2434 List!15659) Bool)

(assert (=> b!1477426 (= res!667687 (rulesInvariant!2223 thiss!27374 rules!4290))))

(declare-fun tp!418333 () Bool)

(declare-fun b!1477427 () Bool)

(assert (=> b!1477427 (= e!944130 (and (inv!20804 (h!20993 l2!3105)) e!944119 tp!418333))))

(declare-fun tp!418321 () Bool)

(declare-fun b!1477428 () Bool)

(assert (=> b!1477428 (= e!944125 (and tp!418321 (inv!20800 (tag!3042 (rule!4555 (h!20993 l1!3136)))) (inv!20803 (transformation!2778 (rule!4555 (h!20993 l1!3136)))) e!944124))))

(declare-fun b!1477429 () Bool)

(declare-fun res!667686 () Bool)

(assert (=> b!1477429 (=> (not res!667686) (not e!944117))))

(assert (=> b!1477429 (= res!667686 (rulesProduceEachTokenIndividuallyList!801 thiss!27374 rules!4290 l1!3136))))

(assert (= (and start!138600 res!667685) b!1477416))

(assert (= (and b!1477416 res!667679) b!1477426))

(assert (= (and b!1477426 res!667687) b!1477429))

(assert (= (and b!1477429 res!667686) b!1477420))

(assert (= (and b!1477420 res!667683) b!1477425))

(assert (= (and b!1477425 res!667682) b!1477414))

(assert (= (and b!1477414 res!667680) b!1477412))

(assert (= (and b!1477412 res!667684) b!1477415))

(assert (= (and b!1477415 res!667681) b!1477419))

(assert (= b!1477421 b!1477422))

(assert (= b!1477417 b!1477421))

(assert (= (and start!138600 (is-Cons!15593 rules!4290)) b!1477417))

(assert (= b!1477428 b!1477411))

(assert (= b!1477423 b!1477428))

(assert (= b!1477424 b!1477423))

(assert (= (and start!138600 (is-Cons!15592 l1!3136)) b!1477424))

(assert (= b!1477418 b!1477413))

(assert (= b!1477410 b!1477418))

(assert (= b!1477427 b!1477410))

(assert (= (and start!138600 (is-Cons!15592 l2!3105)) b!1477427))

(declare-fun m!1722937 () Bool)

(assert (=> b!1477418 m!1722937))

(declare-fun m!1722939 () Bool)

(assert (=> b!1477418 m!1722939))

(declare-fun m!1722941 () Bool)

(assert (=> b!1477412 m!1722941))

(declare-fun m!1722943 () Bool)

(assert (=> b!1477426 m!1722943))

(declare-fun m!1722945 () Bool)

(assert (=> b!1477420 m!1722945))

(declare-fun m!1722947 () Bool)

(assert (=> b!1477421 m!1722947))

(declare-fun m!1722949 () Bool)

(assert (=> b!1477421 m!1722949))

(declare-fun m!1722951 () Bool)

(assert (=> b!1477428 m!1722951))

(declare-fun m!1722953 () Bool)

(assert (=> b!1477428 m!1722953))

(declare-fun m!1722955 () Bool)

(assert (=> b!1477414 m!1722955))

(declare-fun m!1722957 () Bool)

(assert (=> b!1477425 m!1722957))

(declare-fun m!1722959 () Bool)

(assert (=> b!1477424 m!1722959))

(declare-fun m!1722961 () Bool)

(assert (=> b!1477410 m!1722961))

(declare-fun m!1722963 () Bool)

(assert (=> b!1477419 m!1722963))

(declare-fun m!1722965 () Bool)

(assert (=> b!1477419 m!1722965))

(declare-fun m!1722967 () Bool)

(assert (=> b!1477419 m!1722967))

(declare-fun m!1722969 () Bool)

(assert (=> b!1477419 m!1722969))

(declare-fun m!1722971 () Bool)

(assert (=> b!1477419 m!1722971))

(assert (=> b!1477419 m!1722965))

(declare-fun m!1722973 () Bool)

(assert (=> b!1477415 m!1722973))

(declare-fun m!1722975 () Bool)

(assert (=> b!1477429 m!1722975))

(declare-fun m!1722977 () Bool)

(assert (=> b!1477416 m!1722977))

(declare-fun m!1722979 () Bool)

(assert (=> b!1477427 m!1722979))

(declare-fun m!1722981 () Bool)

(assert (=> b!1477423 m!1722981))

(push 1)

(assert (not b!1477419))

(assert (not b_next!38565))

(assert (not b_next!38555))

(assert (not b!1477416))

(assert (not b!1477414))

(assert (not b_next!38563))

(assert b_and!102161)

(assert (not b!1477412))

(assert (not b!1477421))

(assert (not b!1477424))

(assert (not b_next!38557))

(assert (not b!1477410))

(assert b_and!102169)

(assert b_and!102167)

(assert (not b!1477417))

(assert (not b!1477426))

(assert (not b_next!38561))

(assert b_and!102165)

(assert (not b!1477415))

(assert (not b!1477427))

(assert (not b!1477428))

(assert (not b_next!38559))

(assert (not b!1477429))

(assert (not b!1477418))

(assert (not b!1477425))

(assert (not b!1477420))

(assert b_and!102171)

(assert (not b!1477423))

(assert b_and!102163)

(check-sat)

(pop 1)

(push 1)

(assert b_and!102167)

(assert (not b_next!38561))

(assert b_and!102165)

(assert (not b_next!38565))

(assert (not b_next!38555))

(assert (not b_next!38559))

(assert b_and!102171)

(assert (not b_next!38563))

(assert b_and!102161)

(assert b_and!102163)

(assert (not b_next!38557))

(assert b_and!102169)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!433331 () Bool)

(assert (=> d!433331 (rulesProduceIndividualToken!1291 thiss!27374 rules!4290 lt!513410)))

(declare-fun lt!513420 () Unit!25358)

(declare-fun choose!9048 (LexerInterface!2434 List!15659 List!15658 Token!5218) Unit!25358)

(assert (=> d!433331 (= lt!513420 (choose!9048 thiss!27374 rules!4290 l1!3136 lt!513410))))

(assert (=> d!433331 (not (isEmpty!9742 rules!4290))))

(assert (=> d!433331 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!472 thiss!27374 rules!4290 l1!3136 lt!513410) lt!513420)))

(declare-fun bs!345735 () Bool)

(assert (= bs!345735 d!433331))

(assert (=> bs!345735 m!1722971))

(declare-fun m!1723039 () Bool)

(assert (=> bs!345735 m!1723039))

(assert (=> bs!345735 m!1722977))

(assert (=> b!1477419 d!433331))

(declare-fun d!433345 () Bool)

(assert (=> d!433345 (= (head!3066 l2!3105) (h!20993 l2!3105))))

(assert (=> b!1477419 d!433345))

(declare-fun d!433347 () Bool)

(declare-fun lt!513423 () Token!5218)

(assert (=> d!433347 (contains!2939 l1!3136 lt!513423)))

(declare-fun e!944197 () Token!5218)

(assert (=> d!433347 (= lt!513423 e!944197)))

(declare-fun c!242697 () Bool)

(assert (=> d!433347 (= c!242697 (and (is-Cons!15592 l1!3136) (is-Nil!15592 (t!136803 l1!3136))))))

(assert (=> d!433347 (not (isEmpty!9741 l1!3136))))

(assert (=> d!433347 (= (last!336 l1!3136) lt!513423)))

(declare-fun b!1477512 () Bool)

(assert (=> b!1477512 (= e!944197 (h!20993 l1!3136))))

(declare-fun b!1477513 () Bool)

(assert (=> b!1477513 (= e!944197 (last!336 (t!136803 l1!3136)))))

(assert (= (and d!433347 c!242697) b!1477512))

(assert (= (and d!433347 (not c!242697)) b!1477513))

(declare-fun m!1723041 () Bool)

(assert (=> d!433347 m!1723041))

(assert (=> d!433347 m!1722941))

(declare-fun m!1723043 () Bool)

(assert (=> b!1477513 m!1723043))

(assert (=> b!1477419 d!433347))

(declare-fun d!433349 () Bool)

(declare-fun lt!513429 () Bool)

(declare-fun e!944203 () Bool)

(assert (=> d!433349 (= lt!513429 e!944203)))

(declare-fun res!667732 () Bool)

(assert (=> d!433349 (=> (not res!667732) (not e!944203))))

(declare-datatypes ((IArray!10627 0))(
  ( (IArray!10628 (innerList!5371 List!15658)) )
))
(declare-datatypes ((Conc!5311 0))(
  ( (Node!5311 (left!13155 Conc!5311) (right!13485 Conc!5311) (csize!10852 Int) (cheight!5522 Int)) (Leaf!7902 (xs!8066 IArray!10627) (csize!10853 Int)) (Empty!5311) )
))
(declare-datatypes ((BalanceConc!10562 0))(
  ( (BalanceConc!10563 (c!242711 Conc!5311)) )
))
(declare-fun list!6200 (BalanceConc!10562) List!15658)

(declare-datatypes ((tuple2!14310 0))(
  ( (tuple2!14311 (_1!8041 BalanceConc!10562) (_2!8041 BalanceConc!10558)) )
))
(declare-fun lex!1094 (LexerInterface!2434 List!15659 BalanceConc!10558) tuple2!14310)

(declare-fun print!1129 (LexerInterface!2434 BalanceConc!10562) BalanceConc!10558)

(declare-fun singletonSeq!1310 (Token!5218) BalanceConc!10562)

(assert (=> d!433349 (= res!667732 (= (list!6200 (_1!8041 (lex!1094 thiss!27374 rules!4290 (print!1129 thiss!27374 (singletonSeq!1310 lt!513410))))) (list!6200 (singletonSeq!1310 lt!513410))))))

(declare-fun e!944202 () Bool)

(assert (=> d!433349 (= lt!513429 e!944202)))

(declare-fun res!667733 () Bool)

(assert (=> d!433349 (=> (not res!667733) (not e!944202))))

(declare-fun lt!513428 () tuple2!14310)

(declare-fun size!12628 (BalanceConc!10562) Int)

(assert (=> d!433349 (= res!667733 (= (size!12628 (_1!8041 lt!513428)) 1))))

(assert (=> d!433349 (= lt!513428 (lex!1094 thiss!27374 rules!4290 (print!1129 thiss!27374 (singletonSeq!1310 lt!513410))))))

(assert (=> d!433349 (not (isEmpty!9742 rules!4290))))

(assert (=> d!433349 (= (rulesProduceIndividualToken!1291 thiss!27374 rules!4290 lt!513410) lt!513429)))

(declare-fun b!1477520 () Bool)

(declare-fun res!667731 () Bool)

(assert (=> b!1477520 (=> (not res!667731) (not e!944202))))

(declare-fun apply!4025 (BalanceConc!10562 Int) Token!5218)

(assert (=> b!1477520 (= res!667731 (= (apply!4025 (_1!8041 lt!513428) 0) lt!513410))))

(declare-fun b!1477521 () Bool)

(declare-fun isEmpty!9745 (BalanceConc!10558) Bool)

(assert (=> b!1477521 (= e!944202 (isEmpty!9745 (_2!8041 lt!513428)))))

(declare-fun b!1477522 () Bool)

(assert (=> b!1477522 (= e!944203 (isEmpty!9745 (_2!8041 (lex!1094 thiss!27374 rules!4290 (print!1129 thiss!27374 (singletonSeq!1310 lt!513410))))))))

(assert (= (and d!433349 res!667733) b!1477520))

(assert (= (and b!1477520 res!667731) b!1477521))

(assert (= (and d!433349 res!667732) b!1477522))

(assert (=> d!433349 m!1722977))

(declare-fun m!1723045 () Bool)

(assert (=> d!433349 m!1723045))

(declare-fun m!1723047 () Bool)

(assert (=> d!433349 m!1723047))

(assert (=> d!433349 m!1723047))

(declare-fun m!1723049 () Bool)

(assert (=> d!433349 m!1723049))

(assert (=> d!433349 m!1723049))

(declare-fun m!1723051 () Bool)

(assert (=> d!433349 m!1723051))

(assert (=> d!433349 m!1723047))

(declare-fun m!1723053 () Bool)

(assert (=> d!433349 m!1723053))

(declare-fun m!1723055 () Bool)

(assert (=> d!433349 m!1723055))

(declare-fun m!1723057 () Bool)

(assert (=> b!1477520 m!1723057))

(declare-fun m!1723059 () Bool)

(assert (=> b!1477521 m!1723059))

(assert (=> b!1477522 m!1723047))

(assert (=> b!1477522 m!1723047))

(assert (=> b!1477522 m!1723049))

(assert (=> b!1477522 m!1723049))

(assert (=> b!1477522 m!1723051))

(declare-fun m!1723061 () Bool)

(assert (=> b!1477522 m!1723061))

(assert (=> b!1477419 d!433349))

(declare-fun d!433351 () Bool)

(declare-fun lt!513432 () Bool)

(declare-fun content!2274 (List!15658) (Set Token!5218))

(assert (=> d!433351 (= lt!513432 (set.member (head!3066 l2!3105) (content!2274 l2!3105)))))

(declare-fun e!944208 () Bool)

(assert (=> d!433351 (= lt!513432 e!944208)))

(declare-fun res!667738 () Bool)

(assert (=> d!433351 (=> (not res!667738) (not e!944208))))

(assert (=> d!433351 (= res!667738 (is-Cons!15592 l2!3105))))

(assert (=> d!433351 (= (contains!2939 l2!3105 (head!3066 l2!3105)) lt!513432)))

(declare-fun b!1477527 () Bool)

(declare-fun e!944209 () Bool)

(assert (=> b!1477527 (= e!944208 e!944209)))

(declare-fun res!667739 () Bool)

(assert (=> b!1477527 (=> res!667739 e!944209)))

(assert (=> b!1477527 (= res!667739 (= (h!20993 l2!3105) (head!3066 l2!3105)))))

(declare-fun b!1477528 () Bool)

(assert (=> b!1477528 (= e!944209 (contains!2939 (t!136803 l2!3105) (head!3066 l2!3105)))))

(assert (= (and d!433351 res!667738) b!1477527))

(assert (= (and b!1477527 (not res!667739)) b!1477528))

(declare-fun m!1723063 () Bool)

(assert (=> d!433351 m!1723063))

(assert (=> d!433351 m!1722965))

(declare-fun m!1723065 () Bool)

(assert (=> d!433351 m!1723065))

(assert (=> b!1477528 m!1722965))

(declare-fun m!1723067 () Bool)

(assert (=> b!1477528 m!1723067))

(assert (=> b!1477419 d!433351))

(declare-fun b!1477564 () Bool)

(declare-fun e!944239 () Bool)

(assert (=> b!1477564 (= e!944239 true)))

(declare-fun b!1477563 () Bool)

(declare-fun e!944238 () Bool)

(assert (=> b!1477563 (= e!944238 e!944239)))

(declare-fun b!1477562 () Bool)

(declare-fun e!944237 () Bool)

(assert (=> b!1477562 (= e!944237 e!944238)))

(declare-fun d!433353 () Bool)

(assert (=> d!433353 e!944237))

(assert (= b!1477563 b!1477564))

(assert (= b!1477562 b!1477563))

(assert (= (and d!433353 (is-Cons!15593 rules!4290)) b!1477562))

(declare-fun lambda!63705 () Int)

(declare-fun order!9379 () Int)

(declare-fun order!9377 () Int)

(declare-fun dynLambda!7075 (Int Int) Int)

(declare-fun dynLambda!7076 (Int Int) Int)

(assert (=> b!1477564 (< (dynLambda!7075 order!9377 (toValue!4113 (transformation!2778 (h!20994 rules!4290)))) (dynLambda!7076 order!9379 lambda!63705))))

(declare-fun order!9381 () Int)

(declare-fun dynLambda!7077 (Int Int) Int)

(assert (=> b!1477564 (< (dynLambda!7077 order!9381 (toChars!3972 (transformation!2778 (h!20994 rules!4290)))) (dynLambda!7076 order!9379 lambda!63705))))

(assert (=> d!433353 true))

(declare-fun lt!513438 () Bool)

(declare-fun forall!3797 (List!15658 Int) Bool)

(assert (=> d!433353 (= lt!513438 (forall!3797 l1!3136 lambda!63705))))

(declare-fun e!944230 () Bool)

(assert (=> d!433353 (= lt!513438 e!944230)))

(declare-fun res!667751 () Bool)

(assert (=> d!433353 (=> res!667751 e!944230)))

(assert (=> d!433353 (= res!667751 (not (is-Cons!15592 l1!3136)))))

(assert (=> d!433353 (not (isEmpty!9742 rules!4290))))

(assert (=> d!433353 (= (rulesProduceEachTokenIndividuallyList!801 thiss!27374 rules!4290 l1!3136) lt!513438)))

(declare-fun b!1477552 () Bool)

(declare-fun e!944229 () Bool)

(assert (=> b!1477552 (= e!944230 e!944229)))

(declare-fun res!667750 () Bool)

(assert (=> b!1477552 (=> (not res!667750) (not e!944229))))

(assert (=> b!1477552 (= res!667750 (rulesProduceIndividualToken!1291 thiss!27374 rules!4290 (h!20993 l1!3136)))))

(declare-fun b!1477553 () Bool)

(assert (=> b!1477553 (= e!944229 (rulesProduceEachTokenIndividuallyList!801 thiss!27374 rules!4290 (t!136803 l1!3136)))))

(assert (= (and d!433353 (not res!667751)) b!1477552))

(assert (= (and b!1477552 res!667750) b!1477553))

(declare-fun m!1723075 () Bool)

(assert (=> d!433353 m!1723075))

(assert (=> d!433353 m!1722977))

(declare-fun m!1723077 () Bool)

(assert (=> b!1477552 m!1723077))

(declare-fun m!1723079 () Bool)

(assert (=> b!1477553 m!1723079))

(assert (=> b!1477429 d!433353))

(declare-fun d!433357 () Bool)

(assert (=> d!433357 (= (inv!20800 (tag!3042 (rule!4555 (h!20993 l2!3105)))) (= (mod (str.len (value!88821 (tag!3042 (rule!4555 (h!20993 l2!3105))))) 2) 0))))

(assert (=> b!1477418 d!433357))

(declare-fun d!433359 () Bool)

(declare-fun res!667754 () Bool)

(declare-fun e!944242 () Bool)

(assert (=> d!433359 (=> (not res!667754) (not e!944242))))

(declare-fun semiInverseModEq!1040 (Int Int) Bool)

(assert (=> d!433359 (= res!667754 (semiInverseModEq!1040 (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l2!3105)))) (toValue!4113 (transformation!2778 (rule!4555 (h!20993 l2!3105))))))))

(assert (=> d!433359 (= (inv!20803 (transformation!2778 (rule!4555 (h!20993 l2!3105)))) e!944242)))

(declare-fun b!1477569 () Bool)

(declare-fun equivClasses!999 (Int Int) Bool)

(assert (=> b!1477569 (= e!944242 (equivClasses!999 (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l2!3105)))) (toValue!4113 (transformation!2778 (rule!4555 (h!20993 l2!3105))))))))

(assert (= (and d!433359 res!667754) b!1477569))

(declare-fun m!1723081 () Bool)

(assert (=> d!433359 m!1723081))

(declare-fun m!1723083 () Bool)

(assert (=> b!1477569 m!1723083))

(assert (=> b!1477418 d!433359))

(declare-fun d!433361 () Bool)

(assert (=> d!433361 (= (inv!20800 (tag!3042 (rule!4555 (h!20993 l1!3136)))) (= (mod (str.len (value!88821 (tag!3042 (rule!4555 (h!20993 l1!3136))))) 2) 0))))

(assert (=> b!1477428 d!433361))

(declare-fun d!433363 () Bool)

(declare-fun res!667755 () Bool)

(declare-fun e!944243 () Bool)

(assert (=> d!433363 (=> (not res!667755) (not e!944243))))

(assert (=> d!433363 (= res!667755 (semiInverseModEq!1040 (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l1!3136)))) (toValue!4113 (transformation!2778 (rule!4555 (h!20993 l1!3136))))))))

(assert (=> d!433363 (= (inv!20803 (transformation!2778 (rule!4555 (h!20993 l1!3136)))) e!944243)))

(declare-fun b!1477570 () Bool)

(assert (=> b!1477570 (= e!944243 (equivClasses!999 (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l1!3136)))) (toValue!4113 (transformation!2778 (rule!4555 (h!20993 l1!3136))))))))

(assert (= (and d!433363 res!667755) b!1477570))

(declare-fun m!1723085 () Bool)

(assert (=> d!433363 m!1723085))

(declare-fun m!1723087 () Bool)

(assert (=> b!1477570 m!1723087))

(assert (=> b!1477428 d!433363))

(declare-fun d!433365 () Bool)

(assert (=> d!433365 (= (inv!20800 (tag!3042 (h!20994 rules!4290))) (= (mod (str.len (value!88821 (tag!3042 (h!20994 rules!4290)))) 2) 0))))

(assert (=> b!1477421 d!433365))

(declare-fun d!433367 () Bool)

(declare-fun res!667756 () Bool)

(declare-fun e!944244 () Bool)

(assert (=> d!433367 (=> (not res!667756) (not e!944244))))

(assert (=> d!433367 (= res!667756 (semiInverseModEq!1040 (toChars!3972 (transformation!2778 (h!20994 rules!4290))) (toValue!4113 (transformation!2778 (h!20994 rules!4290)))))))

(assert (=> d!433367 (= (inv!20803 (transformation!2778 (h!20994 rules!4290))) e!944244)))

(declare-fun b!1477571 () Bool)

(assert (=> b!1477571 (= e!944244 (equivClasses!999 (toChars!3972 (transformation!2778 (h!20994 rules!4290))) (toValue!4113 (transformation!2778 (h!20994 rules!4290)))))))

(assert (= (and d!433367 res!667756) b!1477571))

(declare-fun m!1723089 () Bool)

(assert (=> d!433367 m!1723089))

(declare-fun m!1723091 () Bool)

(assert (=> b!1477571 m!1723091))

(assert (=> b!1477421 d!433367))

(declare-fun b!1477582 () Bool)

(declare-fun e!944252 () Bool)

(declare-fun inv!17 (TokenValue!2868) Bool)

(assert (=> b!1477582 (= e!944252 (inv!17 (value!88822 (h!20993 l2!3105))))))

(declare-fun d!433369 () Bool)

(declare-fun c!242702 () Bool)

(assert (=> d!433369 (= c!242702 (is-IntegerValue!8604 (value!88822 (h!20993 l2!3105))))))

(declare-fun e!944253 () Bool)

(assert (=> d!433369 (= (inv!21 (value!88822 (h!20993 l2!3105))) e!944253)))

(declare-fun b!1477583 () Bool)

(declare-fun e!944251 () Bool)

(declare-fun inv!15 (TokenValue!2868) Bool)

(assert (=> b!1477583 (= e!944251 (inv!15 (value!88822 (h!20993 l2!3105))))))

(declare-fun b!1477584 () Bool)

(declare-fun res!667759 () Bool)

(assert (=> b!1477584 (=> res!667759 e!944251)))

(assert (=> b!1477584 (= res!667759 (not (is-IntegerValue!8606 (value!88822 (h!20993 l2!3105)))))))

(assert (=> b!1477584 (= e!944252 e!944251)))

(declare-fun b!1477585 () Bool)

(assert (=> b!1477585 (= e!944253 e!944252)))

(declare-fun c!242703 () Bool)

(assert (=> b!1477585 (= c!242703 (is-IntegerValue!8605 (value!88822 (h!20993 l2!3105))))))

(declare-fun b!1477586 () Bool)

(declare-fun inv!16 (TokenValue!2868) Bool)

(assert (=> b!1477586 (= e!944253 (inv!16 (value!88822 (h!20993 l2!3105))))))

(assert (= (and d!433369 c!242702) b!1477586))

(assert (= (and d!433369 (not c!242702)) b!1477585))

(assert (= (and b!1477585 c!242703) b!1477582))

(assert (= (and b!1477585 (not c!242703)) b!1477584))

(assert (= (and b!1477584 (not res!667759)) b!1477583))

(declare-fun m!1723093 () Bool)

(assert (=> b!1477582 m!1723093))

(declare-fun m!1723095 () Bool)

(assert (=> b!1477583 m!1723095))

(declare-fun m!1723097 () Bool)

(assert (=> b!1477586 m!1723097))

(assert (=> b!1477410 d!433369))

(declare-fun bs!345736 () Bool)

(declare-fun d!433371 () Bool)

(assert (= bs!345736 (and d!433371 d!433353)))

(declare-fun lambda!63706 () Int)

(assert (=> bs!345736 (= lambda!63706 lambda!63705)))

(declare-fun b!1477591 () Bool)

(declare-fun e!944258 () Bool)

(assert (=> b!1477591 (= e!944258 true)))

(declare-fun b!1477590 () Bool)

(declare-fun e!944257 () Bool)

(assert (=> b!1477590 (= e!944257 e!944258)))

(declare-fun b!1477589 () Bool)

(declare-fun e!944256 () Bool)

(assert (=> b!1477589 (= e!944256 e!944257)))

(assert (=> d!433371 e!944256))

(assert (= b!1477590 b!1477591))

(assert (= b!1477589 b!1477590))

(assert (= (and d!433371 (is-Cons!15593 rules!4290)) b!1477589))

(assert (=> b!1477591 (< (dynLambda!7075 order!9377 (toValue!4113 (transformation!2778 (h!20994 rules!4290)))) (dynLambda!7076 order!9379 lambda!63706))))

(assert (=> b!1477591 (< (dynLambda!7077 order!9381 (toChars!3972 (transformation!2778 (h!20994 rules!4290)))) (dynLambda!7076 order!9379 lambda!63706))))

(assert (=> d!433371 true))

(declare-fun lt!513439 () Bool)

(assert (=> d!433371 (= lt!513439 (forall!3797 l2!3105 lambda!63706))))

(declare-fun e!944255 () Bool)

(assert (=> d!433371 (= lt!513439 e!944255)))

(declare-fun res!667761 () Bool)

(assert (=> d!433371 (=> res!667761 e!944255)))

(assert (=> d!433371 (= res!667761 (not (is-Cons!15592 l2!3105)))))

(assert (=> d!433371 (not (isEmpty!9742 rules!4290))))

(assert (=> d!433371 (= (rulesProduceEachTokenIndividuallyList!801 thiss!27374 rules!4290 l2!3105) lt!513439)))

(declare-fun b!1477587 () Bool)

(declare-fun e!944254 () Bool)

(assert (=> b!1477587 (= e!944255 e!944254)))

(declare-fun res!667760 () Bool)

(assert (=> b!1477587 (=> (not res!667760) (not e!944254))))

(assert (=> b!1477587 (= res!667760 (rulesProduceIndividualToken!1291 thiss!27374 rules!4290 (h!20993 l2!3105)))))

(declare-fun b!1477588 () Bool)

(assert (=> b!1477588 (= e!944254 (rulesProduceEachTokenIndividuallyList!801 thiss!27374 rules!4290 (t!136803 l2!3105)))))

(assert (= (and d!433371 (not res!667761)) b!1477587))

(assert (= (and b!1477587 res!667760) b!1477588))

(declare-fun m!1723099 () Bool)

(assert (=> d!433371 m!1723099))

(assert (=> d!433371 m!1722977))

(declare-fun m!1723101 () Bool)

(assert (=> b!1477587 m!1723101))

(declare-fun m!1723103 () Bool)

(assert (=> b!1477588 m!1723103))

(assert (=> b!1477420 d!433371))

(declare-fun d!433373 () Bool)

(declare-fun res!667785 () Bool)

(declare-fun e!944290 () Bool)

(assert (=> d!433373 (=> res!667785 e!944290)))

(assert (=> d!433373 (= res!667785 (or (not (is-Cons!15592 l1!3136)) (not (is-Cons!15592 (t!136803 l1!3136)))))))

(assert (=> d!433373 (= (tokensListTwoByTwoPredicateSeparableList!294 thiss!27374 l1!3136 rules!4290) e!944290)))

(declare-fun b!1477634 () Bool)

(declare-fun e!944291 () Bool)

(assert (=> b!1477634 (= e!944290 e!944291)))

(declare-fun res!667786 () Bool)

(assert (=> b!1477634 (=> (not res!667786) (not e!944291))))

(declare-fun separableTokensPredicate!573 (LexerInterface!2434 Token!5218 Token!5218 List!15659) Bool)

(assert (=> b!1477634 (= res!667786 (separableTokensPredicate!573 thiss!27374 (h!20993 l1!3136) (h!20993 (t!136803 l1!3136)) rules!4290))))

(declare-fun lt!513490 () Unit!25358)

(declare-fun Unit!25363 () Unit!25358)

(assert (=> b!1477634 (= lt!513490 Unit!25363)))

(declare-fun size!12629 (BalanceConc!10558) Int)

(declare-fun charsOf!1589 (Token!5218) BalanceConc!10558)

(assert (=> b!1477634 (> (size!12629 (charsOf!1589 (h!20993 (t!136803 l1!3136)))) 0)))

(declare-fun lt!513487 () Unit!25358)

(declare-fun Unit!25364 () Unit!25358)

(assert (=> b!1477634 (= lt!513487 Unit!25364)))

(assert (=> b!1477634 (rulesProduceIndividualToken!1291 thiss!27374 rules!4290 (h!20993 (t!136803 l1!3136)))))

(declare-fun lt!513486 () Unit!25358)

(declare-fun Unit!25365 () Unit!25358)

(assert (=> b!1477634 (= lt!513486 Unit!25365)))

(assert (=> b!1477634 (rulesProduceIndividualToken!1291 thiss!27374 rules!4290 (h!20993 l1!3136))))

(declare-fun lt!513488 () Unit!25358)

(declare-fun lt!513489 () Unit!25358)

(assert (=> b!1477634 (= lt!513488 lt!513489)))

(assert (=> b!1477634 (rulesProduceIndividualToken!1291 thiss!27374 rules!4290 (h!20993 (t!136803 l1!3136)))))

(assert (=> b!1477634 (= lt!513489 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!472 thiss!27374 rules!4290 l1!3136 (h!20993 (t!136803 l1!3136))))))

(declare-fun lt!513491 () Unit!25358)

(declare-fun lt!513492 () Unit!25358)

(assert (=> b!1477634 (= lt!513491 lt!513492)))

(assert (=> b!1477634 (rulesProduceIndividualToken!1291 thiss!27374 rules!4290 (h!20993 l1!3136))))

(assert (=> b!1477634 (= lt!513492 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!472 thiss!27374 rules!4290 l1!3136 (h!20993 l1!3136)))))

(declare-fun b!1477635 () Bool)

(assert (=> b!1477635 (= e!944291 (tokensListTwoByTwoPredicateSeparableList!294 thiss!27374 (Cons!15592 (h!20993 (t!136803 l1!3136)) (t!136803 (t!136803 l1!3136))) rules!4290))))

(assert (= (and d!433373 (not res!667785)) b!1477634))

(assert (= (and b!1477634 res!667786) b!1477635))

(declare-fun m!1723173 () Bool)

(assert (=> b!1477634 m!1723173))

(assert (=> b!1477634 m!1723077))

(declare-fun m!1723175 () Bool)

(assert (=> b!1477634 m!1723175))

(declare-fun m!1723177 () Bool)

(assert (=> b!1477634 m!1723177))

(declare-fun m!1723179 () Bool)

(assert (=> b!1477634 m!1723179))

(assert (=> b!1477634 m!1723175))

(declare-fun m!1723181 () Bool)

(assert (=> b!1477634 m!1723181))

(declare-fun m!1723183 () Bool)

(assert (=> b!1477634 m!1723183))

(declare-fun m!1723185 () Bool)

(assert (=> b!1477635 m!1723185))

(assert (=> b!1477425 d!433373))

(declare-fun d!433393 () Bool)

(declare-fun res!667787 () Bool)

(declare-fun e!944292 () Bool)

(assert (=> d!433393 (=> res!667787 e!944292)))

(assert (=> d!433393 (= res!667787 (or (not (is-Cons!15592 l2!3105)) (not (is-Cons!15592 (t!136803 l2!3105)))))))

(assert (=> d!433393 (= (tokensListTwoByTwoPredicateSeparableList!294 thiss!27374 l2!3105 rules!4290) e!944292)))

(declare-fun b!1477636 () Bool)

(declare-fun e!944293 () Bool)

(assert (=> b!1477636 (= e!944292 e!944293)))

(declare-fun res!667788 () Bool)

(assert (=> b!1477636 (=> (not res!667788) (not e!944293))))

(assert (=> b!1477636 (= res!667788 (separableTokensPredicate!573 thiss!27374 (h!20993 l2!3105) (h!20993 (t!136803 l2!3105)) rules!4290))))

(declare-fun lt!513497 () Unit!25358)

(declare-fun Unit!25366 () Unit!25358)

(assert (=> b!1477636 (= lt!513497 Unit!25366)))

(assert (=> b!1477636 (> (size!12629 (charsOf!1589 (h!20993 (t!136803 l2!3105)))) 0)))

(declare-fun lt!513494 () Unit!25358)

(declare-fun Unit!25367 () Unit!25358)

(assert (=> b!1477636 (= lt!513494 Unit!25367)))

(assert (=> b!1477636 (rulesProduceIndividualToken!1291 thiss!27374 rules!4290 (h!20993 (t!136803 l2!3105)))))

(declare-fun lt!513493 () Unit!25358)

(declare-fun Unit!25368 () Unit!25358)

(assert (=> b!1477636 (= lt!513493 Unit!25368)))

(assert (=> b!1477636 (rulesProduceIndividualToken!1291 thiss!27374 rules!4290 (h!20993 l2!3105))))

(declare-fun lt!513495 () Unit!25358)

(declare-fun lt!513496 () Unit!25358)

(assert (=> b!1477636 (= lt!513495 lt!513496)))

(assert (=> b!1477636 (rulesProduceIndividualToken!1291 thiss!27374 rules!4290 (h!20993 (t!136803 l2!3105)))))

(assert (=> b!1477636 (= lt!513496 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!472 thiss!27374 rules!4290 l2!3105 (h!20993 (t!136803 l2!3105))))))

(declare-fun lt!513498 () Unit!25358)

(declare-fun lt!513499 () Unit!25358)

(assert (=> b!1477636 (= lt!513498 lt!513499)))

(assert (=> b!1477636 (rulesProduceIndividualToken!1291 thiss!27374 rules!4290 (h!20993 l2!3105))))

(assert (=> b!1477636 (= lt!513499 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!472 thiss!27374 rules!4290 l2!3105 (h!20993 l2!3105)))))

(declare-fun b!1477637 () Bool)

(assert (=> b!1477637 (= e!944293 (tokensListTwoByTwoPredicateSeparableList!294 thiss!27374 (Cons!15592 (h!20993 (t!136803 l2!3105)) (t!136803 (t!136803 l2!3105))) rules!4290))))

(assert (= (and d!433393 (not res!667787)) b!1477636))

(assert (= (and b!1477636 res!667788) b!1477637))

(declare-fun m!1723187 () Bool)

(assert (=> b!1477636 m!1723187))

(assert (=> b!1477636 m!1723101))

(declare-fun m!1723189 () Bool)

(assert (=> b!1477636 m!1723189))

(declare-fun m!1723191 () Bool)

(assert (=> b!1477636 m!1723191))

(declare-fun m!1723193 () Bool)

(assert (=> b!1477636 m!1723193))

(assert (=> b!1477636 m!1723189))

(declare-fun m!1723195 () Bool)

(assert (=> b!1477636 m!1723195))

(declare-fun m!1723197 () Bool)

(assert (=> b!1477636 m!1723197))

(declare-fun m!1723199 () Bool)

(assert (=> b!1477637 m!1723199))

(assert (=> b!1477414 d!433393))

(declare-fun d!433395 () Bool)

(declare-fun res!667793 () Bool)

(declare-fun e!944296 () Bool)

(assert (=> d!433395 (=> (not res!667793) (not e!944296))))

(declare-fun isEmpty!9746 (List!15657) Bool)

(assert (=> d!433395 (= res!667793 (not (isEmpty!9746 (originalCharacters!3640 (h!20993 l1!3136)))))))

(assert (=> d!433395 (= (inv!20804 (h!20993 l1!3136)) e!944296)))

(declare-fun b!1477642 () Bool)

(declare-fun res!667794 () Bool)

(assert (=> b!1477642 (=> (not res!667794) (not e!944296))))

(declare-fun list!6201 (BalanceConc!10558) List!15657)

(declare-fun dynLambda!7078 (Int TokenValue!2868) BalanceConc!10558)

(assert (=> b!1477642 (= res!667794 (= (originalCharacters!3640 (h!20993 l1!3136)) (list!6201 (dynLambda!7078 (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l1!3136)))) (value!88822 (h!20993 l1!3136))))))))

(declare-fun b!1477643 () Bool)

(declare-fun size!12630 (List!15657) Int)

(assert (=> b!1477643 (= e!944296 (= (size!12626 (h!20993 l1!3136)) (size!12630 (originalCharacters!3640 (h!20993 l1!3136)))))))

(assert (= (and d!433395 res!667793) b!1477642))

(assert (= (and b!1477642 res!667794) b!1477643))

(declare-fun b_lambda!46247 () Bool)

(assert (=> (not b_lambda!46247) (not b!1477642)))

(declare-fun tb!84233 () Bool)

(declare-fun t!136828 () Bool)

(assert (=> (and b!1477422 (= (toChars!3972 (transformation!2778 (h!20994 rules!4290))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l1!3136))))) t!136828) tb!84233))

(declare-fun b!1477648 () Bool)

(declare-fun e!944299 () Bool)

(declare-fun tp!418383 () Bool)

(declare-fun inv!20807 (Conc!5309) Bool)

(assert (=> b!1477648 (= e!944299 (and (inv!20807 (c!242686 (dynLambda!7078 (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l1!3136)))) (value!88822 (h!20993 l1!3136))))) tp!418383))))

(declare-fun result!101228 () Bool)

(declare-fun inv!20808 (BalanceConc!10558) Bool)

(assert (=> tb!84233 (= result!101228 (and (inv!20808 (dynLambda!7078 (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l1!3136)))) (value!88822 (h!20993 l1!3136)))) e!944299))))

(assert (= tb!84233 b!1477648))

(declare-fun m!1723201 () Bool)

(assert (=> b!1477648 m!1723201))

(declare-fun m!1723203 () Bool)

(assert (=> tb!84233 m!1723203))

(assert (=> b!1477642 t!136828))

(declare-fun b_and!102197 () Bool)

(assert (= b_and!102163 (and (=> t!136828 result!101228) b_and!102197)))

(declare-fun tb!84235 () Bool)

(declare-fun t!136830 () Bool)

(assert (=> (and b!1477413 (= (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l2!3105)))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l1!3136))))) t!136830) tb!84235))

(declare-fun result!101232 () Bool)

(assert (= result!101232 result!101228))

(assert (=> b!1477642 t!136830))

(declare-fun b_and!102199 () Bool)

(assert (= b_and!102167 (and (=> t!136830 result!101232) b_and!102199)))

(declare-fun t!136832 () Bool)

(declare-fun tb!84237 () Bool)

(assert (=> (and b!1477411 (= (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l1!3136)))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l1!3136))))) t!136832) tb!84237))

(declare-fun result!101234 () Bool)

(assert (= result!101234 result!101228))

(assert (=> b!1477642 t!136832))

(declare-fun b_and!102201 () Bool)

(assert (= b_and!102171 (and (=> t!136832 result!101234) b_and!102201)))

(declare-fun m!1723205 () Bool)

(assert (=> d!433395 m!1723205))

(declare-fun m!1723207 () Bool)

(assert (=> b!1477642 m!1723207))

(assert (=> b!1477642 m!1723207))

(declare-fun m!1723209 () Bool)

(assert (=> b!1477642 m!1723209))

(declare-fun m!1723211 () Bool)

(assert (=> b!1477643 m!1723211))

(assert (=> b!1477424 d!433395))

(declare-fun b!1477649 () Bool)

(declare-fun e!944301 () Bool)

(assert (=> b!1477649 (= e!944301 (inv!17 (value!88822 (h!20993 l1!3136))))))

(declare-fun d!433397 () Bool)

(declare-fun c!242709 () Bool)

(assert (=> d!433397 (= c!242709 (is-IntegerValue!8604 (value!88822 (h!20993 l1!3136))))))

(declare-fun e!944302 () Bool)

(assert (=> d!433397 (= (inv!21 (value!88822 (h!20993 l1!3136))) e!944302)))

(declare-fun b!1477650 () Bool)

(declare-fun e!944300 () Bool)

(assert (=> b!1477650 (= e!944300 (inv!15 (value!88822 (h!20993 l1!3136))))))

(declare-fun b!1477651 () Bool)

(declare-fun res!667795 () Bool)

(assert (=> b!1477651 (=> res!667795 e!944300)))

(assert (=> b!1477651 (= res!667795 (not (is-IntegerValue!8606 (value!88822 (h!20993 l1!3136)))))))

(assert (=> b!1477651 (= e!944301 e!944300)))

(declare-fun b!1477652 () Bool)

(assert (=> b!1477652 (= e!944302 e!944301)))

(declare-fun c!242710 () Bool)

(assert (=> b!1477652 (= c!242710 (is-IntegerValue!8605 (value!88822 (h!20993 l1!3136))))))

(declare-fun b!1477653 () Bool)

(assert (=> b!1477653 (= e!944302 (inv!16 (value!88822 (h!20993 l1!3136))))))

(assert (= (and d!433397 c!242709) b!1477653))

(assert (= (and d!433397 (not c!242709)) b!1477652))

(assert (= (and b!1477652 c!242710) b!1477649))

(assert (= (and b!1477652 (not c!242710)) b!1477651))

(assert (= (and b!1477651 (not res!667795)) b!1477650))

(declare-fun m!1723213 () Bool)

(assert (=> b!1477649 m!1723213))

(declare-fun m!1723215 () Bool)

(assert (=> b!1477650 m!1723215))

(declare-fun m!1723217 () Bool)

(assert (=> b!1477653 m!1723217))

(assert (=> b!1477423 d!433397))

(declare-fun d!433399 () Bool)

(assert (=> d!433399 (= (isEmpty!9741 l1!3136) (is-Nil!15592 l1!3136))))

(assert (=> b!1477412 d!433399))

(declare-fun d!433401 () Bool)

(declare-fun res!667796 () Bool)

(declare-fun e!944303 () Bool)

(assert (=> d!433401 (=> (not res!667796) (not e!944303))))

(assert (=> d!433401 (= res!667796 (not (isEmpty!9746 (originalCharacters!3640 (h!20993 l2!3105)))))))

(assert (=> d!433401 (= (inv!20804 (h!20993 l2!3105)) e!944303)))

(declare-fun b!1477654 () Bool)

(declare-fun res!667797 () Bool)

(assert (=> b!1477654 (=> (not res!667797) (not e!944303))))

(assert (=> b!1477654 (= res!667797 (= (originalCharacters!3640 (h!20993 l2!3105)) (list!6201 (dynLambda!7078 (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l2!3105)))) (value!88822 (h!20993 l2!3105))))))))

(declare-fun b!1477655 () Bool)

(assert (=> b!1477655 (= e!944303 (= (size!12626 (h!20993 l2!3105)) (size!12630 (originalCharacters!3640 (h!20993 l2!3105)))))))

(assert (= (and d!433401 res!667796) b!1477654))

(assert (= (and b!1477654 res!667797) b!1477655))

(declare-fun b_lambda!46249 () Bool)

(assert (=> (not b_lambda!46249) (not b!1477654)))

(declare-fun tb!84239 () Bool)

(declare-fun t!136834 () Bool)

(assert (=> (and b!1477422 (= (toChars!3972 (transformation!2778 (h!20994 rules!4290))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l2!3105))))) t!136834) tb!84239))

(declare-fun b!1477656 () Bool)

(declare-fun e!944304 () Bool)

(declare-fun tp!418384 () Bool)

(assert (=> b!1477656 (= e!944304 (and (inv!20807 (c!242686 (dynLambda!7078 (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l2!3105)))) (value!88822 (h!20993 l2!3105))))) tp!418384))))

(declare-fun result!101236 () Bool)

(assert (=> tb!84239 (= result!101236 (and (inv!20808 (dynLambda!7078 (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l2!3105)))) (value!88822 (h!20993 l2!3105)))) e!944304))))

(assert (= tb!84239 b!1477656))

(declare-fun m!1723219 () Bool)

(assert (=> b!1477656 m!1723219))

(declare-fun m!1723221 () Bool)

(assert (=> tb!84239 m!1723221))

(assert (=> b!1477654 t!136834))

(declare-fun b_and!102203 () Bool)

(assert (= b_and!102197 (and (=> t!136834 result!101236) b_and!102203)))

(declare-fun t!136836 () Bool)

(declare-fun tb!84241 () Bool)

(assert (=> (and b!1477413 (= (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l2!3105)))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l2!3105))))) t!136836) tb!84241))

(declare-fun result!101238 () Bool)

(assert (= result!101238 result!101236))

(assert (=> b!1477654 t!136836))

(declare-fun b_and!102205 () Bool)

(assert (= b_and!102199 (and (=> t!136836 result!101238) b_and!102205)))

(declare-fun t!136838 () Bool)

(declare-fun tb!84243 () Bool)

(assert (=> (and b!1477411 (= (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l1!3136)))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l2!3105))))) t!136838) tb!84243))

(declare-fun result!101240 () Bool)

(assert (= result!101240 result!101236))

(assert (=> b!1477654 t!136838))

(declare-fun b_and!102207 () Bool)

(assert (= b_and!102201 (and (=> t!136838 result!101240) b_and!102207)))

(declare-fun m!1723223 () Bool)

(assert (=> d!433401 m!1723223))

(declare-fun m!1723225 () Bool)

(assert (=> b!1477654 m!1723225))

(assert (=> b!1477654 m!1723225))

(declare-fun m!1723227 () Bool)

(assert (=> b!1477654 m!1723227))

(declare-fun m!1723229 () Bool)

(assert (=> b!1477655 m!1723229))

(assert (=> b!1477427 d!433401))

(declare-fun d!433403 () Bool)

(assert (=> d!433403 (= (isEmpty!9742 rules!4290) (is-Nil!15593 rules!4290))))

(assert (=> b!1477416 d!433403))

(declare-fun d!433405 () Bool)

(declare-fun res!667800 () Bool)

(declare-fun e!944307 () Bool)

(assert (=> d!433405 (=> (not res!667800) (not e!944307))))

(declare-fun rulesValid!1013 (LexerInterface!2434 List!15659) Bool)

(assert (=> d!433405 (= res!667800 (rulesValid!1013 thiss!27374 rules!4290))))

(assert (=> d!433405 (= (rulesInvariant!2223 thiss!27374 rules!4290) e!944307)))

(declare-fun b!1477659 () Bool)

(declare-datatypes ((List!15664 0))(
  ( (Nil!15598) (Cons!15598 (h!20999 String!18598) (t!136852 List!15664)) )
))
(declare-fun noDuplicateTag!1013 (LexerInterface!2434 List!15659 List!15664) Bool)

(assert (=> b!1477659 (= e!944307 (noDuplicateTag!1013 thiss!27374 rules!4290 Nil!15598))))

(assert (= (and d!433405 res!667800) b!1477659))

(declare-fun m!1723231 () Bool)

(assert (=> d!433405 m!1723231))

(declare-fun m!1723233 () Bool)

(assert (=> b!1477659 m!1723233))

(assert (=> b!1477426 d!433405))

(declare-fun d!433407 () Bool)

(assert (=> d!433407 (= (isEmpty!9741 l2!3105) (is-Nil!15592 l2!3105))))

(assert (=> b!1477415 d!433407))

(declare-fun b!1477672 () Bool)

(declare-fun e!944310 () Bool)

(declare-fun tp!418399 () Bool)

(assert (=> b!1477672 (= e!944310 tp!418399)))

(declare-fun b!1477673 () Bool)

(declare-fun tp!418396 () Bool)

(declare-fun tp!418397 () Bool)

(assert (=> b!1477673 (= e!944310 (and tp!418396 tp!418397))))

(assert (=> b!1477418 (= tp!418328 e!944310)))

(declare-fun b!1477671 () Bool)

(declare-fun tp!418398 () Bool)

(declare-fun tp!418395 () Bool)

(assert (=> b!1477671 (= e!944310 (and tp!418398 tp!418395))))

(declare-fun b!1477670 () Bool)

(declare-fun tp_is_empty!6949 () Bool)

(assert (=> b!1477670 (= e!944310 tp_is_empty!6949)))

(assert (= (and b!1477418 (is-ElementMatch!4092 (regex!2778 (rule!4555 (h!20993 l2!3105))))) b!1477670))

(assert (= (and b!1477418 (is-Concat!6961 (regex!2778 (rule!4555 (h!20993 l2!3105))))) b!1477671))

(assert (= (and b!1477418 (is-Star!4092 (regex!2778 (rule!4555 (h!20993 l2!3105))))) b!1477672))

(assert (= (and b!1477418 (is-Union!4092 (regex!2778 (rule!4555 (h!20993 l2!3105))))) b!1477673))

(declare-fun b!1477676 () Bool)

(declare-fun e!944311 () Bool)

(declare-fun tp!418404 () Bool)

(assert (=> b!1477676 (= e!944311 tp!418404)))

(declare-fun b!1477677 () Bool)

(declare-fun tp!418401 () Bool)

(declare-fun tp!418402 () Bool)

(assert (=> b!1477677 (= e!944311 (and tp!418401 tp!418402))))

(assert (=> b!1477428 (= tp!418321 e!944311)))

(declare-fun b!1477675 () Bool)

(declare-fun tp!418403 () Bool)

(declare-fun tp!418400 () Bool)

(assert (=> b!1477675 (= e!944311 (and tp!418403 tp!418400))))

(declare-fun b!1477674 () Bool)

(assert (=> b!1477674 (= e!944311 tp_is_empty!6949)))

(assert (= (and b!1477428 (is-ElementMatch!4092 (regex!2778 (rule!4555 (h!20993 l1!3136))))) b!1477674))

(assert (= (and b!1477428 (is-Concat!6961 (regex!2778 (rule!4555 (h!20993 l1!3136))))) b!1477675))

(assert (= (and b!1477428 (is-Star!4092 (regex!2778 (rule!4555 (h!20993 l1!3136))))) b!1477676))

(assert (= (and b!1477428 (is-Union!4092 (regex!2778 (rule!4555 (h!20993 l1!3136))))) b!1477677))

(declare-fun b!1477680 () Bool)

(declare-fun e!944312 () Bool)

(declare-fun tp!418409 () Bool)

(assert (=> b!1477680 (= e!944312 tp!418409)))

(declare-fun b!1477681 () Bool)

(declare-fun tp!418406 () Bool)

(declare-fun tp!418407 () Bool)

(assert (=> b!1477681 (= e!944312 (and tp!418406 tp!418407))))

(assert (=> b!1477421 (= tp!418326 e!944312)))

(declare-fun b!1477679 () Bool)

(declare-fun tp!418408 () Bool)

(declare-fun tp!418405 () Bool)

(assert (=> b!1477679 (= e!944312 (and tp!418408 tp!418405))))

(declare-fun b!1477678 () Bool)

(assert (=> b!1477678 (= e!944312 tp_is_empty!6949)))

(assert (= (and b!1477421 (is-ElementMatch!4092 (regex!2778 (h!20994 rules!4290)))) b!1477678))

(assert (= (and b!1477421 (is-Concat!6961 (regex!2778 (h!20994 rules!4290)))) b!1477679))

(assert (= (and b!1477421 (is-Star!4092 (regex!2778 (h!20994 rules!4290)))) b!1477680))

(assert (= (and b!1477421 (is-Union!4092 (regex!2778 (h!20994 rules!4290)))) b!1477681))

(declare-fun b!1477686 () Bool)

(declare-fun e!944315 () Bool)

(declare-fun tp!418412 () Bool)

(assert (=> b!1477686 (= e!944315 (and tp_is_empty!6949 tp!418412))))

(assert (=> b!1477410 (= tp!418323 e!944315)))

(assert (= (and b!1477410 (is-Cons!15591 (originalCharacters!3640 (h!20993 l2!3105)))) b!1477686))

(declare-fun b!1477700 () Bool)

(declare-fun b_free!37875 () Bool)

(declare-fun b_next!38579 () Bool)

(assert (=> b!1477700 (= b_free!37875 (not b_next!38579))))

(declare-fun tp!418426 () Bool)

(declare-fun b_and!102209 () Bool)

(assert (=> b!1477700 (= tp!418426 b_and!102209)))

(declare-fun b_free!37877 () Bool)

(declare-fun b_next!38581 () Bool)

(assert (=> b!1477700 (= b_free!37877 (not b_next!38581))))

(declare-fun t!136840 () Bool)

(declare-fun tb!84245 () Bool)

(assert (=> (and b!1477700 (= (toChars!3972 (transformation!2778 (rule!4555 (h!20993 (t!136803 l1!3136))))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l1!3136))))) t!136840) tb!84245))

(declare-fun result!101248 () Bool)

(assert (= result!101248 result!101228))

(assert (=> b!1477642 t!136840))

(declare-fun t!136842 () Bool)

(declare-fun tb!84247 () Bool)

(assert (=> (and b!1477700 (= (toChars!3972 (transformation!2778 (rule!4555 (h!20993 (t!136803 l1!3136))))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l2!3105))))) t!136842) tb!84247))

(declare-fun result!101250 () Bool)

(assert (= result!101250 result!101236))

(assert (=> b!1477654 t!136842))

(declare-fun b_and!102211 () Bool)

(declare-fun tp!418423 () Bool)

(assert (=> b!1477700 (= tp!418423 (and (=> t!136840 result!101248) (=> t!136842 result!101250) b_and!102211))))

(declare-fun e!944331 () Bool)

(declare-fun tp!418424 () Bool)

(declare-fun e!944330 () Bool)

(declare-fun b!1477697 () Bool)

(assert (=> b!1477697 (= e!944330 (and (inv!20804 (h!20993 (t!136803 l1!3136))) e!944331 tp!418424))))

(declare-fun e!944328 () Bool)

(assert (=> b!1477700 (= e!944328 (and tp!418426 tp!418423))))

(assert (=> b!1477424 (= tp!418329 e!944330)))

(declare-fun tp!418427 () Bool)

(declare-fun e!944332 () Bool)

(declare-fun b!1477698 () Bool)

(assert (=> b!1477698 (= e!944331 (and (inv!21 (value!88822 (h!20993 (t!136803 l1!3136)))) e!944332 tp!418427))))

(declare-fun tp!418425 () Bool)

(declare-fun b!1477699 () Bool)

(assert (=> b!1477699 (= e!944332 (and tp!418425 (inv!20800 (tag!3042 (rule!4555 (h!20993 (t!136803 l1!3136))))) (inv!20803 (transformation!2778 (rule!4555 (h!20993 (t!136803 l1!3136))))) e!944328))))

(assert (= b!1477699 b!1477700))

(assert (= b!1477698 b!1477699))

(assert (= b!1477697 b!1477698))

(assert (= (and b!1477424 (is-Cons!15592 (t!136803 l1!3136))) b!1477697))

(declare-fun m!1723235 () Bool)

(assert (=> b!1477697 m!1723235))

(declare-fun m!1723237 () Bool)

(assert (=> b!1477698 m!1723237))

(declare-fun m!1723239 () Bool)

(assert (=> b!1477699 m!1723239))

(declare-fun m!1723241 () Bool)

(assert (=> b!1477699 m!1723241))

(declare-fun b!1477701 () Bool)

(declare-fun e!944334 () Bool)

(declare-fun tp!418428 () Bool)

(assert (=> b!1477701 (= e!944334 (and tp_is_empty!6949 tp!418428))))

(assert (=> b!1477423 (= tp!418324 e!944334)))

(assert (= (and b!1477423 (is-Cons!15591 (originalCharacters!3640 (h!20993 l1!3136)))) b!1477701))

(declare-fun b!1477712 () Bool)

(declare-fun b_free!37879 () Bool)

(declare-fun b_next!38583 () Bool)

(assert (=> b!1477712 (= b_free!37879 (not b_next!38583))))

(declare-fun tp!418439 () Bool)

(declare-fun b_and!102213 () Bool)

(assert (=> b!1477712 (= tp!418439 b_and!102213)))

(declare-fun b_free!37881 () Bool)

(declare-fun b_next!38585 () Bool)

(assert (=> b!1477712 (= b_free!37881 (not b_next!38585))))

(declare-fun t!136844 () Bool)

(declare-fun tb!84249 () Bool)

(assert (=> (and b!1477712 (= (toChars!3972 (transformation!2778 (h!20994 (t!136804 rules!4290)))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l1!3136))))) t!136844) tb!84249))

(declare-fun result!101254 () Bool)

(assert (= result!101254 result!101228))

(assert (=> b!1477642 t!136844))

(declare-fun tb!84251 () Bool)

(declare-fun t!136846 () Bool)

(assert (=> (and b!1477712 (= (toChars!3972 (transformation!2778 (h!20994 (t!136804 rules!4290)))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l2!3105))))) t!136846) tb!84251))

(declare-fun result!101256 () Bool)

(assert (= result!101256 result!101236))

(assert (=> b!1477654 t!136846))

(declare-fun b_and!102215 () Bool)

(declare-fun tp!418437 () Bool)

(assert (=> b!1477712 (= tp!418437 (and (=> t!136844 result!101254) (=> t!136846 result!101256) b_and!102215))))

(declare-fun e!944343 () Bool)

(assert (=> b!1477712 (= e!944343 (and tp!418439 tp!418437))))

(declare-fun b!1477711 () Bool)

(declare-fun tp!418438 () Bool)

(declare-fun e!944345 () Bool)

(assert (=> b!1477711 (= e!944345 (and tp!418438 (inv!20800 (tag!3042 (h!20994 (t!136804 rules!4290)))) (inv!20803 (transformation!2778 (h!20994 (t!136804 rules!4290)))) e!944343))))

(declare-fun b!1477710 () Bool)

(declare-fun e!944344 () Bool)

(declare-fun tp!418440 () Bool)

(assert (=> b!1477710 (= e!944344 (and e!944345 tp!418440))))

(assert (=> b!1477417 (= tp!418334 e!944344)))

(assert (= b!1477711 b!1477712))

(assert (= b!1477710 b!1477711))

(assert (= (and b!1477417 (is-Cons!15593 (t!136804 rules!4290))) b!1477710))

(declare-fun m!1723243 () Bool)

(assert (=> b!1477711 m!1723243))

(declare-fun m!1723245 () Bool)

(assert (=> b!1477711 m!1723245))

(declare-fun b!1477716 () Bool)

(declare-fun b_free!37883 () Bool)

(declare-fun b_next!38587 () Bool)

(assert (=> b!1477716 (= b_free!37883 (not b_next!38587))))

(declare-fun tp!418444 () Bool)

(declare-fun b_and!102217 () Bool)

(assert (=> b!1477716 (= tp!418444 b_and!102217)))

(declare-fun b_free!37885 () Bool)

(declare-fun b_next!38589 () Bool)

(assert (=> b!1477716 (= b_free!37885 (not b_next!38589))))

(declare-fun tb!84253 () Bool)

(declare-fun t!136848 () Bool)

(assert (=> (and b!1477716 (= (toChars!3972 (transformation!2778 (rule!4555 (h!20993 (t!136803 l2!3105))))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l1!3136))))) t!136848) tb!84253))

(declare-fun result!101258 () Bool)

(assert (= result!101258 result!101228))

(assert (=> b!1477642 t!136848))

(declare-fun t!136850 () Bool)

(declare-fun tb!84255 () Bool)

(assert (=> (and b!1477716 (= (toChars!3972 (transformation!2778 (rule!4555 (h!20993 (t!136803 l2!3105))))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l2!3105))))) t!136850) tb!84255))

(declare-fun result!101260 () Bool)

(assert (= result!101260 result!101236))

(assert (=> b!1477654 t!136850))

(declare-fun b_and!102219 () Bool)

(declare-fun tp!418441 () Bool)

(assert (=> b!1477716 (= tp!418441 (and (=> t!136848 result!101258) (=> t!136850 result!101260) b_and!102219))))

(declare-fun e!944350 () Bool)

(declare-fun tp!418442 () Bool)

(declare-fun e!944349 () Bool)

(declare-fun b!1477713 () Bool)

(assert (=> b!1477713 (= e!944349 (and (inv!20804 (h!20993 (t!136803 l2!3105))) e!944350 tp!418442))))

(declare-fun e!944347 () Bool)

(assert (=> b!1477716 (= e!944347 (and tp!418444 tp!418441))))

(assert (=> b!1477427 (= tp!418333 e!944349)))

(declare-fun b!1477714 () Bool)

(declare-fun tp!418445 () Bool)

(declare-fun e!944351 () Bool)

(assert (=> b!1477714 (= e!944350 (and (inv!21 (value!88822 (h!20993 (t!136803 l2!3105)))) e!944351 tp!418445))))

(declare-fun tp!418443 () Bool)

(declare-fun b!1477715 () Bool)

(assert (=> b!1477715 (= e!944351 (and tp!418443 (inv!20800 (tag!3042 (rule!4555 (h!20993 (t!136803 l2!3105))))) (inv!20803 (transformation!2778 (rule!4555 (h!20993 (t!136803 l2!3105))))) e!944347))))

(assert (= b!1477715 b!1477716))

(assert (= b!1477714 b!1477715))

(assert (= b!1477713 b!1477714))

(assert (= (and b!1477427 (is-Cons!15592 (t!136803 l2!3105))) b!1477713))

(declare-fun m!1723247 () Bool)

(assert (=> b!1477713 m!1723247))

(declare-fun m!1723249 () Bool)

(assert (=> b!1477714 m!1723249))

(declare-fun m!1723251 () Bool)

(assert (=> b!1477715 m!1723251))

(declare-fun m!1723253 () Bool)

(assert (=> b!1477715 m!1723253))

(declare-fun b_lambda!46251 () Bool)

(assert (= b_lambda!46247 (or (and b!1477712 b_free!37881 (= (toChars!3972 (transformation!2778 (h!20994 (t!136804 rules!4290)))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l1!3136)))))) (and b!1477422 b_free!37853 (= (toChars!3972 (transformation!2778 (h!20994 rules!4290))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l1!3136)))))) (and b!1477716 b_free!37885 (= (toChars!3972 (transformation!2778 (rule!4555 (h!20993 (t!136803 l2!3105))))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l1!3136)))))) (and b!1477413 b_free!37857 (= (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l2!3105)))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l1!3136)))))) (and b!1477700 b_free!37877 (= (toChars!3972 (transformation!2778 (rule!4555 (h!20993 (t!136803 l1!3136))))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l1!3136)))))) (and b!1477411 b_free!37861) b_lambda!46251)))

(declare-fun b_lambda!46253 () Bool)

(assert (= b_lambda!46249 (or (and b!1477712 b_free!37881 (= (toChars!3972 (transformation!2778 (h!20994 (t!136804 rules!4290)))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l2!3105)))))) (and b!1477411 b_free!37861 (= (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l1!3136)))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l2!3105)))))) (and b!1477700 b_free!37877 (= (toChars!3972 (transformation!2778 (rule!4555 (h!20993 (t!136803 l1!3136))))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l2!3105)))))) (and b!1477413 b_free!37857) (and b!1477716 b_free!37885 (= (toChars!3972 (transformation!2778 (rule!4555 (h!20993 (t!136803 l2!3105))))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l2!3105)))))) (and b!1477422 b_free!37853 (= (toChars!3972 (transformation!2778 (h!20994 rules!4290))) (toChars!3972 (transformation!2778 (rule!4555 (h!20993 l2!3105)))))) b_lambda!46253)))

(push 1)

(assert (not b!1477521))

(assert (not b!1477710))

(assert (not b!1477583))

(assert (not b_next!38563))

(assert b_and!102207)

(assert (not b!1477711))

(assert b_and!102211)

(assert (not b!1477637))

(assert b_and!102203)

(assert (not tb!84233))

(assert (not b_next!38561))

(assert (not d!433353))

(assert (not d!433371))

(assert (not b!1477520))

(assert (not b!1477643))

(assert (not b!1477697))

(assert b_and!102165)

(assert (not b!1477589))

(assert b_and!102219)

(assert (not b!1477635))

(assert (not b!1477562))

(assert (not b!1477649))

(assert (not b!1477677))

(assert (not b!1477699))

(assert (not b!1477513))

(assert b_and!102217)

(assert (not d!433359))

(assert (not b!1477522))

(assert (not b_next!38587))

(assert (not b!1477650))

(assert (not b_next!38565))

(assert (not b!1477676))

(assert (not b!1477588))

(assert (not b!1477570))

(assert (not b!1477654))

(assert (not b!1477656))

(assert (not b_lambda!46253))

(assert (not b!1477671))

(assert (not b_next!38581))

(assert (not b_next!38555))

(assert (not b!1477714))

(assert (not b!1477653))

(assert (not b!1477659))

(assert (not b!1477582))

(assert (not b!1477586))

(assert (not b!1477715))

(assert (not b!1477713))

(assert (not b!1477642))

(assert (not b_next!38589))

(assert (not b!1477636))

(assert (not b_next!38583))

(assert b_and!102215)

(assert (not b_next!38559))

(assert (not b!1477634))

(assert (not d!433351))

(assert (not d!433405))

(assert (not b_lambda!46251))

(assert tp_is_empty!6949)

(assert (not b!1477679))

(assert (not b_next!38585))

(assert (not b_next!38579))

(assert (not b!1477571))

(assert b_and!102205)

(assert (not b!1477528))

(assert b_and!102209)

(assert (not b!1477552))

(assert (not b!1477673))

(assert (not d!433363))

(assert (not b!1477698))

(assert (not d!433401))

(assert b_and!102161)

(assert (not tb!84239))

(assert (not b!1477686))

(assert (not b!1477681))

(assert b_and!102213)

(assert (not d!433367))

(assert (not b!1477672))

(assert (not d!433347))

(assert (not b!1477701))

(assert (not b!1477553))

(assert (not d!433331))

(assert (not b!1477587))

(assert (not b!1477655))

(assert (not b!1477680))

(assert (not b!1477648))

(assert (not b!1477569))

(assert (not b_next!38557))

(assert (not d!433395))

(assert (not d!433349))

(assert b_and!102169)

(assert (not b!1477675))

(check-sat)

(pop 1)

(push 1)

(assert b_and!102211)

(assert b_and!102165)

(assert b_and!102219)

(assert (not b_next!38565))

(assert (not b_next!38589))

(assert (not b_next!38583))

(assert (not b_next!38563))

(assert b_and!102161)

(assert b_and!102213)

(assert b_and!102207)

(assert (not b_next!38557))

(assert b_and!102169)

(assert b_and!102203)

(assert (not b_next!38561))

(assert (not b_next!38587))

(assert b_and!102217)

(assert (not b_next!38581))

(assert (not b_next!38555))

(assert b_and!102215)

(assert (not b_next!38559))

(assert (not b_next!38579))

(assert (not b_next!38585))

(assert b_and!102205)

(assert b_and!102209)

(check-sat)

(pop 1)


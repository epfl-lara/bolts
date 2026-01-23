; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!271676 () Bool)

(assert start!271676)

(declare-fun b!2808392 () Bool)

(declare-fun b_free!80069 () Bool)

(declare-fun b_next!80773 () Bool)

(assert (=> b!2808392 (= b_free!80069 (not b_next!80773))))

(declare-fun tp!896427 () Bool)

(declare-fun b_and!205135 () Bool)

(assert (=> b!2808392 (= tp!896427 b_and!205135)))

(declare-fun b_free!80071 () Bool)

(declare-fun b_next!80775 () Bool)

(assert (=> b!2808392 (= b_free!80071 (not b_next!80775))))

(declare-fun tp!896426 () Bool)

(declare-fun b_and!205137 () Bool)

(assert (=> b!2808392 (= tp!896426 b_and!205137)))

(declare-fun b!2808391 () Bool)

(declare-fun b_free!80073 () Bool)

(declare-fun b_next!80777 () Bool)

(assert (=> b!2808391 (= b_free!80073 (not b_next!80777))))

(declare-fun tp!896431 () Bool)

(declare-fun b_and!205139 () Bool)

(assert (=> b!2808391 (= tp!896431 b_and!205139)))

(declare-fun b_free!80075 () Bool)

(declare-fun b_next!80779 () Bool)

(assert (=> b!2808391 (= b_free!80075 (not b_next!80779))))

(declare-fun tp!896424 () Bool)

(declare-fun b_and!205141 () Bool)

(assert (=> b!2808391 (= tp!896424 b_and!205141)))

(declare-datatypes ((List!32865 0))(
  ( (Nil!32765) (Cons!32765 (h!38185 (_ BitVec 16)) (t!229545 List!32865)) )
))
(declare-datatypes ((TokenValue!5125 0))(
  ( (FloatLiteralValue!10250 (text!36320 List!32865)) (TokenValueExt!5124 (__x!21907 Int)) (Broken!25625 (value!157619 List!32865)) (Object!5224) (End!5125) (Def!5125) (Underscore!5125) (Match!5125) (Else!5125) (Error!5125) (Case!5125) (If!5125) (Extends!5125) (Abstract!5125) (Class!5125) (Val!5125) (DelimiterValue!10250 (del!5185 List!32865)) (KeywordValue!5131 (value!157620 List!32865)) (CommentValue!10250 (value!157621 List!32865)) (WhitespaceValue!10250 (value!157622 List!32865)) (IndentationValue!5125 (value!157623 List!32865)) (String!35960) (Int32!5125) (Broken!25626 (value!157624 List!32865)) (Boolean!5126) (Unit!46801) (OperatorValue!5128 (op!5185 List!32865)) (IdentifierValue!10250 (value!157625 List!32865)) (IdentifierValue!10251 (value!157626 List!32865)) (WhitespaceValue!10251 (value!157627 List!32865)) (True!10250) (False!10250) (Broken!25627 (value!157628 List!32865)) (Broken!25628 (value!157629 List!32865)) (True!10251) (RightBrace!5125) (RightBracket!5125) (Colon!5125) (Null!5125) (Comma!5125) (LeftBracket!5125) (False!10251) (LeftBrace!5125) (ImaginaryLiteralValue!5125 (text!36321 List!32865)) (StringLiteralValue!15375 (value!157630 List!32865)) (EOFValue!5125 (value!157631 List!32865)) (IdentValue!5125 (value!157632 List!32865)) (DelimiterValue!10251 (value!157633 List!32865)) (DedentValue!5125 (value!157634 List!32865)) (NewLineValue!5125 (value!157635 List!32865)) (IntegerValue!15375 (value!157636 (_ BitVec 32)) (text!36322 List!32865)) (IntegerValue!15376 (value!157637 Int) (text!36323 List!32865)) (Times!5125) (Or!5125) (Equal!5125) (Minus!5125) (Broken!25629 (value!157638 List!32865)) (And!5125) (Div!5125) (LessEqual!5125) (Mod!5125) (Concat!13398) (Not!5125) (Plus!5125) (SpaceValue!5125 (value!157639 List!32865)) (IntegerValue!15377 (value!157640 Int) (text!36324 List!32865)) (StringLiteralValue!15376 (text!36325 List!32865)) (FloatLiteralValue!10251 (text!36326 List!32865)) (BytesLiteralValue!5125 (value!157641 List!32865)) (CommentValue!10251 (value!157642 List!32865)) (StringLiteralValue!15377 (value!157643 List!32865)) (ErrorTokenValue!5125 (msg!5186 List!32865)) )
))
(declare-datatypes ((C!16704 0))(
  ( (C!16705 (val!10286 Int)) )
))
(declare-datatypes ((List!32866 0))(
  ( (Nil!32766) (Cons!32766 (h!38186 C!16704) (t!229546 List!32866)) )
))
(declare-datatypes ((IArray!20289 0))(
  ( (IArray!20290 (innerList!10202 List!32866)) )
))
(declare-datatypes ((Conc!10142 0))(
  ( (Node!10142 (left!24728 Conc!10142) (right!25058 Conc!10142) (csize!20514 Int) (cheight!10353 Int)) (Leaf!15447 (xs!13254 IArray!20289) (csize!20515 Int)) (Empty!10142) )
))
(declare-datatypes ((BalanceConc!19898 0))(
  ( (BalanceConc!19899 (c!454920 Conc!10142)) )
))
(declare-datatypes ((TokenValueInjection!9690 0))(
  ( (TokenValueInjection!9691 (toValue!6905 Int) (toChars!6764 Int)) )
))
(declare-datatypes ((Regex!8273 0))(
  ( (ElementMatch!8273 (c!454921 C!16704)) (Concat!13399 (regOne!17058 Regex!8273) (regTwo!17058 Regex!8273)) (EmptyExpr!8273) (Star!8273 (reg!8602 Regex!8273)) (EmptyLang!8273) (Union!8273 (regOne!17059 Regex!8273) (regTwo!17059 Regex!8273)) )
))
(declare-datatypes ((String!35961 0))(
  ( (String!35962 (value!157644 String)) )
))
(declare-datatypes ((Rule!9606 0))(
  ( (Rule!9607 (regex!4903 Regex!8273) (tag!5407 String!35961) (isSeparator!4903 Bool) (transformation!4903 TokenValueInjection!9690)) )
))
(declare-datatypes ((Token!9208 0))(
  ( (Token!9209 (value!157645 TokenValue!5125) (rule!7331 Rule!9606) (size!25546 Int) (originalCharacters!5635 List!32866)) )
))
(declare-datatypes ((List!32867 0))(
  ( (Nil!32767) (Cons!32767 (h!38187 Token!9208) (t!229547 List!32867)) )
))
(declare-fun l!4240 () List!32867)

(declare-fun e!1775813 () Bool)

(declare-fun e!1775808 () Bool)

(declare-fun b!2808387 () Bool)

(declare-fun tp!896428 () Bool)

(declare-fun inv!21 (TokenValue!5125) Bool)

(assert (=> b!2808387 (= e!1775813 (and (inv!21 (value!157645 (h!38187 l!4240))) e!1775808 tp!896428))))

(declare-fun e!1775804 () Bool)

(declare-datatypes ((LexerInterface!4494 0))(
  ( (LexerInterfaceExt!4491 (__x!21908 Int)) (Lexer!4492) )
))
(declare-fun thiss!13843 () LexerInterface!4494)

(declare-fun lt!1003552 () List!32866)

(declare-fun lt!1003550 () List!32867)

(declare-fun b!2808388 () Bool)

(declare-fun ++!8047 (List!32866 List!32866) List!32866)

(declare-fun list!12267 (BalanceConc!19898) List!32866)

(declare-fun charsOf!3046 (Token!9208) BalanceConc!19898)

(declare-fun printList!1206 (LexerInterface!4494 List!32867) List!32866)

(assert (=> b!2808388 (= e!1775804 (= lt!1003552 (++!8047 (list!12267 (charsOf!3046 (h!38187 lt!1003550))) (printList!1206 thiss!13843 (t!229547 lt!1003550)))))))

(declare-fun b!2808390 () Bool)

(declare-fun e!1775810 () Bool)

(declare-fun lt!1003547 () List!32866)

(assert (=> b!2808390 (= e!1775810 (= lt!1003547 Nil!32766))))

(declare-fun e!1775803 () Bool)

(assert (=> b!2808391 (= e!1775803 (and tp!896431 tp!896424))))

(declare-fun e!1775807 () Bool)

(assert (=> b!2808392 (= e!1775807 (and tp!896427 tp!896426))))

(declare-fun tp!896429 () Bool)

(declare-fun e!1775815 () Bool)

(declare-fun e!1775805 () Bool)

(declare-fun b!2808393 () Bool)

(declare-fun separatorToken!99 () Token!9208)

(assert (=> b!2808393 (= e!1775805 (and (inv!21 (value!157645 separatorToken!99)) e!1775815 tp!896429))))

(declare-fun b!2808394 () Bool)

(declare-fun tp!896425 () Bool)

(declare-fun inv!44451 (String!35961) Bool)

(declare-fun inv!44454 (TokenValueInjection!9690) Bool)

(assert (=> b!2808394 (= e!1775815 (and tp!896425 (inv!44451 (tag!5407 (rule!7331 separatorToken!99))) (inv!44454 (transformation!4903 (rule!7331 separatorToken!99))) e!1775803))))

(declare-fun tp!896432 () Bool)

(declare-fun b!2808395 () Bool)

(assert (=> b!2808395 (= e!1775808 (and tp!896432 (inv!44451 (tag!5407 (rule!7331 (h!38187 l!4240)))) (inv!44454 (transformation!4903 (rule!7331 (h!38187 l!4240)))) e!1775807))))

(declare-fun b!2808396 () Bool)

(assert (=> b!2808396 (= e!1775804 (= lt!1003552 Nil!32766))))

(declare-fun e!1775814 () Bool)

(declare-fun tp!896430 () Bool)

(declare-fun b!2808397 () Bool)

(declare-fun inv!44455 (Token!9208) Bool)

(assert (=> b!2808397 (= e!1775814 (and (inv!44455 (h!38187 l!4240)) e!1775813 tp!896430))))

(declare-fun b!2808398 () Bool)

(declare-fun e!1775811 () Bool)

(assert (=> b!2808398 (= e!1775811 (not true))))

(declare-fun lt!1003549 () List!32866)

(declare-fun lt!1003551 () List!32866)

(declare-fun lt!1003544 () List!32866)

(assert (=> b!2808398 (= (++!8047 (++!8047 lt!1003549 lt!1003551) lt!1003544) (++!8047 lt!1003549 (++!8047 lt!1003551 lt!1003544)))))

(declare-datatypes ((Unit!46802 0))(
  ( (Unit!46803) )
))
(declare-fun lt!1003548 () Unit!46802)

(declare-fun lemmaConcatAssociativity!1658 (List!32866 List!32866 List!32866) Unit!46802)

(assert (=> b!2808398 (= lt!1003548 (lemmaConcatAssociativity!1658 lt!1003549 lt!1003551 lt!1003544))))

(declare-fun lt!1003546 () List!32867)

(assert (=> b!2808398 (= lt!1003544 (printList!1206 thiss!13843 lt!1003546))))

(assert (=> b!2808398 (= lt!1003551 (list!12267 (charsOf!3046 separatorToken!99)))))

(assert (=> b!2808398 (= lt!1003549 (list!12267 (charsOf!3046 (h!38187 l!4240))))))

(assert (=> b!2808398 e!1775810))

(declare-fun c!454918 () Bool)

(declare-fun lt!1003545 () List!32867)

(get-info :version)

(assert (=> b!2808398 (= c!454918 ((_ is Cons!32767) lt!1003545))))

(assert (=> b!2808398 (= lt!1003547 (printList!1206 thiss!13843 lt!1003545))))

(assert (=> b!2808398 e!1775804))

(declare-fun c!454919 () Bool)

(assert (=> b!2808398 (= c!454919 ((_ is Cons!32767) lt!1003550))))

(assert (=> b!2808398 (= lt!1003552 (printList!1206 thiss!13843 lt!1003550))))

(declare-fun $colon$colon!554 (List!32867 Token!9208) List!32867)

(assert (=> b!2808398 (= lt!1003550 ($colon$colon!554 lt!1003545 (h!38187 l!4240)))))

(assert (=> b!2808398 (= lt!1003545 ($colon$colon!554 lt!1003546 separatorToken!99))))

(declare-fun withSeparatorTokenList!142 (LexerInterface!4494 List!32867 Token!9208) List!32867)

(assert (=> b!2808398 (= lt!1003546 (withSeparatorTokenList!142 thiss!13843 (t!229547 l!4240) separatorToken!99))))

(declare-fun b!2808389 () Bool)

(assert (=> b!2808389 (= e!1775810 (= lt!1003547 (++!8047 (list!12267 (charsOf!3046 (h!38187 lt!1003545))) (printList!1206 thiss!13843 (t!229547 lt!1003545)))))))

(declare-fun res!1169715 () Bool)

(assert (=> start!271676 (=> (not res!1169715) (not e!1775811))))

(assert (=> start!271676 (= res!1169715 (and ((_ is Lexer!4492) thiss!13843) (isSeparator!4903 (rule!7331 separatorToken!99)) ((_ is Cons!32767) l!4240)))))

(assert (=> start!271676 e!1775811))

(assert (=> start!271676 true))

(assert (=> start!271676 (and (inv!44455 separatorToken!99) e!1775805)))

(assert (=> start!271676 e!1775814))

(assert (= (and start!271676 res!1169715) b!2808398))

(assert (= (and b!2808398 c!454919) b!2808388))

(assert (= (and b!2808398 (not c!454919)) b!2808396))

(assert (= (and b!2808398 c!454918) b!2808389))

(assert (= (and b!2808398 (not c!454918)) b!2808390))

(assert (= b!2808394 b!2808391))

(assert (= b!2808393 b!2808394))

(assert (= start!271676 b!2808393))

(assert (= b!2808395 b!2808392))

(assert (= b!2808387 b!2808395))

(assert (= b!2808397 b!2808387))

(assert (= (and start!271676 ((_ is Cons!32767) l!4240)) b!2808397))

(declare-fun m!3237935 () Bool)

(assert (=> b!2808397 m!3237935))

(declare-fun m!3237937 () Bool)

(assert (=> b!2808395 m!3237937))

(declare-fun m!3237939 () Bool)

(assert (=> b!2808395 m!3237939))

(declare-fun m!3237941 () Bool)

(assert (=> b!2808398 m!3237941))

(declare-fun m!3237943 () Bool)

(assert (=> b!2808398 m!3237943))

(assert (=> b!2808398 m!3237941))

(declare-fun m!3237945 () Bool)

(assert (=> b!2808398 m!3237945))

(declare-fun m!3237947 () Bool)

(assert (=> b!2808398 m!3237947))

(declare-fun m!3237949 () Bool)

(assert (=> b!2808398 m!3237949))

(declare-fun m!3237951 () Bool)

(assert (=> b!2808398 m!3237951))

(declare-fun m!3237953 () Bool)

(assert (=> b!2808398 m!3237953))

(assert (=> b!2808398 m!3237943))

(declare-fun m!3237955 () Bool)

(assert (=> b!2808398 m!3237955))

(declare-fun m!3237957 () Bool)

(assert (=> b!2808398 m!3237957))

(declare-fun m!3237959 () Bool)

(assert (=> b!2808398 m!3237959))

(assert (=> b!2808398 m!3237947))

(declare-fun m!3237961 () Bool)

(assert (=> b!2808398 m!3237961))

(declare-fun m!3237963 () Bool)

(assert (=> b!2808398 m!3237963))

(declare-fun m!3237965 () Bool)

(assert (=> b!2808398 m!3237965))

(declare-fun m!3237967 () Bool)

(assert (=> b!2808398 m!3237967))

(assert (=> b!2808398 m!3237953))

(declare-fun m!3237969 () Bool)

(assert (=> b!2808398 m!3237969))

(declare-fun m!3237971 () Bool)

(assert (=> b!2808389 m!3237971))

(assert (=> b!2808389 m!3237971))

(declare-fun m!3237973 () Bool)

(assert (=> b!2808389 m!3237973))

(declare-fun m!3237975 () Bool)

(assert (=> b!2808389 m!3237975))

(assert (=> b!2808389 m!3237973))

(assert (=> b!2808389 m!3237975))

(declare-fun m!3237977 () Bool)

(assert (=> b!2808389 m!3237977))

(declare-fun m!3237979 () Bool)

(assert (=> b!2808388 m!3237979))

(assert (=> b!2808388 m!3237979))

(declare-fun m!3237981 () Bool)

(assert (=> b!2808388 m!3237981))

(declare-fun m!3237983 () Bool)

(assert (=> b!2808388 m!3237983))

(assert (=> b!2808388 m!3237981))

(assert (=> b!2808388 m!3237983))

(declare-fun m!3237985 () Bool)

(assert (=> b!2808388 m!3237985))

(declare-fun m!3237987 () Bool)

(assert (=> b!2808387 m!3237987))

(declare-fun m!3237989 () Bool)

(assert (=> b!2808394 m!3237989))

(declare-fun m!3237991 () Bool)

(assert (=> b!2808394 m!3237991))

(declare-fun m!3237993 () Bool)

(assert (=> start!271676 m!3237993))

(declare-fun m!3237995 () Bool)

(assert (=> b!2808393 m!3237995))

(check-sat b_and!205135 b_and!205141 (not b_next!80773) b_and!205139 b_and!205137 (not b!2808387) (not b!2808388) (not b!2808397) (not b_next!80777) (not b!2808395) (not start!271676) (not b!2808389) (not b!2808393) (not b_next!80775) (not b_next!80779) (not b!2808394) (not b!2808398))
(check-sat (not b_next!80775) b_and!205135 b_and!205141 (not b_next!80773) (not b_next!80779) b_and!205139 b_and!205137 (not b_next!80777))

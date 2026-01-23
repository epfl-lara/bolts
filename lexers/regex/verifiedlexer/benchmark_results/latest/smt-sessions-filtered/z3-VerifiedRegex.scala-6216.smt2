; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!301262 () Bool)

(assert start!301262)

(declare-fun b!3207509 () Bool)

(declare-fun b_free!85257 () Bool)

(declare-fun b_next!85961 () Bool)

(assert (=> b!3207509 (= b_free!85257 (not b_next!85961))))

(declare-fun tp!1012778 () Bool)

(declare-fun b_and!213567 () Bool)

(assert (=> b!3207509 (= tp!1012778 b_and!213567)))

(declare-fun b_free!85259 () Bool)

(declare-fun b_next!85963 () Bool)

(assert (=> b!3207509 (= b_free!85259 (not b_next!85963))))

(declare-fun tp!1012780 () Bool)

(declare-fun b_and!213569 () Bool)

(assert (=> b!3207509 (= tp!1012780 b_and!213569)))

(declare-fun b!3207501 () Bool)

(declare-fun b_free!85261 () Bool)

(declare-fun b_next!85965 () Bool)

(assert (=> b!3207501 (= b_free!85261 (not b_next!85965))))

(declare-fun tp!1012772 () Bool)

(declare-fun b_and!213571 () Bool)

(assert (=> b!3207501 (= tp!1012772 b_and!213571)))

(declare-fun b_free!85263 () Bool)

(declare-fun b_next!85967 () Bool)

(assert (=> b!3207501 (= b_free!85263 (not b_next!85967))))

(declare-fun tp!1012781 () Bool)

(declare-fun b_and!213573 () Bool)

(assert (=> b!3207501 (= tp!1012781 b_and!213573)))

(declare-fun b!3207508 () Bool)

(declare-fun b_free!85265 () Bool)

(declare-fun b_next!85969 () Bool)

(assert (=> b!3207508 (= b_free!85265 (not b_next!85969))))

(declare-fun tp!1012782 () Bool)

(declare-fun b_and!213575 () Bool)

(assert (=> b!3207508 (= tp!1012782 b_and!213575)))

(declare-fun b_free!85267 () Bool)

(declare-fun b_next!85971 () Bool)

(assert (=> b!3207508 (= b_free!85267 (not b_next!85971))))

(declare-fun tp!1012775 () Bool)

(declare-fun b_and!213577 () Bool)

(assert (=> b!3207508 (= tp!1012775 b_and!213577)))

(declare-fun bs!541497 () Bool)

(declare-fun b!3207525 () Bool)

(declare-fun b!3207527 () Bool)

(assert (= bs!541497 (and b!3207525 b!3207527)))

(declare-fun lambda!117359 () Int)

(declare-fun lambda!117358 () Int)

(assert (=> bs!541497 (not (= lambda!117359 lambda!117358))))

(declare-fun b!3207542 () Bool)

(declare-fun e!1999820 () Bool)

(assert (=> b!3207542 (= e!1999820 true)))

(declare-fun b!3207541 () Bool)

(declare-fun e!1999819 () Bool)

(assert (=> b!3207541 (= e!1999819 e!1999820)))

(declare-fun b!3207540 () Bool)

(declare-fun e!1999818 () Bool)

(assert (=> b!3207540 (= e!1999818 e!1999819)))

(assert (=> b!3207525 e!1999818))

(assert (= b!3207541 b!3207542))

(assert (= b!3207540 b!3207541))

(declare-datatypes ((String!40543 0))(
  ( (String!40544 (value!168976 String)) )
))
(declare-datatypes ((C!20128 0))(
  ( (C!20129 (val!12112 Int)) )
))
(declare-datatypes ((Regex!9971 0))(
  ( (ElementMatch!9971 (c!538846 C!20128)) (Concat!15413 (regOne!20454 Regex!9971) (regTwo!20454 Regex!9971)) (EmptyExpr!9971) (Star!9971 (reg!10300 Regex!9971)) (EmptyLang!9971) (Union!9971 (regOne!20455 Regex!9971) (regTwo!20455 Regex!9971)) )
))
(declare-datatypes ((List!36252 0))(
  ( (Nil!36128) (Cons!36128 (h!41548 (_ BitVec 16)) (t!238391 List!36252)) )
))
(declare-datatypes ((TokenValue!5442 0))(
  ( (FloatLiteralValue!10884 (text!38539 List!36252)) (TokenValueExt!5441 (__x!23101 Int)) (Broken!27210 (value!168977 List!36252)) (Object!5565) (End!5442) (Def!5442) (Underscore!5442) (Match!5442) (Else!5442) (Error!5442) (Case!5442) (If!5442) (Extends!5442) (Abstract!5442) (Class!5442) (Val!5442) (DelimiterValue!10884 (del!5502 List!36252)) (KeywordValue!5448 (value!168978 List!36252)) (CommentValue!10884 (value!168979 List!36252)) (WhitespaceValue!10884 (value!168980 List!36252)) (IndentationValue!5442 (value!168981 List!36252)) (String!40545) (Int32!5442) (Broken!27211 (value!168982 List!36252)) (Boolean!5443) (Unit!50581) (OperatorValue!5445 (op!5502 List!36252)) (IdentifierValue!10884 (value!168983 List!36252)) (IdentifierValue!10885 (value!168984 List!36252)) (WhitespaceValue!10885 (value!168985 List!36252)) (True!10884) (False!10884) (Broken!27212 (value!168986 List!36252)) (Broken!27213 (value!168987 List!36252)) (True!10885) (RightBrace!5442) (RightBracket!5442) (Colon!5442) (Null!5442) (Comma!5442) (LeftBracket!5442) (False!10885) (LeftBrace!5442) (ImaginaryLiteralValue!5442 (text!38540 List!36252)) (StringLiteralValue!16326 (value!168988 List!36252)) (EOFValue!5442 (value!168989 List!36252)) (IdentValue!5442 (value!168990 List!36252)) (DelimiterValue!10885 (value!168991 List!36252)) (DedentValue!5442 (value!168992 List!36252)) (NewLineValue!5442 (value!168993 List!36252)) (IntegerValue!16326 (value!168994 (_ BitVec 32)) (text!38541 List!36252)) (IntegerValue!16327 (value!168995 Int) (text!38542 List!36252)) (Times!5442) (Or!5442) (Equal!5442) (Minus!5442) (Broken!27214 (value!168996 List!36252)) (And!5442) (Div!5442) (LessEqual!5442) (Mod!5442) (Concat!15414) (Not!5442) (Plus!5442) (SpaceValue!5442 (value!168997 List!36252)) (IntegerValue!16328 (value!168998 Int) (text!38543 List!36252)) (StringLiteralValue!16327 (text!38544 List!36252)) (FloatLiteralValue!10885 (text!38545 List!36252)) (BytesLiteralValue!5442 (value!168999 List!36252)) (CommentValue!10885 (value!169000 List!36252)) (StringLiteralValue!16328 (value!169001 List!36252)) (ErrorTokenValue!5442 (msg!5503 List!36252)) )
))
(declare-datatypes ((List!36253 0))(
  ( (Nil!36129) (Cons!36129 (h!41549 C!20128) (t!238392 List!36253)) )
))
(declare-datatypes ((IArray!21603 0))(
  ( (IArray!21604 (innerList!10859 List!36253)) )
))
(declare-datatypes ((Conc!10799 0))(
  ( (Node!10799 (left!28079 Conc!10799) (right!28409 Conc!10799) (csize!21828 Int) (cheight!11010 Int)) (Leaf!17016 (xs!13917 IArray!21603) (csize!21829 Int)) (Empty!10799) )
))
(declare-datatypes ((BalanceConc!21212 0))(
  ( (BalanceConc!21213 (c!538847 Conc!10799)) )
))
(declare-datatypes ((TokenValueInjection!10312 0))(
  ( (TokenValueInjection!10313 (toValue!7296 Int) (toChars!7155 Int)) )
))
(declare-datatypes ((Rule!10224 0))(
  ( (Rule!10225 (regex!5212 Regex!9971) (tag!5738 String!40543) (isSeparator!5212 Bool) (transformation!5212 TokenValueInjection!10312)) )
))
(declare-datatypes ((List!36254 0))(
  ( (Nil!36130) (Cons!36130 (h!41550 Rule!10224) (t!238393 List!36254)) )
))
(declare-fun rules!2135 () List!36254)

(get-info :version)

(assert (= (and b!3207525 ((_ is Cons!36130) rules!2135)) b!3207540))

(declare-fun order!18401 () Int)

(declare-fun order!18403 () Int)

(declare-fun dynLambda!14571 (Int Int) Int)

(declare-fun dynLambda!14572 (Int Int) Int)

(assert (=> b!3207542 (< (dynLambda!14571 order!18401 (toValue!7296 (transformation!5212 (h!41550 rules!2135)))) (dynLambda!14572 order!18403 lambda!117359))))

(declare-fun order!18405 () Int)

(declare-fun dynLambda!14573 (Int Int) Int)

(assert (=> b!3207542 (< (dynLambda!14573 order!18405 (toChars!7155 (transformation!5212 (h!41550 rules!2135)))) (dynLambda!14572 order!18403 lambda!117359))))

(assert (=> b!3207525 true))

(declare-fun b!3207493 () Bool)

(declare-fun res!1305246 () Bool)

(declare-fun e!1999810 () Bool)

(assert (=> b!3207493 (=> (not res!1305246) (not e!1999810))))

(declare-datatypes ((Token!9790 0))(
  ( (Token!9791 (value!169002 TokenValue!5442) (rule!7652 Rule!10224) (size!27223 Int) (originalCharacters!5926 List!36253)) )
))
(declare-datatypes ((List!36255 0))(
  ( (Nil!36131) (Cons!36131 (h!41551 Token!9790) (t!238394 List!36255)) )
))
(declare-fun tokens!494 () List!36255)

(assert (=> b!3207493 (= res!1305246 (and (not ((_ is Nil!36131) tokens!494)) (not ((_ is Nil!36131) (t!238394 tokens!494)))))))

(declare-fun b!3207494 () Bool)

(declare-fun e!1999797 () Bool)

(declare-fun e!1999798 () Bool)

(assert (=> b!3207494 (= e!1999797 e!1999798)))

(declare-fun res!1305261 () Bool)

(assert (=> b!3207494 (=> res!1305261 e!1999798)))

(assert (=> b!3207494 (= res!1305261 (or (isSeparator!5212 (rule!7652 (h!41551 tokens!494))) (isSeparator!5212 (rule!7652 (h!41551 (t!238394 tokens!494))))))))

(declare-datatypes ((Unit!50582 0))(
  ( (Unit!50583) )
))
(declare-fun lt!1083222 () Unit!50582)

(declare-fun forallContained!1183 (List!36255 Int Token!9790) Unit!50582)

(assert (=> b!3207494 (= lt!1083222 (forallContained!1183 tokens!494 lambda!117358 (h!41551 (t!238394 tokens!494))))))

(declare-fun lt!1083230 () Unit!50582)

(assert (=> b!3207494 (= lt!1083230 (forallContained!1183 tokens!494 lambda!117358 (h!41551 tokens!494)))))

(declare-fun b!3207495 () Bool)

(declare-fun e!1999799 () Bool)

(assert (=> b!3207495 (= e!1999799 e!1999797)))

(declare-fun res!1305251 () Bool)

(assert (=> b!3207495 (=> res!1305251 e!1999797)))

(declare-datatypes ((LexerInterface!4801 0))(
  ( (LexerInterfaceExt!4798 (__x!23102 Int)) (Lexer!4799) )
))
(declare-fun thiss!18206 () LexerInterface!4801)

(declare-fun lt!1083221 () BalanceConc!21212)

(declare-datatypes ((IArray!21605 0))(
  ( (IArray!21606 (innerList!10860 List!36255)) )
))
(declare-datatypes ((Conc!10800 0))(
  ( (Node!10800 (left!28080 Conc!10800) (right!28410 Conc!10800) (csize!21830 Int) (cheight!11011 Int)) (Leaf!17017 (xs!13918 IArray!21605) (csize!21831 Int)) (Empty!10800) )
))
(declare-datatypes ((BalanceConc!21214 0))(
  ( (BalanceConc!21215 (c!538848 Conc!10800)) )
))
(declare-fun isEmpty!20221 (BalanceConc!21214) Bool)

(declare-datatypes ((tuple2!35526 0))(
  ( (tuple2!35527 (_1!20897 BalanceConc!21214) (_2!20897 BalanceConc!21212)) )
))
(declare-fun lex!2131 (LexerInterface!4801 List!36254 BalanceConc!21212) tuple2!35526)

(assert (=> b!3207495 (= res!1305251 (isEmpty!20221 (_1!20897 (lex!2131 thiss!18206 rules!2135 lt!1083221))))))

(declare-fun lt!1083227 () List!36253)

(declare-fun seqFromList!3495 (List!36253) BalanceConc!21212)

(assert (=> b!3207495 (= lt!1083221 (seqFromList!3495 lt!1083227))))

(declare-fun b!3207496 () Bool)

(declare-fun e!1999803 () Bool)

(declare-fun lt!1083218 () tuple2!35526)

(declare-fun isEmpty!20222 (BalanceConc!21212) Bool)

(assert (=> b!3207496 (= e!1999803 (isEmpty!20222 (_2!20897 lt!1083218)))))

(declare-fun res!1305239 () Bool)

(assert (=> start!301262 (=> (not res!1305239) (not e!1999810))))

(assert (=> start!301262 (= res!1305239 ((_ is Lexer!4799) thiss!18206))))

(assert (=> start!301262 e!1999810))

(assert (=> start!301262 true))

(declare-fun e!1999801 () Bool)

(assert (=> start!301262 e!1999801))

(declare-fun e!1999789 () Bool)

(assert (=> start!301262 e!1999789))

(declare-fun separatorToken!241 () Token!9790)

(declare-fun e!1999784 () Bool)

(declare-fun inv!48993 (Token!9790) Bool)

(assert (=> start!301262 (and (inv!48993 separatorToken!241) e!1999784)))

(declare-fun b!3207497 () Bool)

(declare-fun e!1999800 () Unit!50582)

(declare-fun Unit!50584 () Unit!50582)

(assert (=> b!3207497 (= e!1999800 Unit!50584)))

(declare-fun b!3207498 () Bool)

(declare-fun res!1305254 () Bool)

(assert (=> b!3207498 (=> (not res!1305254) (not e!1999810))))

(declare-fun sepAndNonSepRulesDisjointChars!1406 (List!36254 List!36254) Bool)

(assert (=> b!3207498 (= res!1305254 (sepAndNonSepRulesDisjointChars!1406 rules!2135 rules!2135))))

(declare-fun b!3207499 () Bool)

(declare-fun e!1999811 () Bool)

(assert (=> b!3207499 (= e!1999811 true)))

(declare-fun lt!1083223 () Bool)

(declare-fun contains!6442 (List!36254 Rule!10224) Bool)

(assert (=> b!3207499 (= lt!1083223 (contains!6442 rules!2135 (rule!7652 (h!41551 tokens!494))))))

(declare-fun b!3207500 () Bool)

(declare-fun Unit!50585 () Unit!50582)

(assert (=> b!3207500 (= e!1999800 Unit!50585)))

(declare-fun lt!1083200 () List!36253)

(declare-fun lt!1083207 () C!20128)

(declare-fun lt!1083203 () Unit!50582)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!376 (Regex!9971 List!36253 C!20128) Unit!50582)

(assert (=> b!3207500 (= lt!1083203 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!376 (regex!5212 (rule!7652 separatorToken!241)) lt!1083200 lt!1083207))))

(declare-fun res!1305242 () Bool)

(declare-fun matchR!4605 (Regex!9971 List!36253) Bool)

(assert (=> b!3207500 (= res!1305242 (not (matchR!4605 (regex!5212 (rule!7652 separatorToken!241)) lt!1083200)))))

(declare-fun e!1999807 () Bool)

(assert (=> b!3207500 (=> (not res!1305242) (not e!1999807))))

(assert (=> b!3207500 e!1999807))

(declare-fun e!1999805 () Bool)

(assert (=> b!3207501 (= e!1999805 (and tp!1012772 tp!1012781))))

(declare-fun b!3207502 () Bool)

(declare-fun e!1999788 () Bool)

(declare-fun tp!1012776 () Bool)

(assert (=> b!3207502 (= e!1999801 (and e!1999788 tp!1012776))))

(declare-fun b!3207503 () Bool)

(declare-fun res!1305244 () Bool)

(assert (=> b!3207503 (=> (not res!1305244) (not e!1999810))))

(declare-fun rulesInvariant!4198 (LexerInterface!4801 List!36254) Bool)

(assert (=> b!3207503 (= res!1305244 (rulesInvariant!4198 thiss!18206 rules!2135))))

(declare-fun b!3207504 () Bool)

(declare-fun e!1999794 () Bool)

(declare-fun e!1999796 () Bool)

(assert (=> b!3207504 (= e!1999794 e!1999796)))

(declare-fun res!1305262 () Bool)

(assert (=> b!3207504 (=> res!1305262 e!1999796)))

(declare-fun lt!1083219 () List!36253)

(declare-fun lt!1083206 () List!36253)

(assert (=> b!3207504 (= res!1305262 (not (= lt!1083219 lt!1083206)))))

(declare-fun lt!1083225 () List!36253)

(declare-fun ++!8668 (List!36253 List!36253) List!36253)

(assert (=> b!3207504 (= lt!1083206 (++!8668 (++!8668 lt!1083227 lt!1083200) lt!1083225))))

(declare-fun b!3207505 () Bool)

(declare-fun e!1999806 () Bool)

(declare-fun lt!1083220 () Rule!10224)

(assert (=> b!3207505 (= e!1999806 (= (rule!7652 separatorToken!241) lt!1083220))))

(declare-fun b!3207506 () Bool)

(declare-fun res!1305255 () Bool)

(assert (=> b!3207506 (=> (not res!1305255) (not e!1999810))))

(declare-fun isEmpty!20223 (List!36254) Bool)

(assert (=> b!3207506 (= res!1305255 (not (isEmpty!20223 rules!2135)))))

(declare-fun b!3207507 () Bool)

(declare-fun e!1999802 () Bool)

(declare-fun tp!1012779 () Bool)

(declare-fun e!1999808 () Bool)

(declare-fun inv!48990 (String!40543) Bool)

(declare-fun inv!48994 (TokenValueInjection!10312) Bool)

(assert (=> b!3207507 (= e!1999802 (and tp!1012779 (inv!48990 (tag!5738 (rule!7652 (h!41551 tokens!494)))) (inv!48994 (transformation!5212 (rule!7652 (h!41551 tokens!494)))) e!1999808))))

(assert (=> b!3207508 (= e!1999808 (and tp!1012782 tp!1012775))))

(declare-fun e!1999795 () Bool)

(assert (=> b!3207509 (= e!1999795 (and tp!1012778 tp!1012780))))

(declare-fun b!3207510 () Bool)

(declare-fun tp!1012783 () Bool)

(assert (=> b!3207510 (= e!1999788 (and tp!1012783 (inv!48990 (tag!5738 (h!41550 rules!2135))) (inv!48994 (transformation!5212 (h!41550 rules!2135))) e!1999805))))

(declare-fun b!3207511 () Bool)

(declare-fun e!1999787 () Bool)

(assert (=> b!3207511 (= e!1999787 e!1999799)))

(declare-fun res!1305247 () Bool)

(assert (=> b!3207511 (=> res!1305247 e!1999799)))

(declare-fun lt!1083211 () List!36253)

(declare-fun lt!1083212 () List!36253)

(assert (=> b!3207511 (= res!1305247 (or (not (= lt!1083211 lt!1083227)) (not (= lt!1083212 lt!1083227))))))

(declare-fun list!12853 (BalanceConc!21212) List!36253)

(declare-fun charsOf!3228 (Token!9790) BalanceConc!21212)

(assert (=> b!3207511 (= lt!1083227 (list!12853 (charsOf!3228 (h!41551 tokens!494))))))

(declare-fun e!1999782 () Bool)

(declare-fun tp!1012777 () Bool)

(declare-fun b!3207512 () Bool)

(declare-fun inv!21 (TokenValue!5442) Bool)

(assert (=> b!3207512 (= e!1999784 (and (inv!21 (value!169002 separatorToken!241)) e!1999782 tp!1012777))))

(declare-fun b!3207513 () Bool)

(declare-fun res!1305263 () Bool)

(declare-fun e!1999792 () Bool)

(assert (=> b!3207513 (=> (not res!1305263) (not e!1999792))))

(declare-fun lt!1083209 () tuple2!35526)

(declare-fun apply!8173 (BalanceConc!21214 Int) Token!9790)

(assert (=> b!3207513 (= res!1305263 (= (apply!8173 (_1!20897 lt!1083209) 0) (h!41551 (t!238394 tokens!494))))))

(declare-fun b!3207514 () Bool)

(declare-fun res!1305243 () Bool)

(assert (=> b!3207514 (=> (not res!1305243) (not e!1999810))))

(declare-fun rulesProduceEachTokenIndividually!1252 (LexerInterface!4801 List!36254 BalanceConc!21214) Bool)

(declare-fun seqFromList!3496 (List!36255) BalanceConc!21214)

(assert (=> b!3207514 (= res!1305243 (rulesProduceEachTokenIndividually!1252 thiss!18206 rules!2135 (seqFromList!3496 tokens!494)))))

(declare-fun b!3207515 () Bool)

(assert (=> b!3207515 (= e!1999810 (not e!1999787))))

(declare-fun res!1305240 () Bool)

(assert (=> b!3207515 (=> res!1305240 e!1999787)))

(assert (=> b!3207515 (= res!1305240 (not (= lt!1083212 lt!1083211)))))

(declare-fun printList!1351 (LexerInterface!4801 List!36255) List!36253)

(assert (=> b!3207515 (= lt!1083211 (printList!1351 thiss!18206 (Cons!36131 (h!41551 tokens!494) Nil!36131)))))

(declare-fun lt!1083198 () BalanceConc!21212)

(assert (=> b!3207515 (= lt!1083212 (list!12853 lt!1083198))))

(declare-fun lt!1083197 () BalanceConc!21214)

(declare-fun printTailRec!1298 (LexerInterface!4801 BalanceConc!21214 Int BalanceConc!21212) BalanceConc!21212)

(assert (=> b!3207515 (= lt!1083198 (printTailRec!1298 thiss!18206 lt!1083197 0 (BalanceConc!21213 Empty!10799)))))

(declare-fun print!1866 (LexerInterface!4801 BalanceConc!21214) BalanceConc!21212)

(assert (=> b!3207515 (= lt!1083198 (print!1866 thiss!18206 lt!1083197))))

(declare-fun singletonSeq!2308 (Token!9790) BalanceConc!21214)

(assert (=> b!3207515 (= lt!1083197 (singletonSeq!2308 (h!41551 tokens!494)))))

(declare-fun e!1999780 () Bool)

(declare-fun b!3207516 () Bool)

(declare-fun tp!1012774 () Bool)

(assert (=> b!3207516 (= e!1999780 (and (inv!21 (value!169002 (h!41551 tokens!494))) e!1999802 tp!1012774))))

(declare-fun b!3207517 () Bool)

(declare-fun res!1305253 () Bool)

(assert (=> b!3207517 (=> res!1305253 e!1999799)))

(declare-fun rulesProduceIndividualToken!2293 (LexerInterface!4801 List!36254 Token!9790) Bool)

(assert (=> b!3207517 (= res!1305253 (not (rulesProduceIndividualToken!2293 thiss!18206 rules!2135 (h!41551 tokens!494))))))

(declare-fun b!3207518 () Bool)

(assert (=> b!3207518 (= e!1999792 (isEmpty!20222 (_2!20897 lt!1083209)))))

(declare-fun b!3207519 () Bool)

(declare-fun e!1999783 () Bool)

(declare-fun e!1999793 () Bool)

(assert (=> b!3207519 (= e!1999783 e!1999793)))

(declare-fun res!1305256 () Bool)

(assert (=> b!3207519 (=> (not res!1305256) (not e!1999793))))

(declare-fun lt!1083199 () Rule!10224)

(assert (=> b!3207519 (= res!1305256 (matchR!4605 (regex!5212 lt!1083199) lt!1083227))))

(declare-datatypes ((Option!7123 0))(
  ( (None!7122) (Some!7122 (v!35672 Rule!10224)) )
))
(declare-fun lt!1083216 () Option!7123)

(declare-fun get!11499 (Option!7123) Rule!10224)

(assert (=> b!3207519 (= lt!1083199 (get!11499 lt!1083216))))

(declare-fun b!3207520 () Bool)

(declare-fun e!1999791 () Bool)

(assert (=> b!3207520 (= e!1999791 e!1999806)))

(declare-fun res!1305241 () Bool)

(assert (=> b!3207520 (=> (not res!1305241) (not e!1999806))))

(assert (=> b!3207520 (= res!1305241 (matchR!4605 (regex!5212 lt!1083220) lt!1083200))))

(declare-fun lt!1083226 () Option!7123)

(assert (=> b!3207520 (= lt!1083220 (get!11499 lt!1083226))))

(declare-fun b!3207521 () Bool)

(assert (=> b!3207521 (= e!1999798 e!1999794)))

(declare-fun res!1305252 () Bool)

(assert (=> b!3207521 (=> res!1305252 e!1999794)))

(declare-fun printWithSeparatorTokenList!146 (LexerInterface!4801 List!36255 Token!9790) List!36253)

(assert (=> b!3207521 (= res!1305252 (not (= lt!1083225 (++!8668 (++!8668 (list!12853 (charsOf!3228 (h!41551 (t!238394 tokens!494)))) lt!1083200) (printWithSeparatorTokenList!146 thiss!18206 (t!238394 (t!238394 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1083202 () List!36253)

(assert (=> b!3207521 (= lt!1083202 (++!8668 lt!1083200 lt!1083225))))

(assert (=> b!3207521 (= lt!1083200 (list!12853 (charsOf!3228 separatorToken!241)))))

(assert (=> b!3207521 (= lt!1083225 (printWithSeparatorTokenList!146 thiss!18206 (t!238394 tokens!494) separatorToken!241))))

(assert (=> b!3207521 (= lt!1083219 (printWithSeparatorTokenList!146 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3207522 () Bool)

(declare-fun res!1305258 () Bool)

(assert (=> b!3207522 (=> (not res!1305258) (not e!1999810))))

(assert (=> b!3207522 (= res!1305258 (rulesProduceIndividualToken!2293 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3207523 () Bool)

(declare-fun e!1999781 () Bool)

(assert (=> b!3207523 (= e!1999796 e!1999781)))

(declare-fun res!1305259 () Bool)

(assert (=> b!3207523 (=> res!1305259 e!1999781)))

(declare-fun lt!1083228 () List!36253)

(assert (=> b!3207523 (= res!1305259 (not (= lt!1083219 lt!1083228)))))

(assert (=> b!3207523 (= lt!1083206 lt!1083228)))

(assert (=> b!3207523 (= lt!1083228 (++!8668 lt!1083227 lt!1083202))))

(declare-fun lt!1083205 () Unit!50582)

(declare-fun lemmaConcatAssociativity!1734 (List!36253 List!36253 List!36253) Unit!50582)

(assert (=> b!3207523 (= lt!1083205 (lemmaConcatAssociativity!1734 lt!1083227 lt!1083200 lt!1083225))))

(declare-fun b!3207524 () Bool)

(declare-fun res!1305249 () Bool)

(assert (=> b!3207524 (=> (not res!1305249) (not e!1999803))))

(assert (=> b!3207524 (= res!1305249 (= (apply!8173 (_1!20897 lt!1083218) 0) separatorToken!241))))

(assert (=> b!3207525 (= e!1999781 e!1999811)))

(declare-fun res!1305257 () Bool)

(assert (=> b!3207525 (=> res!1305257 e!1999811)))

(assert (=> b!3207525 (= res!1305257 (not (contains!6442 rules!2135 (rule!7652 separatorToken!241))))))

(declare-fun lt!1083215 () Unit!50582)

(assert (=> b!3207525 (= lt!1083215 (forallContained!1183 tokens!494 lambda!117359 (h!41551 (t!238394 tokens!494))))))

(assert (=> b!3207525 (= (rulesProduceIndividualToken!2293 thiss!18206 rules!2135 (h!41551 (t!238394 tokens!494))) e!1999792)))

(declare-fun res!1305264 () Bool)

(assert (=> b!3207525 (=> (not res!1305264) (not e!1999792))))

(declare-fun size!27224 (BalanceConc!21214) Int)

(assert (=> b!3207525 (= res!1305264 (= (size!27224 (_1!20897 lt!1083209)) 1))))

(declare-fun lt!1083201 () BalanceConc!21212)

(assert (=> b!3207525 (= lt!1083209 (lex!2131 thiss!18206 rules!2135 lt!1083201))))

(declare-fun lt!1083213 () BalanceConc!21214)

(assert (=> b!3207525 (= lt!1083201 (printTailRec!1298 thiss!18206 lt!1083213 0 (BalanceConc!21213 Empty!10799)))))

(assert (=> b!3207525 (= lt!1083201 (print!1866 thiss!18206 lt!1083213))))

(assert (=> b!3207525 (= lt!1083213 (singletonSeq!2308 (h!41551 (t!238394 tokens!494))))))

(assert (=> b!3207525 e!1999803))

(declare-fun res!1305260 () Bool)

(assert (=> b!3207525 (=> (not res!1305260) (not e!1999803))))

(assert (=> b!3207525 (= res!1305260 (= (size!27224 (_1!20897 lt!1083218)) 1))))

(declare-fun lt!1083217 () BalanceConc!21212)

(assert (=> b!3207525 (= lt!1083218 (lex!2131 thiss!18206 rules!2135 lt!1083217))))

(declare-fun lt!1083210 () BalanceConc!21214)

(assert (=> b!3207525 (= lt!1083217 (printTailRec!1298 thiss!18206 lt!1083210 0 (BalanceConc!21213 Empty!10799)))))

(assert (=> b!3207525 (= lt!1083217 (print!1866 thiss!18206 lt!1083210))))

(assert (=> b!3207525 (= lt!1083210 (singletonSeq!2308 separatorToken!241))))

(declare-fun lt!1083229 () Unit!50582)

(assert (=> b!3207525 (= lt!1083229 e!1999800)))

(declare-fun c!538845 () Bool)

(declare-fun contains!6443 (List!36253 C!20128) Bool)

(declare-fun usedCharacters!528 (Regex!9971) List!36253)

(assert (=> b!3207525 (= c!538845 (not (contains!6443 (usedCharacters!528 (regex!5212 (rule!7652 separatorToken!241))) lt!1083207)))))

(declare-fun head!7031 (List!36253) C!20128)

(assert (=> b!3207525 (= lt!1083207 (head!7031 lt!1083200))))

(assert (=> b!3207525 e!1999791))

(declare-fun res!1305238 () Bool)

(assert (=> b!3207525 (=> (not res!1305238) (not e!1999791))))

(declare-fun isDefined!5540 (Option!7123) Bool)

(assert (=> b!3207525 (= res!1305238 (isDefined!5540 lt!1083226))))

(declare-fun getRuleFromTag!917 (LexerInterface!4801 List!36254 String!40543) Option!7123)

(assert (=> b!3207525 (= lt!1083226 (getRuleFromTag!917 thiss!18206 rules!2135 (tag!5738 (rule!7652 separatorToken!241))))))

(declare-fun lt!1083214 () Unit!50582)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!917 (LexerInterface!4801 List!36254 List!36253 Token!9790) Unit!50582)

(assert (=> b!3207525 (= lt!1083214 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!917 thiss!18206 rules!2135 lt!1083200 separatorToken!241))))

(declare-datatypes ((tuple2!35528 0))(
  ( (tuple2!35529 (_1!20898 Token!9790) (_2!20898 List!36253)) )
))
(declare-datatypes ((Option!7124 0))(
  ( (None!7123) (Some!7123 (v!35673 tuple2!35528)) )
))
(declare-fun maxPrefixOneRule!1580 (LexerInterface!4801 Rule!10224 List!36253) Option!7124)

(declare-fun apply!8174 (TokenValueInjection!10312 BalanceConc!21212) TokenValue!5442)

(declare-fun size!27225 (List!36253) Int)

(assert (=> b!3207525 (= (maxPrefixOneRule!1580 thiss!18206 (rule!7652 (h!41551 tokens!494)) lt!1083227) (Some!7123 (tuple2!35529 (Token!9791 (apply!8174 (transformation!5212 (rule!7652 (h!41551 tokens!494))) lt!1083221) (rule!7652 (h!41551 tokens!494)) (size!27225 lt!1083227) lt!1083227) Nil!36129)))))

(declare-fun lt!1083204 () Unit!50582)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!693 (LexerInterface!4801 List!36254 List!36253 List!36253 List!36253 Rule!10224) Unit!50582)

(assert (=> b!3207525 (= lt!1083204 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!693 thiss!18206 rules!2135 lt!1083227 lt!1083227 Nil!36129 (rule!7652 (h!41551 tokens!494))))))

(assert (=> b!3207525 e!1999783))

(declare-fun res!1305250 () Bool)

(assert (=> b!3207525 (=> (not res!1305250) (not e!1999783))))

(assert (=> b!3207525 (= res!1305250 (isDefined!5540 lt!1083216))))

(assert (=> b!3207525 (= lt!1083216 (getRuleFromTag!917 thiss!18206 rules!2135 (tag!5738 (rule!7652 (h!41551 tokens!494)))))))

(declare-fun lt!1083224 () Unit!50582)

(assert (=> b!3207525 (= lt!1083224 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!917 thiss!18206 rules!2135 lt!1083227 (h!41551 tokens!494)))))

(declare-fun lt!1083208 () Unit!50582)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!840 (LexerInterface!4801 List!36254 List!36255 Token!9790) Unit!50582)

(assert (=> b!3207525 (= lt!1083208 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!840 thiss!18206 rules!2135 tokens!494 (h!41551 tokens!494)))))

(declare-fun b!3207526 () Bool)

(assert (=> b!3207526 (= e!1999793 (= (rule!7652 (h!41551 tokens!494)) lt!1083199))))

(declare-fun res!1305248 () Bool)

(assert (=> b!3207527 (=> (not res!1305248) (not e!1999810))))

(declare-fun forall!7376 (List!36255 Int) Bool)

(assert (=> b!3207527 (= res!1305248 (forall!7376 tokens!494 lambda!117358))))

(declare-fun tp!1012784 () Bool)

(declare-fun b!3207528 () Bool)

(assert (=> b!3207528 (= e!1999782 (and tp!1012784 (inv!48990 (tag!5738 (rule!7652 separatorToken!241))) (inv!48994 (transformation!5212 (rule!7652 separatorToken!241))) e!1999795))))

(declare-fun tp!1012773 () Bool)

(declare-fun b!3207529 () Bool)

(assert (=> b!3207529 (= e!1999789 (and (inv!48993 (h!41551 tokens!494)) e!1999780 tp!1012773))))

(declare-fun b!3207530 () Bool)

(assert (=> b!3207530 (= e!1999807 false)))

(declare-fun b!3207531 () Bool)

(declare-fun res!1305245 () Bool)

(assert (=> b!3207531 (=> (not res!1305245) (not e!1999810))))

(assert (=> b!3207531 (= res!1305245 (isSeparator!5212 (rule!7652 separatorToken!241)))))

(assert (= (and start!301262 res!1305239) b!3207506))

(assert (= (and b!3207506 res!1305255) b!3207503))

(assert (= (and b!3207503 res!1305244) b!3207514))

(assert (= (and b!3207514 res!1305243) b!3207522))

(assert (= (and b!3207522 res!1305258) b!3207531))

(assert (= (and b!3207531 res!1305245) b!3207527))

(assert (= (and b!3207527 res!1305248) b!3207498))

(assert (= (and b!3207498 res!1305254) b!3207493))

(assert (= (and b!3207493 res!1305246) b!3207515))

(assert (= (and b!3207515 (not res!1305240)) b!3207511))

(assert (= (and b!3207511 (not res!1305247)) b!3207517))

(assert (= (and b!3207517 (not res!1305253)) b!3207495))

(assert (= (and b!3207495 (not res!1305251)) b!3207494))

(assert (= (and b!3207494 (not res!1305261)) b!3207521))

(assert (= (and b!3207521 (not res!1305252)) b!3207504))

(assert (= (and b!3207504 (not res!1305262)) b!3207523))

(assert (= (and b!3207523 (not res!1305259)) b!3207525))

(assert (= (and b!3207525 res!1305250) b!3207519))

(assert (= (and b!3207519 res!1305256) b!3207526))

(assert (= (and b!3207525 res!1305238) b!3207520))

(assert (= (and b!3207520 res!1305241) b!3207505))

(assert (= (and b!3207525 c!538845) b!3207500))

(assert (= (and b!3207525 (not c!538845)) b!3207497))

(assert (= (and b!3207500 res!1305242) b!3207530))

(assert (= (and b!3207525 res!1305260) b!3207524))

(assert (= (and b!3207524 res!1305249) b!3207496))

(assert (= (and b!3207525 res!1305264) b!3207513))

(assert (= (and b!3207513 res!1305263) b!3207518))

(assert (= (and b!3207525 (not res!1305257)) b!3207499))

(assert (= b!3207510 b!3207501))

(assert (= b!3207502 b!3207510))

(assert (= (and start!301262 ((_ is Cons!36130) rules!2135)) b!3207502))

(assert (= b!3207507 b!3207508))

(assert (= b!3207516 b!3207507))

(assert (= b!3207529 b!3207516))

(assert (= (and start!301262 ((_ is Cons!36131) tokens!494)) b!3207529))

(assert (= b!3207528 b!3207509))

(assert (= b!3207512 b!3207528))

(assert (= start!301262 b!3207512))

(declare-fun m!3474487 () Bool)

(assert (=> b!3207507 m!3474487))

(declare-fun m!3474489 () Bool)

(assert (=> b!3207507 m!3474489))

(declare-fun m!3474491 () Bool)

(assert (=> b!3207514 m!3474491))

(assert (=> b!3207514 m!3474491))

(declare-fun m!3474493 () Bool)

(assert (=> b!3207514 m!3474493))

(declare-fun m!3474495 () Bool)

(assert (=> start!301262 m!3474495))

(declare-fun m!3474497 () Bool)

(assert (=> b!3207520 m!3474497))

(declare-fun m!3474499 () Bool)

(assert (=> b!3207520 m!3474499))

(declare-fun m!3474501 () Bool)

(assert (=> b!3207512 m!3474501))

(declare-fun m!3474503 () Bool)

(assert (=> b!3207525 m!3474503))

(declare-fun m!3474505 () Bool)

(assert (=> b!3207525 m!3474505))

(declare-fun m!3474507 () Bool)

(assert (=> b!3207525 m!3474507))

(declare-fun m!3474509 () Bool)

(assert (=> b!3207525 m!3474509))

(declare-fun m!3474511 () Bool)

(assert (=> b!3207525 m!3474511))

(declare-fun m!3474513 () Bool)

(assert (=> b!3207525 m!3474513))

(declare-fun m!3474515 () Bool)

(assert (=> b!3207525 m!3474515))

(declare-fun m!3474517 () Bool)

(assert (=> b!3207525 m!3474517))

(declare-fun m!3474519 () Bool)

(assert (=> b!3207525 m!3474519))

(declare-fun m!3474521 () Bool)

(assert (=> b!3207525 m!3474521))

(declare-fun m!3474523 () Bool)

(assert (=> b!3207525 m!3474523))

(declare-fun m!3474525 () Bool)

(assert (=> b!3207525 m!3474525))

(declare-fun m!3474527 () Bool)

(assert (=> b!3207525 m!3474527))

(declare-fun m!3474529 () Bool)

(assert (=> b!3207525 m!3474529))

(declare-fun m!3474531 () Bool)

(assert (=> b!3207525 m!3474531))

(declare-fun m!3474533 () Bool)

(assert (=> b!3207525 m!3474533))

(declare-fun m!3474535 () Bool)

(assert (=> b!3207525 m!3474535))

(declare-fun m!3474537 () Bool)

(assert (=> b!3207525 m!3474537))

(declare-fun m!3474539 () Bool)

(assert (=> b!3207525 m!3474539))

(assert (=> b!3207525 m!3474503))

(declare-fun m!3474541 () Bool)

(assert (=> b!3207525 m!3474541))

(declare-fun m!3474543 () Bool)

(assert (=> b!3207525 m!3474543))

(declare-fun m!3474545 () Bool)

(assert (=> b!3207525 m!3474545))

(declare-fun m!3474547 () Bool)

(assert (=> b!3207525 m!3474547))

(declare-fun m!3474549 () Bool)

(assert (=> b!3207525 m!3474549))

(declare-fun m!3474551 () Bool)

(assert (=> b!3207525 m!3474551))

(declare-fun m!3474553 () Bool)

(assert (=> b!3207525 m!3474553))

(declare-fun m!3474555 () Bool)

(assert (=> b!3207525 m!3474555))

(declare-fun m!3474557 () Bool)

(assert (=> b!3207527 m!3474557))

(declare-fun m!3474559 () Bool)

(assert (=> b!3207498 m!3474559))

(declare-fun m!3474561 () Bool)

(assert (=> b!3207511 m!3474561))

(assert (=> b!3207511 m!3474561))

(declare-fun m!3474563 () Bool)

(assert (=> b!3207511 m!3474563))

(declare-fun m!3474565 () Bool)

(assert (=> b!3207499 m!3474565))

(declare-fun m!3474567 () Bool)

(assert (=> b!3207503 m!3474567))

(declare-fun m!3474569 () Bool)

(assert (=> b!3207529 m!3474569))

(declare-fun m!3474571 () Bool)

(assert (=> b!3207515 m!3474571))

(declare-fun m!3474573 () Bool)

(assert (=> b!3207515 m!3474573))

(declare-fun m!3474575 () Bool)

(assert (=> b!3207515 m!3474575))

(declare-fun m!3474577 () Bool)

(assert (=> b!3207515 m!3474577))

(declare-fun m!3474579 () Bool)

(assert (=> b!3207515 m!3474579))

(declare-fun m!3474581 () Bool)

(assert (=> b!3207518 m!3474581))

(declare-fun m!3474583 () Bool)

(assert (=> b!3207510 m!3474583))

(declare-fun m!3474585 () Bool)

(assert (=> b!3207510 m!3474585))

(declare-fun m!3474587 () Bool)

(assert (=> b!3207522 m!3474587))

(declare-fun m!3474589 () Bool)

(assert (=> b!3207517 m!3474589))

(declare-fun m!3474591 () Bool)

(assert (=> b!3207521 m!3474591))

(declare-fun m!3474593 () Bool)

(assert (=> b!3207521 m!3474593))

(declare-fun m!3474595 () Bool)

(assert (=> b!3207521 m!3474595))

(declare-fun m!3474597 () Bool)

(assert (=> b!3207521 m!3474597))

(declare-fun m!3474599 () Bool)

(assert (=> b!3207521 m!3474599))

(assert (=> b!3207521 m!3474591))

(assert (=> b!3207521 m!3474595))

(declare-fun m!3474601 () Bool)

(assert (=> b!3207521 m!3474601))

(declare-fun m!3474603 () Bool)

(assert (=> b!3207521 m!3474603))

(declare-fun m!3474605 () Bool)

(assert (=> b!3207521 m!3474605))

(declare-fun m!3474607 () Bool)

(assert (=> b!3207521 m!3474607))

(assert (=> b!3207521 m!3474597))

(assert (=> b!3207521 m!3474601))

(declare-fun m!3474609 () Bool)

(assert (=> b!3207521 m!3474609))

(assert (=> b!3207521 m!3474603))

(declare-fun m!3474611 () Bool)

(assert (=> b!3207496 m!3474611))

(declare-fun m!3474613 () Bool)

(assert (=> b!3207495 m!3474613))

(declare-fun m!3474615 () Bool)

(assert (=> b!3207495 m!3474615))

(declare-fun m!3474617 () Bool)

(assert (=> b!3207495 m!3474617))

(declare-fun m!3474619 () Bool)

(assert (=> b!3207516 m!3474619))

(declare-fun m!3474621 () Bool)

(assert (=> b!3207524 m!3474621))

(declare-fun m!3474623 () Bool)

(assert (=> b!3207523 m!3474623))

(declare-fun m!3474625 () Bool)

(assert (=> b!3207523 m!3474625))

(declare-fun m!3474627 () Bool)

(assert (=> b!3207519 m!3474627))

(declare-fun m!3474629 () Bool)

(assert (=> b!3207519 m!3474629))

(declare-fun m!3474631 () Bool)

(assert (=> b!3207528 m!3474631))

(declare-fun m!3474633 () Bool)

(assert (=> b!3207528 m!3474633))

(declare-fun m!3474635 () Bool)

(assert (=> b!3207506 m!3474635))

(declare-fun m!3474637 () Bool)

(assert (=> b!3207504 m!3474637))

(assert (=> b!3207504 m!3474637))

(declare-fun m!3474639 () Bool)

(assert (=> b!3207504 m!3474639))

(declare-fun m!3474641 () Bool)

(assert (=> b!3207513 m!3474641))

(declare-fun m!3474643 () Bool)

(assert (=> b!3207500 m!3474643))

(declare-fun m!3474645 () Bool)

(assert (=> b!3207500 m!3474645))

(declare-fun m!3474647 () Bool)

(assert (=> b!3207494 m!3474647))

(declare-fun m!3474649 () Bool)

(assert (=> b!3207494 m!3474649))

(check-sat (not b_next!85967) (not b!3207517) (not b!3207496) (not b!3207525) (not b!3207506) (not b!3207528) (not b!3207514) (not start!301262) (not b!3207519) (not b!3207518) (not b!3207540) (not b_next!85969) b_and!213567 (not b!3207499) b_and!213573 (not b!3207527) (not b!3207524) (not b!3207522) (not b!3207498) (not b_next!85961) (not b!3207521) (not b!3207500) (not b!3207511) (not b_next!85965) (not b!3207512) b_and!213577 (not b!3207515) (not b!3207495) b_and!213575 (not b_next!85963) (not b!3207494) (not b!3207507) (not b!3207503) b_and!213569 (not b!3207510) b_and!213571 (not b!3207504) (not b!3207502) (not b!3207523) (not b!3207520) (not b_next!85971) (not b!3207516) (not b!3207529) (not b!3207513))
(check-sat (not b_next!85967) b_and!213573 (not b_next!85961) (not b_next!85965) b_and!213577 b_and!213569 b_and!213571 (not b_next!85971) (not b_next!85969) b_and!213567 b_and!213575 (not b_next!85963))

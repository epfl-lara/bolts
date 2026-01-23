; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!240476 () Bool)

(assert start!240476)

(declare-fun b!2465811 () Bool)

(declare-fun b_free!70917 () Bool)

(declare-fun b_next!71621 () Bool)

(assert (=> b!2465811 (= b_free!70917 (not b_next!71621))))

(declare-fun tp!786434 () Bool)

(declare-fun b_and!186341 () Bool)

(assert (=> b!2465811 (= tp!786434 b_and!186341)))

(declare-fun b_free!70919 () Bool)

(declare-fun b_next!71623 () Bool)

(assert (=> b!2465811 (= b_free!70919 (not b_next!71623))))

(declare-fun tp!786431 () Bool)

(declare-fun b_and!186343 () Bool)

(assert (=> b!2465811 (= tp!786431 b_and!186343)))

(declare-fun b!2465823 () Bool)

(declare-fun b_free!70921 () Bool)

(declare-fun b_next!71625 () Bool)

(assert (=> b!2465823 (= b_free!70921 (not b_next!71625))))

(declare-fun tp!786432 () Bool)

(declare-fun b_and!186345 () Bool)

(assert (=> b!2465823 (= tp!786432 b_and!186345)))

(declare-fun b_free!70923 () Bool)

(declare-fun b_next!71627 () Bool)

(assert (=> b!2465823 (= b_free!70923 (not b_next!71627))))

(declare-fun tp!786429 () Bool)

(declare-fun b_and!186347 () Bool)

(assert (=> b!2465823 (= tp!786429 b_and!186347)))

(declare-fun b!2465820 () Bool)

(declare-fun b_free!70925 () Bool)

(declare-fun b_next!71629 () Bool)

(assert (=> b!2465820 (= b_free!70925 (not b_next!71629))))

(declare-fun tp!786433 () Bool)

(declare-fun b_and!186349 () Bool)

(assert (=> b!2465820 (= tp!786433 b_and!186349)))

(declare-fun b_free!70927 () Bool)

(declare-fun b_next!71631 () Bool)

(assert (=> b!2465820 (= b_free!70927 (not b_next!71631))))

(declare-fun tp!786427 () Bool)

(declare-fun b_and!186351 () Bool)

(assert (=> b!2465820 (= tp!786427 b_and!186351)))

(declare-fun b!2465819 () Bool)

(declare-fun b_free!70929 () Bool)

(declare-fun b_next!71633 () Bool)

(assert (=> b!2465819 (= b_free!70929 (not b_next!71633))))

(declare-fun tp!786438 () Bool)

(declare-fun b_and!186353 () Bool)

(assert (=> b!2465819 (= tp!786438 b_and!186353)))

(declare-fun b_free!70931 () Bool)

(declare-fun b_next!71635 () Bool)

(assert (=> b!2465819 (= b_free!70931 (not b_next!71635))))

(declare-fun tp!786423 () Bool)

(declare-fun b_and!186355 () Bool)

(assert (=> b!2465819 (= tp!786423 b_and!186355)))

(declare-fun e!1563775 () Bool)

(assert (=> b!2465811 (= e!1563775 (and tp!786434 tp!786431))))

(declare-fun b!2465812 () Bool)

(declare-fun tp!786430 () Bool)

(declare-datatypes ((List!28808 0))(
  ( (Nil!28708) (Cons!28708 (h!34109 (_ BitVec 16)) (t!209315 List!28808)) )
))
(declare-datatypes ((TokenValue!4652 0))(
  ( (FloatLiteralValue!9304 (text!33009 List!28808)) (TokenValueExt!4651 (__x!18559 Int)) (Broken!23260 (value!142662 List!28808)) (Object!4751) (End!4652) (Def!4652) (Underscore!4652) (Match!4652) (Else!4652) (Error!4652) (Case!4652) (If!4652) (Extends!4652) (Abstract!4652) (Class!4652) (Val!4652) (DelimiterValue!9304 (del!4712 List!28808)) (KeywordValue!4658 (value!142663 List!28808)) (CommentValue!9304 (value!142664 List!28808)) (WhitespaceValue!9304 (value!142665 List!28808)) (IndentationValue!4652 (value!142666 List!28808)) (String!31557) (Int32!4652) (Broken!23261 (value!142667 List!28808)) (Boolean!4653) (Unit!42051) (OperatorValue!4655 (op!4712 List!28808)) (IdentifierValue!9304 (value!142668 List!28808)) (IdentifierValue!9305 (value!142669 List!28808)) (WhitespaceValue!9305 (value!142670 List!28808)) (True!9304) (False!9304) (Broken!23262 (value!142671 List!28808)) (Broken!23263 (value!142672 List!28808)) (True!9305) (RightBrace!4652) (RightBracket!4652) (Colon!4652) (Null!4652) (Comma!4652) (LeftBracket!4652) (False!9305) (LeftBrace!4652) (ImaginaryLiteralValue!4652 (text!33010 List!28808)) (StringLiteralValue!13956 (value!142673 List!28808)) (EOFValue!4652 (value!142674 List!28808)) (IdentValue!4652 (value!142675 List!28808)) (DelimiterValue!9305 (value!142676 List!28808)) (DedentValue!4652 (value!142677 List!28808)) (NewLineValue!4652 (value!142678 List!28808)) (IntegerValue!13956 (value!142679 (_ BitVec 32)) (text!33011 List!28808)) (IntegerValue!13957 (value!142680 Int) (text!33012 List!28808)) (Times!4652) (Or!4652) (Equal!4652) (Minus!4652) (Broken!23264 (value!142681 List!28808)) (And!4652) (Div!4652) (LessEqual!4652) (Mod!4652) (Concat!11906) (Not!4652) (Plus!4652) (SpaceValue!4652 (value!142682 List!28808)) (IntegerValue!13958 (value!142683 Int) (text!33013 List!28808)) (StringLiteralValue!13957 (text!33014 List!28808)) (FloatLiteralValue!9305 (text!33015 List!28808)) (BytesLiteralValue!4652 (value!142684 List!28808)) (CommentValue!9305 (value!142685 List!28808)) (StringLiteralValue!13958 (value!142686 List!28808)) (ErrorTokenValue!4652 (msg!4713 List!28808)) )
))
(declare-datatypes ((C!14666 0))(
  ( (C!14667 (val!8593 Int)) )
))
(declare-datatypes ((List!28809 0))(
  ( (Nil!28709) (Cons!28709 (h!34110 C!14666) (t!209316 List!28809)) )
))
(declare-datatypes ((IArray!18357 0))(
  ( (IArray!18358 (innerList!9236 List!28809)) )
))
(declare-datatypes ((Conc!9176 0))(
  ( (Node!9176 (left!22044 Conc!9176) (right!22374 Conc!9176) (csize!18582 Int) (cheight!9387 Int)) (Leaf!13717 (xs!12156 IArray!18357) (csize!18583 Int)) (Empty!9176) )
))
(declare-datatypes ((BalanceConc!17966 0))(
  ( (BalanceConc!17967 (c!393234 Conc!9176)) )
))
(declare-datatypes ((String!31558 0))(
  ( (String!31559 (value!142687 String)) )
))
(declare-datatypes ((Regex!7254 0))(
  ( (ElementMatch!7254 (c!393235 C!14666)) (Concat!11907 (regOne!15020 Regex!7254) (regTwo!15020 Regex!7254)) (EmptyExpr!7254) (Star!7254 (reg!7583 Regex!7254)) (EmptyLang!7254) (Union!7254 (regOne!15021 Regex!7254) (regTwo!15021 Regex!7254)) )
))
(declare-datatypes ((TokenValueInjection!8804 0))(
  ( (TokenValueInjection!8805 (toValue!6326 Int) (toChars!6185 Int)) )
))
(declare-datatypes ((Rule!8732 0))(
  ( (Rule!8733 (regex!4466 Regex!7254) (tag!4956 String!31558) (isSeparator!4466 Bool) (transformation!4466 TokenValueInjection!8804)) )
))
(declare-datatypes ((List!28810 0))(
  ( (Nil!28710) (Cons!28710 (h!34111 Rule!8732) (t!209317 List!28810)) )
))
(declare-fun rules!4472 () List!28810)

(declare-fun e!1563769 () Bool)

(declare-fun e!1563760 () Bool)

(declare-fun inv!38795 (String!31558) Bool)

(declare-fun inv!38798 (TokenValueInjection!8804) Bool)

(assert (=> b!2465812 (= e!1563760 (and tp!786430 (inv!38795 (tag!4956 (h!34111 rules!4472))) (inv!38798 (transformation!4466 (h!34111 rules!4472))) e!1563769))))

(declare-fun tp!786428 () Bool)

(declare-datatypes ((Token!8402 0))(
  ( (Token!8403 (value!142688 TokenValue!4652) (rule!6824 Rule!8732) (size!22344 Int) (originalCharacters!5232 List!28809)) )
))
(declare-fun t2!67 () Token!8402)

(declare-fun b!2465813 () Bool)

(declare-fun e!1563767 () Bool)

(assert (=> b!2465813 (= e!1563767 (and tp!786428 (inv!38795 (tag!4956 (rule!6824 t2!67))) (inv!38798 (transformation!4466 (rule!6824 t2!67))) e!1563775))))

(declare-fun res!1044416 () Bool)

(declare-fun e!1563772 () Bool)

(assert (=> start!240476 (=> (not res!1044416) (not e!1563772))))

(declare-datatypes ((LexerInterface!4063 0))(
  ( (LexerInterfaceExt!4060 (__x!18560 Int)) (Lexer!4061) )
))
(declare-fun thiss!27932 () LexerInterface!4063)

(assert (=> start!240476 (= res!1044416 (is-Lexer!4061 thiss!27932))))

(assert (=> start!240476 e!1563772))

(assert (=> start!240476 true))

(declare-fun e!1563762 () Bool)

(assert (=> start!240476 e!1563762))

(declare-fun e!1563763 () Bool)

(declare-fun inv!38799 (Token!8402) Bool)

(assert (=> start!240476 (and (inv!38799 t2!67) e!1563763)))

(declare-fun e!1563761 () Bool)

(assert (=> start!240476 e!1563761))

(declare-fun t1!67 () Token!8402)

(declare-fun e!1563755 () Bool)

(assert (=> start!240476 (and (inv!38799 t1!67) e!1563755)))

(declare-fun b!2465814 () Bool)

(assert (=> b!2465814 (= e!1563772 (not true))))

(declare-fun rulesProduceIndividualToken!1798 (LexerInterface!4063 List!28810 Token!8402) Bool)

(assert (=> b!2465814 (rulesProduceIndividualToken!1798 thiss!27932 rules!4472 t2!67)))

(declare-datatypes ((Unit!42052 0))(
  ( (Unit!42053) )
))
(declare-fun lt!882196 () Unit!42052)

(declare-datatypes ((List!28811 0))(
  ( (Nil!28711) (Cons!28711 (h!34112 Token!8402) (t!209318 List!28811)) )
))
(declare-fun l!6611 () List!28811)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!659 (LexerInterface!4063 List!28810 List!28811 Token!8402) Unit!42052)

(assert (=> b!2465814 (= lt!882196 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!659 thiss!27932 rules!4472 l!6611 t2!67))))

(assert (=> b!2465814 (rulesProduceIndividualToken!1798 thiss!27932 rules!4472 t1!67)))

(declare-fun lt!882195 () Unit!42052)

(assert (=> b!2465814 (= lt!882195 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!659 thiss!27932 rules!4472 l!6611 t1!67))))

(declare-fun b!2465815 () Bool)

(declare-fun res!1044409 () Bool)

(assert (=> b!2465815 (=> (not res!1044409) (not e!1563772))))

(declare-fun separableTokensPredicate!843 (LexerInterface!4063 Token!8402 Token!8402 List!28810) Bool)

(assert (=> b!2465815 (= res!1044409 (separableTokensPredicate!843 thiss!27932 t1!67 t2!67 rules!4472))))

(declare-fun b!2465816 () Bool)

(declare-fun res!1044411 () Bool)

(assert (=> b!2465816 (=> (not res!1044411) (not e!1563772))))

(declare-fun i!1803 () Int)

(declare-fun size!22345 (List!28811) Int)

(assert (=> b!2465816 (= res!1044411 (< (+ 1 i!1803) (size!22345 l!6611)))))

(declare-fun e!1563768 () Bool)

(declare-fun b!2465817 () Bool)

(declare-fun tp!786424 () Bool)

(assert (=> b!2465817 (= e!1563761 (and (inv!38799 (h!34112 l!6611)) e!1563768 tp!786424))))

(declare-fun b!2465818 () Bool)

(declare-fun res!1044412 () Bool)

(assert (=> b!2465818 (=> (not res!1044412) (not e!1563772))))

(declare-fun rulesInvariant!3563 (LexerInterface!4063 List!28810) Bool)

(assert (=> b!2465818 (= res!1044412 (rulesInvariant!3563 thiss!27932 rules!4472))))

(declare-fun e!1563758 () Bool)

(assert (=> b!2465819 (= e!1563758 (and tp!786438 tp!786423))))

(declare-fun e!1563766 () Bool)

(assert (=> b!2465820 (= e!1563766 (and tp!786433 tp!786427))))

(declare-fun e!1563765 () Bool)

(declare-fun b!2465821 () Bool)

(declare-fun tp!786437 () Bool)

(declare-fun inv!21 (TokenValue!4652) Bool)

(assert (=> b!2465821 (= e!1563755 (and (inv!21 (value!142688 t1!67)) e!1563765 tp!786437))))

(declare-fun b!2465822 () Bool)

(declare-fun tp!786422 () Bool)

(assert (=> b!2465822 (= e!1563763 (and (inv!21 (value!142688 t2!67)) e!1563767 tp!786422))))

(assert (=> b!2465823 (= e!1563769 (and tp!786432 tp!786429))))

(declare-fun b!2465824 () Bool)

(declare-fun res!1044418 () Bool)

(assert (=> b!2465824 (=> (not res!1044418) (not e!1563772))))

(assert (=> b!2465824 (= res!1044418 (>= i!1803 0))))

(declare-fun b!2465825 () Bool)

(declare-fun res!1044414 () Bool)

(assert (=> b!2465825 (=> (not res!1044414) (not e!1563772))))

(declare-fun apply!6750 (List!28811 Int) Token!8402)

(assert (=> b!2465825 (= res!1044414 (= (apply!6750 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun tp!786436 () Bool)

(declare-fun b!2465826 () Bool)

(assert (=> b!2465826 (= e!1563765 (and tp!786436 (inv!38795 (tag!4956 (rule!6824 t1!67))) (inv!38798 (transformation!4466 (rule!6824 t1!67))) e!1563758))))

(declare-fun b!2465827 () Bool)

(declare-fun res!1044408 () Bool)

(assert (=> b!2465827 (=> (not res!1044408) (not e!1563772))))

(declare-fun isEmpty!16688 (List!28810) Bool)

(assert (=> b!2465827 (= res!1044408 (not (isEmpty!16688 rules!4472)))))

(declare-fun e!1563770 () Bool)

(declare-fun b!2465828 () Bool)

(declare-fun tp!786426 () Bool)

(assert (=> b!2465828 (= e!1563770 (and tp!786426 (inv!38795 (tag!4956 (rule!6824 (h!34112 l!6611)))) (inv!38798 (transformation!4466 (rule!6824 (h!34112 l!6611)))) e!1563766))))

(declare-fun b!2465829 () Bool)

(declare-fun res!1044417 () Bool)

(assert (=> b!2465829 (=> (not res!1044417) (not e!1563772))))

(declare-fun rulesProduceEachTokenIndividuallyList!1379 (LexerInterface!4063 List!28810 List!28811) Bool)

(assert (=> b!2465829 (= res!1044417 (rulesProduceEachTokenIndividuallyList!1379 thiss!27932 rules!4472 l!6611))))

(declare-fun b!2465830 () Bool)

(declare-fun res!1044410 () Bool)

(assert (=> b!2465830 (=> (not res!1044410) (not e!1563772))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!602 (LexerInterface!4063 List!28811 List!28810) Bool)

(assert (=> b!2465830 (= res!1044410 (tokensListTwoByTwoPredicateSeparableList!602 thiss!27932 l!6611 rules!4472))))

(declare-fun b!2465831 () Bool)

(declare-fun res!1044415 () Bool)

(assert (=> b!2465831 (=> (not res!1044415) (not e!1563772))))

(assert (=> b!2465831 (= res!1044415 (= i!1803 0))))

(declare-fun b!2465832 () Bool)

(declare-fun tp!786425 () Bool)

(assert (=> b!2465832 (= e!1563762 (and e!1563760 tp!786425))))

(declare-fun b!2465833 () Bool)

(declare-fun res!1044413 () Bool)

(assert (=> b!2465833 (=> (not res!1044413) (not e!1563772))))

(assert (=> b!2465833 (= res!1044413 (= (apply!6750 l!6611 i!1803) t1!67))))

(declare-fun b!2465834 () Bool)

(declare-fun tp!786435 () Bool)

(assert (=> b!2465834 (= e!1563768 (and (inv!21 (value!142688 (h!34112 l!6611))) e!1563770 tp!786435))))

(assert (= (and start!240476 res!1044416) b!2465827))

(assert (= (and b!2465827 res!1044408) b!2465818))

(assert (= (and b!2465818 res!1044412) b!2465829))

(assert (= (and b!2465829 res!1044417) b!2465830))

(assert (= (and b!2465830 res!1044410) b!2465824))

(assert (= (and b!2465824 res!1044418) b!2465816))

(assert (= (and b!2465816 res!1044411) b!2465833))

(assert (= (and b!2465833 res!1044413) b!2465825))

(assert (= (and b!2465825 res!1044414) b!2465831))

(assert (= (and b!2465831 res!1044415) b!2465815))

(assert (= (and b!2465815 res!1044409) b!2465814))

(assert (= b!2465812 b!2465823))

(assert (= b!2465832 b!2465812))

(assert (= (and start!240476 (is-Cons!28710 rules!4472)) b!2465832))

(assert (= b!2465813 b!2465811))

(assert (= b!2465822 b!2465813))

(assert (= start!240476 b!2465822))

(assert (= b!2465828 b!2465820))

(assert (= b!2465834 b!2465828))

(assert (= b!2465817 b!2465834))

(assert (= (and start!240476 (is-Cons!28711 l!6611)) b!2465817))

(assert (= b!2465826 b!2465819))

(assert (= b!2465821 b!2465826))

(assert (= start!240476 b!2465821))

(declare-fun m!2835291 () Bool)

(assert (=> b!2465828 m!2835291))

(declare-fun m!2835293 () Bool)

(assert (=> b!2465828 m!2835293))

(declare-fun m!2835295 () Bool)

(assert (=> b!2465829 m!2835295))

(declare-fun m!2835297 () Bool)

(assert (=> b!2465825 m!2835297))

(declare-fun m!2835299 () Bool)

(assert (=> b!2465821 m!2835299))

(declare-fun m!2835301 () Bool)

(assert (=> b!2465822 m!2835301))

(declare-fun m!2835303 () Bool)

(assert (=> b!2465812 m!2835303))

(declare-fun m!2835305 () Bool)

(assert (=> b!2465812 m!2835305))

(declare-fun m!2835307 () Bool)

(assert (=> b!2465813 m!2835307))

(declare-fun m!2835309 () Bool)

(assert (=> b!2465813 m!2835309))

(declare-fun m!2835311 () Bool)

(assert (=> b!2465827 m!2835311))

(declare-fun m!2835313 () Bool)

(assert (=> b!2465826 m!2835313))

(declare-fun m!2835315 () Bool)

(assert (=> b!2465826 m!2835315))

(declare-fun m!2835317 () Bool)

(assert (=> b!2465814 m!2835317))

(declare-fun m!2835319 () Bool)

(assert (=> b!2465814 m!2835319))

(declare-fun m!2835321 () Bool)

(assert (=> b!2465814 m!2835321))

(declare-fun m!2835323 () Bool)

(assert (=> b!2465814 m!2835323))

(declare-fun m!2835325 () Bool)

(assert (=> b!2465816 m!2835325))

(declare-fun m!2835327 () Bool)

(assert (=> b!2465830 m!2835327))

(declare-fun m!2835329 () Bool)

(assert (=> start!240476 m!2835329))

(declare-fun m!2835331 () Bool)

(assert (=> start!240476 m!2835331))

(declare-fun m!2835333 () Bool)

(assert (=> b!2465834 m!2835333))

(declare-fun m!2835335 () Bool)

(assert (=> b!2465833 m!2835335))

(declare-fun m!2835337 () Bool)

(assert (=> b!2465815 m!2835337))

(declare-fun m!2835339 () Bool)

(assert (=> b!2465818 m!2835339))

(declare-fun m!2835341 () Bool)

(assert (=> b!2465817 m!2835341))

(push 1)

(assert (not b_next!71629))

(assert (not b!2465821))

(assert (not b_next!71625))

(assert b_and!186341)

(assert (not b!2465813))

(assert (not b!2465828))

(assert (not b!2465829))

(assert (not b_next!71631))

(assert (not b!2465832))

(assert (not b!2465814))

(assert (not b_next!71633))

(assert (not b!2465815))

(assert b_and!186353)

(assert b_and!186349)

(assert (not b!2465826))

(assert (not b!2465812))

(assert (not b_next!71635))

(assert (not b_next!71627))

(assert b_and!186347)

(assert (not b!2465825))

(assert (not b!2465834))

(assert (not b!2465818))

(assert (not b_next!71621))

(assert b_and!186345)

(assert (not b!2465833))

(assert b_and!186343)

(assert (not start!240476))

(assert (not b!2465817))

(assert (not b!2465816))

(assert (not b!2465830))

(assert (not b_next!71623))

(assert (not b!2465822))

(assert b_and!186355)

(assert (not b!2465827))

(assert b_and!186351)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!71629))

(assert (not b_next!71625))

(assert b_and!186341)

(assert b_and!186347)

(assert (not b_next!71621))

(assert (not b_next!71631))

(assert (not b_next!71633))

(assert (not b_next!71623))

(assert b_and!186355)

(assert b_and!186351)

(assert b_and!186353)

(assert b_and!186349)

(assert (not b_next!71635))

(assert (not b_next!71627))

(assert b_and!186345)

(assert b_and!186343)

(check-sat)

(pop 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19502 () Bool)

(assert start!19502)

(declare-fun b!180189 () Bool)

(declare-fun b_free!6969 () Bool)

(declare-fun b_next!6969 () Bool)

(assert (=> b!180189 (= b_free!6969 (not b_next!6969))))

(declare-fun tp!86177 () Bool)

(declare-fun b_and!12285 () Bool)

(assert (=> b!180189 (= tp!86177 b_and!12285)))

(declare-fun b_free!6971 () Bool)

(declare-fun b_next!6971 () Bool)

(assert (=> b!180189 (= b_free!6971 (not b_next!6971))))

(declare-fun tp!86179 () Bool)

(declare-fun b_and!12287 () Bool)

(assert (=> b!180189 (= tp!86179 b_and!12287)))

(declare-fun b!180184 () Bool)

(declare-fun b_free!6973 () Bool)

(declare-fun b_next!6973 () Bool)

(assert (=> b!180184 (= b_free!6973 (not b_next!6973))))

(declare-fun tp!86183 () Bool)

(declare-fun b_and!12289 () Bool)

(assert (=> b!180184 (= tp!86183 b_and!12289)))

(declare-fun b_free!6975 () Bool)

(declare-fun b_next!6975 () Bool)

(assert (=> b!180184 (= b_free!6975 (not b_next!6975))))

(declare-fun tp!86187 () Bool)

(declare-fun b_and!12291 () Bool)

(assert (=> b!180184 (= tp!86187 b_and!12291)))

(declare-fun b!180186 () Bool)

(declare-fun b_free!6977 () Bool)

(declare-fun b_next!6977 () Bool)

(assert (=> b!180186 (= b_free!6977 (not b_next!6977))))

(declare-fun tp!86185 () Bool)

(declare-fun b_and!12293 () Bool)

(assert (=> b!180186 (= tp!86185 b_and!12293)))

(declare-fun b_free!6979 () Bool)

(declare-fun b_next!6979 () Bool)

(assert (=> b!180186 (= b_free!6979 (not b_next!6979))))

(declare-fun tp!86184 () Bool)

(declare-fun b_and!12295 () Bool)

(assert (=> b!180186 (= tp!86184 b_and!12295)))

(declare-fun bs!17954 () Bool)

(declare-fun b!180175 () Bool)

(declare-fun b!180204 () Bool)

(assert (= bs!17954 (and b!180175 b!180204)))

(declare-fun lambda!5312 () Int)

(declare-fun lambda!5311 () Int)

(assert (=> bs!17954 (not (= lambda!5312 lambda!5311))))

(declare-fun b!180216 () Bool)

(declare-fun e!109689 () Bool)

(assert (=> b!180216 (= e!109689 true)))

(declare-fun b!180215 () Bool)

(declare-fun e!109688 () Bool)

(assert (=> b!180215 (= e!109688 e!109689)))

(declare-fun b!180214 () Bool)

(declare-fun e!109687 () Bool)

(assert (=> b!180214 (= e!109687 e!109688)))

(assert (=> b!180175 e!109687))

(assert (= b!180215 b!180216))

(assert (= b!180214 b!180215))

(declare-datatypes ((List!3023 0))(
  ( (Nil!3013) (Cons!3013 (h!8410 (_ BitVec 16)) (t!28229 List!3023)) )
))
(declare-datatypes ((TokenValue!567 0))(
  ( (FloatLiteralValue!1134 (text!4414 List!3023)) (TokenValueExt!566 (__x!2621 Int)) (Broken!2835 (value!19822 List!3023)) (Object!576) (End!567) (Def!567) (Underscore!567) (Match!567) (Else!567) (Error!567) (Case!567) (If!567) (Extends!567) (Abstract!567) (Class!567) (Val!567) (DelimiterValue!1134 (del!627 List!3023)) (KeywordValue!573 (value!19823 List!3023)) (CommentValue!1134 (value!19824 List!3023)) (WhitespaceValue!1134 (value!19825 List!3023)) (IndentationValue!567 (value!19826 List!3023)) (String!3914) (Int32!567) (Broken!2836 (value!19827 List!3023)) (Boolean!568) (Unit!2757) (OperatorValue!570 (op!627 List!3023)) (IdentifierValue!1134 (value!19828 List!3023)) (IdentifierValue!1135 (value!19829 List!3023)) (WhitespaceValue!1135 (value!19830 List!3023)) (True!1134) (False!1134) (Broken!2837 (value!19831 List!3023)) (Broken!2838 (value!19832 List!3023)) (True!1135) (RightBrace!567) (RightBracket!567) (Colon!567) (Null!567) (Comma!567) (LeftBracket!567) (False!1135) (LeftBrace!567) (ImaginaryLiteralValue!567 (text!4415 List!3023)) (StringLiteralValue!1701 (value!19833 List!3023)) (EOFValue!567 (value!19834 List!3023)) (IdentValue!567 (value!19835 List!3023)) (DelimiterValue!1135 (value!19836 List!3023)) (DedentValue!567 (value!19837 List!3023)) (NewLineValue!567 (value!19838 List!3023)) (IntegerValue!1701 (value!19839 (_ BitVec 32)) (text!4416 List!3023)) (IntegerValue!1702 (value!19840 Int) (text!4417 List!3023)) (Times!567) (Or!567) (Equal!567) (Minus!567) (Broken!2839 (value!19841 List!3023)) (And!567) (Div!567) (LessEqual!567) (Mod!567) (Concat!1336) (Not!567) (Plus!567) (SpaceValue!567 (value!19842 List!3023)) (IntegerValue!1703 (value!19843 Int) (text!4418 List!3023)) (StringLiteralValue!1702 (text!4419 List!3023)) (FloatLiteralValue!1135 (text!4420 List!3023)) (BytesLiteralValue!567 (value!19844 List!3023)) (CommentValue!1135 (value!19845 List!3023)) (StringLiteralValue!1703 (value!19846 List!3023)) (ErrorTokenValue!567 (msg!628 List!3023)) )
))
(declare-datatypes ((C!2460 0))(
  ( (C!2461 (val!1116 Int)) )
))
(declare-datatypes ((List!3024 0))(
  ( (Nil!3014) (Cons!3014 (h!8411 C!2460) (t!28230 List!3024)) )
))
(declare-datatypes ((IArray!1825 0))(
  ( (IArray!1826 (innerList!970 List!3024)) )
))
(declare-datatypes ((Conc!912 0))(
  ( (Node!912 (left!2331 Conc!912) (right!2661 Conc!912) (csize!2054 Int) (cheight!1123 Int)) (Leaf!1524 (xs!3507 IArray!1825) (csize!2055 Int)) (Empty!912) )
))
(declare-datatypes ((BalanceConc!1832 0))(
  ( (BalanceConc!1833 (c!35301 Conc!912)) )
))
(declare-datatypes ((TokenValueInjection!906 0))(
  ( (TokenValueInjection!907 (toValue!1216 Int) (toChars!1075 Int)) )
))
(declare-datatypes ((String!3915 0))(
  ( (String!3916 (value!19847 String)) )
))
(declare-datatypes ((Regex!769 0))(
  ( (ElementMatch!769 (c!35302 C!2460)) (Concat!1337 (regOne!2050 Regex!769) (regTwo!2050 Regex!769)) (EmptyExpr!769) (Star!769 (reg!1098 Regex!769)) (EmptyLang!769) (Union!769 (regOne!2051 Regex!769) (regTwo!2051 Regex!769)) )
))
(declare-datatypes ((Rule!890 0))(
  ( (Rule!891 (regex!545 Regex!769) (tag!723 String!3915) (isSeparator!545 Bool) (transformation!545 TokenValueInjection!906)) )
))
(declare-datatypes ((List!3025 0))(
  ( (Nil!3015) (Cons!3015 (h!8412 Rule!890) (t!28231 List!3025)) )
))
(declare-fun rules!1920 () List!3025)

(get-info :version)

(assert (= (and b!180175 ((_ is Cons!3015) rules!1920)) b!180214))

(declare-fun order!1745 () Int)

(declare-fun order!1747 () Int)

(declare-fun dynLambda!1201 (Int Int) Int)

(declare-fun dynLambda!1202 (Int Int) Int)

(assert (=> b!180216 (< (dynLambda!1201 order!1745 (toValue!1216 (transformation!545 (h!8412 rules!1920)))) (dynLambda!1202 order!1747 lambda!5312))))

(declare-fun order!1749 () Int)

(declare-fun dynLambda!1203 (Int Int) Int)

(assert (=> b!180216 (< (dynLambda!1203 order!1749 (toChars!1075 (transformation!545 (h!8412 rules!1920)))) (dynLambda!1202 order!1747 lambda!5312))))

(assert (=> b!180175 true))

(declare-fun b!180173 () Bool)

(declare-fun e!109661 () Bool)

(declare-fun e!109677 () Bool)

(assert (=> b!180173 (= e!109661 e!109677)))

(declare-fun res!81597 () Bool)

(assert (=> b!180173 (=> res!81597 e!109677)))

(declare-fun lt!59134 () Bool)

(assert (=> b!180173 (= res!81597 (not lt!59134))))

(declare-fun e!109658 () Bool)

(assert (=> b!180173 e!109658))

(declare-fun res!81601 () Bool)

(assert (=> b!180173 (=> (not res!81601) (not e!109658))))

(declare-datatypes ((Token!834 0))(
  ( (Token!835 (value!19848 TokenValue!567) (rule!1060 Rule!890) (size!2469 Int) (originalCharacters!588 List!3024)) )
))
(declare-datatypes ((tuple2!2990 0))(
  ( (tuple2!2991 (_1!1711 Token!834) (_2!1711 List!3024)) )
))
(declare-fun lt!59147 () tuple2!2990)

(declare-datatypes ((List!3026 0))(
  ( (Nil!3016) (Cons!3016 (h!8413 Token!834) (t!28232 List!3026)) )
))
(declare-fun tokens!465 () List!3026)

(assert (=> b!180173 (= res!81601 (= (_1!1711 lt!59147) (h!8413 tokens!465)))))

(declare-datatypes ((Option!368 0))(
  ( (None!367) (Some!367 (v!13842 tuple2!2990)) )
))
(declare-fun lt!59131 () Option!368)

(declare-fun get!846 (Option!368) tuple2!2990)

(assert (=> b!180173 (= lt!59147 (get!846 lt!59131))))

(declare-fun isDefined!219 (Option!368) Bool)

(assert (=> b!180173 (isDefined!219 lt!59131)))

(declare-fun lt!59144 () List!3024)

(declare-datatypes ((LexerInterface!431 0))(
  ( (LexerInterfaceExt!428 (__x!2622 Int)) (Lexer!429) )
))
(declare-fun thiss!17480 () LexerInterface!431)

(declare-fun maxPrefix!161 (LexerInterface!431 List!3025 List!3024) Option!368)

(assert (=> b!180173 (= lt!59131 (maxPrefix!161 thiss!17480 rules!1920 lt!59144))))

(declare-fun b!180174 () Bool)

(declare-fun res!81598 () Bool)

(assert (=> b!180174 (=> (not res!81598) (not e!109658))))

(declare-fun isEmpty!1359 (List!3024) Bool)

(assert (=> b!180174 (= res!81598 (isEmpty!1359 (_2!1711 lt!59147)))))

(declare-fun e!109666 () Bool)

(assert (=> b!180175 (= e!109666 e!109661)))

(declare-fun res!81596 () Bool)

(assert (=> b!180175 (=> res!81596 e!109661)))

(declare-datatypes ((tuple2!2992 0))(
  ( (tuple2!2993 (_1!1712 Token!834) (_2!1712 BalanceConc!1832)) )
))
(declare-datatypes ((Option!369 0))(
  ( (None!368) (Some!368 (v!13843 tuple2!2992)) )
))
(declare-fun isDefined!220 (Option!369) Bool)

(declare-fun maxPrefixZipperSequence!124 (LexerInterface!431 List!3025 BalanceConc!1832) Option!369)

(declare-fun seqFromList!467 (List!3024) BalanceConc!1832)

(assert (=> b!180175 (= res!81596 (not (isDefined!220 (maxPrefixZipperSequence!124 thiss!17480 rules!1920 (seqFromList!467 (originalCharacters!588 (h!8413 tokens!465)))))))))

(declare-datatypes ((Unit!2758 0))(
  ( (Unit!2759) )
))
(declare-fun lt!59138 () Unit!2758)

(declare-fun forallContained!112 (List!3026 Int Token!834) Unit!2758)

(assert (=> b!180175 (= lt!59138 (forallContained!112 tokens!465 lambda!5312 (h!8413 tokens!465)))))

(assert (=> b!180175 (= lt!59144 (originalCharacters!588 (h!8413 tokens!465)))))

(declare-fun b!180176 () Bool)

(declare-fun res!81602 () Bool)

(assert (=> b!180176 (=> res!81602 e!109666)))

(declare-fun rulesProduceIndividualToken!180 (LexerInterface!431 List!3025 Token!834) Bool)

(assert (=> b!180176 (= res!81602 (not (rulesProduceIndividualToken!180 thiss!17480 rules!1920 (h!8413 tokens!465))))))

(declare-fun b!180177 () Bool)

(declare-fun e!109657 () Bool)

(declare-fun e!109654 () Bool)

(assert (=> b!180177 (= e!109657 e!109654)))

(declare-fun res!81591 () Bool)

(assert (=> b!180177 (=> (not res!81591) (not e!109654))))

(declare-fun lt!59133 () Option!368)

(assert (=> b!180177 (= res!81591 (isDefined!219 lt!59133))))

(declare-fun lt!59136 () List!3024)

(assert (=> b!180177 (= lt!59133 (maxPrefix!161 thiss!17480 rules!1920 lt!59136))))

(declare-fun b!180178 () Bool)

(declare-fun e!109667 () Bool)

(declare-fun e!109673 () Bool)

(assert (=> b!180178 (= e!109667 e!109673)))

(declare-fun res!81582 () Bool)

(assert (=> b!180178 (=> res!81582 e!109673)))

(declare-fun e!109656 () Bool)

(assert (=> b!180178 (= res!81582 e!109656)))

(declare-fun res!81595 () Bool)

(assert (=> b!180178 (=> (not res!81595) (not e!109656))))

(assert (=> b!180178 (= res!81595 (not lt!59134))))

(declare-fun lt!59145 () List!3024)

(assert (=> b!180178 (= lt!59134 (= lt!59136 lt!59145))))

(declare-fun b!180179 () Bool)

(declare-fun e!109668 () Bool)

(declare-fun e!109671 () Bool)

(assert (=> b!180179 (= e!109668 e!109671)))

(declare-fun res!81588 () Bool)

(assert (=> b!180179 (=> (not res!81588) (not e!109671))))

(declare-fun lt!59127 () List!3024)

(assert (=> b!180179 (= res!81588 (= lt!59136 lt!59127))))

(declare-fun separatorToken!170 () Token!834)

(declare-datatypes ((IArray!1827 0))(
  ( (IArray!1828 (innerList!971 List!3026)) )
))
(declare-datatypes ((Conc!913 0))(
  ( (Node!913 (left!2332 Conc!913) (right!2662 Conc!913) (csize!2056 Int) (cheight!1124 Int)) (Leaf!1525 (xs!3508 IArray!1827) (csize!2057 Int)) (Empty!913) )
))
(declare-datatypes ((BalanceConc!1834 0))(
  ( (BalanceConc!1835 (c!35303 Conc!913)) )
))
(declare-fun lt!59132 () BalanceConc!1834)

(declare-fun list!1107 (BalanceConc!1832) List!3024)

(declare-fun printWithSeparatorTokenWhenNeededRec!114 (LexerInterface!431 List!3025 BalanceConc!1834 Token!834 Int) BalanceConc!1832)

(assert (=> b!180179 (= lt!59127 (list!1107 (printWithSeparatorTokenWhenNeededRec!114 thiss!17480 rules!1920 lt!59132 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!124 (LexerInterface!431 List!3025 List!3026 Token!834) List!3024)

(assert (=> b!180179 (= lt!59136 (printWithSeparatorTokenWhenNeededList!124 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!180180 () Bool)

(declare-fun res!81594 () Bool)

(assert (=> b!180180 (=> (not res!81594) (not e!109668))))

(assert (=> b!180180 (= res!81594 ((_ is Cons!3016) tokens!465))))

(declare-fun b!180181 () Bool)

(declare-fun res!81583 () Bool)

(assert (=> b!180181 (=> (not res!81583) (not e!109668))))

(assert (=> b!180181 (= res!81583 (rulesProduceIndividualToken!180 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!109672 () Bool)

(declare-fun e!109674 () Bool)

(declare-fun tp!86180 () Bool)

(declare-fun b!180182 () Bool)

(declare-fun inv!3848 (Token!834) Bool)

(assert (=> b!180182 (= e!109674 (and (inv!3848 (h!8413 tokens!465)) e!109672 tp!86180))))

(declare-fun b!180183 () Bool)

(assert (=> b!180183 (= e!109677 true)))

(declare-fun lt!59130 () Bool)

(declare-fun rulesValidInductive!132 (LexerInterface!431 List!3025) Bool)

(assert (=> b!180183 (= lt!59130 (rulesValidInductive!132 thiss!17480 rules!1920))))

(declare-fun isPrefix!241 (List!3024 List!3024) Bool)

(assert (=> b!180183 (isPrefix!241 lt!59144 lt!59145)))

(declare-fun lt!59135 () Unit!2758)

(declare-fun lt!59137 () List!3024)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!136 (List!3024 List!3024) Unit!2758)

(assert (=> b!180183 (= lt!59135 (lemmaConcatTwoListThenFirstIsPrefix!136 lt!59144 lt!59137))))

(assert (=> b!180183 e!109657))

(declare-fun res!81592 () Bool)

(assert (=> b!180183 (=> res!81592 e!109657)))

(declare-fun isEmpty!1360 (List!3026) Bool)

(assert (=> b!180183 (= res!81592 (isEmpty!1360 tokens!465))))

(declare-fun lt!59129 () Unit!2758)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!6 (LexerInterface!431 List!3025 List!3026 Token!834) Unit!2758)

(assert (=> b!180183 (= lt!59129 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!6 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!109664 () Bool)

(assert (=> b!180184 (= e!109664 (and tp!86183 tp!86187))))

(declare-fun b!180185 () Bool)

(declare-fun lt!59146 () List!3024)

(declare-fun ++!708 (List!3024 List!3024) List!3024)

(assert (=> b!180185 (= e!109656 (not (= lt!59136 (++!708 lt!59144 lt!59146))))))

(declare-fun res!81587 () Bool)

(declare-fun e!109679 () Bool)

(assert (=> start!19502 (=> (not res!81587) (not e!109679))))

(assert (=> start!19502 (= res!81587 ((_ is Lexer!429) thiss!17480))))

(assert (=> start!19502 e!109679))

(assert (=> start!19502 true))

(declare-fun e!109680 () Bool)

(assert (=> start!19502 e!109680))

(declare-fun e!109663 () Bool)

(assert (=> start!19502 (and (inv!3848 separatorToken!170) e!109663)))

(assert (=> start!19502 e!109674))

(declare-fun e!109660 () Bool)

(assert (=> b!180186 (= e!109660 (and tp!86185 tp!86184))))

(declare-fun b!180187 () Bool)

(declare-fun res!81590 () Bool)

(assert (=> b!180187 (=> (not res!81590) (not e!109679))))

(declare-fun rulesInvariant!397 (LexerInterface!431 List!3025) Bool)

(assert (=> b!180187 (= res!81590 (rulesInvariant!397 thiss!17480 rules!1920))))

(declare-fun b!180188 () Bool)

(assert (=> b!180188 (= e!109673 e!109666)))

(declare-fun res!81600 () Bool)

(assert (=> b!180188 (=> res!81600 e!109666)))

(declare-fun lt!59142 () List!3024)

(declare-fun lt!59139 () List!3024)

(assert (=> b!180188 (= res!81600 (or (not (= lt!59139 lt!59142)) (not (= lt!59142 lt!59144)) (not (= lt!59139 lt!59144))))))

(declare-fun printList!115 (LexerInterface!431 List!3026) List!3024)

(assert (=> b!180188 (= lt!59142 (printList!115 thiss!17480 (Cons!3016 (h!8413 tokens!465) Nil!3016)))))

(declare-fun lt!59140 () BalanceConc!1832)

(assert (=> b!180188 (= lt!59139 (list!1107 lt!59140))))

(declare-fun lt!59143 () BalanceConc!1834)

(declare-fun printTailRec!125 (LexerInterface!431 BalanceConc!1834 Int BalanceConc!1832) BalanceConc!1832)

(assert (=> b!180188 (= lt!59140 (printTailRec!125 thiss!17480 lt!59143 0 (BalanceConc!1833 Empty!912)))))

(declare-fun print!162 (LexerInterface!431 BalanceConc!1834) BalanceConc!1832)

(assert (=> b!180188 (= lt!59140 (print!162 thiss!17480 lt!59143))))

(declare-fun singletonSeq!97 (Token!834) BalanceConc!1834)

(assert (=> b!180188 (= lt!59143 (singletonSeq!97 (h!8413 tokens!465)))))

(declare-fun e!109676 () Bool)

(assert (=> b!180189 (= e!109676 (and tp!86177 tp!86179))))

(declare-fun e!109675 () Bool)

(declare-fun b!180190 () Bool)

(declare-fun tp!86181 () Bool)

(declare-fun inv!3845 (String!3915) Bool)

(declare-fun inv!3849 (TokenValueInjection!906) Bool)

(assert (=> b!180190 (= e!109675 (and tp!86181 (inv!3845 (tag!723 (h!8412 rules!1920))) (inv!3849 (transformation!545 (h!8412 rules!1920))) e!109660))))

(declare-fun b!180191 () Bool)

(assert (=> b!180191 (= e!109671 (not e!109667))))

(declare-fun res!81603 () Bool)

(assert (=> b!180191 (=> res!81603 e!109667)))

(declare-fun seqFromList!468 (List!3026) BalanceConc!1834)

(assert (=> b!180191 (= res!81603 (not (= lt!59146 (list!1107 (printWithSeparatorTokenWhenNeededRec!114 thiss!17480 rules!1920 (seqFromList!468 (t!28232 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!59128 () List!3024)

(assert (=> b!180191 (= lt!59128 lt!59145)))

(assert (=> b!180191 (= lt!59145 (++!708 lt!59144 lt!59137))))

(declare-fun lt!59148 () List!3024)

(assert (=> b!180191 (= lt!59128 (++!708 (++!708 lt!59144 lt!59148) lt!59146))))

(declare-fun lt!59141 () Unit!2758)

(declare-fun lemmaConcatAssociativity!234 (List!3024 List!3024 List!3024) Unit!2758)

(assert (=> b!180191 (= lt!59141 (lemmaConcatAssociativity!234 lt!59144 lt!59148 lt!59146))))

(declare-fun charsOf!200 (Token!834) BalanceConc!1832)

(assert (=> b!180191 (= lt!59144 (list!1107 (charsOf!200 (h!8413 tokens!465))))))

(assert (=> b!180191 (= lt!59137 (++!708 lt!59148 lt!59146))))

(assert (=> b!180191 (= lt!59146 (printWithSeparatorTokenWhenNeededList!124 thiss!17480 rules!1920 (t!28232 tokens!465) separatorToken!170))))

(assert (=> b!180191 (= lt!59148 (list!1107 (charsOf!200 separatorToken!170)))))

(declare-fun b!180192 () Bool)

(declare-fun res!81599 () Bool)

(assert (=> b!180192 (=> (not res!81599) (not e!109668))))

(assert (=> b!180192 (= res!81599 (isSeparator!545 (rule!1060 separatorToken!170)))))

(declare-fun b!180193 () Bool)

(declare-fun res!81586 () Bool)

(assert (=> b!180193 (=> (not res!81586) (not e!109679))))

(declare-fun isEmpty!1361 (List!3025) Bool)

(assert (=> b!180193 (= res!81586 (not (isEmpty!1361 rules!1920)))))

(declare-fun b!180194 () Bool)

(declare-fun res!81593 () Bool)

(assert (=> b!180194 (=> res!81593 e!109666)))

(declare-fun isEmpty!1362 (BalanceConc!1834) Bool)

(declare-datatypes ((tuple2!2994 0))(
  ( (tuple2!2995 (_1!1713 BalanceConc!1834) (_2!1713 BalanceConc!1832)) )
))
(declare-fun lex!231 (LexerInterface!431 List!3025 BalanceConc!1832) tuple2!2994)

(assert (=> b!180194 (= res!81593 (isEmpty!1362 (_1!1713 (lex!231 thiss!17480 rules!1920 (seqFromList!467 lt!59144)))))))

(declare-fun b!180195 () Bool)

(assert (=> b!180195 (= e!109679 e!109668)))

(declare-fun res!81585 () Bool)

(assert (=> b!180195 (=> (not res!81585) (not e!109668))))

(declare-fun rulesProduceEachTokenIndividually!223 (LexerInterface!431 List!3025 BalanceConc!1834) Bool)

(assert (=> b!180195 (= res!81585 (rulesProduceEachTokenIndividually!223 thiss!17480 rules!1920 lt!59132))))

(assert (=> b!180195 (= lt!59132 (seqFromList!468 tokens!465))))

(declare-fun e!109678 () Bool)

(declare-fun b!180196 () Bool)

(declare-fun tp!86188 () Bool)

(assert (=> b!180196 (= e!109678 (and tp!86188 (inv!3845 (tag!723 (rule!1060 separatorToken!170))) (inv!3849 (transformation!545 (rule!1060 separatorToken!170))) e!109664))))

(declare-fun b!180197 () Bool)

(declare-fun tp!86182 () Bool)

(declare-fun inv!21 (TokenValue!567) Bool)

(assert (=> b!180197 (= e!109663 (and (inv!21 (value!19848 separatorToken!170)) e!109678 tp!86182))))

(declare-fun b!180198 () Bool)

(declare-fun tp!86186 () Bool)

(assert (=> b!180198 (= e!109680 (and e!109675 tp!86186))))

(declare-fun b!180199 () Bool)

(declare-fun res!81581 () Bool)

(assert (=> b!180199 (=> (not res!81581) (not e!109668))))

(declare-fun sepAndNonSepRulesDisjointChars!134 (List!3025 List!3025) Bool)

(assert (=> b!180199 (= res!81581 (sepAndNonSepRulesDisjointChars!134 rules!1920 rules!1920))))

(declare-fun b!180200 () Bool)

(declare-fun matchR!107 (Regex!769 List!3024) Bool)

(assert (=> b!180200 (= e!109658 (matchR!107 (regex!545 (rule!1060 (h!8413 tokens!465))) lt!59144))))

(declare-fun e!109665 () Bool)

(declare-fun tp!86189 () Bool)

(declare-fun b!180201 () Bool)

(assert (=> b!180201 (= e!109665 (and tp!86189 (inv!3845 (tag!723 (rule!1060 (h!8413 tokens!465)))) (inv!3849 (transformation!545 (rule!1060 (h!8413 tokens!465)))) e!109676))))

(declare-fun b!180202 () Bool)

(declare-fun res!81589 () Bool)

(assert (=> b!180202 (=> (not res!81589) (not e!109671))))

(assert (=> b!180202 (= res!81589 (= (list!1107 (seqFromList!467 lt!59136)) lt!59127))))

(declare-fun b!180203 () Bool)

(declare-fun head!622 (List!3026) Token!834)

(assert (=> b!180203 (= e!109654 (= (_1!1711 (get!846 lt!59133)) (head!622 tokens!465)))))

(declare-fun res!81584 () Bool)

(assert (=> b!180204 (=> (not res!81584) (not e!109668))))

(declare-fun forall!613 (List!3026 Int) Bool)

(assert (=> b!180204 (= res!81584 (forall!613 tokens!465 lambda!5311))))

(declare-fun tp!86178 () Bool)

(declare-fun b!180205 () Bool)

(assert (=> b!180205 (= e!109672 (and (inv!21 (value!19848 (h!8413 tokens!465))) e!109665 tp!86178))))

(assert (= (and start!19502 res!81587) b!180193))

(assert (= (and b!180193 res!81586) b!180187))

(assert (= (and b!180187 res!81590) b!180195))

(assert (= (and b!180195 res!81585) b!180181))

(assert (= (and b!180181 res!81583) b!180192))

(assert (= (and b!180192 res!81599) b!180204))

(assert (= (and b!180204 res!81584) b!180199))

(assert (= (and b!180199 res!81581) b!180180))

(assert (= (and b!180180 res!81594) b!180179))

(assert (= (and b!180179 res!81588) b!180202))

(assert (= (and b!180202 res!81589) b!180191))

(assert (= (and b!180191 (not res!81603)) b!180178))

(assert (= (and b!180178 res!81595) b!180185))

(assert (= (and b!180178 (not res!81582)) b!180188))

(assert (= (and b!180188 (not res!81600)) b!180176))

(assert (= (and b!180176 (not res!81602)) b!180194))

(assert (= (and b!180194 (not res!81593)) b!180175))

(assert (= (and b!180175 (not res!81596)) b!180173))

(assert (= (and b!180173 res!81601) b!180174))

(assert (= (and b!180174 res!81598) b!180200))

(assert (= (and b!180173 (not res!81597)) b!180183))

(assert (= (and b!180183 (not res!81592)) b!180177))

(assert (= (and b!180177 res!81591) b!180203))

(assert (= b!180190 b!180186))

(assert (= b!180198 b!180190))

(assert (= (and start!19502 ((_ is Cons!3015) rules!1920)) b!180198))

(assert (= b!180196 b!180184))

(assert (= b!180197 b!180196))

(assert (= start!19502 b!180197))

(assert (= b!180201 b!180189))

(assert (= b!180205 b!180201))

(assert (= b!180182 b!180205))

(assert (= (and start!19502 ((_ is Cons!3016) tokens!465)) b!180182))

(declare-fun m!182437 () Bool)

(assert (=> b!180190 m!182437))

(declare-fun m!182439 () Bool)

(assert (=> b!180190 m!182439))

(declare-fun m!182441 () Bool)

(assert (=> start!19502 m!182441))

(declare-fun m!182443 () Bool)

(assert (=> b!180199 m!182443))

(declare-fun m!182445 () Bool)

(assert (=> b!180205 m!182445))

(declare-fun m!182447 () Bool)

(assert (=> b!180203 m!182447))

(declare-fun m!182449 () Bool)

(assert (=> b!180203 m!182449))

(declare-fun m!182451 () Bool)

(assert (=> b!180197 m!182451))

(declare-fun m!182453 () Bool)

(assert (=> b!180177 m!182453))

(declare-fun m!182455 () Bool)

(assert (=> b!180177 m!182455))

(declare-fun m!182457 () Bool)

(assert (=> b!180175 m!182457))

(assert (=> b!180175 m!182457))

(declare-fun m!182459 () Bool)

(assert (=> b!180175 m!182459))

(assert (=> b!180175 m!182459))

(declare-fun m!182461 () Bool)

(assert (=> b!180175 m!182461))

(declare-fun m!182463 () Bool)

(assert (=> b!180175 m!182463))

(declare-fun m!182465 () Bool)

(assert (=> b!180194 m!182465))

(assert (=> b!180194 m!182465))

(declare-fun m!182467 () Bool)

(assert (=> b!180194 m!182467))

(declare-fun m!182469 () Bool)

(assert (=> b!180194 m!182469))

(declare-fun m!182471 () Bool)

(assert (=> b!180185 m!182471))

(declare-fun m!182473 () Bool)

(assert (=> b!180187 m!182473))

(declare-fun m!182475 () Bool)

(assert (=> b!180183 m!182475))

(declare-fun m!182477 () Bool)

(assert (=> b!180183 m!182477))

(declare-fun m!182479 () Bool)

(assert (=> b!180183 m!182479))

(declare-fun m!182481 () Bool)

(assert (=> b!180183 m!182481))

(declare-fun m!182483 () Bool)

(assert (=> b!180183 m!182483))

(declare-fun m!182485 () Bool)

(assert (=> b!180179 m!182485))

(assert (=> b!180179 m!182485))

(declare-fun m!182487 () Bool)

(assert (=> b!180179 m!182487))

(declare-fun m!182489 () Bool)

(assert (=> b!180179 m!182489))

(declare-fun m!182491 () Bool)

(assert (=> b!180201 m!182491))

(declare-fun m!182493 () Bool)

(assert (=> b!180201 m!182493))

(declare-fun m!182495 () Bool)

(assert (=> b!180176 m!182495))

(declare-fun m!182497 () Bool)

(assert (=> b!180188 m!182497))

(declare-fun m!182499 () Bool)

(assert (=> b!180188 m!182499))

(declare-fun m!182501 () Bool)

(assert (=> b!180188 m!182501))

(declare-fun m!182503 () Bool)

(assert (=> b!180188 m!182503))

(declare-fun m!182505 () Bool)

(assert (=> b!180188 m!182505))

(declare-fun m!182507 () Bool)

(assert (=> b!180173 m!182507))

(declare-fun m!182509 () Bool)

(assert (=> b!180173 m!182509))

(declare-fun m!182511 () Bool)

(assert (=> b!180173 m!182511))

(declare-fun m!182513 () Bool)

(assert (=> b!180193 m!182513))

(declare-fun m!182515 () Bool)

(assert (=> b!180181 m!182515))

(declare-fun m!182517 () Bool)

(assert (=> b!180202 m!182517))

(assert (=> b!180202 m!182517))

(declare-fun m!182519 () Bool)

(assert (=> b!180202 m!182519))

(declare-fun m!182521 () Bool)

(assert (=> b!180204 m!182521))

(declare-fun m!182523 () Bool)

(assert (=> b!180196 m!182523))

(declare-fun m!182525 () Bool)

(assert (=> b!180196 m!182525))

(declare-fun m!182527 () Bool)

(assert (=> b!180182 m!182527))

(declare-fun m!182529 () Bool)

(assert (=> b!180200 m!182529))

(declare-fun m!182531 () Bool)

(assert (=> b!180174 m!182531))

(declare-fun m!182533 () Bool)

(assert (=> b!180191 m!182533))

(declare-fun m!182535 () Bool)

(assert (=> b!180191 m!182535))

(declare-fun m!182537 () Bool)

(assert (=> b!180191 m!182537))

(declare-fun m!182539 () Bool)

(assert (=> b!180191 m!182539))

(declare-fun m!182541 () Bool)

(assert (=> b!180191 m!182541))

(assert (=> b!180191 m!182539))

(declare-fun m!182543 () Bool)

(assert (=> b!180191 m!182543))

(declare-fun m!182545 () Bool)

(assert (=> b!180191 m!182545))

(declare-fun m!182547 () Bool)

(assert (=> b!180191 m!182547))

(assert (=> b!180191 m!182533))

(declare-fun m!182549 () Bool)

(assert (=> b!180191 m!182549))

(declare-fun m!182551 () Bool)

(assert (=> b!180191 m!182551))

(assert (=> b!180191 m!182545))

(assert (=> b!180191 m!182551))

(declare-fun m!182553 () Bool)

(assert (=> b!180191 m!182553))

(declare-fun m!182555 () Bool)

(assert (=> b!180191 m!182555))

(assert (=> b!180191 m!182549))

(declare-fun m!182557 () Bool)

(assert (=> b!180191 m!182557))

(declare-fun m!182559 () Bool)

(assert (=> b!180195 m!182559))

(declare-fun m!182561 () Bool)

(assert (=> b!180195 m!182561))

(check-sat (not b!180197) (not b!180194) (not b!180203) (not b!180185) (not b!180190) (not b!180196) (not b!180193) b_and!12287 (not b!180174) (not b!180177) (not b_next!6969) (not b!180187) (not b!180200) (not b!180198) (not b!180175) b_and!12295 (not b_next!6973) (not b!180199) b_and!12291 (not b!180179) (not b!180195) (not start!19502) b_and!12293 (not b_next!6979) b_and!12289 (not b!180202) (not b_next!6977) b_and!12285 (not b!180205) (not b!180182) (not b!180214) (not b!180188) (not b!180204) (not b!180176) (not b!180181) (not b!180201) (not b!180191) (not b_next!6975) (not b_next!6971) (not b!180173) (not b!180183))
(check-sat b_and!12291 b_and!12293 b_and!12287 (not b_next!6969) b_and!12295 (not b_next!6973) (not b_next!6979) b_and!12289 (not b_next!6977) b_and!12285 (not b_next!6975) (not b_next!6971))

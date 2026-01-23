; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!169766 () Bool)

(assert start!169766)

(declare-fun b!1728687 () Bool)

(declare-fun b_free!47267 () Bool)

(declare-fun b_next!47971 () Bool)

(assert (=> b!1728687 (= b_free!47267 (not b_next!47971))))

(declare-fun tp!493135 () Bool)

(declare-fun b_and!127175 () Bool)

(assert (=> b!1728687 (= tp!493135 b_and!127175)))

(declare-fun b_free!47269 () Bool)

(declare-fun b_next!47973 () Bool)

(assert (=> b!1728687 (= b_free!47269 (not b_next!47973))))

(declare-fun tp!493143 () Bool)

(declare-fun b_and!127177 () Bool)

(assert (=> b!1728687 (= tp!493143 b_and!127177)))

(declare-fun b!1728682 () Bool)

(declare-fun b_free!47271 () Bool)

(declare-fun b_next!47975 () Bool)

(assert (=> b!1728682 (= b_free!47271 (not b_next!47975))))

(declare-fun tp!493140 () Bool)

(declare-fun b_and!127179 () Bool)

(assert (=> b!1728682 (= tp!493140 b_and!127179)))

(declare-fun b_free!47273 () Bool)

(declare-fun b_next!47977 () Bool)

(assert (=> b!1728682 (= b_free!47273 (not b_next!47977))))

(declare-fun tp!493138 () Bool)

(declare-fun b_and!127181 () Bool)

(assert (=> b!1728682 (= tp!493138 b_and!127181)))

(declare-fun b!1728670 () Bool)

(declare-fun b_free!47275 () Bool)

(declare-fun b_next!47979 () Bool)

(assert (=> b!1728670 (= b_free!47275 (not b_next!47979))))

(declare-fun tp!493142 () Bool)

(declare-fun b_and!127183 () Bool)

(assert (=> b!1728670 (= tp!493142 b_and!127183)))

(declare-fun b_free!47277 () Bool)

(declare-fun b_next!47981 () Bool)

(assert (=> b!1728670 (= b_free!47277 (not b_next!47981))))

(declare-fun tp!493133 () Bool)

(declare-fun b_and!127185 () Bool)

(assert (=> b!1728670 (= tp!493133 b_and!127185)))

(declare-fun b!1728698 () Bool)

(declare-fun e!1105971 () Bool)

(assert (=> b!1728698 (= e!1105971 true)))

(declare-fun b!1728697 () Bool)

(declare-fun e!1105970 () Bool)

(assert (=> b!1728697 (= e!1105970 e!1105971)))

(declare-fun b!1728696 () Bool)

(declare-fun e!1105969 () Bool)

(assert (=> b!1728696 (= e!1105969 e!1105970)))

(declare-fun b!1728681 () Bool)

(assert (=> b!1728681 e!1105969))

(assert (= b!1728697 b!1728698))

(assert (= b!1728696 b!1728697))

(assert (= b!1728681 b!1728696))

(declare-fun order!11655 () Int)

(declare-datatypes ((List!19020 0))(
  ( (Nil!18950) (Cons!18950 (h!24351 (_ BitVec 16)) (t!160451 List!19020)) )
))
(declare-datatypes ((TokenValue!3453 0))(
  ( (FloatLiteralValue!6906 (text!24616 List!19020)) (TokenValueExt!3452 (__x!12208 Int)) (Broken!17265 (value!105492 List!19020)) (Object!3522) (End!3453) (Def!3453) (Underscore!3453) (Match!3453) (Else!3453) (Error!3453) (Case!3453) (If!3453) (Extends!3453) (Abstract!3453) (Class!3453) (Val!3453) (DelimiterValue!6906 (del!3513 List!19020)) (KeywordValue!3459 (value!105493 List!19020)) (CommentValue!6906 (value!105494 List!19020)) (WhitespaceValue!6906 (value!105495 List!19020)) (IndentationValue!3453 (value!105496 List!19020)) (String!21596) (Int32!3453) (Broken!17266 (value!105497 List!19020)) (Boolean!3454) (Unit!32802) (OperatorValue!3456 (op!3513 List!19020)) (IdentifierValue!6906 (value!105498 List!19020)) (IdentifierValue!6907 (value!105499 List!19020)) (WhitespaceValue!6907 (value!105500 List!19020)) (True!6906) (False!6906) (Broken!17267 (value!105501 List!19020)) (Broken!17268 (value!105502 List!19020)) (True!6907) (RightBrace!3453) (RightBracket!3453) (Colon!3453) (Null!3453) (Comma!3453) (LeftBracket!3453) (False!6907) (LeftBrace!3453) (ImaginaryLiteralValue!3453 (text!24617 List!19020)) (StringLiteralValue!10359 (value!105503 List!19020)) (EOFValue!3453 (value!105504 List!19020)) (IdentValue!3453 (value!105505 List!19020)) (DelimiterValue!6907 (value!105506 List!19020)) (DedentValue!3453 (value!105507 List!19020)) (NewLineValue!3453 (value!105508 List!19020)) (IntegerValue!10359 (value!105509 (_ BitVec 32)) (text!24618 List!19020)) (IntegerValue!10360 (value!105510 Int) (text!24619 List!19020)) (Times!3453) (Or!3453) (Equal!3453) (Minus!3453) (Broken!17269 (value!105511 List!19020)) (And!3453) (Div!3453) (LessEqual!3453) (Mod!3453) (Concat!8144) (Not!3453) (Plus!3453) (SpaceValue!3453 (value!105512 List!19020)) (IntegerValue!10361 (value!105513 Int) (text!24620 List!19020)) (StringLiteralValue!10360 (text!24621 List!19020)) (FloatLiteralValue!6907 (text!24622 List!19020)) (BytesLiteralValue!3453 (value!105514 List!19020)) (CommentValue!6907 (value!105515 List!19020)) (StringLiteralValue!10361 (value!105516 List!19020)) (ErrorTokenValue!3453 (msg!3514 List!19020)) )
))
(declare-datatypes ((C!9556 0))(
  ( (C!9557 (val!5374 Int)) )
))
(declare-datatypes ((List!19021 0))(
  ( (Nil!18951) (Cons!18951 (h!24352 C!9556) (t!160452 List!19021)) )
))
(declare-datatypes ((Regex!4691 0))(
  ( (ElementMatch!4691 (c!282496 C!9556)) (Concat!8145 (regOne!9894 Regex!4691) (regTwo!9894 Regex!4691)) (EmptyExpr!4691) (Star!4691 (reg!5020 Regex!4691)) (EmptyLang!4691) (Union!4691 (regOne!9895 Regex!4691) (regTwo!9895 Regex!4691)) )
))
(declare-datatypes ((String!21597 0))(
  ( (String!21598 (value!105517 String)) )
))
(declare-datatypes ((IArray!12611 0))(
  ( (IArray!12612 (innerList!6363 List!19021)) )
))
(declare-datatypes ((Conc!6303 0))(
  ( (Node!6303 (left!15134 Conc!6303) (right!15464 Conc!6303) (csize!12836 Int) (cheight!6514 Int)) (Leaf!9205 (xs!9179 IArray!12611) (csize!12837 Int)) (Empty!6303) )
))
(declare-datatypes ((BalanceConc!12550 0))(
  ( (BalanceConc!12551 (c!282497 Conc!6303)) )
))
(declare-datatypes ((TokenValueInjection!6566 0))(
  ( (TokenValueInjection!6567 (toValue!4870 Int) (toChars!4729 Int)) )
))
(declare-datatypes ((Rule!6526 0))(
  ( (Rule!6527 (regex!3363 Regex!4691) (tag!3685 String!21597) (isSeparator!3363 Bool) (transformation!3363 TokenValueInjection!6566)) )
))
(declare-datatypes ((Token!6292 0))(
  ( (Token!6293 (value!105518 TokenValue!3453) (rule!5333 Rule!6526) (size!15058 Int) (originalCharacters!4177 List!19021)) )
))
(declare-datatypes ((tuple2!18630 0))(
  ( (tuple2!18631 (_1!10717 Token!6292) (_2!10717 List!19021)) )
))
(declare-fun lt!662758 () tuple2!18630)

(declare-fun order!11657 () Int)

(declare-fun lambda!69314 () Int)

(declare-fun dynLambda!8814 (Int Int) Int)

(declare-fun dynLambda!8815 (Int Int) Int)

(assert (=> b!1728698 (< (dynLambda!8814 order!11655 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) (dynLambda!8815 order!11657 lambda!69314))))

(declare-fun order!11659 () Int)

(declare-fun dynLambda!8816 (Int Int) Int)

(assert (=> b!1728698 (< (dynLambda!8816 order!11659 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) (dynLambda!8815 order!11657 lambda!69314))))

(declare-fun b!1728657 () Bool)

(declare-fun res!776172 () Bool)

(declare-fun e!1105957 () Bool)

(assert (=> b!1728657 (=> (not res!776172) (not e!1105957))))

(declare-datatypes ((LexerInterface!2992 0))(
  ( (LexerInterfaceExt!2989 (__x!12209 Int)) (Lexer!2990) )
))
(declare-fun thiss!24550 () LexerInterface!2992)

(declare-datatypes ((List!19022 0))(
  ( (Nil!18952) (Cons!18952 (h!24353 Rule!6526) (t!160453 List!19022)) )
))
(declare-fun rules!3447 () List!19022)

(declare-fun rulesInvariant!2661 (LexerInterface!2992 List!19022) Bool)

(assert (=> b!1728657 (= res!776172 (rulesInvariant!2661 thiss!24550 rules!3447))))

(declare-fun b!1728658 () Bool)

(declare-fun e!1105956 () Bool)

(declare-fun e!1105962 () Bool)

(assert (=> b!1728658 (= e!1105956 e!1105962)))

(declare-fun res!776176 () Bool)

(assert (=> b!1728658 (=> (not res!776176) (not e!1105962))))

(declare-fun lt!662755 () Rule!6526)

(declare-fun matchR!2165 (Regex!4691 List!19021) Bool)

(declare-fun list!7660 (BalanceConc!12550) List!19021)

(declare-fun charsOf!2012 (Token!6292) BalanceConc!12550)

(assert (=> b!1728658 (= res!776176 (matchR!2165 (regex!3363 lt!662755) (list!7660 (charsOf!2012 (_1!10717 lt!662758)))))))

(declare-datatypes ((Option!3750 0))(
  ( (None!3749) (Some!3749 (v!25164 Rule!6526)) )
))
(declare-fun lt!662752 () Option!3750)

(declare-fun get!5649 (Option!3750) Rule!6526)

(assert (=> b!1728658 (= lt!662755 (get!5649 lt!662752))))

(declare-fun b!1728659 () Bool)

(declare-fun e!1105953 () Bool)

(declare-fun e!1105943 () Bool)

(assert (=> b!1728659 (= e!1105953 e!1105943)))

(declare-fun res!776187 () Bool)

(assert (=> b!1728659 (=> res!776187 e!1105943)))

(declare-fun lt!662762 () Int)

(declare-fun lt!662735 () BalanceConc!12550)

(declare-fun size!15059 (BalanceConc!12550) Int)

(assert (=> b!1728659 (= res!776187 (<= lt!662762 (size!15059 lt!662735)))))

(declare-fun lt!662749 () Regex!4691)

(declare-fun lt!662744 () List!19021)

(assert (=> b!1728659 (matchR!2165 lt!662749 lt!662744)))

(declare-fun rule!422 () Rule!6526)

(declare-fun token!523 () Token!6292)

(declare-datatypes ((Unit!32803 0))(
  ( (Unit!32804) )
))
(declare-fun lt!662750 () Unit!32803)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!112 (LexerInterface!2992 List!19022 List!19021 Token!6292 Rule!6526 List!19021) Unit!32803)

(assert (=> b!1728659 (= lt!662750 (lemmaMaxPrefixThenMatchesRulesRegex!112 thiss!24550 rules!3447 lt!662744 token!523 rule!422 Nil!18951))))

(declare-fun b!1728660 () Bool)

(declare-fun e!1105954 () Bool)

(assert (=> b!1728660 (= e!1105957 e!1105954)))

(declare-fun res!776173 () Bool)

(assert (=> b!1728660 (=> (not res!776173) (not e!1105954))))

(declare-datatypes ((Option!3751 0))(
  ( (None!3750) (Some!3750 (v!25165 tuple2!18630)) )
))
(declare-fun lt!662741 () Option!3751)

(declare-fun isDefined!3093 (Option!3751) Bool)

(assert (=> b!1728660 (= res!776173 (isDefined!3093 lt!662741))))

(declare-fun maxPrefix!1546 (LexerInterface!2992 List!19022 List!19021) Option!3751)

(assert (=> b!1728660 (= lt!662741 (maxPrefix!1546 thiss!24550 rules!3447 lt!662744))))

(assert (=> b!1728660 (= lt!662744 (list!7660 lt!662735))))

(assert (=> b!1728660 (= lt!662735 (charsOf!2012 token!523))))

(declare-fun b!1728661 () Bool)

(declare-fun res!776188 () Bool)

(declare-fun e!1105946 () Bool)

(assert (=> b!1728661 (=> (not res!776188) (not e!1105946))))

(assert (=> b!1728661 (= res!776188 (= (rule!5333 token!523) rule!422))))

(declare-fun b!1728662 () Bool)

(declare-fun e!1105949 () Bool)

(declare-fun suffix!1421 () List!19021)

(assert (=> b!1728662 (= e!1105949 (not (= suffix!1421 Nil!18951)))))

(declare-fun lt!662753 () List!19021)

(declare-fun lt!662732 () List!19021)

(declare-fun isPrefix!1604 (List!19021 List!19021) Bool)

(declare-fun ++!5188 (List!19021 List!19021) List!19021)

(declare-fun head!3928 (List!19021) C!9556)

(assert (=> b!1728662 (isPrefix!1604 (++!5188 lt!662744 (Cons!18951 (head!3928 lt!662753) Nil!18951)) lt!662732)))

(declare-fun lt!662751 () Unit!32803)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!199 (List!19021 List!19021) Unit!32803)

(assert (=> b!1728662 (= lt!662751 (lemmaAddHeadSuffixToPrefixStillPrefix!199 lt!662744 lt!662732))))

(declare-fun b!1728664 () Bool)

(declare-fun e!1105960 () Bool)

(declare-fun e!1105940 () Bool)

(assert (=> b!1728664 (= e!1105960 e!1105940)))

(declare-fun res!776180 () Bool)

(assert (=> b!1728664 (=> res!776180 e!1105940)))

(declare-fun lt!662734 () List!19021)

(declare-fun lt!662748 () BalanceConc!12550)

(declare-fun dynLambda!8817 (Int TokenValue!3453) BalanceConc!12550)

(declare-fun dynLambda!8818 (Int BalanceConc!12550) TokenValue!3453)

(assert (=> b!1728664 (= res!776180 (not (= (list!7660 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748))) lt!662734)))))

(declare-fun lt!662754 () Unit!32803)

(declare-fun lemmaSemiInverse!509 (TokenValueInjection!6566 BalanceConc!12550) Unit!32803)

(assert (=> b!1728664 (= lt!662754 (lemmaSemiInverse!509 (transformation!3363 (rule!5333 (_1!10717 lt!662758))) lt!662748))))

(declare-fun b!1728665 () Bool)

(assert (=> b!1728665 (= e!1105954 e!1105946)))

(declare-fun res!776171 () Bool)

(assert (=> b!1728665 (=> (not res!776171) (not e!1105946))))

(declare-fun lt!662745 () tuple2!18630)

(assert (=> b!1728665 (= res!776171 (= (_1!10717 lt!662745) token!523))))

(declare-fun get!5650 (Option!3751) tuple2!18630)

(assert (=> b!1728665 (= lt!662745 (get!5650 lt!662741))))

(declare-fun b!1728666 () Bool)

(declare-fun res!776181 () Bool)

(assert (=> b!1728666 (=> (not res!776181) (not e!1105946))))

(declare-fun isEmpty!11921 (List!19021) Bool)

(assert (=> b!1728666 (= res!776181 (isEmpty!11921 (_2!10717 lt!662745)))))

(declare-fun b!1728667 () Bool)

(declare-fun res!776183 () Bool)

(declare-fun e!1105958 () Bool)

(assert (=> b!1728667 (=> res!776183 e!1105958)))

(assert (=> b!1728667 (= res!776183 (not (matchR!2165 (regex!3363 (rule!5333 (_1!10717 lt!662758))) lt!662734)))))

(declare-fun b!1728668 () Bool)

(declare-fun e!1105947 () Bool)

(assert (=> b!1728668 (= e!1105940 e!1105947)))

(declare-fun res!776174 () Bool)

(assert (=> b!1728668 (=> res!776174 e!1105947)))

(declare-fun lt!662733 () TokenValue!3453)

(declare-fun lt!662738 () Option!3751)

(assert (=> b!1728668 (= res!776174 (not (= lt!662738 (Some!3750 (tuple2!18631 (Token!6293 lt!662733 (rule!5333 (_1!10717 lt!662758)) lt!662762 lt!662734) (_2!10717 lt!662758))))))))

(assert (=> b!1728668 (= lt!662762 (size!15059 lt!662748))))

(declare-fun apply!5168 (TokenValueInjection!6566 BalanceConc!12550) TokenValue!3453)

(assert (=> b!1728668 (= lt!662733 (apply!5168 (transformation!3363 (rule!5333 (_1!10717 lt!662758))) lt!662748))))

(declare-fun lt!662761 () Unit!32803)

(declare-fun lemmaCharactersSize!435 (Token!6292) Unit!32803)

(assert (=> b!1728668 (= lt!662761 (lemmaCharactersSize!435 (_1!10717 lt!662758)))))

(declare-fun lt!662759 () Unit!32803)

(declare-fun lemmaEqSameImage!288 (TokenValueInjection!6566 BalanceConc!12550 BalanceConc!12550) Unit!32803)

(declare-fun seqFromList!2337 (List!19021) BalanceConc!12550)

(assert (=> b!1728668 (= lt!662759 (lemmaEqSameImage!288 (transformation!3363 (rule!5333 (_1!10717 lt!662758))) lt!662748 (seqFromList!2337 (originalCharacters!4177 (_1!10717 lt!662758)))))))

(declare-fun tp!493136 () Bool)

(declare-fun e!1105936 () Bool)

(declare-fun b!1728669 () Bool)

(declare-fun e!1105948 () Bool)

(declare-fun inv!24501 (String!21597) Bool)

(declare-fun inv!24506 (TokenValueInjection!6566) Bool)

(assert (=> b!1728669 (= e!1105948 (and tp!493136 (inv!24501 (tag!3685 (h!24353 rules!3447))) (inv!24506 (transformation!3363 (h!24353 rules!3447))) e!1105936))))

(declare-fun e!1105945 () Bool)

(assert (=> b!1728670 (= e!1105945 (and tp!493142 tp!493133))))

(declare-fun b!1728663 () Bool)

(declare-fun res!776186 () Bool)

(assert (=> b!1728663 (=> res!776186 e!1105940)))

(assert (=> b!1728663 (= res!776186 (not (= lt!662748 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (value!105518 (_1!10717 lt!662758))))))))

(declare-fun res!776190 () Bool)

(assert (=> start!169766 (=> (not res!776190) (not e!1105957))))

(get-info :version)

(assert (=> start!169766 (= res!776190 ((_ is Lexer!2990) thiss!24550))))

(assert (=> start!169766 e!1105957))

(declare-fun e!1105944 () Bool)

(assert (=> start!169766 e!1105944))

(declare-fun e!1105939 () Bool)

(assert (=> start!169766 e!1105939))

(assert (=> start!169766 true))

(declare-fun e!1105937 () Bool)

(declare-fun inv!24507 (Token!6292) Bool)

(assert (=> start!169766 (and (inv!24507 token!523) e!1105937)))

(declare-fun e!1105955 () Bool)

(assert (=> start!169766 e!1105955))

(declare-fun tp!493139 () Bool)

(declare-fun e!1105961 () Bool)

(declare-fun b!1728671 () Bool)

(assert (=> b!1728671 (= e!1105961 (and tp!493139 (inv!24501 (tag!3685 (rule!5333 token!523))) (inv!24506 (transformation!3363 (rule!5333 token!523))) e!1105945))))

(declare-fun b!1728672 () Bool)

(declare-fun e!1105938 () Bool)

(declare-fun e!1105951 () Bool)

(assert (=> b!1728672 (= e!1105938 e!1105951)))

(declare-fun res!776169 () Bool)

(assert (=> b!1728672 (=> res!776169 e!1105951)))

(declare-fun prefixMatch!576 (Regex!4691 List!19021) Bool)

(assert (=> b!1728672 (= res!776169 (prefixMatch!576 lt!662749 (++!5188 lt!662744 (Cons!18951 (head!3928 suffix!1421) Nil!18951))))))

(declare-fun rulesRegex!721 (LexerInterface!2992 List!19022) Regex!4691)

(assert (=> b!1728672 (= lt!662749 (rulesRegex!721 thiss!24550 rules!3447))))

(declare-fun b!1728673 () Bool)

(assert (=> b!1728673 (= e!1105951 e!1105958)))

(declare-fun res!776170 () Bool)

(assert (=> b!1728673 (=> res!776170 e!1105958)))

(assert (=> b!1728673 (= res!776170 (not (isPrefix!1604 lt!662734 lt!662732)))))

(assert (=> b!1728673 (isPrefix!1604 lt!662734 (++!5188 lt!662734 (_2!10717 lt!662758)))))

(declare-fun lt!662764 () Unit!32803)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1114 (List!19021 List!19021) Unit!32803)

(assert (=> b!1728673 (= lt!662764 (lemmaConcatTwoListThenFirstIsPrefix!1114 lt!662734 (_2!10717 lt!662758)))))

(assert (=> b!1728673 (= lt!662734 (list!7660 lt!662748))))

(assert (=> b!1728673 (= lt!662748 (charsOf!2012 (_1!10717 lt!662758)))))

(assert (=> b!1728673 e!1105956))

(declare-fun res!776175 () Bool)

(assert (=> b!1728673 (=> (not res!776175) (not e!1105956))))

(declare-fun isDefined!3094 (Option!3750) Bool)

(assert (=> b!1728673 (= res!776175 (isDefined!3094 lt!662752))))

(declare-fun getRuleFromTag!413 (LexerInterface!2992 List!19022 String!21597) Option!3750)

(assert (=> b!1728673 (= lt!662752 (getRuleFromTag!413 thiss!24550 rules!3447 (tag!3685 (rule!5333 (_1!10717 lt!662758)))))))

(declare-fun lt!662743 () Unit!32803)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!413 (LexerInterface!2992 List!19022 List!19021 Token!6292) Unit!32803)

(assert (=> b!1728673 (= lt!662743 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!413 thiss!24550 rules!3447 lt!662732 (_1!10717 lt!662758)))))

(assert (=> b!1728673 (= lt!662758 (get!5650 lt!662738))))

(declare-fun lt!662737 () Unit!32803)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!516 (LexerInterface!2992 List!19022 List!19021 List!19021) Unit!32803)

(assert (=> b!1728673 (= lt!662737 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!516 thiss!24550 rules!3447 lt!662744 suffix!1421))))

(assert (=> b!1728673 (= lt!662738 (maxPrefix!1546 thiss!24550 rules!3447 lt!662732))))

(assert (=> b!1728673 (isPrefix!1604 lt!662744 lt!662732)))

(declare-fun lt!662757 () Unit!32803)

(assert (=> b!1728673 (= lt!662757 (lemmaConcatTwoListThenFirstIsPrefix!1114 lt!662744 suffix!1421))))

(assert (=> b!1728673 (= lt!662732 (++!5188 lt!662744 suffix!1421))))

(declare-fun b!1728674 () Bool)

(assert (=> b!1728674 (= e!1105962 (= (rule!5333 (_1!10717 lt!662758)) lt!662755))))

(declare-fun b!1728675 () Bool)

(declare-fun res!776182 () Bool)

(assert (=> b!1728675 (=> (not res!776182) (not e!1105957))))

(declare-fun isEmpty!11922 (List!19022) Bool)

(assert (=> b!1728675 (= res!776182 (not (isEmpty!11922 rules!3447)))))

(declare-fun b!1728676 () Bool)

(assert (=> b!1728676 (= e!1105943 e!1105949)))

(declare-fun res!776189 () Bool)

(assert (=> b!1728676 (=> res!776189 e!1105949)))

(assert (=> b!1728676 (= res!776189 (not (= lt!662753 suffix!1421)))))

(assert (=> b!1728676 (= suffix!1421 lt!662753)))

(declare-fun lt!662747 () Unit!32803)

(declare-fun lemmaSamePrefixThenSameSuffix!748 (List!19021 List!19021 List!19021 List!19021 List!19021) Unit!32803)

(assert (=> b!1728676 (= lt!662747 (lemmaSamePrefixThenSameSuffix!748 lt!662744 suffix!1421 lt!662744 lt!662753 lt!662732))))

(declare-fun getSuffix!798 (List!19021 List!19021) List!19021)

(assert (=> b!1728676 (= lt!662753 (getSuffix!798 lt!662732 lt!662744))))

(assert (=> b!1728676 (matchR!2165 lt!662749 lt!662734)))

(declare-fun lt!662763 () Unit!32803)

(assert (=> b!1728676 (= lt!662763 (lemmaMaxPrefixThenMatchesRulesRegex!112 thiss!24550 rules!3447 lt!662732 (_1!10717 lt!662758) (rule!5333 (_1!10717 lt!662758)) (_2!10717 lt!662758)))))

(declare-fun b!1728677 () Bool)

(declare-fun tp_is_empty!7625 () Bool)

(declare-fun tp!493141 () Bool)

(assert (=> b!1728677 (= e!1105944 (and tp_is_empty!7625 tp!493141))))

(declare-fun b!1728678 () Bool)

(declare-fun res!776177 () Bool)

(assert (=> b!1728678 (=> (not res!776177) (not e!1105957))))

(declare-fun contains!3385 (List!19022 Rule!6526) Bool)

(assert (=> b!1728678 (= res!776177 (contains!3385 rules!3447 rule!422))))

(declare-fun b!1728679 () Bool)

(declare-fun tp!493144 () Bool)

(declare-fun inv!21 (TokenValue!3453) Bool)

(assert (=> b!1728679 (= e!1105937 (and (inv!21 (value!105518 token!523)) e!1105961 tp!493144))))

(declare-fun b!1728680 () Bool)

(declare-fun tp!493134 () Bool)

(assert (=> b!1728680 (= e!1105955 (and e!1105948 tp!493134))))

(assert (=> b!1728681 (= e!1105958 e!1105960)))

(declare-fun res!776179 () Bool)

(assert (=> b!1728681 (=> res!776179 e!1105960)))

(declare-fun Forall!738 (Int) Bool)

(assert (=> b!1728681 (= res!776179 (not (Forall!738 lambda!69314)))))

(declare-fun lt!662742 () Unit!32803)

(declare-fun lemmaInv!570 (TokenValueInjection!6566) Unit!32803)

(assert (=> b!1728681 (= lt!662742 (lemmaInv!570 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))))))

(assert (=> b!1728682 (= e!1105936 (and tp!493140 tp!493138))))

(declare-fun e!1105950 () Bool)

(declare-fun tp!493137 () Bool)

(declare-fun b!1728683 () Bool)

(assert (=> b!1728683 (= e!1105939 (and tp!493137 (inv!24501 (tag!3685 rule!422)) (inv!24506 (transformation!3363 rule!422)) e!1105950))))

(declare-fun b!1728684 () Bool)

(declare-fun res!776184 () Bool)

(assert (=> b!1728684 (=> res!776184 e!1105938)))

(assert (=> b!1728684 (= res!776184 (isEmpty!11921 suffix!1421))))

(declare-fun b!1728685 () Bool)

(assert (=> b!1728685 (= e!1105946 (not e!1105938))))

(declare-fun res!776185 () Bool)

(assert (=> b!1728685 (=> res!776185 e!1105938)))

(assert (=> b!1728685 (= res!776185 (not (matchR!2165 (regex!3363 rule!422) lt!662744)))))

(declare-fun ruleValid!862 (LexerInterface!2992 Rule!6526) Bool)

(assert (=> b!1728685 (ruleValid!862 thiss!24550 rule!422)))

(declare-fun lt!662756 () Unit!32803)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!386 (LexerInterface!2992 Rule!6526 List!19022) Unit!32803)

(assert (=> b!1728685 (= lt!662756 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!386 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1728686 () Bool)

(assert (=> b!1728686 (= e!1105947 e!1105953)))

(declare-fun res!776178 () Bool)

(assert (=> b!1728686 (=> res!776178 e!1105953)))

(declare-fun lt!662740 () List!19021)

(declare-fun lt!662746 () Option!3751)

(assert (=> b!1728686 (= res!776178 (or (not (= lt!662740 (_2!10717 lt!662758))) (not (= lt!662746 (Some!3750 (tuple2!18631 (_1!10717 lt!662758) lt!662740))))))))

(assert (=> b!1728686 (= (_2!10717 lt!662758) lt!662740)))

(declare-fun lt!662739 () Unit!32803)

(assert (=> b!1728686 (= lt!662739 (lemmaSamePrefixThenSameSuffix!748 lt!662734 (_2!10717 lt!662758) lt!662734 lt!662740 lt!662732))))

(assert (=> b!1728686 (= lt!662740 (getSuffix!798 lt!662732 lt!662734))))

(declare-fun lt!662731 () Int)

(declare-fun lt!662760 () TokenValue!3453)

(assert (=> b!1728686 (= lt!662746 (Some!3750 (tuple2!18631 (Token!6293 lt!662760 (rule!5333 (_1!10717 lt!662758)) lt!662731 lt!662734) (_2!10717 lt!662758))))))

(declare-fun maxPrefixOneRule!922 (LexerInterface!2992 Rule!6526 List!19021) Option!3751)

(assert (=> b!1728686 (= lt!662746 (maxPrefixOneRule!922 thiss!24550 (rule!5333 (_1!10717 lt!662758)) lt!662732))))

(declare-fun size!15060 (List!19021) Int)

(assert (=> b!1728686 (= lt!662731 (size!15060 lt!662734))))

(assert (=> b!1728686 (= lt!662760 (apply!5168 (transformation!3363 (rule!5333 (_1!10717 lt!662758))) (seqFromList!2337 lt!662734)))))

(declare-fun lt!662736 () Unit!32803)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!321 (LexerInterface!2992 List!19022 List!19021 List!19021 List!19021 Rule!6526) Unit!32803)

(assert (=> b!1728686 (= lt!662736 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!321 thiss!24550 rules!3447 lt!662734 lt!662732 (_2!10717 lt!662758) (rule!5333 (_1!10717 lt!662758))))))

(assert (=> b!1728687 (= e!1105950 (and tp!493135 tp!493143))))

(assert (= (and start!169766 res!776190) b!1728675))

(assert (= (and b!1728675 res!776182) b!1728657))

(assert (= (and b!1728657 res!776172) b!1728678))

(assert (= (and b!1728678 res!776177) b!1728660))

(assert (= (and b!1728660 res!776173) b!1728665))

(assert (= (and b!1728665 res!776171) b!1728666))

(assert (= (and b!1728666 res!776181) b!1728661))

(assert (= (and b!1728661 res!776188) b!1728685))

(assert (= (and b!1728685 (not res!776185)) b!1728684))

(assert (= (and b!1728684 (not res!776184)) b!1728672))

(assert (= (and b!1728672 (not res!776169)) b!1728673))

(assert (= (and b!1728673 res!776175) b!1728658))

(assert (= (and b!1728658 res!776176) b!1728674))

(assert (= (and b!1728673 (not res!776170)) b!1728667))

(assert (= (and b!1728667 (not res!776183)) b!1728681))

(assert (= (and b!1728681 (not res!776179)) b!1728664))

(assert (= (and b!1728664 (not res!776180)) b!1728663))

(assert (= (and b!1728663 (not res!776186)) b!1728668))

(assert (= (and b!1728668 (not res!776174)) b!1728686))

(assert (= (and b!1728686 (not res!776178)) b!1728659))

(assert (= (and b!1728659 (not res!776187)) b!1728676))

(assert (= (and b!1728676 (not res!776189)) b!1728662))

(assert (= (and start!169766 ((_ is Cons!18951) suffix!1421)) b!1728677))

(assert (= b!1728683 b!1728687))

(assert (= start!169766 b!1728683))

(assert (= b!1728671 b!1728670))

(assert (= b!1728679 b!1728671))

(assert (= start!169766 b!1728679))

(assert (= b!1728669 b!1728682))

(assert (= b!1728680 b!1728669))

(assert (= (and start!169766 ((_ is Cons!18952) rules!3447)) b!1728680))

(declare-fun b_lambda!55071 () Bool)

(assert (=> (not b_lambda!55071) (not b!1728664)))

(declare-fun t!160434 () Bool)

(declare-fun tb!102849 () Bool)

(assert (=> (and b!1728687 (= (toChars!4729 (transformation!3363 rule!422)) (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) t!160434) tb!102849))

(declare-fun b!1728703 () Bool)

(declare-fun tp!493147 () Bool)

(declare-fun e!1105974 () Bool)

(declare-fun inv!24508 (Conc!6303) Bool)

(assert (=> b!1728703 (= e!1105974 (and (inv!24508 (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748)))) tp!493147))))

(declare-fun result!123652 () Bool)

(declare-fun inv!24509 (BalanceConc!12550) Bool)

(assert (=> tb!102849 (= result!123652 (and (inv!24509 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748))) e!1105974))))

(assert (= tb!102849 b!1728703))

(declare-fun m!2136147 () Bool)

(assert (=> b!1728703 m!2136147))

(declare-fun m!2136149 () Bool)

(assert (=> tb!102849 m!2136149))

(assert (=> b!1728664 t!160434))

(declare-fun b_and!127187 () Bool)

(assert (= b_and!127177 (and (=> t!160434 result!123652) b_and!127187)))

(declare-fun t!160436 () Bool)

(declare-fun tb!102851 () Bool)

(assert (=> (and b!1728682 (= (toChars!4729 (transformation!3363 (h!24353 rules!3447))) (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) t!160436) tb!102851))

(declare-fun result!123656 () Bool)

(assert (= result!123656 result!123652))

(assert (=> b!1728664 t!160436))

(declare-fun b_and!127189 () Bool)

(assert (= b_and!127181 (and (=> t!160436 result!123656) b_and!127189)))

(declare-fun tb!102853 () Bool)

(declare-fun t!160438 () Bool)

(assert (=> (and b!1728670 (= (toChars!4729 (transformation!3363 (rule!5333 token!523))) (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) t!160438) tb!102853))

(declare-fun result!123658 () Bool)

(assert (= result!123658 result!123652))

(assert (=> b!1728664 t!160438))

(declare-fun b_and!127191 () Bool)

(assert (= b_and!127185 (and (=> t!160438 result!123658) b_and!127191)))

(declare-fun b_lambda!55073 () Bool)

(assert (=> (not b_lambda!55073) (not b!1728664)))

(declare-fun t!160440 () Bool)

(declare-fun tb!102855 () Bool)

(assert (=> (and b!1728687 (= (toValue!4870 (transformation!3363 rule!422)) (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) t!160440) tb!102855))

(declare-fun result!123660 () Bool)

(assert (=> tb!102855 (= result!123660 (inv!21 (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748)))))

(declare-fun m!2136151 () Bool)

(assert (=> tb!102855 m!2136151))

(assert (=> b!1728664 t!160440))

(declare-fun b_and!127193 () Bool)

(assert (= b_and!127175 (and (=> t!160440 result!123660) b_and!127193)))

(declare-fun tb!102857 () Bool)

(declare-fun t!160442 () Bool)

(assert (=> (and b!1728682 (= (toValue!4870 (transformation!3363 (h!24353 rules!3447))) (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) t!160442) tb!102857))

(declare-fun result!123664 () Bool)

(assert (= result!123664 result!123660))

(assert (=> b!1728664 t!160442))

(declare-fun b_and!127195 () Bool)

(assert (= b_and!127179 (and (=> t!160442 result!123664) b_and!127195)))

(declare-fun tb!102859 () Bool)

(declare-fun t!160444 () Bool)

(assert (=> (and b!1728670 (= (toValue!4870 (transformation!3363 (rule!5333 token!523))) (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) t!160444) tb!102859))

(declare-fun result!123666 () Bool)

(assert (= result!123666 result!123660))

(assert (=> b!1728664 t!160444))

(declare-fun b_and!127197 () Bool)

(assert (= b_and!127183 (and (=> t!160444 result!123666) b_and!127197)))

(declare-fun b_lambda!55075 () Bool)

(assert (=> (not b_lambda!55075) (not b!1728663)))

(declare-fun t!160446 () Bool)

(declare-fun tb!102861 () Bool)

(assert (=> (and b!1728687 (= (toChars!4729 (transformation!3363 rule!422)) (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) t!160446) tb!102861))

(declare-fun b!1728706 () Bool)

(declare-fun e!1105978 () Bool)

(declare-fun tp!493148 () Bool)

(assert (=> b!1728706 (= e!1105978 (and (inv!24508 (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (value!105518 (_1!10717 lt!662758))))) tp!493148))))

(declare-fun result!123668 () Bool)

(assert (=> tb!102861 (= result!123668 (and (inv!24509 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (value!105518 (_1!10717 lt!662758)))) e!1105978))))

(assert (= tb!102861 b!1728706))

(declare-fun m!2136153 () Bool)

(assert (=> b!1728706 m!2136153))

(declare-fun m!2136155 () Bool)

(assert (=> tb!102861 m!2136155))

(assert (=> b!1728663 t!160446))

(declare-fun b_and!127199 () Bool)

(assert (= b_and!127187 (and (=> t!160446 result!123668) b_and!127199)))

(declare-fun tb!102863 () Bool)

(declare-fun t!160448 () Bool)

(assert (=> (and b!1728682 (= (toChars!4729 (transformation!3363 (h!24353 rules!3447))) (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) t!160448) tb!102863))

(declare-fun result!123670 () Bool)

(assert (= result!123670 result!123668))

(assert (=> b!1728663 t!160448))

(declare-fun b_and!127201 () Bool)

(assert (= b_and!127189 (and (=> t!160448 result!123670) b_and!127201)))

(declare-fun tb!102865 () Bool)

(declare-fun t!160450 () Bool)

(assert (=> (and b!1728670 (= (toChars!4729 (transformation!3363 (rule!5333 token!523))) (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) t!160450) tb!102865))

(declare-fun result!123672 () Bool)

(assert (= result!123672 result!123668))

(assert (=> b!1728663 t!160450))

(declare-fun b_and!127203 () Bool)

(assert (= b_and!127191 (and (=> t!160450 result!123672) b_and!127203)))

(declare-fun m!2136157 () Bool)

(assert (=> b!1728673 m!2136157))

(declare-fun m!2136159 () Bool)

(assert (=> b!1728673 m!2136159))

(declare-fun m!2136161 () Bool)

(assert (=> b!1728673 m!2136161))

(declare-fun m!2136163 () Bool)

(assert (=> b!1728673 m!2136163))

(declare-fun m!2136165 () Bool)

(assert (=> b!1728673 m!2136165))

(declare-fun m!2136167 () Bool)

(assert (=> b!1728673 m!2136167))

(declare-fun m!2136169 () Bool)

(assert (=> b!1728673 m!2136169))

(declare-fun m!2136171 () Bool)

(assert (=> b!1728673 m!2136171))

(declare-fun m!2136173 () Bool)

(assert (=> b!1728673 m!2136173))

(declare-fun m!2136175 () Bool)

(assert (=> b!1728673 m!2136175))

(declare-fun m!2136177 () Bool)

(assert (=> b!1728673 m!2136177))

(declare-fun m!2136179 () Bool)

(assert (=> b!1728673 m!2136179))

(declare-fun m!2136181 () Bool)

(assert (=> b!1728673 m!2136181))

(declare-fun m!2136183 () Bool)

(assert (=> b!1728673 m!2136183))

(assert (=> b!1728673 m!2136169))

(declare-fun m!2136185 () Bool)

(assert (=> b!1728673 m!2136185))

(declare-fun m!2136187 () Bool)

(assert (=> b!1728686 m!2136187))

(assert (=> b!1728686 m!2136187))

(declare-fun m!2136189 () Bool)

(assert (=> b!1728686 m!2136189))

(declare-fun m!2136191 () Bool)

(assert (=> b!1728686 m!2136191))

(declare-fun m!2136193 () Bool)

(assert (=> b!1728686 m!2136193))

(declare-fun m!2136195 () Bool)

(assert (=> b!1728686 m!2136195))

(declare-fun m!2136197 () Bool)

(assert (=> b!1728686 m!2136197))

(declare-fun m!2136199 () Bool)

(assert (=> b!1728686 m!2136199))

(declare-fun m!2136201 () Bool)

(assert (=> b!1728681 m!2136201))

(declare-fun m!2136203 () Bool)

(assert (=> b!1728681 m!2136203))

(declare-fun m!2136205 () Bool)

(assert (=> b!1728657 m!2136205))

(declare-fun m!2136207 () Bool)

(assert (=> b!1728668 m!2136207))

(declare-fun m!2136209 () Bool)

(assert (=> b!1728668 m!2136209))

(declare-fun m!2136211 () Bool)

(assert (=> b!1728668 m!2136211))

(declare-fun m!2136213 () Bool)

(assert (=> b!1728668 m!2136213))

(declare-fun m!2136215 () Bool)

(assert (=> b!1728668 m!2136215))

(assert (=> b!1728668 m!2136209))

(declare-fun m!2136217 () Bool)

(assert (=> b!1728675 m!2136217))

(declare-fun m!2136219 () Bool)

(assert (=> b!1728667 m!2136219))

(declare-fun m!2136221 () Bool)

(assert (=> b!1728665 m!2136221))

(declare-fun m!2136223 () Bool)

(assert (=> b!1728659 m!2136223))

(declare-fun m!2136225 () Bool)

(assert (=> b!1728659 m!2136225))

(declare-fun m!2136227 () Bool)

(assert (=> b!1728659 m!2136227))

(declare-fun m!2136229 () Bool)

(assert (=> b!1728685 m!2136229))

(declare-fun m!2136231 () Bool)

(assert (=> b!1728685 m!2136231))

(declare-fun m!2136233 () Bool)

(assert (=> b!1728685 m!2136233))

(declare-fun m!2136235 () Bool)

(assert (=> b!1728684 m!2136235))

(declare-fun m!2136237 () Bool)

(assert (=> b!1728683 m!2136237))

(declare-fun m!2136239 () Bool)

(assert (=> b!1728683 m!2136239))

(declare-fun m!2136241 () Bool)

(assert (=> b!1728660 m!2136241))

(declare-fun m!2136243 () Bool)

(assert (=> b!1728660 m!2136243))

(declare-fun m!2136245 () Bool)

(assert (=> b!1728660 m!2136245))

(declare-fun m!2136247 () Bool)

(assert (=> b!1728660 m!2136247))

(declare-fun m!2136249 () Bool)

(assert (=> start!169766 m!2136249))

(declare-fun m!2136251 () Bool)

(assert (=> b!1728666 m!2136251))

(declare-fun m!2136253 () Bool)

(assert (=> b!1728664 m!2136253))

(assert (=> b!1728664 m!2136253))

(declare-fun m!2136255 () Bool)

(assert (=> b!1728664 m!2136255))

(assert (=> b!1728664 m!2136255))

(declare-fun m!2136257 () Bool)

(assert (=> b!1728664 m!2136257))

(declare-fun m!2136259 () Bool)

(assert (=> b!1728664 m!2136259))

(declare-fun m!2136261 () Bool)

(assert (=> b!1728672 m!2136261))

(declare-fun m!2136263 () Bool)

(assert (=> b!1728672 m!2136263))

(assert (=> b!1728672 m!2136263))

(declare-fun m!2136265 () Bool)

(assert (=> b!1728672 m!2136265))

(declare-fun m!2136267 () Bool)

(assert (=> b!1728672 m!2136267))

(declare-fun m!2136269 () Bool)

(assert (=> b!1728671 m!2136269))

(declare-fun m!2136271 () Bool)

(assert (=> b!1728671 m!2136271))

(declare-fun m!2136273 () Bool)

(assert (=> b!1728663 m!2136273))

(declare-fun m!2136275 () Bool)

(assert (=> b!1728676 m!2136275))

(declare-fun m!2136277 () Bool)

(assert (=> b!1728676 m!2136277))

(declare-fun m!2136279 () Bool)

(assert (=> b!1728676 m!2136279))

(declare-fun m!2136281 () Bool)

(assert (=> b!1728676 m!2136281))

(declare-fun m!2136283 () Bool)

(assert (=> b!1728678 m!2136283))

(declare-fun m!2136285 () Bool)

(assert (=> b!1728669 m!2136285))

(declare-fun m!2136287 () Bool)

(assert (=> b!1728669 m!2136287))

(declare-fun m!2136289 () Bool)

(assert (=> b!1728662 m!2136289))

(declare-fun m!2136291 () Bool)

(assert (=> b!1728662 m!2136291))

(assert (=> b!1728662 m!2136291))

(declare-fun m!2136293 () Bool)

(assert (=> b!1728662 m!2136293))

(declare-fun m!2136295 () Bool)

(assert (=> b!1728662 m!2136295))

(declare-fun m!2136297 () Bool)

(assert (=> b!1728679 m!2136297))

(assert (=> b!1728658 m!2136175))

(assert (=> b!1728658 m!2136175))

(declare-fun m!2136299 () Bool)

(assert (=> b!1728658 m!2136299))

(assert (=> b!1728658 m!2136299))

(declare-fun m!2136301 () Bool)

(assert (=> b!1728658 m!2136301))

(declare-fun m!2136303 () Bool)

(assert (=> b!1728658 m!2136303))

(check-sat (not b_next!47979) (not b!1728665) (not b!1728667) (not tb!102861) (not b!1728675) (not b!1728684) (not b_next!47977) tp_is_empty!7625 (not b!1728669) b_and!127197 (not b!1728703) (not b_lambda!55073) (not b!1728677) b_and!127201 b_and!127195 (not b_next!47975) (not tb!102855) (not b!1728673) (not b!1728666) (not tb!102849) (not b!1728683) (not b!1728679) (not b!1728657) (not b!1728686) (not b_next!47981) (not b_lambda!55071) (not b_next!47971) (not b_lambda!55075) (not b!1728681) (not b!1728664) b_and!127199 (not b!1728659) (not b!1728680) (not b!1728658) b_and!127193 (not start!169766) (not b!1728668) (not b!1728660) (not b_next!47973) (not b!1728662) b_and!127203 (not b!1728672) (not b!1728685) (not b!1728676) (not b!1728706) (not b!1728678) (not b!1728671))
(check-sat (not b_next!47979) b_and!127197 b_and!127201 b_and!127199 b_and!127193 (not b_next!47977) b_and!127195 (not b_next!47975) (not b_next!47981) (not b_next!47971) (not b_next!47973) b_and!127203)
(get-model)

(declare-fun d!529306 () Bool)

(declare-fun c!282509 () Bool)

(assert (=> d!529306 (= c!282509 ((_ is IntegerValue!10359) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748)))))

(declare-fun e!1105995 () Bool)

(assert (=> d!529306 (= (inv!21 (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748)) e!1105995)))

(declare-fun b!1728732 () Bool)

(declare-fun e!1105996 () Bool)

(declare-fun inv!17 (TokenValue!3453) Bool)

(assert (=> b!1728732 (= e!1105996 (inv!17 (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748)))))

(declare-fun b!1728733 () Bool)

(declare-fun e!1105997 () Bool)

(declare-fun inv!15 (TokenValue!3453) Bool)

(assert (=> b!1728733 (= e!1105997 (inv!15 (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748)))))

(declare-fun b!1728734 () Bool)

(assert (=> b!1728734 (= e!1105995 e!1105996)))

(declare-fun c!282508 () Bool)

(assert (=> b!1728734 (= c!282508 ((_ is IntegerValue!10360) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748)))))

(declare-fun b!1728735 () Bool)

(declare-fun res!776196 () Bool)

(assert (=> b!1728735 (=> res!776196 e!1105997)))

(assert (=> b!1728735 (= res!776196 (not ((_ is IntegerValue!10361) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748))))))

(assert (=> b!1728735 (= e!1105996 e!1105997)))

(declare-fun b!1728736 () Bool)

(declare-fun inv!16 (TokenValue!3453) Bool)

(assert (=> b!1728736 (= e!1105995 (inv!16 (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748)))))

(assert (= (and d!529306 c!282509) b!1728736))

(assert (= (and d!529306 (not c!282509)) b!1728734))

(assert (= (and b!1728734 c!282508) b!1728732))

(assert (= (and b!1728734 (not c!282508)) b!1728735))

(assert (= (and b!1728735 (not res!776196)) b!1728733))

(declare-fun m!2136327 () Bool)

(assert (=> b!1728732 m!2136327))

(declare-fun m!2136329 () Bool)

(assert (=> b!1728733 m!2136329))

(declare-fun m!2136331 () Bool)

(assert (=> b!1728736 m!2136331))

(assert (=> tb!102855 d!529306))

(declare-fun d!529310 () Bool)

(declare-fun lt!662779 () List!19021)

(assert (=> d!529310 (= (++!5188 lt!662734 lt!662779) lt!662732)))

(declare-fun e!1106000 () List!19021)

(assert (=> d!529310 (= lt!662779 e!1106000)))

(declare-fun c!282512 () Bool)

(assert (=> d!529310 (= c!282512 ((_ is Cons!18951) lt!662734))))

(assert (=> d!529310 (>= (size!15060 lt!662732) (size!15060 lt!662734))))

(assert (=> d!529310 (= (getSuffix!798 lt!662732 lt!662734) lt!662779)))

(declare-fun b!1728741 () Bool)

(declare-fun tail!2583 (List!19021) List!19021)

(assert (=> b!1728741 (= e!1106000 (getSuffix!798 (tail!2583 lt!662732) (t!160452 lt!662734)))))

(declare-fun b!1728742 () Bool)

(assert (=> b!1728742 (= e!1106000 lt!662732)))

(assert (= (and d!529310 c!282512) b!1728741))

(assert (= (and d!529310 (not c!282512)) b!1728742))

(declare-fun m!2136333 () Bool)

(assert (=> d!529310 m!2136333))

(declare-fun m!2136335 () Bool)

(assert (=> d!529310 m!2136335))

(assert (=> d!529310 m!2136193))

(declare-fun m!2136337 () Bool)

(assert (=> b!1728741 m!2136337))

(assert (=> b!1728741 m!2136337))

(declare-fun m!2136339 () Bool)

(assert (=> b!1728741 m!2136339))

(assert (=> b!1728686 d!529310))

(declare-fun d!529312 () Bool)

(declare-fun e!1106090 () Bool)

(assert (=> d!529312 e!1106090))

(declare-fun res!776306 () Bool)

(assert (=> d!529312 (=> res!776306 e!1106090)))

(declare-fun lt!662830 () Option!3751)

(declare-fun isEmpty!11924 (Option!3751) Bool)

(assert (=> d!529312 (= res!776306 (isEmpty!11924 lt!662830))))

(declare-fun e!1106092 () Option!3751)

(assert (=> d!529312 (= lt!662830 e!1106092)))

(declare-fun c!282542 () Bool)

(declare-datatypes ((tuple2!18634 0))(
  ( (tuple2!18635 (_1!10719 List!19021) (_2!10719 List!19021)) )
))
(declare-fun lt!662832 () tuple2!18634)

(assert (=> d!529312 (= c!282542 (isEmpty!11921 (_1!10719 lt!662832)))))

(declare-fun findLongestMatch!336 (Regex!4691 List!19021) tuple2!18634)

(assert (=> d!529312 (= lt!662832 (findLongestMatch!336 (regex!3363 (rule!5333 (_1!10717 lt!662758))) lt!662732))))

(assert (=> d!529312 (ruleValid!862 thiss!24550 (rule!5333 (_1!10717 lt!662758)))))

(assert (=> d!529312 (= (maxPrefixOneRule!922 thiss!24550 (rule!5333 (_1!10717 lt!662758)) lt!662732) lt!662830)))

(declare-fun b!1728910 () Bool)

(assert (=> b!1728910 (= e!1106092 (Some!3750 (tuple2!18631 (Token!6293 (apply!5168 (transformation!3363 (rule!5333 (_1!10717 lt!662758))) (seqFromList!2337 (_1!10719 lt!662832))) (rule!5333 (_1!10717 lt!662758)) (size!15059 (seqFromList!2337 (_1!10719 lt!662832))) (_1!10719 lt!662832)) (_2!10719 lt!662832))))))

(declare-fun lt!662831 () Unit!32803)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!393 (Regex!4691 List!19021) Unit!32803)

(assert (=> b!1728910 (= lt!662831 (longestMatchIsAcceptedByMatchOrIsEmpty!393 (regex!3363 (rule!5333 (_1!10717 lt!662758))) lt!662732))))

(declare-fun res!776310 () Bool)

(declare-fun findLongestMatchInner!409 (Regex!4691 List!19021 Int List!19021 List!19021 Int) tuple2!18634)

(assert (=> b!1728910 (= res!776310 (isEmpty!11921 (_1!10719 (findLongestMatchInner!409 (regex!3363 (rule!5333 (_1!10717 lt!662758))) Nil!18951 (size!15060 Nil!18951) lt!662732 lt!662732 (size!15060 lt!662732)))))))

(declare-fun e!1106091 () Bool)

(assert (=> b!1728910 (=> res!776310 e!1106091)))

(assert (=> b!1728910 e!1106091))

(declare-fun lt!662828 () Unit!32803)

(assert (=> b!1728910 (= lt!662828 lt!662831)))

(declare-fun lt!662829 () Unit!32803)

(assert (=> b!1728910 (= lt!662829 (lemmaSemiInverse!509 (transformation!3363 (rule!5333 (_1!10717 lt!662758))) (seqFromList!2337 (_1!10719 lt!662832))))))

(declare-fun b!1728911 () Bool)

(declare-fun e!1106093 () Bool)

(assert (=> b!1728911 (= e!1106093 (= (size!15058 (_1!10717 (get!5650 lt!662830))) (size!15060 (originalCharacters!4177 (_1!10717 (get!5650 lt!662830))))))))

(declare-fun b!1728912 () Bool)

(declare-fun res!776307 () Bool)

(assert (=> b!1728912 (=> (not res!776307) (not e!1106093))))

(assert (=> b!1728912 (= res!776307 (= (value!105518 (_1!10717 (get!5650 lt!662830))) (apply!5168 (transformation!3363 (rule!5333 (_1!10717 (get!5650 lt!662830)))) (seqFromList!2337 (originalCharacters!4177 (_1!10717 (get!5650 lt!662830)))))))))

(declare-fun b!1728913 () Bool)

(declare-fun res!776308 () Bool)

(assert (=> b!1728913 (=> (not res!776308) (not e!1106093))))

(assert (=> b!1728913 (= res!776308 (< (size!15060 (_2!10717 (get!5650 lt!662830))) (size!15060 lt!662732)))))

(declare-fun b!1728914 () Bool)

(assert (=> b!1728914 (= e!1106091 (matchR!2165 (regex!3363 (rule!5333 (_1!10717 lt!662758))) (_1!10719 (findLongestMatchInner!409 (regex!3363 (rule!5333 (_1!10717 lt!662758))) Nil!18951 (size!15060 Nil!18951) lt!662732 lt!662732 (size!15060 lt!662732)))))))

(declare-fun b!1728915 () Bool)

(assert (=> b!1728915 (= e!1106090 e!1106093)))

(declare-fun res!776309 () Bool)

(assert (=> b!1728915 (=> (not res!776309) (not e!1106093))))

(assert (=> b!1728915 (= res!776309 (matchR!2165 (regex!3363 (rule!5333 (_1!10717 lt!662758))) (list!7660 (charsOf!2012 (_1!10717 (get!5650 lt!662830))))))))

(declare-fun b!1728916 () Bool)

(assert (=> b!1728916 (= e!1106092 None!3750)))

(declare-fun b!1728917 () Bool)

(declare-fun res!776311 () Bool)

(assert (=> b!1728917 (=> (not res!776311) (not e!1106093))))

(assert (=> b!1728917 (= res!776311 (= (++!5188 (list!7660 (charsOf!2012 (_1!10717 (get!5650 lt!662830)))) (_2!10717 (get!5650 lt!662830))) lt!662732))))

(declare-fun b!1728918 () Bool)

(declare-fun res!776305 () Bool)

(assert (=> b!1728918 (=> (not res!776305) (not e!1106093))))

(assert (=> b!1728918 (= res!776305 (= (rule!5333 (_1!10717 (get!5650 lt!662830))) (rule!5333 (_1!10717 lt!662758))))))

(assert (= (and d!529312 c!282542) b!1728916))

(assert (= (and d!529312 (not c!282542)) b!1728910))

(assert (= (and b!1728910 (not res!776310)) b!1728914))

(assert (= (and d!529312 (not res!776306)) b!1728915))

(assert (= (and b!1728915 res!776309) b!1728917))

(assert (= (and b!1728917 res!776311) b!1728913))

(assert (= (and b!1728913 res!776308) b!1728918))

(assert (= (and b!1728918 res!776305) b!1728912))

(assert (= (and b!1728912 res!776307) b!1728911))

(declare-fun m!2136493 () Bool)

(assert (=> b!1728913 m!2136493))

(declare-fun m!2136495 () Bool)

(assert (=> b!1728913 m!2136495))

(assert (=> b!1728913 m!2136335))

(assert (=> b!1728917 m!2136493))

(declare-fun m!2136497 () Bool)

(assert (=> b!1728917 m!2136497))

(assert (=> b!1728917 m!2136497))

(declare-fun m!2136499 () Bool)

(assert (=> b!1728917 m!2136499))

(assert (=> b!1728917 m!2136499))

(declare-fun m!2136501 () Bool)

(assert (=> b!1728917 m!2136501))

(assert (=> b!1728911 m!2136493))

(declare-fun m!2136503 () Bool)

(assert (=> b!1728911 m!2136503))

(assert (=> b!1728915 m!2136493))

(assert (=> b!1728915 m!2136497))

(assert (=> b!1728915 m!2136497))

(assert (=> b!1728915 m!2136499))

(assert (=> b!1728915 m!2136499))

(declare-fun m!2136505 () Bool)

(assert (=> b!1728915 m!2136505))

(declare-fun m!2136507 () Bool)

(assert (=> b!1728914 m!2136507))

(assert (=> b!1728914 m!2136335))

(assert (=> b!1728914 m!2136507))

(assert (=> b!1728914 m!2136335))

(declare-fun m!2136509 () Bool)

(assert (=> b!1728914 m!2136509))

(declare-fun m!2136511 () Bool)

(assert (=> b!1728914 m!2136511))

(assert (=> b!1728910 m!2136507))

(declare-fun m!2136513 () Bool)

(assert (=> b!1728910 m!2136513))

(declare-fun m!2136515 () Bool)

(assert (=> b!1728910 m!2136515))

(assert (=> b!1728910 m!2136513))

(declare-fun m!2136517 () Bool)

(assert (=> b!1728910 m!2136517))

(declare-fun m!2136519 () Bool)

(assert (=> b!1728910 m!2136519))

(declare-fun m!2136521 () Bool)

(assert (=> b!1728910 m!2136521))

(assert (=> b!1728910 m!2136513))

(assert (=> b!1728910 m!2136513))

(declare-fun m!2136523 () Bool)

(assert (=> b!1728910 m!2136523))

(assert (=> b!1728910 m!2136507))

(assert (=> b!1728910 m!2136335))

(assert (=> b!1728910 m!2136509))

(assert (=> b!1728910 m!2136335))

(declare-fun m!2136525 () Bool)

(assert (=> d!529312 m!2136525))

(declare-fun m!2136527 () Bool)

(assert (=> d!529312 m!2136527))

(declare-fun m!2136529 () Bool)

(assert (=> d!529312 m!2136529))

(declare-fun m!2136531 () Bool)

(assert (=> d!529312 m!2136531))

(assert (=> b!1728912 m!2136493))

(declare-fun m!2136533 () Bool)

(assert (=> b!1728912 m!2136533))

(assert (=> b!1728912 m!2136533))

(declare-fun m!2136535 () Bool)

(assert (=> b!1728912 m!2136535))

(assert (=> b!1728918 m!2136493))

(assert (=> b!1728686 d!529312))

(declare-fun d!529346 () Bool)

(declare-fun lt!662839 () Int)

(assert (=> d!529346 (>= lt!662839 0)))

(declare-fun e!1106101 () Int)

(assert (=> d!529346 (= lt!662839 e!1106101)))

(declare-fun c!282546 () Bool)

(assert (=> d!529346 (= c!282546 ((_ is Nil!18951) lt!662734))))

(assert (=> d!529346 (= (size!15060 lt!662734) lt!662839)))

(declare-fun b!1728933 () Bool)

(assert (=> b!1728933 (= e!1106101 0)))

(declare-fun b!1728934 () Bool)

(assert (=> b!1728934 (= e!1106101 (+ 1 (size!15060 (t!160452 lt!662734))))))

(assert (= (and d!529346 c!282546) b!1728933))

(assert (= (and d!529346 (not c!282546)) b!1728934))

(declare-fun m!2136553 () Bool)

(assert (=> b!1728934 m!2136553))

(assert (=> b!1728686 d!529346))

(declare-fun d!529356 () Bool)

(assert (=> d!529356 (= (apply!5168 (transformation!3363 (rule!5333 (_1!10717 lt!662758))) (seqFromList!2337 lt!662734)) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (seqFromList!2337 lt!662734)))))

(declare-fun b_lambda!55081 () Bool)

(assert (=> (not b_lambda!55081) (not d!529356)))

(declare-fun tb!102879 () Bool)

(declare-fun t!160467 () Bool)

(assert (=> (and b!1728687 (= (toValue!4870 (transformation!3363 rule!422)) (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) t!160467) tb!102879))

(declare-fun result!123686 () Bool)

(assert (=> tb!102879 (= result!123686 (inv!21 (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (seqFromList!2337 lt!662734))))))

(declare-fun m!2136555 () Bool)

(assert (=> tb!102879 m!2136555))

(assert (=> d!529356 t!160467))

(declare-fun b_and!127217 () Bool)

(assert (= b_and!127193 (and (=> t!160467 result!123686) b_and!127217)))

(declare-fun t!160469 () Bool)

(declare-fun tb!102881 () Bool)

(assert (=> (and b!1728682 (= (toValue!4870 (transformation!3363 (h!24353 rules!3447))) (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) t!160469) tb!102881))

(declare-fun result!123688 () Bool)

(assert (= result!123688 result!123686))

(assert (=> d!529356 t!160469))

(declare-fun b_and!127219 () Bool)

(assert (= b_and!127195 (and (=> t!160469 result!123688) b_and!127219)))

(declare-fun t!160471 () Bool)

(declare-fun tb!102883 () Bool)

(assert (=> (and b!1728670 (= (toValue!4870 (transformation!3363 (rule!5333 token!523))) (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) t!160471) tb!102883))

(declare-fun result!123690 () Bool)

(assert (= result!123690 result!123686))

(assert (=> d!529356 t!160471))

(declare-fun b_and!127221 () Bool)

(assert (= b_and!127197 (and (=> t!160471 result!123690) b_and!127221)))

(assert (=> d!529356 m!2136187))

(declare-fun m!2136557 () Bool)

(assert (=> d!529356 m!2136557))

(assert (=> b!1728686 d!529356))

(declare-fun d!529358 () Bool)

(assert (=> d!529358 (= (_2!10717 lt!662758) lt!662740)))

(declare-fun lt!662842 () Unit!32803)

(declare-fun choose!10551 (List!19021 List!19021 List!19021 List!19021 List!19021) Unit!32803)

(assert (=> d!529358 (= lt!662842 (choose!10551 lt!662734 (_2!10717 lt!662758) lt!662734 lt!662740 lt!662732))))

(assert (=> d!529358 (isPrefix!1604 lt!662734 lt!662732)))

(assert (=> d!529358 (= (lemmaSamePrefixThenSameSuffix!748 lt!662734 (_2!10717 lt!662758) lt!662734 lt!662740 lt!662732) lt!662842)))

(declare-fun bs!402518 () Bool)

(assert (= bs!402518 d!529358))

(declare-fun m!2136559 () Bool)

(assert (=> bs!402518 m!2136559))

(assert (=> bs!402518 m!2136163))

(assert (=> b!1728686 d!529358))

(declare-fun d!529360 () Bool)

(assert (=> d!529360 (= (maxPrefixOneRule!922 thiss!24550 (rule!5333 (_1!10717 lt!662758)) lt!662732) (Some!3750 (tuple2!18631 (Token!6293 (apply!5168 (transformation!3363 (rule!5333 (_1!10717 lt!662758))) (seqFromList!2337 lt!662734)) (rule!5333 (_1!10717 lt!662758)) (size!15060 lt!662734) lt!662734) (_2!10717 lt!662758))))))

(declare-fun lt!662845 () Unit!32803)

(declare-fun choose!10552 (LexerInterface!2992 List!19022 List!19021 List!19021 List!19021 Rule!6526) Unit!32803)

(assert (=> d!529360 (= lt!662845 (choose!10552 thiss!24550 rules!3447 lt!662734 lt!662732 (_2!10717 lt!662758) (rule!5333 (_1!10717 lt!662758))))))

(assert (=> d!529360 (not (isEmpty!11922 rules!3447))))

(assert (=> d!529360 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!321 thiss!24550 rules!3447 lt!662734 lt!662732 (_2!10717 lt!662758) (rule!5333 (_1!10717 lt!662758))) lt!662845)))

(declare-fun bs!402519 () Bool)

(assert (= bs!402519 d!529360))

(assert (=> bs!402519 m!2136197))

(assert (=> bs!402519 m!2136187))

(assert (=> bs!402519 m!2136189))

(assert (=> bs!402519 m!2136193))

(declare-fun m!2136561 () Bool)

(assert (=> bs!402519 m!2136561))

(assert (=> bs!402519 m!2136187))

(assert (=> bs!402519 m!2136217))

(assert (=> b!1728686 d!529360))

(declare-fun d!529362 () Bool)

(declare-fun fromListB!1072 (List!19021) BalanceConc!12550)

(assert (=> d!529362 (= (seqFromList!2337 lt!662734) (fromListB!1072 lt!662734))))

(declare-fun bs!402520 () Bool)

(assert (= bs!402520 d!529362))

(declare-fun m!2136563 () Bool)

(assert (=> bs!402520 m!2136563))

(assert (=> b!1728686 d!529362))

(declare-fun d!529364 () Bool)

(assert (=> d!529364 (= (get!5650 lt!662741) (v!25165 lt!662741))))

(assert (=> b!1728665 d!529364))

(declare-fun d!529366 () Bool)

(declare-fun c!282549 () Bool)

(assert (=> d!529366 (= c!282549 ((_ is Node!6303) (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (value!105518 (_1!10717 lt!662758))))))))

(declare-fun e!1106107 () Bool)

(assert (=> d!529366 (= (inv!24508 (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (value!105518 (_1!10717 lt!662758))))) e!1106107)))

(declare-fun b!1728941 () Bool)

(declare-fun inv!24510 (Conc!6303) Bool)

(assert (=> b!1728941 (= e!1106107 (inv!24510 (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (value!105518 (_1!10717 lt!662758))))))))

(declare-fun b!1728942 () Bool)

(declare-fun e!1106108 () Bool)

(assert (=> b!1728942 (= e!1106107 e!1106108)))

(declare-fun res!776322 () Bool)

(assert (=> b!1728942 (= res!776322 (not ((_ is Leaf!9205) (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (value!105518 (_1!10717 lt!662758)))))))))

(assert (=> b!1728942 (=> res!776322 e!1106108)))

(declare-fun b!1728943 () Bool)

(declare-fun inv!24511 (Conc!6303) Bool)

(assert (=> b!1728943 (= e!1106108 (inv!24511 (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (value!105518 (_1!10717 lt!662758))))))))

(assert (= (and d!529366 c!282549) b!1728941))

(assert (= (and d!529366 (not c!282549)) b!1728942))

(assert (= (and b!1728942 (not res!776322)) b!1728943))

(declare-fun m!2136565 () Bool)

(assert (=> b!1728941 m!2136565))

(declare-fun m!2136567 () Bool)

(assert (=> b!1728943 m!2136567))

(assert (=> b!1728706 d!529366))

(declare-fun d!529368 () Bool)

(declare-fun e!1106142 () Bool)

(assert (=> d!529368 e!1106142))

(declare-fun c!282560 () Bool)

(assert (=> d!529368 (= c!282560 ((_ is EmptyExpr!4691) (regex!3363 (rule!5333 (_1!10717 lt!662758)))))))

(declare-fun lt!662865 () Bool)

(declare-fun e!1106143 () Bool)

(assert (=> d!529368 (= lt!662865 e!1106143)))

(declare-fun c!282562 () Bool)

(assert (=> d!529368 (= c!282562 (isEmpty!11921 lt!662734))))

(declare-fun validRegex!1892 (Regex!4691) Bool)

(assert (=> d!529368 (validRegex!1892 (regex!3363 (rule!5333 (_1!10717 lt!662758))))))

(assert (=> d!529368 (= (matchR!2165 (regex!3363 (rule!5333 (_1!10717 lt!662758))) lt!662734) lt!662865)))

(declare-fun b!1729007 () Bool)

(declare-fun e!1106137 () Bool)

(assert (=> b!1729007 (= e!1106137 (= (head!3928 lt!662734) (c!282496 (regex!3363 (rule!5333 (_1!10717 lt!662758))))))))

(declare-fun b!1729008 () Bool)

(declare-fun e!1106141 () Bool)

(declare-fun e!1106139 () Bool)

(assert (=> b!1729008 (= e!1106141 e!1106139)))

(declare-fun res!776369 () Bool)

(assert (=> b!1729008 (=> res!776369 e!1106139)))

(declare-fun call!109889 () Bool)

(assert (=> b!1729008 (= res!776369 call!109889)))

(declare-fun b!1729009 () Bool)

(declare-fun derivativeStep!1186 (Regex!4691 C!9556) Regex!4691)

(assert (=> b!1729009 (= e!1106143 (matchR!2165 (derivativeStep!1186 (regex!3363 (rule!5333 (_1!10717 lt!662758))) (head!3928 lt!662734)) (tail!2583 lt!662734)))))

(declare-fun b!1729010 () Bool)

(declare-fun e!1106140 () Bool)

(assert (=> b!1729010 (= e!1106140 (not lt!662865))))

(declare-fun b!1729011 () Bool)

(declare-fun res!776371 () Bool)

(assert (=> b!1729011 (=> (not res!776371) (not e!1106137))))

(assert (=> b!1729011 (= res!776371 (isEmpty!11921 (tail!2583 lt!662734)))))

(declare-fun b!1729012 () Bool)

(declare-fun e!1106138 () Bool)

(assert (=> b!1729012 (= e!1106138 e!1106141)))

(declare-fun res!776370 () Bool)

(assert (=> b!1729012 (=> (not res!776370) (not e!1106141))))

(assert (=> b!1729012 (= res!776370 (not lt!662865))))

(declare-fun b!1729013 () Bool)

(declare-fun res!776366 () Bool)

(assert (=> b!1729013 (=> res!776366 e!1106139)))

(assert (=> b!1729013 (= res!776366 (not (isEmpty!11921 (tail!2583 lt!662734))))))

(declare-fun bm!109884 () Bool)

(assert (=> bm!109884 (= call!109889 (isEmpty!11921 lt!662734))))

(declare-fun b!1729014 () Bool)

(declare-fun res!776373 () Bool)

(assert (=> b!1729014 (=> res!776373 e!1106138)))

(assert (=> b!1729014 (= res!776373 e!1106137)))

(declare-fun res!776368 () Bool)

(assert (=> b!1729014 (=> (not res!776368) (not e!1106137))))

(assert (=> b!1729014 (= res!776368 lt!662865)))

(declare-fun b!1729015 () Bool)

(declare-fun res!776367 () Bool)

(assert (=> b!1729015 (=> res!776367 e!1106138)))

(assert (=> b!1729015 (= res!776367 (not ((_ is ElementMatch!4691) (regex!3363 (rule!5333 (_1!10717 lt!662758))))))))

(assert (=> b!1729015 (= e!1106140 e!1106138)))

(declare-fun b!1729016 () Bool)

(declare-fun nullable!1418 (Regex!4691) Bool)

(assert (=> b!1729016 (= e!1106143 (nullable!1418 (regex!3363 (rule!5333 (_1!10717 lt!662758)))))))

(declare-fun b!1729017 () Bool)

(assert (=> b!1729017 (= e!1106142 (= lt!662865 call!109889))))

(declare-fun b!1729018 () Bool)

(assert (=> b!1729018 (= e!1106142 e!1106140)))

(declare-fun c!282561 () Bool)

(assert (=> b!1729018 (= c!282561 ((_ is EmptyLang!4691) (regex!3363 (rule!5333 (_1!10717 lt!662758)))))))

(declare-fun b!1729019 () Bool)

(declare-fun res!776372 () Bool)

(assert (=> b!1729019 (=> (not res!776372) (not e!1106137))))

(assert (=> b!1729019 (= res!776372 (not call!109889))))

(declare-fun b!1729020 () Bool)

(assert (=> b!1729020 (= e!1106139 (not (= (head!3928 lt!662734) (c!282496 (regex!3363 (rule!5333 (_1!10717 lt!662758)))))))))

(assert (= (and d!529368 c!282562) b!1729016))

(assert (= (and d!529368 (not c!282562)) b!1729009))

(assert (= (and d!529368 c!282560) b!1729017))

(assert (= (and d!529368 (not c!282560)) b!1729018))

(assert (= (and b!1729018 c!282561) b!1729010))

(assert (= (and b!1729018 (not c!282561)) b!1729015))

(assert (= (and b!1729015 (not res!776367)) b!1729014))

(assert (= (and b!1729014 res!776368) b!1729019))

(assert (= (and b!1729019 res!776372) b!1729011))

(assert (= (and b!1729011 res!776371) b!1729007))

(assert (= (and b!1729014 (not res!776373)) b!1729012))

(assert (= (and b!1729012 res!776370) b!1729008))

(assert (= (and b!1729008 (not res!776369)) b!1729013))

(assert (= (and b!1729013 (not res!776366)) b!1729020))

(assert (= (or b!1729017 b!1729008 b!1729019) bm!109884))

(declare-fun m!2136613 () Bool)

(assert (=> bm!109884 m!2136613))

(declare-fun m!2136615 () Bool)

(assert (=> b!1729011 m!2136615))

(assert (=> b!1729011 m!2136615))

(declare-fun m!2136617 () Bool)

(assert (=> b!1729011 m!2136617))

(declare-fun m!2136619 () Bool)

(assert (=> b!1729016 m!2136619))

(assert (=> d!529368 m!2136613))

(declare-fun m!2136621 () Bool)

(assert (=> d!529368 m!2136621))

(assert (=> b!1729013 m!2136615))

(assert (=> b!1729013 m!2136615))

(assert (=> b!1729013 m!2136617))

(declare-fun m!2136623 () Bool)

(assert (=> b!1729020 m!2136623))

(assert (=> b!1729007 m!2136623))

(assert (=> b!1729009 m!2136623))

(assert (=> b!1729009 m!2136623))

(declare-fun m!2136625 () Bool)

(assert (=> b!1729009 m!2136625))

(assert (=> b!1729009 m!2136615))

(assert (=> b!1729009 m!2136625))

(assert (=> b!1729009 m!2136615))

(declare-fun m!2136627 () Bool)

(assert (=> b!1729009 m!2136627))

(assert (=> b!1728667 d!529368))

(declare-fun d!529376 () Bool)

(assert (=> d!529376 (= (isEmpty!11921 (_2!10717 lt!662745)) ((_ is Nil!18951) (_2!10717 lt!662745)))))

(assert (=> b!1728666 d!529376))

(declare-fun d!529380 () Bool)

(assert (=> d!529380 (= (isEmpty!11921 suffix!1421) ((_ is Nil!18951) suffix!1421))))

(assert (=> b!1728684 d!529380))

(declare-fun d!529382 () Bool)

(declare-fun e!1106155 () Bool)

(assert (=> d!529382 e!1106155))

(declare-fun res!776386 () Bool)

(assert (=> d!529382 (=> res!776386 e!1106155)))

(declare-fun lt!662875 () Bool)

(assert (=> d!529382 (= res!776386 (not lt!662875))))

(declare-fun e!1106153 () Bool)

(assert (=> d!529382 (= lt!662875 e!1106153)))

(declare-fun res!776387 () Bool)

(assert (=> d!529382 (=> res!776387 e!1106153)))

(assert (=> d!529382 (= res!776387 ((_ is Nil!18951) (++!5188 lt!662744 (Cons!18951 (head!3928 lt!662753) Nil!18951))))))

(assert (=> d!529382 (= (isPrefix!1604 (++!5188 lt!662744 (Cons!18951 (head!3928 lt!662753) Nil!18951)) lt!662732) lt!662875)))

(declare-fun e!1106154 () Bool)

(declare-fun b!1729035 () Bool)

(assert (=> b!1729035 (= e!1106154 (isPrefix!1604 (tail!2583 (++!5188 lt!662744 (Cons!18951 (head!3928 lt!662753) Nil!18951))) (tail!2583 lt!662732)))))

(declare-fun b!1729033 () Bool)

(assert (=> b!1729033 (= e!1106153 e!1106154)))

(declare-fun res!776388 () Bool)

(assert (=> b!1729033 (=> (not res!776388) (not e!1106154))))

(assert (=> b!1729033 (= res!776388 (not ((_ is Nil!18951) lt!662732)))))

(declare-fun b!1729034 () Bool)

(declare-fun res!776389 () Bool)

(assert (=> b!1729034 (=> (not res!776389) (not e!1106154))))

(assert (=> b!1729034 (= res!776389 (= (head!3928 (++!5188 lt!662744 (Cons!18951 (head!3928 lt!662753) Nil!18951))) (head!3928 lt!662732)))))

(declare-fun b!1729036 () Bool)

(assert (=> b!1729036 (= e!1106155 (>= (size!15060 lt!662732) (size!15060 (++!5188 lt!662744 (Cons!18951 (head!3928 lt!662753) Nil!18951)))))))

(assert (= (and d!529382 (not res!776387)) b!1729033))

(assert (= (and b!1729033 res!776388) b!1729034))

(assert (= (and b!1729034 res!776389) b!1729035))

(assert (= (and d!529382 (not res!776386)) b!1729036))

(assert (=> b!1729035 m!2136291))

(declare-fun m!2136643 () Bool)

(assert (=> b!1729035 m!2136643))

(assert (=> b!1729035 m!2136337))

(assert (=> b!1729035 m!2136643))

(assert (=> b!1729035 m!2136337))

(declare-fun m!2136645 () Bool)

(assert (=> b!1729035 m!2136645))

(assert (=> b!1729034 m!2136291))

(declare-fun m!2136647 () Bool)

(assert (=> b!1729034 m!2136647))

(declare-fun m!2136649 () Bool)

(assert (=> b!1729034 m!2136649))

(assert (=> b!1729036 m!2136335))

(assert (=> b!1729036 m!2136291))

(declare-fun m!2136651 () Bool)

(assert (=> b!1729036 m!2136651))

(assert (=> b!1728662 d!529382))

(declare-fun b!1729047 () Bool)

(declare-fun res!776394 () Bool)

(declare-fun e!1106161 () Bool)

(assert (=> b!1729047 (=> (not res!776394) (not e!1106161))))

(declare-fun lt!662878 () List!19021)

(assert (=> b!1729047 (= res!776394 (= (size!15060 lt!662878) (+ (size!15060 lt!662744) (size!15060 (Cons!18951 (head!3928 lt!662753) Nil!18951)))))))

(declare-fun b!1729045 () Bool)

(declare-fun e!1106160 () List!19021)

(assert (=> b!1729045 (= e!1106160 (Cons!18951 (head!3928 lt!662753) Nil!18951))))

(declare-fun d!529390 () Bool)

(assert (=> d!529390 e!1106161))

(declare-fun res!776395 () Bool)

(assert (=> d!529390 (=> (not res!776395) (not e!1106161))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2711 (List!19021) (InoxSet C!9556))

(assert (=> d!529390 (= res!776395 (= (content!2711 lt!662878) ((_ map or) (content!2711 lt!662744) (content!2711 (Cons!18951 (head!3928 lt!662753) Nil!18951)))))))

(assert (=> d!529390 (= lt!662878 e!1106160)))

(declare-fun c!282565 () Bool)

(assert (=> d!529390 (= c!282565 ((_ is Nil!18951) lt!662744))))

(assert (=> d!529390 (= (++!5188 lt!662744 (Cons!18951 (head!3928 lt!662753) Nil!18951)) lt!662878)))

(declare-fun b!1729048 () Bool)

(assert (=> b!1729048 (= e!1106161 (or (not (= (Cons!18951 (head!3928 lt!662753) Nil!18951) Nil!18951)) (= lt!662878 lt!662744)))))

(declare-fun b!1729046 () Bool)

(assert (=> b!1729046 (= e!1106160 (Cons!18951 (h!24352 lt!662744) (++!5188 (t!160452 lt!662744) (Cons!18951 (head!3928 lt!662753) Nil!18951))))))

(assert (= (and d!529390 c!282565) b!1729045))

(assert (= (and d!529390 (not c!282565)) b!1729046))

(assert (= (and d!529390 res!776395) b!1729047))

(assert (= (and b!1729047 res!776394) b!1729048))

(declare-fun m!2136653 () Bool)

(assert (=> b!1729047 m!2136653))

(declare-fun m!2136655 () Bool)

(assert (=> b!1729047 m!2136655))

(declare-fun m!2136657 () Bool)

(assert (=> b!1729047 m!2136657))

(declare-fun m!2136659 () Bool)

(assert (=> d!529390 m!2136659))

(declare-fun m!2136661 () Bool)

(assert (=> d!529390 m!2136661))

(declare-fun m!2136663 () Bool)

(assert (=> d!529390 m!2136663))

(declare-fun m!2136665 () Bool)

(assert (=> b!1729046 m!2136665))

(assert (=> b!1728662 d!529390))

(declare-fun d!529392 () Bool)

(assert (=> d!529392 (= (head!3928 lt!662753) (h!24352 lt!662753))))

(assert (=> b!1728662 d!529392))

(declare-fun d!529394 () Bool)

(assert (=> d!529394 (isPrefix!1604 (++!5188 lt!662744 (Cons!18951 (head!3928 (getSuffix!798 lt!662732 lt!662744)) Nil!18951)) lt!662732)))

(declare-fun lt!662887 () Unit!32803)

(declare-fun choose!10553 (List!19021 List!19021) Unit!32803)

(assert (=> d!529394 (= lt!662887 (choose!10553 lt!662744 lt!662732))))

(assert (=> d!529394 (isPrefix!1604 lt!662744 lt!662732)))

(assert (=> d!529394 (= (lemmaAddHeadSuffixToPrefixStillPrefix!199 lt!662744 lt!662732) lt!662887)))

(declare-fun bs!402523 () Bool)

(assert (= bs!402523 d!529394))

(declare-fun m!2136667 () Bool)

(assert (=> bs!402523 m!2136667))

(assert (=> bs!402523 m!2136277))

(assert (=> bs!402523 m!2136183))

(assert (=> bs!402523 m!2136667))

(declare-fun m!2136669 () Bool)

(assert (=> bs!402523 m!2136669))

(assert (=> bs!402523 m!2136277))

(declare-fun m!2136671 () Bool)

(assert (=> bs!402523 m!2136671))

(declare-fun m!2136673 () Bool)

(assert (=> bs!402523 m!2136673))

(assert (=> b!1728662 d!529394))

(declare-fun d!529396 () Bool)

(declare-fun list!7661 (Conc!6303) List!19021)

(assert (=> d!529396 (= (list!7660 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748))) (list!7661 (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748)))))))

(declare-fun bs!402524 () Bool)

(assert (= bs!402524 d!529396))

(declare-fun m!2136683 () Bool)

(assert (=> bs!402524 m!2136683))

(assert (=> b!1728664 d!529396))

(declare-fun bs!402526 () Bool)

(declare-fun d!529398 () Bool)

(assert (= bs!402526 (and d!529398 b!1728681)))

(declare-fun lambda!69317 () Int)

(assert (=> bs!402526 (= lambda!69317 lambda!69314)))

(declare-fun b!1729071 () Bool)

(declare-fun e!1106176 () Bool)

(assert (=> b!1729071 (= e!1106176 true)))

(assert (=> d!529398 e!1106176))

(assert (= d!529398 b!1729071))

(assert (=> b!1729071 (< (dynLambda!8814 order!11655 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) (dynLambda!8815 order!11657 lambda!69317))))

(assert (=> b!1729071 (< (dynLambda!8816 order!11659 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) (dynLambda!8815 order!11657 lambda!69317))))

(assert (=> d!529398 (= (list!7660 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748))) (list!7660 lt!662748))))

(declare-fun lt!662894 () Unit!32803)

(declare-fun ForallOf!273 (Int BalanceConc!12550) Unit!32803)

(assert (=> d!529398 (= lt!662894 (ForallOf!273 lambda!69317 lt!662748))))

(assert (=> d!529398 (= (lemmaSemiInverse!509 (transformation!3363 (rule!5333 (_1!10717 lt!662758))) lt!662748) lt!662894)))

(declare-fun b_lambda!55085 () Bool)

(assert (=> (not b_lambda!55085) (not d!529398)))

(assert (=> d!529398 t!160434))

(declare-fun b_and!127229 () Bool)

(assert (= b_and!127199 (and (=> t!160434 result!123652) b_and!127229)))

(assert (=> d!529398 t!160436))

(declare-fun b_and!127231 () Bool)

(assert (= b_and!127201 (and (=> t!160436 result!123656) b_and!127231)))

(assert (=> d!529398 t!160438))

(declare-fun b_and!127233 () Bool)

(assert (= b_and!127203 (and (=> t!160438 result!123658) b_and!127233)))

(declare-fun b_lambda!55087 () Bool)

(assert (=> (not b_lambda!55087) (not d!529398)))

(assert (=> d!529398 t!160440))

(declare-fun b_and!127235 () Bool)

(assert (= b_and!127217 (and (=> t!160440 result!123660) b_and!127235)))

(assert (=> d!529398 t!160442))

(declare-fun b_and!127237 () Bool)

(assert (= b_and!127219 (and (=> t!160442 result!123664) b_and!127237)))

(assert (=> d!529398 t!160444))

(declare-fun b_and!127239 () Bool)

(assert (= b_and!127221 (and (=> t!160444 result!123666) b_and!127239)))

(assert (=> d!529398 m!2136253))

(assert (=> d!529398 m!2136255))

(assert (=> d!529398 m!2136255))

(assert (=> d!529398 m!2136257))

(assert (=> d!529398 m!2136173))

(assert (=> d!529398 m!2136253))

(declare-fun m!2136693 () Bool)

(assert (=> d!529398 m!2136693))

(assert (=> b!1728664 d!529398))

(declare-fun d!529404 () Bool)

(declare-fun isBalanced!1971 (Conc!6303) Bool)

(assert (=> d!529404 (= (inv!24509 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748))) (isBalanced!1971 (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748)))))))

(declare-fun bs!402527 () Bool)

(assert (= bs!402527 d!529404))

(declare-fun m!2136695 () Bool)

(assert (=> bs!402527 m!2136695))

(assert (=> tb!102849 d!529404))

(declare-fun d!529406 () Bool)

(declare-fun e!1106182 () Bool)

(assert (=> d!529406 e!1106182))

(declare-fun c!282573 () Bool)

(assert (=> d!529406 (= c!282573 ((_ is EmptyExpr!4691) (regex!3363 rule!422)))))

(declare-fun lt!662895 () Bool)

(declare-fun e!1106183 () Bool)

(assert (=> d!529406 (= lt!662895 e!1106183)))

(declare-fun c!282575 () Bool)

(assert (=> d!529406 (= c!282575 (isEmpty!11921 lt!662744))))

(assert (=> d!529406 (validRegex!1892 (regex!3363 rule!422))))

(assert (=> d!529406 (= (matchR!2165 (regex!3363 rule!422) lt!662744) lt!662895)))

(declare-fun b!1729072 () Bool)

(declare-fun e!1106177 () Bool)

(assert (=> b!1729072 (= e!1106177 (= (head!3928 lt!662744) (c!282496 (regex!3363 rule!422))))))

(declare-fun b!1729073 () Bool)

(declare-fun e!1106181 () Bool)

(declare-fun e!1106179 () Bool)

(assert (=> b!1729073 (= e!1106181 e!1106179)))

(declare-fun res!776405 () Bool)

(assert (=> b!1729073 (=> res!776405 e!1106179)))

(declare-fun call!109890 () Bool)

(assert (=> b!1729073 (= res!776405 call!109890)))

(declare-fun b!1729074 () Bool)

(assert (=> b!1729074 (= e!1106183 (matchR!2165 (derivativeStep!1186 (regex!3363 rule!422) (head!3928 lt!662744)) (tail!2583 lt!662744)))))

(declare-fun b!1729075 () Bool)

(declare-fun e!1106180 () Bool)

(assert (=> b!1729075 (= e!1106180 (not lt!662895))))

(declare-fun b!1729076 () Bool)

(declare-fun res!776407 () Bool)

(assert (=> b!1729076 (=> (not res!776407) (not e!1106177))))

(assert (=> b!1729076 (= res!776407 (isEmpty!11921 (tail!2583 lt!662744)))))

(declare-fun b!1729077 () Bool)

(declare-fun e!1106178 () Bool)

(assert (=> b!1729077 (= e!1106178 e!1106181)))

(declare-fun res!776406 () Bool)

(assert (=> b!1729077 (=> (not res!776406) (not e!1106181))))

(assert (=> b!1729077 (= res!776406 (not lt!662895))))

(declare-fun b!1729078 () Bool)

(declare-fun res!776402 () Bool)

(assert (=> b!1729078 (=> res!776402 e!1106179)))

(assert (=> b!1729078 (= res!776402 (not (isEmpty!11921 (tail!2583 lt!662744))))))

(declare-fun bm!109885 () Bool)

(assert (=> bm!109885 (= call!109890 (isEmpty!11921 lt!662744))))

(declare-fun b!1729079 () Bool)

(declare-fun res!776409 () Bool)

(assert (=> b!1729079 (=> res!776409 e!1106178)))

(assert (=> b!1729079 (= res!776409 e!1106177)))

(declare-fun res!776404 () Bool)

(assert (=> b!1729079 (=> (not res!776404) (not e!1106177))))

(assert (=> b!1729079 (= res!776404 lt!662895)))

(declare-fun b!1729080 () Bool)

(declare-fun res!776403 () Bool)

(assert (=> b!1729080 (=> res!776403 e!1106178)))

(assert (=> b!1729080 (= res!776403 (not ((_ is ElementMatch!4691) (regex!3363 rule!422))))))

(assert (=> b!1729080 (= e!1106180 e!1106178)))

(declare-fun b!1729081 () Bool)

(assert (=> b!1729081 (= e!1106183 (nullable!1418 (regex!3363 rule!422)))))

(declare-fun b!1729082 () Bool)

(assert (=> b!1729082 (= e!1106182 (= lt!662895 call!109890))))

(declare-fun b!1729083 () Bool)

(assert (=> b!1729083 (= e!1106182 e!1106180)))

(declare-fun c!282574 () Bool)

(assert (=> b!1729083 (= c!282574 ((_ is EmptyLang!4691) (regex!3363 rule!422)))))

(declare-fun b!1729084 () Bool)

(declare-fun res!776408 () Bool)

(assert (=> b!1729084 (=> (not res!776408) (not e!1106177))))

(assert (=> b!1729084 (= res!776408 (not call!109890))))

(declare-fun b!1729085 () Bool)

(assert (=> b!1729085 (= e!1106179 (not (= (head!3928 lt!662744) (c!282496 (regex!3363 rule!422)))))))

(assert (= (and d!529406 c!282575) b!1729081))

(assert (= (and d!529406 (not c!282575)) b!1729074))

(assert (= (and d!529406 c!282573) b!1729082))

(assert (= (and d!529406 (not c!282573)) b!1729083))

(assert (= (and b!1729083 c!282574) b!1729075))

(assert (= (and b!1729083 (not c!282574)) b!1729080))

(assert (= (and b!1729080 (not res!776403)) b!1729079))

(assert (= (and b!1729079 res!776404) b!1729084))

(assert (= (and b!1729084 res!776408) b!1729076))

(assert (= (and b!1729076 res!776407) b!1729072))

(assert (= (and b!1729079 (not res!776409)) b!1729077))

(assert (= (and b!1729077 res!776406) b!1729073))

(assert (= (and b!1729073 (not res!776405)) b!1729078))

(assert (= (and b!1729078 (not res!776402)) b!1729085))

(assert (= (or b!1729082 b!1729073 b!1729084) bm!109885))

(declare-fun m!2136697 () Bool)

(assert (=> bm!109885 m!2136697))

(declare-fun m!2136699 () Bool)

(assert (=> b!1729076 m!2136699))

(assert (=> b!1729076 m!2136699))

(declare-fun m!2136701 () Bool)

(assert (=> b!1729076 m!2136701))

(declare-fun m!2136703 () Bool)

(assert (=> b!1729081 m!2136703))

(assert (=> d!529406 m!2136697))

(declare-fun m!2136705 () Bool)

(assert (=> d!529406 m!2136705))

(assert (=> b!1729078 m!2136699))

(assert (=> b!1729078 m!2136699))

(assert (=> b!1729078 m!2136701))

(declare-fun m!2136707 () Bool)

(assert (=> b!1729085 m!2136707))

(assert (=> b!1729072 m!2136707))

(assert (=> b!1729074 m!2136707))

(assert (=> b!1729074 m!2136707))

(declare-fun m!2136709 () Bool)

(assert (=> b!1729074 m!2136709))

(assert (=> b!1729074 m!2136699))

(assert (=> b!1729074 m!2136709))

(assert (=> b!1729074 m!2136699))

(declare-fun m!2136711 () Bool)

(assert (=> b!1729074 m!2136711))

(assert (=> b!1728685 d!529406))

(declare-fun d!529408 () Bool)

(declare-fun res!776414 () Bool)

(declare-fun e!1106186 () Bool)

(assert (=> d!529408 (=> (not res!776414) (not e!1106186))))

(assert (=> d!529408 (= res!776414 (validRegex!1892 (regex!3363 rule!422)))))

(assert (=> d!529408 (= (ruleValid!862 thiss!24550 rule!422) e!1106186)))

(declare-fun b!1729090 () Bool)

(declare-fun res!776415 () Bool)

(assert (=> b!1729090 (=> (not res!776415) (not e!1106186))))

(assert (=> b!1729090 (= res!776415 (not (nullable!1418 (regex!3363 rule!422))))))

(declare-fun b!1729091 () Bool)

(assert (=> b!1729091 (= e!1106186 (not (= (tag!3685 rule!422) (String!21598 ""))))))

(assert (= (and d!529408 res!776414) b!1729090))

(assert (= (and b!1729090 res!776415) b!1729091))

(assert (=> d!529408 m!2136705))

(assert (=> b!1729090 m!2136703))

(assert (=> b!1728685 d!529408))

(declare-fun d!529410 () Bool)

(assert (=> d!529410 (ruleValid!862 thiss!24550 rule!422)))

(declare-fun lt!662898 () Unit!32803)

(declare-fun choose!10555 (LexerInterface!2992 Rule!6526 List!19022) Unit!32803)

(assert (=> d!529410 (= lt!662898 (choose!10555 thiss!24550 rule!422 rules!3447))))

(assert (=> d!529410 (contains!3385 rules!3447 rule!422)))

(assert (=> d!529410 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!386 thiss!24550 rule!422 rules!3447) lt!662898)))

(declare-fun bs!402528 () Bool)

(assert (= bs!402528 d!529410))

(assert (=> bs!402528 m!2136231))

(declare-fun m!2136713 () Bool)

(assert (=> bs!402528 m!2136713))

(assert (=> bs!402528 m!2136283))

(assert (=> b!1728685 d!529410))

(declare-fun d!529412 () Bool)

(assert (=> d!529412 (= (inv!24501 (tag!3685 (rule!5333 token!523))) (= (mod (str.len (value!105517 (tag!3685 (rule!5333 token!523)))) 2) 0))))

(assert (=> b!1728671 d!529412))

(declare-fun d!529414 () Bool)

(declare-fun res!776418 () Bool)

(declare-fun e!1106189 () Bool)

(assert (=> d!529414 (=> (not res!776418) (not e!1106189))))

(declare-fun semiInverseModEq!1331 (Int Int) Bool)

(assert (=> d!529414 (= res!776418 (semiInverseModEq!1331 (toChars!4729 (transformation!3363 (rule!5333 token!523))) (toValue!4870 (transformation!3363 (rule!5333 token!523)))))))

(assert (=> d!529414 (= (inv!24506 (transformation!3363 (rule!5333 token!523))) e!1106189)))

(declare-fun b!1729094 () Bool)

(declare-fun equivClasses!1272 (Int Int) Bool)

(assert (=> b!1729094 (= e!1106189 (equivClasses!1272 (toChars!4729 (transformation!3363 (rule!5333 token!523))) (toValue!4870 (transformation!3363 (rule!5333 token!523)))))))

(assert (= (and d!529414 res!776418) b!1729094))

(declare-fun m!2136715 () Bool)

(assert (=> d!529414 m!2136715))

(declare-fun m!2136717 () Bool)

(assert (=> b!1729094 m!2136717))

(assert (=> b!1728671 d!529414))

(declare-fun d!529416 () Bool)

(declare-fun c!282578 () Bool)

(assert (=> d!529416 (= c!282578 (isEmpty!11921 (++!5188 lt!662744 (Cons!18951 (head!3928 suffix!1421) Nil!18951))))))

(declare-fun e!1106192 () Bool)

(assert (=> d!529416 (= (prefixMatch!576 lt!662749 (++!5188 lt!662744 (Cons!18951 (head!3928 suffix!1421) Nil!18951))) e!1106192)))

(declare-fun b!1729099 () Bool)

(declare-fun lostCause!527 (Regex!4691) Bool)

(assert (=> b!1729099 (= e!1106192 (not (lostCause!527 lt!662749)))))

(declare-fun b!1729100 () Bool)

(assert (=> b!1729100 (= e!1106192 (prefixMatch!576 (derivativeStep!1186 lt!662749 (head!3928 (++!5188 lt!662744 (Cons!18951 (head!3928 suffix!1421) Nil!18951)))) (tail!2583 (++!5188 lt!662744 (Cons!18951 (head!3928 suffix!1421) Nil!18951)))))))

(assert (= (and d!529416 c!282578) b!1729099))

(assert (= (and d!529416 (not c!282578)) b!1729100))

(assert (=> d!529416 m!2136263))

(declare-fun m!2136719 () Bool)

(assert (=> d!529416 m!2136719))

(declare-fun m!2136721 () Bool)

(assert (=> b!1729099 m!2136721))

(assert (=> b!1729100 m!2136263))

(declare-fun m!2136723 () Bool)

(assert (=> b!1729100 m!2136723))

(assert (=> b!1729100 m!2136723))

(declare-fun m!2136725 () Bool)

(assert (=> b!1729100 m!2136725))

(assert (=> b!1729100 m!2136263))

(declare-fun m!2136727 () Bool)

(assert (=> b!1729100 m!2136727))

(assert (=> b!1729100 m!2136725))

(assert (=> b!1729100 m!2136727))

(declare-fun m!2136729 () Bool)

(assert (=> b!1729100 m!2136729))

(assert (=> b!1728672 d!529416))

(declare-fun b!1729103 () Bool)

(declare-fun res!776419 () Bool)

(declare-fun e!1106194 () Bool)

(assert (=> b!1729103 (=> (not res!776419) (not e!1106194))))

(declare-fun lt!662899 () List!19021)

(assert (=> b!1729103 (= res!776419 (= (size!15060 lt!662899) (+ (size!15060 lt!662744) (size!15060 (Cons!18951 (head!3928 suffix!1421) Nil!18951)))))))

(declare-fun b!1729101 () Bool)

(declare-fun e!1106193 () List!19021)

(assert (=> b!1729101 (= e!1106193 (Cons!18951 (head!3928 suffix!1421) Nil!18951))))

(declare-fun d!529418 () Bool)

(assert (=> d!529418 e!1106194))

(declare-fun res!776420 () Bool)

(assert (=> d!529418 (=> (not res!776420) (not e!1106194))))

(assert (=> d!529418 (= res!776420 (= (content!2711 lt!662899) ((_ map or) (content!2711 lt!662744) (content!2711 (Cons!18951 (head!3928 suffix!1421) Nil!18951)))))))

(assert (=> d!529418 (= lt!662899 e!1106193)))

(declare-fun c!282579 () Bool)

(assert (=> d!529418 (= c!282579 ((_ is Nil!18951) lt!662744))))

(assert (=> d!529418 (= (++!5188 lt!662744 (Cons!18951 (head!3928 suffix!1421) Nil!18951)) lt!662899)))

(declare-fun b!1729104 () Bool)

(assert (=> b!1729104 (= e!1106194 (or (not (= (Cons!18951 (head!3928 suffix!1421) Nil!18951) Nil!18951)) (= lt!662899 lt!662744)))))

(declare-fun b!1729102 () Bool)

(assert (=> b!1729102 (= e!1106193 (Cons!18951 (h!24352 lt!662744) (++!5188 (t!160452 lt!662744) (Cons!18951 (head!3928 suffix!1421) Nil!18951))))))

(assert (= (and d!529418 c!282579) b!1729101))

(assert (= (and d!529418 (not c!282579)) b!1729102))

(assert (= (and d!529418 res!776420) b!1729103))

(assert (= (and b!1729103 res!776419) b!1729104))

(declare-fun m!2136731 () Bool)

(assert (=> b!1729103 m!2136731))

(assert (=> b!1729103 m!2136655))

(declare-fun m!2136733 () Bool)

(assert (=> b!1729103 m!2136733))

(declare-fun m!2136735 () Bool)

(assert (=> d!529418 m!2136735))

(assert (=> d!529418 m!2136661))

(declare-fun m!2136737 () Bool)

(assert (=> d!529418 m!2136737))

(declare-fun m!2136739 () Bool)

(assert (=> b!1729102 m!2136739))

(assert (=> b!1728672 d!529418))

(declare-fun d!529420 () Bool)

(assert (=> d!529420 (= (head!3928 suffix!1421) (h!24352 suffix!1421))))

(assert (=> b!1728672 d!529420))

(declare-fun d!529422 () Bool)

(declare-fun lt!662902 () Unit!32803)

(declare-fun lemma!341 (List!19022 LexerInterface!2992 List!19022) Unit!32803)

(assert (=> d!529422 (= lt!662902 (lemma!341 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69320 () Int)

(declare-datatypes ((List!19023 0))(
  ( (Nil!18953) (Cons!18953 (h!24354 Regex!4691) (t!160514 List!19023)) )
))
(declare-fun generalisedUnion!349 (List!19023) Regex!4691)

(declare-fun map!3902 (List!19022 Int) List!19023)

(assert (=> d!529422 (= (rulesRegex!721 thiss!24550 rules!3447) (generalisedUnion!349 (map!3902 rules!3447 lambda!69320)))))

(declare-fun bs!402529 () Bool)

(assert (= bs!402529 d!529422))

(declare-fun m!2136741 () Bool)

(assert (=> bs!402529 m!2136741))

(declare-fun m!2136743 () Bool)

(assert (=> bs!402529 m!2136743))

(assert (=> bs!402529 m!2136743))

(declare-fun m!2136745 () Bool)

(assert (=> bs!402529 m!2136745))

(assert (=> b!1728672 d!529422))

(declare-fun d!529424 () Bool)

(assert (=> d!529424 (= (apply!5168 (transformation!3363 (rule!5333 (_1!10717 lt!662758))) lt!662748) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748))))

(declare-fun b_lambda!55089 () Bool)

(assert (=> (not b_lambda!55089) (not d!529424)))

(assert (=> d!529424 t!160440))

(declare-fun b_and!127241 () Bool)

(assert (= b_and!127235 (and (=> t!160440 result!123660) b_and!127241)))

(assert (=> d!529424 t!160442))

(declare-fun b_and!127243 () Bool)

(assert (= b_and!127237 (and (=> t!160442 result!123664) b_and!127243)))

(assert (=> d!529424 t!160444))

(declare-fun b_and!127245 () Bool)

(assert (= b_and!127239 (and (=> t!160444 result!123666) b_and!127245)))

(assert (=> d!529424 m!2136253))

(assert (=> b!1728668 d!529424))

(declare-fun b!1729111 () Bool)

(declare-fun e!1106199 () Bool)

(assert (=> b!1729111 (= e!1106199 true)))

(declare-fun d!529426 () Bool)

(assert (=> d!529426 e!1106199))

(assert (= d!529426 b!1729111))

(declare-fun order!11661 () Int)

(declare-fun lambda!69323 () Int)

(declare-fun dynLambda!8819 (Int Int) Int)

(assert (=> b!1729111 (< (dynLambda!8814 order!11655 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) (dynLambda!8819 order!11661 lambda!69323))))

(assert (=> b!1729111 (< (dynLambda!8816 order!11659 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) (dynLambda!8819 order!11661 lambda!69323))))

(assert (=> d!529426 (= (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (seqFromList!2337 (originalCharacters!4177 (_1!10717 lt!662758)))))))

(declare-fun lt!662905 () Unit!32803)

(declare-fun Forall2of!86 (Int BalanceConc!12550 BalanceConc!12550) Unit!32803)

(assert (=> d!529426 (= lt!662905 (Forall2of!86 lambda!69323 lt!662748 (seqFromList!2337 (originalCharacters!4177 (_1!10717 lt!662758)))))))

(assert (=> d!529426 (= (list!7660 lt!662748) (list!7660 (seqFromList!2337 (originalCharacters!4177 (_1!10717 lt!662758)))))))

(assert (=> d!529426 (= (lemmaEqSameImage!288 (transformation!3363 (rule!5333 (_1!10717 lt!662758))) lt!662748 (seqFromList!2337 (originalCharacters!4177 (_1!10717 lt!662758)))) lt!662905)))

(declare-fun b_lambda!55091 () Bool)

(assert (=> (not b_lambda!55091) (not d!529426)))

(assert (=> d!529426 t!160440))

(declare-fun b_and!127247 () Bool)

(assert (= b_and!127241 (and (=> t!160440 result!123660) b_and!127247)))

(assert (=> d!529426 t!160442))

(declare-fun b_and!127249 () Bool)

(assert (= b_and!127243 (and (=> t!160442 result!123664) b_and!127249)))

(assert (=> d!529426 t!160444))

(declare-fun b_and!127251 () Bool)

(assert (= b_and!127245 (and (=> t!160444 result!123666) b_and!127251)))

(declare-fun b_lambda!55093 () Bool)

(assert (=> (not b_lambda!55093) (not d!529426)))

(declare-fun tb!102885 () Bool)

(declare-fun t!160473 () Bool)

(assert (=> (and b!1728687 (= (toValue!4870 (transformation!3363 rule!422)) (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) t!160473) tb!102885))

(declare-fun result!123692 () Bool)

(assert (=> tb!102885 (= result!123692 (inv!21 (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (seqFromList!2337 (originalCharacters!4177 (_1!10717 lt!662758))))))))

(declare-fun m!2136747 () Bool)

(assert (=> tb!102885 m!2136747))

(assert (=> d!529426 t!160473))

(declare-fun b_and!127253 () Bool)

(assert (= b_and!127247 (and (=> t!160473 result!123692) b_and!127253)))

(declare-fun tb!102887 () Bool)

(declare-fun t!160475 () Bool)

(assert (=> (and b!1728682 (= (toValue!4870 (transformation!3363 (h!24353 rules!3447))) (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) t!160475) tb!102887))

(declare-fun result!123694 () Bool)

(assert (= result!123694 result!123692))

(assert (=> d!529426 t!160475))

(declare-fun b_and!127255 () Bool)

(assert (= b_and!127249 (and (=> t!160475 result!123694) b_and!127255)))

(declare-fun tb!102889 () Bool)

(declare-fun t!160477 () Bool)

(assert (=> (and b!1728670 (= (toValue!4870 (transformation!3363 (rule!5333 token!523))) (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) t!160477) tb!102889))

(declare-fun result!123696 () Bool)

(assert (= result!123696 result!123692))

(assert (=> d!529426 t!160477))

(declare-fun b_and!127257 () Bool)

(assert (= b_and!127251 (and (=> t!160477 result!123696) b_and!127257)))

(assert (=> d!529426 m!2136173))

(assert (=> d!529426 m!2136209))

(declare-fun m!2136749 () Bool)

(assert (=> d!529426 m!2136749))

(assert (=> d!529426 m!2136253))

(assert (=> d!529426 m!2136209))

(declare-fun m!2136751 () Bool)

(assert (=> d!529426 m!2136751))

(assert (=> d!529426 m!2136209))

(declare-fun m!2136753 () Bool)

(assert (=> d!529426 m!2136753))

(assert (=> b!1728668 d!529426))

(declare-fun d!529428 () Bool)

(assert (=> d!529428 (= (size!15058 (_1!10717 lt!662758)) (size!15060 (originalCharacters!4177 (_1!10717 lt!662758))))))

(declare-fun Unit!32805 () Unit!32803)

(assert (=> d!529428 (= (lemmaCharactersSize!435 (_1!10717 lt!662758)) Unit!32805)))

(declare-fun bs!402530 () Bool)

(assert (= bs!402530 d!529428))

(declare-fun m!2136755 () Bool)

(assert (=> bs!402530 m!2136755))

(assert (=> b!1728668 d!529428))

(declare-fun d!529430 () Bool)

(assert (=> d!529430 (= (seqFromList!2337 (originalCharacters!4177 (_1!10717 lt!662758))) (fromListB!1072 (originalCharacters!4177 (_1!10717 lt!662758))))))

(declare-fun bs!402531 () Bool)

(assert (= bs!402531 d!529430))

(declare-fun m!2136757 () Bool)

(assert (=> bs!402531 m!2136757))

(assert (=> b!1728668 d!529430))

(declare-fun d!529432 () Bool)

(declare-fun lt!662908 () Int)

(assert (=> d!529432 (= lt!662908 (size!15060 (list!7660 lt!662748)))))

(declare-fun size!15062 (Conc!6303) Int)

(assert (=> d!529432 (= lt!662908 (size!15062 (c!282497 lt!662748)))))

(assert (=> d!529432 (= (size!15059 lt!662748) lt!662908)))

(declare-fun bs!402532 () Bool)

(assert (= bs!402532 d!529432))

(assert (=> bs!402532 m!2136173))

(assert (=> bs!402532 m!2136173))

(declare-fun m!2136759 () Bool)

(assert (=> bs!402532 m!2136759))

(declare-fun m!2136761 () Bool)

(assert (=> bs!402532 m!2136761))

(assert (=> b!1728668 d!529432))

(declare-fun d!529434 () Bool)

(assert (=> d!529434 (= (inv!24501 (tag!3685 (h!24353 rules!3447))) (= (mod (str.len (value!105517 (tag!3685 (h!24353 rules!3447)))) 2) 0))))

(assert (=> b!1728669 d!529434))

(declare-fun d!529436 () Bool)

(declare-fun res!776423 () Bool)

(declare-fun e!1106201 () Bool)

(assert (=> d!529436 (=> (not res!776423) (not e!1106201))))

(assert (=> d!529436 (= res!776423 (semiInverseModEq!1331 (toChars!4729 (transformation!3363 (h!24353 rules!3447))) (toValue!4870 (transformation!3363 (h!24353 rules!3447)))))))

(assert (=> d!529436 (= (inv!24506 (transformation!3363 (h!24353 rules!3447))) e!1106201)))

(declare-fun b!1729112 () Bool)

(assert (=> b!1729112 (= e!1106201 (equivClasses!1272 (toChars!4729 (transformation!3363 (h!24353 rules!3447))) (toValue!4870 (transformation!3363 (h!24353 rules!3447)))))))

(assert (= (and d!529436 res!776423) b!1729112))

(declare-fun m!2136763 () Bool)

(assert (=> d!529436 m!2136763))

(declare-fun m!2136765 () Bool)

(assert (=> b!1729112 m!2136765))

(assert (=> b!1728669 d!529436))

(declare-fun d!529438 () Bool)

(assert (=> d!529438 (= suffix!1421 lt!662753)))

(declare-fun lt!662909 () Unit!32803)

(assert (=> d!529438 (= lt!662909 (choose!10551 lt!662744 suffix!1421 lt!662744 lt!662753 lt!662732))))

(assert (=> d!529438 (isPrefix!1604 lt!662744 lt!662732)))

(assert (=> d!529438 (= (lemmaSamePrefixThenSameSuffix!748 lt!662744 suffix!1421 lt!662744 lt!662753 lt!662732) lt!662909)))

(declare-fun bs!402533 () Bool)

(assert (= bs!402533 d!529438))

(declare-fun m!2136767 () Bool)

(assert (=> bs!402533 m!2136767))

(assert (=> bs!402533 m!2136183))

(assert (=> b!1728676 d!529438))

(declare-fun d!529440 () Bool)

(declare-fun lt!662910 () List!19021)

(assert (=> d!529440 (= (++!5188 lt!662744 lt!662910) lt!662732)))

(declare-fun e!1106202 () List!19021)

(assert (=> d!529440 (= lt!662910 e!1106202)))

(declare-fun c!282580 () Bool)

(assert (=> d!529440 (= c!282580 ((_ is Cons!18951) lt!662744))))

(assert (=> d!529440 (>= (size!15060 lt!662732) (size!15060 lt!662744))))

(assert (=> d!529440 (= (getSuffix!798 lt!662732 lt!662744) lt!662910)))

(declare-fun b!1729113 () Bool)

(assert (=> b!1729113 (= e!1106202 (getSuffix!798 (tail!2583 lt!662732) (t!160452 lt!662744)))))

(declare-fun b!1729114 () Bool)

(assert (=> b!1729114 (= e!1106202 lt!662732)))

(assert (= (and d!529440 c!282580) b!1729113))

(assert (= (and d!529440 (not c!282580)) b!1729114))

(declare-fun m!2136769 () Bool)

(assert (=> d!529440 m!2136769))

(assert (=> d!529440 m!2136335))

(assert (=> d!529440 m!2136655))

(assert (=> b!1729113 m!2136337))

(assert (=> b!1729113 m!2136337))

(declare-fun m!2136771 () Bool)

(assert (=> b!1729113 m!2136771))

(assert (=> b!1728676 d!529440))

(declare-fun d!529442 () Bool)

(declare-fun e!1106208 () Bool)

(assert (=> d!529442 e!1106208))

(declare-fun c!282581 () Bool)

(assert (=> d!529442 (= c!282581 ((_ is EmptyExpr!4691) lt!662749))))

(declare-fun lt!662911 () Bool)

(declare-fun e!1106209 () Bool)

(assert (=> d!529442 (= lt!662911 e!1106209)))

(declare-fun c!282583 () Bool)

(assert (=> d!529442 (= c!282583 (isEmpty!11921 lt!662734))))

(assert (=> d!529442 (validRegex!1892 lt!662749)))

(assert (=> d!529442 (= (matchR!2165 lt!662749 lt!662734) lt!662911)))

(declare-fun b!1729115 () Bool)

(declare-fun e!1106203 () Bool)

(assert (=> b!1729115 (= e!1106203 (= (head!3928 lt!662734) (c!282496 lt!662749)))))

(declare-fun b!1729116 () Bool)

(declare-fun e!1106207 () Bool)

(declare-fun e!1106205 () Bool)

(assert (=> b!1729116 (= e!1106207 e!1106205)))

(declare-fun res!776427 () Bool)

(assert (=> b!1729116 (=> res!776427 e!1106205)))

(declare-fun call!109891 () Bool)

(assert (=> b!1729116 (= res!776427 call!109891)))

(declare-fun b!1729117 () Bool)

(assert (=> b!1729117 (= e!1106209 (matchR!2165 (derivativeStep!1186 lt!662749 (head!3928 lt!662734)) (tail!2583 lt!662734)))))

(declare-fun b!1729118 () Bool)

(declare-fun e!1106206 () Bool)

(assert (=> b!1729118 (= e!1106206 (not lt!662911))))

(declare-fun b!1729119 () Bool)

(declare-fun res!776429 () Bool)

(assert (=> b!1729119 (=> (not res!776429) (not e!1106203))))

(assert (=> b!1729119 (= res!776429 (isEmpty!11921 (tail!2583 lt!662734)))))

(declare-fun b!1729120 () Bool)

(declare-fun e!1106204 () Bool)

(assert (=> b!1729120 (= e!1106204 e!1106207)))

(declare-fun res!776428 () Bool)

(assert (=> b!1729120 (=> (not res!776428) (not e!1106207))))

(assert (=> b!1729120 (= res!776428 (not lt!662911))))

(declare-fun b!1729121 () Bool)

(declare-fun res!776424 () Bool)

(assert (=> b!1729121 (=> res!776424 e!1106205)))

(assert (=> b!1729121 (= res!776424 (not (isEmpty!11921 (tail!2583 lt!662734))))))

(declare-fun bm!109886 () Bool)

(assert (=> bm!109886 (= call!109891 (isEmpty!11921 lt!662734))))

(declare-fun b!1729122 () Bool)

(declare-fun res!776431 () Bool)

(assert (=> b!1729122 (=> res!776431 e!1106204)))

(assert (=> b!1729122 (= res!776431 e!1106203)))

(declare-fun res!776426 () Bool)

(assert (=> b!1729122 (=> (not res!776426) (not e!1106203))))

(assert (=> b!1729122 (= res!776426 lt!662911)))

(declare-fun b!1729123 () Bool)

(declare-fun res!776425 () Bool)

(assert (=> b!1729123 (=> res!776425 e!1106204)))

(assert (=> b!1729123 (= res!776425 (not ((_ is ElementMatch!4691) lt!662749)))))

(assert (=> b!1729123 (= e!1106206 e!1106204)))

(declare-fun b!1729124 () Bool)

(assert (=> b!1729124 (= e!1106209 (nullable!1418 lt!662749))))

(declare-fun b!1729125 () Bool)

(assert (=> b!1729125 (= e!1106208 (= lt!662911 call!109891))))

(declare-fun b!1729126 () Bool)

(assert (=> b!1729126 (= e!1106208 e!1106206)))

(declare-fun c!282582 () Bool)

(assert (=> b!1729126 (= c!282582 ((_ is EmptyLang!4691) lt!662749))))

(declare-fun b!1729127 () Bool)

(declare-fun res!776430 () Bool)

(assert (=> b!1729127 (=> (not res!776430) (not e!1106203))))

(assert (=> b!1729127 (= res!776430 (not call!109891))))

(declare-fun b!1729128 () Bool)

(assert (=> b!1729128 (= e!1106205 (not (= (head!3928 lt!662734) (c!282496 lt!662749))))))

(assert (= (and d!529442 c!282583) b!1729124))

(assert (= (and d!529442 (not c!282583)) b!1729117))

(assert (= (and d!529442 c!282581) b!1729125))

(assert (= (and d!529442 (not c!282581)) b!1729126))

(assert (= (and b!1729126 c!282582) b!1729118))

(assert (= (and b!1729126 (not c!282582)) b!1729123))

(assert (= (and b!1729123 (not res!776425)) b!1729122))

(assert (= (and b!1729122 res!776426) b!1729127))

(assert (= (and b!1729127 res!776430) b!1729119))

(assert (= (and b!1729119 res!776429) b!1729115))

(assert (= (and b!1729122 (not res!776431)) b!1729120))

(assert (= (and b!1729120 res!776428) b!1729116))

(assert (= (and b!1729116 (not res!776427)) b!1729121))

(assert (= (and b!1729121 (not res!776424)) b!1729128))

(assert (= (or b!1729125 b!1729116 b!1729127) bm!109886))

(assert (=> bm!109886 m!2136613))

(assert (=> b!1729119 m!2136615))

(assert (=> b!1729119 m!2136615))

(assert (=> b!1729119 m!2136617))

(declare-fun m!2136773 () Bool)

(assert (=> b!1729124 m!2136773))

(assert (=> d!529442 m!2136613))

(declare-fun m!2136775 () Bool)

(assert (=> d!529442 m!2136775))

(assert (=> b!1729121 m!2136615))

(assert (=> b!1729121 m!2136615))

(assert (=> b!1729121 m!2136617))

(assert (=> b!1729128 m!2136623))

(assert (=> b!1729115 m!2136623))

(assert (=> b!1729117 m!2136623))

(assert (=> b!1729117 m!2136623))

(declare-fun m!2136777 () Bool)

(assert (=> b!1729117 m!2136777))

(assert (=> b!1729117 m!2136615))

(assert (=> b!1729117 m!2136777))

(assert (=> b!1729117 m!2136615))

(declare-fun m!2136779 () Bool)

(assert (=> b!1729117 m!2136779))

(assert (=> b!1728676 d!529442))

(declare-fun d!529444 () Bool)

(assert (=> d!529444 (matchR!2165 (rulesRegex!721 thiss!24550 rules!3447) (list!7660 (charsOf!2012 (_1!10717 lt!662758))))))

(declare-fun lt!662914 () Unit!32803)

(declare-fun choose!10557 (LexerInterface!2992 List!19022 List!19021 Token!6292 Rule!6526 List!19021) Unit!32803)

(assert (=> d!529444 (= lt!662914 (choose!10557 thiss!24550 rules!3447 lt!662732 (_1!10717 lt!662758) (rule!5333 (_1!10717 lt!662758)) (_2!10717 lt!662758)))))

(assert (=> d!529444 (not (isEmpty!11922 rules!3447))))

(assert (=> d!529444 (= (lemmaMaxPrefixThenMatchesRulesRegex!112 thiss!24550 rules!3447 lt!662732 (_1!10717 lt!662758) (rule!5333 (_1!10717 lt!662758)) (_2!10717 lt!662758)) lt!662914)))

(declare-fun bs!402534 () Bool)

(assert (= bs!402534 d!529444))

(assert (=> bs!402534 m!2136175))

(assert (=> bs!402534 m!2136299))

(assert (=> bs!402534 m!2136267))

(assert (=> bs!402534 m!2136299))

(declare-fun m!2136781 () Bool)

(assert (=> bs!402534 m!2136781))

(assert (=> bs!402534 m!2136175))

(assert (=> bs!402534 m!2136217))

(declare-fun m!2136783 () Bool)

(assert (=> bs!402534 m!2136783))

(assert (=> bs!402534 m!2136267))

(assert (=> b!1728676 d!529444))

(declare-fun d!529446 () Bool)

(assert (=> d!529446 (isPrefix!1604 lt!662734 (++!5188 lt!662734 (_2!10717 lt!662758)))))

(declare-fun lt!662917 () Unit!32803)

(declare-fun choose!10558 (List!19021 List!19021) Unit!32803)

(assert (=> d!529446 (= lt!662917 (choose!10558 lt!662734 (_2!10717 lt!662758)))))

(assert (=> d!529446 (= (lemmaConcatTwoListThenFirstIsPrefix!1114 lt!662734 (_2!10717 lt!662758)) lt!662917)))

(declare-fun bs!402535 () Bool)

(assert (= bs!402535 d!529446))

(assert (=> bs!402535 m!2136169))

(assert (=> bs!402535 m!2136169))

(assert (=> bs!402535 m!2136171))

(declare-fun m!2136785 () Bool)

(assert (=> bs!402535 m!2136785))

(assert (=> b!1728673 d!529446))

(declare-fun call!109894 () Option!3751)

(declare-fun bm!109889 () Bool)

(assert (=> bm!109889 (= call!109894 (maxPrefixOneRule!922 thiss!24550 (h!24353 rules!3447) lt!662732))))

(declare-fun b!1729147 () Bool)

(declare-fun res!776450 () Bool)

(declare-fun e!1106218 () Bool)

(assert (=> b!1729147 (=> (not res!776450) (not e!1106218))))

(declare-fun lt!662928 () Option!3751)

(assert (=> b!1729147 (= res!776450 (= (list!7660 (charsOf!2012 (_1!10717 (get!5650 lt!662928)))) (originalCharacters!4177 (_1!10717 (get!5650 lt!662928)))))))

(declare-fun d!529448 () Bool)

(declare-fun e!1106217 () Bool)

(assert (=> d!529448 e!1106217))

(declare-fun res!776451 () Bool)

(assert (=> d!529448 (=> res!776451 e!1106217)))

(assert (=> d!529448 (= res!776451 (isEmpty!11924 lt!662928))))

(declare-fun e!1106216 () Option!3751)

(assert (=> d!529448 (= lt!662928 e!1106216)))

(declare-fun c!282586 () Bool)

(assert (=> d!529448 (= c!282586 (and ((_ is Cons!18952) rules!3447) ((_ is Nil!18952) (t!160453 rules!3447))))))

(declare-fun lt!662929 () Unit!32803)

(declare-fun lt!662930 () Unit!32803)

(assert (=> d!529448 (= lt!662929 lt!662930)))

(assert (=> d!529448 (isPrefix!1604 lt!662732 lt!662732)))

(declare-fun lemmaIsPrefixRefl!1081 (List!19021 List!19021) Unit!32803)

(assert (=> d!529448 (= lt!662930 (lemmaIsPrefixRefl!1081 lt!662732 lt!662732))))

(declare-fun rulesValidInductive!1118 (LexerInterface!2992 List!19022) Bool)

(assert (=> d!529448 (rulesValidInductive!1118 thiss!24550 rules!3447)))

(assert (=> d!529448 (= (maxPrefix!1546 thiss!24550 rules!3447 lt!662732) lt!662928)))

(declare-fun b!1729148 () Bool)

(assert (=> b!1729148 (= e!1106218 (contains!3385 rules!3447 (rule!5333 (_1!10717 (get!5650 lt!662928)))))))

(declare-fun b!1729149 () Bool)

(declare-fun lt!662932 () Option!3751)

(declare-fun lt!662931 () Option!3751)

(assert (=> b!1729149 (= e!1106216 (ite (and ((_ is None!3750) lt!662932) ((_ is None!3750) lt!662931)) None!3750 (ite ((_ is None!3750) lt!662931) lt!662932 (ite ((_ is None!3750) lt!662932) lt!662931 (ite (>= (size!15058 (_1!10717 (v!25165 lt!662932))) (size!15058 (_1!10717 (v!25165 lt!662931)))) lt!662932 lt!662931)))))))

(assert (=> b!1729149 (= lt!662932 call!109894)))

(assert (=> b!1729149 (= lt!662931 (maxPrefix!1546 thiss!24550 (t!160453 rules!3447) lt!662732))))

(declare-fun b!1729150 () Bool)

(declare-fun res!776449 () Bool)

(assert (=> b!1729150 (=> (not res!776449) (not e!1106218))))

(assert (=> b!1729150 (= res!776449 (matchR!2165 (regex!3363 (rule!5333 (_1!10717 (get!5650 lt!662928)))) (list!7660 (charsOf!2012 (_1!10717 (get!5650 lt!662928))))))))

(declare-fun b!1729151 () Bool)

(declare-fun res!776447 () Bool)

(assert (=> b!1729151 (=> (not res!776447) (not e!1106218))))

(assert (=> b!1729151 (= res!776447 (= (value!105518 (_1!10717 (get!5650 lt!662928))) (apply!5168 (transformation!3363 (rule!5333 (_1!10717 (get!5650 lt!662928)))) (seqFromList!2337 (originalCharacters!4177 (_1!10717 (get!5650 lt!662928)))))))))

(declare-fun b!1729152 () Bool)

(assert (=> b!1729152 (= e!1106216 call!109894)))

(declare-fun b!1729153 () Bool)

(declare-fun res!776446 () Bool)

(assert (=> b!1729153 (=> (not res!776446) (not e!1106218))))

(assert (=> b!1729153 (= res!776446 (< (size!15060 (_2!10717 (get!5650 lt!662928))) (size!15060 lt!662732)))))

(declare-fun b!1729154 () Bool)

(assert (=> b!1729154 (= e!1106217 e!1106218)))

(declare-fun res!776452 () Bool)

(assert (=> b!1729154 (=> (not res!776452) (not e!1106218))))

(assert (=> b!1729154 (= res!776452 (isDefined!3093 lt!662928))))

(declare-fun b!1729155 () Bool)

(declare-fun res!776448 () Bool)

(assert (=> b!1729155 (=> (not res!776448) (not e!1106218))))

(assert (=> b!1729155 (= res!776448 (= (++!5188 (list!7660 (charsOf!2012 (_1!10717 (get!5650 lt!662928)))) (_2!10717 (get!5650 lt!662928))) lt!662732))))

(assert (= (and d!529448 c!282586) b!1729152))

(assert (= (and d!529448 (not c!282586)) b!1729149))

(assert (= (or b!1729152 b!1729149) bm!109889))

(assert (= (and d!529448 (not res!776451)) b!1729154))

(assert (= (and b!1729154 res!776452) b!1729147))

(assert (= (and b!1729147 res!776450) b!1729153))

(assert (= (and b!1729153 res!776446) b!1729155))

(assert (= (and b!1729155 res!776448) b!1729151))

(assert (= (and b!1729151 res!776447) b!1729150))

(assert (= (and b!1729150 res!776449) b!1729148))

(declare-fun m!2136787 () Bool)

(assert (=> b!1729149 m!2136787))

(declare-fun m!2136789 () Bool)

(assert (=> b!1729154 m!2136789))

(declare-fun m!2136791 () Bool)

(assert (=> bm!109889 m!2136791))

(declare-fun m!2136793 () Bool)

(assert (=> b!1729148 m!2136793))

(declare-fun m!2136795 () Bool)

(assert (=> b!1729148 m!2136795))

(assert (=> b!1729155 m!2136793))

(declare-fun m!2136797 () Bool)

(assert (=> b!1729155 m!2136797))

(assert (=> b!1729155 m!2136797))

(declare-fun m!2136799 () Bool)

(assert (=> b!1729155 m!2136799))

(assert (=> b!1729155 m!2136799))

(declare-fun m!2136801 () Bool)

(assert (=> b!1729155 m!2136801))

(assert (=> b!1729151 m!2136793))

(declare-fun m!2136803 () Bool)

(assert (=> b!1729151 m!2136803))

(assert (=> b!1729151 m!2136803))

(declare-fun m!2136805 () Bool)

(assert (=> b!1729151 m!2136805))

(declare-fun m!2136807 () Bool)

(assert (=> d!529448 m!2136807))

(declare-fun m!2136809 () Bool)

(assert (=> d!529448 m!2136809))

(declare-fun m!2136811 () Bool)

(assert (=> d!529448 m!2136811))

(declare-fun m!2136813 () Bool)

(assert (=> d!529448 m!2136813))

(assert (=> b!1729147 m!2136793))

(assert (=> b!1729147 m!2136797))

(assert (=> b!1729147 m!2136797))

(assert (=> b!1729147 m!2136799))

(assert (=> b!1729150 m!2136793))

(assert (=> b!1729150 m!2136797))

(assert (=> b!1729150 m!2136797))

(assert (=> b!1729150 m!2136799))

(assert (=> b!1729150 m!2136799))

(declare-fun m!2136815 () Bool)

(assert (=> b!1729150 m!2136815))

(assert (=> b!1729153 m!2136793))

(declare-fun m!2136817 () Bool)

(assert (=> b!1729153 m!2136817))

(assert (=> b!1729153 m!2136335))

(assert (=> b!1728673 d!529448))

(declare-fun d!529450 () Bool)

(declare-fun e!1106221 () Bool)

(assert (=> d!529450 e!1106221))

(declare-fun res!776453 () Bool)

(assert (=> d!529450 (=> res!776453 e!1106221)))

(declare-fun lt!662933 () Bool)

(assert (=> d!529450 (= res!776453 (not lt!662933))))

(declare-fun e!1106219 () Bool)

(assert (=> d!529450 (= lt!662933 e!1106219)))

(declare-fun res!776454 () Bool)

(assert (=> d!529450 (=> res!776454 e!1106219)))

(assert (=> d!529450 (= res!776454 ((_ is Nil!18951) lt!662734))))

(assert (=> d!529450 (= (isPrefix!1604 lt!662734 (++!5188 lt!662734 (_2!10717 lt!662758))) lt!662933)))

(declare-fun b!1729158 () Bool)

(declare-fun e!1106220 () Bool)

(assert (=> b!1729158 (= e!1106220 (isPrefix!1604 (tail!2583 lt!662734) (tail!2583 (++!5188 lt!662734 (_2!10717 lt!662758)))))))

(declare-fun b!1729156 () Bool)

(assert (=> b!1729156 (= e!1106219 e!1106220)))

(declare-fun res!776455 () Bool)

(assert (=> b!1729156 (=> (not res!776455) (not e!1106220))))

(assert (=> b!1729156 (= res!776455 (not ((_ is Nil!18951) (++!5188 lt!662734 (_2!10717 lt!662758)))))))

(declare-fun b!1729157 () Bool)

(declare-fun res!776456 () Bool)

(assert (=> b!1729157 (=> (not res!776456) (not e!1106220))))

(assert (=> b!1729157 (= res!776456 (= (head!3928 lt!662734) (head!3928 (++!5188 lt!662734 (_2!10717 lt!662758)))))))

(declare-fun b!1729159 () Bool)

(assert (=> b!1729159 (= e!1106221 (>= (size!15060 (++!5188 lt!662734 (_2!10717 lt!662758))) (size!15060 lt!662734)))))

(assert (= (and d!529450 (not res!776454)) b!1729156))

(assert (= (and b!1729156 res!776455) b!1729157))

(assert (= (and b!1729157 res!776456) b!1729158))

(assert (= (and d!529450 (not res!776453)) b!1729159))

(assert (=> b!1729158 m!2136615))

(assert (=> b!1729158 m!2136169))

(declare-fun m!2136819 () Bool)

(assert (=> b!1729158 m!2136819))

(assert (=> b!1729158 m!2136615))

(assert (=> b!1729158 m!2136819))

(declare-fun m!2136821 () Bool)

(assert (=> b!1729158 m!2136821))

(assert (=> b!1729157 m!2136623))

(assert (=> b!1729157 m!2136169))

(declare-fun m!2136823 () Bool)

(assert (=> b!1729157 m!2136823))

(assert (=> b!1729159 m!2136169))

(declare-fun m!2136825 () Bool)

(assert (=> b!1729159 m!2136825))

(assert (=> b!1729159 m!2136193))

(assert (=> b!1728673 d!529450))

(declare-fun b!1729162 () Bool)

(declare-fun res!776457 () Bool)

(declare-fun e!1106223 () Bool)

(assert (=> b!1729162 (=> (not res!776457) (not e!1106223))))

(declare-fun lt!662934 () List!19021)

(assert (=> b!1729162 (= res!776457 (= (size!15060 lt!662934) (+ (size!15060 lt!662744) (size!15060 suffix!1421))))))

(declare-fun b!1729160 () Bool)

(declare-fun e!1106222 () List!19021)

(assert (=> b!1729160 (= e!1106222 suffix!1421)))

(declare-fun d!529452 () Bool)

(assert (=> d!529452 e!1106223))

(declare-fun res!776458 () Bool)

(assert (=> d!529452 (=> (not res!776458) (not e!1106223))))

(assert (=> d!529452 (= res!776458 (= (content!2711 lt!662934) ((_ map or) (content!2711 lt!662744) (content!2711 suffix!1421))))))

(assert (=> d!529452 (= lt!662934 e!1106222)))

(declare-fun c!282587 () Bool)

(assert (=> d!529452 (= c!282587 ((_ is Nil!18951) lt!662744))))

(assert (=> d!529452 (= (++!5188 lt!662744 suffix!1421) lt!662934)))

(declare-fun b!1729163 () Bool)

(assert (=> b!1729163 (= e!1106223 (or (not (= suffix!1421 Nil!18951)) (= lt!662934 lt!662744)))))

(declare-fun b!1729161 () Bool)

(assert (=> b!1729161 (= e!1106222 (Cons!18951 (h!24352 lt!662744) (++!5188 (t!160452 lt!662744) suffix!1421)))))

(assert (= (and d!529452 c!282587) b!1729160))

(assert (= (and d!529452 (not c!282587)) b!1729161))

(assert (= (and d!529452 res!776458) b!1729162))

(assert (= (and b!1729162 res!776457) b!1729163))

(declare-fun m!2136827 () Bool)

(assert (=> b!1729162 m!2136827))

(assert (=> b!1729162 m!2136655))

(declare-fun m!2136829 () Bool)

(assert (=> b!1729162 m!2136829))

(declare-fun m!2136831 () Bool)

(assert (=> d!529452 m!2136831))

(assert (=> d!529452 m!2136661))

(declare-fun m!2136833 () Bool)

(assert (=> d!529452 m!2136833))

(declare-fun m!2136835 () Bool)

(assert (=> b!1729161 m!2136835))

(assert (=> b!1728673 d!529452))

(declare-fun d!529454 () Bool)

(declare-fun isEmpty!11926 (Option!3750) Bool)

(assert (=> d!529454 (= (isDefined!3094 lt!662752) (not (isEmpty!11926 lt!662752)))))

(declare-fun bs!402536 () Bool)

(assert (= bs!402536 d!529454))

(declare-fun m!2136837 () Bool)

(assert (=> bs!402536 m!2136837))

(assert (=> b!1728673 d!529454))

(declare-fun d!529456 () Bool)

(declare-fun lt!662937 () BalanceConc!12550)

(assert (=> d!529456 (= (list!7660 lt!662937) (originalCharacters!4177 (_1!10717 lt!662758)))))

(assert (=> d!529456 (= lt!662937 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (value!105518 (_1!10717 lt!662758))))))

(assert (=> d!529456 (= (charsOf!2012 (_1!10717 lt!662758)) lt!662937)))

(declare-fun b_lambda!55095 () Bool)

(assert (=> (not b_lambda!55095) (not d!529456)))

(assert (=> d!529456 t!160446))

(declare-fun b_and!127259 () Bool)

(assert (= b_and!127229 (and (=> t!160446 result!123668) b_and!127259)))

(assert (=> d!529456 t!160448))

(declare-fun b_and!127261 () Bool)

(assert (= b_and!127231 (and (=> t!160448 result!123670) b_and!127261)))

(assert (=> d!529456 t!160450))

(declare-fun b_and!127263 () Bool)

(assert (= b_and!127233 (and (=> t!160450 result!123672) b_and!127263)))

(declare-fun m!2136839 () Bool)

(assert (=> d!529456 m!2136839))

(assert (=> d!529456 m!2136273))

(assert (=> b!1728673 d!529456))

(declare-fun d!529458 () Bool)

(assert (=> d!529458 (isPrefix!1604 lt!662744 (++!5188 lt!662744 suffix!1421))))

(declare-fun lt!662938 () Unit!32803)

(assert (=> d!529458 (= lt!662938 (choose!10558 lt!662744 suffix!1421))))

(assert (=> d!529458 (= (lemmaConcatTwoListThenFirstIsPrefix!1114 lt!662744 suffix!1421) lt!662938)))

(declare-fun bs!402537 () Bool)

(assert (= bs!402537 d!529458))

(assert (=> bs!402537 m!2136161))

(assert (=> bs!402537 m!2136161))

(declare-fun m!2136841 () Bool)

(assert (=> bs!402537 m!2136841))

(declare-fun m!2136843 () Bool)

(assert (=> bs!402537 m!2136843))

(assert (=> b!1728673 d!529458))

(declare-fun d!529460 () Bool)

(assert (=> d!529460 (= (list!7660 lt!662748) (list!7661 (c!282497 lt!662748)))))

(declare-fun bs!402538 () Bool)

(assert (= bs!402538 d!529460))

(declare-fun m!2136845 () Bool)

(assert (=> bs!402538 m!2136845))

(assert (=> b!1728673 d!529460))

(declare-fun d!529462 () Bool)

(declare-fun e!1106226 () Bool)

(assert (=> d!529462 e!1106226))

(declare-fun res!776459 () Bool)

(assert (=> d!529462 (=> res!776459 e!1106226)))

(declare-fun lt!662939 () Bool)

(assert (=> d!529462 (= res!776459 (not lt!662939))))

(declare-fun e!1106224 () Bool)

(assert (=> d!529462 (= lt!662939 e!1106224)))

(declare-fun res!776460 () Bool)

(assert (=> d!529462 (=> res!776460 e!1106224)))

(assert (=> d!529462 (= res!776460 ((_ is Nil!18951) lt!662734))))

(assert (=> d!529462 (= (isPrefix!1604 lt!662734 lt!662732) lt!662939)))

(declare-fun b!1729166 () Bool)

(declare-fun e!1106225 () Bool)

(assert (=> b!1729166 (= e!1106225 (isPrefix!1604 (tail!2583 lt!662734) (tail!2583 lt!662732)))))

(declare-fun b!1729164 () Bool)

(assert (=> b!1729164 (= e!1106224 e!1106225)))

(declare-fun res!776461 () Bool)

(assert (=> b!1729164 (=> (not res!776461) (not e!1106225))))

(assert (=> b!1729164 (= res!776461 (not ((_ is Nil!18951) lt!662732)))))

(declare-fun b!1729165 () Bool)

(declare-fun res!776462 () Bool)

(assert (=> b!1729165 (=> (not res!776462) (not e!1106225))))

(assert (=> b!1729165 (= res!776462 (= (head!3928 lt!662734) (head!3928 lt!662732)))))

(declare-fun b!1729167 () Bool)

(assert (=> b!1729167 (= e!1106226 (>= (size!15060 lt!662732) (size!15060 lt!662734)))))

(assert (= (and d!529462 (not res!776460)) b!1729164))

(assert (= (and b!1729164 res!776461) b!1729165))

(assert (= (and b!1729165 res!776462) b!1729166))

(assert (= (and d!529462 (not res!776459)) b!1729167))

(assert (=> b!1729166 m!2136615))

(assert (=> b!1729166 m!2136337))

(assert (=> b!1729166 m!2136615))

(assert (=> b!1729166 m!2136337))

(declare-fun m!2136847 () Bool)

(assert (=> b!1729166 m!2136847))

(assert (=> b!1729165 m!2136623))

(assert (=> b!1729165 m!2136649))

(assert (=> b!1729167 m!2136335))

(assert (=> b!1729167 m!2136193))

(assert (=> b!1728673 d!529462))

(declare-fun d!529464 () Bool)

(declare-fun e!1106229 () Bool)

(assert (=> d!529464 e!1106229))

(declare-fun res!776467 () Bool)

(assert (=> d!529464 (=> (not res!776467) (not e!1106229))))

(assert (=> d!529464 (= res!776467 (isDefined!3094 (getRuleFromTag!413 thiss!24550 rules!3447 (tag!3685 (rule!5333 (_1!10717 lt!662758))))))))

(declare-fun lt!662942 () Unit!32803)

(declare-fun choose!10560 (LexerInterface!2992 List!19022 List!19021 Token!6292) Unit!32803)

(assert (=> d!529464 (= lt!662942 (choose!10560 thiss!24550 rules!3447 lt!662732 (_1!10717 lt!662758)))))

(assert (=> d!529464 (rulesInvariant!2661 thiss!24550 rules!3447)))

(assert (=> d!529464 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!413 thiss!24550 rules!3447 lt!662732 (_1!10717 lt!662758)) lt!662942)))

(declare-fun b!1729172 () Bool)

(declare-fun res!776468 () Bool)

(assert (=> b!1729172 (=> (not res!776468) (not e!1106229))))

(assert (=> b!1729172 (= res!776468 (matchR!2165 (regex!3363 (get!5649 (getRuleFromTag!413 thiss!24550 rules!3447 (tag!3685 (rule!5333 (_1!10717 lt!662758)))))) (list!7660 (charsOf!2012 (_1!10717 lt!662758)))))))

(declare-fun b!1729173 () Bool)

(assert (=> b!1729173 (= e!1106229 (= (rule!5333 (_1!10717 lt!662758)) (get!5649 (getRuleFromTag!413 thiss!24550 rules!3447 (tag!3685 (rule!5333 (_1!10717 lt!662758)))))))))

(assert (= (and d!529464 res!776467) b!1729172))

(assert (= (and b!1729172 res!776468) b!1729173))

(assert (=> d!529464 m!2136165))

(assert (=> d!529464 m!2136165))

(declare-fun m!2136849 () Bool)

(assert (=> d!529464 m!2136849))

(declare-fun m!2136851 () Bool)

(assert (=> d!529464 m!2136851))

(assert (=> d!529464 m!2136205))

(assert (=> b!1729172 m!2136299))

(declare-fun m!2136853 () Bool)

(assert (=> b!1729172 m!2136853))

(assert (=> b!1729172 m!2136175))

(assert (=> b!1729172 m!2136299))

(assert (=> b!1729172 m!2136175))

(assert (=> b!1729172 m!2136165))

(declare-fun m!2136855 () Bool)

(assert (=> b!1729172 m!2136855))

(assert (=> b!1729172 m!2136165))

(assert (=> b!1729173 m!2136165))

(assert (=> b!1729173 m!2136165))

(assert (=> b!1729173 m!2136855))

(assert (=> b!1728673 d!529464))

(declare-fun d!529466 () Bool)

(declare-fun e!1106232 () Bool)

(assert (=> d!529466 e!1106232))

(declare-fun res!776469 () Bool)

(assert (=> d!529466 (=> res!776469 e!1106232)))

(declare-fun lt!662943 () Bool)

(assert (=> d!529466 (= res!776469 (not lt!662943))))

(declare-fun e!1106230 () Bool)

(assert (=> d!529466 (= lt!662943 e!1106230)))

(declare-fun res!776470 () Bool)

(assert (=> d!529466 (=> res!776470 e!1106230)))

(assert (=> d!529466 (= res!776470 ((_ is Nil!18951) lt!662744))))

(assert (=> d!529466 (= (isPrefix!1604 lt!662744 lt!662732) lt!662943)))

(declare-fun b!1729176 () Bool)

(declare-fun e!1106231 () Bool)

(assert (=> b!1729176 (= e!1106231 (isPrefix!1604 (tail!2583 lt!662744) (tail!2583 lt!662732)))))

(declare-fun b!1729174 () Bool)

(assert (=> b!1729174 (= e!1106230 e!1106231)))

(declare-fun res!776471 () Bool)

(assert (=> b!1729174 (=> (not res!776471) (not e!1106231))))

(assert (=> b!1729174 (= res!776471 (not ((_ is Nil!18951) lt!662732)))))

(declare-fun b!1729175 () Bool)

(declare-fun res!776472 () Bool)

(assert (=> b!1729175 (=> (not res!776472) (not e!1106231))))

(assert (=> b!1729175 (= res!776472 (= (head!3928 lt!662744) (head!3928 lt!662732)))))

(declare-fun b!1729177 () Bool)

(assert (=> b!1729177 (= e!1106232 (>= (size!15060 lt!662732) (size!15060 lt!662744)))))

(assert (= (and d!529466 (not res!776470)) b!1729174))

(assert (= (and b!1729174 res!776471) b!1729175))

(assert (= (and b!1729175 res!776472) b!1729176))

(assert (= (and d!529466 (not res!776469)) b!1729177))

(assert (=> b!1729176 m!2136699))

(assert (=> b!1729176 m!2136337))

(assert (=> b!1729176 m!2136699))

(assert (=> b!1729176 m!2136337))

(declare-fun m!2136857 () Bool)

(assert (=> b!1729176 m!2136857))

(assert (=> b!1729175 m!2136707))

(assert (=> b!1729175 m!2136649))

(assert (=> b!1729177 m!2136335))

(assert (=> b!1729177 m!2136655))

(assert (=> b!1728673 d!529466))

(declare-fun d!529468 () Bool)

(declare-fun e!1106247 () Bool)

(assert (=> d!529468 e!1106247))

(declare-fun res!776481 () Bool)

(assert (=> d!529468 (=> res!776481 e!1106247)))

(declare-fun lt!662986 () Option!3750)

(assert (=> d!529468 (= res!776481 (isEmpty!11926 lt!662986))))

(declare-fun e!1106245 () Option!3750)

(assert (=> d!529468 (= lt!662986 e!1106245)))

(declare-fun c!282594 () Bool)

(assert (=> d!529468 (= c!282594 (and ((_ is Cons!18952) rules!3447) (= (tag!3685 (h!24353 rules!3447)) (tag!3685 (rule!5333 (_1!10717 lt!662758))))))))

(assert (=> d!529468 (rulesInvariant!2661 thiss!24550 rules!3447)))

(assert (=> d!529468 (= (getRuleFromTag!413 thiss!24550 rules!3447 (tag!3685 (rule!5333 (_1!10717 lt!662758)))) lt!662986)))

(declare-fun b!1729198 () Bool)

(declare-fun e!1106248 () Option!3750)

(assert (=> b!1729198 (= e!1106245 e!1106248)))

(declare-fun c!282595 () Bool)

(assert (=> b!1729198 (= c!282595 (and ((_ is Cons!18952) rules!3447) (not (= (tag!3685 (h!24353 rules!3447)) (tag!3685 (rule!5333 (_1!10717 lt!662758)))))))))

(declare-fun b!1729199 () Bool)

(assert (=> b!1729199 (= e!1106245 (Some!3749 (h!24353 rules!3447)))))

(declare-fun b!1729200 () Bool)

(assert (=> b!1729200 (= e!1106248 None!3749)))

(declare-fun b!1729201 () Bool)

(declare-fun e!1106246 () Bool)

(assert (=> b!1729201 (= e!1106246 (= (tag!3685 (get!5649 lt!662986)) (tag!3685 (rule!5333 (_1!10717 lt!662758)))))))

(declare-fun b!1729202 () Bool)

(assert (=> b!1729202 (= e!1106247 e!1106246)))

(declare-fun res!776482 () Bool)

(assert (=> b!1729202 (=> (not res!776482) (not e!1106246))))

(assert (=> b!1729202 (= res!776482 (contains!3385 rules!3447 (get!5649 lt!662986)))))

(declare-fun b!1729203 () Bool)

(declare-fun lt!662985 () Unit!32803)

(declare-fun lt!662984 () Unit!32803)

(assert (=> b!1729203 (= lt!662985 lt!662984)))

(assert (=> b!1729203 (rulesInvariant!2661 thiss!24550 (t!160453 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!146 (LexerInterface!2992 Rule!6526 List!19022) Unit!32803)

(assert (=> b!1729203 (= lt!662984 (lemmaInvariantOnRulesThenOnTail!146 thiss!24550 (h!24353 rules!3447) (t!160453 rules!3447)))))

(assert (=> b!1729203 (= e!1106248 (getRuleFromTag!413 thiss!24550 (t!160453 rules!3447) (tag!3685 (rule!5333 (_1!10717 lt!662758)))))))

(assert (= (and d!529468 c!282594) b!1729199))

(assert (= (and d!529468 (not c!282594)) b!1729198))

(assert (= (and b!1729198 c!282595) b!1729203))

(assert (= (and b!1729198 (not c!282595)) b!1729200))

(assert (= (and d!529468 (not res!776481)) b!1729202))

(assert (= (and b!1729202 res!776482) b!1729201))

(declare-fun m!2136859 () Bool)

(assert (=> d!529468 m!2136859))

(assert (=> d!529468 m!2136205))

(declare-fun m!2136861 () Bool)

(assert (=> b!1729201 m!2136861))

(assert (=> b!1729202 m!2136861))

(assert (=> b!1729202 m!2136861))

(declare-fun m!2136863 () Bool)

(assert (=> b!1729202 m!2136863))

(declare-fun m!2136865 () Bool)

(assert (=> b!1729203 m!2136865))

(declare-fun m!2136867 () Bool)

(assert (=> b!1729203 m!2136867))

(declare-fun m!2136869 () Bool)

(assert (=> b!1729203 m!2136869))

(assert (=> b!1728673 d!529468))

(declare-fun b!1729206 () Bool)

(declare-fun res!776483 () Bool)

(declare-fun e!1106250 () Bool)

(assert (=> b!1729206 (=> (not res!776483) (not e!1106250))))

(declare-fun lt!662987 () List!19021)

(assert (=> b!1729206 (= res!776483 (= (size!15060 lt!662987) (+ (size!15060 lt!662734) (size!15060 (_2!10717 lt!662758)))))))

(declare-fun b!1729204 () Bool)

(declare-fun e!1106249 () List!19021)

(assert (=> b!1729204 (= e!1106249 (_2!10717 lt!662758))))

(declare-fun d!529470 () Bool)

(assert (=> d!529470 e!1106250))

(declare-fun res!776484 () Bool)

(assert (=> d!529470 (=> (not res!776484) (not e!1106250))))

(assert (=> d!529470 (= res!776484 (= (content!2711 lt!662987) ((_ map or) (content!2711 lt!662734) (content!2711 (_2!10717 lt!662758)))))))

(assert (=> d!529470 (= lt!662987 e!1106249)))

(declare-fun c!282596 () Bool)

(assert (=> d!529470 (= c!282596 ((_ is Nil!18951) lt!662734))))

(assert (=> d!529470 (= (++!5188 lt!662734 (_2!10717 lt!662758)) lt!662987)))

(declare-fun b!1729207 () Bool)

(assert (=> b!1729207 (= e!1106250 (or (not (= (_2!10717 lt!662758) Nil!18951)) (= lt!662987 lt!662734)))))

(declare-fun b!1729205 () Bool)

(assert (=> b!1729205 (= e!1106249 (Cons!18951 (h!24352 lt!662734) (++!5188 (t!160452 lt!662734) (_2!10717 lt!662758))))))

(assert (= (and d!529470 c!282596) b!1729204))

(assert (= (and d!529470 (not c!282596)) b!1729205))

(assert (= (and d!529470 res!776484) b!1729206))

(assert (= (and b!1729206 res!776483) b!1729207))

(declare-fun m!2136871 () Bool)

(assert (=> b!1729206 m!2136871))

(assert (=> b!1729206 m!2136193))

(declare-fun m!2136873 () Bool)

(assert (=> b!1729206 m!2136873))

(declare-fun m!2136875 () Bool)

(assert (=> d!529470 m!2136875))

(declare-fun m!2136877 () Bool)

(assert (=> d!529470 m!2136877))

(declare-fun m!2136879 () Bool)

(assert (=> d!529470 m!2136879))

(declare-fun m!2136881 () Bool)

(assert (=> b!1729205 m!2136881))

(assert (=> b!1728673 d!529470))

(declare-fun b!1729372 () Bool)

(declare-fun e!1106344 () Unit!32803)

(declare-fun Unit!32808 () Unit!32803)

(assert (=> b!1729372 (= e!1106344 Unit!32808)))

(declare-fun b!1729369 () Bool)

(declare-fun res!776542 () Bool)

(declare-fun e!1106343 () Bool)

(assert (=> b!1729369 (=> (not res!776542) (not e!1106343))))

(declare-fun lt!663068 () Token!6292)

(assert (=> b!1729369 (= res!776542 (matchR!2165 (regex!3363 (get!5649 (getRuleFromTag!413 thiss!24550 rules!3447 (tag!3685 (rule!5333 lt!663068))))) (list!7660 (charsOf!2012 lt!663068))))))

(declare-fun d!529472 () Bool)

(assert (=> d!529472 (isDefined!3093 (maxPrefix!1546 thiss!24550 rules!3447 (++!5188 lt!662744 suffix!1421)))))

(declare-fun lt!663066 () Unit!32803)

(assert (=> d!529472 (= lt!663066 e!1106344)))

(declare-fun c!282619 () Bool)

(assert (=> d!529472 (= c!282619 (isEmpty!11924 (maxPrefix!1546 thiss!24550 rules!3447 (++!5188 lt!662744 suffix!1421))))))

(declare-fun lt!663070 () Unit!32803)

(declare-fun lt!663077 () Unit!32803)

(assert (=> d!529472 (= lt!663070 lt!663077)))

(assert (=> d!529472 e!1106343))

(declare-fun res!776541 () Bool)

(assert (=> d!529472 (=> (not res!776541) (not e!1106343))))

(assert (=> d!529472 (= res!776541 (isDefined!3094 (getRuleFromTag!413 thiss!24550 rules!3447 (tag!3685 (rule!5333 lt!663068)))))))

(assert (=> d!529472 (= lt!663077 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!413 thiss!24550 rules!3447 lt!662744 lt!663068))))

(declare-fun lt!663078 () Unit!32803)

(declare-fun lt!663065 () Unit!32803)

(assert (=> d!529472 (= lt!663078 lt!663065)))

(declare-fun lt!663079 () List!19021)

(assert (=> d!529472 (isPrefix!1604 lt!663079 (++!5188 lt!662744 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!267 (List!19021 List!19021 List!19021) Unit!32803)

(assert (=> d!529472 (= lt!663065 (lemmaPrefixStaysPrefixWhenAddingToSuffix!267 lt!663079 lt!662744 suffix!1421))))

(assert (=> d!529472 (= lt!663079 (list!7660 (charsOf!2012 lt!663068)))))

(declare-fun lt!663067 () Unit!32803)

(declare-fun lt!663069 () Unit!32803)

(assert (=> d!529472 (= lt!663067 lt!663069)))

(declare-fun lt!663080 () List!19021)

(declare-fun lt!663081 () List!19021)

(assert (=> d!529472 (isPrefix!1604 lt!663080 (++!5188 lt!663080 lt!663081))))

(assert (=> d!529472 (= lt!663069 (lemmaConcatTwoListThenFirstIsPrefix!1114 lt!663080 lt!663081))))

(assert (=> d!529472 (= lt!663081 (_2!10717 (get!5650 (maxPrefix!1546 thiss!24550 rules!3447 lt!662744))))))

(assert (=> d!529472 (= lt!663080 (list!7660 (charsOf!2012 lt!663068)))))

(declare-datatypes ((List!19026 0))(
  ( (Nil!18956) (Cons!18956 (h!24357 Token!6292) (t!160517 List!19026)) )
))
(declare-fun head!3930 (List!19026) Token!6292)

(declare-datatypes ((IArray!12615 0))(
  ( (IArray!12616 (innerList!6365 List!19026)) )
))
(declare-datatypes ((Conc!6305 0))(
  ( (Node!6305 (left!15136 Conc!6305) (right!15466 Conc!6305) (csize!12840 Int) (cheight!6516 Int)) (Leaf!9207 (xs!9181 IArray!12615) (csize!12841 Int)) (Empty!6305) )
))
(declare-datatypes ((BalanceConc!12554 0))(
  ( (BalanceConc!12555 (c!282631 Conc!6305)) )
))
(declare-fun list!7664 (BalanceConc!12554) List!19026)

(declare-datatypes ((tuple2!18638 0))(
  ( (tuple2!18639 (_1!10721 BalanceConc!12554) (_2!10721 BalanceConc!12550)) )
))
(declare-fun lex!1406 (LexerInterface!2992 List!19022 BalanceConc!12550) tuple2!18638)

(assert (=> d!529472 (= lt!663068 (head!3930 (list!7664 (_1!10721 (lex!1406 thiss!24550 rules!3447 (seqFromList!2337 lt!662744))))))))

(assert (=> d!529472 (not (isEmpty!11922 rules!3447))))

(assert (=> d!529472 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!516 thiss!24550 rules!3447 lt!662744 suffix!1421) lt!663066)))

(declare-fun b!1729370 () Bool)

(assert (=> b!1729370 (= e!1106343 (= (rule!5333 lt!663068) (get!5649 (getRuleFromTag!413 thiss!24550 rules!3447 (tag!3685 (rule!5333 lt!663068))))))))

(declare-fun b!1729371 () Bool)

(declare-fun Unit!32810 () Unit!32803)

(assert (=> b!1729371 (= e!1106344 Unit!32810)))

(declare-fun lt!663073 () List!19021)

(assert (=> b!1729371 (= lt!663073 (++!5188 lt!662744 suffix!1421))))

(declare-fun lt!663074 () Unit!32803)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!275 (LexerInterface!2992 Rule!6526 List!19022 List!19021) Unit!32803)

(assert (=> b!1729371 (= lt!663074 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!275 thiss!24550 (rule!5333 lt!663068) rules!3447 lt!663073))))

(assert (=> b!1729371 (isEmpty!11924 (maxPrefixOneRule!922 thiss!24550 (rule!5333 lt!663068) lt!663073))))

(declare-fun lt!663075 () Unit!32803)

(assert (=> b!1729371 (= lt!663075 lt!663074)))

(declare-fun lt!663071 () List!19021)

(assert (=> b!1729371 (= lt!663071 (list!7660 (charsOf!2012 lt!663068)))))

(declare-fun lt!663072 () Unit!32803)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!271 (LexerInterface!2992 Rule!6526 List!19021 List!19021) Unit!32803)

(assert (=> b!1729371 (= lt!663072 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!271 thiss!24550 (rule!5333 lt!663068) lt!663071 (++!5188 lt!662744 suffix!1421)))))

(assert (=> b!1729371 (not (matchR!2165 (regex!3363 (rule!5333 lt!663068)) lt!663071))))

(declare-fun lt!663076 () Unit!32803)

(assert (=> b!1729371 (= lt!663076 lt!663072)))

(assert (=> b!1729371 false))

(assert (= (and d!529472 res!776541) b!1729369))

(assert (= (and b!1729369 res!776542) b!1729370))

(assert (= (and d!529472 c!282619) b!1729371))

(assert (= (and d!529472 (not c!282619)) b!1729372))

(declare-fun m!2137111 () Bool)

(assert (=> b!1729369 m!2137111))

(declare-fun m!2137113 () Bool)

(assert (=> b!1729369 m!2137113))

(declare-fun m!2137115 () Bool)

(assert (=> b!1729369 m!2137115))

(declare-fun m!2137117 () Bool)

(assert (=> b!1729369 m!2137117))

(assert (=> b!1729369 m!2137115))

(declare-fun m!2137119 () Bool)

(assert (=> b!1729369 m!2137119))

(assert (=> b!1729369 m!2137111))

(assert (=> b!1729369 m!2137119))

(assert (=> d!529472 m!2136161))

(declare-fun m!2137121 () Bool)

(assert (=> d!529472 m!2137121))

(declare-fun m!2137123 () Bool)

(assert (=> d!529472 m!2137123))

(declare-fun m!2137125 () Bool)

(assert (=> d!529472 m!2137125))

(declare-fun m!2137127 () Bool)

(assert (=> d!529472 m!2137127))

(declare-fun m!2137129 () Bool)

(assert (=> d!529472 m!2137129))

(declare-fun m!2137131 () Bool)

(assert (=> d!529472 m!2137131))

(assert (=> d!529472 m!2136217))

(assert (=> d!529472 m!2136243))

(assert (=> d!529472 m!2137115))

(assert (=> d!529472 m!2136243))

(declare-fun m!2137133 () Bool)

(assert (=> d!529472 m!2137133))

(declare-fun m!2137135 () Bool)

(assert (=> d!529472 m!2137135))

(assert (=> d!529472 m!2137123))

(declare-fun m!2137137 () Bool)

(assert (=> d!529472 m!2137137))

(declare-fun m!2137139 () Bool)

(assert (=> d!529472 m!2137139))

(declare-fun m!2137141 () Bool)

(assert (=> d!529472 m!2137141))

(assert (=> d!529472 m!2137139))

(declare-fun m!2137143 () Bool)

(assert (=> d!529472 m!2137143))

(assert (=> d!529472 m!2137131))

(declare-fun m!2137145 () Bool)

(assert (=> d!529472 m!2137145))

(assert (=> d!529472 m!2136161))

(assert (=> d!529472 m!2137127))

(assert (=> d!529472 m!2137115))

(declare-fun m!2137147 () Bool)

(assert (=> d!529472 m!2137147))

(assert (=> d!529472 m!2137119))

(assert (=> d!529472 m!2137111))

(assert (=> d!529472 m!2136161))

(assert (=> d!529472 m!2137139))

(assert (=> d!529472 m!2137119))

(declare-fun m!2137149 () Bool)

(assert (=> d!529472 m!2137149))

(assert (=> b!1729370 m!2137115))

(assert (=> b!1729370 m!2137115))

(assert (=> b!1729370 m!2137117))

(declare-fun m!2137151 () Bool)

(assert (=> b!1729371 m!2137151))

(declare-fun m!2137153 () Bool)

(assert (=> b!1729371 m!2137153))

(declare-fun m!2137155 () Bool)

(assert (=> b!1729371 m!2137155))

(assert (=> b!1729371 m!2136161))

(declare-fun m!2137157 () Bool)

(assert (=> b!1729371 m!2137157))

(assert (=> b!1729371 m!2136161))

(assert (=> b!1729371 m!2137153))

(declare-fun m!2137159 () Bool)

(assert (=> b!1729371 m!2137159))

(assert (=> b!1729371 m!2137119))

(assert (=> b!1729371 m!2137111))

(assert (=> b!1729371 m!2137119))

(assert (=> b!1728673 d!529472))

(declare-fun d!529552 () Bool)

(assert (=> d!529552 (= (get!5650 lt!662738) (v!25165 lt!662738))))

(assert (=> b!1728673 d!529552))

(declare-fun d!529554 () Bool)

(assert (=> d!529554 (= (isEmpty!11922 rules!3447) ((_ is Nil!18952) rules!3447))))

(assert (=> b!1728675 d!529554))

(declare-fun d!529556 () Bool)

(assert (=> d!529556 (= (isDefined!3093 lt!662741) (not (isEmpty!11924 lt!662741)))))

(declare-fun bs!402553 () Bool)

(assert (= bs!402553 d!529556))

(declare-fun m!2137161 () Bool)

(assert (=> bs!402553 m!2137161))

(assert (=> b!1728660 d!529556))

(declare-fun bm!109893 () Bool)

(declare-fun call!109898 () Option!3751)

(assert (=> bm!109893 (= call!109898 (maxPrefixOneRule!922 thiss!24550 (h!24353 rules!3447) lt!662744))))

(declare-fun b!1729373 () Bool)

(declare-fun res!776547 () Bool)

(declare-fun e!1106347 () Bool)

(assert (=> b!1729373 (=> (not res!776547) (not e!1106347))))

(declare-fun lt!663082 () Option!3751)

(assert (=> b!1729373 (= res!776547 (= (list!7660 (charsOf!2012 (_1!10717 (get!5650 lt!663082)))) (originalCharacters!4177 (_1!10717 (get!5650 lt!663082)))))))

(declare-fun d!529558 () Bool)

(declare-fun e!1106346 () Bool)

(assert (=> d!529558 e!1106346))

(declare-fun res!776548 () Bool)

(assert (=> d!529558 (=> res!776548 e!1106346)))

(assert (=> d!529558 (= res!776548 (isEmpty!11924 lt!663082))))

(declare-fun e!1106345 () Option!3751)

(assert (=> d!529558 (= lt!663082 e!1106345)))

(declare-fun c!282620 () Bool)

(assert (=> d!529558 (= c!282620 (and ((_ is Cons!18952) rules!3447) ((_ is Nil!18952) (t!160453 rules!3447))))))

(declare-fun lt!663083 () Unit!32803)

(declare-fun lt!663084 () Unit!32803)

(assert (=> d!529558 (= lt!663083 lt!663084)))

(assert (=> d!529558 (isPrefix!1604 lt!662744 lt!662744)))

(assert (=> d!529558 (= lt!663084 (lemmaIsPrefixRefl!1081 lt!662744 lt!662744))))

(assert (=> d!529558 (rulesValidInductive!1118 thiss!24550 rules!3447)))

(assert (=> d!529558 (= (maxPrefix!1546 thiss!24550 rules!3447 lt!662744) lt!663082)))

(declare-fun b!1729374 () Bool)

(assert (=> b!1729374 (= e!1106347 (contains!3385 rules!3447 (rule!5333 (_1!10717 (get!5650 lt!663082)))))))

(declare-fun b!1729375 () Bool)

(declare-fun lt!663086 () Option!3751)

(declare-fun lt!663085 () Option!3751)

(assert (=> b!1729375 (= e!1106345 (ite (and ((_ is None!3750) lt!663086) ((_ is None!3750) lt!663085)) None!3750 (ite ((_ is None!3750) lt!663085) lt!663086 (ite ((_ is None!3750) lt!663086) lt!663085 (ite (>= (size!15058 (_1!10717 (v!25165 lt!663086))) (size!15058 (_1!10717 (v!25165 lt!663085)))) lt!663086 lt!663085)))))))

(assert (=> b!1729375 (= lt!663086 call!109898)))

(assert (=> b!1729375 (= lt!663085 (maxPrefix!1546 thiss!24550 (t!160453 rules!3447) lt!662744))))

(declare-fun b!1729376 () Bool)

(declare-fun res!776546 () Bool)

(assert (=> b!1729376 (=> (not res!776546) (not e!1106347))))

(assert (=> b!1729376 (= res!776546 (matchR!2165 (regex!3363 (rule!5333 (_1!10717 (get!5650 lt!663082)))) (list!7660 (charsOf!2012 (_1!10717 (get!5650 lt!663082))))))))

(declare-fun b!1729377 () Bool)

(declare-fun res!776544 () Bool)

(assert (=> b!1729377 (=> (not res!776544) (not e!1106347))))

(assert (=> b!1729377 (= res!776544 (= (value!105518 (_1!10717 (get!5650 lt!663082))) (apply!5168 (transformation!3363 (rule!5333 (_1!10717 (get!5650 lt!663082)))) (seqFromList!2337 (originalCharacters!4177 (_1!10717 (get!5650 lt!663082)))))))))

(declare-fun b!1729378 () Bool)

(assert (=> b!1729378 (= e!1106345 call!109898)))

(declare-fun b!1729379 () Bool)

(declare-fun res!776543 () Bool)

(assert (=> b!1729379 (=> (not res!776543) (not e!1106347))))

(assert (=> b!1729379 (= res!776543 (< (size!15060 (_2!10717 (get!5650 lt!663082))) (size!15060 lt!662744)))))

(declare-fun b!1729380 () Bool)

(assert (=> b!1729380 (= e!1106346 e!1106347)))

(declare-fun res!776549 () Bool)

(assert (=> b!1729380 (=> (not res!776549) (not e!1106347))))

(assert (=> b!1729380 (= res!776549 (isDefined!3093 lt!663082))))

(declare-fun b!1729381 () Bool)

(declare-fun res!776545 () Bool)

(assert (=> b!1729381 (=> (not res!776545) (not e!1106347))))

(assert (=> b!1729381 (= res!776545 (= (++!5188 (list!7660 (charsOf!2012 (_1!10717 (get!5650 lt!663082)))) (_2!10717 (get!5650 lt!663082))) lt!662744))))

(assert (= (and d!529558 c!282620) b!1729378))

(assert (= (and d!529558 (not c!282620)) b!1729375))

(assert (= (or b!1729378 b!1729375) bm!109893))

(assert (= (and d!529558 (not res!776548)) b!1729380))

(assert (= (and b!1729380 res!776549) b!1729373))

(assert (= (and b!1729373 res!776547) b!1729379))

(assert (= (and b!1729379 res!776543) b!1729381))

(assert (= (and b!1729381 res!776545) b!1729377))

(assert (= (and b!1729377 res!776544) b!1729376))

(assert (= (and b!1729376 res!776546) b!1729374))

(declare-fun m!2137163 () Bool)

(assert (=> b!1729375 m!2137163))

(declare-fun m!2137165 () Bool)

(assert (=> b!1729380 m!2137165))

(declare-fun m!2137167 () Bool)

(assert (=> bm!109893 m!2137167))

(declare-fun m!2137169 () Bool)

(assert (=> b!1729374 m!2137169))

(declare-fun m!2137171 () Bool)

(assert (=> b!1729374 m!2137171))

(assert (=> b!1729381 m!2137169))

(declare-fun m!2137173 () Bool)

(assert (=> b!1729381 m!2137173))

(assert (=> b!1729381 m!2137173))

(declare-fun m!2137175 () Bool)

(assert (=> b!1729381 m!2137175))

(assert (=> b!1729381 m!2137175))

(declare-fun m!2137177 () Bool)

(assert (=> b!1729381 m!2137177))

(assert (=> b!1729377 m!2137169))

(declare-fun m!2137179 () Bool)

(assert (=> b!1729377 m!2137179))

(assert (=> b!1729377 m!2137179))

(declare-fun m!2137181 () Bool)

(assert (=> b!1729377 m!2137181))

(declare-fun m!2137183 () Bool)

(assert (=> d!529558 m!2137183))

(declare-fun m!2137185 () Bool)

(assert (=> d!529558 m!2137185))

(declare-fun m!2137187 () Bool)

(assert (=> d!529558 m!2137187))

(assert (=> d!529558 m!2136813))

(assert (=> b!1729373 m!2137169))

(assert (=> b!1729373 m!2137173))

(assert (=> b!1729373 m!2137173))

(assert (=> b!1729373 m!2137175))

(assert (=> b!1729376 m!2137169))

(assert (=> b!1729376 m!2137173))

(assert (=> b!1729376 m!2137173))

(assert (=> b!1729376 m!2137175))

(assert (=> b!1729376 m!2137175))

(declare-fun m!2137189 () Bool)

(assert (=> b!1729376 m!2137189))

(assert (=> b!1729379 m!2137169))

(declare-fun m!2137191 () Bool)

(assert (=> b!1729379 m!2137191))

(assert (=> b!1729379 m!2136655))

(assert (=> b!1728660 d!529558))

(declare-fun d!529560 () Bool)

(assert (=> d!529560 (= (list!7660 lt!662735) (list!7661 (c!282497 lt!662735)))))

(declare-fun bs!402554 () Bool)

(assert (= bs!402554 d!529560))

(declare-fun m!2137193 () Bool)

(assert (=> bs!402554 m!2137193))

(assert (=> b!1728660 d!529560))

(declare-fun d!529562 () Bool)

(declare-fun lt!663087 () BalanceConc!12550)

(assert (=> d!529562 (= (list!7660 lt!663087) (originalCharacters!4177 token!523))))

(assert (=> d!529562 (= lt!663087 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 token!523))) (value!105518 token!523)))))

(assert (=> d!529562 (= (charsOf!2012 token!523) lt!663087)))

(declare-fun b_lambda!55119 () Bool)

(assert (=> (not b_lambda!55119) (not d!529562)))

(declare-fun t!160497 () Bool)

(declare-fun tb!102909 () Bool)

(assert (=> (and b!1728687 (= (toChars!4729 (transformation!3363 rule!422)) (toChars!4729 (transformation!3363 (rule!5333 token!523)))) t!160497) tb!102909))

(declare-fun b!1729382 () Bool)

(declare-fun e!1106348 () Bool)

(declare-fun tp!493203 () Bool)

(assert (=> b!1729382 (= e!1106348 (and (inv!24508 (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 token!523))) (value!105518 token!523)))) tp!493203))))

(declare-fun result!123724 () Bool)

(assert (=> tb!102909 (= result!123724 (and (inv!24509 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 token!523))) (value!105518 token!523))) e!1106348))))

(assert (= tb!102909 b!1729382))

(declare-fun m!2137195 () Bool)

(assert (=> b!1729382 m!2137195))

(declare-fun m!2137197 () Bool)

(assert (=> tb!102909 m!2137197))

(assert (=> d!529562 t!160497))

(declare-fun b_and!127305 () Bool)

(assert (= b_and!127259 (and (=> t!160497 result!123724) b_and!127305)))

(declare-fun tb!102911 () Bool)

(declare-fun t!160499 () Bool)

(assert (=> (and b!1728682 (= (toChars!4729 (transformation!3363 (h!24353 rules!3447))) (toChars!4729 (transformation!3363 (rule!5333 token!523)))) t!160499) tb!102911))

(declare-fun result!123726 () Bool)

(assert (= result!123726 result!123724))

(assert (=> d!529562 t!160499))

(declare-fun b_and!127307 () Bool)

(assert (= b_and!127261 (and (=> t!160499 result!123726) b_and!127307)))

(declare-fun t!160501 () Bool)

(declare-fun tb!102913 () Bool)

(assert (=> (and b!1728670 (= (toChars!4729 (transformation!3363 (rule!5333 token!523))) (toChars!4729 (transformation!3363 (rule!5333 token!523)))) t!160501) tb!102913))

(declare-fun result!123728 () Bool)

(assert (= result!123728 result!123724))

(assert (=> d!529562 t!160501))

(declare-fun b_and!127309 () Bool)

(assert (= b_and!127263 (and (=> t!160501 result!123728) b_and!127309)))

(declare-fun m!2137199 () Bool)

(assert (=> d!529562 m!2137199))

(declare-fun m!2137201 () Bool)

(assert (=> d!529562 m!2137201))

(assert (=> b!1728660 d!529562))

(declare-fun d!529564 () Bool)

(assert (=> d!529564 (= (inv!24509 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (value!105518 (_1!10717 lt!662758)))) (isBalanced!1971 (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (value!105518 (_1!10717 lt!662758))))))))

(declare-fun bs!402555 () Bool)

(assert (= bs!402555 d!529564))

(declare-fun m!2137203 () Bool)

(assert (=> bs!402555 m!2137203))

(assert (=> tb!102861 d!529564))

(declare-fun d!529566 () Bool)

(declare-fun choose!10562 (Int) Bool)

(assert (=> d!529566 (= (Forall!738 lambda!69314) (choose!10562 lambda!69314))))

(declare-fun bs!402556 () Bool)

(assert (= bs!402556 d!529566))

(declare-fun m!2137205 () Bool)

(assert (=> bs!402556 m!2137205))

(assert (=> b!1728681 d!529566))

(declare-fun d!529568 () Bool)

(declare-fun e!1106351 () Bool)

(assert (=> d!529568 e!1106351))

(declare-fun res!776552 () Bool)

(assert (=> d!529568 (=> (not res!776552) (not e!1106351))))

(assert (=> d!529568 (= res!776552 (semiInverseModEq!1331 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))))))

(declare-fun Unit!32811 () Unit!32803)

(assert (=> d!529568 (= (lemmaInv!570 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) Unit!32811)))

(declare-fun b!1729385 () Bool)

(assert (=> b!1729385 (= e!1106351 (equivClasses!1272 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))))))

(assert (= (and d!529568 res!776552) b!1729385))

(declare-fun m!2137207 () Bool)

(assert (=> d!529568 m!2137207))

(declare-fun m!2137209 () Bool)

(assert (=> b!1729385 m!2137209))

(assert (=> b!1728681 d!529568))

(declare-fun d!529570 () Bool)

(assert (=> d!529570 (= (inv!24501 (tag!3685 rule!422)) (= (mod (str.len (value!105517 (tag!3685 rule!422))) 2) 0))))

(assert (=> b!1728683 d!529570))

(declare-fun d!529572 () Bool)

(declare-fun res!776553 () Bool)

(declare-fun e!1106352 () Bool)

(assert (=> d!529572 (=> (not res!776553) (not e!1106352))))

(assert (=> d!529572 (= res!776553 (semiInverseModEq!1331 (toChars!4729 (transformation!3363 rule!422)) (toValue!4870 (transformation!3363 rule!422))))))

(assert (=> d!529572 (= (inv!24506 (transformation!3363 rule!422)) e!1106352)))

(declare-fun b!1729386 () Bool)

(assert (=> b!1729386 (= e!1106352 (equivClasses!1272 (toChars!4729 (transformation!3363 rule!422)) (toValue!4870 (transformation!3363 rule!422))))))

(assert (= (and d!529572 res!776553) b!1729386))

(declare-fun m!2137211 () Bool)

(assert (=> d!529572 m!2137211))

(declare-fun m!2137213 () Bool)

(assert (=> b!1729386 m!2137213))

(assert (=> b!1728683 d!529572))

(declare-fun d!529574 () Bool)

(declare-fun c!282622 () Bool)

(assert (=> d!529574 (= c!282622 ((_ is IntegerValue!10359) (value!105518 token!523)))))

(declare-fun e!1106353 () Bool)

(assert (=> d!529574 (= (inv!21 (value!105518 token!523)) e!1106353)))

(declare-fun b!1729387 () Bool)

(declare-fun e!1106354 () Bool)

(assert (=> b!1729387 (= e!1106354 (inv!17 (value!105518 token!523)))))

(declare-fun b!1729388 () Bool)

(declare-fun e!1106355 () Bool)

(assert (=> b!1729388 (= e!1106355 (inv!15 (value!105518 token!523)))))

(declare-fun b!1729389 () Bool)

(assert (=> b!1729389 (= e!1106353 e!1106354)))

(declare-fun c!282621 () Bool)

(assert (=> b!1729389 (= c!282621 ((_ is IntegerValue!10360) (value!105518 token!523)))))

(declare-fun b!1729390 () Bool)

(declare-fun res!776554 () Bool)

(assert (=> b!1729390 (=> res!776554 e!1106355)))

(assert (=> b!1729390 (= res!776554 (not ((_ is IntegerValue!10361) (value!105518 token!523))))))

(assert (=> b!1729390 (= e!1106354 e!1106355)))

(declare-fun b!1729391 () Bool)

(assert (=> b!1729391 (= e!1106353 (inv!16 (value!105518 token!523)))))

(assert (= (and d!529574 c!282622) b!1729391))

(assert (= (and d!529574 (not c!282622)) b!1729389))

(assert (= (and b!1729389 c!282621) b!1729387))

(assert (= (and b!1729389 (not c!282621)) b!1729390))

(assert (= (and b!1729390 (not res!776554)) b!1729388))

(declare-fun m!2137215 () Bool)

(assert (=> b!1729387 m!2137215))

(declare-fun m!2137217 () Bool)

(assert (=> b!1729388 m!2137217))

(declare-fun m!2137219 () Bool)

(assert (=> b!1729391 m!2137219))

(assert (=> b!1728679 d!529574))

(declare-fun d!529576 () Bool)

(declare-fun lt!663090 () Bool)

(declare-fun content!2712 (List!19022) (InoxSet Rule!6526))

(assert (=> d!529576 (= lt!663090 (select (content!2712 rules!3447) rule!422))))

(declare-fun e!1106360 () Bool)

(assert (=> d!529576 (= lt!663090 e!1106360)))

(declare-fun res!776560 () Bool)

(assert (=> d!529576 (=> (not res!776560) (not e!1106360))))

(assert (=> d!529576 (= res!776560 ((_ is Cons!18952) rules!3447))))

(assert (=> d!529576 (= (contains!3385 rules!3447 rule!422) lt!663090)))

(declare-fun b!1729396 () Bool)

(declare-fun e!1106361 () Bool)

(assert (=> b!1729396 (= e!1106360 e!1106361)))

(declare-fun res!776559 () Bool)

(assert (=> b!1729396 (=> res!776559 e!1106361)))

(assert (=> b!1729396 (= res!776559 (= (h!24353 rules!3447) rule!422))))

(declare-fun b!1729397 () Bool)

(assert (=> b!1729397 (= e!1106361 (contains!3385 (t!160453 rules!3447) rule!422))))

(assert (= (and d!529576 res!776560) b!1729396))

(assert (= (and b!1729396 (not res!776559)) b!1729397))

(declare-fun m!2137221 () Bool)

(assert (=> d!529576 m!2137221))

(declare-fun m!2137223 () Bool)

(assert (=> d!529576 m!2137223))

(declare-fun m!2137225 () Bool)

(assert (=> b!1729397 m!2137225))

(assert (=> b!1728678 d!529576))

(declare-fun d!529578 () Bool)

(declare-fun res!776563 () Bool)

(declare-fun e!1106364 () Bool)

(assert (=> d!529578 (=> (not res!776563) (not e!1106364))))

(declare-fun rulesValid!1258 (LexerInterface!2992 List!19022) Bool)

(assert (=> d!529578 (= res!776563 (rulesValid!1258 thiss!24550 rules!3447))))

(assert (=> d!529578 (= (rulesInvariant!2661 thiss!24550 rules!3447) e!1106364)))

(declare-fun b!1729400 () Bool)

(declare-datatypes ((List!19028 0))(
  ( (Nil!18958) (Cons!18958 (h!24359 String!21597) (t!160519 List!19028)) )
))
(declare-fun noDuplicateTag!1258 (LexerInterface!2992 List!19022 List!19028) Bool)

(assert (=> b!1729400 (= e!1106364 (noDuplicateTag!1258 thiss!24550 rules!3447 Nil!18958))))

(assert (= (and d!529578 res!776563) b!1729400))

(declare-fun m!2137227 () Bool)

(assert (=> d!529578 m!2137227))

(declare-fun m!2137229 () Bool)

(assert (=> b!1729400 m!2137229))

(assert (=> b!1728657 d!529578))

(declare-fun d!529580 () Bool)

(declare-fun res!776568 () Bool)

(declare-fun e!1106367 () Bool)

(assert (=> d!529580 (=> (not res!776568) (not e!1106367))))

(assert (=> d!529580 (= res!776568 (not (isEmpty!11921 (originalCharacters!4177 token!523))))))

(assert (=> d!529580 (= (inv!24507 token!523) e!1106367)))

(declare-fun b!1729405 () Bool)

(declare-fun res!776569 () Bool)

(assert (=> b!1729405 (=> (not res!776569) (not e!1106367))))

(assert (=> b!1729405 (= res!776569 (= (originalCharacters!4177 token!523) (list!7660 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 token!523))) (value!105518 token!523)))))))

(declare-fun b!1729406 () Bool)

(assert (=> b!1729406 (= e!1106367 (= (size!15058 token!523) (size!15060 (originalCharacters!4177 token!523))))))

(assert (= (and d!529580 res!776568) b!1729405))

(assert (= (and b!1729405 res!776569) b!1729406))

(declare-fun b_lambda!55121 () Bool)

(assert (=> (not b_lambda!55121) (not b!1729405)))

(assert (=> b!1729405 t!160497))

(declare-fun b_and!127311 () Bool)

(assert (= b_and!127305 (and (=> t!160497 result!123724) b_and!127311)))

(assert (=> b!1729405 t!160499))

(declare-fun b_and!127313 () Bool)

(assert (= b_and!127307 (and (=> t!160499 result!123726) b_and!127313)))

(assert (=> b!1729405 t!160501))

(declare-fun b_and!127315 () Bool)

(assert (= b_and!127309 (and (=> t!160501 result!123728) b_and!127315)))

(declare-fun m!2137231 () Bool)

(assert (=> d!529580 m!2137231))

(assert (=> b!1729405 m!2137201))

(assert (=> b!1729405 m!2137201))

(declare-fun m!2137233 () Bool)

(assert (=> b!1729405 m!2137233))

(declare-fun m!2137235 () Bool)

(assert (=> b!1729406 m!2137235))

(assert (=> start!169766 d!529580))

(declare-fun d!529582 () Bool)

(declare-fun lt!663091 () Int)

(assert (=> d!529582 (= lt!663091 (size!15060 (list!7660 lt!662735)))))

(assert (=> d!529582 (= lt!663091 (size!15062 (c!282497 lt!662735)))))

(assert (=> d!529582 (= (size!15059 lt!662735) lt!663091)))

(declare-fun bs!402557 () Bool)

(assert (= bs!402557 d!529582))

(assert (=> bs!402557 m!2136245))

(assert (=> bs!402557 m!2136245))

(declare-fun m!2137237 () Bool)

(assert (=> bs!402557 m!2137237))

(declare-fun m!2137239 () Bool)

(assert (=> bs!402557 m!2137239))

(assert (=> b!1728659 d!529582))

(declare-fun d!529584 () Bool)

(declare-fun e!1106373 () Bool)

(assert (=> d!529584 e!1106373))

(declare-fun c!282623 () Bool)

(assert (=> d!529584 (= c!282623 ((_ is EmptyExpr!4691) lt!662749))))

(declare-fun lt!663092 () Bool)

(declare-fun e!1106374 () Bool)

(assert (=> d!529584 (= lt!663092 e!1106374)))

(declare-fun c!282625 () Bool)

(assert (=> d!529584 (= c!282625 (isEmpty!11921 lt!662744))))

(assert (=> d!529584 (validRegex!1892 lt!662749)))

(assert (=> d!529584 (= (matchR!2165 lt!662749 lt!662744) lt!663092)))

(declare-fun b!1729407 () Bool)

(declare-fun e!1106368 () Bool)

(assert (=> b!1729407 (= e!1106368 (= (head!3928 lt!662744) (c!282496 lt!662749)))))

(declare-fun b!1729408 () Bool)

(declare-fun e!1106372 () Bool)

(declare-fun e!1106370 () Bool)

(assert (=> b!1729408 (= e!1106372 e!1106370)))

(declare-fun res!776573 () Bool)

(assert (=> b!1729408 (=> res!776573 e!1106370)))

(declare-fun call!109899 () Bool)

(assert (=> b!1729408 (= res!776573 call!109899)))

(declare-fun b!1729409 () Bool)

(assert (=> b!1729409 (= e!1106374 (matchR!2165 (derivativeStep!1186 lt!662749 (head!3928 lt!662744)) (tail!2583 lt!662744)))))

(declare-fun b!1729410 () Bool)

(declare-fun e!1106371 () Bool)

(assert (=> b!1729410 (= e!1106371 (not lt!663092))))

(declare-fun b!1729411 () Bool)

(declare-fun res!776575 () Bool)

(assert (=> b!1729411 (=> (not res!776575) (not e!1106368))))

(assert (=> b!1729411 (= res!776575 (isEmpty!11921 (tail!2583 lt!662744)))))

(declare-fun b!1729412 () Bool)

(declare-fun e!1106369 () Bool)

(assert (=> b!1729412 (= e!1106369 e!1106372)))

(declare-fun res!776574 () Bool)

(assert (=> b!1729412 (=> (not res!776574) (not e!1106372))))

(assert (=> b!1729412 (= res!776574 (not lt!663092))))

(declare-fun b!1729413 () Bool)

(declare-fun res!776570 () Bool)

(assert (=> b!1729413 (=> res!776570 e!1106370)))

(assert (=> b!1729413 (= res!776570 (not (isEmpty!11921 (tail!2583 lt!662744))))))

(declare-fun bm!109894 () Bool)

(assert (=> bm!109894 (= call!109899 (isEmpty!11921 lt!662744))))

(declare-fun b!1729414 () Bool)

(declare-fun res!776577 () Bool)

(assert (=> b!1729414 (=> res!776577 e!1106369)))

(assert (=> b!1729414 (= res!776577 e!1106368)))

(declare-fun res!776572 () Bool)

(assert (=> b!1729414 (=> (not res!776572) (not e!1106368))))

(assert (=> b!1729414 (= res!776572 lt!663092)))

(declare-fun b!1729415 () Bool)

(declare-fun res!776571 () Bool)

(assert (=> b!1729415 (=> res!776571 e!1106369)))

(assert (=> b!1729415 (= res!776571 (not ((_ is ElementMatch!4691) lt!662749)))))

(assert (=> b!1729415 (= e!1106371 e!1106369)))

(declare-fun b!1729416 () Bool)

(assert (=> b!1729416 (= e!1106374 (nullable!1418 lt!662749))))

(declare-fun b!1729417 () Bool)

(assert (=> b!1729417 (= e!1106373 (= lt!663092 call!109899))))

(declare-fun b!1729418 () Bool)

(assert (=> b!1729418 (= e!1106373 e!1106371)))

(declare-fun c!282624 () Bool)

(assert (=> b!1729418 (= c!282624 ((_ is EmptyLang!4691) lt!662749))))

(declare-fun b!1729419 () Bool)

(declare-fun res!776576 () Bool)

(assert (=> b!1729419 (=> (not res!776576) (not e!1106368))))

(assert (=> b!1729419 (= res!776576 (not call!109899))))

(declare-fun b!1729420 () Bool)

(assert (=> b!1729420 (= e!1106370 (not (= (head!3928 lt!662744) (c!282496 lt!662749))))))

(assert (= (and d!529584 c!282625) b!1729416))

(assert (= (and d!529584 (not c!282625)) b!1729409))

(assert (= (and d!529584 c!282623) b!1729417))

(assert (= (and d!529584 (not c!282623)) b!1729418))

(assert (= (and b!1729418 c!282624) b!1729410))

(assert (= (and b!1729418 (not c!282624)) b!1729415))

(assert (= (and b!1729415 (not res!776571)) b!1729414))

(assert (= (and b!1729414 res!776572) b!1729419))

(assert (= (and b!1729419 res!776576) b!1729411))

(assert (= (and b!1729411 res!776575) b!1729407))

(assert (= (and b!1729414 (not res!776577)) b!1729412))

(assert (= (and b!1729412 res!776574) b!1729408))

(assert (= (and b!1729408 (not res!776573)) b!1729413))

(assert (= (and b!1729413 (not res!776570)) b!1729420))

(assert (= (or b!1729417 b!1729408 b!1729419) bm!109894))

(assert (=> bm!109894 m!2136697))

(assert (=> b!1729411 m!2136699))

(assert (=> b!1729411 m!2136699))

(assert (=> b!1729411 m!2136701))

(assert (=> b!1729416 m!2136773))

(assert (=> d!529584 m!2136697))

(assert (=> d!529584 m!2136775))

(assert (=> b!1729413 m!2136699))

(assert (=> b!1729413 m!2136699))

(assert (=> b!1729413 m!2136701))

(assert (=> b!1729420 m!2136707))

(assert (=> b!1729407 m!2136707))

(assert (=> b!1729409 m!2136707))

(assert (=> b!1729409 m!2136707))

(declare-fun m!2137241 () Bool)

(assert (=> b!1729409 m!2137241))

(assert (=> b!1729409 m!2136699))

(assert (=> b!1729409 m!2137241))

(assert (=> b!1729409 m!2136699))

(declare-fun m!2137243 () Bool)

(assert (=> b!1729409 m!2137243))

(assert (=> b!1728659 d!529584))

(declare-fun d!529586 () Bool)

(assert (=> d!529586 (matchR!2165 (rulesRegex!721 thiss!24550 rules!3447) (list!7660 (charsOf!2012 token!523)))))

(declare-fun lt!663093 () Unit!32803)

(assert (=> d!529586 (= lt!663093 (choose!10557 thiss!24550 rules!3447 lt!662744 token!523 rule!422 Nil!18951))))

(assert (=> d!529586 (not (isEmpty!11922 rules!3447))))

(assert (=> d!529586 (= (lemmaMaxPrefixThenMatchesRulesRegex!112 thiss!24550 rules!3447 lt!662744 token!523 rule!422 Nil!18951) lt!663093)))

(declare-fun bs!402558 () Bool)

(assert (= bs!402558 d!529586))

(assert (=> bs!402558 m!2136247))

(declare-fun m!2137245 () Bool)

(assert (=> bs!402558 m!2137245))

(assert (=> bs!402558 m!2136267))

(assert (=> bs!402558 m!2137245))

(declare-fun m!2137247 () Bool)

(assert (=> bs!402558 m!2137247))

(assert (=> bs!402558 m!2136247))

(assert (=> bs!402558 m!2136217))

(declare-fun m!2137249 () Bool)

(assert (=> bs!402558 m!2137249))

(assert (=> bs!402558 m!2136267))

(assert (=> b!1728659 d!529586))

(declare-fun d!529588 () Bool)

(declare-fun c!282626 () Bool)

(assert (=> d!529588 (= c!282626 ((_ is Node!6303) (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748)))))))

(declare-fun e!1106375 () Bool)

(assert (=> d!529588 (= (inv!24508 (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748)))) e!1106375)))

(declare-fun b!1729421 () Bool)

(assert (=> b!1729421 (= e!1106375 (inv!24510 (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748)))))))

(declare-fun b!1729422 () Bool)

(declare-fun e!1106376 () Bool)

(assert (=> b!1729422 (= e!1106375 e!1106376)))

(declare-fun res!776578 () Bool)

(assert (=> b!1729422 (= res!776578 (not ((_ is Leaf!9205) (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748))))))))

(assert (=> b!1729422 (=> res!776578 e!1106376)))

(declare-fun b!1729423 () Bool)

(assert (=> b!1729423 (= e!1106376 (inv!24511 (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748)))))))

(assert (= (and d!529588 c!282626) b!1729421))

(assert (= (and d!529588 (not c!282626)) b!1729422))

(assert (= (and b!1729422 (not res!776578)) b!1729423))

(declare-fun m!2137251 () Bool)

(assert (=> b!1729421 m!2137251))

(declare-fun m!2137253 () Bool)

(assert (=> b!1729423 m!2137253))

(assert (=> b!1728703 d!529588))

(declare-fun d!529590 () Bool)

(declare-fun e!1106382 () Bool)

(assert (=> d!529590 e!1106382))

(declare-fun c!282627 () Bool)

(assert (=> d!529590 (= c!282627 ((_ is EmptyExpr!4691) (regex!3363 lt!662755)))))

(declare-fun lt!663094 () Bool)

(declare-fun e!1106383 () Bool)

(assert (=> d!529590 (= lt!663094 e!1106383)))

(declare-fun c!282629 () Bool)

(assert (=> d!529590 (= c!282629 (isEmpty!11921 (list!7660 (charsOf!2012 (_1!10717 lt!662758)))))))

(assert (=> d!529590 (validRegex!1892 (regex!3363 lt!662755))))

(assert (=> d!529590 (= (matchR!2165 (regex!3363 lt!662755) (list!7660 (charsOf!2012 (_1!10717 lt!662758)))) lt!663094)))

(declare-fun b!1729424 () Bool)

(declare-fun e!1106377 () Bool)

(assert (=> b!1729424 (= e!1106377 (= (head!3928 (list!7660 (charsOf!2012 (_1!10717 lt!662758)))) (c!282496 (regex!3363 lt!662755))))))

(declare-fun b!1729425 () Bool)

(declare-fun e!1106381 () Bool)

(declare-fun e!1106379 () Bool)

(assert (=> b!1729425 (= e!1106381 e!1106379)))

(declare-fun res!776582 () Bool)

(assert (=> b!1729425 (=> res!776582 e!1106379)))

(declare-fun call!109900 () Bool)

(assert (=> b!1729425 (= res!776582 call!109900)))

(declare-fun b!1729426 () Bool)

(assert (=> b!1729426 (= e!1106383 (matchR!2165 (derivativeStep!1186 (regex!3363 lt!662755) (head!3928 (list!7660 (charsOf!2012 (_1!10717 lt!662758))))) (tail!2583 (list!7660 (charsOf!2012 (_1!10717 lt!662758))))))))

(declare-fun b!1729427 () Bool)

(declare-fun e!1106380 () Bool)

(assert (=> b!1729427 (= e!1106380 (not lt!663094))))

(declare-fun b!1729428 () Bool)

(declare-fun res!776584 () Bool)

(assert (=> b!1729428 (=> (not res!776584) (not e!1106377))))

(assert (=> b!1729428 (= res!776584 (isEmpty!11921 (tail!2583 (list!7660 (charsOf!2012 (_1!10717 lt!662758))))))))

(declare-fun b!1729429 () Bool)

(declare-fun e!1106378 () Bool)

(assert (=> b!1729429 (= e!1106378 e!1106381)))

(declare-fun res!776583 () Bool)

(assert (=> b!1729429 (=> (not res!776583) (not e!1106381))))

(assert (=> b!1729429 (= res!776583 (not lt!663094))))

(declare-fun b!1729430 () Bool)

(declare-fun res!776579 () Bool)

(assert (=> b!1729430 (=> res!776579 e!1106379)))

(assert (=> b!1729430 (= res!776579 (not (isEmpty!11921 (tail!2583 (list!7660 (charsOf!2012 (_1!10717 lt!662758)))))))))

(declare-fun bm!109895 () Bool)

(assert (=> bm!109895 (= call!109900 (isEmpty!11921 (list!7660 (charsOf!2012 (_1!10717 lt!662758)))))))

(declare-fun b!1729431 () Bool)

(declare-fun res!776586 () Bool)

(assert (=> b!1729431 (=> res!776586 e!1106378)))

(assert (=> b!1729431 (= res!776586 e!1106377)))

(declare-fun res!776581 () Bool)

(assert (=> b!1729431 (=> (not res!776581) (not e!1106377))))

(assert (=> b!1729431 (= res!776581 lt!663094)))

(declare-fun b!1729432 () Bool)

(declare-fun res!776580 () Bool)

(assert (=> b!1729432 (=> res!776580 e!1106378)))

(assert (=> b!1729432 (= res!776580 (not ((_ is ElementMatch!4691) (regex!3363 lt!662755))))))

(assert (=> b!1729432 (= e!1106380 e!1106378)))

(declare-fun b!1729433 () Bool)

(assert (=> b!1729433 (= e!1106383 (nullable!1418 (regex!3363 lt!662755)))))

(declare-fun b!1729434 () Bool)

(assert (=> b!1729434 (= e!1106382 (= lt!663094 call!109900))))

(declare-fun b!1729435 () Bool)

(assert (=> b!1729435 (= e!1106382 e!1106380)))

(declare-fun c!282628 () Bool)

(assert (=> b!1729435 (= c!282628 ((_ is EmptyLang!4691) (regex!3363 lt!662755)))))

(declare-fun b!1729436 () Bool)

(declare-fun res!776585 () Bool)

(assert (=> b!1729436 (=> (not res!776585) (not e!1106377))))

(assert (=> b!1729436 (= res!776585 (not call!109900))))

(declare-fun b!1729437 () Bool)

(assert (=> b!1729437 (= e!1106379 (not (= (head!3928 (list!7660 (charsOf!2012 (_1!10717 lt!662758)))) (c!282496 (regex!3363 lt!662755)))))))

(assert (= (and d!529590 c!282629) b!1729433))

(assert (= (and d!529590 (not c!282629)) b!1729426))

(assert (= (and d!529590 c!282627) b!1729434))

(assert (= (and d!529590 (not c!282627)) b!1729435))

(assert (= (and b!1729435 c!282628) b!1729427))

(assert (= (and b!1729435 (not c!282628)) b!1729432))

(assert (= (and b!1729432 (not res!776580)) b!1729431))

(assert (= (and b!1729431 res!776581) b!1729436))

(assert (= (and b!1729436 res!776585) b!1729428))

(assert (= (and b!1729428 res!776584) b!1729424))

(assert (= (and b!1729431 (not res!776586)) b!1729429))

(assert (= (and b!1729429 res!776583) b!1729425))

(assert (= (and b!1729425 (not res!776582)) b!1729430))

(assert (= (and b!1729430 (not res!776579)) b!1729437))

(assert (= (or b!1729434 b!1729425 b!1729436) bm!109895))

(assert (=> bm!109895 m!2136299))

(declare-fun m!2137255 () Bool)

(assert (=> bm!109895 m!2137255))

(assert (=> b!1729428 m!2136299))

(declare-fun m!2137257 () Bool)

(assert (=> b!1729428 m!2137257))

(assert (=> b!1729428 m!2137257))

(declare-fun m!2137259 () Bool)

(assert (=> b!1729428 m!2137259))

(declare-fun m!2137261 () Bool)

(assert (=> b!1729433 m!2137261))

(assert (=> d!529590 m!2136299))

(assert (=> d!529590 m!2137255))

(declare-fun m!2137263 () Bool)

(assert (=> d!529590 m!2137263))

(assert (=> b!1729430 m!2136299))

(assert (=> b!1729430 m!2137257))

(assert (=> b!1729430 m!2137257))

(assert (=> b!1729430 m!2137259))

(assert (=> b!1729437 m!2136299))

(declare-fun m!2137265 () Bool)

(assert (=> b!1729437 m!2137265))

(assert (=> b!1729424 m!2136299))

(assert (=> b!1729424 m!2137265))

(assert (=> b!1729426 m!2136299))

(assert (=> b!1729426 m!2137265))

(assert (=> b!1729426 m!2137265))

(declare-fun m!2137267 () Bool)

(assert (=> b!1729426 m!2137267))

(assert (=> b!1729426 m!2136299))

(assert (=> b!1729426 m!2137257))

(assert (=> b!1729426 m!2137267))

(assert (=> b!1729426 m!2137257))

(declare-fun m!2137269 () Bool)

(assert (=> b!1729426 m!2137269))

(assert (=> b!1728658 d!529590))

(declare-fun d!529592 () Bool)

(assert (=> d!529592 (= (list!7660 (charsOf!2012 (_1!10717 lt!662758))) (list!7661 (c!282497 (charsOf!2012 (_1!10717 lt!662758)))))))

(declare-fun bs!402559 () Bool)

(assert (= bs!402559 d!529592))

(declare-fun m!2137271 () Bool)

(assert (=> bs!402559 m!2137271))

(assert (=> b!1728658 d!529592))

(assert (=> b!1728658 d!529456))

(declare-fun d!529594 () Bool)

(assert (=> d!529594 (= (get!5649 lt!662752) (v!25164 lt!662752))))

(assert (=> b!1728658 d!529594))

(declare-fun b!1729450 () Bool)

(declare-fun e!1106386 () Bool)

(declare-fun tp!493216 () Bool)

(assert (=> b!1729450 (= e!1106386 tp!493216)))

(declare-fun b!1729449 () Bool)

(declare-fun tp!493217 () Bool)

(declare-fun tp!493214 () Bool)

(assert (=> b!1729449 (= e!1106386 (and tp!493217 tp!493214))))

(declare-fun b!1729451 () Bool)

(declare-fun tp!493215 () Bool)

(declare-fun tp!493218 () Bool)

(assert (=> b!1729451 (= e!1106386 (and tp!493215 tp!493218))))

(declare-fun b!1729448 () Bool)

(assert (=> b!1729448 (= e!1106386 tp_is_empty!7625)))

(assert (=> b!1728671 (= tp!493139 e!1106386)))

(assert (= (and b!1728671 ((_ is ElementMatch!4691) (regex!3363 (rule!5333 token!523)))) b!1729448))

(assert (= (and b!1728671 ((_ is Concat!8145) (regex!3363 (rule!5333 token!523)))) b!1729449))

(assert (= (and b!1728671 ((_ is Star!4691) (regex!3363 (rule!5333 token!523)))) b!1729450))

(assert (= (and b!1728671 ((_ is Union!4691) (regex!3363 (rule!5333 token!523)))) b!1729451))

(declare-fun b!1729460 () Bool)

(declare-fun tp!493225 () Bool)

(declare-fun e!1106392 () Bool)

(declare-fun tp!493226 () Bool)

(assert (=> b!1729460 (= e!1106392 (and (inv!24508 (left!15134 (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (value!105518 (_1!10717 lt!662758)))))) tp!493225 (inv!24508 (right!15464 (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (value!105518 (_1!10717 lt!662758)))))) tp!493226))))

(declare-fun b!1729462 () Bool)

(declare-fun e!1106391 () Bool)

(declare-fun tp!493227 () Bool)

(assert (=> b!1729462 (= e!1106391 tp!493227)))

(declare-fun b!1729461 () Bool)

(declare-fun inv!24514 (IArray!12611) Bool)

(assert (=> b!1729461 (= e!1106392 (and (inv!24514 (xs!9179 (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (value!105518 (_1!10717 lt!662758)))))) e!1106391))))

(assert (=> b!1728706 (= tp!493148 (and (inv!24508 (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (value!105518 (_1!10717 lt!662758))))) e!1106392))))

(assert (= (and b!1728706 ((_ is Node!6303) (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (value!105518 (_1!10717 lt!662758)))))) b!1729460))

(assert (= b!1729461 b!1729462))

(assert (= (and b!1728706 ((_ is Leaf!9205) (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (value!105518 (_1!10717 lt!662758)))))) b!1729461))

(declare-fun m!2137273 () Bool)

(assert (=> b!1729460 m!2137273))

(declare-fun m!2137275 () Bool)

(assert (=> b!1729460 m!2137275))

(declare-fun m!2137277 () Bool)

(assert (=> b!1729461 m!2137277))

(assert (=> b!1728706 m!2136153))

(declare-fun b!1729465 () Bool)

(declare-fun e!1106393 () Bool)

(declare-fun tp!493230 () Bool)

(assert (=> b!1729465 (= e!1106393 tp!493230)))

(declare-fun b!1729464 () Bool)

(declare-fun tp!493231 () Bool)

(declare-fun tp!493228 () Bool)

(assert (=> b!1729464 (= e!1106393 (and tp!493231 tp!493228))))

(declare-fun b!1729466 () Bool)

(declare-fun tp!493229 () Bool)

(declare-fun tp!493232 () Bool)

(assert (=> b!1729466 (= e!1106393 (and tp!493229 tp!493232))))

(declare-fun b!1729463 () Bool)

(assert (=> b!1729463 (= e!1106393 tp_is_empty!7625)))

(assert (=> b!1728683 (= tp!493137 e!1106393)))

(assert (= (and b!1728683 ((_ is ElementMatch!4691) (regex!3363 rule!422))) b!1729463))

(assert (= (and b!1728683 ((_ is Concat!8145) (regex!3363 rule!422))) b!1729464))

(assert (= (and b!1728683 ((_ is Star!4691) (regex!3363 rule!422))) b!1729465))

(assert (= (and b!1728683 ((_ is Union!4691) (regex!3363 rule!422))) b!1729466))

(declare-fun b!1729471 () Bool)

(declare-fun e!1106396 () Bool)

(declare-fun tp!493235 () Bool)

(assert (=> b!1729471 (= e!1106396 (and tp_is_empty!7625 tp!493235))))

(assert (=> b!1728677 (= tp!493141 e!1106396)))

(assert (= (and b!1728677 ((_ is Cons!18951) (t!160452 suffix!1421))) b!1729471))

(declare-fun b!1729472 () Bool)

(declare-fun e!1106397 () Bool)

(declare-fun tp!493236 () Bool)

(assert (=> b!1729472 (= e!1106397 (and tp_is_empty!7625 tp!493236))))

(assert (=> b!1728679 (= tp!493144 e!1106397)))

(assert (= (and b!1728679 ((_ is Cons!18951) (originalCharacters!4177 token!523))) b!1729472))

(declare-fun b!1729483 () Bool)

(declare-fun b_free!47283 () Bool)

(declare-fun b_next!47987 () Bool)

(assert (=> b!1729483 (= b_free!47283 (not b_next!47987))))

(declare-fun t!160503 () Bool)

(declare-fun tb!102915 () Bool)

(assert (=> (and b!1729483 (= (toValue!4870 (transformation!3363 (h!24353 (t!160453 rules!3447)))) (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) t!160503) tb!102915))

(declare-fun result!123738 () Bool)

(assert (= result!123738 result!123692))

(assert (=> d!529426 t!160503))

(declare-fun tb!102917 () Bool)

(declare-fun t!160505 () Bool)

(assert (=> (and b!1729483 (= (toValue!4870 (transformation!3363 (h!24353 (t!160453 rules!3447)))) (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) t!160505) tb!102917))

(declare-fun result!123740 () Bool)

(assert (= result!123740 result!123686))

(assert (=> d!529356 t!160505))

(declare-fun tb!102919 () Bool)

(declare-fun t!160507 () Bool)

(assert (=> (and b!1729483 (= (toValue!4870 (transformation!3363 (h!24353 (t!160453 rules!3447)))) (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) t!160507) tb!102919))

(declare-fun result!123742 () Bool)

(assert (= result!123742 result!123660))

(assert (=> b!1728664 t!160507))

(assert (=> d!529424 t!160507))

(assert (=> d!529426 t!160507))

(assert (=> d!529398 t!160507))

(declare-fun tp!493246 () Bool)

(declare-fun b_and!127317 () Bool)

(assert (=> b!1729483 (= tp!493246 (and (=> t!160507 result!123742) (=> t!160505 result!123740) (=> t!160503 result!123738) b_and!127317))))

(declare-fun b_free!47285 () Bool)

(declare-fun b_next!47989 () Bool)

(assert (=> b!1729483 (= b_free!47285 (not b_next!47989))))

(declare-fun tb!102921 () Bool)

(declare-fun t!160509 () Bool)

(assert (=> (and b!1729483 (= (toChars!4729 (transformation!3363 (h!24353 (t!160453 rules!3447)))) (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) t!160509) tb!102921))

(declare-fun result!123744 () Bool)

(assert (= result!123744 result!123652))

(assert (=> b!1728664 t!160509))

(assert (=> d!529398 t!160509))

(declare-fun tb!102923 () Bool)

(declare-fun t!160511 () Bool)

(assert (=> (and b!1729483 (= (toChars!4729 (transformation!3363 (h!24353 (t!160453 rules!3447)))) (toChars!4729 (transformation!3363 (rule!5333 token!523)))) t!160511) tb!102923))

(declare-fun result!123746 () Bool)

(assert (= result!123746 result!123724))

(assert (=> b!1729405 t!160511))

(declare-fun t!160513 () Bool)

(declare-fun tb!102925 () Bool)

(assert (=> (and b!1729483 (= (toChars!4729 (transformation!3363 (h!24353 (t!160453 rules!3447)))) (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758))))) t!160513) tb!102925))

(declare-fun result!123748 () Bool)

(assert (= result!123748 result!123668))

(assert (=> b!1728663 t!160513))

(assert (=> d!529562 t!160511))

(assert (=> d!529456 t!160513))

(declare-fun b_and!127319 () Bool)

(declare-fun tp!493247 () Bool)

(assert (=> b!1729483 (= tp!493247 (and (=> t!160511 result!123746) (=> t!160509 result!123744) (=> t!160513 result!123748) b_and!127319))))

(declare-fun e!1106406 () Bool)

(assert (=> b!1729483 (= e!1106406 (and tp!493246 tp!493247))))

(declare-fun e!1106409 () Bool)

(declare-fun tp!493248 () Bool)

(declare-fun b!1729482 () Bool)

(assert (=> b!1729482 (= e!1106409 (and tp!493248 (inv!24501 (tag!3685 (h!24353 (t!160453 rules!3447)))) (inv!24506 (transformation!3363 (h!24353 (t!160453 rules!3447)))) e!1106406))))

(declare-fun b!1729481 () Bool)

(declare-fun e!1106407 () Bool)

(declare-fun tp!493245 () Bool)

(assert (=> b!1729481 (= e!1106407 (and e!1106409 tp!493245))))

(assert (=> b!1728680 (= tp!493134 e!1106407)))

(assert (= b!1729482 b!1729483))

(assert (= b!1729481 b!1729482))

(assert (= (and b!1728680 ((_ is Cons!18952) (t!160453 rules!3447))) b!1729481))

(declare-fun m!2137279 () Bool)

(assert (=> b!1729482 m!2137279))

(declare-fun m!2137281 () Bool)

(assert (=> b!1729482 m!2137281))

(declare-fun e!1106411 () Bool)

(declare-fun tp!493250 () Bool)

(declare-fun tp!493249 () Bool)

(declare-fun b!1729484 () Bool)

(assert (=> b!1729484 (= e!1106411 (and (inv!24508 (left!15134 (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748))))) tp!493249 (inv!24508 (right!15464 (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748))))) tp!493250))))

(declare-fun b!1729486 () Bool)

(declare-fun e!1106410 () Bool)

(declare-fun tp!493251 () Bool)

(assert (=> b!1729486 (= e!1106410 tp!493251)))

(declare-fun b!1729485 () Bool)

(assert (=> b!1729485 (= e!1106411 (and (inv!24514 (xs!9179 (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748))))) e!1106410))))

(assert (=> b!1728703 (= tp!493147 (and (inv!24508 (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748)))) e!1106411))))

(assert (= (and b!1728703 ((_ is Node!6303) (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748))))) b!1729484))

(assert (= b!1729485 b!1729486))

(assert (= (and b!1728703 ((_ is Leaf!9205) (c!282497 (dynLambda!8817 (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) (dynLambda!8818 (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))) lt!662748))))) b!1729485))

(declare-fun m!2137283 () Bool)

(assert (=> b!1729484 m!2137283))

(declare-fun m!2137285 () Bool)

(assert (=> b!1729484 m!2137285))

(declare-fun m!2137287 () Bool)

(assert (=> b!1729485 m!2137287))

(assert (=> b!1728703 m!2136147))

(declare-fun b!1729489 () Bool)

(declare-fun e!1106412 () Bool)

(declare-fun tp!493254 () Bool)

(assert (=> b!1729489 (= e!1106412 tp!493254)))

(declare-fun b!1729488 () Bool)

(declare-fun tp!493255 () Bool)

(declare-fun tp!493252 () Bool)

(assert (=> b!1729488 (= e!1106412 (and tp!493255 tp!493252))))

(declare-fun b!1729490 () Bool)

(declare-fun tp!493253 () Bool)

(declare-fun tp!493256 () Bool)

(assert (=> b!1729490 (= e!1106412 (and tp!493253 tp!493256))))

(declare-fun b!1729487 () Bool)

(assert (=> b!1729487 (= e!1106412 tp_is_empty!7625)))

(assert (=> b!1728669 (= tp!493136 e!1106412)))

(assert (= (and b!1728669 ((_ is ElementMatch!4691) (regex!3363 (h!24353 rules!3447)))) b!1729487))

(assert (= (and b!1728669 ((_ is Concat!8145) (regex!3363 (h!24353 rules!3447)))) b!1729488))

(assert (= (and b!1728669 ((_ is Star!4691) (regex!3363 (h!24353 rules!3447)))) b!1729489))

(assert (= (and b!1728669 ((_ is Union!4691) (regex!3363 (h!24353 rules!3447)))) b!1729490))

(declare-fun b_lambda!55123 () Bool)

(assert (= b_lambda!55073 (or (and b!1728687 b_free!47267 (= (toValue!4870 (transformation!3363 rule!422)) (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))))) (and b!1728682 b_free!47271 (= (toValue!4870 (transformation!3363 (h!24353 rules!3447))) (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))))) (and b!1728670 b_free!47275 (= (toValue!4870 (transformation!3363 (rule!5333 token!523))) (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))))) (and b!1729483 b_free!47283 (= (toValue!4870 (transformation!3363 (h!24353 (t!160453 rules!3447)))) (toValue!4870 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))))) b_lambda!55123)))

(declare-fun b_lambda!55125 () Bool)

(assert (= b_lambda!55075 (or (and b!1728687 b_free!47269 (= (toChars!4729 (transformation!3363 rule!422)) (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))))) (and b!1728682 b_free!47273 (= (toChars!4729 (transformation!3363 (h!24353 rules!3447))) (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))))) (and b!1728670 b_free!47277 (= (toChars!4729 (transformation!3363 (rule!5333 token!523))) (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))))) (and b!1729483 b_free!47285 (= (toChars!4729 (transformation!3363 (h!24353 (t!160453 rules!3447)))) (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))))) b_lambda!55125)))

(declare-fun b_lambda!55127 () Bool)

(assert (= b_lambda!55071 (or (and b!1728687 b_free!47269 (= (toChars!4729 (transformation!3363 rule!422)) (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))))) (and b!1728682 b_free!47273 (= (toChars!4729 (transformation!3363 (h!24353 rules!3447))) (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))))) (and b!1728670 b_free!47277 (= (toChars!4729 (transformation!3363 (rule!5333 token!523))) (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))))) (and b!1729483 b_free!47285 (= (toChars!4729 (transformation!3363 (h!24353 (t!160453 rules!3447)))) (toChars!4729 (transformation!3363 (rule!5333 (_1!10717 lt!662758)))))) b_lambda!55127)))

(declare-fun b_lambda!55129 () Bool)

(assert (= b_lambda!55121 (or (and b!1728687 b_free!47269 (= (toChars!4729 (transformation!3363 rule!422)) (toChars!4729 (transformation!3363 (rule!5333 token!523))))) (and b!1728682 b_free!47273 (= (toChars!4729 (transformation!3363 (h!24353 rules!3447))) (toChars!4729 (transformation!3363 (rule!5333 token!523))))) (and b!1728670 b_free!47277) (and b!1729483 b_free!47285 (= (toChars!4729 (transformation!3363 (h!24353 (t!160453 rules!3447)))) (toChars!4729 (transformation!3363 (rule!5333 token!523))))) b_lambda!55129)))

(declare-fun b_lambda!55131 () Bool)

(assert (= b_lambda!55119 (or (and b!1728687 b_free!47269 (= (toChars!4729 (transformation!3363 rule!422)) (toChars!4729 (transformation!3363 (rule!5333 token!523))))) (and b!1728682 b_free!47273 (= (toChars!4729 (transformation!3363 (h!24353 rules!3447))) (toChars!4729 (transformation!3363 (rule!5333 token!523))))) (and b!1728670 b_free!47277) (and b!1729483 b_free!47285 (= (toChars!4729 (transformation!3363 (h!24353 (t!160453 rules!3447)))) (toChars!4729 (transformation!3363 (rule!5333 token!523))))) b_lambda!55131)))

(check-sat (not d!529460) (not b!1729007) (not b!1729437) (not b_next!47979) (not d!529390) (not b!1729430) (not d!529560) (not bm!109884) (not b!1729481) (not d!529440) (not bm!109886) (not b!1729078) (not b!1728703) (not b!1728736) (not d!529438) (not d!529360) (not d!529398) (not b_lambda!55085) (not b!1728915) (not d!529584) (not b!1729124) (not d!529566) (not d!529406) (not b!1729161) (not b!1729374) (not b!1729405) (not b!1729413) (not d!529556) (not bm!109893) (not b_next!47975) (not b!1729011) (not b!1729407) (not b!1729103) (not d!529418) (not b!1729158) (not b!1729112) (not b!1729153) (not b!1729409) (not b!1729113) (not bm!109885) b_and!127255 (not b!1729094) (not bm!109894) (not b!1729202) (not b!1729433) (not b!1729385) (not b!1728914) (not b!1729406) (not b!1729173) b_and!127319 (not d!529568) (not b!1729154) (not b!1729155) (not b!1728732) (not d!529410) (not bm!109895) (not b!1729420) (not b_lambda!55093) (not b!1729376) (not b!1729397) (not b!1729167) (not b!1729034) (not b!1729206) (not b!1729424) (not d!529416) (not b!1729100) (not b!1729482) (not d!529558) (not b!1729147) (not b!1729373) (not b!1729165) (not d!529428) (not tb!102909) (not b!1729119) b_and!127315 (not b!1729484) (not b!1729016) (not b!1729081) (not b!1729411) (not b!1729379) (not b!1729013) (not b!1729150) (not b!1729451) (not d!529592) (not b!1729490) (not b!1728943) (not b!1729485) (not b!1729151) (not d!529578) (not b!1729388) (not b_lambda!55129) (not b!1729201) (not b!1729416) (not b!1729072) (not d!529444) b_and!127257 (not b_next!47981) (not b!1729159) (not b!1729148) (not d!529464) (not b_next!47971) (not b!1729380) (not b!1729471) (not b!1729486) (not b!1729046) (not b_next!47987) (not b!1729020) (not b!1729117) (not d!529414) (not b!1729157) (not d!529470) (not b!1729472) (not b!1728941) (not b!1729387) (not d!529362) (not b!1729423) (not b!1729450) (not b!1729391) (not b!1729464) (not bm!109889) (not b!1729400) (not d!529472) (not b!1729421) (not b!1729149) (not b!1729074) (not b!1729386) (not d!529446) (not b!1729175) (not b!1729449) (not b_lambda!55131) (not b!1729090) (not b!1729177) (not d!529310) (not d!529368) (not b!1728910) (not d!529564) (not d!529562) (not b!1729203) (not b_lambda!55123) (not b!1729466) (not tb!102879) (not b!1729382) (not b!1729176) (not b!1729121) (not b!1729172) (not b!1729460) (not b!1729426) (not b!1729462) (not tb!102885) (not d!529458) b_and!127313 (not d!529456) (not d!529442) (not d!529576) (not b!1729465) (not d!529586) (not b!1729488) (not b!1728911) (not b_next!47977) (not d!529432) (not d!529572) (not b!1729076) (not b!1729099) (not d!529408) (not b!1729370) b_and!127311 (not d!529590) (not b_next!47973) (not d!529454) (not d!529394) (not d!529430) (not b!1729102) (not b_lambda!55127) (not d!529312) (not b!1729009) (not b!1728741) (not b!1729205) (not d!529448) (not b!1729085) b_and!127253 (not d!529404) (not b_lambda!55089) tp_is_empty!7625 (not b!1729035) (not b!1729461) (not b!1729115) (not b!1729489) b_and!127317 (not b_lambda!55091) (not b!1729375) (not b_lambda!55095) (not b!1729166) (not b!1729128) (not d!529582) (not b!1729377) (not b!1729369) (not b_next!47989) (not b!1728733) (not d!529426) (not b!1728913) (not b_lambda!55087) (not b!1728934) (not b!1729371) (not b!1729047) (not d!529580) (not d!529396) (not d!529358) (not d!529436) (not b!1729381) (not b!1728917) (not b!1728918) (not b_lambda!55125) (not d!529452) (not b_lambda!55081) (not b!1729428) (not d!529468) (not b!1728912) (not b!1729162) (not d!529422) (not b!1728706) (not b!1729036))
(check-sat (not b_next!47979) (not b_next!47975) b_and!127255 b_and!127319 b_and!127315 b_and!127257 (not b_next!47987) b_and!127313 (not b_next!47977) b_and!127311 b_and!127317 (not b_next!47989) (not b_next!47981) (not b_next!47971) (not b_next!47973) b_and!127253)

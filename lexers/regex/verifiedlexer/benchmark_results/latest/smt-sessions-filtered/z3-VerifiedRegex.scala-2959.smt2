; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!175178 () Bool)

(assert start!175178)

(declare-fun b!1767236 () Bool)

(declare-fun b_free!48911 () Bool)

(declare-fun b_next!49615 () Bool)

(assert (=> b!1767236 (= b_free!48911 (not b_next!49615))))

(declare-fun tp!501544 () Bool)

(declare-fun b_and!134031 () Bool)

(assert (=> b!1767236 (= tp!501544 b_and!134031)))

(declare-fun b_free!48913 () Bool)

(declare-fun b_next!49617 () Bool)

(assert (=> b!1767236 (= b_free!48913 (not b_next!49617))))

(declare-fun tp!501539 () Bool)

(declare-fun b_and!134033 () Bool)

(assert (=> b!1767236 (= tp!501539 b_and!134033)))

(declare-fun b!1767243 () Bool)

(declare-fun b_free!48915 () Bool)

(declare-fun b_next!49619 () Bool)

(assert (=> b!1767243 (= b_free!48915 (not b_next!49619))))

(declare-fun tp!501546 () Bool)

(declare-fun b_and!134035 () Bool)

(assert (=> b!1767243 (= tp!501546 b_and!134035)))

(declare-fun b_free!48917 () Bool)

(declare-fun b_next!49621 () Bool)

(assert (=> b!1767243 (= b_free!48917 (not b_next!49621))))

(declare-fun tp!501543 () Bool)

(declare-fun b_and!134037 () Bool)

(assert (=> b!1767243 (= tp!501543 b_and!134037)))

(declare-fun b!1767240 () Bool)

(declare-fun b_free!48919 () Bool)

(declare-fun b_next!49623 () Bool)

(assert (=> b!1767240 (= b_free!48919 (not b_next!49623))))

(declare-fun tp!501550 () Bool)

(declare-fun b_and!134039 () Bool)

(assert (=> b!1767240 (= tp!501550 b_and!134039)))

(declare-fun b_free!48921 () Bool)

(declare-fun b_next!49625 () Bool)

(assert (=> b!1767240 (= b_free!48921 (not b_next!49625))))

(declare-fun tp!501540 () Bool)

(declare-fun b_and!134041 () Bool)

(assert (=> b!1767240 (= tp!501540 b_and!134041)))

(declare-fun b!1767260 () Bool)

(declare-fun e!1130965 () Bool)

(assert (=> b!1767260 (= e!1130965 true)))

(declare-fun b!1767259 () Bool)

(declare-fun e!1130964 () Bool)

(assert (=> b!1767259 (= e!1130964 e!1130965)))

(declare-fun b!1767258 () Bool)

(declare-fun e!1130963 () Bool)

(assert (=> b!1767258 (= e!1130963 e!1130964)))

(declare-fun b!1767231 () Bool)

(assert (=> b!1767231 e!1130963))

(assert (= b!1767259 b!1767260))

(assert (= b!1767258 b!1767259))

(assert (= b!1767231 b!1767258))

(declare-fun order!12399 () Int)

(declare-datatypes ((List!19529 0))(
  ( (Nil!19459) (Cons!19459 (h!24860 (_ BitVec 16)) (t!164910 List!19529)) )
))
(declare-datatypes ((TokenValue!3569 0))(
  ( (FloatLiteralValue!7138 (text!25428 List!19529)) (TokenValueExt!3568 (__x!12440 Int)) (Broken!17845 (value!108798 List!19529)) (Object!3638) (End!3569) (Def!3569) (Underscore!3569) (Match!3569) (Else!3569) (Error!3569) (Case!3569) (If!3569) (Extends!3569) (Abstract!3569) (Class!3569) (Val!3569) (DelimiterValue!7138 (del!3629 List!19529)) (KeywordValue!3575 (value!108799 List!19529)) (CommentValue!7138 (value!108800 List!19529)) (WhitespaceValue!7138 (value!108801 List!19529)) (IndentationValue!3569 (value!108802 List!19529)) (String!22176) (Int32!3569) (Broken!17846 (value!108803 List!19529)) (Boolean!3570) (Unit!33651) (OperatorValue!3572 (op!3629 List!19529)) (IdentifierValue!7138 (value!108804 List!19529)) (IdentifierValue!7139 (value!108805 List!19529)) (WhitespaceValue!7139 (value!108806 List!19529)) (True!7138) (False!7138) (Broken!17847 (value!108807 List!19529)) (Broken!17848 (value!108808 List!19529)) (True!7139) (RightBrace!3569) (RightBracket!3569) (Colon!3569) (Null!3569) (Comma!3569) (LeftBracket!3569) (False!7139) (LeftBrace!3569) (ImaginaryLiteralValue!3569 (text!25429 List!19529)) (StringLiteralValue!10707 (value!108809 List!19529)) (EOFValue!3569 (value!108810 List!19529)) (IdentValue!3569 (value!108811 List!19529)) (DelimiterValue!7139 (value!108812 List!19529)) (DedentValue!3569 (value!108813 List!19529)) (NewLineValue!3569 (value!108814 List!19529)) (IntegerValue!10707 (value!108815 (_ BitVec 32)) (text!25430 List!19529)) (IntegerValue!10708 (value!108816 Int) (text!25431 List!19529)) (Times!3569) (Or!3569) (Equal!3569) (Minus!3569) (Broken!17849 (value!108817 List!19529)) (And!3569) (Div!3569) (LessEqual!3569) (Mod!3569) (Concat!8376) (Not!3569) (Plus!3569) (SpaceValue!3569 (value!108818 List!19529)) (IntegerValue!10709 (value!108819 Int) (text!25432 List!19529)) (StringLiteralValue!10708 (text!25433 List!19529)) (FloatLiteralValue!7139 (text!25434 List!19529)) (BytesLiteralValue!3569 (value!108820 List!19529)) (CommentValue!7139 (value!108821 List!19529)) (StringLiteralValue!10709 (value!108822 List!19529)) (ErrorTokenValue!3569 (msg!3630 List!19529)) )
))
(declare-datatypes ((C!9788 0))(
  ( (C!9789 (val!5490 Int)) )
))
(declare-datatypes ((List!19530 0))(
  ( (Nil!19460) (Cons!19460 (h!24861 C!9788) (t!164911 List!19530)) )
))
(declare-datatypes ((IArray!12951 0))(
  ( (IArray!12952 (innerList!6533 List!19530)) )
))
(declare-datatypes ((Conc!6473 0))(
  ( (Node!6473 (left!15582 Conc!6473) (right!15912 Conc!6473) (csize!13176 Int) (cheight!6684 Int)) (Leaf!9433 (xs!9349 IArray!12951) (csize!13177 Int)) (Empty!6473) )
))
(declare-datatypes ((BalanceConc!12890 0))(
  ( (BalanceConc!12891 (c!287796 Conc!6473)) )
))
(declare-datatypes ((TokenValueInjection!6798 0))(
  ( (TokenValueInjection!6799 (toValue!5002 Int) (toChars!4861 Int)) )
))
(declare-datatypes ((Regex!4807 0))(
  ( (ElementMatch!4807 (c!287797 C!9788)) (Concat!8377 (regOne!10126 Regex!4807) (regTwo!10126 Regex!4807)) (EmptyExpr!4807) (Star!4807 (reg!5136 Regex!4807)) (EmptyLang!4807) (Union!4807 (regOne!10127 Regex!4807) (regTwo!10127 Regex!4807)) )
))
(declare-datatypes ((String!22177 0))(
  ( (String!22178 (value!108823 String)) )
))
(declare-datatypes ((Rule!6758 0))(
  ( (Rule!6759 (regex!3479 Regex!4807) (tag!3855 String!22177) (isSeparator!3479 Bool) (transformation!3479 TokenValueInjection!6798)) )
))
(declare-datatypes ((Token!6524 0))(
  ( (Token!6525 (value!108824 TokenValue!3569) (rule!5513 Rule!6758) (size!15456 Int) (originalCharacters!4293 List!19530)) )
))
(declare-datatypes ((tuple2!19066 0))(
  ( (tuple2!19067 (_1!10935 Token!6524) (_2!10935 List!19530)) )
))
(declare-fun lt!683844 () tuple2!19066)

(declare-fun lambda!70326 () Int)

(declare-fun order!12401 () Int)

(declare-fun dynLambda!9424 (Int Int) Int)

(declare-fun dynLambda!9425 (Int Int) Int)

(assert (=> b!1767260 (< (dynLambda!9424 order!12399 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) (dynLambda!9425 order!12401 lambda!70326))))

(declare-fun order!12403 () Int)

(declare-fun dynLambda!9426 (Int Int) Int)

(assert (=> b!1767260 (< (dynLambda!9426 order!12403 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) (dynLambda!9425 order!12401 lambda!70326))))

(declare-fun b!1767220 () Bool)

(declare-fun e!1130953 () Bool)

(declare-fun e!1130954 () Bool)

(declare-fun tp!501549 () Bool)

(assert (=> b!1767220 (= e!1130953 (and e!1130954 tp!501549))))

(declare-fun e!1130956 () Bool)

(declare-fun token!523 () Token!6524)

(declare-fun e!1130934 () Bool)

(declare-fun b!1767221 () Bool)

(declare-fun tp!501541 () Bool)

(declare-fun inv!25281 (String!22177) Bool)

(declare-fun inv!25286 (TokenValueInjection!6798) Bool)

(assert (=> b!1767221 (= e!1130934 (and tp!501541 (inv!25281 (tag!3855 (rule!5513 token!523))) (inv!25286 (transformation!3479 (rule!5513 token!523))) e!1130956))))

(declare-fun res!795707 () Bool)

(declare-fun e!1130940 () Bool)

(assert (=> start!175178 (=> (not res!795707) (not e!1130940))))

(declare-datatypes ((LexerInterface!3108 0))(
  ( (LexerInterfaceExt!3105 (__x!12441 Int)) (Lexer!3106) )
))
(declare-fun thiss!24550 () LexerInterface!3108)

(get-info :version)

(assert (=> start!175178 (= res!795707 ((_ is Lexer!3106) thiss!24550))))

(assert (=> start!175178 e!1130940))

(declare-fun e!1130933 () Bool)

(assert (=> start!175178 e!1130933))

(declare-fun e!1130938 () Bool)

(assert (=> start!175178 e!1130938))

(assert (=> start!175178 true))

(declare-fun e!1130946 () Bool)

(declare-fun inv!25287 (Token!6524) Bool)

(assert (=> start!175178 (and (inv!25287 token!523) e!1130946)))

(assert (=> start!175178 e!1130953))

(declare-fun b!1767222 () Bool)

(declare-fun res!795708 () Bool)

(assert (=> b!1767222 (=> (not res!795708) (not e!1130940))))

(declare-datatypes ((List!19531 0))(
  ( (Nil!19461) (Cons!19461 (h!24862 Rule!6758) (t!164912 List!19531)) )
))
(declare-fun rules!3447 () List!19531)

(declare-fun rule!422 () Rule!6758)

(declare-fun contains!3509 (List!19531 Rule!6758) Bool)

(assert (=> b!1767222 (= res!795708 (contains!3509 rules!3447 rule!422))))

(declare-fun b!1767223 () Bool)

(declare-fun res!795704 () Bool)

(declare-fun e!1130942 () Bool)

(assert (=> b!1767223 (=> res!795704 e!1130942)))

(declare-fun suffix!1421 () List!19530)

(declare-fun isEmpty!12284 (List!19530) Bool)

(assert (=> b!1767223 (= res!795704 (isEmpty!12284 suffix!1421))))

(declare-fun b!1767224 () Bool)

(declare-fun e!1130951 () Bool)

(declare-fun lt!683849 () List!19530)

(declare-fun lt!683837 () List!19530)

(declare-fun ++!5303 (List!19530 List!19530) List!19530)

(declare-fun getSuffix!886 (List!19530 List!19530) List!19530)

(assert (=> b!1767224 (= e!1130951 (= (++!5303 lt!683849 (getSuffix!886 lt!683837 lt!683849)) lt!683837))))

(declare-fun lt!683843 () Regex!4807)

(declare-fun lt!683841 () List!19530)

(declare-fun matchR!2280 (Regex!4807 List!19530) Bool)

(assert (=> b!1767224 (matchR!2280 lt!683843 lt!683841)))

(declare-datatypes ((Unit!33652 0))(
  ( (Unit!33653) )
))
(declare-fun lt!683857 () Unit!33652)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!186 (LexerInterface!3108 List!19531 List!19530 Token!6524 Rule!6758 List!19530) Unit!33652)

(assert (=> b!1767224 (= lt!683857 (lemmaMaxPrefixThenMatchesRulesRegex!186 thiss!24550 rules!3447 lt!683837 (_1!10935 lt!683844) (rule!5513 (_1!10935 lt!683844)) (_2!10935 lt!683844)))))

(declare-fun b!1767225 () Bool)

(declare-fun res!795709 () Bool)

(declare-fun e!1130944 () Bool)

(assert (=> b!1767225 (=> (not res!795709) (not e!1130944))))

(declare-fun lt!683836 () tuple2!19066)

(assert (=> b!1767225 (= res!795709 (isEmpty!12284 (_2!10935 lt!683836)))))

(declare-fun b!1767226 () Bool)

(declare-fun res!795698 () Bool)

(declare-fun e!1130936 () Bool)

(assert (=> b!1767226 (=> res!795698 e!1130936)))

(declare-fun lt!683840 () BalanceConc!12890)

(declare-fun dynLambda!9427 (Int TokenValue!3569) BalanceConc!12890)

(assert (=> b!1767226 (= res!795698 (not (= lt!683840 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (value!108824 (_1!10935 lt!683844))))))))

(declare-fun b!1767227 () Bool)

(declare-fun e!1130947 () Bool)

(assert (=> b!1767227 (= e!1130947 e!1130944)))

(declare-fun res!795694 () Bool)

(assert (=> b!1767227 (=> (not res!795694) (not e!1130944))))

(assert (=> b!1767227 (= res!795694 (= (_1!10935 lt!683836) token!523))))

(declare-datatypes ((Option!3980 0))(
  ( (None!3979) (Some!3979 (v!25450 tuple2!19066)) )
))
(declare-fun lt!683866 () Option!3980)

(declare-fun get!5937 (Option!3980) tuple2!19066)

(assert (=> b!1767227 (= lt!683836 (get!5937 lt!683866))))

(declare-fun b!1767228 () Bool)

(declare-fun e!1130949 () Bool)

(assert (=> b!1767228 (= e!1130949 e!1130936)))

(declare-fun res!795706 () Bool)

(assert (=> b!1767228 (=> res!795706 e!1130936)))

(declare-fun list!7901 (BalanceConc!12890) List!19530)

(declare-fun dynLambda!9428 (Int BalanceConc!12890) TokenValue!3569)

(assert (=> b!1767228 (= res!795706 (not (= (list!7901 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840))) lt!683841)))))

(declare-fun lt!683865 () Unit!33652)

(declare-fun lemmaSemiInverse!617 (TokenValueInjection!6798 BalanceConc!12890) Unit!33652)

(assert (=> b!1767228 (= lt!683865 (lemmaSemiInverse!617 (transformation!3479 (rule!5513 (_1!10935 lt!683844))) lt!683840))))

(declare-fun b!1767229 () Bool)

(declare-fun e!1130955 () Bool)

(declare-fun lt!683856 () Rule!6758)

(assert (=> b!1767229 (= e!1130955 (= (rule!5513 (_1!10935 lt!683844)) lt!683856))))

(declare-fun b!1767230 () Bool)

(assert (=> b!1767230 (= e!1130944 (not e!1130942))))

(declare-fun res!795700 () Bool)

(assert (=> b!1767230 (=> res!795700 e!1130942)))

(assert (=> b!1767230 (= res!795700 (not (matchR!2280 (regex!3479 rule!422) lt!683849)))))

(declare-fun ruleValid!977 (LexerInterface!3108 Rule!6758) Bool)

(assert (=> b!1767230 (ruleValid!977 thiss!24550 rule!422)))

(declare-fun lt!683860 () Unit!33652)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!500 (LexerInterface!3108 Rule!6758 List!19531) Unit!33652)

(assert (=> b!1767230 (= lt!683860 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!500 thiss!24550 rule!422 rules!3447))))

(declare-fun e!1130948 () Bool)

(assert (=> b!1767231 (= e!1130948 e!1130949)))

(declare-fun res!795701 () Bool)

(assert (=> b!1767231 (=> res!795701 e!1130949)))

(declare-fun Forall!846 (Int) Bool)

(assert (=> b!1767231 (= res!795701 (not (Forall!846 lambda!70326)))))

(declare-fun lt!683842 () Unit!33652)

(declare-fun lemmaInv!678 (TokenValueInjection!6798) Unit!33652)

(assert (=> b!1767231 (= lt!683842 (lemmaInv!678 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))))))

(declare-fun b!1767232 () Bool)

(declare-fun res!795692 () Bool)

(assert (=> b!1767232 (=> (not res!795692) (not e!1130940))))

(declare-fun isEmpty!12285 (List!19531) Bool)

(assert (=> b!1767232 (= res!795692 (not (isEmpty!12285 rules!3447)))))

(declare-fun b!1767233 () Bool)

(assert (=> b!1767233 (= e!1130940 e!1130947)))

(declare-fun res!795705 () Bool)

(assert (=> b!1767233 (=> (not res!795705) (not e!1130947))))

(declare-fun isDefined!3323 (Option!3980) Bool)

(assert (=> b!1767233 (= res!795705 (isDefined!3323 lt!683866))))

(declare-fun maxPrefix!1662 (LexerInterface!3108 List!19531 List!19530) Option!3980)

(assert (=> b!1767233 (= lt!683866 (maxPrefix!1662 thiss!24550 rules!3447 lt!683849))))

(declare-fun lt!683838 () BalanceConc!12890)

(assert (=> b!1767233 (= lt!683849 (list!7901 lt!683838))))

(declare-fun charsOf!2128 (Token!6524) BalanceConc!12890)

(assert (=> b!1767233 (= lt!683838 (charsOf!2128 token!523))))

(declare-fun tp!501547 () Bool)

(declare-fun b!1767234 () Bool)

(declare-fun e!1130935 () Bool)

(assert (=> b!1767234 (= e!1130938 (and tp!501547 (inv!25281 (tag!3855 rule!422)) (inv!25286 (transformation!3479 rule!422)) e!1130935))))

(declare-fun b!1767235 () Bool)

(declare-fun res!795693 () Bool)

(assert (=> b!1767235 (=> res!795693 e!1130948)))

(assert (=> b!1767235 (= res!795693 (not (matchR!2280 (regex!3479 (rule!5513 (_1!10935 lt!683844))) lt!683841)))))

(assert (=> b!1767236 (= e!1130935 (and tp!501544 tp!501539))))

(declare-fun b!1767237 () Bool)

(declare-fun tp_is_empty!7857 () Bool)

(declare-fun tp!501542 () Bool)

(assert (=> b!1767237 (= e!1130933 (and tp_is_empty!7857 tp!501542))))

(declare-fun b!1767238 () Bool)

(declare-fun e!1130937 () Bool)

(assert (=> b!1767238 (= e!1130937 e!1130948)))

(declare-fun res!795691 () Bool)

(assert (=> b!1767238 (=> res!795691 e!1130948)))

(declare-fun isPrefix!1719 (List!19530 List!19530) Bool)

(assert (=> b!1767238 (= res!795691 (not (isPrefix!1719 lt!683841 lt!683837)))))

(assert (=> b!1767238 (isPrefix!1719 lt!683841 (++!5303 lt!683841 (_2!10935 lt!683844)))))

(declare-fun lt!683847 () Unit!33652)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1228 (List!19530 List!19530) Unit!33652)

(assert (=> b!1767238 (= lt!683847 (lemmaConcatTwoListThenFirstIsPrefix!1228 lt!683841 (_2!10935 lt!683844)))))

(assert (=> b!1767238 (= lt!683841 (list!7901 lt!683840))))

(assert (=> b!1767238 (= lt!683840 (charsOf!2128 (_1!10935 lt!683844)))))

(declare-fun e!1130950 () Bool)

(assert (=> b!1767238 e!1130950))

(declare-fun res!795695 () Bool)

(assert (=> b!1767238 (=> (not res!795695) (not e!1130950))))

(declare-datatypes ((Option!3981 0))(
  ( (None!3980) (Some!3980 (v!25451 Rule!6758)) )
))
(declare-fun lt!683846 () Option!3981)

(declare-fun isDefined!3324 (Option!3981) Bool)

(assert (=> b!1767238 (= res!795695 (isDefined!3324 lt!683846))))

(declare-fun getRuleFromTag!527 (LexerInterface!3108 List!19531 String!22177) Option!3981)

(assert (=> b!1767238 (= lt!683846 (getRuleFromTag!527 thiss!24550 rules!3447 (tag!3855 (rule!5513 (_1!10935 lt!683844)))))))

(declare-fun lt!683862 () Unit!33652)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!527 (LexerInterface!3108 List!19531 List!19530 Token!6524) Unit!33652)

(assert (=> b!1767238 (= lt!683862 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!527 thiss!24550 rules!3447 lt!683837 (_1!10935 lt!683844)))))

(declare-fun lt!683853 () Option!3980)

(assert (=> b!1767238 (= lt!683844 (get!5937 lt!683853))))

(declare-fun lt!683848 () Unit!33652)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!630 (LexerInterface!3108 List!19531 List!19530 List!19530) Unit!33652)

(assert (=> b!1767238 (= lt!683848 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!630 thiss!24550 rules!3447 lt!683849 suffix!1421))))

(assert (=> b!1767238 (= lt!683853 (maxPrefix!1662 thiss!24550 rules!3447 lt!683837))))

(assert (=> b!1767238 (isPrefix!1719 lt!683849 lt!683837)))

(declare-fun lt!683864 () Unit!33652)

(assert (=> b!1767238 (= lt!683864 (lemmaConcatTwoListThenFirstIsPrefix!1228 lt!683849 suffix!1421))))

(assert (=> b!1767238 (= lt!683837 (++!5303 lt!683849 suffix!1421))))

(declare-fun b!1767239 () Bool)

(declare-fun e!1130945 () Bool)

(declare-fun e!1130943 () Bool)

(assert (=> b!1767239 (= e!1130945 e!1130943)))

(declare-fun res!795699 () Bool)

(assert (=> b!1767239 (=> res!795699 e!1130943)))

(declare-fun lt!683850 () List!19530)

(declare-fun lt!683863 () Option!3980)

(assert (=> b!1767239 (= res!795699 (or (not (= lt!683850 (_2!10935 lt!683844))) (not (= lt!683863 (Some!3979 (tuple2!19067 (_1!10935 lt!683844) lt!683850))))))))

(assert (=> b!1767239 (= (_2!10935 lt!683844) lt!683850)))

(declare-fun lt!683852 () Unit!33652)

(declare-fun lemmaSamePrefixThenSameSuffix!830 (List!19530 List!19530 List!19530 List!19530 List!19530) Unit!33652)

(assert (=> b!1767239 (= lt!683852 (lemmaSamePrefixThenSameSuffix!830 lt!683841 (_2!10935 lt!683844) lt!683841 lt!683850 lt!683837))))

(assert (=> b!1767239 (= lt!683850 (getSuffix!886 lt!683837 lt!683841))))

(declare-fun lt!683854 () Int)

(declare-fun lt!683858 () TokenValue!3569)

(assert (=> b!1767239 (= lt!683863 (Some!3979 (tuple2!19067 (Token!6525 lt!683858 (rule!5513 (_1!10935 lt!683844)) lt!683854 lt!683841) (_2!10935 lt!683844))))))

(declare-fun maxPrefixOneRule!1031 (LexerInterface!3108 Rule!6758 List!19530) Option!3980)

(assert (=> b!1767239 (= lt!683863 (maxPrefixOneRule!1031 thiss!24550 (rule!5513 (_1!10935 lt!683844)) lt!683837))))

(declare-fun size!15457 (List!19530) Int)

(assert (=> b!1767239 (= lt!683854 (size!15457 lt!683841))))

(declare-fun apply!5279 (TokenValueInjection!6798 BalanceConc!12890) TokenValue!3569)

(declare-fun seqFromList!2448 (List!19530) BalanceConc!12890)

(assert (=> b!1767239 (= lt!683858 (apply!5279 (transformation!3479 (rule!5513 (_1!10935 lt!683844))) (seqFromList!2448 lt!683841)))))

(declare-fun lt!683839 () Unit!33652)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!409 (LexerInterface!3108 List!19531 List!19530 List!19530 List!19530 Rule!6758) Unit!33652)

(assert (=> b!1767239 (= lt!683839 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!409 thiss!24550 rules!3447 lt!683841 lt!683837 (_2!10935 lt!683844) (rule!5513 (_1!10935 lt!683844))))))

(declare-fun e!1130931 () Bool)

(assert (=> b!1767240 (= e!1130931 (and tp!501550 tp!501540))))

(declare-fun b!1767241 () Bool)

(declare-fun tp!501545 () Bool)

(declare-fun inv!21 (TokenValue!3569) Bool)

(assert (=> b!1767241 (= e!1130946 (and (inv!21 (value!108824 token!523)) e!1130934 tp!501545))))

(declare-fun b!1767242 () Bool)

(assert (=> b!1767242 (= e!1130943 e!1130951)))

(declare-fun res!795696 () Bool)

(assert (=> b!1767242 (=> res!795696 e!1130951)))

(declare-fun lt!683859 () Int)

(declare-fun size!15458 (BalanceConc!12890) Int)

(assert (=> b!1767242 (= res!795696 (<= lt!683859 (size!15458 lt!683838)))))

(assert (=> b!1767242 (matchR!2280 lt!683843 lt!683849)))

(declare-fun lt!683861 () Unit!33652)

(assert (=> b!1767242 (= lt!683861 (lemmaMaxPrefixThenMatchesRulesRegex!186 thiss!24550 rules!3447 lt!683849 token!523 rule!422 Nil!19460))))

(assert (=> b!1767243 (= e!1130956 (and tp!501546 tp!501543))))

(declare-fun b!1767244 () Bool)

(assert (=> b!1767244 (= e!1130936 e!1130945)))

(declare-fun res!795697 () Bool)

(assert (=> b!1767244 (=> res!795697 e!1130945)))

(declare-fun lt!683851 () TokenValue!3569)

(assert (=> b!1767244 (= res!795697 (not (= lt!683853 (Some!3979 (tuple2!19067 (Token!6525 lt!683851 (rule!5513 (_1!10935 lt!683844)) lt!683859 lt!683841) (_2!10935 lt!683844))))))))

(assert (=> b!1767244 (= lt!683859 (size!15458 lt!683840))))

(assert (=> b!1767244 (= lt!683851 (apply!5279 (transformation!3479 (rule!5513 (_1!10935 lt!683844))) lt!683840))))

(declare-fun lt!683845 () Unit!33652)

(declare-fun lemmaCharactersSize!537 (Token!6524) Unit!33652)

(assert (=> b!1767244 (= lt!683845 (lemmaCharactersSize!537 (_1!10935 lt!683844)))))

(declare-fun lt!683855 () Unit!33652)

(declare-fun lemmaEqSameImage!390 (TokenValueInjection!6798 BalanceConc!12890 BalanceConc!12890) Unit!33652)

(assert (=> b!1767244 (= lt!683855 (lemmaEqSameImage!390 (transformation!3479 (rule!5513 (_1!10935 lt!683844))) lt!683840 (seqFromList!2448 (originalCharacters!4293 (_1!10935 lt!683844)))))))

(declare-fun b!1767245 () Bool)

(declare-fun res!795703 () Bool)

(assert (=> b!1767245 (=> (not res!795703) (not e!1130944))))

(assert (=> b!1767245 (= res!795703 (= (rule!5513 token!523) rule!422))))

(declare-fun b!1767246 () Bool)

(declare-fun res!795702 () Bool)

(assert (=> b!1767246 (=> (not res!795702) (not e!1130940))))

(declare-fun rulesInvariant!2777 (LexerInterface!3108 List!19531) Bool)

(assert (=> b!1767246 (= res!795702 (rulesInvariant!2777 thiss!24550 rules!3447))))

(declare-fun b!1767247 () Bool)

(assert (=> b!1767247 (= e!1130950 e!1130955)))

(declare-fun res!795690 () Bool)

(assert (=> b!1767247 (=> (not res!795690) (not e!1130955))))

(assert (=> b!1767247 (= res!795690 (matchR!2280 (regex!3479 lt!683856) (list!7901 (charsOf!2128 (_1!10935 lt!683844)))))))

(declare-fun get!5938 (Option!3981) Rule!6758)

(assert (=> b!1767247 (= lt!683856 (get!5938 lt!683846))))

(declare-fun b!1767248 () Bool)

(assert (=> b!1767248 (= e!1130942 e!1130937)))

(declare-fun res!795710 () Bool)

(assert (=> b!1767248 (=> res!795710 e!1130937)))

(declare-fun prefixMatch!690 (Regex!4807 List!19530) Bool)

(declare-fun head!4104 (List!19530) C!9788)

(assert (=> b!1767248 (= res!795710 (prefixMatch!690 lt!683843 (++!5303 lt!683849 (Cons!19460 (head!4104 suffix!1421) Nil!19460))))))

(declare-fun rulesRegex!835 (LexerInterface!3108 List!19531) Regex!4807)

(assert (=> b!1767248 (= lt!683843 (rulesRegex!835 thiss!24550 rules!3447))))

(declare-fun b!1767249 () Bool)

(declare-fun tp!501548 () Bool)

(assert (=> b!1767249 (= e!1130954 (and tp!501548 (inv!25281 (tag!3855 (h!24862 rules!3447))) (inv!25286 (transformation!3479 (h!24862 rules!3447))) e!1130931))))

(assert (= (and start!175178 res!795707) b!1767232))

(assert (= (and b!1767232 res!795692) b!1767246))

(assert (= (and b!1767246 res!795702) b!1767222))

(assert (= (and b!1767222 res!795708) b!1767233))

(assert (= (and b!1767233 res!795705) b!1767227))

(assert (= (and b!1767227 res!795694) b!1767225))

(assert (= (and b!1767225 res!795709) b!1767245))

(assert (= (and b!1767245 res!795703) b!1767230))

(assert (= (and b!1767230 (not res!795700)) b!1767223))

(assert (= (and b!1767223 (not res!795704)) b!1767248))

(assert (= (and b!1767248 (not res!795710)) b!1767238))

(assert (= (and b!1767238 res!795695) b!1767247))

(assert (= (and b!1767247 res!795690) b!1767229))

(assert (= (and b!1767238 (not res!795691)) b!1767235))

(assert (= (and b!1767235 (not res!795693)) b!1767231))

(assert (= (and b!1767231 (not res!795701)) b!1767228))

(assert (= (and b!1767228 (not res!795706)) b!1767226))

(assert (= (and b!1767226 (not res!795698)) b!1767244))

(assert (= (and b!1767244 (not res!795697)) b!1767239))

(assert (= (and b!1767239 (not res!795699)) b!1767242))

(assert (= (and b!1767242 (not res!795696)) b!1767224))

(assert (= (and start!175178 ((_ is Cons!19460) suffix!1421)) b!1767237))

(assert (= b!1767234 b!1767236))

(assert (= start!175178 b!1767234))

(assert (= b!1767221 b!1767243))

(assert (= b!1767241 b!1767221))

(assert (= start!175178 b!1767241))

(assert (= b!1767249 b!1767240))

(assert (= b!1767220 b!1767249))

(assert (= (and start!175178 ((_ is Cons!19461) rules!3447)) b!1767220))

(declare-fun b_lambda!57427 () Bool)

(assert (=> (not b_lambda!57427) (not b!1767226)))

(declare-fun t!164893 () Bool)

(declare-fun tb!106779 () Bool)

(assert (=> (and b!1767236 (= (toChars!4861 (transformation!3479 rule!422)) (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) t!164893) tb!106779))

(declare-fun b!1767265 () Bool)

(declare-fun e!1130968 () Bool)

(declare-fun tp!501553 () Bool)

(declare-fun inv!25288 (Conc!6473) Bool)

(assert (=> b!1767265 (= e!1130968 (and (inv!25288 (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (value!108824 (_1!10935 lt!683844))))) tp!501553))))

(declare-fun result!128462 () Bool)

(declare-fun inv!25289 (BalanceConc!12890) Bool)

(assert (=> tb!106779 (= result!128462 (and (inv!25289 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (value!108824 (_1!10935 lt!683844)))) e!1130968))))

(assert (= tb!106779 b!1767265))

(declare-fun m!2184991 () Bool)

(assert (=> b!1767265 m!2184991))

(declare-fun m!2184993 () Bool)

(assert (=> tb!106779 m!2184993))

(assert (=> b!1767226 t!164893))

(declare-fun b_and!134043 () Bool)

(assert (= b_and!134033 (and (=> t!164893 result!128462) b_and!134043)))

(declare-fun t!164895 () Bool)

(declare-fun tb!106781 () Bool)

(assert (=> (and b!1767243 (= (toChars!4861 (transformation!3479 (rule!5513 token!523))) (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) t!164895) tb!106781))

(declare-fun result!128466 () Bool)

(assert (= result!128466 result!128462))

(assert (=> b!1767226 t!164895))

(declare-fun b_and!134045 () Bool)

(assert (= b_and!134037 (and (=> t!164895 result!128466) b_and!134045)))

(declare-fun tb!106783 () Bool)

(declare-fun t!164897 () Bool)

(assert (=> (and b!1767240 (= (toChars!4861 (transformation!3479 (h!24862 rules!3447))) (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) t!164897) tb!106783))

(declare-fun result!128468 () Bool)

(assert (= result!128468 result!128462))

(assert (=> b!1767226 t!164897))

(declare-fun b_and!134047 () Bool)

(assert (= b_and!134041 (and (=> t!164897 result!128468) b_and!134047)))

(declare-fun b_lambda!57429 () Bool)

(assert (=> (not b_lambda!57429) (not b!1767228)))

(declare-fun tb!106785 () Bool)

(declare-fun t!164899 () Bool)

(assert (=> (and b!1767236 (= (toChars!4861 (transformation!3479 rule!422)) (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) t!164899) tb!106785))

(declare-fun b!1767266 () Bool)

(declare-fun tp!501554 () Bool)

(declare-fun e!1130969 () Bool)

(assert (=> b!1767266 (= e!1130969 (and (inv!25288 (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840)))) tp!501554))))

(declare-fun result!128470 () Bool)

(assert (=> tb!106785 (= result!128470 (and (inv!25289 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840))) e!1130969))))

(assert (= tb!106785 b!1767266))

(declare-fun m!2184995 () Bool)

(assert (=> b!1767266 m!2184995))

(declare-fun m!2184997 () Bool)

(assert (=> tb!106785 m!2184997))

(assert (=> b!1767228 t!164899))

(declare-fun b_and!134049 () Bool)

(assert (= b_and!134043 (and (=> t!164899 result!128470) b_and!134049)))

(declare-fun t!164901 () Bool)

(declare-fun tb!106787 () Bool)

(assert (=> (and b!1767243 (= (toChars!4861 (transformation!3479 (rule!5513 token!523))) (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) t!164901) tb!106787))

(declare-fun result!128472 () Bool)

(assert (= result!128472 result!128470))

(assert (=> b!1767228 t!164901))

(declare-fun b_and!134051 () Bool)

(assert (= b_and!134045 (and (=> t!164901 result!128472) b_and!134051)))

(declare-fun t!164903 () Bool)

(declare-fun tb!106789 () Bool)

(assert (=> (and b!1767240 (= (toChars!4861 (transformation!3479 (h!24862 rules!3447))) (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) t!164903) tb!106789))

(declare-fun result!128474 () Bool)

(assert (= result!128474 result!128470))

(assert (=> b!1767228 t!164903))

(declare-fun b_and!134053 () Bool)

(assert (= b_and!134047 (and (=> t!164903 result!128474) b_and!134053)))

(declare-fun b_lambda!57431 () Bool)

(assert (=> (not b_lambda!57431) (not b!1767228)))

(declare-fun t!164905 () Bool)

(declare-fun tb!106791 () Bool)

(assert (=> (and b!1767236 (= (toValue!5002 (transformation!3479 rule!422)) (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) t!164905) tb!106791))

(declare-fun result!128476 () Bool)

(assert (=> tb!106791 (= result!128476 (inv!21 (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840)))))

(declare-fun m!2184999 () Bool)

(assert (=> tb!106791 m!2184999))

(assert (=> b!1767228 t!164905))

(declare-fun b_and!134055 () Bool)

(assert (= b_and!134031 (and (=> t!164905 result!128476) b_and!134055)))

(declare-fun t!164907 () Bool)

(declare-fun tb!106793 () Bool)

(assert (=> (and b!1767243 (= (toValue!5002 (transformation!3479 (rule!5513 token!523))) (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) t!164907) tb!106793))

(declare-fun result!128480 () Bool)

(assert (= result!128480 result!128476))

(assert (=> b!1767228 t!164907))

(declare-fun b_and!134057 () Bool)

(assert (= b_and!134035 (and (=> t!164907 result!128480) b_and!134057)))

(declare-fun tb!106795 () Bool)

(declare-fun t!164909 () Bool)

(assert (=> (and b!1767240 (= (toValue!5002 (transformation!3479 (h!24862 rules!3447))) (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) t!164909) tb!106795))

(declare-fun result!128482 () Bool)

(assert (= result!128482 result!128476))

(assert (=> b!1767228 t!164909))

(declare-fun b_and!134059 () Bool)

(assert (= b_and!134039 (and (=> t!164909 result!128482) b_and!134059)))

(declare-fun m!2185001 () Bool)

(assert (=> b!1767225 m!2185001))

(declare-fun m!2185003 () Bool)

(assert (=> b!1767223 m!2185003))

(declare-fun m!2185005 () Bool)

(assert (=> b!1767221 m!2185005))

(declare-fun m!2185007 () Bool)

(assert (=> b!1767221 m!2185007))

(declare-fun m!2185009 () Bool)

(assert (=> b!1767241 m!2185009))

(declare-fun m!2185011 () Bool)

(assert (=> b!1767235 m!2185011))

(declare-fun m!2185013 () Bool)

(assert (=> start!175178 m!2185013))

(declare-fun m!2185015 () Bool)

(assert (=> b!1767249 m!2185015))

(declare-fun m!2185017 () Bool)

(assert (=> b!1767249 m!2185017))

(declare-fun m!2185019 () Bool)

(assert (=> b!1767232 m!2185019))

(declare-fun m!2185021 () Bool)

(assert (=> b!1767242 m!2185021))

(declare-fun m!2185023 () Bool)

(assert (=> b!1767242 m!2185023))

(declare-fun m!2185025 () Bool)

(assert (=> b!1767242 m!2185025))

(declare-fun m!2185027 () Bool)

(assert (=> b!1767228 m!2185027))

(assert (=> b!1767228 m!2185027))

(declare-fun m!2185029 () Bool)

(assert (=> b!1767228 m!2185029))

(assert (=> b!1767228 m!2185029))

(declare-fun m!2185031 () Bool)

(assert (=> b!1767228 m!2185031))

(declare-fun m!2185033 () Bool)

(assert (=> b!1767228 m!2185033))

(declare-fun m!2185035 () Bool)

(assert (=> b!1767234 m!2185035))

(declare-fun m!2185037 () Bool)

(assert (=> b!1767234 m!2185037))

(declare-fun m!2185039 () Bool)

(assert (=> b!1767244 m!2185039))

(declare-fun m!2185041 () Bool)

(assert (=> b!1767244 m!2185041))

(declare-fun m!2185043 () Bool)

(assert (=> b!1767244 m!2185043))

(declare-fun m!2185045 () Bool)

(assert (=> b!1767244 m!2185045))

(declare-fun m!2185047 () Bool)

(assert (=> b!1767244 m!2185047))

(assert (=> b!1767244 m!2185043))

(declare-fun m!2185049 () Bool)

(assert (=> b!1767246 m!2185049))

(declare-fun m!2185051 () Bool)

(assert (=> b!1767239 m!2185051))

(declare-fun m!2185053 () Bool)

(assert (=> b!1767239 m!2185053))

(declare-fun m!2185055 () Bool)

(assert (=> b!1767239 m!2185055))

(declare-fun m!2185057 () Bool)

(assert (=> b!1767239 m!2185057))

(declare-fun m!2185059 () Bool)

(assert (=> b!1767239 m!2185059))

(declare-fun m!2185061 () Bool)

(assert (=> b!1767239 m!2185061))

(assert (=> b!1767239 m!2185059))

(declare-fun m!2185063 () Bool)

(assert (=> b!1767239 m!2185063))

(declare-fun m!2185065 () Bool)

(assert (=> b!1767222 m!2185065))

(declare-fun m!2185067 () Bool)

(assert (=> b!1767238 m!2185067))

(declare-fun m!2185069 () Bool)

(assert (=> b!1767238 m!2185069))

(declare-fun m!2185071 () Bool)

(assert (=> b!1767238 m!2185071))

(declare-fun m!2185073 () Bool)

(assert (=> b!1767238 m!2185073))

(declare-fun m!2185075 () Bool)

(assert (=> b!1767238 m!2185075))

(declare-fun m!2185077 () Bool)

(assert (=> b!1767238 m!2185077))

(declare-fun m!2185079 () Bool)

(assert (=> b!1767238 m!2185079))

(declare-fun m!2185081 () Bool)

(assert (=> b!1767238 m!2185081))

(declare-fun m!2185083 () Bool)

(assert (=> b!1767238 m!2185083))

(assert (=> b!1767238 m!2185077))

(declare-fun m!2185085 () Bool)

(assert (=> b!1767238 m!2185085))

(declare-fun m!2185087 () Bool)

(assert (=> b!1767238 m!2185087))

(declare-fun m!2185089 () Bool)

(assert (=> b!1767238 m!2185089))

(declare-fun m!2185091 () Bool)

(assert (=> b!1767238 m!2185091))

(declare-fun m!2185093 () Bool)

(assert (=> b!1767238 m!2185093))

(declare-fun m!2185095 () Bool)

(assert (=> b!1767238 m!2185095))

(declare-fun m!2185097 () Bool)

(assert (=> b!1767224 m!2185097))

(assert (=> b!1767224 m!2185097))

(declare-fun m!2185099 () Bool)

(assert (=> b!1767224 m!2185099))

(declare-fun m!2185101 () Bool)

(assert (=> b!1767224 m!2185101))

(declare-fun m!2185103 () Bool)

(assert (=> b!1767224 m!2185103))

(assert (=> b!1767247 m!2185075))

(assert (=> b!1767247 m!2185075))

(declare-fun m!2185105 () Bool)

(assert (=> b!1767247 m!2185105))

(assert (=> b!1767247 m!2185105))

(declare-fun m!2185107 () Bool)

(assert (=> b!1767247 m!2185107))

(declare-fun m!2185109 () Bool)

(assert (=> b!1767247 m!2185109))

(declare-fun m!2185111 () Bool)

(assert (=> b!1767233 m!2185111))

(declare-fun m!2185113 () Bool)

(assert (=> b!1767233 m!2185113))

(declare-fun m!2185115 () Bool)

(assert (=> b!1767233 m!2185115))

(declare-fun m!2185117 () Bool)

(assert (=> b!1767233 m!2185117))

(declare-fun m!2185119 () Bool)

(assert (=> b!1767226 m!2185119))

(declare-fun m!2185121 () Bool)

(assert (=> b!1767248 m!2185121))

(declare-fun m!2185123 () Bool)

(assert (=> b!1767248 m!2185123))

(assert (=> b!1767248 m!2185123))

(declare-fun m!2185125 () Bool)

(assert (=> b!1767248 m!2185125))

(declare-fun m!2185127 () Bool)

(assert (=> b!1767248 m!2185127))

(declare-fun m!2185129 () Bool)

(assert (=> b!1767231 m!2185129))

(declare-fun m!2185131 () Bool)

(assert (=> b!1767231 m!2185131))

(declare-fun m!2185133 () Bool)

(assert (=> b!1767227 m!2185133))

(declare-fun m!2185135 () Bool)

(assert (=> b!1767230 m!2185135))

(declare-fun m!2185137 () Bool)

(assert (=> b!1767230 m!2185137))

(declare-fun m!2185139 () Bool)

(assert (=> b!1767230 m!2185139))

(check-sat (not b_next!49619) (not b!1767223) (not tb!106785) (not b!1767220) (not b!1767221) (not b!1767222) (not b_next!49617) (not b!1767242) (not b_lambda!57431) b_and!134055 (not b_next!49621) (not b!1767238) (not b!1767228) b_and!134057 (not b!1767265) b_and!134053 (not b!1767231) (not b!1767225) (not b!1767241) (not b!1767235) (not b!1767224) (not tb!106791) (not b_next!49625) (not b_next!49623) tp_is_empty!7857 (not b!1767234) (not b_next!49615) (not b_lambda!57429) (not b!1767230) (not b!1767248) (not b!1767244) (not b!1767249) (not b!1767227) (not b_lambda!57427) (not b!1767246) b_and!134051 (not b!1767239) b_and!134059 b_and!134049 (not start!175178) (not b!1767233) (not tb!106779) (not b!1767237) (not b!1767232) (not b!1767247) (not b!1767266))
(check-sat (not b_next!49619) b_and!134057 b_and!134053 (not b_next!49625) (not b_next!49623) (not b_next!49615) (not b_next!49617) b_and!134051 b_and!134055 (not b_next!49621) b_and!134059 b_and!134049)
(get-model)

(declare-fun d!539790 () Bool)

(declare-fun choose!10974 (Int) Bool)

(assert (=> d!539790 (= (Forall!846 lambda!70326) (choose!10974 lambda!70326))))

(declare-fun bs!404418 () Bool)

(assert (= bs!404418 d!539790))

(declare-fun m!2185141 () Bool)

(assert (=> bs!404418 m!2185141))

(assert (=> b!1767231 d!539790))

(declare-fun d!539792 () Bool)

(declare-fun e!1130975 () Bool)

(assert (=> d!539792 e!1130975))

(declare-fun res!795713 () Bool)

(assert (=> d!539792 (=> (not res!795713) (not e!1130975))))

(declare-fun semiInverseModEq!1385 (Int Int) Bool)

(assert (=> d!539792 (= res!795713 (semiInverseModEq!1385 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))))))

(declare-fun Unit!33654 () Unit!33652)

(assert (=> d!539792 (= (lemmaInv!678 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) Unit!33654)))

(declare-fun b!1767271 () Bool)

(declare-fun equivClasses!1326 (Int Int) Bool)

(assert (=> b!1767271 (= e!1130975 (equivClasses!1326 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))))))

(assert (= (and d!539792 res!795713) b!1767271))

(declare-fun m!2185143 () Bool)

(assert (=> d!539792 m!2185143))

(declare-fun m!2185145 () Bool)

(assert (=> b!1767271 m!2185145))

(assert (=> b!1767231 d!539792))

(declare-fun b!1767300 () Bool)

(declare-fun e!1130996 () Bool)

(assert (=> b!1767300 (= e!1130996 (not (= (head!4104 lt!683849) (c!287797 (regex!3479 rule!422)))))))

(declare-fun b!1767301 () Bool)

(declare-fun e!1130992 () Bool)

(declare-fun e!1130990 () Bool)

(assert (=> b!1767301 (= e!1130992 e!1130990)))

(declare-fun res!795730 () Bool)

(assert (=> b!1767301 (=> (not res!795730) (not e!1130990))))

(declare-fun lt!683869 () Bool)

(assert (=> b!1767301 (= res!795730 (not lt!683869))))

(declare-fun b!1767302 () Bool)

(declare-fun e!1130994 () Bool)

(assert (=> b!1767302 (= e!1130994 (not lt!683869))))

(declare-fun b!1767303 () Bool)

(declare-fun e!1130995 () Bool)

(declare-fun derivativeStep!1239 (Regex!4807 C!9788) Regex!4807)

(declare-fun tail!2644 (List!19530) List!19530)

(assert (=> b!1767303 (= e!1130995 (matchR!2280 (derivativeStep!1239 (regex!3479 rule!422) (head!4104 lt!683849)) (tail!2644 lt!683849)))))

(declare-fun b!1767304 () Bool)

(declare-fun res!795733 () Bool)

(assert (=> b!1767304 (=> res!795733 e!1130992)))

(assert (=> b!1767304 (= res!795733 (not ((_ is ElementMatch!4807) (regex!3479 rule!422))))))

(assert (=> b!1767304 (= e!1130994 e!1130992)))

(declare-fun b!1767305 () Bool)

(declare-fun nullable!1470 (Regex!4807) Bool)

(assert (=> b!1767305 (= e!1130995 (nullable!1470 (regex!3479 rule!422)))))

(declare-fun d!539794 () Bool)

(declare-fun e!1130993 () Bool)

(assert (=> d!539794 e!1130993))

(declare-fun c!287804 () Bool)

(assert (=> d!539794 (= c!287804 ((_ is EmptyExpr!4807) (regex!3479 rule!422)))))

(assert (=> d!539794 (= lt!683869 e!1130995)))

(declare-fun c!287805 () Bool)

(assert (=> d!539794 (= c!287805 (isEmpty!12284 lt!683849))))

(declare-fun validRegex!1944 (Regex!4807) Bool)

(assert (=> d!539794 (validRegex!1944 (regex!3479 rule!422))))

(assert (=> d!539794 (= (matchR!2280 (regex!3479 rule!422) lt!683849) lt!683869)))

(declare-fun b!1767306 () Bool)

(declare-fun res!795734 () Bool)

(assert (=> b!1767306 (=> res!795734 e!1130992)))

(declare-fun e!1130991 () Bool)

(assert (=> b!1767306 (= res!795734 e!1130991)))

(declare-fun res!795735 () Bool)

(assert (=> b!1767306 (=> (not res!795735) (not e!1130991))))

(assert (=> b!1767306 (= res!795735 lt!683869)))

(declare-fun b!1767307 () Bool)

(assert (=> b!1767307 (= e!1130991 (= (head!4104 lt!683849) (c!287797 (regex!3479 rule!422))))))

(declare-fun b!1767308 () Bool)

(assert (=> b!1767308 (= e!1130990 e!1130996)))

(declare-fun res!795736 () Bool)

(assert (=> b!1767308 (=> res!795736 e!1130996)))

(declare-fun call!110879 () Bool)

(assert (=> b!1767308 (= res!795736 call!110879)))

(declare-fun b!1767309 () Bool)

(declare-fun res!795737 () Bool)

(assert (=> b!1767309 (=> (not res!795737) (not e!1130991))))

(assert (=> b!1767309 (= res!795737 (not call!110879))))

(declare-fun b!1767310 () Bool)

(assert (=> b!1767310 (= e!1130993 (= lt!683869 call!110879))))

(declare-fun b!1767311 () Bool)

(declare-fun res!795731 () Bool)

(assert (=> b!1767311 (=> (not res!795731) (not e!1130991))))

(assert (=> b!1767311 (= res!795731 (isEmpty!12284 (tail!2644 lt!683849)))))

(declare-fun bm!110874 () Bool)

(assert (=> bm!110874 (= call!110879 (isEmpty!12284 lt!683849))))

(declare-fun b!1767312 () Bool)

(assert (=> b!1767312 (= e!1130993 e!1130994)))

(declare-fun c!287806 () Bool)

(assert (=> b!1767312 (= c!287806 ((_ is EmptyLang!4807) (regex!3479 rule!422)))))

(declare-fun b!1767313 () Bool)

(declare-fun res!795732 () Bool)

(assert (=> b!1767313 (=> res!795732 e!1130996)))

(assert (=> b!1767313 (= res!795732 (not (isEmpty!12284 (tail!2644 lt!683849))))))

(assert (= (and d!539794 c!287805) b!1767305))

(assert (= (and d!539794 (not c!287805)) b!1767303))

(assert (= (and d!539794 c!287804) b!1767310))

(assert (= (and d!539794 (not c!287804)) b!1767312))

(assert (= (and b!1767312 c!287806) b!1767302))

(assert (= (and b!1767312 (not c!287806)) b!1767304))

(assert (= (and b!1767304 (not res!795733)) b!1767306))

(assert (= (and b!1767306 res!795735) b!1767309))

(assert (= (and b!1767309 res!795737) b!1767311))

(assert (= (and b!1767311 res!795731) b!1767307))

(assert (= (and b!1767306 (not res!795734)) b!1767301))

(assert (= (and b!1767301 res!795730) b!1767308))

(assert (= (and b!1767308 (not res!795736)) b!1767313))

(assert (= (and b!1767313 (not res!795732)) b!1767300))

(assert (= (or b!1767310 b!1767309 b!1767308) bm!110874))

(declare-fun m!2185147 () Bool)

(assert (=> b!1767303 m!2185147))

(assert (=> b!1767303 m!2185147))

(declare-fun m!2185149 () Bool)

(assert (=> b!1767303 m!2185149))

(declare-fun m!2185151 () Bool)

(assert (=> b!1767303 m!2185151))

(assert (=> b!1767303 m!2185149))

(assert (=> b!1767303 m!2185151))

(declare-fun m!2185153 () Bool)

(assert (=> b!1767303 m!2185153))

(assert (=> b!1767311 m!2185151))

(assert (=> b!1767311 m!2185151))

(declare-fun m!2185155 () Bool)

(assert (=> b!1767311 m!2185155))

(assert (=> b!1767307 m!2185147))

(declare-fun m!2185157 () Bool)

(assert (=> d!539794 m!2185157))

(declare-fun m!2185159 () Bool)

(assert (=> d!539794 m!2185159))

(assert (=> b!1767300 m!2185147))

(declare-fun m!2185161 () Bool)

(assert (=> b!1767305 m!2185161))

(assert (=> b!1767313 m!2185151))

(assert (=> b!1767313 m!2185151))

(assert (=> b!1767313 m!2185155))

(assert (=> bm!110874 m!2185157))

(assert (=> b!1767230 d!539794))

(declare-fun d!539796 () Bool)

(declare-fun res!795742 () Bool)

(declare-fun e!1130999 () Bool)

(assert (=> d!539796 (=> (not res!795742) (not e!1130999))))

(assert (=> d!539796 (= res!795742 (validRegex!1944 (regex!3479 rule!422)))))

(assert (=> d!539796 (= (ruleValid!977 thiss!24550 rule!422) e!1130999)))

(declare-fun b!1767318 () Bool)

(declare-fun res!795743 () Bool)

(assert (=> b!1767318 (=> (not res!795743) (not e!1130999))))

(assert (=> b!1767318 (= res!795743 (not (nullable!1470 (regex!3479 rule!422))))))

(declare-fun b!1767319 () Bool)

(assert (=> b!1767319 (= e!1130999 (not (= (tag!3855 rule!422) (String!22178 ""))))))

(assert (= (and d!539796 res!795742) b!1767318))

(assert (= (and b!1767318 res!795743) b!1767319))

(assert (=> d!539796 m!2185159))

(assert (=> b!1767318 m!2185161))

(assert (=> b!1767230 d!539796))

(declare-fun d!539798 () Bool)

(assert (=> d!539798 (ruleValid!977 thiss!24550 rule!422)))

(declare-fun lt!683872 () Unit!33652)

(declare-fun choose!10975 (LexerInterface!3108 Rule!6758 List!19531) Unit!33652)

(assert (=> d!539798 (= lt!683872 (choose!10975 thiss!24550 rule!422 rules!3447))))

(assert (=> d!539798 (contains!3509 rules!3447 rule!422)))

(assert (=> d!539798 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!500 thiss!24550 rule!422 rules!3447) lt!683872)))

(declare-fun bs!404419 () Bool)

(assert (= bs!404419 d!539798))

(assert (=> bs!404419 m!2185137))

(declare-fun m!2185163 () Bool)

(assert (=> bs!404419 m!2185163))

(assert (=> bs!404419 m!2185065))

(assert (=> b!1767230 d!539798))

(declare-fun d!539800 () Bool)

(assert (=> d!539800 (= (inv!25281 (tag!3855 (h!24862 rules!3447))) (= (mod (str.len (value!108823 (tag!3855 (h!24862 rules!3447)))) 2) 0))))

(assert (=> b!1767249 d!539800))

(declare-fun d!539802 () Bool)

(declare-fun res!795746 () Bool)

(declare-fun e!1131002 () Bool)

(assert (=> d!539802 (=> (not res!795746) (not e!1131002))))

(assert (=> d!539802 (= res!795746 (semiInverseModEq!1385 (toChars!4861 (transformation!3479 (h!24862 rules!3447))) (toValue!5002 (transformation!3479 (h!24862 rules!3447)))))))

(assert (=> d!539802 (= (inv!25286 (transformation!3479 (h!24862 rules!3447))) e!1131002)))

(declare-fun b!1767322 () Bool)

(assert (=> b!1767322 (= e!1131002 (equivClasses!1326 (toChars!4861 (transformation!3479 (h!24862 rules!3447))) (toValue!5002 (transformation!3479 (h!24862 rules!3447)))))))

(assert (= (and d!539802 res!795746) b!1767322))

(declare-fun m!2185165 () Bool)

(assert (=> d!539802 m!2185165))

(declare-fun m!2185167 () Bool)

(assert (=> b!1767322 m!2185167))

(assert (=> b!1767249 d!539802))

(declare-fun d!539804 () Bool)

(declare-fun isBalanced!2023 (Conc!6473) Bool)

(assert (=> d!539804 (= (inv!25289 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840))) (isBalanced!2023 (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840)))))))

(declare-fun bs!404420 () Bool)

(assert (= bs!404420 d!539804))

(declare-fun m!2185169 () Bool)

(assert (=> bs!404420 m!2185169))

(assert (=> tb!106785 d!539804))

(declare-fun d!539806 () Bool)

(declare-fun list!7902 (Conc!6473) List!19530)

(assert (=> d!539806 (= (list!7901 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840))) (list!7902 (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840)))))))

(declare-fun bs!404421 () Bool)

(assert (= bs!404421 d!539806))

(declare-fun m!2185171 () Bool)

(assert (=> bs!404421 m!2185171))

(assert (=> b!1767228 d!539806))

(declare-fun bs!404422 () Bool)

(declare-fun d!539808 () Bool)

(assert (= bs!404422 (and d!539808 b!1767231)))

(declare-fun lambda!70329 () Int)

(assert (=> bs!404422 (= lambda!70329 lambda!70326)))

(declare-fun b!1767327 () Bool)

(declare-fun e!1131005 () Bool)

(assert (=> b!1767327 (= e!1131005 true)))

(assert (=> d!539808 e!1131005))

(assert (= d!539808 b!1767327))

(assert (=> b!1767327 (< (dynLambda!9424 order!12399 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) (dynLambda!9425 order!12401 lambda!70329))))

(assert (=> b!1767327 (< (dynLambda!9426 order!12403 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) (dynLambda!9425 order!12401 lambda!70329))))

(assert (=> d!539808 (= (list!7901 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840))) (list!7901 lt!683840))))

(declare-fun lt!683875 () Unit!33652)

(declare-fun ForallOf!323 (Int BalanceConc!12890) Unit!33652)

(assert (=> d!539808 (= lt!683875 (ForallOf!323 lambda!70329 lt!683840))))

(assert (=> d!539808 (= (lemmaSemiInverse!617 (transformation!3479 (rule!5513 (_1!10935 lt!683844))) lt!683840) lt!683875)))

(declare-fun b_lambda!57433 () Bool)

(assert (=> (not b_lambda!57433) (not d!539808)))

(assert (=> d!539808 t!164899))

(declare-fun b_and!134061 () Bool)

(assert (= b_and!134049 (and (=> t!164899 result!128470) b_and!134061)))

(assert (=> d!539808 t!164901))

(declare-fun b_and!134063 () Bool)

(assert (= b_and!134051 (and (=> t!164901 result!128472) b_and!134063)))

(assert (=> d!539808 t!164903))

(declare-fun b_and!134065 () Bool)

(assert (= b_and!134053 (and (=> t!164903 result!128474) b_and!134065)))

(declare-fun b_lambda!57435 () Bool)

(assert (=> (not b_lambda!57435) (not d!539808)))

(assert (=> d!539808 t!164905))

(declare-fun b_and!134067 () Bool)

(assert (= b_and!134055 (and (=> t!164905 result!128476) b_and!134067)))

(assert (=> d!539808 t!164907))

(declare-fun b_and!134069 () Bool)

(assert (= b_and!134057 (and (=> t!164907 result!128480) b_and!134069)))

(assert (=> d!539808 t!164909))

(declare-fun b_and!134071 () Bool)

(assert (= b_and!134059 (and (=> t!164909 result!128482) b_and!134071)))

(assert (=> d!539808 m!2185089))

(assert (=> d!539808 m!2185027))

(assert (=> d!539808 m!2185029))

(assert (=> d!539808 m!2185031))

(declare-fun m!2185173 () Bool)

(assert (=> d!539808 m!2185173))

(assert (=> d!539808 m!2185027))

(assert (=> d!539808 m!2185029))

(assert (=> b!1767228 d!539808))

(declare-fun d!539810 () Bool)

(assert (=> d!539810 (= (get!5937 lt!683866) (v!25450 lt!683866))))

(assert (=> b!1767227 d!539810))

(declare-fun d!539812 () Bool)

(declare-fun c!287810 () Bool)

(assert (=> d!539812 (= c!287810 (isEmpty!12284 (++!5303 lt!683849 (Cons!19460 (head!4104 suffix!1421) Nil!19460))))))

(declare-fun e!1131008 () Bool)

(assert (=> d!539812 (= (prefixMatch!690 lt!683843 (++!5303 lt!683849 (Cons!19460 (head!4104 suffix!1421) Nil!19460))) e!1131008)))

(declare-fun b!1767332 () Bool)

(declare-fun lostCause!581 (Regex!4807) Bool)

(assert (=> b!1767332 (= e!1131008 (not (lostCause!581 lt!683843)))))

(declare-fun b!1767333 () Bool)

(assert (=> b!1767333 (= e!1131008 (prefixMatch!690 (derivativeStep!1239 lt!683843 (head!4104 (++!5303 lt!683849 (Cons!19460 (head!4104 suffix!1421) Nil!19460)))) (tail!2644 (++!5303 lt!683849 (Cons!19460 (head!4104 suffix!1421) Nil!19460)))))))

(assert (= (and d!539812 c!287810) b!1767332))

(assert (= (and d!539812 (not c!287810)) b!1767333))

(assert (=> d!539812 m!2185123))

(declare-fun m!2185175 () Bool)

(assert (=> d!539812 m!2185175))

(declare-fun m!2185177 () Bool)

(assert (=> b!1767332 m!2185177))

(assert (=> b!1767333 m!2185123))

(declare-fun m!2185179 () Bool)

(assert (=> b!1767333 m!2185179))

(assert (=> b!1767333 m!2185179))

(declare-fun m!2185181 () Bool)

(assert (=> b!1767333 m!2185181))

(assert (=> b!1767333 m!2185123))

(declare-fun m!2185183 () Bool)

(assert (=> b!1767333 m!2185183))

(assert (=> b!1767333 m!2185181))

(assert (=> b!1767333 m!2185183))

(declare-fun m!2185185 () Bool)

(assert (=> b!1767333 m!2185185))

(assert (=> b!1767248 d!539812))

(declare-fun b!1767343 () Bool)

(declare-fun e!1131014 () List!19530)

(assert (=> b!1767343 (= e!1131014 (Cons!19460 (h!24861 lt!683849) (++!5303 (t!164911 lt!683849) (Cons!19460 (head!4104 suffix!1421) Nil!19460))))))

(declare-fun b!1767342 () Bool)

(assert (=> b!1767342 (= e!1131014 (Cons!19460 (head!4104 suffix!1421) Nil!19460))))

(declare-fun d!539814 () Bool)

(declare-fun e!1131013 () Bool)

(assert (=> d!539814 e!1131013))

(declare-fun res!795751 () Bool)

(assert (=> d!539814 (=> (not res!795751) (not e!1131013))))

(declare-fun lt!683878 () List!19530)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2817 (List!19530) (InoxSet C!9788))

(assert (=> d!539814 (= res!795751 (= (content!2817 lt!683878) ((_ map or) (content!2817 lt!683849) (content!2817 (Cons!19460 (head!4104 suffix!1421) Nil!19460)))))))

(assert (=> d!539814 (= lt!683878 e!1131014)))

(declare-fun c!287813 () Bool)

(assert (=> d!539814 (= c!287813 ((_ is Nil!19460) lt!683849))))

(assert (=> d!539814 (= (++!5303 lt!683849 (Cons!19460 (head!4104 suffix!1421) Nil!19460)) lt!683878)))

(declare-fun b!1767344 () Bool)

(declare-fun res!795752 () Bool)

(assert (=> b!1767344 (=> (not res!795752) (not e!1131013))))

(assert (=> b!1767344 (= res!795752 (= (size!15457 lt!683878) (+ (size!15457 lt!683849) (size!15457 (Cons!19460 (head!4104 suffix!1421) Nil!19460)))))))

(declare-fun b!1767345 () Bool)

(assert (=> b!1767345 (= e!1131013 (or (not (= (Cons!19460 (head!4104 suffix!1421) Nil!19460) Nil!19460)) (= lt!683878 lt!683849)))))

(assert (= (and d!539814 c!287813) b!1767342))

(assert (= (and d!539814 (not c!287813)) b!1767343))

(assert (= (and d!539814 res!795751) b!1767344))

(assert (= (and b!1767344 res!795752) b!1767345))

(declare-fun m!2185187 () Bool)

(assert (=> b!1767343 m!2185187))

(declare-fun m!2185189 () Bool)

(assert (=> d!539814 m!2185189))

(declare-fun m!2185191 () Bool)

(assert (=> d!539814 m!2185191))

(declare-fun m!2185193 () Bool)

(assert (=> d!539814 m!2185193))

(declare-fun m!2185195 () Bool)

(assert (=> b!1767344 m!2185195))

(declare-fun m!2185197 () Bool)

(assert (=> b!1767344 m!2185197))

(declare-fun m!2185199 () Bool)

(assert (=> b!1767344 m!2185199))

(assert (=> b!1767248 d!539814))

(declare-fun d!539816 () Bool)

(assert (=> d!539816 (= (head!4104 suffix!1421) (h!24861 suffix!1421))))

(assert (=> b!1767248 d!539816))

(declare-fun d!539818 () Bool)

(declare-fun lt!683881 () Unit!33652)

(declare-fun lemma!394 (List!19531 LexerInterface!3108 List!19531) Unit!33652)

(assert (=> d!539818 (= lt!683881 (lemma!394 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70332 () Int)

(declare-datatypes ((List!19532 0))(
  ( (Nil!19462) (Cons!19462 (h!24863 Regex!4807) (t!164955 List!19532)) )
))
(declare-fun generalisedUnion!402 (List!19532) Regex!4807)

(declare-fun map!4013 (List!19531 Int) List!19532)

(assert (=> d!539818 (= (rulesRegex!835 thiss!24550 rules!3447) (generalisedUnion!402 (map!4013 rules!3447 lambda!70332)))))

(declare-fun bs!404423 () Bool)

(assert (= bs!404423 d!539818))

(declare-fun m!2185201 () Bool)

(assert (=> bs!404423 m!2185201))

(declare-fun m!2185203 () Bool)

(assert (=> bs!404423 m!2185203))

(assert (=> bs!404423 m!2185203))

(declare-fun m!2185205 () Bool)

(assert (=> bs!404423 m!2185205))

(assert (=> b!1767248 d!539818))

(declare-fun b!1767346 () Bool)

(declare-fun e!1131021 () Bool)

(assert (=> b!1767346 (= e!1131021 (not (= (head!4104 lt!683841) (c!287797 (regex!3479 (rule!5513 (_1!10935 lt!683844)))))))))

(declare-fun b!1767347 () Bool)

(declare-fun e!1131017 () Bool)

(declare-fun e!1131015 () Bool)

(assert (=> b!1767347 (= e!1131017 e!1131015)))

(declare-fun res!795753 () Bool)

(assert (=> b!1767347 (=> (not res!795753) (not e!1131015))))

(declare-fun lt!683882 () Bool)

(assert (=> b!1767347 (= res!795753 (not lt!683882))))

(declare-fun b!1767348 () Bool)

(declare-fun e!1131019 () Bool)

(assert (=> b!1767348 (= e!1131019 (not lt!683882))))

(declare-fun b!1767349 () Bool)

(declare-fun e!1131020 () Bool)

(assert (=> b!1767349 (= e!1131020 (matchR!2280 (derivativeStep!1239 (regex!3479 (rule!5513 (_1!10935 lt!683844))) (head!4104 lt!683841)) (tail!2644 lt!683841)))))

(declare-fun b!1767350 () Bool)

(declare-fun res!795756 () Bool)

(assert (=> b!1767350 (=> res!795756 e!1131017)))

(assert (=> b!1767350 (= res!795756 (not ((_ is ElementMatch!4807) (regex!3479 (rule!5513 (_1!10935 lt!683844))))))))

(assert (=> b!1767350 (= e!1131019 e!1131017)))

(declare-fun b!1767351 () Bool)

(assert (=> b!1767351 (= e!1131020 (nullable!1470 (regex!3479 (rule!5513 (_1!10935 lt!683844)))))))

(declare-fun d!539820 () Bool)

(declare-fun e!1131018 () Bool)

(assert (=> d!539820 e!1131018))

(declare-fun c!287814 () Bool)

(assert (=> d!539820 (= c!287814 ((_ is EmptyExpr!4807) (regex!3479 (rule!5513 (_1!10935 lt!683844)))))))

(assert (=> d!539820 (= lt!683882 e!1131020)))

(declare-fun c!287815 () Bool)

(assert (=> d!539820 (= c!287815 (isEmpty!12284 lt!683841))))

(assert (=> d!539820 (validRegex!1944 (regex!3479 (rule!5513 (_1!10935 lt!683844))))))

(assert (=> d!539820 (= (matchR!2280 (regex!3479 (rule!5513 (_1!10935 lt!683844))) lt!683841) lt!683882)))

(declare-fun b!1767352 () Bool)

(declare-fun res!795757 () Bool)

(assert (=> b!1767352 (=> res!795757 e!1131017)))

(declare-fun e!1131016 () Bool)

(assert (=> b!1767352 (= res!795757 e!1131016)))

(declare-fun res!795758 () Bool)

(assert (=> b!1767352 (=> (not res!795758) (not e!1131016))))

(assert (=> b!1767352 (= res!795758 lt!683882)))

(declare-fun b!1767353 () Bool)

(assert (=> b!1767353 (= e!1131016 (= (head!4104 lt!683841) (c!287797 (regex!3479 (rule!5513 (_1!10935 lt!683844))))))))

(declare-fun b!1767354 () Bool)

(assert (=> b!1767354 (= e!1131015 e!1131021)))

(declare-fun res!795759 () Bool)

(assert (=> b!1767354 (=> res!795759 e!1131021)))

(declare-fun call!110880 () Bool)

(assert (=> b!1767354 (= res!795759 call!110880)))

(declare-fun b!1767355 () Bool)

(declare-fun res!795760 () Bool)

(assert (=> b!1767355 (=> (not res!795760) (not e!1131016))))

(assert (=> b!1767355 (= res!795760 (not call!110880))))

(declare-fun b!1767356 () Bool)

(assert (=> b!1767356 (= e!1131018 (= lt!683882 call!110880))))

(declare-fun b!1767357 () Bool)

(declare-fun res!795754 () Bool)

(assert (=> b!1767357 (=> (not res!795754) (not e!1131016))))

(assert (=> b!1767357 (= res!795754 (isEmpty!12284 (tail!2644 lt!683841)))))

(declare-fun bm!110875 () Bool)

(assert (=> bm!110875 (= call!110880 (isEmpty!12284 lt!683841))))

(declare-fun b!1767358 () Bool)

(assert (=> b!1767358 (= e!1131018 e!1131019)))

(declare-fun c!287816 () Bool)

(assert (=> b!1767358 (= c!287816 ((_ is EmptyLang!4807) (regex!3479 (rule!5513 (_1!10935 lt!683844)))))))

(declare-fun b!1767359 () Bool)

(declare-fun res!795755 () Bool)

(assert (=> b!1767359 (=> res!795755 e!1131021)))

(assert (=> b!1767359 (= res!795755 (not (isEmpty!12284 (tail!2644 lt!683841))))))

(assert (= (and d!539820 c!287815) b!1767351))

(assert (= (and d!539820 (not c!287815)) b!1767349))

(assert (= (and d!539820 c!287814) b!1767356))

(assert (= (and d!539820 (not c!287814)) b!1767358))

(assert (= (and b!1767358 c!287816) b!1767348))

(assert (= (and b!1767358 (not c!287816)) b!1767350))

(assert (= (and b!1767350 (not res!795756)) b!1767352))

(assert (= (and b!1767352 res!795758) b!1767355))

(assert (= (and b!1767355 res!795760) b!1767357))

(assert (= (and b!1767357 res!795754) b!1767353))

(assert (= (and b!1767352 (not res!795757)) b!1767347))

(assert (= (and b!1767347 res!795753) b!1767354))

(assert (= (and b!1767354 (not res!795759)) b!1767359))

(assert (= (and b!1767359 (not res!795755)) b!1767346))

(assert (= (or b!1767356 b!1767355 b!1767354) bm!110875))

(declare-fun m!2185207 () Bool)

(assert (=> b!1767349 m!2185207))

(assert (=> b!1767349 m!2185207))

(declare-fun m!2185209 () Bool)

(assert (=> b!1767349 m!2185209))

(declare-fun m!2185211 () Bool)

(assert (=> b!1767349 m!2185211))

(assert (=> b!1767349 m!2185209))

(assert (=> b!1767349 m!2185211))

(declare-fun m!2185213 () Bool)

(assert (=> b!1767349 m!2185213))

(assert (=> b!1767357 m!2185211))

(assert (=> b!1767357 m!2185211))

(declare-fun m!2185215 () Bool)

(assert (=> b!1767357 m!2185215))

(assert (=> b!1767353 m!2185207))

(declare-fun m!2185217 () Bool)

(assert (=> d!539820 m!2185217))

(declare-fun m!2185219 () Bool)

(assert (=> d!539820 m!2185219))

(assert (=> b!1767346 m!2185207))

(declare-fun m!2185221 () Bool)

(assert (=> b!1767351 m!2185221))

(assert (=> b!1767359 m!2185211))

(assert (=> b!1767359 m!2185211))

(assert (=> b!1767359 m!2185215))

(assert (=> bm!110875 m!2185217))

(assert (=> b!1767235 d!539820))

(declare-fun d!539822 () Bool)

(assert (=> d!539822 (= (inv!25281 (tag!3855 rule!422)) (= (mod (str.len (value!108823 (tag!3855 rule!422))) 2) 0))))

(assert (=> b!1767234 d!539822))

(declare-fun d!539824 () Bool)

(declare-fun res!795761 () Bool)

(declare-fun e!1131022 () Bool)

(assert (=> d!539824 (=> (not res!795761) (not e!1131022))))

(assert (=> d!539824 (= res!795761 (semiInverseModEq!1385 (toChars!4861 (transformation!3479 rule!422)) (toValue!5002 (transformation!3479 rule!422))))))

(assert (=> d!539824 (= (inv!25286 (transformation!3479 rule!422)) e!1131022)))

(declare-fun b!1767360 () Bool)

(assert (=> b!1767360 (= e!1131022 (equivClasses!1326 (toChars!4861 (transformation!3479 rule!422)) (toValue!5002 (transformation!3479 rule!422))))))

(assert (= (and d!539824 res!795761) b!1767360))

(declare-fun m!2185223 () Bool)

(assert (=> d!539824 m!2185223))

(declare-fun m!2185225 () Bool)

(assert (=> b!1767360 m!2185225))

(assert (=> b!1767234 d!539824))

(declare-fun d!539826 () Bool)

(declare-fun isEmpty!12286 (Option!3980) Bool)

(assert (=> d!539826 (= (isDefined!3323 lt!683866) (not (isEmpty!12286 lt!683866)))))

(declare-fun bs!404424 () Bool)

(assert (= bs!404424 d!539826))

(declare-fun m!2185227 () Bool)

(assert (=> bs!404424 m!2185227))

(assert (=> b!1767233 d!539826))

(declare-fun d!539828 () Bool)

(declare-fun e!1131045 () Bool)

(assert (=> d!539828 e!1131045))

(declare-fun res!795792 () Bool)

(assert (=> d!539828 (=> res!795792 e!1131045)))

(declare-fun lt!683900 () Option!3980)

(assert (=> d!539828 (= res!795792 (isEmpty!12286 lt!683900))))

(declare-fun e!1131044 () Option!3980)

(assert (=> d!539828 (= lt!683900 e!1131044)))

(declare-fun c!287825 () Bool)

(assert (=> d!539828 (= c!287825 (and ((_ is Cons!19461) rules!3447) ((_ is Nil!19461) (t!164912 rules!3447))))))

(declare-fun lt!683902 () Unit!33652)

(declare-fun lt!683901 () Unit!33652)

(assert (=> d!539828 (= lt!683902 lt!683901)))

(assert (=> d!539828 (isPrefix!1719 lt!683849 lt!683849)))

(declare-fun lemmaIsPrefixRefl!1137 (List!19530 List!19530) Unit!33652)

(assert (=> d!539828 (= lt!683901 (lemmaIsPrefixRefl!1137 lt!683849 lt!683849))))

(declare-fun rulesValidInductive!1175 (LexerInterface!3108 List!19531) Bool)

(assert (=> d!539828 (rulesValidInductive!1175 thiss!24550 rules!3447)))

(assert (=> d!539828 (= (maxPrefix!1662 thiss!24550 rules!3447 lt!683849) lt!683900)))

(declare-fun b!1767407 () Bool)

(declare-fun res!795794 () Bool)

(declare-fun e!1131043 () Bool)

(assert (=> b!1767407 (=> (not res!795794) (not e!1131043))))

(assert (=> b!1767407 (= res!795794 (< (size!15457 (_2!10935 (get!5937 lt!683900))) (size!15457 lt!683849)))))

(declare-fun call!110885 () Option!3980)

(declare-fun bm!110878 () Bool)

(assert (=> bm!110878 (= call!110885 (maxPrefixOneRule!1031 thiss!24550 (h!24862 rules!3447) lt!683849))))

(declare-fun b!1767408 () Bool)

(assert (=> b!1767408 (= e!1131043 (contains!3509 rules!3447 (rule!5513 (_1!10935 (get!5937 lt!683900)))))))

(declare-fun b!1767409 () Bool)

(assert (=> b!1767409 (= e!1131045 e!1131043)))

(declare-fun res!795793 () Bool)

(assert (=> b!1767409 (=> (not res!795793) (not e!1131043))))

(assert (=> b!1767409 (= res!795793 (isDefined!3323 lt!683900))))

(declare-fun b!1767410 () Bool)

(declare-fun lt!683898 () Option!3980)

(declare-fun lt!683899 () Option!3980)

(assert (=> b!1767410 (= e!1131044 (ite (and ((_ is None!3979) lt!683898) ((_ is None!3979) lt!683899)) None!3979 (ite ((_ is None!3979) lt!683899) lt!683898 (ite ((_ is None!3979) lt!683898) lt!683899 (ite (>= (size!15456 (_1!10935 (v!25450 lt!683898))) (size!15456 (_1!10935 (v!25450 lt!683899)))) lt!683898 lt!683899)))))))

(assert (=> b!1767410 (= lt!683898 call!110885)))

(assert (=> b!1767410 (= lt!683899 (maxPrefix!1662 thiss!24550 (t!164912 rules!3447) lt!683849))))

(declare-fun b!1767411 () Bool)

(declare-fun res!795795 () Bool)

(assert (=> b!1767411 (=> (not res!795795) (not e!1131043))))

(assert (=> b!1767411 (= res!795795 (matchR!2280 (regex!3479 (rule!5513 (_1!10935 (get!5937 lt!683900)))) (list!7901 (charsOf!2128 (_1!10935 (get!5937 lt!683900))))))))

(declare-fun b!1767412 () Bool)

(assert (=> b!1767412 (= e!1131044 call!110885)))

(declare-fun b!1767413 () Bool)

(declare-fun res!795797 () Bool)

(assert (=> b!1767413 (=> (not res!795797) (not e!1131043))))

(assert (=> b!1767413 (= res!795797 (= (list!7901 (charsOf!2128 (_1!10935 (get!5937 lt!683900)))) (originalCharacters!4293 (_1!10935 (get!5937 lt!683900)))))))

(declare-fun b!1767414 () Bool)

(declare-fun res!795796 () Bool)

(assert (=> b!1767414 (=> (not res!795796) (not e!1131043))))

(assert (=> b!1767414 (= res!795796 (= (++!5303 (list!7901 (charsOf!2128 (_1!10935 (get!5937 lt!683900)))) (_2!10935 (get!5937 lt!683900))) lt!683849))))

(declare-fun b!1767415 () Bool)

(declare-fun res!795798 () Bool)

(assert (=> b!1767415 (=> (not res!795798) (not e!1131043))))

(assert (=> b!1767415 (= res!795798 (= (value!108824 (_1!10935 (get!5937 lt!683900))) (apply!5279 (transformation!3479 (rule!5513 (_1!10935 (get!5937 lt!683900)))) (seqFromList!2448 (originalCharacters!4293 (_1!10935 (get!5937 lt!683900)))))))))

(assert (= (and d!539828 c!287825) b!1767412))

(assert (= (and d!539828 (not c!287825)) b!1767410))

(assert (= (or b!1767412 b!1767410) bm!110878))

(assert (= (and d!539828 (not res!795792)) b!1767409))

(assert (= (and b!1767409 res!795793) b!1767413))

(assert (= (and b!1767413 res!795797) b!1767407))

(assert (= (and b!1767407 res!795794) b!1767414))

(assert (= (and b!1767414 res!795796) b!1767415))

(assert (= (and b!1767415 res!795798) b!1767411))

(assert (= (and b!1767411 res!795795) b!1767408))

(declare-fun m!2185233 () Bool)

(assert (=> b!1767409 m!2185233))

(declare-fun m!2185235 () Bool)

(assert (=> d!539828 m!2185235))

(declare-fun m!2185237 () Bool)

(assert (=> d!539828 m!2185237))

(declare-fun m!2185239 () Bool)

(assert (=> d!539828 m!2185239))

(declare-fun m!2185241 () Bool)

(assert (=> d!539828 m!2185241))

(declare-fun m!2185243 () Bool)

(assert (=> b!1767413 m!2185243))

(declare-fun m!2185245 () Bool)

(assert (=> b!1767413 m!2185245))

(assert (=> b!1767413 m!2185245))

(declare-fun m!2185247 () Bool)

(assert (=> b!1767413 m!2185247))

(assert (=> b!1767411 m!2185243))

(assert (=> b!1767411 m!2185245))

(assert (=> b!1767411 m!2185245))

(assert (=> b!1767411 m!2185247))

(assert (=> b!1767411 m!2185247))

(declare-fun m!2185249 () Bool)

(assert (=> b!1767411 m!2185249))

(assert (=> b!1767414 m!2185243))

(assert (=> b!1767414 m!2185245))

(assert (=> b!1767414 m!2185245))

(assert (=> b!1767414 m!2185247))

(assert (=> b!1767414 m!2185247))

(declare-fun m!2185251 () Bool)

(assert (=> b!1767414 m!2185251))

(assert (=> b!1767407 m!2185243))

(declare-fun m!2185253 () Bool)

(assert (=> b!1767407 m!2185253))

(assert (=> b!1767407 m!2185197))

(declare-fun m!2185255 () Bool)

(assert (=> b!1767410 m!2185255))

(assert (=> b!1767408 m!2185243))

(declare-fun m!2185257 () Bool)

(assert (=> b!1767408 m!2185257))

(assert (=> b!1767415 m!2185243))

(declare-fun m!2185259 () Bool)

(assert (=> b!1767415 m!2185259))

(assert (=> b!1767415 m!2185259))

(declare-fun m!2185261 () Bool)

(assert (=> b!1767415 m!2185261))

(declare-fun m!2185263 () Bool)

(assert (=> bm!110878 m!2185263))

(assert (=> b!1767233 d!539828))

(declare-fun d!539834 () Bool)

(assert (=> d!539834 (= (list!7901 lt!683838) (list!7902 (c!287796 lt!683838)))))

(declare-fun bs!404426 () Bool)

(assert (= bs!404426 d!539834))

(declare-fun m!2185265 () Bool)

(assert (=> bs!404426 m!2185265))

(assert (=> b!1767233 d!539834))

(declare-fun d!539836 () Bool)

(declare-fun lt!683906 () BalanceConc!12890)

(assert (=> d!539836 (= (list!7901 lt!683906) (originalCharacters!4293 token!523))))

(assert (=> d!539836 (= lt!683906 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 token!523))) (value!108824 token!523)))))

(assert (=> d!539836 (= (charsOf!2128 token!523) lt!683906)))

(declare-fun b_lambda!57437 () Bool)

(assert (=> (not b_lambda!57437) (not d!539836)))

(declare-fun t!164914 () Bool)

(declare-fun tb!106797 () Bool)

(assert (=> (and b!1767236 (= (toChars!4861 (transformation!3479 rule!422)) (toChars!4861 (transformation!3479 (rule!5513 token!523)))) t!164914) tb!106797))

(declare-fun b!1767430 () Bool)

(declare-fun e!1131053 () Bool)

(declare-fun tp!501555 () Bool)

(assert (=> b!1767430 (= e!1131053 (and (inv!25288 (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 token!523))) (value!108824 token!523)))) tp!501555))))

(declare-fun result!128484 () Bool)

(assert (=> tb!106797 (= result!128484 (and (inv!25289 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 token!523))) (value!108824 token!523))) e!1131053))))

(assert (= tb!106797 b!1767430))

(declare-fun m!2185283 () Bool)

(assert (=> b!1767430 m!2185283))

(declare-fun m!2185285 () Bool)

(assert (=> tb!106797 m!2185285))

(assert (=> d!539836 t!164914))

(declare-fun b_and!134073 () Bool)

(assert (= b_and!134061 (and (=> t!164914 result!128484) b_and!134073)))

(declare-fun t!164916 () Bool)

(declare-fun tb!106799 () Bool)

(assert (=> (and b!1767243 (= (toChars!4861 (transformation!3479 (rule!5513 token!523))) (toChars!4861 (transformation!3479 (rule!5513 token!523)))) t!164916) tb!106799))

(declare-fun result!128486 () Bool)

(assert (= result!128486 result!128484))

(assert (=> d!539836 t!164916))

(declare-fun b_and!134075 () Bool)

(assert (= b_and!134063 (and (=> t!164916 result!128486) b_and!134075)))

(declare-fun t!164918 () Bool)

(declare-fun tb!106801 () Bool)

(assert (=> (and b!1767240 (= (toChars!4861 (transformation!3479 (h!24862 rules!3447))) (toChars!4861 (transformation!3479 (rule!5513 token!523)))) t!164918) tb!106801))

(declare-fun result!128488 () Bool)

(assert (= result!128488 result!128484))

(assert (=> d!539836 t!164918))

(declare-fun b_and!134077 () Bool)

(assert (= b_and!134065 (and (=> t!164918 result!128488) b_and!134077)))

(declare-fun m!2185287 () Bool)

(assert (=> d!539836 m!2185287))

(declare-fun m!2185289 () Bool)

(assert (=> d!539836 m!2185289))

(assert (=> b!1767233 d!539836))

(declare-fun d!539840 () Bool)

(declare-fun c!287831 () Bool)

(assert (=> d!539840 (= c!287831 ((_ is Node!6473) (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840)))))))

(declare-fun e!1131058 () Bool)

(assert (=> d!539840 (= (inv!25288 (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840)))) e!1131058)))

(declare-fun b!1767437 () Bool)

(declare-fun inv!25290 (Conc!6473) Bool)

(assert (=> b!1767437 (= e!1131058 (inv!25290 (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840)))))))

(declare-fun b!1767438 () Bool)

(declare-fun e!1131059 () Bool)

(assert (=> b!1767438 (= e!1131058 e!1131059)))

(declare-fun res!795809 () Bool)

(assert (=> b!1767438 (= res!795809 (not ((_ is Leaf!9433) (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840))))))))

(assert (=> b!1767438 (=> res!795809 e!1131059)))

(declare-fun b!1767439 () Bool)

(declare-fun inv!25291 (Conc!6473) Bool)

(assert (=> b!1767439 (= e!1131059 (inv!25291 (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840)))))))

(assert (= (and d!539840 c!287831) b!1767437))

(assert (= (and d!539840 (not c!287831)) b!1767438))

(assert (= (and b!1767438 (not res!795809)) b!1767439))

(declare-fun m!2185291 () Bool)

(assert (=> b!1767437 m!2185291))

(declare-fun m!2185293 () Bool)

(assert (=> b!1767439 m!2185293))

(assert (=> b!1767266 d!539840))

(declare-fun d!539842 () Bool)

(assert (=> d!539842 (= (isEmpty!12285 rules!3447) ((_ is Nil!19461) rules!3447))))

(assert (=> b!1767232 d!539842))

(declare-fun d!539844 () Bool)

(declare-fun lt!683912 () Int)

(assert (=> d!539844 (= lt!683912 (size!15457 (list!7901 lt!683838)))))

(declare-fun size!15460 (Conc!6473) Int)

(assert (=> d!539844 (= lt!683912 (size!15460 (c!287796 lt!683838)))))

(assert (=> d!539844 (= (size!15458 lt!683838) lt!683912)))

(declare-fun bs!404428 () Bool)

(assert (= bs!404428 d!539844))

(assert (=> bs!404428 m!2185115))

(assert (=> bs!404428 m!2185115))

(declare-fun m!2185301 () Bool)

(assert (=> bs!404428 m!2185301))

(declare-fun m!2185303 () Bool)

(assert (=> bs!404428 m!2185303))

(assert (=> b!1767242 d!539844))

(declare-fun b!1767440 () Bool)

(declare-fun e!1131066 () Bool)

(assert (=> b!1767440 (= e!1131066 (not (= (head!4104 lt!683849) (c!287797 lt!683843))))))

(declare-fun b!1767441 () Bool)

(declare-fun e!1131062 () Bool)

(declare-fun e!1131060 () Bool)

(assert (=> b!1767441 (= e!1131062 e!1131060)))

(declare-fun res!795810 () Bool)

(assert (=> b!1767441 (=> (not res!795810) (not e!1131060))))

(declare-fun lt!683913 () Bool)

(assert (=> b!1767441 (= res!795810 (not lt!683913))))

(declare-fun b!1767442 () Bool)

(declare-fun e!1131064 () Bool)

(assert (=> b!1767442 (= e!1131064 (not lt!683913))))

(declare-fun b!1767443 () Bool)

(declare-fun e!1131065 () Bool)

(assert (=> b!1767443 (= e!1131065 (matchR!2280 (derivativeStep!1239 lt!683843 (head!4104 lt!683849)) (tail!2644 lt!683849)))))

(declare-fun b!1767444 () Bool)

(declare-fun res!795813 () Bool)

(assert (=> b!1767444 (=> res!795813 e!1131062)))

(assert (=> b!1767444 (= res!795813 (not ((_ is ElementMatch!4807) lt!683843)))))

(assert (=> b!1767444 (= e!1131064 e!1131062)))

(declare-fun b!1767445 () Bool)

(assert (=> b!1767445 (= e!1131065 (nullable!1470 lt!683843))))

(declare-fun d!539850 () Bool)

(declare-fun e!1131063 () Bool)

(assert (=> d!539850 e!1131063))

(declare-fun c!287832 () Bool)

(assert (=> d!539850 (= c!287832 ((_ is EmptyExpr!4807) lt!683843))))

(assert (=> d!539850 (= lt!683913 e!1131065)))

(declare-fun c!287833 () Bool)

(assert (=> d!539850 (= c!287833 (isEmpty!12284 lt!683849))))

(assert (=> d!539850 (validRegex!1944 lt!683843)))

(assert (=> d!539850 (= (matchR!2280 lt!683843 lt!683849) lt!683913)))

(declare-fun b!1767446 () Bool)

(declare-fun res!795814 () Bool)

(assert (=> b!1767446 (=> res!795814 e!1131062)))

(declare-fun e!1131061 () Bool)

(assert (=> b!1767446 (= res!795814 e!1131061)))

(declare-fun res!795815 () Bool)

(assert (=> b!1767446 (=> (not res!795815) (not e!1131061))))

(assert (=> b!1767446 (= res!795815 lt!683913)))

(declare-fun b!1767447 () Bool)

(assert (=> b!1767447 (= e!1131061 (= (head!4104 lt!683849) (c!287797 lt!683843)))))

(declare-fun b!1767448 () Bool)

(assert (=> b!1767448 (= e!1131060 e!1131066)))

(declare-fun res!795816 () Bool)

(assert (=> b!1767448 (=> res!795816 e!1131066)))

(declare-fun call!110887 () Bool)

(assert (=> b!1767448 (= res!795816 call!110887)))

(declare-fun b!1767449 () Bool)

(declare-fun res!795817 () Bool)

(assert (=> b!1767449 (=> (not res!795817) (not e!1131061))))

(assert (=> b!1767449 (= res!795817 (not call!110887))))

(declare-fun b!1767450 () Bool)

(assert (=> b!1767450 (= e!1131063 (= lt!683913 call!110887))))

(declare-fun b!1767451 () Bool)

(declare-fun res!795811 () Bool)

(assert (=> b!1767451 (=> (not res!795811) (not e!1131061))))

(assert (=> b!1767451 (= res!795811 (isEmpty!12284 (tail!2644 lt!683849)))))

(declare-fun bm!110882 () Bool)

(assert (=> bm!110882 (= call!110887 (isEmpty!12284 lt!683849))))

(declare-fun b!1767452 () Bool)

(assert (=> b!1767452 (= e!1131063 e!1131064)))

(declare-fun c!287834 () Bool)

(assert (=> b!1767452 (= c!287834 ((_ is EmptyLang!4807) lt!683843))))

(declare-fun b!1767453 () Bool)

(declare-fun res!795812 () Bool)

(assert (=> b!1767453 (=> res!795812 e!1131066)))

(assert (=> b!1767453 (= res!795812 (not (isEmpty!12284 (tail!2644 lt!683849))))))

(assert (= (and d!539850 c!287833) b!1767445))

(assert (= (and d!539850 (not c!287833)) b!1767443))

(assert (= (and d!539850 c!287832) b!1767450))

(assert (= (and d!539850 (not c!287832)) b!1767452))

(assert (= (and b!1767452 c!287834) b!1767442))

(assert (= (and b!1767452 (not c!287834)) b!1767444))

(assert (= (and b!1767444 (not res!795813)) b!1767446))

(assert (= (and b!1767446 res!795815) b!1767449))

(assert (= (and b!1767449 res!795817) b!1767451))

(assert (= (and b!1767451 res!795811) b!1767447))

(assert (= (and b!1767446 (not res!795814)) b!1767441))

(assert (= (and b!1767441 res!795810) b!1767448))

(assert (= (and b!1767448 (not res!795816)) b!1767453))

(assert (= (and b!1767453 (not res!795812)) b!1767440))

(assert (= (or b!1767450 b!1767449 b!1767448) bm!110882))

(assert (=> b!1767443 m!2185147))

(assert (=> b!1767443 m!2185147))

(declare-fun m!2185305 () Bool)

(assert (=> b!1767443 m!2185305))

(assert (=> b!1767443 m!2185151))

(assert (=> b!1767443 m!2185305))

(assert (=> b!1767443 m!2185151))

(declare-fun m!2185307 () Bool)

(assert (=> b!1767443 m!2185307))

(assert (=> b!1767451 m!2185151))

(assert (=> b!1767451 m!2185151))

(assert (=> b!1767451 m!2185155))

(assert (=> b!1767447 m!2185147))

(assert (=> d!539850 m!2185157))

(declare-fun m!2185309 () Bool)

(assert (=> d!539850 m!2185309))

(assert (=> b!1767440 m!2185147))

(declare-fun m!2185311 () Bool)

(assert (=> b!1767445 m!2185311))

(assert (=> b!1767453 m!2185151))

(assert (=> b!1767453 m!2185151))

(assert (=> b!1767453 m!2185155))

(assert (=> bm!110882 m!2185157))

(assert (=> b!1767242 d!539850))

(declare-fun d!539852 () Bool)

(assert (=> d!539852 (matchR!2280 (rulesRegex!835 thiss!24550 rules!3447) (list!7901 (charsOf!2128 token!523)))))

(declare-fun lt!683916 () Unit!33652)

(declare-fun choose!10977 (LexerInterface!3108 List!19531 List!19530 Token!6524 Rule!6758 List!19530) Unit!33652)

(assert (=> d!539852 (= lt!683916 (choose!10977 thiss!24550 rules!3447 lt!683849 token!523 rule!422 Nil!19460))))

(assert (=> d!539852 (not (isEmpty!12285 rules!3447))))

(assert (=> d!539852 (= (lemmaMaxPrefixThenMatchesRulesRegex!186 thiss!24550 rules!3447 lt!683849 token!523 rule!422 Nil!19460) lt!683916)))

(declare-fun bs!404429 () Bool)

(assert (= bs!404429 d!539852))

(declare-fun m!2185323 () Bool)

(assert (=> bs!404429 m!2185323))

(assert (=> bs!404429 m!2185127))

(declare-fun m!2185327 () Bool)

(assert (=> bs!404429 m!2185327))

(declare-fun m!2185331 () Bool)

(assert (=> bs!404429 m!2185331))

(assert (=> bs!404429 m!2185117))

(assert (=> bs!404429 m!2185327))

(assert (=> bs!404429 m!2185019))

(assert (=> bs!404429 m!2185117))

(assert (=> bs!404429 m!2185127))

(assert (=> b!1767242 d!539852))

(declare-fun b!1767486 () Bool)

(declare-fun res!795830 () Bool)

(declare-fun e!1131091 () Bool)

(assert (=> b!1767486 (=> res!795830 e!1131091)))

(assert (=> b!1767486 (= res!795830 (not ((_ is IntegerValue!10709) (value!108824 token!523))))))

(declare-fun e!1131089 () Bool)

(assert (=> b!1767486 (= e!1131089 e!1131091)))

(declare-fun b!1767487 () Bool)

(declare-fun inv!17 (TokenValue!3569) Bool)

(assert (=> b!1767487 (= e!1131089 (inv!17 (value!108824 token!523)))))

(declare-fun d!539864 () Bool)

(declare-fun c!287845 () Bool)

(assert (=> d!539864 (= c!287845 ((_ is IntegerValue!10707) (value!108824 token!523)))))

(declare-fun e!1131090 () Bool)

(assert (=> d!539864 (= (inv!21 (value!108824 token!523)) e!1131090)))

(declare-fun b!1767488 () Bool)

(declare-fun inv!16 (TokenValue!3569) Bool)

(assert (=> b!1767488 (= e!1131090 (inv!16 (value!108824 token!523)))))

(declare-fun b!1767489 () Bool)

(declare-fun inv!15 (TokenValue!3569) Bool)

(assert (=> b!1767489 (= e!1131091 (inv!15 (value!108824 token!523)))))

(declare-fun b!1767490 () Bool)

(assert (=> b!1767490 (= e!1131090 e!1131089)))

(declare-fun c!287846 () Bool)

(assert (=> b!1767490 (= c!287846 ((_ is IntegerValue!10708) (value!108824 token!523)))))

(assert (= (and d!539864 c!287845) b!1767488))

(assert (= (and d!539864 (not c!287845)) b!1767490))

(assert (= (and b!1767490 c!287846) b!1767487))

(assert (= (and b!1767490 (not c!287846)) b!1767486))

(assert (= (and b!1767486 (not res!795830)) b!1767489))

(declare-fun m!2185339 () Bool)

(assert (=> b!1767487 m!2185339))

(declare-fun m!2185341 () Bool)

(assert (=> b!1767488 m!2185341))

(declare-fun m!2185343 () Bool)

(assert (=> b!1767489 m!2185343))

(assert (=> b!1767241 d!539864))

(declare-fun d!539870 () Bool)

(declare-fun lt!683919 () List!19530)

(assert (=> d!539870 (= (++!5303 lt!683841 lt!683919) lt!683837)))

(declare-fun e!1131094 () List!19530)

(assert (=> d!539870 (= lt!683919 e!1131094)))

(declare-fun c!287849 () Bool)

(assert (=> d!539870 (= c!287849 ((_ is Cons!19460) lt!683841))))

(assert (=> d!539870 (>= (size!15457 lt!683837) (size!15457 lt!683841))))

(assert (=> d!539870 (= (getSuffix!886 lt!683837 lt!683841) lt!683919)))

(declare-fun b!1767495 () Bool)

(assert (=> b!1767495 (= e!1131094 (getSuffix!886 (tail!2644 lt!683837) (t!164911 lt!683841)))))

(declare-fun b!1767496 () Bool)

(assert (=> b!1767496 (= e!1131094 lt!683837)))

(assert (= (and d!539870 c!287849) b!1767495))

(assert (= (and d!539870 (not c!287849)) b!1767496))

(declare-fun m!2185345 () Bool)

(assert (=> d!539870 m!2185345))

(declare-fun m!2185347 () Bool)

(assert (=> d!539870 m!2185347))

(assert (=> d!539870 m!2185063))

(declare-fun m!2185349 () Bool)

(assert (=> b!1767495 m!2185349))

(assert (=> b!1767495 m!2185349))

(declare-fun m!2185351 () Bool)

(assert (=> b!1767495 m!2185351))

(assert (=> b!1767239 d!539870))

(declare-fun d!539872 () Bool)

(assert (=> d!539872 (= (_2!10935 lt!683844) lt!683850)))

(declare-fun lt!683922 () Unit!33652)

(declare-fun choose!10978 (List!19530 List!19530 List!19530 List!19530 List!19530) Unit!33652)

(assert (=> d!539872 (= lt!683922 (choose!10978 lt!683841 (_2!10935 lt!683844) lt!683841 lt!683850 lt!683837))))

(assert (=> d!539872 (isPrefix!1719 lt!683841 lt!683837)))

(assert (=> d!539872 (= (lemmaSamePrefixThenSameSuffix!830 lt!683841 (_2!10935 lt!683844) lt!683841 lt!683850 lt!683837) lt!683922)))

(declare-fun bs!404431 () Bool)

(assert (= bs!404431 d!539872))

(declare-fun m!2185353 () Bool)

(assert (=> bs!404431 m!2185353))

(assert (=> bs!404431 m!2185069))

(assert (=> b!1767239 d!539872))

(declare-fun d!539874 () Bool)

(assert (=> d!539874 (= (maxPrefixOneRule!1031 thiss!24550 (rule!5513 (_1!10935 lt!683844)) lt!683837) (Some!3979 (tuple2!19067 (Token!6525 (apply!5279 (transformation!3479 (rule!5513 (_1!10935 lt!683844))) (seqFromList!2448 lt!683841)) (rule!5513 (_1!10935 lt!683844)) (size!15457 lt!683841) lt!683841) (_2!10935 lt!683844))))))

(declare-fun lt!683925 () Unit!33652)

(declare-fun choose!10979 (LexerInterface!3108 List!19531 List!19530 List!19530 List!19530 Rule!6758) Unit!33652)

(assert (=> d!539874 (= lt!683925 (choose!10979 thiss!24550 rules!3447 lt!683841 lt!683837 (_2!10935 lt!683844) (rule!5513 (_1!10935 lt!683844))))))

(assert (=> d!539874 (not (isEmpty!12285 rules!3447))))

(assert (=> d!539874 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!409 thiss!24550 rules!3447 lt!683841 lt!683837 (_2!10935 lt!683844) (rule!5513 (_1!10935 lt!683844))) lt!683925)))

(declare-fun bs!404432 () Bool)

(assert (= bs!404432 d!539874))

(assert (=> bs!404432 m!2185059))

(assert (=> bs!404432 m!2185061))

(assert (=> bs!404432 m!2185019))

(assert (=> bs!404432 m!2185059))

(declare-fun m!2185355 () Bool)

(assert (=> bs!404432 m!2185355))

(assert (=> bs!404432 m!2185063))

(assert (=> bs!404432 m!2185051))

(assert (=> b!1767239 d!539874))

(declare-fun d!539876 () Bool)

(assert (=> d!539876 (= (apply!5279 (transformation!3479 (rule!5513 (_1!10935 lt!683844))) (seqFromList!2448 lt!683841)) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (seqFromList!2448 lt!683841)))))

(declare-fun b_lambda!57439 () Bool)

(assert (=> (not b_lambda!57439) (not d!539876)))

(declare-fun tb!106803 () Bool)

(declare-fun t!164920 () Bool)

(assert (=> (and b!1767236 (= (toValue!5002 (transformation!3479 rule!422)) (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) t!164920) tb!106803))

(declare-fun result!128490 () Bool)

(assert (=> tb!106803 (= result!128490 (inv!21 (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (seqFromList!2448 lt!683841))))))

(declare-fun m!2185357 () Bool)

(assert (=> tb!106803 m!2185357))

(assert (=> d!539876 t!164920))

(declare-fun b_and!134079 () Bool)

(assert (= b_and!134067 (and (=> t!164920 result!128490) b_and!134079)))

(declare-fun t!164922 () Bool)

(declare-fun tb!106805 () Bool)

(assert (=> (and b!1767243 (= (toValue!5002 (transformation!3479 (rule!5513 token!523))) (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) t!164922) tb!106805))

(declare-fun result!128492 () Bool)

(assert (= result!128492 result!128490))

(assert (=> d!539876 t!164922))

(declare-fun b_and!134081 () Bool)

(assert (= b_and!134069 (and (=> t!164922 result!128492) b_and!134081)))

(declare-fun tb!106807 () Bool)

(declare-fun t!164924 () Bool)

(assert (=> (and b!1767240 (= (toValue!5002 (transformation!3479 (h!24862 rules!3447))) (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) t!164924) tb!106807))

(declare-fun result!128494 () Bool)

(assert (= result!128494 result!128490))

(assert (=> d!539876 t!164924))

(declare-fun b_and!134083 () Bool)

(assert (= b_and!134071 (and (=> t!164924 result!128494) b_and!134083)))

(assert (=> d!539876 m!2185059))

(declare-fun m!2185359 () Bool)

(assert (=> d!539876 m!2185359))

(assert (=> b!1767239 d!539876))

(declare-fun d!539878 () Bool)

(declare-fun lt!683928 () Int)

(assert (=> d!539878 (>= lt!683928 0)))

(declare-fun e!1131098 () Int)

(assert (=> d!539878 (= lt!683928 e!1131098)))

(declare-fun c!287852 () Bool)

(assert (=> d!539878 (= c!287852 ((_ is Nil!19460) lt!683841))))

(assert (=> d!539878 (= (size!15457 lt!683841) lt!683928)))

(declare-fun b!1767501 () Bool)

(assert (=> b!1767501 (= e!1131098 0)))

(declare-fun b!1767502 () Bool)

(assert (=> b!1767502 (= e!1131098 (+ 1 (size!15457 (t!164911 lt!683841))))))

(assert (= (and d!539878 c!287852) b!1767501))

(assert (= (and d!539878 (not c!287852)) b!1767502))

(declare-fun m!2185361 () Bool)

(assert (=> b!1767502 m!2185361))

(assert (=> b!1767239 d!539878))

(declare-fun d!539880 () Bool)

(declare-fun e!1131150 () Bool)

(assert (=> d!539880 e!1131150))

(declare-fun res!795892 () Bool)

(assert (=> d!539880 (=> res!795892 e!1131150)))

(declare-fun lt!683969 () Option!3980)

(assert (=> d!539880 (= res!795892 (isEmpty!12286 lt!683969))))

(declare-fun e!1131153 () Option!3980)

(assert (=> d!539880 (= lt!683969 e!1131153)))

(declare-fun c!287869 () Bool)

(declare-datatypes ((tuple2!19068 0))(
  ( (tuple2!19069 (_1!10936 List!19530) (_2!10936 List!19530)) )
))
(declare-fun lt!683968 () tuple2!19068)

(assert (=> d!539880 (= c!287869 (isEmpty!12284 (_1!10936 lt!683968)))))

(declare-fun findLongestMatch!375 (Regex!4807 List!19530) tuple2!19068)

(assert (=> d!539880 (= lt!683968 (findLongestMatch!375 (regex!3479 (rule!5513 (_1!10935 lt!683844))) lt!683837))))

(assert (=> d!539880 (ruleValid!977 thiss!24550 (rule!5513 (_1!10935 lt!683844)))))

(assert (=> d!539880 (= (maxPrefixOneRule!1031 thiss!24550 (rule!5513 (_1!10935 lt!683844)) lt!683837) lt!683969)))

(declare-fun b!1767606 () Bool)

(declare-fun e!1131149 () Bool)

(assert (=> b!1767606 (= e!1131150 e!1131149)))

(declare-fun res!795893 () Bool)

(assert (=> b!1767606 (=> (not res!795893) (not e!1131149))))

(assert (=> b!1767606 (= res!795893 (matchR!2280 (regex!3479 (rule!5513 (_1!10935 lt!683844))) (list!7901 (charsOf!2128 (_1!10935 (get!5937 lt!683969))))))))

(declare-fun b!1767607 () Bool)

(declare-fun res!795895 () Bool)

(assert (=> b!1767607 (=> (not res!795895) (not e!1131149))))

(assert (=> b!1767607 (= res!795895 (= (++!5303 (list!7901 (charsOf!2128 (_1!10935 (get!5937 lt!683969)))) (_2!10935 (get!5937 lt!683969))) lt!683837))))

(declare-fun b!1767608 () Bool)

(assert (=> b!1767608 (= e!1131153 None!3979)))

(declare-fun b!1767609 () Bool)

(declare-fun res!795897 () Bool)

(assert (=> b!1767609 (=> (not res!795897) (not e!1131149))))

(assert (=> b!1767609 (= res!795897 (= (rule!5513 (_1!10935 (get!5937 lt!683969))) (rule!5513 (_1!10935 lt!683844))))))

(declare-fun b!1767610 () Bool)

(declare-fun res!795894 () Bool)

(assert (=> b!1767610 (=> (not res!795894) (not e!1131149))))

(assert (=> b!1767610 (= res!795894 (= (value!108824 (_1!10935 (get!5937 lt!683969))) (apply!5279 (transformation!3479 (rule!5513 (_1!10935 (get!5937 lt!683969)))) (seqFromList!2448 (originalCharacters!4293 (_1!10935 (get!5937 lt!683969)))))))))

(declare-fun b!1767611 () Bool)

(assert (=> b!1767611 (= e!1131153 (Some!3979 (tuple2!19067 (Token!6525 (apply!5279 (transformation!3479 (rule!5513 (_1!10935 lt!683844))) (seqFromList!2448 (_1!10936 lt!683968))) (rule!5513 (_1!10935 lt!683844)) (size!15458 (seqFromList!2448 (_1!10936 lt!683968))) (_1!10936 lt!683968)) (_2!10936 lt!683968))))))

(declare-fun lt!683971 () Unit!33652)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!432 (Regex!4807 List!19530) Unit!33652)

(assert (=> b!1767611 (= lt!683971 (longestMatchIsAcceptedByMatchOrIsEmpty!432 (regex!3479 (rule!5513 (_1!10935 lt!683844))) lt!683837))))

(declare-fun res!795898 () Bool)

(declare-fun findLongestMatchInner!448 (Regex!4807 List!19530 Int List!19530 List!19530 Int) tuple2!19068)

(assert (=> b!1767611 (= res!795898 (isEmpty!12284 (_1!10936 (findLongestMatchInner!448 (regex!3479 (rule!5513 (_1!10935 lt!683844))) Nil!19460 (size!15457 Nil!19460) lt!683837 lt!683837 (size!15457 lt!683837)))))))

(declare-fun e!1131148 () Bool)

(assert (=> b!1767611 (=> res!795898 e!1131148)))

(assert (=> b!1767611 e!1131148))

(declare-fun lt!683970 () Unit!33652)

(assert (=> b!1767611 (= lt!683970 lt!683971)))

(declare-fun lt!683972 () Unit!33652)

(assert (=> b!1767611 (= lt!683972 (lemmaSemiInverse!617 (transformation!3479 (rule!5513 (_1!10935 lt!683844))) (seqFromList!2448 (_1!10936 lt!683968))))))

(declare-fun b!1767612 () Bool)

(declare-fun res!795896 () Bool)

(assert (=> b!1767612 (=> (not res!795896) (not e!1131149))))

(assert (=> b!1767612 (= res!795896 (< (size!15457 (_2!10935 (get!5937 lt!683969))) (size!15457 lt!683837)))))

(declare-fun b!1767613 () Bool)

(assert (=> b!1767613 (= e!1131148 (matchR!2280 (regex!3479 (rule!5513 (_1!10935 lt!683844))) (_1!10936 (findLongestMatchInner!448 (regex!3479 (rule!5513 (_1!10935 lt!683844))) Nil!19460 (size!15457 Nil!19460) lt!683837 lt!683837 (size!15457 lt!683837)))))))

(declare-fun b!1767614 () Bool)

(assert (=> b!1767614 (= e!1131149 (= (size!15456 (_1!10935 (get!5937 lt!683969))) (size!15457 (originalCharacters!4293 (_1!10935 (get!5937 lt!683969))))))))

(assert (= (and d!539880 c!287869) b!1767608))

(assert (= (and d!539880 (not c!287869)) b!1767611))

(assert (= (and b!1767611 (not res!795898)) b!1767613))

(assert (= (and d!539880 (not res!795892)) b!1767606))

(assert (= (and b!1767606 res!795893) b!1767607))

(assert (= (and b!1767607 res!795895) b!1767612))

(assert (= (and b!1767612 res!795896) b!1767609))

(assert (= (and b!1767609 res!795897) b!1767610))

(assert (= (and b!1767610 res!795894) b!1767614))

(declare-fun m!2185481 () Bool)

(assert (=> b!1767611 m!2185481))

(assert (=> b!1767611 m!2185347))

(declare-fun m!2185483 () Bool)

(assert (=> b!1767611 m!2185483))

(declare-fun m!2185485 () Bool)

(assert (=> b!1767611 m!2185485))

(assert (=> b!1767611 m!2185481))

(assert (=> b!1767611 m!2185347))

(declare-fun m!2185487 () Bool)

(assert (=> b!1767611 m!2185487))

(assert (=> b!1767611 m!2185483))

(declare-fun m!2185489 () Bool)

(assert (=> b!1767611 m!2185489))

(assert (=> b!1767611 m!2185483))

(declare-fun m!2185491 () Bool)

(assert (=> b!1767611 m!2185491))

(assert (=> b!1767611 m!2185483))

(declare-fun m!2185493 () Bool)

(assert (=> b!1767611 m!2185493))

(declare-fun m!2185499 () Bool)

(assert (=> b!1767611 m!2185499))

(declare-fun m!2185503 () Bool)

(assert (=> b!1767610 m!2185503))

(declare-fun m!2185507 () Bool)

(assert (=> b!1767610 m!2185507))

(assert (=> b!1767610 m!2185507))

(declare-fun m!2185511 () Bool)

(assert (=> b!1767610 m!2185511))

(assert (=> b!1767609 m!2185503))

(assert (=> b!1767607 m!2185503))

(declare-fun m!2185515 () Bool)

(assert (=> b!1767607 m!2185515))

(assert (=> b!1767607 m!2185515))

(declare-fun m!2185517 () Bool)

(assert (=> b!1767607 m!2185517))

(assert (=> b!1767607 m!2185517))

(declare-fun m!2185519 () Bool)

(assert (=> b!1767607 m!2185519))

(assert (=> b!1767614 m!2185503))

(declare-fun m!2185521 () Bool)

(assert (=> b!1767614 m!2185521))

(assert (=> b!1767613 m!2185481))

(assert (=> b!1767613 m!2185347))

(assert (=> b!1767613 m!2185481))

(assert (=> b!1767613 m!2185347))

(assert (=> b!1767613 m!2185487))

(declare-fun m!2185523 () Bool)

(assert (=> b!1767613 m!2185523))

(assert (=> b!1767606 m!2185503))

(assert (=> b!1767606 m!2185515))

(assert (=> b!1767606 m!2185515))

(assert (=> b!1767606 m!2185517))

(assert (=> b!1767606 m!2185517))

(declare-fun m!2185529 () Bool)

(assert (=> b!1767606 m!2185529))

(assert (=> b!1767612 m!2185503))

(declare-fun m!2185531 () Bool)

(assert (=> b!1767612 m!2185531))

(assert (=> b!1767612 m!2185347))

(declare-fun m!2185533 () Bool)

(assert (=> d!539880 m!2185533))

(declare-fun m!2185535 () Bool)

(assert (=> d!539880 m!2185535))

(declare-fun m!2185537 () Bool)

(assert (=> d!539880 m!2185537))

(declare-fun m!2185541 () Bool)

(assert (=> d!539880 m!2185541))

(assert (=> b!1767239 d!539880))

(declare-fun d!539928 () Bool)

(declare-fun fromListB!1120 (List!19530) BalanceConc!12890)

(assert (=> d!539928 (= (seqFromList!2448 lt!683841) (fromListB!1120 lt!683841))))

(declare-fun bs!404441 () Bool)

(assert (= bs!404441 d!539928))

(declare-fun m!2185543 () Bool)

(assert (=> bs!404441 m!2185543))

(assert (=> b!1767239 d!539928))

(declare-fun b!1767631 () Bool)

(declare-fun res!795907 () Bool)

(declare-fun e!1131164 () Bool)

(assert (=> b!1767631 (=> res!795907 e!1131164)))

(assert (=> b!1767631 (= res!795907 (not ((_ is IntegerValue!10709) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840))))))

(declare-fun e!1131162 () Bool)

(assert (=> b!1767631 (= e!1131162 e!1131164)))

(declare-fun b!1767632 () Bool)

(assert (=> b!1767632 (= e!1131162 (inv!17 (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840)))))

(declare-fun d!539930 () Bool)

(declare-fun c!287877 () Bool)

(assert (=> d!539930 (= c!287877 ((_ is IntegerValue!10707) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840)))))

(declare-fun e!1131163 () Bool)

(assert (=> d!539930 (= (inv!21 (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840)) e!1131163)))

(declare-fun b!1767633 () Bool)

(assert (=> b!1767633 (= e!1131163 (inv!16 (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840)))))

(declare-fun b!1767634 () Bool)

(assert (=> b!1767634 (= e!1131164 (inv!15 (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840)))))

(declare-fun b!1767635 () Bool)

(assert (=> b!1767635 (= e!1131163 e!1131162)))

(declare-fun c!287878 () Bool)

(assert (=> b!1767635 (= c!287878 ((_ is IntegerValue!10708) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840)))))

(assert (= (and d!539930 c!287877) b!1767633))

(assert (= (and d!539930 (not c!287877)) b!1767635))

(assert (= (and b!1767635 c!287878) b!1767632))

(assert (= (and b!1767635 (not c!287878)) b!1767631))

(assert (= (and b!1767631 (not res!795907)) b!1767634))

(declare-fun m!2185545 () Bool)

(assert (=> b!1767632 m!2185545))

(declare-fun m!2185547 () Bool)

(assert (=> b!1767633 m!2185547))

(declare-fun m!2185549 () Bool)

(assert (=> b!1767634 m!2185549))

(assert (=> tb!106791 d!539930))

(declare-fun d!539932 () Bool)

(declare-fun res!795912 () Bool)

(declare-fun e!1131167 () Bool)

(assert (=> d!539932 (=> (not res!795912) (not e!1131167))))

(assert (=> d!539932 (= res!795912 (not (isEmpty!12284 (originalCharacters!4293 token!523))))))

(assert (=> d!539932 (= (inv!25287 token!523) e!1131167)))

(declare-fun b!1767642 () Bool)

(declare-fun res!795913 () Bool)

(assert (=> b!1767642 (=> (not res!795913) (not e!1131167))))

(assert (=> b!1767642 (= res!795913 (= (originalCharacters!4293 token!523) (list!7901 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 token!523))) (value!108824 token!523)))))))

(declare-fun b!1767643 () Bool)

(assert (=> b!1767643 (= e!1131167 (= (size!15456 token!523) (size!15457 (originalCharacters!4293 token!523))))))

(assert (= (and d!539932 res!795912) b!1767642))

(assert (= (and b!1767642 res!795913) b!1767643))

(declare-fun b_lambda!57453 () Bool)

(assert (=> (not b_lambda!57453) (not b!1767642)))

(assert (=> b!1767642 t!164914))

(declare-fun b_and!134121 () Bool)

(assert (= b_and!134073 (and (=> t!164914 result!128484) b_and!134121)))

(assert (=> b!1767642 t!164916))

(declare-fun b_and!134123 () Bool)

(assert (= b_and!134075 (and (=> t!164916 result!128486) b_and!134123)))

(assert (=> b!1767642 t!164918))

(declare-fun b_and!134125 () Bool)

(assert (= b_and!134077 (and (=> t!164918 result!128488) b_and!134125)))

(declare-fun m!2185551 () Bool)

(assert (=> d!539932 m!2185551))

(assert (=> b!1767642 m!2185289))

(assert (=> b!1767642 m!2185289))

(declare-fun m!2185553 () Bool)

(assert (=> b!1767642 m!2185553))

(declare-fun m!2185555 () Bool)

(assert (=> b!1767643 m!2185555))

(assert (=> start!175178 d!539932))

(declare-fun d!539934 () Bool)

(assert (=> d!539934 (isPrefix!1719 lt!683849 (++!5303 lt!683849 suffix!1421))))

(declare-fun lt!683981 () Unit!33652)

(declare-fun choose!10980 (List!19530 List!19530) Unit!33652)

(assert (=> d!539934 (= lt!683981 (choose!10980 lt!683849 suffix!1421))))

(assert (=> d!539934 (= (lemmaConcatTwoListThenFirstIsPrefix!1228 lt!683849 suffix!1421) lt!683981)))

(declare-fun bs!404444 () Bool)

(assert (= bs!404444 d!539934))

(assert (=> bs!404444 m!2185083))

(assert (=> bs!404444 m!2185083))

(declare-fun m!2185561 () Bool)

(assert (=> bs!404444 m!2185561))

(declare-fun m!2185563 () Bool)

(assert (=> bs!404444 m!2185563))

(assert (=> b!1767238 d!539934))

(declare-fun d!539940 () Bool)

(assert (=> d!539940 (isPrefix!1719 lt!683841 (++!5303 lt!683841 (_2!10935 lt!683844)))))

(declare-fun lt!683982 () Unit!33652)

(assert (=> d!539940 (= lt!683982 (choose!10980 lt!683841 (_2!10935 lt!683844)))))

(assert (=> d!539940 (= (lemmaConcatTwoListThenFirstIsPrefix!1228 lt!683841 (_2!10935 lt!683844)) lt!683982)))

(declare-fun bs!404445 () Bool)

(assert (= bs!404445 d!539940))

(assert (=> bs!404445 m!2185077))

(assert (=> bs!404445 m!2185077))

(assert (=> bs!404445 m!2185079))

(declare-fun m!2185565 () Bool)

(assert (=> bs!404445 m!2185565))

(assert (=> b!1767238 d!539940))

(declare-fun d!539942 () Bool)

(assert (=> d!539942 (= (list!7901 lt!683840) (list!7902 (c!287796 lt!683840)))))

(declare-fun bs!404446 () Bool)

(assert (= bs!404446 d!539942))

(declare-fun m!2185567 () Bool)

(assert (=> bs!404446 m!2185567))

(assert (=> b!1767238 d!539942))

(declare-fun d!539944 () Bool)

(declare-fun lt!683983 () BalanceConc!12890)

(assert (=> d!539944 (= (list!7901 lt!683983) (originalCharacters!4293 (_1!10935 lt!683844)))))

(assert (=> d!539944 (= lt!683983 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (value!108824 (_1!10935 lt!683844))))))

(assert (=> d!539944 (= (charsOf!2128 (_1!10935 lt!683844)) lt!683983)))

(declare-fun b_lambda!57459 () Bool)

(assert (=> (not b_lambda!57459) (not d!539944)))

(assert (=> d!539944 t!164893))

(declare-fun b_and!134139 () Bool)

(assert (= b_and!134121 (and (=> t!164893 result!128462) b_and!134139)))

(assert (=> d!539944 t!164895))

(declare-fun b_and!134141 () Bool)

(assert (= b_and!134123 (and (=> t!164895 result!128466) b_and!134141)))

(assert (=> d!539944 t!164897))

(declare-fun b_and!134143 () Bool)

(assert (= b_and!134125 (and (=> t!164897 result!128468) b_and!134143)))

(declare-fun m!2185569 () Bool)

(assert (=> d!539944 m!2185569))

(assert (=> d!539944 m!2185119))

(assert (=> b!1767238 d!539944))

(declare-fun b!1767659 () Bool)

(declare-fun res!795925 () Bool)

(declare-fun e!1131181 () Bool)

(assert (=> b!1767659 (=> (not res!795925) (not e!1131181))))

(assert (=> b!1767659 (= res!795925 (= (head!4104 lt!683841) (head!4104 (++!5303 lt!683841 (_2!10935 lt!683844)))))))

(declare-fun d!539946 () Bool)

(declare-fun e!1131180 () Bool)

(assert (=> d!539946 e!1131180))

(declare-fun res!795926 () Bool)

(assert (=> d!539946 (=> res!795926 e!1131180)))

(declare-fun lt!683986 () Bool)

(assert (=> d!539946 (= res!795926 (not lt!683986))))

(declare-fun e!1131182 () Bool)

(assert (=> d!539946 (= lt!683986 e!1131182)))

(declare-fun res!795927 () Bool)

(assert (=> d!539946 (=> res!795927 e!1131182)))

(assert (=> d!539946 (= res!795927 ((_ is Nil!19460) lt!683841))))

(assert (=> d!539946 (= (isPrefix!1719 lt!683841 (++!5303 lt!683841 (_2!10935 lt!683844))) lt!683986)))

(declare-fun b!1767661 () Bool)

(assert (=> b!1767661 (= e!1131180 (>= (size!15457 (++!5303 lt!683841 (_2!10935 lt!683844))) (size!15457 lt!683841)))))

(declare-fun b!1767658 () Bool)

(assert (=> b!1767658 (= e!1131182 e!1131181)))

(declare-fun res!795928 () Bool)

(assert (=> b!1767658 (=> (not res!795928) (not e!1131181))))

(assert (=> b!1767658 (= res!795928 (not ((_ is Nil!19460) (++!5303 lt!683841 (_2!10935 lt!683844)))))))

(declare-fun b!1767660 () Bool)

(assert (=> b!1767660 (= e!1131181 (isPrefix!1719 (tail!2644 lt!683841) (tail!2644 (++!5303 lt!683841 (_2!10935 lt!683844)))))))

(assert (= (and d!539946 (not res!795927)) b!1767658))

(assert (= (and b!1767658 res!795928) b!1767659))

(assert (= (and b!1767659 res!795925) b!1767660))

(assert (= (and d!539946 (not res!795926)) b!1767661))

(assert (=> b!1767659 m!2185207))

(assert (=> b!1767659 m!2185077))

(declare-fun m!2185575 () Bool)

(assert (=> b!1767659 m!2185575))

(assert (=> b!1767661 m!2185077))

(declare-fun m!2185577 () Bool)

(assert (=> b!1767661 m!2185577))

(assert (=> b!1767661 m!2185063))

(assert (=> b!1767660 m!2185211))

(assert (=> b!1767660 m!2185077))

(declare-fun m!2185579 () Bool)

(assert (=> b!1767660 m!2185579))

(assert (=> b!1767660 m!2185211))

(assert (=> b!1767660 m!2185579))

(declare-fun m!2185581 () Bool)

(assert (=> b!1767660 m!2185581))

(assert (=> b!1767238 d!539946))

(declare-fun b!1767667 () Bool)

(declare-fun e!1131186 () List!19530)

(assert (=> b!1767667 (= e!1131186 (Cons!19460 (h!24861 lt!683849) (++!5303 (t!164911 lt!683849) suffix!1421)))))

(declare-fun b!1767666 () Bool)

(assert (=> b!1767666 (= e!1131186 suffix!1421)))

(declare-fun d!539950 () Bool)

(declare-fun e!1131185 () Bool)

(assert (=> d!539950 e!1131185))

(declare-fun res!795929 () Bool)

(assert (=> d!539950 (=> (not res!795929) (not e!1131185))))

(declare-fun lt!683987 () List!19530)

(assert (=> d!539950 (= res!795929 (= (content!2817 lt!683987) ((_ map or) (content!2817 lt!683849) (content!2817 suffix!1421))))))

(assert (=> d!539950 (= lt!683987 e!1131186)))

(declare-fun c!287881 () Bool)

(assert (=> d!539950 (= c!287881 ((_ is Nil!19460) lt!683849))))

(assert (=> d!539950 (= (++!5303 lt!683849 suffix!1421) lt!683987)))

(declare-fun b!1767668 () Bool)

(declare-fun res!795930 () Bool)

(assert (=> b!1767668 (=> (not res!795930) (not e!1131185))))

(assert (=> b!1767668 (= res!795930 (= (size!15457 lt!683987) (+ (size!15457 lt!683849) (size!15457 suffix!1421))))))

(declare-fun b!1767669 () Bool)

(assert (=> b!1767669 (= e!1131185 (or (not (= suffix!1421 Nil!19460)) (= lt!683987 lt!683849)))))

(assert (= (and d!539950 c!287881) b!1767666))

(assert (= (and d!539950 (not c!287881)) b!1767667))

(assert (= (and d!539950 res!795929) b!1767668))

(assert (= (and b!1767668 res!795930) b!1767669))

(declare-fun m!2185583 () Bool)

(assert (=> b!1767667 m!2185583))

(declare-fun m!2185585 () Bool)

(assert (=> d!539950 m!2185585))

(assert (=> d!539950 m!2185191))

(declare-fun m!2185587 () Bool)

(assert (=> d!539950 m!2185587))

(declare-fun m!2185589 () Bool)

(assert (=> b!1767668 m!2185589))

(assert (=> b!1767668 m!2185197))

(declare-fun m!2185591 () Bool)

(assert (=> b!1767668 m!2185591))

(assert (=> b!1767238 d!539950))

(declare-fun d!539952 () Bool)

(declare-fun e!1131192 () Bool)

(assert (=> d!539952 e!1131192))

(declare-fun res!795937 () Bool)

(assert (=> d!539952 (=> (not res!795937) (not e!1131192))))

(assert (=> d!539952 (= res!795937 (isDefined!3324 (getRuleFromTag!527 thiss!24550 rules!3447 (tag!3855 (rule!5513 (_1!10935 lt!683844))))))))

(declare-fun lt!683994 () Unit!33652)

(declare-fun choose!10981 (LexerInterface!3108 List!19531 List!19530 Token!6524) Unit!33652)

(assert (=> d!539952 (= lt!683994 (choose!10981 thiss!24550 rules!3447 lt!683837 (_1!10935 lt!683844)))))

(assert (=> d!539952 (rulesInvariant!2777 thiss!24550 rules!3447)))

(assert (=> d!539952 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!527 thiss!24550 rules!3447 lt!683837 (_1!10935 lt!683844)) lt!683994)))

(declare-fun b!1767680 () Bool)

(declare-fun res!795938 () Bool)

(assert (=> b!1767680 (=> (not res!795938) (not e!1131192))))

(assert (=> b!1767680 (= res!795938 (matchR!2280 (regex!3479 (get!5938 (getRuleFromTag!527 thiss!24550 rules!3447 (tag!3855 (rule!5513 (_1!10935 lt!683844)))))) (list!7901 (charsOf!2128 (_1!10935 lt!683844)))))))

(declare-fun b!1767681 () Bool)

(assert (=> b!1767681 (= e!1131192 (= (rule!5513 (_1!10935 lt!683844)) (get!5938 (getRuleFromTag!527 thiss!24550 rules!3447 (tag!3855 (rule!5513 (_1!10935 lt!683844)))))))))

(assert (= (and d!539952 res!795937) b!1767680))

(assert (= (and b!1767680 res!795938) b!1767681))

(assert (=> d!539952 m!2185087))

(assert (=> d!539952 m!2185087))

(declare-fun m!2185623 () Bool)

(assert (=> d!539952 m!2185623))

(declare-fun m!2185625 () Bool)

(assert (=> d!539952 m!2185625))

(assert (=> d!539952 m!2185049))

(assert (=> b!1767680 m!2185087))

(declare-fun m!2185627 () Bool)

(assert (=> b!1767680 m!2185627))

(assert (=> b!1767680 m!2185087))

(assert (=> b!1767680 m!2185105))

(declare-fun m!2185629 () Bool)

(assert (=> b!1767680 m!2185629))

(assert (=> b!1767680 m!2185075))

(assert (=> b!1767680 m!2185105))

(assert (=> b!1767680 m!2185075))

(assert (=> b!1767681 m!2185087))

(assert (=> b!1767681 m!2185087))

(assert (=> b!1767681 m!2185627))

(assert (=> b!1767238 d!539952))

(declare-fun d!539964 () Bool)

(declare-fun isEmpty!12288 (Option!3981) Bool)

(assert (=> d!539964 (= (isDefined!3324 lt!683846) (not (isEmpty!12288 lt!683846)))))

(declare-fun bs!404449 () Bool)

(assert (= bs!404449 d!539964))

(declare-fun m!2185631 () Bool)

(assert (=> bs!404449 m!2185631))

(assert (=> b!1767238 d!539964))

(declare-fun b!1767721 () Bool)

(declare-fun e!1131219 () Option!3981)

(declare-fun e!1131217 () Option!3981)

(assert (=> b!1767721 (= e!1131219 e!1131217)))

(declare-fun c!287896 () Bool)

(assert (=> b!1767721 (= c!287896 (and ((_ is Cons!19461) rules!3447) (not (= (tag!3855 (h!24862 rules!3447)) (tag!3855 (rule!5513 (_1!10935 lt!683844)))))))))

(declare-fun b!1767722 () Bool)

(assert (=> b!1767722 (= e!1131217 None!3980)))

(declare-fun b!1767723 () Bool)

(declare-fun lt!684016 () Unit!33652)

(declare-fun lt!684017 () Unit!33652)

(assert (=> b!1767723 (= lt!684016 lt!684017)))

(assert (=> b!1767723 (rulesInvariant!2777 thiss!24550 (t!164912 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!199 (LexerInterface!3108 Rule!6758 List!19531) Unit!33652)

(assert (=> b!1767723 (= lt!684017 (lemmaInvariantOnRulesThenOnTail!199 thiss!24550 (h!24862 rules!3447) (t!164912 rules!3447)))))

(assert (=> b!1767723 (= e!1131217 (getRuleFromTag!527 thiss!24550 (t!164912 rules!3447) (tag!3855 (rule!5513 (_1!10935 lt!683844)))))))

(declare-fun d!539966 () Bool)

(declare-fun e!1131218 () Bool)

(assert (=> d!539966 e!1131218))

(declare-fun res!795956 () Bool)

(assert (=> d!539966 (=> res!795956 e!1131218)))

(declare-fun lt!684015 () Option!3981)

(assert (=> d!539966 (= res!795956 (isEmpty!12288 lt!684015))))

(assert (=> d!539966 (= lt!684015 e!1131219)))

(declare-fun c!287895 () Bool)

(assert (=> d!539966 (= c!287895 (and ((_ is Cons!19461) rules!3447) (= (tag!3855 (h!24862 rules!3447)) (tag!3855 (rule!5513 (_1!10935 lt!683844))))))))

(assert (=> d!539966 (rulesInvariant!2777 thiss!24550 rules!3447)))

(assert (=> d!539966 (= (getRuleFromTag!527 thiss!24550 rules!3447 (tag!3855 (rule!5513 (_1!10935 lt!683844)))) lt!684015)))

(declare-fun b!1767724 () Bool)

(declare-fun e!1131216 () Bool)

(assert (=> b!1767724 (= e!1131218 e!1131216)))

(declare-fun res!795957 () Bool)

(assert (=> b!1767724 (=> (not res!795957) (not e!1131216))))

(assert (=> b!1767724 (= res!795957 (contains!3509 rules!3447 (get!5938 lt!684015)))))

(declare-fun b!1767725 () Bool)

(assert (=> b!1767725 (= e!1131219 (Some!3980 (h!24862 rules!3447)))))

(declare-fun b!1767726 () Bool)

(assert (=> b!1767726 (= e!1131216 (= (tag!3855 (get!5938 lt!684015)) (tag!3855 (rule!5513 (_1!10935 lt!683844)))))))

(assert (= (and d!539966 c!287895) b!1767725))

(assert (= (and d!539966 (not c!287895)) b!1767721))

(assert (= (and b!1767721 c!287896) b!1767723))

(assert (= (and b!1767721 (not c!287896)) b!1767722))

(assert (= (and d!539966 (not res!795956)) b!1767724))

(assert (= (and b!1767724 res!795957) b!1767726))

(declare-fun m!2185675 () Bool)

(assert (=> b!1767723 m!2185675))

(declare-fun m!2185677 () Bool)

(assert (=> b!1767723 m!2185677))

(declare-fun m!2185679 () Bool)

(assert (=> b!1767723 m!2185679))

(declare-fun m!2185681 () Bool)

(assert (=> d!539966 m!2185681))

(assert (=> d!539966 m!2185049))

(declare-fun m!2185683 () Bool)

(assert (=> b!1767724 m!2185683))

(assert (=> b!1767724 m!2185683))

(declare-fun m!2185685 () Bool)

(assert (=> b!1767724 m!2185685))

(assert (=> b!1767726 m!2185683))

(assert (=> b!1767238 d!539966))

(declare-fun b!1767728 () Bool)

(declare-fun res!795958 () Bool)

(declare-fun e!1131221 () Bool)

(assert (=> b!1767728 (=> (not res!795958) (not e!1131221))))

(assert (=> b!1767728 (= res!795958 (= (head!4104 lt!683849) (head!4104 lt!683837)))))

(declare-fun d!539972 () Bool)

(declare-fun e!1131220 () Bool)

(assert (=> d!539972 e!1131220))

(declare-fun res!795959 () Bool)

(assert (=> d!539972 (=> res!795959 e!1131220)))

(declare-fun lt!684020 () Bool)

(assert (=> d!539972 (= res!795959 (not lt!684020))))

(declare-fun e!1131222 () Bool)

(assert (=> d!539972 (= lt!684020 e!1131222)))

(declare-fun res!795960 () Bool)

(assert (=> d!539972 (=> res!795960 e!1131222)))

(assert (=> d!539972 (= res!795960 ((_ is Nil!19460) lt!683849))))

(assert (=> d!539972 (= (isPrefix!1719 lt!683849 lt!683837) lt!684020)))

(declare-fun b!1767730 () Bool)

(assert (=> b!1767730 (= e!1131220 (>= (size!15457 lt!683837) (size!15457 lt!683849)))))

(declare-fun b!1767727 () Bool)

(assert (=> b!1767727 (= e!1131222 e!1131221)))

(declare-fun res!795961 () Bool)

(assert (=> b!1767727 (=> (not res!795961) (not e!1131221))))

(assert (=> b!1767727 (= res!795961 (not ((_ is Nil!19460) lt!683837)))))

(declare-fun b!1767729 () Bool)

(assert (=> b!1767729 (= e!1131221 (isPrefix!1719 (tail!2644 lt!683849) (tail!2644 lt!683837)))))

(assert (= (and d!539972 (not res!795960)) b!1767727))

(assert (= (and b!1767727 res!795961) b!1767728))

(assert (= (and b!1767728 res!795958) b!1767729))

(assert (= (and d!539972 (not res!795959)) b!1767730))

(assert (=> b!1767728 m!2185147))

(declare-fun m!2185687 () Bool)

(assert (=> b!1767728 m!2185687))

(assert (=> b!1767730 m!2185347))

(assert (=> b!1767730 m!2185197))

(assert (=> b!1767729 m!2185151))

(assert (=> b!1767729 m!2185349))

(assert (=> b!1767729 m!2185151))

(assert (=> b!1767729 m!2185349))

(declare-fun m!2185689 () Bool)

(assert (=> b!1767729 m!2185689))

(assert (=> b!1767238 d!539972))

(declare-fun b!1767732 () Bool)

(declare-fun e!1131224 () List!19530)

(assert (=> b!1767732 (= e!1131224 (Cons!19460 (h!24861 lt!683841) (++!5303 (t!164911 lt!683841) (_2!10935 lt!683844))))))

(declare-fun b!1767731 () Bool)

(assert (=> b!1767731 (= e!1131224 (_2!10935 lt!683844))))

(declare-fun d!539974 () Bool)

(declare-fun e!1131223 () Bool)

(assert (=> d!539974 e!1131223))

(declare-fun res!795962 () Bool)

(assert (=> d!539974 (=> (not res!795962) (not e!1131223))))

(declare-fun lt!684022 () List!19530)

(assert (=> d!539974 (= res!795962 (= (content!2817 lt!684022) ((_ map or) (content!2817 lt!683841) (content!2817 (_2!10935 lt!683844)))))))

(assert (=> d!539974 (= lt!684022 e!1131224)))

(declare-fun c!287897 () Bool)

(assert (=> d!539974 (= c!287897 ((_ is Nil!19460) lt!683841))))

(assert (=> d!539974 (= (++!5303 lt!683841 (_2!10935 lt!683844)) lt!684022)))

(declare-fun b!1767733 () Bool)

(declare-fun res!795963 () Bool)

(assert (=> b!1767733 (=> (not res!795963) (not e!1131223))))

(assert (=> b!1767733 (= res!795963 (= (size!15457 lt!684022) (+ (size!15457 lt!683841) (size!15457 (_2!10935 lt!683844)))))))

(declare-fun b!1767734 () Bool)

(assert (=> b!1767734 (= e!1131223 (or (not (= (_2!10935 lt!683844) Nil!19460)) (= lt!684022 lt!683841)))))

(assert (= (and d!539974 c!287897) b!1767731))

(assert (= (and d!539974 (not c!287897)) b!1767732))

(assert (= (and d!539974 res!795962) b!1767733))

(assert (= (and b!1767733 res!795963) b!1767734))

(declare-fun m!2185695 () Bool)

(assert (=> b!1767732 m!2185695))

(declare-fun m!2185697 () Bool)

(assert (=> d!539974 m!2185697))

(declare-fun m!2185699 () Bool)

(assert (=> d!539974 m!2185699))

(declare-fun m!2185701 () Bool)

(assert (=> d!539974 m!2185701))

(declare-fun m!2185703 () Bool)

(assert (=> b!1767733 m!2185703))

(assert (=> b!1767733 m!2185063))

(declare-fun m!2185705 () Bool)

(assert (=> b!1767733 m!2185705))

(assert (=> b!1767238 d!539974))

(declare-fun d!539978 () Bool)

(assert (=> d!539978 (= (get!5937 lt!683853) (v!25450 lt!683853))))

(assert (=> b!1767238 d!539978))

(declare-fun b!1767751 () Bool)

(declare-fun res!795973 () Bool)

(declare-fun e!1131234 () Bool)

(assert (=> b!1767751 (=> (not res!795973) (not e!1131234))))

(declare-fun lt!684098 () Token!6524)

(assert (=> b!1767751 (= res!795973 (matchR!2280 (regex!3479 (get!5938 (getRuleFromTag!527 thiss!24550 rules!3447 (tag!3855 (rule!5513 lt!684098))))) (list!7901 (charsOf!2128 lt!684098))))))

(declare-fun b!1767754 () Bool)

(declare-fun e!1131233 () Unit!33652)

(declare-fun Unit!33656 () Unit!33652)

(assert (=> b!1767754 (= e!1131233 Unit!33656)))

(declare-fun b!1767752 () Bool)

(assert (=> b!1767752 (= e!1131234 (= (rule!5513 lt!684098) (get!5938 (getRuleFromTag!527 thiss!24550 rules!3447 (tag!3855 (rule!5513 lt!684098))))))))

(declare-fun b!1767753 () Bool)

(declare-fun Unit!33657 () Unit!33652)

(assert (=> b!1767753 (= e!1131233 Unit!33657)))

(declare-fun lt!684105 () List!19530)

(assert (=> b!1767753 (= lt!684105 (++!5303 lt!683849 suffix!1421))))

(declare-fun lt!684106 () Unit!33652)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!328 (LexerInterface!3108 Rule!6758 List!19531 List!19530) Unit!33652)

(assert (=> b!1767753 (= lt!684106 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!328 thiss!24550 (rule!5513 lt!684098) rules!3447 lt!684105))))

(assert (=> b!1767753 (isEmpty!12286 (maxPrefixOneRule!1031 thiss!24550 (rule!5513 lt!684098) lt!684105))))

(declare-fun lt!684096 () Unit!33652)

(assert (=> b!1767753 (= lt!684096 lt!684106)))

(declare-fun lt!684100 () List!19530)

(assert (=> b!1767753 (= lt!684100 (list!7901 (charsOf!2128 lt!684098)))))

(declare-fun lt!684092 () Unit!33652)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!324 (LexerInterface!3108 Rule!6758 List!19530 List!19530) Unit!33652)

(assert (=> b!1767753 (= lt!684092 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!324 thiss!24550 (rule!5513 lt!684098) lt!684100 (++!5303 lt!683849 suffix!1421)))))

(assert (=> b!1767753 (not (matchR!2280 (regex!3479 (rule!5513 lt!684098)) lt!684100))))

(declare-fun lt!684103 () Unit!33652)

(assert (=> b!1767753 (= lt!684103 lt!684092)))

(assert (=> b!1767753 false))

(declare-fun d!539982 () Bool)

(assert (=> d!539982 (isDefined!3323 (maxPrefix!1662 thiss!24550 rules!3447 (++!5303 lt!683849 suffix!1421)))))

(declare-fun lt!684097 () Unit!33652)

(assert (=> d!539982 (= lt!684097 e!1131233)))

(declare-fun c!287902 () Bool)

(assert (=> d!539982 (= c!287902 (isEmpty!12286 (maxPrefix!1662 thiss!24550 rules!3447 (++!5303 lt!683849 suffix!1421))))))

(declare-fun lt!684108 () Unit!33652)

(declare-fun lt!684101 () Unit!33652)

(assert (=> d!539982 (= lt!684108 lt!684101)))

(assert (=> d!539982 e!1131234))

(declare-fun res!795972 () Bool)

(assert (=> d!539982 (=> (not res!795972) (not e!1131234))))

(assert (=> d!539982 (= res!795972 (isDefined!3324 (getRuleFromTag!527 thiss!24550 rules!3447 (tag!3855 (rule!5513 lt!684098)))))))

(assert (=> d!539982 (= lt!684101 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!527 thiss!24550 rules!3447 lt!683849 lt!684098))))

(declare-fun lt!684095 () Unit!33652)

(declare-fun lt!684099 () Unit!33652)

(assert (=> d!539982 (= lt!684095 lt!684099)))

(declare-fun lt!684094 () List!19530)

(assert (=> d!539982 (isPrefix!1719 lt!684094 (++!5303 lt!683849 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!320 (List!19530 List!19530 List!19530) Unit!33652)

(assert (=> d!539982 (= lt!684099 (lemmaPrefixStaysPrefixWhenAddingToSuffix!320 lt!684094 lt!683849 suffix!1421))))

(assert (=> d!539982 (= lt!684094 (list!7901 (charsOf!2128 lt!684098)))))

(declare-fun lt!684093 () Unit!33652)

(declare-fun lt!684107 () Unit!33652)

(assert (=> d!539982 (= lt!684093 lt!684107)))

(declare-fun lt!684102 () List!19530)

(declare-fun lt!684104 () List!19530)

(assert (=> d!539982 (isPrefix!1719 lt!684102 (++!5303 lt!684102 lt!684104))))

(assert (=> d!539982 (= lt!684107 (lemmaConcatTwoListThenFirstIsPrefix!1228 lt!684102 lt!684104))))

(assert (=> d!539982 (= lt!684104 (_2!10935 (get!5937 (maxPrefix!1662 thiss!24550 rules!3447 lt!683849))))))

(assert (=> d!539982 (= lt!684102 (list!7901 (charsOf!2128 lt!684098)))))

(declare-datatypes ((List!19534 0))(
  ( (Nil!19464) (Cons!19464 (h!24865 Token!6524) (t!164975 List!19534)) )
))
(declare-fun head!4105 (List!19534) Token!6524)

(declare-datatypes ((IArray!12953 0))(
  ( (IArray!12954 (innerList!6534 List!19534)) )
))
(declare-datatypes ((Conc!6474 0))(
  ( (Node!6474 (left!15583 Conc!6474) (right!15913 Conc!6474) (csize!13178 Int) (cheight!6685 Int)) (Leaf!9434 (xs!9350 IArray!12953) (csize!13179 Int)) (Empty!6474) )
))
(declare-datatypes ((BalanceConc!12892 0))(
  ( (BalanceConc!12893 (c!287930 Conc!6474)) )
))
(declare-fun list!7904 (BalanceConc!12892) List!19534)

(declare-datatypes ((tuple2!19070 0))(
  ( (tuple2!19071 (_1!10937 BalanceConc!12892) (_2!10937 BalanceConc!12890)) )
))
(declare-fun lex!1459 (LexerInterface!3108 List!19531 BalanceConc!12890) tuple2!19070)

(assert (=> d!539982 (= lt!684098 (head!4105 (list!7904 (_1!10937 (lex!1459 thiss!24550 rules!3447 (seqFromList!2448 lt!683849))))))))

(assert (=> d!539982 (not (isEmpty!12285 rules!3447))))

(assert (=> d!539982 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!630 thiss!24550 rules!3447 lt!683849 suffix!1421) lt!684097)))

(assert (= (and d!539982 res!795972) b!1767751))

(assert (= (and b!1767751 res!795973) b!1767752))

(assert (= (and d!539982 c!287902) b!1767753))

(assert (= (and d!539982 (not c!287902)) b!1767754))

(declare-fun m!2185711 () Bool)

(assert (=> b!1767751 m!2185711))

(declare-fun m!2185713 () Bool)

(assert (=> b!1767751 m!2185713))

(declare-fun m!2185715 () Bool)

(assert (=> b!1767751 m!2185715))

(declare-fun m!2185721 () Bool)

(assert (=> b!1767751 m!2185721))

(declare-fun m!2185724 () Bool)

(assert (=> b!1767751 m!2185724))

(assert (=> b!1767751 m!2185713))

(assert (=> b!1767751 m!2185711))

(assert (=> b!1767751 m!2185721))

(assert (=> b!1767752 m!2185713))

(assert (=> b!1767752 m!2185713))

(assert (=> b!1767752 m!2185715))

(assert (=> b!1767753 m!2185711))

(declare-fun m!2185737 () Bool)

(assert (=> b!1767753 m!2185737))

(declare-fun m!2185739 () Bool)

(assert (=> b!1767753 m!2185739))

(declare-fun m!2185743 () Bool)

(assert (=> b!1767753 m!2185743))

(assert (=> b!1767753 m!2185083))

(assert (=> b!1767753 m!2185083))

(declare-fun m!2185747 () Bool)

(assert (=> b!1767753 m!2185747))

(assert (=> b!1767753 m!2185711))

(assert (=> b!1767753 m!2185721))

(assert (=> b!1767753 m!2185739))

(declare-fun m!2185753 () Bool)

(assert (=> b!1767753 m!2185753))

(declare-fun m!2185755 () Bool)

(assert (=> d!539982 m!2185755))

(declare-fun m!2185759 () Bool)

(assert (=> d!539982 m!2185759))

(assert (=> d!539982 m!2185019))

(assert (=> d!539982 m!2185083))

(declare-fun m!2185763 () Bool)

(assert (=> d!539982 m!2185763))

(declare-fun m!2185769 () Bool)

(assert (=> d!539982 m!2185769))

(declare-fun m!2185773 () Bool)

(assert (=> d!539982 m!2185773))

(declare-fun m!2185775 () Bool)

(assert (=> d!539982 m!2185775))

(declare-fun m!2185779 () Bool)

(assert (=> d!539982 m!2185779))

(declare-fun m!2185781 () Bool)

(assert (=> d!539982 m!2185781))

(assert (=> d!539982 m!2185711))

(assert (=> d!539982 m!2185721))

(assert (=> d!539982 m!2185711))

(assert (=> d!539982 m!2185773))

(assert (=> d!539982 m!2185779))

(declare-fun m!2185787 () Bool)

(assert (=> d!539982 m!2185787))

(declare-fun m!2185789 () Bool)

(assert (=> d!539982 m!2185789))

(assert (=> d!539982 m!2185763))

(declare-fun m!2185793 () Bool)

(assert (=> d!539982 m!2185793))

(assert (=> d!539982 m!2185113))

(declare-fun m!2185797 () Bool)

(assert (=> d!539982 m!2185797))

(assert (=> d!539982 m!2185083))

(declare-fun m!2185801 () Bool)

(assert (=> d!539982 m!2185801))

(assert (=> d!539982 m!2185713))

(declare-fun m!2185803 () Bool)

(assert (=> d!539982 m!2185803))

(assert (=> d!539982 m!2185083))

(assert (=> d!539982 m!2185763))

(declare-fun m!2185807 () Bool)

(assert (=> d!539982 m!2185807))

(assert (=> d!539982 m!2185713))

(assert (=> d!539982 m!2185113))

(assert (=> d!539982 m!2185787))

(assert (=> b!1767238 d!539982))

(declare-fun b!1767760 () Bool)

(declare-fun res!795976 () Bool)

(declare-fun e!1131238 () Bool)

(assert (=> b!1767760 (=> (not res!795976) (not e!1131238))))

(assert (=> b!1767760 (= res!795976 (= (head!4104 lt!683841) (head!4104 lt!683837)))))

(declare-fun d!539988 () Bool)

(declare-fun e!1131237 () Bool)

(assert (=> d!539988 e!1131237))

(declare-fun res!795977 () Bool)

(assert (=> d!539988 (=> res!795977 e!1131237)))

(declare-fun lt!684126 () Bool)

(assert (=> d!539988 (= res!795977 (not lt!684126))))

(declare-fun e!1131239 () Bool)

(assert (=> d!539988 (= lt!684126 e!1131239)))

(declare-fun res!795978 () Bool)

(assert (=> d!539988 (=> res!795978 e!1131239)))

(assert (=> d!539988 (= res!795978 ((_ is Nil!19460) lt!683841))))

(assert (=> d!539988 (= (isPrefix!1719 lt!683841 lt!683837) lt!684126)))

(declare-fun b!1767762 () Bool)

(assert (=> b!1767762 (= e!1131237 (>= (size!15457 lt!683837) (size!15457 lt!683841)))))

(declare-fun b!1767759 () Bool)

(assert (=> b!1767759 (= e!1131239 e!1131238)))

(declare-fun res!795979 () Bool)

(assert (=> b!1767759 (=> (not res!795979) (not e!1131238))))

(assert (=> b!1767759 (= res!795979 (not ((_ is Nil!19460) lt!683837)))))

(declare-fun b!1767761 () Bool)

(assert (=> b!1767761 (= e!1131238 (isPrefix!1719 (tail!2644 lt!683841) (tail!2644 lt!683837)))))

(assert (= (and d!539988 (not res!795978)) b!1767759))

(assert (= (and b!1767759 res!795979) b!1767760))

(assert (= (and b!1767760 res!795976) b!1767761))

(assert (= (and d!539988 (not res!795977)) b!1767762))

(assert (=> b!1767760 m!2185207))

(assert (=> b!1767760 m!2185687))

(assert (=> b!1767762 m!2185347))

(assert (=> b!1767762 m!2185063))

(assert (=> b!1767761 m!2185211))

(assert (=> b!1767761 m!2185349))

(assert (=> b!1767761 m!2185211))

(assert (=> b!1767761 m!2185349))

(declare-fun m!2185813 () Bool)

(assert (=> b!1767761 m!2185813))

(assert (=> b!1767238 d!539988))

(declare-fun d!539994 () Bool)

(declare-fun e!1131242 () Bool)

(assert (=> d!539994 e!1131242))

(declare-fun res!795980 () Bool)

(assert (=> d!539994 (=> res!795980 e!1131242)))

(declare-fun lt!684129 () Option!3980)

(assert (=> d!539994 (= res!795980 (isEmpty!12286 lt!684129))))

(declare-fun e!1131241 () Option!3980)

(assert (=> d!539994 (= lt!684129 e!1131241)))

(declare-fun c!287904 () Bool)

(assert (=> d!539994 (= c!287904 (and ((_ is Cons!19461) rules!3447) ((_ is Nil!19461) (t!164912 rules!3447))))))

(declare-fun lt!684131 () Unit!33652)

(declare-fun lt!684130 () Unit!33652)

(assert (=> d!539994 (= lt!684131 lt!684130)))

(assert (=> d!539994 (isPrefix!1719 lt!683837 lt!683837)))

(assert (=> d!539994 (= lt!684130 (lemmaIsPrefixRefl!1137 lt!683837 lt!683837))))

(assert (=> d!539994 (rulesValidInductive!1175 thiss!24550 rules!3447)))

(assert (=> d!539994 (= (maxPrefix!1662 thiss!24550 rules!3447 lt!683837) lt!684129)))

(declare-fun b!1767763 () Bool)

(declare-fun res!795982 () Bool)

(declare-fun e!1131240 () Bool)

(assert (=> b!1767763 (=> (not res!795982) (not e!1131240))))

(assert (=> b!1767763 (= res!795982 (< (size!15457 (_2!10935 (get!5937 lt!684129))) (size!15457 lt!683837)))))

(declare-fun bm!110889 () Bool)

(declare-fun call!110894 () Option!3980)

(assert (=> bm!110889 (= call!110894 (maxPrefixOneRule!1031 thiss!24550 (h!24862 rules!3447) lt!683837))))

(declare-fun b!1767764 () Bool)

(assert (=> b!1767764 (= e!1131240 (contains!3509 rules!3447 (rule!5513 (_1!10935 (get!5937 lt!684129)))))))

(declare-fun b!1767765 () Bool)

(assert (=> b!1767765 (= e!1131242 e!1131240)))

(declare-fun res!795981 () Bool)

(assert (=> b!1767765 (=> (not res!795981) (not e!1131240))))

(assert (=> b!1767765 (= res!795981 (isDefined!3323 lt!684129))))

(declare-fun b!1767766 () Bool)

(declare-fun lt!684127 () Option!3980)

(declare-fun lt!684128 () Option!3980)

(assert (=> b!1767766 (= e!1131241 (ite (and ((_ is None!3979) lt!684127) ((_ is None!3979) lt!684128)) None!3979 (ite ((_ is None!3979) lt!684128) lt!684127 (ite ((_ is None!3979) lt!684127) lt!684128 (ite (>= (size!15456 (_1!10935 (v!25450 lt!684127))) (size!15456 (_1!10935 (v!25450 lt!684128)))) lt!684127 lt!684128)))))))

(assert (=> b!1767766 (= lt!684127 call!110894)))

(assert (=> b!1767766 (= lt!684128 (maxPrefix!1662 thiss!24550 (t!164912 rules!3447) lt!683837))))

(declare-fun b!1767767 () Bool)

(declare-fun res!795983 () Bool)

(assert (=> b!1767767 (=> (not res!795983) (not e!1131240))))

(assert (=> b!1767767 (= res!795983 (matchR!2280 (regex!3479 (rule!5513 (_1!10935 (get!5937 lt!684129)))) (list!7901 (charsOf!2128 (_1!10935 (get!5937 lt!684129))))))))

(declare-fun b!1767768 () Bool)

(assert (=> b!1767768 (= e!1131241 call!110894)))

(declare-fun b!1767769 () Bool)

(declare-fun res!795985 () Bool)

(assert (=> b!1767769 (=> (not res!795985) (not e!1131240))))

(assert (=> b!1767769 (= res!795985 (= (list!7901 (charsOf!2128 (_1!10935 (get!5937 lt!684129)))) (originalCharacters!4293 (_1!10935 (get!5937 lt!684129)))))))

(declare-fun b!1767770 () Bool)

(declare-fun res!795984 () Bool)

(assert (=> b!1767770 (=> (not res!795984) (not e!1131240))))

(assert (=> b!1767770 (= res!795984 (= (++!5303 (list!7901 (charsOf!2128 (_1!10935 (get!5937 lt!684129)))) (_2!10935 (get!5937 lt!684129))) lt!683837))))

(declare-fun b!1767771 () Bool)

(declare-fun res!795986 () Bool)

(assert (=> b!1767771 (=> (not res!795986) (not e!1131240))))

(assert (=> b!1767771 (= res!795986 (= (value!108824 (_1!10935 (get!5937 lt!684129))) (apply!5279 (transformation!3479 (rule!5513 (_1!10935 (get!5937 lt!684129)))) (seqFromList!2448 (originalCharacters!4293 (_1!10935 (get!5937 lt!684129)))))))))

(assert (= (and d!539994 c!287904) b!1767768))

(assert (= (and d!539994 (not c!287904)) b!1767766))

(assert (= (or b!1767768 b!1767766) bm!110889))

(assert (= (and d!539994 (not res!795980)) b!1767765))

(assert (= (and b!1767765 res!795981) b!1767769))

(assert (= (and b!1767769 res!795985) b!1767763))

(assert (= (and b!1767763 res!795982) b!1767770))

(assert (= (and b!1767770 res!795984) b!1767771))

(assert (= (and b!1767771 res!795986) b!1767767))

(assert (= (and b!1767767 res!795983) b!1767764))

(declare-fun m!2185815 () Bool)

(assert (=> b!1767765 m!2185815))

(declare-fun m!2185817 () Bool)

(assert (=> d!539994 m!2185817))

(declare-fun m!2185819 () Bool)

(assert (=> d!539994 m!2185819))

(declare-fun m!2185821 () Bool)

(assert (=> d!539994 m!2185821))

(assert (=> d!539994 m!2185241))

(declare-fun m!2185823 () Bool)

(assert (=> b!1767769 m!2185823))

(declare-fun m!2185825 () Bool)

(assert (=> b!1767769 m!2185825))

(assert (=> b!1767769 m!2185825))

(declare-fun m!2185827 () Bool)

(assert (=> b!1767769 m!2185827))

(assert (=> b!1767767 m!2185823))

(assert (=> b!1767767 m!2185825))

(assert (=> b!1767767 m!2185825))

(assert (=> b!1767767 m!2185827))

(assert (=> b!1767767 m!2185827))

(declare-fun m!2185829 () Bool)

(assert (=> b!1767767 m!2185829))

(assert (=> b!1767770 m!2185823))

(assert (=> b!1767770 m!2185825))

(assert (=> b!1767770 m!2185825))

(assert (=> b!1767770 m!2185827))

(assert (=> b!1767770 m!2185827))

(declare-fun m!2185831 () Bool)

(assert (=> b!1767770 m!2185831))

(assert (=> b!1767763 m!2185823))

(declare-fun m!2185833 () Bool)

(assert (=> b!1767763 m!2185833))

(assert (=> b!1767763 m!2185347))

(declare-fun m!2185835 () Bool)

(assert (=> b!1767766 m!2185835))

(assert (=> b!1767764 m!2185823))

(declare-fun m!2185837 () Bool)

(assert (=> b!1767764 m!2185837))

(assert (=> b!1767771 m!2185823))

(declare-fun m!2185839 () Bool)

(assert (=> b!1767771 m!2185839))

(assert (=> b!1767771 m!2185839))

(declare-fun m!2185841 () Bool)

(assert (=> b!1767771 m!2185841))

(declare-fun m!2185843 () Bool)

(assert (=> bm!110889 m!2185843))

(assert (=> b!1767238 d!539994))

(declare-fun b!1767780 () Bool)

(declare-fun e!1131255 () Bool)

(assert (=> b!1767780 (= e!1131255 (not (= (head!4104 (list!7901 (charsOf!2128 (_1!10935 lt!683844)))) (c!287797 (regex!3479 lt!683856)))))))

(declare-fun b!1767781 () Bool)

(declare-fun e!1131251 () Bool)

(declare-fun e!1131249 () Bool)

(assert (=> b!1767781 (= e!1131251 e!1131249)))

(declare-fun res!795995 () Bool)

(assert (=> b!1767781 (=> (not res!795995) (not e!1131249))))

(declare-fun lt!684134 () Bool)

(assert (=> b!1767781 (= res!795995 (not lt!684134))))

(declare-fun b!1767782 () Bool)

(declare-fun e!1131253 () Bool)

(assert (=> b!1767782 (= e!1131253 (not lt!684134))))

(declare-fun b!1767783 () Bool)

(declare-fun e!1131254 () Bool)

(assert (=> b!1767783 (= e!1131254 (matchR!2280 (derivativeStep!1239 (regex!3479 lt!683856) (head!4104 (list!7901 (charsOf!2128 (_1!10935 lt!683844))))) (tail!2644 (list!7901 (charsOf!2128 (_1!10935 lt!683844))))))))

(declare-fun b!1767784 () Bool)

(declare-fun res!795998 () Bool)

(assert (=> b!1767784 (=> res!795998 e!1131251)))

(assert (=> b!1767784 (= res!795998 (not ((_ is ElementMatch!4807) (regex!3479 lt!683856))))))

(assert (=> b!1767784 (= e!1131253 e!1131251)))

(declare-fun b!1767785 () Bool)

(assert (=> b!1767785 (= e!1131254 (nullable!1470 (regex!3479 lt!683856)))))

(declare-fun d!539996 () Bool)

(declare-fun e!1131252 () Bool)

(assert (=> d!539996 e!1131252))

(declare-fun c!287905 () Bool)

(assert (=> d!539996 (= c!287905 ((_ is EmptyExpr!4807) (regex!3479 lt!683856)))))

(assert (=> d!539996 (= lt!684134 e!1131254)))

(declare-fun c!287906 () Bool)

(assert (=> d!539996 (= c!287906 (isEmpty!12284 (list!7901 (charsOf!2128 (_1!10935 lt!683844)))))))

(assert (=> d!539996 (validRegex!1944 (regex!3479 lt!683856))))

(assert (=> d!539996 (= (matchR!2280 (regex!3479 lt!683856) (list!7901 (charsOf!2128 (_1!10935 lt!683844)))) lt!684134)))

(declare-fun b!1767786 () Bool)

(declare-fun res!795999 () Bool)

(assert (=> b!1767786 (=> res!795999 e!1131251)))

(declare-fun e!1131250 () Bool)

(assert (=> b!1767786 (= res!795999 e!1131250)))

(declare-fun res!796000 () Bool)

(assert (=> b!1767786 (=> (not res!796000) (not e!1131250))))

(assert (=> b!1767786 (= res!796000 lt!684134)))

(declare-fun b!1767787 () Bool)

(assert (=> b!1767787 (= e!1131250 (= (head!4104 (list!7901 (charsOf!2128 (_1!10935 lt!683844)))) (c!287797 (regex!3479 lt!683856))))))

(declare-fun b!1767788 () Bool)

(assert (=> b!1767788 (= e!1131249 e!1131255)))

(declare-fun res!796001 () Bool)

(assert (=> b!1767788 (=> res!796001 e!1131255)))

(declare-fun call!110895 () Bool)

(assert (=> b!1767788 (= res!796001 call!110895)))

(declare-fun b!1767789 () Bool)

(declare-fun res!796002 () Bool)

(assert (=> b!1767789 (=> (not res!796002) (not e!1131250))))

(assert (=> b!1767789 (= res!796002 (not call!110895))))

(declare-fun b!1767790 () Bool)

(assert (=> b!1767790 (= e!1131252 (= lt!684134 call!110895))))

(declare-fun b!1767791 () Bool)

(declare-fun res!795996 () Bool)

(assert (=> b!1767791 (=> (not res!795996) (not e!1131250))))

(assert (=> b!1767791 (= res!795996 (isEmpty!12284 (tail!2644 (list!7901 (charsOf!2128 (_1!10935 lt!683844))))))))

(declare-fun bm!110890 () Bool)

(assert (=> bm!110890 (= call!110895 (isEmpty!12284 (list!7901 (charsOf!2128 (_1!10935 lt!683844)))))))

(declare-fun b!1767792 () Bool)

(assert (=> b!1767792 (= e!1131252 e!1131253)))

(declare-fun c!287907 () Bool)

(assert (=> b!1767792 (= c!287907 ((_ is EmptyLang!4807) (regex!3479 lt!683856)))))

(declare-fun b!1767793 () Bool)

(declare-fun res!795997 () Bool)

(assert (=> b!1767793 (=> res!795997 e!1131255)))

(assert (=> b!1767793 (= res!795997 (not (isEmpty!12284 (tail!2644 (list!7901 (charsOf!2128 (_1!10935 lt!683844)))))))))

(assert (= (and d!539996 c!287906) b!1767785))

(assert (= (and d!539996 (not c!287906)) b!1767783))

(assert (= (and d!539996 c!287905) b!1767790))

(assert (= (and d!539996 (not c!287905)) b!1767792))

(assert (= (and b!1767792 c!287907) b!1767782))

(assert (= (and b!1767792 (not c!287907)) b!1767784))

(assert (= (and b!1767784 (not res!795998)) b!1767786))

(assert (= (and b!1767786 res!796000) b!1767789))

(assert (= (and b!1767789 res!796002) b!1767791))

(assert (= (and b!1767791 res!795996) b!1767787))

(assert (= (and b!1767786 (not res!795999)) b!1767781))

(assert (= (and b!1767781 res!795995) b!1767788))

(assert (= (and b!1767788 (not res!796001)) b!1767793))

(assert (= (and b!1767793 (not res!795997)) b!1767780))

(assert (= (or b!1767790 b!1767789 b!1767788) bm!110890))

(assert (=> b!1767783 m!2185105))

(declare-fun m!2185849 () Bool)

(assert (=> b!1767783 m!2185849))

(assert (=> b!1767783 m!2185849))

(declare-fun m!2185851 () Bool)

(assert (=> b!1767783 m!2185851))

(assert (=> b!1767783 m!2185105))

(declare-fun m!2185853 () Bool)

(assert (=> b!1767783 m!2185853))

(assert (=> b!1767783 m!2185851))

(assert (=> b!1767783 m!2185853))

(declare-fun m!2185855 () Bool)

(assert (=> b!1767783 m!2185855))

(assert (=> b!1767791 m!2185105))

(assert (=> b!1767791 m!2185853))

(assert (=> b!1767791 m!2185853))

(declare-fun m!2185857 () Bool)

(assert (=> b!1767791 m!2185857))

(assert (=> b!1767787 m!2185105))

(assert (=> b!1767787 m!2185849))

(assert (=> d!539996 m!2185105))

(declare-fun m!2185859 () Bool)

(assert (=> d!539996 m!2185859))

(declare-fun m!2185861 () Bool)

(assert (=> d!539996 m!2185861))

(assert (=> b!1767780 m!2185105))

(assert (=> b!1767780 m!2185849))

(declare-fun m!2185865 () Bool)

(assert (=> b!1767785 m!2185865))

(assert (=> b!1767793 m!2185105))

(assert (=> b!1767793 m!2185853))

(assert (=> b!1767793 m!2185853))

(assert (=> b!1767793 m!2185857))

(assert (=> bm!110890 m!2185105))

(assert (=> bm!110890 m!2185859))

(assert (=> b!1767247 d!539996))

(declare-fun d!540000 () Bool)

(assert (=> d!540000 (= (list!7901 (charsOf!2128 (_1!10935 lt!683844))) (list!7902 (c!287796 (charsOf!2128 (_1!10935 lt!683844)))))))

(declare-fun bs!404454 () Bool)

(assert (= bs!404454 d!540000))

(declare-fun m!2185873 () Bool)

(assert (=> bs!404454 m!2185873))

(assert (=> b!1767247 d!540000))

(assert (=> b!1767247 d!539944))

(declare-fun d!540004 () Bool)

(assert (=> d!540004 (= (get!5938 lt!683846) (v!25451 lt!683846))))

(assert (=> b!1767247 d!540004))

(declare-fun d!540008 () Bool)

(assert (=> d!540008 (= (isEmpty!12284 (_2!10935 lt!683836)) ((_ is Nil!19460) (_2!10935 lt!683836)))))

(assert (=> b!1767225 d!540008))

(declare-fun d!540010 () Bool)

(assert (=> d!540010 (= (inv!25289 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (value!108824 (_1!10935 lt!683844)))) (isBalanced!2023 (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (value!108824 (_1!10935 lt!683844))))))))

(declare-fun bs!404455 () Bool)

(assert (= bs!404455 d!540010))

(declare-fun m!2185877 () Bool)

(assert (=> bs!404455 m!2185877))

(assert (=> tb!106779 d!540010))

(declare-fun d!540012 () Bool)

(declare-fun res!796017 () Bool)

(declare-fun e!1131267 () Bool)

(assert (=> d!540012 (=> (not res!796017) (not e!1131267))))

(declare-fun rulesValid!1312 (LexerInterface!3108 List!19531) Bool)

(assert (=> d!540012 (= res!796017 (rulesValid!1312 thiss!24550 rules!3447))))

(assert (=> d!540012 (= (rulesInvariant!2777 thiss!24550 rules!3447) e!1131267)))

(declare-fun b!1767808 () Bool)

(declare-datatypes ((List!19536 0))(
  ( (Nil!19466) (Cons!19466 (h!24867 String!22177) (t!164977 List!19536)) )
))
(declare-fun noDuplicateTag!1312 (LexerInterface!3108 List!19531 List!19536) Bool)

(assert (=> b!1767808 (= e!1131267 (noDuplicateTag!1312 thiss!24550 rules!3447 Nil!19466))))

(assert (= (and d!540012 res!796017) b!1767808))

(declare-fun m!2185879 () Bool)

(assert (=> d!540012 m!2185879))

(declare-fun m!2185881 () Bool)

(assert (=> b!1767808 m!2185881))

(assert (=> b!1767246 d!540012))

(declare-fun b!1767810 () Bool)

(declare-fun e!1131269 () List!19530)

(assert (=> b!1767810 (= e!1131269 (Cons!19460 (h!24861 lt!683849) (++!5303 (t!164911 lt!683849) (getSuffix!886 lt!683837 lt!683849))))))

(declare-fun b!1767809 () Bool)

(assert (=> b!1767809 (= e!1131269 (getSuffix!886 lt!683837 lt!683849))))

(declare-fun d!540014 () Bool)

(declare-fun e!1131268 () Bool)

(assert (=> d!540014 e!1131268))

(declare-fun res!796018 () Bool)

(assert (=> d!540014 (=> (not res!796018) (not e!1131268))))

(declare-fun lt!684138 () List!19530)

(assert (=> d!540014 (= res!796018 (= (content!2817 lt!684138) ((_ map or) (content!2817 lt!683849) (content!2817 (getSuffix!886 lt!683837 lt!683849)))))))

(assert (=> d!540014 (= lt!684138 e!1131269)))

(declare-fun c!287908 () Bool)

(assert (=> d!540014 (= c!287908 ((_ is Nil!19460) lt!683849))))

(assert (=> d!540014 (= (++!5303 lt!683849 (getSuffix!886 lt!683837 lt!683849)) lt!684138)))

(declare-fun b!1767811 () Bool)

(declare-fun res!796019 () Bool)

(assert (=> b!1767811 (=> (not res!796019) (not e!1131268))))

(assert (=> b!1767811 (= res!796019 (= (size!15457 lt!684138) (+ (size!15457 lt!683849) (size!15457 (getSuffix!886 lt!683837 lt!683849)))))))

(declare-fun b!1767812 () Bool)

(assert (=> b!1767812 (= e!1131268 (or (not (= (getSuffix!886 lt!683837 lt!683849) Nil!19460)) (= lt!684138 lt!683849)))))

(assert (= (and d!540014 c!287908) b!1767809))

(assert (= (and d!540014 (not c!287908)) b!1767810))

(assert (= (and d!540014 res!796018) b!1767811))

(assert (= (and b!1767811 res!796019) b!1767812))

(assert (=> b!1767810 m!2185097))

(declare-fun m!2185883 () Bool)

(assert (=> b!1767810 m!2185883))

(declare-fun m!2185885 () Bool)

(assert (=> d!540014 m!2185885))

(assert (=> d!540014 m!2185191))

(assert (=> d!540014 m!2185097))

(declare-fun m!2185887 () Bool)

(assert (=> d!540014 m!2185887))

(declare-fun m!2185889 () Bool)

(assert (=> b!1767811 m!2185889))

(assert (=> b!1767811 m!2185197))

(assert (=> b!1767811 m!2185097))

(declare-fun m!2185891 () Bool)

(assert (=> b!1767811 m!2185891))

(assert (=> b!1767224 d!540014))

(declare-fun d!540016 () Bool)

(declare-fun lt!684139 () List!19530)

(assert (=> d!540016 (= (++!5303 lt!683849 lt!684139) lt!683837)))

(declare-fun e!1131270 () List!19530)

(assert (=> d!540016 (= lt!684139 e!1131270)))

(declare-fun c!287909 () Bool)

(assert (=> d!540016 (= c!287909 ((_ is Cons!19460) lt!683849))))

(assert (=> d!540016 (>= (size!15457 lt!683837) (size!15457 lt!683849))))

(assert (=> d!540016 (= (getSuffix!886 lt!683837 lt!683849) lt!684139)))

(declare-fun b!1767813 () Bool)

(assert (=> b!1767813 (= e!1131270 (getSuffix!886 (tail!2644 lt!683837) (t!164911 lt!683849)))))

(declare-fun b!1767814 () Bool)

(assert (=> b!1767814 (= e!1131270 lt!683837)))

(assert (= (and d!540016 c!287909) b!1767813))

(assert (= (and d!540016 (not c!287909)) b!1767814))

(declare-fun m!2185893 () Bool)

(assert (=> d!540016 m!2185893))

(assert (=> d!540016 m!2185347))

(assert (=> d!540016 m!2185197))

(assert (=> b!1767813 m!2185349))

(assert (=> b!1767813 m!2185349))

(declare-fun m!2185895 () Bool)

(assert (=> b!1767813 m!2185895))

(assert (=> b!1767224 d!540016))

(declare-fun b!1767815 () Bool)

(declare-fun e!1131277 () Bool)

(assert (=> b!1767815 (= e!1131277 (not (= (head!4104 lt!683841) (c!287797 lt!683843))))))

(declare-fun b!1767816 () Bool)

(declare-fun e!1131273 () Bool)

(declare-fun e!1131271 () Bool)

(assert (=> b!1767816 (= e!1131273 e!1131271)))

(declare-fun res!796020 () Bool)

(assert (=> b!1767816 (=> (not res!796020) (not e!1131271))))

(declare-fun lt!684140 () Bool)

(assert (=> b!1767816 (= res!796020 (not lt!684140))))

(declare-fun b!1767817 () Bool)

(declare-fun e!1131275 () Bool)

(assert (=> b!1767817 (= e!1131275 (not lt!684140))))

(declare-fun b!1767818 () Bool)

(declare-fun e!1131276 () Bool)

(assert (=> b!1767818 (= e!1131276 (matchR!2280 (derivativeStep!1239 lt!683843 (head!4104 lt!683841)) (tail!2644 lt!683841)))))

(declare-fun b!1767819 () Bool)

(declare-fun res!796023 () Bool)

(assert (=> b!1767819 (=> res!796023 e!1131273)))

(assert (=> b!1767819 (= res!796023 (not ((_ is ElementMatch!4807) lt!683843)))))

(assert (=> b!1767819 (= e!1131275 e!1131273)))

(declare-fun b!1767820 () Bool)

(assert (=> b!1767820 (= e!1131276 (nullable!1470 lt!683843))))

(declare-fun d!540018 () Bool)

(declare-fun e!1131274 () Bool)

(assert (=> d!540018 e!1131274))

(declare-fun c!287910 () Bool)

(assert (=> d!540018 (= c!287910 ((_ is EmptyExpr!4807) lt!683843))))

(assert (=> d!540018 (= lt!684140 e!1131276)))

(declare-fun c!287911 () Bool)

(assert (=> d!540018 (= c!287911 (isEmpty!12284 lt!683841))))

(assert (=> d!540018 (validRegex!1944 lt!683843)))

(assert (=> d!540018 (= (matchR!2280 lt!683843 lt!683841) lt!684140)))

(declare-fun b!1767821 () Bool)

(declare-fun res!796024 () Bool)

(assert (=> b!1767821 (=> res!796024 e!1131273)))

(declare-fun e!1131272 () Bool)

(assert (=> b!1767821 (= res!796024 e!1131272)))

(declare-fun res!796025 () Bool)

(assert (=> b!1767821 (=> (not res!796025) (not e!1131272))))

(assert (=> b!1767821 (= res!796025 lt!684140)))

(declare-fun b!1767822 () Bool)

(assert (=> b!1767822 (= e!1131272 (= (head!4104 lt!683841) (c!287797 lt!683843)))))

(declare-fun b!1767823 () Bool)

(assert (=> b!1767823 (= e!1131271 e!1131277)))

(declare-fun res!796026 () Bool)

(assert (=> b!1767823 (=> res!796026 e!1131277)))

(declare-fun call!110896 () Bool)

(assert (=> b!1767823 (= res!796026 call!110896)))

(declare-fun b!1767824 () Bool)

(declare-fun res!796027 () Bool)

(assert (=> b!1767824 (=> (not res!796027) (not e!1131272))))

(assert (=> b!1767824 (= res!796027 (not call!110896))))

(declare-fun b!1767825 () Bool)

(assert (=> b!1767825 (= e!1131274 (= lt!684140 call!110896))))

(declare-fun b!1767826 () Bool)

(declare-fun res!796021 () Bool)

(assert (=> b!1767826 (=> (not res!796021) (not e!1131272))))

(assert (=> b!1767826 (= res!796021 (isEmpty!12284 (tail!2644 lt!683841)))))

(declare-fun bm!110891 () Bool)

(assert (=> bm!110891 (= call!110896 (isEmpty!12284 lt!683841))))

(declare-fun b!1767827 () Bool)

(assert (=> b!1767827 (= e!1131274 e!1131275)))

(declare-fun c!287912 () Bool)

(assert (=> b!1767827 (= c!287912 ((_ is EmptyLang!4807) lt!683843))))

(declare-fun b!1767828 () Bool)

(declare-fun res!796022 () Bool)

(assert (=> b!1767828 (=> res!796022 e!1131277)))

(assert (=> b!1767828 (= res!796022 (not (isEmpty!12284 (tail!2644 lt!683841))))))

(assert (= (and d!540018 c!287911) b!1767820))

(assert (= (and d!540018 (not c!287911)) b!1767818))

(assert (= (and d!540018 c!287910) b!1767825))

(assert (= (and d!540018 (not c!287910)) b!1767827))

(assert (= (and b!1767827 c!287912) b!1767817))

(assert (= (and b!1767827 (not c!287912)) b!1767819))

(assert (= (and b!1767819 (not res!796023)) b!1767821))

(assert (= (and b!1767821 res!796025) b!1767824))

(assert (= (and b!1767824 res!796027) b!1767826))

(assert (= (and b!1767826 res!796021) b!1767822))

(assert (= (and b!1767821 (not res!796024)) b!1767816))

(assert (= (and b!1767816 res!796020) b!1767823))

(assert (= (and b!1767823 (not res!796026)) b!1767828))

(assert (= (and b!1767828 (not res!796022)) b!1767815))

(assert (= (or b!1767825 b!1767824 b!1767823) bm!110891))

(assert (=> b!1767818 m!2185207))

(assert (=> b!1767818 m!2185207))

(declare-fun m!2185897 () Bool)

(assert (=> b!1767818 m!2185897))

(assert (=> b!1767818 m!2185211))

(assert (=> b!1767818 m!2185897))

(assert (=> b!1767818 m!2185211))

(declare-fun m!2185899 () Bool)

(assert (=> b!1767818 m!2185899))

(assert (=> b!1767826 m!2185211))

(assert (=> b!1767826 m!2185211))

(assert (=> b!1767826 m!2185215))

(assert (=> b!1767822 m!2185207))

(assert (=> d!540018 m!2185217))

(assert (=> d!540018 m!2185309))

(assert (=> b!1767815 m!2185207))

(assert (=> b!1767820 m!2185311))

(assert (=> b!1767828 m!2185211))

(assert (=> b!1767828 m!2185211))

(assert (=> b!1767828 m!2185215))

(assert (=> bm!110891 m!2185217))

(assert (=> b!1767224 d!540018))

(declare-fun d!540020 () Bool)

(assert (=> d!540020 (matchR!2280 (rulesRegex!835 thiss!24550 rules!3447) (list!7901 (charsOf!2128 (_1!10935 lt!683844))))))

(declare-fun lt!684141 () Unit!33652)

(assert (=> d!540020 (= lt!684141 (choose!10977 thiss!24550 rules!3447 lt!683837 (_1!10935 lt!683844) (rule!5513 (_1!10935 lt!683844)) (_2!10935 lt!683844)))))

(assert (=> d!540020 (not (isEmpty!12285 rules!3447))))

(assert (=> d!540020 (= (lemmaMaxPrefixThenMatchesRulesRegex!186 thiss!24550 rules!3447 lt!683837 (_1!10935 lt!683844) (rule!5513 (_1!10935 lt!683844)) (_2!10935 lt!683844)) lt!684141)))

(declare-fun bs!404456 () Bool)

(assert (= bs!404456 d!540020))

(declare-fun m!2185901 () Bool)

(assert (=> bs!404456 m!2185901))

(assert (=> bs!404456 m!2185127))

(assert (=> bs!404456 m!2185105))

(declare-fun m!2185903 () Bool)

(assert (=> bs!404456 m!2185903))

(assert (=> bs!404456 m!2185075))

(assert (=> bs!404456 m!2185105))

(assert (=> bs!404456 m!2185019))

(assert (=> bs!404456 m!2185075))

(assert (=> bs!404456 m!2185127))

(assert (=> b!1767224 d!540020))

(declare-fun d!540022 () Bool)

(assert (=> d!540022 (= (isEmpty!12284 suffix!1421) ((_ is Nil!19460) suffix!1421))))

(assert (=> b!1767223 d!540022))

(declare-fun d!540024 () Bool)

(assert (=> d!540024 (= (size!15456 (_1!10935 lt!683844)) (size!15457 (originalCharacters!4293 (_1!10935 lt!683844))))))

(declare-fun Unit!33661 () Unit!33652)

(assert (=> d!540024 (= (lemmaCharactersSize!537 (_1!10935 lt!683844)) Unit!33661)))

(declare-fun bs!404457 () Bool)

(assert (= bs!404457 d!540024))

(declare-fun m!2185905 () Bool)

(assert (=> bs!404457 m!2185905))

(assert (=> b!1767244 d!540024))

(declare-fun d!540026 () Bool)

(assert (=> d!540026 (= (seqFromList!2448 (originalCharacters!4293 (_1!10935 lt!683844))) (fromListB!1120 (originalCharacters!4293 (_1!10935 lt!683844))))))

(declare-fun bs!404458 () Bool)

(assert (= bs!404458 d!540026))

(declare-fun m!2185907 () Bool)

(assert (=> bs!404458 m!2185907))

(assert (=> b!1767244 d!540026))

(declare-fun d!540028 () Bool)

(assert (=> d!540028 (= (apply!5279 (transformation!3479 (rule!5513 (_1!10935 lt!683844))) lt!683840) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840))))

(declare-fun b_lambda!57461 () Bool)

(assert (=> (not b_lambda!57461) (not d!540028)))

(assert (=> d!540028 t!164905))

(declare-fun b_and!134145 () Bool)

(assert (= b_and!134079 (and (=> t!164905 result!128476) b_and!134145)))

(assert (=> d!540028 t!164907))

(declare-fun b_and!134147 () Bool)

(assert (= b_and!134081 (and (=> t!164907 result!128480) b_and!134147)))

(assert (=> d!540028 t!164909))

(declare-fun b_and!134149 () Bool)

(assert (= b_and!134083 (and (=> t!164909 result!128482) b_and!134149)))

(assert (=> d!540028 m!2185027))

(assert (=> b!1767244 d!540028))

(declare-fun b!1767869 () Bool)

(declare-fun e!1131299 () Bool)

(assert (=> b!1767869 (= e!1131299 true)))

(declare-fun d!540030 () Bool)

(assert (=> d!540030 e!1131299))

(assert (= d!540030 b!1767869))

(declare-fun lambda!70344 () Int)

(declare-fun order!12407 () Int)

(declare-fun dynLambda!9430 (Int Int) Int)

(assert (=> b!1767869 (< (dynLambda!9424 order!12399 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) (dynLambda!9430 order!12407 lambda!70344))))

(assert (=> b!1767869 (< (dynLambda!9426 order!12403 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) (dynLambda!9430 order!12407 lambda!70344))))

(assert (=> d!540030 (= (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (seqFromList!2448 (originalCharacters!4293 (_1!10935 lt!683844)))))))

(declare-fun lt!684150 () Unit!33652)

(declare-fun Forall2of!132 (Int BalanceConc!12890 BalanceConc!12890) Unit!33652)

(assert (=> d!540030 (= lt!684150 (Forall2of!132 lambda!70344 lt!683840 (seqFromList!2448 (originalCharacters!4293 (_1!10935 lt!683844)))))))

(assert (=> d!540030 (= (list!7901 lt!683840) (list!7901 (seqFromList!2448 (originalCharacters!4293 (_1!10935 lt!683844)))))))

(assert (=> d!540030 (= (lemmaEqSameImage!390 (transformation!3479 (rule!5513 (_1!10935 lt!683844))) lt!683840 (seqFromList!2448 (originalCharacters!4293 (_1!10935 lt!683844)))) lt!684150)))

(declare-fun b_lambda!57463 () Bool)

(assert (=> (not b_lambda!57463) (not d!540030)))

(assert (=> d!540030 t!164905))

(declare-fun b_and!134151 () Bool)

(assert (= b_and!134145 (and (=> t!164905 result!128476) b_and!134151)))

(assert (=> d!540030 t!164907))

(declare-fun b_and!134153 () Bool)

(assert (= b_and!134147 (and (=> t!164907 result!128480) b_and!134153)))

(assert (=> d!540030 t!164909))

(declare-fun b_and!134155 () Bool)

(assert (= b_and!134149 (and (=> t!164909 result!128482) b_and!134155)))

(declare-fun b_lambda!57465 () Bool)

(assert (=> (not b_lambda!57465) (not d!540030)))

(declare-fun tb!106821 () Bool)

(declare-fun t!164938 () Bool)

(assert (=> (and b!1767236 (= (toValue!5002 (transformation!3479 rule!422)) (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) t!164938) tb!106821))

(declare-fun result!128508 () Bool)

(assert (=> tb!106821 (= result!128508 (inv!21 (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (seqFromList!2448 (originalCharacters!4293 (_1!10935 lt!683844))))))))

(declare-fun m!2185953 () Bool)

(assert (=> tb!106821 m!2185953))

(assert (=> d!540030 t!164938))

(declare-fun b_and!134157 () Bool)

(assert (= b_and!134151 (and (=> t!164938 result!128508) b_and!134157)))

(declare-fun tb!106823 () Bool)

(declare-fun t!164940 () Bool)

(assert (=> (and b!1767243 (= (toValue!5002 (transformation!3479 (rule!5513 token!523))) (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) t!164940) tb!106823))

(declare-fun result!128510 () Bool)

(assert (= result!128510 result!128508))

(assert (=> d!540030 t!164940))

(declare-fun b_and!134159 () Bool)

(assert (= b_and!134153 (and (=> t!164940 result!128510) b_and!134159)))

(declare-fun t!164942 () Bool)

(declare-fun tb!106825 () Bool)

(assert (=> (and b!1767240 (= (toValue!5002 (transformation!3479 (h!24862 rules!3447))) (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) t!164942) tb!106825))

(declare-fun result!128512 () Bool)

(assert (= result!128512 result!128508))

(assert (=> d!540030 t!164942))

(declare-fun b_and!134161 () Bool)

(assert (= b_and!134155 (and (=> t!164942 result!128512) b_and!134161)))

(assert (=> d!540030 m!2185043))

(declare-fun m!2185959 () Bool)

(assert (=> d!540030 m!2185959))

(assert (=> d!540030 m!2185043))

(declare-fun m!2185961 () Bool)

(assert (=> d!540030 m!2185961))

(assert (=> d!540030 m!2185043))

(declare-fun m!2185963 () Bool)

(assert (=> d!540030 m!2185963))

(assert (=> d!540030 m!2185027))

(assert (=> d!540030 m!2185089))

(assert (=> b!1767244 d!540030))

(declare-fun d!540052 () Bool)

(declare-fun lt!684154 () Int)

(assert (=> d!540052 (= lt!684154 (size!15457 (list!7901 lt!683840)))))

(assert (=> d!540052 (= lt!684154 (size!15460 (c!287796 lt!683840)))))

(assert (=> d!540052 (= (size!15458 lt!683840) lt!684154)))

(declare-fun bs!404460 () Bool)

(assert (= bs!404460 d!540052))

(assert (=> bs!404460 m!2185089))

(assert (=> bs!404460 m!2185089))

(declare-fun m!2185965 () Bool)

(assert (=> bs!404460 m!2185965))

(declare-fun m!2185967 () Bool)

(assert (=> bs!404460 m!2185967))

(assert (=> b!1767244 d!540052))

(declare-fun d!540054 () Bool)

(declare-fun lt!684157 () Bool)

(declare-fun content!2819 (List!19531) (InoxSet Rule!6758))

(assert (=> d!540054 (= lt!684157 (select (content!2819 rules!3447) rule!422))))

(declare-fun e!1131308 () Bool)

(assert (=> d!540054 (= lt!684157 e!1131308)))

(declare-fun res!796060 () Bool)

(assert (=> d!540054 (=> (not res!796060) (not e!1131308))))

(assert (=> d!540054 (= res!796060 ((_ is Cons!19461) rules!3447))))

(assert (=> d!540054 (= (contains!3509 rules!3447 rule!422) lt!684157)))

(declare-fun b!1767878 () Bool)

(declare-fun e!1131309 () Bool)

(assert (=> b!1767878 (= e!1131308 e!1131309)))

(declare-fun res!796061 () Bool)

(assert (=> b!1767878 (=> res!796061 e!1131309)))

(assert (=> b!1767878 (= res!796061 (= (h!24862 rules!3447) rule!422))))

(declare-fun b!1767879 () Bool)

(assert (=> b!1767879 (= e!1131309 (contains!3509 (t!164912 rules!3447) rule!422))))

(assert (= (and d!540054 res!796060) b!1767878))

(assert (= (and b!1767878 (not res!796061)) b!1767879))

(declare-fun m!2185969 () Bool)

(assert (=> d!540054 m!2185969))

(declare-fun m!2185971 () Bool)

(assert (=> d!540054 m!2185971))

(declare-fun m!2185973 () Bool)

(assert (=> b!1767879 m!2185973))

(assert (=> b!1767222 d!540054))

(declare-fun d!540056 () Bool)

(assert (=> d!540056 (= (inv!25281 (tag!3855 (rule!5513 token!523))) (= (mod (str.len (value!108823 (tag!3855 (rule!5513 token!523)))) 2) 0))))

(assert (=> b!1767221 d!540056))

(declare-fun d!540058 () Bool)

(declare-fun res!796062 () Bool)

(declare-fun e!1131310 () Bool)

(assert (=> d!540058 (=> (not res!796062) (not e!1131310))))

(assert (=> d!540058 (= res!796062 (semiInverseModEq!1385 (toChars!4861 (transformation!3479 (rule!5513 token!523))) (toValue!5002 (transformation!3479 (rule!5513 token!523)))))))

(assert (=> d!540058 (= (inv!25286 (transformation!3479 (rule!5513 token!523))) e!1131310)))

(declare-fun b!1767880 () Bool)

(assert (=> b!1767880 (= e!1131310 (equivClasses!1326 (toChars!4861 (transformation!3479 (rule!5513 token!523))) (toValue!5002 (transformation!3479 (rule!5513 token!523)))))))

(assert (= (and d!540058 res!796062) b!1767880))

(declare-fun m!2185975 () Bool)

(assert (=> d!540058 m!2185975))

(declare-fun m!2185977 () Bool)

(assert (=> b!1767880 m!2185977))

(assert (=> b!1767221 d!540058))

(declare-fun d!540060 () Bool)

(declare-fun c!287919 () Bool)

(assert (=> d!540060 (= c!287919 ((_ is Node!6473) (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (value!108824 (_1!10935 lt!683844))))))))

(declare-fun e!1131311 () Bool)

(assert (=> d!540060 (= (inv!25288 (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (value!108824 (_1!10935 lt!683844))))) e!1131311)))

(declare-fun b!1767881 () Bool)

(assert (=> b!1767881 (= e!1131311 (inv!25290 (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (value!108824 (_1!10935 lt!683844))))))))

(declare-fun b!1767882 () Bool)

(declare-fun e!1131312 () Bool)

(assert (=> b!1767882 (= e!1131311 e!1131312)))

(declare-fun res!796063 () Bool)

(assert (=> b!1767882 (= res!796063 (not ((_ is Leaf!9433) (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (value!108824 (_1!10935 lt!683844)))))))))

(assert (=> b!1767882 (=> res!796063 e!1131312)))

(declare-fun b!1767883 () Bool)

(assert (=> b!1767883 (= e!1131312 (inv!25291 (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (value!108824 (_1!10935 lt!683844))))))))

(assert (= (and d!540060 c!287919) b!1767881))

(assert (= (and d!540060 (not c!287919)) b!1767882))

(assert (= (and b!1767882 (not res!796063)) b!1767883))

(declare-fun m!2185979 () Bool)

(assert (=> b!1767881 m!2185979))

(declare-fun m!2185981 () Bool)

(assert (=> b!1767883 m!2185981))

(assert (=> b!1767265 d!540060))

(declare-fun b!1767888 () Bool)

(declare-fun e!1131315 () Bool)

(declare-fun tp!501559 () Bool)

(assert (=> b!1767888 (= e!1131315 (and tp_is_empty!7857 tp!501559))))

(assert (=> b!1767241 (= tp!501545 e!1131315)))

(assert (= (and b!1767241 ((_ is Cons!19460) (originalCharacters!4293 token!523))) b!1767888))

(declare-fun b!1767899 () Bool)

(declare-fun b_free!48923 () Bool)

(declare-fun b_next!49627 () Bool)

(assert (=> b!1767899 (= b_free!48923 (not b_next!49627))))

(declare-fun t!164944 () Bool)

(declare-fun tb!106827 () Bool)

(assert (=> (and b!1767899 (= (toValue!5002 (transformation!3479 (h!24862 (t!164912 rules!3447)))) (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) t!164944) tb!106827))

(declare-fun result!128518 () Bool)

(assert (= result!128518 result!128490))

(assert (=> d!539876 t!164944))

(declare-fun t!164946 () Bool)

(declare-fun tb!106829 () Bool)

(assert (=> (and b!1767899 (= (toValue!5002 (transformation!3479 (h!24862 (t!164912 rules!3447)))) (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) t!164946) tb!106829))

(declare-fun result!128520 () Bool)

(assert (= result!128520 result!128476))

(assert (=> d!540028 t!164946))

(assert (=> b!1767228 t!164946))

(declare-fun tb!106831 () Bool)

(declare-fun t!164948 () Bool)

(assert (=> (and b!1767899 (= (toValue!5002 (transformation!3479 (h!24862 (t!164912 rules!3447)))) (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) t!164948) tb!106831))

(declare-fun result!128522 () Bool)

(assert (= result!128522 result!128508))

(assert (=> d!540030 t!164948))

(assert (=> d!540030 t!164946))

(assert (=> d!539808 t!164946))

(declare-fun tp!501569 () Bool)

(declare-fun b_and!134163 () Bool)

(assert (=> b!1767899 (= tp!501569 (and (=> t!164948 result!128522) (=> t!164946 result!128520) (=> t!164944 result!128518) b_and!134163))))

(declare-fun b_free!48925 () Bool)

(declare-fun b_next!49629 () Bool)

(assert (=> b!1767899 (= b_free!48925 (not b_next!49629))))

(declare-fun t!164950 () Bool)

(declare-fun tb!106833 () Bool)

(assert (=> (and b!1767899 (= (toChars!4861 (transformation!3479 (h!24862 (t!164912 rules!3447)))) (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) t!164950) tb!106833))

(declare-fun result!128524 () Bool)

(assert (= result!128524 result!128462))

(assert (=> b!1767226 t!164950))

(declare-fun t!164952 () Bool)

(declare-fun tb!106835 () Bool)

(assert (=> (and b!1767899 (= (toChars!4861 (transformation!3479 (h!24862 (t!164912 rules!3447)))) (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844))))) t!164952) tb!106835))

(declare-fun result!128526 () Bool)

(assert (= result!128526 result!128470))

(assert (=> b!1767228 t!164952))

(assert (=> d!539944 t!164950))

(assert (=> d!539808 t!164952))

(declare-fun tb!106837 () Bool)

(declare-fun t!164954 () Bool)

(assert (=> (and b!1767899 (= (toChars!4861 (transformation!3479 (h!24862 (t!164912 rules!3447)))) (toChars!4861 (transformation!3479 (rule!5513 token!523)))) t!164954) tb!106837))

(declare-fun result!128528 () Bool)

(assert (= result!128528 result!128484))

(assert (=> b!1767642 t!164954))

(assert (=> d!539836 t!164954))

(declare-fun tp!501568 () Bool)

(declare-fun b_and!134165 () Bool)

(assert (=> b!1767899 (= tp!501568 (and (=> t!164950 result!128524) (=> t!164952 result!128526) (=> t!164954 result!128528) b_and!134165))))

(declare-fun e!1131325 () Bool)

(assert (=> b!1767899 (= e!1131325 (and tp!501569 tp!501568))))

(declare-fun tp!501571 () Bool)

(declare-fun b!1767898 () Bool)

(declare-fun e!1131327 () Bool)

(assert (=> b!1767898 (= e!1131327 (and tp!501571 (inv!25281 (tag!3855 (h!24862 (t!164912 rules!3447)))) (inv!25286 (transformation!3479 (h!24862 (t!164912 rules!3447)))) e!1131325))))

(declare-fun b!1767897 () Bool)

(declare-fun e!1131326 () Bool)

(declare-fun tp!501570 () Bool)

(assert (=> b!1767897 (= e!1131326 (and e!1131327 tp!501570))))

(assert (=> b!1767220 (= tp!501549 e!1131326)))

(assert (= b!1767898 b!1767899))

(assert (= b!1767897 b!1767898))

(assert (= (and b!1767220 ((_ is Cons!19461) (t!164912 rules!3447))) b!1767897))

(declare-fun m!2185983 () Bool)

(assert (=> b!1767898 m!2185983))

(declare-fun m!2185985 () Bool)

(assert (=> b!1767898 m!2185985))

(declare-fun b!1767912 () Bool)

(declare-fun e!1131330 () Bool)

(declare-fun tp!501583 () Bool)

(assert (=> b!1767912 (= e!1131330 tp!501583)))

(declare-fun b!1767910 () Bool)

(assert (=> b!1767910 (= e!1131330 tp_is_empty!7857)))

(assert (=> b!1767234 (= tp!501547 e!1131330)))

(declare-fun b!1767913 () Bool)

(declare-fun tp!501586 () Bool)

(declare-fun tp!501582 () Bool)

(assert (=> b!1767913 (= e!1131330 (and tp!501586 tp!501582))))

(declare-fun b!1767911 () Bool)

(declare-fun tp!501585 () Bool)

(declare-fun tp!501584 () Bool)

(assert (=> b!1767911 (= e!1131330 (and tp!501585 tp!501584))))

(assert (= (and b!1767234 ((_ is ElementMatch!4807) (regex!3479 rule!422))) b!1767910))

(assert (= (and b!1767234 ((_ is Concat!8377) (regex!3479 rule!422))) b!1767911))

(assert (= (and b!1767234 ((_ is Star!4807) (regex!3479 rule!422))) b!1767912))

(assert (= (and b!1767234 ((_ is Union!4807) (regex!3479 rule!422))) b!1767913))

(declare-fun b!1767916 () Bool)

(declare-fun e!1131331 () Bool)

(declare-fun tp!501588 () Bool)

(assert (=> b!1767916 (= e!1131331 tp!501588)))

(declare-fun b!1767914 () Bool)

(assert (=> b!1767914 (= e!1131331 tp_is_empty!7857)))

(assert (=> b!1767249 (= tp!501548 e!1131331)))

(declare-fun b!1767917 () Bool)

(declare-fun tp!501591 () Bool)

(declare-fun tp!501587 () Bool)

(assert (=> b!1767917 (= e!1131331 (and tp!501591 tp!501587))))

(declare-fun b!1767915 () Bool)

(declare-fun tp!501590 () Bool)

(declare-fun tp!501589 () Bool)

(assert (=> b!1767915 (= e!1131331 (and tp!501590 tp!501589))))

(assert (= (and b!1767249 ((_ is ElementMatch!4807) (regex!3479 (h!24862 rules!3447)))) b!1767914))

(assert (= (and b!1767249 ((_ is Concat!8377) (regex!3479 (h!24862 rules!3447)))) b!1767915))

(assert (= (and b!1767249 ((_ is Star!4807) (regex!3479 (h!24862 rules!3447)))) b!1767916))

(assert (= (and b!1767249 ((_ is Union!4807) (regex!3479 (h!24862 rules!3447)))) b!1767917))

(declare-fun tp!501599 () Bool)

(declare-fun tp!501600 () Bool)

(declare-fun b!1767926 () Bool)

(declare-fun e!1131337 () Bool)

(assert (=> b!1767926 (= e!1131337 (and (inv!25288 (left!15582 (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840))))) tp!501599 (inv!25288 (right!15912 (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840))))) tp!501600))))

(declare-fun b!1767928 () Bool)

(declare-fun e!1131336 () Bool)

(declare-fun tp!501598 () Bool)

(assert (=> b!1767928 (= e!1131336 tp!501598)))

(declare-fun b!1767927 () Bool)

(declare-fun inv!25294 (IArray!12951) Bool)

(assert (=> b!1767927 (= e!1131337 (and (inv!25294 (xs!9349 (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840))))) e!1131336))))

(assert (=> b!1767266 (= tp!501554 (and (inv!25288 (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840)))) e!1131337))))

(assert (= (and b!1767266 ((_ is Node!6473) (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840))))) b!1767926))

(assert (= b!1767927 b!1767928))

(assert (= (and b!1767266 ((_ is Leaf!9433) (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (dynLambda!9428 (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) lt!683840))))) b!1767927))

(declare-fun m!2185987 () Bool)

(assert (=> b!1767926 m!2185987))

(declare-fun m!2185989 () Bool)

(assert (=> b!1767926 m!2185989))

(declare-fun m!2185991 () Bool)

(assert (=> b!1767927 m!2185991))

(assert (=> b!1767266 m!2184995))

(declare-fun b!1767931 () Bool)

(declare-fun e!1131338 () Bool)

(declare-fun tp!501602 () Bool)

(assert (=> b!1767931 (= e!1131338 tp!501602)))

(declare-fun b!1767929 () Bool)

(assert (=> b!1767929 (= e!1131338 tp_is_empty!7857)))

(assert (=> b!1767221 (= tp!501541 e!1131338)))

(declare-fun b!1767932 () Bool)

(declare-fun tp!501605 () Bool)

(declare-fun tp!501601 () Bool)

(assert (=> b!1767932 (= e!1131338 (and tp!501605 tp!501601))))

(declare-fun b!1767930 () Bool)

(declare-fun tp!501604 () Bool)

(declare-fun tp!501603 () Bool)

(assert (=> b!1767930 (= e!1131338 (and tp!501604 tp!501603))))

(assert (= (and b!1767221 ((_ is ElementMatch!4807) (regex!3479 (rule!5513 token!523)))) b!1767929))

(assert (= (and b!1767221 ((_ is Concat!8377) (regex!3479 (rule!5513 token!523)))) b!1767930))

(assert (= (and b!1767221 ((_ is Star!4807) (regex!3479 (rule!5513 token!523)))) b!1767931))

(assert (= (and b!1767221 ((_ is Union!4807) (regex!3479 (rule!5513 token!523)))) b!1767932))

(declare-fun e!1131340 () Bool)

(declare-fun tp!501607 () Bool)

(declare-fun b!1767933 () Bool)

(declare-fun tp!501608 () Bool)

(assert (=> b!1767933 (= e!1131340 (and (inv!25288 (left!15582 (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (value!108824 (_1!10935 lt!683844)))))) tp!501607 (inv!25288 (right!15912 (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (value!108824 (_1!10935 lt!683844)))))) tp!501608))))

(declare-fun b!1767935 () Bool)

(declare-fun e!1131339 () Bool)

(declare-fun tp!501606 () Bool)

(assert (=> b!1767935 (= e!1131339 tp!501606)))

(declare-fun b!1767934 () Bool)

(assert (=> b!1767934 (= e!1131340 (and (inv!25294 (xs!9349 (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (value!108824 (_1!10935 lt!683844)))))) e!1131339))))

(assert (=> b!1767265 (= tp!501553 (and (inv!25288 (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (value!108824 (_1!10935 lt!683844))))) e!1131340))))

(assert (= (and b!1767265 ((_ is Node!6473) (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (value!108824 (_1!10935 lt!683844)))))) b!1767933))

(assert (= b!1767934 b!1767935))

(assert (= (and b!1767265 ((_ is Leaf!9433) (c!287796 (dynLambda!9427 (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))) (value!108824 (_1!10935 lt!683844)))))) b!1767934))

(declare-fun m!2185993 () Bool)

(assert (=> b!1767933 m!2185993))

(declare-fun m!2185995 () Bool)

(assert (=> b!1767933 m!2185995))

(declare-fun m!2185997 () Bool)

(assert (=> b!1767934 m!2185997))

(assert (=> b!1767265 m!2184991))

(declare-fun b!1767936 () Bool)

(declare-fun e!1131341 () Bool)

(declare-fun tp!501609 () Bool)

(assert (=> b!1767936 (= e!1131341 (and tp_is_empty!7857 tp!501609))))

(assert (=> b!1767237 (= tp!501542 e!1131341)))

(assert (= (and b!1767237 ((_ is Cons!19460) (t!164911 suffix!1421))) b!1767936))

(declare-fun b_lambda!57467 () Bool)

(assert (= b_lambda!57427 (or (and b!1767236 b_free!48913 (= (toChars!4861 (transformation!3479 rule!422)) (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))))) (and b!1767243 b_free!48917 (= (toChars!4861 (transformation!3479 (rule!5513 token!523))) (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))))) (and b!1767240 b_free!48921 (= (toChars!4861 (transformation!3479 (h!24862 rules!3447))) (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))))) (and b!1767899 b_free!48925 (= (toChars!4861 (transformation!3479 (h!24862 (t!164912 rules!3447)))) (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))))) b_lambda!57467)))

(declare-fun b_lambda!57469 () Bool)

(assert (= b_lambda!57437 (or (and b!1767236 b_free!48913 (= (toChars!4861 (transformation!3479 rule!422)) (toChars!4861 (transformation!3479 (rule!5513 token!523))))) (and b!1767243 b_free!48917) (and b!1767240 b_free!48921 (= (toChars!4861 (transformation!3479 (h!24862 rules!3447))) (toChars!4861 (transformation!3479 (rule!5513 token!523))))) (and b!1767899 b_free!48925 (= (toChars!4861 (transformation!3479 (h!24862 (t!164912 rules!3447)))) (toChars!4861 (transformation!3479 (rule!5513 token!523))))) b_lambda!57469)))

(declare-fun b_lambda!57471 () Bool)

(assert (= b_lambda!57453 (or (and b!1767236 b_free!48913 (= (toChars!4861 (transformation!3479 rule!422)) (toChars!4861 (transformation!3479 (rule!5513 token!523))))) (and b!1767243 b_free!48917) (and b!1767240 b_free!48921 (= (toChars!4861 (transformation!3479 (h!24862 rules!3447))) (toChars!4861 (transformation!3479 (rule!5513 token!523))))) (and b!1767899 b_free!48925 (= (toChars!4861 (transformation!3479 (h!24862 (t!164912 rules!3447)))) (toChars!4861 (transformation!3479 (rule!5513 token!523))))) b_lambda!57471)))

(declare-fun b_lambda!57473 () Bool)

(assert (= b_lambda!57431 (or (and b!1767236 b_free!48911 (= (toValue!5002 (transformation!3479 rule!422)) (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))))) (and b!1767243 b_free!48915 (= (toValue!5002 (transformation!3479 (rule!5513 token!523))) (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))))) (and b!1767240 b_free!48919 (= (toValue!5002 (transformation!3479 (h!24862 rules!3447))) (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))))) (and b!1767899 b_free!48923 (= (toValue!5002 (transformation!3479 (h!24862 (t!164912 rules!3447)))) (toValue!5002 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))))) b_lambda!57473)))

(declare-fun b_lambda!57475 () Bool)

(assert (= b_lambda!57429 (or (and b!1767236 b_free!48913 (= (toChars!4861 (transformation!3479 rule!422)) (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))))) (and b!1767243 b_free!48917 (= (toChars!4861 (transformation!3479 (rule!5513 token!523))) (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))))) (and b!1767240 b_free!48921 (= (toChars!4861 (transformation!3479 (h!24862 rules!3447))) (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))))) (and b!1767899 b_free!48925 (= (toChars!4861 (transformation!3479 (h!24862 (t!164912 rules!3447)))) (toChars!4861 (transformation!3479 (rule!5513 (_1!10935 lt!683844)))))) b_lambda!57475)))

(check-sat (not b!1767668) (not b_next!49629) (not b!1767353) (not d!540026) (not d!539932) (not d!539814) (not b_next!49627) (not b!1767724) (not b!1767667) (not b!1767769) (not b!1767762) (not b_next!49619) (not bm!110874) (not b!1767349) (not d!539844) (not b!1767726) (not b!1767407) (not b!1767818) (not b!1767780) (not b!1767761) (not b!1767606) (not b!1767680) (not b!1767613) (not b_lambda!57435) (not b!1767437) (not b!1767933) (not b!1767880) (not b!1767443) (not d!539994) (not d!539828) (not b!1767935) (not b!1767265) (not b_lambda!57439) (not b!1767440) (not d!539812) (not b_lambda!57461) (not b!1767764) (not b!1767752) (not b!1767451) (not b!1767783) (not b_lambda!57475) (not d!539964) b_and!134139 (not bm!110875) (not b!1767912) (not b!1767915) (not b!1767614) (not b!1767487) (not b!1767767) (not d!539874) (not b!1767934) (not b!1767828) (not b!1767408) (not b!1767815) (not d!539804) (not b!1767643) (not b!1767897) (not d!539870) (not b!1767346) (not b!1767359) (not d!539794) (not b_lambda!57471) (not b_next!49625) (not b_lambda!57469) (not b!1767642) (not b!1767763) (not b_next!49623) (not b!1767660) (not d!539942) (not b!1767729) tp_is_empty!7857 (not d!540030) (not b!1767415) (not d!539944) (not d!539820) (not b!1767313) (not b!1767785) (not b!1767883) (not b!1767931) b_and!134163 (not d!539996) (not d!539982) (not b!1767733) (not b!1767753) (not d!539792) (not d!539934) (not b!1767632) (not tb!106797) (not d!539808) (not b!1767305) (not b!1767932) (not b_next!49615) (not b!1767488) (not b!1767333) (not b!1767322) (not b!1767343) (not b!1767634) (not b!1767495) (not d!540020) (not b!1767410) (not b!1767681) (not d!539852) (not b_lambda!57463) (not b!1767659) (not b!1767439) (not b!1767751) (not b_lambda!57473) (not b!1767730) (not d!540014) (not d!539806) (not b!1767502) (not b!1767612) (not d!539818) (not b!1767791) (not d!539836) (not b!1767881) (not b!1767898) (not d!539802) (not d!539826) (not b!1767344) (not b!1767811) b_and!134161 (not b_next!49617) (not b!1767916) (not d!539834) (not b!1767430) (not d!539796) (not b!1767661) (not b!1767765) (not b!1767913) (not b!1767360) (not tb!106821) (not b!1767445) (not b!1767822) (not d!540024) (not b_lambda!57459) (not d!540010) (not b!1767351) (not b!1767911) (not b!1767409) (not b!1767300) (not d!540000) (not tb!106803) b_and!134157 (not b_lambda!57465) (not b!1767793) (not b!1767318) (not d!539952) (not bm!110878) (not b!1767611) (not b!1767607) (not b!1767271) (not b!1767760) (not b!1767808) (not d!539928) (not b!1767332) (not d!540012) (not b_lambda!57433) (not b!1767311) (not d!539850) (not d!539798) (not b!1767411) (not d!540058) (not b!1767307) (not b!1767357) (not d!540018) (not d!539790) (not b!1767879) b_and!134165 (not d!539824) (not b_next!49621) (not d!540016) (not b!1767826) (not d!539880) (not b!1767723) (not b!1767888) (not b!1767813) (not b!1767303) (not b!1767927) (not b!1767820) (not b!1767766) (not b!1767917) (not bm!110889) (not b!1767414) (not b!1767732) (not bm!110891) (not bm!110882) (not b!1767489) (not b!1767787) (not b!1767936) (not b!1767609) b_and!134159 b_and!134143 (not d!540052) (not d!539872) (not d!539974) b_and!134141 (not b!1767453) (not b!1767447) (not b!1767266) (not b!1767810) (not b!1767928) (not b!1767771) (not d!540054) (not bm!110890) (not b!1767930) (not d!539950) (not b!1767633) (not d!539966) (not b!1767926) (not b!1767610) (not b!1767413) (not d!539940) (not b!1767770) (not b!1767728) (not b_lambda!57467))
(check-sat (not b_next!49619) b_and!134139 (not b_next!49625) (not b_next!49623) b_and!134163 (not b_next!49615) b_and!134157 b_and!134165 (not b_next!49621) b_and!134141 (not b_next!49629) (not b_next!49627) b_and!134161 (not b_next!49617) b_and!134159 b_and!134143)

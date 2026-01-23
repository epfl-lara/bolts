; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127686 () Bool)

(assert start!127686)

(declare-fun b!1401227 () Bool)

(declare-fun b_free!34139 () Bool)

(declare-fun b_next!34843 () Bool)

(assert (=> b!1401227 (= b_free!34139 (not b_next!34843))))

(declare-fun tp!398716 () Bool)

(declare-fun b_and!93819 () Bool)

(assert (=> b!1401227 (= tp!398716 b_and!93819)))

(declare-fun b_free!34141 () Bool)

(declare-fun b_next!34845 () Bool)

(assert (=> b!1401227 (= b_free!34141 (not b_next!34845))))

(declare-fun tp!398715 () Bool)

(declare-fun b_and!93821 () Bool)

(assert (=> b!1401227 (= tp!398715 b_and!93821)))

(declare-fun b!1401213 () Bool)

(declare-fun b_free!34143 () Bool)

(declare-fun b_next!34847 () Bool)

(assert (=> b!1401213 (= b_free!34143 (not b_next!34847))))

(declare-fun tp!398712 () Bool)

(declare-fun b_and!93823 () Bool)

(assert (=> b!1401213 (= tp!398712 b_and!93823)))

(declare-fun b_free!34145 () Bool)

(declare-fun b_next!34849 () Bool)

(assert (=> b!1401213 (= b_free!34145 (not b_next!34849))))

(declare-fun tp!398718 () Bool)

(declare-fun b_and!93825 () Bool)

(assert (=> b!1401213 (= tp!398718 b_and!93825)))

(declare-fun b!1401223 () Bool)

(declare-fun b_free!34147 () Bool)

(declare-fun b_next!34851 () Bool)

(assert (=> b!1401223 (= b_free!34147 (not b_next!34851))))

(declare-fun tp!398720 () Bool)

(declare-fun b_and!93827 () Bool)

(assert (=> b!1401223 (= tp!398720 b_and!93827)))

(declare-fun b_free!34149 () Bool)

(declare-fun b_next!34853 () Bool)

(assert (=> b!1401223 (= b_free!34149 (not b_next!34853))))

(declare-fun tp!398713 () Bool)

(declare-fun b_and!93829 () Bool)

(assert (=> b!1401223 (= tp!398713 b_and!93829)))

(declare-fun b!1401188 () Bool)

(assert (=> b!1401188 true))

(assert (=> b!1401188 true))

(declare-fun b!1401185 () Bool)

(assert (=> b!1401185 true))

(declare-fun b!1401210 () Bool)

(assert (=> b!1401210 true))

(declare-fun bs!338228 () Bool)

(declare-fun b!1401208 () Bool)

(assert (= bs!338228 (and b!1401208 b!1401210)))

(declare-fun lambda!61385 () Int)

(declare-fun lambda!61384 () Int)

(assert (=> bs!338228 (not (= lambda!61385 lambda!61384))))

(assert (=> b!1401208 true))

(declare-fun b!1401181 () Bool)

(declare-fun res!633678 () Bool)

(declare-fun e!894617 () Bool)

(assert (=> b!1401181 (=> (not res!633678) (not e!894617))))

(declare-datatypes ((List!14306 0))(
  ( (Nil!14240) (Cons!14240 (h!19641 (_ BitVec 16)) (t!122867 List!14306)) )
))
(declare-datatypes ((TokenValue!2557 0))(
  ( (FloatLiteralValue!5114 (text!18344 List!14306)) (TokenValueExt!2556 (__x!8943 Int)) (Broken!12785 (value!79916 List!14306)) (Object!2622) (End!2557) (Def!2557) (Underscore!2557) (Match!2557) (Else!2557) (Error!2557) (Case!2557) (If!2557) (Extends!2557) (Abstract!2557) (Class!2557) (Val!2557) (DelimiterValue!5114 (del!2617 List!14306)) (KeywordValue!2563 (value!79917 List!14306)) (CommentValue!5114 (value!79918 List!14306)) (WhitespaceValue!5114 (value!79919 List!14306)) (IndentationValue!2557 (value!79920 List!14306)) (String!17020) (Int32!2557) (Broken!12786 (value!79921 List!14306)) (Boolean!2558) (Unit!20568) (OperatorValue!2560 (op!2617 List!14306)) (IdentifierValue!5114 (value!79922 List!14306)) (IdentifierValue!5115 (value!79923 List!14306)) (WhitespaceValue!5115 (value!79924 List!14306)) (True!5114) (False!5114) (Broken!12787 (value!79925 List!14306)) (Broken!12788 (value!79926 List!14306)) (True!5115) (RightBrace!2557) (RightBracket!2557) (Colon!2557) (Null!2557) (Comma!2557) (LeftBracket!2557) (False!5115) (LeftBrace!2557) (ImaginaryLiteralValue!2557 (text!18345 List!14306)) (StringLiteralValue!7671 (value!79927 List!14306)) (EOFValue!2557 (value!79928 List!14306)) (IdentValue!2557 (value!79929 List!14306)) (DelimiterValue!5115 (value!79930 List!14306)) (DedentValue!2557 (value!79931 List!14306)) (NewLineValue!2557 (value!79932 List!14306)) (IntegerValue!7671 (value!79933 (_ BitVec 32)) (text!18346 List!14306)) (IntegerValue!7672 (value!79934 Int) (text!18347 List!14306)) (Times!2557) (Or!2557) (Equal!2557) (Minus!2557) (Broken!12789 (value!79935 List!14306)) (And!2557) (Div!2557) (LessEqual!2557) (Mod!2557) (Concat!6338) (Not!2557) (Plus!2557) (SpaceValue!2557 (value!79936 List!14306)) (IntegerValue!7673 (value!79937 Int) (text!18348 List!14306)) (StringLiteralValue!7672 (text!18349 List!14306)) (FloatLiteralValue!5115 (text!18350 List!14306)) (BytesLiteralValue!2557 (value!79938 List!14306)) (CommentValue!5115 (value!79939 List!14306)) (StringLiteralValue!7673 (value!79940 List!14306)) (ErrorTokenValue!2557 (msg!2618 List!14306)) )
))
(declare-datatypes ((C!7852 0))(
  ( (C!7853 (val!4486 Int)) )
))
(declare-datatypes ((List!14307 0))(
  ( (Nil!14241) (Cons!14241 (h!19642 C!7852) (t!122868 List!14307)) )
))
(declare-datatypes ((IArray!9393 0))(
  ( (IArray!9394 (innerList!4754 List!14307)) )
))
(declare-datatypes ((Conc!4694 0))(
  ( (Node!4694 (left!12161 Conc!4694) (right!12491 Conc!4694) (csize!9618 Int) (cheight!4905 Int)) (Leaf!7124 (xs!7421 IArray!9393) (csize!9619 Int)) (Empty!4694) )
))
(declare-datatypes ((BalanceConc!9328 0))(
  ( (BalanceConc!9329 (c!230522 Conc!4694)) )
))
(declare-datatypes ((String!17021 0))(
  ( (String!17022 (value!79941 String)) )
))
(declare-datatypes ((Regex!3781 0))(
  ( (ElementMatch!3781 (c!230523 C!7852)) (Concat!6339 (regOne!8074 Regex!3781) (regTwo!8074 Regex!3781)) (EmptyExpr!3781) (Star!3781 (reg!4110 Regex!3781)) (EmptyLang!3781) (Union!3781 (regOne!8075 Regex!3781) (regTwo!8075 Regex!3781)) )
))
(declare-datatypes ((TokenValueInjection!4774 0))(
  ( (TokenValueInjection!4775 (toValue!3758 Int) (toChars!3617 Int)) )
))
(declare-datatypes ((Rule!4734 0))(
  ( (Rule!4735 (regex!2467 Regex!3781) (tag!2729 String!17021) (isSeparator!2467 Bool) (transformation!2467 TokenValueInjection!4774)) )
))
(declare-datatypes ((Token!4596 0))(
  ( (Token!4597 (value!79942 TokenValue!2557) (rule!4230 Rule!4734) (size!11717 Int) (originalCharacters!3329 List!14307)) )
))
(declare-fun t1!34 () Token!4596)

(declare-datatypes ((LexerInterface!2162 0))(
  ( (LexerInterfaceExt!2159 (__x!8944 Int)) (Lexer!2160) )
))
(declare-fun thiss!19762 () LexerInterface!2162)

(declare-datatypes ((List!14308 0))(
  ( (Nil!14242) (Cons!14242 (h!19643 Rule!4734) (t!122869 List!14308)) )
))
(declare-fun rules!2550 () List!14308)

(declare-fun t2!34 () Token!4596)

(declare-fun separableTokensPredicate!445 (LexerInterface!2162 Token!4596 Token!4596 List!14308) Bool)

(assert (=> b!1401181 (= res!633678 (not (separableTokensPredicate!445 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1401182 () Bool)

(declare-fun res!633690 () Bool)

(declare-fun e!894645 () Bool)

(assert (=> b!1401182 (=> (not res!633690) (not e!894645))))

(declare-fun rulesInvariant!2032 (LexerInterface!2162 List!14308) Bool)

(assert (=> b!1401182 (= res!633690 (rulesInvariant!2032 thiss!19762 rules!2550))))

(declare-fun b!1401183 () Bool)

(declare-fun res!633695 () Bool)

(declare-fun e!894630 () Bool)

(assert (=> b!1401183 (=> res!633695 e!894630)))

(declare-datatypes ((List!14309 0))(
  ( (Nil!14243) (Cons!14243 (h!19644 Token!4596) (t!122870 List!14309)) )
))
(declare-fun lt!467163 () List!14309)

(declare-fun lt!467187 () BalanceConc!9328)

(declare-datatypes ((tuple2!13862 0))(
  ( (tuple2!13863 (_1!7817 List!14309) (_2!7817 List!14307)) )
))
(declare-fun lexList!676 (LexerInterface!2162 List!14308 List!14307) tuple2!13862)

(declare-fun list!5553 (BalanceConc!9328) List!14307)

(assert (=> b!1401183 (= res!633695 (not (= (lexList!676 thiss!19762 rules!2550 (list!5553 lt!467187)) (tuple2!13863 lt!467163 Nil!14241))))))

(declare-fun e!894635 () Bool)

(declare-fun b!1401184 () Bool)

(declare-fun tp!398714 () Bool)

(declare-fun e!894626 () Bool)

(declare-fun inv!18554 (String!17021) Bool)

(declare-fun inv!18557 (TokenValueInjection!4774) Bool)

(assert (=> b!1401184 (= e!894635 (and tp!398714 (inv!18554 (tag!2729 (h!19643 rules!2550))) (inv!18557 (transformation!2467 (h!19643 rules!2550))) e!894626))))

(declare-fun e!894647 () Bool)

(declare-fun e!894646 () Bool)

(assert (=> b!1401185 (= e!894647 e!894646)))

(declare-fun res!633687 () Bool)

(assert (=> b!1401185 (=> res!633687 e!894646)))

(declare-fun lambda!61383 () Int)

(declare-fun lambda!61382 () Int)

(declare-datatypes ((List!14310 0))(
  ( (Nil!14244) (Cons!14244 (h!19645 Regex!3781) (t!122871 List!14310)) )
))
(declare-fun exists!578 (List!14310 Int) Bool)

(declare-fun map!3161 (List!14308 Int) List!14310)

(assert (=> b!1401185 (= res!633687 (not (exists!578 (map!3161 rules!2550 lambda!61382) lambda!61383)))))

(declare-fun lt!467168 () List!14310)

(assert (=> b!1401185 (exists!578 lt!467168 lambda!61383)))

(declare-fun lt!467189 () Regex!3781)

(declare-fun lt!467160 () List!14307)

(declare-datatypes ((Unit!20569 0))(
  ( (Unit!20570) )
))
(declare-fun lt!467182 () Unit!20569)

(declare-fun matchRGenUnionSpec!192 (Regex!3781 List!14310 List!14307) Unit!20569)

(assert (=> b!1401185 (= lt!467182 (matchRGenUnionSpec!192 lt!467189 lt!467168 lt!467160))))

(assert (=> b!1401185 (= lt!467168 (map!3161 rules!2550 lambda!61382))))

(declare-fun b!1401186 () Bool)

(declare-fun e!894625 () Bool)

(declare-fun e!894632 () Bool)

(assert (=> b!1401186 (= e!894625 e!894632)))

(declare-fun res!633666 () Bool)

(assert (=> b!1401186 (=> res!633666 e!894632)))

(declare-fun lt!467177 () Bool)

(assert (=> b!1401186 (= res!633666 lt!467177)))

(declare-fun lt!467181 () Unit!20569)

(declare-fun e!894639 () Unit!20569)

(assert (=> b!1401186 (= lt!467181 e!894639)))

(declare-fun c!230521 () Bool)

(assert (=> b!1401186 (= c!230521 lt!467177)))

(declare-fun lt!467179 () C!7852)

(declare-fun contains!2783 (List!14307 C!7852) Bool)

(declare-fun usedCharacters!278 (Regex!3781) List!14307)

(assert (=> b!1401186 (= lt!467177 (not (contains!2783 (usedCharacters!278 (regex!2467 (rule!4230 t1!34))) lt!467179)))))

(declare-fun tp!398711 () Bool)

(declare-fun b!1401187 () Bool)

(declare-fun e!894633 () Bool)

(declare-fun e!894619 () Bool)

(declare-fun inv!21 (TokenValue!2557) Bool)

(assert (=> b!1401187 (= e!894633 (and (inv!21 (value!79942 t1!34)) e!894619 tp!398711))))

(declare-fun e!894624 () Bool)

(declare-fun e!894622 () Bool)

(assert (=> b!1401188 (= e!894624 (not e!894622))))

(declare-fun res!633669 () Bool)

(assert (=> b!1401188 (=> res!633669 e!894622)))

(declare-fun lambda!61381 () Int)

(declare-fun Exists!931 (Int) Bool)

(assert (=> b!1401188 (= res!633669 (not (Exists!931 lambda!61381)))))

(assert (=> b!1401188 (Exists!931 lambda!61381)))

(declare-fun lt!467183 () Unit!20569)

(declare-fun lt!467174 () List!14307)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!249 (Regex!3781 List!14307) Unit!20569)

(assert (=> b!1401188 (= lt!467183 (lemmaPrefixMatchThenExistsStringThatMatches!249 lt!467189 lt!467174))))

(declare-fun b!1401189 () Bool)

(declare-fun e!894641 () Bool)

(declare-fun e!894631 () Bool)

(assert (=> b!1401189 (= e!894641 e!894631)))

(declare-fun res!633665 () Bool)

(assert (=> b!1401189 (=> res!633665 e!894631)))

(declare-fun lt!467170 () Rule!4734)

(assert (=> b!1401189 (= res!633665 (or (isSeparator!2467 lt!467170) (not (isSeparator!2467 (rule!4230 t1!34))) (isSeparator!2467 (rule!4230 t2!34))))))

(declare-fun lt!467171 () Regex!3781)

(assert (=> b!1401189 (= (regex!2467 lt!467170) lt!467171)))

(declare-fun b!1401190 () Bool)

(assert (=> b!1401190 (= e!894632 e!894641)))

(declare-fun res!633667 () Bool)

(assert (=> b!1401190 (=> res!633667 e!894641)))

(declare-fun lt!467185 () Bool)

(assert (=> b!1401190 (= res!633667 lt!467185)))

(declare-fun lt!467178 () Unit!20569)

(declare-fun e!894637 () Unit!20569)

(assert (=> b!1401190 (= lt!467178 e!894637)))

(declare-fun c!230520 () Bool)

(assert (=> b!1401190 (= c!230520 lt!467185)))

(declare-fun lt!467165 () C!7852)

(assert (=> b!1401190 (= lt!467185 (not (contains!2783 (usedCharacters!278 (regex!2467 (rule!4230 t2!34))) lt!467165)))))

(declare-fun b!1401192 () Bool)

(declare-fun res!633685 () Bool)

(assert (=> b!1401192 (=> res!633685 e!894647)))

(assert (=> b!1401192 (= res!633685 (not (contains!2783 lt!467160 lt!467179)))))

(declare-fun b!1401193 () Bool)

(declare-fun res!633662 () Bool)

(assert (=> b!1401193 (=> (not res!633662) (not e!894645))))

(declare-fun rulesProduceIndividualToken!1131 (LexerInterface!2162 List!14308 Token!4596) Bool)

(assert (=> b!1401193 (= res!633662 (rulesProduceIndividualToken!1131 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1401194 () Bool)

(declare-fun Unit!20571 () Unit!20569)

(assert (=> b!1401194 (= e!894639 Unit!20571)))

(declare-fun lt!467173 () Unit!20569)

(declare-fun lt!467162 () List!14307)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!212 (Regex!3781 List!14307 C!7852) Unit!20569)

(declare-fun head!2593 (List!14307) C!7852)

(assert (=> b!1401194 (= lt!467173 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!212 (regex!2467 (rule!4230 t1!34)) lt!467162 (head!2593 lt!467162)))))

(assert (=> b!1401194 false))

(declare-fun b!1401195 () Bool)

(declare-fun res!633676 () Bool)

(declare-fun e!894621 () Bool)

(assert (=> b!1401195 (=> res!633676 e!894621)))

(declare-fun contains!2784 (List!14308 Rule!4734) Bool)

(assert (=> b!1401195 (= res!633676 (not (contains!2784 rules!2550 lt!467170)))))

(declare-fun b!1401196 () Bool)

(declare-fun e!894623 () Bool)

(assert (=> b!1401196 (= e!894622 e!894623)))

(declare-fun res!633684 () Bool)

(assert (=> b!1401196 (=> res!633684 e!894623)))

(declare-fun ++!3704 (List!14307 List!14307) List!14307)

(declare-fun getSuffix!627 (List!14307 List!14307) List!14307)

(assert (=> b!1401196 (= res!633684 (not (= lt!467160 (++!3704 lt!467174 (getSuffix!627 lt!467160 lt!467174)))))))

(declare-fun pickWitness!234 (Int) List!14307)

(assert (=> b!1401196 (= lt!467160 (pickWitness!234 lambda!61381))))

(declare-fun b!1401197 () Bool)

(declare-fun res!633691 () Bool)

(declare-fun e!894636 () Bool)

(assert (=> b!1401197 (=> res!633691 e!894636)))

(declare-fun lt!467161 () BalanceConc!9328)

(declare-fun lt!467172 () List!14309)

(assert (=> b!1401197 (= res!633691 (not (= (lexList!676 thiss!19762 rules!2550 (list!5553 lt!467161)) (tuple2!13863 lt!467172 Nil!14241))))))

(declare-fun b!1401198 () Bool)

(declare-fun res!633688 () Bool)

(assert (=> b!1401198 (=> res!633688 e!894647)))

(assert (=> b!1401198 (= res!633688 (not (contains!2783 lt!467160 lt!467165)))))

(declare-fun b!1401199 () Bool)

(declare-fun res!633679 () Bool)

(assert (=> b!1401199 (=> res!633679 e!894621)))

(assert (=> b!1401199 (= res!633679 (not (contains!2784 rules!2550 (rule!4230 t2!34))))))

(declare-fun b!1401200 () Bool)

(declare-fun res!633672 () Bool)

(assert (=> b!1401200 (=> (not res!633672) (not e!894645))))

(assert (=> b!1401200 (= res!633672 (rulesProduceIndividualToken!1131 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1401201 () Bool)

(assert (=> b!1401201 (= e!894623 e!894647)))

(declare-fun res!633686 () Bool)

(assert (=> b!1401201 (=> res!633686 e!894647)))

(assert (=> b!1401201 (= res!633686 (not (contains!2783 lt!467174 lt!467179)))))

(declare-fun lt!467175 () BalanceConc!9328)

(declare-fun apply!3627 (BalanceConc!9328 Int) C!7852)

(assert (=> b!1401201 (= lt!467179 (apply!3627 lt!467175 0))))

(declare-fun b!1401202 () Bool)

(declare-fun Unit!20572 () Unit!20569)

(assert (=> b!1401202 (= e!894637 Unit!20572)))

(declare-fun lt!467164 () Unit!20569)

(declare-fun lt!467188 () List!14307)

(assert (=> b!1401202 (= lt!467164 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!212 (regex!2467 (rule!4230 t2!34)) lt!467188 (head!2593 lt!467188)))))

(assert (=> b!1401202 false))

(declare-fun b!1401203 () Bool)

(declare-fun tp!398722 () Bool)

(declare-fun e!894634 () Bool)

(declare-fun e!894629 () Bool)

(assert (=> b!1401203 (= e!894634 (and tp!398722 (inv!18554 (tag!2729 (rule!4230 t2!34))) (inv!18557 (transformation!2467 (rule!4230 t2!34))) e!894629))))

(declare-fun b!1401204 () Bool)

(declare-fun Unit!20573 () Unit!20569)

(assert (=> b!1401204 (= e!894639 Unit!20573)))

(declare-fun b!1401205 () Bool)

(assert (=> b!1401205 (= e!894630 e!894621)))

(declare-fun res!633683 () Bool)

(assert (=> b!1401205 (=> res!633683 e!894621)))

(declare-datatypes ((tuple2!13864 0))(
  ( (tuple2!13865 (_1!7818 Token!4596) (_2!7818 List!14307)) )
))
(declare-datatypes ((Option!2730 0))(
  ( (None!2729) (Some!2729 (v!21665 tuple2!13864)) )
))
(declare-fun maxPrefix!1136 (LexerInterface!2162 List!14308 List!14307) Option!2730)

(assert (=> b!1401205 (= res!633683 (not (= (maxPrefix!1136 thiss!19762 rules!2550 lt!467188) (Some!2729 (tuple2!13865 t2!34 Nil!14241)))))))

(declare-fun lt!467169 () BalanceConc!9328)

(assert (=> b!1401205 (= lt!467188 (list!5553 lt!467169))))

(declare-fun b!1401206 () Bool)

(declare-fun res!633696 () Bool)

(assert (=> b!1401206 (=> (not res!633696) (not e!894617))))

(declare-fun sepAndNonSepRulesDisjointChars!840 (List!14308 List!14308) Bool)

(assert (=> b!1401206 (= res!633696 (sepAndNonSepRulesDisjointChars!840 rules!2550 rules!2550))))

(declare-fun b!1401207 () Bool)

(declare-fun e!894628 () Bool)

(declare-fun tp!398721 () Bool)

(assert (=> b!1401207 (= e!894628 (and (inv!21 (value!79942 t2!34)) e!894634 tp!398721))))

(assert (=> b!1401208 (= e!894621 e!894625)))

(declare-fun res!633663 () Bool)

(assert (=> b!1401208 (=> res!633663 e!894625)))

(declare-fun matchR!1772 (Regex!3781 List!14307) Bool)

(assert (=> b!1401208 (= res!633663 (not (matchR!1772 (regex!2467 (rule!4230 t1!34)) lt!467162)))))

(declare-fun lt!467166 () Unit!20569)

(declare-fun forallContained!662 (List!14308 Int Rule!4734) Unit!20569)

(assert (=> b!1401208 (= lt!467166 (forallContained!662 rules!2550 lambda!61385 (rule!4230 t2!34)))))

(declare-fun lt!467180 () Unit!20569)

(assert (=> b!1401208 (= lt!467180 (forallContained!662 rules!2550 lambda!61385 (rule!4230 t1!34)))))

(declare-fun lt!467167 () Unit!20569)

(assert (=> b!1401208 (= lt!467167 (forallContained!662 rules!2550 lambda!61385 lt!467170))))

(declare-fun b!1401209 () Bool)

(declare-fun e!894640 () Bool)

(declare-fun tp!398717 () Bool)

(assert (=> b!1401209 (= e!894640 (and e!894635 tp!398717))))

(declare-fun e!894627 () Bool)

(declare-fun e!894620 () Bool)

(assert (=> b!1401210 (= e!894627 e!894620)))

(declare-fun res!633673 () Bool)

(assert (=> b!1401210 (=> res!633673 e!894620)))

(declare-fun exists!579 (List!14308 Int) Bool)

(assert (=> b!1401210 (= res!633673 (not (exists!579 rules!2550 lambda!61384)))))

(assert (=> b!1401210 (exists!579 rules!2550 lambda!61384)))

(declare-fun lt!467190 () Unit!20569)

(declare-fun lemmaMapContains!178 (List!14308 Int Regex!3781) Unit!20569)

(assert (=> b!1401210 (= lt!467190 (lemmaMapContains!178 rules!2550 lambda!61382 lt!467171))))

(declare-fun b!1401211 () Bool)

(declare-fun res!633675 () Bool)

(assert (=> b!1401211 (=> res!633675 e!894647)))

(assert (=> b!1401211 (= res!633675 (not (contains!2783 lt!467174 lt!467165)))))

(declare-fun b!1401212 () Bool)

(assert (=> b!1401212 (= e!894636 e!894630)))

(declare-fun res!633694 () Bool)

(assert (=> b!1401212 (=> res!633694 e!894630)))

(declare-datatypes ((IArray!9395 0))(
  ( (IArray!9396 (innerList!4755 List!14309)) )
))
(declare-datatypes ((Conc!4695 0))(
  ( (Node!4695 (left!12162 Conc!4695) (right!12492 Conc!4695) (csize!9620 Int) (cheight!4906 Int)) (Leaf!7125 (xs!7422 IArray!9395) (csize!9621 Int)) (Empty!4695) )
))
(declare-datatypes ((BalanceConc!9330 0))(
  ( (BalanceConc!9331 (c!230524 Conc!4695)) )
))
(declare-datatypes ((tuple2!13866 0))(
  ( (tuple2!13867 (_1!7819 BalanceConc!9330) (_2!7819 BalanceConc!9328)) )
))
(declare-fun lt!467176 () tuple2!13866)

(declare-fun list!5554 (BalanceConc!9330) List!14309)

(assert (=> b!1401212 (= res!633694 (not (= (list!5554 (_1!7819 lt!467176)) lt!467163)))))

(assert (=> b!1401212 (= lt!467163 (Cons!14243 t2!34 Nil!14243))))

(declare-fun lex!987 (LexerInterface!2162 List!14308 BalanceConc!9328) tuple2!13866)

(assert (=> b!1401212 (= lt!467176 (lex!987 thiss!19762 rules!2550 lt!467187))))

(declare-fun print!926 (LexerInterface!2162 BalanceConc!9330) BalanceConc!9328)

(declare-fun singletonSeq!1128 (Token!4596) BalanceConc!9330)

(assert (=> b!1401212 (= lt!467187 (print!926 thiss!19762 (singletonSeq!1128 t2!34)))))

(assert (=> b!1401213 (= e!894629 (and tp!398712 tp!398718))))

(declare-fun b!1401214 () Bool)

(declare-fun res!633681 () Bool)

(assert (=> b!1401214 (=> (not res!633681) (not e!894645))))

(declare-fun isEmpty!8658 (List!14308) Bool)

(assert (=> b!1401214 (= res!633681 (not (isEmpty!8658 rules!2550)))))

(declare-fun b!1401215 () Bool)

(declare-fun res!633668 () Bool)

(assert (=> b!1401215 (=> res!633668 e!894647)))

(assert (=> b!1401215 (= res!633668 (not (matchR!1772 lt!467189 lt!467160)))))

(declare-fun b!1401216 () Bool)

(declare-fun res!633664 () Bool)

(assert (=> b!1401216 (=> res!633664 e!894636)))

(assert (=> b!1401216 (= res!633664 (not (contains!2784 rules!2550 (rule!4230 t1!34))))))

(declare-fun b!1401217 () Bool)

(assert (=> b!1401217 (= e!894645 e!894617)))

(declare-fun res!633697 () Bool)

(assert (=> b!1401217 (=> (not res!633697) (not e!894617))))

(declare-fun size!11718 (BalanceConc!9328) Int)

(assert (=> b!1401217 (= res!633697 (> (size!11718 lt!467169) 0))))

(declare-fun charsOf!1439 (Token!4596) BalanceConc!9328)

(assert (=> b!1401217 (= lt!467169 (charsOf!1439 t2!34))))

(declare-fun b!1401218 () Bool)

(declare-fun res!633682 () Bool)

(assert (=> b!1401218 (=> res!633682 e!894636)))

(declare-fun lt!467186 () tuple2!13866)

(declare-fun isEmpty!8659 (BalanceConc!9328) Bool)

(assert (=> b!1401218 (= res!633682 (not (isEmpty!8659 (_2!7819 lt!467186))))))

(declare-fun b!1401219 () Bool)

(declare-fun res!633689 () Bool)

(assert (=> b!1401219 (=> res!633689 e!894630)))

(assert (=> b!1401219 (= res!633689 (not (isEmpty!8659 (_2!7819 lt!467176))))))

(declare-fun b!1401220 () Bool)

(declare-fun res!633677 () Bool)

(assert (=> b!1401220 (=> (not res!633677) (not e!894645))))

(assert (=> b!1401220 (= res!633677 (not (= (isSeparator!2467 (rule!4230 t1!34)) (isSeparator!2467 (rule!4230 t2!34)))))))

(declare-fun b!1401221 () Bool)

(assert (=> b!1401221 (= e!894617 e!894624)))

(declare-fun res!633680 () Bool)

(assert (=> b!1401221 (=> (not res!633680) (not e!894624))))

(declare-fun prefixMatch!290 (Regex!3781 List!14307) Bool)

(assert (=> b!1401221 (= res!633680 (prefixMatch!290 lt!467189 lt!467174))))

(declare-fun rulesRegex!350 (LexerInterface!2162 List!14308) Regex!3781)

(assert (=> b!1401221 (= lt!467189 (rulesRegex!350 thiss!19762 rules!2550))))

(assert (=> b!1401221 (= lt!467174 (++!3704 lt!467162 (Cons!14241 lt!467165 Nil!14241)))))

(assert (=> b!1401221 (= lt!467165 (apply!3627 lt!467169 0))))

(assert (=> b!1401221 (= lt!467162 (list!5553 lt!467175))))

(assert (=> b!1401221 (= lt!467175 (charsOf!1439 t1!34))))

(declare-fun b!1401222 () Bool)

(assert (=> b!1401222 (= e!894646 e!894627)))

(declare-fun res!633674 () Bool)

(assert (=> b!1401222 (=> res!633674 e!894627)))

(declare-fun contains!2785 (List!14310 Regex!3781) Bool)

(assert (=> b!1401222 (= res!633674 (not (contains!2785 (map!3161 rules!2550 lambda!61382) lt!467171)))))

(declare-fun getWitness!466 (List!14310 Int) Regex!3781)

(assert (=> b!1401222 (= lt!467171 (getWitness!466 (map!3161 rules!2550 lambda!61382) lambda!61383))))

(assert (=> b!1401223 (= e!894626 (and tp!398720 tp!398713))))

(declare-fun b!1401224 () Bool)

(assert (=> b!1401224 (= e!894620 e!894636)))

(declare-fun res!633671 () Bool)

(assert (=> b!1401224 (=> res!633671 e!894636)))

(assert (=> b!1401224 (= res!633671 (not (= (list!5554 (_1!7819 lt!467186)) lt!467172)))))

(assert (=> b!1401224 (= lt!467172 (Cons!14243 t1!34 Nil!14243))))

(assert (=> b!1401224 (= lt!467186 (lex!987 thiss!19762 rules!2550 lt!467161))))

(assert (=> b!1401224 (= lt!467161 (print!926 thiss!19762 (singletonSeq!1128 t1!34)))))

(declare-fun getWitness!467 (List!14308 Int) Rule!4734)

(assert (=> b!1401224 (= lt!467170 (getWitness!467 rules!2550 lambda!61384))))

(declare-fun b!1401225 () Bool)

(declare-fun res!633693 () Bool)

(assert (=> b!1401225 (=> res!633693 e!894636)))

(assert (=> b!1401225 (= res!633693 (not (= (maxPrefix!1136 thiss!19762 rules!2550 lt!467162) (Some!2729 (tuple2!13865 t1!34 Nil!14241)))))))

(declare-fun b!1401226 () Bool)

(declare-fun Unit!20574 () Unit!20569)

(assert (=> b!1401226 (= e!894637 Unit!20574)))

(declare-fun res!633692 () Bool)

(assert (=> start!127686 (=> (not res!633692) (not e!894645))))

(get-info :version)

(assert (=> start!127686 (= res!633692 ((_ is Lexer!2160) thiss!19762))))

(assert (=> start!127686 e!894645))

(assert (=> start!127686 true))

(assert (=> start!127686 e!894640))

(declare-fun inv!18558 (Token!4596) Bool)

(assert (=> start!127686 (and (inv!18558 t1!34) e!894633)))

(assert (=> start!127686 (and (inv!18558 t2!34) e!894628)))

(declare-fun b!1401191 () Bool)

(declare-fun validRegex!1655 (Regex!3781) Bool)

(assert (=> b!1401191 (= e!894631 (validRegex!1655 lt!467171))))

(assert (=> b!1401191 (not (contains!2783 (usedCharacters!278 (regex!2467 lt!467170)) lt!467179))))

(declare-fun lt!467184 () Unit!20569)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!16 (LexerInterface!2162 List!14308 List!14308 Rule!4734 Rule!4734 C!7852) Unit!20569)

(assert (=> b!1401191 (= lt!467184 (lemmaNonSepRuleNotContainsCharContainedInASepRule!16 thiss!19762 rules!2550 rules!2550 lt!467170 (rule!4230 t1!34) lt!467179))))

(declare-fun e!894638 () Bool)

(assert (=> b!1401227 (= e!894638 (and tp!398716 tp!398715))))

(declare-fun b!1401228 () Bool)

(declare-fun tp!398719 () Bool)

(assert (=> b!1401228 (= e!894619 (and tp!398719 (inv!18554 (tag!2729 (rule!4230 t1!34))) (inv!18557 (transformation!2467 (rule!4230 t1!34))) e!894638))))

(declare-fun b!1401229 () Bool)

(declare-fun res!633670 () Bool)

(assert (=> b!1401229 (=> res!633670 e!894625)))

(assert (=> b!1401229 (= res!633670 (not (matchR!1772 (regex!2467 (rule!4230 t2!34)) lt!467188)))))

(assert (= (and start!127686 res!633692) b!1401214))

(assert (= (and b!1401214 res!633681) b!1401182))

(assert (= (and b!1401182 res!633690) b!1401200))

(assert (= (and b!1401200 res!633672) b!1401193))

(assert (= (and b!1401193 res!633662) b!1401220))

(assert (= (and b!1401220 res!633677) b!1401217))

(assert (= (and b!1401217 res!633697) b!1401206))

(assert (= (and b!1401206 res!633696) b!1401181))

(assert (= (and b!1401181 res!633678) b!1401221))

(assert (= (and b!1401221 res!633680) b!1401188))

(assert (= (and b!1401188 (not res!633669)) b!1401196))

(assert (= (and b!1401196 (not res!633684)) b!1401201))

(assert (= (and b!1401201 (not res!633686)) b!1401192))

(assert (= (and b!1401192 (not res!633685)) b!1401211))

(assert (= (and b!1401211 (not res!633675)) b!1401198))

(assert (= (and b!1401198 (not res!633688)) b!1401215))

(assert (= (and b!1401215 (not res!633668)) b!1401185))

(assert (= (and b!1401185 (not res!633687)) b!1401222))

(assert (= (and b!1401222 (not res!633674)) b!1401210))

(assert (= (and b!1401210 (not res!633673)) b!1401224))

(assert (= (and b!1401224 (not res!633671)) b!1401218))

(assert (= (and b!1401218 (not res!633682)) b!1401197))

(assert (= (and b!1401197 (not res!633691)) b!1401225))

(assert (= (and b!1401225 (not res!633693)) b!1401216))

(assert (= (and b!1401216 (not res!633664)) b!1401212))

(assert (= (and b!1401212 (not res!633694)) b!1401219))

(assert (= (and b!1401219 (not res!633689)) b!1401183))

(assert (= (and b!1401183 (not res!633695)) b!1401205))

(assert (= (and b!1401205 (not res!633683)) b!1401199))

(assert (= (and b!1401199 (not res!633679)) b!1401195))

(assert (= (and b!1401195 (not res!633676)) b!1401208))

(assert (= (and b!1401208 (not res!633663)) b!1401229))

(assert (= (and b!1401229 (not res!633670)) b!1401186))

(assert (= (and b!1401186 c!230521) b!1401194))

(assert (= (and b!1401186 (not c!230521)) b!1401204))

(assert (= (and b!1401186 (not res!633666)) b!1401190))

(assert (= (and b!1401190 c!230520) b!1401202))

(assert (= (and b!1401190 (not c!230520)) b!1401226))

(assert (= (and b!1401190 (not res!633667)) b!1401189))

(assert (= (and b!1401189 (not res!633665)) b!1401191))

(assert (= b!1401184 b!1401223))

(assert (= b!1401209 b!1401184))

(assert (= (and start!127686 ((_ is Cons!14242) rules!2550)) b!1401209))

(assert (= b!1401228 b!1401227))

(assert (= b!1401187 b!1401228))

(assert (= start!127686 b!1401187))

(assert (= b!1401203 b!1401213))

(assert (= b!1401207 b!1401203))

(assert (= start!127686 b!1401207))

(declare-fun m!1578197 () Bool)

(assert (=> b!1401202 m!1578197))

(assert (=> b!1401202 m!1578197))

(declare-fun m!1578199 () Bool)

(assert (=> b!1401202 m!1578199))

(declare-fun m!1578201 () Bool)

(assert (=> b!1401218 m!1578201))

(declare-fun m!1578203 () Bool)

(assert (=> b!1401187 m!1578203))

(declare-fun m!1578205 () Bool)

(assert (=> b!1401205 m!1578205))

(declare-fun m!1578207 () Bool)

(assert (=> b!1401205 m!1578207))

(declare-fun m!1578209 () Bool)

(assert (=> b!1401222 m!1578209))

(assert (=> b!1401222 m!1578209))

(declare-fun m!1578211 () Bool)

(assert (=> b!1401222 m!1578211))

(assert (=> b!1401222 m!1578209))

(assert (=> b!1401222 m!1578209))

(declare-fun m!1578213 () Bool)

(assert (=> b!1401222 m!1578213))

(declare-fun m!1578215 () Bool)

(assert (=> b!1401193 m!1578215))

(declare-fun m!1578217 () Bool)

(assert (=> b!1401192 m!1578217))

(declare-fun m!1578219 () Bool)

(assert (=> b!1401229 m!1578219))

(declare-fun m!1578221 () Bool)

(assert (=> b!1401210 m!1578221))

(assert (=> b!1401210 m!1578221))

(declare-fun m!1578223 () Bool)

(assert (=> b!1401210 m!1578223))

(declare-fun m!1578225 () Bool)

(assert (=> b!1401183 m!1578225))

(assert (=> b!1401183 m!1578225))

(declare-fun m!1578227 () Bool)

(assert (=> b!1401183 m!1578227))

(declare-fun m!1578229 () Bool)

(assert (=> b!1401194 m!1578229))

(assert (=> b!1401194 m!1578229))

(declare-fun m!1578231 () Bool)

(assert (=> b!1401194 m!1578231))

(declare-fun m!1578233 () Bool)

(assert (=> b!1401195 m!1578233))

(declare-fun m!1578235 () Bool)

(assert (=> start!127686 m!1578235))

(declare-fun m!1578237 () Bool)

(assert (=> start!127686 m!1578237))

(declare-fun m!1578239 () Bool)

(assert (=> b!1401191 m!1578239))

(declare-fun m!1578241 () Bool)

(assert (=> b!1401191 m!1578241))

(assert (=> b!1401191 m!1578241))

(declare-fun m!1578243 () Bool)

(assert (=> b!1401191 m!1578243))

(declare-fun m!1578245 () Bool)

(assert (=> b!1401191 m!1578245))

(declare-fun m!1578247 () Bool)

(assert (=> b!1401200 m!1578247))

(declare-fun m!1578249 () Bool)

(assert (=> b!1401181 m!1578249))

(assert (=> b!1401185 m!1578209))

(assert (=> b!1401185 m!1578209))

(declare-fun m!1578251 () Bool)

(assert (=> b!1401185 m!1578251))

(assert (=> b!1401185 m!1578209))

(declare-fun m!1578253 () Bool)

(assert (=> b!1401185 m!1578253))

(declare-fun m!1578255 () Bool)

(assert (=> b!1401185 m!1578255))

(declare-fun m!1578257 () Bool)

(assert (=> b!1401217 m!1578257))

(declare-fun m!1578259 () Bool)

(assert (=> b!1401217 m!1578259))

(declare-fun m!1578261 () Bool)

(assert (=> b!1401214 m!1578261))

(declare-fun m!1578263 () Bool)

(assert (=> b!1401224 m!1578263))

(declare-fun m!1578265 () Bool)

(assert (=> b!1401224 m!1578265))

(declare-fun m!1578267 () Bool)

(assert (=> b!1401224 m!1578267))

(declare-fun m!1578269 () Bool)

(assert (=> b!1401224 m!1578269))

(assert (=> b!1401224 m!1578265))

(declare-fun m!1578271 () Bool)

(assert (=> b!1401224 m!1578271))

(declare-fun m!1578273 () Bool)

(assert (=> b!1401212 m!1578273))

(declare-fun m!1578275 () Bool)

(assert (=> b!1401212 m!1578275))

(declare-fun m!1578277 () Bool)

(assert (=> b!1401212 m!1578277))

(assert (=> b!1401212 m!1578277))

(declare-fun m!1578279 () Bool)

(assert (=> b!1401212 m!1578279))

(declare-fun m!1578281 () Bool)

(assert (=> b!1401211 m!1578281))

(declare-fun m!1578283 () Bool)

(assert (=> b!1401196 m!1578283))

(assert (=> b!1401196 m!1578283))

(declare-fun m!1578285 () Bool)

(assert (=> b!1401196 m!1578285))

(declare-fun m!1578287 () Bool)

(assert (=> b!1401196 m!1578287))

(declare-fun m!1578289 () Bool)

(assert (=> b!1401207 m!1578289))

(declare-fun m!1578291 () Bool)

(assert (=> b!1401215 m!1578291))

(declare-fun m!1578293 () Bool)

(assert (=> b!1401221 m!1578293))

(declare-fun m!1578295 () Bool)

(assert (=> b!1401221 m!1578295))

(declare-fun m!1578297 () Bool)

(assert (=> b!1401221 m!1578297))

(declare-fun m!1578299 () Bool)

(assert (=> b!1401221 m!1578299))

(declare-fun m!1578301 () Bool)

(assert (=> b!1401221 m!1578301))

(declare-fun m!1578303 () Bool)

(assert (=> b!1401221 m!1578303))

(declare-fun m!1578305 () Bool)

(assert (=> b!1401216 m!1578305))

(declare-fun m!1578307 () Bool)

(assert (=> b!1401190 m!1578307))

(assert (=> b!1401190 m!1578307))

(declare-fun m!1578309 () Bool)

(assert (=> b!1401190 m!1578309))

(declare-fun m!1578311 () Bool)

(assert (=> b!1401198 m!1578311))

(declare-fun m!1578313 () Bool)

(assert (=> b!1401203 m!1578313))

(declare-fun m!1578315 () Bool)

(assert (=> b!1401203 m!1578315))

(declare-fun m!1578317 () Bool)

(assert (=> b!1401219 m!1578317))

(declare-fun m!1578319 () Bool)

(assert (=> b!1401184 m!1578319))

(declare-fun m!1578321 () Bool)

(assert (=> b!1401184 m!1578321))

(declare-fun m!1578323 () Bool)

(assert (=> b!1401186 m!1578323))

(assert (=> b!1401186 m!1578323))

(declare-fun m!1578325 () Bool)

(assert (=> b!1401186 m!1578325))

(declare-fun m!1578327 () Bool)

(assert (=> b!1401188 m!1578327))

(assert (=> b!1401188 m!1578327))

(declare-fun m!1578329 () Bool)

(assert (=> b!1401188 m!1578329))

(declare-fun m!1578331 () Bool)

(assert (=> b!1401206 m!1578331))

(declare-fun m!1578333 () Bool)

(assert (=> b!1401225 m!1578333))

(declare-fun m!1578335 () Bool)

(assert (=> b!1401182 m!1578335))

(declare-fun m!1578337 () Bool)

(assert (=> b!1401199 m!1578337))

(declare-fun m!1578339 () Bool)

(assert (=> b!1401228 m!1578339))

(declare-fun m!1578341 () Bool)

(assert (=> b!1401228 m!1578341))

(declare-fun m!1578343 () Bool)

(assert (=> b!1401208 m!1578343))

(declare-fun m!1578345 () Bool)

(assert (=> b!1401208 m!1578345))

(declare-fun m!1578347 () Bool)

(assert (=> b!1401208 m!1578347))

(declare-fun m!1578349 () Bool)

(assert (=> b!1401208 m!1578349))

(declare-fun m!1578351 () Bool)

(assert (=> b!1401201 m!1578351))

(declare-fun m!1578353 () Bool)

(assert (=> b!1401201 m!1578353))

(declare-fun m!1578355 () Bool)

(assert (=> b!1401197 m!1578355))

(assert (=> b!1401197 m!1578355))

(declare-fun m!1578357 () Bool)

(assert (=> b!1401197 m!1578357))

(check-sat b_and!93821 (not b!1401229) (not b_next!34847) (not b!1401190) (not b!1401195) (not b!1401205) (not b!1401183) (not b!1401182) (not b!1401199) (not b!1401222) b_and!93823 (not b!1401211) (not b!1401185) (not b!1401209) (not b!1401196) (not b!1401221) b_and!93819 (not b!1401201) (not b!1401202) (not b!1401186) (not b!1401198) (not b!1401208) (not b!1401184) (not b!1401214) (not b_next!34845) (not b!1401224) (not b!1401203) (not b_next!34843) (not b!1401219) (not b!1401192) (not b!1401218) (not b!1401212) (not b!1401228) (not b!1401197) (not start!127686) (not b!1401191) (not b!1401193) (not b!1401217) (not b!1401181) (not b!1401207) (not b!1401225) (not b!1401194) (not b!1401206) (not b_next!34853) b_and!93825 (not b!1401216) b_and!93829 (not b!1401188) (not b!1401215) (not b!1401210) (not b_next!34849) (not b_next!34851) (not b!1401187) b_and!93827 (not b!1401200))
(check-sat b_and!93823 b_and!93821 b_and!93819 (not b_next!34845) (not b_next!34843) (not b_next!34847) (not b_next!34853) (not b_next!34849) (not b_next!34851) b_and!93827 b_and!93825 b_and!93829)
(get-model)

(declare-fun d!400552 () Bool)

(declare-fun choose!8645 (Int) Bool)

(assert (=> d!400552 (= (Exists!931 lambda!61381) (choose!8645 lambda!61381))))

(declare-fun bs!338233 () Bool)

(assert (= bs!338233 d!400552))

(declare-fun m!1578383 () Bool)

(assert (=> bs!338233 m!1578383))

(assert (=> b!1401188 d!400552))

(declare-fun bs!338235 () Bool)

(declare-fun d!400554 () Bool)

(assert (= bs!338235 (and d!400554 b!1401188)))

(declare-fun lambda!61391 () Int)

(assert (=> bs!338235 (= lambda!61391 lambda!61381)))

(assert (=> d!400554 true))

(assert (=> d!400554 true))

(assert (=> d!400554 (Exists!931 lambda!61391)))

(declare-fun lt!467209 () Unit!20569)

(declare-fun choose!8646 (Regex!3781 List!14307) Unit!20569)

(assert (=> d!400554 (= lt!467209 (choose!8646 lt!467189 lt!467174))))

(assert (=> d!400554 (validRegex!1655 lt!467189)))

(assert (=> d!400554 (= (lemmaPrefixMatchThenExistsStringThatMatches!249 lt!467189 lt!467174) lt!467209)))

(declare-fun bs!338236 () Bool)

(assert (= bs!338236 d!400554))

(declare-fun m!1578409 () Bool)

(assert (=> bs!338236 m!1578409))

(declare-fun m!1578411 () Bool)

(assert (=> bs!338236 m!1578411))

(declare-fun m!1578413 () Bool)

(assert (=> bs!338236 m!1578413))

(assert (=> b!1401188 d!400554))

(declare-fun b!1401344 () Bool)

(declare-fun res!633765 () Bool)

(declare-fun e!894717 () Bool)

(assert (=> b!1401344 (=> res!633765 e!894717)))

(declare-fun e!894721 () Bool)

(assert (=> b!1401344 (= res!633765 e!894721)))

(declare-fun res!633761 () Bool)

(assert (=> b!1401344 (=> (not res!633761) (not e!894721))))

(declare-fun lt!467225 () Bool)

(assert (=> b!1401344 (= res!633761 lt!467225)))

(declare-fun b!1401346 () Bool)

(declare-fun e!894720 () Bool)

(declare-fun e!894712 () Bool)

(assert (=> b!1401346 (= e!894720 e!894712)))

(declare-fun c!230554 () Bool)

(assert (=> b!1401346 (= c!230554 ((_ is EmptyLang!3781) (regex!2467 (rule!4230 t1!34))))))

(declare-fun b!1401347 () Bool)

(declare-fun e!894722 () Bool)

(declare-fun derivativeStep!989 (Regex!3781 C!7852) Regex!3781)

(declare-fun tail!2036 (List!14307) List!14307)

(assert (=> b!1401347 (= e!894722 (matchR!1772 (derivativeStep!989 (regex!2467 (rule!4230 t1!34)) (head!2593 lt!467162)) (tail!2036 lt!467162)))))

(declare-fun b!1401348 () Bool)

(declare-fun e!894715 () Bool)

(assert (=> b!1401348 (= e!894715 (not (= (head!2593 lt!467162) (c!230523 (regex!2467 (rule!4230 t1!34))))))))

(declare-fun b!1401349 () Bool)

(declare-fun res!633760 () Bool)

(assert (=> b!1401349 (=> res!633760 e!894717)))

(assert (=> b!1401349 (= res!633760 (not ((_ is ElementMatch!3781) (regex!2467 (rule!4230 t1!34)))))))

(assert (=> b!1401349 (= e!894712 e!894717)))

(declare-fun b!1401350 () Bool)

(assert (=> b!1401350 (= e!894712 (not lt!467225))))

(declare-fun b!1401351 () Bool)

(declare-fun nullable!1231 (Regex!3781) Bool)

(assert (=> b!1401351 (= e!894722 (nullable!1231 (regex!2467 (rule!4230 t1!34))))))

(declare-fun d!400564 () Bool)

(assert (=> d!400564 e!894720))

(declare-fun c!230551 () Bool)

(assert (=> d!400564 (= c!230551 ((_ is EmptyExpr!3781) (regex!2467 (rule!4230 t1!34))))))

(assert (=> d!400564 (= lt!467225 e!894722)))

(declare-fun c!230548 () Bool)

(declare-fun isEmpty!8664 (List!14307) Bool)

(assert (=> d!400564 (= c!230548 (isEmpty!8664 lt!467162))))

(assert (=> d!400564 (validRegex!1655 (regex!2467 (rule!4230 t1!34)))))

(assert (=> d!400564 (= (matchR!1772 (regex!2467 (rule!4230 t1!34)) lt!467162) lt!467225)))

(declare-fun b!1401352 () Bool)

(declare-fun res!633766 () Bool)

(assert (=> b!1401352 (=> res!633766 e!894715)))

(assert (=> b!1401352 (= res!633766 (not (isEmpty!8664 (tail!2036 lt!467162))))))

(declare-fun b!1401353 () Bool)

(declare-fun res!633763 () Bool)

(assert (=> b!1401353 (=> (not res!633763) (not e!894721))))

(assert (=> b!1401353 (= res!633763 (isEmpty!8664 (tail!2036 lt!467162)))))

(declare-fun bm!93511 () Bool)

(declare-fun call!93516 () Bool)

(assert (=> bm!93511 (= call!93516 (isEmpty!8664 lt!467162))))

(declare-fun b!1401354 () Bool)

(declare-fun e!894714 () Bool)

(assert (=> b!1401354 (= e!894714 e!894715)))

(declare-fun res!633767 () Bool)

(assert (=> b!1401354 (=> res!633767 e!894715)))

(assert (=> b!1401354 (= res!633767 call!93516)))

(declare-fun b!1401355 () Bool)

(assert (=> b!1401355 (= e!894720 (= lt!467225 call!93516))))

(declare-fun b!1401356 () Bool)

(assert (=> b!1401356 (= e!894717 e!894714)))

(declare-fun res!633762 () Bool)

(assert (=> b!1401356 (=> (not res!633762) (not e!894714))))

(assert (=> b!1401356 (= res!633762 (not lt!467225))))

(declare-fun b!1401357 () Bool)

(assert (=> b!1401357 (= e!894721 (= (head!2593 lt!467162) (c!230523 (regex!2467 (rule!4230 t1!34)))))))

(declare-fun b!1401358 () Bool)

(declare-fun res!633764 () Bool)

(assert (=> b!1401358 (=> (not res!633764) (not e!894721))))

(assert (=> b!1401358 (= res!633764 (not call!93516))))

(assert (= (and d!400564 c!230548) b!1401351))

(assert (= (and d!400564 (not c!230548)) b!1401347))

(assert (= (and d!400564 c!230551) b!1401355))

(assert (= (and d!400564 (not c!230551)) b!1401346))

(assert (= (and b!1401346 c!230554) b!1401350))

(assert (= (and b!1401346 (not c!230554)) b!1401349))

(assert (= (and b!1401349 (not res!633760)) b!1401344))

(assert (= (and b!1401344 res!633761) b!1401358))

(assert (= (and b!1401358 res!633764) b!1401353))

(assert (= (and b!1401353 res!633763) b!1401357))

(assert (= (and b!1401344 (not res!633765)) b!1401356))

(assert (= (and b!1401356 res!633762) b!1401354))

(assert (= (and b!1401354 (not res!633767)) b!1401352))

(assert (= (and b!1401352 (not res!633766)) b!1401348))

(assert (= (or b!1401355 b!1401354 b!1401358) bm!93511))

(declare-fun m!1578447 () Bool)

(assert (=> b!1401351 m!1578447))

(declare-fun m!1578449 () Bool)

(assert (=> bm!93511 m!1578449))

(assert (=> b!1401348 m!1578229))

(assert (=> d!400564 m!1578449))

(declare-fun m!1578451 () Bool)

(assert (=> d!400564 m!1578451))

(declare-fun m!1578453 () Bool)

(assert (=> b!1401353 m!1578453))

(assert (=> b!1401353 m!1578453))

(declare-fun m!1578455 () Bool)

(assert (=> b!1401353 m!1578455))

(assert (=> b!1401357 m!1578229))

(assert (=> b!1401347 m!1578229))

(assert (=> b!1401347 m!1578229))

(declare-fun m!1578457 () Bool)

(assert (=> b!1401347 m!1578457))

(assert (=> b!1401347 m!1578453))

(assert (=> b!1401347 m!1578457))

(assert (=> b!1401347 m!1578453))

(declare-fun m!1578459 () Bool)

(assert (=> b!1401347 m!1578459))

(assert (=> b!1401352 m!1578453))

(assert (=> b!1401352 m!1578453))

(assert (=> b!1401352 m!1578455))

(assert (=> b!1401208 d!400564))

(declare-fun d!400576 () Bool)

(declare-fun dynLambda!6588 (Int Rule!4734) Bool)

(assert (=> d!400576 (dynLambda!6588 lambda!61385 (rule!4230 t2!34))))

(declare-fun lt!467234 () Unit!20569)

(declare-fun choose!8647 (List!14308 Int Rule!4734) Unit!20569)

(assert (=> d!400576 (= lt!467234 (choose!8647 rules!2550 lambda!61385 (rule!4230 t2!34)))))

(declare-fun e!894734 () Bool)

(assert (=> d!400576 e!894734))

(declare-fun res!633776 () Bool)

(assert (=> d!400576 (=> (not res!633776) (not e!894734))))

(declare-fun forall!3457 (List!14308 Int) Bool)

(assert (=> d!400576 (= res!633776 (forall!3457 rules!2550 lambda!61385))))

(assert (=> d!400576 (= (forallContained!662 rules!2550 lambda!61385 (rule!4230 t2!34)) lt!467234)))

(declare-fun b!1401373 () Bool)

(assert (=> b!1401373 (= e!894734 (contains!2784 rules!2550 (rule!4230 t2!34)))))

(assert (= (and d!400576 res!633776) b!1401373))

(declare-fun b_lambda!44021 () Bool)

(assert (=> (not b_lambda!44021) (not d!400576)))

(declare-fun m!1578477 () Bool)

(assert (=> d!400576 m!1578477))

(declare-fun m!1578479 () Bool)

(assert (=> d!400576 m!1578479))

(declare-fun m!1578481 () Bool)

(assert (=> d!400576 m!1578481))

(assert (=> b!1401373 m!1578337))

(assert (=> b!1401208 d!400576))

(declare-fun d!400582 () Bool)

(assert (=> d!400582 (dynLambda!6588 lambda!61385 (rule!4230 t1!34))))

(declare-fun lt!467235 () Unit!20569)

(assert (=> d!400582 (= lt!467235 (choose!8647 rules!2550 lambda!61385 (rule!4230 t1!34)))))

(declare-fun e!894735 () Bool)

(assert (=> d!400582 e!894735))

(declare-fun res!633777 () Bool)

(assert (=> d!400582 (=> (not res!633777) (not e!894735))))

(assert (=> d!400582 (= res!633777 (forall!3457 rules!2550 lambda!61385))))

(assert (=> d!400582 (= (forallContained!662 rules!2550 lambda!61385 (rule!4230 t1!34)) lt!467235)))

(declare-fun b!1401374 () Bool)

(assert (=> b!1401374 (= e!894735 (contains!2784 rules!2550 (rule!4230 t1!34)))))

(assert (= (and d!400582 res!633777) b!1401374))

(declare-fun b_lambda!44023 () Bool)

(assert (=> (not b_lambda!44023) (not d!400582)))

(declare-fun m!1578483 () Bool)

(assert (=> d!400582 m!1578483))

(declare-fun m!1578485 () Bool)

(assert (=> d!400582 m!1578485))

(assert (=> d!400582 m!1578481))

(assert (=> b!1401374 m!1578305))

(assert (=> b!1401208 d!400582))

(declare-fun d!400584 () Bool)

(assert (=> d!400584 (dynLambda!6588 lambda!61385 lt!467170)))

(declare-fun lt!467238 () Unit!20569)

(assert (=> d!400584 (= lt!467238 (choose!8647 rules!2550 lambda!61385 lt!467170))))

(declare-fun e!894740 () Bool)

(assert (=> d!400584 e!894740))

(declare-fun res!633780 () Bool)

(assert (=> d!400584 (=> (not res!633780) (not e!894740))))

(assert (=> d!400584 (= res!633780 (forall!3457 rules!2550 lambda!61385))))

(assert (=> d!400584 (= (forallContained!662 rules!2550 lambda!61385 lt!467170) lt!467238)))

(declare-fun b!1401381 () Bool)

(assert (=> b!1401381 (= e!894740 (contains!2784 rules!2550 lt!467170))))

(assert (= (and d!400584 res!633780) b!1401381))

(declare-fun b_lambda!44025 () Bool)

(assert (=> (not b_lambda!44025) (not d!400584)))

(declare-fun m!1578487 () Bool)

(assert (=> d!400584 m!1578487))

(declare-fun m!1578489 () Bool)

(assert (=> d!400584 m!1578489))

(assert (=> d!400584 m!1578481))

(assert (=> b!1401381 m!1578233))

(assert (=> b!1401208 d!400584))

(declare-fun b!1401407 () Bool)

(declare-fun e!894760 () Bool)

(declare-fun inv!16 (TokenValue!2557) Bool)

(assert (=> b!1401407 (= e!894760 (inv!16 (value!79942 t1!34)))))

(declare-fun b!1401408 () Bool)

(declare-fun e!894759 () Bool)

(assert (=> b!1401408 (= e!894760 e!894759)))

(declare-fun c!230569 () Bool)

(assert (=> b!1401408 (= c!230569 ((_ is IntegerValue!7672) (value!79942 t1!34)))))

(declare-fun d!400586 () Bool)

(declare-fun c!230568 () Bool)

(assert (=> d!400586 (= c!230568 ((_ is IntegerValue!7671) (value!79942 t1!34)))))

(assert (=> d!400586 (= (inv!21 (value!79942 t1!34)) e!894760)))

(declare-fun b!1401409 () Bool)

(declare-fun inv!17 (TokenValue!2557) Bool)

(assert (=> b!1401409 (= e!894759 (inv!17 (value!79942 t1!34)))))

(declare-fun b!1401410 () Bool)

(declare-fun e!894758 () Bool)

(declare-fun inv!15 (TokenValue!2557) Bool)

(assert (=> b!1401410 (= e!894758 (inv!15 (value!79942 t1!34)))))

(declare-fun b!1401411 () Bool)

(declare-fun res!633790 () Bool)

(assert (=> b!1401411 (=> res!633790 e!894758)))

(assert (=> b!1401411 (= res!633790 (not ((_ is IntegerValue!7673) (value!79942 t1!34))))))

(assert (=> b!1401411 (= e!894759 e!894758)))

(assert (= (and d!400586 c!230568) b!1401407))

(assert (= (and d!400586 (not c!230568)) b!1401408))

(assert (= (and b!1401408 c!230569) b!1401409))

(assert (= (and b!1401408 (not c!230569)) b!1401411))

(assert (= (and b!1401411 (not res!633790)) b!1401410))

(declare-fun m!1578505 () Bool)

(assert (=> b!1401407 m!1578505))

(declare-fun m!1578507 () Bool)

(assert (=> b!1401409 m!1578507))

(declare-fun m!1578509 () Bool)

(assert (=> b!1401410 m!1578509))

(assert (=> b!1401187 d!400586))

(declare-fun d!400594 () Bool)

(declare-fun lt!467248 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2115 (List!14307) (InoxSet C!7852))

(assert (=> d!400594 (= lt!467248 (select (content!2115 (usedCharacters!278 (regex!2467 (rule!4230 t1!34)))) lt!467179))))

(declare-fun e!894766 () Bool)

(assert (=> d!400594 (= lt!467248 e!894766)))

(declare-fun res!633795 () Bool)

(assert (=> d!400594 (=> (not res!633795) (not e!894766))))

(assert (=> d!400594 (= res!633795 ((_ is Cons!14241) (usedCharacters!278 (regex!2467 (rule!4230 t1!34)))))))

(assert (=> d!400594 (= (contains!2783 (usedCharacters!278 (regex!2467 (rule!4230 t1!34))) lt!467179) lt!467248)))

(declare-fun b!1401416 () Bool)

(declare-fun e!894765 () Bool)

(assert (=> b!1401416 (= e!894766 e!894765)))

(declare-fun res!633796 () Bool)

(assert (=> b!1401416 (=> res!633796 e!894765)))

(assert (=> b!1401416 (= res!633796 (= (h!19642 (usedCharacters!278 (regex!2467 (rule!4230 t1!34)))) lt!467179))))

(declare-fun b!1401417 () Bool)

(assert (=> b!1401417 (= e!894765 (contains!2783 (t!122868 (usedCharacters!278 (regex!2467 (rule!4230 t1!34)))) lt!467179))))

(assert (= (and d!400594 res!633795) b!1401416))

(assert (= (and b!1401416 (not res!633796)) b!1401417))

(assert (=> d!400594 m!1578323))

(declare-fun m!1578515 () Bool)

(assert (=> d!400594 m!1578515))

(declare-fun m!1578517 () Bool)

(assert (=> d!400594 m!1578517))

(declare-fun m!1578519 () Bool)

(assert (=> b!1401417 m!1578519))

(assert (=> b!1401186 d!400594))

(declare-fun b!1401478 () Bool)

(declare-fun e!894798 () List!14307)

(declare-fun e!894800 () List!14307)

(assert (=> b!1401478 (= e!894798 e!894800)))

(declare-fun c!230590 () Bool)

(assert (=> b!1401478 (= c!230590 ((_ is Union!3781) (regex!2467 (rule!4230 t1!34))))))

(declare-fun call!93530 () List!14307)

(declare-fun c!230588 () Bool)

(declare-fun bm!93523 () Bool)

(assert (=> bm!93523 (= call!93530 (usedCharacters!278 (ite c!230588 (reg!4110 (regex!2467 (rule!4230 t1!34))) (ite c!230590 (regTwo!8075 (regex!2467 (rule!4230 t1!34))) (regOne!8074 (regex!2467 (rule!4230 t1!34)))))))))

(declare-fun b!1401479 () Bool)

(declare-fun call!93531 () List!14307)

(assert (=> b!1401479 (= e!894800 call!93531)))

(declare-fun b!1401480 () Bool)

(declare-fun e!894799 () List!14307)

(assert (=> b!1401480 (= e!894799 (Cons!14241 (c!230523 (regex!2467 (rule!4230 t1!34))) Nil!14241))))

(declare-fun bm!93524 () Bool)

(declare-fun call!93528 () List!14307)

(assert (=> bm!93524 (= call!93528 call!93530)))

(declare-fun bm!93525 () Bool)

(declare-fun call!93529 () List!14307)

(assert (=> bm!93525 (= call!93529 (usedCharacters!278 (ite c!230590 (regOne!8075 (regex!2467 (rule!4230 t1!34))) (regTwo!8074 (regex!2467 (rule!4230 t1!34))))))))

(declare-fun d!400600 () Bool)

(declare-fun c!230591 () Bool)

(assert (=> d!400600 (= c!230591 (or ((_ is EmptyExpr!3781) (regex!2467 (rule!4230 t1!34))) ((_ is EmptyLang!3781) (regex!2467 (rule!4230 t1!34)))))))

(declare-fun e!894801 () List!14307)

(assert (=> d!400600 (= (usedCharacters!278 (regex!2467 (rule!4230 t1!34))) e!894801)))

(declare-fun b!1401481 () Bool)

(assert (=> b!1401481 (= e!894798 call!93530)))

(declare-fun b!1401482 () Bool)

(assert (=> b!1401482 (= c!230588 ((_ is Star!3781) (regex!2467 (rule!4230 t1!34))))))

(assert (=> b!1401482 (= e!894799 e!894798)))

(declare-fun b!1401483 () Bool)

(assert (=> b!1401483 (= e!894801 e!894799)))

(declare-fun c!230589 () Bool)

(assert (=> b!1401483 (= c!230589 ((_ is ElementMatch!3781) (regex!2467 (rule!4230 t1!34))))))

(declare-fun b!1401484 () Bool)

(assert (=> b!1401484 (= e!894801 Nil!14241)))

(declare-fun b!1401485 () Bool)

(assert (=> b!1401485 (= e!894800 call!93531)))

(declare-fun bm!93526 () Bool)

(assert (=> bm!93526 (= call!93531 (++!3704 (ite c!230590 call!93529 call!93528) (ite c!230590 call!93528 call!93529)))))

(assert (= (and d!400600 c!230591) b!1401484))

(assert (= (and d!400600 (not c!230591)) b!1401483))

(assert (= (and b!1401483 c!230589) b!1401480))

(assert (= (and b!1401483 (not c!230589)) b!1401482))

(assert (= (and b!1401482 c!230588) b!1401481))

(assert (= (and b!1401482 (not c!230588)) b!1401478))

(assert (= (and b!1401478 c!230590) b!1401485))

(assert (= (and b!1401478 (not c!230590)) b!1401479))

(assert (= (or b!1401485 b!1401479) bm!93525))

(assert (= (or b!1401485 b!1401479) bm!93524))

(assert (= (or b!1401485 b!1401479) bm!93526))

(assert (= (or b!1401481 bm!93524) bm!93523))

(declare-fun m!1578545 () Bool)

(assert (=> bm!93523 m!1578545))

(declare-fun m!1578547 () Bool)

(assert (=> bm!93525 m!1578547))

(declare-fun m!1578553 () Bool)

(assert (=> bm!93526 m!1578553))

(assert (=> b!1401186 d!400600))

(declare-fun b!1401489 () Bool)

(declare-fun res!633831 () Bool)

(declare-fun e!894808 () Bool)

(assert (=> b!1401489 (=> res!633831 e!894808)))

(declare-fun e!894810 () Bool)

(assert (=> b!1401489 (= res!633831 e!894810)))

(declare-fun res!633827 () Bool)

(assert (=> b!1401489 (=> (not res!633827) (not e!894810))))

(declare-fun lt!467257 () Bool)

(assert (=> b!1401489 (= res!633827 lt!467257)))

(declare-fun b!1401490 () Bool)

(declare-fun e!894809 () Bool)

(declare-fun e!894805 () Bool)

(assert (=> b!1401490 (= e!894809 e!894805)))

(declare-fun c!230594 () Bool)

(assert (=> b!1401490 (= c!230594 ((_ is EmptyLang!3781) (regex!2467 (rule!4230 t2!34))))))

(declare-fun b!1401491 () Bool)

(declare-fun e!894811 () Bool)

(assert (=> b!1401491 (= e!894811 (matchR!1772 (derivativeStep!989 (regex!2467 (rule!4230 t2!34)) (head!2593 lt!467188)) (tail!2036 lt!467188)))))

(declare-fun b!1401492 () Bool)

(declare-fun e!894807 () Bool)

(assert (=> b!1401492 (= e!894807 (not (= (head!2593 lt!467188) (c!230523 (regex!2467 (rule!4230 t2!34))))))))

(declare-fun b!1401493 () Bool)

(declare-fun res!633826 () Bool)

(assert (=> b!1401493 (=> res!633826 e!894808)))

(assert (=> b!1401493 (= res!633826 (not ((_ is ElementMatch!3781) (regex!2467 (rule!4230 t2!34)))))))

(assert (=> b!1401493 (= e!894805 e!894808)))

(declare-fun b!1401494 () Bool)

(assert (=> b!1401494 (= e!894805 (not lt!467257))))

(declare-fun b!1401495 () Bool)

(assert (=> b!1401495 (= e!894811 (nullable!1231 (regex!2467 (rule!4230 t2!34))))))

(declare-fun d!400608 () Bool)

(assert (=> d!400608 e!894809))

(declare-fun c!230593 () Bool)

(assert (=> d!400608 (= c!230593 ((_ is EmptyExpr!3781) (regex!2467 (rule!4230 t2!34))))))

(assert (=> d!400608 (= lt!467257 e!894811)))

(declare-fun c!230592 () Bool)

(assert (=> d!400608 (= c!230592 (isEmpty!8664 lt!467188))))

(assert (=> d!400608 (validRegex!1655 (regex!2467 (rule!4230 t2!34)))))

(assert (=> d!400608 (= (matchR!1772 (regex!2467 (rule!4230 t2!34)) lt!467188) lt!467257)))

(declare-fun b!1401496 () Bool)

(declare-fun res!633832 () Bool)

(assert (=> b!1401496 (=> res!633832 e!894807)))

(assert (=> b!1401496 (= res!633832 (not (isEmpty!8664 (tail!2036 lt!467188))))))

(declare-fun b!1401497 () Bool)

(declare-fun res!633829 () Bool)

(assert (=> b!1401497 (=> (not res!633829) (not e!894810))))

(assert (=> b!1401497 (= res!633829 (isEmpty!8664 (tail!2036 lt!467188)))))

(declare-fun bm!93527 () Bool)

(declare-fun call!93532 () Bool)

(assert (=> bm!93527 (= call!93532 (isEmpty!8664 lt!467188))))

(declare-fun b!1401498 () Bool)

(declare-fun e!894806 () Bool)

(assert (=> b!1401498 (= e!894806 e!894807)))

(declare-fun res!633833 () Bool)

(assert (=> b!1401498 (=> res!633833 e!894807)))

(assert (=> b!1401498 (= res!633833 call!93532)))

(declare-fun b!1401499 () Bool)

(assert (=> b!1401499 (= e!894809 (= lt!467257 call!93532))))

(declare-fun b!1401500 () Bool)

(assert (=> b!1401500 (= e!894808 e!894806)))

(declare-fun res!633828 () Bool)

(assert (=> b!1401500 (=> (not res!633828) (not e!894806))))

(assert (=> b!1401500 (= res!633828 (not lt!467257))))

(declare-fun b!1401501 () Bool)

(assert (=> b!1401501 (= e!894810 (= (head!2593 lt!467188) (c!230523 (regex!2467 (rule!4230 t2!34)))))))

(declare-fun b!1401502 () Bool)

(declare-fun res!633830 () Bool)

(assert (=> b!1401502 (=> (not res!633830) (not e!894810))))

(assert (=> b!1401502 (= res!633830 (not call!93532))))

(assert (= (and d!400608 c!230592) b!1401495))

(assert (= (and d!400608 (not c!230592)) b!1401491))

(assert (= (and d!400608 c!230593) b!1401499))

(assert (= (and d!400608 (not c!230593)) b!1401490))

(assert (= (and b!1401490 c!230594) b!1401494))

(assert (= (and b!1401490 (not c!230594)) b!1401493))

(assert (= (and b!1401493 (not res!633826)) b!1401489))

(assert (= (and b!1401489 res!633827) b!1401502))

(assert (= (and b!1401502 res!633830) b!1401497))

(assert (= (and b!1401497 res!633829) b!1401501))

(assert (= (and b!1401489 (not res!633831)) b!1401500))

(assert (= (and b!1401500 res!633828) b!1401498))

(assert (= (and b!1401498 (not res!633833)) b!1401496))

(assert (= (and b!1401496 (not res!633832)) b!1401492))

(assert (= (or b!1401499 b!1401498 b!1401502) bm!93527))

(declare-fun m!1578555 () Bool)

(assert (=> b!1401495 m!1578555))

(declare-fun m!1578557 () Bool)

(assert (=> bm!93527 m!1578557))

(assert (=> b!1401492 m!1578197))

(assert (=> d!400608 m!1578557))

(declare-fun m!1578559 () Bool)

(assert (=> d!400608 m!1578559))

(declare-fun m!1578561 () Bool)

(assert (=> b!1401497 m!1578561))

(assert (=> b!1401497 m!1578561))

(declare-fun m!1578563 () Bool)

(assert (=> b!1401497 m!1578563))

(assert (=> b!1401501 m!1578197))

(assert (=> b!1401491 m!1578197))

(assert (=> b!1401491 m!1578197))

(declare-fun m!1578565 () Bool)

(assert (=> b!1401491 m!1578565))

(assert (=> b!1401491 m!1578561))

(assert (=> b!1401491 m!1578565))

(assert (=> b!1401491 m!1578561))

(declare-fun m!1578567 () Bool)

(assert (=> b!1401491 m!1578567))

(assert (=> b!1401496 m!1578561))

(assert (=> b!1401496 m!1578561))

(assert (=> b!1401496 m!1578563))

(assert (=> b!1401229 d!400608))

(declare-fun d!400612 () Bool)

(assert (=> d!400612 (= (inv!18554 (tag!2729 (rule!4230 t1!34))) (= (mod (str.len (value!79941 (tag!2729 (rule!4230 t1!34)))) 2) 0))))

(assert (=> b!1401228 d!400612))

(declare-fun d!400614 () Bool)

(declare-fun res!633853 () Bool)

(declare-fun e!894841 () Bool)

(assert (=> d!400614 (=> (not res!633853) (not e!894841))))

(declare-fun semiInverseModEq!960 (Int Int) Bool)

(assert (=> d!400614 (= res!633853 (semiInverseModEq!960 (toChars!3617 (transformation!2467 (rule!4230 t1!34))) (toValue!3758 (transformation!2467 (rule!4230 t1!34)))))))

(assert (=> d!400614 (= (inv!18557 (transformation!2467 (rule!4230 t1!34))) e!894841)))

(declare-fun b!1401542 () Bool)

(declare-fun equivClasses!919 (Int Int) Bool)

(assert (=> b!1401542 (= e!894841 (equivClasses!919 (toChars!3617 (transformation!2467 (rule!4230 t1!34))) (toValue!3758 (transformation!2467 (rule!4230 t1!34)))))))

(assert (= (and d!400614 res!633853) b!1401542))

(declare-fun m!1578587 () Bool)

(assert (=> d!400614 m!1578587))

(declare-fun m!1578589 () Bool)

(assert (=> b!1401542 m!1578589))

(assert (=> b!1401228 d!400614))

(declare-fun b!1401543 () Bool)

(declare-fun e!894844 () Bool)

(assert (=> b!1401543 (= e!894844 (inv!16 (value!79942 t2!34)))))

(declare-fun b!1401544 () Bool)

(declare-fun e!894843 () Bool)

(assert (=> b!1401544 (= e!894844 e!894843)))

(declare-fun c!230606 () Bool)

(assert (=> b!1401544 (= c!230606 ((_ is IntegerValue!7672) (value!79942 t2!34)))))

(declare-fun d!400622 () Bool)

(declare-fun c!230605 () Bool)

(assert (=> d!400622 (= c!230605 ((_ is IntegerValue!7671) (value!79942 t2!34)))))

(assert (=> d!400622 (= (inv!21 (value!79942 t2!34)) e!894844)))

(declare-fun b!1401545 () Bool)

(assert (=> b!1401545 (= e!894843 (inv!17 (value!79942 t2!34)))))

(declare-fun b!1401546 () Bool)

(declare-fun e!894842 () Bool)

(assert (=> b!1401546 (= e!894842 (inv!15 (value!79942 t2!34)))))

(declare-fun b!1401547 () Bool)

(declare-fun res!633854 () Bool)

(assert (=> b!1401547 (=> res!633854 e!894842)))

(assert (=> b!1401547 (= res!633854 (not ((_ is IntegerValue!7673) (value!79942 t2!34))))))

(assert (=> b!1401547 (= e!894843 e!894842)))

(assert (= (and d!400622 c!230605) b!1401543))

(assert (= (and d!400622 (not c!230605)) b!1401544))

(assert (= (and b!1401544 c!230606) b!1401545))

(assert (= (and b!1401544 (not c!230606)) b!1401547))

(assert (= (and b!1401547 (not res!633854)) b!1401546))

(declare-fun m!1578591 () Bool)

(assert (=> b!1401543 m!1578591))

(declare-fun m!1578593 () Bool)

(assert (=> b!1401545 m!1578593))

(declare-fun m!1578595 () Bool)

(assert (=> b!1401546 m!1578595))

(assert (=> b!1401207 d!400622))

(declare-fun d!400624 () Bool)

(declare-fun res!633859 () Bool)

(declare-fun e!894849 () Bool)

(assert (=> d!400624 (=> res!633859 e!894849)))

(assert (=> d!400624 (= res!633859 (not ((_ is Cons!14242) rules!2550)))))

(assert (=> d!400624 (= (sepAndNonSepRulesDisjointChars!840 rules!2550 rules!2550) e!894849)))

(declare-fun b!1401552 () Bool)

(declare-fun e!894850 () Bool)

(assert (=> b!1401552 (= e!894849 e!894850)))

(declare-fun res!633860 () Bool)

(assert (=> b!1401552 (=> (not res!633860) (not e!894850))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!401 (Rule!4734 List!14308) Bool)

(assert (=> b!1401552 (= res!633860 (ruleDisjointCharsFromAllFromOtherType!401 (h!19643 rules!2550) rules!2550))))

(declare-fun b!1401553 () Bool)

(assert (=> b!1401553 (= e!894850 (sepAndNonSepRulesDisjointChars!840 rules!2550 (t!122869 rules!2550)))))

(assert (= (and d!400624 (not res!633859)) b!1401552))

(assert (= (and b!1401552 res!633860) b!1401553))

(declare-fun m!1578599 () Bool)

(assert (=> b!1401552 m!1578599))

(declare-fun m!1578601 () Bool)

(assert (=> b!1401553 m!1578601))

(assert (=> b!1401206 d!400624))

(declare-fun bs!338240 () Bool)

(declare-fun d!400628 () Bool)

(assert (= bs!338240 (and d!400628 b!1401185)))

(declare-fun lambda!61394 () Int)

(assert (=> bs!338240 (not (= lambda!61394 lambda!61383))))

(assert (=> d!400628 true))

(declare-fun order!8715 () Int)

(declare-fun dynLambda!6589 (Int Int) Int)

(assert (=> d!400628 (< (dynLambda!6589 order!8715 lambda!61383) (dynLambda!6589 order!8715 lambda!61394))))

(declare-fun forall!3458 (List!14310 Int) Bool)

(assert (=> d!400628 (= (exists!578 lt!467168 lambda!61383) (not (forall!3458 lt!467168 lambda!61394)))))

(declare-fun bs!338241 () Bool)

(assert (= bs!338241 d!400628))

(declare-fun m!1578603 () Bool)

(assert (=> bs!338241 m!1578603))

(assert (=> b!1401185 d!400628))

(declare-fun d!400630 () Bool)

(declare-fun lt!467264 () List!14310)

(declare-fun size!11724 (List!14310) Int)

(declare-fun size!11725 (List!14308) Int)

(assert (=> d!400630 (= (size!11724 lt!467264) (size!11725 rules!2550))))

(declare-fun e!894853 () List!14310)

(assert (=> d!400630 (= lt!467264 e!894853)))

(declare-fun c!230610 () Bool)

(assert (=> d!400630 (= c!230610 ((_ is Nil!14242) rules!2550))))

(assert (=> d!400630 (= (map!3161 rules!2550 lambda!61382) lt!467264)))

(declare-fun b!1401560 () Bool)

(assert (=> b!1401560 (= e!894853 Nil!14244)))

(declare-fun b!1401561 () Bool)

(declare-fun $colon$colon!233 (List!14310 Regex!3781) List!14310)

(declare-fun dynLambda!6590 (Int Rule!4734) Regex!3781)

(assert (=> b!1401561 (= e!894853 ($colon$colon!233 (map!3161 (t!122869 rules!2550) lambda!61382) (dynLambda!6590 lambda!61382 (h!19643 rules!2550))))))

(assert (= (and d!400630 c!230610) b!1401560))

(assert (= (and d!400630 (not c!230610)) b!1401561))

(declare-fun b_lambda!44037 () Bool)

(assert (=> (not b_lambda!44037) (not b!1401561)))

(declare-fun m!1578605 () Bool)

(assert (=> d!400630 m!1578605))

(declare-fun m!1578607 () Bool)

(assert (=> d!400630 m!1578607))

(declare-fun m!1578609 () Bool)

(assert (=> b!1401561 m!1578609))

(declare-fun m!1578611 () Bool)

(assert (=> b!1401561 m!1578611))

(assert (=> b!1401561 m!1578609))

(assert (=> b!1401561 m!1578611))

(declare-fun m!1578613 () Bool)

(assert (=> b!1401561 m!1578613))

(assert (=> b!1401185 d!400630))

(declare-fun bs!338242 () Bool)

(declare-fun d!400632 () Bool)

(assert (= bs!338242 (and d!400632 b!1401185)))

(declare-fun lambda!61395 () Int)

(assert (=> bs!338242 (not (= lambda!61395 lambda!61383))))

(declare-fun bs!338243 () Bool)

(assert (= bs!338243 (and d!400632 d!400628)))

(assert (=> bs!338243 (= lambda!61395 lambda!61394)))

(assert (=> d!400632 true))

(assert (=> d!400632 (< (dynLambda!6589 order!8715 lambda!61383) (dynLambda!6589 order!8715 lambda!61395))))

(assert (=> d!400632 (= (exists!578 (map!3161 rules!2550 lambda!61382) lambda!61383) (not (forall!3458 (map!3161 rules!2550 lambda!61382) lambda!61395)))))

(declare-fun bs!338244 () Bool)

(assert (= bs!338244 d!400632))

(assert (=> bs!338244 m!1578209))

(declare-fun m!1578615 () Bool)

(assert (=> bs!338244 m!1578615))

(assert (=> b!1401185 d!400632))

(declare-fun bs!338245 () Bool)

(declare-fun d!400634 () Bool)

(assert (= bs!338245 (and d!400634 b!1401185)))

(declare-fun lambda!61400 () Int)

(assert (=> bs!338245 (not (= lambda!61400 lambda!61383))))

(declare-fun bs!338246 () Bool)

(assert (= bs!338246 (and d!400634 d!400628)))

(assert (=> bs!338246 (not (= lambda!61400 lambda!61394))))

(declare-fun bs!338247 () Bool)

(assert (= bs!338247 (and d!400634 d!400632)))

(assert (=> bs!338247 (not (= lambda!61400 lambda!61395))))

(declare-fun lambda!61401 () Int)

(assert (=> bs!338245 (= lambda!61401 lambda!61383)))

(assert (=> bs!338246 (not (= lambda!61401 lambda!61394))))

(assert (=> bs!338247 (not (= lambda!61401 lambda!61395))))

(declare-fun bs!338248 () Bool)

(assert (= bs!338248 d!400634))

(assert (=> bs!338248 (not (= lambda!61401 lambda!61400))))

(assert (=> d!400634 true))

(assert (=> d!400634 (= (matchR!1772 lt!467189 lt!467160) (exists!578 lt!467168 lambda!61401))))

(declare-fun lt!467277 () Unit!20569)

(declare-fun choose!8648 (Regex!3781 List!14310 List!14307) Unit!20569)

(assert (=> d!400634 (= lt!467277 (choose!8648 lt!467189 lt!467168 lt!467160))))

(assert (=> d!400634 (forall!3458 lt!467168 lambda!61400)))

(assert (=> d!400634 (= (matchRGenUnionSpec!192 lt!467189 lt!467168 lt!467160) lt!467277)))

(assert (=> bs!338248 m!1578291))

(declare-fun m!1578617 () Bool)

(assert (=> bs!338248 m!1578617))

(declare-fun m!1578619 () Bool)

(assert (=> bs!338248 m!1578619))

(declare-fun m!1578621 () Bool)

(assert (=> bs!338248 m!1578621))

(assert (=> b!1401185 d!400634))

(declare-fun d!400636 () Bool)

(assert (=> d!400636 (= (inv!18554 (tag!2729 (h!19643 rules!2550))) (= (mod (str.len (value!79941 (tag!2729 (h!19643 rules!2550)))) 2) 0))))

(assert (=> b!1401184 d!400636))

(declare-fun d!400638 () Bool)

(declare-fun res!633877 () Bool)

(declare-fun e!894862 () Bool)

(assert (=> d!400638 (=> (not res!633877) (not e!894862))))

(assert (=> d!400638 (= res!633877 (semiInverseModEq!960 (toChars!3617 (transformation!2467 (h!19643 rules!2550))) (toValue!3758 (transformation!2467 (h!19643 rules!2550)))))))

(assert (=> d!400638 (= (inv!18557 (transformation!2467 (h!19643 rules!2550))) e!894862)))

(declare-fun b!1401582 () Bool)

(assert (=> b!1401582 (= e!894862 (equivClasses!919 (toChars!3617 (transformation!2467 (h!19643 rules!2550))) (toValue!3758 (transformation!2467 (h!19643 rules!2550)))))))

(assert (= (and d!400638 res!633877) b!1401582))

(declare-fun m!1578623 () Bool)

(assert (=> d!400638 m!1578623))

(declare-fun m!1578625 () Bool)

(assert (=> b!1401582 m!1578625))

(assert (=> b!1401184 d!400638))

(declare-fun b!1401700 () Bool)

(declare-fun res!633945 () Bool)

(declare-fun e!894926 () Bool)

(assert (=> b!1401700 (=> (not res!633945) (not e!894926))))

(declare-fun lt!467316 () Option!2730)

(declare-fun get!4404 (Option!2730) tuple2!13864)

(assert (=> b!1401700 (= res!633945 (= (list!5553 (charsOf!1439 (_1!7818 (get!4404 lt!467316)))) (originalCharacters!3329 (_1!7818 (get!4404 lt!467316)))))))

(declare-fun b!1401701 () Bool)

(declare-fun res!633946 () Bool)

(assert (=> b!1401701 (=> (not res!633946) (not e!894926))))

(declare-fun apply!3629 (TokenValueInjection!4774 BalanceConc!9328) TokenValue!2557)

(declare-fun seqFromList!1661 (List!14307) BalanceConc!9328)

(assert (=> b!1401701 (= res!633946 (= (value!79942 (_1!7818 (get!4404 lt!467316))) (apply!3629 (transformation!2467 (rule!4230 (_1!7818 (get!4404 lt!467316)))) (seqFromList!1661 (originalCharacters!3329 (_1!7818 (get!4404 lt!467316)))))))))

(declare-fun d!400640 () Bool)

(declare-fun e!894924 () Bool)

(assert (=> d!400640 e!894924))

(declare-fun res!633942 () Bool)

(assert (=> d!400640 (=> res!633942 e!894924)))

(declare-fun isEmpty!8666 (Option!2730) Bool)

(assert (=> d!400640 (= res!633942 (isEmpty!8666 lt!467316))))

(declare-fun e!894925 () Option!2730)

(assert (=> d!400640 (= lt!467316 e!894925)))

(declare-fun c!230640 () Bool)

(assert (=> d!400640 (= c!230640 (and ((_ is Cons!14242) rules!2550) ((_ is Nil!14242) (t!122869 rules!2550))))))

(declare-fun lt!467315 () Unit!20569)

(declare-fun lt!467317 () Unit!20569)

(assert (=> d!400640 (= lt!467315 lt!467317)))

(declare-fun isPrefix!1158 (List!14307 List!14307) Bool)

(assert (=> d!400640 (isPrefix!1158 lt!467188 lt!467188)))

(declare-fun lemmaIsPrefixRefl!817 (List!14307 List!14307) Unit!20569)

(assert (=> d!400640 (= lt!467317 (lemmaIsPrefixRefl!817 lt!467188 lt!467188))))

(declare-fun rulesValidInductive!800 (LexerInterface!2162 List!14308) Bool)

(assert (=> d!400640 (rulesValidInductive!800 thiss!19762 rules!2550)))

(assert (=> d!400640 (= (maxPrefix!1136 thiss!19762 rules!2550 lt!467188) lt!467316)))

(declare-fun b!1401702 () Bool)

(assert (=> b!1401702 (= e!894926 (contains!2784 rules!2550 (rule!4230 (_1!7818 (get!4404 lt!467316)))))))

(declare-fun b!1401703 () Bool)

(declare-fun lt!467318 () Option!2730)

(declare-fun lt!467319 () Option!2730)

(assert (=> b!1401703 (= e!894925 (ite (and ((_ is None!2729) lt!467318) ((_ is None!2729) lt!467319)) None!2729 (ite ((_ is None!2729) lt!467319) lt!467318 (ite ((_ is None!2729) lt!467318) lt!467319 (ite (>= (size!11717 (_1!7818 (v!21665 lt!467318))) (size!11717 (_1!7818 (v!21665 lt!467319)))) lt!467318 lt!467319)))))))

(declare-fun call!93558 () Option!2730)

(assert (=> b!1401703 (= lt!467318 call!93558)))

(assert (=> b!1401703 (= lt!467319 (maxPrefix!1136 thiss!19762 (t!122869 rules!2550) lt!467188))))

(declare-fun b!1401704 () Bool)

(declare-fun res!633941 () Bool)

(assert (=> b!1401704 (=> (not res!633941) (not e!894926))))

(assert (=> b!1401704 (= res!633941 (matchR!1772 (regex!2467 (rule!4230 (_1!7818 (get!4404 lt!467316)))) (list!5553 (charsOf!1439 (_1!7818 (get!4404 lt!467316))))))))

(declare-fun b!1401705 () Bool)

(assert (=> b!1401705 (= e!894924 e!894926)))

(declare-fun res!633944 () Bool)

(assert (=> b!1401705 (=> (not res!633944) (not e!894926))))

(declare-fun isDefined!2245 (Option!2730) Bool)

(assert (=> b!1401705 (= res!633944 (isDefined!2245 lt!467316))))

(declare-fun b!1401706 () Bool)

(declare-fun res!633943 () Bool)

(assert (=> b!1401706 (=> (not res!633943) (not e!894926))))

(declare-fun size!11726 (List!14307) Int)

(assert (=> b!1401706 (= res!633943 (< (size!11726 (_2!7818 (get!4404 lt!467316))) (size!11726 lt!467188)))))

(declare-fun bm!93553 () Bool)

(declare-fun maxPrefixOneRule!643 (LexerInterface!2162 Rule!4734 List!14307) Option!2730)

(assert (=> bm!93553 (= call!93558 (maxPrefixOneRule!643 thiss!19762 (h!19643 rules!2550) lt!467188))))

(declare-fun b!1401707 () Bool)

(assert (=> b!1401707 (= e!894925 call!93558)))

(declare-fun b!1401708 () Bool)

(declare-fun res!633947 () Bool)

(assert (=> b!1401708 (=> (not res!633947) (not e!894926))))

(assert (=> b!1401708 (= res!633947 (= (++!3704 (list!5553 (charsOf!1439 (_1!7818 (get!4404 lt!467316)))) (_2!7818 (get!4404 lt!467316))) lt!467188))))

(assert (= (and d!400640 c!230640) b!1401707))

(assert (= (and d!400640 (not c!230640)) b!1401703))

(assert (= (or b!1401707 b!1401703) bm!93553))

(assert (= (and d!400640 (not res!633942)) b!1401705))

(assert (= (and b!1401705 res!633944) b!1401700))

(assert (= (and b!1401700 res!633945) b!1401706))

(assert (= (and b!1401706 res!633943) b!1401708))

(assert (= (and b!1401708 res!633947) b!1401701))

(assert (= (and b!1401701 res!633946) b!1401704))

(assert (= (and b!1401704 res!633941) b!1401702))

(declare-fun m!1578793 () Bool)

(assert (=> bm!93553 m!1578793))

(declare-fun m!1578795 () Bool)

(assert (=> b!1401704 m!1578795))

(declare-fun m!1578797 () Bool)

(assert (=> b!1401704 m!1578797))

(assert (=> b!1401704 m!1578797))

(declare-fun m!1578799 () Bool)

(assert (=> b!1401704 m!1578799))

(assert (=> b!1401704 m!1578799))

(declare-fun m!1578801 () Bool)

(assert (=> b!1401704 m!1578801))

(assert (=> b!1401706 m!1578795))

(declare-fun m!1578803 () Bool)

(assert (=> b!1401706 m!1578803))

(declare-fun m!1578805 () Bool)

(assert (=> b!1401706 m!1578805))

(assert (=> b!1401702 m!1578795))

(declare-fun m!1578807 () Bool)

(assert (=> b!1401702 m!1578807))

(assert (=> b!1401701 m!1578795))

(declare-fun m!1578809 () Bool)

(assert (=> b!1401701 m!1578809))

(assert (=> b!1401701 m!1578809))

(declare-fun m!1578811 () Bool)

(assert (=> b!1401701 m!1578811))

(assert (=> b!1401700 m!1578795))

(assert (=> b!1401700 m!1578797))

(assert (=> b!1401700 m!1578797))

(assert (=> b!1401700 m!1578799))

(assert (=> b!1401708 m!1578795))

(assert (=> b!1401708 m!1578797))

(assert (=> b!1401708 m!1578797))

(assert (=> b!1401708 m!1578799))

(assert (=> b!1401708 m!1578799))

(declare-fun m!1578813 () Bool)

(assert (=> b!1401708 m!1578813))

(declare-fun m!1578815 () Bool)

(assert (=> d!400640 m!1578815))

(declare-fun m!1578817 () Bool)

(assert (=> d!400640 m!1578817))

(declare-fun m!1578819 () Bool)

(assert (=> d!400640 m!1578819))

(declare-fun m!1578821 () Bool)

(assert (=> d!400640 m!1578821))

(declare-fun m!1578823 () Bool)

(assert (=> b!1401703 m!1578823))

(declare-fun m!1578825 () Bool)

(assert (=> b!1401705 m!1578825))

(assert (=> b!1401205 d!400640))

(declare-fun d!400674 () Bool)

(declare-fun list!5557 (Conc!4694) List!14307)

(assert (=> d!400674 (= (list!5553 lt!467169) (list!5557 (c!230522 lt!467169)))))

(declare-fun bs!338253 () Bool)

(assert (= bs!338253 d!400674))

(declare-fun m!1578827 () Bool)

(assert (=> bs!338253 m!1578827))

(assert (=> b!1401205 d!400674))

(declare-fun d!400676 () Bool)

(declare-fun res!633952 () Bool)

(declare-fun e!894929 () Bool)

(assert (=> d!400676 (=> (not res!633952) (not e!894929))))

(assert (=> d!400676 (= res!633952 (not (isEmpty!8664 (originalCharacters!3329 t1!34))))))

(assert (=> d!400676 (= (inv!18558 t1!34) e!894929)))

(declare-fun b!1401713 () Bool)

(declare-fun res!633953 () Bool)

(assert (=> b!1401713 (=> (not res!633953) (not e!894929))))

(declare-fun dynLambda!6592 (Int TokenValue!2557) BalanceConc!9328)

(assert (=> b!1401713 (= res!633953 (= (originalCharacters!3329 t1!34) (list!5553 (dynLambda!6592 (toChars!3617 (transformation!2467 (rule!4230 t1!34))) (value!79942 t1!34)))))))

(declare-fun b!1401714 () Bool)

(assert (=> b!1401714 (= e!894929 (= (size!11717 t1!34) (size!11726 (originalCharacters!3329 t1!34))))))

(assert (= (and d!400676 res!633952) b!1401713))

(assert (= (and b!1401713 res!633953) b!1401714))

(declare-fun b_lambda!44043 () Bool)

(assert (=> (not b_lambda!44043) (not b!1401713)))

(declare-fun t!122874 () Bool)

(declare-fun tb!73081 () Bool)

(assert (=> (and b!1401227 (= (toChars!3617 (transformation!2467 (rule!4230 t1!34))) (toChars!3617 (transformation!2467 (rule!4230 t1!34)))) t!122874) tb!73081))

(declare-fun b!1401719 () Bool)

(declare-fun e!894932 () Bool)

(declare-fun tp!398725 () Bool)

(declare-fun inv!18559 (Conc!4694) Bool)

(assert (=> b!1401719 (= e!894932 (and (inv!18559 (c!230522 (dynLambda!6592 (toChars!3617 (transformation!2467 (rule!4230 t1!34))) (value!79942 t1!34)))) tp!398725))))

(declare-fun result!88846 () Bool)

(declare-fun inv!18560 (BalanceConc!9328) Bool)

(assert (=> tb!73081 (= result!88846 (and (inv!18560 (dynLambda!6592 (toChars!3617 (transformation!2467 (rule!4230 t1!34))) (value!79942 t1!34))) e!894932))))

(assert (= tb!73081 b!1401719))

(declare-fun m!1578829 () Bool)

(assert (=> b!1401719 m!1578829))

(declare-fun m!1578831 () Bool)

(assert (=> tb!73081 m!1578831))

(assert (=> b!1401713 t!122874))

(declare-fun b_and!93831 () Bool)

(assert (= b_and!93821 (and (=> t!122874 result!88846) b_and!93831)))

(declare-fun t!122876 () Bool)

(declare-fun tb!73083 () Bool)

(assert (=> (and b!1401213 (= (toChars!3617 (transformation!2467 (rule!4230 t2!34))) (toChars!3617 (transformation!2467 (rule!4230 t1!34)))) t!122876) tb!73083))

(declare-fun result!88850 () Bool)

(assert (= result!88850 result!88846))

(assert (=> b!1401713 t!122876))

(declare-fun b_and!93833 () Bool)

(assert (= b_and!93825 (and (=> t!122876 result!88850) b_and!93833)))

(declare-fun t!122878 () Bool)

(declare-fun tb!73085 () Bool)

(assert (=> (and b!1401223 (= (toChars!3617 (transformation!2467 (h!19643 rules!2550))) (toChars!3617 (transformation!2467 (rule!4230 t1!34)))) t!122878) tb!73085))

(declare-fun result!88852 () Bool)

(assert (= result!88852 result!88846))

(assert (=> b!1401713 t!122878))

(declare-fun b_and!93835 () Bool)

(assert (= b_and!93829 (and (=> t!122878 result!88852) b_and!93835)))

(declare-fun m!1578833 () Bool)

(assert (=> d!400676 m!1578833))

(declare-fun m!1578835 () Bool)

(assert (=> b!1401713 m!1578835))

(assert (=> b!1401713 m!1578835))

(declare-fun m!1578837 () Bool)

(assert (=> b!1401713 m!1578837))

(declare-fun m!1578839 () Bool)

(assert (=> b!1401714 m!1578839))

(assert (=> start!127686 d!400676))

(declare-fun d!400678 () Bool)

(declare-fun res!633954 () Bool)

(declare-fun e!894933 () Bool)

(assert (=> d!400678 (=> (not res!633954) (not e!894933))))

(assert (=> d!400678 (= res!633954 (not (isEmpty!8664 (originalCharacters!3329 t2!34))))))

(assert (=> d!400678 (= (inv!18558 t2!34) e!894933)))

(declare-fun b!1401720 () Bool)

(declare-fun res!633955 () Bool)

(assert (=> b!1401720 (=> (not res!633955) (not e!894933))))

(assert (=> b!1401720 (= res!633955 (= (originalCharacters!3329 t2!34) (list!5553 (dynLambda!6592 (toChars!3617 (transformation!2467 (rule!4230 t2!34))) (value!79942 t2!34)))))))

(declare-fun b!1401721 () Bool)

(assert (=> b!1401721 (= e!894933 (= (size!11717 t2!34) (size!11726 (originalCharacters!3329 t2!34))))))

(assert (= (and d!400678 res!633954) b!1401720))

(assert (= (and b!1401720 res!633955) b!1401721))

(declare-fun b_lambda!44045 () Bool)

(assert (=> (not b_lambda!44045) (not b!1401720)))

(declare-fun t!122880 () Bool)

(declare-fun tb!73087 () Bool)

(assert (=> (and b!1401227 (= (toChars!3617 (transformation!2467 (rule!4230 t1!34))) (toChars!3617 (transformation!2467 (rule!4230 t2!34)))) t!122880) tb!73087))

(declare-fun b!1401722 () Bool)

(declare-fun e!894934 () Bool)

(declare-fun tp!398726 () Bool)

(assert (=> b!1401722 (= e!894934 (and (inv!18559 (c!230522 (dynLambda!6592 (toChars!3617 (transformation!2467 (rule!4230 t2!34))) (value!79942 t2!34)))) tp!398726))))

(declare-fun result!88854 () Bool)

(assert (=> tb!73087 (= result!88854 (and (inv!18560 (dynLambda!6592 (toChars!3617 (transformation!2467 (rule!4230 t2!34))) (value!79942 t2!34))) e!894934))))

(assert (= tb!73087 b!1401722))

(declare-fun m!1578841 () Bool)

(assert (=> b!1401722 m!1578841))

(declare-fun m!1578843 () Bool)

(assert (=> tb!73087 m!1578843))

(assert (=> b!1401720 t!122880))

(declare-fun b_and!93837 () Bool)

(assert (= b_and!93831 (and (=> t!122880 result!88854) b_and!93837)))

(declare-fun t!122882 () Bool)

(declare-fun tb!73089 () Bool)

(assert (=> (and b!1401213 (= (toChars!3617 (transformation!2467 (rule!4230 t2!34))) (toChars!3617 (transformation!2467 (rule!4230 t2!34)))) t!122882) tb!73089))

(declare-fun result!88856 () Bool)

(assert (= result!88856 result!88854))

(assert (=> b!1401720 t!122882))

(declare-fun b_and!93839 () Bool)

(assert (= b_and!93833 (and (=> t!122882 result!88856) b_and!93839)))

(declare-fun t!122884 () Bool)

(declare-fun tb!73091 () Bool)

(assert (=> (and b!1401223 (= (toChars!3617 (transformation!2467 (h!19643 rules!2550))) (toChars!3617 (transformation!2467 (rule!4230 t2!34)))) t!122884) tb!73091))

(declare-fun result!88858 () Bool)

(assert (= result!88858 result!88854))

(assert (=> b!1401720 t!122884))

(declare-fun b_and!93841 () Bool)

(assert (= b_and!93835 (and (=> t!122884 result!88858) b_and!93841)))

(declare-fun m!1578845 () Bool)

(assert (=> d!400678 m!1578845))

(declare-fun m!1578847 () Bool)

(assert (=> b!1401720 m!1578847))

(assert (=> b!1401720 m!1578847))

(declare-fun m!1578849 () Bool)

(assert (=> b!1401720 m!1578849))

(declare-fun m!1578851 () Bool)

(assert (=> b!1401721 m!1578851))

(assert (=> start!127686 d!400678))

(declare-fun b!1401733 () Bool)

(declare-fun e!894941 () Bool)

(declare-fun lt!467327 () tuple2!13862)

(declare-fun isEmpty!8667 (List!14309) Bool)

(assert (=> b!1401733 (= e!894941 (not (isEmpty!8667 (_1!7817 lt!467327))))))

(declare-fun b!1401734 () Bool)

(declare-fun e!894942 () tuple2!13862)

(assert (=> b!1401734 (= e!894942 (tuple2!13863 Nil!14243 (list!5553 lt!467187)))))

(declare-fun b!1401735 () Bool)

(declare-fun lt!467326 () Option!2730)

(declare-fun lt!467328 () tuple2!13862)

(assert (=> b!1401735 (= e!894942 (tuple2!13863 (Cons!14243 (_1!7818 (v!21665 lt!467326)) (_1!7817 lt!467328)) (_2!7817 lt!467328)))))

(assert (=> b!1401735 (= lt!467328 (lexList!676 thiss!19762 rules!2550 (_2!7818 (v!21665 lt!467326))))))

(declare-fun b!1401736 () Bool)

(declare-fun e!894943 () Bool)

(assert (=> b!1401736 (= e!894943 (= (_2!7817 lt!467327) (list!5553 lt!467187)))))

(declare-fun b!1401737 () Bool)

(assert (=> b!1401737 (= e!894943 e!894941)))

(declare-fun res!633958 () Bool)

(assert (=> b!1401737 (= res!633958 (< (size!11726 (_2!7817 lt!467327)) (size!11726 (list!5553 lt!467187))))))

(assert (=> b!1401737 (=> (not res!633958) (not e!894941))))

(declare-fun d!400680 () Bool)

(assert (=> d!400680 e!894943))

(declare-fun c!230646 () Bool)

(declare-fun size!11727 (List!14309) Int)

(assert (=> d!400680 (= c!230646 (> (size!11727 (_1!7817 lt!467327)) 0))))

(assert (=> d!400680 (= lt!467327 e!894942)))

(declare-fun c!230645 () Bool)

(assert (=> d!400680 (= c!230645 ((_ is Some!2729) lt!467326))))

(assert (=> d!400680 (= lt!467326 (maxPrefix!1136 thiss!19762 rules!2550 (list!5553 lt!467187)))))

(assert (=> d!400680 (= (lexList!676 thiss!19762 rules!2550 (list!5553 lt!467187)) lt!467327)))

(assert (= (and d!400680 c!230645) b!1401735))

(assert (= (and d!400680 (not c!230645)) b!1401734))

(assert (= (and d!400680 c!230646) b!1401737))

(assert (= (and d!400680 (not c!230646)) b!1401736))

(assert (= (and b!1401737 res!633958) b!1401733))

(declare-fun m!1578853 () Bool)

(assert (=> b!1401733 m!1578853))

(declare-fun m!1578855 () Bool)

(assert (=> b!1401735 m!1578855))

(declare-fun m!1578857 () Bool)

(assert (=> b!1401737 m!1578857))

(assert (=> b!1401737 m!1578225))

(declare-fun m!1578859 () Bool)

(assert (=> b!1401737 m!1578859))

(declare-fun m!1578861 () Bool)

(assert (=> d!400680 m!1578861))

(assert (=> d!400680 m!1578225))

(declare-fun m!1578863 () Bool)

(assert (=> d!400680 m!1578863))

(assert (=> b!1401183 d!400680))

(declare-fun d!400682 () Bool)

(assert (=> d!400682 (= (list!5553 lt!467187) (list!5557 (c!230522 lt!467187)))))

(declare-fun bs!338254 () Bool)

(assert (= bs!338254 d!400682))

(declare-fun m!1578865 () Bool)

(assert (=> bs!338254 m!1578865))

(assert (=> b!1401183 d!400682))

(declare-fun d!400684 () Bool)

(declare-fun res!633961 () Bool)

(declare-fun e!894946 () Bool)

(assert (=> d!400684 (=> (not res!633961) (not e!894946))))

(declare-fun rulesValid!929 (LexerInterface!2162 List!14308) Bool)

(assert (=> d!400684 (= res!633961 (rulesValid!929 thiss!19762 rules!2550))))

(assert (=> d!400684 (= (rulesInvariant!2032 thiss!19762 rules!2550) e!894946)))

(declare-fun b!1401740 () Bool)

(declare-datatypes ((List!14312 0))(
  ( (Nil!14246) (Cons!14246 (h!19647 String!17021) (t!122909 List!14312)) )
))
(declare-fun noDuplicateTag!929 (LexerInterface!2162 List!14308 List!14312) Bool)

(assert (=> b!1401740 (= e!894946 (noDuplicateTag!929 thiss!19762 rules!2550 Nil!14246))))

(assert (= (and d!400684 res!633961) b!1401740))

(declare-fun m!1578867 () Bool)

(assert (=> d!400684 m!1578867))

(declare-fun m!1578869 () Bool)

(assert (=> b!1401740 m!1578869))

(assert (=> b!1401182 d!400684))

(declare-fun b!1401741 () Bool)

(declare-fun res!633966 () Bool)

(declare-fun e!894949 () Bool)

(assert (=> b!1401741 (=> (not res!633966) (not e!894949))))

(declare-fun lt!467330 () Option!2730)

(assert (=> b!1401741 (= res!633966 (= (list!5553 (charsOf!1439 (_1!7818 (get!4404 lt!467330)))) (originalCharacters!3329 (_1!7818 (get!4404 lt!467330)))))))

(declare-fun b!1401742 () Bool)

(declare-fun res!633967 () Bool)

(assert (=> b!1401742 (=> (not res!633967) (not e!894949))))

(assert (=> b!1401742 (= res!633967 (= (value!79942 (_1!7818 (get!4404 lt!467330))) (apply!3629 (transformation!2467 (rule!4230 (_1!7818 (get!4404 lt!467330)))) (seqFromList!1661 (originalCharacters!3329 (_1!7818 (get!4404 lt!467330)))))))))

(declare-fun d!400686 () Bool)

(declare-fun e!894947 () Bool)

(assert (=> d!400686 e!894947))

(declare-fun res!633963 () Bool)

(assert (=> d!400686 (=> res!633963 e!894947)))

(assert (=> d!400686 (= res!633963 (isEmpty!8666 lt!467330))))

(declare-fun e!894948 () Option!2730)

(assert (=> d!400686 (= lt!467330 e!894948)))

(declare-fun c!230647 () Bool)

(assert (=> d!400686 (= c!230647 (and ((_ is Cons!14242) rules!2550) ((_ is Nil!14242) (t!122869 rules!2550))))))

(declare-fun lt!467329 () Unit!20569)

(declare-fun lt!467331 () Unit!20569)

(assert (=> d!400686 (= lt!467329 lt!467331)))

(assert (=> d!400686 (isPrefix!1158 lt!467162 lt!467162)))

(assert (=> d!400686 (= lt!467331 (lemmaIsPrefixRefl!817 lt!467162 lt!467162))))

(assert (=> d!400686 (rulesValidInductive!800 thiss!19762 rules!2550)))

(assert (=> d!400686 (= (maxPrefix!1136 thiss!19762 rules!2550 lt!467162) lt!467330)))

(declare-fun b!1401743 () Bool)

(assert (=> b!1401743 (= e!894949 (contains!2784 rules!2550 (rule!4230 (_1!7818 (get!4404 lt!467330)))))))

(declare-fun b!1401744 () Bool)

(declare-fun lt!467332 () Option!2730)

(declare-fun lt!467333 () Option!2730)

(assert (=> b!1401744 (= e!894948 (ite (and ((_ is None!2729) lt!467332) ((_ is None!2729) lt!467333)) None!2729 (ite ((_ is None!2729) lt!467333) lt!467332 (ite ((_ is None!2729) lt!467332) lt!467333 (ite (>= (size!11717 (_1!7818 (v!21665 lt!467332))) (size!11717 (_1!7818 (v!21665 lt!467333)))) lt!467332 lt!467333)))))))

(declare-fun call!93559 () Option!2730)

(assert (=> b!1401744 (= lt!467332 call!93559)))

(assert (=> b!1401744 (= lt!467333 (maxPrefix!1136 thiss!19762 (t!122869 rules!2550) lt!467162))))

(declare-fun b!1401745 () Bool)

(declare-fun res!633962 () Bool)

(assert (=> b!1401745 (=> (not res!633962) (not e!894949))))

(assert (=> b!1401745 (= res!633962 (matchR!1772 (regex!2467 (rule!4230 (_1!7818 (get!4404 lt!467330)))) (list!5553 (charsOf!1439 (_1!7818 (get!4404 lt!467330))))))))

(declare-fun b!1401746 () Bool)

(assert (=> b!1401746 (= e!894947 e!894949)))

(declare-fun res!633965 () Bool)

(assert (=> b!1401746 (=> (not res!633965) (not e!894949))))

(assert (=> b!1401746 (= res!633965 (isDefined!2245 lt!467330))))

(declare-fun b!1401747 () Bool)

(declare-fun res!633964 () Bool)

(assert (=> b!1401747 (=> (not res!633964) (not e!894949))))

(assert (=> b!1401747 (= res!633964 (< (size!11726 (_2!7818 (get!4404 lt!467330))) (size!11726 lt!467162)))))

(declare-fun bm!93554 () Bool)

(assert (=> bm!93554 (= call!93559 (maxPrefixOneRule!643 thiss!19762 (h!19643 rules!2550) lt!467162))))

(declare-fun b!1401748 () Bool)

(assert (=> b!1401748 (= e!894948 call!93559)))

(declare-fun b!1401749 () Bool)

(declare-fun res!633968 () Bool)

(assert (=> b!1401749 (=> (not res!633968) (not e!894949))))

(assert (=> b!1401749 (= res!633968 (= (++!3704 (list!5553 (charsOf!1439 (_1!7818 (get!4404 lt!467330)))) (_2!7818 (get!4404 lt!467330))) lt!467162))))

(assert (= (and d!400686 c!230647) b!1401748))

(assert (= (and d!400686 (not c!230647)) b!1401744))

(assert (= (or b!1401748 b!1401744) bm!93554))

(assert (= (and d!400686 (not res!633963)) b!1401746))

(assert (= (and b!1401746 res!633965) b!1401741))

(assert (= (and b!1401741 res!633966) b!1401747))

(assert (= (and b!1401747 res!633964) b!1401749))

(assert (= (and b!1401749 res!633968) b!1401742))

(assert (= (and b!1401742 res!633967) b!1401745))

(assert (= (and b!1401745 res!633962) b!1401743))

(declare-fun m!1578871 () Bool)

(assert (=> bm!93554 m!1578871))

(declare-fun m!1578873 () Bool)

(assert (=> b!1401745 m!1578873))

(declare-fun m!1578875 () Bool)

(assert (=> b!1401745 m!1578875))

(assert (=> b!1401745 m!1578875))

(declare-fun m!1578877 () Bool)

(assert (=> b!1401745 m!1578877))

(assert (=> b!1401745 m!1578877))

(declare-fun m!1578879 () Bool)

(assert (=> b!1401745 m!1578879))

(assert (=> b!1401747 m!1578873))

(declare-fun m!1578881 () Bool)

(assert (=> b!1401747 m!1578881))

(declare-fun m!1578883 () Bool)

(assert (=> b!1401747 m!1578883))

(assert (=> b!1401743 m!1578873))

(declare-fun m!1578885 () Bool)

(assert (=> b!1401743 m!1578885))

(assert (=> b!1401742 m!1578873))

(declare-fun m!1578887 () Bool)

(assert (=> b!1401742 m!1578887))

(assert (=> b!1401742 m!1578887))

(declare-fun m!1578889 () Bool)

(assert (=> b!1401742 m!1578889))

(assert (=> b!1401741 m!1578873))

(assert (=> b!1401741 m!1578875))

(assert (=> b!1401741 m!1578875))

(assert (=> b!1401741 m!1578877))

(assert (=> b!1401749 m!1578873))

(assert (=> b!1401749 m!1578875))

(assert (=> b!1401749 m!1578875))

(assert (=> b!1401749 m!1578877))

(assert (=> b!1401749 m!1578877))

(declare-fun m!1578891 () Bool)

(assert (=> b!1401749 m!1578891))

(declare-fun m!1578893 () Bool)

(assert (=> d!400686 m!1578893))

(declare-fun m!1578895 () Bool)

(assert (=> d!400686 m!1578895))

(declare-fun m!1578897 () Bool)

(assert (=> d!400686 m!1578897))

(assert (=> d!400686 m!1578821))

(declare-fun m!1578899 () Bool)

(assert (=> b!1401744 m!1578899))

(declare-fun m!1578901 () Bool)

(assert (=> b!1401746 m!1578901))

(assert (=> b!1401225 d!400686))

(declare-fun d!400688 () Bool)

(declare-fun lt!467336 () BalanceConc!9328)

(declare-fun printList!638 (LexerInterface!2162 List!14309) List!14307)

(assert (=> d!400688 (= (list!5553 lt!467336) (printList!638 thiss!19762 (list!5554 (singletonSeq!1128 t1!34))))))

(declare-fun printTailRec!620 (LexerInterface!2162 BalanceConc!9330 Int BalanceConc!9328) BalanceConc!9328)

(assert (=> d!400688 (= lt!467336 (printTailRec!620 thiss!19762 (singletonSeq!1128 t1!34) 0 (BalanceConc!9329 Empty!4694)))))

(assert (=> d!400688 (= (print!926 thiss!19762 (singletonSeq!1128 t1!34)) lt!467336)))

(declare-fun bs!338255 () Bool)

(assert (= bs!338255 d!400688))

(declare-fun m!1578903 () Bool)

(assert (=> bs!338255 m!1578903))

(assert (=> bs!338255 m!1578265))

(declare-fun m!1578905 () Bool)

(assert (=> bs!338255 m!1578905))

(assert (=> bs!338255 m!1578905))

(declare-fun m!1578907 () Bool)

(assert (=> bs!338255 m!1578907))

(assert (=> bs!338255 m!1578265))

(declare-fun m!1578909 () Bool)

(assert (=> bs!338255 m!1578909))

(assert (=> b!1401224 d!400688))

(declare-fun d!400690 () Bool)

(declare-fun e!894992 () Bool)

(assert (=> d!400690 e!894992))

(declare-fun res!634006 () Bool)

(assert (=> d!400690 (=> (not res!634006) (not e!894992))))

(declare-fun e!894993 () Bool)

(assert (=> d!400690 (= res!634006 e!894993)))

(declare-fun c!230660 () Bool)

(declare-fun lt!467369 () tuple2!13866)

(declare-fun size!11728 (BalanceConc!9330) Int)

(assert (=> d!400690 (= c!230660 (> (size!11728 (_1!7819 lt!467369)) 0))))

(declare-fun lexTailRecV2!443 (LexerInterface!2162 List!14308 BalanceConc!9328 BalanceConc!9328 BalanceConc!9328 BalanceConc!9330) tuple2!13866)

(assert (=> d!400690 (= lt!467369 (lexTailRecV2!443 thiss!19762 rules!2550 lt!467161 (BalanceConc!9329 Empty!4694) lt!467161 (BalanceConc!9331 Empty!4695)))))

(assert (=> d!400690 (= (lex!987 thiss!19762 rules!2550 lt!467161) lt!467369)))

(declare-fun b!1401816 () Bool)

(assert (=> b!1401816 (= e!894992 (= (list!5553 (_2!7819 lt!467369)) (_2!7817 (lexList!676 thiss!19762 rules!2550 (list!5553 lt!467161)))))))

(declare-fun b!1401817 () Bool)

(declare-fun res!634005 () Bool)

(assert (=> b!1401817 (=> (not res!634005) (not e!894992))))

(assert (=> b!1401817 (= res!634005 (= (list!5554 (_1!7819 lt!467369)) (_1!7817 (lexList!676 thiss!19762 rules!2550 (list!5553 lt!467161)))))))

(declare-fun b!1401818 () Bool)

(assert (=> b!1401818 (= e!894993 (= (_2!7819 lt!467369) lt!467161))))

(declare-fun b!1401819 () Bool)

(declare-fun e!894991 () Bool)

(assert (=> b!1401819 (= e!894993 e!894991)))

(declare-fun res!634004 () Bool)

(assert (=> b!1401819 (= res!634004 (< (size!11718 (_2!7819 lt!467369)) (size!11718 lt!467161)))))

(assert (=> b!1401819 (=> (not res!634004) (not e!894991))))

(declare-fun b!1401821 () Bool)

(declare-fun isEmpty!8668 (BalanceConc!9330) Bool)

(assert (=> b!1401821 (= e!894991 (not (isEmpty!8668 (_1!7819 lt!467369))))))

(assert (= (and d!400690 c!230660) b!1401819))

(assert (= (and d!400690 (not c!230660)) b!1401818))

(assert (= (and b!1401819 res!634004) b!1401821))

(assert (= (and d!400690 res!634006) b!1401817))

(assert (= (and b!1401817 res!634005) b!1401816))

(declare-fun m!1579023 () Bool)

(assert (=> b!1401821 m!1579023))

(declare-fun m!1579025 () Bool)

(assert (=> b!1401817 m!1579025))

(assert (=> b!1401817 m!1578355))

(assert (=> b!1401817 m!1578355))

(assert (=> b!1401817 m!1578357))

(declare-fun m!1579027 () Bool)

(assert (=> b!1401816 m!1579027))

(assert (=> b!1401816 m!1578355))

(assert (=> b!1401816 m!1578355))

(assert (=> b!1401816 m!1578357))

(declare-fun m!1579029 () Bool)

(assert (=> b!1401819 m!1579029))

(declare-fun m!1579031 () Bool)

(assert (=> b!1401819 m!1579031))

(declare-fun m!1579033 () Bool)

(assert (=> d!400690 m!1579033))

(declare-fun m!1579035 () Bool)

(assert (=> d!400690 m!1579035))

(assert (=> b!1401224 d!400690))

(declare-fun d!400732 () Bool)

(declare-fun list!5558 (Conc!4695) List!14309)

(assert (=> d!400732 (= (list!5554 (_1!7819 lt!467186)) (list!5558 (c!230524 (_1!7819 lt!467186))))))

(declare-fun bs!338269 () Bool)

(assert (= bs!338269 d!400732))

(declare-fun m!1579037 () Bool)

(assert (=> bs!338269 m!1579037))

(assert (=> b!1401224 d!400732))

(declare-fun b!1401844 () Bool)

(declare-fun e!895009 () Rule!4734)

(declare-fun e!895012 () Rule!4734)

(assert (=> b!1401844 (= e!895009 e!895012)))

(declare-fun c!230666 () Bool)

(assert (=> b!1401844 (= c!230666 ((_ is Cons!14242) rules!2550))))

(declare-fun b!1401845 () Bool)

(declare-fun lt!467382 () Unit!20569)

(declare-fun Unit!20577 () Unit!20569)

(assert (=> b!1401845 (= lt!467382 Unit!20577)))

(assert (=> b!1401845 false))

(declare-fun head!2596 (List!14308) Rule!4734)

(assert (=> b!1401845 (= e!895012 (head!2596 rules!2550))))

(declare-fun b!1401846 () Bool)

(assert (=> b!1401846 (= e!895009 (h!19643 rules!2550))))

(declare-fun b!1401847 () Bool)

(declare-fun e!895011 () Bool)

(assert (=> b!1401847 (= e!895011 (dynLambda!6588 lambda!61384 (h!19643 rules!2550)))))

(declare-fun b!1401848 () Bool)

(declare-fun e!895010 () Bool)

(declare-fun lt!467381 () Rule!4734)

(assert (=> b!1401848 (= e!895010 (contains!2784 rules!2550 lt!467381))))

(declare-fun d!400734 () Bool)

(assert (=> d!400734 e!895010))

(declare-fun res!634021 () Bool)

(assert (=> d!400734 (=> (not res!634021) (not e!895010))))

(assert (=> d!400734 (= res!634021 (dynLambda!6588 lambda!61384 lt!467381))))

(assert (=> d!400734 (= lt!467381 e!895009)))

(declare-fun c!230665 () Bool)

(assert (=> d!400734 (= c!230665 e!895011)))

(declare-fun res!634022 () Bool)

(assert (=> d!400734 (=> (not res!634022) (not e!895011))))

(assert (=> d!400734 (= res!634022 ((_ is Cons!14242) rules!2550))))

(assert (=> d!400734 (exists!579 rules!2550 lambda!61384)))

(assert (=> d!400734 (= (getWitness!467 rules!2550 lambda!61384) lt!467381)))

(declare-fun b!1401849 () Bool)

(assert (=> b!1401849 (= e!895012 (getWitness!467 (t!122869 rules!2550) lambda!61384))))

(assert (= (and d!400734 res!634022) b!1401847))

(assert (= (and d!400734 c!230665) b!1401846))

(assert (= (and d!400734 (not c!230665)) b!1401844))

(assert (= (and b!1401844 c!230666) b!1401849))

(assert (= (and b!1401844 (not c!230666)) b!1401845))

(assert (= (and d!400734 res!634021) b!1401848))

(declare-fun b_lambda!44057 () Bool)

(assert (=> (not b_lambda!44057) (not b!1401847)))

(declare-fun b_lambda!44059 () Bool)

(assert (=> (not b_lambda!44059) (not d!400734)))

(declare-fun m!1579071 () Bool)

(assert (=> b!1401845 m!1579071))

(declare-fun m!1579073 () Bool)

(assert (=> b!1401847 m!1579073))

(declare-fun m!1579075 () Bool)

(assert (=> b!1401848 m!1579075))

(declare-fun m!1579077 () Bool)

(assert (=> b!1401849 m!1579077))

(declare-fun m!1579079 () Bool)

(assert (=> d!400734 m!1579079))

(assert (=> d!400734 m!1578221))

(assert (=> b!1401224 d!400734))

(declare-fun d!400750 () Bool)

(declare-fun e!895021 () Bool)

(assert (=> d!400750 e!895021))

(declare-fun res!634031 () Bool)

(assert (=> d!400750 (=> (not res!634031) (not e!895021))))

(declare-fun lt!467385 () BalanceConc!9330)

(assert (=> d!400750 (= res!634031 (= (list!5554 lt!467385) (Cons!14243 t1!34 Nil!14243)))))

(declare-fun singleton!494 (Token!4596) BalanceConc!9330)

(assert (=> d!400750 (= lt!467385 (singleton!494 t1!34))))

(assert (=> d!400750 (= (singletonSeq!1128 t1!34) lt!467385)))

(declare-fun b!1401858 () Bool)

(declare-fun isBalanced!1388 (Conc!4695) Bool)

(assert (=> b!1401858 (= e!895021 (isBalanced!1388 (c!230524 lt!467385)))))

(assert (= (and d!400750 res!634031) b!1401858))

(declare-fun m!1579085 () Bool)

(assert (=> d!400750 m!1579085))

(declare-fun m!1579087 () Bool)

(assert (=> d!400750 m!1579087))

(declare-fun m!1579089 () Bool)

(assert (=> b!1401858 m!1579089))

(assert (=> b!1401224 d!400750))

(declare-fun d!400754 () Bool)

(assert (=> d!400754 (= (inv!18554 (tag!2729 (rule!4230 t2!34))) (= (mod (str.len (value!79941 (tag!2729 (rule!4230 t2!34)))) 2) 0))))

(assert (=> b!1401203 d!400754))

(declare-fun d!400756 () Bool)

(declare-fun res!634032 () Bool)

(declare-fun e!895022 () Bool)

(assert (=> d!400756 (=> (not res!634032) (not e!895022))))

(assert (=> d!400756 (= res!634032 (semiInverseModEq!960 (toChars!3617 (transformation!2467 (rule!4230 t2!34))) (toValue!3758 (transformation!2467 (rule!4230 t2!34)))))))

(assert (=> d!400756 (= (inv!18557 (transformation!2467 (rule!4230 t2!34))) e!895022)))

(declare-fun b!1401859 () Bool)

(assert (=> b!1401859 (= e!895022 (equivClasses!919 (toChars!3617 (transformation!2467 (rule!4230 t2!34))) (toValue!3758 (transformation!2467 (rule!4230 t2!34)))))))

(assert (= (and d!400756 res!634032) b!1401859))

(declare-fun m!1579091 () Bool)

(assert (=> d!400756 m!1579091))

(declare-fun m!1579093 () Bool)

(assert (=> b!1401859 m!1579093))

(assert (=> b!1401203 d!400756))

(declare-fun d!400758 () Bool)

(assert (=> d!400758 (not (matchR!1772 (regex!2467 (rule!4230 t2!34)) lt!467188))))

(declare-fun lt!467388 () Unit!20569)

(declare-fun choose!8651 (Regex!3781 List!14307 C!7852) Unit!20569)

(assert (=> d!400758 (= lt!467388 (choose!8651 (regex!2467 (rule!4230 t2!34)) lt!467188 (head!2593 lt!467188)))))

(assert (=> d!400758 (validRegex!1655 (regex!2467 (rule!4230 t2!34)))))

(assert (=> d!400758 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!212 (regex!2467 (rule!4230 t2!34)) lt!467188 (head!2593 lt!467188)) lt!467388)))

(declare-fun bs!338273 () Bool)

(assert (= bs!338273 d!400758))

(assert (=> bs!338273 m!1578219))

(assert (=> bs!338273 m!1578197))

(declare-fun m!1579095 () Bool)

(assert (=> bs!338273 m!1579095))

(assert (=> bs!338273 m!1578559))

(assert (=> b!1401202 d!400758))

(declare-fun d!400760 () Bool)

(assert (=> d!400760 (= (head!2593 lt!467188) (h!19642 lt!467188))))

(assert (=> b!1401202 d!400760))

(declare-fun d!400762 () Bool)

(declare-fun prefixMatchZipperSequence!301 (Regex!3781 BalanceConc!9328) Bool)

(declare-fun ++!3705 (BalanceConc!9328 BalanceConc!9328) BalanceConc!9328)

(declare-fun singletonSeq!1129 (C!7852) BalanceConc!9328)

(assert (=> d!400762 (= (separableTokensPredicate!445 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!301 (rulesRegex!350 thiss!19762 rules!2550) (++!3705 (charsOf!1439 t1!34) (singletonSeq!1129 (apply!3627 (charsOf!1439 t2!34) 0))))))))

(declare-fun bs!338278 () Bool)

(assert (= bs!338278 d!400762))

(assert (=> bs!338278 m!1578303))

(assert (=> bs!338278 m!1578297))

(declare-fun m!1579111 () Bool)

(assert (=> bs!338278 m!1579111))

(declare-fun m!1579113 () Bool)

(assert (=> bs!338278 m!1579113))

(assert (=> bs!338278 m!1578297))

(assert (=> bs!338278 m!1578259))

(declare-fun m!1579115 () Bool)

(assert (=> bs!338278 m!1579115))

(declare-fun m!1579117 () Bool)

(assert (=> bs!338278 m!1579117))

(assert (=> bs!338278 m!1578259))

(assert (=> bs!338278 m!1579115))

(assert (=> bs!338278 m!1578303))

(assert (=> bs!338278 m!1579117))

(assert (=> bs!338278 m!1579111))

(assert (=> b!1401181 d!400762))

(declare-fun d!400772 () Bool)

(declare-fun lt!467396 () Bool)

(declare-fun content!2116 (List!14310) (InoxSet Regex!3781))

(assert (=> d!400772 (= lt!467396 (select (content!2116 (map!3161 rules!2550 lambda!61382)) lt!467171))))

(declare-fun e!895033 () Bool)

(assert (=> d!400772 (= lt!467396 e!895033)))

(declare-fun res!634042 () Bool)

(assert (=> d!400772 (=> (not res!634042) (not e!895033))))

(assert (=> d!400772 (= res!634042 ((_ is Cons!14244) (map!3161 rules!2550 lambda!61382)))))

(assert (=> d!400772 (= (contains!2785 (map!3161 rules!2550 lambda!61382) lt!467171) lt!467396)))

(declare-fun b!1401879 () Bool)

(declare-fun e!895034 () Bool)

(assert (=> b!1401879 (= e!895033 e!895034)))

(declare-fun res!634043 () Bool)

(assert (=> b!1401879 (=> res!634043 e!895034)))

(assert (=> b!1401879 (= res!634043 (= (h!19645 (map!3161 rules!2550 lambda!61382)) lt!467171))))

(declare-fun b!1401880 () Bool)

(assert (=> b!1401880 (= e!895034 (contains!2785 (t!122871 (map!3161 rules!2550 lambda!61382)) lt!467171))))

(assert (= (and d!400772 res!634042) b!1401879))

(assert (= (and b!1401879 (not res!634043)) b!1401880))

(assert (=> d!400772 m!1578209))

(declare-fun m!1579139 () Bool)

(assert (=> d!400772 m!1579139))

(declare-fun m!1579141 () Bool)

(assert (=> d!400772 m!1579141))

(declare-fun m!1579143 () Bool)

(assert (=> b!1401880 m!1579143))

(assert (=> b!1401222 d!400772))

(assert (=> b!1401222 d!400630))

(declare-fun b!1401937 () Bool)

(declare-fun e!895067 () Regex!3781)

(declare-fun e!895068 () Regex!3781)

(assert (=> b!1401937 (= e!895067 e!895068)))

(declare-fun c!230677 () Bool)

(assert (=> b!1401937 (= c!230677 ((_ is Cons!14244) (map!3161 rules!2550 lambda!61382)))))

(declare-fun d!400778 () Bool)

(declare-fun e!895070 () Bool)

(assert (=> d!400778 e!895070))

(declare-fun res!634049 () Bool)

(assert (=> d!400778 (=> (not res!634049) (not e!895070))))

(declare-fun lt!467404 () Regex!3781)

(declare-fun dynLambda!6595 (Int Regex!3781) Bool)

(assert (=> d!400778 (= res!634049 (dynLambda!6595 lambda!61383 lt!467404))))

(assert (=> d!400778 (= lt!467404 e!895067)))

(declare-fun c!230676 () Bool)

(declare-fun e!895069 () Bool)

(assert (=> d!400778 (= c!230676 e!895069)))

(declare-fun res!634050 () Bool)

(assert (=> d!400778 (=> (not res!634050) (not e!895069))))

(assert (=> d!400778 (= res!634050 ((_ is Cons!14244) (map!3161 rules!2550 lambda!61382)))))

(assert (=> d!400778 (exists!578 (map!3161 rules!2550 lambda!61382) lambda!61383)))

(assert (=> d!400778 (= (getWitness!466 (map!3161 rules!2550 lambda!61382) lambda!61383) lt!467404)))

(declare-fun b!1401938 () Bool)

(assert (=> b!1401938 (= e!895069 (dynLambda!6595 lambda!61383 (h!19645 (map!3161 rules!2550 lambda!61382))))))

(declare-fun b!1401939 () Bool)

(assert (=> b!1401939 (= e!895070 (contains!2785 (map!3161 rules!2550 lambda!61382) lt!467404))))

(declare-fun b!1401940 () Bool)

(assert (=> b!1401940 (= e!895068 (getWitness!466 (t!122871 (map!3161 rules!2550 lambda!61382)) lambda!61383))))

(declare-fun b!1401941 () Bool)

(assert (=> b!1401941 (= e!895067 (h!19645 (map!3161 rules!2550 lambda!61382)))))

(declare-fun b!1401942 () Bool)

(declare-fun lt!467405 () Unit!20569)

(declare-fun Unit!20578 () Unit!20569)

(assert (=> b!1401942 (= lt!467405 Unit!20578)))

(assert (=> b!1401942 false))

(declare-fun head!2597 (List!14310) Regex!3781)

(assert (=> b!1401942 (= e!895068 (head!2597 (map!3161 rules!2550 lambda!61382)))))

(assert (= (and d!400778 res!634050) b!1401938))

(assert (= (and d!400778 c!230676) b!1401941))

(assert (= (and d!400778 (not c!230676)) b!1401937))

(assert (= (and b!1401937 c!230677) b!1401940))

(assert (= (and b!1401937 (not c!230677)) b!1401942))

(assert (= (and d!400778 res!634049) b!1401939))

(declare-fun b_lambda!44087 () Bool)

(assert (=> (not b_lambda!44087) (not d!400778)))

(declare-fun b_lambda!44089 () Bool)

(assert (=> (not b_lambda!44089) (not b!1401938)))

(assert (=> b!1401939 m!1578209))

(declare-fun m!1579167 () Bool)

(assert (=> b!1401939 m!1579167))

(declare-fun m!1579169 () Bool)

(assert (=> b!1401938 m!1579169))

(declare-fun m!1579171 () Bool)

(assert (=> d!400778 m!1579171))

(assert (=> d!400778 m!1578209))

(assert (=> d!400778 m!1578251))

(declare-fun m!1579173 () Bool)

(assert (=> b!1401940 m!1579173))

(assert (=> b!1401942 m!1578209))

(declare-fun m!1579177 () Bool)

(assert (=> b!1401942 m!1579177))

(assert (=> b!1401222 d!400778))

(declare-fun d!400794 () Bool)

(declare-fun lt!467406 () Bool)

(assert (=> d!400794 (= lt!467406 (select (content!2115 lt!467174) lt!467179))))

(declare-fun e!895072 () Bool)

(assert (=> d!400794 (= lt!467406 e!895072)))

(declare-fun res!634051 () Bool)

(assert (=> d!400794 (=> (not res!634051) (not e!895072))))

(assert (=> d!400794 (= res!634051 ((_ is Cons!14241) lt!467174))))

(assert (=> d!400794 (= (contains!2783 lt!467174 lt!467179) lt!467406)))

(declare-fun b!1401943 () Bool)

(declare-fun e!895071 () Bool)

(assert (=> b!1401943 (= e!895072 e!895071)))

(declare-fun res!634052 () Bool)

(assert (=> b!1401943 (=> res!634052 e!895071)))

(assert (=> b!1401943 (= res!634052 (= (h!19642 lt!467174) lt!467179))))

(declare-fun b!1401944 () Bool)

(assert (=> b!1401944 (= e!895071 (contains!2783 (t!122868 lt!467174) lt!467179))))

(assert (= (and d!400794 res!634051) b!1401943))

(assert (= (and b!1401943 (not res!634052)) b!1401944))

(declare-fun m!1579183 () Bool)

(assert (=> d!400794 m!1579183))

(declare-fun m!1579187 () Bool)

(assert (=> d!400794 m!1579187))

(declare-fun m!1579189 () Bool)

(assert (=> b!1401944 m!1579189))

(assert (=> b!1401201 d!400794))

(declare-fun d!400800 () Bool)

(declare-fun lt!467409 () C!7852)

(declare-fun apply!3633 (List!14307 Int) C!7852)

(assert (=> d!400800 (= lt!467409 (apply!3633 (list!5553 lt!467175) 0))))

(declare-fun apply!3634 (Conc!4694 Int) C!7852)

(assert (=> d!400800 (= lt!467409 (apply!3634 (c!230522 lt!467175) 0))))

(declare-fun e!895078 () Bool)

(assert (=> d!400800 e!895078))

(declare-fun res!634058 () Bool)

(assert (=> d!400800 (=> (not res!634058) (not e!895078))))

(assert (=> d!400800 (= res!634058 (<= 0 0))))

(assert (=> d!400800 (= (apply!3627 lt!467175 0) lt!467409)))

(declare-fun b!1401950 () Bool)

(assert (=> b!1401950 (= e!895078 (< 0 (size!11718 lt!467175)))))

(assert (= (and d!400800 res!634058) b!1401950))

(assert (=> d!400800 m!1578293))

(assert (=> d!400800 m!1578293))

(declare-fun m!1579199 () Bool)

(assert (=> d!400800 m!1579199))

(declare-fun m!1579201 () Bool)

(assert (=> d!400800 m!1579201))

(declare-fun m!1579203 () Bool)

(assert (=> b!1401950 m!1579203))

(assert (=> b!1401201 d!400800))

(declare-fun d!400806 () Bool)

(declare-fun lt!467415 () Bool)

(declare-fun e!895083 () Bool)

(assert (=> d!400806 (= lt!467415 e!895083)))

(declare-fun res!634065 () Bool)

(assert (=> d!400806 (=> (not res!634065) (not e!895083))))

(assert (=> d!400806 (= res!634065 (= (list!5554 (_1!7819 (lex!987 thiss!19762 rules!2550 (print!926 thiss!19762 (singletonSeq!1128 t1!34))))) (list!5554 (singletonSeq!1128 t1!34))))))

(declare-fun e!895084 () Bool)

(assert (=> d!400806 (= lt!467415 e!895084)))

(declare-fun res!634067 () Bool)

(assert (=> d!400806 (=> (not res!634067) (not e!895084))))

(declare-fun lt!467414 () tuple2!13866)

(assert (=> d!400806 (= res!634067 (= (size!11728 (_1!7819 lt!467414)) 1))))

(assert (=> d!400806 (= lt!467414 (lex!987 thiss!19762 rules!2550 (print!926 thiss!19762 (singletonSeq!1128 t1!34))))))

(assert (=> d!400806 (not (isEmpty!8658 rules!2550))))

(assert (=> d!400806 (= (rulesProduceIndividualToken!1131 thiss!19762 rules!2550 t1!34) lt!467415)))

(declare-fun b!1401957 () Bool)

(declare-fun res!634066 () Bool)

(assert (=> b!1401957 (=> (not res!634066) (not e!895084))))

(declare-fun apply!3635 (BalanceConc!9330 Int) Token!4596)

(assert (=> b!1401957 (= res!634066 (= (apply!3635 (_1!7819 lt!467414) 0) t1!34))))

(declare-fun b!1401958 () Bool)

(assert (=> b!1401958 (= e!895084 (isEmpty!8659 (_2!7819 lt!467414)))))

(declare-fun b!1401959 () Bool)

(assert (=> b!1401959 (= e!895083 (isEmpty!8659 (_2!7819 (lex!987 thiss!19762 rules!2550 (print!926 thiss!19762 (singletonSeq!1128 t1!34))))))))

(assert (= (and d!400806 res!634067) b!1401957))

(assert (= (and b!1401957 res!634066) b!1401958))

(assert (= (and d!400806 res!634065) b!1401959))

(assert (=> d!400806 m!1578265))

(assert (=> d!400806 m!1578905))

(declare-fun m!1579205 () Bool)

(assert (=> d!400806 m!1579205))

(declare-fun m!1579207 () Bool)

(assert (=> d!400806 m!1579207))

(assert (=> d!400806 m!1578267))

(declare-fun m!1579209 () Bool)

(assert (=> d!400806 m!1579209))

(assert (=> d!400806 m!1578261))

(assert (=> d!400806 m!1578265))

(assert (=> d!400806 m!1578267))

(assert (=> d!400806 m!1578265))

(declare-fun m!1579211 () Bool)

(assert (=> b!1401957 m!1579211))

(declare-fun m!1579213 () Bool)

(assert (=> b!1401958 m!1579213))

(assert (=> b!1401959 m!1578265))

(assert (=> b!1401959 m!1578265))

(assert (=> b!1401959 m!1578267))

(assert (=> b!1401959 m!1578267))

(assert (=> b!1401959 m!1579209))

(declare-fun m!1579215 () Bool)

(assert (=> b!1401959 m!1579215))

(assert (=> b!1401200 d!400806))

(declare-fun b!1401969 () Bool)

(declare-fun e!895089 () List!14307)

(assert (=> b!1401969 (= e!895089 (Cons!14241 (h!19642 lt!467162) (++!3704 (t!122868 lt!467162) (Cons!14241 lt!467165 Nil!14241))))))

(declare-fun d!400808 () Bool)

(declare-fun e!895090 () Bool)

(assert (=> d!400808 e!895090))

(declare-fun res!634072 () Bool)

(assert (=> d!400808 (=> (not res!634072) (not e!895090))))

(declare-fun lt!467418 () List!14307)

(assert (=> d!400808 (= res!634072 (= (content!2115 lt!467418) ((_ map or) (content!2115 lt!467162) (content!2115 (Cons!14241 lt!467165 Nil!14241)))))))

(assert (=> d!400808 (= lt!467418 e!895089)))

(declare-fun c!230680 () Bool)

(assert (=> d!400808 (= c!230680 ((_ is Nil!14241) lt!467162))))

(assert (=> d!400808 (= (++!3704 lt!467162 (Cons!14241 lt!467165 Nil!14241)) lt!467418)))

(declare-fun b!1401971 () Bool)

(assert (=> b!1401971 (= e!895090 (or (not (= (Cons!14241 lt!467165 Nil!14241) Nil!14241)) (= lt!467418 lt!467162)))))

(declare-fun b!1401970 () Bool)

(declare-fun res!634073 () Bool)

(assert (=> b!1401970 (=> (not res!634073) (not e!895090))))

(assert (=> b!1401970 (= res!634073 (= (size!11726 lt!467418) (+ (size!11726 lt!467162) (size!11726 (Cons!14241 lt!467165 Nil!14241)))))))

(declare-fun b!1401968 () Bool)

(assert (=> b!1401968 (= e!895089 (Cons!14241 lt!467165 Nil!14241))))

(assert (= (and d!400808 c!230680) b!1401968))

(assert (= (and d!400808 (not c!230680)) b!1401969))

(assert (= (and d!400808 res!634072) b!1401970))

(assert (= (and b!1401970 res!634073) b!1401971))

(declare-fun m!1579217 () Bool)

(assert (=> b!1401969 m!1579217))

(declare-fun m!1579219 () Bool)

(assert (=> d!400808 m!1579219))

(declare-fun m!1579221 () Bool)

(assert (=> d!400808 m!1579221))

(declare-fun m!1579223 () Bool)

(assert (=> d!400808 m!1579223))

(declare-fun m!1579225 () Bool)

(assert (=> b!1401970 m!1579225))

(assert (=> b!1401970 m!1578883))

(declare-fun m!1579227 () Bool)

(assert (=> b!1401970 m!1579227))

(assert (=> b!1401221 d!400808))

(declare-fun d!400810 () Bool)

(declare-fun c!230683 () Bool)

(assert (=> d!400810 (= c!230683 (isEmpty!8664 lt!467174))))

(declare-fun e!895093 () Bool)

(assert (=> d!400810 (= (prefixMatch!290 lt!467189 lt!467174) e!895093)))

(declare-fun b!1401976 () Bool)

(declare-fun lostCause!365 (Regex!3781) Bool)

(assert (=> b!1401976 (= e!895093 (not (lostCause!365 lt!467189)))))

(declare-fun b!1401977 () Bool)

(assert (=> b!1401977 (= e!895093 (prefixMatch!290 (derivativeStep!989 lt!467189 (head!2593 lt!467174)) (tail!2036 lt!467174)))))

(assert (= (and d!400810 c!230683) b!1401976))

(assert (= (and d!400810 (not c!230683)) b!1401977))

(declare-fun m!1579229 () Bool)

(assert (=> d!400810 m!1579229))

(declare-fun m!1579231 () Bool)

(assert (=> b!1401976 m!1579231))

(declare-fun m!1579233 () Bool)

(assert (=> b!1401977 m!1579233))

(assert (=> b!1401977 m!1579233))

(declare-fun m!1579235 () Bool)

(assert (=> b!1401977 m!1579235))

(declare-fun m!1579237 () Bool)

(assert (=> b!1401977 m!1579237))

(assert (=> b!1401977 m!1579235))

(assert (=> b!1401977 m!1579237))

(declare-fun m!1579239 () Bool)

(assert (=> b!1401977 m!1579239))

(assert (=> b!1401221 d!400810))

(declare-fun d!400812 () Bool)

(declare-fun lt!467421 () BalanceConc!9328)

(assert (=> d!400812 (= (list!5553 lt!467421) (originalCharacters!3329 t1!34))))

(assert (=> d!400812 (= lt!467421 (dynLambda!6592 (toChars!3617 (transformation!2467 (rule!4230 t1!34))) (value!79942 t1!34)))))

(assert (=> d!400812 (= (charsOf!1439 t1!34) lt!467421)))

(declare-fun b_lambda!44091 () Bool)

(assert (=> (not b_lambda!44091) (not d!400812)))

(assert (=> d!400812 t!122874))

(declare-fun b_and!93871 () Bool)

(assert (= b_and!93837 (and (=> t!122874 result!88846) b_and!93871)))

(assert (=> d!400812 t!122876))

(declare-fun b_and!93873 () Bool)

(assert (= b_and!93839 (and (=> t!122876 result!88850) b_and!93873)))

(assert (=> d!400812 t!122878))

(declare-fun b_and!93875 () Bool)

(assert (= b_and!93841 (and (=> t!122878 result!88852) b_and!93875)))

(declare-fun m!1579241 () Bool)

(assert (=> d!400812 m!1579241))

(assert (=> d!400812 m!1578835))

(assert (=> b!1401221 d!400812))

(declare-fun d!400814 () Bool)

(declare-fun lt!467422 () C!7852)

(assert (=> d!400814 (= lt!467422 (apply!3633 (list!5553 lt!467169) 0))))

(assert (=> d!400814 (= lt!467422 (apply!3634 (c!230522 lt!467169) 0))))

(declare-fun e!895094 () Bool)

(assert (=> d!400814 e!895094))

(declare-fun res!634074 () Bool)

(assert (=> d!400814 (=> (not res!634074) (not e!895094))))

(assert (=> d!400814 (= res!634074 (<= 0 0))))

(assert (=> d!400814 (= (apply!3627 lt!467169 0) lt!467422)))

(declare-fun b!1401978 () Bool)

(assert (=> b!1401978 (= e!895094 (< 0 (size!11718 lt!467169)))))

(assert (= (and d!400814 res!634074) b!1401978))

(assert (=> d!400814 m!1578207))

(assert (=> d!400814 m!1578207))

(declare-fun m!1579243 () Bool)

(assert (=> d!400814 m!1579243))

(declare-fun m!1579245 () Bool)

(assert (=> d!400814 m!1579245))

(assert (=> b!1401978 m!1578257))

(assert (=> b!1401221 d!400814))

(declare-fun d!400816 () Bool)

(assert (=> d!400816 (= (list!5553 lt!467175) (list!5557 (c!230522 lt!467175)))))

(declare-fun bs!338293 () Bool)

(assert (= bs!338293 d!400816))

(declare-fun m!1579247 () Bool)

(assert (=> bs!338293 m!1579247))

(assert (=> b!1401221 d!400816))

(declare-fun bs!338294 () Bool)

(declare-fun d!400818 () Bool)

(assert (= bs!338294 (and d!400818 b!1401185)))

(declare-fun lambda!61423 () Int)

(assert (=> bs!338294 (= lambda!61423 lambda!61382)))

(declare-fun lt!467425 () Unit!20569)

(declare-fun lemma!159 (List!14308 LexerInterface!2162 List!14308) Unit!20569)

(assert (=> d!400818 (= lt!467425 (lemma!159 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!167 (List!14310) Regex!3781)

(assert (=> d!400818 (= (rulesRegex!350 thiss!19762 rules!2550) (generalisedUnion!167 (map!3161 rules!2550 lambda!61423)))))

(declare-fun bs!338295 () Bool)

(assert (= bs!338295 d!400818))

(declare-fun m!1579249 () Bool)

(assert (=> bs!338295 m!1579249))

(declare-fun m!1579251 () Bool)

(assert (=> bs!338295 m!1579251))

(assert (=> bs!338295 m!1579251))

(declare-fun m!1579253 () Bool)

(assert (=> bs!338295 m!1579253))

(assert (=> b!1401221 d!400818))

(declare-fun d!400820 () Bool)

(declare-fun lt!467428 () Bool)

(declare-fun content!2117 (List!14308) (InoxSet Rule!4734))

(assert (=> d!400820 (= lt!467428 (select (content!2117 rules!2550) (rule!4230 t2!34)))))

(declare-fun e!895099 () Bool)

(assert (=> d!400820 (= lt!467428 e!895099)))

(declare-fun res!634079 () Bool)

(assert (=> d!400820 (=> (not res!634079) (not e!895099))))

(assert (=> d!400820 (= res!634079 ((_ is Cons!14242) rules!2550))))

(assert (=> d!400820 (= (contains!2784 rules!2550 (rule!4230 t2!34)) lt!467428)))

(declare-fun b!1401983 () Bool)

(declare-fun e!895100 () Bool)

(assert (=> b!1401983 (= e!895099 e!895100)))

(declare-fun res!634080 () Bool)

(assert (=> b!1401983 (=> res!634080 e!895100)))

(assert (=> b!1401983 (= res!634080 (= (h!19643 rules!2550) (rule!4230 t2!34)))))

(declare-fun b!1401984 () Bool)

(assert (=> b!1401984 (= e!895100 (contains!2784 (t!122869 rules!2550) (rule!4230 t2!34)))))

(assert (= (and d!400820 res!634079) b!1401983))

(assert (= (and b!1401983 (not res!634080)) b!1401984))

(declare-fun m!1579255 () Bool)

(assert (=> d!400820 m!1579255))

(declare-fun m!1579257 () Bool)

(assert (=> d!400820 m!1579257))

(declare-fun m!1579259 () Bool)

(assert (=> b!1401984 m!1579259))

(assert (=> b!1401199 d!400820))

(declare-fun d!400822 () Bool)

(declare-fun lt!467429 () Bool)

(assert (=> d!400822 (= lt!467429 (select (content!2115 lt!467160) lt!467165))))

(declare-fun e!895102 () Bool)

(assert (=> d!400822 (= lt!467429 e!895102)))

(declare-fun res!634081 () Bool)

(assert (=> d!400822 (=> (not res!634081) (not e!895102))))

(assert (=> d!400822 (= res!634081 ((_ is Cons!14241) lt!467160))))

(assert (=> d!400822 (= (contains!2783 lt!467160 lt!467165) lt!467429)))

(declare-fun b!1401985 () Bool)

(declare-fun e!895101 () Bool)

(assert (=> b!1401985 (= e!895102 e!895101)))

(declare-fun res!634082 () Bool)

(assert (=> b!1401985 (=> res!634082 e!895101)))

(assert (=> b!1401985 (= res!634082 (= (h!19642 lt!467160) lt!467165))))

(declare-fun b!1401986 () Bool)

(assert (=> b!1401986 (= e!895101 (contains!2783 (t!122868 lt!467160) lt!467165))))

(assert (= (and d!400822 res!634081) b!1401985))

(assert (= (and b!1401985 (not res!634082)) b!1401986))

(declare-fun m!1579261 () Bool)

(assert (=> d!400822 m!1579261))

(declare-fun m!1579263 () Bool)

(assert (=> d!400822 m!1579263))

(declare-fun m!1579265 () Bool)

(assert (=> b!1401986 m!1579265))

(assert (=> b!1401198 d!400822))

(declare-fun d!400824 () Bool)

(declare-fun lt!467432 () Bool)

(assert (=> d!400824 (= lt!467432 (isEmpty!8664 (list!5553 (_2!7819 lt!467176))))))

(declare-fun isEmpty!8669 (Conc!4694) Bool)

(assert (=> d!400824 (= lt!467432 (isEmpty!8669 (c!230522 (_2!7819 lt!467176))))))

(assert (=> d!400824 (= (isEmpty!8659 (_2!7819 lt!467176)) lt!467432)))

(declare-fun bs!338296 () Bool)

(assert (= bs!338296 d!400824))

(declare-fun m!1579267 () Bool)

(assert (=> bs!338296 m!1579267))

(assert (=> bs!338296 m!1579267))

(declare-fun m!1579269 () Bool)

(assert (=> bs!338296 m!1579269))

(declare-fun m!1579271 () Bool)

(assert (=> bs!338296 m!1579271))

(assert (=> b!1401219 d!400824))

(declare-fun d!400826 () Bool)

(declare-fun lt!467433 () Bool)

(assert (=> d!400826 (= lt!467433 (isEmpty!8664 (list!5553 (_2!7819 lt!467186))))))

(assert (=> d!400826 (= lt!467433 (isEmpty!8669 (c!230522 (_2!7819 lt!467186))))))

(assert (=> d!400826 (= (isEmpty!8659 (_2!7819 lt!467186)) lt!467433)))

(declare-fun bs!338297 () Bool)

(assert (= bs!338297 d!400826))

(declare-fun m!1579273 () Bool)

(assert (=> bs!338297 m!1579273))

(assert (=> bs!338297 m!1579273))

(declare-fun m!1579275 () Bool)

(assert (=> bs!338297 m!1579275))

(declare-fun m!1579277 () Bool)

(assert (=> bs!338297 m!1579277))

(assert (=> b!1401218 d!400826))

(declare-fun b!1401987 () Bool)

(declare-fun e!895103 () Bool)

(declare-fun lt!467435 () tuple2!13862)

(assert (=> b!1401987 (= e!895103 (not (isEmpty!8667 (_1!7817 lt!467435))))))

(declare-fun b!1401988 () Bool)

(declare-fun e!895104 () tuple2!13862)

(assert (=> b!1401988 (= e!895104 (tuple2!13863 Nil!14243 (list!5553 lt!467161)))))

(declare-fun b!1401989 () Bool)

(declare-fun lt!467434 () Option!2730)

(declare-fun lt!467436 () tuple2!13862)

(assert (=> b!1401989 (= e!895104 (tuple2!13863 (Cons!14243 (_1!7818 (v!21665 lt!467434)) (_1!7817 lt!467436)) (_2!7817 lt!467436)))))

(assert (=> b!1401989 (= lt!467436 (lexList!676 thiss!19762 rules!2550 (_2!7818 (v!21665 lt!467434))))))

(declare-fun b!1401990 () Bool)

(declare-fun e!895105 () Bool)

(assert (=> b!1401990 (= e!895105 (= (_2!7817 lt!467435) (list!5553 lt!467161)))))

(declare-fun b!1401991 () Bool)

(assert (=> b!1401991 (= e!895105 e!895103)))

(declare-fun res!634083 () Bool)

(assert (=> b!1401991 (= res!634083 (< (size!11726 (_2!7817 lt!467435)) (size!11726 (list!5553 lt!467161))))))

(assert (=> b!1401991 (=> (not res!634083) (not e!895103))))

(declare-fun d!400828 () Bool)

(assert (=> d!400828 e!895105))

(declare-fun c!230685 () Bool)

(assert (=> d!400828 (= c!230685 (> (size!11727 (_1!7817 lt!467435)) 0))))

(assert (=> d!400828 (= lt!467435 e!895104)))

(declare-fun c!230684 () Bool)

(assert (=> d!400828 (= c!230684 ((_ is Some!2729) lt!467434))))

(assert (=> d!400828 (= lt!467434 (maxPrefix!1136 thiss!19762 rules!2550 (list!5553 lt!467161)))))

(assert (=> d!400828 (= (lexList!676 thiss!19762 rules!2550 (list!5553 lt!467161)) lt!467435)))

(assert (= (and d!400828 c!230684) b!1401989))

(assert (= (and d!400828 (not c!230684)) b!1401988))

(assert (= (and d!400828 c!230685) b!1401991))

(assert (= (and d!400828 (not c!230685)) b!1401990))

(assert (= (and b!1401991 res!634083) b!1401987))

(declare-fun m!1579279 () Bool)

(assert (=> b!1401987 m!1579279))

(declare-fun m!1579281 () Bool)

(assert (=> b!1401989 m!1579281))

(declare-fun m!1579283 () Bool)

(assert (=> b!1401991 m!1579283))

(assert (=> b!1401991 m!1578355))

(declare-fun m!1579285 () Bool)

(assert (=> b!1401991 m!1579285))

(declare-fun m!1579287 () Bool)

(assert (=> d!400828 m!1579287))

(assert (=> d!400828 m!1578355))

(declare-fun m!1579289 () Bool)

(assert (=> d!400828 m!1579289))

(assert (=> b!1401197 d!400828))

(declare-fun d!400830 () Bool)

(assert (=> d!400830 (= (list!5553 lt!467161) (list!5557 (c!230522 lt!467161)))))

(declare-fun bs!338298 () Bool)

(assert (= bs!338298 d!400830))

(declare-fun m!1579291 () Bool)

(assert (=> bs!338298 m!1579291))

(assert (=> b!1401197 d!400830))

(declare-fun b!1401993 () Bool)

(declare-fun e!895106 () List!14307)

(assert (=> b!1401993 (= e!895106 (Cons!14241 (h!19642 lt!467174) (++!3704 (t!122868 lt!467174) (getSuffix!627 lt!467160 lt!467174))))))

(declare-fun d!400832 () Bool)

(declare-fun e!895107 () Bool)

(assert (=> d!400832 e!895107))

(declare-fun res!634084 () Bool)

(assert (=> d!400832 (=> (not res!634084) (not e!895107))))

(declare-fun lt!467437 () List!14307)

(assert (=> d!400832 (= res!634084 (= (content!2115 lt!467437) ((_ map or) (content!2115 lt!467174) (content!2115 (getSuffix!627 lt!467160 lt!467174)))))))

(assert (=> d!400832 (= lt!467437 e!895106)))

(declare-fun c!230686 () Bool)

(assert (=> d!400832 (= c!230686 ((_ is Nil!14241) lt!467174))))

(assert (=> d!400832 (= (++!3704 lt!467174 (getSuffix!627 lt!467160 lt!467174)) lt!467437)))

(declare-fun b!1401995 () Bool)

(assert (=> b!1401995 (= e!895107 (or (not (= (getSuffix!627 lt!467160 lt!467174) Nil!14241)) (= lt!467437 lt!467174)))))

(declare-fun b!1401994 () Bool)

(declare-fun res!634085 () Bool)

(assert (=> b!1401994 (=> (not res!634085) (not e!895107))))

(assert (=> b!1401994 (= res!634085 (= (size!11726 lt!467437) (+ (size!11726 lt!467174) (size!11726 (getSuffix!627 lt!467160 lt!467174)))))))

(declare-fun b!1401992 () Bool)

(assert (=> b!1401992 (= e!895106 (getSuffix!627 lt!467160 lt!467174))))

(assert (= (and d!400832 c!230686) b!1401992))

(assert (= (and d!400832 (not c!230686)) b!1401993))

(assert (= (and d!400832 res!634084) b!1401994))

(assert (= (and b!1401994 res!634085) b!1401995))

(assert (=> b!1401993 m!1578283))

(declare-fun m!1579293 () Bool)

(assert (=> b!1401993 m!1579293))

(declare-fun m!1579295 () Bool)

(assert (=> d!400832 m!1579295))

(assert (=> d!400832 m!1579183))

(assert (=> d!400832 m!1578283))

(declare-fun m!1579297 () Bool)

(assert (=> d!400832 m!1579297))

(declare-fun m!1579299 () Bool)

(assert (=> b!1401994 m!1579299))

(declare-fun m!1579301 () Bool)

(assert (=> b!1401994 m!1579301))

(assert (=> b!1401994 m!1578283))

(declare-fun m!1579303 () Bool)

(assert (=> b!1401994 m!1579303))

(assert (=> b!1401196 d!400832))

(declare-fun d!400834 () Bool)

(declare-fun lt!467440 () List!14307)

(assert (=> d!400834 (= (++!3704 lt!467174 lt!467440) lt!467160)))

(declare-fun e!895110 () List!14307)

(assert (=> d!400834 (= lt!467440 e!895110)))

(declare-fun c!230689 () Bool)

(assert (=> d!400834 (= c!230689 ((_ is Cons!14241) lt!467174))))

(assert (=> d!400834 (>= (size!11726 lt!467160) (size!11726 lt!467174))))

(assert (=> d!400834 (= (getSuffix!627 lt!467160 lt!467174) lt!467440)))

(declare-fun b!1402000 () Bool)

(assert (=> b!1402000 (= e!895110 (getSuffix!627 (tail!2036 lt!467160) (t!122868 lt!467174)))))

(declare-fun b!1402001 () Bool)

(assert (=> b!1402001 (= e!895110 lt!467160)))

(assert (= (and d!400834 c!230689) b!1402000))

(assert (= (and d!400834 (not c!230689)) b!1402001))

(declare-fun m!1579305 () Bool)

(assert (=> d!400834 m!1579305))

(declare-fun m!1579307 () Bool)

(assert (=> d!400834 m!1579307))

(assert (=> d!400834 m!1579301))

(declare-fun m!1579309 () Bool)

(assert (=> b!1402000 m!1579309))

(assert (=> b!1402000 m!1579309))

(declare-fun m!1579311 () Bool)

(assert (=> b!1402000 m!1579311))

(assert (=> b!1401196 d!400834))

(declare-fun d!400836 () Bool)

(declare-fun lt!467443 () List!14307)

(declare-fun dynLambda!6598 (Int List!14307) Bool)

(assert (=> d!400836 (dynLambda!6598 lambda!61381 lt!467443)))

(declare-fun choose!8653 (Int) List!14307)

(assert (=> d!400836 (= lt!467443 (choose!8653 lambda!61381))))

(assert (=> d!400836 (Exists!931 lambda!61381)))

(assert (=> d!400836 (= (pickWitness!234 lambda!61381) lt!467443)))

(declare-fun b_lambda!44093 () Bool)

(assert (=> (not b_lambda!44093) (not d!400836)))

(declare-fun bs!338299 () Bool)

(assert (= bs!338299 d!400836))

(declare-fun m!1579313 () Bool)

(assert (=> bs!338299 m!1579313))

(declare-fun m!1579315 () Bool)

(assert (=> bs!338299 m!1579315))

(assert (=> bs!338299 m!1578327))

(assert (=> b!1401196 d!400836))

(declare-fun d!400838 () Bool)

(declare-fun lt!467446 () Int)

(assert (=> d!400838 (= lt!467446 (size!11726 (list!5553 lt!467169)))))

(declare-fun size!11730 (Conc!4694) Int)

(assert (=> d!400838 (= lt!467446 (size!11730 (c!230522 lt!467169)))))

(assert (=> d!400838 (= (size!11718 lt!467169) lt!467446)))

(declare-fun bs!338300 () Bool)

(assert (= bs!338300 d!400838))

(assert (=> bs!338300 m!1578207))

(assert (=> bs!338300 m!1578207))

(declare-fun m!1579317 () Bool)

(assert (=> bs!338300 m!1579317))

(declare-fun m!1579319 () Bool)

(assert (=> bs!338300 m!1579319))

(assert (=> b!1401217 d!400838))

(declare-fun d!400840 () Bool)

(declare-fun lt!467447 () BalanceConc!9328)

(assert (=> d!400840 (= (list!5553 lt!467447) (originalCharacters!3329 t2!34))))

(assert (=> d!400840 (= lt!467447 (dynLambda!6592 (toChars!3617 (transformation!2467 (rule!4230 t2!34))) (value!79942 t2!34)))))

(assert (=> d!400840 (= (charsOf!1439 t2!34) lt!467447)))

(declare-fun b_lambda!44095 () Bool)

(assert (=> (not b_lambda!44095) (not d!400840)))

(assert (=> d!400840 t!122880))

(declare-fun b_and!93877 () Bool)

(assert (= b_and!93871 (and (=> t!122880 result!88854) b_and!93877)))

(assert (=> d!400840 t!122882))

(declare-fun b_and!93879 () Bool)

(assert (= b_and!93873 (and (=> t!122882 result!88856) b_and!93879)))

(assert (=> d!400840 t!122884))

(declare-fun b_and!93881 () Bool)

(assert (= b_and!93875 (and (=> t!122884 result!88858) b_and!93881)))

(declare-fun m!1579321 () Bool)

(assert (=> d!400840 m!1579321))

(assert (=> d!400840 m!1578847))

(assert (=> b!1401217 d!400840))

(declare-fun d!400842 () Bool)

(declare-fun lt!467448 () Bool)

(assert (=> d!400842 (= lt!467448 (select (content!2117 rules!2550) (rule!4230 t1!34)))))

(declare-fun e!895111 () Bool)

(assert (=> d!400842 (= lt!467448 e!895111)))

(declare-fun res!634086 () Bool)

(assert (=> d!400842 (=> (not res!634086) (not e!895111))))

(assert (=> d!400842 (= res!634086 ((_ is Cons!14242) rules!2550))))

(assert (=> d!400842 (= (contains!2784 rules!2550 (rule!4230 t1!34)) lt!467448)))

(declare-fun b!1402002 () Bool)

(declare-fun e!895112 () Bool)

(assert (=> b!1402002 (= e!895111 e!895112)))

(declare-fun res!634087 () Bool)

(assert (=> b!1402002 (=> res!634087 e!895112)))

(assert (=> b!1402002 (= res!634087 (= (h!19643 rules!2550) (rule!4230 t1!34)))))

(declare-fun b!1402003 () Bool)

(assert (=> b!1402003 (= e!895112 (contains!2784 (t!122869 rules!2550) (rule!4230 t1!34)))))

(assert (= (and d!400842 res!634086) b!1402002))

(assert (= (and b!1402002 (not res!634087)) b!1402003))

(assert (=> d!400842 m!1579255))

(declare-fun m!1579323 () Bool)

(assert (=> d!400842 m!1579323))

(declare-fun m!1579325 () Bool)

(assert (=> b!1402003 m!1579325))

(assert (=> b!1401216 d!400842))

(declare-fun d!400844 () Bool)

(declare-fun lt!467449 () Bool)

(assert (=> d!400844 (= lt!467449 (select (content!2117 rules!2550) lt!467170))))

(declare-fun e!895113 () Bool)

(assert (=> d!400844 (= lt!467449 e!895113)))

(declare-fun res!634088 () Bool)

(assert (=> d!400844 (=> (not res!634088) (not e!895113))))

(assert (=> d!400844 (= res!634088 ((_ is Cons!14242) rules!2550))))

(assert (=> d!400844 (= (contains!2784 rules!2550 lt!467170) lt!467449)))

(declare-fun b!1402004 () Bool)

(declare-fun e!895114 () Bool)

(assert (=> b!1402004 (= e!895113 e!895114)))

(declare-fun res!634089 () Bool)

(assert (=> b!1402004 (=> res!634089 e!895114)))

(assert (=> b!1402004 (= res!634089 (= (h!19643 rules!2550) lt!467170))))

(declare-fun b!1402005 () Bool)

(assert (=> b!1402005 (= e!895114 (contains!2784 (t!122869 rules!2550) lt!467170))))

(assert (= (and d!400844 res!634088) b!1402004))

(assert (= (and b!1402004 (not res!634089)) b!1402005))

(assert (=> d!400844 m!1579255))

(declare-fun m!1579327 () Bool)

(assert (=> d!400844 m!1579327))

(declare-fun m!1579329 () Bool)

(assert (=> b!1402005 m!1579329))

(assert (=> b!1401195 d!400844))

(declare-fun d!400846 () Bool)

(assert (=> d!400846 (not (matchR!1772 (regex!2467 (rule!4230 t1!34)) lt!467162))))

(declare-fun lt!467450 () Unit!20569)

(assert (=> d!400846 (= lt!467450 (choose!8651 (regex!2467 (rule!4230 t1!34)) lt!467162 (head!2593 lt!467162)))))

(assert (=> d!400846 (validRegex!1655 (regex!2467 (rule!4230 t1!34)))))

(assert (=> d!400846 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!212 (regex!2467 (rule!4230 t1!34)) lt!467162 (head!2593 lt!467162)) lt!467450)))

(declare-fun bs!338301 () Bool)

(assert (= bs!338301 d!400846))

(assert (=> bs!338301 m!1578343))

(assert (=> bs!338301 m!1578229))

(declare-fun m!1579331 () Bool)

(assert (=> bs!338301 m!1579331))

(assert (=> bs!338301 m!1578451))

(assert (=> b!1401194 d!400846))

(declare-fun d!400848 () Bool)

(assert (=> d!400848 (= (head!2593 lt!467162) (h!19642 lt!467162))))

(assert (=> b!1401194 d!400848))

(declare-fun b!1402006 () Bool)

(declare-fun res!634095 () Bool)

(declare-fun e!895118 () Bool)

(assert (=> b!1402006 (=> res!634095 e!895118)))

(declare-fun e!895120 () Bool)

(assert (=> b!1402006 (= res!634095 e!895120)))

(declare-fun res!634091 () Bool)

(assert (=> b!1402006 (=> (not res!634091) (not e!895120))))

(declare-fun lt!467451 () Bool)

(assert (=> b!1402006 (= res!634091 lt!467451)))

(declare-fun b!1402007 () Bool)

(declare-fun e!895119 () Bool)

(declare-fun e!895115 () Bool)

(assert (=> b!1402007 (= e!895119 e!895115)))

(declare-fun c!230692 () Bool)

(assert (=> b!1402007 (= c!230692 ((_ is EmptyLang!3781) lt!467189))))

(declare-fun b!1402008 () Bool)

(declare-fun e!895121 () Bool)

(assert (=> b!1402008 (= e!895121 (matchR!1772 (derivativeStep!989 lt!467189 (head!2593 lt!467160)) (tail!2036 lt!467160)))))

(declare-fun b!1402009 () Bool)

(declare-fun e!895117 () Bool)

(assert (=> b!1402009 (= e!895117 (not (= (head!2593 lt!467160) (c!230523 lt!467189))))))

(declare-fun b!1402010 () Bool)

(declare-fun res!634090 () Bool)

(assert (=> b!1402010 (=> res!634090 e!895118)))

(assert (=> b!1402010 (= res!634090 (not ((_ is ElementMatch!3781) lt!467189)))))

(assert (=> b!1402010 (= e!895115 e!895118)))

(declare-fun b!1402011 () Bool)

(assert (=> b!1402011 (= e!895115 (not lt!467451))))

(declare-fun b!1402012 () Bool)

(assert (=> b!1402012 (= e!895121 (nullable!1231 lt!467189))))

(declare-fun d!400850 () Bool)

(assert (=> d!400850 e!895119))

(declare-fun c!230691 () Bool)

(assert (=> d!400850 (= c!230691 ((_ is EmptyExpr!3781) lt!467189))))

(assert (=> d!400850 (= lt!467451 e!895121)))

(declare-fun c!230690 () Bool)

(assert (=> d!400850 (= c!230690 (isEmpty!8664 lt!467160))))

(assert (=> d!400850 (validRegex!1655 lt!467189)))

(assert (=> d!400850 (= (matchR!1772 lt!467189 lt!467160) lt!467451)))

(declare-fun b!1402013 () Bool)

(declare-fun res!634096 () Bool)

(assert (=> b!1402013 (=> res!634096 e!895117)))

(assert (=> b!1402013 (= res!634096 (not (isEmpty!8664 (tail!2036 lt!467160))))))

(declare-fun b!1402014 () Bool)

(declare-fun res!634093 () Bool)

(assert (=> b!1402014 (=> (not res!634093) (not e!895120))))

(assert (=> b!1402014 (= res!634093 (isEmpty!8664 (tail!2036 lt!467160)))))

(declare-fun bm!93555 () Bool)

(declare-fun call!93560 () Bool)

(assert (=> bm!93555 (= call!93560 (isEmpty!8664 lt!467160))))

(declare-fun b!1402015 () Bool)

(declare-fun e!895116 () Bool)

(assert (=> b!1402015 (= e!895116 e!895117)))

(declare-fun res!634097 () Bool)

(assert (=> b!1402015 (=> res!634097 e!895117)))

(assert (=> b!1402015 (= res!634097 call!93560)))

(declare-fun b!1402016 () Bool)

(assert (=> b!1402016 (= e!895119 (= lt!467451 call!93560))))

(declare-fun b!1402017 () Bool)

(assert (=> b!1402017 (= e!895118 e!895116)))

(declare-fun res!634092 () Bool)

(assert (=> b!1402017 (=> (not res!634092) (not e!895116))))

(assert (=> b!1402017 (= res!634092 (not lt!467451))))

(declare-fun b!1402018 () Bool)

(assert (=> b!1402018 (= e!895120 (= (head!2593 lt!467160) (c!230523 lt!467189)))))

(declare-fun b!1402019 () Bool)

(declare-fun res!634094 () Bool)

(assert (=> b!1402019 (=> (not res!634094) (not e!895120))))

(assert (=> b!1402019 (= res!634094 (not call!93560))))

(assert (= (and d!400850 c!230690) b!1402012))

(assert (= (and d!400850 (not c!230690)) b!1402008))

(assert (= (and d!400850 c!230691) b!1402016))

(assert (= (and d!400850 (not c!230691)) b!1402007))

(assert (= (and b!1402007 c!230692) b!1402011))

(assert (= (and b!1402007 (not c!230692)) b!1402010))

(assert (= (and b!1402010 (not res!634090)) b!1402006))

(assert (= (and b!1402006 res!634091) b!1402019))

(assert (= (and b!1402019 res!634094) b!1402014))

(assert (= (and b!1402014 res!634093) b!1402018))

(assert (= (and b!1402006 (not res!634095)) b!1402017))

(assert (= (and b!1402017 res!634092) b!1402015))

(assert (= (and b!1402015 (not res!634097)) b!1402013))

(assert (= (and b!1402013 (not res!634096)) b!1402009))

(assert (= (or b!1402016 b!1402015 b!1402019) bm!93555))

(declare-fun m!1579333 () Bool)

(assert (=> b!1402012 m!1579333))

(declare-fun m!1579335 () Bool)

(assert (=> bm!93555 m!1579335))

(declare-fun m!1579337 () Bool)

(assert (=> b!1402009 m!1579337))

(assert (=> d!400850 m!1579335))

(assert (=> d!400850 m!1578413))

(assert (=> b!1402014 m!1579309))

(assert (=> b!1402014 m!1579309))

(declare-fun m!1579339 () Bool)

(assert (=> b!1402014 m!1579339))

(assert (=> b!1402018 m!1579337))

(assert (=> b!1402008 m!1579337))

(assert (=> b!1402008 m!1579337))

(declare-fun m!1579341 () Bool)

(assert (=> b!1402008 m!1579341))

(assert (=> b!1402008 m!1579309))

(assert (=> b!1402008 m!1579341))

(assert (=> b!1402008 m!1579309))

(declare-fun m!1579343 () Bool)

(assert (=> b!1402008 m!1579343))

(assert (=> b!1402013 m!1579309))

(assert (=> b!1402013 m!1579309))

(assert (=> b!1402013 m!1579339))

(assert (=> b!1401215 d!400850))

(declare-fun d!400852 () Bool)

(assert (=> d!400852 (= (isEmpty!8658 rules!2550) ((_ is Nil!14242) rules!2550))))

(assert (=> b!1401214 d!400852))

(declare-fun d!400854 () Bool)

(declare-fun lt!467453 () Bool)

(declare-fun e!895122 () Bool)

(assert (=> d!400854 (= lt!467453 e!895122)))

(declare-fun res!634098 () Bool)

(assert (=> d!400854 (=> (not res!634098) (not e!895122))))

(assert (=> d!400854 (= res!634098 (= (list!5554 (_1!7819 (lex!987 thiss!19762 rules!2550 (print!926 thiss!19762 (singletonSeq!1128 t2!34))))) (list!5554 (singletonSeq!1128 t2!34))))))

(declare-fun e!895123 () Bool)

(assert (=> d!400854 (= lt!467453 e!895123)))

(declare-fun res!634100 () Bool)

(assert (=> d!400854 (=> (not res!634100) (not e!895123))))

(declare-fun lt!467452 () tuple2!13866)

(assert (=> d!400854 (= res!634100 (= (size!11728 (_1!7819 lt!467452)) 1))))

(assert (=> d!400854 (= lt!467452 (lex!987 thiss!19762 rules!2550 (print!926 thiss!19762 (singletonSeq!1128 t2!34))))))

(assert (=> d!400854 (not (isEmpty!8658 rules!2550))))

(assert (=> d!400854 (= (rulesProduceIndividualToken!1131 thiss!19762 rules!2550 t2!34) lt!467453)))

(declare-fun b!1402020 () Bool)

(declare-fun res!634099 () Bool)

(assert (=> b!1402020 (=> (not res!634099) (not e!895123))))

(assert (=> b!1402020 (= res!634099 (= (apply!3635 (_1!7819 lt!467452) 0) t2!34))))

(declare-fun b!1402021 () Bool)

(assert (=> b!1402021 (= e!895123 (isEmpty!8659 (_2!7819 lt!467452)))))

(declare-fun b!1402022 () Bool)

(assert (=> b!1402022 (= e!895122 (isEmpty!8659 (_2!7819 (lex!987 thiss!19762 rules!2550 (print!926 thiss!19762 (singletonSeq!1128 t2!34))))))))

(assert (= (and d!400854 res!634100) b!1402020))

(assert (= (and b!1402020 res!634099) b!1402021))

(assert (= (and d!400854 res!634098) b!1402022))

(assert (=> d!400854 m!1578277))

(declare-fun m!1579345 () Bool)

(assert (=> d!400854 m!1579345))

(declare-fun m!1579347 () Bool)

(assert (=> d!400854 m!1579347))

(declare-fun m!1579349 () Bool)

(assert (=> d!400854 m!1579349))

(assert (=> d!400854 m!1578279))

(declare-fun m!1579351 () Bool)

(assert (=> d!400854 m!1579351))

(assert (=> d!400854 m!1578261))

(assert (=> d!400854 m!1578277))

(assert (=> d!400854 m!1578279))

(assert (=> d!400854 m!1578277))

(declare-fun m!1579353 () Bool)

(assert (=> b!1402020 m!1579353))

(declare-fun m!1579355 () Bool)

(assert (=> b!1402021 m!1579355))

(assert (=> b!1402022 m!1578277))

(assert (=> b!1402022 m!1578277))

(assert (=> b!1402022 m!1578279))

(assert (=> b!1402022 m!1578279))

(assert (=> b!1402022 m!1579351))

(declare-fun m!1579357 () Bool)

(assert (=> b!1402022 m!1579357))

(assert (=> b!1401193 d!400854))

(declare-fun d!400856 () Bool)

(declare-fun lt!467454 () Bool)

(assert (=> d!400856 (= lt!467454 (select (content!2115 lt!467160) lt!467179))))

(declare-fun e!895125 () Bool)

(assert (=> d!400856 (= lt!467454 e!895125)))

(declare-fun res!634101 () Bool)

(assert (=> d!400856 (=> (not res!634101) (not e!895125))))

(assert (=> d!400856 (= res!634101 ((_ is Cons!14241) lt!467160))))

(assert (=> d!400856 (= (contains!2783 lt!467160 lt!467179) lt!467454)))

(declare-fun b!1402023 () Bool)

(declare-fun e!895124 () Bool)

(assert (=> b!1402023 (= e!895125 e!895124)))

(declare-fun res!634102 () Bool)

(assert (=> b!1402023 (=> res!634102 e!895124)))

(assert (=> b!1402023 (= res!634102 (= (h!19642 lt!467160) lt!467179))))

(declare-fun b!1402024 () Bool)

(assert (=> b!1402024 (= e!895124 (contains!2783 (t!122868 lt!467160) lt!467179))))

(assert (= (and d!400856 res!634101) b!1402023))

(assert (= (and b!1402023 (not res!634102)) b!1402024))

(assert (=> d!400856 m!1579261))

(declare-fun m!1579359 () Bool)

(assert (=> d!400856 m!1579359))

(declare-fun m!1579361 () Bool)

(assert (=> b!1402024 m!1579361))

(assert (=> b!1401192 d!400856))

(declare-fun d!400858 () Bool)

(assert (=> d!400858 (= (list!5554 (_1!7819 lt!467176)) (list!5558 (c!230524 (_1!7819 lt!467176))))))

(declare-fun bs!338302 () Bool)

(assert (= bs!338302 d!400858))

(declare-fun m!1579363 () Bool)

(assert (=> bs!338302 m!1579363))

(assert (=> b!1401212 d!400858))

(declare-fun d!400860 () Bool)

(declare-fun e!895127 () Bool)

(assert (=> d!400860 e!895127))

(declare-fun res!634105 () Bool)

(assert (=> d!400860 (=> (not res!634105) (not e!895127))))

(declare-fun e!895128 () Bool)

(assert (=> d!400860 (= res!634105 e!895128)))

(declare-fun c!230693 () Bool)

(declare-fun lt!467455 () tuple2!13866)

(assert (=> d!400860 (= c!230693 (> (size!11728 (_1!7819 lt!467455)) 0))))

(assert (=> d!400860 (= lt!467455 (lexTailRecV2!443 thiss!19762 rules!2550 lt!467187 (BalanceConc!9329 Empty!4694) lt!467187 (BalanceConc!9331 Empty!4695)))))

(assert (=> d!400860 (= (lex!987 thiss!19762 rules!2550 lt!467187) lt!467455)))

(declare-fun b!1402025 () Bool)

(assert (=> b!1402025 (= e!895127 (= (list!5553 (_2!7819 lt!467455)) (_2!7817 (lexList!676 thiss!19762 rules!2550 (list!5553 lt!467187)))))))

(declare-fun b!1402026 () Bool)

(declare-fun res!634104 () Bool)

(assert (=> b!1402026 (=> (not res!634104) (not e!895127))))

(assert (=> b!1402026 (= res!634104 (= (list!5554 (_1!7819 lt!467455)) (_1!7817 (lexList!676 thiss!19762 rules!2550 (list!5553 lt!467187)))))))

(declare-fun b!1402027 () Bool)

(assert (=> b!1402027 (= e!895128 (= (_2!7819 lt!467455) lt!467187))))

(declare-fun b!1402028 () Bool)

(declare-fun e!895126 () Bool)

(assert (=> b!1402028 (= e!895128 e!895126)))

(declare-fun res!634103 () Bool)

(assert (=> b!1402028 (= res!634103 (< (size!11718 (_2!7819 lt!467455)) (size!11718 lt!467187)))))

(assert (=> b!1402028 (=> (not res!634103) (not e!895126))))

(declare-fun b!1402029 () Bool)

(assert (=> b!1402029 (= e!895126 (not (isEmpty!8668 (_1!7819 lt!467455))))))

(assert (= (and d!400860 c!230693) b!1402028))

(assert (= (and d!400860 (not c!230693)) b!1402027))

(assert (= (and b!1402028 res!634103) b!1402029))

(assert (= (and d!400860 res!634105) b!1402026))

(assert (= (and b!1402026 res!634104) b!1402025))

(declare-fun m!1579365 () Bool)

(assert (=> b!1402029 m!1579365))

(declare-fun m!1579367 () Bool)

(assert (=> b!1402026 m!1579367))

(assert (=> b!1402026 m!1578225))

(assert (=> b!1402026 m!1578225))

(assert (=> b!1402026 m!1578227))

(declare-fun m!1579369 () Bool)

(assert (=> b!1402025 m!1579369))

(assert (=> b!1402025 m!1578225))

(assert (=> b!1402025 m!1578225))

(assert (=> b!1402025 m!1578227))

(declare-fun m!1579371 () Bool)

(assert (=> b!1402028 m!1579371))

(declare-fun m!1579373 () Bool)

(assert (=> b!1402028 m!1579373))

(declare-fun m!1579375 () Bool)

(assert (=> d!400860 m!1579375))

(declare-fun m!1579377 () Bool)

(assert (=> d!400860 m!1579377))

(assert (=> b!1401212 d!400860))

(declare-fun d!400862 () Bool)

(declare-fun lt!467456 () BalanceConc!9328)

(assert (=> d!400862 (= (list!5553 lt!467456) (printList!638 thiss!19762 (list!5554 (singletonSeq!1128 t2!34))))))

(assert (=> d!400862 (= lt!467456 (printTailRec!620 thiss!19762 (singletonSeq!1128 t2!34) 0 (BalanceConc!9329 Empty!4694)))))

(assert (=> d!400862 (= (print!926 thiss!19762 (singletonSeq!1128 t2!34)) lt!467456)))

(declare-fun bs!338303 () Bool)

(assert (= bs!338303 d!400862))

(declare-fun m!1579379 () Bool)

(assert (=> bs!338303 m!1579379))

(assert (=> bs!338303 m!1578277))

(assert (=> bs!338303 m!1579345))

(assert (=> bs!338303 m!1579345))

(declare-fun m!1579381 () Bool)

(assert (=> bs!338303 m!1579381))

(assert (=> bs!338303 m!1578277))

(declare-fun m!1579383 () Bool)

(assert (=> bs!338303 m!1579383))

(assert (=> b!1401212 d!400862))

(declare-fun d!400864 () Bool)

(declare-fun e!895129 () Bool)

(assert (=> d!400864 e!895129))

(declare-fun res!634106 () Bool)

(assert (=> d!400864 (=> (not res!634106) (not e!895129))))

(declare-fun lt!467457 () BalanceConc!9330)

(assert (=> d!400864 (= res!634106 (= (list!5554 lt!467457) (Cons!14243 t2!34 Nil!14243)))))

(assert (=> d!400864 (= lt!467457 (singleton!494 t2!34))))

(assert (=> d!400864 (= (singletonSeq!1128 t2!34) lt!467457)))

(declare-fun b!1402030 () Bool)

(assert (=> b!1402030 (= e!895129 (isBalanced!1388 (c!230524 lt!467457)))))

(assert (= (and d!400864 res!634106) b!1402030))

(declare-fun m!1579385 () Bool)

(assert (=> d!400864 m!1579385))

(declare-fun m!1579387 () Bool)

(assert (=> d!400864 m!1579387))

(declare-fun m!1579389 () Bool)

(assert (=> b!1402030 m!1579389))

(assert (=> b!1401212 d!400864))

(declare-fun b!1402049 () Bool)

(declare-fun e!895149 () Bool)

(declare-fun call!93567 () Bool)

(assert (=> b!1402049 (= e!895149 call!93567)))

(declare-fun b!1402050 () Bool)

(declare-fun res!634120 () Bool)

(declare-fun e!895150 () Bool)

(assert (=> b!1402050 (=> res!634120 e!895150)))

(assert (=> b!1402050 (= res!634120 (not ((_ is Concat!6339) lt!467171)))))

(declare-fun e!895146 () Bool)

(assert (=> b!1402050 (= e!895146 e!895150)))

(declare-fun b!1402051 () Bool)

(declare-fun e!895147 () Bool)

(declare-fun call!93568 () Bool)

(assert (=> b!1402051 (= e!895147 call!93568)))

(declare-fun c!230698 () Bool)

(declare-fun c!230699 () Bool)

(declare-fun bm!93562 () Bool)

(assert (=> bm!93562 (= call!93568 (validRegex!1655 (ite c!230699 (reg!4110 lt!467171) (ite c!230698 (regTwo!8075 lt!467171) (regTwo!8074 lt!467171)))))))

(declare-fun b!1402052 () Bool)

(declare-fun res!634121 () Bool)

(assert (=> b!1402052 (=> (not res!634121) (not e!895149))))

(declare-fun call!93569 () Bool)

(assert (=> b!1402052 (= res!634121 call!93569)))

(assert (=> b!1402052 (= e!895146 e!895149)))

(declare-fun b!1402053 () Bool)

(declare-fun e!895144 () Bool)

(assert (=> b!1402053 (= e!895144 e!895147)))

(declare-fun res!634119 () Bool)

(assert (=> b!1402053 (= res!634119 (not (nullable!1231 (reg!4110 lt!467171))))))

(assert (=> b!1402053 (=> (not res!634119) (not e!895147))))

(declare-fun bm!93563 () Bool)

(assert (=> bm!93563 (= call!93569 (validRegex!1655 (ite c!230698 (regOne!8075 lt!467171) (regOne!8074 lt!467171))))))

(declare-fun d!400866 () Bool)

(declare-fun res!634117 () Bool)

(declare-fun e!895145 () Bool)

(assert (=> d!400866 (=> res!634117 e!895145)))

(assert (=> d!400866 (= res!634117 ((_ is ElementMatch!3781) lt!467171))))

(assert (=> d!400866 (= (validRegex!1655 lt!467171) e!895145)))

(declare-fun b!1402054 () Bool)

(assert (=> b!1402054 (= e!895145 e!895144)))

(assert (=> b!1402054 (= c!230699 ((_ is Star!3781) lt!467171))))

(declare-fun bm!93564 () Bool)

(assert (=> bm!93564 (= call!93567 call!93568)))

(declare-fun b!1402055 () Bool)

(assert (=> b!1402055 (= e!895144 e!895146)))

(assert (=> b!1402055 (= c!230698 ((_ is Union!3781) lt!467171))))

(declare-fun b!1402056 () Bool)

(declare-fun e!895148 () Bool)

(assert (=> b!1402056 (= e!895150 e!895148)))

(declare-fun res!634118 () Bool)

(assert (=> b!1402056 (=> (not res!634118) (not e!895148))))

(assert (=> b!1402056 (= res!634118 call!93569)))

(declare-fun b!1402057 () Bool)

(assert (=> b!1402057 (= e!895148 call!93567)))

(assert (= (and d!400866 (not res!634117)) b!1402054))

(assert (= (and b!1402054 c!230699) b!1402053))

(assert (= (and b!1402054 (not c!230699)) b!1402055))

(assert (= (and b!1402053 res!634119) b!1402051))

(assert (= (and b!1402055 c!230698) b!1402052))

(assert (= (and b!1402055 (not c!230698)) b!1402050))

(assert (= (and b!1402052 res!634121) b!1402049))

(assert (= (and b!1402050 (not res!634120)) b!1402056))

(assert (= (and b!1402056 res!634118) b!1402057))

(assert (= (or b!1402052 b!1402056) bm!93563))

(assert (= (or b!1402049 b!1402057) bm!93564))

(assert (= (or b!1402051 bm!93564) bm!93562))

(declare-fun m!1579391 () Bool)

(assert (=> bm!93562 m!1579391))

(declare-fun m!1579393 () Bool)

(assert (=> b!1402053 m!1579393))

(declare-fun m!1579395 () Bool)

(assert (=> bm!93563 m!1579395))

(assert (=> b!1401191 d!400866))

(declare-fun d!400868 () Bool)

(declare-fun lt!467458 () Bool)

(assert (=> d!400868 (= lt!467458 (select (content!2115 (usedCharacters!278 (regex!2467 lt!467170))) lt!467179))))

(declare-fun e!895152 () Bool)

(assert (=> d!400868 (= lt!467458 e!895152)))

(declare-fun res!634122 () Bool)

(assert (=> d!400868 (=> (not res!634122) (not e!895152))))

(assert (=> d!400868 (= res!634122 ((_ is Cons!14241) (usedCharacters!278 (regex!2467 lt!467170))))))

(assert (=> d!400868 (= (contains!2783 (usedCharacters!278 (regex!2467 lt!467170)) lt!467179) lt!467458)))

(declare-fun b!1402058 () Bool)

(declare-fun e!895151 () Bool)

(assert (=> b!1402058 (= e!895152 e!895151)))

(declare-fun res!634123 () Bool)

(assert (=> b!1402058 (=> res!634123 e!895151)))

(assert (=> b!1402058 (= res!634123 (= (h!19642 (usedCharacters!278 (regex!2467 lt!467170))) lt!467179))))

(declare-fun b!1402059 () Bool)

(assert (=> b!1402059 (= e!895151 (contains!2783 (t!122868 (usedCharacters!278 (regex!2467 lt!467170))) lt!467179))))

(assert (= (and d!400868 res!634122) b!1402058))

(assert (= (and b!1402058 (not res!634123)) b!1402059))

(assert (=> d!400868 m!1578241))

(declare-fun m!1579397 () Bool)

(assert (=> d!400868 m!1579397))

(declare-fun m!1579399 () Bool)

(assert (=> d!400868 m!1579399))

(declare-fun m!1579401 () Bool)

(assert (=> b!1402059 m!1579401))

(assert (=> b!1401191 d!400868))

(declare-fun b!1402060 () Bool)

(declare-fun e!895153 () List!14307)

(declare-fun e!895155 () List!14307)

(assert (=> b!1402060 (= e!895153 e!895155)))

(declare-fun c!230702 () Bool)

(assert (=> b!1402060 (= c!230702 ((_ is Union!3781) (regex!2467 lt!467170)))))

(declare-fun c!230700 () Bool)

(declare-fun bm!93565 () Bool)

(declare-fun call!93572 () List!14307)

(assert (=> bm!93565 (= call!93572 (usedCharacters!278 (ite c!230700 (reg!4110 (regex!2467 lt!467170)) (ite c!230702 (regTwo!8075 (regex!2467 lt!467170)) (regOne!8074 (regex!2467 lt!467170))))))))

(declare-fun b!1402061 () Bool)

(declare-fun call!93573 () List!14307)

(assert (=> b!1402061 (= e!895155 call!93573)))

(declare-fun b!1402062 () Bool)

(declare-fun e!895154 () List!14307)

(assert (=> b!1402062 (= e!895154 (Cons!14241 (c!230523 (regex!2467 lt!467170)) Nil!14241))))

(declare-fun bm!93566 () Bool)

(declare-fun call!93570 () List!14307)

(assert (=> bm!93566 (= call!93570 call!93572)))

(declare-fun bm!93567 () Bool)

(declare-fun call!93571 () List!14307)

(assert (=> bm!93567 (= call!93571 (usedCharacters!278 (ite c!230702 (regOne!8075 (regex!2467 lt!467170)) (regTwo!8074 (regex!2467 lt!467170)))))))

(declare-fun d!400870 () Bool)

(declare-fun c!230703 () Bool)

(assert (=> d!400870 (= c!230703 (or ((_ is EmptyExpr!3781) (regex!2467 lt!467170)) ((_ is EmptyLang!3781) (regex!2467 lt!467170))))))

(declare-fun e!895156 () List!14307)

(assert (=> d!400870 (= (usedCharacters!278 (regex!2467 lt!467170)) e!895156)))

(declare-fun b!1402063 () Bool)

(assert (=> b!1402063 (= e!895153 call!93572)))

(declare-fun b!1402064 () Bool)

(assert (=> b!1402064 (= c!230700 ((_ is Star!3781) (regex!2467 lt!467170)))))

(assert (=> b!1402064 (= e!895154 e!895153)))

(declare-fun b!1402065 () Bool)

(assert (=> b!1402065 (= e!895156 e!895154)))

(declare-fun c!230701 () Bool)

(assert (=> b!1402065 (= c!230701 ((_ is ElementMatch!3781) (regex!2467 lt!467170)))))

(declare-fun b!1402066 () Bool)

(assert (=> b!1402066 (= e!895156 Nil!14241)))

(declare-fun b!1402067 () Bool)

(assert (=> b!1402067 (= e!895155 call!93573)))

(declare-fun bm!93568 () Bool)

(assert (=> bm!93568 (= call!93573 (++!3704 (ite c!230702 call!93571 call!93570) (ite c!230702 call!93570 call!93571)))))

(assert (= (and d!400870 c!230703) b!1402066))

(assert (= (and d!400870 (not c!230703)) b!1402065))

(assert (= (and b!1402065 c!230701) b!1402062))

(assert (= (and b!1402065 (not c!230701)) b!1402064))

(assert (= (and b!1402064 c!230700) b!1402063))

(assert (= (and b!1402064 (not c!230700)) b!1402060))

(assert (= (and b!1402060 c!230702) b!1402067))

(assert (= (and b!1402060 (not c!230702)) b!1402061))

(assert (= (or b!1402067 b!1402061) bm!93567))

(assert (= (or b!1402067 b!1402061) bm!93566))

(assert (= (or b!1402067 b!1402061) bm!93568))

(assert (= (or b!1402063 bm!93566) bm!93565))

(declare-fun m!1579403 () Bool)

(assert (=> bm!93565 m!1579403))

(declare-fun m!1579405 () Bool)

(assert (=> bm!93567 m!1579405))

(declare-fun m!1579407 () Bool)

(assert (=> bm!93568 m!1579407))

(assert (=> b!1401191 d!400870))

(declare-fun d!400872 () Bool)

(assert (=> d!400872 (not (contains!2783 (usedCharacters!278 (regex!2467 lt!467170)) lt!467179))))

(declare-fun lt!467461 () Unit!20569)

(declare-fun choose!8654 (LexerInterface!2162 List!14308 List!14308 Rule!4734 Rule!4734 C!7852) Unit!20569)

(assert (=> d!400872 (= lt!467461 (choose!8654 thiss!19762 rules!2550 rules!2550 lt!467170 (rule!4230 t1!34) lt!467179))))

(assert (=> d!400872 (rulesInvariant!2032 thiss!19762 rules!2550)))

(assert (=> d!400872 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!16 thiss!19762 rules!2550 rules!2550 lt!467170 (rule!4230 t1!34) lt!467179) lt!467461)))

(declare-fun bs!338304 () Bool)

(assert (= bs!338304 d!400872))

(assert (=> bs!338304 m!1578241))

(assert (=> bs!338304 m!1578241))

(assert (=> bs!338304 m!1578243))

(declare-fun m!1579409 () Bool)

(assert (=> bs!338304 m!1579409))

(assert (=> bs!338304 m!1578335))

(assert (=> b!1401191 d!400872))

(declare-fun d!400874 () Bool)

(declare-fun lt!467462 () Bool)

(assert (=> d!400874 (= lt!467462 (select (content!2115 (usedCharacters!278 (regex!2467 (rule!4230 t2!34)))) lt!467165))))

(declare-fun e!895158 () Bool)

(assert (=> d!400874 (= lt!467462 e!895158)))

(declare-fun res!634124 () Bool)

(assert (=> d!400874 (=> (not res!634124) (not e!895158))))

(assert (=> d!400874 (= res!634124 ((_ is Cons!14241) (usedCharacters!278 (regex!2467 (rule!4230 t2!34)))))))

(assert (=> d!400874 (= (contains!2783 (usedCharacters!278 (regex!2467 (rule!4230 t2!34))) lt!467165) lt!467462)))

(declare-fun b!1402068 () Bool)

(declare-fun e!895157 () Bool)

(assert (=> b!1402068 (= e!895158 e!895157)))

(declare-fun res!634125 () Bool)

(assert (=> b!1402068 (=> res!634125 e!895157)))

(assert (=> b!1402068 (= res!634125 (= (h!19642 (usedCharacters!278 (regex!2467 (rule!4230 t2!34)))) lt!467165))))

(declare-fun b!1402069 () Bool)

(assert (=> b!1402069 (= e!895157 (contains!2783 (t!122868 (usedCharacters!278 (regex!2467 (rule!4230 t2!34)))) lt!467165))))

(assert (= (and d!400874 res!634124) b!1402068))

(assert (= (and b!1402068 (not res!634125)) b!1402069))

(assert (=> d!400874 m!1578307))

(declare-fun m!1579411 () Bool)

(assert (=> d!400874 m!1579411))

(declare-fun m!1579413 () Bool)

(assert (=> d!400874 m!1579413))

(declare-fun m!1579415 () Bool)

(assert (=> b!1402069 m!1579415))

(assert (=> b!1401190 d!400874))

(declare-fun b!1402070 () Bool)

(declare-fun e!895159 () List!14307)

(declare-fun e!895161 () List!14307)

(assert (=> b!1402070 (= e!895159 e!895161)))

(declare-fun c!230707 () Bool)

(assert (=> b!1402070 (= c!230707 ((_ is Union!3781) (regex!2467 (rule!4230 t2!34))))))

(declare-fun c!230705 () Bool)

(declare-fun bm!93569 () Bool)

(declare-fun call!93576 () List!14307)

(assert (=> bm!93569 (= call!93576 (usedCharacters!278 (ite c!230705 (reg!4110 (regex!2467 (rule!4230 t2!34))) (ite c!230707 (regTwo!8075 (regex!2467 (rule!4230 t2!34))) (regOne!8074 (regex!2467 (rule!4230 t2!34)))))))))

(declare-fun b!1402071 () Bool)

(declare-fun call!93577 () List!14307)

(assert (=> b!1402071 (= e!895161 call!93577)))

(declare-fun b!1402072 () Bool)

(declare-fun e!895160 () List!14307)

(assert (=> b!1402072 (= e!895160 (Cons!14241 (c!230523 (regex!2467 (rule!4230 t2!34))) Nil!14241))))

(declare-fun bm!93570 () Bool)

(declare-fun call!93574 () List!14307)

(assert (=> bm!93570 (= call!93574 call!93576)))

(declare-fun bm!93571 () Bool)

(declare-fun call!93575 () List!14307)

(assert (=> bm!93571 (= call!93575 (usedCharacters!278 (ite c!230707 (regOne!8075 (regex!2467 (rule!4230 t2!34))) (regTwo!8074 (regex!2467 (rule!4230 t2!34))))))))

(declare-fun d!400876 () Bool)

(declare-fun c!230708 () Bool)

(assert (=> d!400876 (= c!230708 (or ((_ is EmptyExpr!3781) (regex!2467 (rule!4230 t2!34))) ((_ is EmptyLang!3781) (regex!2467 (rule!4230 t2!34)))))))

(declare-fun e!895162 () List!14307)

(assert (=> d!400876 (= (usedCharacters!278 (regex!2467 (rule!4230 t2!34))) e!895162)))

(declare-fun b!1402073 () Bool)

(assert (=> b!1402073 (= e!895159 call!93576)))

(declare-fun b!1402074 () Bool)

(assert (=> b!1402074 (= c!230705 ((_ is Star!3781) (regex!2467 (rule!4230 t2!34))))))

(assert (=> b!1402074 (= e!895160 e!895159)))

(declare-fun b!1402075 () Bool)

(assert (=> b!1402075 (= e!895162 e!895160)))

(declare-fun c!230706 () Bool)

(assert (=> b!1402075 (= c!230706 ((_ is ElementMatch!3781) (regex!2467 (rule!4230 t2!34))))))

(declare-fun b!1402076 () Bool)

(assert (=> b!1402076 (= e!895162 Nil!14241)))

(declare-fun b!1402077 () Bool)

(assert (=> b!1402077 (= e!895161 call!93577)))

(declare-fun bm!93572 () Bool)

(assert (=> bm!93572 (= call!93577 (++!3704 (ite c!230707 call!93575 call!93574) (ite c!230707 call!93574 call!93575)))))

(assert (= (and d!400876 c!230708) b!1402076))

(assert (= (and d!400876 (not c!230708)) b!1402075))

(assert (= (and b!1402075 c!230706) b!1402072))

(assert (= (and b!1402075 (not c!230706)) b!1402074))

(assert (= (and b!1402074 c!230705) b!1402073))

(assert (= (and b!1402074 (not c!230705)) b!1402070))

(assert (= (and b!1402070 c!230707) b!1402077))

(assert (= (and b!1402070 (not c!230707)) b!1402071))

(assert (= (or b!1402077 b!1402071) bm!93571))

(assert (= (or b!1402077 b!1402071) bm!93570))

(assert (= (or b!1402077 b!1402071) bm!93572))

(assert (= (or b!1402073 bm!93570) bm!93569))

(declare-fun m!1579417 () Bool)

(assert (=> bm!93569 m!1579417))

(declare-fun m!1579419 () Bool)

(assert (=> bm!93571 m!1579419))

(declare-fun m!1579421 () Bool)

(assert (=> bm!93572 m!1579421))

(assert (=> b!1401190 d!400876))

(declare-fun d!400878 () Bool)

(declare-fun lt!467463 () Bool)

(assert (=> d!400878 (= lt!467463 (select (content!2115 lt!467174) lt!467165))))

(declare-fun e!895164 () Bool)

(assert (=> d!400878 (= lt!467463 e!895164)))

(declare-fun res!634126 () Bool)

(assert (=> d!400878 (=> (not res!634126) (not e!895164))))

(assert (=> d!400878 (= res!634126 ((_ is Cons!14241) lt!467174))))

(assert (=> d!400878 (= (contains!2783 lt!467174 lt!467165) lt!467463)))

(declare-fun b!1402078 () Bool)

(declare-fun e!895163 () Bool)

(assert (=> b!1402078 (= e!895164 e!895163)))

(declare-fun res!634127 () Bool)

(assert (=> b!1402078 (=> res!634127 e!895163)))

(assert (=> b!1402078 (= res!634127 (= (h!19642 lt!467174) lt!467165))))

(declare-fun b!1402079 () Bool)

(assert (=> b!1402079 (= e!895163 (contains!2783 (t!122868 lt!467174) lt!467165))))

(assert (= (and d!400878 res!634126) b!1402078))

(assert (= (and b!1402078 (not res!634127)) b!1402079))

(assert (=> d!400878 m!1579183))

(declare-fun m!1579423 () Bool)

(assert (=> d!400878 m!1579423))

(declare-fun m!1579425 () Bool)

(assert (=> b!1402079 m!1579425))

(assert (=> b!1401211 d!400878))

(declare-fun bs!338305 () Bool)

(declare-fun d!400880 () Bool)

(assert (= bs!338305 (and d!400880 b!1401210)))

(declare-fun lambda!61426 () Int)

(assert (=> bs!338305 (not (= lambda!61426 lambda!61384))))

(declare-fun bs!338306 () Bool)

(assert (= bs!338306 (and d!400880 b!1401208)))

(assert (=> bs!338306 (not (= lambda!61426 lambda!61385))))

(assert (=> d!400880 true))

(declare-fun order!8723 () Int)

(declare-fun dynLambda!6599 (Int Int) Int)

(assert (=> d!400880 (< (dynLambda!6599 order!8723 lambda!61384) (dynLambda!6599 order!8723 lambda!61426))))

(assert (=> d!400880 (= (exists!579 rules!2550 lambda!61384) (not (forall!3457 rules!2550 lambda!61426)))))

(declare-fun bs!338307 () Bool)

(assert (= bs!338307 d!400880))

(declare-fun m!1579427 () Bool)

(assert (=> bs!338307 m!1579427))

(assert (=> b!1401210 d!400880))

(declare-fun bs!338308 () Bool)

(declare-fun d!400882 () Bool)

(assert (= bs!338308 (and d!400882 b!1401210)))

(declare-fun lambda!61429 () Int)

(assert (=> bs!338308 (not (= lambda!61429 lambda!61384))))

(declare-fun bs!338309 () Bool)

(assert (= bs!338309 (and d!400882 b!1401208)))

(assert (=> bs!338309 (not (= lambda!61429 lambda!61385))))

(declare-fun bs!338310 () Bool)

(assert (= bs!338310 (and d!400882 d!400880)))

(assert (=> bs!338310 (not (= lambda!61429 lambda!61426))))

(assert (=> d!400882 true))

(assert (=> d!400882 true))

(declare-fun order!8725 () Int)

(declare-fun dynLambda!6600 (Int Int) Int)

(assert (=> d!400882 (< (dynLambda!6600 order!8725 lambda!61382) (dynLambda!6599 order!8723 lambda!61429))))

(assert (=> d!400882 (exists!579 rules!2550 lambda!61429)))

(declare-fun lt!467466 () Unit!20569)

(declare-fun choose!8655 (List!14308 Int Regex!3781) Unit!20569)

(assert (=> d!400882 (= lt!467466 (choose!8655 rules!2550 lambda!61382 lt!467171))))

(assert (=> d!400882 (contains!2785 (map!3161 rules!2550 lambda!61382) lt!467171)))

(assert (=> d!400882 (= (lemmaMapContains!178 rules!2550 lambda!61382 lt!467171) lt!467466)))

(declare-fun bs!338311 () Bool)

(assert (= bs!338311 d!400882))

(declare-fun m!1579429 () Bool)

(assert (=> bs!338311 m!1579429))

(declare-fun m!1579431 () Bool)

(assert (=> bs!338311 m!1579431))

(assert (=> bs!338311 m!1578209))

(assert (=> bs!338311 m!1578209))

(assert (=> bs!338311 m!1578211))

(assert (=> b!1401210 d!400882))

(declare-fun b!1402096 () Bool)

(declare-fun b_free!34155 () Bool)

(declare-fun b_next!34859 () Bool)

(assert (=> b!1402096 (= b_free!34155 (not b_next!34859))))

(declare-fun tp!398783 () Bool)

(declare-fun b_and!93883 () Bool)

(assert (=> b!1402096 (= tp!398783 b_and!93883)))

(declare-fun b_free!34157 () Bool)

(declare-fun b_next!34861 () Bool)

(assert (=> b!1402096 (= b_free!34157 (not b_next!34861))))

(declare-fun tb!73109 () Bool)

(declare-fun t!122905 () Bool)

(assert (=> (and b!1402096 (= (toChars!3617 (transformation!2467 (h!19643 (t!122869 rules!2550)))) (toChars!3617 (transformation!2467 (rule!4230 t1!34)))) t!122905) tb!73109))

(declare-fun result!88886 () Bool)

(assert (= result!88886 result!88846))

(assert (=> b!1401713 t!122905))

(declare-fun tb!73111 () Bool)

(declare-fun t!122907 () Bool)

(assert (=> (and b!1402096 (= (toChars!3617 (transformation!2467 (h!19643 (t!122869 rules!2550)))) (toChars!3617 (transformation!2467 (rule!4230 t2!34)))) t!122907) tb!73111))

(declare-fun result!88888 () Bool)

(assert (= result!88888 result!88854))

(assert (=> b!1401720 t!122907))

(assert (=> d!400812 t!122905))

(assert (=> d!400840 t!122907))

(declare-fun b_and!93885 () Bool)

(declare-fun tp!398781 () Bool)

(assert (=> b!1402096 (= tp!398781 (and (=> t!122905 result!88886) (=> t!122907 result!88888) b_and!93885))))

(declare-fun e!895174 () Bool)

(assert (=> b!1402096 (= e!895174 (and tp!398783 tp!398781))))

(declare-fun b!1402095 () Bool)

(declare-fun tp!398782 () Bool)

(declare-fun e!895173 () Bool)

(assert (=> b!1402095 (= e!895173 (and tp!398782 (inv!18554 (tag!2729 (h!19643 (t!122869 rules!2550)))) (inv!18557 (transformation!2467 (h!19643 (t!122869 rules!2550)))) e!895174))))

(declare-fun b!1402094 () Bool)

(declare-fun e!895175 () Bool)

(declare-fun tp!398780 () Bool)

(assert (=> b!1402094 (= e!895175 (and e!895173 tp!398780))))

(assert (=> b!1401209 (= tp!398717 e!895175)))

(assert (= b!1402095 b!1402096))

(assert (= b!1402094 b!1402095))

(assert (= (and b!1401209 ((_ is Cons!14242) (t!122869 rules!2550))) b!1402094))

(declare-fun m!1579433 () Bool)

(assert (=> b!1402095 m!1579433))

(declare-fun m!1579435 () Bool)

(assert (=> b!1402095 m!1579435))

(declare-fun b!1402109 () Bool)

(declare-fun e!895179 () Bool)

(declare-fun tp!398795 () Bool)

(assert (=> b!1402109 (= e!895179 tp!398795)))

(declare-fun b!1402108 () Bool)

(declare-fun tp!398798 () Bool)

(declare-fun tp!398794 () Bool)

(assert (=> b!1402108 (= e!895179 (and tp!398798 tp!398794))))

(assert (=> b!1401203 (= tp!398722 e!895179)))

(declare-fun b!1402110 () Bool)

(declare-fun tp!398796 () Bool)

(declare-fun tp!398797 () Bool)

(assert (=> b!1402110 (= e!895179 (and tp!398796 tp!398797))))

(declare-fun b!1402107 () Bool)

(declare-fun tp_is_empty!6811 () Bool)

(assert (=> b!1402107 (= e!895179 tp_is_empty!6811)))

(assert (= (and b!1401203 ((_ is ElementMatch!3781) (regex!2467 (rule!4230 t2!34)))) b!1402107))

(assert (= (and b!1401203 ((_ is Concat!6339) (regex!2467 (rule!4230 t2!34)))) b!1402108))

(assert (= (and b!1401203 ((_ is Star!3781) (regex!2467 (rule!4230 t2!34)))) b!1402109))

(assert (= (and b!1401203 ((_ is Union!3781) (regex!2467 (rule!4230 t2!34)))) b!1402110))

(declare-fun b!1402115 () Bool)

(declare-fun e!895182 () Bool)

(declare-fun tp!398801 () Bool)

(assert (=> b!1402115 (= e!895182 (and tp_is_empty!6811 tp!398801))))

(assert (=> b!1401187 (= tp!398711 e!895182)))

(assert (= (and b!1401187 ((_ is Cons!14241) (originalCharacters!3329 t1!34))) b!1402115))

(declare-fun b!1402118 () Bool)

(declare-fun e!895183 () Bool)

(declare-fun tp!398803 () Bool)

(assert (=> b!1402118 (= e!895183 tp!398803)))

(declare-fun b!1402117 () Bool)

(declare-fun tp!398806 () Bool)

(declare-fun tp!398802 () Bool)

(assert (=> b!1402117 (= e!895183 (and tp!398806 tp!398802))))

(assert (=> b!1401228 (= tp!398719 e!895183)))

(declare-fun b!1402119 () Bool)

(declare-fun tp!398804 () Bool)

(declare-fun tp!398805 () Bool)

(assert (=> b!1402119 (= e!895183 (and tp!398804 tp!398805))))

(declare-fun b!1402116 () Bool)

(assert (=> b!1402116 (= e!895183 tp_is_empty!6811)))

(assert (= (and b!1401228 ((_ is ElementMatch!3781) (regex!2467 (rule!4230 t1!34)))) b!1402116))

(assert (= (and b!1401228 ((_ is Concat!6339) (regex!2467 (rule!4230 t1!34)))) b!1402117))

(assert (= (and b!1401228 ((_ is Star!3781) (regex!2467 (rule!4230 t1!34)))) b!1402118))

(assert (= (and b!1401228 ((_ is Union!3781) (regex!2467 (rule!4230 t1!34)))) b!1402119))

(declare-fun b!1402120 () Bool)

(declare-fun e!895184 () Bool)

(declare-fun tp!398807 () Bool)

(assert (=> b!1402120 (= e!895184 (and tp_is_empty!6811 tp!398807))))

(assert (=> b!1401207 (= tp!398721 e!895184)))

(assert (= (and b!1401207 ((_ is Cons!14241) (originalCharacters!3329 t2!34))) b!1402120))

(declare-fun b!1402123 () Bool)

(declare-fun e!895185 () Bool)

(declare-fun tp!398809 () Bool)

(assert (=> b!1402123 (= e!895185 tp!398809)))

(declare-fun b!1402122 () Bool)

(declare-fun tp!398812 () Bool)

(declare-fun tp!398808 () Bool)

(assert (=> b!1402122 (= e!895185 (and tp!398812 tp!398808))))

(assert (=> b!1401184 (= tp!398714 e!895185)))

(declare-fun b!1402124 () Bool)

(declare-fun tp!398810 () Bool)

(declare-fun tp!398811 () Bool)

(assert (=> b!1402124 (= e!895185 (and tp!398810 tp!398811))))

(declare-fun b!1402121 () Bool)

(assert (=> b!1402121 (= e!895185 tp_is_empty!6811)))

(assert (= (and b!1401184 ((_ is ElementMatch!3781) (regex!2467 (h!19643 rules!2550)))) b!1402121))

(assert (= (and b!1401184 ((_ is Concat!6339) (regex!2467 (h!19643 rules!2550)))) b!1402122))

(assert (= (and b!1401184 ((_ is Star!3781) (regex!2467 (h!19643 rules!2550)))) b!1402123))

(assert (= (and b!1401184 ((_ is Union!3781) (regex!2467 (h!19643 rules!2550)))) b!1402124))

(declare-fun b_lambda!44097 () Bool)

(assert (= b_lambda!44059 (or b!1401210 b_lambda!44097)))

(declare-fun bs!338312 () Bool)

(declare-fun d!400884 () Bool)

(assert (= bs!338312 (and d!400884 b!1401210)))

(assert (=> bs!338312 (= (dynLambda!6588 lambda!61384 lt!467381) (= (regex!2467 lt!467381) lt!467171))))

(assert (=> d!400734 d!400884))

(declare-fun b_lambda!44099 () Bool)

(assert (= b_lambda!44089 (or b!1401185 b_lambda!44099)))

(declare-fun bs!338313 () Bool)

(declare-fun d!400886 () Bool)

(assert (= bs!338313 (and d!400886 b!1401185)))

(declare-fun res!634128 () Bool)

(declare-fun e!895186 () Bool)

(assert (=> bs!338313 (=> (not res!634128) (not e!895186))))

(assert (=> bs!338313 (= res!634128 (validRegex!1655 (h!19645 (map!3161 rules!2550 lambda!61382))))))

(assert (=> bs!338313 (= (dynLambda!6595 lambda!61383 (h!19645 (map!3161 rules!2550 lambda!61382))) e!895186)))

(declare-fun b!1402125 () Bool)

(assert (=> b!1402125 (= e!895186 (matchR!1772 (h!19645 (map!3161 rules!2550 lambda!61382)) lt!467160))))

(assert (= (and bs!338313 res!634128) b!1402125))

(declare-fun m!1579437 () Bool)

(assert (=> bs!338313 m!1579437))

(declare-fun m!1579439 () Bool)

(assert (=> b!1402125 m!1579439))

(assert (=> b!1401938 d!400886))

(declare-fun b_lambda!44101 () Bool)

(assert (= b_lambda!44093 (or b!1401188 b_lambda!44101)))

(declare-fun bs!338314 () Bool)

(declare-fun d!400888 () Bool)

(assert (= bs!338314 (and d!400888 b!1401188)))

(declare-fun res!634129 () Bool)

(declare-fun e!895187 () Bool)

(assert (=> bs!338314 (=> (not res!634129) (not e!895187))))

(assert (=> bs!338314 (= res!634129 (matchR!1772 lt!467189 lt!467443))))

(assert (=> bs!338314 (= (dynLambda!6598 lambda!61381 lt!467443) e!895187)))

(declare-fun b!1402126 () Bool)

(assert (=> b!1402126 (= e!895187 (isPrefix!1158 lt!467174 lt!467443))))

(assert (= (and bs!338314 res!634129) b!1402126))

(declare-fun m!1579441 () Bool)

(assert (=> bs!338314 m!1579441))

(declare-fun m!1579443 () Bool)

(assert (=> b!1402126 m!1579443))

(assert (=> d!400836 d!400888))

(declare-fun b_lambda!44103 () Bool)

(assert (= b_lambda!44057 (or b!1401210 b_lambda!44103)))

(declare-fun bs!338315 () Bool)

(declare-fun d!400890 () Bool)

(assert (= bs!338315 (and d!400890 b!1401210)))

(assert (=> bs!338315 (= (dynLambda!6588 lambda!61384 (h!19643 rules!2550)) (= (regex!2467 (h!19643 rules!2550)) lt!467171))))

(assert (=> b!1401847 d!400890))

(declare-fun b_lambda!44105 () Bool)

(assert (= b_lambda!44023 (or b!1401208 b_lambda!44105)))

(declare-fun bs!338316 () Bool)

(declare-fun d!400892 () Bool)

(assert (= bs!338316 (and d!400892 b!1401208)))

(declare-fun ruleValid!618 (LexerInterface!2162 Rule!4734) Bool)

(assert (=> bs!338316 (= (dynLambda!6588 lambda!61385 (rule!4230 t1!34)) (ruleValid!618 thiss!19762 (rule!4230 t1!34)))))

(declare-fun m!1579445 () Bool)

(assert (=> bs!338316 m!1579445))

(assert (=> d!400582 d!400892))

(declare-fun b_lambda!44107 () Bool)

(assert (= b_lambda!44045 (or (and b!1401227 b_free!34141 (= (toChars!3617 (transformation!2467 (rule!4230 t1!34))) (toChars!3617 (transformation!2467 (rule!4230 t2!34))))) (and b!1401213 b_free!34145) (and b!1401223 b_free!34149 (= (toChars!3617 (transformation!2467 (h!19643 rules!2550))) (toChars!3617 (transformation!2467 (rule!4230 t2!34))))) (and b!1402096 b_free!34157 (= (toChars!3617 (transformation!2467 (h!19643 (t!122869 rules!2550)))) (toChars!3617 (transformation!2467 (rule!4230 t2!34))))) b_lambda!44107)))

(declare-fun b_lambda!44109 () Bool)

(assert (= b_lambda!44021 (or b!1401208 b_lambda!44109)))

(declare-fun bs!338317 () Bool)

(declare-fun d!400894 () Bool)

(assert (= bs!338317 (and d!400894 b!1401208)))

(assert (=> bs!338317 (= (dynLambda!6588 lambda!61385 (rule!4230 t2!34)) (ruleValid!618 thiss!19762 (rule!4230 t2!34)))))

(declare-fun m!1579447 () Bool)

(assert (=> bs!338317 m!1579447))

(assert (=> d!400576 d!400894))

(declare-fun b_lambda!44111 () Bool)

(assert (= b_lambda!44087 (or b!1401185 b_lambda!44111)))

(declare-fun bs!338318 () Bool)

(declare-fun d!400896 () Bool)

(assert (= bs!338318 (and d!400896 b!1401185)))

(declare-fun res!634130 () Bool)

(declare-fun e!895188 () Bool)

(assert (=> bs!338318 (=> (not res!634130) (not e!895188))))

(assert (=> bs!338318 (= res!634130 (validRegex!1655 lt!467404))))

(assert (=> bs!338318 (= (dynLambda!6595 lambda!61383 lt!467404) e!895188)))

(declare-fun b!1402127 () Bool)

(assert (=> b!1402127 (= e!895188 (matchR!1772 lt!467404 lt!467160))))

(assert (= (and bs!338318 res!634130) b!1402127))

(declare-fun m!1579449 () Bool)

(assert (=> bs!338318 m!1579449))

(declare-fun m!1579451 () Bool)

(assert (=> b!1402127 m!1579451))

(assert (=> d!400778 d!400896))

(declare-fun b_lambda!44113 () Bool)

(assert (= b_lambda!44095 (or (and b!1401227 b_free!34141 (= (toChars!3617 (transformation!2467 (rule!4230 t1!34))) (toChars!3617 (transformation!2467 (rule!4230 t2!34))))) (and b!1401213 b_free!34145) (and b!1401223 b_free!34149 (= (toChars!3617 (transformation!2467 (h!19643 rules!2550))) (toChars!3617 (transformation!2467 (rule!4230 t2!34))))) (and b!1402096 b_free!34157 (= (toChars!3617 (transformation!2467 (h!19643 (t!122869 rules!2550)))) (toChars!3617 (transformation!2467 (rule!4230 t2!34))))) b_lambda!44113)))

(declare-fun b_lambda!44115 () Bool)

(assert (= b_lambda!44043 (or (and b!1401227 b_free!34141) (and b!1401213 b_free!34145 (= (toChars!3617 (transformation!2467 (rule!4230 t2!34))) (toChars!3617 (transformation!2467 (rule!4230 t1!34))))) (and b!1401223 b_free!34149 (= (toChars!3617 (transformation!2467 (h!19643 rules!2550))) (toChars!3617 (transformation!2467 (rule!4230 t1!34))))) (and b!1402096 b_free!34157 (= (toChars!3617 (transformation!2467 (h!19643 (t!122869 rules!2550)))) (toChars!3617 (transformation!2467 (rule!4230 t1!34))))) b_lambda!44115)))

(declare-fun b_lambda!44117 () Bool)

(assert (= b_lambda!44025 (or b!1401208 b_lambda!44117)))

(declare-fun bs!338319 () Bool)

(declare-fun d!400898 () Bool)

(assert (= bs!338319 (and d!400898 b!1401208)))

(assert (=> bs!338319 (= (dynLambda!6588 lambda!61385 lt!467170) (ruleValid!618 thiss!19762 lt!467170))))

(declare-fun m!1579453 () Bool)

(assert (=> bs!338319 m!1579453))

(assert (=> d!400584 d!400898))

(declare-fun b_lambda!44119 () Bool)

(assert (= b_lambda!44091 (or (and b!1401227 b_free!34141) (and b!1401213 b_free!34145 (= (toChars!3617 (transformation!2467 (rule!4230 t2!34))) (toChars!3617 (transformation!2467 (rule!4230 t1!34))))) (and b!1401223 b_free!34149 (= (toChars!3617 (transformation!2467 (h!19643 rules!2550))) (toChars!3617 (transformation!2467 (rule!4230 t1!34))))) (and b!1402096 b_free!34157 (= (toChars!3617 (transformation!2467 (h!19643 (t!122869 rules!2550)))) (toChars!3617 (transformation!2467 (rule!4230 t1!34))))) b_lambda!44119)))

(declare-fun b_lambda!44121 () Bool)

(assert (= b_lambda!44037 (or b!1401185 b_lambda!44121)))

(declare-fun bs!338320 () Bool)

(declare-fun d!400900 () Bool)

(assert (= bs!338320 (and d!400900 b!1401185)))

(assert (=> bs!338320 (= (dynLambda!6590 lambda!61382 (h!19643 rules!2550)) (regex!2467 (h!19643 rules!2550)))))

(assert (=> b!1401561 d!400900))

(check-sat (not d!400850) (not b!1401845) (not b!1401944) (not d!400680) (not b!1401942) (not bm!93568) (not d!400864) (not b!1401381) (not b!1401353) (not b!1402108) (not b!1401735) (not b!1401978) (not d!400554) (not d!400830) (not b!1401970) (not bs!338317) b_and!93877 (not d!400856) (not b_lambda!44119) (not b!1401989) (not b!1401492) (not b!1402109) (not b!1401546) (not d!400860) (not b!1402014) (not b!1402003) (not b_lambda!44115) (not d!400800) (not d!400794) (not b!1401703) (not b!1401705) (not d!400814) (not bs!338318) b_and!93823 (not d!400834) (not d!400756) (not b!1401849) (not bm!93563) (not b!1401991) (not b!1401749) (not b!1402069) (not b!1401708) (not b!1401744) (not b!1401561) (not d!400684) (not d!400836) (not b!1401880) (not b!1401348) (not b_lambda!44113) (not b!1401848) (not b!1401719) (not b!1402018) b_and!93883 (not b!1401939) (not b!1402000) (not bm!93525) (not b!1402053) (not bm!93553) (not b!1401357) (not b!1401722) (not b!1401740) (not d!400632) (not b!1402122) b_and!93885 (not b!1402029) (not b!1402119) (not b!1401417) b_and!93819 (not d!400818) (not b!1401495) (not b!1401347) (not b!1401993) (not b!1402115) (not b!1401701) (not b!1401743) (not b!1401858) (not d!400628) (not d!400778) (not b!1401553) (not d!400674) (not d!400750) (not b_lambda!44109) (not d!400858) (not b!1402126) (not b!1402022) (not d!400614) (not b!1401986) (not d!400810) (not d!400734) (not b!1401501) (not b!1401958) (not b!1401545) (not b!1402026) tp_is_empty!6811 (not d!400682) (not b!1401976) (not b!1402013) (not d!400690) (not d!400638) (not b!1401352) (not d!400826) (not b_lambda!44103) (not b!1402095) (not b_lambda!44107) (not b!1402059) (not b_next!34845) (not b!1401373) (not d!400676) (not b!1402024) (not d!400878) b_and!93881 (not b!1402117) (not d!400686) (not d!400688) b_and!93879 (not d!400630) (not b_next!34843) (not b!1402021) (not d!400842) (not d!400758) (not d!400806) (not b!1402118) (not b!1401977) (not b!1402079) (not d!400822) (not b!1401409) (not bm!93511) (not bm!93567) (not b_lambda!44099) (not b!1402110) (not b!1401984) (not bm!93572) (not b!1401407) (not b_next!34847) (not b!1401817) (not tb!73087) (not b!1402123) (not b!1402124) (not b!1401859) (not b!1401819) (not b!1401714) (not d!400840) (not tb!73081) (not bm!93527) (not d!400820) (not d!400584) (not d!400772) (not bm!93562) (not b!1401721) (not bm!93526) (not d!400808) (not b!1401700) (not b!1401742) (not b!1401950) (not d!400838) (not b!1402009) (not d!400640) (not b!1401969) (not b!1401543) (not b!1401491) (not d!400880) (not d!400846) (not b!1401747) (not b!1401816) (not b!1401702) (not b!1401733) (not d!400862) (not bs!338316) (not b!1402020) (not d!400576) (not d!400552) (not b!1401706) (not bm!93565) (not b!1401720) (not b!1401959) (not b!1402008) (not d!400828) (not b!1401582) (not d!400832) (not b!1401410) (not bs!338319) (not b!1401987) (not bm!93554) (not b!1401497) (not bm!93569) (not bm!93523) (not b!1401713) (not b_next!34861) (not bm!93571) (not b_next!34853) (not d!400812) (not b_lambda!44121) (not b!1401737) (not b!1402125) (not d!400762) (not b!1401374) (not b!1402120) (not b!1401552) (not b!1402127) (not d!400608) (not d!400816) (not d!400634) (not b!1401957) (not b_lambda!44105) (not d!400854) (not b!1401746) (not b_lambda!44117) (not b!1401940) (not d!400844) (not b!1402030) (not b_next!34849) (not b_lambda!44097) (not b!1401542) (not d!400564) (not b!1401351) (not d!400678) (not b_lambda!44111) (not bs!338313) (not bm!93555) (not b!1401745) (not b!1402028) (not bs!338314) (not d!400882) (not d!400824) (not b!1401704) (not b!1401496) (not d!400732) (not b_next!34851) (not d!400594) (not b!1402012) (not b!1401821) (not b!1402094) (not d!400872) (not b_next!34859) (not b!1401741) (not b!1402025) (not d!400582) (not b!1401994) (not d!400874) (not b!1402005) (not d!400868) (not b_lambda!44101) b_and!93827)
(check-sat b_and!93877 b_and!93823 b_and!93883 b_and!93885 b_and!93819 (not b_next!34845) (not b_next!34847) (not b_next!34849) (not b_next!34851) b_and!93879 b_and!93881 (not b_next!34843) (not b_next!34861) (not b_next!34853) (not b_next!34859) b_and!93827)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!132310 () Bool)

(assert start!132310)

(declare-fun b!1431685 () Bool)

(declare-fun e!913852 () Bool)

(declare-fun e!913857 () Bool)

(assert (=> b!1431685 (= e!913852 e!913857)))

(declare-fun res!647972 () Bool)

(assert (=> b!1431685 (=> (not res!647972) (not e!913857))))

(declare-datatypes ((C!8006 0))(
  ( (C!8007 (val!4573 Int)) )
))
(declare-datatypes ((List!14898 0))(
  ( (Nil!14832) (Cons!14832 (h!20233 C!8006) (t!127093 List!14898)) )
))
(declare-datatypes ((IArray!10057 0))(
  ( (IArray!10058 (innerList!5086 List!14898)) )
))
(declare-datatypes ((Conc!5026 0))(
  ( (Node!5026 (left!12641 Conc!5026) (right!12971 Conc!5026) (csize!10282 Int) (cheight!5237 Int)) (Leaf!7528 (xs!7759 IArray!10057) (csize!10283 Int)) (Empty!5026) )
))
(declare-datatypes ((BalanceConc!9992 0))(
  ( (BalanceConc!9993 (c!235397 Conc!5026)) )
))
(declare-datatypes ((List!14899 0))(
  ( (Nil!14833) (Cons!14833 (h!20234 (_ BitVec 16)) (t!127094 List!14899)) )
))
(declare-datatypes ((TokenValue!2690 0))(
  ( (FloatLiteralValue!5380 (text!19275 List!14899)) (TokenValueExt!2689 (__x!9178 Int)) (Broken!13450 (value!83723 List!14899)) (Object!2755) (End!2690) (Def!2690) (Underscore!2690) (Match!2690) (Else!2690) (Error!2690) (Case!2690) (If!2690) (Extends!2690) (Abstract!2690) (Class!2690) (Val!2690) (DelimiterValue!5380 (del!2750 List!14899)) (KeywordValue!2696 (value!83724 List!14899)) (CommentValue!5380 (value!83725 List!14899)) (WhitespaceValue!5380 (value!83726 List!14899)) (IndentationValue!2690 (value!83727 List!14899)) (String!17707) (Int32!2690) (Broken!13451 (value!83728 List!14899)) (Boolean!2691) (Unit!22379) (OperatorValue!2693 (op!2750 List!14899)) (IdentifierValue!5380 (value!83729 List!14899)) (IdentifierValue!5381 (value!83730 List!14899)) (WhitespaceValue!5381 (value!83731 List!14899)) (True!5380) (False!5380) (Broken!13452 (value!83732 List!14899)) (Broken!13453 (value!83733 List!14899)) (True!5381) (RightBrace!2690) (RightBracket!2690) (Colon!2690) (Null!2690) (Comma!2690) (LeftBracket!2690) (False!5381) (LeftBrace!2690) (ImaginaryLiteralValue!2690 (text!19276 List!14899)) (StringLiteralValue!8070 (value!83734 List!14899)) (EOFValue!2690 (value!83735 List!14899)) (IdentValue!2690 (value!83736 List!14899)) (DelimiterValue!5381 (value!83737 List!14899)) (DedentValue!2690 (value!83738 List!14899)) (NewLineValue!2690 (value!83739 List!14899)) (IntegerValue!8070 (value!83740 (_ BitVec 32)) (text!19277 List!14899)) (IntegerValue!8071 (value!83741 Int) (text!19278 List!14899)) (Times!2690) (Or!2690) (Equal!2690) (Minus!2690) (Broken!13454 (value!83742 List!14899)) (And!2690) (Div!2690) (LessEqual!2690) (Mod!2690) (Concat!6604) (Not!2690) (Plus!2690) (SpaceValue!2690 (value!83743 List!14899)) (IntegerValue!8072 (value!83744 Int) (text!19279 List!14899)) (StringLiteralValue!8071 (text!19280 List!14899)) (FloatLiteralValue!5381 (text!19281 List!14899)) (BytesLiteralValue!2690 (value!83745 List!14899)) (CommentValue!5381 (value!83746 List!14899)) (StringLiteralValue!8072 (value!83747 List!14899)) (ErrorTokenValue!2690 (msg!2751 List!14899)) )
))
(declare-datatypes ((Regex!3914 0))(
  ( (ElementMatch!3914 (c!235398 C!8006)) (Concat!6605 (regOne!8340 Regex!3914) (regTwo!8340 Regex!3914)) (EmptyExpr!3914) (Star!3914 (reg!4243 Regex!3914)) (EmptyLang!3914) (Union!3914 (regOne!8341 Regex!3914) (regTwo!8341 Regex!3914)) )
))
(declare-datatypes ((String!17708 0))(
  ( (String!17709 (value!83748 String)) )
))
(declare-datatypes ((TokenValueInjection!5040 0))(
  ( (TokenValueInjection!5041 (toValue!3903 Int) (toChars!3762 Int)) )
))
(declare-datatypes ((Rule!5000 0))(
  ( (Rule!5001 (regex!2600 Regex!3914) (tag!2862 String!17708) (isSeparator!2600 Bool) (transformation!2600 TokenValueInjection!5040)) )
))
(declare-datatypes ((Token!4862 0))(
  ( (Token!4863 (value!83749 TokenValue!2690) (rule!4363 Rule!5000) (size!12172 Int) (originalCharacters!3462 List!14898)) )
))
(declare-datatypes ((List!14900 0))(
  ( (Nil!14834) (Cons!14834 (h!20235 Token!4862) (t!127095 List!14900)) )
))
(declare-datatypes ((IArray!10059 0))(
  ( (IArray!10060 (innerList!5087 List!14900)) )
))
(declare-datatypes ((Conc!5027 0))(
  ( (Node!5027 (left!12642 Conc!5027) (right!12972 Conc!5027) (csize!10284 Int) (cheight!5238 Int)) (Leaf!7529 (xs!7760 IArray!10059) (csize!10285 Int)) (Empty!5027) )
))
(declare-datatypes ((BalanceConc!9994 0))(
  ( (BalanceConc!9995 (c!235399 Conc!5027)) )
))
(declare-datatypes ((List!14901 0))(
  ( (Nil!14835) (Cons!14835 (h!20236 Rule!5000) (t!127096 List!14901)) )
))
(declare-datatypes ((PrintableTokens!982 0))(
  ( (PrintableTokens!983 (rules!11305 List!14901) (tokens!1945 BalanceConc!9994)) )
))
(declare-fun other!32 () PrintableTokens!982)

(declare-fun isEmpty!9194 (BalanceConc!9994) Bool)

(assert (=> b!1431685 (= res!647972 (not (isEmpty!9194 (tokens!1945 other!32))))))

(declare-datatypes ((Unit!22380 0))(
  ( (Unit!22381) )
))
(declare-fun lt!486184 () Unit!22380)

(declare-fun thiss!10022 () PrintableTokens!982)

(declare-fun lemmaInvariant!296 (PrintableTokens!982) Unit!22380)

(assert (=> b!1431685 (= lt!486184 (lemmaInvariant!296 thiss!10022))))

(declare-fun lt!486188 () Unit!22380)

(assert (=> b!1431685 (= lt!486188 (lemmaInvariant!296 other!32))))

(declare-fun b!1431686 () Bool)

(declare-fun res!647977 () Bool)

(declare-fun e!913854 () Bool)

(assert (=> b!1431686 (=> res!647977 e!913854)))

(declare-fun isEmpty!9195 (List!14901) Bool)

(assert (=> b!1431686 (= res!647977 (isEmpty!9195 (rules!11305 thiss!10022)))))

(declare-fun res!647976 () Bool)

(assert (=> start!132310 (=> (not res!647976) (not e!913852))))

(assert (=> start!132310 (= res!647976 (= (rules!11305 thiss!10022) (rules!11305 other!32)))))

(assert (=> start!132310 e!913852))

(declare-fun e!913858 () Bool)

(declare-fun inv!19689 (PrintableTokens!982) Bool)

(assert (=> start!132310 (and (inv!19689 thiss!10022) e!913858)))

(declare-fun e!913850 () Bool)

(assert (=> start!132310 (and (inv!19689 other!32) e!913850)))

(declare-fun b!1431687 () Bool)

(declare-fun res!647978 () Bool)

(assert (=> b!1431687 (=> (not res!647978) (not e!913857))))

(assert (=> b!1431687 (= res!647978 (not (isEmpty!9194 (tokens!1945 thiss!10022))))))

(declare-fun b!1431688 () Bool)

(declare-fun e!913855 () Bool)

(assert (=> b!1431688 (= e!913857 (not e!913855))))

(declare-fun res!647974 () Bool)

(assert (=> b!1431688 (=> res!647974 e!913855)))

(declare-fun lt!486183 () Token!4862)

(declare-fun lt!486186 () Token!4862)

(declare-datatypes ((LexerInterface!2264 0))(
  ( (LexerInterfaceExt!2261 (__x!9179 Int)) (Lexer!2262) )
))
(declare-fun separableTokensPredicate!499 (LexerInterface!2264 Token!4862 Token!4862 List!14901) Bool)

(assert (=> b!1431688 (= res!647974 (not (separableTokensPredicate!499 Lexer!2262 lt!486186 lt!486183 (rules!11305 thiss!10022))))))

(declare-fun rulesProduceIndividualToken!1197 (LexerInterface!2264 List!14901 Token!4862) Bool)

(assert (=> b!1431688 (rulesProduceIndividualToken!1197 Lexer!2262 (rules!11305 thiss!10022) lt!486183)))

(declare-fun lt!486185 () List!14900)

(declare-fun lt!486182 () Unit!22380)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!382 (LexerInterface!2264 List!14901 List!14900 Token!4862) Unit!22380)

(assert (=> b!1431688 (= lt!486182 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!382 Lexer!2262 (rules!11305 thiss!10022) lt!486185 lt!486183))))

(declare-fun head!2852 (BalanceConc!9994) Token!4862)

(assert (=> b!1431688 (= lt!486183 (head!2852 (tokens!1945 other!32)))))

(declare-fun list!5893 (BalanceConc!9994) List!14900)

(assert (=> b!1431688 (= lt!486185 (list!5893 (tokens!1945 other!32)))))

(assert (=> b!1431688 (rulesProduceIndividualToken!1197 Lexer!2262 (rules!11305 thiss!10022) lt!486186)))

(declare-fun lt!486179 () List!14900)

(declare-fun lt!486181 () Unit!22380)

(assert (=> b!1431688 (= lt!486181 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!382 Lexer!2262 (rules!11305 thiss!10022) lt!486179 lt!486186))))

(declare-fun last!134 (BalanceConc!9994) Token!4862)

(assert (=> b!1431688 (= lt!486186 (last!134 (tokens!1945 thiss!10022)))))

(assert (=> b!1431688 (= lt!486179 (list!5893 (tokens!1945 thiss!10022)))))

(declare-fun b!1431689 () Bool)

(assert (=> b!1431689 (= e!913855 e!913854)))

(declare-fun res!647973 () Bool)

(assert (=> b!1431689 (=> res!647973 e!913854)))

(declare-fun size!12173 (BalanceConc!9994) Int)

(declare-fun ++!3942 (BalanceConc!9994 BalanceConc!9994) BalanceConc!9994)

(assert (=> b!1431689 (= res!647973 (> 0 (size!12173 (++!3942 (tokens!1945 thiss!10022) (tokens!1945 other!32)))))))

(declare-fun e!913853 () Bool)

(assert (=> b!1431689 e!913853))

(declare-fun res!647975 () Bool)

(assert (=> b!1431689 (=> (not res!647975) (not e!913853))))

(declare-fun lt!486187 () List!14900)

(declare-fun rulesProduceEachTokenIndividuallyList!707 (LexerInterface!2264 List!14901 List!14900) Bool)

(assert (=> b!1431689 (= res!647975 (rulesProduceEachTokenIndividuallyList!707 Lexer!2262 (rules!11305 thiss!10022) lt!486187))))

(declare-fun ++!3943 (List!14900 List!14900) List!14900)

(assert (=> b!1431689 (= lt!486187 (++!3943 lt!486179 lt!486185))))

(declare-fun lt!486180 () Unit!22380)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!37 (LexerInterface!2264 List!14901 List!14900 List!14900) Unit!22380)

(assert (=> b!1431689 (= lt!486180 (lemmaRulesProduceEachTokenIndividuallyConcat!37 Lexer!2262 (rules!11305 thiss!10022) lt!486179 lt!486185))))

(declare-fun lt!486189 () Unit!22380)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!37 (LexerInterface!2264 List!14900 List!14900 List!14901) Unit!22380)

(assert (=> b!1431689 (= lt!486189 (tokensListTwoByTwoPredicateConcatSeparableTokensList!37 Lexer!2262 lt!486179 lt!486185 (rules!11305 thiss!10022)))))

(declare-fun tp!405833 () Bool)

(declare-fun b!1431690 () Bool)

(declare-fun e!913851 () Bool)

(declare-fun inv!19690 (BalanceConc!9994) Bool)

(assert (=> b!1431690 (= e!913858 (and tp!405833 (inv!19690 (tokens!1945 thiss!10022)) e!913851))))

(declare-fun b!1431691 () Bool)

(declare-fun tp!405835 () Bool)

(declare-fun inv!19691 (Conc!5027) Bool)

(assert (=> b!1431691 (= e!913851 (and (inv!19691 (c!235399 (tokens!1945 thiss!10022))) tp!405835))))

(declare-fun b!1431692 () Bool)

(declare-fun e!913856 () Bool)

(declare-fun tp!405834 () Bool)

(assert (=> b!1431692 (= e!913856 (and (inv!19691 (c!235399 (tokens!1945 other!32))) tp!405834))))

(declare-fun b!1431693 () Bool)

(declare-fun rulesInvariant!2112 (LexerInterface!2264 List!14901) Bool)

(assert (=> b!1431693 (= e!913854 (rulesInvariant!2112 Lexer!2262 (rules!11305 thiss!10022)))))

(declare-fun b!1431694 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!222 (LexerInterface!2264 List!14900 List!14901) Bool)

(assert (=> b!1431694 (= e!913853 (tokensListTwoByTwoPredicateSeparableList!222 Lexer!2262 lt!486187 (rules!11305 thiss!10022)))))

(declare-fun tp!405836 () Bool)

(declare-fun b!1431695 () Bool)

(assert (=> b!1431695 (= e!913850 (and tp!405836 (inv!19690 (tokens!1945 other!32)) e!913856))))

(assert (= (and start!132310 res!647976) b!1431685))

(assert (= (and b!1431685 res!647972) b!1431687))

(assert (= (and b!1431687 res!647978) b!1431688))

(assert (= (and b!1431688 (not res!647974)) b!1431689))

(assert (= (and b!1431689 res!647975) b!1431694))

(assert (= (and b!1431689 (not res!647973)) b!1431686))

(assert (= (and b!1431686 (not res!647977)) b!1431693))

(assert (= b!1431690 b!1431691))

(assert (= start!132310 b!1431690))

(assert (= b!1431695 b!1431692))

(assert (= start!132310 b!1431695))

(declare-fun m!1631293 () Bool)

(assert (=> start!132310 m!1631293))

(declare-fun m!1631295 () Bool)

(assert (=> start!132310 m!1631295))

(declare-fun m!1631297 () Bool)

(assert (=> b!1431692 m!1631297))

(declare-fun m!1631299 () Bool)

(assert (=> b!1431695 m!1631299))

(declare-fun m!1631301 () Bool)

(assert (=> b!1431693 m!1631301))

(declare-fun m!1631303 () Bool)

(assert (=> b!1431694 m!1631303))

(declare-fun m!1631305 () Bool)

(assert (=> b!1431691 m!1631305))

(declare-fun m!1631307 () Bool)

(assert (=> b!1431690 m!1631307))

(declare-fun m!1631309 () Bool)

(assert (=> b!1431688 m!1631309))

(declare-fun m!1631311 () Bool)

(assert (=> b!1431688 m!1631311))

(declare-fun m!1631313 () Bool)

(assert (=> b!1431688 m!1631313))

(declare-fun m!1631315 () Bool)

(assert (=> b!1431688 m!1631315))

(declare-fun m!1631317 () Bool)

(assert (=> b!1431688 m!1631317))

(declare-fun m!1631319 () Bool)

(assert (=> b!1431688 m!1631319))

(declare-fun m!1631321 () Bool)

(assert (=> b!1431688 m!1631321))

(declare-fun m!1631323 () Bool)

(assert (=> b!1431688 m!1631323))

(declare-fun m!1631325 () Bool)

(assert (=> b!1431688 m!1631325))

(declare-fun m!1631327 () Bool)

(assert (=> b!1431686 m!1631327))

(declare-fun m!1631329 () Bool)

(assert (=> b!1431685 m!1631329))

(declare-fun m!1631331 () Bool)

(assert (=> b!1431685 m!1631331))

(declare-fun m!1631333 () Bool)

(assert (=> b!1431685 m!1631333))

(declare-fun m!1631335 () Bool)

(assert (=> b!1431687 m!1631335))

(declare-fun m!1631337 () Bool)

(assert (=> b!1431689 m!1631337))

(declare-fun m!1631339 () Bool)

(assert (=> b!1431689 m!1631339))

(declare-fun m!1631341 () Bool)

(assert (=> b!1431689 m!1631341))

(declare-fun m!1631343 () Bool)

(assert (=> b!1431689 m!1631343))

(declare-fun m!1631345 () Bool)

(assert (=> b!1431689 m!1631345))

(declare-fun m!1631347 () Bool)

(assert (=> b!1431689 m!1631347))

(assert (=> b!1431689 m!1631343))

(push 1)

(assert (not b!1431692))

(assert (not b!1431695))

(assert (not b!1431686))

(assert (not b!1431693))

(assert (not start!132310))

(assert (not b!1431687))

(assert (not b!1431694))

(assert (not b!1431689))

(assert (not b!1431691))

(assert (not b!1431685))

(assert (not b!1431690))

(assert (not b!1431688))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!411996 () Bool)

(declare-fun c!235405 () Bool)

(assert (=> d!411996 (= c!235405 (is-Node!5027 (c!235399 (tokens!1945 thiss!10022))))))

(declare-fun e!913890 () Bool)

(assert (=> d!411996 (= (inv!19691 (c!235399 (tokens!1945 thiss!10022))) e!913890)))

(declare-fun b!1431735 () Bool)

(declare-fun inv!19695 (Conc!5027) Bool)

(assert (=> b!1431735 (= e!913890 (inv!19695 (c!235399 (tokens!1945 thiss!10022))))))

(declare-fun b!1431736 () Bool)

(declare-fun e!913891 () Bool)

(assert (=> b!1431736 (= e!913890 e!913891)))

(declare-fun res!648006 () Bool)

(assert (=> b!1431736 (= res!648006 (not (is-Leaf!7529 (c!235399 (tokens!1945 thiss!10022)))))))

(assert (=> b!1431736 (=> res!648006 e!913891)))

(declare-fun b!1431737 () Bool)

(declare-fun inv!19696 (Conc!5027) Bool)

(assert (=> b!1431737 (= e!913891 (inv!19696 (c!235399 (tokens!1945 thiss!10022))))))

(assert (= (and d!411996 c!235405) b!1431735))

(assert (= (and d!411996 (not c!235405)) b!1431736))

(assert (= (and b!1431736 (not res!648006)) b!1431737))

(declare-fun m!1631405 () Bool)

(assert (=> b!1431735 m!1631405))

(declare-fun m!1631407 () Bool)

(assert (=> b!1431737 m!1631407))

(assert (=> b!1431691 d!411996))

(declare-fun d!411998 () Bool)

(declare-fun isBalanced!1492 (Conc!5027) Bool)

(assert (=> d!411998 (= (inv!19690 (tokens!1945 thiss!10022)) (isBalanced!1492 (c!235399 (tokens!1945 thiss!10022))))))

(declare-fun bs!340797 () Bool)

(assert (= bs!340797 d!411998))

(declare-fun m!1631409 () Bool)

(assert (=> bs!340797 m!1631409))

(assert (=> b!1431690 d!411998))

(declare-fun d!412000 () Bool)

(assert (=> d!412000 (rulesProduceEachTokenIndividuallyList!707 Lexer!2262 (rules!11305 thiss!10022) (++!3943 lt!486179 lt!486185))))

(declare-fun lt!486225 () Unit!22380)

(declare-fun choose!8803 (LexerInterface!2264 List!14901 List!14900 List!14900) Unit!22380)

(assert (=> d!412000 (= lt!486225 (choose!8803 Lexer!2262 (rules!11305 thiss!10022) lt!486179 lt!486185))))

(assert (=> d!412000 (not (isEmpty!9195 (rules!11305 thiss!10022)))))

(assert (=> d!412000 (= (lemmaRulesProduceEachTokenIndividuallyConcat!37 Lexer!2262 (rules!11305 thiss!10022) lt!486179 lt!486185) lt!486225)))

(declare-fun bs!340798 () Bool)

(assert (= bs!340798 d!412000))

(assert (=> bs!340798 m!1631339))

(assert (=> bs!340798 m!1631339))

(declare-fun m!1631411 () Bool)

(assert (=> bs!340798 m!1631411))

(declare-fun m!1631413 () Bool)

(assert (=> bs!340798 m!1631413))

(assert (=> bs!340798 m!1631327))

(assert (=> b!1431689 d!412000))

(declare-fun b!1431772 () Bool)

(declare-fun e!913914 () Bool)

(assert (=> b!1431772 (= e!913914 true)))

(declare-fun b!1431771 () Bool)

(declare-fun e!913913 () Bool)

(assert (=> b!1431771 (= e!913913 e!913914)))

(declare-fun b!1431770 () Bool)

(declare-fun e!913912 () Bool)

(assert (=> b!1431770 (= e!913912 e!913913)))

(declare-fun d!412004 () Bool)

(assert (=> d!412004 e!913912))

(assert (= b!1431771 b!1431772))

(assert (= b!1431770 b!1431771))

(assert (= (and d!412004 (is-Cons!14835 (rules!11305 thiss!10022))) b!1431770))

(declare-fun order!8907 () Int)

(declare-fun order!8909 () Int)

(declare-fun lambda!62778 () Int)

(declare-fun dynLambda!6770 (Int Int) Int)

(declare-fun dynLambda!6771 (Int Int) Int)

(assert (=> b!1431772 (< (dynLambda!6770 order!8907 (toValue!3903 (transformation!2600 (h!20236 (rules!11305 thiss!10022))))) (dynLambda!6771 order!8909 lambda!62778))))

(declare-fun order!8911 () Int)

(declare-fun dynLambda!6772 (Int Int) Int)

(assert (=> b!1431772 (< (dynLambda!6772 order!8911 (toChars!3762 (transformation!2600 (h!20236 (rules!11305 thiss!10022))))) (dynLambda!6771 order!8909 lambda!62778))))

(assert (=> d!412004 true))

(declare-fun lt!486234 () Bool)

(declare-fun forall!3655 (List!14900 Int) Bool)

(assert (=> d!412004 (= lt!486234 (forall!3655 lt!486187 lambda!62778))))

(declare-fun e!913900 () Bool)

(assert (=> d!412004 (= lt!486234 e!913900)))

(declare-fun res!648024 () Bool)

(assert (=> d!412004 (=> res!648024 e!913900)))

(assert (=> d!412004 (= res!648024 (not (is-Cons!14834 lt!486187)))))

(assert (=> d!412004 (not (isEmpty!9195 (rules!11305 thiss!10022)))))

(assert (=> d!412004 (= (rulesProduceEachTokenIndividuallyList!707 Lexer!2262 (rules!11305 thiss!10022) lt!486187) lt!486234)))

(declare-fun b!1431754 () Bool)

(declare-fun e!913901 () Bool)

(assert (=> b!1431754 (= e!913900 e!913901)))

(declare-fun res!648023 () Bool)

(assert (=> b!1431754 (=> (not res!648023) (not e!913901))))

(assert (=> b!1431754 (= res!648023 (rulesProduceIndividualToken!1197 Lexer!2262 (rules!11305 thiss!10022) (h!20235 lt!486187)))))

(declare-fun b!1431755 () Bool)

(assert (=> b!1431755 (= e!913901 (rulesProduceEachTokenIndividuallyList!707 Lexer!2262 (rules!11305 thiss!10022) (t!127095 lt!486187)))))

(assert (= (and d!412004 (not res!648024)) b!1431754))

(assert (= (and b!1431754 res!648023) b!1431755))

(declare-fun m!1631435 () Bool)

(assert (=> d!412004 m!1631435))

(assert (=> d!412004 m!1631327))

(declare-fun m!1631437 () Bool)

(assert (=> b!1431754 m!1631437))

(declare-fun m!1631439 () Bool)

(assert (=> b!1431755 m!1631439))

(assert (=> b!1431689 d!412004))

(declare-fun b!1431787 () Bool)

(declare-fun res!648044 () Bool)

(declare-fun e!913919 () Bool)

(assert (=> b!1431787 (=> (not res!648044) (not e!913919))))

(declare-fun height!729 (Conc!5027) Int)

(declare-fun ++!3946 (Conc!5027 Conc!5027) Conc!5027)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1431787 (= res!648044 (<= (height!729 (++!3946 (c!235399 (tokens!1945 thiss!10022)) (c!235399 (tokens!1945 other!32)))) (+ (max!0 (height!729 (c!235399 (tokens!1945 thiss!10022))) (height!729 (c!235399 (tokens!1945 other!32)))) 1)))))

(declare-fun b!1431788 () Bool)

(declare-fun res!648043 () Bool)

(assert (=> b!1431788 (=> (not res!648043) (not e!913919))))

(assert (=> b!1431788 (= res!648043 (>= (height!729 (++!3946 (c!235399 (tokens!1945 thiss!10022)) (c!235399 (tokens!1945 other!32)))) (max!0 (height!729 (c!235399 (tokens!1945 thiss!10022))) (height!729 (c!235399 (tokens!1945 other!32))))))))

(declare-fun lt!486246 () BalanceConc!9994)

(declare-fun b!1431789 () Bool)

(assert (=> b!1431789 (= e!913919 (= (list!5893 lt!486246) (++!3943 (list!5893 (tokens!1945 thiss!10022)) (list!5893 (tokens!1945 other!32)))))))

(declare-fun b!1431786 () Bool)

(declare-fun res!648042 () Bool)

(assert (=> b!1431786 (=> (not res!648042) (not e!913919))))

(assert (=> b!1431786 (= res!648042 (isBalanced!1492 (++!3946 (c!235399 (tokens!1945 thiss!10022)) (c!235399 (tokens!1945 other!32)))))))

(declare-fun d!412016 () Bool)

(assert (=> d!412016 e!913919))

(declare-fun res!648045 () Bool)

(assert (=> d!412016 (=> (not res!648045) (not e!913919))))

(declare-fun appendAssocInst!308 (Conc!5027 Conc!5027) Bool)

(assert (=> d!412016 (= res!648045 (appendAssocInst!308 (c!235399 (tokens!1945 thiss!10022)) (c!235399 (tokens!1945 other!32))))))

(assert (=> d!412016 (= lt!486246 (BalanceConc!9995 (++!3946 (c!235399 (tokens!1945 thiss!10022)) (c!235399 (tokens!1945 other!32)))))))

(assert (=> d!412016 (= (++!3942 (tokens!1945 thiss!10022) (tokens!1945 other!32)) lt!486246)))

(assert (= (and d!412016 res!648045) b!1431786))

(assert (= (and b!1431786 res!648042) b!1431787))

(assert (= (and b!1431787 res!648044) b!1431788))

(assert (= (and b!1431788 res!648043) b!1431789))

(declare-fun m!1631465 () Bool)

(assert (=> b!1431789 m!1631465))

(assert (=> b!1431789 m!1631319))

(assert (=> b!1431789 m!1631325))

(assert (=> b!1431789 m!1631319))

(assert (=> b!1431789 m!1631325))

(declare-fun m!1631467 () Bool)

(assert (=> b!1431789 m!1631467))

(declare-fun m!1631469 () Bool)

(assert (=> b!1431787 m!1631469))

(declare-fun m!1631471 () Bool)

(assert (=> b!1431787 m!1631471))

(assert (=> b!1431787 m!1631471))

(declare-fun m!1631473 () Bool)

(assert (=> b!1431787 m!1631473))

(declare-fun m!1631475 () Bool)

(assert (=> b!1431787 m!1631475))

(assert (=> b!1431787 m!1631469))

(declare-fun m!1631477 () Bool)

(assert (=> b!1431787 m!1631477))

(assert (=> b!1431787 m!1631473))

(declare-fun m!1631479 () Bool)

(assert (=> d!412016 m!1631479))

(assert (=> d!412016 m!1631469))

(assert (=> b!1431788 m!1631469))

(assert (=> b!1431788 m!1631471))

(assert (=> b!1431788 m!1631471))

(assert (=> b!1431788 m!1631473))

(assert (=> b!1431788 m!1631475))

(assert (=> b!1431788 m!1631469))

(assert (=> b!1431788 m!1631477))

(assert (=> b!1431788 m!1631473))

(assert (=> b!1431786 m!1631469))

(assert (=> b!1431786 m!1631469))

(declare-fun m!1631481 () Bool)

(assert (=> b!1431786 m!1631481))

(assert (=> b!1431689 d!412016))

(declare-fun d!412024 () Bool)

(declare-fun e!913925 () Bool)

(assert (=> d!412024 e!913925))

(declare-fun res!648051 () Bool)

(assert (=> d!412024 (=> (not res!648051) (not e!913925))))

(declare-fun lt!486249 () List!14900)

(declare-fun content!2186 (List!14900) (Set Token!4862))

(assert (=> d!412024 (= res!648051 (= (content!2186 lt!486249) (set.union (content!2186 lt!486179) (content!2186 lt!486185))))))

(declare-fun e!913924 () List!14900)

(assert (=> d!412024 (= lt!486249 e!913924)))

(declare-fun c!235411 () Bool)

(assert (=> d!412024 (= c!235411 (is-Nil!14834 lt!486179))))

(assert (=> d!412024 (= (++!3943 lt!486179 lt!486185) lt!486249)))

(declare-fun b!1431801 () Bool)

(assert (=> b!1431801 (= e!913925 (or (not (= lt!486185 Nil!14834)) (= lt!486249 lt!486179)))))

(declare-fun b!1431800 () Bool)

(declare-fun res!648050 () Bool)

(assert (=> b!1431800 (=> (not res!648050) (not e!913925))))

(declare-fun size!12176 (List!14900) Int)

(assert (=> b!1431800 (= res!648050 (= (size!12176 lt!486249) (+ (size!12176 lt!486179) (size!12176 lt!486185))))))

(declare-fun b!1431799 () Bool)

(assert (=> b!1431799 (= e!913924 (Cons!14834 (h!20235 lt!486179) (++!3943 (t!127095 lt!486179) lt!486185)))))

(declare-fun b!1431798 () Bool)

(assert (=> b!1431798 (= e!913924 lt!486185)))

(assert (= (and d!412024 c!235411) b!1431798))

(assert (= (and d!412024 (not c!235411)) b!1431799))

(assert (= (and d!412024 res!648051) b!1431800))

(assert (= (and b!1431800 res!648050) b!1431801))

(declare-fun m!1631483 () Bool)

(assert (=> d!412024 m!1631483))

(declare-fun m!1631485 () Bool)

(assert (=> d!412024 m!1631485))

(declare-fun m!1631487 () Bool)

(assert (=> d!412024 m!1631487))

(declare-fun m!1631489 () Bool)

(assert (=> b!1431800 m!1631489))

(declare-fun m!1631491 () Bool)

(assert (=> b!1431800 m!1631491))

(declare-fun m!1631493 () Bool)

(assert (=> b!1431800 m!1631493))

(declare-fun m!1631495 () Bool)

(assert (=> b!1431799 m!1631495))

(assert (=> b!1431689 d!412024))

(declare-fun d!412026 () Bool)

(declare-fun lt!486252 () Int)

(assert (=> d!412026 (= lt!486252 (size!12176 (list!5893 (++!3942 (tokens!1945 thiss!10022) (tokens!1945 other!32)))))))

(declare-fun size!12177 (Conc!5027) Int)

(assert (=> d!412026 (= lt!486252 (size!12177 (c!235399 (++!3942 (tokens!1945 thiss!10022) (tokens!1945 other!32)))))))

(assert (=> d!412026 (= (size!12173 (++!3942 (tokens!1945 thiss!10022) (tokens!1945 other!32))) lt!486252)))

(declare-fun bs!340804 () Bool)

(assert (= bs!340804 d!412026))

(assert (=> bs!340804 m!1631343))

(declare-fun m!1631497 () Bool)

(assert (=> bs!340804 m!1631497))

(assert (=> bs!340804 m!1631497))

(declare-fun m!1631499 () Bool)

(assert (=> bs!340804 m!1631499))

(declare-fun m!1631501 () Bool)

(assert (=> bs!340804 m!1631501))

(assert (=> b!1431689 d!412026))

(declare-fun b!1431834 () Bool)

(declare-fun res!648078 () Bool)

(declare-fun e!913943 () Bool)

(assert (=> b!1431834 (=> (not res!648078) (not e!913943))))

(assert (=> b!1431834 (= res!648078 (rulesProduceEachTokenIndividuallyList!707 Lexer!2262 (rules!11305 thiss!10022) lt!486179))))

(declare-fun b!1431835 () Bool)

(declare-fun res!648080 () Bool)

(assert (=> b!1431835 (=> (not res!648080) (not e!913943))))

(assert (=> b!1431835 (= res!648080 (rulesProduceEachTokenIndividuallyList!707 Lexer!2262 (rules!11305 thiss!10022) lt!486185))))

(declare-fun d!412028 () Bool)

(assert (=> d!412028 e!913943))

(declare-fun res!648079 () Bool)

(assert (=> d!412028 (=> (not res!648079) (not e!913943))))

(assert (=> d!412028 (= res!648079 (is-Lexer!2262 Lexer!2262))))

(declare-fun lt!486266 () Unit!22380)

(declare-fun choose!8804 (LexerInterface!2264 List!14900 List!14900 List!14901) Unit!22380)

(assert (=> d!412028 (= lt!486266 (choose!8804 Lexer!2262 lt!486179 lt!486185 (rules!11305 thiss!10022)))))

(assert (=> d!412028 (not (isEmpty!9195 (rules!11305 thiss!10022)))))

(assert (=> d!412028 (= (tokensListTwoByTwoPredicateConcatSeparableTokensList!37 Lexer!2262 lt!486179 lt!486185 (rules!11305 thiss!10022)) lt!486266)))

(declare-fun b!1431836 () Bool)

(assert (=> b!1431836 (= e!913943 (tokensListTwoByTwoPredicateSeparableList!222 Lexer!2262 (++!3943 lt!486179 lt!486185) (rules!11305 thiss!10022)))))

(declare-fun lt!486267 () Unit!22380)

(declare-fun lt!486268 () Unit!22380)

(assert (=> b!1431836 (= lt!486267 lt!486268)))

(assert (=> b!1431836 (rulesProduceEachTokenIndividuallyList!707 Lexer!2262 (rules!11305 thiss!10022) (++!3943 lt!486179 lt!486185))))

(assert (=> b!1431836 (= lt!486268 (lemmaRulesProduceEachTokenIndividuallyConcat!37 Lexer!2262 (rules!11305 thiss!10022) lt!486179 lt!486185))))

(declare-fun b!1431833 () Bool)

(declare-fun res!648077 () Bool)

(assert (=> b!1431833 (=> (not res!648077) (not e!913943))))

(assert (=> b!1431833 (= res!648077 (rulesInvariant!2112 Lexer!2262 (rules!11305 thiss!10022)))))

(assert (= (and d!412028 res!648079) b!1431833))

(assert (= (and b!1431833 res!648077) b!1431834))

(assert (= (and b!1431834 res!648078) b!1431835))

(assert (= (and b!1431835 res!648080) b!1431836))

(declare-fun m!1631555 () Bool)

(assert (=> b!1431834 m!1631555))

(declare-fun m!1631557 () Bool)

(assert (=> d!412028 m!1631557))

(assert (=> d!412028 m!1631327))

(declare-fun m!1631559 () Bool)

(assert (=> b!1431835 m!1631559))

(assert (=> b!1431833 m!1631301))

(assert (=> b!1431836 m!1631339))

(assert (=> b!1431836 m!1631339))

(declare-fun m!1631561 () Bool)

(assert (=> b!1431836 m!1631561))

(assert (=> b!1431836 m!1631339))

(assert (=> b!1431836 m!1631411))

(assert (=> b!1431836 m!1631341))

(assert (=> b!1431689 d!412028))

(declare-fun d!412050 () Bool)

(declare-fun res!648083 () Bool)

(declare-fun e!913946 () Bool)

(assert (=> d!412050 (=> (not res!648083) (not e!913946))))

(declare-fun rulesValid!955 (LexerInterface!2264 List!14901) Bool)

(assert (=> d!412050 (= res!648083 (rulesValid!955 Lexer!2262 (rules!11305 thiss!10022)))))

(assert (=> d!412050 (= (rulesInvariant!2112 Lexer!2262 (rules!11305 thiss!10022)) e!913946)))

(declare-fun b!1431839 () Bool)

(declare-datatypes ((List!14906 0))(
  ( (Nil!14840) (Cons!14840 (h!20241 String!17708) (t!127109 List!14906)) )
))
(declare-fun noDuplicateTag!955 (LexerInterface!2264 List!14901 List!14906) Bool)

(assert (=> b!1431839 (= e!913946 (noDuplicateTag!955 Lexer!2262 (rules!11305 thiss!10022) Nil!14840))))

(assert (= (and d!412050 res!648083) b!1431839))

(declare-fun m!1631563 () Bool)

(assert (=> d!412050 m!1631563))

(declare-fun m!1631565 () Bool)

(assert (=> b!1431839 m!1631565))

(assert (=> b!1431693 d!412050))

(declare-fun d!412052 () Bool)

(declare-fun c!235415 () Bool)

(assert (=> d!412052 (= c!235415 (is-Node!5027 (c!235399 (tokens!1945 other!32))))))

(declare-fun e!913947 () Bool)

(assert (=> d!412052 (= (inv!19691 (c!235399 (tokens!1945 other!32))) e!913947)))

(declare-fun b!1431840 () Bool)

(assert (=> b!1431840 (= e!913947 (inv!19695 (c!235399 (tokens!1945 other!32))))))

(declare-fun b!1431841 () Bool)

(declare-fun e!913948 () Bool)

(assert (=> b!1431841 (= e!913947 e!913948)))

(declare-fun res!648084 () Bool)

(assert (=> b!1431841 (= res!648084 (not (is-Leaf!7529 (c!235399 (tokens!1945 other!32)))))))

(assert (=> b!1431841 (=> res!648084 e!913948)))

(declare-fun b!1431842 () Bool)

(assert (=> b!1431842 (= e!913948 (inv!19696 (c!235399 (tokens!1945 other!32))))))

(assert (= (and d!412052 c!235415) b!1431840))

(assert (= (and d!412052 (not c!235415)) b!1431841))

(assert (= (and b!1431841 (not res!648084)) b!1431842))

(declare-fun m!1631567 () Bool)

(assert (=> b!1431840 m!1631567))

(declare-fun m!1631569 () Bool)

(assert (=> b!1431842 m!1631569))

(assert (=> b!1431692 d!412052))

(declare-fun d!412054 () Bool)

(declare-fun lt!486271 () Bool)

(declare-fun isEmpty!9198 (List!14900) Bool)

(assert (=> d!412054 (= lt!486271 (isEmpty!9198 (list!5893 (tokens!1945 other!32))))))

(declare-fun isEmpty!9199 (Conc!5027) Bool)

(assert (=> d!412054 (= lt!486271 (isEmpty!9199 (c!235399 (tokens!1945 other!32))))))

(assert (=> d!412054 (= (isEmpty!9194 (tokens!1945 other!32)) lt!486271)))

(declare-fun bs!340810 () Bool)

(assert (= bs!340810 d!412054))

(assert (=> bs!340810 m!1631325))

(assert (=> bs!340810 m!1631325))

(declare-fun m!1631571 () Bool)

(assert (=> bs!340810 m!1631571))

(declare-fun m!1631573 () Bool)

(assert (=> bs!340810 m!1631573))

(assert (=> b!1431685 d!412054))

(declare-fun d!412056 () Bool)

(declare-fun e!913957 () Bool)

(assert (=> d!412056 e!913957))

(declare-fun res!648095 () Bool)

(assert (=> d!412056 (=> (not res!648095) (not e!913957))))

(assert (=> d!412056 (= res!648095 (rulesInvariant!2112 Lexer!2262 (rules!11305 thiss!10022)))))

(declare-fun Unit!22385 () Unit!22380)

(assert (=> d!412056 (= (lemmaInvariant!296 thiss!10022) Unit!22385)))

(declare-fun b!1431853 () Bool)

(declare-fun res!648096 () Bool)

(assert (=> b!1431853 (=> (not res!648096) (not e!913957))))

(declare-fun rulesProduceEachTokenIndividually!830 (LexerInterface!2264 List!14901 BalanceConc!9994) Bool)

(assert (=> b!1431853 (= res!648096 (rulesProduceEachTokenIndividually!830 Lexer!2262 (rules!11305 thiss!10022) (tokens!1945 thiss!10022)))))

(declare-fun b!1431854 () Bool)

(declare-fun separableTokens!214 (LexerInterface!2264 BalanceConc!9994 List!14901) Bool)

(assert (=> b!1431854 (= e!913957 (separableTokens!214 Lexer!2262 (tokens!1945 thiss!10022) (rules!11305 thiss!10022)))))

(assert (= (and d!412056 res!648095) b!1431853))

(assert (= (and b!1431853 res!648096) b!1431854))

(assert (=> d!412056 m!1631301))

(declare-fun m!1631591 () Bool)

(assert (=> b!1431853 m!1631591))

(declare-fun m!1631593 () Bool)

(assert (=> b!1431854 m!1631593))

(assert (=> b!1431685 d!412056))

(declare-fun d!412060 () Bool)

(declare-fun e!913958 () Bool)

(assert (=> d!412060 e!913958))

(declare-fun res!648097 () Bool)

(assert (=> d!412060 (=> (not res!648097) (not e!913958))))

(assert (=> d!412060 (= res!648097 (rulesInvariant!2112 Lexer!2262 (rules!11305 other!32)))))

(declare-fun Unit!22386 () Unit!22380)

(assert (=> d!412060 (= (lemmaInvariant!296 other!32) Unit!22386)))

(declare-fun b!1431855 () Bool)

(declare-fun res!648098 () Bool)

(assert (=> b!1431855 (=> (not res!648098) (not e!913958))))

(assert (=> b!1431855 (= res!648098 (rulesProduceEachTokenIndividually!830 Lexer!2262 (rules!11305 other!32) (tokens!1945 other!32)))))

(declare-fun b!1431856 () Bool)

(assert (=> b!1431856 (= e!913958 (separableTokens!214 Lexer!2262 (tokens!1945 other!32) (rules!11305 other!32)))))

(assert (= (and d!412060 res!648097) b!1431855))

(assert (= (and b!1431855 res!648098) b!1431856))

(declare-fun m!1631595 () Bool)

(assert (=> d!412060 m!1631595))

(declare-fun m!1631597 () Bool)

(assert (=> b!1431855 m!1631597))

(declare-fun m!1631599 () Bool)

(assert (=> b!1431856 m!1631599))

(assert (=> b!1431685 d!412060))

(declare-fun d!412062 () Bool)

(assert (=> d!412062 (= (inv!19690 (tokens!1945 other!32)) (isBalanced!1492 (c!235399 (tokens!1945 other!32))))))

(declare-fun bs!340811 () Bool)

(assert (= bs!340811 d!412062))

(declare-fun m!1631601 () Bool)

(assert (=> bs!340811 m!1631601))

(assert (=> b!1431695 d!412062))

(declare-fun d!412064 () Bool)

(declare-fun res!648116 () Bool)

(declare-fun e!913966 () Bool)

(assert (=> d!412064 (=> res!648116 e!913966)))

(assert (=> d!412064 (= res!648116 (or (not (is-Cons!14834 lt!486187)) (not (is-Cons!14834 (t!127095 lt!486187)))))))

(assert (=> d!412064 (= (tokensListTwoByTwoPredicateSeparableList!222 Lexer!2262 lt!486187 (rules!11305 thiss!10022)) e!913966)))

(declare-fun b!1431873 () Bool)

(declare-fun e!913967 () Bool)

(assert (=> b!1431873 (= e!913966 e!913967)))

(declare-fun res!648115 () Bool)

(assert (=> b!1431873 (=> (not res!648115) (not e!913967))))

(assert (=> b!1431873 (= res!648115 (separableTokensPredicate!499 Lexer!2262 (h!20235 lt!486187) (h!20235 (t!127095 lt!486187)) (rules!11305 thiss!10022)))))

(declare-fun lt!486320 () Unit!22380)

(declare-fun Unit!22387 () Unit!22380)

(assert (=> b!1431873 (= lt!486320 Unit!22387)))

(declare-fun size!12178 (BalanceConc!9992) Int)

(declare-fun charsOf!1504 (Token!4862) BalanceConc!9992)

(assert (=> b!1431873 (> (size!12178 (charsOf!1504 (h!20235 (t!127095 lt!486187)))) 0)))

(declare-fun lt!486316 () Unit!22380)

(declare-fun Unit!22388 () Unit!22380)

(assert (=> b!1431873 (= lt!486316 Unit!22388)))

(assert (=> b!1431873 (rulesProduceIndividualToken!1197 Lexer!2262 (rules!11305 thiss!10022) (h!20235 (t!127095 lt!486187)))))

(declare-fun lt!486321 () Unit!22380)

(declare-fun Unit!22389 () Unit!22380)

(assert (=> b!1431873 (= lt!486321 Unit!22389)))

(assert (=> b!1431873 (rulesProduceIndividualToken!1197 Lexer!2262 (rules!11305 thiss!10022) (h!20235 lt!486187))))

(declare-fun lt!486322 () Unit!22380)

(declare-fun lt!486319 () Unit!22380)

(assert (=> b!1431873 (= lt!486322 lt!486319)))

(assert (=> b!1431873 (rulesProduceIndividualToken!1197 Lexer!2262 (rules!11305 thiss!10022) (h!20235 (t!127095 lt!486187)))))

(assert (=> b!1431873 (= lt!486319 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!382 Lexer!2262 (rules!11305 thiss!10022) lt!486187 (h!20235 (t!127095 lt!486187))))))

(declare-fun lt!486318 () Unit!22380)

(declare-fun lt!486317 () Unit!22380)

(assert (=> b!1431873 (= lt!486318 lt!486317)))

(assert (=> b!1431873 (rulesProduceIndividualToken!1197 Lexer!2262 (rules!11305 thiss!10022) (h!20235 lt!486187))))

(assert (=> b!1431873 (= lt!486317 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!382 Lexer!2262 (rules!11305 thiss!10022) lt!486187 (h!20235 lt!486187)))))

(declare-fun b!1431874 () Bool)

(assert (=> b!1431874 (= e!913967 (tokensListTwoByTwoPredicateSeparableList!222 Lexer!2262 (Cons!14834 (h!20235 (t!127095 lt!486187)) (t!127095 (t!127095 lt!486187))) (rules!11305 thiss!10022)))))

(assert (= (and d!412064 (not res!648116)) b!1431873))

(assert (= (and b!1431873 res!648115) b!1431874))

(declare-fun m!1631613 () Bool)

(assert (=> b!1431873 m!1631613))

(declare-fun m!1631615 () Bool)

(assert (=> b!1431873 m!1631615))

(assert (=> b!1431873 m!1631437))

(declare-fun m!1631617 () Bool)

(assert (=> b!1431873 m!1631617))

(declare-fun m!1631619 () Bool)

(assert (=> b!1431873 m!1631619))

(declare-fun m!1631621 () Bool)

(assert (=> b!1431873 m!1631621))

(assert (=> b!1431873 m!1631621))

(declare-fun m!1631623 () Bool)

(assert (=> b!1431873 m!1631623))

(declare-fun m!1631625 () Bool)

(assert (=> b!1431874 m!1631625))

(assert (=> b!1431694 d!412064))

(declare-fun d!412068 () Bool)

(assert (=> d!412068 (rulesProduceIndividualToken!1197 Lexer!2262 (rules!11305 thiss!10022) lt!486183)))

(declare-fun lt!486328 () Unit!22380)

(declare-fun choose!8805 (LexerInterface!2264 List!14901 List!14900 Token!4862) Unit!22380)

(assert (=> d!412068 (= lt!486328 (choose!8805 Lexer!2262 (rules!11305 thiss!10022) lt!486185 lt!486183))))

(assert (=> d!412068 (not (isEmpty!9195 (rules!11305 thiss!10022)))))

(assert (=> d!412068 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!382 Lexer!2262 (rules!11305 thiss!10022) lt!486185 lt!486183) lt!486328)))

(declare-fun bs!340812 () Bool)

(assert (= bs!340812 d!412068))

(assert (=> bs!340812 m!1631309))

(declare-fun m!1631641 () Bool)

(assert (=> bs!340812 m!1631641))

(assert (=> bs!340812 m!1631327))

(assert (=> b!1431688 d!412068))

(declare-fun d!412072 () Bool)

(declare-fun lt!486343 () Bool)

(declare-fun e!913981 () Bool)

(assert (=> d!412072 (= lt!486343 e!913981)))

(declare-fun res!648141 () Bool)

(assert (=> d!412072 (=> (not res!648141) (not e!913981))))

(declare-datatypes ((tuple2!14084 0))(
  ( (tuple2!14085 (_1!7928 BalanceConc!9994) (_2!7928 BalanceConc!9992)) )
))
(declare-fun lex!1033 (LexerInterface!2264 List!14901 BalanceConc!9992) tuple2!14084)

(declare-fun print!1042 (LexerInterface!2264 BalanceConc!9994) BalanceConc!9992)

(declare-fun singletonSeq!1205 (Token!4862) BalanceConc!9994)

(assert (=> d!412072 (= res!648141 (= (list!5893 (_1!7928 (lex!1033 Lexer!2262 (rules!11305 thiss!10022) (print!1042 Lexer!2262 (singletonSeq!1205 lt!486186))))) (list!5893 (singletonSeq!1205 lt!486186))))))

(declare-fun e!913982 () Bool)

(assert (=> d!412072 (= lt!486343 e!913982)))

(declare-fun res!648142 () Bool)

(assert (=> d!412072 (=> (not res!648142) (not e!913982))))

(declare-fun lt!486342 () tuple2!14084)

(assert (=> d!412072 (= res!648142 (= (size!12173 (_1!7928 lt!486342)) 1))))

(assert (=> d!412072 (= lt!486342 (lex!1033 Lexer!2262 (rules!11305 thiss!10022) (print!1042 Lexer!2262 (singletonSeq!1205 lt!486186))))))

(assert (=> d!412072 (not (isEmpty!9195 (rules!11305 thiss!10022)))))

(assert (=> d!412072 (= (rulesProduceIndividualToken!1197 Lexer!2262 (rules!11305 thiss!10022) lt!486186) lt!486343)))

(declare-fun b!1431905 () Bool)

(declare-fun res!648143 () Bool)

(assert (=> b!1431905 (=> (not res!648143) (not e!913982))))

(declare-fun apply!3790 (BalanceConc!9994 Int) Token!4862)

(assert (=> b!1431905 (= res!648143 (= (apply!3790 (_1!7928 lt!486342) 0) lt!486186))))

(declare-fun b!1431906 () Bool)

(declare-fun isEmpty!9200 (BalanceConc!9992) Bool)

(assert (=> b!1431906 (= e!913982 (isEmpty!9200 (_2!7928 lt!486342)))))

(declare-fun b!1431907 () Bool)

(assert (=> b!1431907 (= e!913981 (isEmpty!9200 (_2!7928 (lex!1033 Lexer!2262 (rules!11305 thiss!10022) (print!1042 Lexer!2262 (singletonSeq!1205 lt!486186))))))))

(assert (= (and d!412072 res!648142) b!1431905))

(assert (= (and b!1431905 res!648143) b!1431906))

(assert (= (and d!412072 res!648141) b!1431907))

(declare-fun m!1631669 () Bool)

(assert (=> d!412072 m!1631669))

(declare-fun m!1631671 () Bool)

(assert (=> d!412072 m!1631671))

(declare-fun m!1631673 () Bool)

(assert (=> d!412072 m!1631673))

(declare-fun m!1631675 () Bool)

(assert (=> d!412072 m!1631675))

(assert (=> d!412072 m!1631327))

(declare-fun m!1631677 () Bool)

(assert (=> d!412072 m!1631677))

(assert (=> d!412072 m!1631673))

(assert (=> d!412072 m!1631669))

(assert (=> d!412072 m!1631673))

(declare-fun m!1631679 () Bool)

(assert (=> d!412072 m!1631679))

(declare-fun m!1631681 () Bool)

(assert (=> b!1431905 m!1631681))

(declare-fun m!1631683 () Bool)

(assert (=> b!1431906 m!1631683))

(assert (=> b!1431907 m!1631673))

(assert (=> b!1431907 m!1631673))

(assert (=> b!1431907 m!1631669))

(assert (=> b!1431907 m!1631669))

(assert (=> b!1431907 m!1631671))

(declare-fun m!1631685 () Bool)

(assert (=> b!1431907 m!1631685))

(assert (=> b!1431688 d!412072))

(declare-fun d!412080 () Bool)

(declare-fun list!5895 (Conc!5027) List!14900)

(assert (=> d!412080 (= (list!5893 (tokens!1945 other!32)) (list!5895 (c!235399 (tokens!1945 other!32))))))

(declare-fun bs!340815 () Bool)

(assert (= bs!340815 d!412080))

(declare-fun m!1631687 () Bool)

(assert (=> bs!340815 m!1631687))

(assert (=> b!1431688 d!412080))

(declare-fun d!412082 () Bool)

(declare-fun lt!486346 () Token!4862)

(declare-fun head!2854 (List!14900) Token!4862)

(assert (=> d!412082 (= lt!486346 (head!2854 (list!5893 (tokens!1945 other!32))))))

(declare-fun head!2855 (Conc!5027) Token!4862)

(assert (=> d!412082 (= lt!486346 (head!2855 (c!235399 (tokens!1945 other!32))))))

(assert (=> d!412082 (not (isEmpty!9194 (tokens!1945 other!32)))))

(assert (=> d!412082 (= (head!2852 (tokens!1945 other!32)) lt!486346)))

(declare-fun bs!340816 () Bool)

(assert (= bs!340816 d!412082))

(assert (=> bs!340816 m!1631325))

(assert (=> bs!340816 m!1631325))

(declare-fun m!1631689 () Bool)

(assert (=> bs!340816 m!1631689))

(declare-fun m!1631691 () Bool)

(assert (=> bs!340816 m!1631691))

(assert (=> bs!340816 m!1631329))

(assert (=> b!1431688 d!412082))

(declare-fun d!412084 () Bool)

(assert (=> d!412084 (rulesProduceIndividualToken!1197 Lexer!2262 (rules!11305 thiss!10022) lt!486186)))

(declare-fun lt!486347 () Unit!22380)

(assert (=> d!412084 (= lt!486347 (choose!8805 Lexer!2262 (rules!11305 thiss!10022) lt!486179 lt!486186))))

(assert (=> d!412084 (not (isEmpty!9195 (rules!11305 thiss!10022)))))

(assert (=> d!412084 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!382 Lexer!2262 (rules!11305 thiss!10022) lt!486179 lt!486186) lt!486347)))

(declare-fun bs!340817 () Bool)

(assert (= bs!340817 d!412084))

(assert (=> bs!340817 m!1631321))

(declare-fun m!1631693 () Bool)

(assert (=> bs!340817 m!1631693))

(assert (=> bs!340817 m!1631327))

(assert (=> b!1431688 d!412084))

(declare-fun d!412086 () Bool)

(assert (=> d!412086 (= (list!5893 (tokens!1945 thiss!10022)) (list!5895 (c!235399 (tokens!1945 thiss!10022))))))

(declare-fun bs!340818 () Bool)

(assert (= bs!340818 d!412086))

(declare-fun m!1631695 () Bool)

(assert (=> bs!340818 m!1631695))

(assert (=> b!1431688 d!412086))

(declare-fun d!412088 () Bool)

(declare-fun prefixMatchZipperSequence!323 (Regex!3914 BalanceConc!9992) Bool)

(declare-fun rulesRegex!381 (LexerInterface!2264 List!14901) Regex!3914)

(declare-fun ++!3947 (BalanceConc!9992 BalanceConc!9992) BalanceConc!9992)

(declare-fun singletonSeq!1206 (C!8006) BalanceConc!9992)

(declare-fun apply!3791 (BalanceConc!9992 Int) C!8006)

(assert (=> d!412088 (= (separableTokensPredicate!499 Lexer!2262 lt!486186 lt!486183 (rules!11305 thiss!10022)) (not (prefixMatchZipperSequence!323 (rulesRegex!381 Lexer!2262 (rules!11305 thiss!10022)) (++!3947 (charsOf!1504 lt!486186) (singletonSeq!1206 (apply!3791 (charsOf!1504 lt!486183) 0))))))))

(declare-fun bs!340819 () Bool)

(assert (= bs!340819 d!412088))

(declare-fun m!1631697 () Bool)

(assert (=> bs!340819 m!1631697))

(declare-fun m!1631699 () Bool)

(assert (=> bs!340819 m!1631699))

(assert (=> bs!340819 m!1631697))

(declare-fun m!1631701 () Bool)

(assert (=> bs!340819 m!1631701))

(declare-fun m!1631703 () Bool)

(assert (=> bs!340819 m!1631703))

(declare-fun m!1631705 () Bool)

(assert (=> bs!340819 m!1631705))

(assert (=> bs!340819 m!1631701))

(declare-fun m!1631707 () Bool)

(assert (=> bs!340819 m!1631707))

(assert (=> bs!340819 m!1631699))

(assert (=> bs!340819 m!1631705))

(assert (=> bs!340819 m!1631707))

(assert (=> bs!340819 m!1631703))

(declare-fun m!1631709 () Bool)

(assert (=> bs!340819 m!1631709))

(assert (=> b!1431688 d!412088))

(declare-fun d!412090 () Bool)

(declare-fun lt!486351 () Bool)

(declare-fun e!913987 () Bool)

(assert (=> d!412090 (= lt!486351 e!913987)))

(declare-fun res!648148 () Bool)

(assert (=> d!412090 (=> (not res!648148) (not e!913987))))

(assert (=> d!412090 (= res!648148 (= (list!5893 (_1!7928 (lex!1033 Lexer!2262 (rules!11305 thiss!10022) (print!1042 Lexer!2262 (singletonSeq!1205 lt!486183))))) (list!5893 (singletonSeq!1205 lt!486183))))))

(declare-fun e!913988 () Bool)

(assert (=> d!412090 (= lt!486351 e!913988)))

(declare-fun res!648149 () Bool)

(assert (=> d!412090 (=> (not res!648149) (not e!913988))))

(declare-fun lt!486350 () tuple2!14084)

(assert (=> d!412090 (= res!648149 (= (size!12173 (_1!7928 lt!486350)) 1))))

(assert (=> d!412090 (= lt!486350 (lex!1033 Lexer!2262 (rules!11305 thiss!10022) (print!1042 Lexer!2262 (singletonSeq!1205 lt!486183))))))

(assert (=> d!412090 (not (isEmpty!9195 (rules!11305 thiss!10022)))))

(assert (=> d!412090 (= (rulesProduceIndividualToken!1197 Lexer!2262 (rules!11305 thiss!10022) lt!486183) lt!486351)))

(declare-fun b!1431912 () Bool)

(declare-fun res!648150 () Bool)

(assert (=> b!1431912 (=> (not res!648150) (not e!913988))))

(assert (=> b!1431912 (= res!648150 (= (apply!3790 (_1!7928 lt!486350) 0) lt!486183))))

(declare-fun b!1431913 () Bool)

(assert (=> b!1431913 (= e!913988 (isEmpty!9200 (_2!7928 lt!486350)))))

(declare-fun b!1431914 () Bool)

(assert (=> b!1431914 (= e!913987 (isEmpty!9200 (_2!7928 (lex!1033 Lexer!2262 (rules!11305 thiss!10022) (print!1042 Lexer!2262 (singletonSeq!1205 lt!486183))))))))

(assert (= (and d!412090 res!648149) b!1431912))

(assert (= (and b!1431912 res!648150) b!1431913))

(assert (= (and d!412090 res!648148) b!1431914))

(declare-fun m!1631711 () Bool)

(assert (=> d!412090 m!1631711))

(declare-fun m!1631713 () Bool)

(assert (=> d!412090 m!1631713))

(declare-fun m!1631715 () Bool)

(assert (=> d!412090 m!1631715))

(declare-fun m!1631717 () Bool)

(assert (=> d!412090 m!1631717))

(assert (=> d!412090 m!1631327))

(declare-fun m!1631719 () Bool)

(assert (=> d!412090 m!1631719))

(assert (=> d!412090 m!1631715))

(assert (=> d!412090 m!1631711))

(assert (=> d!412090 m!1631715))

(declare-fun m!1631721 () Bool)

(assert (=> d!412090 m!1631721))

(declare-fun m!1631723 () Bool)

(assert (=> b!1431912 m!1631723))

(declare-fun m!1631725 () Bool)

(assert (=> b!1431913 m!1631725))

(assert (=> b!1431914 m!1631715))

(assert (=> b!1431914 m!1631715))

(assert (=> b!1431914 m!1631711))

(assert (=> b!1431914 m!1631711))

(assert (=> b!1431914 m!1631713))

(declare-fun m!1631727 () Bool)

(assert (=> b!1431914 m!1631727))

(assert (=> b!1431688 d!412090))

(declare-fun d!412092 () Bool)

(declare-fun lt!486354 () Token!4862)

(declare-fun last!136 (List!14900) Token!4862)

(assert (=> d!412092 (= lt!486354 (last!136 (list!5893 (tokens!1945 thiss!10022))))))

(declare-fun last!137 (Conc!5027) Token!4862)

(assert (=> d!412092 (= lt!486354 (last!137 (c!235399 (tokens!1945 thiss!10022))))))

(assert (=> d!412092 (not (isEmpty!9194 (tokens!1945 thiss!10022)))))

(assert (=> d!412092 (= (last!134 (tokens!1945 thiss!10022)) lt!486354)))

(declare-fun bs!340820 () Bool)

(assert (= bs!340820 d!412092))

(assert (=> bs!340820 m!1631319))

(assert (=> bs!340820 m!1631319))

(declare-fun m!1631729 () Bool)

(assert (=> bs!340820 m!1631729))

(declare-fun m!1631731 () Bool)

(assert (=> bs!340820 m!1631731))

(assert (=> bs!340820 m!1631335))

(assert (=> b!1431688 d!412092))

(declare-fun d!412094 () Bool)

(declare-fun lt!486355 () Bool)

(assert (=> d!412094 (= lt!486355 (isEmpty!9198 (list!5893 (tokens!1945 thiss!10022))))))

(assert (=> d!412094 (= lt!486355 (isEmpty!9199 (c!235399 (tokens!1945 thiss!10022))))))

(assert (=> d!412094 (= (isEmpty!9194 (tokens!1945 thiss!10022)) lt!486355)))

(declare-fun bs!340821 () Bool)

(assert (= bs!340821 d!412094))

(assert (=> bs!340821 m!1631319))

(assert (=> bs!340821 m!1631319))

(declare-fun m!1631733 () Bool)

(assert (=> bs!340821 m!1631733))

(declare-fun m!1631735 () Bool)

(assert (=> bs!340821 m!1631735))

(assert (=> b!1431687 d!412094))

(declare-fun d!412096 () Bool)

(declare-fun res!648157 () Bool)

(declare-fun e!913991 () Bool)

(assert (=> d!412096 (=> (not res!648157) (not e!913991))))

(assert (=> d!412096 (= res!648157 (not (isEmpty!9195 (rules!11305 thiss!10022))))))

(assert (=> d!412096 (= (inv!19689 thiss!10022) e!913991)))

(declare-fun b!1431921 () Bool)

(declare-fun res!648158 () Bool)

(assert (=> b!1431921 (=> (not res!648158) (not e!913991))))

(assert (=> b!1431921 (= res!648158 (rulesInvariant!2112 Lexer!2262 (rules!11305 thiss!10022)))))

(declare-fun b!1431922 () Bool)

(declare-fun res!648159 () Bool)

(assert (=> b!1431922 (=> (not res!648159) (not e!913991))))

(assert (=> b!1431922 (= res!648159 (rulesProduceEachTokenIndividually!830 Lexer!2262 (rules!11305 thiss!10022) (tokens!1945 thiss!10022)))))

(declare-fun b!1431923 () Bool)

(assert (=> b!1431923 (= e!913991 (separableTokens!214 Lexer!2262 (tokens!1945 thiss!10022) (rules!11305 thiss!10022)))))

(assert (= (and d!412096 res!648157) b!1431921))

(assert (= (and b!1431921 res!648158) b!1431922))

(assert (= (and b!1431922 res!648159) b!1431923))

(assert (=> d!412096 m!1631327))

(assert (=> b!1431921 m!1631301))

(assert (=> b!1431922 m!1631591))

(assert (=> b!1431923 m!1631593))

(assert (=> start!132310 d!412096))

(declare-fun d!412098 () Bool)

(declare-fun res!648160 () Bool)

(declare-fun e!913992 () Bool)

(assert (=> d!412098 (=> (not res!648160) (not e!913992))))

(assert (=> d!412098 (= res!648160 (not (isEmpty!9195 (rules!11305 other!32))))))

(assert (=> d!412098 (= (inv!19689 other!32) e!913992)))

(declare-fun b!1431924 () Bool)

(declare-fun res!648161 () Bool)

(assert (=> b!1431924 (=> (not res!648161) (not e!913992))))

(assert (=> b!1431924 (= res!648161 (rulesInvariant!2112 Lexer!2262 (rules!11305 other!32)))))

(declare-fun b!1431925 () Bool)

(declare-fun res!648162 () Bool)

(assert (=> b!1431925 (=> (not res!648162) (not e!913992))))

(assert (=> b!1431925 (= res!648162 (rulesProduceEachTokenIndividually!830 Lexer!2262 (rules!11305 other!32) (tokens!1945 other!32)))))

(declare-fun b!1431926 () Bool)

(assert (=> b!1431926 (= e!913992 (separableTokens!214 Lexer!2262 (tokens!1945 other!32) (rules!11305 other!32)))))

(assert (= (and d!412098 res!648160) b!1431924))

(assert (= (and b!1431924 res!648161) b!1431925))

(assert (= (and b!1431925 res!648162) b!1431926))

(declare-fun m!1631737 () Bool)

(assert (=> d!412098 m!1631737))

(assert (=> b!1431924 m!1631595))

(assert (=> b!1431925 m!1631597))

(assert (=> b!1431926 m!1631599))

(assert (=> start!132310 d!412098))

(declare-fun d!412100 () Bool)

(assert (=> d!412100 (= (isEmpty!9195 (rules!11305 thiss!10022)) (is-Nil!14835 (rules!11305 thiss!10022)))))

(assert (=> b!1431686 d!412100))

(declare-fun b!1431935 () Bool)

(declare-fun e!913998 () Bool)

(declare-fun tp!405855 () Bool)

(declare-fun tp!405856 () Bool)

(assert (=> b!1431935 (= e!913998 (and (inv!19691 (left!12642 (c!235399 (tokens!1945 thiss!10022)))) tp!405856 (inv!19691 (right!12972 (c!235399 (tokens!1945 thiss!10022)))) tp!405855))))

(declare-fun b!1431937 () Bool)

(declare-fun e!913997 () Bool)

(declare-fun tp!405857 () Bool)

(assert (=> b!1431937 (= e!913997 tp!405857)))

(declare-fun b!1431936 () Bool)

(declare-fun inv!19697 (IArray!10059) Bool)

(assert (=> b!1431936 (= e!913998 (and (inv!19697 (xs!7760 (c!235399 (tokens!1945 thiss!10022)))) e!913997))))

(assert (=> b!1431691 (= tp!405835 (and (inv!19691 (c!235399 (tokens!1945 thiss!10022))) e!913998))))

(assert (= (and b!1431691 (is-Node!5027 (c!235399 (tokens!1945 thiss!10022)))) b!1431935))

(assert (= b!1431936 b!1431937))

(assert (= (and b!1431691 (is-Leaf!7529 (c!235399 (tokens!1945 thiss!10022)))) b!1431936))

(declare-fun m!1631739 () Bool)

(assert (=> b!1431935 m!1631739))

(declare-fun m!1631741 () Bool)

(assert (=> b!1431935 m!1631741))

(declare-fun m!1631743 () Bool)

(assert (=> b!1431936 m!1631743))

(assert (=> b!1431691 m!1631305))

(declare-fun b!1431948 () Bool)

(declare-fun b_free!35455 () Bool)

(declare-fun b_next!36159 () Bool)

(assert (=> b!1431948 (= b_free!35455 (not b_next!36159))))

(declare-fun tp!405867 () Bool)

(declare-fun b_and!96383 () Bool)

(assert (=> b!1431948 (= tp!405867 b_and!96383)))

(declare-fun b_free!35457 () Bool)

(declare-fun b_next!36161 () Bool)

(assert (=> b!1431948 (= b_free!35457 (not b_next!36161))))

(declare-fun tp!405868 () Bool)

(declare-fun b_and!96385 () Bool)

(assert (=> b!1431948 (= tp!405868 b_and!96385)))

(declare-fun e!914010 () Bool)

(assert (=> b!1431948 (= e!914010 (and tp!405867 tp!405868))))

(declare-fun tp!405869 () Bool)

(declare-fun e!914007 () Bool)

(declare-fun b!1431947 () Bool)

(declare-fun inv!19686 (String!17708) Bool)

(declare-fun inv!19698 (TokenValueInjection!5040) Bool)

(assert (=> b!1431947 (= e!914007 (and tp!405869 (inv!19686 (tag!2862 (h!20236 (rules!11305 thiss!10022)))) (inv!19698 (transformation!2600 (h!20236 (rules!11305 thiss!10022)))) e!914010))))

(declare-fun b!1431946 () Bool)

(declare-fun e!914008 () Bool)

(declare-fun tp!405866 () Bool)

(assert (=> b!1431946 (= e!914008 (and e!914007 tp!405866))))

(assert (=> b!1431690 (= tp!405833 e!914008)))

(assert (= b!1431947 b!1431948))

(assert (= b!1431946 b!1431947))

(assert (= (and b!1431690 (is-Cons!14835 (rules!11305 thiss!10022))) b!1431946))

(declare-fun m!1631745 () Bool)

(assert (=> b!1431947 m!1631745))

(declare-fun m!1631747 () Bool)

(assert (=> b!1431947 m!1631747))

(declare-fun b!1431951 () Bool)

(declare-fun b_free!35459 () Bool)

(declare-fun b_next!36163 () Bool)

(assert (=> b!1431951 (= b_free!35459 (not b_next!36163))))

(declare-fun tp!405871 () Bool)

(declare-fun b_and!96387 () Bool)

(assert (=> b!1431951 (= tp!405871 b_and!96387)))

(declare-fun b_free!35461 () Bool)

(declare-fun b_next!36165 () Bool)

(assert (=> b!1431951 (= b_free!35461 (not b_next!36165))))

(declare-fun tp!405872 () Bool)

(declare-fun b_and!96389 () Bool)

(assert (=> b!1431951 (= tp!405872 b_and!96389)))

(declare-fun e!914014 () Bool)

(assert (=> b!1431951 (= e!914014 (and tp!405871 tp!405872))))

(declare-fun b!1431950 () Bool)

(declare-fun tp!405873 () Bool)

(declare-fun e!914011 () Bool)

(assert (=> b!1431950 (= e!914011 (and tp!405873 (inv!19686 (tag!2862 (h!20236 (rules!11305 other!32)))) (inv!19698 (transformation!2600 (h!20236 (rules!11305 other!32)))) e!914014))))

(declare-fun b!1431949 () Bool)

(declare-fun e!914012 () Bool)

(declare-fun tp!405870 () Bool)

(assert (=> b!1431949 (= e!914012 (and e!914011 tp!405870))))

(assert (=> b!1431695 (= tp!405836 e!914012)))

(assert (= b!1431950 b!1431951))

(assert (= b!1431949 b!1431950))

(assert (= (and b!1431695 (is-Cons!14835 (rules!11305 other!32))) b!1431949))

(declare-fun m!1631749 () Bool)

(assert (=> b!1431950 m!1631749))

(declare-fun m!1631751 () Bool)

(assert (=> b!1431950 m!1631751))

(declare-fun tp!405875 () Bool)

(declare-fun b!1431952 () Bool)

(declare-fun tp!405874 () Bool)

(declare-fun e!914016 () Bool)

(assert (=> b!1431952 (= e!914016 (and (inv!19691 (left!12642 (c!235399 (tokens!1945 other!32)))) tp!405875 (inv!19691 (right!12972 (c!235399 (tokens!1945 other!32)))) tp!405874))))

(declare-fun b!1431954 () Bool)

(declare-fun e!914015 () Bool)

(declare-fun tp!405876 () Bool)

(assert (=> b!1431954 (= e!914015 tp!405876)))

(declare-fun b!1431953 () Bool)

(assert (=> b!1431953 (= e!914016 (and (inv!19697 (xs!7760 (c!235399 (tokens!1945 other!32)))) e!914015))))

(assert (=> b!1431692 (= tp!405834 (and (inv!19691 (c!235399 (tokens!1945 other!32))) e!914016))))

(assert (= (and b!1431692 (is-Node!5027 (c!235399 (tokens!1945 other!32)))) b!1431952))

(assert (= b!1431953 b!1431954))

(assert (= (and b!1431692 (is-Leaf!7529 (c!235399 (tokens!1945 other!32)))) b!1431953))

(declare-fun m!1631753 () Bool)

(assert (=> b!1431952 m!1631753))

(declare-fun m!1631755 () Bool)

(assert (=> b!1431952 m!1631755))

(declare-fun m!1631757 () Bool)

(assert (=> b!1431953 m!1631757))

(assert (=> b!1431692 m!1631297))

(push 1)

(assert (not b_next!36165))

(assert (not d!412072))

(assert (not b!1431923))

(assert (not b!1431692))

(assert (not d!412088))

(assert (not b!1431839))

(assert (not b!1431691))

(assert (not d!412062))

(assert (not b!1431842))

(assert (not b!1431949))

(assert (not b!1431924))

(assert (not d!412094))

(assert b_and!96385)

(assert (not d!412090))

(assert (not d!412016))

(assert (not d!412086))

(assert (not b!1431914))

(assert (not d!412056))

(assert (not b!1431925))

(assert (not b!1431770))

(assert (not b!1431800))

(assert (not b!1431856))

(assert (not b_next!36159))

(assert (not d!412068))

(assert (not b!1431873))

(assert (not b!1431834))

(assert (not b!1431946))

(assert (not b!1431735))

(assert (not b!1431922))

(assert (not d!412082))

(assert (not b!1431853))

(assert (not b!1431855))

(assert (not d!412028))

(assert (not b!1431789))

(assert (not b!1431854))

(assert (not d!412024))

(assert (not b!1431936))

(assert (not b!1431953))

(assert (not d!412000))

(assert (not b!1431840))

(assert (not b!1431921))

(assert (not b!1431947))

(assert (not d!412080))

(assert (not d!412054))

(assert b_and!96387)

(assert (not b!1431926))

(assert b_and!96383)

(assert (not d!412092))

(assert (not d!412096))

(assert (not b!1431907))

(assert (not b!1431935))

(assert (not b!1431836))

(assert (not b!1431788))

(assert (not b!1431950))

(assert (not d!412060))

(assert (not d!411998))

(assert (not b!1431913))

(assert (not b!1431833))

(assert (not b!1431754))

(assert (not b!1431937))

(assert (not b!1431799))

(assert b_and!96389)

(assert (not b!1431912))

(assert (not b!1431755))

(assert (not d!412050))

(assert (not b!1431952))

(assert (not b!1431835))

(assert (not b_next!36161))

(assert (not b!1431905))

(assert (not b_next!36163))

(assert (not b!1431906))

(assert (not b!1431954))

(assert (not d!412098))

(assert (not b!1431874))

(assert (not b!1431787))

(assert (not d!412026))

(assert (not d!412004))

(assert (not b!1431737))

(assert (not d!412084))

(assert (not b!1431786))

(check-sat)

(pop 1)

(push 1)

(assert b_and!96385)

(assert (not b_next!36159))

(assert b_and!96387)

(assert (not b_next!36165))

(assert b_and!96383)

(assert b_and!96389)

(assert (not b_next!36161))

(assert (not b_next!36163))

(check-sat)

(pop 1)


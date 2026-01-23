; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!254162 () Bool)

(assert start!254162)

(declare-fun b!2613824 () Bool)

(declare-fun b_free!73565 () Bool)

(declare-fun b_next!74269 () Bool)

(assert (=> b!2613824 (= b_free!73565 (not b_next!74269))))

(declare-fun tp!830264 () Bool)

(declare-fun b_and!191183 () Bool)

(assert (=> b!2613824 (= tp!830264 b_and!191183)))

(declare-fun b_free!73567 () Bool)

(declare-fun b_next!74271 () Bool)

(assert (=> b!2613824 (= b_free!73567 (not b_next!74271))))

(declare-fun tp!830261 () Bool)

(declare-fun b_and!191185 () Bool)

(assert (=> b!2613824 (= tp!830261 b_and!191185)))

(declare-fun b!2613819 () Bool)

(declare-fun b_free!73569 () Bool)

(declare-fun b_next!74273 () Bool)

(assert (=> b!2613819 (= b_free!73569 (not b_next!74273))))

(declare-fun tp!830263 () Bool)

(declare-fun b_and!191187 () Bool)

(assert (=> b!2613819 (= tp!830263 b_and!191187)))

(declare-fun b_free!73571 () Bool)

(declare-fun b_next!74275 () Bool)

(assert (=> b!2613819 (= b_free!73571 (not b_next!74275))))

(declare-fun tp!830259 () Bool)

(declare-fun b_and!191189 () Bool)

(assert (=> b!2613819 (= tp!830259 b_and!191189)))

(declare-fun bs!474105 () Bool)

(declare-fun b!2613818 () Bool)

(declare-fun b!2613815 () Bool)

(assert (= bs!474105 (and b!2613818 b!2613815)))

(declare-fun lambda!97906 () Int)

(declare-fun lambda!97905 () Int)

(assert (=> bs!474105 (not (= lambda!97906 lambda!97905))))

(declare-fun b!2613844 () Bool)

(declare-fun e!1649335 () Bool)

(assert (=> b!2613844 (= e!1649335 true)))

(declare-fun b!2613843 () Bool)

(declare-fun e!1649334 () Bool)

(assert (=> b!2613843 (= e!1649334 e!1649335)))

(declare-fun b!2613842 () Bool)

(declare-fun e!1649333 () Bool)

(assert (=> b!2613842 (= e!1649333 e!1649334)))

(assert (=> b!2613818 e!1649333))

(assert (= b!2613843 b!2613844))

(assert (= b!2613842 b!2613843))

(declare-datatypes ((List!30329 0))(
  ( (Nil!30229) (Cons!30229 (h!35649 (_ BitVec 16)) (t!214370 List!30329)) )
))
(declare-datatypes ((C!15596 0))(
  ( (C!15597 (val!9732 Int)) )
))
(declare-datatypes ((Regex!7719 0))(
  ( (ElementMatch!7719 (c!420077 C!15596)) (Concat!12516 (regOne!15950 Regex!7719) (regTwo!15950 Regex!7719)) (EmptyExpr!7719) (Star!7719 (reg!8048 Regex!7719)) (EmptyLang!7719) (Union!7719 (regOne!15951 Regex!7719) (regTwo!15951 Regex!7719)) )
))
(declare-datatypes ((TokenValue!4797 0))(
  ( (FloatLiteralValue!9594 (text!34024 List!30329)) (TokenValueExt!4796 (__x!19427 Int)) (Broken!23985 (value!147966 List!30329)) (Object!4896) (End!4797) (Def!4797) (Underscore!4797) (Match!4797) (Else!4797) (Error!4797) (Case!4797) (If!4797) (Extends!4797) (Abstract!4797) (Class!4797) (Val!4797) (DelimiterValue!9594 (del!4857 List!30329)) (KeywordValue!4803 (value!147967 List!30329)) (CommentValue!9594 (value!147968 List!30329)) (WhitespaceValue!9594 (value!147969 List!30329)) (IndentationValue!4797 (value!147970 List!30329)) (String!33868) (Int32!4797) (Broken!23986 (value!147971 List!30329)) (Boolean!4798) (Unit!44206) (OperatorValue!4800 (op!4857 List!30329)) (IdentifierValue!9594 (value!147972 List!30329)) (IdentifierValue!9595 (value!147973 List!30329)) (WhitespaceValue!9595 (value!147974 List!30329)) (True!9594) (False!9594) (Broken!23987 (value!147975 List!30329)) (Broken!23988 (value!147976 List!30329)) (True!9595) (RightBrace!4797) (RightBracket!4797) (Colon!4797) (Null!4797) (Comma!4797) (LeftBracket!4797) (False!9595) (LeftBrace!4797) (ImaginaryLiteralValue!4797 (text!34025 List!30329)) (StringLiteralValue!14391 (value!147977 List!30329)) (EOFValue!4797 (value!147978 List!30329)) (IdentValue!4797 (value!147979 List!30329)) (DelimiterValue!9595 (value!147980 List!30329)) (DedentValue!4797 (value!147981 List!30329)) (NewLineValue!4797 (value!147982 List!30329)) (IntegerValue!14391 (value!147983 (_ BitVec 32)) (text!34026 List!30329)) (IntegerValue!14392 (value!147984 Int) (text!34027 List!30329)) (Times!4797) (Or!4797) (Equal!4797) (Minus!4797) (Broken!23989 (value!147985 List!30329)) (And!4797) (Div!4797) (LessEqual!4797) (Mod!4797) (Concat!12517) (Not!4797) (Plus!4797) (SpaceValue!4797 (value!147986 List!30329)) (IntegerValue!14393 (value!147987 Int) (text!34028 List!30329)) (StringLiteralValue!14392 (text!34029 List!30329)) (FloatLiteralValue!9595 (text!34030 List!30329)) (BytesLiteralValue!4797 (value!147988 List!30329)) (CommentValue!9595 (value!147989 List!30329)) (StringLiteralValue!14393 (value!147990 List!30329)) (ErrorTokenValue!4797 (msg!4858 List!30329)) )
))
(declare-datatypes ((List!30330 0))(
  ( (Nil!30230) (Cons!30230 (h!35650 C!15596) (t!214371 List!30330)) )
))
(declare-datatypes ((IArray!18789 0))(
  ( (IArray!18790 (innerList!9452 List!30330)) )
))
(declare-datatypes ((Conc!9392 0))(
  ( (Node!9392 (left!23275 Conc!9392) (right!23605 Conc!9392) (csize!19014 Int) (cheight!9603 Int)) (Leaf!14420 (xs!12380 IArray!18789) (csize!19015 Int)) (Empty!9392) )
))
(declare-datatypes ((BalanceConc!18398 0))(
  ( (BalanceConc!18399 (c!420078 Conc!9392)) )
))
(declare-datatypes ((TokenValueInjection!9034 0))(
  ( (TokenValueInjection!9035 (toValue!6481 Int) (toChars!6340 Int)) )
))
(declare-datatypes ((String!33869 0))(
  ( (String!33870 (value!147991 String)) )
))
(declare-datatypes ((Rule!8950 0))(
  ( (Rule!8951 (regex!4575 Regex!7719) (tag!5065 String!33869) (isSeparator!4575 Bool) (transformation!4575 TokenValueInjection!9034)) )
))
(declare-datatypes ((List!30331 0))(
  ( (Nil!30231) (Cons!30231 (h!35651 Rule!8950) (t!214372 List!30331)) )
))
(declare-fun rules!1726 () List!30331)

(get-info :version)

(assert (= (and b!2613818 ((_ is Cons!30231) rules!1726)) b!2613842))

(declare-fun order!16129 () Int)

(declare-fun order!16127 () Int)

(declare-fun dynLambda!12827 (Int Int) Int)

(declare-fun dynLambda!12828 (Int Int) Int)

(assert (=> b!2613844 (< (dynLambda!12827 order!16127 (toValue!6481 (transformation!4575 (h!35651 rules!1726)))) (dynLambda!12828 order!16129 lambda!97906))))

(declare-fun order!16131 () Int)

(declare-fun dynLambda!12829 (Int Int) Int)

(assert (=> b!2613844 (< (dynLambda!12829 order!16131 (toChars!6340 (transformation!4575 (h!35651 rules!1726)))) (dynLambda!12828 order!16129 lambda!97906))))

(assert (=> b!2613818 true))

(declare-fun res!1100313 () Bool)

(declare-fun e!1649317 () Bool)

(assert (=> b!2613815 (=> (not res!1100313) (not e!1649317))))

(declare-datatypes ((Token!8620 0))(
  ( (Token!8621 (value!147992 TokenValue!4797) (rule!6945 Rule!8950) (size!23396 Int) (originalCharacters!5341 List!30330)) )
))
(declare-datatypes ((List!30332 0))(
  ( (Nil!30232) (Cons!30232 (h!35652 Token!8620) (t!214373 List!30332)) )
))
(declare-datatypes ((IArray!18791 0))(
  ( (IArray!18792 (innerList!9453 List!30332)) )
))
(declare-datatypes ((Conc!9393 0))(
  ( (Node!9393 (left!23276 Conc!9393) (right!23606 Conc!9393) (csize!19016 Int) (cheight!9604 Int)) (Leaf!14421 (xs!12381 IArray!18791) (csize!19017 Int)) (Empty!9393) )
))
(declare-datatypes ((BalanceConc!18400 0))(
  ( (BalanceConc!18401 (c!420079 Conc!9393)) )
))
(declare-fun v!6381 () BalanceConc!18400)

(declare-fun forall!6279 (BalanceConc!18400 Int) Bool)

(assert (=> b!2613815 (= res!1100313 (forall!6279 v!6381 lambda!97905))))

(declare-fun b!2613816 () Bool)

(declare-fun res!1100309 () Bool)

(assert (=> b!2613816 (=> (not res!1100309) (not e!1649317))))

(declare-datatypes ((LexerInterface!4172 0))(
  ( (LexerInterfaceExt!4169 (__x!19428 Int)) (Lexer!4170) )
))
(declare-fun thiss!14197 () LexerInterface!4172)

(declare-fun rulesInvariant!3672 (LexerInterface!4172 List!30331) Bool)

(assert (=> b!2613816 (= res!1100309 (rulesInvariant!3672 thiss!14197 rules!1726))))

(declare-fun e!1649315 () Bool)

(declare-fun tp!830262 () Bool)

(declare-fun b!2613817 () Bool)

(declare-fun e!1649320 () Bool)

(declare-fun inv!40920 (String!33869) Bool)

(declare-fun inv!40925 (TokenValueInjection!9034) Bool)

(assert (=> b!2613817 (= e!1649315 (and tp!830262 (inv!40920 (tag!5065 (h!35651 rules!1726))) (inv!40925 (transformation!4575 (h!35651 rules!1726))) e!1649320))))

(declare-fun e!1649326 () Bool)

(assert (=> b!2613818 (= e!1649326 true)))

(declare-fun separatorToken!156 () Token!8620)

(declare-fun lt!918494 () Token!8620)

(declare-fun from!862 () Int)

(declare-datatypes ((tuple2!29788 0))(
  ( (tuple2!29789 (_1!17436 Token!8620) (_2!17436 BalanceConc!18398)) )
))
(declare-datatypes ((Option!5954 0))(
  ( (None!5953) (Some!5953 (v!32288 tuple2!29788)) )
))
(declare-fun lt!918496 () Option!5954)

(declare-fun maxPrefixZipperSequence!902 (LexerInterface!4172 List!30331 BalanceConc!18398) Option!5954)

(declare-fun ++!7341 (BalanceConc!18398 BalanceConc!18398) BalanceConc!18398)

(declare-fun charsOf!2866 (Token!8620) BalanceConc!18398)

(declare-fun printWithSeparatorTokenWhenNeededRec!450 (LexerInterface!4172 List!30331 BalanceConc!18400 Token!8620 Int) BalanceConc!18398)

(assert (=> b!2613818 (= lt!918496 (maxPrefixZipperSequence!902 thiss!14197 rules!1726 (++!7341 (charsOf!2866 lt!918494) (printWithSeparatorTokenWhenNeededRec!450 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-datatypes ((Unit!44207 0))(
  ( (Unit!44208) )
))
(declare-fun lt!918497 () Unit!44207)

(declare-fun lt!918495 () List!30332)

(declare-fun forallContained!931 (List!30332 Int Token!8620) Unit!44207)

(assert (=> b!2613818 (= lt!918497 (forallContained!931 lt!918495 lambda!97906 lt!918494))))

(assert (=> b!2613819 (= e!1649320 (and tp!830263 tp!830259))))

(declare-fun b!2613820 () Bool)

(declare-fun e!1649313 () Bool)

(declare-fun tp!830260 () Bool)

(assert (=> b!2613820 (= e!1649313 (and e!1649315 tp!830260))))

(declare-fun b!2613821 () Bool)

(declare-fun res!1100307 () Bool)

(assert (=> b!2613821 (=> (not res!1100307) (not e!1649317))))

(assert (=> b!2613821 (= res!1100307 (isSeparator!4575 (rule!6945 separatorToken!156)))))

(declare-fun b!2613822 () Bool)

(declare-fun res!1100306 () Bool)

(assert (=> b!2613822 (=> (not res!1100306) (not e!1649317))))

(declare-fun isEmpty!17264 (List!30331) Bool)

(assert (=> b!2613822 (= res!1100306 (not (isEmpty!17264 rules!1726)))))

(declare-fun b!2613823 () Bool)

(declare-fun e!1649319 () Bool)

(assert (=> b!2613823 (= e!1649317 e!1649319)))

(declare-fun res!1100312 () Bool)

(assert (=> b!2613823 (=> (not res!1100312) (not e!1649319))))

(declare-fun lt!918500 () Int)

(assert (=> b!2613823 (= res!1100312 (< from!862 lt!918500))))

(declare-fun lt!918501 () Unit!44207)

(declare-fun lemmaContentSubsetPreservesForall!244 (List!30332 List!30332 Int) Unit!44207)

(declare-fun dropList!878 (BalanceConc!18400 Int) List!30332)

(assert (=> b!2613823 (= lt!918501 (lemmaContentSubsetPreservesForall!244 lt!918495 (dropList!878 v!6381 from!862) lambda!97905))))

(declare-fun list!11345 (BalanceConc!18400) List!30332)

(assert (=> b!2613823 (= lt!918495 (list!11345 v!6381))))

(declare-fun e!1649318 () Bool)

(assert (=> b!2613824 (= e!1649318 (and tp!830264 tp!830261))))

(declare-fun b!2613825 () Bool)

(declare-fun e!1649314 () Bool)

(declare-fun tp!830265 () Bool)

(declare-fun inv!40926 (Conc!9393) Bool)

(assert (=> b!2613825 (= e!1649314 (and (inv!40926 (c!420079 v!6381)) tp!830265))))

(declare-fun b!2613826 () Bool)

(declare-fun res!1100314 () Bool)

(assert (=> b!2613826 (=> (not res!1100314) (not e!1649317))))

(declare-fun rulesProduceEachTokenIndividually!992 (LexerInterface!4172 List!30331 BalanceConc!18400) Bool)

(assert (=> b!2613826 (= res!1100314 (rulesProduceEachTokenIndividually!992 thiss!14197 rules!1726 v!6381))))

(declare-fun res!1100315 () Bool)

(declare-fun e!1649324 () Bool)

(assert (=> start!254162 (=> (not res!1100315) (not e!1649324))))

(assert (=> start!254162 (= res!1100315 (and ((_ is Lexer!4170) thiss!14197) (>= from!862 0)))))

(assert (=> start!254162 e!1649324))

(assert (=> start!254162 true))

(assert (=> start!254162 e!1649313))

(declare-fun e!1649325 () Bool)

(declare-fun inv!40927 (Token!8620) Bool)

(assert (=> start!254162 (and (inv!40927 separatorToken!156) e!1649325)))

(declare-fun inv!40928 (BalanceConc!18400) Bool)

(assert (=> start!254162 (and (inv!40928 v!6381) e!1649314)))

(declare-fun b!2613827 () Bool)

(declare-fun res!1100304 () Bool)

(assert (=> b!2613827 (=> (not res!1100304) (not e!1649317))))

(declare-fun sepAndNonSepRulesDisjointChars!1148 (List!30331 List!30331) Bool)

(assert (=> b!2613827 (= res!1100304 (sepAndNonSepRulesDisjointChars!1148 rules!1726 rules!1726))))

(declare-fun b!2613828 () Bool)

(declare-fun res!1100305 () Bool)

(assert (=> b!2613828 (=> res!1100305 e!1649326)))

(declare-fun contains!5632 (List!30332 Token!8620) Bool)

(assert (=> b!2613828 (= res!1100305 (not (contains!5632 lt!918495 lt!918494)))))

(declare-fun b!2613829 () Bool)

(assert (=> b!2613829 (= e!1649319 (not e!1649326))))

(declare-fun res!1100310 () Bool)

(assert (=> b!2613829 (=> res!1100310 e!1649326)))

(declare-fun contains!5633 (BalanceConc!18400 Token!8620) Bool)

(assert (=> b!2613829 (= res!1100310 (not (contains!5633 v!6381 lt!918494)))))

(declare-fun apply!7116 (BalanceConc!18400 Int) Token!8620)

(assert (=> b!2613829 (= lt!918494 (apply!7116 v!6381 from!862))))

(declare-fun lt!918493 () List!30332)

(declare-fun tail!4208 (List!30332) List!30332)

(declare-fun drop!1571 (List!30332 Int) List!30332)

(assert (=> b!2613829 (= (tail!4208 lt!918493) (drop!1571 lt!918495 (+ 1 from!862)))))

(declare-fun lt!918498 () Unit!44207)

(declare-fun lemmaDropTail!760 (List!30332 Int) Unit!44207)

(assert (=> b!2613829 (= lt!918498 (lemmaDropTail!760 lt!918495 from!862))))

(declare-fun head!5970 (List!30332) Token!8620)

(declare-fun apply!7117 (List!30332 Int) Token!8620)

(assert (=> b!2613829 (= (head!5970 lt!918493) (apply!7117 lt!918495 from!862))))

(assert (=> b!2613829 (= lt!918493 (drop!1571 lt!918495 from!862))))

(declare-fun lt!918499 () Unit!44207)

(declare-fun lemmaDropApply!786 (List!30332 Int) Unit!44207)

(assert (=> b!2613829 (= lt!918499 (lemmaDropApply!786 lt!918495 from!862))))

(declare-fun tp!830266 () Bool)

(declare-fun e!1649323 () Bool)

(declare-fun b!2613830 () Bool)

(assert (=> b!2613830 (= e!1649323 (and tp!830266 (inv!40920 (tag!5065 (rule!6945 separatorToken!156))) (inv!40925 (transformation!4575 (rule!6945 separatorToken!156))) e!1649318))))

(declare-fun b!2613831 () Bool)

(assert (=> b!2613831 (= e!1649324 e!1649317)))

(declare-fun res!1100308 () Bool)

(assert (=> b!2613831 (=> (not res!1100308) (not e!1649317))))

(assert (=> b!2613831 (= res!1100308 (<= from!862 lt!918500))))

(declare-fun size!23397 (BalanceConc!18400) Int)

(assert (=> b!2613831 (= lt!918500 (size!23397 v!6381))))

(declare-fun b!2613832 () Bool)

(declare-fun res!1100311 () Bool)

(assert (=> b!2613832 (=> (not res!1100311) (not e!1649317))))

(declare-fun rulesProduceIndividualToken!1884 (LexerInterface!4172 List!30331 Token!8620) Bool)

(assert (=> b!2613832 (= res!1100311 (rulesProduceIndividualToken!1884 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun tp!830258 () Bool)

(declare-fun b!2613833 () Bool)

(declare-fun inv!21 (TokenValue!4797) Bool)

(assert (=> b!2613833 (= e!1649325 (and (inv!21 (value!147992 separatorToken!156)) e!1649323 tp!830258))))

(assert (= (and start!254162 res!1100315) b!2613831))

(assert (= (and b!2613831 res!1100308) b!2613822))

(assert (= (and b!2613822 res!1100306) b!2613816))

(assert (= (and b!2613816 res!1100309) b!2613826))

(assert (= (and b!2613826 res!1100314) b!2613832))

(assert (= (and b!2613832 res!1100311) b!2613821))

(assert (= (and b!2613821 res!1100307) b!2613815))

(assert (= (and b!2613815 res!1100313) b!2613827))

(assert (= (and b!2613827 res!1100304) b!2613823))

(assert (= (and b!2613823 res!1100312) b!2613829))

(assert (= (and b!2613829 (not res!1100310)) b!2613828))

(assert (= (and b!2613828 (not res!1100305)) b!2613818))

(assert (= b!2613817 b!2613819))

(assert (= b!2613820 b!2613817))

(assert (= (and start!254162 ((_ is Cons!30231) rules!1726)) b!2613820))

(assert (= b!2613830 b!2613824))

(assert (= b!2613833 b!2613830))

(assert (= start!254162 b!2613833))

(assert (= start!254162 b!2613825))

(declare-fun m!2948619 () Bool)

(assert (=> b!2613817 m!2948619))

(declare-fun m!2948621 () Bool)

(assert (=> b!2613817 m!2948621))

(declare-fun m!2948623 () Bool)

(assert (=> b!2613818 m!2948623))

(declare-fun m!2948625 () Bool)

(assert (=> b!2613818 m!2948625))

(declare-fun m!2948627 () Bool)

(assert (=> b!2613818 m!2948627))

(assert (=> b!2613818 m!2948625))

(assert (=> b!2613818 m!2948623))

(assert (=> b!2613818 m!2948627))

(declare-fun m!2948629 () Bool)

(assert (=> b!2613818 m!2948629))

(declare-fun m!2948631 () Bool)

(assert (=> b!2613818 m!2948631))

(declare-fun m!2948633 () Bool)

(assert (=> b!2613826 m!2948633))

(declare-fun m!2948635 () Bool)

(assert (=> b!2613823 m!2948635))

(assert (=> b!2613823 m!2948635))

(declare-fun m!2948637 () Bool)

(assert (=> b!2613823 m!2948637))

(declare-fun m!2948639 () Bool)

(assert (=> b!2613823 m!2948639))

(declare-fun m!2948641 () Bool)

(assert (=> b!2613825 m!2948641))

(declare-fun m!2948643 () Bool)

(assert (=> b!2613827 m!2948643))

(declare-fun m!2948645 () Bool)

(assert (=> start!254162 m!2948645))

(declare-fun m!2948647 () Bool)

(assert (=> start!254162 m!2948647))

(declare-fun m!2948649 () Bool)

(assert (=> b!2613831 m!2948649))

(declare-fun m!2948651 () Bool)

(assert (=> b!2613832 m!2948651))

(declare-fun m!2948653 () Bool)

(assert (=> b!2613833 m!2948653))

(declare-fun m!2948655 () Bool)

(assert (=> b!2613815 m!2948655))

(declare-fun m!2948657 () Bool)

(assert (=> b!2613829 m!2948657))

(declare-fun m!2948659 () Bool)

(assert (=> b!2613829 m!2948659))

(declare-fun m!2948661 () Bool)

(assert (=> b!2613829 m!2948661))

(declare-fun m!2948663 () Bool)

(assert (=> b!2613829 m!2948663))

(declare-fun m!2948665 () Bool)

(assert (=> b!2613829 m!2948665))

(declare-fun m!2948667 () Bool)

(assert (=> b!2613829 m!2948667))

(declare-fun m!2948669 () Bool)

(assert (=> b!2613829 m!2948669))

(declare-fun m!2948671 () Bool)

(assert (=> b!2613829 m!2948671))

(declare-fun m!2948673 () Bool)

(assert (=> b!2613829 m!2948673))

(declare-fun m!2948675 () Bool)

(assert (=> b!2613830 m!2948675))

(declare-fun m!2948677 () Bool)

(assert (=> b!2613830 m!2948677))

(declare-fun m!2948679 () Bool)

(assert (=> b!2613828 m!2948679))

(declare-fun m!2948681 () Bool)

(assert (=> b!2613816 m!2948681))

(declare-fun m!2948683 () Bool)

(assert (=> b!2613822 m!2948683))

(check-sat b_and!191185 (not b!2613820) (not b!2613817) (not start!254162) b_and!191189 (not b!2613827) (not b_next!74275) (not b!2613833) (not b!2613823) (not b!2613822) (not b!2613816) (not b_next!74273) b_and!191187 b_and!191183 (not b!2613831) (not b_next!74269) (not b!2613830) (not b!2613829) (not b!2613828) (not b!2613842) (not b!2613815) (not b!2613826) (not b!2613818) (not b!2613825) (not b!2613832) (not b_next!74271))
(check-sat b_and!191185 (not b_next!74269) b_and!191189 (not b_next!74275) (not b_next!74271) (not b_next!74273) b_and!191187 b_and!191183)

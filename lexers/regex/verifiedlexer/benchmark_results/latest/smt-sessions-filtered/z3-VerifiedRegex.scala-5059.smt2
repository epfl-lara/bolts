; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!256010 () Bool)

(assert start!256010)

(declare-fun b!2631972 () Bool)

(declare-fun b_free!74229 () Bool)

(declare-fun b_next!74933 () Bool)

(assert (=> b!2631972 (= b_free!74229 (not b_next!74933))))

(declare-fun tp!834447 () Bool)

(declare-fun b_and!192819 () Bool)

(assert (=> b!2631972 (= tp!834447 b_and!192819)))

(declare-fun b_free!74231 () Bool)

(declare-fun b_next!74935 () Bool)

(assert (=> b!2631972 (= b_free!74231 (not b_next!74935))))

(declare-fun tp!834450 () Bool)

(declare-fun b_and!192821 () Bool)

(assert (=> b!2631972 (= tp!834450 b_and!192821)))

(declare-fun b!2631973 () Bool)

(declare-fun b_free!74233 () Bool)

(declare-fun b_next!74937 () Bool)

(assert (=> b!2631973 (= b_free!74233 (not b_next!74937))))

(declare-fun tp!834446 () Bool)

(declare-fun b_and!192823 () Bool)

(assert (=> b!2631973 (= tp!834446 b_and!192823)))

(declare-fun b_free!74235 () Bool)

(declare-fun b_next!74939 () Bool)

(assert (=> b!2631973 (= b_free!74235 (not b_next!74939))))

(declare-fun tp!834445 () Bool)

(declare-fun b_and!192825 () Bool)

(assert (=> b!2631973 (= tp!834445 b_and!192825)))

(declare-fun bs!475787 () Bool)

(declare-fun b!2631976 () Bool)

(declare-fun b!2631978 () Bool)

(assert (= bs!475787 (and b!2631976 b!2631978)))

(declare-fun lambda!98752 () Int)

(declare-fun lambda!98751 () Int)

(assert (=> bs!475787 (not (= lambda!98752 lambda!98751))))

(declare-fun b!2631994 () Bool)

(declare-fun e!1660750 () Bool)

(assert (=> b!2631994 (= e!1660750 true)))

(declare-fun b!2631993 () Bool)

(declare-fun e!1660749 () Bool)

(assert (=> b!2631993 (= e!1660749 e!1660750)))

(declare-fun b!2631992 () Bool)

(declare-fun e!1660748 () Bool)

(assert (=> b!2631992 (= e!1660748 e!1660749)))

(assert (=> b!2631976 e!1660748))

(assert (= b!2631993 b!2631994))

(assert (= b!2631992 b!2631993))

(declare-datatypes ((List!30599 0))(
  ( (Nil!30499) (Cons!30499 (h!35919 (_ BitVec 16)) (t!216472 List!30599)) )
))
(declare-datatypes ((C!15724 0))(
  ( (C!15725 (val!9796 Int)) )
))
(declare-datatypes ((Regex!7783 0))(
  ( (ElementMatch!7783 (c!423088 C!15724)) (Concat!12644 (regOne!16078 Regex!7783) (regTwo!16078 Regex!7783)) (EmptyExpr!7783) (Star!7783 (reg!8112 Regex!7783)) (EmptyLang!7783) (Union!7783 (regOne!16079 Regex!7783) (regTwo!16079 Regex!7783)) )
))
(declare-datatypes ((String!34188 0))(
  ( (String!34189 (value!149790 String)) )
))
(declare-datatypes ((TokenValue!4861 0))(
  ( (FloatLiteralValue!9722 (text!34472 List!30599)) (TokenValueExt!4860 (__x!19555 Int)) (Broken!24305 (value!149791 List!30599)) (Object!4960) (End!4861) (Def!4861) (Underscore!4861) (Match!4861) (Else!4861) (Error!4861) (Case!4861) (If!4861) (Extends!4861) (Abstract!4861) (Class!4861) (Val!4861) (DelimiterValue!9722 (del!4921 List!30599)) (KeywordValue!4867 (value!149792 List!30599)) (CommentValue!9722 (value!149793 List!30599)) (WhitespaceValue!9722 (value!149794 List!30599)) (IndentationValue!4861 (value!149795 List!30599)) (String!34190) (Int32!4861) (Broken!24306 (value!149796 List!30599)) (Boolean!4862) (Unit!44506) (OperatorValue!4864 (op!4921 List!30599)) (IdentifierValue!9722 (value!149797 List!30599)) (IdentifierValue!9723 (value!149798 List!30599)) (WhitespaceValue!9723 (value!149799 List!30599)) (True!9722) (False!9722) (Broken!24307 (value!149800 List!30599)) (Broken!24308 (value!149801 List!30599)) (True!9723) (RightBrace!4861) (RightBracket!4861) (Colon!4861) (Null!4861) (Comma!4861) (LeftBracket!4861) (False!9723) (LeftBrace!4861) (ImaginaryLiteralValue!4861 (text!34473 List!30599)) (StringLiteralValue!14583 (value!149802 List!30599)) (EOFValue!4861 (value!149803 List!30599)) (IdentValue!4861 (value!149804 List!30599)) (DelimiterValue!9723 (value!149805 List!30599)) (DedentValue!4861 (value!149806 List!30599)) (NewLineValue!4861 (value!149807 List!30599)) (IntegerValue!14583 (value!149808 (_ BitVec 32)) (text!34474 List!30599)) (IntegerValue!14584 (value!149809 Int) (text!34475 List!30599)) (Times!4861) (Or!4861) (Equal!4861) (Minus!4861) (Broken!24309 (value!149810 List!30599)) (And!4861) (Div!4861) (LessEqual!4861) (Mod!4861) (Concat!12645) (Not!4861) (Plus!4861) (SpaceValue!4861 (value!149811 List!30599)) (IntegerValue!14585 (value!149812 Int) (text!34476 List!30599)) (StringLiteralValue!14584 (text!34477 List!30599)) (FloatLiteralValue!9723 (text!34478 List!30599)) (BytesLiteralValue!4861 (value!149813 List!30599)) (CommentValue!9723 (value!149814 List!30599)) (StringLiteralValue!14585 (value!149815 List!30599)) (ErrorTokenValue!4861 (msg!4922 List!30599)) )
))
(declare-datatypes ((List!30600 0))(
  ( (Nil!30500) (Cons!30500 (h!35920 C!15724) (t!216473 List!30600)) )
))
(declare-datatypes ((IArray!19045 0))(
  ( (IArray!19046 (innerList!9580 List!30600)) )
))
(declare-datatypes ((Conc!9520 0))(
  ( (Node!9520 (left!23563 Conc!9520) (right!23893 Conc!9520) (csize!19270 Int) (cheight!9731 Int)) (Leaf!14580 (xs!12520 IArray!19045) (csize!19271 Int)) (Empty!9520) )
))
(declare-datatypes ((BalanceConc!18654 0))(
  ( (BalanceConc!18655 (c!423089 Conc!9520)) )
))
(declare-datatypes ((TokenValueInjection!9162 0))(
  ( (TokenValueInjection!9163 (toValue!6553 Int) (toChars!6412 Int)) )
))
(declare-datatypes ((Rule!9078 0))(
  ( (Rule!9079 (regex!4639 Regex!7783) (tag!5133 String!34188) (isSeparator!4639 Bool) (transformation!4639 TokenValueInjection!9162)) )
))
(declare-datatypes ((List!30601 0))(
  ( (Nil!30501) (Cons!30501 (h!35921 Rule!9078) (t!216474 List!30601)) )
))
(declare-fun rules!1726 () List!30601)

(get-info :version)

(assert (= (and b!2631976 ((_ is Cons!30501) rules!1726)) b!2631992))

(declare-fun order!16537 () Int)

(declare-fun order!16535 () Int)

(declare-fun dynLambda!13064 (Int Int) Int)

(declare-fun dynLambda!13065 (Int Int) Int)

(assert (=> b!2631994 (< (dynLambda!13064 order!16535 (toValue!6553 (transformation!4639 (h!35921 rules!1726)))) (dynLambda!13065 order!16537 lambda!98752))))

(declare-fun order!16539 () Int)

(declare-fun dynLambda!13066 (Int Int) Int)

(assert (=> b!2631994 (< (dynLambda!13066 order!16539 (toChars!6412 (transformation!4639 (h!35921 rules!1726)))) (dynLambda!13065 order!16537 lambda!98752))))

(assert (=> b!2631976 true))

(declare-fun b!2631963 () Bool)

(declare-fun e!1660738 () Bool)

(declare-fun e!1660731 () Bool)

(assert (=> b!2631963 (= e!1660738 e!1660731)))

(declare-fun res!1108173 () Bool)

(assert (=> b!2631963 (=> res!1108173 e!1660731)))

(declare-fun lt!926217 () List!30600)

(declare-fun lt!926219 () List!30600)

(assert (=> b!2631963 (= res!1108173 (not (= lt!926217 lt!926219)))))

(declare-datatypes ((LexerInterface!4236 0))(
  ( (LexerInterfaceExt!4233 (__x!19556 Int)) (Lexer!4234) )
))
(declare-fun thiss!14197 () LexerInterface!4236)

(declare-datatypes ((Token!8748 0))(
  ( (Token!8749 (value!149816 TokenValue!4861) (rule!7021 Rule!9078) (size!23578 Int) (originalCharacters!5405 List!30600)) )
))
(declare-fun lt!926207 () Token!8748)

(declare-datatypes ((List!30602 0))(
  ( (Nil!30502) (Cons!30502 (h!35922 Token!8748) (t!216475 List!30602)) )
))
(declare-fun printList!1164 (LexerInterface!4236 List!30602) List!30600)

(assert (=> b!2631963 (= lt!926219 (printList!1164 thiss!14197 (Cons!30502 lt!926207 Nil!30502)))))

(declare-fun lt!926221 () BalanceConc!18654)

(declare-fun list!11470 (BalanceConc!18654) List!30600)

(assert (=> b!2631963 (= lt!926217 (list!11470 lt!926221))))

(declare-datatypes ((IArray!19047 0))(
  ( (IArray!19048 (innerList!9581 List!30602)) )
))
(declare-datatypes ((Conc!9521 0))(
  ( (Node!9521 (left!23564 Conc!9521) (right!23894 Conc!9521) (csize!19272 Int) (cheight!9732 Int)) (Leaf!14581 (xs!12521 IArray!19047) (csize!19273 Int)) (Empty!9521) )
))
(declare-datatypes ((BalanceConc!18656 0))(
  ( (BalanceConc!18657 (c!423090 Conc!9521)) )
))
(declare-fun lt!926220 () BalanceConc!18656)

(declare-fun printTailRec!1123 (LexerInterface!4236 BalanceConc!18656 Int BalanceConc!18654) BalanceConc!18654)

(assert (=> b!2631963 (= lt!926221 (printTailRec!1123 thiss!14197 lt!926220 0 (BalanceConc!18655 Empty!9520)))))

(declare-fun print!1637 (LexerInterface!4236 BalanceConc!18656) BalanceConc!18654)

(assert (=> b!2631963 (= lt!926221 (print!1637 thiss!14197 lt!926220))))

(declare-fun singletonSeq!2056 (Token!8748) BalanceConc!18656)

(assert (=> b!2631963 (= lt!926220 (singletonSeq!2056 lt!926207))))

(declare-fun tp!834443 () Bool)

(declare-fun e!1660739 () Bool)

(declare-fun e!1660733 () Bool)

(declare-fun b!2631964 () Bool)

(declare-fun inv!41350 (String!34188) Bool)

(declare-fun inv!41355 (TokenValueInjection!9162) Bool)

(assert (=> b!2631964 (= e!1660733 (and tp!834443 (inv!41350 (tag!5133 (h!35921 rules!1726))) (inv!41355 (transformation!4639 (h!35921 rules!1726))) e!1660739))))

(declare-fun e!1660740 () Bool)

(declare-fun e!1660736 () Bool)

(declare-fun tp!834444 () Bool)

(declare-fun separatorToken!156 () Token!8748)

(declare-fun b!2631965 () Bool)

(declare-fun inv!21 (TokenValue!4861) Bool)

(assert (=> b!2631965 (= e!1660736 (and (inv!21 (value!149816 separatorToken!156)) e!1660740 tp!834444))))

(declare-fun b!2631966 () Bool)

(declare-fun e!1660734 () Bool)

(declare-fun tp!834449 () Bool)

(assert (=> b!2631966 (= e!1660734 (and e!1660733 tp!834449))))

(declare-fun b!2631967 () Bool)

(declare-fun res!1108169 () Bool)

(declare-fun e!1660728 () Bool)

(assert (=> b!2631967 (=> (not res!1108169) (not e!1660728))))

(declare-fun rulesProduceIndividualToken!1948 (LexerInterface!4236 List!30601 Token!8748) Bool)

(assert (=> b!2631967 (= res!1108169 (rulesProduceIndividualToken!1948 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2631968 () Bool)

(declare-fun res!1108172 () Bool)

(declare-fun e!1660726 () Bool)

(assert (=> b!2631968 (=> res!1108172 e!1660726)))

(declare-fun lt!926208 () List!30602)

(declare-fun contains!5785 (List!30602 Token!8748) Bool)

(assert (=> b!2631968 (= res!1108172 (not (contains!5785 lt!926208 lt!926207)))))

(declare-fun b!2631969 () Bool)

(declare-fun e!1660730 () Bool)

(assert (=> b!2631969 (= e!1660728 e!1660730)))

(declare-fun res!1108181 () Bool)

(assert (=> b!2631969 (=> (not res!1108181) (not e!1660730))))

(declare-fun from!862 () Int)

(declare-fun lt!926212 () Int)

(assert (=> b!2631969 (= res!1108181 (< from!862 lt!926212))))

(declare-datatypes ((Unit!44507 0))(
  ( (Unit!44508) )
))
(declare-fun lt!926213 () Unit!44507)

(declare-fun v!6381 () BalanceConc!18656)

(declare-fun lemmaContentSubsetPreservesForall!308 (List!30602 List!30602 Int) Unit!44507)

(declare-fun dropList!942 (BalanceConc!18656 Int) List!30602)

(assert (=> b!2631969 (= lt!926213 (lemmaContentSubsetPreservesForall!308 lt!926208 (dropList!942 v!6381 from!862) lambda!98751))))

(declare-fun list!11471 (BalanceConc!18656) List!30602)

(assert (=> b!2631969 (= lt!926208 (list!11471 v!6381))))

(declare-fun b!2631970 () Bool)

(declare-fun lt!926214 () BalanceConc!18654)

(assert (=> b!2631970 (= e!1660731 (= lt!926219 (list!11470 lt!926214)))))

(declare-fun b!2631971 () Bool)

(declare-fun e!1660735 () Bool)

(declare-fun tp!834448 () Bool)

(declare-fun inv!41356 (Conc!9521) Bool)

(assert (=> b!2631971 (= e!1660735 (and (inv!41356 (c!423090 v!6381)) tp!834448))))

(declare-fun e!1660732 () Bool)

(assert (=> b!2631972 (= e!1660732 (and tp!834447 tp!834450))))

(assert (=> b!2631973 (= e!1660739 (and tp!834446 tp!834445))))

(declare-fun b!2631974 () Bool)

(declare-fun res!1108170 () Bool)

(assert (=> b!2631974 (=> (not res!1108170) (not e!1660728))))

(declare-fun sepAndNonSepRulesDisjointChars!1212 (List!30601 List!30601) Bool)

(assert (=> b!2631974 (= res!1108170 (sepAndNonSepRulesDisjointChars!1212 rules!1726 rules!1726))))

(assert (=> b!2631976 (= e!1660726 e!1660738)))

(declare-fun res!1108171 () Bool)

(assert (=> b!2631976 (=> res!1108171 e!1660738)))

(declare-fun lt!926218 () Bool)

(declare-datatypes ((tuple2!29990 0))(
  ( (tuple2!29991 (_1!17537 Token!8748) (_2!17537 BalanceConc!18654)) )
))
(declare-datatypes ((Option!6028 0))(
  ( (None!6027) (Some!6027 (v!32430 tuple2!29990)) )
))
(declare-fun lt!926216 () Option!6028)

(assert (=> b!2631976 (= res!1108171 (or (and (not lt!926218) (= (_1!17537 (v!32430 lt!926216)) lt!926207)) (and (not lt!926218) (not (= (_1!17537 (v!32430 lt!926216)) lt!926207))) (not ((_ is None!6027) lt!926216))))))

(assert (=> b!2631976 (= lt!926218 (not ((_ is Some!6027) lt!926216)))))

(declare-fun lt!926206 () BalanceConc!18654)

(declare-fun maxPrefixZipperSequence!962 (LexerInterface!4236 List!30601 BalanceConc!18654) Option!6028)

(declare-fun ++!7425 (BalanceConc!18654 BalanceConc!18654) BalanceConc!18654)

(assert (=> b!2631976 (= lt!926216 (maxPrefixZipperSequence!962 thiss!14197 rules!1726 (++!7425 lt!926214 lt!926206)))))

(declare-fun charsOf!2926 (Token!8748) BalanceConc!18654)

(assert (=> b!2631976 (= lt!926214 (charsOf!2926 lt!926207))))

(declare-fun printWithSeparatorTokenWhenNeededRec!510 (LexerInterface!4236 List!30601 BalanceConc!18656 Token!8748 Int) BalanceConc!18654)

(assert (=> b!2631976 (= lt!926206 (printWithSeparatorTokenWhenNeededRec!510 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))

(declare-fun lt!926215 () Unit!44507)

(declare-fun forallContained!991 (List!30602 Int Token!8748) Unit!44507)

(assert (=> b!2631976 (= lt!926215 (forallContained!991 lt!926208 lambda!98752 lt!926207))))

(declare-fun b!2631977 () Bool)

(declare-fun res!1108174 () Bool)

(assert (=> b!2631977 (=> (not res!1108174) (not e!1660728))))

(assert (=> b!2631977 (= res!1108174 (isSeparator!4639 (rule!7021 separatorToken!156)))))

(declare-fun res!1108175 () Bool)

(assert (=> b!2631978 (=> (not res!1108175) (not e!1660728))))

(declare-fun forall!6384 (BalanceConc!18656 Int) Bool)

(assert (=> b!2631978 (= res!1108175 (forall!6384 v!6381 lambda!98751))))

(declare-fun b!2631979 () Bool)

(assert (=> b!2631979 (= e!1660730 (not e!1660726))))

(declare-fun res!1108178 () Bool)

(assert (=> b!2631979 (=> res!1108178 e!1660726)))

(declare-fun contains!5786 (BalanceConc!18656 Token!8748) Bool)

(assert (=> b!2631979 (= res!1108178 (not (contains!5786 v!6381 lt!926207)))))

(declare-fun apply!7265 (BalanceConc!18656 Int) Token!8748)

(assert (=> b!2631979 (= lt!926207 (apply!7265 v!6381 from!862))))

(declare-fun lt!926211 () List!30602)

(declare-fun tail!4276 (List!30602) List!30602)

(declare-fun drop!1635 (List!30602 Int) List!30602)

(assert (=> b!2631979 (= (tail!4276 lt!926211) (drop!1635 lt!926208 (+ 1 from!862)))))

(declare-fun lt!926210 () Unit!44507)

(declare-fun lemmaDropTail!824 (List!30602 Int) Unit!44507)

(assert (=> b!2631979 (= lt!926210 (lemmaDropTail!824 lt!926208 from!862))))

(declare-fun head!6038 (List!30602) Token!8748)

(declare-fun apply!7266 (List!30602 Int) Token!8748)

(assert (=> b!2631979 (= (head!6038 lt!926211) (apply!7266 lt!926208 from!862))))

(assert (=> b!2631979 (= lt!926211 (drop!1635 lt!926208 from!862))))

(declare-fun lt!926209 () Unit!44507)

(declare-fun lemmaDropApply!850 (List!30602 Int) Unit!44507)

(assert (=> b!2631979 (= lt!926209 (lemmaDropApply!850 lt!926208 from!862))))

(declare-fun b!2631980 () Bool)

(declare-fun res!1108177 () Bool)

(assert (=> b!2631980 (=> (not res!1108177) (not e!1660728))))

(declare-fun rulesProduceEachTokenIndividually!1056 (LexerInterface!4236 List!30601 BalanceConc!18656) Bool)

(assert (=> b!2631980 (= res!1108177 (rulesProduceEachTokenIndividually!1056 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2631981 () Bool)

(declare-fun res!1108179 () Bool)

(assert (=> b!2631981 (=> (not res!1108179) (not e!1660728))))

(declare-fun isEmpty!17389 (List!30601) Bool)

(assert (=> b!2631981 (= res!1108179 (not (isEmpty!17389 rules!1726)))))

(declare-fun b!2631975 () Bool)

(declare-fun e!1660729 () Bool)

(assert (=> b!2631975 (= e!1660729 e!1660728)))

(declare-fun res!1108176 () Bool)

(assert (=> b!2631975 (=> (not res!1108176) (not e!1660728))))

(assert (=> b!2631975 (= res!1108176 (<= from!862 lt!926212))))

(declare-fun size!23579 (BalanceConc!18656) Int)

(assert (=> b!2631975 (= lt!926212 (size!23579 v!6381))))

(declare-fun res!1108180 () Bool)

(assert (=> start!256010 (=> (not res!1108180) (not e!1660729))))

(assert (=> start!256010 (= res!1108180 (and ((_ is Lexer!4234) thiss!14197) (>= from!862 0)))))

(assert (=> start!256010 e!1660729))

(assert (=> start!256010 true))

(assert (=> start!256010 e!1660734))

(declare-fun inv!41357 (Token!8748) Bool)

(assert (=> start!256010 (and (inv!41357 separatorToken!156) e!1660736)))

(declare-fun inv!41358 (BalanceConc!18656) Bool)

(assert (=> start!256010 (and (inv!41358 v!6381) e!1660735)))

(declare-fun b!2631982 () Bool)

(declare-fun res!1108182 () Bool)

(assert (=> b!2631982 (=> (not res!1108182) (not e!1660728))))

(declare-fun rulesInvariant!3736 (LexerInterface!4236 List!30601) Bool)

(assert (=> b!2631982 (= res!1108182 (rulesInvariant!3736 thiss!14197 rules!1726))))

(declare-fun b!2631983 () Bool)

(declare-fun tp!834442 () Bool)

(assert (=> b!2631983 (= e!1660740 (and tp!834442 (inv!41350 (tag!5133 (rule!7021 separatorToken!156))) (inv!41355 (transformation!4639 (rule!7021 separatorToken!156))) e!1660732))))

(assert (= (and start!256010 res!1108180) b!2631975))

(assert (= (and b!2631975 res!1108176) b!2631981))

(assert (= (and b!2631981 res!1108179) b!2631982))

(assert (= (and b!2631982 res!1108182) b!2631980))

(assert (= (and b!2631980 res!1108177) b!2631967))

(assert (= (and b!2631967 res!1108169) b!2631977))

(assert (= (and b!2631977 res!1108174) b!2631978))

(assert (= (and b!2631978 res!1108175) b!2631974))

(assert (= (and b!2631974 res!1108170) b!2631969))

(assert (= (and b!2631969 res!1108181) b!2631979))

(assert (= (and b!2631979 (not res!1108178)) b!2631968))

(assert (= (and b!2631968 (not res!1108172)) b!2631976))

(assert (= (and b!2631976 (not res!1108171)) b!2631963))

(assert (= (and b!2631963 (not res!1108173)) b!2631970))

(assert (= b!2631964 b!2631973))

(assert (= b!2631966 b!2631964))

(assert (= (and start!256010 ((_ is Cons!30501) rules!1726)) b!2631966))

(assert (= b!2631983 b!2631972))

(assert (= b!2631965 b!2631983))

(assert (= start!256010 b!2631965))

(assert (= start!256010 b!2631971))

(declare-fun m!2974991 () Bool)

(assert (=> b!2631970 m!2974991))

(declare-fun m!2974993 () Bool)

(assert (=> b!2631979 m!2974993))

(declare-fun m!2974995 () Bool)

(assert (=> b!2631979 m!2974995))

(declare-fun m!2974997 () Bool)

(assert (=> b!2631979 m!2974997))

(declare-fun m!2974999 () Bool)

(assert (=> b!2631979 m!2974999))

(declare-fun m!2975001 () Bool)

(assert (=> b!2631979 m!2975001))

(declare-fun m!2975003 () Bool)

(assert (=> b!2631979 m!2975003))

(declare-fun m!2975005 () Bool)

(assert (=> b!2631979 m!2975005))

(declare-fun m!2975007 () Bool)

(assert (=> b!2631979 m!2975007))

(declare-fun m!2975009 () Bool)

(assert (=> b!2631979 m!2975009))

(declare-fun m!2975011 () Bool)

(assert (=> b!2631976 m!2975011))

(assert (=> b!2631976 m!2975011))

(declare-fun m!2975013 () Bool)

(assert (=> b!2631976 m!2975013))

(declare-fun m!2975015 () Bool)

(assert (=> b!2631976 m!2975015))

(declare-fun m!2975017 () Bool)

(assert (=> b!2631976 m!2975017))

(declare-fun m!2975019 () Bool)

(assert (=> b!2631976 m!2975019))

(declare-fun m!2975021 () Bool)

(assert (=> b!2631978 m!2975021))

(declare-fun m!2975023 () Bool)

(assert (=> b!2631969 m!2975023))

(assert (=> b!2631969 m!2975023))

(declare-fun m!2975025 () Bool)

(assert (=> b!2631969 m!2975025))

(declare-fun m!2975027 () Bool)

(assert (=> b!2631969 m!2975027))

(declare-fun m!2975029 () Bool)

(assert (=> b!2631971 m!2975029))

(declare-fun m!2975031 () Bool)

(assert (=> b!2631965 m!2975031))

(declare-fun m!2975033 () Bool)

(assert (=> b!2631963 m!2975033))

(declare-fun m!2975035 () Bool)

(assert (=> b!2631963 m!2975035))

(declare-fun m!2975037 () Bool)

(assert (=> b!2631963 m!2975037))

(declare-fun m!2975039 () Bool)

(assert (=> b!2631963 m!2975039))

(declare-fun m!2975041 () Bool)

(assert (=> b!2631963 m!2975041))

(declare-fun m!2975043 () Bool)

(assert (=> b!2631981 m!2975043))

(declare-fun m!2975045 () Bool)

(assert (=> b!2631975 m!2975045))

(declare-fun m!2975047 () Bool)

(assert (=> b!2631968 m!2975047))

(declare-fun m!2975049 () Bool)

(assert (=> b!2631967 m!2975049))

(declare-fun m!2975051 () Bool)

(assert (=> b!2631964 m!2975051))

(declare-fun m!2975053 () Bool)

(assert (=> b!2631964 m!2975053))

(declare-fun m!2975055 () Bool)

(assert (=> b!2631983 m!2975055))

(declare-fun m!2975057 () Bool)

(assert (=> b!2631983 m!2975057))

(declare-fun m!2975059 () Bool)

(assert (=> b!2631974 m!2975059))

(declare-fun m!2975061 () Bool)

(assert (=> b!2631982 m!2975061))

(declare-fun m!2975063 () Bool)

(assert (=> start!256010 m!2975063))

(declare-fun m!2975065 () Bool)

(assert (=> start!256010 m!2975065))

(declare-fun m!2975067 () Bool)

(assert (=> b!2631980 m!2975067))

(check-sat (not b_next!74933) (not b!2631970) (not b!2631978) (not b!2631967) (not b!2631974) (not b!2631983) (not b!2631992) (not b!2631979) b_and!192825 (not b!2631966) b_and!192823 (not b!2631965) b_and!192821 (not b_next!74937) b_and!192819 (not b_next!74939) (not b!2631975) (not b!2631982) (not b!2631968) (not b!2631963) (not b_next!74935) (not b!2631981) (not b!2631964) (not start!256010) (not b!2631980) (not b!2631969) (not b!2631971) (not b!2631976))
(check-sat (not b_next!74933) (not b_next!74935) b_and!192825 b_and!192823 b_and!192821 (not b_next!74937) b_and!192819 (not b_next!74939))
(get-model)

(declare-fun d!746646 () Bool)

(declare-fun lt!926224 () Bool)

(declare-fun forall!6385 (List!30602 Int) Bool)

(assert (=> d!746646 (= lt!926224 (forall!6385 (list!11471 v!6381) lambda!98751))))

(declare-fun forall!6386 (Conc!9521 Int) Bool)

(assert (=> d!746646 (= lt!926224 (forall!6386 (c!423090 v!6381) lambda!98751))))

(assert (=> d!746646 (= (forall!6384 v!6381 lambda!98751) lt!926224)))

(declare-fun bs!475788 () Bool)

(assert (= bs!475788 d!746646))

(assert (=> bs!475788 m!2975027))

(assert (=> bs!475788 m!2975027))

(declare-fun m!2975069 () Bool)

(assert (=> bs!475788 m!2975069))

(declare-fun m!2975071 () Bool)

(assert (=> bs!475788 m!2975071))

(assert (=> b!2631978 d!746646))

(declare-fun d!746648 () Bool)

(declare-fun lt!926229 () Bool)

(declare-fun e!1660755 () Bool)

(assert (=> d!746648 (= lt!926229 e!1660755)))

(declare-fun res!1108199 () Bool)

(assert (=> d!746648 (=> (not res!1108199) (not e!1660755))))

(declare-datatypes ((tuple2!29992 0))(
  ( (tuple2!29993 (_1!17538 BalanceConc!18656) (_2!17538 BalanceConc!18654)) )
))
(declare-fun lex!1898 (LexerInterface!4236 List!30601 BalanceConc!18654) tuple2!29992)

(assert (=> d!746648 (= res!1108199 (= (list!11471 (_1!17538 (lex!1898 thiss!14197 rules!1726 (print!1637 thiss!14197 (singletonSeq!2056 separatorToken!156))))) (list!11471 (singletonSeq!2056 separatorToken!156))))))

(declare-fun e!1660756 () Bool)

(assert (=> d!746648 (= lt!926229 e!1660756)))

(declare-fun res!1108198 () Bool)

(assert (=> d!746648 (=> (not res!1108198) (not e!1660756))))

(declare-fun lt!926230 () tuple2!29992)

(assert (=> d!746648 (= res!1108198 (= (size!23579 (_1!17538 lt!926230)) 1))))

(assert (=> d!746648 (= lt!926230 (lex!1898 thiss!14197 rules!1726 (print!1637 thiss!14197 (singletonSeq!2056 separatorToken!156))))))

(assert (=> d!746648 (not (isEmpty!17389 rules!1726))))

(assert (=> d!746648 (= (rulesProduceIndividualToken!1948 thiss!14197 rules!1726 separatorToken!156) lt!926229)))

(declare-fun b!2632003 () Bool)

(declare-fun res!1108200 () Bool)

(assert (=> b!2632003 (=> (not res!1108200) (not e!1660756))))

(assert (=> b!2632003 (= res!1108200 (= (apply!7265 (_1!17538 lt!926230) 0) separatorToken!156))))

(declare-fun b!2632004 () Bool)

(declare-fun isEmpty!17390 (BalanceConc!18654) Bool)

(assert (=> b!2632004 (= e!1660756 (isEmpty!17390 (_2!17538 lt!926230)))))

(declare-fun b!2632005 () Bool)

(assert (=> b!2632005 (= e!1660755 (isEmpty!17390 (_2!17538 (lex!1898 thiss!14197 rules!1726 (print!1637 thiss!14197 (singletonSeq!2056 separatorToken!156))))))))

(assert (= (and d!746648 res!1108198) b!2632003))

(assert (= (and b!2632003 res!1108200) b!2632004))

(assert (= (and d!746648 res!1108199) b!2632005))

(declare-fun m!2975073 () Bool)

(assert (=> d!746648 m!2975073))

(declare-fun m!2975075 () Bool)

(assert (=> d!746648 m!2975075))

(declare-fun m!2975077 () Bool)

(assert (=> d!746648 m!2975077))

(declare-fun m!2975079 () Bool)

(assert (=> d!746648 m!2975079))

(assert (=> d!746648 m!2975043))

(assert (=> d!746648 m!2975073))

(declare-fun m!2975081 () Bool)

(assert (=> d!746648 m!2975081))

(assert (=> d!746648 m!2975073))

(assert (=> d!746648 m!2975077))

(declare-fun m!2975083 () Bool)

(assert (=> d!746648 m!2975083))

(declare-fun m!2975085 () Bool)

(assert (=> b!2632003 m!2975085))

(declare-fun m!2975087 () Bool)

(assert (=> b!2632004 m!2975087))

(assert (=> b!2632005 m!2975073))

(assert (=> b!2632005 m!2975073))

(assert (=> b!2632005 m!2975077))

(assert (=> b!2632005 m!2975077))

(assert (=> b!2632005 m!2975079))

(declare-fun m!2975089 () Bool)

(assert (=> b!2632005 m!2975089))

(assert (=> b!2631967 d!746648))

(declare-fun bs!475792 () Bool)

(declare-fun d!746652 () Bool)

(assert (= bs!475792 (and d!746652 b!2631978)))

(declare-fun lambda!98757 () Int)

(assert (=> bs!475792 (= lambda!98757 lambda!98751)))

(declare-fun bs!475793 () Bool)

(assert (= bs!475793 (and d!746652 b!2631976)))

(assert (=> bs!475793 (not (= lambda!98757 lambda!98752))))

(declare-fun bs!475794 () Bool)

(declare-fun b!2632074 () Bool)

(assert (= bs!475794 (and b!2632074 b!2631978)))

(declare-fun lambda!98758 () Int)

(assert (=> bs!475794 (not (= lambda!98758 lambda!98751))))

(declare-fun bs!475795 () Bool)

(assert (= bs!475795 (and b!2632074 b!2631976)))

(assert (=> bs!475795 (= lambda!98758 lambda!98752)))

(declare-fun bs!475796 () Bool)

(assert (= bs!475796 (and b!2632074 d!746652)))

(assert (=> bs!475796 (not (= lambda!98758 lambda!98757))))

(declare-fun b!2632086 () Bool)

(declare-fun e!1660813 () Bool)

(assert (=> b!2632086 (= e!1660813 true)))

(declare-fun b!2632085 () Bool)

(declare-fun e!1660812 () Bool)

(assert (=> b!2632085 (= e!1660812 e!1660813)))

(declare-fun b!2632084 () Bool)

(declare-fun e!1660811 () Bool)

(assert (=> b!2632084 (= e!1660811 e!1660812)))

(assert (=> b!2632074 e!1660811))

(assert (= b!2632085 b!2632086))

(assert (= b!2632084 b!2632085))

(assert (= (and b!2632074 ((_ is Cons!30501) rules!1726)) b!2632084))

(assert (=> b!2632086 (< (dynLambda!13064 order!16535 (toValue!6553 (transformation!4639 (h!35921 rules!1726)))) (dynLambda!13065 order!16537 lambda!98758))))

(assert (=> b!2632086 (< (dynLambda!13066 order!16539 (toChars!6412 (transformation!4639 (h!35921 rules!1726)))) (dynLambda!13065 order!16537 lambda!98758))))

(assert (=> b!2632074 true))

(declare-fun bm!169258 () Bool)

(declare-fun c!423110 () Bool)

(declare-fun c!423109 () Bool)

(assert (=> bm!169258 (= c!423110 c!423109)))

(declare-fun call!169264 () BalanceConc!18654)

(declare-fun e!1660804 () BalanceConc!18654)

(declare-fun lt!926299 () BalanceConc!18654)

(declare-fun call!169267 () BalanceConc!18654)

(assert (=> bm!169258 (= call!169264 (++!7425 e!1660804 (ite c!423109 lt!926299 call!169267)))))

(declare-fun bm!169259 () Bool)

(declare-fun call!169263 () Token!8748)

(assert (=> bm!169259 (= call!169263 (apply!7265 v!6381 (+ 1 from!862)))))

(declare-fun b!2632073 () Bool)

(declare-fun e!1660808 () Bool)

(declare-fun lt!926295 () Option!6028)

(assert (=> b!2632073 (= e!1660808 (not (= (_1!17537 (v!32430 lt!926295)) call!169263)))))

(declare-fun e!1660805 () BalanceConc!18654)

(declare-fun e!1660806 () BalanceConc!18654)

(assert (=> b!2632074 (= e!1660805 e!1660806)))

(declare-fun lt!926305 () List!30602)

(assert (=> b!2632074 (= lt!926305 (list!11471 v!6381))))

(declare-fun lt!926300 () Unit!44507)

(assert (=> b!2632074 (= lt!926300 (lemmaDropApply!850 lt!926305 (+ 1 from!862)))))

(assert (=> b!2632074 (= (head!6038 (drop!1635 lt!926305 (+ 1 from!862))) (apply!7266 lt!926305 (+ 1 from!862)))))

(declare-fun lt!926304 () Unit!44507)

(assert (=> b!2632074 (= lt!926304 lt!926300)))

(declare-fun lt!926298 () List!30602)

(assert (=> b!2632074 (= lt!926298 (list!11471 v!6381))))

(declare-fun lt!926307 () Unit!44507)

(assert (=> b!2632074 (= lt!926307 (lemmaDropTail!824 lt!926298 (+ 1 from!862)))))

(assert (=> b!2632074 (= (tail!4276 (drop!1635 lt!926298 (+ 1 from!862))) (drop!1635 lt!926298 (+ 1 from!862 1)))))

(declare-fun lt!926301 () Unit!44507)

(assert (=> b!2632074 (= lt!926301 lt!926307)))

(declare-fun lt!926297 () Unit!44507)

(assert (=> b!2632074 (= lt!926297 (forallContained!991 (list!11471 v!6381) lambda!98758 (apply!7265 v!6381 (+ 1 from!862))))))

(assert (=> b!2632074 (= lt!926299 (printWithSeparatorTokenWhenNeededRec!510 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862 1)))))

(assert (=> b!2632074 (= lt!926295 (maxPrefixZipperSequence!962 thiss!14197 rules!1726 (++!7425 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862))) lt!926299)))))

(declare-fun res!1108234 () Bool)

(assert (=> b!2632074 (= res!1108234 ((_ is Some!6027) lt!926295))))

(declare-fun e!1660809 () Bool)

(assert (=> b!2632074 (=> (not res!1108234) (not e!1660809))))

(assert (=> b!2632074 (= c!423109 e!1660809)))

(declare-fun b!2632075 () Bool)

(assert (=> b!2632075 (= e!1660806 call!169264)))

(declare-fun lt!926306 () BalanceConc!18654)

(declare-fun printWithSeparatorTokenWhenNeededList!655 (LexerInterface!4236 List!30601 List!30602 Token!8748) List!30600)

(assert (=> d!746652 (= (list!11470 lt!926306) (printWithSeparatorTokenWhenNeededList!655 thiss!14197 rules!1726 (dropList!942 v!6381 (+ 1 from!862)) separatorToken!156))))

(assert (=> d!746652 (= lt!926306 e!1660805)))

(declare-fun c!423112 () Bool)

(assert (=> d!746652 (= c!423112 (>= (+ 1 from!862) (size!23579 v!6381)))))

(declare-fun lt!926296 () Unit!44507)

(assert (=> d!746652 (= lt!926296 (lemmaContentSubsetPreservesForall!308 (list!11471 v!6381) (dropList!942 v!6381 (+ 1 from!862)) lambda!98757))))

(declare-fun e!1660807 () Bool)

(assert (=> d!746652 e!1660807))

(declare-fun res!1108235 () Bool)

(assert (=> d!746652 (=> (not res!1108235) (not e!1660807))))

(assert (=> d!746652 (= res!1108235 (>= (+ 1 from!862) 0))))

(assert (=> d!746652 (= (printWithSeparatorTokenWhenNeededRec!510 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)) lt!926306)))

(declare-fun bm!169260 () Bool)

(declare-fun call!169265 () BalanceConc!18654)

(assert (=> bm!169260 (= call!169267 call!169265)))

(declare-fun b!2632076 () Bool)

(assert (=> b!2632076 (= e!1660807 (<= (+ 1 from!862) (size!23579 v!6381)))))

(declare-fun b!2632077 () Bool)

(declare-fun call!169266 () Token!8748)

(assert (=> b!2632077 (= e!1660804 (charsOf!2926 call!169266))))

(declare-fun b!2632078 () Bool)

(declare-fun e!1660810 () BalanceConc!18654)

(assert (=> b!2632078 (= e!1660810 (++!7425 call!169264 lt!926299))))

(declare-fun bm!169261 () Bool)

(assert (=> bm!169261 (= call!169266 call!169263)))

(declare-fun b!2632079 () Bool)

(assert (=> b!2632079 (= e!1660809 (= (_1!17537 (v!32430 lt!926295)) (apply!7265 v!6381 (+ 1 from!862))))))

(declare-fun b!2632080 () Bool)

(assert (=> b!2632080 (= e!1660804 call!169265)))

(declare-fun c!423111 () Bool)

(declare-fun bm!169262 () Bool)

(assert (=> bm!169262 (= call!169265 (charsOf!2926 (ite c!423109 call!169263 (ite c!423111 separatorToken!156 call!169266))))))

(declare-fun b!2632081 () Bool)

(assert (=> b!2632081 (= e!1660805 (BalanceConc!18655 Empty!9520))))

(declare-fun b!2632082 () Bool)

(assert (=> b!2632082 (= c!423111 e!1660808)))

(declare-fun res!1108236 () Bool)

(assert (=> b!2632082 (=> (not res!1108236) (not e!1660808))))

(assert (=> b!2632082 (= res!1108236 ((_ is Some!6027) lt!926295))))

(assert (=> b!2632082 (= e!1660806 e!1660810)))

(declare-fun b!2632083 () Bool)

(assert (=> b!2632083 (= e!1660810 (BalanceConc!18655 Empty!9520))))

(assert (=> b!2632083 (= (print!1637 thiss!14197 (singletonSeq!2056 call!169266)) (printTailRec!1123 thiss!14197 (singletonSeq!2056 call!169266) 0 (BalanceConc!18655 Empty!9520)))))

(declare-fun lt!926302 () Unit!44507)

(declare-fun Unit!44509 () Unit!44507)

(assert (=> b!2632083 (= lt!926302 Unit!44509)))

(declare-fun lt!926308 () Unit!44507)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!798 (LexerInterface!4236 List!30601 List!30600 List!30600) Unit!44507)

(assert (=> b!2632083 (= lt!926308 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!798 thiss!14197 rules!1726 (list!11470 call!169267) (list!11470 lt!926299)))))

(assert (=> b!2632083 false))

(declare-fun lt!926303 () Unit!44507)

(declare-fun Unit!44510 () Unit!44507)

(assert (=> b!2632083 (= lt!926303 Unit!44510)))

(assert (= (and d!746652 res!1108235) b!2632076))

(assert (= (and d!746652 c!423112) b!2632081))

(assert (= (and d!746652 (not c!423112)) b!2632074))

(assert (= (and b!2632074 res!1108234) b!2632079))

(assert (= (and b!2632074 c!423109) b!2632075))

(assert (= (and b!2632074 (not c!423109)) b!2632082))

(assert (= (and b!2632082 res!1108236) b!2632073))

(assert (= (and b!2632082 c!423111) b!2632078))

(assert (= (and b!2632082 (not c!423111)) b!2632083))

(assert (= (or b!2632078 b!2632083) bm!169261))

(assert (= (or b!2632078 b!2632083) bm!169260))

(assert (= (or b!2632075 b!2632073 bm!169261) bm!169259))

(assert (= (or b!2632075 bm!169260) bm!169262))

(assert (= (or b!2632075 b!2632078) bm!169258))

(assert (= (and bm!169258 c!423110) b!2632080))

(assert (= (and bm!169258 (not c!423110)) b!2632077))

(declare-fun m!2975181 () Bool)

(assert (=> b!2632079 m!2975181))

(declare-fun m!2975183 () Bool)

(assert (=> bm!169258 m!2975183))

(declare-fun m!2975185 () Bool)

(assert (=> b!2632074 m!2975185))

(declare-fun m!2975187 () Bool)

(assert (=> b!2632074 m!2975187))

(declare-fun m!2975189 () Bool)

(assert (=> b!2632074 m!2975189))

(declare-fun m!2975191 () Bool)

(assert (=> b!2632074 m!2975191))

(declare-fun m!2975193 () Bool)

(assert (=> b!2632074 m!2975193))

(declare-fun m!2975195 () Bool)

(assert (=> b!2632074 m!2975195))

(assert (=> b!2632074 m!2975185))

(assert (=> b!2632074 m!2975193))

(declare-fun m!2975197 () Bool)

(assert (=> b!2632074 m!2975197))

(declare-fun m!2975199 () Bool)

(assert (=> b!2632074 m!2975199))

(assert (=> b!2632074 m!2975199))

(declare-fun m!2975201 () Bool)

(assert (=> b!2632074 m!2975201))

(declare-fun m!2975203 () Bool)

(assert (=> b!2632074 m!2975203))

(assert (=> b!2632074 m!2975027))

(assert (=> b!2632074 m!2975181))

(declare-fun m!2975205 () Bool)

(assert (=> b!2632074 m!2975205))

(declare-fun m!2975207 () Bool)

(assert (=> b!2632074 m!2975207))

(assert (=> b!2632074 m!2975181))

(assert (=> b!2632074 m!2975195))

(assert (=> b!2632074 m!2975027))

(assert (=> b!2632074 m!2975181))

(declare-fun m!2975209 () Bool)

(assert (=> b!2632074 m!2975209))

(declare-fun m!2975211 () Bool)

(assert (=> bm!169262 m!2975211))

(assert (=> bm!169259 m!2975181))

(declare-fun m!2975213 () Bool)

(assert (=> b!2632083 m!2975213))

(declare-fun m!2975215 () Bool)

(assert (=> b!2632083 m!2975215))

(declare-fun m!2975217 () Bool)

(assert (=> b!2632083 m!2975217))

(assert (=> b!2632083 m!2975215))

(assert (=> b!2632083 m!2975215))

(declare-fun m!2975219 () Bool)

(assert (=> b!2632083 m!2975219))

(declare-fun m!2975221 () Bool)

(assert (=> b!2632083 m!2975221))

(assert (=> b!2632083 m!2975213))

(declare-fun m!2975223 () Bool)

(assert (=> b!2632083 m!2975223))

(assert (=> b!2632083 m!2975221))

(assert (=> d!746652 m!2975027))

(declare-fun m!2975225 () Bool)

(assert (=> d!746652 m!2975225))

(declare-fun m!2975227 () Bool)

(assert (=> d!746652 m!2975227))

(assert (=> d!746652 m!2975045))

(assert (=> d!746652 m!2975027))

(assert (=> d!746652 m!2975225))

(assert (=> d!746652 m!2975225))

(declare-fun m!2975229 () Bool)

(assert (=> d!746652 m!2975229))

(declare-fun m!2975231 () Bool)

(assert (=> d!746652 m!2975231))

(declare-fun m!2975233 () Bool)

(assert (=> b!2632077 m!2975233))

(declare-fun m!2975235 () Bool)

(assert (=> b!2632078 m!2975235))

(assert (=> b!2632076 m!2975045))

(assert (=> b!2631976 d!746652))

(declare-fun d!746676 () Bool)

(declare-fun lt!926311 () BalanceConc!18654)

(assert (=> d!746676 (= (list!11470 lt!926311) (originalCharacters!5405 lt!926207))))

(declare-fun dynLambda!13067 (Int TokenValue!4861) BalanceConc!18654)

(assert (=> d!746676 (= lt!926311 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 lt!926207))) (value!149816 lt!926207)))))

(assert (=> d!746676 (= (charsOf!2926 lt!926207) lt!926311)))

(declare-fun b_lambda!79243 () Bool)

(assert (=> (not b_lambda!79243) (not d!746676)))

(declare-fun tb!143607 () Bool)

(declare-fun t!216484 () Bool)

(assert (=> (and b!2631972 (= (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (toChars!6412 (transformation!4639 (rule!7021 lt!926207)))) t!216484) tb!143607))

(declare-fun b!2632091 () Bool)

(declare-fun e!1660816 () Bool)

(declare-fun tp!834453 () Bool)

(declare-fun inv!41359 (Conc!9520) Bool)

(assert (=> b!2632091 (= e!1660816 (and (inv!41359 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 lt!926207))) (value!149816 lt!926207)))) tp!834453))))

(declare-fun result!178482 () Bool)

(declare-fun inv!41360 (BalanceConc!18654) Bool)

(assert (=> tb!143607 (= result!178482 (and (inv!41360 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 lt!926207))) (value!149816 lt!926207))) e!1660816))))

(assert (= tb!143607 b!2632091))

(declare-fun m!2975237 () Bool)

(assert (=> b!2632091 m!2975237))

(declare-fun m!2975239 () Bool)

(assert (=> tb!143607 m!2975239))

(assert (=> d!746676 t!216484))

(declare-fun b_and!192827 () Bool)

(assert (= b_and!192821 (and (=> t!216484 result!178482) b_and!192827)))

(declare-fun tb!143609 () Bool)

(declare-fun t!216486 () Bool)

(assert (=> (and b!2631973 (= (toChars!6412 (transformation!4639 (h!35921 rules!1726))) (toChars!6412 (transformation!4639 (rule!7021 lt!926207)))) t!216486) tb!143609))

(declare-fun result!178486 () Bool)

(assert (= result!178486 result!178482))

(assert (=> d!746676 t!216486))

(declare-fun b_and!192829 () Bool)

(assert (= b_and!192825 (and (=> t!216486 result!178486) b_and!192829)))

(declare-fun m!2975241 () Bool)

(assert (=> d!746676 m!2975241))

(declare-fun m!2975243 () Bool)

(assert (=> d!746676 m!2975243))

(assert (=> b!2631976 d!746676))

(declare-fun d!746678 () Bool)

(declare-fun dynLambda!13068 (Int Token!8748) Bool)

(assert (=> d!746678 (dynLambda!13068 lambda!98752 lt!926207)))

(declare-fun lt!926314 () Unit!44507)

(declare-fun choose!15618 (List!30602 Int Token!8748) Unit!44507)

(assert (=> d!746678 (= lt!926314 (choose!15618 lt!926208 lambda!98752 lt!926207))))

(declare-fun e!1660819 () Bool)

(assert (=> d!746678 e!1660819))

(declare-fun res!1108239 () Bool)

(assert (=> d!746678 (=> (not res!1108239) (not e!1660819))))

(assert (=> d!746678 (= res!1108239 (forall!6385 lt!926208 lambda!98752))))

(assert (=> d!746678 (= (forallContained!991 lt!926208 lambda!98752 lt!926207) lt!926314)))

(declare-fun b!2632094 () Bool)

(assert (=> b!2632094 (= e!1660819 (contains!5785 lt!926208 lt!926207))))

(assert (= (and d!746678 res!1108239) b!2632094))

(declare-fun b_lambda!79245 () Bool)

(assert (=> (not b_lambda!79245) (not d!746678)))

(declare-fun m!2975245 () Bool)

(assert (=> d!746678 m!2975245))

(declare-fun m!2975247 () Bool)

(assert (=> d!746678 m!2975247))

(declare-fun m!2975249 () Bool)

(assert (=> d!746678 m!2975249))

(assert (=> b!2632094 m!2975047))

(assert (=> b!2631976 d!746678))

(declare-fun b!2632113 () Bool)

(declare-fun e!1660834 () Bool)

(declare-fun e!1660839 () Bool)

(assert (=> b!2632113 (= e!1660834 e!1660839)))

(declare-fun res!1108259 () Bool)

(assert (=> b!2632113 (=> (not res!1108259) (not e!1660839))))

(declare-fun lt!926333 () Option!6028)

(declare-fun get!9594 (Option!6028) tuple2!29990)

(declare-datatypes ((tuple2!29996 0))(
  ( (tuple2!29997 (_1!17540 Token!8748) (_2!17540 List!30600)) )
))
(declare-datatypes ((Option!6029 0))(
  ( (None!6028) (Some!6028 (v!32441 tuple2!29996)) )
))
(declare-fun get!9595 (Option!6029) tuple2!29996)

(declare-fun maxPrefix!2307 (LexerInterface!4236 List!30601 List!30600) Option!6029)

(assert (=> b!2632113 (= res!1108259 (= (_1!17537 (get!9594 lt!926333)) (_1!17540 (get!9595 (maxPrefix!2307 thiss!14197 rules!1726 (list!11470 (++!7425 lt!926214 lt!926206)))))))))

(declare-fun b!2632114 () Bool)

(declare-fun res!1108255 () Bool)

(declare-fun e!1660837 () Bool)

(assert (=> b!2632114 (=> (not res!1108255) (not e!1660837))))

(declare-fun e!1660835 () Bool)

(assert (=> b!2632114 (= res!1108255 e!1660835)))

(declare-fun res!1108254 () Bool)

(assert (=> b!2632114 (=> res!1108254 e!1660835)))

(declare-fun isDefined!4791 (Option!6028) Bool)

(assert (=> b!2632114 (= res!1108254 (not (isDefined!4791 lt!926333)))))

(declare-fun d!746680 () Bool)

(assert (=> d!746680 e!1660837))

(declare-fun res!1108256 () Bool)

(assert (=> d!746680 (=> (not res!1108256) (not e!1660837))))

(declare-fun isDefined!4792 (Option!6029) Bool)

(declare-fun maxPrefixZipper!435 (LexerInterface!4236 List!30601 List!30600) Option!6029)

(assert (=> d!746680 (= res!1108256 (= (isDefined!4791 lt!926333) (isDefined!4792 (maxPrefixZipper!435 thiss!14197 rules!1726 (list!11470 (++!7425 lt!926214 lt!926206))))))))

(declare-fun e!1660836 () Option!6028)

(assert (=> d!746680 (= lt!926333 e!1660836)))

(declare-fun c!423116 () Bool)

(assert (=> d!746680 (= c!423116 (and ((_ is Cons!30501) rules!1726) ((_ is Nil!30501) (t!216474 rules!1726))))))

(declare-fun lt!926338 () Unit!44507)

(declare-fun lt!926337 () Unit!44507)

(assert (=> d!746680 (= lt!926338 lt!926337)))

(declare-fun lt!926335 () List!30600)

(declare-fun lt!926334 () List!30600)

(declare-fun isPrefix!2436 (List!30600 List!30600) Bool)

(assert (=> d!746680 (isPrefix!2436 lt!926335 lt!926334)))

(declare-fun lemmaIsPrefixRefl!1562 (List!30600 List!30600) Unit!44507)

(assert (=> d!746680 (= lt!926337 (lemmaIsPrefixRefl!1562 lt!926335 lt!926334))))

(assert (=> d!746680 (= lt!926334 (list!11470 (++!7425 lt!926214 lt!926206)))))

(assert (=> d!746680 (= lt!926335 (list!11470 (++!7425 lt!926214 lt!926206)))))

(declare-fun rulesValidInductive!1614 (LexerInterface!4236 List!30601) Bool)

(assert (=> d!746680 (rulesValidInductive!1614 thiss!14197 rules!1726)))

(assert (=> d!746680 (= (maxPrefixZipperSequence!962 thiss!14197 rules!1726 (++!7425 lt!926214 lt!926206)) lt!926333)))

(declare-fun b!2632115 () Bool)

(declare-fun e!1660838 () Bool)

(assert (=> b!2632115 (= e!1660838 (= (list!11470 (_2!17537 (get!9594 lt!926333))) (_2!17540 (get!9595 (maxPrefixZipper!435 thiss!14197 rules!1726 (list!11470 (++!7425 lt!926214 lt!926206)))))))))

(declare-fun b!2632116 () Bool)

(declare-fun lt!926336 () Option!6028)

(declare-fun lt!926339 () Option!6028)

(assert (=> b!2632116 (= e!1660836 (ite (and ((_ is None!6027) lt!926336) ((_ is None!6027) lt!926339)) None!6027 (ite ((_ is None!6027) lt!926339) lt!926336 (ite ((_ is None!6027) lt!926336) lt!926339 (ite (>= (size!23578 (_1!17537 (v!32430 lt!926336))) (size!23578 (_1!17537 (v!32430 lt!926339)))) lt!926336 lt!926339)))))))

(declare-fun call!169270 () Option!6028)

(assert (=> b!2632116 (= lt!926336 call!169270)))

(assert (=> b!2632116 (= lt!926339 (maxPrefixZipperSequence!962 thiss!14197 (t!216474 rules!1726) (++!7425 lt!926214 lt!926206)))))

(declare-fun b!2632117 () Bool)

(assert (=> b!2632117 (= e!1660835 e!1660838)))

(declare-fun res!1108257 () Bool)

(assert (=> b!2632117 (=> (not res!1108257) (not e!1660838))))

(assert (=> b!2632117 (= res!1108257 (= (_1!17537 (get!9594 lt!926333)) (_1!17540 (get!9595 (maxPrefixZipper!435 thiss!14197 rules!1726 (list!11470 (++!7425 lt!926214 lt!926206)))))))))

(declare-fun b!2632118 () Bool)

(assert (=> b!2632118 (= e!1660837 e!1660834)))

(declare-fun res!1108258 () Bool)

(assert (=> b!2632118 (=> res!1108258 e!1660834)))

(assert (=> b!2632118 (= res!1108258 (not (isDefined!4791 lt!926333)))))

(declare-fun b!2632119 () Bool)

(assert (=> b!2632119 (= e!1660836 call!169270)))

(declare-fun b!2632120 () Bool)

(assert (=> b!2632120 (= e!1660839 (= (list!11470 (_2!17537 (get!9594 lt!926333))) (_2!17540 (get!9595 (maxPrefix!2307 thiss!14197 rules!1726 (list!11470 (++!7425 lt!926214 lt!926206)))))))))

(declare-fun bm!169265 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!444 (LexerInterface!4236 Rule!9078 BalanceConc!18654) Option!6028)

(assert (=> bm!169265 (= call!169270 (maxPrefixOneRuleZipperSequence!444 thiss!14197 (h!35921 rules!1726) (++!7425 lt!926214 lt!926206)))))

(assert (= (and d!746680 c!423116) b!2632119))

(assert (= (and d!746680 (not c!423116)) b!2632116))

(assert (= (or b!2632119 b!2632116) bm!169265))

(assert (= (and d!746680 res!1108256) b!2632114))

(assert (= (and b!2632114 (not res!1108254)) b!2632117))

(assert (= (and b!2632117 res!1108257) b!2632115))

(assert (= (and b!2632114 res!1108255) b!2632118))

(assert (= (and b!2632118 (not res!1108258)) b!2632113))

(assert (= (and b!2632113 res!1108259) b!2632120))

(assert (=> b!2632115 m!2975011))

(declare-fun m!2975251 () Bool)

(assert (=> b!2632115 m!2975251))

(declare-fun m!2975253 () Bool)

(assert (=> b!2632115 m!2975253))

(declare-fun m!2975255 () Bool)

(assert (=> b!2632115 m!2975255))

(declare-fun m!2975257 () Bool)

(assert (=> b!2632115 m!2975257))

(declare-fun m!2975259 () Bool)

(assert (=> b!2632115 m!2975259))

(assert (=> b!2632115 m!2975251))

(assert (=> b!2632115 m!2975253))

(assert (=> bm!169265 m!2975011))

(declare-fun m!2975261 () Bool)

(assert (=> bm!169265 m!2975261))

(assert (=> b!2632120 m!2975011))

(assert (=> b!2632120 m!2975251))

(assert (=> b!2632120 m!2975251))

(declare-fun m!2975263 () Bool)

(assert (=> b!2632120 m!2975263))

(assert (=> b!2632120 m!2975257))

(assert (=> b!2632120 m!2975259))

(assert (=> b!2632120 m!2975263))

(declare-fun m!2975265 () Bool)

(assert (=> b!2632120 m!2975265))

(declare-fun m!2975267 () Bool)

(assert (=> b!2632114 m!2975267))

(assert (=> d!746680 m!2975011))

(assert (=> d!746680 m!2975251))

(declare-fun m!2975269 () Bool)

(assert (=> d!746680 m!2975269))

(declare-fun m!2975271 () Bool)

(assert (=> d!746680 m!2975271))

(assert (=> d!746680 m!2975251))

(assert (=> d!746680 m!2975253))

(assert (=> d!746680 m!2975267))

(assert (=> d!746680 m!2975253))

(declare-fun m!2975273 () Bool)

(assert (=> d!746680 m!2975273))

(declare-fun m!2975275 () Bool)

(assert (=> d!746680 m!2975275))

(assert (=> b!2632117 m!2975257))

(assert (=> b!2632117 m!2975011))

(assert (=> b!2632117 m!2975251))

(assert (=> b!2632117 m!2975251))

(assert (=> b!2632117 m!2975253))

(assert (=> b!2632117 m!2975253))

(assert (=> b!2632117 m!2975255))

(assert (=> b!2632118 m!2975267))

(assert (=> b!2632113 m!2975257))

(assert (=> b!2632113 m!2975011))

(assert (=> b!2632113 m!2975251))

(assert (=> b!2632113 m!2975251))

(assert (=> b!2632113 m!2975263))

(assert (=> b!2632113 m!2975263))

(assert (=> b!2632113 m!2975265))

(assert (=> b!2632116 m!2975011))

(declare-fun m!2975277 () Bool)

(assert (=> b!2632116 m!2975277))

(assert (=> b!2631976 d!746680))

(declare-fun e!1660854 () Bool)

(declare-fun b!2632152 () Bool)

(declare-fun lt!926366 () BalanceConc!18654)

(declare-fun ++!7427 (List!30600 List!30600) List!30600)

(assert (=> b!2632152 (= e!1660854 (= (list!11470 lt!926366) (++!7427 (list!11470 lt!926214) (list!11470 lt!926206))))))

(declare-fun b!2632149 () Bool)

(declare-fun res!1108274 () Bool)

(assert (=> b!2632149 (=> (not res!1108274) (not e!1660854))))

(declare-fun isBalanced!2876 (Conc!9520) Bool)

(declare-fun ++!7428 (Conc!9520 Conc!9520) Conc!9520)

(assert (=> b!2632149 (= res!1108274 (isBalanced!2876 (++!7428 (c!423089 lt!926214) (c!423089 lt!926206))))))

(declare-fun b!2632151 () Bool)

(declare-fun res!1108273 () Bool)

(assert (=> b!2632151 (=> (not res!1108273) (not e!1660854))))

(declare-fun height!1373 (Conc!9520) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2632151 (= res!1108273 (>= (height!1373 (++!7428 (c!423089 lt!926214) (c!423089 lt!926206))) (max!0 (height!1373 (c!423089 lt!926214)) (height!1373 (c!423089 lt!926206)))))))

(declare-fun b!2632150 () Bool)

(declare-fun res!1108275 () Bool)

(assert (=> b!2632150 (=> (not res!1108275) (not e!1660854))))

(assert (=> b!2632150 (= res!1108275 (<= (height!1373 (++!7428 (c!423089 lt!926214) (c!423089 lt!926206))) (+ (max!0 (height!1373 (c!423089 lt!926214)) (height!1373 (c!423089 lt!926206))) 1)))))

(declare-fun d!746682 () Bool)

(assert (=> d!746682 e!1660854))

(declare-fun res!1108272 () Bool)

(assert (=> d!746682 (=> (not res!1108272) (not e!1660854))))

(declare-fun appendAssocInst!631 (Conc!9520 Conc!9520) Bool)

(assert (=> d!746682 (= res!1108272 (appendAssocInst!631 (c!423089 lt!926214) (c!423089 lt!926206)))))

(assert (=> d!746682 (= lt!926366 (BalanceConc!18655 (++!7428 (c!423089 lt!926214) (c!423089 lt!926206))))))

(assert (=> d!746682 (= (++!7425 lt!926214 lt!926206) lt!926366)))

(assert (= (and d!746682 res!1108272) b!2632149))

(assert (= (and b!2632149 res!1108274) b!2632150))

(assert (= (and b!2632150 res!1108275) b!2632151))

(assert (= (and b!2632151 res!1108273) b!2632152))

(declare-fun m!2975279 () Bool)

(assert (=> b!2632152 m!2975279))

(assert (=> b!2632152 m!2974991))

(declare-fun m!2975281 () Bool)

(assert (=> b!2632152 m!2975281))

(assert (=> b!2632152 m!2974991))

(assert (=> b!2632152 m!2975281))

(declare-fun m!2975283 () Bool)

(assert (=> b!2632152 m!2975283))

(declare-fun m!2975285 () Bool)

(assert (=> d!746682 m!2975285))

(declare-fun m!2975287 () Bool)

(assert (=> d!746682 m!2975287))

(declare-fun m!2975289 () Bool)

(assert (=> b!2632151 m!2975289))

(assert (=> b!2632151 m!2975287))

(assert (=> b!2632151 m!2975289))

(declare-fun m!2975291 () Bool)

(assert (=> b!2632151 m!2975291))

(declare-fun m!2975293 () Bool)

(assert (=> b!2632151 m!2975293))

(assert (=> b!2632151 m!2975287))

(declare-fun m!2975295 () Bool)

(assert (=> b!2632151 m!2975295))

(assert (=> b!2632151 m!2975291))

(assert (=> b!2632150 m!2975289))

(assert (=> b!2632150 m!2975287))

(assert (=> b!2632150 m!2975289))

(assert (=> b!2632150 m!2975291))

(assert (=> b!2632150 m!2975293))

(assert (=> b!2632150 m!2975287))

(assert (=> b!2632150 m!2975295))

(assert (=> b!2632150 m!2975291))

(assert (=> b!2632149 m!2975287))

(assert (=> b!2632149 m!2975287))

(declare-fun m!2975297 () Bool)

(assert (=> b!2632149 m!2975297))

(assert (=> b!2631976 d!746682))

(declare-fun d!746684 () Bool)

(declare-fun list!11473 (Conc!9520) List!30600)

(assert (=> d!746684 (= (list!11470 lt!926214) (list!11473 (c!423089 lt!926214)))))

(declare-fun bs!475797 () Bool)

(assert (= bs!475797 d!746684))

(declare-fun m!2975299 () Bool)

(assert (=> bs!475797 m!2975299))

(assert (=> b!2631970 d!746684))

(declare-fun bs!475803 () Bool)

(declare-fun d!746686 () Bool)

(assert (= bs!475803 (and d!746686 b!2631978)))

(declare-fun lambda!98769 () Int)

(assert (=> bs!475803 (not (= lambda!98769 lambda!98751))))

(declare-fun bs!475804 () Bool)

(assert (= bs!475804 (and d!746686 b!2631976)))

(assert (=> bs!475804 (= lambda!98769 lambda!98752)))

(declare-fun bs!475805 () Bool)

(assert (= bs!475805 (and d!746686 d!746652)))

(assert (=> bs!475805 (not (= lambda!98769 lambda!98757))))

(declare-fun bs!475806 () Bool)

(assert (= bs!475806 (and d!746686 b!2632074)))

(assert (=> bs!475806 (= lambda!98769 lambda!98758)))

(declare-fun b!2632216 () Bool)

(declare-fun e!1660897 () Bool)

(assert (=> b!2632216 (= e!1660897 true)))

(declare-fun b!2632215 () Bool)

(declare-fun e!1660896 () Bool)

(assert (=> b!2632215 (= e!1660896 e!1660897)))

(declare-fun b!2632214 () Bool)

(declare-fun e!1660895 () Bool)

(assert (=> b!2632214 (= e!1660895 e!1660896)))

(assert (=> d!746686 e!1660895))

(assert (= b!2632215 b!2632216))

(assert (= b!2632214 b!2632215))

(assert (= (and d!746686 ((_ is Cons!30501) rules!1726)) b!2632214))

(assert (=> b!2632216 (< (dynLambda!13064 order!16535 (toValue!6553 (transformation!4639 (h!35921 rules!1726)))) (dynLambda!13065 order!16537 lambda!98769))))

(assert (=> b!2632216 (< (dynLambda!13066 order!16539 (toChars!6412 (transformation!4639 (h!35921 rules!1726)))) (dynLambda!13065 order!16537 lambda!98769))))

(assert (=> d!746686 true))

(declare-fun e!1660894 () Bool)

(assert (=> d!746686 e!1660894))

(declare-fun res!1108314 () Bool)

(assert (=> d!746686 (=> (not res!1108314) (not e!1660894))))

(declare-fun lt!926413 () Bool)

(assert (=> d!746686 (= res!1108314 (= lt!926413 (forall!6385 (list!11471 v!6381) lambda!98769)))))

(assert (=> d!746686 (= lt!926413 (forall!6384 v!6381 lambda!98769))))

(assert (=> d!746686 (not (isEmpty!17389 rules!1726))))

(assert (=> d!746686 (= (rulesProduceEachTokenIndividually!1056 thiss!14197 rules!1726 v!6381) lt!926413)))

(declare-fun b!2632213 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1467 (LexerInterface!4236 List!30601 List!30602) Bool)

(assert (=> b!2632213 (= e!1660894 (= lt!926413 (rulesProduceEachTokenIndividuallyList!1467 thiss!14197 rules!1726 (list!11471 v!6381))))))

(assert (= (and d!746686 res!1108314) b!2632213))

(assert (=> d!746686 m!2975027))

(assert (=> d!746686 m!2975027))

(declare-fun m!2975413 () Bool)

(assert (=> d!746686 m!2975413))

(declare-fun m!2975417 () Bool)

(assert (=> d!746686 m!2975417))

(assert (=> d!746686 m!2975043))

(assert (=> b!2632213 m!2975027))

(assert (=> b!2632213 m!2975027))

(declare-fun m!2975423 () Bool)

(assert (=> b!2632213 m!2975423))

(assert (=> b!2631980 d!746686))

(declare-fun d!746696 () Bool)

(assert (=> d!746696 (= (isEmpty!17389 rules!1726) ((_ is Nil!30501) rules!1726))))

(assert (=> b!2631981 d!746696))

(declare-fun d!746700 () Bool)

(declare-fun res!1108319 () Bool)

(declare-fun e!1660900 () Bool)

(assert (=> d!746700 (=> (not res!1108319) (not e!1660900))))

(declare-fun isEmpty!17392 (List!30600) Bool)

(assert (=> d!746700 (= res!1108319 (not (isEmpty!17392 (originalCharacters!5405 separatorToken!156))))))

(assert (=> d!746700 (= (inv!41357 separatorToken!156) e!1660900)))

(declare-fun b!2632221 () Bool)

(declare-fun res!1108320 () Bool)

(assert (=> b!2632221 (=> (not res!1108320) (not e!1660900))))

(assert (=> b!2632221 (= res!1108320 (= (originalCharacters!5405 separatorToken!156) (list!11470 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (value!149816 separatorToken!156)))))))

(declare-fun b!2632222 () Bool)

(declare-fun size!23580 (List!30600) Int)

(assert (=> b!2632222 (= e!1660900 (= (size!23578 separatorToken!156) (size!23580 (originalCharacters!5405 separatorToken!156))))))

(assert (= (and d!746700 res!1108319) b!2632221))

(assert (= (and b!2632221 res!1108320) b!2632222))

(declare-fun b_lambda!79251 () Bool)

(assert (=> (not b_lambda!79251) (not b!2632221)))

(declare-fun t!216500 () Bool)

(declare-fun tb!143615 () Bool)

(assert (=> (and b!2631972 (= (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156)))) t!216500) tb!143615))

(declare-fun b!2632223 () Bool)

(declare-fun e!1660901 () Bool)

(declare-fun tp!834457 () Bool)

(assert (=> b!2632223 (= e!1660901 (and (inv!41359 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (value!149816 separatorToken!156)))) tp!834457))))

(declare-fun result!178494 () Bool)

(assert (=> tb!143615 (= result!178494 (and (inv!41360 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (value!149816 separatorToken!156))) e!1660901))))

(assert (= tb!143615 b!2632223))

(declare-fun m!2975425 () Bool)

(assert (=> b!2632223 m!2975425))

(declare-fun m!2975427 () Bool)

(assert (=> tb!143615 m!2975427))

(assert (=> b!2632221 t!216500))

(declare-fun b_and!192835 () Bool)

(assert (= b_and!192827 (and (=> t!216500 result!178494) b_and!192835)))

(declare-fun t!216502 () Bool)

(declare-fun tb!143617 () Bool)

(assert (=> (and b!2631973 (= (toChars!6412 (transformation!4639 (h!35921 rules!1726))) (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156)))) t!216502) tb!143617))

(declare-fun result!178496 () Bool)

(assert (= result!178496 result!178494))

(assert (=> b!2632221 t!216502))

(declare-fun b_and!192837 () Bool)

(assert (= b_and!192829 (and (=> t!216502 result!178496) b_and!192837)))

(declare-fun m!2975429 () Bool)

(assert (=> d!746700 m!2975429))

(declare-fun m!2975431 () Bool)

(assert (=> b!2632221 m!2975431))

(assert (=> b!2632221 m!2975431))

(declare-fun m!2975433 () Bool)

(assert (=> b!2632221 m!2975433))

(declare-fun m!2975435 () Bool)

(assert (=> b!2632222 m!2975435))

(assert (=> start!256010 d!746700))

(declare-fun d!746702 () Bool)

(declare-fun isBalanced!2878 (Conc!9521) Bool)

(assert (=> d!746702 (= (inv!41358 v!6381) (isBalanced!2878 (c!423090 v!6381)))))

(declare-fun bs!475807 () Bool)

(assert (= bs!475807 d!746702))

(declare-fun m!2975437 () Bool)

(assert (=> bs!475807 m!2975437))

(assert (=> start!256010 d!746702))

(declare-fun d!746704 () Bool)

(assert (=> d!746704 (forall!6385 (dropList!942 v!6381 from!862) lambda!98751)))

(declare-fun lt!926416 () Unit!44507)

(declare-fun choose!15619 (List!30602 List!30602 Int) Unit!44507)

(assert (=> d!746704 (= lt!926416 (choose!15619 lt!926208 (dropList!942 v!6381 from!862) lambda!98751))))

(assert (=> d!746704 (forall!6385 lt!926208 lambda!98751)))

(assert (=> d!746704 (= (lemmaContentSubsetPreservesForall!308 lt!926208 (dropList!942 v!6381 from!862) lambda!98751) lt!926416)))

(declare-fun bs!475808 () Bool)

(assert (= bs!475808 d!746704))

(assert (=> bs!475808 m!2975023))

(declare-fun m!2975439 () Bool)

(assert (=> bs!475808 m!2975439))

(assert (=> bs!475808 m!2975023))

(declare-fun m!2975441 () Bool)

(assert (=> bs!475808 m!2975441))

(declare-fun m!2975443 () Bool)

(assert (=> bs!475808 m!2975443))

(assert (=> b!2631969 d!746704))

(declare-fun d!746706 () Bool)

(declare-fun list!11474 (Conc!9521) List!30602)

(assert (=> d!746706 (= (dropList!942 v!6381 from!862) (drop!1635 (list!11474 (c!423090 v!6381)) from!862))))

(declare-fun bs!475809 () Bool)

(assert (= bs!475809 d!746706))

(declare-fun m!2975445 () Bool)

(assert (=> bs!475809 m!2975445))

(assert (=> bs!475809 m!2975445))

(declare-fun m!2975447 () Bool)

(assert (=> bs!475809 m!2975447))

(assert (=> b!2631969 d!746706))

(declare-fun d!746708 () Bool)

(assert (=> d!746708 (= (list!11471 v!6381) (list!11474 (c!423090 v!6381)))))

(declare-fun bs!475810 () Bool)

(assert (= bs!475810 d!746708))

(assert (=> bs!475810 m!2975445))

(assert (=> b!2631969 d!746708))

(declare-fun d!746710 () Bool)

(declare-fun lt!926419 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4307 (List!30602) (InoxSet Token!8748))

(assert (=> d!746710 (= lt!926419 (select (content!4307 lt!926208) lt!926207))))

(declare-fun e!1660906 () Bool)

(assert (=> d!746710 (= lt!926419 e!1660906)))

(declare-fun res!1108326 () Bool)

(assert (=> d!746710 (=> (not res!1108326) (not e!1660906))))

(assert (=> d!746710 (= res!1108326 ((_ is Cons!30502) lt!926208))))

(assert (=> d!746710 (= (contains!5785 lt!926208 lt!926207) lt!926419)))

(declare-fun b!2632228 () Bool)

(declare-fun e!1660907 () Bool)

(assert (=> b!2632228 (= e!1660906 e!1660907)))

(declare-fun res!1108325 () Bool)

(assert (=> b!2632228 (=> res!1108325 e!1660907)))

(assert (=> b!2632228 (= res!1108325 (= (h!35922 lt!926208) lt!926207))))

(declare-fun b!2632229 () Bool)

(assert (=> b!2632229 (= e!1660907 (contains!5785 (t!216475 lt!926208) lt!926207))))

(assert (= (and d!746710 res!1108326) b!2632228))

(assert (= (and b!2632228 (not res!1108325)) b!2632229))

(declare-fun m!2975449 () Bool)

(assert (=> d!746710 m!2975449))

(declare-fun m!2975451 () Bool)

(assert (=> d!746710 m!2975451))

(declare-fun m!2975453 () Bool)

(assert (=> b!2632229 m!2975453))

(assert (=> b!2631968 d!746710))

(declare-fun b!2632248 () Bool)

(declare-fun e!1660921 () List!30602)

(assert (=> b!2632248 (= e!1660921 lt!926208)))

(declare-fun b!2632249 () Bool)

(declare-fun e!1660919 () Int)

(assert (=> b!2632249 (= e!1660919 0)))

(declare-fun b!2632250 () Bool)

(assert (=> b!2632250 (= e!1660921 (drop!1635 (t!216475 lt!926208) (- from!862 1)))))

(declare-fun b!2632251 () Bool)

(declare-fun e!1660920 () List!30602)

(assert (=> b!2632251 (= e!1660920 e!1660921)))

(declare-fun c!423148 () Bool)

(assert (=> b!2632251 (= c!423148 (<= from!862 0))))

(declare-fun b!2632252 () Bool)

(declare-fun e!1660922 () Int)

(declare-fun call!169291 () Int)

(assert (=> b!2632252 (= e!1660922 call!169291)))

(declare-fun d!746712 () Bool)

(declare-fun e!1660918 () Bool)

(assert (=> d!746712 e!1660918))

(declare-fun res!1108329 () Bool)

(assert (=> d!746712 (=> (not res!1108329) (not e!1660918))))

(declare-fun lt!926422 () List!30602)

(assert (=> d!746712 (= res!1108329 (= ((_ map implies) (content!4307 lt!926422) (content!4307 lt!926208)) ((as const (InoxSet Token!8748)) true)))))

(assert (=> d!746712 (= lt!926422 e!1660920)))

(declare-fun c!423149 () Bool)

(assert (=> d!746712 (= c!423149 ((_ is Nil!30502) lt!926208))))

(assert (=> d!746712 (= (drop!1635 lt!926208 from!862) lt!926422)))

(declare-fun b!2632253 () Bool)

(declare-fun size!23581 (List!30602) Int)

(assert (=> b!2632253 (= e!1660918 (= (size!23581 lt!926422) e!1660922))))

(declare-fun c!423147 () Bool)

(assert (=> b!2632253 (= c!423147 (<= from!862 0))))

(declare-fun b!2632254 () Bool)

(assert (=> b!2632254 (= e!1660919 (- call!169291 from!862))))

(declare-fun b!2632255 () Bool)

(assert (=> b!2632255 (= e!1660920 Nil!30502)))

(declare-fun bm!169286 () Bool)

(assert (=> bm!169286 (= call!169291 (size!23581 lt!926208))))

(declare-fun b!2632256 () Bool)

(assert (=> b!2632256 (= e!1660922 e!1660919)))

(declare-fun c!423146 () Bool)

(assert (=> b!2632256 (= c!423146 (>= from!862 call!169291))))

(assert (= (and d!746712 c!423149) b!2632255))

(assert (= (and d!746712 (not c!423149)) b!2632251))

(assert (= (and b!2632251 c!423148) b!2632248))

(assert (= (and b!2632251 (not c!423148)) b!2632250))

(assert (= (and d!746712 res!1108329) b!2632253))

(assert (= (and b!2632253 c!423147) b!2632252))

(assert (= (and b!2632253 (not c!423147)) b!2632256))

(assert (= (and b!2632256 c!423146) b!2632249))

(assert (= (and b!2632256 (not c!423146)) b!2632254))

(assert (= (or b!2632252 b!2632256 b!2632254) bm!169286))

(declare-fun m!2975455 () Bool)

(assert (=> b!2632250 m!2975455))

(declare-fun m!2975457 () Bool)

(assert (=> d!746712 m!2975457))

(assert (=> d!746712 m!2975449))

(declare-fun m!2975459 () Bool)

(assert (=> b!2632253 m!2975459))

(declare-fun m!2975461 () Bool)

(assert (=> bm!169286 m!2975461))

(assert (=> b!2631979 d!746712))

(declare-fun d!746714 () Bool)

(assert (=> d!746714 (= (head!6038 lt!926211) (h!35922 lt!926211))))

(assert (=> b!2631979 d!746714))

(declare-fun d!746716 () Bool)

(assert (=> d!746716 (= (tail!4276 lt!926211) (t!216475 lt!926211))))

(assert (=> b!2631979 d!746716))

(declare-fun d!746718 () Bool)

(declare-fun lt!926425 () Bool)

(assert (=> d!746718 (= lt!926425 (contains!5785 (list!11471 v!6381) lt!926207))))

(declare-fun contains!5787 (Conc!9521 Token!8748) Bool)

(assert (=> d!746718 (= lt!926425 (contains!5787 (c!423090 v!6381) lt!926207))))

(assert (=> d!746718 (= (contains!5786 v!6381 lt!926207) lt!926425)))

(declare-fun bs!475811 () Bool)

(assert (= bs!475811 d!746718))

(assert (=> bs!475811 m!2975027))

(assert (=> bs!475811 m!2975027))

(declare-fun m!2975463 () Bool)

(assert (=> bs!475811 m!2975463))

(declare-fun m!2975465 () Bool)

(assert (=> bs!475811 m!2975465))

(assert (=> b!2631979 d!746718))

(declare-fun d!746720 () Bool)

(assert (=> d!746720 (= (tail!4276 (drop!1635 lt!926208 from!862)) (drop!1635 lt!926208 (+ from!862 1)))))

(declare-fun lt!926428 () Unit!44507)

(declare-fun choose!15620 (List!30602 Int) Unit!44507)

(assert (=> d!746720 (= lt!926428 (choose!15620 lt!926208 from!862))))

(declare-fun e!1660925 () Bool)

(assert (=> d!746720 e!1660925))

(declare-fun res!1108332 () Bool)

(assert (=> d!746720 (=> (not res!1108332) (not e!1660925))))

(assert (=> d!746720 (= res!1108332 (>= from!862 0))))

(assert (=> d!746720 (= (lemmaDropTail!824 lt!926208 from!862) lt!926428)))

(declare-fun b!2632259 () Bool)

(assert (=> b!2632259 (= e!1660925 (< from!862 (size!23581 lt!926208)))))

(assert (= (and d!746720 res!1108332) b!2632259))

(assert (=> d!746720 m!2975009))

(assert (=> d!746720 m!2975009))

(declare-fun m!2975467 () Bool)

(assert (=> d!746720 m!2975467))

(declare-fun m!2975469 () Bool)

(assert (=> d!746720 m!2975469))

(declare-fun m!2975471 () Bool)

(assert (=> d!746720 m!2975471))

(assert (=> b!2632259 m!2975461))

(assert (=> b!2631979 d!746720))

(declare-fun d!746722 () Bool)

(declare-fun lt!926431 () Token!8748)

(assert (=> d!746722 (= lt!926431 (apply!7266 (list!11471 v!6381) from!862))))

(declare-fun apply!7267 (Conc!9521 Int) Token!8748)

(assert (=> d!746722 (= lt!926431 (apply!7267 (c!423090 v!6381) from!862))))

(declare-fun e!1660928 () Bool)

(assert (=> d!746722 e!1660928))

(declare-fun res!1108335 () Bool)

(assert (=> d!746722 (=> (not res!1108335) (not e!1660928))))

(assert (=> d!746722 (= res!1108335 (<= 0 from!862))))

(assert (=> d!746722 (= (apply!7265 v!6381 from!862) lt!926431)))

(declare-fun b!2632262 () Bool)

(assert (=> b!2632262 (= e!1660928 (< from!862 (size!23579 v!6381)))))

(assert (= (and d!746722 res!1108335) b!2632262))

(assert (=> d!746722 m!2975027))

(assert (=> d!746722 m!2975027))

(declare-fun m!2975473 () Bool)

(assert (=> d!746722 m!2975473))

(declare-fun m!2975475 () Bool)

(assert (=> d!746722 m!2975475))

(assert (=> b!2632262 m!2975045))

(assert (=> b!2631979 d!746722))

(declare-fun d!746724 () Bool)

(assert (=> d!746724 (= (head!6038 (drop!1635 lt!926208 from!862)) (apply!7266 lt!926208 from!862))))

(declare-fun lt!926434 () Unit!44507)

(declare-fun choose!15621 (List!30602 Int) Unit!44507)

(assert (=> d!746724 (= lt!926434 (choose!15621 lt!926208 from!862))))

(declare-fun e!1660931 () Bool)

(assert (=> d!746724 e!1660931))

(declare-fun res!1108338 () Bool)

(assert (=> d!746724 (=> (not res!1108338) (not e!1660931))))

(assert (=> d!746724 (= res!1108338 (>= from!862 0))))

(assert (=> d!746724 (= (lemmaDropApply!850 lt!926208 from!862) lt!926434)))

(declare-fun b!2632265 () Bool)

(assert (=> b!2632265 (= e!1660931 (< from!862 (size!23581 lt!926208)))))

(assert (= (and d!746724 res!1108338) b!2632265))

(assert (=> d!746724 m!2975009))

(assert (=> d!746724 m!2975009))

(declare-fun m!2975477 () Bool)

(assert (=> d!746724 m!2975477))

(assert (=> d!746724 m!2975005))

(declare-fun m!2975479 () Bool)

(assert (=> d!746724 m!2975479))

(assert (=> b!2632265 m!2975461))

(assert (=> b!2631979 d!746724))

(declare-fun b!2632266 () Bool)

(declare-fun e!1660935 () List!30602)

(assert (=> b!2632266 (= e!1660935 lt!926208)))

(declare-fun b!2632267 () Bool)

(declare-fun e!1660933 () Int)

(assert (=> b!2632267 (= e!1660933 0)))

(declare-fun b!2632268 () Bool)

(assert (=> b!2632268 (= e!1660935 (drop!1635 (t!216475 lt!926208) (- (+ 1 from!862) 1)))))

(declare-fun b!2632269 () Bool)

(declare-fun e!1660934 () List!30602)

(assert (=> b!2632269 (= e!1660934 e!1660935)))

(declare-fun c!423152 () Bool)

(assert (=> b!2632269 (= c!423152 (<= (+ 1 from!862) 0))))

(declare-fun b!2632270 () Bool)

(declare-fun e!1660936 () Int)

(declare-fun call!169292 () Int)

(assert (=> b!2632270 (= e!1660936 call!169292)))

(declare-fun d!746726 () Bool)

(declare-fun e!1660932 () Bool)

(assert (=> d!746726 e!1660932))

(declare-fun res!1108339 () Bool)

(assert (=> d!746726 (=> (not res!1108339) (not e!1660932))))

(declare-fun lt!926435 () List!30602)

(assert (=> d!746726 (= res!1108339 (= ((_ map implies) (content!4307 lt!926435) (content!4307 lt!926208)) ((as const (InoxSet Token!8748)) true)))))

(assert (=> d!746726 (= lt!926435 e!1660934)))

(declare-fun c!423153 () Bool)

(assert (=> d!746726 (= c!423153 ((_ is Nil!30502) lt!926208))))

(assert (=> d!746726 (= (drop!1635 lt!926208 (+ 1 from!862)) lt!926435)))

(declare-fun b!2632271 () Bool)

(assert (=> b!2632271 (= e!1660932 (= (size!23581 lt!926435) e!1660936))))

(declare-fun c!423151 () Bool)

(assert (=> b!2632271 (= c!423151 (<= (+ 1 from!862) 0))))

(declare-fun b!2632272 () Bool)

(assert (=> b!2632272 (= e!1660933 (- call!169292 (+ 1 from!862)))))

(declare-fun b!2632273 () Bool)

(assert (=> b!2632273 (= e!1660934 Nil!30502)))

(declare-fun bm!169287 () Bool)

(assert (=> bm!169287 (= call!169292 (size!23581 lt!926208))))

(declare-fun b!2632274 () Bool)

(assert (=> b!2632274 (= e!1660936 e!1660933)))

(declare-fun c!423150 () Bool)

(assert (=> b!2632274 (= c!423150 (>= (+ 1 from!862) call!169292))))

(assert (= (and d!746726 c!423153) b!2632273))

(assert (= (and d!746726 (not c!423153)) b!2632269))

(assert (= (and b!2632269 c!423152) b!2632266))

(assert (= (and b!2632269 (not c!423152)) b!2632268))

(assert (= (and d!746726 res!1108339) b!2632271))

(assert (= (and b!2632271 c!423151) b!2632270))

(assert (= (and b!2632271 (not c!423151)) b!2632274))

(assert (= (and b!2632274 c!423150) b!2632267))

(assert (= (and b!2632274 (not c!423150)) b!2632272))

(assert (= (or b!2632270 b!2632274 b!2632272) bm!169287))

(declare-fun m!2975481 () Bool)

(assert (=> b!2632268 m!2975481))

(declare-fun m!2975483 () Bool)

(assert (=> d!746726 m!2975483))

(assert (=> d!746726 m!2975449))

(declare-fun m!2975485 () Bool)

(assert (=> b!2632271 m!2975485))

(assert (=> bm!169287 m!2975461))

(assert (=> b!2631979 d!746726))

(declare-fun d!746728 () Bool)

(declare-fun lt!926438 () Token!8748)

(assert (=> d!746728 (contains!5785 lt!926208 lt!926438)))

(declare-fun e!1660942 () Token!8748)

(assert (=> d!746728 (= lt!926438 e!1660942)))

(declare-fun c!423156 () Bool)

(assert (=> d!746728 (= c!423156 (= from!862 0))))

(declare-fun e!1660941 () Bool)

(assert (=> d!746728 e!1660941))

(declare-fun res!1108342 () Bool)

(assert (=> d!746728 (=> (not res!1108342) (not e!1660941))))

(assert (=> d!746728 (= res!1108342 (<= 0 from!862))))

(assert (=> d!746728 (= (apply!7266 lt!926208 from!862) lt!926438)))

(declare-fun b!2632281 () Bool)

(assert (=> b!2632281 (= e!1660941 (< from!862 (size!23581 lt!926208)))))

(declare-fun b!2632282 () Bool)

(assert (=> b!2632282 (= e!1660942 (head!6038 lt!926208))))

(declare-fun b!2632283 () Bool)

(assert (=> b!2632283 (= e!1660942 (apply!7266 (tail!4276 lt!926208) (- from!862 1)))))

(assert (= (and d!746728 res!1108342) b!2632281))

(assert (= (and d!746728 c!423156) b!2632282))

(assert (= (and d!746728 (not c!423156)) b!2632283))

(declare-fun m!2975487 () Bool)

(assert (=> d!746728 m!2975487))

(assert (=> b!2632281 m!2975461))

(declare-fun m!2975489 () Bool)

(assert (=> b!2632282 m!2975489))

(declare-fun m!2975491 () Bool)

(assert (=> b!2632283 m!2975491))

(assert (=> b!2632283 m!2975491))

(declare-fun m!2975493 () Bool)

(assert (=> b!2632283 m!2975493))

(assert (=> b!2631979 d!746728))

(declare-fun d!746730 () Bool)

(assert (=> d!746730 (= (inv!41350 (tag!5133 (rule!7021 separatorToken!156))) (= (mod (str.len (value!149790 (tag!5133 (rule!7021 separatorToken!156)))) 2) 0))))

(assert (=> b!2631983 d!746730))

(declare-fun d!746732 () Bool)

(declare-fun res!1108345 () Bool)

(declare-fun e!1660945 () Bool)

(assert (=> d!746732 (=> (not res!1108345) (not e!1660945))))

(declare-fun semiInverseModEq!1916 (Int Int) Bool)

(assert (=> d!746732 (= res!1108345 (semiInverseModEq!1916 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (toValue!6553 (transformation!4639 (rule!7021 separatorToken!156)))))))

(assert (=> d!746732 (= (inv!41355 (transformation!4639 (rule!7021 separatorToken!156))) e!1660945)))

(declare-fun b!2632286 () Bool)

(declare-fun equivClasses!1817 (Int Int) Bool)

(assert (=> b!2632286 (= e!1660945 (equivClasses!1817 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (toValue!6553 (transformation!4639 (rule!7021 separatorToken!156)))))))

(assert (= (and d!746732 res!1108345) b!2632286))

(declare-fun m!2975495 () Bool)

(assert (=> d!746732 m!2975495))

(declare-fun m!2975497 () Bool)

(assert (=> b!2632286 m!2975497))

(assert (=> b!2631983 d!746732))

(declare-fun d!746734 () Bool)

(declare-fun c!423159 () Bool)

(assert (=> d!746734 (= c!423159 ((_ is Node!9521) (c!423090 v!6381)))))

(declare-fun e!1660950 () Bool)

(assert (=> d!746734 (= (inv!41356 (c!423090 v!6381)) e!1660950)))

(declare-fun b!2632293 () Bool)

(declare-fun inv!41363 (Conc!9521) Bool)

(assert (=> b!2632293 (= e!1660950 (inv!41363 (c!423090 v!6381)))))

(declare-fun b!2632294 () Bool)

(declare-fun e!1660951 () Bool)

(assert (=> b!2632294 (= e!1660950 e!1660951)))

(declare-fun res!1108348 () Bool)

(assert (=> b!2632294 (= res!1108348 (not ((_ is Leaf!14581) (c!423090 v!6381))))))

(assert (=> b!2632294 (=> res!1108348 e!1660951)))

(declare-fun b!2632295 () Bool)

(declare-fun inv!41365 (Conc!9521) Bool)

(assert (=> b!2632295 (= e!1660951 (inv!41365 (c!423090 v!6381)))))

(assert (= (and d!746734 c!423159) b!2632293))

(assert (= (and d!746734 (not c!423159)) b!2632294))

(assert (= (and b!2632294 (not res!1108348)) b!2632295))

(declare-fun m!2975499 () Bool)

(assert (=> b!2632293 m!2975499))

(declare-fun m!2975501 () Bool)

(assert (=> b!2632295 m!2975501))

(assert (=> b!2631971 d!746734))

(declare-fun d!746736 () Bool)

(declare-fun res!1108351 () Bool)

(declare-fun e!1660954 () Bool)

(assert (=> d!746736 (=> (not res!1108351) (not e!1660954))))

(declare-fun rulesValid!1721 (LexerInterface!4236 List!30601) Bool)

(assert (=> d!746736 (= res!1108351 (rulesValid!1721 thiss!14197 rules!1726))))

(assert (=> d!746736 (= (rulesInvariant!3736 thiss!14197 rules!1726) e!1660954)))

(declare-fun b!2632298 () Bool)

(declare-datatypes ((List!30603 0))(
  ( (Nil!30503) (Cons!30503 (h!35923 String!34188) (t!216520 List!30603)) )
))
(declare-fun noDuplicateTag!1717 (LexerInterface!4236 List!30601 List!30603) Bool)

(assert (=> b!2632298 (= e!1660954 (noDuplicateTag!1717 thiss!14197 rules!1726 Nil!30503))))

(assert (= (and d!746736 res!1108351) b!2632298))

(declare-fun m!2975503 () Bool)

(assert (=> d!746736 m!2975503))

(declare-fun m!2975505 () Bool)

(assert (=> b!2632298 m!2975505))

(assert (=> b!2631982 d!746736))

(declare-fun b!2632309 () Bool)

(declare-fun res!1108354 () Bool)

(declare-fun e!1660963 () Bool)

(assert (=> b!2632309 (=> res!1108354 e!1660963)))

(assert (=> b!2632309 (= res!1108354 (not ((_ is IntegerValue!14585) (value!149816 separatorToken!156))))))

(declare-fun e!1660962 () Bool)

(assert (=> b!2632309 (= e!1660962 e!1660963)))

(declare-fun b!2632310 () Bool)

(declare-fun e!1660961 () Bool)

(declare-fun inv!16 (TokenValue!4861) Bool)

(assert (=> b!2632310 (= e!1660961 (inv!16 (value!149816 separatorToken!156)))))

(declare-fun b!2632311 () Bool)

(assert (=> b!2632311 (= e!1660961 e!1660962)))

(declare-fun c!423164 () Bool)

(assert (=> b!2632311 (= c!423164 ((_ is IntegerValue!14584) (value!149816 separatorToken!156)))))

(declare-fun d!746738 () Bool)

(declare-fun c!423165 () Bool)

(assert (=> d!746738 (= c!423165 ((_ is IntegerValue!14583) (value!149816 separatorToken!156)))))

(assert (=> d!746738 (= (inv!21 (value!149816 separatorToken!156)) e!1660961)))

(declare-fun b!2632312 () Bool)

(declare-fun inv!17 (TokenValue!4861) Bool)

(assert (=> b!2632312 (= e!1660962 (inv!17 (value!149816 separatorToken!156)))))

(declare-fun b!2632313 () Bool)

(declare-fun inv!15 (TokenValue!4861) Bool)

(assert (=> b!2632313 (= e!1660963 (inv!15 (value!149816 separatorToken!156)))))

(assert (= (and d!746738 c!423165) b!2632310))

(assert (= (and d!746738 (not c!423165)) b!2632311))

(assert (= (and b!2632311 c!423164) b!2632312))

(assert (= (and b!2632311 (not c!423164)) b!2632309))

(assert (= (and b!2632309 (not res!1108354)) b!2632313))

(declare-fun m!2975507 () Bool)

(assert (=> b!2632310 m!2975507))

(declare-fun m!2975509 () Bool)

(assert (=> b!2632312 m!2975509))

(declare-fun m!2975511 () Bool)

(assert (=> b!2632313 m!2975511))

(assert (=> b!2631965 d!746738))

(declare-fun d!746740 () Bool)

(assert (=> d!746740 (= (inv!41350 (tag!5133 (h!35921 rules!1726))) (= (mod (str.len (value!149790 (tag!5133 (h!35921 rules!1726)))) 2) 0))))

(assert (=> b!2631964 d!746740))

(declare-fun d!746742 () Bool)

(declare-fun res!1108355 () Bool)

(declare-fun e!1660964 () Bool)

(assert (=> d!746742 (=> (not res!1108355) (not e!1660964))))

(assert (=> d!746742 (= res!1108355 (semiInverseModEq!1916 (toChars!6412 (transformation!4639 (h!35921 rules!1726))) (toValue!6553 (transformation!4639 (h!35921 rules!1726)))))))

(assert (=> d!746742 (= (inv!41355 (transformation!4639 (h!35921 rules!1726))) e!1660964)))

(declare-fun b!2632314 () Bool)

(assert (=> b!2632314 (= e!1660964 (equivClasses!1817 (toChars!6412 (transformation!4639 (h!35921 rules!1726))) (toValue!6553 (transformation!4639 (h!35921 rules!1726)))))))

(assert (= (and d!746742 res!1108355) b!2632314))

(declare-fun m!2975513 () Bool)

(assert (=> d!746742 m!2975513))

(declare-fun m!2975515 () Bool)

(assert (=> b!2632314 m!2975515))

(assert (=> b!2631964 d!746742))

(declare-fun d!746744 () Bool)

(declare-fun lt!926441 () Int)

(assert (=> d!746744 (= lt!926441 (size!23581 (list!11471 v!6381)))))

(declare-fun size!23582 (Conc!9521) Int)

(assert (=> d!746744 (= lt!926441 (size!23582 (c!423090 v!6381)))))

(assert (=> d!746744 (= (size!23579 v!6381) lt!926441)))

(declare-fun bs!475812 () Bool)

(assert (= bs!475812 d!746744))

(assert (=> bs!475812 m!2975027))

(assert (=> bs!475812 m!2975027))

(declare-fun m!2975517 () Bool)

(assert (=> bs!475812 m!2975517))

(declare-fun m!2975519 () Bool)

(assert (=> bs!475812 m!2975519))

(assert (=> b!2631975 d!746744))

(declare-fun d!746746 () Bool)

(declare-fun res!1108360 () Bool)

(declare-fun e!1660969 () Bool)

(assert (=> d!746746 (=> res!1108360 e!1660969)))

(assert (=> d!746746 (= res!1108360 (not ((_ is Cons!30501) rules!1726)))))

(assert (=> d!746746 (= (sepAndNonSepRulesDisjointChars!1212 rules!1726 rules!1726) e!1660969)))

(declare-fun b!2632319 () Bool)

(declare-fun e!1660970 () Bool)

(assert (=> b!2632319 (= e!1660969 e!1660970)))

(declare-fun res!1108361 () Bool)

(assert (=> b!2632319 (=> (not res!1108361) (not e!1660970))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!522 (Rule!9078 List!30601) Bool)

(assert (=> b!2632319 (= res!1108361 (ruleDisjointCharsFromAllFromOtherType!522 (h!35921 rules!1726) rules!1726))))

(declare-fun b!2632320 () Bool)

(assert (=> b!2632320 (= e!1660970 (sepAndNonSepRulesDisjointChars!1212 rules!1726 (t!216474 rules!1726)))))

(assert (= (and d!746746 (not res!1108360)) b!2632319))

(assert (= (and b!2632319 res!1108361) b!2632320))

(declare-fun m!2975521 () Bool)

(assert (=> b!2632319 m!2975521))

(declare-fun m!2975523 () Bool)

(assert (=> b!2632320 m!2975523))

(assert (=> b!2631974 d!746746))

(declare-fun d!746748 () Bool)

(assert (=> d!746748 (= (list!11470 lt!926221) (list!11473 (c!423089 lt!926221)))))

(declare-fun bs!475813 () Bool)

(assert (= bs!475813 d!746748))

(declare-fun m!2975525 () Bool)

(assert (=> bs!475813 m!2975525))

(assert (=> b!2631963 d!746748))

(declare-fun d!746750 () Bool)

(declare-fun c!423168 () Bool)

(assert (=> d!746750 (= c!423168 ((_ is Cons!30502) (Cons!30502 lt!926207 Nil!30502)))))

(declare-fun e!1660973 () List!30600)

(assert (=> d!746750 (= (printList!1164 thiss!14197 (Cons!30502 lt!926207 Nil!30502)) e!1660973)))

(declare-fun b!2632325 () Bool)

(assert (=> b!2632325 (= e!1660973 (++!7427 (list!11470 (charsOf!2926 (h!35922 (Cons!30502 lt!926207 Nil!30502)))) (printList!1164 thiss!14197 (t!216475 (Cons!30502 lt!926207 Nil!30502)))))))

(declare-fun b!2632326 () Bool)

(assert (=> b!2632326 (= e!1660973 Nil!30500)))

(assert (= (and d!746750 c!423168) b!2632325))

(assert (= (and d!746750 (not c!423168)) b!2632326))

(declare-fun m!2975527 () Bool)

(assert (=> b!2632325 m!2975527))

(assert (=> b!2632325 m!2975527))

(declare-fun m!2975529 () Bool)

(assert (=> b!2632325 m!2975529))

(declare-fun m!2975531 () Bool)

(assert (=> b!2632325 m!2975531))

(assert (=> b!2632325 m!2975529))

(assert (=> b!2632325 m!2975531))

(declare-fun m!2975533 () Bool)

(assert (=> b!2632325 m!2975533))

(assert (=> b!2631963 d!746750))

(declare-fun d!746752 () Bool)

(declare-fun e!1660976 () Bool)

(assert (=> d!746752 e!1660976))

(declare-fun res!1108364 () Bool)

(assert (=> d!746752 (=> (not res!1108364) (not e!1660976))))

(declare-fun lt!926444 () BalanceConc!18656)

(assert (=> d!746752 (= res!1108364 (= (list!11471 lt!926444) (Cons!30502 lt!926207 Nil!30502)))))

(declare-fun singleton!910 (Token!8748) BalanceConc!18656)

(assert (=> d!746752 (= lt!926444 (singleton!910 lt!926207))))

(assert (=> d!746752 (= (singletonSeq!2056 lt!926207) lt!926444)))

(declare-fun b!2632329 () Bool)

(assert (=> b!2632329 (= e!1660976 (isBalanced!2878 (c!423090 lt!926444)))))

(assert (= (and d!746752 res!1108364) b!2632329))

(declare-fun m!2975535 () Bool)

(assert (=> d!746752 m!2975535))

(declare-fun m!2975537 () Bool)

(assert (=> d!746752 m!2975537))

(declare-fun m!2975539 () Bool)

(assert (=> b!2632329 m!2975539))

(assert (=> b!2631963 d!746752))

(declare-fun d!746754 () Bool)

(declare-fun lt!926467 () BalanceConc!18654)

(declare-fun printListTailRec!505 (LexerInterface!4236 List!30602 List!30600) List!30600)

(assert (=> d!746754 (= (list!11470 lt!926467) (printListTailRec!505 thiss!14197 (dropList!942 lt!926220 0) (list!11470 (BalanceConc!18655 Empty!9520))))))

(declare-fun e!1660988 () BalanceConc!18654)

(assert (=> d!746754 (= lt!926467 e!1660988)))

(declare-fun c!423171 () Bool)

(assert (=> d!746754 (= c!423171 (>= 0 (size!23579 lt!926220)))))

(declare-fun e!1660989 () Bool)

(assert (=> d!746754 e!1660989))

(declare-fun res!1108371 () Bool)

(assert (=> d!746754 (=> (not res!1108371) (not e!1660989))))

(assert (=> d!746754 (= res!1108371 (>= 0 0))))

(assert (=> d!746754 (= (printTailRec!1123 thiss!14197 lt!926220 0 (BalanceConc!18655 Empty!9520)) lt!926467)))

(declare-fun b!2632343 () Bool)

(assert (=> b!2632343 (= e!1660989 (<= 0 (size!23579 lt!926220)))))

(declare-fun b!2632344 () Bool)

(assert (=> b!2632344 (= e!1660988 (BalanceConc!18655 Empty!9520))))

(declare-fun b!2632345 () Bool)

(assert (=> b!2632345 (= e!1660988 (printTailRec!1123 thiss!14197 lt!926220 (+ 0 1) (++!7425 (BalanceConc!18655 Empty!9520) (charsOf!2926 (apply!7265 lt!926220 0)))))))

(declare-fun lt!926470 () List!30602)

(assert (=> b!2632345 (= lt!926470 (list!11471 lt!926220))))

(declare-fun lt!926469 () Unit!44507)

(assert (=> b!2632345 (= lt!926469 (lemmaDropApply!850 lt!926470 0))))

(assert (=> b!2632345 (= (head!6038 (drop!1635 lt!926470 0)) (apply!7266 lt!926470 0))))

(declare-fun lt!926466 () Unit!44507)

(assert (=> b!2632345 (= lt!926466 lt!926469)))

(declare-fun lt!926465 () List!30602)

(assert (=> b!2632345 (= lt!926465 (list!11471 lt!926220))))

(declare-fun lt!926471 () Unit!44507)

(assert (=> b!2632345 (= lt!926471 (lemmaDropTail!824 lt!926465 0))))

(assert (=> b!2632345 (= (tail!4276 (drop!1635 lt!926465 0)) (drop!1635 lt!926465 (+ 0 1)))))

(declare-fun lt!926468 () Unit!44507)

(assert (=> b!2632345 (= lt!926468 lt!926471)))

(assert (= (and d!746754 res!1108371) b!2632343))

(assert (= (and d!746754 c!423171) b!2632344))

(assert (= (and d!746754 (not c!423171)) b!2632345))

(declare-fun m!2975557 () Bool)

(assert (=> d!746754 m!2975557))

(declare-fun m!2975559 () Bool)

(assert (=> d!746754 m!2975559))

(declare-fun m!2975561 () Bool)

(assert (=> d!746754 m!2975561))

(declare-fun m!2975563 () Bool)

(assert (=> d!746754 m!2975563))

(assert (=> d!746754 m!2975559))

(declare-fun m!2975565 () Bool)

(assert (=> d!746754 m!2975565))

(assert (=> d!746754 m!2975557))

(assert (=> b!2632343 m!2975563))

(declare-fun m!2975567 () Bool)

(assert (=> b!2632345 m!2975567))

(declare-fun m!2975569 () Bool)

(assert (=> b!2632345 m!2975569))

(declare-fun m!2975571 () Bool)

(assert (=> b!2632345 m!2975571))

(declare-fun m!2975573 () Bool)

(assert (=> b!2632345 m!2975573))

(declare-fun m!2975575 () Bool)

(assert (=> b!2632345 m!2975575))

(declare-fun m!2975577 () Bool)

(assert (=> b!2632345 m!2975577))

(declare-fun m!2975579 () Bool)

(assert (=> b!2632345 m!2975579))

(declare-fun m!2975581 () Bool)

(assert (=> b!2632345 m!2975581))

(assert (=> b!2632345 m!2975575))

(declare-fun m!2975583 () Bool)

(assert (=> b!2632345 m!2975583))

(declare-fun m!2975585 () Bool)

(assert (=> b!2632345 m!2975585))

(assert (=> b!2632345 m!2975579))

(assert (=> b!2632345 m!2975583))

(assert (=> b!2632345 m!2975585))

(declare-fun m!2975587 () Bool)

(assert (=> b!2632345 m!2975587))

(declare-fun m!2975589 () Bool)

(assert (=> b!2632345 m!2975589))

(assert (=> b!2632345 m!2975589))

(declare-fun m!2975591 () Bool)

(assert (=> b!2632345 m!2975591))

(assert (=> b!2631963 d!746754))

(declare-fun d!746764 () Bool)

(declare-fun lt!926477 () BalanceConc!18654)

(assert (=> d!746764 (= (list!11470 lt!926477) (printList!1164 thiss!14197 (list!11471 lt!926220)))))

(assert (=> d!746764 (= lt!926477 (printTailRec!1123 thiss!14197 lt!926220 0 (BalanceConc!18655 Empty!9520)))))

(assert (=> d!746764 (= (print!1637 thiss!14197 lt!926220) lt!926477)))

(declare-fun bs!475822 () Bool)

(assert (= bs!475822 d!746764))

(declare-fun m!2975605 () Bool)

(assert (=> bs!475822 m!2975605))

(assert (=> bs!475822 m!2975569))

(assert (=> bs!475822 m!2975569))

(declare-fun m!2975607 () Bool)

(assert (=> bs!475822 m!2975607))

(assert (=> bs!475822 m!2975041))

(assert (=> b!2631963 d!746764))

(declare-fun e!1661003 () Bool)

(assert (=> b!2631983 (= tp!834442 e!1661003)))

(declare-fun b!2632374 () Bool)

(declare-fun tp!834471 () Bool)

(declare-fun tp!834468 () Bool)

(assert (=> b!2632374 (= e!1661003 (and tp!834471 tp!834468))))

(declare-fun b!2632375 () Bool)

(declare-fun tp!834469 () Bool)

(assert (=> b!2632375 (= e!1661003 tp!834469)))

(declare-fun b!2632376 () Bool)

(declare-fun tp!834472 () Bool)

(declare-fun tp!834470 () Bool)

(assert (=> b!2632376 (= e!1661003 (and tp!834472 tp!834470))))

(declare-fun b!2632373 () Bool)

(declare-fun tp_is_empty!13759 () Bool)

(assert (=> b!2632373 (= e!1661003 tp_is_empty!13759)))

(assert (= (and b!2631983 ((_ is ElementMatch!7783) (regex!4639 (rule!7021 separatorToken!156)))) b!2632373))

(assert (= (and b!2631983 ((_ is Concat!12644) (regex!4639 (rule!7021 separatorToken!156)))) b!2632374))

(assert (= (and b!2631983 ((_ is Star!7783) (regex!4639 (rule!7021 separatorToken!156)))) b!2632375))

(assert (= (and b!2631983 ((_ is Union!7783) (regex!4639 (rule!7021 separatorToken!156)))) b!2632376))

(declare-fun b!2632383 () Bool)

(declare-fun e!1661008 () Bool)

(assert (=> b!2632383 (= e!1661008 true)))

(declare-fun b!2632382 () Bool)

(declare-fun e!1661007 () Bool)

(assert (=> b!2632382 (= e!1661007 e!1661008)))

(declare-fun b!2632381 () Bool)

(declare-fun e!1661006 () Bool)

(assert (=> b!2632381 (= e!1661006 e!1661007)))

(assert (=> b!2631992 e!1661006))

(assert (= b!2632382 b!2632383))

(assert (= b!2632381 b!2632382))

(assert (= (and b!2631992 ((_ is Cons!30501) (t!216474 rules!1726))) b!2632381))

(assert (=> b!2632383 (< (dynLambda!13064 order!16535 (toValue!6553 (transformation!4639 (h!35921 (t!216474 rules!1726))))) (dynLambda!13065 order!16537 lambda!98752))))

(assert (=> b!2632383 (< (dynLambda!13066 order!16539 (toChars!6412 (transformation!4639 (h!35921 (t!216474 rules!1726))))) (dynLambda!13065 order!16537 lambda!98752))))

(declare-fun b!2632394 () Bool)

(declare-fun b_free!74237 () Bool)

(declare-fun b_next!74941 () Bool)

(assert (=> b!2632394 (= b_free!74237 (not b_next!74941))))

(declare-fun tp!834481 () Bool)

(declare-fun b_and!192839 () Bool)

(assert (=> b!2632394 (= tp!834481 b_and!192839)))

(declare-fun b_free!74239 () Bool)

(declare-fun b_next!74943 () Bool)

(assert (=> b!2632394 (= b_free!74239 (not b_next!74943))))

(declare-fun tb!143619 () Bool)

(declare-fun t!216509 () Bool)

(assert (=> (and b!2632394 (= (toChars!6412 (transformation!4639 (h!35921 (t!216474 rules!1726)))) (toChars!6412 (transformation!4639 (rule!7021 lt!926207)))) t!216509) tb!143619))

(declare-fun result!178502 () Bool)

(assert (= result!178502 result!178482))

(assert (=> d!746676 t!216509))

(declare-fun tb!143621 () Bool)

(declare-fun t!216511 () Bool)

(assert (=> (and b!2632394 (= (toChars!6412 (transformation!4639 (h!35921 (t!216474 rules!1726)))) (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156)))) t!216511) tb!143621))

(declare-fun result!178504 () Bool)

(assert (= result!178504 result!178494))

(assert (=> b!2632221 t!216511))

(declare-fun tp!834482 () Bool)

(declare-fun b_and!192841 () Bool)

(assert (=> b!2632394 (= tp!834482 (and (=> t!216509 result!178502) (=> t!216511 result!178504) b_and!192841))))

(declare-fun e!1661017 () Bool)

(assert (=> b!2632394 (= e!1661017 (and tp!834481 tp!834482))))

(declare-fun b!2632393 () Bool)

(declare-fun tp!834484 () Bool)

(declare-fun e!1661019 () Bool)

(assert (=> b!2632393 (= e!1661019 (and tp!834484 (inv!41350 (tag!5133 (h!35921 (t!216474 rules!1726)))) (inv!41355 (transformation!4639 (h!35921 (t!216474 rules!1726)))) e!1661017))))

(declare-fun b!2632392 () Bool)

(declare-fun e!1661020 () Bool)

(declare-fun tp!834483 () Bool)

(assert (=> b!2632392 (= e!1661020 (and e!1661019 tp!834483))))

(assert (=> b!2631966 (= tp!834449 e!1661020)))

(assert (= b!2632393 b!2632394))

(assert (= b!2632392 b!2632393))

(assert (= (and b!2631966 ((_ is Cons!30501) (t!216474 rules!1726))) b!2632392))

(declare-fun m!2975609 () Bool)

(assert (=> b!2632393 m!2975609))

(declare-fun m!2975611 () Bool)

(assert (=> b!2632393 m!2975611))

(declare-fun b!2632412 () Bool)

(declare-fun tp!834493 () Bool)

(declare-fun e!1661031 () Bool)

(declare-fun tp!834492 () Bool)

(assert (=> b!2632412 (= e!1661031 (and (inv!41356 (left!23564 (c!423090 v!6381))) tp!834493 (inv!41356 (right!23894 (c!423090 v!6381))) tp!834492))))

(declare-fun b!2632414 () Bool)

(declare-fun e!1661030 () Bool)

(declare-fun tp!834491 () Bool)

(assert (=> b!2632414 (= e!1661030 tp!834491)))

(declare-fun b!2632413 () Bool)

(declare-fun inv!41367 (IArray!19047) Bool)

(assert (=> b!2632413 (= e!1661031 (and (inv!41367 (xs!12521 (c!423090 v!6381))) e!1661030))))

(assert (=> b!2631971 (= tp!834448 (and (inv!41356 (c!423090 v!6381)) e!1661031))))

(assert (= (and b!2631971 ((_ is Node!9521) (c!423090 v!6381))) b!2632412))

(assert (= b!2632413 b!2632414))

(assert (= (and b!2631971 ((_ is Leaf!14581) (c!423090 v!6381))) b!2632413))

(declare-fun m!2975621 () Bool)

(assert (=> b!2632412 m!2975621))

(declare-fun m!2975623 () Bool)

(assert (=> b!2632412 m!2975623))

(declare-fun m!2975625 () Bool)

(assert (=> b!2632413 m!2975625))

(assert (=> b!2631971 m!2975029))

(declare-fun b!2632419 () Bool)

(declare-fun e!1661034 () Bool)

(declare-fun tp!834496 () Bool)

(assert (=> b!2632419 (= e!1661034 (and tp_is_empty!13759 tp!834496))))

(assert (=> b!2631965 (= tp!834444 e!1661034)))

(assert (= (and b!2631965 ((_ is Cons!30500) (originalCharacters!5405 separatorToken!156))) b!2632419))

(declare-fun e!1661035 () Bool)

(assert (=> b!2631964 (= tp!834443 e!1661035)))

(declare-fun b!2632421 () Bool)

(declare-fun tp!834500 () Bool)

(declare-fun tp!834497 () Bool)

(assert (=> b!2632421 (= e!1661035 (and tp!834500 tp!834497))))

(declare-fun b!2632422 () Bool)

(declare-fun tp!834498 () Bool)

(assert (=> b!2632422 (= e!1661035 tp!834498)))

(declare-fun b!2632423 () Bool)

(declare-fun tp!834501 () Bool)

(declare-fun tp!834499 () Bool)

(assert (=> b!2632423 (= e!1661035 (and tp!834501 tp!834499))))

(declare-fun b!2632420 () Bool)

(assert (=> b!2632420 (= e!1661035 tp_is_empty!13759)))

(assert (= (and b!2631964 ((_ is ElementMatch!7783) (regex!4639 (h!35921 rules!1726)))) b!2632420))

(assert (= (and b!2631964 ((_ is Concat!12644) (regex!4639 (h!35921 rules!1726)))) b!2632421))

(assert (= (and b!2631964 ((_ is Star!7783) (regex!4639 (h!35921 rules!1726)))) b!2632422))

(assert (= (and b!2631964 ((_ is Union!7783) (regex!4639 (h!35921 rules!1726)))) b!2632423))

(declare-fun b_lambda!79253 () Bool)

(assert (= b_lambda!79251 (or (and b!2631972 b_free!74231) (and b!2631973 b_free!74235 (= (toChars!6412 (transformation!4639 (h!35921 rules!1726))) (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))))) (and b!2632394 b_free!74239 (= (toChars!6412 (transformation!4639 (h!35921 (t!216474 rules!1726)))) (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))))) b_lambda!79253)))

(declare-fun b_lambda!79255 () Bool)

(assert (= b_lambda!79245 (or b!2631976 b_lambda!79255)))

(declare-fun bs!475823 () Bool)

(declare-fun d!746778 () Bool)

(assert (= bs!475823 (and d!746778 b!2631976)))

(assert (=> bs!475823 (= (dynLambda!13068 lambda!98752 lt!926207) (rulesProduceIndividualToken!1948 thiss!14197 rules!1726 lt!926207))))

(declare-fun m!2975627 () Bool)

(assert (=> bs!475823 m!2975627))

(assert (=> d!746678 d!746778))

(check-sat (not d!746704) (not d!746700) (not b_next!74937) b_and!192819 (not b_next!74939) (not b!2632282) (not d!746726) (not b!2632320) (not d!746680) (not b!2632253) (not b_next!74933) (not b_next!74943) (not b!2632084) (not d!746724) (not b!2632115) (not d!746678) (not b!2632423) (not b!2632151) (not d!746718) (not b!2632114) (not b!2632419) (not b!2632250) (not b!2632376) (not b!2632265) (not d!746684) (not b!2632414) b_and!192839 (not b_next!74941) (not b!2632117) (not bm!169265) (not d!746706) (not b!2632094) (not b!2632293) (not d!746742) (not b!2632222) b_and!192835 (not d!746752) (not b!2632283) tp_is_empty!13759 (not bm!169262) (not b!2632312) (not d!746652) (not b!2632313) (not b!2632116) (not b!2632079) (not b!2632091) (not d!746728) (not b!2632421) (not b_next!74935) (not b!2632271) (not b!2632413) (not b!2632286) (not d!746722) (not b!2632343) (not b!2632298) (not b!2632149) (not b!2632262) (not d!746748) (not b!2632229) (not b!2632374) (not d!746702) (not b!2632113) (not d!746754) (not bs!475823) (not b!2632214) (not d!746710) (not b!2632381) (not b_lambda!79253) (not d!746736) b_and!192841 (not tb!143607) (not b!2632152) (not bm!169286) (not d!746676) (not b!2632120) (not b_lambda!79255) (not b!2632295) (not d!746732) (not d!746712) (not bm!169287) (not b!2632221) (not b!2632077) (not b!2632375) (not b!2632422) (not bm!169258) (not d!746648) (not b!2632074) (not b!2632259) (not b!2632310) (not b!2632003) (not b!2632076) (not d!746646) (not d!746686) (not b!2632213) (not b!2632412) (not b!2632392) (not b!2632078) (not d!746744) (not b!2632393) (not b!2632325) (not d!746682) (not tb!143615) (not b_lambda!79243) (not b!2632281) (not b!2632329) (not b!2631971) (not b!2632223) (not bm!169259) (not b!2632150) (not b!2632314) b_and!192823 (not d!746720) (not b!2632319) (not b!2632268) (not b!2632004) (not b!2632005) (not b!2632083) (not b!2632118) (not b!2632345) (not d!746764) b_and!192837 (not d!746708))
(check-sat (not b_next!74933) (not b_next!74943) b_and!192835 (not b_next!74935) b_and!192841 b_and!192823 b_and!192837 (not b_next!74937) b_and!192819 (not b_next!74939) b_and!192839 (not b_next!74941))
(get-model)

(declare-fun d!746806 () Bool)

(assert (=> d!746806 true))

(declare-fun lambda!98777 () Int)

(declare-fun order!16541 () Int)

(declare-fun dynLambda!13071 (Int Int) Int)

(assert (=> d!746806 (< (dynLambda!13066 order!16539 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156)))) (dynLambda!13071 order!16541 lambda!98777))))

(assert (=> d!746806 true))

(assert (=> d!746806 (< (dynLambda!13064 order!16535 (toValue!6553 (transformation!4639 (rule!7021 separatorToken!156)))) (dynLambda!13071 order!16541 lambda!98777))))

(declare-fun Forall!1179 (Int) Bool)

(assert (=> d!746806 (= (semiInverseModEq!1916 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (toValue!6553 (transformation!4639 (rule!7021 separatorToken!156)))) (Forall!1179 lambda!98777))))

(declare-fun bs!475828 () Bool)

(assert (= bs!475828 d!746806))

(declare-fun m!2975701 () Bool)

(assert (=> bs!475828 m!2975701))

(assert (=> d!746732 d!746806))

(declare-fun d!746808 () Bool)

(declare-fun res!1108416 () Bool)

(declare-fun e!1661105 () Bool)

(assert (=> d!746808 (=> (not res!1108416) (not e!1661105))))

(declare-fun list!11476 (IArray!19047) List!30602)

(assert (=> d!746808 (= res!1108416 (<= (size!23581 (list!11476 (xs!12521 (c!423090 v!6381)))) 512))))

(assert (=> d!746808 (= (inv!41365 (c!423090 v!6381)) e!1661105)))

(declare-fun b!2632535 () Bool)

(declare-fun res!1108417 () Bool)

(assert (=> b!2632535 (=> (not res!1108417) (not e!1661105))))

(assert (=> b!2632535 (= res!1108417 (= (csize!19273 (c!423090 v!6381)) (size!23581 (list!11476 (xs!12521 (c!423090 v!6381))))))))

(declare-fun b!2632536 () Bool)

(assert (=> b!2632536 (= e!1661105 (and (> (csize!19273 (c!423090 v!6381)) 0) (<= (csize!19273 (c!423090 v!6381)) 512)))))

(assert (= (and d!746808 res!1108416) b!2632535))

(assert (= (and b!2632535 res!1108417) b!2632536))

(declare-fun m!2975703 () Bool)

(assert (=> d!746808 m!2975703))

(assert (=> d!746808 m!2975703))

(declare-fun m!2975705 () Bool)

(assert (=> d!746808 m!2975705))

(assert (=> b!2632535 m!2975703))

(assert (=> b!2632535 m!2975703))

(assert (=> b!2632535 m!2975705))

(assert (=> b!2632295 d!746808))

(declare-fun d!746810 () Bool)

(assert (=> d!746810 (= (get!9594 lt!926333) (v!32430 lt!926333))))

(assert (=> b!2632117 d!746810))

(declare-fun d!746812 () Bool)

(assert (=> d!746812 (= (get!9595 (maxPrefixZipper!435 thiss!14197 rules!1726 (list!11470 (++!7425 lt!926214 lt!926206)))) (v!32441 (maxPrefixZipper!435 thiss!14197 rules!1726 (list!11470 (++!7425 lt!926214 lt!926206)))))))

(assert (=> b!2632117 d!746812))

(declare-fun lt!926513 () Option!6029)

(declare-fun d!746814 () Bool)

(assert (=> d!746814 (= lt!926513 (maxPrefix!2307 thiss!14197 rules!1726 (list!11470 (++!7425 lt!926214 lt!926206))))))

(declare-fun e!1661108 () Option!6029)

(assert (=> d!746814 (= lt!926513 e!1661108)))

(declare-fun c!423199 () Bool)

(assert (=> d!746814 (= c!423199 (and ((_ is Cons!30501) rules!1726) ((_ is Nil!30501) (t!216474 rules!1726))))))

(declare-fun lt!926510 () Unit!44507)

(declare-fun lt!926511 () Unit!44507)

(assert (=> d!746814 (= lt!926510 lt!926511)))

(assert (=> d!746814 (isPrefix!2436 (list!11470 (++!7425 lt!926214 lt!926206)) (list!11470 (++!7425 lt!926214 lt!926206)))))

(assert (=> d!746814 (= lt!926511 (lemmaIsPrefixRefl!1562 (list!11470 (++!7425 lt!926214 lt!926206)) (list!11470 (++!7425 lt!926214 lt!926206))))))

(assert (=> d!746814 (rulesValidInductive!1614 thiss!14197 rules!1726)))

(assert (=> d!746814 (= (maxPrefixZipper!435 thiss!14197 rules!1726 (list!11470 (++!7425 lt!926214 lt!926206))) lt!926513)))

(declare-fun bm!169294 () Bool)

(declare-fun call!169299 () Option!6029)

(declare-fun maxPrefixOneRuleZipper!163 (LexerInterface!4236 Rule!9078 List!30600) Option!6029)

(assert (=> bm!169294 (= call!169299 (maxPrefixOneRuleZipper!163 thiss!14197 (h!35921 rules!1726) (list!11470 (++!7425 lt!926214 lt!926206))))))

(declare-fun b!2632541 () Bool)

(assert (=> b!2632541 (= e!1661108 call!169299)))

(declare-fun b!2632542 () Bool)

(declare-fun lt!926514 () Option!6029)

(declare-fun lt!926512 () Option!6029)

(assert (=> b!2632542 (= e!1661108 (ite (and ((_ is None!6028) lt!926514) ((_ is None!6028) lt!926512)) None!6028 (ite ((_ is None!6028) lt!926512) lt!926514 (ite ((_ is None!6028) lt!926514) lt!926512 (ite (>= (size!23578 (_1!17540 (v!32441 lt!926514))) (size!23578 (_1!17540 (v!32441 lt!926512)))) lt!926514 lt!926512)))))))

(assert (=> b!2632542 (= lt!926514 call!169299)))

(assert (=> b!2632542 (= lt!926512 (maxPrefixZipper!435 thiss!14197 (t!216474 rules!1726) (list!11470 (++!7425 lt!926214 lt!926206))))))

(assert (= (and d!746814 c!423199) b!2632541))

(assert (= (and d!746814 (not c!423199)) b!2632542))

(assert (= (or b!2632541 b!2632542) bm!169294))

(assert (=> d!746814 m!2975251))

(assert (=> d!746814 m!2975263))

(assert (=> d!746814 m!2975251))

(assert (=> d!746814 m!2975251))

(declare-fun m!2975707 () Bool)

(assert (=> d!746814 m!2975707))

(assert (=> d!746814 m!2975251))

(assert (=> d!746814 m!2975251))

(declare-fun m!2975709 () Bool)

(assert (=> d!746814 m!2975709))

(assert (=> d!746814 m!2975269))

(assert (=> bm!169294 m!2975251))

(declare-fun m!2975711 () Bool)

(assert (=> bm!169294 m!2975711))

(assert (=> b!2632542 m!2975251))

(declare-fun m!2975713 () Bool)

(assert (=> b!2632542 m!2975713))

(assert (=> b!2632117 d!746814))

(declare-fun d!746816 () Bool)

(assert (=> d!746816 (= (list!11470 (++!7425 lt!926214 lt!926206)) (list!11473 (c!423089 (++!7425 lt!926214 lt!926206))))))

(declare-fun bs!475829 () Bool)

(assert (= bs!475829 d!746816))

(declare-fun m!2975715 () Bool)

(assert (=> bs!475829 m!2975715))

(assert (=> b!2632117 d!746816))

(declare-fun d!746818 () Bool)

(declare-fun lt!926515 () Token!8748)

(assert (=> d!746818 (= lt!926515 (apply!7266 (list!11471 (_1!17538 lt!926230)) 0))))

(assert (=> d!746818 (= lt!926515 (apply!7267 (c!423090 (_1!17538 lt!926230)) 0))))

(declare-fun e!1661109 () Bool)

(assert (=> d!746818 e!1661109))

(declare-fun res!1108418 () Bool)

(assert (=> d!746818 (=> (not res!1108418) (not e!1661109))))

(assert (=> d!746818 (= res!1108418 (<= 0 0))))

(assert (=> d!746818 (= (apply!7265 (_1!17538 lt!926230) 0) lt!926515)))

(declare-fun b!2632543 () Bool)

(assert (=> b!2632543 (= e!1661109 (< 0 (size!23579 (_1!17538 lt!926230))))))

(assert (= (and d!746818 res!1108418) b!2632543))

(declare-fun m!2975717 () Bool)

(assert (=> d!746818 m!2975717))

(assert (=> d!746818 m!2975717))

(declare-fun m!2975719 () Bool)

(assert (=> d!746818 m!2975719))

(declare-fun m!2975721 () Bool)

(assert (=> d!746818 m!2975721))

(assert (=> b!2632543 m!2975083))

(assert (=> b!2632003 d!746818))

(declare-fun bs!475830 () Bool)

(declare-fun b!2632561 () Bool)

(assert (= bs!475830 (and b!2632561 d!746806)))

(declare-fun lambda!98782 () Int)

(assert (=> bs!475830 (= (and (= (toChars!6412 (transformation!4639 (h!35921 rules!1726))) (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156)))) (= (toValue!6553 (transformation!4639 (h!35921 rules!1726))) (toValue!6553 (transformation!4639 (rule!7021 separatorToken!156))))) (= lambda!98782 lambda!98777))))

(declare-fun b!2632569 () Bool)

(declare-fun e!1661130 () Bool)

(assert (=> b!2632569 (= e!1661130 true)))

(declare-fun b!2632568 () Bool)

(declare-fun e!1661129 () Bool)

(assert (=> b!2632568 (= e!1661129 e!1661130)))

(assert (=> b!2632561 e!1661129))

(assert (= b!2632568 b!2632569))

(assert (= b!2632561 b!2632568))

(assert (=> b!2632569 (< (dynLambda!13064 order!16535 (toValue!6553 (transformation!4639 (h!35921 rules!1726)))) (dynLambda!13071 order!16541 lambda!98782))))

(assert (=> b!2632569 (< (dynLambda!13066 order!16539 (toChars!6412 (transformation!4639 (h!35921 rules!1726)))) (dynLambda!13071 order!16541 lambda!98782))))

(declare-fun e!1661122 () Bool)

(declare-fun lt!926540 () Option!6028)

(declare-fun b!2632556 () Bool)

(declare-fun maxPrefixOneRule!1467 (LexerInterface!4236 Rule!9078 List!30600) Option!6029)

(assert (=> b!2632556 (= e!1661122 (= (list!11470 (_2!17537 (get!9594 lt!926540))) (_2!17540 (get!9595 (maxPrefixOneRule!1467 thiss!14197 (h!35921 rules!1726) (list!11470 (++!7425 lt!926214 lt!926206)))))))))

(declare-fun b!2632557 () Bool)

(declare-fun e!1661120 () Bool)

(declare-fun lt!926542 () List!30600)

(declare-fun matchR!3609 (Regex!7783 List!30600) Bool)

(declare-datatypes ((tuple2!30000 0))(
  ( (tuple2!30001 (_1!17542 List!30600) (_2!17542 List!30600)) )
))
(declare-fun findLongestMatchInner!762 (Regex!7783 List!30600 Int List!30600 List!30600 Int) tuple2!30000)

(assert (=> b!2632557 (= e!1661120 (matchR!3609 (regex!4639 (h!35921 rules!1726)) (_1!17542 (findLongestMatchInner!762 (regex!4639 (h!35921 rules!1726)) Nil!30500 (size!23580 Nil!30500) lt!926542 lt!926542 (size!23580 lt!926542)))))))

(declare-fun b!2632558 () Bool)

(declare-fun e!1661121 () Bool)

(declare-fun e!1661123 () Bool)

(assert (=> b!2632558 (= e!1661121 e!1661123)))

(declare-fun res!1108432 () Bool)

(assert (=> b!2632558 (=> res!1108432 e!1661123)))

(assert (=> b!2632558 (= res!1108432 (not (isDefined!4791 lt!926540)))))

(declare-fun d!746820 () Bool)

(assert (=> d!746820 e!1661121))

(declare-fun res!1108429 () Bool)

(assert (=> d!746820 (=> (not res!1108429) (not e!1661121))))

(assert (=> d!746820 (= res!1108429 (= (isDefined!4791 lt!926540) (isDefined!4792 (maxPrefixOneRule!1467 thiss!14197 (h!35921 rules!1726) (list!11470 (++!7425 lt!926214 lt!926206))))))))

(declare-fun e!1661124 () Option!6028)

(assert (=> d!746820 (= lt!926540 e!1661124)))

(declare-fun c!423202 () Bool)

(declare-datatypes ((tuple2!30002 0))(
  ( (tuple2!30003 (_1!17543 BalanceConc!18654) (_2!17543 BalanceConc!18654)) )
))
(declare-fun lt!926541 () tuple2!30002)

(assert (=> d!746820 (= c!423202 (isEmpty!17390 (_1!17543 lt!926541)))))

(declare-fun findLongestMatchWithZipperSequence!163 (Regex!7783 BalanceConc!18654) tuple2!30002)

(assert (=> d!746820 (= lt!926541 (findLongestMatchWithZipperSequence!163 (regex!4639 (h!35921 rules!1726)) (++!7425 lt!926214 lt!926206)))))

(declare-fun ruleValid!1538 (LexerInterface!4236 Rule!9078) Bool)

(assert (=> d!746820 (ruleValid!1538 thiss!14197 (h!35921 rules!1726))))

(assert (=> d!746820 (= (maxPrefixOneRuleZipperSequence!444 thiss!14197 (h!35921 rules!1726) (++!7425 lt!926214 lt!926206)) lt!926540)))

(declare-fun b!2632559 () Bool)

(assert (=> b!2632559 (= e!1661124 None!6027)))

(declare-fun b!2632560 () Bool)

(assert (=> b!2632560 (= e!1661123 e!1661122)))

(declare-fun res!1108430 () Bool)

(assert (=> b!2632560 (=> (not res!1108430) (not e!1661122))))

(assert (=> b!2632560 (= res!1108430 (= (_1!17537 (get!9594 lt!926540)) (_1!17540 (get!9595 (maxPrefixOneRule!1467 thiss!14197 (h!35921 rules!1726) (list!11470 (++!7425 lt!926214 lt!926206)))))))))

(declare-fun apply!7269 (TokenValueInjection!9162 BalanceConc!18654) TokenValue!4861)

(declare-fun size!23586 (BalanceConc!18654) Int)

(assert (=> b!2632561 (= e!1661124 (Some!6027 (tuple2!29991 (Token!8749 (apply!7269 (transformation!4639 (h!35921 rules!1726)) (_1!17543 lt!926541)) (h!35921 rules!1726) (size!23586 (_1!17543 lt!926541)) (list!11470 (_1!17543 lt!926541))) (_2!17543 lt!926541))))))

(assert (=> b!2632561 (= lt!926542 (list!11470 (++!7425 lt!926214 lt!926206)))))

(declare-fun lt!926539 () Unit!44507)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!735 (Regex!7783 List!30600) Unit!44507)

(assert (=> b!2632561 (= lt!926539 (longestMatchIsAcceptedByMatchOrIsEmpty!735 (regex!4639 (h!35921 rules!1726)) lt!926542))))

(declare-fun res!1108431 () Bool)

(assert (=> b!2632561 (= res!1108431 (isEmpty!17392 (_1!17542 (findLongestMatchInner!762 (regex!4639 (h!35921 rules!1726)) Nil!30500 (size!23580 Nil!30500) lt!926542 lt!926542 (size!23580 lt!926542)))))))

(assert (=> b!2632561 (=> res!1108431 e!1661120)))

(assert (=> b!2632561 e!1661120))

(declare-fun lt!926543 () Unit!44507)

(assert (=> b!2632561 (= lt!926543 lt!926539)))

(declare-fun lt!926536 () Unit!44507)

(declare-fun lemmaInv!810 (TokenValueInjection!9162) Unit!44507)

(assert (=> b!2632561 (= lt!926536 (lemmaInv!810 (transformation!4639 (h!35921 rules!1726))))))

(declare-fun lt!926544 () Unit!44507)

(declare-fun ForallOf!512 (Int BalanceConc!18654) Unit!44507)

(assert (=> b!2632561 (= lt!926544 (ForallOf!512 lambda!98782 (_1!17543 lt!926541)))))

(declare-fun lt!926537 () Unit!44507)

(declare-fun seqFromList!3180 (List!30600) BalanceConc!18654)

(assert (=> b!2632561 (= lt!926537 (ForallOf!512 lambda!98782 (seqFromList!3180 (list!11470 (_1!17543 lt!926541)))))))

(declare-fun lt!926538 () Option!6028)

(assert (=> b!2632561 (= lt!926538 (Some!6027 (tuple2!29991 (Token!8749 (apply!7269 (transformation!4639 (h!35921 rules!1726)) (_1!17543 lt!926541)) (h!35921 rules!1726) (size!23586 (_1!17543 lt!926541)) (list!11470 (_1!17543 lt!926541))) (_2!17543 lt!926541))))))

(declare-fun lt!926545 () Unit!44507)

(declare-fun lemmaEqSameImage!716 (TokenValueInjection!9162 BalanceConc!18654 BalanceConc!18654) Unit!44507)

(assert (=> b!2632561 (= lt!926545 (lemmaEqSameImage!716 (transformation!4639 (h!35921 rules!1726)) (_1!17543 lt!926541) (seqFromList!3180 (list!11470 (_1!17543 lt!926541)))))))

(assert (= (and d!746820 c!423202) b!2632559))

(assert (= (and d!746820 (not c!423202)) b!2632561))

(assert (= (and b!2632561 (not res!1108431)) b!2632557))

(assert (= (and d!746820 res!1108429) b!2632558))

(assert (= (and b!2632558 (not res!1108432)) b!2632560))

(assert (= (and b!2632560 res!1108430) b!2632556))

(assert (=> b!2632556 m!2975011))

(assert (=> b!2632556 m!2975251))

(declare-fun m!2975723 () Bool)

(assert (=> b!2632556 m!2975723))

(assert (=> b!2632556 m!2975251))

(declare-fun m!2975725 () Bool)

(assert (=> b!2632556 m!2975725))

(assert (=> b!2632556 m!2975725))

(declare-fun m!2975727 () Bool)

(assert (=> b!2632556 m!2975727))

(declare-fun m!2975729 () Bool)

(assert (=> b!2632556 m!2975729))

(assert (=> d!746820 m!2975011))

(declare-fun m!2975731 () Bool)

(assert (=> d!746820 m!2975731))

(assert (=> d!746820 m!2975011))

(assert (=> d!746820 m!2975251))

(declare-fun m!2975733 () Bool)

(assert (=> d!746820 m!2975733))

(declare-fun m!2975735 () Bool)

(assert (=> d!746820 m!2975735))

(assert (=> d!746820 m!2975251))

(assert (=> d!746820 m!2975725))

(assert (=> d!746820 m!2975725))

(declare-fun m!2975737 () Bool)

(assert (=> d!746820 m!2975737))

(declare-fun m!2975739 () Bool)

(assert (=> d!746820 m!2975739))

(declare-fun m!2975741 () Bool)

(assert (=> b!2632561 m!2975741))

(declare-fun m!2975743 () Bool)

(assert (=> b!2632561 m!2975743))

(assert (=> b!2632561 m!2975743))

(declare-fun m!2975745 () Bool)

(assert (=> b!2632561 m!2975745))

(declare-fun m!2975747 () Bool)

(assert (=> b!2632561 m!2975747))

(declare-fun m!2975749 () Bool)

(assert (=> b!2632561 m!2975749))

(declare-fun m!2975751 () Bool)

(assert (=> b!2632561 m!2975751))

(declare-fun m!2975753 () Bool)

(assert (=> b!2632561 m!2975753))

(assert (=> b!2632561 m!2975011))

(assert (=> b!2632561 m!2975251))

(assert (=> b!2632561 m!2975751))

(declare-fun m!2975755 () Bool)

(assert (=> b!2632561 m!2975755))

(declare-fun m!2975757 () Bool)

(assert (=> b!2632561 m!2975757))

(assert (=> b!2632561 m!2975743))

(declare-fun m!2975759 () Bool)

(assert (=> b!2632561 m!2975759))

(assert (=> b!2632561 m!2975749))

(declare-fun m!2975761 () Bool)

(assert (=> b!2632561 m!2975761))

(declare-fun m!2975763 () Bool)

(assert (=> b!2632561 m!2975763))

(declare-fun m!2975765 () Bool)

(assert (=> b!2632561 m!2975765))

(assert (=> b!2632561 m!2975741))

(assert (=> b!2632558 m!2975739))

(assert (=> b!2632560 m!2975729))

(assert (=> b!2632560 m!2975011))

(assert (=> b!2632560 m!2975251))

(assert (=> b!2632560 m!2975251))

(assert (=> b!2632560 m!2975725))

(assert (=> b!2632560 m!2975725))

(assert (=> b!2632560 m!2975727))

(assert (=> b!2632557 m!2975749))

(assert (=> b!2632557 m!2975751))

(assert (=> b!2632557 m!2975749))

(assert (=> b!2632557 m!2975751))

(assert (=> b!2632557 m!2975753))

(declare-fun m!2975767 () Bool)

(assert (=> b!2632557 m!2975767))

(assert (=> bm!169265 d!746820))

(assert (=> b!2632076 d!746744))

(declare-fun d!746822 () Bool)

(declare-fun lt!926548 () Int)

(assert (=> d!746822 (>= lt!926548 0)))

(declare-fun e!1661133 () Int)

(assert (=> d!746822 (= lt!926548 e!1661133)))

(declare-fun c!423205 () Bool)

(assert (=> d!746822 (= c!423205 ((_ is Nil!30502) lt!926208))))

(assert (=> d!746822 (= (size!23581 lt!926208) lt!926548)))

(declare-fun b!2632574 () Bool)

(assert (=> b!2632574 (= e!1661133 0)))

(declare-fun b!2632575 () Bool)

(assert (=> b!2632575 (= e!1661133 (+ 1 (size!23581 (t!216475 lt!926208))))))

(assert (= (and d!746822 c!423205) b!2632574))

(assert (= (and d!746822 (not c!423205)) b!2632575))

(declare-fun m!2975769 () Bool)

(assert (=> b!2632575 m!2975769))

(assert (=> b!2632281 d!746822))

(assert (=> b!2632113 d!746810))

(declare-fun d!746824 () Bool)

(assert (=> d!746824 (= (get!9595 (maxPrefix!2307 thiss!14197 rules!1726 (list!11470 (++!7425 lt!926214 lt!926206)))) (v!32441 (maxPrefix!2307 thiss!14197 rules!1726 (list!11470 (++!7425 lt!926214 lt!926206)))))))

(assert (=> b!2632113 d!746824))

(declare-fun b!2632610 () Bool)

(declare-fun e!1661148 () Option!6029)

(declare-fun lt!926563 () Option!6029)

(declare-fun lt!926565 () Option!6029)

(assert (=> b!2632610 (= e!1661148 (ite (and ((_ is None!6028) lt!926563) ((_ is None!6028) lt!926565)) None!6028 (ite ((_ is None!6028) lt!926565) lt!926563 (ite ((_ is None!6028) lt!926563) lt!926565 (ite (>= (size!23578 (_1!17540 (v!32441 lt!926563))) (size!23578 (_1!17540 (v!32441 lt!926565)))) lt!926563 lt!926565)))))))

(declare-fun call!169302 () Option!6029)

(assert (=> b!2632610 (= lt!926563 call!169302)))

(assert (=> b!2632610 (= lt!926565 (maxPrefix!2307 thiss!14197 (t!216474 rules!1726) (list!11470 (++!7425 lt!926214 lt!926206))))))

(declare-fun d!746826 () Bool)

(declare-fun e!1661147 () Bool)

(assert (=> d!746826 e!1661147))

(declare-fun res!1108459 () Bool)

(assert (=> d!746826 (=> res!1108459 e!1661147)))

(declare-fun lt!926567 () Option!6029)

(declare-fun isEmpty!17394 (Option!6029) Bool)

(assert (=> d!746826 (= res!1108459 (isEmpty!17394 lt!926567))))

(assert (=> d!746826 (= lt!926567 e!1661148)))

(declare-fun c!423211 () Bool)

(assert (=> d!746826 (= c!423211 (and ((_ is Cons!30501) rules!1726) ((_ is Nil!30501) (t!216474 rules!1726))))))

(declare-fun lt!926566 () Unit!44507)

(declare-fun lt!926564 () Unit!44507)

(assert (=> d!746826 (= lt!926566 lt!926564)))

(assert (=> d!746826 (isPrefix!2436 (list!11470 (++!7425 lt!926214 lt!926206)) (list!11470 (++!7425 lt!926214 lt!926206)))))

(assert (=> d!746826 (= lt!926564 (lemmaIsPrefixRefl!1562 (list!11470 (++!7425 lt!926214 lt!926206)) (list!11470 (++!7425 lt!926214 lt!926206))))))

(assert (=> d!746826 (rulesValidInductive!1614 thiss!14197 rules!1726)))

(assert (=> d!746826 (= (maxPrefix!2307 thiss!14197 rules!1726 (list!11470 (++!7425 lt!926214 lt!926206))) lt!926567)))

(declare-fun b!2632611 () Bool)

(declare-fun res!1108454 () Bool)

(declare-fun e!1661146 () Bool)

(assert (=> b!2632611 (=> (not res!1108454) (not e!1661146))))

(assert (=> b!2632611 (= res!1108454 (< (size!23580 (_2!17540 (get!9595 lt!926567))) (size!23580 (list!11470 (++!7425 lt!926214 lt!926206)))))))

(declare-fun b!2632612 () Bool)

(declare-fun res!1108457 () Bool)

(assert (=> b!2632612 (=> (not res!1108457) (not e!1661146))))

(assert (=> b!2632612 (= res!1108457 (= (list!11470 (charsOf!2926 (_1!17540 (get!9595 lt!926567)))) (originalCharacters!5405 (_1!17540 (get!9595 lt!926567)))))))

(declare-fun b!2632613 () Bool)

(declare-fun contains!5789 (List!30601 Rule!9078) Bool)

(assert (=> b!2632613 (= e!1661146 (contains!5789 rules!1726 (rule!7021 (_1!17540 (get!9595 lt!926567)))))))

(declare-fun bm!169297 () Bool)

(assert (=> bm!169297 (= call!169302 (maxPrefixOneRule!1467 thiss!14197 (h!35921 rules!1726) (list!11470 (++!7425 lt!926214 lt!926206))))))

(declare-fun b!2632614 () Bool)

(declare-fun res!1108458 () Bool)

(assert (=> b!2632614 (=> (not res!1108458) (not e!1661146))))

(assert (=> b!2632614 (= res!1108458 (= (value!149816 (_1!17540 (get!9595 lt!926567))) (apply!7269 (transformation!4639 (rule!7021 (_1!17540 (get!9595 lt!926567)))) (seqFromList!3180 (originalCharacters!5405 (_1!17540 (get!9595 lt!926567)))))))))

(declare-fun b!2632615 () Bool)

(assert (=> b!2632615 (= e!1661147 e!1661146)))

(declare-fun res!1108456 () Bool)

(assert (=> b!2632615 (=> (not res!1108456) (not e!1661146))))

(assert (=> b!2632615 (= res!1108456 (isDefined!4792 lt!926567))))

(declare-fun b!2632616 () Bool)

(assert (=> b!2632616 (= e!1661148 call!169302)))

(declare-fun b!2632617 () Bool)

(declare-fun res!1108455 () Bool)

(assert (=> b!2632617 (=> (not res!1108455) (not e!1661146))))

(assert (=> b!2632617 (= res!1108455 (= (++!7427 (list!11470 (charsOf!2926 (_1!17540 (get!9595 lt!926567)))) (_2!17540 (get!9595 lt!926567))) (list!11470 (++!7425 lt!926214 lt!926206))))))

(declare-fun b!2632618 () Bool)

(declare-fun res!1108453 () Bool)

(assert (=> b!2632618 (=> (not res!1108453) (not e!1661146))))

(assert (=> b!2632618 (= res!1108453 (matchR!3609 (regex!4639 (rule!7021 (_1!17540 (get!9595 lt!926567)))) (list!11470 (charsOf!2926 (_1!17540 (get!9595 lt!926567))))))))

(assert (= (and d!746826 c!423211) b!2632616))

(assert (= (and d!746826 (not c!423211)) b!2632610))

(assert (= (or b!2632616 b!2632610) bm!169297))

(assert (= (and d!746826 (not res!1108459)) b!2632615))

(assert (= (and b!2632615 res!1108456) b!2632612))

(assert (= (and b!2632612 res!1108457) b!2632611))

(assert (= (and b!2632611 res!1108454) b!2632617))

(assert (= (and b!2632617 res!1108455) b!2632614))

(assert (= (and b!2632614 res!1108458) b!2632618))

(assert (= (and b!2632618 res!1108453) b!2632613))

(assert (=> bm!169297 m!2975251))

(assert (=> bm!169297 m!2975725))

(declare-fun m!2975799 () Bool)

(assert (=> b!2632618 m!2975799))

(declare-fun m!2975801 () Bool)

(assert (=> b!2632618 m!2975801))

(assert (=> b!2632618 m!2975801))

(declare-fun m!2975803 () Bool)

(assert (=> b!2632618 m!2975803))

(assert (=> b!2632618 m!2975803))

(declare-fun m!2975805 () Bool)

(assert (=> b!2632618 m!2975805))

(assert (=> b!2632611 m!2975799))

(declare-fun m!2975807 () Bool)

(assert (=> b!2632611 m!2975807))

(assert (=> b!2632611 m!2975251))

(declare-fun m!2975809 () Bool)

(assert (=> b!2632611 m!2975809))

(assert (=> b!2632614 m!2975799))

(declare-fun m!2975811 () Bool)

(assert (=> b!2632614 m!2975811))

(assert (=> b!2632614 m!2975811))

(declare-fun m!2975813 () Bool)

(assert (=> b!2632614 m!2975813))

(assert (=> b!2632613 m!2975799))

(declare-fun m!2975815 () Bool)

(assert (=> b!2632613 m!2975815))

(declare-fun m!2975817 () Bool)

(assert (=> d!746826 m!2975817))

(assert (=> d!746826 m!2975251))

(assert (=> d!746826 m!2975251))

(assert (=> d!746826 m!2975707))

(assert (=> d!746826 m!2975251))

(assert (=> d!746826 m!2975251))

(assert (=> d!746826 m!2975709))

(assert (=> d!746826 m!2975269))

(assert (=> b!2632612 m!2975799))

(assert (=> b!2632612 m!2975801))

(assert (=> b!2632612 m!2975801))

(assert (=> b!2632612 m!2975803))

(assert (=> b!2632610 m!2975251))

(declare-fun m!2975823 () Bool)

(assert (=> b!2632610 m!2975823))

(declare-fun m!2975825 () Bool)

(assert (=> b!2632615 m!2975825))

(assert (=> b!2632617 m!2975799))

(assert (=> b!2632617 m!2975801))

(assert (=> b!2632617 m!2975801))

(assert (=> b!2632617 m!2975803))

(assert (=> b!2632617 m!2975803))

(declare-fun m!2975827 () Bool)

(assert (=> b!2632617 m!2975827))

(assert (=> b!2632113 d!746826))

(assert (=> b!2632113 d!746816))

(assert (=> bm!169286 d!746822))

(declare-fun d!746842 () Bool)

(declare-fun lt!926569 () Bool)

(assert (=> d!746842 (= lt!926569 (select (content!4307 (list!11471 v!6381)) lt!926207))))

(declare-fun e!1661150 () Bool)

(assert (=> d!746842 (= lt!926569 e!1661150)))

(declare-fun res!1108461 () Bool)

(assert (=> d!746842 (=> (not res!1108461) (not e!1661150))))

(assert (=> d!746842 (= res!1108461 ((_ is Cons!30502) (list!11471 v!6381)))))

(assert (=> d!746842 (= (contains!5785 (list!11471 v!6381) lt!926207) lt!926569)))

(declare-fun b!2632620 () Bool)

(declare-fun e!1661151 () Bool)

(assert (=> b!2632620 (= e!1661150 e!1661151)))

(declare-fun res!1108460 () Bool)

(assert (=> b!2632620 (=> res!1108460 e!1661151)))

(assert (=> b!2632620 (= res!1108460 (= (h!35922 (list!11471 v!6381)) lt!926207))))

(declare-fun b!2632621 () Bool)

(assert (=> b!2632621 (= e!1661151 (contains!5785 (t!216475 (list!11471 v!6381)) lt!926207))))

(assert (= (and d!746842 res!1108461) b!2632620))

(assert (= (and b!2632620 (not res!1108460)) b!2632621))

(assert (=> d!746842 m!2975027))

(declare-fun m!2975833 () Bool)

(assert (=> d!746842 m!2975833))

(declare-fun m!2975835 () Bool)

(assert (=> d!746842 m!2975835))

(declare-fun m!2975837 () Bool)

(assert (=> b!2632621 m!2975837))

(assert (=> d!746718 d!746842))

(assert (=> d!746718 d!746708))

(declare-fun b!2632636 () Bool)

(declare-fun e!1661163 () Bool)

(declare-fun e!1661162 () Bool)

(assert (=> b!2632636 (= e!1661163 e!1661162)))

(declare-fun c!423216 () Bool)

(assert (=> b!2632636 (= c!423216 ((_ is Leaf!14581) (c!423090 v!6381)))))

(declare-fun b!2632638 () Bool)

(declare-fun e!1661164 () Bool)

(assert (=> b!2632638 (= e!1661162 e!1661164)))

(declare-fun res!1108469 () Bool)

(assert (=> b!2632638 (= res!1108469 (contains!5787 (left!23564 (c!423090 v!6381)) lt!926207))))

(assert (=> b!2632638 (=> res!1108469 e!1661164)))

(declare-fun d!746846 () Bool)

(declare-fun lt!926572 () Bool)

(assert (=> d!746846 (= lt!926572 (contains!5785 (list!11474 (c!423090 v!6381)) lt!926207))))

(assert (=> d!746846 (= lt!926572 e!1661163)))

(declare-fun res!1108468 () Bool)

(assert (=> d!746846 (=> (not res!1108468) (not e!1661163))))

(assert (=> d!746846 (= res!1108468 (not ((_ is Empty!9521) (c!423090 v!6381))))))

(assert (=> d!746846 (= (contains!5787 (c!423090 v!6381) lt!926207) lt!926572)))

(declare-fun b!2632639 () Bool)

(assert (=> b!2632639 (= e!1661164 (contains!5787 (right!23894 (c!423090 v!6381)) lt!926207))))

(declare-fun b!2632637 () Bool)

(declare-fun contains!5790 (IArray!19047 Token!8748) Bool)

(assert (=> b!2632637 (= e!1661162 (contains!5790 (xs!12521 (c!423090 v!6381)) lt!926207))))

(assert (= (and d!746846 res!1108468) b!2632636))

(assert (= (and b!2632636 c!423216) b!2632637))

(assert (= (and b!2632636 (not c!423216)) b!2632638))

(assert (= (and b!2632638 (not res!1108469)) b!2632639))

(declare-fun m!2975839 () Bool)

(assert (=> b!2632638 m!2975839))

(assert (=> d!746846 m!2975445))

(assert (=> d!746846 m!2975445))

(declare-fun m!2975841 () Bool)

(assert (=> d!746846 m!2975841))

(declare-fun m!2975843 () Bool)

(assert (=> b!2632639 m!2975843))

(declare-fun m!2975845 () Bool)

(assert (=> b!2632637 m!2975845))

(assert (=> d!746718 d!746846))

(declare-fun d!746848 () Bool)

(declare-fun lt!926573 () Int)

(assert (=> d!746848 (>= lt!926573 0)))

(declare-fun e!1661165 () Int)

(assert (=> d!746848 (= lt!926573 e!1661165)))

(declare-fun c!423217 () Bool)

(assert (=> d!746848 (= c!423217 ((_ is Nil!30502) (list!11471 v!6381)))))

(assert (=> d!746848 (= (size!23581 (list!11471 v!6381)) lt!926573)))

(declare-fun b!2632640 () Bool)

(assert (=> b!2632640 (= e!1661165 0)))

(declare-fun b!2632641 () Bool)

(assert (=> b!2632641 (= e!1661165 (+ 1 (size!23581 (t!216475 (list!11471 v!6381)))))))

(assert (= (and d!746848 c!423217) b!2632640))

(assert (= (and d!746848 (not c!423217)) b!2632641))

(declare-fun m!2975847 () Bool)

(assert (=> b!2632641 m!2975847))

(assert (=> d!746744 d!746848))

(assert (=> d!746744 d!746708))

(declare-fun d!746850 () Bool)

(declare-fun lt!926577 () Int)

(assert (=> d!746850 (= lt!926577 (size!23581 (list!11474 (c!423090 v!6381))))))

(assert (=> d!746850 (= lt!926577 (ite ((_ is Empty!9521) (c!423090 v!6381)) 0 (ite ((_ is Leaf!14581) (c!423090 v!6381)) (csize!19273 (c!423090 v!6381)) (csize!19272 (c!423090 v!6381)))))))

(assert (=> d!746850 (= (size!23582 (c!423090 v!6381)) lt!926577)))

(declare-fun bs!475834 () Bool)

(assert (= bs!475834 d!746850))

(assert (=> bs!475834 m!2975445))

(assert (=> bs!475834 m!2975445))

(declare-fun m!2975859 () Bool)

(assert (=> bs!475834 m!2975859))

(assert (=> d!746744 d!746850))

(declare-fun d!746856 () Bool)

(declare-fun charsToBigInt!0 (List!30599 Int) Int)

(assert (=> d!746856 (= (inv!15 (value!149816 separatorToken!156)) (= (charsToBigInt!0 (text!34476 (value!149816 separatorToken!156)) 0) (value!149812 (value!149816 separatorToken!156))))))

(declare-fun bs!475835 () Bool)

(assert (= bs!475835 d!746856))

(declare-fun m!2975885 () Bool)

(assert (=> bs!475835 m!2975885))

(assert (=> b!2632313 d!746856))

(declare-fun b!2632691 () Bool)

(declare-fun e!1661198 () Conc!9520)

(declare-fun call!169347 () Conc!9520)

(assert (=> b!2632691 (= e!1661198 call!169347)))

(declare-fun lt!926594 () Conc!9520)

(declare-fun call!169343 () Conc!9520)

(declare-fun call!169336 () Conc!9520)

(declare-fun call!169341 () Conc!9520)

(declare-fun c!423243 () Bool)

(declare-fun c!423238 () Bool)

(declare-fun bm!169330 () Bool)

(declare-fun c!423240 () Bool)

(declare-fun lt!926597 () Conc!9520)

(declare-fun call!169344 () Conc!9520)

(declare-fun c!423236 () Bool)

(declare-fun c!423241 () Bool)

(declare-fun c!423237 () Bool)

(declare-fun <>!227 (Conc!9520 Conc!9520) Conc!9520)

(assert (=> bm!169330 (= call!169341 (<>!227 (ite c!423238 (c!423089 lt!926214) (ite c!423241 (ite c!423243 (left!23563 (c!423089 lt!926214)) (ite c!423236 (left!23563 (right!23893 (c!423089 lt!926214))) (left!23563 (c!423089 lt!926214)))) (ite c!423240 call!169344 (ite c!423237 call!169343 lt!926597)))) (ite c!423238 (c!423089 lt!926206) (ite c!423241 (ite c!423243 call!169336 (ite c!423236 lt!926594 (left!23563 (right!23893 (c!423089 lt!926214))))) (ite (or c!423240 c!423237) (right!23893 (c!423089 lt!926206)) call!169343)))))))

(declare-fun b!2632692 () Bool)

(declare-fun call!169339 () Int)

(declare-fun call!169338 () Int)

(assert (=> b!2632692 (= c!423243 (>= call!169339 call!169338))))

(declare-fun e!1661196 () Conc!9520)

(assert (=> b!2632692 (= e!1661196 e!1661198)))

(declare-fun call!169335 () Conc!9520)

(declare-fun bm!169331 () Bool)

(assert (=> bm!169331 (= call!169335 (++!7428 (ite c!423241 (ite c!423243 (right!23893 (c!423089 lt!926214)) (right!23893 (right!23893 (c!423089 lt!926214)))) (c!423089 lt!926214)) (ite c!423241 (c!423089 lt!926206) (ite c!423240 (left!23563 (c!423089 lt!926206)) (left!23563 (left!23563 (c!423089 lt!926206)))))))))

(declare-fun bm!169332 () Bool)

(declare-fun call!169342 () Conc!9520)

(assert (=> bm!169332 (= call!169342 call!169341)))

(declare-fun b!2632693 () Bool)

(declare-fun res!1108484 () Bool)

(declare-fun e!1661194 () Bool)

(assert (=> b!2632693 (=> (not res!1108484) (not e!1661194))))

(declare-fun lt!926596 () Conc!9520)

(assert (=> b!2632693 (= res!1108484 (isBalanced!2876 lt!926596))))

(declare-fun b!2632694 () Bool)

(declare-fun e!1661197 () Conc!9520)

(assert (=> b!2632694 (= e!1661198 e!1661197)))

(assert (=> b!2632694 (= lt!926594 call!169336)))

(declare-fun call!169345 () Int)

(declare-fun call!169346 () Int)

(assert (=> b!2632694 (= c!423236 (= call!169345 (- call!169346 3)))))

(declare-fun d!746858 () Bool)

(assert (=> d!746858 e!1661194))

(declare-fun res!1108483 () Bool)

(assert (=> d!746858 (=> (not res!1108483) (not e!1661194))))

(assert (=> d!746858 (= res!1108483 (appendAssocInst!631 (c!423089 lt!926214) (c!423089 lt!926206)))))

(declare-fun e!1661195 () Conc!9520)

(assert (=> d!746858 (= lt!926596 e!1661195)))

(declare-fun c!423242 () Bool)

(assert (=> d!746858 (= c!423242 (= (c!423089 lt!926214) Empty!9520))))

(declare-fun e!1661192 () Bool)

(assert (=> d!746858 e!1661192))

(declare-fun res!1108487 () Bool)

(assert (=> d!746858 (=> (not res!1108487) (not e!1661192))))

(assert (=> d!746858 (= res!1108487 (isBalanced!2876 (c!423089 lt!926214)))))

(assert (=> d!746858 (= (++!7428 (c!423089 lt!926214) (c!423089 lt!926206)) lt!926596)))

(declare-fun b!2632695 () Bool)

(declare-fun res!1108485 () Bool)

(assert (=> b!2632695 (=> (not res!1108485) (not e!1661194))))

(assert (=> b!2632695 (= res!1108485 (>= (height!1373 lt!926596) (max!0 (height!1373 (c!423089 lt!926214)) (height!1373 (c!423089 lt!926206)))))))

(declare-fun b!2632696 () Bool)

(declare-fun e!1661200 () Conc!9520)

(declare-fun e!1661199 () Conc!9520)

(assert (=> b!2632696 (= e!1661200 e!1661199)))

(assert (=> b!2632696 (= lt!926597 call!169344)))

(assert (=> b!2632696 (= c!423237 (= call!169346 (- call!169338 3)))))

(declare-fun b!2632697 () Bool)

(assert (=> b!2632697 (= c!423240 (>= call!169339 call!169345))))

(assert (=> b!2632697 (= e!1661196 e!1661200)))

(declare-fun bm!169333 () Bool)

(declare-fun call!169349 () Conc!9520)

(assert (=> bm!169333 (= call!169349 call!169342)))

(declare-fun call!169348 () Conc!9520)

(declare-fun call!169350 () Conc!9520)

(declare-fun bm!169334 () Bool)

(assert (=> bm!169334 (= call!169348 (<>!227 (ite c!423241 (ite c!423236 (left!23563 (c!423089 lt!926214)) call!169350) (ite c!423237 lt!926597 (right!23893 (left!23563 (c!423089 lt!926206))))) (ite c!423241 (ite c!423236 call!169350 lt!926594) (ite c!423237 (right!23893 (left!23563 (c!423089 lt!926206))) (right!23893 (c!423089 lt!926206))))))))

(declare-fun bm!169335 () Bool)

(assert (=> bm!169335 (= call!169345 (height!1373 (ite c!423241 lt!926594 (left!23563 (c!423089 lt!926206)))))))

(declare-fun bm!169336 () Bool)

(assert (=> bm!169336 (= call!169344 call!169335)))

(declare-fun b!2632698 () Bool)

(declare-fun e!1661191 () Conc!9520)

(assert (=> b!2632698 (= e!1661191 call!169341)))

(declare-fun b!2632699 () Bool)

(declare-fun call!169337 () Conc!9520)

(assert (=> b!2632699 (= e!1661199 call!169337)))

(declare-fun b!2632700 () Bool)

(declare-fun call!169340 () Conc!9520)

(assert (=> b!2632700 (= e!1661197 call!169340)))

(declare-fun bm!169337 () Bool)

(assert (=> bm!169337 (= call!169339 (height!1373 (ite c!423241 (left!23563 (c!423089 lt!926214)) (right!23893 (c!423089 lt!926206)))))))

(declare-fun b!2632701 () Bool)

(assert (=> b!2632701 (= e!1661194 (= (list!11473 lt!926596) (++!7427 (list!11473 (c!423089 lt!926214)) (list!11473 (c!423089 lt!926206)))))))

(declare-fun bm!169338 () Bool)

(assert (=> bm!169338 (= call!169337 call!169349)))

(declare-fun bm!169339 () Bool)

(assert (=> bm!169339 (= call!169347 call!169342)))

(declare-fun b!2632702 () Bool)

(assert (=> b!2632702 (= e!1661195 (c!423089 lt!926206))))

(declare-fun b!2632703 () Bool)

(assert (=> b!2632703 (= e!1661199 call!169337)))

(declare-fun bm!169340 () Bool)

(assert (=> bm!169340 (= call!169336 call!169335)))

(declare-fun b!2632704 () Bool)

(declare-fun lt!926595 () Int)

(assert (=> b!2632704 (= c!423238 (and (<= (- 1) lt!926595) (<= lt!926595 1)))))

(assert (=> b!2632704 (= lt!926595 (- (height!1373 (c!423089 lt!926206)) (height!1373 (c!423089 lt!926214))))))

(declare-fun e!1661193 () Conc!9520)

(assert (=> b!2632704 (= e!1661193 e!1661191)))

(declare-fun b!2632705 () Bool)

(assert (=> b!2632705 (= e!1661195 e!1661193)))

(declare-fun c!423239 () Bool)

(assert (=> b!2632705 (= c!423239 (= (c!423089 lt!926206) Empty!9520))))

(declare-fun b!2632706 () Bool)

(assert (=> b!2632706 (= e!1661192 (isBalanced!2876 (c!423089 lt!926206)))))

(declare-fun bm!169341 () Bool)

(assert (=> bm!169341 (= call!169346 (height!1373 (ite c!423241 (c!423089 lt!926214) lt!926597)))))

(declare-fun bm!169342 () Bool)

(assert (=> bm!169342 (= call!169350 call!169347)))

(declare-fun bm!169343 () Bool)

(assert (=> bm!169343 (= call!169338 (height!1373 (ite c!423241 (right!23893 (c!423089 lt!926214)) (c!423089 lt!926206))))))

(declare-fun b!2632707 () Bool)

(assert (=> b!2632707 (= e!1661193 (c!423089 lt!926214))))

(declare-fun b!2632708 () Bool)

(declare-fun res!1108486 () Bool)

(assert (=> b!2632708 (=> (not res!1108486) (not e!1661194))))

(assert (=> b!2632708 (= res!1108486 (<= (height!1373 lt!926596) (+ (max!0 (height!1373 (c!423089 lt!926214)) (height!1373 (c!423089 lt!926206))) 1)))))

(declare-fun b!2632709 () Bool)

(assert (=> b!2632709 (= e!1661200 call!169349)))

(declare-fun bm!169344 () Bool)

(assert (=> bm!169344 (= call!169343 call!169348)))

(declare-fun b!2632710 () Bool)

(assert (=> b!2632710 (= e!1661197 call!169340)))

(declare-fun b!2632711 () Bool)

(assert (=> b!2632711 (= e!1661191 e!1661196)))

(assert (=> b!2632711 (= c!423241 (< lt!926595 (- 1)))))

(declare-fun bm!169345 () Bool)

(assert (=> bm!169345 (= call!169340 call!169348)))

(assert (= (and d!746858 res!1108487) b!2632706))

(assert (= (and d!746858 c!423242) b!2632702))

(assert (= (and d!746858 (not c!423242)) b!2632705))

(assert (= (and b!2632705 c!423239) b!2632707))

(assert (= (and b!2632705 (not c!423239)) b!2632704))

(assert (= (and b!2632704 c!423238) b!2632698))

(assert (= (and b!2632704 (not c!423238)) b!2632711))

(assert (= (and b!2632711 c!423241) b!2632692))

(assert (= (and b!2632711 (not c!423241)) b!2632697))

(assert (= (and b!2632692 c!423243) b!2632691))

(assert (= (and b!2632692 (not c!423243)) b!2632694))

(assert (= (and b!2632694 c!423236) b!2632700))

(assert (= (and b!2632694 (not c!423236)) b!2632710))

(assert (= (or b!2632700 b!2632710) bm!169342))

(assert (= (or b!2632700 b!2632710) bm!169345))

(assert (= (or b!2632691 b!2632694) bm!169340))

(assert (= (or b!2632691 bm!169342) bm!169339))

(assert (= (and b!2632697 c!423240) b!2632709))

(assert (= (and b!2632697 (not c!423240)) b!2632696))

(assert (= (and b!2632696 c!423237) b!2632699))

(assert (= (and b!2632696 (not c!423237)) b!2632703))

(assert (= (or b!2632699 b!2632703) bm!169344))

(assert (= (or b!2632699 b!2632703) bm!169338))

(assert (= (or b!2632709 b!2632696) bm!169336))

(assert (= (or b!2632709 bm!169338) bm!169333))

(assert (= (or b!2632694 b!2632696) bm!169341))

(assert (= (or bm!169340 bm!169336) bm!169331))

(assert (= (or b!2632694 b!2632697) bm!169335))

(assert (= (or b!2632692 b!2632696) bm!169343))

(assert (= (or bm!169339 bm!169333) bm!169332))

(assert (= (or b!2632692 b!2632697) bm!169337))

(assert (= (or bm!169345 bm!169344) bm!169334))

(assert (= (or b!2632698 bm!169332) bm!169330))

(assert (= (and d!746858 res!1108483) b!2632693))

(assert (= (and b!2632693 res!1108484) b!2632708))

(assert (= (and b!2632708 res!1108486) b!2632695))

(assert (= (and b!2632695 res!1108485) b!2632701))

(declare-fun m!2975905 () Bool)

(assert (=> bm!169341 m!2975905))

(declare-fun m!2975907 () Bool)

(assert (=> b!2632706 m!2975907))

(declare-fun m!2975909 () Bool)

(assert (=> bm!169334 m!2975909))

(declare-fun m!2975911 () Bool)

(assert (=> b!2632695 m!2975911))

(assert (=> b!2632695 m!2975289))

(assert (=> b!2632695 m!2975291))

(assert (=> b!2632695 m!2975289))

(assert (=> b!2632695 m!2975291))

(assert (=> b!2632695 m!2975293))

(declare-fun m!2975913 () Bool)

(assert (=> bm!169335 m!2975913))

(declare-fun m!2975915 () Bool)

(assert (=> bm!169331 m!2975915))

(declare-fun m!2975917 () Bool)

(assert (=> b!2632701 m!2975917))

(assert (=> b!2632701 m!2975299))

(declare-fun m!2975919 () Bool)

(assert (=> b!2632701 m!2975919))

(assert (=> b!2632701 m!2975299))

(assert (=> b!2632701 m!2975919))

(declare-fun m!2975921 () Bool)

(assert (=> b!2632701 m!2975921))

(assert (=> b!2632708 m!2975911))

(assert (=> b!2632708 m!2975289))

(assert (=> b!2632708 m!2975291))

(assert (=> b!2632708 m!2975289))

(assert (=> b!2632708 m!2975291))

(assert (=> b!2632708 m!2975293))

(declare-fun m!2975923 () Bool)

(assert (=> bm!169343 m!2975923))

(declare-fun m!2975925 () Bool)

(assert (=> bm!169337 m!2975925))

(declare-fun m!2975927 () Bool)

(assert (=> bm!169330 m!2975927))

(assert (=> d!746858 m!2975285))

(declare-fun m!2975929 () Bool)

(assert (=> d!746858 m!2975929))

(assert (=> b!2632704 m!2975291))

(assert (=> b!2632704 m!2975289))

(declare-fun m!2975931 () Bool)

(assert (=> b!2632693 m!2975931))

(assert (=> b!2632151 d!746858))

(declare-fun d!746868 () Bool)

(assert (=> d!746868 (= (height!1373 (++!7428 (c!423089 lt!926214) (c!423089 lt!926206))) (ite ((_ is Empty!9520) (++!7428 (c!423089 lt!926214) (c!423089 lt!926206))) 0 (ite ((_ is Leaf!14580) (++!7428 (c!423089 lt!926214) (c!423089 lt!926206))) 1 (cheight!9731 (++!7428 (c!423089 lt!926214) (c!423089 lt!926206))))))))

(assert (=> b!2632151 d!746868))

(declare-fun d!746870 () Bool)

(assert (=> d!746870 (= (height!1373 (c!423089 lt!926214)) (ite ((_ is Empty!9520) (c!423089 lt!926214)) 0 (ite ((_ is Leaf!14580) (c!423089 lt!926214)) 1 (cheight!9731 (c!423089 lt!926214)))))))

(assert (=> b!2632151 d!746870))

(declare-fun d!746872 () Bool)

(assert (=> d!746872 (= (max!0 (height!1373 (c!423089 lt!926214)) (height!1373 (c!423089 lt!926206))) (ite (< (height!1373 (c!423089 lt!926214)) (height!1373 (c!423089 lt!926206))) (height!1373 (c!423089 lt!926206)) (height!1373 (c!423089 lt!926214))))))

(assert (=> b!2632151 d!746872))

(declare-fun d!746874 () Bool)

(assert (=> d!746874 (= (height!1373 (c!423089 lt!926206)) (ite ((_ is Empty!9520) (c!423089 lt!926206)) 0 (ite ((_ is Leaf!14580) (c!423089 lt!926206)) 1 (cheight!9731 (c!423089 lt!926206)))))))

(assert (=> b!2632151 d!746874))

(declare-fun lt!926598 () BalanceConc!18654)

(declare-fun b!2632715 () Bool)

(declare-fun e!1661201 () Bool)

(assert (=> b!2632715 (= e!1661201 (= (list!11470 lt!926598) (++!7427 (list!11470 e!1660804) (list!11470 (ite c!423109 lt!926299 call!169267)))))))

(declare-fun b!2632712 () Bool)

(declare-fun res!1108490 () Bool)

(assert (=> b!2632712 (=> (not res!1108490) (not e!1661201))))

(assert (=> b!2632712 (= res!1108490 (isBalanced!2876 (++!7428 (c!423089 e!1660804) (c!423089 (ite c!423109 lt!926299 call!169267)))))))

(declare-fun b!2632714 () Bool)

(declare-fun res!1108489 () Bool)

(assert (=> b!2632714 (=> (not res!1108489) (not e!1661201))))

(assert (=> b!2632714 (= res!1108489 (>= (height!1373 (++!7428 (c!423089 e!1660804) (c!423089 (ite c!423109 lt!926299 call!169267)))) (max!0 (height!1373 (c!423089 e!1660804)) (height!1373 (c!423089 (ite c!423109 lt!926299 call!169267))))))))

(declare-fun b!2632713 () Bool)

(declare-fun res!1108491 () Bool)

(assert (=> b!2632713 (=> (not res!1108491) (not e!1661201))))

(assert (=> b!2632713 (= res!1108491 (<= (height!1373 (++!7428 (c!423089 e!1660804) (c!423089 (ite c!423109 lt!926299 call!169267)))) (+ (max!0 (height!1373 (c!423089 e!1660804)) (height!1373 (c!423089 (ite c!423109 lt!926299 call!169267)))) 1)))))

(declare-fun d!746876 () Bool)

(assert (=> d!746876 e!1661201))

(declare-fun res!1108488 () Bool)

(assert (=> d!746876 (=> (not res!1108488) (not e!1661201))))

(assert (=> d!746876 (= res!1108488 (appendAssocInst!631 (c!423089 e!1660804) (c!423089 (ite c!423109 lt!926299 call!169267))))))

(assert (=> d!746876 (= lt!926598 (BalanceConc!18655 (++!7428 (c!423089 e!1660804) (c!423089 (ite c!423109 lt!926299 call!169267)))))))

(assert (=> d!746876 (= (++!7425 e!1660804 (ite c!423109 lt!926299 call!169267)) lt!926598)))

(assert (= (and d!746876 res!1108488) b!2632712))

(assert (= (and b!2632712 res!1108490) b!2632713))

(assert (= (and b!2632713 res!1108491) b!2632714))

(assert (= (and b!2632714 res!1108489) b!2632715))

(declare-fun m!2975933 () Bool)

(assert (=> b!2632715 m!2975933))

(declare-fun m!2975935 () Bool)

(assert (=> b!2632715 m!2975935))

(declare-fun m!2975937 () Bool)

(assert (=> b!2632715 m!2975937))

(assert (=> b!2632715 m!2975935))

(assert (=> b!2632715 m!2975937))

(declare-fun m!2975939 () Bool)

(assert (=> b!2632715 m!2975939))

(declare-fun m!2975941 () Bool)

(assert (=> d!746876 m!2975941))

(declare-fun m!2975943 () Bool)

(assert (=> d!746876 m!2975943))

(declare-fun m!2975945 () Bool)

(assert (=> b!2632714 m!2975945))

(assert (=> b!2632714 m!2975943))

(assert (=> b!2632714 m!2975945))

(declare-fun m!2975947 () Bool)

(assert (=> b!2632714 m!2975947))

(declare-fun m!2975949 () Bool)

(assert (=> b!2632714 m!2975949))

(assert (=> b!2632714 m!2975943))

(declare-fun m!2975951 () Bool)

(assert (=> b!2632714 m!2975951))

(assert (=> b!2632714 m!2975947))

(assert (=> b!2632713 m!2975945))

(assert (=> b!2632713 m!2975943))

(assert (=> b!2632713 m!2975945))

(assert (=> b!2632713 m!2975947))

(assert (=> b!2632713 m!2975949))

(assert (=> b!2632713 m!2975943))

(assert (=> b!2632713 m!2975951))

(assert (=> b!2632713 m!2975947))

(assert (=> b!2632712 m!2975943))

(assert (=> b!2632712 m!2975943))

(declare-fun m!2975953 () Bool)

(assert (=> b!2632712 m!2975953))

(assert (=> bm!169258 d!746876))

(declare-fun d!746878 () Bool)

(declare-fun res!1108498 () Bool)

(declare-fun e!1661204 () Bool)

(assert (=> d!746878 (=> (not res!1108498) (not e!1661204))))

(assert (=> d!746878 (= res!1108498 (= (csize!19272 (c!423090 v!6381)) (+ (size!23582 (left!23564 (c!423090 v!6381))) (size!23582 (right!23894 (c!423090 v!6381))))))))

(assert (=> d!746878 (= (inv!41363 (c!423090 v!6381)) e!1661204)))

(declare-fun b!2632722 () Bool)

(declare-fun res!1108499 () Bool)

(assert (=> b!2632722 (=> (not res!1108499) (not e!1661204))))

(assert (=> b!2632722 (= res!1108499 (and (not (= (left!23564 (c!423090 v!6381)) Empty!9521)) (not (= (right!23894 (c!423090 v!6381)) Empty!9521))))))

(declare-fun b!2632723 () Bool)

(declare-fun res!1108500 () Bool)

(assert (=> b!2632723 (=> (not res!1108500) (not e!1661204))))

(declare-fun height!1375 (Conc!9521) Int)

(assert (=> b!2632723 (= res!1108500 (= (cheight!9732 (c!423090 v!6381)) (+ (max!0 (height!1375 (left!23564 (c!423090 v!6381))) (height!1375 (right!23894 (c!423090 v!6381)))) 1)))))

(declare-fun b!2632724 () Bool)

(assert (=> b!2632724 (= e!1661204 (<= 0 (cheight!9732 (c!423090 v!6381))))))

(assert (= (and d!746878 res!1108498) b!2632722))

(assert (= (and b!2632722 res!1108499) b!2632723))

(assert (= (and b!2632723 res!1108500) b!2632724))

(declare-fun m!2975955 () Bool)

(assert (=> d!746878 m!2975955))

(declare-fun m!2975957 () Bool)

(assert (=> d!746878 m!2975957))

(declare-fun m!2975959 () Bool)

(assert (=> b!2632723 m!2975959))

(declare-fun m!2975961 () Bool)

(assert (=> b!2632723 m!2975961))

(assert (=> b!2632723 m!2975959))

(assert (=> b!2632723 m!2975961))

(declare-fun m!2975963 () Bool)

(assert (=> b!2632723 m!2975963))

(assert (=> b!2632293 d!746878))

(declare-fun d!746880 () Bool)

(declare-fun res!1108505 () Bool)

(declare-fun e!1661209 () Bool)

(assert (=> d!746880 (=> res!1108505 e!1661209)))

(assert (=> d!746880 (= res!1108505 ((_ is Nil!30502) (list!11471 v!6381)))))

(assert (=> d!746880 (= (forall!6385 (list!11471 v!6381) lambda!98751) e!1661209)))

(declare-fun b!2632729 () Bool)

(declare-fun e!1661210 () Bool)

(assert (=> b!2632729 (= e!1661209 e!1661210)))

(declare-fun res!1108506 () Bool)

(assert (=> b!2632729 (=> (not res!1108506) (not e!1661210))))

(assert (=> b!2632729 (= res!1108506 (dynLambda!13068 lambda!98751 (h!35922 (list!11471 v!6381))))))

(declare-fun b!2632730 () Bool)

(assert (=> b!2632730 (= e!1661210 (forall!6385 (t!216475 (list!11471 v!6381)) lambda!98751))))

(assert (= (and d!746880 (not res!1108505)) b!2632729))

(assert (= (and b!2632729 res!1108506) b!2632730))

(declare-fun b_lambda!79265 () Bool)

(assert (=> (not b_lambda!79265) (not b!2632729)))

(declare-fun m!2975965 () Bool)

(assert (=> b!2632729 m!2975965))

(declare-fun m!2975967 () Bool)

(assert (=> b!2632730 m!2975967))

(assert (=> d!746646 d!746880))

(assert (=> d!746646 d!746708))

(declare-fun b!2632741 () Bool)

(declare-fun e!1661217 () Bool)

(declare-fun e!1661219 () Bool)

(assert (=> b!2632741 (= e!1661217 e!1661219)))

(declare-fun lt!926603 () Unit!44507)

(declare-fun lemmaForallConcat!155 (List!30602 List!30602 Int) Unit!44507)

(assert (=> b!2632741 (= lt!926603 (lemmaForallConcat!155 (list!11474 (left!23564 (c!423090 v!6381))) (list!11474 (right!23894 (c!423090 v!6381))) lambda!98751))))

(declare-fun res!1108512 () Bool)

(assert (=> b!2632741 (= res!1108512 (forall!6386 (left!23564 (c!423090 v!6381)) lambda!98751))))

(assert (=> b!2632741 (=> (not res!1108512) (not e!1661219))))

(declare-fun b!2632742 () Bool)

(assert (=> b!2632742 (= e!1661219 (forall!6386 (right!23894 (c!423090 v!6381)) lambda!98751))))

(declare-fun b!2632739 () Bool)

(declare-fun e!1661218 () Bool)

(assert (=> b!2632739 (= e!1661218 e!1661217)))

(declare-fun c!423246 () Bool)

(assert (=> b!2632739 (= c!423246 ((_ is Leaf!14581) (c!423090 v!6381)))))

(declare-fun d!746882 () Bool)

(declare-fun lt!926604 () Bool)

(assert (=> d!746882 (= lt!926604 (forall!6385 (list!11474 (c!423090 v!6381)) lambda!98751))))

(assert (=> d!746882 (= lt!926604 e!1661218)))

(declare-fun res!1108511 () Bool)

(assert (=> d!746882 (=> res!1108511 e!1661218)))

(assert (=> d!746882 (= res!1108511 ((_ is Empty!9521) (c!423090 v!6381)))))

(assert (=> d!746882 (= (forall!6386 (c!423090 v!6381) lambda!98751) lt!926604)))

(declare-fun b!2632740 () Bool)

(declare-fun forall!6389 (IArray!19047 Int) Bool)

(assert (=> b!2632740 (= e!1661217 (forall!6389 (xs!12521 (c!423090 v!6381)) lambda!98751))))

(assert (= (and d!746882 (not res!1108511)) b!2632739))

(assert (= (and b!2632739 c!423246) b!2632740))

(assert (= (and b!2632739 (not c!423246)) b!2632741))

(assert (= (and b!2632741 res!1108512) b!2632742))

(declare-fun m!2975969 () Bool)

(assert (=> b!2632741 m!2975969))

(declare-fun m!2975971 () Bool)

(assert (=> b!2632741 m!2975971))

(assert (=> b!2632741 m!2975969))

(assert (=> b!2632741 m!2975971))

(declare-fun m!2975973 () Bool)

(assert (=> b!2632741 m!2975973))

(declare-fun m!2975975 () Bool)

(assert (=> b!2632741 m!2975975))

(declare-fun m!2975977 () Bool)

(assert (=> b!2632742 m!2975977))

(assert (=> d!746882 m!2975445))

(assert (=> d!746882 m!2975445))

(declare-fun m!2975979 () Bool)

(assert (=> d!746882 m!2975979))

(declare-fun m!2975981 () Bool)

(assert (=> b!2632740 m!2975981))

(assert (=> d!746646 d!746882))

(declare-fun d!746884 () Bool)

(assert (=> d!746884 (= (list!11470 lt!926311) (list!11473 (c!423089 lt!926311)))))

(declare-fun bs!475838 () Bool)

(assert (= bs!475838 d!746884))

(declare-fun m!2975983 () Bool)

(assert (=> bs!475838 m!2975983))

(assert (=> d!746676 d!746884))

(declare-fun d!746886 () Bool)

(declare-fun res!1108517 () Bool)

(declare-fun e!1661224 () Bool)

(assert (=> d!746886 (=> res!1108517 e!1661224)))

(assert (=> d!746886 (= res!1108517 ((_ is Nil!30501) rules!1726))))

(assert (=> d!746886 (= (noDuplicateTag!1717 thiss!14197 rules!1726 Nil!30503) e!1661224)))

(declare-fun b!2632747 () Bool)

(declare-fun e!1661225 () Bool)

(assert (=> b!2632747 (= e!1661224 e!1661225)))

(declare-fun res!1108518 () Bool)

(assert (=> b!2632747 (=> (not res!1108518) (not e!1661225))))

(declare-fun contains!5791 (List!30603 String!34188) Bool)

(assert (=> b!2632747 (= res!1108518 (not (contains!5791 Nil!30503 (tag!5133 (h!35921 rules!1726)))))))

(declare-fun b!2632748 () Bool)

(assert (=> b!2632748 (= e!1661225 (noDuplicateTag!1717 thiss!14197 (t!216474 rules!1726) (Cons!30503 (tag!5133 (h!35921 rules!1726)) Nil!30503)))))

(assert (= (and d!746886 (not res!1108517)) b!2632747))

(assert (= (and b!2632747 res!1108518) b!2632748))

(declare-fun m!2975985 () Bool)

(assert (=> b!2632747 m!2975985))

(declare-fun m!2975987 () Bool)

(assert (=> b!2632748 m!2975987))

(assert (=> b!2632298 d!746886))

(declare-fun b!2632757 () Bool)

(declare-fun e!1661230 () List!30600)

(assert (=> b!2632757 (= e!1661230 Nil!30500)))

(declare-fun b!2632760 () Bool)

(declare-fun e!1661231 () List!30600)

(assert (=> b!2632760 (= e!1661231 (++!7427 (list!11473 (left!23563 (c!423089 lt!926214))) (list!11473 (right!23893 (c!423089 lt!926214)))))))

(declare-fun b!2632758 () Bool)

(assert (=> b!2632758 (= e!1661230 e!1661231)))

(declare-fun c!423252 () Bool)

(assert (=> b!2632758 (= c!423252 ((_ is Leaf!14580) (c!423089 lt!926214)))))

(declare-fun b!2632759 () Bool)

(declare-fun list!11477 (IArray!19045) List!30600)

(assert (=> b!2632759 (= e!1661231 (list!11477 (xs!12520 (c!423089 lt!926214))))))

(declare-fun d!746888 () Bool)

(declare-fun c!423251 () Bool)

(assert (=> d!746888 (= c!423251 ((_ is Empty!9520) (c!423089 lt!926214)))))

(assert (=> d!746888 (= (list!11473 (c!423089 lt!926214)) e!1661230)))

(assert (= (and d!746888 c!423251) b!2632757))

(assert (= (and d!746888 (not c!423251)) b!2632758))

(assert (= (and b!2632758 c!423252) b!2632759))

(assert (= (and b!2632758 (not c!423252)) b!2632760))

(declare-fun m!2975989 () Bool)

(assert (=> b!2632760 m!2975989))

(declare-fun m!2975991 () Bool)

(assert (=> b!2632760 m!2975991))

(assert (=> b!2632760 m!2975989))

(assert (=> b!2632760 m!2975991))

(declare-fun m!2975993 () Bool)

(assert (=> b!2632760 m!2975993))

(declare-fun m!2975995 () Bool)

(assert (=> b!2632759 m!2975995))

(assert (=> d!746684 d!746888))

(declare-fun d!746890 () Bool)

(declare-fun c!423255 () Bool)

(assert (=> d!746890 (= c!423255 ((_ is Node!9520) (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (value!149816 separatorToken!156)))))))

(declare-fun e!1661236 () Bool)

(assert (=> d!746890 (= (inv!41359 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (value!149816 separatorToken!156)))) e!1661236)))

(declare-fun b!2632767 () Bool)

(declare-fun inv!41369 (Conc!9520) Bool)

(assert (=> b!2632767 (= e!1661236 (inv!41369 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (value!149816 separatorToken!156)))))))

(declare-fun b!2632768 () Bool)

(declare-fun e!1661237 () Bool)

(assert (=> b!2632768 (= e!1661236 e!1661237)))

(declare-fun res!1108521 () Bool)

(assert (=> b!2632768 (= res!1108521 (not ((_ is Leaf!14580) (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (value!149816 separatorToken!156))))))))

(assert (=> b!2632768 (=> res!1108521 e!1661237)))

(declare-fun b!2632769 () Bool)

(declare-fun inv!41370 (Conc!9520) Bool)

(assert (=> b!2632769 (= e!1661237 (inv!41370 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (value!149816 separatorToken!156)))))))

(assert (= (and d!746890 c!423255) b!2632767))

(assert (= (and d!746890 (not c!423255)) b!2632768))

(assert (= (and b!2632768 (not res!1108521)) b!2632769))

(declare-fun m!2975997 () Bool)

(assert (=> b!2632767 m!2975997))

(declare-fun m!2975999 () Bool)

(assert (=> b!2632769 m!2975999))

(assert (=> b!2632223 d!746890))

(assert (=> b!2632115 d!746810))

(assert (=> b!2632115 d!746812))

(assert (=> b!2632115 d!746816))

(assert (=> b!2632115 d!746814))

(declare-fun d!746892 () Bool)

(assert (=> d!746892 (= (list!11470 (_2!17537 (get!9594 lt!926333))) (list!11473 (c!423089 (_2!17537 (get!9594 lt!926333)))))))

(declare-fun bs!475839 () Bool)

(assert (= bs!475839 d!746892))

(declare-fun m!2976001 () Bool)

(assert (=> bs!475839 m!2976001))

(assert (=> b!2632115 d!746892))

(declare-fun d!746894 () Bool)

(declare-fun lt!926605 () BalanceConc!18654)

(assert (=> d!746894 (= (list!11470 lt!926605) (originalCharacters!5405 (ite c!423109 call!169263 (ite c!423111 separatorToken!156 call!169266))))))

(assert (=> d!746894 (= lt!926605 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 (ite c!423109 call!169263 (ite c!423111 separatorToken!156 call!169266))))) (value!149816 (ite c!423109 call!169263 (ite c!423111 separatorToken!156 call!169266)))))))

(assert (=> d!746894 (= (charsOf!2926 (ite c!423109 call!169263 (ite c!423111 separatorToken!156 call!169266))) lt!926605)))

(declare-fun b_lambda!79267 () Bool)

(assert (=> (not b_lambda!79267) (not d!746894)))

(declare-fun t!216534 () Bool)

(declare-fun tb!143637 () Bool)

(assert (=> (and b!2631972 (= (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (toChars!6412 (transformation!4639 (rule!7021 (ite c!423109 call!169263 (ite c!423111 separatorToken!156 call!169266)))))) t!216534) tb!143637))

(declare-fun tp!834548 () Bool)

(declare-fun b!2632770 () Bool)

(declare-fun e!1661238 () Bool)

(assert (=> b!2632770 (= e!1661238 (and (inv!41359 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 (ite c!423109 call!169263 (ite c!423111 separatorToken!156 call!169266))))) (value!149816 (ite c!423109 call!169263 (ite c!423111 separatorToken!156 call!169266)))))) tp!834548))))

(declare-fun result!178532 () Bool)

(assert (=> tb!143637 (= result!178532 (and (inv!41360 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 (ite c!423109 call!169263 (ite c!423111 separatorToken!156 call!169266))))) (value!149816 (ite c!423109 call!169263 (ite c!423111 separatorToken!156 call!169266))))) e!1661238))))

(assert (= tb!143637 b!2632770))

(declare-fun m!2976003 () Bool)

(assert (=> b!2632770 m!2976003))

(declare-fun m!2976005 () Bool)

(assert (=> tb!143637 m!2976005))

(assert (=> d!746894 t!216534))

(declare-fun b_and!192857 () Bool)

(assert (= b_and!192835 (and (=> t!216534 result!178532) b_and!192857)))

(declare-fun t!216536 () Bool)

(declare-fun tb!143639 () Bool)

(assert (=> (and b!2631973 (= (toChars!6412 (transformation!4639 (h!35921 rules!1726))) (toChars!6412 (transformation!4639 (rule!7021 (ite c!423109 call!169263 (ite c!423111 separatorToken!156 call!169266)))))) t!216536) tb!143639))

(declare-fun result!178534 () Bool)

(assert (= result!178534 result!178532))

(assert (=> d!746894 t!216536))

(declare-fun b_and!192859 () Bool)

(assert (= b_and!192837 (and (=> t!216536 result!178534) b_and!192859)))

(declare-fun t!216538 () Bool)

(declare-fun tb!143641 () Bool)

(assert (=> (and b!2632394 (= (toChars!6412 (transformation!4639 (h!35921 (t!216474 rules!1726)))) (toChars!6412 (transformation!4639 (rule!7021 (ite c!423109 call!169263 (ite c!423111 separatorToken!156 call!169266)))))) t!216538) tb!143641))

(declare-fun result!178536 () Bool)

(assert (= result!178536 result!178532))

(assert (=> d!746894 t!216538))

(declare-fun b_and!192861 () Bool)

(assert (= b_and!192841 (and (=> t!216538 result!178536) b_and!192861)))

(declare-fun m!2976007 () Bool)

(assert (=> d!746894 m!2976007))

(declare-fun m!2976009 () Bool)

(assert (=> d!746894 m!2976009))

(assert (=> bm!169262 d!746894))

(declare-fun d!746896 () Bool)

(assert (=> d!746896 true))

(declare-fun lambda!98788 () Int)

(declare-fun order!16545 () Int)

(declare-fun dynLambda!13072 (Int Int) Int)

(assert (=> d!746896 (< (dynLambda!13064 order!16535 (toValue!6553 (transformation!4639 (rule!7021 separatorToken!156)))) (dynLambda!13072 order!16545 lambda!98788))))

(declare-fun Forall2!778 (Int) Bool)

(assert (=> d!746896 (= (equivClasses!1817 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (toValue!6553 (transformation!4639 (rule!7021 separatorToken!156)))) (Forall2!778 lambda!98788))))

(declare-fun bs!475840 () Bool)

(assert (= bs!475840 d!746896))

(declare-fun m!2976011 () Bool)

(assert (=> bs!475840 m!2976011))

(assert (=> b!2632286 d!746896))

(declare-fun d!746898 () Bool)

(assert (=> d!746898 (= (inv!41360 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 lt!926207))) (value!149816 lt!926207))) (isBalanced!2876 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 lt!926207))) (value!149816 lt!926207)))))))

(declare-fun bs!475841 () Bool)

(assert (= bs!475841 d!746898))

(declare-fun m!2976013 () Bool)

(assert (=> bs!475841 m!2976013))

(assert (=> tb!143607 d!746898))

(declare-fun d!746900 () Bool)

(assert (=> d!746900 (= (head!6038 (drop!1635 lt!926208 from!862)) (h!35922 (drop!1635 lt!926208 from!862)))))

(assert (=> d!746724 d!746900))

(assert (=> d!746724 d!746712))

(assert (=> d!746724 d!746728))

(declare-fun d!746902 () Bool)

(assert (=> d!746902 (= (head!6038 (drop!1635 lt!926208 from!862)) (apply!7266 lt!926208 from!862))))

(assert (=> d!746902 true))

(declare-fun _$27!758 () Unit!44507)

(assert (=> d!746902 (= (choose!15621 lt!926208 from!862) _$27!758)))

(declare-fun bs!475842 () Bool)

(assert (= bs!475842 d!746902))

(assert (=> bs!475842 m!2975009))

(assert (=> bs!475842 m!2975009))

(assert (=> bs!475842 m!2975477))

(assert (=> bs!475842 m!2975005))

(assert (=> d!746724 d!746902))

(declare-fun b!2632775 () Bool)

(declare-fun e!1661241 () List!30600)

(assert (=> b!2632775 (= e!1661241 Nil!30500)))

(declare-fun b!2632778 () Bool)

(declare-fun e!1661242 () List!30600)

(assert (=> b!2632778 (= e!1661242 (++!7427 (list!11473 (left!23563 (c!423089 lt!926221))) (list!11473 (right!23893 (c!423089 lt!926221)))))))

(declare-fun b!2632776 () Bool)

(assert (=> b!2632776 (= e!1661241 e!1661242)))

(declare-fun c!423257 () Bool)

(assert (=> b!2632776 (= c!423257 ((_ is Leaf!14580) (c!423089 lt!926221)))))

(declare-fun b!2632777 () Bool)

(assert (=> b!2632777 (= e!1661242 (list!11477 (xs!12520 (c!423089 lt!926221))))))

(declare-fun d!746904 () Bool)

(declare-fun c!423256 () Bool)

(assert (=> d!746904 (= c!423256 ((_ is Empty!9520) (c!423089 lt!926221)))))

(assert (=> d!746904 (= (list!11473 (c!423089 lt!926221)) e!1661241)))

(assert (= (and d!746904 c!423256) b!2632775))

(assert (= (and d!746904 (not c!423256)) b!2632776))

(assert (= (and b!2632776 c!423257) b!2632777))

(assert (= (and b!2632776 (not c!423257)) b!2632778))

(declare-fun m!2976015 () Bool)

(assert (=> b!2632778 m!2976015))

(declare-fun m!2976017 () Bool)

(assert (=> b!2632778 m!2976017))

(assert (=> b!2632778 m!2976015))

(assert (=> b!2632778 m!2976017))

(declare-fun m!2976019 () Bool)

(assert (=> b!2632778 m!2976019))

(declare-fun m!2976021 () Bool)

(assert (=> b!2632777 m!2976021))

(assert (=> d!746748 d!746904))

(declare-fun b!2632790 () Bool)

(declare-fun e!1661248 () List!30602)

(declare-fun ++!7430 (List!30602 List!30602) List!30602)

(assert (=> b!2632790 (= e!1661248 (++!7430 (list!11474 (left!23564 (c!423090 v!6381))) (list!11474 (right!23894 (c!423090 v!6381)))))))

(declare-fun d!746906 () Bool)

(declare-fun c!423262 () Bool)

(assert (=> d!746906 (= c!423262 ((_ is Empty!9521) (c!423090 v!6381)))))

(declare-fun e!1661247 () List!30602)

(assert (=> d!746906 (= (list!11474 (c!423090 v!6381)) e!1661247)))

(declare-fun b!2632789 () Bool)

(assert (=> b!2632789 (= e!1661248 (list!11476 (xs!12521 (c!423090 v!6381))))))

(declare-fun b!2632788 () Bool)

(assert (=> b!2632788 (= e!1661247 e!1661248)))

(declare-fun c!423263 () Bool)

(assert (=> b!2632788 (= c!423263 ((_ is Leaf!14581) (c!423090 v!6381)))))

(declare-fun b!2632787 () Bool)

(assert (=> b!2632787 (= e!1661247 Nil!30502)))

(assert (= (and d!746906 c!423262) b!2632787))

(assert (= (and d!746906 (not c!423262)) b!2632788))

(assert (= (and b!2632788 c!423263) b!2632789))

(assert (= (and b!2632788 (not c!423263)) b!2632790))

(assert (=> b!2632790 m!2975969))

(assert (=> b!2632790 m!2975971))

(assert (=> b!2632790 m!2975969))

(assert (=> b!2632790 m!2975971))

(declare-fun m!2976023 () Bool)

(assert (=> b!2632790 m!2976023))

(assert (=> b!2632789 m!2975703))

(assert (=> d!746708 d!746906))

(declare-fun d!746908 () Bool)

(declare-fun lt!926606 () Int)

(assert (=> d!746908 (>= lt!926606 0)))

(declare-fun e!1661249 () Int)

(assert (=> d!746908 (= lt!926606 e!1661249)))

(declare-fun c!423264 () Bool)

(assert (=> d!746908 (= c!423264 ((_ is Nil!30502) lt!926422))))

(assert (=> d!746908 (= (size!23581 lt!926422) lt!926606)))

(declare-fun b!2632791 () Bool)

(assert (=> b!2632791 (= e!1661249 0)))

(declare-fun b!2632792 () Bool)

(assert (=> b!2632792 (= e!1661249 (+ 1 (size!23581 (t!216475 lt!926422))))))

(assert (= (and d!746908 c!423264) b!2632791))

(assert (= (and d!746908 (not c!423264)) b!2632792))

(declare-fun m!2976025 () Bool)

(assert (=> b!2632792 m!2976025))

(assert (=> b!2632253 d!746908))

(declare-fun d!746910 () Bool)

(declare-fun e!1661250 () Bool)

(assert (=> d!746910 e!1661250))

(declare-fun res!1108524 () Bool)

(assert (=> d!746910 (=> (not res!1108524) (not e!1661250))))

(declare-fun lt!926607 () BalanceConc!18656)

(assert (=> d!746910 (= res!1108524 (= (list!11471 lt!926607) (Cons!30502 separatorToken!156 Nil!30502)))))

(assert (=> d!746910 (= lt!926607 (singleton!910 separatorToken!156))))

(assert (=> d!746910 (= (singletonSeq!2056 separatorToken!156) lt!926607)))

(declare-fun b!2632793 () Bool)

(assert (=> b!2632793 (= e!1661250 (isBalanced!2878 (c!423090 lt!926607)))))

(assert (= (and d!746910 res!1108524) b!2632793))

(declare-fun m!2976027 () Bool)

(assert (=> d!746910 m!2976027))

(declare-fun m!2976029 () Bool)

(assert (=> d!746910 m!2976029))

(declare-fun m!2976031 () Bool)

(assert (=> b!2632793 m!2976031))

(assert (=> d!746648 d!746910))

(declare-fun d!746912 () Bool)

(declare-fun lt!926608 () Int)

(assert (=> d!746912 (= lt!926608 (size!23581 (list!11471 (_1!17538 lt!926230))))))

(assert (=> d!746912 (= lt!926608 (size!23582 (c!423090 (_1!17538 lt!926230))))))

(assert (=> d!746912 (= (size!23579 (_1!17538 lt!926230)) lt!926608)))

(declare-fun bs!475843 () Bool)

(assert (= bs!475843 d!746912))

(assert (=> bs!475843 m!2975717))

(assert (=> bs!475843 m!2975717))

(declare-fun m!2976033 () Bool)

(assert (=> bs!475843 m!2976033))

(declare-fun m!2976035 () Bool)

(assert (=> bs!475843 m!2976035))

(assert (=> d!746648 d!746912))

(declare-fun d!746914 () Bool)

(declare-fun lt!926609 () BalanceConc!18654)

(assert (=> d!746914 (= (list!11470 lt!926609) (printList!1164 thiss!14197 (list!11471 (singletonSeq!2056 separatorToken!156))))))

(assert (=> d!746914 (= lt!926609 (printTailRec!1123 thiss!14197 (singletonSeq!2056 separatorToken!156) 0 (BalanceConc!18655 Empty!9520)))))

(assert (=> d!746914 (= (print!1637 thiss!14197 (singletonSeq!2056 separatorToken!156)) lt!926609)))

(declare-fun bs!475844 () Bool)

(assert (= bs!475844 d!746914))

(declare-fun m!2976037 () Bool)

(assert (=> bs!475844 m!2976037))

(assert (=> bs!475844 m!2975073))

(assert (=> bs!475844 m!2975081))

(assert (=> bs!475844 m!2975081))

(declare-fun m!2976039 () Bool)

(assert (=> bs!475844 m!2976039))

(assert (=> bs!475844 m!2975073))

(declare-fun m!2976041 () Bool)

(assert (=> bs!475844 m!2976041))

(assert (=> d!746648 d!746914))

(declare-fun d!746916 () Bool)

(assert (=> d!746916 (= (list!11471 (singletonSeq!2056 separatorToken!156)) (list!11474 (c!423090 (singletonSeq!2056 separatorToken!156))))))

(declare-fun bs!475845 () Bool)

(assert (= bs!475845 d!746916))

(declare-fun m!2976043 () Bool)

(assert (=> bs!475845 m!2976043))

(assert (=> d!746648 d!746916))

(assert (=> d!746648 d!746696))

(declare-fun e!1661264 () Bool)

(declare-fun b!2632816 () Bool)

(declare-fun lt!926663 () tuple2!29992)

(declare-datatypes ((tuple2!30004 0))(
  ( (tuple2!30005 (_1!17544 List!30602) (_2!17544 List!30600)) )
))
(declare-fun lexList!1159 (LexerInterface!4236 List!30601 List!30600) tuple2!30004)

(assert (=> b!2632816 (= e!1661264 (= (list!11470 (_2!17538 lt!926663)) (_2!17544 (lexList!1159 thiss!14197 rules!1726 (list!11470 (print!1637 thiss!14197 (singletonSeq!2056 separatorToken!156)))))))))

(declare-fun b!2632817 () Bool)

(declare-fun e!1661263 () Bool)

(declare-fun isEmpty!17395 (BalanceConc!18656) Bool)

(assert (=> b!2632817 (= e!1661263 (not (isEmpty!17395 (_1!17538 lt!926663))))))

(declare-fun d!746918 () Bool)

(assert (=> d!746918 e!1661264))

(declare-fun res!1108537 () Bool)

(assert (=> d!746918 (=> (not res!1108537) (not e!1661264))))

(declare-fun e!1661265 () Bool)

(assert (=> d!746918 (= res!1108537 e!1661265)))

(declare-fun c!423270 () Bool)

(assert (=> d!746918 (= c!423270 (> (size!23579 (_1!17538 lt!926663)) 0))))

(declare-fun lexTailRecV2!834 (LexerInterface!4236 List!30601 BalanceConc!18654 BalanceConc!18654 BalanceConc!18654 BalanceConc!18656) tuple2!29992)

(assert (=> d!746918 (= lt!926663 (lexTailRecV2!834 thiss!14197 rules!1726 (print!1637 thiss!14197 (singletonSeq!2056 separatorToken!156)) (BalanceConc!18655 Empty!9520) (print!1637 thiss!14197 (singletonSeq!2056 separatorToken!156)) (BalanceConc!18657 Empty!9521)))))

(assert (=> d!746918 (= (lex!1898 thiss!14197 rules!1726 (print!1637 thiss!14197 (singletonSeq!2056 separatorToken!156))) lt!926663)))

(declare-fun b!2632818 () Bool)

(assert (=> b!2632818 (= e!1661265 e!1661263)))

(declare-fun res!1108539 () Bool)

(assert (=> b!2632818 (= res!1108539 (< (size!23586 (_2!17538 lt!926663)) (size!23586 (print!1637 thiss!14197 (singletonSeq!2056 separatorToken!156)))))))

(assert (=> b!2632818 (=> (not res!1108539) (not e!1661263))))

(declare-fun b!2632819 () Bool)

(assert (=> b!2632819 (= e!1661265 (= (_2!17538 lt!926663) (print!1637 thiss!14197 (singletonSeq!2056 separatorToken!156))))))

(declare-fun b!2632820 () Bool)

(declare-fun res!1108538 () Bool)

(assert (=> b!2632820 (=> (not res!1108538) (not e!1661264))))

(assert (=> b!2632820 (= res!1108538 (= (list!11471 (_1!17538 lt!926663)) (_1!17544 (lexList!1159 thiss!14197 rules!1726 (list!11470 (print!1637 thiss!14197 (singletonSeq!2056 separatorToken!156)))))))))

(assert (= (and d!746918 c!423270) b!2632818))

(assert (= (and d!746918 (not c!423270)) b!2632819))

(assert (= (and b!2632818 res!1108539) b!2632817))

(assert (= (and d!746918 res!1108537) b!2632820))

(assert (= (and b!2632820 res!1108538) b!2632816))

(declare-fun m!2976099 () Bool)

(assert (=> b!2632818 m!2976099))

(assert (=> b!2632818 m!2975077))

(declare-fun m!2976101 () Bool)

(assert (=> b!2632818 m!2976101))

(declare-fun m!2976103 () Bool)

(assert (=> d!746918 m!2976103))

(assert (=> d!746918 m!2975077))

(assert (=> d!746918 m!2975077))

(declare-fun m!2976105 () Bool)

(assert (=> d!746918 m!2976105))

(declare-fun m!2976107 () Bool)

(assert (=> b!2632816 m!2976107))

(assert (=> b!2632816 m!2975077))

(declare-fun m!2976109 () Bool)

(assert (=> b!2632816 m!2976109))

(assert (=> b!2632816 m!2976109))

(declare-fun m!2976111 () Bool)

(assert (=> b!2632816 m!2976111))

(declare-fun m!2976113 () Bool)

(assert (=> b!2632817 m!2976113))

(declare-fun m!2976115 () Bool)

(assert (=> b!2632820 m!2976115))

(assert (=> b!2632820 m!2975077))

(assert (=> b!2632820 m!2976109))

(assert (=> b!2632820 m!2976109))

(assert (=> b!2632820 m!2976111))

(assert (=> d!746648 d!746918))

(declare-fun d!746926 () Bool)

(assert (=> d!746926 (= (list!11471 (_1!17538 (lex!1898 thiss!14197 rules!1726 (print!1637 thiss!14197 (singletonSeq!2056 separatorToken!156))))) (list!11474 (c!423090 (_1!17538 (lex!1898 thiss!14197 rules!1726 (print!1637 thiss!14197 (singletonSeq!2056 separatorToken!156)))))))))

(declare-fun bs!475846 () Bool)

(assert (= bs!475846 d!746926))

(declare-fun m!2976117 () Bool)

(assert (=> bs!475846 m!2976117))

(assert (=> d!746648 d!746926))

(declare-fun d!746928 () Bool)

(declare-fun charsToInt!0 (List!30599) (_ BitVec 32))

(assert (=> d!746928 (= (inv!16 (value!149816 separatorToken!156)) (= (charsToInt!0 (text!34474 (value!149816 separatorToken!156))) (value!149808 (value!149816 separatorToken!156))))))

(declare-fun bs!475847 () Bool)

(assert (= bs!475847 d!746928))

(declare-fun m!2976119 () Bool)

(assert (=> bs!475847 m!2976119))

(assert (=> b!2632310 d!746928))

(declare-fun d!746930 () Bool)

(assert (=> d!746930 (= (inv!41360 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (value!149816 separatorToken!156))) (isBalanced!2876 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (value!149816 separatorToken!156)))))))

(declare-fun bs!475848 () Bool)

(assert (= bs!475848 d!746930))

(declare-fun m!2976121 () Bool)

(assert (=> bs!475848 m!2976121))

(assert (=> tb!143615 d!746930))

(declare-fun lt!926664 () BalanceConc!18654)

(declare-fun e!1661266 () Bool)

(declare-fun b!2632824 () Bool)

(assert (=> b!2632824 (= e!1661266 (= (list!11470 lt!926664) (++!7427 (list!11470 call!169264) (list!11470 lt!926299))))))

(declare-fun b!2632821 () Bool)

(declare-fun res!1108542 () Bool)

(assert (=> b!2632821 (=> (not res!1108542) (not e!1661266))))

(assert (=> b!2632821 (= res!1108542 (isBalanced!2876 (++!7428 (c!423089 call!169264) (c!423089 lt!926299))))))

(declare-fun b!2632823 () Bool)

(declare-fun res!1108541 () Bool)

(assert (=> b!2632823 (=> (not res!1108541) (not e!1661266))))

(assert (=> b!2632823 (= res!1108541 (>= (height!1373 (++!7428 (c!423089 call!169264) (c!423089 lt!926299))) (max!0 (height!1373 (c!423089 call!169264)) (height!1373 (c!423089 lt!926299)))))))

(declare-fun b!2632822 () Bool)

(declare-fun res!1108543 () Bool)

(assert (=> b!2632822 (=> (not res!1108543) (not e!1661266))))

(assert (=> b!2632822 (= res!1108543 (<= (height!1373 (++!7428 (c!423089 call!169264) (c!423089 lt!926299))) (+ (max!0 (height!1373 (c!423089 call!169264)) (height!1373 (c!423089 lt!926299))) 1)))))

(declare-fun d!746932 () Bool)

(assert (=> d!746932 e!1661266))

(declare-fun res!1108540 () Bool)

(assert (=> d!746932 (=> (not res!1108540) (not e!1661266))))

(assert (=> d!746932 (= res!1108540 (appendAssocInst!631 (c!423089 call!169264) (c!423089 lt!926299)))))

(assert (=> d!746932 (= lt!926664 (BalanceConc!18655 (++!7428 (c!423089 call!169264) (c!423089 lt!926299))))))

(assert (=> d!746932 (= (++!7425 call!169264 lt!926299) lt!926664)))

(assert (= (and d!746932 res!1108540) b!2632821))

(assert (= (and b!2632821 res!1108542) b!2632822))

(assert (= (and b!2632822 res!1108543) b!2632823))

(assert (= (and b!2632823 res!1108541) b!2632824))

(declare-fun m!2976123 () Bool)

(assert (=> b!2632824 m!2976123))

(declare-fun m!2976125 () Bool)

(assert (=> b!2632824 m!2976125))

(assert (=> b!2632824 m!2975213))

(assert (=> b!2632824 m!2976125))

(assert (=> b!2632824 m!2975213))

(declare-fun m!2976127 () Bool)

(assert (=> b!2632824 m!2976127))

(declare-fun m!2976129 () Bool)

(assert (=> d!746932 m!2976129))

(declare-fun m!2976131 () Bool)

(assert (=> d!746932 m!2976131))

(declare-fun m!2976133 () Bool)

(assert (=> b!2632823 m!2976133))

(assert (=> b!2632823 m!2976131))

(assert (=> b!2632823 m!2976133))

(declare-fun m!2976135 () Bool)

(assert (=> b!2632823 m!2976135))

(declare-fun m!2976137 () Bool)

(assert (=> b!2632823 m!2976137))

(assert (=> b!2632823 m!2976131))

(declare-fun m!2976139 () Bool)

(assert (=> b!2632823 m!2976139))

(assert (=> b!2632823 m!2976135))

(assert (=> b!2632822 m!2976133))

(assert (=> b!2632822 m!2976131))

(assert (=> b!2632822 m!2976133))

(assert (=> b!2632822 m!2976135))

(assert (=> b!2632822 m!2976137))

(assert (=> b!2632822 m!2976131))

(assert (=> b!2632822 m!2976139))

(assert (=> b!2632822 m!2976135))

(assert (=> b!2632821 m!2976131))

(assert (=> b!2632821 m!2976131))

(declare-fun m!2976141 () Bool)

(assert (=> b!2632821 m!2976141))

(assert (=> b!2632078 d!746932))

(assert (=> b!2632262 d!746744))

(declare-fun d!746934 () Bool)

(declare-fun c!423271 () Bool)

(assert (=> d!746934 (= c!423271 ((_ is Node!9520) (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 lt!926207))) (value!149816 lt!926207)))))))

(declare-fun e!1661267 () Bool)

(assert (=> d!746934 (= (inv!41359 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 lt!926207))) (value!149816 lt!926207)))) e!1661267)))

(declare-fun b!2632825 () Bool)

(assert (=> b!2632825 (= e!1661267 (inv!41369 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 lt!926207))) (value!149816 lt!926207)))))))

(declare-fun b!2632826 () Bool)

(declare-fun e!1661268 () Bool)

(assert (=> b!2632826 (= e!1661267 e!1661268)))

(declare-fun res!1108544 () Bool)

(assert (=> b!2632826 (= res!1108544 (not ((_ is Leaf!14580) (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 lt!926207))) (value!149816 lt!926207))))))))

(assert (=> b!2632826 (=> res!1108544 e!1661268)))

(declare-fun b!2632827 () Bool)

(assert (=> b!2632827 (= e!1661268 (inv!41370 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 lt!926207))) (value!149816 lt!926207)))))))

(assert (= (and d!746934 c!423271) b!2632825))

(assert (= (and d!746934 (not c!423271)) b!2632826))

(assert (= (and b!2632826 (not res!1108544)) b!2632827))

(declare-fun m!2976143 () Bool)

(assert (=> b!2632825 m!2976143))

(declare-fun m!2976145 () Bool)

(assert (=> b!2632827 m!2976145))

(assert (=> b!2632091 d!746934))

(declare-fun d!746936 () Bool)

(assert (=> d!746936 true))

(declare-fun lt!926673 () Bool)

(assert (=> d!746936 (= lt!926673 (rulesValidInductive!1614 thiss!14197 rules!1726))))

(declare-fun lambda!98791 () Int)

(declare-fun forall!6390 (List!30601 Int) Bool)

(assert (=> d!746936 (= lt!926673 (forall!6390 rules!1726 lambda!98791))))

(assert (=> d!746936 (= (rulesValid!1721 thiss!14197 rules!1726) lt!926673)))

(declare-fun bs!475849 () Bool)

(assert (= bs!475849 d!746936))

(assert (=> bs!475849 m!2975269))

(declare-fun m!2976147 () Bool)

(assert (=> bs!475849 m!2976147))

(assert (=> d!746736 d!746936))

(declare-fun d!746938 () Bool)

(declare-fun res!1108547 () Bool)

(declare-fun e!1661283 () Bool)

(assert (=> d!746938 (=> res!1108547 e!1661283)))

(assert (=> d!746938 (= res!1108547 ((_ is Nil!30502) (list!11471 v!6381)))))

(assert (=> d!746938 (= (forall!6385 (list!11471 v!6381) lambda!98769) e!1661283)))

(declare-fun b!2632856 () Bool)

(declare-fun e!1661284 () Bool)

(assert (=> b!2632856 (= e!1661283 e!1661284)))

(declare-fun res!1108548 () Bool)

(assert (=> b!2632856 (=> (not res!1108548) (not e!1661284))))

(assert (=> b!2632856 (= res!1108548 (dynLambda!13068 lambda!98769 (h!35922 (list!11471 v!6381))))))

(declare-fun b!2632857 () Bool)

(assert (=> b!2632857 (= e!1661284 (forall!6385 (t!216475 (list!11471 v!6381)) lambda!98769))))

(assert (= (and d!746938 (not res!1108547)) b!2632856))

(assert (= (and b!2632856 res!1108548) b!2632857))

(declare-fun b_lambda!79269 () Bool)

(assert (=> (not b_lambda!79269) (not b!2632856)))

(declare-fun m!2976149 () Bool)

(assert (=> b!2632856 m!2976149))

(declare-fun m!2976151 () Bool)

(assert (=> b!2632857 m!2976151))

(assert (=> d!746686 d!746938))

(assert (=> d!746686 d!746708))

(declare-fun d!746940 () Bool)

(declare-fun lt!926674 () Bool)

(assert (=> d!746940 (= lt!926674 (forall!6385 (list!11471 v!6381) lambda!98769))))

(assert (=> d!746940 (= lt!926674 (forall!6386 (c!423090 v!6381) lambda!98769))))

(assert (=> d!746940 (= (forall!6384 v!6381 lambda!98769) lt!926674)))

(declare-fun bs!475850 () Bool)

(assert (= bs!475850 d!746940))

(assert (=> bs!475850 m!2975027))

(assert (=> bs!475850 m!2975027))

(assert (=> bs!475850 m!2975413))

(declare-fun m!2976153 () Bool)

(assert (=> bs!475850 m!2976153))

(assert (=> d!746686 d!746940))

(assert (=> d!746686 d!746696))

(declare-fun lt!926679 () Bool)

(declare-fun d!746942 () Bool)

(assert (=> d!746942 (= lt!926679 (isEmpty!17392 (list!11470 (_2!17538 (lex!1898 thiss!14197 rules!1726 (print!1637 thiss!14197 (singletonSeq!2056 separatorToken!156)))))))))

(declare-fun isEmpty!17397 (Conc!9520) Bool)

(assert (=> d!746942 (= lt!926679 (isEmpty!17397 (c!423089 (_2!17538 (lex!1898 thiss!14197 rules!1726 (print!1637 thiss!14197 (singletonSeq!2056 separatorToken!156)))))))))

(assert (=> d!746942 (= (isEmpty!17390 (_2!17538 (lex!1898 thiss!14197 rules!1726 (print!1637 thiss!14197 (singletonSeq!2056 separatorToken!156))))) lt!926679)))

(declare-fun bs!475851 () Bool)

(assert (= bs!475851 d!746942))

(declare-fun m!2976155 () Bool)

(assert (=> bs!475851 m!2976155))

(assert (=> bs!475851 m!2976155))

(declare-fun m!2976157 () Bool)

(assert (=> bs!475851 m!2976157))

(declare-fun m!2976159 () Bool)

(assert (=> bs!475851 m!2976159))

(assert (=> b!2632005 d!746942))

(assert (=> b!2632005 d!746918))

(assert (=> b!2632005 d!746914))

(assert (=> b!2632005 d!746910))

(declare-fun d!746944 () Bool)

(declare-fun lt!926680 () Token!8748)

(assert (=> d!746944 (contains!5785 (tail!4276 lt!926208) lt!926680)))

(declare-fun e!1661290 () Token!8748)

(assert (=> d!746944 (= lt!926680 e!1661290)))

(declare-fun c!423288 () Bool)

(assert (=> d!746944 (= c!423288 (= (- from!862 1) 0))))

(declare-fun e!1661289 () Bool)

(assert (=> d!746944 e!1661289))

(declare-fun res!1108549 () Bool)

(assert (=> d!746944 (=> (not res!1108549) (not e!1661289))))

(assert (=> d!746944 (= res!1108549 (<= 0 (- from!862 1)))))

(assert (=> d!746944 (= (apply!7266 (tail!4276 lt!926208) (- from!862 1)) lt!926680)))

(declare-fun b!2632866 () Bool)

(assert (=> b!2632866 (= e!1661289 (< (- from!862 1) (size!23581 (tail!4276 lt!926208))))))

(declare-fun b!2632867 () Bool)

(assert (=> b!2632867 (= e!1661290 (head!6038 (tail!4276 lt!926208)))))

(declare-fun b!2632868 () Bool)

(assert (=> b!2632868 (= e!1661290 (apply!7266 (tail!4276 (tail!4276 lt!926208)) (- (- from!862 1) 1)))))

(assert (= (and d!746944 res!1108549) b!2632866))

(assert (= (and d!746944 c!423288) b!2632867))

(assert (= (and d!746944 (not c!423288)) b!2632868))

(assert (=> d!746944 m!2975491))

(declare-fun m!2976161 () Bool)

(assert (=> d!746944 m!2976161))

(assert (=> b!2632866 m!2975491))

(declare-fun m!2976163 () Bool)

(assert (=> b!2632866 m!2976163))

(assert (=> b!2632867 m!2975491))

(declare-fun m!2976165 () Bool)

(assert (=> b!2632867 m!2976165))

(assert (=> b!2632868 m!2975491))

(declare-fun m!2976167 () Bool)

(assert (=> b!2632868 m!2976167))

(assert (=> b!2632868 m!2976167))

(declare-fun m!2976169 () Bool)

(assert (=> b!2632868 m!2976169))

(assert (=> b!2632283 d!746944))

(declare-fun d!746946 () Bool)

(assert (=> d!746946 (= (tail!4276 lt!926208) (t!216475 lt!926208))))

(assert (=> b!2632283 d!746946))

(declare-fun bs!475852 () Bool)

(declare-fun d!746948 () Bool)

(assert (= bs!475852 (and d!746948 d!746806)))

(declare-fun lambda!98792 () Int)

(assert (=> bs!475852 (= (and (= (toChars!6412 (transformation!4639 (h!35921 rules!1726))) (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156)))) (= (toValue!6553 (transformation!4639 (h!35921 rules!1726))) (toValue!6553 (transformation!4639 (rule!7021 separatorToken!156))))) (= lambda!98792 lambda!98777))))

(declare-fun bs!475853 () Bool)

(assert (= bs!475853 (and d!746948 b!2632561)))

(assert (=> bs!475853 (= lambda!98792 lambda!98782)))

(assert (=> d!746948 true))

(assert (=> d!746948 (< (dynLambda!13066 order!16539 (toChars!6412 (transformation!4639 (h!35921 rules!1726)))) (dynLambda!13071 order!16541 lambda!98792))))

(assert (=> d!746948 true))

(assert (=> d!746948 (< (dynLambda!13064 order!16535 (toValue!6553 (transformation!4639 (h!35921 rules!1726)))) (dynLambda!13071 order!16541 lambda!98792))))

(assert (=> d!746948 (= (semiInverseModEq!1916 (toChars!6412 (transformation!4639 (h!35921 rules!1726))) (toValue!6553 (transformation!4639 (h!35921 rules!1726)))) (Forall!1179 lambda!98792))))

(declare-fun bs!475854 () Bool)

(assert (= bs!475854 d!746948))

(declare-fun m!2976171 () Bool)

(assert (=> bs!475854 m!2976171))

(assert (=> d!746742 d!746948))

(declare-fun d!746950 () Bool)

(assert (=> d!746950 (= (tail!4276 (drop!1635 lt!926208 from!862)) (t!216475 (drop!1635 lt!926208 from!862)))))

(assert (=> d!746720 d!746950))

(assert (=> d!746720 d!746712))

(declare-fun b!2632869 () Bool)

(declare-fun e!1661294 () List!30602)

(assert (=> b!2632869 (= e!1661294 lt!926208)))

(declare-fun b!2632870 () Bool)

(declare-fun e!1661292 () Int)

(assert (=> b!2632870 (= e!1661292 0)))

(declare-fun b!2632871 () Bool)

(assert (=> b!2632871 (= e!1661294 (drop!1635 (t!216475 lt!926208) (- (+ from!862 1) 1)))))

(declare-fun b!2632872 () Bool)

(declare-fun e!1661293 () List!30602)

(assert (=> b!2632872 (= e!1661293 e!1661294)))

(declare-fun c!423291 () Bool)

(assert (=> b!2632872 (= c!423291 (<= (+ from!862 1) 0))))

(declare-fun b!2632873 () Bool)

(declare-fun e!1661295 () Int)

(declare-fun call!169375 () Int)

(assert (=> b!2632873 (= e!1661295 call!169375)))

(declare-fun d!746952 () Bool)

(declare-fun e!1661291 () Bool)

(assert (=> d!746952 e!1661291))

(declare-fun res!1108550 () Bool)

(assert (=> d!746952 (=> (not res!1108550) (not e!1661291))))

(declare-fun lt!926681 () List!30602)

(assert (=> d!746952 (= res!1108550 (= ((_ map implies) (content!4307 lt!926681) (content!4307 lt!926208)) ((as const (InoxSet Token!8748)) true)))))

(assert (=> d!746952 (= lt!926681 e!1661293)))

(declare-fun c!423292 () Bool)

(assert (=> d!746952 (= c!423292 ((_ is Nil!30502) lt!926208))))

(assert (=> d!746952 (= (drop!1635 lt!926208 (+ from!862 1)) lt!926681)))

(declare-fun b!2632874 () Bool)

(assert (=> b!2632874 (= e!1661291 (= (size!23581 lt!926681) e!1661295))))

(declare-fun c!423290 () Bool)

(assert (=> b!2632874 (= c!423290 (<= (+ from!862 1) 0))))

(declare-fun b!2632875 () Bool)

(assert (=> b!2632875 (= e!1661292 (- call!169375 (+ from!862 1)))))

(declare-fun b!2632876 () Bool)

(assert (=> b!2632876 (= e!1661293 Nil!30502)))

(declare-fun bm!169370 () Bool)

(assert (=> bm!169370 (= call!169375 (size!23581 lt!926208))))

(declare-fun b!2632877 () Bool)

(assert (=> b!2632877 (= e!1661295 e!1661292)))

(declare-fun c!423289 () Bool)

(assert (=> b!2632877 (= c!423289 (>= (+ from!862 1) call!169375))))

(assert (= (and d!746952 c!423292) b!2632876))

(assert (= (and d!746952 (not c!423292)) b!2632872))

(assert (= (and b!2632872 c!423291) b!2632869))

(assert (= (and b!2632872 (not c!423291)) b!2632871))

(assert (= (and d!746952 res!1108550) b!2632874))

(assert (= (and b!2632874 c!423290) b!2632873))

(assert (= (and b!2632874 (not c!423290)) b!2632877))

(assert (= (and b!2632877 c!423289) b!2632870))

(assert (= (and b!2632877 (not c!423289)) b!2632875))

(assert (= (or b!2632873 b!2632877 b!2632875) bm!169370))

(declare-fun m!2976173 () Bool)

(assert (=> b!2632871 m!2976173))

(declare-fun m!2976175 () Bool)

(assert (=> d!746952 m!2976175))

(assert (=> d!746952 m!2975449))

(declare-fun m!2976177 () Bool)

(assert (=> b!2632874 m!2976177))

(assert (=> bm!169370 m!2975461))

(assert (=> d!746720 d!746952))

(declare-fun d!746954 () Bool)

(assert (=> d!746954 (= (tail!4276 (drop!1635 lt!926208 from!862)) (drop!1635 lt!926208 (+ from!862 1)))))

(assert (=> d!746954 true))

(declare-fun _$28!526 () Unit!44507)

(assert (=> d!746954 (= (choose!15620 lt!926208 from!862) _$28!526)))

(declare-fun bs!475855 () Bool)

(assert (= bs!475855 d!746954))

(assert (=> bs!475855 m!2975009))

(assert (=> bs!475855 m!2975009))

(assert (=> bs!475855 m!2975467))

(assert (=> bs!475855 m!2975469))

(assert (=> d!746720 d!746954))

(declare-fun d!746956 () Bool)

(declare-fun res!1108551 () Bool)

(declare-fun e!1661296 () Bool)

(assert (=> d!746956 (=> res!1108551 e!1661296)))

(assert (=> d!746956 (= res!1108551 (not ((_ is Cons!30501) (t!216474 rules!1726))))))

(assert (=> d!746956 (= (sepAndNonSepRulesDisjointChars!1212 rules!1726 (t!216474 rules!1726)) e!1661296)))

(declare-fun b!2632878 () Bool)

(declare-fun e!1661297 () Bool)

(assert (=> b!2632878 (= e!1661296 e!1661297)))

(declare-fun res!1108552 () Bool)

(assert (=> b!2632878 (=> (not res!1108552) (not e!1661297))))

(assert (=> b!2632878 (= res!1108552 (ruleDisjointCharsFromAllFromOtherType!522 (h!35921 (t!216474 rules!1726)) rules!1726))))

(declare-fun b!2632879 () Bool)

(assert (=> b!2632879 (= e!1661297 (sepAndNonSepRulesDisjointChars!1212 rules!1726 (t!216474 (t!216474 rules!1726))))))

(assert (= (and d!746956 (not res!1108551)) b!2632878))

(assert (= (and b!2632878 res!1108552) b!2632879))

(declare-fun m!2976179 () Bool)

(assert (=> b!2632878 m!2976179))

(declare-fun m!2976181 () Bool)

(assert (=> b!2632879 m!2976181))

(assert (=> b!2632320 d!746956))

(declare-fun d!746958 () Bool)

(declare-fun c!423293 () Bool)

(assert (=> d!746958 (= c!423293 ((_ is Node!9521) (left!23564 (c!423090 v!6381))))))

(declare-fun e!1661298 () Bool)

(assert (=> d!746958 (= (inv!41356 (left!23564 (c!423090 v!6381))) e!1661298)))

(declare-fun b!2632880 () Bool)

(assert (=> b!2632880 (= e!1661298 (inv!41363 (left!23564 (c!423090 v!6381))))))

(declare-fun b!2632881 () Bool)

(declare-fun e!1661299 () Bool)

(assert (=> b!2632881 (= e!1661298 e!1661299)))

(declare-fun res!1108553 () Bool)

(assert (=> b!2632881 (= res!1108553 (not ((_ is Leaf!14581) (left!23564 (c!423090 v!6381)))))))

(assert (=> b!2632881 (=> res!1108553 e!1661299)))

(declare-fun b!2632882 () Bool)

(assert (=> b!2632882 (= e!1661299 (inv!41365 (left!23564 (c!423090 v!6381))))))

(assert (= (and d!746958 c!423293) b!2632880))

(assert (= (and d!746958 (not c!423293)) b!2632881))

(assert (= (and b!2632881 (not res!1108553)) b!2632882))

(declare-fun m!2976183 () Bool)

(assert (=> b!2632880 m!2976183))

(declare-fun m!2976185 () Bool)

(assert (=> b!2632882 m!2976185))

(assert (=> b!2632412 d!746958))

(declare-fun d!746960 () Bool)

(declare-fun c!423294 () Bool)

(assert (=> d!746960 (= c!423294 ((_ is Node!9521) (right!23894 (c!423090 v!6381))))))

(declare-fun e!1661300 () Bool)

(assert (=> d!746960 (= (inv!41356 (right!23894 (c!423090 v!6381))) e!1661300)))

(declare-fun b!2632883 () Bool)

(assert (=> b!2632883 (= e!1661300 (inv!41363 (right!23894 (c!423090 v!6381))))))

(declare-fun b!2632884 () Bool)

(declare-fun e!1661301 () Bool)

(assert (=> b!2632884 (= e!1661300 e!1661301)))

(declare-fun res!1108554 () Bool)

(assert (=> b!2632884 (= res!1108554 (not ((_ is Leaf!14581) (right!23894 (c!423090 v!6381)))))))

(assert (=> b!2632884 (=> res!1108554 e!1661301)))

(declare-fun b!2632885 () Bool)

(assert (=> b!2632885 (= e!1661301 (inv!41365 (right!23894 (c!423090 v!6381))))))

(assert (= (and d!746960 c!423294) b!2632883))

(assert (= (and d!746960 (not c!423294)) b!2632884))

(assert (= (and b!2632884 (not res!1108554)) b!2632885))

(declare-fun m!2976187 () Bool)

(assert (=> b!2632883 m!2976187))

(declare-fun m!2976189 () Bool)

(assert (=> b!2632885 m!2976189))

(assert (=> b!2632412 d!746960))

(declare-fun d!746962 () Bool)

(declare-fun lt!926684 () Int)

(assert (=> d!746962 (>= lt!926684 0)))

(declare-fun e!1661306 () Int)

(assert (=> d!746962 (= lt!926684 e!1661306)))

(declare-fun c!423297 () Bool)

(assert (=> d!746962 (= c!423297 ((_ is Nil!30500) (originalCharacters!5405 separatorToken!156)))))

(assert (=> d!746962 (= (size!23580 (originalCharacters!5405 separatorToken!156)) lt!926684)))

(declare-fun b!2632898 () Bool)

(assert (=> b!2632898 (= e!1661306 0)))

(declare-fun b!2632899 () Bool)

(assert (=> b!2632899 (= e!1661306 (+ 1 (size!23580 (t!216473 (originalCharacters!5405 separatorToken!156)))))))

(assert (= (and d!746962 c!423297) b!2632898))

(assert (= (and d!746962 (not c!423297)) b!2632899))

(declare-fun m!2976191 () Bool)

(assert (=> b!2632899 m!2976191))

(assert (=> b!2632222 d!746962))

(declare-fun d!746964 () Bool)

(declare-fun lt!926685 () Token!8748)

(assert (=> d!746964 (= lt!926685 (apply!7266 (list!11471 v!6381) (+ 1 from!862)))))

(assert (=> d!746964 (= lt!926685 (apply!7267 (c!423090 v!6381) (+ 1 from!862)))))

(declare-fun e!1661307 () Bool)

(assert (=> d!746964 e!1661307))

(declare-fun res!1108563 () Bool)

(assert (=> d!746964 (=> (not res!1108563) (not e!1661307))))

(assert (=> d!746964 (= res!1108563 (<= 0 (+ 1 from!862)))))

(assert (=> d!746964 (= (apply!7265 v!6381 (+ 1 from!862)) lt!926685)))

(declare-fun b!2632900 () Bool)

(assert (=> b!2632900 (= e!1661307 (< (+ 1 from!862) (size!23579 v!6381)))))

(assert (= (and d!746964 res!1108563) b!2632900))

(assert (=> d!746964 m!2975027))

(assert (=> d!746964 m!2975027))

(declare-fun m!2976193 () Bool)

(assert (=> d!746964 m!2976193))

(declare-fun m!2976195 () Bool)

(assert (=> d!746964 m!2976195))

(assert (=> b!2632900 m!2975045))

(assert (=> b!2632079 d!746964))

(declare-fun d!746966 () Bool)

(declare-fun lt!926686 () Int)

(assert (=> d!746966 (>= lt!926686 0)))

(declare-fun e!1661308 () Int)

(assert (=> d!746966 (= lt!926686 e!1661308)))

(declare-fun c!423298 () Bool)

(assert (=> d!746966 (= c!423298 ((_ is Nil!30502) lt!926435))))

(assert (=> d!746966 (= (size!23581 lt!926435) lt!926686)))

(declare-fun b!2632901 () Bool)

(assert (=> b!2632901 (= e!1661308 0)))

(declare-fun b!2632902 () Bool)

(assert (=> b!2632902 (= e!1661308 (+ 1 (size!23581 (t!216475 lt!926435))))))

(assert (= (and d!746966 c!423298) b!2632901))

(assert (= (and d!746966 (not c!423298)) b!2632902))

(declare-fun m!2976197 () Bool)

(assert (=> b!2632902 m!2976197))

(assert (=> b!2632271 d!746966))

(assert (=> b!2632094 d!746710))

(declare-fun d!746968 () Bool)

(declare-fun isEmpty!17398 (Option!6028) Bool)

(assert (=> d!746968 (= (isDefined!4791 lt!926333) (not (isEmpty!17398 lt!926333)))))

(declare-fun bs!475856 () Bool)

(assert (= bs!475856 d!746968))

(declare-fun m!2976199 () Bool)

(assert (=> bs!475856 m!2976199))

(assert (=> b!2632118 d!746968))

(declare-fun d!746970 () Bool)

(assert (=> d!746970 (= (head!6038 (drop!1635 lt!926305 (+ 1 from!862))) (apply!7266 lt!926305 (+ 1 from!862)))))

(declare-fun lt!926687 () Unit!44507)

(assert (=> d!746970 (= lt!926687 (choose!15621 lt!926305 (+ 1 from!862)))))

(declare-fun e!1661309 () Bool)

(assert (=> d!746970 e!1661309))

(declare-fun res!1108564 () Bool)

(assert (=> d!746970 (=> (not res!1108564) (not e!1661309))))

(assert (=> d!746970 (= res!1108564 (>= (+ 1 from!862) 0))))

(assert (=> d!746970 (= (lemmaDropApply!850 lt!926305 (+ 1 from!862)) lt!926687)))

(declare-fun b!2632903 () Bool)

(assert (=> b!2632903 (= e!1661309 (< (+ 1 from!862) (size!23581 lt!926305)))))

(assert (= (and d!746970 res!1108564) b!2632903))

(assert (=> d!746970 m!2975193))

(assert (=> d!746970 m!2975193))

(assert (=> d!746970 m!2975197))

(assert (=> d!746970 m!2975207))

(declare-fun m!2976201 () Bool)

(assert (=> d!746970 m!2976201))

(declare-fun m!2976203 () Bool)

(assert (=> b!2632903 m!2976203))

(assert (=> b!2632074 d!746970))

(declare-fun d!746972 () Bool)

(assert (=> d!746972 (= (tail!4276 (drop!1635 lt!926298 (+ 1 from!862))) (drop!1635 lt!926298 (+ 1 from!862 1)))))

(declare-fun lt!926688 () Unit!44507)

(assert (=> d!746972 (= lt!926688 (choose!15620 lt!926298 (+ 1 from!862)))))

(declare-fun e!1661310 () Bool)

(assert (=> d!746972 e!1661310))

(declare-fun res!1108565 () Bool)

(assert (=> d!746972 (=> (not res!1108565) (not e!1661310))))

(assert (=> d!746972 (= res!1108565 (>= (+ 1 from!862) 0))))

(assert (=> d!746972 (= (lemmaDropTail!824 lt!926298 (+ 1 from!862)) lt!926688)))

(declare-fun b!2632904 () Bool)

(assert (=> b!2632904 (= e!1661310 (< (+ 1 from!862) (size!23581 lt!926298)))))

(assert (= (and d!746972 res!1108565) b!2632904))

(assert (=> d!746972 m!2975199))

(assert (=> d!746972 m!2975199))

(assert (=> d!746972 m!2975201))

(assert (=> d!746972 m!2975209))

(declare-fun m!2976205 () Bool)

(assert (=> d!746972 m!2976205))

(declare-fun m!2976207 () Bool)

(assert (=> b!2632904 m!2976207))

(assert (=> b!2632074 d!746972))

(assert (=> b!2632074 d!746708))

(declare-fun b!2632905 () Bool)

(declare-fun e!1661314 () List!30602)

(assert (=> b!2632905 (= e!1661314 lt!926298)))

(declare-fun b!2632906 () Bool)

(declare-fun e!1661312 () Int)

(assert (=> b!2632906 (= e!1661312 0)))

(declare-fun b!2632907 () Bool)

(assert (=> b!2632907 (= e!1661314 (drop!1635 (t!216475 lt!926298) (- (+ 1 from!862) 1)))))

(declare-fun b!2632908 () Bool)

(declare-fun e!1661313 () List!30602)

(assert (=> b!2632908 (= e!1661313 e!1661314)))

(declare-fun c!423301 () Bool)

(assert (=> b!2632908 (= c!423301 (<= (+ 1 from!862) 0))))

(declare-fun b!2632909 () Bool)

(declare-fun e!1661315 () Int)

(declare-fun call!169384 () Int)

(assert (=> b!2632909 (= e!1661315 call!169384)))

(declare-fun d!746974 () Bool)

(declare-fun e!1661311 () Bool)

(assert (=> d!746974 e!1661311))

(declare-fun res!1108566 () Bool)

(assert (=> d!746974 (=> (not res!1108566) (not e!1661311))))

(declare-fun lt!926689 () List!30602)

(assert (=> d!746974 (= res!1108566 (= ((_ map implies) (content!4307 lt!926689) (content!4307 lt!926298)) ((as const (InoxSet Token!8748)) true)))))

(assert (=> d!746974 (= lt!926689 e!1661313)))

(declare-fun c!423302 () Bool)

(assert (=> d!746974 (= c!423302 ((_ is Nil!30502) lt!926298))))

(assert (=> d!746974 (= (drop!1635 lt!926298 (+ 1 from!862)) lt!926689)))

(declare-fun b!2632910 () Bool)

(assert (=> b!2632910 (= e!1661311 (= (size!23581 lt!926689) e!1661315))))

(declare-fun c!423300 () Bool)

(assert (=> b!2632910 (= c!423300 (<= (+ 1 from!862) 0))))

(declare-fun b!2632911 () Bool)

(assert (=> b!2632911 (= e!1661312 (- call!169384 (+ 1 from!862)))))

(declare-fun b!2632912 () Bool)

(assert (=> b!2632912 (= e!1661313 Nil!30502)))

(declare-fun bm!169379 () Bool)

(assert (=> bm!169379 (= call!169384 (size!23581 lt!926298))))

(declare-fun b!2632913 () Bool)

(assert (=> b!2632913 (= e!1661315 e!1661312)))

(declare-fun c!423299 () Bool)

(assert (=> b!2632913 (= c!423299 (>= (+ 1 from!862) call!169384))))

(assert (= (and d!746974 c!423302) b!2632912))

(assert (= (and d!746974 (not c!423302)) b!2632908))

(assert (= (and b!2632908 c!423301) b!2632905))

(assert (= (and b!2632908 (not c!423301)) b!2632907))

(assert (= (and d!746974 res!1108566) b!2632910))

(assert (= (and b!2632910 c!423300) b!2632909))

(assert (= (and b!2632910 (not c!423300)) b!2632913))

(assert (= (and b!2632913 c!423299) b!2632906))

(assert (= (and b!2632913 (not c!423299)) b!2632911))

(assert (= (or b!2632909 b!2632913 b!2632911) bm!169379))

(declare-fun m!2976209 () Bool)

(assert (=> b!2632907 m!2976209))

(declare-fun m!2976211 () Bool)

(assert (=> d!746974 m!2976211))

(declare-fun m!2976213 () Bool)

(assert (=> d!746974 m!2976213))

(declare-fun m!2976215 () Bool)

(assert (=> b!2632910 m!2976215))

(assert (=> bm!169379 m!2976207))

(assert (=> b!2632074 d!746974))

(declare-fun d!746976 () Bool)

(assert (=> d!746976 (= (tail!4276 (drop!1635 lt!926298 (+ 1 from!862))) (t!216475 (drop!1635 lt!926298 (+ 1 from!862))))))

(assert (=> b!2632074 d!746976))

(declare-fun b!2632914 () Bool)

(declare-fun e!1661319 () List!30602)

(assert (=> b!2632914 (= e!1661319 lt!926305)))

(declare-fun b!2632915 () Bool)

(declare-fun e!1661317 () Int)

(assert (=> b!2632915 (= e!1661317 0)))

(declare-fun b!2632916 () Bool)

(assert (=> b!2632916 (= e!1661319 (drop!1635 (t!216475 lt!926305) (- (+ 1 from!862) 1)))))

(declare-fun b!2632917 () Bool)

(declare-fun e!1661318 () List!30602)

(assert (=> b!2632917 (= e!1661318 e!1661319)))

(declare-fun c!423305 () Bool)

(assert (=> b!2632917 (= c!423305 (<= (+ 1 from!862) 0))))

(declare-fun b!2632918 () Bool)

(declare-fun e!1661320 () Int)

(declare-fun call!169385 () Int)

(assert (=> b!2632918 (= e!1661320 call!169385)))

(declare-fun d!746978 () Bool)

(declare-fun e!1661316 () Bool)

(assert (=> d!746978 e!1661316))

(declare-fun res!1108567 () Bool)

(assert (=> d!746978 (=> (not res!1108567) (not e!1661316))))

(declare-fun lt!926690 () List!30602)

(assert (=> d!746978 (= res!1108567 (= ((_ map implies) (content!4307 lt!926690) (content!4307 lt!926305)) ((as const (InoxSet Token!8748)) true)))))

(assert (=> d!746978 (= lt!926690 e!1661318)))

(declare-fun c!423306 () Bool)

(assert (=> d!746978 (= c!423306 ((_ is Nil!30502) lt!926305))))

(assert (=> d!746978 (= (drop!1635 lt!926305 (+ 1 from!862)) lt!926690)))

(declare-fun b!2632919 () Bool)

(assert (=> b!2632919 (= e!1661316 (= (size!23581 lt!926690) e!1661320))))

(declare-fun c!423304 () Bool)

(assert (=> b!2632919 (= c!423304 (<= (+ 1 from!862) 0))))

(declare-fun b!2632920 () Bool)

(assert (=> b!2632920 (= e!1661317 (- call!169385 (+ 1 from!862)))))

(declare-fun b!2632921 () Bool)

(assert (=> b!2632921 (= e!1661318 Nil!30502)))

(declare-fun bm!169380 () Bool)

(assert (=> bm!169380 (= call!169385 (size!23581 lt!926305))))

(declare-fun b!2632922 () Bool)

(assert (=> b!2632922 (= e!1661320 e!1661317)))

(declare-fun c!423303 () Bool)

(assert (=> b!2632922 (= c!423303 (>= (+ 1 from!862) call!169385))))

(assert (= (and d!746978 c!423306) b!2632921))

(assert (= (and d!746978 (not c!423306)) b!2632917))

(assert (= (and b!2632917 c!423305) b!2632914))

(assert (= (and b!2632917 (not c!423305)) b!2632916))

(assert (= (and d!746978 res!1108567) b!2632919))

(assert (= (and b!2632919 c!423304) b!2632918))

(assert (= (and b!2632919 (not c!423304)) b!2632922))

(assert (= (and b!2632922 c!423303) b!2632915))

(assert (= (and b!2632922 (not c!423303)) b!2632920))

(assert (= (or b!2632918 b!2632922 b!2632920) bm!169380))

(declare-fun m!2976217 () Bool)

(assert (=> b!2632916 m!2976217))

(declare-fun m!2976219 () Bool)

(assert (=> d!746978 m!2976219))

(declare-fun m!2976221 () Bool)

(assert (=> d!746978 m!2976221))

(declare-fun m!2976223 () Bool)

(assert (=> b!2632919 m!2976223))

(assert (=> bm!169380 m!2976203))

(assert (=> b!2632074 d!746978))

(declare-fun d!746980 () Bool)

(declare-fun lt!926691 () BalanceConc!18654)

(assert (=> d!746980 (= (list!11470 lt!926691) (originalCharacters!5405 (apply!7265 v!6381 (+ 1 from!862))))))

(assert (=> d!746980 (= lt!926691 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 (apply!7265 v!6381 (+ 1 from!862))))) (value!149816 (apply!7265 v!6381 (+ 1 from!862)))))))

(assert (=> d!746980 (= (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862))) lt!926691)))

(declare-fun b_lambda!79271 () Bool)

(assert (=> (not b_lambda!79271) (not d!746980)))

(declare-fun t!216542 () Bool)

(declare-fun tb!143643 () Bool)

(assert (=> (and b!2631972 (= (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (toChars!6412 (transformation!4639 (rule!7021 (apply!7265 v!6381 (+ 1 from!862)))))) t!216542) tb!143643))

(declare-fun b!2632923 () Bool)

(declare-fun tp!834549 () Bool)

(declare-fun e!1661321 () Bool)

(assert (=> b!2632923 (= e!1661321 (and (inv!41359 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 (apply!7265 v!6381 (+ 1 from!862))))) (value!149816 (apply!7265 v!6381 (+ 1 from!862)))))) tp!834549))))

(declare-fun result!178538 () Bool)

(assert (=> tb!143643 (= result!178538 (and (inv!41360 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 (apply!7265 v!6381 (+ 1 from!862))))) (value!149816 (apply!7265 v!6381 (+ 1 from!862))))) e!1661321))))

(assert (= tb!143643 b!2632923))

(declare-fun m!2976225 () Bool)

(assert (=> b!2632923 m!2976225))

(declare-fun m!2976227 () Bool)

(assert (=> tb!143643 m!2976227))

(assert (=> d!746980 t!216542))

(declare-fun b_and!192863 () Bool)

(assert (= b_and!192857 (and (=> t!216542 result!178538) b_and!192863)))

(declare-fun t!216544 () Bool)

(declare-fun tb!143645 () Bool)

(assert (=> (and b!2631973 (= (toChars!6412 (transformation!4639 (h!35921 rules!1726))) (toChars!6412 (transformation!4639 (rule!7021 (apply!7265 v!6381 (+ 1 from!862)))))) t!216544) tb!143645))

(declare-fun result!178540 () Bool)

(assert (= result!178540 result!178538))

(assert (=> d!746980 t!216544))

(declare-fun b_and!192865 () Bool)

(assert (= b_and!192859 (and (=> t!216544 result!178540) b_and!192865)))

(declare-fun tb!143647 () Bool)

(declare-fun t!216546 () Bool)

(assert (=> (and b!2632394 (= (toChars!6412 (transformation!4639 (h!35921 (t!216474 rules!1726)))) (toChars!6412 (transformation!4639 (rule!7021 (apply!7265 v!6381 (+ 1 from!862)))))) t!216546) tb!143647))

(declare-fun result!178542 () Bool)

(assert (= result!178542 result!178538))

(assert (=> d!746980 t!216546))

(declare-fun b_and!192867 () Bool)

(assert (= b_and!192861 (and (=> t!216546 result!178542) b_and!192867)))

(declare-fun m!2976229 () Bool)

(assert (=> d!746980 m!2976229))

(declare-fun m!2976231 () Bool)

(assert (=> d!746980 m!2976231))

(assert (=> b!2632074 d!746980))

(declare-fun b!2632924 () Bool)

(declare-fun e!1661325 () List!30602)

(assert (=> b!2632924 (= e!1661325 lt!926298)))

(declare-fun b!2632925 () Bool)

(declare-fun e!1661323 () Int)

(assert (=> b!2632925 (= e!1661323 0)))

(declare-fun b!2632926 () Bool)

(assert (=> b!2632926 (= e!1661325 (drop!1635 (t!216475 lt!926298) (- (+ 1 from!862 1) 1)))))

(declare-fun b!2632927 () Bool)

(declare-fun e!1661324 () List!30602)

(assert (=> b!2632927 (= e!1661324 e!1661325)))

(declare-fun c!423309 () Bool)

(assert (=> b!2632927 (= c!423309 (<= (+ 1 from!862 1) 0))))

(declare-fun b!2632928 () Bool)

(declare-fun e!1661326 () Int)

(declare-fun call!169386 () Int)

(assert (=> b!2632928 (= e!1661326 call!169386)))

(declare-fun d!746982 () Bool)

(declare-fun e!1661322 () Bool)

(assert (=> d!746982 e!1661322))

(declare-fun res!1108568 () Bool)

(assert (=> d!746982 (=> (not res!1108568) (not e!1661322))))

(declare-fun lt!926692 () List!30602)

(assert (=> d!746982 (= res!1108568 (= ((_ map implies) (content!4307 lt!926692) (content!4307 lt!926298)) ((as const (InoxSet Token!8748)) true)))))

(assert (=> d!746982 (= lt!926692 e!1661324)))

(declare-fun c!423310 () Bool)

(assert (=> d!746982 (= c!423310 ((_ is Nil!30502) lt!926298))))

(assert (=> d!746982 (= (drop!1635 lt!926298 (+ 1 from!862 1)) lt!926692)))

(declare-fun b!2632929 () Bool)

(assert (=> b!2632929 (= e!1661322 (= (size!23581 lt!926692) e!1661326))))

(declare-fun c!423308 () Bool)

(assert (=> b!2632929 (= c!423308 (<= (+ 1 from!862 1) 0))))

(declare-fun b!2632930 () Bool)

(assert (=> b!2632930 (= e!1661323 (- call!169386 (+ 1 from!862 1)))))

(declare-fun b!2632931 () Bool)

(assert (=> b!2632931 (= e!1661324 Nil!30502)))

(declare-fun bm!169381 () Bool)

(assert (=> bm!169381 (= call!169386 (size!23581 lt!926298))))

(declare-fun b!2632932 () Bool)

(assert (=> b!2632932 (= e!1661326 e!1661323)))

(declare-fun c!423307 () Bool)

(assert (=> b!2632932 (= c!423307 (>= (+ 1 from!862 1) call!169386))))

(assert (= (and d!746982 c!423310) b!2632931))

(assert (= (and d!746982 (not c!423310)) b!2632927))

(assert (= (and b!2632927 c!423309) b!2632924))

(assert (= (and b!2632927 (not c!423309)) b!2632926))

(assert (= (and d!746982 res!1108568) b!2632929))

(assert (= (and b!2632929 c!423308) b!2632928))

(assert (= (and b!2632929 (not c!423308)) b!2632932))

(assert (= (and b!2632932 c!423307) b!2632925))

(assert (= (and b!2632932 (not c!423307)) b!2632930))

(assert (= (or b!2632928 b!2632932 b!2632930) bm!169381))

(declare-fun m!2976233 () Bool)

(assert (=> b!2632926 m!2976233))

(declare-fun m!2976235 () Bool)

(assert (=> d!746982 m!2976235))

(assert (=> d!746982 m!2976213))

(declare-fun m!2976237 () Bool)

(assert (=> b!2632929 m!2976237))

(assert (=> bm!169381 m!2976207))

(assert (=> b!2632074 d!746982))

(declare-fun bs!475857 () Bool)

(declare-fun d!746984 () Bool)

(assert (= bs!475857 (and d!746984 d!746686)))

(declare-fun lambda!98793 () Int)

(assert (=> bs!475857 (not (= lambda!98793 lambda!98769))))

(declare-fun bs!475858 () Bool)

(assert (= bs!475858 (and d!746984 d!746652)))

(assert (=> bs!475858 (= lambda!98793 lambda!98757)))

(declare-fun bs!475859 () Bool)

(assert (= bs!475859 (and d!746984 b!2632074)))

(assert (=> bs!475859 (not (= lambda!98793 lambda!98758))))

(declare-fun bs!475860 () Bool)

(assert (= bs!475860 (and d!746984 b!2631978)))

(assert (=> bs!475860 (= lambda!98793 lambda!98751)))

(declare-fun bs!475861 () Bool)

(assert (= bs!475861 (and d!746984 b!2631976)))

(assert (=> bs!475861 (not (= lambda!98793 lambda!98752))))

(declare-fun bs!475862 () Bool)

(declare-fun b!2632934 () Bool)

(assert (= bs!475862 (and b!2632934 d!746686)))

(declare-fun lambda!98794 () Int)

(assert (=> bs!475862 (= lambda!98794 lambda!98769)))

(declare-fun bs!475863 () Bool)

(assert (= bs!475863 (and b!2632934 d!746652)))

(assert (=> bs!475863 (not (= lambda!98794 lambda!98757))))

(declare-fun bs!475864 () Bool)

(assert (= bs!475864 (and b!2632934 b!2632074)))

(assert (=> bs!475864 (= lambda!98794 lambda!98758)))

(declare-fun bs!475865 () Bool)

(assert (= bs!475865 (and b!2632934 d!746984)))

(assert (=> bs!475865 (not (= lambda!98794 lambda!98793))))

(declare-fun bs!475866 () Bool)

(assert (= bs!475866 (and b!2632934 b!2631978)))

(assert (=> bs!475866 (not (= lambda!98794 lambda!98751))))

(declare-fun bs!475867 () Bool)

(assert (= bs!475867 (and b!2632934 b!2631976)))

(assert (=> bs!475867 (= lambda!98794 lambda!98752)))

(declare-fun b!2632946 () Bool)

(declare-fun e!1661336 () Bool)

(assert (=> b!2632946 (= e!1661336 true)))

(declare-fun b!2632945 () Bool)

(declare-fun e!1661335 () Bool)

(assert (=> b!2632945 (= e!1661335 e!1661336)))

(declare-fun b!2632944 () Bool)

(declare-fun e!1661334 () Bool)

(assert (=> b!2632944 (= e!1661334 e!1661335)))

(assert (=> b!2632934 e!1661334))

(assert (= b!2632945 b!2632946))

(assert (= b!2632944 b!2632945))

(assert (= (and b!2632934 ((_ is Cons!30501) rules!1726)) b!2632944))

(assert (=> b!2632946 (< (dynLambda!13064 order!16535 (toValue!6553 (transformation!4639 (h!35921 rules!1726)))) (dynLambda!13065 order!16537 lambda!98794))))

(assert (=> b!2632946 (< (dynLambda!13066 order!16539 (toChars!6412 (transformation!4639 (h!35921 rules!1726)))) (dynLambda!13065 order!16537 lambda!98794))))

(assert (=> b!2632934 true))

(declare-fun bm!169382 () Bool)

(declare-fun c!423312 () Bool)

(declare-fun c!423311 () Bool)

(assert (=> bm!169382 (= c!423312 c!423311)))

(declare-fun lt!926697 () BalanceConc!18654)

(declare-fun e!1661327 () BalanceConc!18654)

(declare-fun call!169388 () BalanceConc!18654)

(declare-fun call!169391 () BalanceConc!18654)

(assert (=> bm!169382 (= call!169388 (++!7425 e!1661327 (ite c!423311 lt!926697 call!169391)))))

(declare-fun bm!169383 () Bool)

(declare-fun call!169387 () Token!8748)

(assert (=> bm!169383 (= call!169387 (apply!7265 v!6381 (+ 1 from!862 1)))))

(declare-fun b!2632933 () Bool)

(declare-fun e!1661331 () Bool)

(declare-fun lt!926693 () Option!6028)

(assert (=> b!2632933 (= e!1661331 (not (= (_1!17537 (v!32430 lt!926693)) call!169387)))))

(declare-fun e!1661328 () BalanceConc!18654)

(declare-fun e!1661329 () BalanceConc!18654)

(assert (=> b!2632934 (= e!1661328 e!1661329)))

(declare-fun lt!926703 () List!30602)

(assert (=> b!2632934 (= lt!926703 (list!11471 v!6381))))

(declare-fun lt!926698 () Unit!44507)

(assert (=> b!2632934 (= lt!926698 (lemmaDropApply!850 lt!926703 (+ 1 from!862 1)))))

(assert (=> b!2632934 (= (head!6038 (drop!1635 lt!926703 (+ 1 from!862 1))) (apply!7266 lt!926703 (+ 1 from!862 1)))))

(declare-fun lt!926702 () Unit!44507)

(assert (=> b!2632934 (= lt!926702 lt!926698)))

(declare-fun lt!926696 () List!30602)

(assert (=> b!2632934 (= lt!926696 (list!11471 v!6381))))

(declare-fun lt!926705 () Unit!44507)

(assert (=> b!2632934 (= lt!926705 (lemmaDropTail!824 lt!926696 (+ 1 from!862 1)))))

(assert (=> b!2632934 (= (tail!4276 (drop!1635 lt!926696 (+ 1 from!862 1))) (drop!1635 lt!926696 (+ 1 from!862 1 1)))))

(declare-fun lt!926699 () Unit!44507)

(assert (=> b!2632934 (= lt!926699 lt!926705)))

(declare-fun lt!926695 () Unit!44507)

(assert (=> b!2632934 (= lt!926695 (forallContained!991 (list!11471 v!6381) lambda!98794 (apply!7265 v!6381 (+ 1 from!862 1))))))

(assert (=> b!2632934 (= lt!926697 (printWithSeparatorTokenWhenNeededRec!510 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862 1 1)))))

(assert (=> b!2632934 (= lt!926693 (maxPrefixZipperSequence!962 thiss!14197 rules!1726 (++!7425 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862 1))) lt!926697)))))

(declare-fun res!1108569 () Bool)

(assert (=> b!2632934 (= res!1108569 ((_ is Some!6027) lt!926693))))

(declare-fun e!1661332 () Bool)

(assert (=> b!2632934 (=> (not res!1108569) (not e!1661332))))

(assert (=> b!2632934 (= c!423311 e!1661332)))

(declare-fun b!2632935 () Bool)

(assert (=> b!2632935 (= e!1661329 call!169388)))

(declare-fun lt!926704 () BalanceConc!18654)

(assert (=> d!746984 (= (list!11470 lt!926704) (printWithSeparatorTokenWhenNeededList!655 thiss!14197 rules!1726 (dropList!942 v!6381 (+ 1 from!862 1)) separatorToken!156))))

(assert (=> d!746984 (= lt!926704 e!1661328)))

(declare-fun c!423314 () Bool)

(assert (=> d!746984 (= c!423314 (>= (+ 1 from!862 1) (size!23579 v!6381)))))

(declare-fun lt!926694 () Unit!44507)

(assert (=> d!746984 (= lt!926694 (lemmaContentSubsetPreservesForall!308 (list!11471 v!6381) (dropList!942 v!6381 (+ 1 from!862 1)) lambda!98793))))

(declare-fun e!1661330 () Bool)

(assert (=> d!746984 e!1661330))

(declare-fun res!1108570 () Bool)

(assert (=> d!746984 (=> (not res!1108570) (not e!1661330))))

(assert (=> d!746984 (= res!1108570 (>= (+ 1 from!862 1) 0))))

(assert (=> d!746984 (= (printWithSeparatorTokenWhenNeededRec!510 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862 1)) lt!926704)))

(declare-fun bm!169384 () Bool)

(declare-fun call!169389 () BalanceConc!18654)

(assert (=> bm!169384 (= call!169391 call!169389)))

(declare-fun b!2632936 () Bool)

(assert (=> b!2632936 (= e!1661330 (<= (+ 1 from!862 1) (size!23579 v!6381)))))

(declare-fun b!2632937 () Bool)

(declare-fun call!169390 () Token!8748)

(assert (=> b!2632937 (= e!1661327 (charsOf!2926 call!169390))))

(declare-fun b!2632938 () Bool)

(declare-fun e!1661333 () BalanceConc!18654)

(assert (=> b!2632938 (= e!1661333 (++!7425 call!169388 lt!926697))))

(declare-fun bm!169385 () Bool)

(assert (=> bm!169385 (= call!169390 call!169387)))

(declare-fun b!2632939 () Bool)

(assert (=> b!2632939 (= e!1661332 (= (_1!17537 (v!32430 lt!926693)) (apply!7265 v!6381 (+ 1 from!862 1))))))

(declare-fun b!2632940 () Bool)

(assert (=> b!2632940 (= e!1661327 call!169389)))

(declare-fun c!423313 () Bool)

(declare-fun bm!169386 () Bool)

(assert (=> bm!169386 (= call!169389 (charsOf!2926 (ite c!423311 call!169387 (ite c!423313 separatorToken!156 call!169390))))))

(declare-fun b!2632941 () Bool)

(assert (=> b!2632941 (= e!1661328 (BalanceConc!18655 Empty!9520))))

(declare-fun b!2632942 () Bool)

(assert (=> b!2632942 (= c!423313 e!1661331)))

(declare-fun res!1108571 () Bool)

(assert (=> b!2632942 (=> (not res!1108571) (not e!1661331))))

(assert (=> b!2632942 (= res!1108571 ((_ is Some!6027) lt!926693))))

(assert (=> b!2632942 (= e!1661329 e!1661333)))

(declare-fun b!2632943 () Bool)

(assert (=> b!2632943 (= e!1661333 (BalanceConc!18655 Empty!9520))))

(assert (=> b!2632943 (= (print!1637 thiss!14197 (singletonSeq!2056 call!169390)) (printTailRec!1123 thiss!14197 (singletonSeq!2056 call!169390) 0 (BalanceConc!18655 Empty!9520)))))

(declare-fun lt!926700 () Unit!44507)

(declare-fun Unit!44515 () Unit!44507)

(assert (=> b!2632943 (= lt!926700 Unit!44515)))

(declare-fun lt!926706 () Unit!44507)

(assert (=> b!2632943 (= lt!926706 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!798 thiss!14197 rules!1726 (list!11470 call!169391) (list!11470 lt!926697)))))

(assert (=> b!2632943 false))

(declare-fun lt!926701 () Unit!44507)

(declare-fun Unit!44516 () Unit!44507)

(assert (=> b!2632943 (= lt!926701 Unit!44516)))

(assert (= (and d!746984 res!1108570) b!2632936))

(assert (= (and d!746984 c!423314) b!2632941))

(assert (= (and d!746984 (not c!423314)) b!2632934))

(assert (= (and b!2632934 res!1108569) b!2632939))

(assert (= (and b!2632934 c!423311) b!2632935))

(assert (= (and b!2632934 (not c!423311)) b!2632942))

(assert (= (and b!2632942 res!1108571) b!2632933))

(assert (= (and b!2632942 c!423313) b!2632938))

(assert (= (and b!2632942 (not c!423313)) b!2632943))

(assert (= (or b!2632938 b!2632943) bm!169385))

(assert (= (or b!2632938 b!2632943) bm!169384))

(assert (= (or b!2632935 b!2632933 bm!169385) bm!169383))

(assert (= (or b!2632935 bm!169384) bm!169386))

(assert (= (or b!2632935 b!2632938) bm!169382))

(assert (= (and bm!169382 c!423312) b!2632940))

(assert (= (and bm!169382 (not c!423312)) b!2632937))

(declare-fun m!2976239 () Bool)

(assert (=> b!2632939 m!2976239))

(declare-fun m!2976241 () Bool)

(assert (=> bm!169382 m!2976241))

(declare-fun m!2976243 () Bool)

(assert (=> b!2632934 m!2976243))

(declare-fun m!2976245 () Bool)

(assert (=> b!2632934 m!2976245))

(declare-fun m!2976247 () Bool)

(assert (=> b!2632934 m!2976247))

(declare-fun m!2976249 () Bool)

(assert (=> b!2632934 m!2976249))

(declare-fun m!2976251 () Bool)

(assert (=> b!2632934 m!2976251))

(declare-fun m!2976253 () Bool)

(assert (=> b!2632934 m!2976253))

(assert (=> b!2632934 m!2976243))

(assert (=> b!2632934 m!2976251))

(declare-fun m!2976255 () Bool)

(assert (=> b!2632934 m!2976255))

(declare-fun m!2976257 () Bool)

(assert (=> b!2632934 m!2976257))

(assert (=> b!2632934 m!2976257))

(declare-fun m!2976259 () Bool)

(assert (=> b!2632934 m!2976259))

(declare-fun m!2976261 () Bool)

(assert (=> b!2632934 m!2976261))

(assert (=> b!2632934 m!2975027))

(assert (=> b!2632934 m!2976239))

(declare-fun m!2976263 () Bool)

(assert (=> b!2632934 m!2976263))

(declare-fun m!2976265 () Bool)

(assert (=> b!2632934 m!2976265))

(assert (=> b!2632934 m!2976239))

(assert (=> b!2632934 m!2976253))

(assert (=> b!2632934 m!2975027))

(assert (=> b!2632934 m!2976239))

(declare-fun m!2976267 () Bool)

(assert (=> b!2632934 m!2976267))

(declare-fun m!2976269 () Bool)

(assert (=> bm!169386 m!2976269))

(assert (=> bm!169383 m!2976239))

(declare-fun m!2976271 () Bool)

(assert (=> b!2632943 m!2976271))

(declare-fun m!2976273 () Bool)

(assert (=> b!2632943 m!2976273))

(declare-fun m!2976275 () Bool)

(assert (=> b!2632943 m!2976275))

(assert (=> b!2632943 m!2976273))

(assert (=> b!2632943 m!2976273))

(declare-fun m!2976277 () Bool)

(assert (=> b!2632943 m!2976277))

(declare-fun m!2976279 () Bool)

(assert (=> b!2632943 m!2976279))

(assert (=> b!2632943 m!2976271))

(declare-fun m!2976281 () Bool)

(assert (=> b!2632943 m!2976281))

(assert (=> b!2632943 m!2976279))

(assert (=> d!746984 m!2975027))

(declare-fun m!2976283 () Bool)

(assert (=> d!746984 m!2976283))

(declare-fun m!2976285 () Bool)

(assert (=> d!746984 m!2976285))

(assert (=> d!746984 m!2975045))

(assert (=> d!746984 m!2975027))

(assert (=> d!746984 m!2976283))

(assert (=> d!746984 m!2976283))

(declare-fun m!2976287 () Bool)

(assert (=> d!746984 m!2976287))

(declare-fun m!2976289 () Bool)

(assert (=> d!746984 m!2976289))

(declare-fun m!2976291 () Bool)

(assert (=> b!2632937 m!2976291))

(declare-fun m!2976293 () Bool)

(assert (=> b!2632938 m!2976293))

(assert (=> b!2632936 m!2975045))

(assert (=> b!2632074 d!746984))

(declare-fun d!746986 () Bool)

(assert (=> d!746986 (dynLambda!13068 lambda!98758 (apply!7265 v!6381 (+ 1 from!862)))))

(declare-fun lt!926711 () Unit!44507)

(assert (=> d!746986 (= lt!926711 (choose!15618 (list!11471 v!6381) lambda!98758 (apply!7265 v!6381 (+ 1 from!862))))))

(declare-fun e!1661347 () Bool)

(assert (=> d!746986 e!1661347))

(declare-fun res!1108577 () Bool)

(assert (=> d!746986 (=> (not res!1108577) (not e!1661347))))

(assert (=> d!746986 (= res!1108577 (forall!6385 (list!11471 v!6381) lambda!98758))))

(assert (=> d!746986 (= (forallContained!991 (list!11471 v!6381) lambda!98758 (apply!7265 v!6381 (+ 1 from!862))) lt!926711)))

(declare-fun b!2632968 () Bool)

(assert (=> b!2632968 (= e!1661347 (contains!5785 (list!11471 v!6381) (apply!7265 v!6381 (+ 1 from!862))))))

(assert (= (and d!746986 res!1108577) b!2632968))

(declare-fun b_lambda!79273 () Bool)

(assert (=> (not b_lambda!79273) (not d!746986)))

(assert (=> d!746986 m!2975181))

(declare-fun m!2976301 () Bool)

(assert (=> d!746986 m!2976301))

(assert (=> d!746986 m!2975027))

(assert (=> d!746986 m!2975181))

(declare-fun m!2976303 () Bool)

(assert (=> d!746986 m!2976303))

(assert (=> d!746986 m!2975027))

(declare-fun m!2976307 () Bool)

(assert (=> d!746986 m!2976307))

(assert (=> b!2632968 m!2975027))

(assert (=> b!2632968 m!2975181))

(declare-fun m!2976311 () Bool)

(assert (=> b!2632968 m!2976311))

(assert (=> b!2632074 d!746986))

(declare-fun d!746988 () Bool)

(declare-fun lt!926712 () Token!8748)

(assert (=> d!746988 (contains!5785 lt!926305 lt!926712)))

(declare-fun e!1661349 () Token!8748)

(assert (=> d!746988 (= lt!926712 e!1661349)))

(declare-fun c!423323 () Bool)

(assert (=> d!746988 (= c!423323 (= (+ 1 from!862) 0))))

(declare-fun e!1661348 () Bool)

(assert (=> d!746988 e!1661348))

(declare-fun res!1108578 () Bool)

(assert (=> d!746988 (=> (not res!1108578) (not e!1661348))))

(assert (=> d!746988 (= res!1108578 (<= 0 (+ 1 from!862)))))

(assert (=> d!746988 (= (apply!7266 lt!926305 (+ 1 from!862)) lt!926712)))

(declare-fun b!2632969 () Bool)

(assert (=> b!2632969 (= e!1661348 (< (+ 1 from!862) (size!23581 lt!926305)))))

(declare-fun b!2632970 () Bool)

(assert (=> b!2632970 (= e!1661349 (head!6038 lt!926305))))

(declare-fun b!2632971 () Bool)

(assert (=> b!2632971 (= e!1661349 (apply!7266 (tail!4276 lt!926305) (- (+ 1 from!862) 1)))))

(assert (= (and d!746988 res!1108578) b!2632969))

(assert (= (and d!746988 c!423323) b!2632970))

(assert (= (and d!746988 (not c!423323)) b!2632971))

(declare-fun m!2976327 () Bool)

(assert (=> d!746988 m!2976327))

(assert (=> b!2632969 m!2976203))

(declare-fun m!2976329 () Bool)

(assert (=> b!2632970 m!2976329))

(declare-fun m!2976331 () Bool)

(assert (=> b!2632971 m!2976331))

(assert (=> b!2632971 m!2976331))

(declare-fun m!2976333 () Bool)

(assert (=> b!2632971 m!2976333))

(assert (=> b!2632074 d!746988))

(assert (=> b!2632074 d!746964))

(declare-fun d!746990 () Bool)

(assert (=> d!746990 (= (head!6038 (drop!1635 lt!926305 (+ 1 from!862))) (h!35922 (drop!1635 lt!926305 (+ 1 from!862))))))

(assert (=> b!2632074 d!746990))

(declare-fun lt!926713 () BalanceConc!18654)

(declare-fun b!2632975 () Bool)

(declare-fun e!1661350 () Bool)

(assert (=> b!2632975 (= e!1661350 (= (list!11470 lt!926713) (++!7427 (list!11470 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862)))) (list!11470 lt!926299))))))

(declare-fun b!2632972 () Bool)

(declare-fun res!1108581 () Bool)

(assert (=> b!2632972 (=> (not res!1108581) (not e!1661350))))

(assert (=> b!2632972 (= res!1108581 (isBalanced!2876 (++!7428 (c!423089 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862)))) (c!423089 lt!926299))))))

(declare-fun b!2632974 () Bool)

(declare-fun res!1108580 () Bool)

(assert (=> b!2632974 (=> (not res!1108580) (not e!1661350))))

(assert (=> b!2632974 (= res!1108580 (>= (height!1373 (++!7428 (c!423089 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862)))) (c!423089 lt!926299))) (max!0 (height!1373 (c!423089 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862))))) (height!1373 (c!423089 lt!926299)))))))

(declare-fun b!2632973 () Bool)

(declare-fun res!1108582 () Bool)

(assert (=> b!2632973 (=> (not res!1108582) (not e!1661350))))

(assert (=> b!2632973 (= res!1108582 (<= (height!1373 (++!7428 (c!423089 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862)))) (c!423089 lt!926299))) (+ (max!0 (height!1373 (c!423089 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862))))) (height!1373 (c!423089 lt!926299))) 1)))))

(declare-fun d!746992 () Bool)

(assert (=> d!746992 e!1661350))

(declare-fun res!1108579 () Bool)

(assert (=> d!746992 (=> (not res!1108579) (not e!1661350))))

(assert (=> d!746992 (= res!1108579 (appendAssocInst!631 (c!423089 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862)))) (c!423089 lt!926299)))))

(assert (=> d!746992 (= lt!926713 (BalanceConc!18655 (++!7428 (c!423089 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862)))) (c!423089 lt!926299))))))

(assert (=> d!746992 (= (++!7425 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862))) lt!926299) lt!926713)))

(assert (= (and d!746992 res!1108579) b!2632972))

(assert (= (and b!2632972 res!1108581) b!2632973))

(assert (= (and b!2632973 res!1108582) b!2632974))

(assert (= (and b!2632974 res!1108580) b!2632975))

(declare-fun m!2976339 () Bool)

(assert (=> b!2632975 m!2976339))

(assert (=> b!2632975 m!2975195))

(declare-fun m!2976341 () Bool)

(assert (=> b!2632975 m!2976341))

(assert (=> b!2632975 m!2975213))

(assert (=> b!2632975 m!2976341))

(assert (=> b!2632975 m!2975213))

(declare-fun m!2976343 () Bool)

(assert (=> b!2632975 m!2976343))

(declare-fun m!2976345 () Bool)

(assert (=> d!746992 m!2976345))

(declare-fun m!2976347 () Bool)

(assert (=> d!746992 m!2976347))

(declare-fun m!2976349 () Bool)

(assert (=> b!2632974 m!2976349))

(assert (=> b!2632974 m!2976347))

(assert (=> b!2632974 m!2976349))

(assert (=> b!2632974 m!2976135))

(declare-fun m!2976351 () Bool)

(assert (=> b!2632974 m!2976351))

(assert (=> b!2632974 m!2976347))

(declare-fun m!2976353 () Bool)

(assert (=> b!2632974 m!2976353))

(assert (=> b!2632974 m!2976135))

(assert (=> b!2632973 m!2976349))

(assert (=> b!2632973 m!2976347))

(assert (=> b!2632973 m!2976349))

(assert (=> b!2632973 m!2976135))

(assert (=> b!2632973 m!2976351))

(assert (=> b!2632973 m!2976347))

(assert (=> b!2632973 m!2976353))

(assert (=> b!2632973 m!2976135))

(assert (=> b!2632972 m!2976347))

(assert (=> b!2632972 m!2976347))

(declare-fun m!2976355 () Bool)

(assert (=> b!2632972 m!2976355))

(assert (=> b!2632074 d!746992))

(declare-fun b!2632976 () Bool)

(declare-fun e!1661351 () Bool)

(declare-fun e!1661356 () Bool)

(assert (=> b!2632976 (= e!1661351 e!1661356)))

(declare-fun res!1108588 () Bool)

(assert (=> b!2632976 (=> (not res!1108588) (not e!1661356))))

(declare-fun lt!926714 () Option!6028)

(assert (=> b!2632976 (= res!1108588 (= (_1!17537 (get!9594 lt!926714)) (_1!17540 (get!9595 (maxPrefix!2307 thiss!14197 rules!1726 (list!11470 (++!7425 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862))) lt!926299)))))))))

(declare-fun b!2632977 () Bool)

(declare-fun res!1108584 () Bool)

(declare-fun e!1661354 () Bool)

(assert (=> b!2632977 (=> (not res!1108584) (not e!1661354))))

(declare-fun e!1661352 () Bool)

(assert (=> b!2632977 (= res!1108584 e!1661352)))

(declare-fun res!1108583 () Bool)

(assert (=> b!2632977 (=> res!1108583 e!1661352)))

(assert (=> b!2632977 (= res!1108583 (not (isDefined!4791 lt!926714)))))

(declare-fun d!747000 () Bool)

(assert (=> d!747000 e!1661354))

(declare-fun res!1108585 () Bool)

(assert (=> d!747000 (=> (not res!1108585) (not e!1661354))))

(assert (=> d!747000 (= res!1108585 (= (isDefined!4791 lt!926714) (isDefined!4792 (maxPrefixZipper!435 thiss!14197 rules!1726 (list!11470 (++!7425 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862))) lt!926299))))))))

(declare-fun e!1661353 () Option!6028)

(assert (=> d!747000 (= lt!926714 e!1661353)))

(declare-fun c!423324 () Bool)

(assert (=> d!747000 (= c!423324 (and ((_ is Cons!30501) rules!1726) ((_ is Nil!30501) (t!216474 rules!1726))))))

(declare-fun lt!926719 () Unit!44507)

(declare-fun lt!926718 () Unit!44507)

(assert (=> d!747000 (= lt!926719 lt!926718)))

(declare-fun lt!926716 () List!30600)

(declare-fun lt!926715 () List!30600)

(assert (=> d!747000 (isPrefix!2436 lt!926716 lt!926715)))

(assert (=> d!747000 (= lt!926718 (lemmaIsPrefixRefl!1562 lt!926716 lt!926715))))

(assert (=> d!747000 (= lt!926715 (list!11470 (++!7425 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862))) lt!926299)))))

(assert (=> d!747000 (= lt!926716 (list!11470 (++!7425 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862))) lt!926299)))))

(assert (=> d!747000 (rulesValidInductive!1614 thiss!14197 rules!1726)))

(assert (=> d!747000 (= (maxPrefixZipperSequence!962 thiss!14197 rules!1726 (++!7425 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862))) lt!926299)) lt!926714)))

(declare-fun e!1661355 () Bool)

(declare-fun b!2632978 () Bool)

(assert (=> b!2632978 (= e!1661355 (= (list!11470 (_2!17537 (get!9594 lt!926714))) (_2!17540 (get!9595 (maxPrefixZipper!435 thiss!14197 rules!1726 (list!11470 (++!7425 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862))) lt!926299)))))))))

(declare-fun b!2632979 () Bool)

(declare-fun lt!926717 () Option!6028)

(declare-fun lt!926720 () Option!6028)

(assert (=> b!2632979 (= e!1661353 (ite (and ((_ is None!6027) lt!926717) ((_ is None!6027) lt!926720)) None!6027 (ite ((_ is None!6027) lt!926720) lt!926717 (ite ((_ is None!6027) lt!926717) lt!926720 (ite (>= (size!23578 (_1!17537 (v!32430 lt!926717))) (size!23578 (_1!17537 (v!32430 lt!926720)))) lt!926717 lt!926720)))))))

(declare-fun call!169408 () Option!6028)

(assert (=> b!2632979 (= lt!926717 call!169408)))

(assert (=> b!2632979 (= lt!926720 (maxPrefixZipperSequence!962 thiss!14197 (t!216474 rules!1726) (++!7425 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862))) lt!926299)))))

(declare-fun b!2632980 () Bool)

(assert (=> b!2632980 (= e!1661352 e!1661355)))

(declare-fun res!1108586 () Bool)

(assert (=> b!2632980 (=> (not res!1108586) (not e!1661355))))

(assert (=> b!2632980 (= res!1108586 (= (_1!17537 (get!9594 lt!926714)) (_1!17540 (get!9595 (maxPrefixZipper!435 thiss!14197 rules!1726 (list!11470 (++!7425 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862))) lt!926299)))))))))

(declare-fun b!2632981 () Bool)

(assert (=> b!2632981 (= e!1661354 e!1661351)))

(declare-fun res!1108587 () Bool)

(assert (=> b!2632981 (=> res!1108587 e!1661351)))

(assert (=> b!2632981 (= res!1108587 (not (isDefined!4791 lt!926714)))))

(declare-fun b!2632982 () Bool)

(assert (=> b!2632982 (= e!1661353 call!169408)))

(declare-fun b!2632983 () Bool)

(assert (=> b!2632983 (= e!1661356 (= (list!11470 (_2!17537 (get!9594 lt!926714))) (_2!17540 (get!9595 (maxPrefix!2307 thiss!14197 rules!1726 (list!11470 (++!7425 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862))) lt!926299)))))))))

(declare-fun bm!169403 () Bool)

(assert (=> bm!169403 (= call!169408 (maxPrefixOneRuleZipperSequence!444 thiss!14197 (h!35921 rules!1726) (++!7425 (charsOf!2926 (apply!7265 v!6381 (+ 1 from!862))) lt!926299)))))

(assert (= (and d!747000 c!423324) b!2632982))

(assert (= (and d!747000 (not c!423324)) b!2632979))

(assert (= (or b!2632982 b!2632979) bm!169403))

(assert (= (and d!747000 res!1108585) b!2632977))

(assert (= (and b!2632977 (not res!1108583)) b!2632980))

(assert (= (and b!2632980 res!1108586) b!2632978))

(assert (= (and b!2632977 res!1108584) b!2632981))

(assert (= (and b!2632981 (not res!1108587)) b!2632976))

(assert (= (and b!2632976 res!1108588) b!2632983))

(assert (=> b!2632978 m!2975185))

(declare-fun m!2976359 () Bool)

(assert (=> b!2632978 m!2976359))

(declare-fun m!2976361 () Bool)

(assert (=> b!2632978 m!2976361))

(declare-fun m!2976363 () Bool)

(assert (=> b!2632978 m!2976363))

(declare-fun m!2976365 () Bool)

(assert (=> b!2632978 m!2976365))

(declare-fun m!2976367 () Bool)

(assert (=> b!2632978 m!2976367))

(assert (=> b!2632978 m!2976359))

(assert (=> b!2632978 m!2976361))

(assert (=> bm!169403 m!2975185))

(declare-fun m!2976369 () Bool)

(assert (=> bm!169403 m!2976369))

(assert (=> b!2632983 m!2975185))

(assert (=> b!2632983 m!2976359))

(assert (=> b!2632983 m!2976359))

(declare-fun m!2976371 () Bool)

(assert (=> b!2632983 m!2976371))

(assert (=> b!2632983 m!2976365))

(assert (=> b!2632983 m!2976367))

(assert (=> b!2632983 m!2976371))

(declare-fun m!2976377 () Bool)

(assert (=> b!2632983 m!2976377))

(declare-fun m!2976379 () Bool)

(assert (=> b!2632977 m!2976379))

(assert (=> d!747000 m!2975185))

(assert (=> d!747000 m!2976359))

(assert (=> d!747000 m!2975269))

(declare-fun m!2976381 () Bool)

(assert (=> d!747000 m!2976381))

(assert (=> d!747000 m!2976359))

(assert (=> d!747000 m!2976361))

(assert (=> d!747000 m!2976379))

(assert (=> d!747000 m!2976361))

(declare-fun m!2976387 () Bool)

(assert (=> d!747000 m!2976387))

(declare-fun m!2976391 () Bool)

(assert (=> d!747000 m!2976391))

(assert (=> b!2632980 m!2976365))

(assert (=> b!2632980 m!2975185))

(assert (=> b!2632980 m!2976359))

(assert (=> b!2632980 m!2976359))

(assert (=> b!2632980 m!2976361))

(assert (=> b!2632980 m!2976361))

(assert (=> b!2632980 m!2976363))

(assert (=> b!2632981 m!2976379))

(assert (=> b!2632976 m!2976365))

(assert (=> b!2632976 m!2975185))

(assert (=> b!2632976 m!2976359))

(assert (=> b!2632976 m!2976359))

(assert (=> b!2632976 m!2976371))

(assert (=> b!2632976 m!2976371))

(assert (=> b!2632976 m!2976377))

(assert (=> b!2632979 m!2975185))

(declare-fun m!2976399 () Bool)

(assert (=> b!2632979 m!2976399))

(assert (=> b!2632074 d!747000))

(declare-fun d!747010 () Bool)

(declare-fun lt!926724 () Bool)

(assert (=> d!747010 (= lt!926724 (select (content!4307 lt!926208) lt!926438))))

(declare-fun e!1661362 () Bool)

(assert (=> d!747010 (= lt!926724 e!1661362)))

(declare-fun res!1108595 () Bool)

(assert (=> d!747010 (=> (not res!1108595) (not e!1661362))))

(assert (=> d!747010 (= res!1108595 ((_ is Cons!30502) lt!926208))))

(assert (=> d!747010 (= (contains!5785 lt!926208 lt!926438) lt!926724)))

(declare-fun b!2632989 () Bool)

(declare-fun e!1661363 () Bool)

(assert (=> b!2632989 (= e!1661362 e!1661363)))

(declare-fun res!1108594 () Bool)

(assert (=> b!2632989 (=> res!1108594 e!1661363)))

(assert (=> b!2632989 (= res!1108594 (= (h!35922 lt!926208) lt!926438))))

(declare-fun b!2632990 () Bool)

(assert (=> b!2632990 (= e!1661363 (contains!5785 (t!216475 lt!926208) lt!926438))))

(assert (= (and d!747010 res!1108595) b!2632989))

(assert (= (and b!2632989 (not res!1108594)) b!2632990))

(assert (=> d!747010 m!2975449))

(declare-fun m!2976401 () Bool)

(assert (=> d!747010 m!2976401))

(declare-fun m!2976403 () Bool)

(assert (=> b!2632990 m!2976403))

(assert (=> d!746728 d!747010))

(declare-fun d!747012 () Bool)

(declare-fun c!423327 () Bool)

(assert (=> d!747012 (= c!423327 ((_ is Nil!30502) lt!926208))))

(declare-fun e!1661366 () (InoxSet Token!8748))

(assert (=> d!747012 (= (content!4307 lt!926208) e!1661366)))

(declare-fun b!2632995 () Bool)

(assert (=> b!2632995 (= e!1661366 ((as const (Array Token!8748 Bool)) false))))

(declare-fun b!2632996 () Bool)

(assert (=> b!2632996 (= e!1661366 ((_ map or) (store ((as const (Array Token!8748 Bool)) false) (h!35922 lt!926208) true) (content!4307 (t!216475 lt!926208))))))

(assert (= (and d!747012 c!423327) b!2632995))

(assert (= (and d!747012 (not c!423327)) b!2632996))

(declare-fun m!2976405 () Bool)

(assert (=> b!2632996 m!2976405))

(declare-fun m!2976407 () Bool)

(assert (=> b!2632996 m!2976407))

(assert (=> d!746710 d!747012))

(declare-fun bs!475872 () Bool)

(declare-fun d!747014 () Bool)

(assert (= bs!475872 (and d!747014 d!746686)))

(declare-fun lambda!98797 () Int)

(assert (=> bs!475872 (= lambda!98797 lambda!98769)))

(declare-fun bs!475873 () Bool)

(assert (= bs!475873 (and d!747014 d!746652)))

(assert (=> bs!475873 (not (= lambda!98797 lambda!98757))))

(declare-fun bs!475874 () Bool)

(assert (= bs!475874 (and d!747014 d!746984)))

(assert (=> bs!475874 (not (= lambda!98797 lambda!98793))))

(declare-fun bs!475875 () Bool)

(assert (= bs!475875 (and d!747014 b!2631978)))

(assert (=> bs!475875 (not (= lambda!98797 lambda!98751))))

(declare-fun bs!475876 () Bool)

(assert (= bs!475876 (and d!747014 b!2631976)))

(assert (=> bs!475876 (= lambda!98797 lambda!98752)))

(declare-fun bs!475877 () Bool)

(assert (= bs!475877 (and d!747014 b!2632074)))

(assert (=> bs!475877 (= lambda!98797 lambda!98758)))

(declare-fun bs!475878 () Bool)

(assert (= bs!475878 (and d!747014 b!2632934)))

(assert (=> bs!475878 (= lambda!98797 lambda!98794)))

(declare-fun b!2633050 () Bool)

(declare-fun e!1661403 () Bool)

(assert (=> b!2633050 (= e!1661403 true)))

(declare-fun b!2633049 () Bool)

(declare-fun e!1661402 () Bool)

(assert (=> b!2633049 (= e!1661402 e!1661403)))

(declare-fun b!2633048 () Bool)

(declare-fun e!1661401 () Bool)

(assert (=> b!2633048 (= e!1661401 e!1661402)))

(assert (=> d!747014 e!1661401))

(assert (= b!2633049 b!2633050))

(assert (= b!2633048 b!2633049))

(assert (= (and d!747014 ((_ is Cons!30501) rules!1726)) b!2633048))

(assert (=> b!2633050 (< (dynLambda!13064 order!16535 (toValue!6553 (transformation!4639 (h!35921 rules!1726)))) (dynLambda!13065 order!16537 lambda!98797))))

(assert (=> b!2633050 (< (dynLambda!13066 order!16539 (toChars!6412 (transformation!4639 (h!35921 rules!1726)))) (dynLambda!13065 order!16537 lambda!98797))))

(assert (=> d!747014 true))

(declare-fun lt!926741 () Bool)

(assert (=> d!747014 (= lt!926741 (forall!6385 (list!11471 v!6381) lambda!98797))))

(declare-fun e!1661399 () Bool)

(assert (=> d!747014 (= lt!926741 e!1661399)))

(declare-fun res!1108611 () Bool)

(assert (=> d!747014 (=> res!1108611 e!1661399)))

(assert (=> d!747014 (= res!1108611 (not ((_ is Cons!30502) (list!11471 v!6381))))))

(assert (=> d!747014 (not (isEmpty!17389 rules!1726))))

(assert (=> d!747014 (= (rulesProduceEachTokenIndividuallyList!1467 thiss!14197 rules!1726 (list!11471 v!6381)) lt!926741)))

(declare-fun b!2633046 () Bool)

(declare-fun e!1661400 () Bool)

(assert (=> b!2633046 (= e!1661399 e!1661400)))

(declare-fun res!1108612 () Bool)

(assert (=> b!2633046 (=> (not res!1108612) (not e!1661400))))

(assert (=> b!2633046 (= res!1108612 (rulesProduceIndividualToken!1948 thiss!14197 rules!1726 (h!35922 (list!11471 v!6381))))))

(declare-fun b!2633047 () Bool)

(assert (=> b!2633047 (= e!1661400 (rulesProduceEachTokenIndividuallyList!1467 thiss!14197 rules!1726 (t!216475 (list!11471 v!6381))))))

(assert (= (and d!747014 (not res!1108611)) b!2633046))

(assert (= (and b!2633046 res!1108612) b!2633047))

(assert (=> d!747014 m!2975027))

(declare-fun m!2976457 () Bool)

(assert (=> d!747014 m!2976457))

(assert (=> d!747014 m!2975043))

(declare-fun m!2976459 () Bool)

(assert (=> b!2633046 m!2976459))

(declare-fun m!2976461 () Bool)

(assert (=> b!2633047 m!2976461))

(assert (=> b!2632213 d!747014))

(assert (=> b!2632213 d!746708))

(declare-fun b!2633073 () Bool)

(declare-fun res!1108636 () Bool)

(declare-fun e!1661415 () Bool)

(assert (=> b!2633073 (=> (not res!1108636) (not e!1661415))))

(assert (=> b!2633073 (= res!1108636 (<= (- (height!1375 (left!23564 (c!423090 v!6381))) (height!1375 (right!23894 (c!423090 v!6381)))) 1))))

(declare-fun b!2633074 () Bool)

(declare-fun isEmpty!17403 (Conc!9521) Bool)

(assert (=> b!2633074 (= e!1661415 (not (isEmpty!17403 (right!23894 (c!423090 v!6381)))))))

(declare-fun d!747030 () Bool)

(declare-fun res!1108635 () Bool)

(declare-fun e!1661414 () Bool)

(assert (=> d!747030 (=> res!1108635 e!1661414)))

(assert (=> d!747030 (= res!1108635 (not ((_ is Node!9521) (c!423090 v!6381))))))

(assert (=> d!747030 (= (isBalanced!2878 (c!423090 v!6381)) e!1661414)))

(declare-fun b!2633075 () Bool)

(declare-fun res!1108633 () Bool)

(assert (=> b!2633075 (=> (not res!1108633) (not e!1661415))))

(assert (=> b!2633075 (= res!1108633 (isBalanced!2878 (left!23564 (c!423090 v!6381))))))

(declare-fun b!2633076 () Bool)

(declare-fun res!1108634 () Bool)

(assert (=> b!2633076 (=> (not res!1108634) (not e!1661415))))

(assert (=> b!2633076 (= res!1108634 (not (isEmpty!17403 (left!23564 (c!423090 v!6381)))))))

(declare-fun b!2633077 () Bool)

(declare-fun res!1108631 () Bool)

(assert (=> b!2633077 (=> (not res!1108631) (not e!1661415))))

(assert (=> b!2633077 (= res!1108631 (isBalanced!2878 (right!23894 (c!423090 v!6381))))))

(declare-fun b!2633078 () Bool)

(assert (=> b!2633078 (= e!1661414 e!1661415)))

(declare-fun res!1108632 () Bool)

(assert (=> b!2633078 (=> (not res!1108632) (not e!1661415))))

(assert (=> b!2633078 (= res!1108632 (<= (- 1) (- (height!1375 (left!23564 (c!423090 v!6381))) (height!1375 (right!23894 (c!423090 v!6381))))))))

(assert (= (and d!747030 (not res!1108635)) b!2633078))

(assert (= (and b!2633078 res!1108632) b!2633073))

(assert (= (and b!2633073 res!1108636) b!2633075))

(assert (= (and b!2633075 res!1108633) b!2633077))

(assert (= (and b!2633077 res!1108631) b!2633076))

(assert (= (and b!2633076 res!1108634) b!2633074))

(assert (=> b!2633078 m!2975959))

(assert (=> b!2633078 m!2975961))

(declare-fun m!2976463 () Bool)

(assert (=> b!2633076 m!2976463))

(declare-fun m!2976465 () Bool)

(assert (=> b!2633077 m!2976465))

(assert (=> b!2633073 m!2975959))

(assert (=> b!2633073 m!2975961))

(declare-fun m!2976467 () Bool)

(assert (=> b!2633074 m!2976467))

(declare-fun m!2976469 () Bool)

(assert (=> b!2633075 m!2976469))

(assert (=> d!746702 d!747030))

(declare-fun d!747032 () Bool)

(assert (=> d!747032 (= (list!11470 lt!926477) (list!11473 (c!423089 lt!926477)))))

(declare-fun bs!475879 () Bool)

(assert (= bs!475879 d!747032))

(declare-fun m!2976471 () Bool)

(assert (=> bs!475879 m!2976471))

(assert (=> d!746764 d!747032))

(declare-fun d!747034 () Bool)

(declare-fun c!423347 () Bool)

(assert (=> d!747034 (= c!423347 ((_ is Cons!30502) (list!11471 lt!926220)))))

(declare-fun e!1661416 () List!30600)

(assert (=> d!747034 (= (printList!1164 thiss!14197 (list!11471 lt!926220)) e!1661416)))

(declare-fun b!2633079 () Bool)

(assert (=> b!2633079 (= e!1661416 (++!7427 (list!11470 (charsOf!2926 (h!35922 (list!11471 lt!926220)))) (printList!1164 thiss!14197 (t!216475 (list!11471 lt!926220)))))))

(declare-fun b!2633080 () Bool)

(assert (=> b!2633080 (= e!1661416 Nil!30500)))

(assert (= (and d!747034 c!423347) b!2633079))

(assert (= (and d!747034 (not c!423347)) b!2633080))

(declare-fun m!2976473 () Bool)

(assert (=> b!2633079 m!2976473))

(assert (=> b!2633079 m!2976473))

(declare-fun m!2976475 () Bool)

(assert (=> b!2633079 m!2976475))

(declare-fun m!2976477 () Bool)

(assert (=> b!2633079 m!2976477))

(assert (=> b!2633079 m!2976475))

(assert (=> b!2633079 m!2976477))

(declare-fun m!2976479 () Bool)

(assert (=> b!2633079 m!2976479))

(assert (=> d!746764 d!747034))

(declare-fun d!747036 () Bool)

(assert (=> d!747036 (= (list!11471 lt!926220) (list!11474 (c!423090 lt!926220)))))

(declare-fun bs!475880 () Bool)

(assert (= bs!475880 d!747036))

(declare-fun m!2976481 () Bool)

(assert (=> bs!475880 m!2976481))

(assert (=> d!746764 d!747036))

(assert (=> d!746764 d!746754))

(assert (=> b!2632259 d!746822))

(declare-fun b!2633081 () Bool)

(declare-fun e!1661420 () List!30602)

(assert (=> b!2633081 (= e!1661420 (list!11474 (c!423090 v!6381)))))

(declare-fun b!2633082 () Bool)

(declare-fun e!1661418 () Int)

(assert (=> b!2633082 (= e!1661418 0)))

(declare-fun b!2633083 () Bool)

(assert (=> b!2633083 (= e!1661420 (drop!1635 (t!216475 (list!11474 (c!423090 v!6381))) (- from!862 1)))))

(declare-fun b!2633084 () Bool)

(declare-fun e!1661419 () List!30602)

(assert (=> b!2633084 (= e!1661419 e!1661420)))

(declare-fun c!423350 () Bool)

(assert (=> b!2633084 (= c!423350 (<= from!862 0))))

(declare-fun b!2633085 () Bool)

(declare-fun e!1661421 () Int)

(declare-fun call!169413 () Int)

(assert (=> b!2633085 (= e!1661421 call!169413)))

(declare-fun d!747038 () Bool)

(declare-fun e!1661417 () Bool)

(assert (=> d!747038 e!1661417))

(declare-fun res!1108637 () Bool)

(assert (=> d!747038 (=> (not res!1108637) (not e!1661417))))

(declare-fun lt!926744 () List!30602)

(assert (=> d!747038 (= res!1108637 (= ((_ map implies) (content!4307 lt!926744) (content!4307 (list!11474 (c!423090 v!6381)))) ((as const (InoxSet Token!8748)) true)))))

(assert (=> d!747038 (= lt!926744 e!1661419)))

(declare-fun c!423351 () Bool)

(assert (=> d!747038 (= c!423351 ((_ is Nil!30502) (list!11474 (c!423090 v!6381))))))

(assert (=> d!747038 (= (drop!1635 (list!11474 (c!423090 v!6381)) from!862) lt!926744)))

(declare-fun b!2633086 () Bool)

(assert (=> b!2633086 (= e!1661417 (= (size!23581 lt!926744) e!1661421))))

(declare-fun c!423349 () Bool)

(assert (=> b!2633086 (= c!423349 (<= from!862 0))))

(declare-fun b!2633087 () Bool)

(assert (=> b!2633087 (= e!1661418 (- call!169413 from!862))))

(declare-fun b!2633088 () Bool)

(assert (=> b!2633088 (= e!1661419 Nil!30502)))

(declare-fun bm!169408 () Bool)

(assert (=> bm!169408 (= call!169413 (size!23581 (list!11474 (c!423090 v!6381))))))

(declare-fun b!2633089 () Bool)

(assert (=> b!2633089 (= e!1661421 e!1661418)))

(declare-fun c!423348 () Bool)

(assert (=> b!2633089 (= c!423348 (>= from!862 call!169413))))

(assert (= (and d!747038 c!423351) b!2633088))

(assert (= (and d!747038 (not c!423351)) b!2633084))

(assert (= (and b!2633084 c!423350) b!2633081))

(assert (= (and b!2633084 (not c!423350)) b!2633083))

(assert (= (and d!747038 res!1108637) b!2633086))

(assert (= (and b!2633086 c!423349) b!2633085))

(assert (= (and b!2633086 (not c!423349)) b!2633089))

(assert (= (and b!2633089 c!423348) b!2633082))

(assert (= (and b!2633089 (not c!423348)) b!2633087))

(assert (= (or b!2633085 b!2633089 b!2633087) bm!169408))

(declare-fun m!2976483 () Bool)

(assert (=> b!2633083 m!2976483))

(declare-fun m!2976485 () Bool)

(assert (=> d!747038 m!2976485))

(assert (=> d!747038 m!2975445))

(declare-fun m!2976487 () Bool)

(assert (=> d!747038 m!2976487))

(declare-fun m!2976489 () Bool)

(assert (=> b!2633086 m!2976489))

(assert (=> bm!169408 m!2975445))

(assert (=> bm!169408 m!2975859))

(assert (=> d!746706 d!747038))

(assert (=> d!746706 d!746906))

(declare-fun d!747040 () Bool)

(assert (=> d!747040 (= (list!11470 lt!926306) (list!11473 (c!423089 lt!926306)))))

(declare-fun bs!475881 () Bool)

(assert (= bs!475881 d!747040))

(declare-fun m!2976491 () Bool)

(assert (=> bs!475881 m!2976491))

(assert (=> d!746652 d!747040))

(assert (=> d!746652 d!746708))

(declare-fun d!747042 () Bool)

(assert (=> d!747042 (forall!6385 (dropList!942 v!6381 (+ 1 from!862)) lambda!98757)))

(declare-fun lt!926746 () Unit!44507)

(assert (=> d!747042 (= lt!926746 (choose!15619 (list!11471 v!6381) (dropList!942 v!6381 (+ 1 from!862)) lambda!98757))))

(assert (=> d!747042 (forall!6385 (list!11471 v!6381) lambda!98757)))

(assert (=> d!747042 (= (lemmaContentSubsetPreservesForall!308 (list!11471 v!6381) (dropList!942 v!6381 (+ 1 from!862)) lambda!98757) lt!926746)))

(declare-fun bs!475882 () Bool)

(assert (= bs!475882 d!747042))

(assert (=> bs!475882 m!2975225))

(declare-fun m!2976493 () Bool)

(assert (=> bs!475882 m!2976493))

(assert (=> bs!475882 m!2975027))

(assert (=> bs!475882 m!2975225))

(declare-fun m!2976495 () Bool)

(assert (=> bs!475882 m!2976495))

(assert (=> bs!475882 m!2975027))

(declare-fun m!2976497 () Bool)

(assert (=> bs!475882 m!2976497))

(assert (=> d!746652 d!747042))

(declare-fun bs!475893 () Bool)

(declare-fun b!2633151 () Bool)

(assert (= bs!475893 (and b!2633151 d!746686)))

(declare-fun lambda!98803 () Int)

(assert (=> bs!475893 (= lambda!98803 lambda!98769)))

(declare-fun bs!475894 () Bool)

(assert (= bs!475894 (and b!2633151 d!747014)))

(assert (=> bs!475894 (= lambda!98803 lambda!98797)))

(declare-fun bs!475895 () Bool)

(assert (= bs!475895 (and b!2633151 d!746652)))

(assert (=> bs!475895 (not (= lambda!98803 lambda!98757))))

(declare-fun bs!475896 () Bool)

(assert (= bs!475896 (and b!2633151 d!746984)))

(assert (=> bs!475896 (not (= lambda!98803 lambda!98793))))

(declare-fun bs!475897 () Bool)

(assert (= bs!475897 (and b!2633151 b!2631978)))

(assert (=> bs!475897 (not (= lambda!98803 lambda!98751))))

(declare-fun bs!475898 () Bool)

(assert (= bs!475898 (and b!2633151 b!2631976)))

(assert (=> bs!475898 (= lambda!98803 lambda!98752)))

(declare-fun bs!475899 () Bool)

(assert (= bs!475899 (and b!2633151 b!2632074)))

(assert (=> bs!475899 (= lambda!98803 lambda!98758)))

(declare-fun bs!475900 () Bool)

(assert (= bs!475900 (and b!2633151 b!2632934)))

(assert (=> bs!475900 (= lambda!98803 lambda!98794)))

(declare-fun b!2633155 () Bool)

(declare-fun e!1661463 () Bool)

(assert (=> b!2633155 (= e!1661463 true)))

(declare-fun b!2633154 () Bool)

(declare-fun e!1661462 () Bool)

(assert (=> b!2633154 (= e!1661462 e!1661463)))

(declare-fun b!2633153 () Bool)

(declare-fun e!1661461 () Bool)

(assert (=> b!2633153 (= e!1661461 e!1661462)))

(assert (=> b!2633151 e!1661461))

(assert (= b!2633154 b!2633155))

(assert (= b!2633153 b!2633154))

(assert (= (and b!2633151 ((_ is Cons!30501) rules!1726)) b!2633153))

(assert (=> b!2633155 (< (dynLambda!13064 order!16535 (toValue!6553 (transformation!4639 (h!35921 rules!1726)))) (dynLambda!13065 order!16537 lambda!98803))))

(assert (=> b!2633155 (< (dynLambda!13066 order!16539 (toChars!6412 (transformation!4639 (h!35921 rules!1726)))) (dynLambda!13065 order!16537 lambda!98803))))

(assert (=> b!2633151 true))

(declare-fun bm!169419 () Bool)

(declare-fun call!169428 () BalanceConc!18654)

(assert (=> bm!169419 (= call!169428 (charsOf!2926 (h!35922 (dropList!942 v!6381 (+ 1 from!862)))))))

(declare-fun b!2633145 () Bool)

(declare-fun e!1661457 () List!30600)

(assert (=> b!2633145 (= e!1661457 Nil!30500)))

(assert (=> b!2633145 (= (print!1637 thiss!14197 (singletonSeq!2056 (h!35922 (dropList!942 v!6381 (+ 1 from!862))))) (printTailRec!1123 thiss!14197 (singletonSeq!2056 (h!35922 (dropList!942 v!6381 (+ 1 from!862)))) 0 (BalanceConc!18655 Empty!9520)))))

(declare-fun lt!926774 () Unit!44507)

(declare-fun Unit!44519 () Unit!44507)

(assert (=> b!2633145 (= lt!926774 Unit!44519)))

(declare-fun lt!926773 () Unit!44507)

(declare-fun lt!926769 () List!30600)

(declare-fun call!169427 () List!30600)

(assert (=> b!2633145 (= lt!926773 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!798 thiss!14197 rules!1726 call!169427 lt!926769))))

(assert (=> b!2633145 false))

(declare-fun lt!926772 () Unit!44507)

(declare-fun Unit!44520 () Unit!44507)

(assert (=> b!2633145 (= lt!926772 Unit!44520)))

(declare-fun b!2633146 () Bool)

(declare-fun e!1661458 () List!30600)

(assert (=> b!2633146 (= e!1661458 (list!11470 (charsOf!2926 separatorToken!156)))))

(declare-fun b!2633147 () Bool)

(declare-fun e!1661460 () List!30600)

(assert (=> b!2633147 (= e!1661460 Nil!30500)))

(declare-fun c!423368 () Bool)

(declare-fun call!169426 () List!30600)

(declare-fun bm!169420 () Bool)

(declare-fun call!169425 () BalanceConc!18654)

(assert (=> bm!169420 (= call!169426 (list!11470 (ite c!423368 call!169428 call!169425)))))

(declare-fun bm!169421 () Bool)

(declare-fun c!423367 () Bool)

(assert (=> bm!169421 (= c!423367 c!423368)))

(declare-fun call!169424 () List!30600)

(assert (=> bm!169421 (= call!169424 (++!7427 (ite c!423368 call!169426 call!169427) e!1661458))))

(declare-fun b!2633148 () Bool)

(declare-fun e!1661459 () List!30600)

(assert (=> b!2633148 (= e!1661459 call!169424)))

(declare-fun bm!169423 () Bool)

(assert (=> bm!169423 (= call!169425 call!169428)))

(declare-fun b!2633149 () Bool)

(assert (=> b!2633149 (= e!1661458 lt!926769)))

(declare-fun b!2633150 () Bool)

(assert (=> b!2633150 (= e!1661457 (++!7427 call!169424 lt!926769))))

(assert (=> b!2633151 (= e!1661460 e!1661459)))

(declare-fun lt!926771 () Unit!44507)

(assert (=> b!2633151 (= lt!926771 (forallContained!991 (dropList!942 v!6381 (+ 1 from!862)) lambda!98803 (h!35922 (dropList!942 v!6381 (+ 1 from!862)))))))

(assert (=> b!2633151 (= lt!926769 (printWithSeparatorTokenWhenNeededList!655 thiss!14197 rules!1726 (t!216475 (dropList!942 v!6381 (+ 1 from!862))) separatorToken!156))))

(declare-fun lt!926770 () Option!6029)

(assert (=> b!2633151 (= lt!926770 (maxPrefix!2307 thiss!14197 rules!1726 (++!7427 (list!11470 (charsOf!2926 (h!35922 (dropList!942 v!6381 (+ 1 from!862))))) lt!926769)))))

(assert (=> b!2633151 (= c!423368 (and ((_ is Some!6028) lt!926770) (= (_1!17540 (v!32441 lt!926770)) (h!35922 (dropList!942 v!6381 (+ 1 from!862))))))))

(declare-fun b!2633152 () Bool)

(declare-fun c!423369 () Bool)

(assert (=> b!2633152 (= c!423369 (and ((_ is Some!6028) lt!926770) (not (= (_1!17540 (v!32441 lt!926770)) (h!35922 (dropList!942 v!6381 (+ 1 from!862)))))))))

(assert (=> b!2633152 (= e!1661459 e!1661457)))

(declare-fun d!747044 () Bool)

(declare-fun c!423366 () Bool)

(assert (=> d!747044 (= c!423366 ((_ is Cons!30502) (dropList!942 v!6381 (+ 1 from!862))))))

(assert (=> d!747044 (= (printWithSeparatorTokenWhenNeededList!655 thiss!14197 rules!1726 (dropList!942 v!6381 (+ 1 from!862)) separatorToken!156) e!1661460)))

(declare-fun bm!169422 () Bool)

(assert (=> bm!169422 (= call!169427 call!169426)))

(assert (= (and d!747044 c!423366) b!2633151))

(assert (= (and d!747044 (not c!423366)) b!2633147))

(assert (= (and b!2633151 c!423368) b!2633148))

(assert (= (and b!2633151 (not c!423368)) b!2633152))

(assert (= (and b!2633152 c!423369) b!2633150))

(assert (= (and b!2633152 (not c!423369)) b!2633145))

(assert (= (or b!2633150 b!2633145) bm!169423))

(assert (= (or b!2633150 b!2633145) bm!169422))

(assert (= (or b!2633148 bm!169423) bm!169419))

(assert (= (or b!2633148 bm!169422) bm!169420))

(assert (= (or b!2633148 b!2633150) bm!169421))

(assert (= (and bm!169421 c!423367) b!2633149))

(assert (= (and bm!169421 (not c!423367)) b!2633146))

(assert (=> b!2633151 m!2975225))

(declare-fun m!2976589 () Bool)

(assert (=> b!2633151 m!2976589))

(declare-fun m!2976591 () Bool)

(assert (=> b!2633151 m!2976591))

(declare-fun m!2976593 () Bool)

(assert (=> b!2633151 m!2976593))

(assert (=> b!2633151 m!2976593))

(declare-fun m!2976595 () Bool)

(assert (=> b!2633151 m!2976595))

(declare-fun m!2976597 () Bool)

(assert (=> b!2633151 m!2976597))

(assert (=> b!2633151 m!2976591))

(assert (=> b!2633151 m!2976595))

(declare-fun m!2976599 () Bool)

(assert (=> b!2633151 m!2976599))

(declare-fun m!2976601 () Bool)

(assert (=> bm!169421 m!2976601))

(declare-fun m!2976603 () Bool)

(assert (=> b!2633145 m!2976603))

(assert (=> b!2633145 m!2976603))

(declare-fun m!2976605 () Bool)

(assert (=> b!2633145 m!2976605))

(assert (=> b!2633145 m!2976603))

(declare-fun m!2976607 () Bool)

(assert (=> b!2633145 m!2976607))

(declare-fun m!2976609 () Bool)

(assert (=> b!2633145 m!2976609))

(declare-fun m!2976611 () Bool)

(assert (=> b!2633150 m!2976611))

(declare-fun m!2976613 () Bool)

(assert (=> b!2633146 m!2976613))

(assert (=> b!2633146 m!2976613))

(declare-fun m!2976615 () Bool)

(assert (=> b!2633146 m!2976615))

(assert (=> bm!169419 m!2976591))

(declare-fun m!2976617 () Bool)

(assert (=> bm!169420 m!2976617))

(assert (=> d!746652 d!747044))

(assert (=> d!746652 d!746744))

(declare-fun d!747084 () Bool)

(assert (=> d!747084 (= (dropList!942 v!6381 (+ 1 from!862)) (drop!1635 (list!11474 (c!423090 v!6381)) (+ 1 from!862)))))

(declare-fun bs!475901 () Bool)

(assert (= bs!475901 d!747084))

(assert (=> bs!475901 m!2975445))

(assert (=> bs!475901 m!2975445))

(declare-fun m!2976619 () Bool)

(assert (=> bs!475901 m!2976619))

(assert (=> d!746652 d!747084))

(declare-fun d!747086 () Bool)

(assert (=> d!747086 (= (list!11471 lt!926444) (list!11474 (c!423090 lt!926444)))))

(declare-fun bs!475902 () Bool)

(assert (= bs!475902 d!747086))

(declare-fun m!2976621 () Bool)

(assert (=> bs!475902 m!2976621))

(assert (=> d!746752 d!747086))

(declare-fun d!747088 () Bool)

(declare-fun e!1661466 () Bool)

(assert (=> d!747088 e!1661466))

(declare-fun res!1108665 () Bool)

(assert (=> d!747088 (=> (not res!1108665) (not e!1661466))))

(declare-fun lt!926777 () BalanceConc!18656)

(assert (=> d!747088 (= res!1108665 (= (list!11471 lt!926777) (Cons!30502 lt!926207 Nil!30502)))))

(declare-fun choose!15627 (Token!8748) BalanceConc!18656)

(assert (=> d!747088 (= lt!926777 (choose!15627 lt!926207))))

(assert (=> d!747088 (= (singleton!910 lt!926207) lt!926777)))

(declare-fun b!2633158 () Bool)

(assert (=> b!2633158 (= e!1661466 (isBalanced!2878 (c!423090 lt!926777)))))

(assert (= (and d!747088 res!1108665) b!2633158))

(declare-fun m!2976623 () Bool)

(assert (=> d!747088 m!2976623))

(declare-fun m!2976625 () Bool)

(assert (=> d!747088 m!2976625))

(declare-fun m!2976627 () Bool)

(assert (=> b!2633158 m!2976627))

(assert (=> d!746752 d!747088))

(declare-fun d!747090 () Bool)

(assert (=> d!747090 (= (inv!41350 (tag!5133 (h!35921 (t!216474 rules!1726)))) (= (mod (str.len (value!149790 (tag!5133 (h!35921 (t!216474 rules!1726))))) 2) 0))))

(assert (=> b!2632393 d!747090))

(declare-fun d!747092 () Bool)

(declare-fun res!1108666 () Bool)

(declare-fun e!1661467 () Bool)

(assert (=> d!747092 (=> (not res!1108666) (not e!1661467))))

(assert (=> d!747092 (= res!1108666 (semiInverseModEq!1916 (toChars!6412 (transformation!4639 (h!35921 (t!216474 rules!1726)))) (toValue!6553 (transformation!4639 (h!35921 (t!216474 rules!1726))))))))

(assert (=> d!747092 (= (inv!41355 (transformation!4639 (h!35921 (t!216474 rules!1726)))) e!1661467)))

(declare-fun b!2633159 () Bool)

(assert (=> b!2633159 (= e!1661467 (equivClasses!1817 (toChars!6412 (transformation!4639 (h!35921 (t!216474 rules!1726)))) (toValue!6553 (transformation!4639 (h!35921 (t!216474 rules!1726))))))))

(assert (= (and d!747092 res!1108666) b!2633159))

(declare-fun m!2976629 () Bool)

(assert (=> d!747092 m!2976629))

(declare-fun m!2976631 () Bool)

(assert (=> b!2633159 m!2976631))

(assert (=> b!2632393 d!747092))

(assert (=> b!2632120 d!746824))

(assert (=> b!2632120 d!746816))

(assert (=> b!2632120 d!746892))

(assert (=> b!2632120 d!746810))

(assert (=> b!2632120 d!746826))

(declare-fun d!747094 () Bool)

(declare-fun lt!926801 () List!30600)

(assert (=> d!747094 (= lt!926801 (++!7427 (list!11470 (BalanceConc!18655 Empty!9520)) (printList!1164 thiss!14197 (dropList!942 lt!926220 0))))))

(declare-fun e!1661476 () List!30600)

(assert (=> d!747094 (= lt!926801 e!1661476)))

(declare-fun c!423378 () Bool)

(assert (=> d!747094 (= c!423378 ((_ is Cons!30502) (dropList!942 lt!926220 0)))))

(assert (=> d!747094 (= (printListTailRec!505 thiss!14197 (dropList!942 lt!926220 0) (list!11470 (BalanceConc!18655 Empty!9520))) lt!926801)))

(declare-fun b!2633176 () Bool)

(assert (=> b!2633176 (= e!1661476 (printListTailRec!505 thiss!14197 (t!216475 (dropList!942 lt!926220 0)) (++!7427 (list!11470 (BalanceConc!18655 Empty!9520)) (list!11470 (charsOf!2926 (h!35922 (dropList!942 lt!926220 0)))))))))

(declare-fun lt!926802 () List!30600)

(assert (=> b!2633176 (= lt!926802 (list!11470 (charsOf!2926 (h!35922 (dropList!942 lt!926220 0)))))))

(declare-fun lt!926800 () List!30600)

(assert (=> b!2633176 (= lt!926800 (printList!1164 thiss!14197 (t!216475 (dropList!942 lt!926220 0))))))

(declare-fun lt!926804 () Unit!44507)

(declare-fun lemmaConcatAssociativity!1491 (List!30600 List!30600 List!30600) Unit!44507)

(assert (=> b!2633176 (= lt!926804 (lemmaConcatAssociativity!1491 (list!11470 (BalanceConc!18655 Empty!9520)) lt!926802 lt!926800))))

(assert (=> b!2633176 (= (++!7427 (++!7427 (list!11470 (BalanceConc!18655 Empty!9520)) lt!926802) lt!926800) (++!7427 (list!11470 (BalanceConc!18655 Empty!9520)) (++!7427 lt!926802 lt!926800)))))

(declare-fun lt!926803 () Unit!44507)

(assert (=> b!2633176 (= lt!926803 lt!926804)))

(declare-fun b!2633177 () Bool)

(assert (=> b!2633177 (= e!1661476 (list!11470 (BalanceConc!18655 Empty!9520)))))

(assert (= (and d!747094 c!423378) b!2633176))

(assert (= (and d!747094 (not c!423378)) b!2633177))

(assert (=> d!747094 m!2975557))

(declare-fun m!2976633 () Bool)

(assert (=> d!747094 m!2976633))

(assert (=> d!747094 m!2975559))

(assert (=> d!747094 m!2976633))

(declare-fun m!2976635 () Bool)

(assert (=> d!747094 m!2976635))

(declare-fun m!2976637 () Bool)

(assert (=> b!2633176 m!2976637))

(declare-fun m!2976639 () Bool)

(assert (=> b!2633176 m!2976639))

(declare-fun m!2976641 () Bool)

(assert (=> b!2633176 m!2976641))

(declare-fun m!2976643 () Bool)

(assert (=> b!2633176 m!2976643))

(declare-fun m!2976645 () Bool)

(assert (=> b!2633176 m!2976645))

(declare-fun m!2976647 () Bool)

(assert (=> b!2633176 m!2976647))

(declare-fun m!2976649 () Bool)

(assert (=> b!2633176 m!2976649))

(assert (=> b!2633176 m!2975559))

(declare-fun m!2976651 () Bool)

(assert (=> b!2633176 m!2976651))

(declare-fun m!2976653 () Bool)

(assert (=> b!2633176 m!2976653))

(assert (=> b!2633176 m!2975559))

(assert (=> b!2633176 m!2976639))

(assert (=> b!2633176 m!2976641))

(assert (=> b!2633176 m!2976637))

(assert (=> b!2633176 m!2975559))

(declare-fun m!2976655 () Bool)

(assert (=> b!2633176 m!2976655))

(assert (=> b!2633176 m!2976651))

(assert (=> b!2633176 m!2975559))

(assert (=> b!2633176 m!2976645))

(assert (=> d!746754 d!747094))

(declare-fun d!747096 () Bool)

(assert (=> d!747096 (= (list!11470 (BalanceConc!18655 Empty!9520)) (list!11473 (c!423089 (BalanceConc!18655 Empty!9520))))))

(declare-fun bs!475903 () Bool)

(assert (= bs!475903 d!747096))

(declare-fun m!2976657 () Bool)

(assert (=> bs!475903 m!2976657))

(assert (=> d!746754 d!747096))

(declare-fun d!747098 () Bool)

(declare-fun lt!926805 () Int)

(assert (=> d!747098 (= lt!926805 (size!23581 (list!11471 lt!926220)))))

(assert (=> d!747098 (= lt!926805 (size!23582 (c!423090 lt!926220)))))

(assert (=> d!747098 (= (size!23579 lt!926220) lt!926805)))

(declare-fun bs!475904 () Bool)

(assert (= bs!475904 d!747098))

(assert (=> bs!475904 m!2975569))

(assert (=> bs!475904 m!2975569))

(declare-fun m!2976659 () Bool)

(assert (=> bs!475904 m!2976659))

(declare-fun m!2976661 () Bool)

(assert (=> bs!475904 m!2976661))

(assert (=> d!746754 d!747098))

(declare-fun d!747100 () Bool)

(assert (=> d!747100 (= (dropList!942 lt!926220 0) (drop!1635 (list!11474 (c!423090 lt!926220)) 0))))

(declare-fun bs!475905 () Bool)

(assert (= bs!475905 d!747100))

(assert (=> bs!475905 m!2976481))

(assert (=> bs!475905 m!2976481))

(declare-fun m!2976663 () Bool)

(assert (=> bs!475905 m!2976663))

(assert (=> d!746754 d!747100))

(declare-fun d!747102 () Bool)

(assert (=> d!747102 (= (list!11470 lt!926467) (list!11473 (c!423089 lt!926467)))))

(declare-fun bs!475906 () Bool)

(assert (= bs!475906 d!747102))

(declare-fun m!2976665 () Bool)

(assert (=> bs!475906 m!2976665))

(assert (=> d!746754 d!747102))

(declare-fun d!747104 () Bool)

(declare-fun lt!926806 () Bool)

(assert (=> d!747104 (= lt!926806 (select (content!4307 (t!216475 lt!926208)) lt!926207))))

(declare-fun e!1661479 () Bool)

(assert (=> d!747104 (= lt!926806 e!1661479)))

(declare-fun res!1108668 () Bool)

(assert (=> d!747104 (=> (not res!1108668) (not e!1661479))))

(assert (=> d!747104 (= res!1108668 ((_ is Cons!30502) (t!216475 lt!926208)))))

(assert (=> d!747104 (= (contains!5785 (t!216475 lt!926208) lt!926207) lt!926806)))

(declare-fun b!2633182 () Bool)

(declare-fun e!1661480 () Bool)

(assert (=> b!2633182 (= e!1661479 e!1661480)))

(declare-fun res!1108667 () Bool)

(assert (=> b!2633182 (=> res!1108667 e!1661480)))

(assert (=> b!2633182 (= res!1108667 (= (h!35922 (t!216475 lt!926208)) lt!926207))))

(declare-fun b!2633183 () Bool)

(assert (=> b!2633183 (= e!1661480 (contains!5785 (t!216475 (t!216475 lt!926208)) lt!926207))))

(assert (= (and d!747104 res!1108668) b!2633182))

(assert (= (and b!2633182 (not res!1108667)) b!2633183))

(assert (=> d!747104 m!2976407))

(declare-fun m!2976667 () Bool)

(assert (=> d!747104 m!2976667))

(declare-fun m!2976669 () Bool)

(assert (=> b!2633183 m!2976669))

(assert (=> b!2632229 d!747104))

(declare-fun b!2633213 () Bool)

(declare-fun e!1661510 () Bool)

(declare-fun e!1661511 () Bool)

(assert (=> b!2633213 (= e!1661510 e!1661511)))

(declare-fun res!1108694 () Bool)

(assert (=> b!2633213 (=> res!1108694 e!1661511)))

(assert (=> b!2633213 (= res!1108694 (not ((_ is Node!9520) (c!423089 lt!926206))))))

(declare-fun b!2633214 () Bool)

(declare-fun e!1661512 () Bool)

(declare-fun e!1661506 () Bool)

(assert (=> b!2633214 (= e!1661512 e!1661506)))

(declare-fun res!1108693 () Bool)

(assert (=> b!2633214 (=> (not res!1108693) (not e!1661506))))

(declare-fun appendAssoc!169 (List!30600 List!30600 List!30600) Bool)

(assert (=> b!2633214 (= res!1108693 (appendAssoc!169 (list!11473 (left!23563 (c!423089 lt!926214))) (list!11473 (right!23893 (c!423089 lt!926214))) (list!11473 (c!423089 lt!926206))))))

(declare-fun b!2633215 () Bool)

(declare-fun e!1661509 () Bool)

(assert (=> b!2633215 (= e!1661509 (appendAssoc!169 (++!7427 (list!11473 (c!423089 lt!926214)) (list!11473 (left!23563 (left!23563 (c!423089 lt!926206))))) (list!11473 (right!23893 (left!23563 (c!423089 lt!926206)))) (list!11473 (right!23893 (c!423089 lt!926206)))))))

(declare-fun b!2633217 () Bool)

(declare-fun e!1661514 () Bool)

(assert (=> b!2633217 (= e!1661506 e!1661514)))

(declare-fun res!1108687 () Bool)

(assert (=> b!2633217 (=> res!1108687 e!1661514)))

(assert (=> b!2633217 (= res!1108687 (not ((_ is Node!9520) (right!23893 (c!423089 lt!926214)))))))

(declare-fun b!2633218 () Bool)

(declare-fun e!1661507 () Bool)

(assert (=> b!2633218 (= e!1661507 (appendAssoc!169 (list!11473 (left!23563 (c!423089 lt!926214))) (list!11473 (left!23563 (right!23893 (c!423089 lt!926214)))) (++!7427 (list!11473 (right!23893 (right!23893 (c!423089 lt!926214)))) (list!11473 (c!423089 lt!926206)))))))

(declare-fun b!2633219 () Bool)

(declare-fun e!1661508 () Bool)

(assert (=> b!2633219 (= e!1661508 e!1661509)))

(declare-fun res!1108688 () Bool)

(assert (=> b!2633219 (=> (not res!1108688) (not e!1661509))))

(assert (=> b!2633219 (= res!1108688 (appendAssoc!169 (list!11473 (c!423089 lt!926214)) (list!11473 (left!23563 (left!23563 (c!423089 lt!926206)))) (list!11473 (right!23893 (left!23563 (c!423089 lt!926206))))))))

(declare-fun b!2633220 () Bool)

(assert (=> b!2633220 (= e!1661514 e!1661507)))

(declare-fun res!1108689 () Bool)

(assert (=> b!2633220 (=> (not res!1108689) (not e!1661507))))

(assert (=> b!2633220 (= res!1108689 (appendAssoc!169 (list!11473 (left!23563 (right!23893 (c!423089 lt!926214)))) (list!11473 (right!23893 (right!23893 (c!423089 lt!926214)))) (list!11473 (c!423089 lt!926206))))))

(declare-fun b!2633221 () Bool)

(declare-fun e!1661513 () Bool)

(assert (=> b!2633221 (= e!1661511 e!1661513)))

(declare-fun res!1108692 () Bool)

(assert (=> b!2633221 (=> (not res!1108692) (not e!1661513))))

(assert (=> b!2633221 (= res!1108692 (appendAssoc!169 (list!11473 (c!423089 lt!926214)) (list!11473 (left!23563 (c!423089 lt!926206))) (list!11473 (right!23893 (c!423089 lt!926206)))))))

(declare-fun d!747106 () Bool)

(assert (=> d!747106 e!1661510))

(declare-fun res!1108695 () Bool)

(assert (=> d!747106 (=> (not res!1108695) (not e!1661510))))

(assert (=> d!747106 (= res!1108695 e!1661512)))

(declare-fun res!1108690 () Bool)

(assert (=> d!747106 (=> res!1108690 e!1661512)))

(assert (=> d!747106 (= res!1108690 (not ((_ is Node!9520) (c!423089 lt!926214))))))

(assert (=> d!747106 (= (appendAssocInst!631 (c!423089 lt!926214) (c!423089 lt!926206)) true)))

(declare-fun b!2633216 () Bool)

(assert (=> b!2633216 (= e!1661513 e!1661508)))

(declare-fun res!1108691 () Bool)

(assert (=> b!2633216 (=> res!1108691 e!1661508)))

(assert (=> b!2633216 (= res!1108691 (not ((_ is Node!9520) (left!23563 (c!423089 lt!926206)))))))

(assert (= (and d!747106 (not res!1108690)) b!2633214))

(assert (= (and b!2633214 res!1108693) b!2633217))

(assert (= (and b!2633217 (not res!1108687)) b!2633220))

(assert (= (and b!2633220 res!1108689) b!2633218))

(assert (= (and d!747106 res!1108695) b!2633213))

(assert (= (and b!2633213 (not res!1108694)) b!2633221))

(assert (= (and b!2633221 res!1108692) b!2633216))

(assert (= (and b!2633216 (not res!1108691)) b!2633219))

(assert (= (and b!2633219 res!1108688) b!2633215))

(assert (=> b!2633219 m!2975299))

(declare-fun m!2976711 () Bool)

(assert (=> b!2633219 m!2976711))

(declare-fun m!2976713 () Bool)

(assert (=> b!2633219 m!2976713))

(assert (=> b!2633219 m!2975299))

(assert (=> b!2633219 m!2976711))

(assert (=> b!2633219 m!2976713))

(declare-fun m!2976715 () Bool)

(assert (=> b!2633219 m!2976715))

(assert (=> b!2633214 m!2975989))

(assert (=> b!2633214 m!2975991))

(assert (=> b!2633214 m!2975919))

(assert (=> b!2633214 m!2975989))

(assert (=> b!2633214 m!2975991))

(assert (=> b!2633214 m!2975919))

(declare-fun m!2976717 () Bool)

(assert (=> b!2633214 m!2976717))

(assert (=> b!2633221 m!2975299))

(declare-fun m!2976719 () Bool)

(assert (=> b!2633221 m!2976719))

(declare-fun m!2976721 () Bool)

(assert (=> b!2633221 m!2976721))

(assert (=> b!2633221 m!2975299))

(assert (=> b!2633221 m!2976719))

(assert (=> b!2633221 m!2976721))

(declare-fun m!2976723 () Bool)

(assert (=> b!2633221 m!2976723))

(declare-fun m!2976725 () Bool)

(assert (=> b!2633220 m!2976725))

(declare-fun m!2976727 () Bool)

(assert (=> b!2633220 m!2976727))

(assert (=> b!2633220 m!2975919))

(assert (=> b!2633220 m!2976725))

(assert (=> b!2633220 m!2976727))

(assert (=> b!2633220 m!2975919))

(declare-fun m!2976729 () Bool)

(assert (=> b!2633220 m!2976729))

(assert (=> b!2633218 m!2975989))

(assert (=> b!2633218 m!2976725))

(declare-fun m!2976731 () Bool)

(assert (=> b!2633218 m!2976731))

(declare-fun m!2976733 () Bool)

(assert (=> b!2633218 m!2976733))

(assert (=> b!2633218 m!2975919))

(assert (=> b!2633218 m!2976727))

(assert (=> b!2633218 m!2975919))

(assert (=> b!2633218 m!2976731))

(assert (=> b!2633218 m!2976725))

(assert (=> b!2633218 m!2976727))

(assert (=> b!2633218 m!2975989))

(assert (=> b!2633215 m!2976721))

(declare-fun m!2976735 () Bool)

(assert (=> b!2633215 m!2976735))

(assert (=> b!2633215 m!2976713))

(assert (=> b!2633215 m!2976721))

(declare-fun m!2976737 () Bool)

(assert (=> b!2633215 m!2976737))

(assert (=> b!2633215 m!2976711))

(assert (=> b!2633215 m!2975299))

(assert (=> b!2633215 m!2976711))

(assert (=> b!2633215 m!2976735))

(assert (=> b!2633215 m!2976713))

(assert (=> b!2633215 m!2975299))

(assert (=> d!746682 d!747106))

(assert (=> d!746682 d!746858))

(declare-fun d!747120 () Bool)

(assert (=> d!747120 (= (list!11470 lt!926366) (list!11473 (c!423089 lt!926366)))))

(declare-fun bs!475915 () Bool)

(assert (= bs!475915 d!747120))

(declare-fun m!2976739 () Bool)

(assert (=> bs!475915 m!2976739))

(assert (=> b!2632152 d!747120))

(declare-fun d!747122 () Bool)

(declare-fun e!1661519 () Bool)

(assert (=> d!747122 e!1661519))

(declare-fun res!1108701 () Bool)

(assert (=> d!747122 (=> (not res!1108701) (not e!1661519))))

(declare-fun lt!926816 () List!30600)

(declare-fun content!4309 (List!30600) (InoxSet C!15724))

(assert (=> d!747122 (= res!1108701 (= (content!4309 lt!926816) ((_ map or) (content!4309 (list!11470 lt!926214)) (content!4309 (list!11470 lt!926206)))))))

(declare-fun e!1661520 () List!30600)

(assert (=> d!747122 (= lt!926816 e!1661520)))

(declare-fun c!423387 () Bool)

(assert (=> d!747122 (= c!423387 ((_ is Nil!30500) (list!11470 lt!926214)))))

(assert (=> d!747122 (= (++!7427 (list!11470 lt!926214) (list!11470 lt!926206)) lt!926816)))

(declare-fun b!2633232 () Bool)

(declare-fun res!1108700 () Bool)

(assert (=> b!2633232 (=> (not res!1108700) (not e!1661519))))

(assert (=> b!2633232 (= res!1108700 (= (size!23580 lt!926816) (+ (size!23580 (list!11470 lt!926214)) (size!23580 (list!11470 lt!926206)))))))

(declare-fun b!2633231 () Bool)

(assert (=> b!2633231 (= e!1661520 (Cons!30500 (h!35920 (list!11470 lt!926214)) (++!7427 (t!216473 (list!11470 lt!926214)) (list!11470 lt!926206))))))

(declare-fun b!2633230 () Bool)

(assert (=> b!2633230 (= e!1661520 (list!11470 lt!926206))))

(declare-fun b!2633233 () Bool)

(assert (=> b!2633233 (= e!1661519 (or (not (= (list!11470 lt!926206) Nil!30500)) (= lt!926816 (list!11470 lt!926214))))))

(assert (= (and d!747122 c!423387) b!2633230))

(assert (= (and d!747122 (not c!423387)) b!2633231))

(assert (= (and d!747122 res!1108701) b!2633232))

(assert (= (and b!2633232 res!1108700) b!2633233))

(declare-fun m!2976741 () Bool)

(assert (=> d!747122 m!2976741))

(assert (=> d!747122 m!2974991))

(declare-fun m!2976743 () Bool)

(assert (=> d!747122 m!2976743))

(assert (=> d!747122 m!2975281))

(declare-fun m!2976745 () Bool)

(assert (=> d!747122 m!2976745))

(declare-fun m!2976747 () Bool)

(assert (=> b!2633232 m!2976747))

(assert (=> b!2633232 m!2974991))

(declare-fun m!2976749 () Bool)

(assert (=> b!2633232 m!2976749))

(assert (=> b!2633232 m!2975281))

(declare-fun m!2976751 () Bool)

(assert (=> b!2633232 m!2976751))

(assert (=> b!2633231 m!2975281))

(declare-fun m!2976753 () Bool)

(assert (=> b!2633231 m!2976753))

(assert (=> b!2632152 d!747122))

(assert (=> b!2632152 d!746684))

(declare-fun d!747124 () Bool)

(assert (=> d!747124 (= (list!11470 lt!926206) (list!11473 (c!423089 lt!926206)))))

(declare-fun bs!475916 () Bool)

(assert (= bs!475916 d!747124))

(assert (=> bs!475916 m!2975919))

(assert (=> b!2632152 d!747124))

(assert (=> b!2632150 d!746858))

(assert (=> b!2632150 d!746868))

(assert (=> b!2632150 d!746870))

(assert (=> b!2632150 d!746872))

(assert (=> b!2632150 d!746874))

(declare-fun b!2633234 () Bool)

(declare-fun res!1108707 () Bool)

(declare-fun e!1661522 () Bool)

(assert (=> b!2633234 (=> (not res!1108707) (not e!1661522))))

(assert (=> b!2633234 (= res!1108707 (<= (- (height!1375 (left!23564 (c!423090 lt!926444))) (height!1375 (right!23894 (c!423090 lt!926444)))) 1))))

(declare-fun b!2633235 () Bool)

(assert (=> b!2633235 (= e!1661522 (not (isEmpty!17403 (right!23894 (c!423090 lt!926444)))))))

(declare-fun d!747126 () Bool)

(declare-fun res!1108706 () Bool)

(declare-fun e!1661521 () Bool)

(assert (=> d!747126 (=> res!1108706 e!1661521)))

(assert (=> d!747126 (= res!1108706 (not ((_ is Node!9521) (c!423090 lt!926444))))))

(assert (=> d!747126 (= (isBalanced!2878 (c!423090 lt!926444)) e!1661521)))

(declare-fun b!2633236 () Bool)

(declare-fun res!1108704 () Bool)

(assert (=> b!2633236 (=> (not res!1108704) (not e!1661522))))

(assert (=> b!2633236 (= res!1108704 (isBalanced!2878 (left!23564 (c!423090 lt!926444))))))

(declare-fun b!2633237 () Bool)

(declare-fun res!1108705 () Bool)

(assert (=> b!2633237 (=> (not res!1108705) (not e!1661522))))

(assert (=> b!2633237 (= res!1108705 (not (isEmpty!17403 (left!23564 (c!423090 lt!926444)))))))

(declare-fun b!2633238 () Bool)

(declare-fun res!1108702 () Bool)

(assert (=> b!2633238 (=> (not res!1108702) (not e!1661522))))

(assert (=> b!2633238 (= res!1108702 (isBalanced!2878 (right!23894 (c!423090 lt!926444))))))

(declare-fun b!2633239 () Bool)

(assert (=> b!2633239 (= e!1661521 e!1661522)))

(declare-fun res!1108703 () Bool)

(assert (=> b!2633239 (=> (not res!1108703) (not e!1661522))))

(assert (=> b!2633239 (= res!1108703 (<= (- 1) (- (height!1375 (left!23564 (c!423090 lt!926444))) (height!1375 (right!23894 (c!423090 lt!926444))))))))

(assert (= (and d!747126 (not res!1108706)) b!2633239))

(assert (= (and b!2633239 res!1108703) b!2633234))

(assert (= (and b!2633234 res!1108707) b!2633236))

(assert (= (and b!2633236 res!1108704) b!2633238))

(assert (= (and b!2633238 res!1108702) b!2633237))

(assert (= (and b!2633237 res!1108705) b!2633235))

(declare-fun m!2976755 () Bool)

(assert (=> b!2633239 m!2976755))

(declare-fun m!2976757 () Bool)

(assert (=> b!2633239 m!2976757))

(declare-fun m!2976759 () Bool)

(assert (=> b!2633237 m!2976759))

(declare-fun m!2976761 () Bool)

(assert (=> b!2633238 m!2976761))

(assert (=> b!2633234 m!2976755))

(assert (=> b!2633234 m!2976757))

(declare-fun m!2976763 () Bool)

(assert (=> b!2633235 m!2976763))

(declare-fun m!2976765 () Bool)

(assert (=> b!2633236 m!2976765))

(assert (=> b!2632329 d!747126))

(declare-fun d!747128 () Bool)

(declare-fun lt!926817 () Bool)

(declare-fun e!1661523 () Bool)

(assert (=> d!747128 (= lt!926817 e!1661523)))

(declare-fun res!1108709 () Bool)

(assert (=> d!747128 (=> (not res!1108709) (not e!1661523))))

(assert (=> d!747128 (= res!1108709 (= (list!11471 (_1!17538 (lex!1898 thiss!14197 rules!1726 (print!1637 thiss!14197 (singletonSeq!2056 lt!926207))))) (list!11471 (singletonSeq!2056 lt!926207))))))

(declare-fun e!1661524 () Bool)

(assert (=> d!747128 (= lt!926817 e!1661524)))

(declare-fun res!1108708 () Bool)

(assert (=> d!747128 (=> (not res!1108708) (not e!1661524))))

(declare-fun lt!926818 () tuple2!29992)

(assert (=> d!747128 (= res!1108708 (= (size!23579 (_1!17538 lt!926818)) 1))))

(assert (=> d!747128 (= lt!926818 (lex!1898 thiss!14197 rules!1726 (print!1637 thiss!14197 (singletonSeq!2056 lt!926207))))))

(assert (=> d!747128 (not (isEmpty!17389 rules!1726))))

(assert (=> d!747128 (= (rulesProduceIndividualToken!1948 thiss!14197 rules!1726 lt!926207) lt!926817)))

(declare-fun b!2633240 () Bool)

(declare-fun res!1108710 () Bool)

(assert (=> b!2633240 (=> (not res!1108710) (not e!1661524))))

(assert (=> b!2633240 (= res!1108710 (= (apply!7265 (_1!17538 lt!926818) 0) lt!926207))))

(declare-fun b!2633241 () Bool)

(assert (=> b!2633241 (= e!1661524 (isEmpty!17390 (_2!17538 lt!926818)))))

(declare-fun b!2633242 () Bool)

(assert (=> b!2633242 (= e!1661523 (isEmpty!17390 (_2!17538 (lex!1898 thiss!14197 rules!1726 (print!1637 thiss!14197 (singletonSeq!2056 lt!926207))))))))

(assert (= (and d!747128 res!1108708) b!2633240))

(assert (= (and b!2633240 res!1108710) b!2633241))

(assert (= (and d!747128 res!1108709) b!2633242))

(assert (=> d!747128 m!2975035))

(declare-fun m!2976767 () Bool)

(assert (=> d!747128 m!2976767))

(declare-fun m!2976769 () Bool)

(assert (=> d!747128 m!2976769))

(declare-fun m!2976771 () Bool)

(assert (=> d!747128 m!2976771))

(assert (=> d!747128 m!2975043))

(assert (=> d!747128 m!2975035))

(declare-fun m!2976773 () Bool)

(assert (=> d!747128 m!2976773))

(assert (=> d!747128 m!2975035))

(assert (=> d!747128 m!2976769))

(declare-fun m!2976775 () Bool)

(assert (=> d!747128 m!2976775))

(declare-fun m!2976777 () Bool)

(assert (=> b!2633240 m!2976777))

(declare-fun m!2976779 () Bool)

(assert (=> b!2633241 m!2976779))

(assert (=> b!2633242 m!2975035))

(assert (=> b!2633242 m!2975035))

(assert (=> b!2633242 m!2976769))

(assert (=> b!2633242 m!2976769))

(assert (=> b!2633242 m!2976771))

(declare-fun m!2976781 () Bool)

(assert (=> b!2633242 m!2976781))

(assert (=> bs!475823 d!747128))

(assert (=> b!2631971 d!746734))

(declare-fun d!747130 () Bool)

(declare-fun charsToBigInt!1 (List!30599) Int)

(assert (=> d!747130 (= (inv!17 (value!149816 separatorToken!156)) (= (charsToBigInt!1 (text!34475 (value!149816 separatorToken!156))) (value!149809 (value!149816 separatorToken!156))))))

(declare-fun bs!475917 () Bool)

(assert (= bs!475917 d!747130))

(declare-fun m!2976783 () Bool)

(assert (=> bs!475917 m!2976783))

(assert (=> b!2632312 d!747130))

(declare-fun b!2633243 () Bool)

(declare-fun e!1661525 () Bool)

(declare-fun e!1661530 () Bool)

(assert (=> b!2633243 (= e!1661525 e!1661530)))

(declare-fun res!1108716 () Bool)

(assert (=> b!2633243 (=> (not res!1108716) (not e!1661530))))

(declare-fun lt!926819 () Option!6028)

(assert (=> b!2633243 (= res!1108716 (= (_1!17537 (get!9594 lt!926819)) (_1!17540 (get!9595 (maxPrefix!2307 thiss!14197 (t!216474 rules!1726) (list!11470 (++!7425 lt!926214 lt!926206)))))))))

(declare-fun b!2633244 () Bool)

(declare-fun res!1108712 () Bool)

(declare-fun e!1661528 () Bool)

(assert (=> b!2633244 (=> (not res!1108712) (not e!1661528))))

(declare-fun e!1661526 () Bool)

(assert (=> b!2633244 (= res!1108712 e!1661526)))

(declare-fun res!1108711 () Bool)

(assert (=> b!2633244 (=> res!1108711 e!1661526)))

(assert (=> b!2633244 (= res!1108711 (not (isDefined!4791 lt!926819)))))

(declare-fun d!747132 () Bool)

(assert (=> d!747132 e!1661528))

(declare-fun res!1108713 () Bool)

(assert (=> d!747132 (=> (not res!1108713) (not e!1661528))))

(assert (=> d!747132 (= res!1108713 (= (isDefined!4791 lt!926819) (isDefined!4792 (maxPrefixZipper!435 thiss!14197 (t!216474 rules!1726) (list!11470 (++!7425 lt!926214 lt!926206))))))))

(declare-fun e!1661527 () Option!6028)

(assert (=> d!747132 (= lt!926819 e!1661527)))

(declare-fun c!423388 () Bool)

(assert (=> d!747132 (= c!423388 (and ((_ is Cons!30501) (t!216474 rules!1726)) ((_ is Nil!30501) (t!216474 (t!216474 rules!1726)))))))

(declare-fun lt!926824 () Unit!44507)

(declare-fun lt!926823 () Unit!44507)

(assert (=> d!747132 (= lt!926824 lt!926823)))

(declare-fun lt!926821 () List!30600)

(declare-fun lt!926820 () List!30600)

(assert (=> d!747132 (isPrefix!2436 lt!926821 lt!926820)))

(assert (=> d!747132 (= lt!926823 (lemmaIsPrefixRefl!1562 lt!926821 lt!926820))))

(assert (=> d!747132 (= lt!926820 (list!11470 (++!7425 lt!926214 lt!926206)))))

(assert (=> d!747132 (= lt!926821 (list!11470 (++!7425 lt!926214 lt!926206)))))

(assert (=> d!747132 (rulesValidInductive!1614 thiss!14197 (t!216474 rules!1726))))

(assert (=> d!747132 (= (maxPrefixZipperSequence!962 thiss!14197 (t!216474 rules!1726) (++!7425 lt!926214 lt!926206)) lt!926819)))

(declare-fun b!2633245 () Bool)

(declare-fun e!1661529 () Bool)

(assert (=> b!2633245 (= e!1661529 (= (list!11470 (_2!17537 (get!9594 lt!926819))) (_2!17540 (get!9595 (maxPrefixZipper!435 thiss!14197 (t!216474 rules!1726) (list!11470 (++!7425 lt!926214 lt!926206)))))))))

(declare-fun b!2633246 () Bool)

(declare-fun lt!926822 () Option!6028)

(declare-fun lt!926825 () Option!6028)

(assert (=> b!2633246 (= e!1661527 (ite (and ((_ is None!6027) lt!926822) ((_ is None!6027) lt!926825)) None!6027 (ite ((_ is None!6027) lt!926825) lt!926822 (ite ((_ is None!6027) lt!926822) lt!926825 (ite (>= (size!23578 (_1!17537 (v!32430 lt!926822))) (size!23578 (_1!17537 (v!32430 lt!926825)))) lt!926822 lt!926825)))))))

(declare-fun call!169444 () Option!6028)

(assert (=> b!2633246 (= lt!926822 call!169444)))

(assert (=> b!2633246 (= lt!926825 (maxPrefixZipperSequence!962 thiss!14197 (t!216474 (t!216474 rules!1726)) (++!7425 lt!926214 lt!926206)))))

(declare-fun b!2633247 () Bool)

(assert (=> b!2633247 (= e!1661526 e!1661529)))

(declare-fun res!1108714 () Bool)

(assert (=> b!2633247 (=> (not res!1108714) (not e!1661529))))

(assert (=> b!2633247 (= res!1108714 (= (_1!17537 (get!9594 lt!926819)) (_1!17540 (get!9595 (maxPrefixZipper!435 thiss!14197 (t!216474 rules!1726) (list!11470 (++!7425 lt!926214 lt!926206)))))))))

(declare-fun b!2633248 () Bool)

(assert (=> b!2633248 (= e!1661528 e!1661525)))

(declare-fun res!1108715 () Bool)

(assert (=> b!2633248 (=> res!1108715 e!1661525)))

(assert (=> b!2633248 (= res!1108715 (not (isDefined!4791 lt!926819)))))

(declare-fun b!2633249 () Bool)

(assert (=> b!2633249 (= e!1661527 call!169444)))

(declare-fun b!2633250 () Bool)

(assert (=> b!2633250 (= e!1661530 (= (list!11470 (_2!17537 (get!9594 lt!926819))) (_2!17540 (get!9595 (maxPrefix!2307 thiss!14197 (t!216474 rules!1726) (list!11470 (++!7425 lt!926214 lt!926206)))))))))

(declare-fun bm!169439 () Bool)

(assert (=> bm!169439 (= call!169444 (maxPrefixOneRuleZipperSequence!444 thiss!14197 (h!35921 (t!216474 rules!1726)) (++!7425 lt!926214 lt!926206)))))

(assert (= (and d!747132 c!423388) b!2633249))

(assert (= (and d!747132 (not c!423388)) b!2633246))

(assert (= (or b!2633249 b!2633246) bm!169439))

(assert (= (and d!747132 res!1108713) b!2633244))

(assert (= (and b!2633244 (not res!1108711)) b!2633247))

(assert (= (and b!2633247 res!1108714) b!2633245))

(assert (= (and b!2633244 res!1108712) b!2633248))

(assert (= (and b!2633248 (not res!1108715)) b!2633243))

(assert (= (and b!2633243 res!1108716) b!2633250))

(assert (=> b!2633245 m!2975011))

(assert (=> b!2633245 m!2975251))

(assert (=> b!2633245 m!2975713))

(declare-fun m!2976785 () Bool)

(assert (=> b!2633245 m!2976785))

(declare-fun m!2976787 () Bool)

(assert (=> b!2633245 m!2976787))

(declare-fun m!2976789 () Bool)

(assert (=> b!2633245 m!2976789))

(assert (=> b!2633245 m!2975251))

(assert (=> b!2633245 m!2975713))

(assert (=> bm!169439 m!2975011))

(declare-fun m!2976791 () Bool)

(assert (=> bm!169439 m!2976791))

(assert (=> b!2633250 m!2975011))

(assert (=> b!2633250 m!2975251))

(assert (=> b!2633250 m!2975251))

(assert (=> b!2633250 m!2975823))

(assert (=> b!2633250 m!2976787))

(assert (=> b!2633250 m!2976789))

(assert (=> b!2633250 m!2975823))

(declare-fun m!2976793 () Bool)

(assert (=> b!2633250 m!2976793))

(declare-fun m!2976795 () Bool)

(assert (=> b!2633244 m!2976795))

(assert (=> d!747132 m!2975011))

(assert (=> d!747132 m!2975251))

(declare-fun m!2976797 () Bool)

(assert (=> d!747132 m!2976797))

(declare-fun m!2976799 () Bool)

(assert (=> d!747132 m!2976799))

(assert (=> d!747132 m!2975251))

(assert (=> d!747132 m!2975713))

(assert (=> d!747132 m!2976795))

(assert (=> d!747132 m!2975713))

(declare-fun m!2976801 () Bool)

(assert (=> d!747132 m!2976801))

(declare-fun m!2976803 () Bool)

(assert (=> d!747132 m!2976803))

(assert (=> b!2633247 m!2976787))

(assert (=> b!2633247 m!2975011))

(assert (=> b!2633247 m!2975251))

(assert (=> b!2633247 m!2975251))

(assert (=> b!2633247 m!2975713))

(assert (=> b!2633247 m!2975713))

(assert (=> b!2633247 m!2976785))

(assert (=> b!2633248 m!2976795))

(assert (=> b!2633243 m!2976787))

(assert (=> b!2633243 m!2975011))

(assert (=> b!2633243 m!2975251))

(assert (=> b!2633243 m!2975251))

(assert (=> b!2633243 m!2975823))

(assert (=> b!2633243 m!2975823))

(assert (=> b!2633243 m!2976793))

(assert (=> b!2633246 m!2975011))

(declare-fun m!2976805 () Bool)

(assert (=> b!2633246 m!2976805))

(assert (=> b!2632116 d!747132))

(assert (=> bm!169259 d!746964))

(assert (=> b!2632114 d!746968))

(declare-fun d!747134 () Bool)

(declare-fun lt!926826 () Token!8748)

(assert (=> d!747134 (contains!5785 (list!11471 v!6381) lt!926826)))

(declare-fun e!1661532 () Token!8748)

(assert (=> d!747134 (= lt!926826 e!1661532)))

(declare-fun c!423389 () Bool)

(assert (=> d!747134 (= c!423389 (= from!862 0))))

(declare-fun e!1661531 () Bool)

(assert (=> d!747134 e!1661531))

(declare-fun res!1108717 () Bool)

(assert (=> d!747134 (=> (not res!1108717) (not e!1661531))))

(assert (=> d!747134 (= res!1108717 (<= 0 from!862))))

(assert (=> d!747134 (= (apply!7266 (list!11471 v!6381) from!862) lt!926826)))

(declare-fun b!2633251 () Bool)

(assert (=> b!2633251 (= e!1661531 (< from!862 (size!23581 (list!11471 v!6381))))))

(declare-fun b!2633252 () Bool)

(assert (=> b!2633252 (= e!1661532 (head!6038 (list!11471 v!6381)))))

(declare-fun b!2633253 () Bool)

(assert (=> b!2633253 (= e!1661532 (apply!7266 (tail!4276 (list!11471 v!6381)) (- from!862 1)))))

(assert (= (and d!747134 res!1108717) b!2633251))

(assert (= (and d!747134 c!423389) b!2633252))

(assert (= (and d!747134 (not c!423389)) b!2633253))

(assert (=> d!747134 m!2975027))

(declare-fun m!2976807 () Bool)

(assert (=> d!747134 m!2976807))

(assert (=> b!2633251 m!2975027))

(assert (=> b!2633251 m!2975517))

(assert (=> b!2633252 m!2975027))

(declare-fun m!2976809 () Bool)

(assert (=> b!2633252 m!2976809))

(assert (=> b!2633253 m!2975027))

(declare-fun m!2976811 () Bool)

(assert (=> b!2633253 m!2976811))

(assert (=> b!2633253 m!2976811))

(declare-fun m!2976813 () Bool)

(assert (=> b!2633253 m!2976813))

(assert (=> d!746722 d!747134))

(assert (=> d!746722 d!746708))

(declare-fun b!2633286 () Bool)

(declare-fun e!1661548 () Token!8748)

(declare-fun call!169449 () Token!8748)

(assert (=> b!2633286 (= e!1661548 call!169449)))

(declare-fun d!747136 () Bool)

(declare-fun lt!926842 () Token!8748)

(assert (=> d!747136 (= lt!926842 (apply!7266 (list!11474 (c!423090 v!6381)) from!862))))

(declare-fun e!1661549 () Token!8748)

(assert (=> d!747136 (= lt!926842 e!1661549)))

(declare-fun c!423398 () Bool)

(assert (=> d!747136 (= c!423398 ((_ is Leaf!14581) (c!423090 v!6381)))))

(declare-fun e!1661550 () Bool)

(assert (=> d!747136 e!1661550))

(declare-fun res!1108734 () Bool)

(assert (=> d!747136 (=> (not res!1108734) (not e!1661550))))

(assert (=> d!747136 (= res!1108734 (<= 0 from!862))))

(assert (=> d!747136 (= (apply!7267 (c!423090 v!6381) from!862) lt!926842)))

(declare-fun bm!169444 () Bool)

(declare-fun c!423400 () Bool)

(declare-fun c!423399 () Bool)

(assert (=> bm!169444 (= c!423400 c!423399)))

(declare-fun e!1661547 () Int)

(assert (=> bm!169444 (= call!169449 (apply!7267 (ite c!423399 (left!23564 (c!423090 v!6381)) (right!23894 (c!423090 v!6381))) e!1661547))))

(declare-fun b!2633287 () Bool)

(assert (=> b!2633287 (= e!1661547 (- from!862 (size!23582 (left!23564 (c!423090 v!6381)))))))

(declare-fun b!2633288 () Bool)

(assert (=> b!2633288 (= e!1661550 (< from!862 (size!23582 (c!423090 v!6381))))))

(declare-fun b!2633289 () Bool)

(assert (=> b!2633289 (= e!1661549 e!1661548)))

(declare-fun lt!926841 () Bool)

(declare-fun appendIndex!269 (List!30602 List!30602 Int) Bool)

(assert (=> b!2633289 (= lt!926841 (appendIndex!269 (list!11474 (left!23564 (c!423090 v!6381))) (list!11474 (right!23894 (c!423090 v!6381))) from!862))))

(assert (=> b!2633289 (= c!423399 (< from!862 (size!23582 (left!23564 (c!423090 v!6381)))))))

(declare-fun b!2633290 () Bool)

(assert (=> b!2633290 (= e!1661547 from!862)))

(declare-fun b!2633291 () Bool)

(declare-fun apply!7272 (IArray!19047 Int) Token!8748)

(assert (=> b!2633291 (= e!1661549 (apply!7272 (xs!12521 (c!423090 v!6381)) from!862))))

(declare-fun b!2633292 () Bool)

(assert (=> b!2633292 (= e!1661548 call!169449)))

(assert (= (and d!747136 res!1108734) b!2633288))

(assert (= (and d!747136 c!423398) b!2633291))

(assert (= (and d!747136 (not c!423398)) b!2633289))

(assert (= (and b!2633289 c!423399) b!2633286))

(assert (= (and b!2633289 (not c!423399)) b!2633292))

(assert (= (or b!2633286 b!2633292) bm!169444))

(assert (= (and bm!169444 c!423400) b!2633290))

(assert (= (and bm!169444 (not c!423400)) b!2633287))

(assert (=> d!747136 m!2975445))

(assert (=> d!747136 m!2975445))

(declare-fun m!2976815 () Bool)

(assert (=> d!747136 m!2976815))

(declare-fun m!2976817 () Bool)

(assert (=> b!2633291 m!2976817))

(assert (=> b!2633289 m!2975969))

(assert (=> b!2633289 m!2975971))

(assert (=> b!2633289 m!2975969))

(assert (=> b!2633289 m!2975971))

(declare-fun m!2976819 () Bool)

(assert (=> b!2633289 m!2976819))

(assert (=> b!2633289 m!2975955))

(assert (=> b!2633287 m!2975955))

(declare-fun m!2976821 () Bool)

(assert (=> bm!169444 m!2976821))

(assert (=> b!2633288 m!2975519))

(assert (=> d!746722 d!747136))

(declare-fun b!2633293 () Bool)

(declare-fun e!1661554 () List!30602)

(assert (=> b!2633293 (= e!1661554 (t!216475 lt!926208))))

(declare-fun b!2633294 () Bool)

(declare-fun e!1661552 () Int)

(assert (=> b!2633294 (= e!1661552 0)))

(declare-fun b!2633295 () Bool)

(assert (=> b!2633295 (= e!1661554 (drop!1635 (t!216475 (t!216475 lt!926208)) (- (- from!862 1) 1)))))

(declare-fun b!2633296 () Bool)

(declare-fun e!1661553 () List!30602)

(assert (=> b!2633296 (= e!1661553 e!1661554)))

(declare-fun c!423403 () Bool)

(assert (=> b!2633296 (= c!423403 (<= (- from!862 1) 0))))

(declare-fun b!2633297 () Bool)

(declare-fun e!1661555 () Int)

(declare-fun call!169450 () Int)

(assert (=> b!2633297 (= e!1661555 call!169450)))

(declare-fun d!747138 () Bool)

(declare-fun e!1661551 () Bool)

(assert (=> d!747138 e!1661551))

(declare-fun res!1108735 () Bool)

(assert (=> d!747138 (=> (not res!1108735) (not e!1661551))))

(declare-fun lt!926843 () List!30602)

(assert (=> d!747138 (= res!1108735 (= ((_ map implies) (content!4307 lt!926843) (content!4307 (t!216475 lt!926208))) ((as const (InoxSet Token!8748)) true)))))

(assert (=> d!747138 (= lt!926843 e!1661553)))

(declare-fun c!423404 () Bool)

(assert (=> d!747138 (= c!423404 ((_ is Nil!30502) (t!216475 lt!926208)))))

(assert (=> d!747138 (= (drop!1635 (t!216475 lt!926208) (- from!862 1)) lt!926843)))

(declare-fun b!2633298 () Bool)

(assert (=> b!2633298 (= e!1661551 (= (size!23581 lt!926843) e!1661555))))

(declare-fun c!423402 () Bool)

(assert (=> b!2633298 (= c!423402 (<= (- from!862 1) 0))))

(declare-fun b!2633299 () Bool)

(assert (=> b!2633299 (= e!1661552 (- call!169450 (- from!862 1)))))

(declare-fun b!2633300 () Bool)

(assert (=> b!2633300 (= e!1661553 Nil!30502)))

(declare-fun bm!169445 () Bool)

(assert (=> bm!169445 (= call!169450 (size!23581 (t!216475 lt!926208)))))

(declare-fun b!2633301 () Bool)

(assert (=> b!2633301 (= e!1661555 e!1661552)))

(declare-fun c!423401 () Bool)

(assert (=> b!2633301 (= c!423401 (>= (- from!862 1) call!169450))))

(assert (= (and d!747138 c!423404) b!2633300))

(assert (= (and d!747138 (not c!423404)) b!2633296))

(assert (= (and b!2633296 c!423403) b!2633293))

(assert (= (and b!2633296 (not c!423403)) b!2633295))

(assert (= (and d!747138 res!1108735) b!2633298))

(assert (= (and b!2633298 c!423402) b!2633297))

(assert (= (and b!2633298 (not c!423402)) b!2633301))

(assert (= (and b!2633301 c!423401) b!2633294))

(assert (= (and b!2633301 (not c!423401)) b!2633299))

(assert (= (or b!2633297 b!2633301 b!2633299) bm!169445))

(declare-fun m!2976823 () Bool)

(assert (=> b!2633295 m!2976823))

(declare-fun m!2976825 () Bool)

(assert (=> d!747138 m!2976825))

(assert (=> d!747138 m!2976407))

(declare-fun m!2976827 () Bool)

(assert (=> b!2633298 m!2976827))

(assert (=> bm!169445 m!2975769))

(assert (=> b!2632250 d!747138))

(declare-fun d!747140 () Bool)

(declare-fun c!423405 () Bool)

(assert (=> d!747140 (= c!423405 ((_ is Nil!30502) lt!926435))))

(declare-fun e!1661556 () (InoxSet Token!8748))

(assert (=> d!747140 (= (content!4307 lt!926435) e!1661556)))

(declare-fun b!2633302 () Bool)

(assert (=> b!2633302 (= e!1661556 ((as const (Array Token!8748 Bool)) false))))

(declare-fun b!2633303 () Bool)

(assert (=> b!2633303 (= e!1661556 ((_ map or) (store ((as const (Array Token!8748 Bool)) false) (h!35922 lt!926435) true) (content!4307 (t!216475 lt!926435))))))

(assert (= (and d!747140 c!423405) b!2633302))

(assert (= (and d!747140 (not c!423405)) b!2633303))

(declare-fun m!2976829 () Bool)

(assert (=> b!2633303 m!2976829))

(declare-fun m!2976831 () Bool)

(assert (=> b!2633303 m!2976831))

(assert (=> d!746726 d!747140))

(assert (=> d!746726 d!747012))

(declare-fun d!747142 () Bool)

(declare-fun e!1661560 () Bool)

(assert (=> d!747142 e!1661560))

(declare-fun res!1108744 () Bool)

(assert (=> d!747142 (=> (not res!1108744) (not e!1661560))))

(declare-fun lt!926849 () List!30600)

(assert (=> d!747142 (= res!1108744 (= (content!4309 lt!926849) ((_ map or) (content!4309 (list!11470 (charsOf!2926 (h!35922 (Cons!30502 lt!926207 Nil!30502))))) (content!4309 (printList!1164 thiss!14197 (t!216475 (Cons!30502 lt!926207 Nil!30502)))))))))

(declare-fun e!1661561 () List!30600)

(assert (=> d!747142 (= lt!926849 e!1661561)))

(declare-fun c!423407 () Bool)

(assert (=> d!747142 (= c!423407 ((_ is Nil!30500) (list!11470 (charsOf!2926 (h!35922 (Cons!30502 lt!926207 Nil!30502))))))))

(assert (=> d!747142 (= (++!7427 (list!11470 (charsOf!2926 (h!35922 (Cons!30502 lt!926207 Nil!30502)))) (printList!1164 thiss!14197 (t!216475 (Cons!30502 lt!926207 Nil!30502)))) lt!926849)))

(declare-fun b!2633315 () Bool)

(declare-fun res!1108743 () Bool)

(assert (=> b!2633315 (=> (not res!1108743) (not e!1661560))))

(assert (=> b!2633315 (= res!1108743 (= (size!23580 lt!926849) (+ (size!23580 (list!11470 (charsOf!2926 (h!35922 (Cons!30502 lt!926207 Nil!30502))))) (size!23580 (printList!1164 thiss!14197 (t!216475 (Cons!30502 lt!926207 Nil!30502)))))))))

(declare-fun b!2633314 () Bool)

(assert (=> b!2633314 (= e!1661561 (Cons!30500 (h!35920 (list!11470 (charsOf!2926 (h!35922 (Cons!30502 lt!926207 Nil!30502))))) (++!7427 (t!216473 (list!11470 (charsOf!2926 (h!35922 (Cons!30502 lt!926207 Nil!30502))))) (printList!1164 thiss!14197 (t!216475 (Cons!30502 lt!926207 Nil!30502))))))))

(declare-fun b!2633313 () Bool)

(assert (=> b!2633313 (= e!1661561 (printList!1164 thiss!14197 (t!216475 (Cons!30502 lt!926207 Nil!30502))))))

(declare-fun b!2633316 () Bool)

(assert (=> b!2633316 (= e!1661560 (or (not (= (printList!1164 thiss!14197 (t!216475 (Cons!30502 lt!926207 Nil!30502))) Nil!30500)) (= lt!926849 (list!11470 (charsOf!2926 (h!35922 (Cons!30502 lt!926207 Nil!30502)))))))))

(assert (= (and d!747142 c!423407) b!2633313))

(assert (= (and d!747142 (not c!423407)) b!2633314))

(assert (= (and d!747142 res!1108744) b!2633315))

(assert (= (and b!2633315 res!1108743) b!2633316))

(declare-fun m!2976833 () Bool)

(assert (=> d!747142 m!2976833))

(assert (=> d!747142 m!2975529))

(declare-fun m!2976835 () Bool)

(assert (=> d!747142 m!2976835))

(assert (=> d!747142 m!2975531))

(declare-fun m!2976837 () Bool)

(assert (=> d!747142 m!2976837))

(declare-fun m!2976839 () Bool)

(assert (=> b!2633315 m!2976839))

(assert (=> b!2633315 m!2975529))

(declare-fun m!2976841 () Bool)

(assert (=> b!2633315 m!2976841))

(assert (=> b!2633315 m!2975531))

(declare-fun m!2976843 () Bool)

(assert (=> b!2633315 m!2976843))

(assert (=> b!2633314 m!2975531))

(declare-fun m!2976845 () Bool)

(assert (=> b!2633314 m!2976845))

(assert (=> b!2632325 d!747142))

(declare-fun d!747144 () Bool)

(assert (=> d!747144 (= (list!11470 (charsOf!2926 (h!35922 (Cons!30502 lt!926207 Nil!30502)))) (list!11473 (c!423089 (charsOf!2926 (h!35922 (Cons!30502 lt!926207 Nil!30502))))))))

(declare-fun bs!475918 () Bool)

(assert (= bs!475918 d!747144))

(declare-fun m!2976847 () Bool)

(assert (=> bs!475918 m!2976847))

(assert (=> b!2632325 d!747144))

(declare-fun d!747146 () Bool)

(declare-fun lt!926850 () BalanceConc!18654)

(assert (=> d!747146 (= (list!11470 lt!926850) (originalCharacters!5405 (h!35922 (Cons!30502 lt!926207 Nil!30502))))))

(assert (=> d!747146 (= lt!926850 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 (h!35922 (Cons!30502 lt!926207 Nil!30502))))) (value!149816 (h!35922 (Cons!30502 lt!926207 Nil!30502)))))))

(assert (=> d!747146 (= (charsOf!2926 (h!35922 (Cons!30502 lt!926207 Nil!30502))) lt!926850)))

(declare-fun b_lambda!79279 () Bool)

(assert (=> (not b_lambda!79279) (not d!747146)))

(declare-fun tb!143649 () Bool)

(declare-fun t!216560 () Bool)

(assert (=> (and b!2631972 (= (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (toChars!6412 (transformation!4639 (rule!7021 (h!35922 (Cons!30502 lt!926207 Nil!30502)))))) t!216560) tb!143649))

(declare-fun b!2633317 () Bool)

(declare-fun e!1661562 () Bool)

(declare-fun tp!834550 () Bool)

(assert (=> b!2633317 (= e!1661562 (and (inv!41359 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 (h!35922 (Cons!30502 lt!926207 Nil!30502))))) (value!149816 (h!35922 (Cons!30502 lt!926207 Nil!30502)))))) tp!834550))))

(declare-fun result!178544 () Bool)

(assert (=> tb!143649 (= result!178544 (and (inv!41360 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 (h!35922 (Cons!30502 lt!926207 Nil!30502))))) (value!149816 (h!35922 (Cons!30502 lt!926207 Nil!30502))))) e!1661562))))

(assert (= tb!143649 b!2633317))

(declare-fun m!2976849 () Bool)

(assert (=> b!2633317 m!2976849))

(declare-fun m!2976853 () Bool)

(assert (=> tb!143649 m!2976853))

(assert (=> d!747146 t!216560))

(declare-fun b_and!192869 () Bool)

(assert (= b_and!192863 (and (=> t!216560 result!178544) b_and!192869)))

(declare-fun tb!143651 () Bool)

(declare-fun t!216562 () Bool)

(assert (=> (and b!2631973 (= (toChars!6412 (transformation!4639 (h!35921 rules!1726))) (toChars!6412 (transformation!4639 (rule!7021 (h!35922 (Cons!30502 lt!926207 Nil!30502)))))) t!216562) tb!143651))

(declare-fun result!178546 () Bool)

(assert (= result!178546 result!178544))

(assert (=> d!747146 t!216562))

(declare-fun b_and!192871 () Bool)

(assert (= b_and!192865 (and (=> t!216562 result!178546) b_and!192871)))

(declare-fun tb!143653 () Bool)

(declare-fun t!216564 () Bool)

(assert (=> (and b!2632394 (= (toChars!6412 (transformation!4639 (h!35921 (t!216474 rules!1726)))) (toChars!6412 (transformation!4639 (rule!7021 (h!35922 (Cons!30502 lt!926207 Nil!30502)))))) t!216564) tb!143653))

(declare-fun result!178548 () Bool)

(assert (= result!178548 result!178544))

(assert (=> d!747146 t!216564))

(declare-fun b_and!192873 () Bool)

(assert (= b_and!192867 (and (=> t!216564 result!178548) b_and!192873)))

(declare-fun m!2976863 () Bool)

(assert (=> d!747146 m!2976863))

(declare-fun m!2976867 () Bool)

(assert (=> d!747146 m!2976867))

(assert (=> b!2632325 d!747146))

(declare-fun d!747148 () Bool)

(declare-fun c!423408 () Bool)

(assert (=> d!747148 (= c!423408 ((_ is Cons!30502) (t!216475 (Cons!30502 lt!926207 Nil!30502))))))

(declare-fun e!1661563 () List!30600)

(assert (=> d!747148 (= (printList!1164 thiss!14197 (t!216475 (Cons!30502 lt!926207 Nil!30502))) e!1661563)))

(declare-fun b!2633318 () Bool)

(assert (=> b!2633318 (= e!1661563 (++!7427 (list!11470 (charsOf!2926 (h!35922 (t!216475 (Cons!30502 lt!926207 Nil!30502))))) (printList!1164 thiss!14197 (t!216475 (t!216475 (Cons!30502 lt!926207 Nil!30502))))))))

(declare-fun b!2633319 () Bool)

(assert (=> b!2633319 (= e!1661563 Nil!30500)))

(assert (= (and d!747148 c!423408) b!2633318))

(assert (= (and d!747148 (not c!423408)) b!2633319))

(declare-fun m!2976877 () Bool)

(assert (=> b!2633318 m!2976877))

(assert (=> b!2633318 m!2976877))

(declare-fun m!2976879 () Bool)

(assert (=> b!2633318 m!2976879))

(declare-fun m!2976881 () Bool)

(assert (=> b!2633318 m!2976881))

(assert (=> b!2633318 m!2976879))

(assert (=> b!2633318 m!2976881))

(declare-fun m!2976885 () Bool)

(assert (=> b!2633318 m!2976885))

(assert (=> b!2632325 d!747148))

(assert (=> bm!169287 d!746822))

(assert (=> b!2632343 d!747098))

(declare-fun b!2633342 () Bool)

(declare-fun res!1108757 () Bool)

(declare-fun e!1661579 () Bool)

(assert (=> b!2633342 (=> (not res!1108757) (not e!1661579))))

(declare-fun head!6040 (List!30600) C!15724)

(assert (=> b!2633342 (= res!1108757 (= (head!6040 lt!926335) (head!6040 lt!926334)))))

(declare-fun b!2633343 () Bool)

(declare-fun tail!4278 (List!30600) List!30600)

(assert (=> b!2633343 (= e!1661579 (isPrefix!2436 (tail!4278 lt!926335) (tail!4278 lt!926334)))))

(declare-fun b!2633341 () Bool)

(declare-fun e!1661578 () Bool)

(assert (=> b!2633341 (= e!1661578 e!1661579)))

(declare-fun res!1108759 () Bool)

(assert (=> b!2633341 (=> (not res!1108759) (not e!1661579))))

(assert (=> b!2633341 (= res!1108759 (not ((_ is Nil!30500) lt!926334)))))

(declare-fun d!747150 () Bool)

(declare-fun e!1661580 () Bool)

(assert (=> d!747150 e!1661580))

(declare-fun res!1108758 () Bool)

(assert (=> d!747150 (=> res!1108758 e!1661580)))

(declare-fun lt!926853 () Bool)

(assert (=> d!747150 (= res!1108758 (not lt!926853))))

(assert (=> d!747150 (= lt!926853 e!1661578)))

(declare-fun res!1108756 () Bool)

(assert (=> d!747150 (=> res!1108756 e!1661578)))

(assert (=> d!747150 (= res!1108756 ((_ is Nil!30500) lt!926335))))

(assert (=> d!747150 (= (isPrefix!2436 lt!926335 lt!926334) lt!926853)))

(declare-fun b!2633344 () Bool)

(assert (=> b!2633344 (= e!1661580 (>= (size!23580 lt!926334) (size!23580 lt!926335)))))

(assert (= (and d!747150 (not res!1108756)) b!2633341))

(assert (= (and b!2633341 res!1108759) b!2633342))

(assert (= (and b!2633342 res!1108757) b!2633343))

(assert (= (and d!747150 (not res!1108758)) b!2633344))

(declare-fun m!2976913 () Bool)

(assert (=> b!2633342 m!2976913))

(declare-fun m!2976915 () Bool)

(assert (=> b!2633342 m!2976915))

(declare-fun m!2976917 () Bool)

(assert (=> b!2633343 m!2976917))

(declare-fun m!2976919 () Bool)

(assert (=> b!2633343 m!2976919))

(assert (=> b!2633343 m!2976917))

(assert (=> b!2633343 m!2976919))

(declare-fun m!2976921 () Bool)

(assert (=> b!2633343 m!2976921))

(declare-fun m!2976923 () Bool)

(assert (=> b!2633344 m!2976923))

(declare-fun m!2976925 () Bool)

(assert (=> b!2633344 m!2976925))

(assert (=> d!746680 d!747150))

(declare-fun bs!475922 () Bool)

(declare-fun d!747166 () Bool)

(assert (= bs!475922 (and d!747166 d!746936)))

(declare-fun lambda!98812 () Int)

(assert (=> bs!475922 (= lambda!98812 lambda!98791)))

(assert (=> d!747166 true))

(declare-fun lt!926860 () Bool)

(assert (=> d!747166 (= lt!926860 (forall!6390 rules!1726 lambda!98812))))

(declare-fun e!1661587 () Bool)

(assert (=> d!747166 (= lt!926860 e!1661587)))

(declare-fun res!1108766 () Bool)

(assert (=> d!747166 (=> res!1108766 e!1661587)))

(assert (=> d!747166 (= res!1108766 (not ((_ is Cons!30501) rules!1726)))))

(assert (=> d!747166 (= (rulesValidInductive!1614 thiss!14197 rules!1726) lt!926860)))

(declare-fun b!2633353 () Bool)

(declare-fun e!1661588 () Bool)

(assert (=> b!2633353 (= e!1661587 e!1661588)))

(declare-fun res!1108767 () Bool)

(assert (=> b!2633353 (=> (not res!1108767) (not e!1661588))))

(assert (=> b!2633353 (= res!1108767 (ruleValid!1538 thiss!14197 (h!35921 rules!1726)))))

(declare-fun b!2633354 () Bool)

(assert (=> b!2633354 (= e!1661588 (rulesValidInductive!1614 thiss!14197 (t!216474 rules!1726)))))

(assert (= (and d!747166 (not res!1108766)) b!2633353))

(assert (= (and b!2633353 res!1108767) b!2633354))

(declare-fun m!2976935 () Bool)

(assert (=> d!747166 m!2976935))

(assert (=> b!2633353 m!2975733))

(assert (=> b!2633354 m!2976797))

(assert (=> d!746680 d!747166))

(assert (=> d!746680 d!746816))

(assert (=> d!746680 d!746968))

(assert (=> d!746680 d!746814))

(declare-fun d!747174 () Bool)

(assert (=> d!747174 (isPrefix!2436 lt!926335 lt!926334)))

(declare-fun lt!926863 () Unit!44507)

(declare-fun choose!15629 (List!30600 List!30600) Unit!44507)

(assert (=> d!747174 (= lt!926863 (choose!15629 lt!926335 lt!926334))))

(assert (=> d!747174 (= (lemmaIsPrefixRefl!1562 lt!926335 lt!926334) lt!926863)))

(declare-fun bs!475923 () Bool)

(assert (= bs!475923 d!747174))

(assert (=> bs!475923 m!2975275))

(declare-fun m!2976941 () Bool)

(assert (=> bs!475923 m!2976941))

(assert (=> d!746680 d!747174))

(declare-fun d!747178 () Bool)

(assert (=> d!747178 (= (isDefined!4792 (maxPrefixZipper!435 thiss!14197 rules!1726 (list!11470 (++!7425 lt!926214 lt!926206)))) (not (isEmpty!17394 (maxPrefixZipper!435 thiss!14197 rules!1726 (list!11470 (++!7425 lt!926214 lt!926206))))))))

(declare-fun bs!475924 () Bool)

(assert (= bs!475924 d!747178))

(assert (=> bs!475924 m!2975253))

(declare-fun m!2976943 () Bool)

(assert (=> bs!475924 m!2976943))

(assert (=> d!746680 d!747178))

(declare-fun d!747180 () Bool)

(declare-fun c!423414 () Bool)

(assert (=> d!747180 (= c!423414 ((_ is Nil!30502) lt!926422))))

(declare-fun e!1661597 () (InoxSet Token!8748))

(assert (=> d!747180 (= (content!4307 lt!926422) e!1661597)))

(declare-fun b!2633365 () Bool)

(assert (=> b!2633365 (= e!1661597 ((as const (Array Token!8748 Bool)) false))))

(declare-fun b!2633366 () Bool)

(assert (=> b!2633366 (= e!1661597 ((_ map or) (store ((as const (Array Token!8748 Bool)) false) (h!35922 lt!926422) true) (content!4307 (t!216475 lt!926422))))))

(assert (= (and d!747180 c!423414) b!2633365))

(assert (= (and d!747180 (not c!423414)) b!2633366))

(declare-fun m!2976945 () Bool)

(assert (=> b!2633366 m!2976945))

(declare-fun m!2976947 () Bool)

(assert (=> b!2633366 m!2976947))

(assert (=> d!746712 d!747180))

(assert (=> d!746712 d!747012))

(declare-fun d!747182 () Bool)

(assert (=> d!747182 (= (isEmpty!17392 (originalCharacters!5405 separatorToken!156)) ((_ is Nil!30500) (originalCharacters!5405 separatorToken!156)))))

(assert (=> d!746700 d!747182))

(declare-fun b!2633390 () Bool)

(declare-fun res!1108802 () Bool)

(declare-fun e!1661606 () Bool)

(assert (=> b!2633390 (=> (not res!1108802) (not e!1661606))))

(assert (=> b!2633390 (= res!1108802 (isBalanced!2876 (left!23563 (++!7428 (c!423089 lt!926214) (c!423089 lt!926206)))))))

(declare-fun d!747184 () Bool)

(declare-fun res!1108805 () Bool)

(declare-fun e!1661607 () Bool)

(assert (=> d!747184 (=> res!1108805 e!1661607)))

(assert (=> d!747184 (= res!1108805 (not ((_ is Node!9520) (++!7428 (c!423089 lt!926214) (c!423089 lt!926206)))))))

(assert (=> d!747184 (= (isBalanced!2876 (++!7428 (c!423089 lt!926214) (c!423089 lt!926206))) e!1661607)))

(declare-fun b!2633391 () Bool)

(assert (=> b!2633391 (= e!1661607 e!1661606)))

(declare-fun res!1108801 () Bool)

(assert (=> b!2633391 (=> (not res!1108801) (not e!1661606))))

(assert (=> b!2633391 (= res!1108801 (<= (- 1) (- (height!1373 (left!23563 (++!7428 (c!423089 lt!926214) (c!423089 lt!926206)))) (height!1373 (right!23893 (++!7428 (c!423089 lt!926214) (c!423089 lt!926206)))))))))

(declare-fun b!2633392 () Bool)

(assert (=> b!2633392 (= e!1661606 (not (isEmpty!17397 (right!23893 (++!7428 (c!423089 lt!926214) (c!423089 lt!926206))))))))

(declare-fun b!2633393 () Bool)

(declare-fun res!1108806 () Bool)

(assert (=> b!2633393 (=> (not res!1108806) (not e!1661606))))

(assert (=> b!2633393 (= res!1108806 (<= (- (height!1373 (left!23563 (++!7428 (c!423089 lt!926214) (c!423089 lt!926206)))) (height!1373 (right!23893 (++!7428 (c!423089 lt!926214) (c!423089 lt!926206))))) 1))))

(declare-fun b!2633394 () Bool)

(declare-fun res!1108803 () Bool)

(assert (=> b!2633394 (=> (not res!1108803) (not e!1661606))))

(assert (=> b!2633394 (= res!1108803 (isBalanced!2876 (right!23893 (++!7428 (c!423089 lt!926214) (c!423089 lt!926206)))))))

(declare-fun b!2633395 () Bool)

(declare-fun res!1108804 () Bool)

(assert (=> b!2633395 (=> (not res!1108804) (not e!1661606))))

(assert (=> b!2633395 (= res!1108804 (not (isEmpty!17397 (left!23563 (++!7428 (c!423089 lt!926214) (c!423089 lt!926206))))))))

(assert (= (and d!747184 (not res!1108805)) b!2633391))

(assert (= (and b!2633391 res!1108801) b!2633393))

(assert (= (and b!2633393 res!1108806) b!2633390))

(assert (= (and b!2633390 res!1108802) b!2633394))

(assert (= (and b!2633394 res!1108803) b!2633395))

(assert (= (and b!2633395 res!1108804) b!2633392))

(declare-fun m!2976963 () Bool)

(assert (=> b!2633394 m!2976963))

(declare-fun m!2976965 () Bool)

(assert (=> b!2633395 m!2976965))

(declare-fun m!2976967 () Bool)

(assert (=> b!2633391 m!2976967))

(declare-fun m!2976969 () Bool)

(assert (=> b!2633391 m!2976969))

(declare-fun m!2976971 () Bool)

(assert (=> b!2633392 m!2976971))

(assert (=> b!2633393 m!2976967))

(assert (=> b!2633393 m!2976969))

(declare-fun m!2976973 () Bool)

(assert (=> b!2633390 m!2976973))

(assert (=> b!2632149 d!747184))

(assert (=> b!2632149 d!746858))

(declare-fun d!747192 () Bool)

(assert (=> d!747192 (= (list!11470 lt!926299) (list!11473 (c!423089 lt!926299)))))

(declare-fun bs!475926 () Bool)

(assert (= bs!475926 d!747192))

(declare-fun m!2976975 () Bool)

(assert (=> bs!475926 m!2976975))

(assert (=> b!2632083 d!747192))

(declare-fun d!747194 () Bool)

(assert (=> d!747194 (= (list!11470 call!169267) (list!11473 (c!423089 call!169267)))))

(declare-fun bs!475927 () Bool)

(assert (= bs!475927 d!747194))

(declare-fun m!2976977 () Bool)

(assert (=> bs!475927 m!2976977))

(assert (=> b!2632083 d!747194))

(declare-fun d!747196 () Bool)

(declare-fun e!1661608 () Bool)

(assert (=> d!747196 e!1661608))

(declare-fun res!1108807 () Bool)

(assert (=> d!747196 (=> (not res!1108807) (not e!1661608))))

(declare-fun lt!926864 () BalanceConc!18656)

(assert (=> d!747196 (= res!1108807 (= (list!11471 lt!926864) (Cons!30502 call!169266 Nil!30502)))))

(assert (=> d!747196 (= lt!926864 (singleton!910 call!169266))))

(assert (=> d!747196 (= (singletonSeq!2056 call!169266) lt!926864)))

(declare-fun b!2633396 () Bool)

(assert (=> b!2633396 (= e!1661608 (isBalanced!2878 (c!423090 lt!926864)))))

(assert (= (and d!747196 res!1108807) b!2633396))

(declare-fun m!2976979 () Bool)

(assert (=> d!747196 m!2976979))

(declare-fun m!2976981 () Bool)

(assert (=> d!747196 m!2976981))

(declare-fun m!2976983 () Bool)

(assert (=> b!2633396 m!2976983))

(assert (=> b!2632083 d!747196))

(declare-fun d!747198 () Bool)

(declare-fun lt!926865 () BalanceConc!18654)

(assert (=> d!747198 (= (list!11470 lt!926865) (printList!1164 thiss!14197 (list!11471 (singletonSeq!2056 call!169266))))))

(assert (=> d!747198 (= lt!926865 (printTailRec!1123 thiss!14197 (singletonSeq!2056 call!169266) 0 (BalanceConc!18655 Empty!9520)))))

(assert (=> d!747198 (= (print!1637 thiss!14197 (singletonSeq!2056 call!169266)) lt!926865)))

(declare-fun bs!475928 () Bool)

(assert (= bs!475928 d!747198))

(declare-fun m!2976985 () Bool)

(assert (=> bs!475928 m!2976985))

(assert (=> bs!475928 m!2975215))

(declare-fun m!2976987 () Bool)

(assert (=> bs!475928 m!2976987))

(assert (=> bs!475928 m!2976987))

(declare-fun m!2976989 () Bool)

(assert (=> bs!475928 m!2976989))

(assert (=> bs!475928 m!2975215))

(assert (=> bs!475928 m!2975219))

(assert (=> b!2632083 d!747198))

(declare-fun b!2633561 () Bool)

(declare-fun lt!926962 () Token!8748)

(declare-fun e!1661715 () Bool)

(declare-datatypes ((Option!6032 0))(
  ( (None!6031) (Some!6031 (v!32446 Rule!9078)) )
))
(declare-fun get!9599 (Option!6032) Rule!9078)

(declare-fun getRuleFromTag!821 (LexerInterface!4236 List!30601 String!34188) Option!6032)

(assert (=> b!2633561 (= e!1661715 (= (rule!7021 lt!926962) (get!9599 (getRuleFromTag!821 thiss!14197 rules!1726 (tag!5133 (rule!7021 lt!926962))))))))

(declare-fun b!2633563 () Bool)

(declare-fun e!1661716 () Unit!44507)

(declare-fun Unit!44521 () Unit!44507)

(assert (=> b!2633563 (= e!1661716 Unit!44521)))

(declare-fun b!2633560 () Bool)

(declare-fun res!1108896 () Bool)

(assert (=> b!2633560 (=> (not res!1108896) (not e!1661715))))

(assert (=> b!2633560 (= res!1108896 (matchR!3609 (regex!4639 (get!9599 (getRuleFromTag!821 thiss!14197 rules!1726 (tag!5133 (rule!7021 lt!926962))))) (list!11470 (charsOf!2926 lt!926962))))))

(declare-fun b!2633562 () Bool)

(declare-fun Unit!44522 () Unit!44507)

(assert (=> b!2633562 (= e!1661716 Unit!44522)))

(declare-fun lt!926958 () List!30600)

(assert (=> b!2633562 (= lt!926958 (++!7427 (list!11470 call!169267) (list!11470 lt!926299)))))

(declare-fun lt!926957 () Unit!44507)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!425 (LexerInterface!4236 Rule!9078 List!30601 List!30600) Unit!44507)

(assert (=> b!2633562 (= lt!926957 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!425 thiss!14197 (rule!7021 lt!926962) rules!1726 lt!926958))))

(assert (=> b!2633562 (isEmpty!17394 (maxPrefixOneRule!1467 thiss!14197 (rule!7021 lt!926962) lt!926958))))

(declare-fun lt!926971 () Unit!44507)

(assert (=> b!2633562 (= lt!926971 lt!926957)))

(declare-fun lt!926973 () List!30600)

(assert (=> b!2633562 (= lt!926973 (list!11470 (charsOf!2926 lt!926962)))))

(declare-fun lt!926968 () Unit!44507)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!413 (LexerInterface!4236 Rule!9078 List!30600 List!30600) Unit!44507)

(assert (=> b!2633562 (= lt!926968 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!413 thiss!14197 (rule!7021 lt!926962) lt!926973 (++!7427 (list!11470 call!169267) (list!11470 lt!926299))))))

(assert (=> b!2633562 (not (matchR!3609 (regex!4639 (rule!7021 lt!926962)) lt!926973))))

(declare-fun lt!926961 () Unit!44507)

(assert (=> b!2633562 (= lt!926961 lt!926968)))

(assert (=> b!2633562 false))

(declare-fun d!747200 () Bool)

(assert (=> d!747200 (isDefined!4792 (maxPrefix!2307 thiss!14197 rules!1726 (++!7427 (list!11470 call!169267) (list!11470 lt!926299))))))

(declare-fun lt!926972 () Unit!44507)

(assert (=> d!747200 (= lt!926972 e!1661716)))

(declare-fun c!423452 () Bool)

(assert (=> d!747200 (= c!423452 (isEmpty!17394 (maxPrefix!2307 thiss!14197 rules!1726 (++!7427 (list!11470 call!169267) (list!11470 lt!926299)))))))

(declare-fun lt!926967 () Unit!44507)

(declare-fun lt!926965 () Unit!44507)

(assert (=> d!747200 (= lt!926967 lt!926965)))

(assert (=> d!747200 e!1661715))

(declare-fun res!1108897 () Bool)

(assert (=> d!747200 (=> (not res!1108897) (not e!1661715))))

(declare-fun isDefined!4796 (Option!6032) Bool)

(assert (=> d!747200 (= res!1108897 (isDefined!4796 (getRuleFromTag!821 thiss!14197 rules!1726 (tag!5133 (rule!7021 lt!926962)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!821 (LexerInterface!4236 List!30601 List!30600 Token!8748) Unit!44507)

(assert (=> d!747200 (= lt!926965 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!821 thiss!14197 rules!1726 (list!11470 call!169267) lt!926962))))

(declare-fun lt!926963 () Unit!44507)

(declare-fun lt!926969 () Unit!44507)

(assert (=> d!747200 (= lt!926963 lt!926969)))

(declare-fun lt!926966 () List!30600)

(assert (=> d!747200 (isPrefix!2436 lt!926966 (++!7427 (list!11470 call!169267) (list!11470 lt!926299)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!389 (List!30600 List!30600 List!30600) Unit!44507)

(assert (=> d!747200 (= lt!926969 (lemmaPrefixStaysPrefixWhenAddingToSuffix!389 lt!926966 (list!11470 call!169267) (list!11470 lt!926299)))))

(assert (=> d!747200 (= lt!926966 (list!11470 (charsOf!2926 lt!926962)))))

(declare-fun lt!926959 () Unit!44507)

(declare-fun lt!926964 () Unit!44507)

(assert (=> d!747200 (= lt!926959 lt!926964)))

(declare-fun lt!926970 () List!30600)

(declare-fun lt!926960 () List!30600)

(assert (=> d!747200 (isPrefix!2436 lt!926970 (++!7427 lt!926970 lt!926960))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1608 (List!30600 List!30600) Unit!44507)

(assert (=> d!747200 (= lt!926964 (lemmaConcatTwoListThenFirstIsPrefix!1608 lt!926970 lt!926960))))

(assert (=> d!747200 (= lt!926960 (_2!17540 (get!9595 (maxPrefix!2307 thiss!14197 rules!1726 (list!11470 call!169267)))))))

(assert (=> d!747200 (= lt!926970 (list!11470 (charsOf!2926 lt!926962)))))

(assert (=> d!747200 (= lt!926962 (head!6038 (list!11471 (_1!17538 (lex!1898 thiss!14197 rules!1726 (seqFromList!3180 (list!11470 call!169267)))))))))

(assert (=> d!747200 (not (isEmpty!17389 rules!1726))))

(assert (=> d!747200 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!798 thiss!14197 rules!1726 (list!11470 call!169267) (list!11470 lt!926299)) lt!926972)))

(assert (= (and d!747200 res!1108897) b!2633560))

(assert (= (and b!2633560 res!1108896) b!2633561))

(assert (= (and d!747200 c!423452) b!2633562))

(assert (= (and d!747200 (not c!423452)) b!2633563))

(declare-fun m!2977195 () Bool)

(assert (=> b!2633561 m!2977195))

(assert (=> b!2633561 m!2977195))

(declare-fun m!2977199 () Bool)

(assert (=> b!2633561 m!2977199))

(declare-fun m!2977203 () Bool)

(assert (=> b!2633560 m!2977203))

(declare-fun m!2977205 () Bool)

(assert (=> b!2633560 m!2977205))

(assert (=> b!2633560 m!2977195))

(declare-fun m!2977207 () Bool)

(assert (=> b!2633560 m!2977207))

(assert (=> b!2633560 m!2977207))

(assert (=> b!2633560 m!2977203))

(assert (=> b!2633560 m!2977195))

(assert (=> b!2633560 m!2977199))

(declare-fun m!2977209 () Bool)

(assert (=> b!2633562 m!2977209))

(declare-fun m!2977211 () Bool)

(assert (=> b!2633562 m!2977211))

(assert (=> b!2633562 m!2977207))

(declare-fun m!2977215 () Bool)

(assert (=> b!2633562 m!2977215))

(declare-fun m!2977217 () Bool)

(assert (=> b!2633562 m!2977217))

(assert (=> b!2633562 m!2975221))

(assert (=> b!2633562 m!2975213))

(assert (=> b!2633562 m!2977215))

(declare-fun m!2977219 () Bool)

(assert (=> b!2633562 m!2977219))

(declare-fun m!2977221 () Bool)

(assert (=> b!2633562 m!2977221))

(assert (=> b!2633562 m!2977219))

(assert (=> b!2633562 m!2977207))

(assert (=> b!2633562 m!2977203))

(declare-fun m!2977223 () Bool)

(assert (=> d!747200 m!2977223))

(declare-fun m!2977225 () Bool)

(assert (=> d!747200 m!2977225))

(assert (=> d!747200 m!2975221))

(assert (=> d!747200 m!2975213))

(assert (=> d!747200 m!2977215))

(assert (=> d!747200 m!2977215))

(declare-fun m!2977227 () Bool)

(assert (=> d!747200 m!2977227))

(declare-fun m!2977229 () Bool)

(assert (=> d!747200 m!2977229))

(assert (=> d!747200 m!2975221))

(assert (=> d!747200 m!2975213))

(declare-fun m!2977231 () Bool)

(assert (=> d!747200 m!2977231))

(declare-fun m!2977233 () Bool)

(assert (=> d!747200 m!2977233))

(assert (=> d!747200 m!2977195))

(assert (=> d!747200 m!2975043))

(assert (=> d!747200 m!2975221))

(declare-fun m!2977235 () Bool)

(assert (=> d!747200 m!2977235))

(assert (=> d!747200 m!2977207))

(assert (=> d!747200 m!2977215))

(assert (=> d!747200 m!2977223))

(assert (=> d!747200 m!2977207))

(assert (=> d!747200 m!2977203))

(assert (=> d!747200 m!2977229))

(declare-fun m!2977247 () Bool)

(assert (=> d!747200 m!2977247))

(declare-fun m!2977249 () Bool)

(assert (=> d!747200 m!2977249))

(declare-fun m!2977251 () Bool)

(assert (=> d!747200 m!2977251))

(declare-fun m!2977253 () Bool)

(assert (=> d!747200 m!2977253))

(assert (=> d!747200 m!2977195))

(declare-fun m!2977255 () Bool)

(assert (=> d!747200 m!2977255))

(assert (=> d!747200 m!2977223))

(declare-fun m!2977257 () Bool)

(assert (=> d!747200 m!2977257))

(assert (=> d!747200 m!2977233))

(declare-fun m!2977259 () Bool)

(assert (=> d!747200 m!2977259))

(assert (=> d!747200 m!2977235))

(declare-fun m!2977261 () Bool)

(assert (=> d!747200 m!2977261))

(assert (=> d!747200 m!2975221))

(assert (=> d!747200 m!2977251))

(assert (=> d!747200 m!2975221))

(declare-fun m!2977263 () Bool)

(assert (=> d!747200 m!2977263))

(assert (=> b!2632083 d!747200))

(declare-fun d!747278 () Bool)

(declare-fun lt!926982 () BalanceConc!18654)

(assert (=> d!747278 (= (list!11470 lt!926982) (printListTailRec!505 thiss!14197 (dropList!942 (singletonSeq!2056 call!169266) 0) (list!11470 (BalanceConc!18655 Empty!9520))))))

(declare-fun e!1661727 () BalanceConc!18654)

(assert (=> d!747278 (= lt!926982 e!1661727)))

(declare-fun c!423458 () Bool)

(assert (=> d!747278 (= c!423458 (>= 0 (size!23579 (singletonSeq!2056 call!169266))))))

(declare-fun e!1661728 () Bool)

(assert (=> d!747278 e!1661728))

(declare-fun res!1108906 () Bool)

(assert (=> d!747278 (=> (not res!1108906) (not e!1661728))))

(assert (=> d!747278 (= res!1108906 (>= 0 0))))

(assert (=> d!747278 (= (printTailRec!1123 thiss!14197 (singletonSeq!2056 call!169266) 0 (BalanceConc!18655 Empty!9520)) lt!926982)))

(declare-fun b!2633582 () Bool)

(assert (=> b!2633582 (= e!1661728 (<= 0 (size!23579 (singletonSeq!2056 call!169266))))))

(declare-fun b!2633583 () Bool)

(assert (=> b!2633583 (= e!1661727 (BalanceConc!18655 Empty!9520))))

(declare-fun b!2633584 () Bool)

(assert (=> b!2633584 (= e!1661727 (printTailRec!1123 thiss!14197 (singletonSeq!2056 call!169266) (+ 0 1) (++!7425 (BalanceConc!18655 Empty!9520) (charsOf!2926 (apply!7265 (singletonSeq!2056 call!169266) 0)))))))

(declare-fun lt!926985 () List!30602)

(assert (=> b!2633584 (= lt!926985 (list!11471 (singletonSeq!2056 call!169266)))))

(declare-fun lt!926984 () Unit!44507)

(assert (=> b!2633584 (= lt!926984 (lemmaDropApply!850 lt!926985 0))))

(assert (=> b!2633584 (= (head!6038 (drop!1635 lt!926985 0)) (apply!7266 lt!926985 0))))

(declare-fun lt!926981 () Unit!44507)

(assert (=> b!2633584 (= lt!926981 lt!926984)))

(declare-fun lt!926980 () List!30602)

(assert (=> b!2633584 (= lt!926980 (list!11471 (singletonSeq!2056 call!169266)))))

(declare-fun lt!926986 () Unit!44507)

(assert (=> b!2633584 (= lt!926986 (lemmaDropTail!824 lt!926980 0))))

(assert (=> b!2633584 (= (tail!4276 (drop!1635 lt!926980 0)) (drop!1635 lt!926980 (+ 0 1)))))

(declare-fun lt!926983 () Unit!44507)

(assert (=> b!2633584 (= lt!926983 lt!926986)))

(assert (= (and d!747278 res!1108906) b!2633582))

(assert (= (and d!747278 c!423458) b!2633583))

(assert (= (and d!747278 (not c!423458)) b!2633584))

(declare-fun m!2977285 () Bool)

(assert (=> d!747278 m!2977285))

(assert (=> d!747278 m!2975559))

(declare-fun m!2977287 () Bool)

(assert (=> d!747278 m!2977287))

(assert (=> d!747278 m!2975215))

(declare-fun m!2977289 () Bool)

(assert (=> d!747278 m!2977289))

(assert (=> d!747278 m!2975559))

(declare-fun m!2977291 () Bool)

(assert (=> d!747278 m!2977291))

(assert (=> d!747278 m!2975215))

(assert (=> d!747278 m!2977285))

(assert (=> b!2633582 m!2975215))

(assert (=> b!2633582 m!2977289))

(declare-fun m!2977293 () Bool)

(assert (=> b!2633584 m!2977293))

(assert (=> b!2633584 m!2975215))

(assert (=> b!2633584 m!2976987))

(declare-fun m!2977295 () Bool)

(assert (=> b!2633584 m!2977295))

(declare-fun m!2977297 () Bool)

(assert (=> b!2633584 m!2977297))

(declare-fun m!2977299 () Bool)

(assert (=> b!2633584 m!2977299))

(declare-fun m!2977301 () Bool)

(assert (=> b!2633584 m!2977301))

(assert (=> b!2633584 m!2975215))

(declare-fun m!2977303 () Bool)

(assert (=> b!2633584 m!2977303))

(declare-fun m!2977305 () Bool)

(assert (=> b!2633584 m!2977305))

(assert (=> b!2633584 m!2977299))

(assert (=> b!2633584 m!2975215))

(declare-fun m!2977307 () Bool)

(assert (=> b!2633584 m!2977307))

(declare-fun m!2977309 () Bool)

(assert (=> b!2633584 m!2977309))

(assert (=> b!2633584 m!2977303))

(assert (=> b!2633584 m!2977307))

(assert (=> b!2633584 m!2977309))

(declare-fun m!2977311 () Bool)

(assert (=> b!2633584 m!2977311))

(declare-fun m!2977313 () Bool)

(assert (=> b!2633584 m!2977313))

(assert (=> b!2633584 m!2977313))

(declare-fun m!2977315 () Bool)

(assert (=> b!2633584 m!2977315))

(assert (=> b!2632083 d!747278))

(declare-fun b!2633594 () Bool)

(declare-fun e!1661737 () List!30602)

(assert (=> b!2633594 (= e!1661737 lt!926465)))

(declare-fun b!2633595 () Bool)

(declare-fun e!1661735 () Int)

(assert (=> b!2633595 (= e!1661735 0)))

(declare-fun b!2633596 () Bool)

(assert (=> b!2633596 (= e!1661737 (drop!1635 (t!216475 lt!926465) (- (+ 0 1) 1)))))

(declare-fun b!2633597 () Bool)

(declare-fun e!1661736 () List!30602)

(assert (=> b!2633597 (= e!1661736 e!1661737)))

(declare-fun c!423465 () Bool)

(assert (=> b!2633597 (= c!423465 (<= (+ 0 1) 0))))

(declare-fun b!2633598 () Bool)

(declare-fun e!1661738 () Int)

(declare-fun call!169463 () Int)

(assert (=> b!2633598 (= e!1661738 call!169463)))

(declare-fun d!747282 () Bool)

(declare-fun e!1661734 () Bool)

(assert (=> d!747282 e!1661734))

(declare-fun res!1108908 () Bool)

(assert (=> d!747282 (=> (not res!1108908) (not e!1661734))))

(declare-fun lt!926988 () List!30602)

(assert (=> d!747282 (= res!1108908 (= ((_ map implies) (content!4307 lt!926988) (content!4307 lt!926465)) ((as const (InoxSet Token!8748)) true)))))

(assert (=> d!747282 (= lt!926988 e!1661736)))

(declare-fun c!423466 () Bool)

(assert (=> d!747282 (= c!423466 ((_ is Nil!30502) lt!926465))))

(assert (=> d!747282 (= (drop!1635 lt!926465 (+ 0 1)) lt!926988)))

(declare-fun b!2633599 () Bool)

(assert (=> b!2633599 (= e!1661734 (= (size!23581 lt!926988) e!1661738))))

(declare-fun c!423464 () Bool)

(assert (=> b!2633599 (= c!423464 (<= (+ 0 1) 0))))

(declare-fun b!2633600 () Bool)

(assert (=> b!2633600 (= e!1661735 (- call!169463 (+ 0 1)))))

(declare-fun b!2633601 () Bool)

(assert (=> b!2633601 (= e!1661736 Nil!30502)))

(declare-fun bm!169458 () Bool)

(assert (=> bm!169458 (= call!169463 (size!23581 lt!926465))))

(declare-fun b!2633602 () Bool)

(assert (=> b!2633602 (= e!1661738 e!1661735)))

(declare-fun c!423463 () Bool)

(assert (=> b!2633602 (= c!423463 (>= (+ 0 1) call!169463))))

(assert (= (and d!747282 c!423466) b!2633601))

(assert (= (and d!747282 (not c!423466)) b!2633597))

(assert (= (and b!2633597 c!423465) b!2633594))

(assert (= (and b!2633597 (not c!423465)) b!2633596))

(assert (= (and d!747282 res!1108908) b!2633599))

(assert (= (and b!2633599 c!423464) b!2633598))

(assert (= (and b!2633599 (not c!423464)) b!2633602))

(assert (= (and b!2633602 c!423463) b!2633595))

(assert (= (and b!2633602 (not c!423463)) b!2633600))

(assert (= (or b!2633598 b!2633602 b!2633600) bm!169458))

(declare-fun m!2977325 () Bool)

(assert (=> b!2633596 m!2977325))

(declare-fun m!2977329 () Bool)

(assert (=> d!747282 m!2977329))

(declare-fun m!2977331 () Bool)

(assert (=> d!747282 m!2977331))

(declare-fun m!2977335 () Bool)

(assert (=> b!2633599 m!2977335))

(declare-fun m!2977339 () Bool)

(assert (=> bm!169458 m!2977339))

(assert (=> b!2632345 d!747282))

(assert (=> b!2632345 d!747036))

(declare-fun d!747288 () Bool)

(assert (=> d!747288 (= (tail!4276 (drop!1635 lt!926465 0)) (t!216475 (drop!1635 lt!926465 0)))))

(assert (=> b!2632345 d!747288))

(declare-fun b!2633613 () Bool)

(declare-fun e!1661748 () List!30602)

(assert (=> b!2633613 (= e!1661748 lt!926470)))

(declare-fun b!2633614 () Bool)

(declare-fun e!1661746 () Int)

(assert (=> b!2633614 (= e!1661746 0)))

(declare-fun b!2633615 () Bool)

(assert (=> b!2633615 (= e!1661748 (drop!1635 (t!216475 lt!926470) (- 0 1)))))

(declare-fun b!2633616 () Bool)

(declare-fun e!1661747 () List!30602)

(assert (=> b!2633616 (= e!1661747 e!1661748)))

(declare-fun c!423473 () Bool)

(assert (=> b!2633616 (= c!423473 (<= 0 0))))

(declare-fun b!2633617 () Bool)

(declare-fun e!1661749 () Int)

(declare-fun call!169465 () Int)

(assert (=> b!2633617 (= e!1661749 call!169465)))

(declare-fun d!747290 () Bool)

(declare-fun e!1661745 () Bool)

(assert (=> d!747290 e!1661745))

(declare-fun res!1108911 () Bool)

(assert (=> d!747290 (=> (not res!1108911) (not e!1661745))))

(declare-fun lt!926991 () List!30602)

(assert (=> d!747290 (= res!1108911 (= ((_ map implies) (content!4307 lt!926991) (content!4307 lt!926470)) ((as const (InoxSet Token!8748)) true)))))

(assert (=> d!747290 (= lt!926991 e!1661747)))

(declare-fun c!423474 () Bool)

(assert (=> d!747290 (= c!423474 ((_ is Nil!30502) lt!926470))))

(assert (=> d!747290 (= (drop!1635 lt!926470 0) lt!926991)))

(declare-fun b!2633618 () Bool)

(assert (=> b!2633618 (= e!1661745 (= (size!23581 lt!926991) e!1661749))))

(declare-fun c!423472 () Bool)

(assert (=> b!2633618 (= c!423472 (<= 0 0))))

(declare-fun b!2633619 () Bool)

(assert (=> b!2633619 (= e!1661746 (- call!169465 0))))

(declare-fun b!2633620 () Bool)

(assert (=> b!2633620 (= e!1661747 Nil!30502)))

(declare-fun bm!169460 () Bool)

(assert (=> bm!169460 (= call!169465 (size!23581 lt!926470))))

(declare-fun b!2633621 () Bool)

(assert (=> b!2633621 (= e!1661749 e!1661746)))

(declare-fun c!423471 () Bool)

(assert (=> b!2633621 (= c!423471 (>= 0 call!169465))))

(assert (= (and d!747290 c!423474) b!2633620))

(assert (= (and d!747290 (not c!423474)) b!2633616))

(assert (= (and b!2633616 c!423473) b!2633613))

(assert (= (and b!2633616 (not c!423473)) b!2633615))

(assert (= (and d!747290 res!1108911) b!2633618))

(assert (= (and b!2633618 c!423472) b!2633617))

(assert (= (and b!2633618 (not c!423472)) b!2633621))

(assert (= (and b!2633621 c!423471) b!2633614))

(assert (= (and b!2633621 (not c!423471)) b!2633619))

(assert (= (or b!2633617 b!2633621 b!2633619) bm!169460))

(declare-fun m!2977343 () Bool)

(assert (=> b!2633615 m!2977343))

(declare-fun m!2977345 () Bool)

(assert (=> d!747290 m!2977345))

(declare-fun m!2977347 () Bool)

(assert (=> d!747290 m!2977347))

(declare-fun m!2977349 () Bool)

(assert (=> b!2633618 m!2977349))

(declare-fun m!2977351 () Bool)

(assert (=> bm!169460 m!2977351))

(assert (=> b!2632345 d!747290))

(declare-fun d!747294 () Bool)

(declare-fun lt!927001 () BalanceConc!18654)

(assert (=> d!747294 (= (list!11470 lt!927001) (printListTailRec!505 thiss!14197 (dropList!942 lt!926220 (+ 0 1)) (list!11470 (++!7425 (BalanceConc!18655 Empty!9520) (charsOf!2926 (apply!7265 lt!926220 0))))))))

(declare-fun e!1661752 () BalanceConc!18654)

(assert (=> d!747294 (= lt!927001 e!1661752)))

(declare-fun c!423476 () Bool)

(assert (=> d!747294 (= c!423476 (>= (+ 0 1) (size!23579 lt!926220)))))

(declare-fun e!1661753 () Bool)

(assert (=> d!747294 e!1661753))

(declare-fun res!1108913 () Bool)

(assert (=> d!747294 (=> (not res!1108913) (not e!1661753))))

(assert (=> d!747294 (= res!1108913 (>= (+ 0 1) 0))))

(assert (=> d!747294 (= (printTailRec!1123 thiss!14197 lt!926220 (+ 0 1) (++!7425 (BalanceConc!18655 Empty!9520) (charsOf!2926 (apply!7265 lt!926220 0)))) lt!927001)))

(declare-fun b!2633625 () Bool)

(assert (=> b!2633625 (= e!1661753 (<= (+ 0 1) (size!23579 lt!926220)))))

(declare-fun b!2633626 () Bool)

(assert (=> b!2633626 (= e!1661752 (++!7425 (BalanceConc!18655 Empty!9520) (charsOf!2926 (apply!7265 lt!926220 0))))))

(declare-fun b!2633627 () Bool)

(assert (=> b!2633627 (= e!1661752 (printTailRec!1123 thiss!14197 lt!926220 (+ 0 1 1) (++!7425 (++!7425 (BalanceConc!18655 Empty!9520) (charsOf!2926 (apply!7265 lt!926220 0))) (charsOf!2926 (apply!7265 lt!926220 (+ 0 1))))))))

(declare-fun lt!927004 () List!30602)

(assert (=> b!2633627 (= lt!927004 (list!11471 lt!926220))))

(declare-fun lt!927003 () Unit!44507)

(assert (=> b!2633627 (= lt!927003 (lemmaDropApply!850 lt!927004 (+ 0 1)))))

(assert (=> b!2633627 (= (head!6038 (drop!1635 lt!927004 (+ 0 1))) (apply!7266 lt!927004 (+ 0 1)))))

(declare-fun lt!927000 () Unit!44507)

(assert (=> b!2633627 (= lt!927000 lt!927003)))

(declare-fun lt!926999 () List!30602)

(assert (=> b!2633627 (= lt!926999 (list!11471 lt!926220))))

(declare-fun lt!927005 () Unit!44507)

(assert (=> b!2633627 (= lt!927005 (lemmaDropTail!824 lt!926999 (+ 0 1)))))

(assert (=> b!2633627 (= (tail!4276 (drop!1635 lt!926999 (+ 0 1))) (drop!1635 lt!926999 (+ 0 1 1)))))

(declare-fun lt!927002 () Unit!44507)

(assert (=> b!2633627 (= lt!927002 lt!927005)))

(assert (= (and d!747294 res!1108913) b!2633625))

(assert (= (and d!747294 c!423476) b!2633626))

(assert (= (and d!747294 (not c!423476)) b!2633627))

(declare-fun m!2977375 () Bool)

(assert (=> d!747294 m!2977375))

(declare-fun m!2977377 () Bool)

(assert (=> d!747294 m!2977377))

(declare-fun m!2977379 () Bool)

(assert (=> d!747294 m!2977379))

(assert (=> d!747294 m!2975563))

(assert (=> d!747294 m!2975579))

(assert (=> d!747294 m!2977377))

(declare-fun m!2977385 () Bool)

(assert (=> d!747294 m!2977385))

(assert (=> d!747294 m!2977375))

(assert (=> b!2633625 m!2975563))

(declare-fun m!2977391 () Bool)

(assert (=> b!2633627 m!2977391))

(assert (=> b!2633627 m!2975569))

(declare-fun m!2977395 () Bool)

(assert (=> b!2633627 m!2977395))

(declare-fun m!2977397 () Bool)

(assert (=> b!2633627 m!2977397))

(declare-fun m!2977399 () Bool)

(assert (=> b!2633627 m!2977399))

(declare-fun m!2977401 () Bool)

(assert (=> b!2633627 m!2977401))

(declare-fun m!2977403 () Bool)

(assert (=> b!2633627 m!2977403))

(declare-fun m!2977405 () Bool)

(assert (=> b!2633627 m!2977405))

(assert (=> b!2633627 m!2977399))

(declare-fun m!2977407 () Bool)

(assert (=> b!2633627 m!2977407))

(assert (=> b!2633627 m!2975579))

(declare-fun m!2977409 () Bool)

(assert (=> b!2633627 m!2977409))

(assert (=> b!2633627 m!2977403))

(assert (=> b!2633627 m!2977407))

(assert (=> b!2633627 m!2977409))

(declare-fun m!2977411 () Bool)

(assert (=> b!2633627 m!2977411))

(declare-fun m!2977413 () Bool)

(assert (=> b!2633627 m!2977413))

(assert (=> b!2633627 m!2977413))

(declare-fun m!2977415 () Bool)

(assert (=> b!2633627 m!2977415))

(assert (=> b!2632345 d!747294))

(declare-fun d!747298 () Bool)

(declare-fun lt!927007 () BalanceConc!18654)

(assert (=> d!747298 (= (list!11470 lt!927007) (originalCharacters!5405 (apply!7265 lt!926220 0)))))

(assert (=> d!747298 (= lt!927007 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 (apply!7265 lt!926220 0)))) (value!149816 (apply!7265 lt!926220 0))))))

(assert (=> d!747298 (= (charsOf!2926 (apply!7265 lt!926220 0)) lt!927007)))

(declare-fun b_lambda!79289 () Bool)

(assert (=> (not b_lambda!79289) (not d!747298)))

(declare-fun t!216581 () Bool)

(declare-fun tb!143665 () Bool)

(assert (=> (and b!2631972 (= (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (toChars!6412 (transformation!4639 (rule!7021 (apply!7265 lt!926220 0))))) t!216581) tb!143665))

(declare-fun b!2633629 () Bool)

(declare-fun e!1661755 () Bool)

(declare-fun tp!834553 () Bool)

(assert (=> b!2633629 (= e!1661755 (and (inv!41359 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 (apply!7265 lt!926220 0)))) (value!149816 (apply!7265 lt!926220 0))))) tp!834553))))

(declare-fun result!178560 () Bool)

(assert (=> tb!143665 (= result!178560 (and (inv!41360 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 (apply!7265 lt!926220 0)))) (value!149816 (apply!7265 lt!926220 0)))) e!1661755))))

(assert (= tb!143665 b!2633629))

(declare-fun m!2977425 () Bool)

(assert (=> b!2633629 m!2977425))

(declare-fun m!2977427 () Bool)

(assert (=> tb!143665 m!2977427))

(assert (=> d!747298 t!216581))

(declare-fun b_and!192887 () Bool)

(assert (= b_and!192869 (and (=> t!216581 result!178560) b_and!192887)))

(declare-fun tb!143669 () Bool)

(declare-fun t!216585 () Bool)

(assert (=> (and b!2631973 (= (toChars!6412 (transformation!4639 (h!35921 rules!1726))) (toChars!6412 (transformation!4639 (rule!7021 (apply!7265 lt!926220 0))))) t!216585) tb!143669))

(declare-fun result!178564 () Bool)

(assert (= result!178564 result!178560))

(assert (=> d!747298 t!216585))

(declare-fun b_and!192889 () Bool)

(assert (= b_and!192871 (and (=> t!216585 result!178564) b_and!192889)))

(declare-fun t!216587 () Bool)

(declare-fun tb!143671 () Bool)

(assert (=> (and b!2632394 (= (toChars!6412 (transformation!4639 (h!35921 (t!216474 rules!1726)))) (toChars!6412 (transformation!4639 (rule!7021 (apply!7265 lt!926220 0))))) t!216587) tb!143671))

(declare-fun result!178566 () Bool)

(assert (= result!178566 result!178560))

(assert (=> d!747298 t!216587))

(declare-fun b_and!192891 () Bool)

(assert (= b_and!192873 (and (=> t!216587 result!178566) b_and!192891)))

(declare-fun m!2977429 () Bool)

(assert (=> d!747298 m!2977429))

(declare-fun m!2977433 () Bool)

(assert (=> d!747298 m!2977433))

(assert (=> b!2632345 d!747298))

(declare-fun d!747302 () Bool)

(assert (=> d!747302 (= (head!6038 (drop!1635 lt!926470 0)) (h!35922 (drop!1635 lt!926470 0)))))

(assert (=> b!2632345 d!747302))

(declare-fun b!2633635 () Bool)

(declare-fun e!1661758 () Bool)

(declare-fun lt!927009 () BalanceConc!18654)

(assert (=> b!2633635 (= e!1661758 (= (list!11470 lt!927009) (++!7427 (list!11470 (BalanceConc!18655 Empty!9520)) (list!11470 (charsOf!2926 (apply!7265 lt!926220 0))))))))

(declare-fun b!2633632 () Bool)

(declare-fun res!1108918 () Bool)

(assert (=> b!2633632 (=> (not res!1108918) (not e!1661758))))

(assert (=> b!2633632 (= res!1108918 (isBalanced!2876 (++!7428 (c!423089 (BalanceConc!18655 Empty!9520)) (c!423089 (charsOf!2926 (apply!7265 lt!926220 0))))))))

(declare-fun b!2633634 () Bool)

(declare-fun res!1108917 () Bool)

(assert (=> b!2633634 (=> (not res!1108917) (not e!1661758))))

(assert (=> b!2633634 (= res!1108917 (>= (height!1373 (++!7428 (c!423089 (BalanceConc!18655 Empty!9520)) (c!423089 (charsOf!2926 (apply!7265 lt!926220 0))))) (max!0 (height!1373 (c!423089 (BalanceConc!18655 Empty!9520))) (height!1373 (c!423089 (charsOf!2926 (apply!7265 lt!926220 0)))))))))

(declare-fun b!2633633 () Bool)

(declare-fun res!1108919 () Bool)

(assert (=> b!2633633 (=> (not res!1108919) (not e!1661758))))

(assert (=> b!2633633 (= res!1108919 (<= (height!1373 (++!7428 (c!423089 (BalanceConc!18655 Empty!9520)) (c!423089 (charsOf!2926 (apply!7265 lt!926220 0))))) (+ (max!0 (height!1373 (c!423089 (BalanceConc!18655 Empty!9520))) (height!1373 (c!423089 (charsOf!2926 (apply!7265 lt!926220 0))))) 1)))))

(declare-fun d!747306 () Bool)

(assert (=> d!747306 e!1661758))

(declare-fun res!1108916 () Bool)

(assert (=> d!747306 (=> (not res!1108916) (not e!1661758))))

(assert (=> d!747306 (= res!1108916 (appendAssocInst!631 (c!423089 (BalanceConc!18655 Empty!9520)) (c!423089 (charsOf!2926 (apply!7265 lt!926220 0)))))))

(assert (=> d!747306 (= lt!927009 (BalanceConc!18655 (++!7428 (c!423089 (BalanceConc!18655 Empty!9520)) (c!423089 (charsOf!2926 (apply!7265 lt!926220 0))))))))

(assert (=> d!747306 (= (++!7425 (BalanceConc!18655 Empty!9520) (charsOf!2926 (apply!7265 lt!926220 0))) lt!927009)))

(assert (= (and d!747306 res!1108916) b!2633632))

(assert (= (and b!2633632 res!1108918) b!2633633))

(assert (= (and b!2633633 res!1108919) b!2633634))

(assert (= (and b!2633634 res!1108917) b!2633635))

(declare-fun m!2977437 () Bool)

(assert (=> b!2633635 m!2977437))

(assert (=> b!2633635 m!2975559))

(assert (=> b!2633635 m!2975585))

(declare-fun m!2977439 () Bool)

(assert (=> b!2633635 m!2977439))

(assert (=> b!2633635 m!2975559))

(assert (=> b!2633635 m!2977439))

(declare-fun m!2977441 () Bool)

(assert (=> b!2633635 m!2977441))

(declare-fun m!2977443 () Bool)

(assert (=> d!747306 m!2977443))

(declare-fun m!2977445 () Bool)

(assert (=> d!747306 m!2977445))

(declare-fun m!2977447 () Bool)

(assert (=> b!2633634 m!2977447))

(assert (=> b!2633634 m!2977445))

(assert (=> b!2633634 m!2977447))

(declare-fun m!2977449 () Bool)

(assert (=> b!2633634 m!2977449))

(declare-fun m!2977451 () Bool)

(assert (=> b!2633634 m!2977451))

(assert (=> b!2633634 m!2977445))

(declare-fun m!2977453 () Bool)

(assert (=> b!2633634 m!2977453))

(assert (=> b!2633634 m!2977449))

(assert (=> b!2633633 m!2977447))

(assert (=> b!2633633 m!2977445))

(assert (=> b!2633633 m!2977447))

(assert (=> b!2633633 m!2977449))

(assert (=> b!2633633 m!2977451))

(assert (=> b!2633633 m!2977445))

(assert (=> b!2633633 m!2977453))

(assert (=> b!2633633 m!2977449))

(assert (=> b!2633632 m!2977445))

(assert (=> b!2633632 m!2977445))

(declare-fun m!2977455 () Bool)

(assert (=> b!2633632 m!2977455))

(assert (=> b!2632345 d!747306))

(declare-fun b!2633636 () Bool)

(declare-fun e!1661762 () List!30602)

(assert (=> b!2633636 (= e!1661762 lt!926465)))

(declare-fun b!2633637 () Bool)

(declare-fun e!1661760 () Int)

(assert (=> b!2633637 (= e!1661760 0)))

(declare-fun b!2633638 () Bool)

(assert (=> b!2633638 (= e!1661762 (drop!1635 (t!216475 lt!926465) (- 0 1)))))

(declare-fun b!2633639 () Bool)

(declare-fun e!1661761 () List!30602)

(assert (=> b!2633639 (= e!1661761 e!1661762)))

(declare-fun c!423479 () Bool)

(assert (=> b!2633639 (= c!423479 (<= 0 0))))

(declare-fun b!2633640 () Bool)

(declare-fun e!1661763 () Int)

(declare-fun call!169466 () Int)

(assert (=> b!2633640 (= e!1661763 call!169466)))

(declare-fun d!747308 () Bool)

(declare-fun e!1661759 () Bool)

(assert (=> d!747308 e!1661759))

(declare-fun res!1108920 () Bool)

(assert (=> d!747308 (=> (not res!1108920) (not e!1661759))))

(declare-fun lt!927010 () List!30602)

(assert (=> d!747308 (= res!1108920 (= ((_ map implies) (content!4307 lt!927010) (content!4307 lt!926465)) ((as const (InoxSet Token!8748)) true)))))

(assert (=> d!747308 (= lt!927010 e!1661761)))

(declare-fun c!423480 () Bool)

(assert (=> d!747308 (= c!423480 ((_ is Nil!30502) lt!926465))))

(assert (=> d!747308 (= (drop!1635 lt!926465 0) lt!927010)))

(declare-fun b!2633641 () Bool)

(assert (=> b!2633641 (= e!1661759 (= (size!23581 lt!927010) e!1661763))))

(declare-fun c!423478 () Bool)

(assert (=> b!2633641 (= c!423478 (<= 0 0))))

(declare-fun b!2633642 () Bool)

(assert (=> b!2633642 (= e!1661760 (- call!169466 0))))

(declare-fun b!2633643 () Bool)

(assert (=> b!2633643 (= e!1661761 Nil!30502)))

(declare-fun bm!169461 () Bool)

(assert (=> bm!169461 (= call!169466 (size!23581 lt!926465))))

(declare-fun b!2633644 () Bool)

(assert (=> b!2633644 (= e!1661763 e!1661760)))

(declare-fun c!423477 () Bool)

(assert (=> b!2633644 (= c!423477 (>= 0 call!169466))))

(assert (= (and d!747308 c!423480) b!2633643))

(assert (= (and d!747308 (not c!423480)) b!2633639))

(assert (= (and b!2633639 c!423479) b!2633636))

(assert (= (and b!2633639 (not c!423479)) b!2633638))

(assert (= (and d!747308 res!1108920) b!2633641))

(assert (= (and b!2633641 c!423478) b!2633640))

(assert (= (and b!2633641 (not c!423478)) b!2633644))

(assert (= (and b!2633644 c!423477) b!2633637))

(assert (= (and b!2633644 (not c!423477)) b!2633642))

(assert (= (or b!2633640 b!2633644 b!2633642) bm!169461))

(declare-fun m!2977457 () Bool)

(assert (=> b!2633638 m!2977457))

(declare-fun m!2977459 () Bool)

(assert (=> d!747308 m!2977459))

(assert (=> d!747308 m!2977331))

(declare-fun m!2977461 () Bool)

(assert (=> b!2633641 m!2977461))

(assert (=> bm!169461 m!2977339))

(assert (=> b!2632345 d!747308))

(declare-fun d!747310 () Bool)

(declare-fun lt!927011 () Token!8748)

(assert (=> d!747310 (= lt!927011 (apply!7266 (list!11471 lt!926220) 0))))

(assert (=> d!747310 (= lt!927011 (apply!7267 (c!423090 lt!926220) 0))))

(declare-fun e!1661764 () Bool)

(assert (=> d!747310 e!1661764))

(declare-fun res!1108921 () Bool)

(assert (=> d!747310 (=> (not res!1108921) (not e!1661764))))

(assert (=> d!747310 (= res!1108921 (<= 0 0))))

(assert (=> d!747310 (= (apply!7265 lt!926220 0) lt!927011)))

(declare-fun b!2633645 () Bool)

(assert (=> b!2633645 (= e!1661764 (< 0 (size!23579 lt!926220)))))

(assert (= (and d!747310 res!1108921) b!2633645))

(assert (=> d!747310 m!2975569))

(assert (=> d!747310 m!2975569))

(declare-fun m!2977463 () Bool)

(assert (=> d!747310 m!2977463))

(declare-fun m!2977465 () Bool)

(assert (=> d!747310 m!2977465))

(assert (=> b!2633645 m!2975563))

(assert (=> b!2632345 d!747310))

(declare-fun d!747312 () Bool)

(declare-fun lt!927012 () Token!8748)

(assert (=> d!747312 (contains!5785 lt!926470 lt!927012)))

(declare-fun e!1661770 () Token!8748)

(assert (=> d!747312 (= lt!927012 e!1661770)))

(declare-fun c!423481 () Bool)

(assert (=> d!747312 (= c!423481 (= 0 0))))

(declare-fun e!1661769 () Bool)

(assert (=> d!747312 e!1661769))

(declare-fun res!1108932 () Bool)

(assert (=> d!747312 (=> (not res!1108932) (not e!1661769))))

(assert (=> d!747312 (= res!1108932 (<= 0 0))))

(assert (=> d!747312 (= (apply!7266 lt!926470 0) lt!927012)))

(declare-fun b!2633656 () Bool)

(assert (=> b!2633656 (= e!1661769 (< 0 (size!23581 lt!926470)))))

(declare-fun b!2633657 () Bool)

(assert (=> b!2633657 (= e!1661770 (head!6038 lt!926470))))

(declare-fun b!2633658 () Bool)

(assert (=> b!2633658 (= e!1661770 (apply!7266 (tail!4276 lt!926470) (- 0 1)))))

(assert (= (and d!747312 res!1108932) b!2633656))

(assert (= (and d!747312 c!423481) b!2633657))

(assert (= (and d!747312 (not c!423481)) b!2633658))

(declare-fun m!2977467 () Bool)

(assert (=> d!747312 m!2977467))

(assert (=> b!2633656 m!2977351))

(declare-fun m!2977469 () Bool)

(assert (=> b!2633657 m!2977469))

(declare-fun m!2977471 () Bool)

(assert (=> b!2633658 m!2977471))

(assert (=> b!2633658 m!2977471))

(declare-fun m!2977473 () Bool)

(assert (=> b!2633658 m!2977473))

(assert (=> b!2632345 d!747312))

(declare-fun d!747314 () Bool)

(assert (=> d!747314 (= (tail!4276 (drop!1635 lt!926465 0)) (drop!1635 lt!926465 (+ 0 1)))))

(declare-fun lt!927013 () Unit!44507)

(assert (=> d!747314 (= lt!927013 (choose!15620 lt!926465 0))))

(declare-fun e!1661771 () Bool)

(assert (=> d!747314 e!1661771))

(declare-fun res!1108935 () Bool)

(assert (=> d!747314 (=> (not res!1108935) (not e!1661771))))

(assert (=> d!747314 (= res!1108935 (>= 0 0))))

(assert (=> d!747314 (= (lemmaDropTail!824 lt!926465 0) lt!927013)))

(declare-fun b!2633661 () Bool)

(assert (=> b!2633661 (= e!1661771 (< 0 (size!23581 lt!926465)))))

(assert (= (and d!747314 res!1108935) b!2633661))

(assert (=> d!747314 m!2975589))

(assert (=> d!747314 m!2975589))

(assert (=> d!747314 m!2975591))

(assert (=> d!747314 m!2975571))

(declare-fun m!2977475 () Bool)

(assert (=> d!747314 m!2977475))

(assert (=> b!2633661 m!2977339))

(assert (=> b!2632345 d!747314))

(declare-fun d!747316 () Bool)

(assert (=> d!747316 (= (head!6038 (drop!1635 lt!926470 0)) (apply!7266 lt!926470 0))))

(declare-fun lt!927014 () Unit!44507)

(assert (=> d!747316 (= lt!927014 (choose!15621 lt!926470 0))))

(declare-fun e!1661772 () Bool)

(assert (=> d!747316 e!1661772))

(declare-fun res!1108936 () Bool)

(assert (=> d!747316 (=> (not res!1108936) (not e!1661772))))

(assert (=> d!747316 (= res!1108936 (>= 0 0))))

(assert (=> d!747316 (= (lemmaDropApply!850 lt!926470 0) lt!927014)))

(declare-fun b!2633662 () Bool)

(assert (=> b!2633662 (= e!1661772 (< 0 (size!23581 lt!926470)))))

(assert (= (and d!747316 res!1108936) b!2633662))

(assert (=> d!747316 m!2975575))

(assert (=> d!747316 m!2975575))

(assert (=> d!747316 m!2975577))

(assert (=> d!747316 m!2975573))

(declare-fun m!2977477 () Bool)

(assert (=> d!747316 m!2977477))

(assert (=> b!2633662 m!2977351))

(assert (=> b!2632345 d!747316))

(declare-fun d!747318 () Bool)

(assert (=> d!747318 (= (head!6038 lt!926208) (h!35922 lt!926208))))

(assert (=> b!2632282 d!747318))

(declare-fun d!747320 () Bool)

(assert (=> d!747320 (= (list!11470 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (value!149816 separatorToken!156))) (list!11473 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (value!149816 separatorToken!156)))))))

(declare-fun bs!475943 () Bool)

(assert (= bs!475943 d!747320))

(declare-fun m!2977479 () Bool)

(assert (=> bs!475943 m!2977479))

(assert (=> b!2632221 d!747320))

(declare-fun d!747322 () Bool)

(declare-fun lt!927015 () Bool)

(assert (=> d!747322 (= lt!927015 (isEmpty!17392 (list!11470 (_2!17538 lt!926230))))))

(assert (=> d!747322 (= lt!927015 (isEmpty!17397 (c!423089 (_2!17538 lt!926230))))))

(assert (=> d!747322 (= (isEmpty!17390 (_2!17538 lt!926230)) lt!927015)))

(declare-fun bs!475944 () Bool)

(assert (= bs!475944 d!747322))

(declare-fun m!2977481 () Bool)

(assert (=> bs!475944 m!2977481))

(assert (=> bs!475944 m!2977481))

(declare-fun m!2977483 () Bool)

(assert (=> bs!475944 m!2977483))

(declare-fun m!2977485 () Bool)

(assert (=> bs!475944 m!2977485))

(assert (=> b!2632004 d!747322))

(declare-fun d!747324 () Bool)

(assert (=> d!747324 (dynLambda!13068 lambda!98752 lt!926207)))

(assert (=> d!747324 true))

(declare-fun _$7!928 () Unit!44507)

(assert (=> d!747324 (= (choose!15618 lt!926208 lambda!98752 lt!926207) _$7!928)))

(declare-fun b_lambda!79291 () Bool)

(assert (=> (not b_lambda!79291) (not d!747324)))

(declare-fun bs!475945 () Bool)

(assert (= bs!475945 d!747324))

(assert (=> bs!475945 m!2975245))

(assert (=> d!746678 d!747324))

(declare-fun d!747326 () Bool)

(declare-fun res!1108943 () Bool)

(declare-fun e!1661775 () Bool)

(assert (=> d!747326 (=> res!1108943 e!1661775)))

(assert (=> d!747326 (= res!1108943 ((_ is Nil!30502) lt!926208))))

(assert (=> d!747326 (= (forall!6385 lt!926208 lambda!98752) e!1661775)))

(declare-fun b!2633669 () Bool)

(declare-fun e!1661776 () Bool)

(assert (=> b!2633669 (= e!1661775 e!1661776)))

(declare-fun res!1108944 () Bool)

(assert (=> b!2633669 (=> (not res!1108944) (not e!1661776))))

(assert (=> b!2633669 (= res!1108944 (dynLambda!13068 lambda!98752 (h!35922 lt!926208)))))

(declare-fun b!2633670 () Bool)

(assert (=> b!2633670 (= e!1661776 (forall!6385 (t!216475 lt!926208) lambda!98752))))

(assert (= (and d!747326 (not res!1108943)) b!2633669))

(assert (= (and b!2633669 res!1108944) b!2633670))

(declare-fun b_lambda!79293 () Bool)

(assert (=> (not b_lambda!79293) (not b!2633669)))

(declare-fun m!2977491 () Bool)

(assert (=> b!2633669 m!2977491))

(declare-fun m!2977495 () Bool)

(assert (=> b!2633670 m!2977495))

(assert (=> d!746678 d!747326))

(declare-fun d!747328 () Bool)

(declare-fun lt!927016 () BalanceConc!18654)

(assert (=> d!747328 (= (list!11470 lt!927016) (originalCharacters!5405 call!169266))))

(assert (=> d!747328 (= lt!927016 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 call!169266))) (value!149816 call!169266)))))

(assert (=> d!747328 (= (charsOf!2926 call!169266) lt!927016)))

(declare-fun b_lambda!79295 () Bool)

(assert (=> (not b_lambda!79295) (not d!747328)))

(declare-fun t!216590 () Bool)

(declare-fun tb!143673 () Bool)

(assert (=> (and b!2631972 (= (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (toChars!6412 (transformation!4639 (rule!7021 call!169266)))) t!216590) tb!143673))

(declare-fun b!2633673 () Bool)

(declare-fun e!1661778 () Bool)

(declare-fun tp!834554 () Bool)

(assert (=> b!2633673 (= e!1661778 (and (inv!41359 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 call!169266))) (value!149816 call!169266)))) tp!834554))))

(declare-fun result!178568 () Bool)

(assert (=> tb!143673 (= result!178568 (and (inv!41360 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 call!169266))) (value!149816 call!169266))) e!1661778))))

(assert (= tb!143673 b!2633673))

(declare-fun m!2977505 () Bool)

(assert (=> b!2633673 m!2977505))

(declare-fun m!2977507 () Bool)

(assert (=> tb!143673 m!2977507))

(assert (=> d!747328 t!216590))

(declare-fun b_and!192893 () Bool)

(assert (= b_and!192887 (and (=> t!216590 result!178568) b_and!192893)))

(declare-fun tb!143675 () Bool)

(declare-fun t!216592 () Bool)

(assert (=> (and b!2631973 (= (toChars!6412 (transformation!4639 (h!35921 rules!1726))) (toChars!6412 (transformation!4639 (rule!7021 call!169266)))) t!216592) tb!143675))

(declare-fun result!178570 () Bool)

(assert (= result!178570 result!178568))

(assert (=> d!747328 t!216592))

(declare-fun b_and!192895 () Bool)

(assert (= b_and!192889 (and (=> t!216592 result!178570) b_and!192895)))

(declare-fun t!216594 () Bool)

(declare-fun tb!143677 () Bool)

(assert (=> (and b!2632394 (= (toChars!6412 (transformation!4639 (h!35921 (t!216474 rules!1726)))) (toChars!6412 (transformation!4639 (rule!7021 call!169266)))) t!216594) tb!143677))

(declare-fun result!178572 () Bool)

(assert (= result!178572 result!178568))

(assert (=> d!747328 t!216594))

(declare-fun b_and!192897 () Bool)

(assert (= b_and!192891 (and (=> t!216594 result!178572) b_and!192897)))

(declare-fun m!2977509 () Bool)

(assert (=> d!747328 m!2977509))

(declare-fun m!2977511 () Bool)

(assert (=> d!747328 m!2977511))

(assert (=> b!2632077 d!747328))

(declare-fun bm!169464 () Bool)

(declare-fun call!169469 () Bool)

(assert (=> bm!169464 (= call!169469 (ruleDisjointCharsFromAllFromOtherType!522 (h!35921 rules!1726) (t!216474 rules!1726)))))

(declare-fun b!2633691 () Bool)

(declare-fun e!1661793 () Bool)

(assert (=> b!2633691 (= e!1661793 call!169469)))

(declare-fun b!2633692 () Bool)

(declare-fun e!1661792 () Bool)

(assert (=> b!2633692 (= e!1661792 e!1661793)))

(declare-fun res!1108954 () Bool)

(declare-fun rulesUseDisjointChars!240 (Rule!9078 Rule!9078) Bool)

(assert (=> b!2633692 (= res!1108954 (rulesUseDisjointChars!240 (h!35921 rules!1726) (h!35921 rules!1726)))))

(assert (=> b!2633692 (=> (not res!1108954) (not e!1661793))))

(declare-fun b!2633693 () Bool)

(declare-fun e!1661791 () Bool)

(assert (=> b!2633693 (= e!1661791 call!169469)))

(declare-fun b!2633694 () Bool)

(assert (=> b!2633694 (= e!1661792 e!1661791)))

(declare-fun res!1108953 () Bool)

(assert (=> b!2633694 (= res!1108953 (not ((_ is Cons!30501) rules!1726)))))

(assert (=> b!2633694 (=> res!1108953 e!1661791)))

(declare-fun d!747334 () Bool)

(declare-fun c!423487 () Bool)

(assert (=> d!747334 (= c!423487 (and ((_ is Cons!30501) rules!1726) (not (= (isSeparator!4639 (h!35921 rules!1726)) (isSeparator!4639 (h!35921 rules!1726))))))))

(assert (=> d!747334 (= (ruleDisjointCharsFromAllFromOtherType!522 (h!35921 rules!1726) rules!1726) e!1661792)))

(assert (= (and d!747334 c!423487) b!2633692))

(assert (= (and d!747334 (not c!423487)) b!2633694))

(assert (= (and b!2633692 res!1108954) b!2633691))

(assert (= (and b!2633694 (not res!1108953)) b!2633693))

(assert (= (or b!2633691 b!2633693) bm!169464))

(declare-fun m!2977551 () Bool)

(assert (=> bm!169464 m!2977551))

(declare-fun m!2977553 () Bool)

(assert (=> b!2633692 m!2977553))

(assert (=> b!2632319 d!747334))

(assert (=> b!2632265 d!746822))

(declare-fun b!2633695 () Bool)

(declare-fun e!1661797 () List!30602)

(assert (=> b!2633695 (= e!1661797 (t!216475 lt!926208))))

(declare-fun b!2633696 () Bool)

(declare-fun e!1661795 () Int)

(assert (=> b!2633696 (= e!1661795 0)))

(declare-fun b!2633697 () Bool)

(assert (=> b!2633697 (= e!1661797 (drop!1635 (t!216475 (t!216475 lt!926208)) (- (- (+ 1 from!862) 1) 1)))))

(declare-fun b!2633698 () Bool)

(declare-fun e!1661796 () List!30602)

(assert (=> b!2633698 (= e!1661796 e!1661797)))

(declare-fun c!423490 () Bool)

(assert (=> b!2633698 (= c!423490 (<= (- (+ 1 from!862) 1) 0))))

(declare-fun b!2633699 () Bool)

(declare-fun e!1661798 () Int)

(declare-fun call!169470 () Int)

(assert (=> b!2633699 (= e!1661798 call!169470)))

(declare-fun d!747350 () Bool)

(declare-fun e!1661794 () Bool)

(assert (=> d!747350 e!1661794))

(declare-fun res!1108955 () Bool)

(assert (=> d!747350 (=> (not res!1108955) (not e!1661794))))

(declare-fun lt!927020 () List!30602)

(assert (=> d!747350 (= res!1108955 (= ((_ map implies) (content!4307 lt!927020) (content!4307 (t!216475 lt!926208))) ((as const (InoxSet Token!8748)) true)))))

(assert (=> d!747350 (= lt!927020 e!1661796)))

(declare-fun c!423491 () Bool)

(assert (=> d!747350 (= c!423491 ((_ is Nil!30502) (t!216475 lt!926208)))))

(assert (=> d!747350 (= (drop!1635 (t!216475 lt!926208) (- (+ 1 from!862) 1)) lt!927020)))

(declare-fun b!2633700 () Bool)

(assert (=> b!2633700 (= e!1661794 (= (size!23581 lt!927020) e!1661798))))

(declare-fun c!423489 () Bool)

(assert (=> b!2633700 (= c!423489 (<= (- (+ 1 from!862) 1) 0))))

(declare-fun b!2633701 () Bool)

(assert (=> b!2633701 (= e!1661795 (- call!169470 (- (+ 1 from!862) 1)))))

(declare-fun b!2633702 () Bool)

(assert (=> b!2633702 (= e!1661796 Nil!30502)))

(declare-fun bm!169465 () Bool)

(assert (=> bm!169465 (= call!169470 (size!23581 (t!216475 lt!926208)))))

(declare-fun b!2633703 () Bool)

(assert (=> b!2633703 (= e!1661798 e!1661795)))

(declare-fun c!423488 () Bool)

(assert (=> b!2633703 (= c!423488 (>= (- (+ 1 from!862) 1) call!169470))))

(assert (= (and d!747350 c!423491) b!2633702))

(assert (= (and d!747350 (not c!423491)) b!2633698))

(assert (= (and b!2633698 c!423490) b!2633695))

(assert (= (and b!2633698 (not c!423490)) b!2633697))

(assert (= (and d!747350 res!1108955) b!2633700))

(assert (= (and b!2633700 c!423489) b!2633699))

(assert (= (and b!2633700 (not c!423489)) b!2633703))

(assert (= (and b!2633703 c!423488) b!2633696))

(assert (= (and b!2633703 (not c!423488)) b!2633701))

(assert (= (or b!2633699 b!2633703 b!2633701) bm!169465))

(declare-fun m!2977555 () Bool)

(assert (=> b!2633697 m!2977555))

(declare-fun m!2977557 () Bool)

(assert (=> d!747350 m!2977557))

(assert (=> d!747350 m!2976407))

(declare-fun m!2977559 () Bool)

(assert (=> b!2633700 m!2977559))

(assert (=> bm!169465 m!2975769))

(assert (=> b!2632268 d!747350))

(declare-fun bs!475949 () Bool)

(declare-fun d!747352 () Bool)

(assert (= bs!475949 (and d!747352 d!746896)))

(declare-fun lambda!98818 () Int)

(assert (=> bs!475949 (= (= (toValue!6553 (transformation!4639 (h!35921 rules!1726))) (toValue!6553 (transformation!4639 (rule!7021 separatorToken!156)))) (= lambda!98818 lambda!98788))))

(assert (=> d!747352 true))

(assert (=> d!747352 (< (dynLambda!13064 order!16535 (toValue!6553 (transformation!4639 (h!35921 rules!1726)))) (dynLambda!13072 order!16545 lambda!98818))))

(assert (=> d!747352 (= (equivClasses!1817 (toChars!6412 (transformation!4639 (h!35921 rules!1726))) (toValue!6553 (transformation!4639 (h!35921 rules!1726)))) (Forall2!778 lambda!98818))))

(declare-fun bs!475950 () Bool)

(assert (= bs!475950 d!747352))

(declare-fun m!2977561 () Bool)

(assert (=> bs!475950 m!2977561))

(assert (=> b!2632314 d!747352))

(declare-fun d!747354 () Bool)

(declare-fun res!1108956 () Bool)

(declare-fun e!1661803 () Bool)

(assert (=> d!747354 (=> res!1108956 e!1661803)))

(assert (=> d!747354 (= res!1108956 ((_ is Nil!30502) (dropList!942 v!6381 from!862)))))

(assert (=> d!747354 (= (forall!6385 (dropList!942 v!6381 from!862) lambda!98751) e!1661803)))

(declare-fun b!2633712 () Bool)

(declare-fun e!1661804 () Bool)

(assert (=> b!2633712 (= e!1661803 e!1661804)))

(declare-fun res!1108957 () Bool)

(assert (=> b!2633712 (=> (not res!1108957) (not e!1661804))))

(assert (=> b!2633712 (= res!1108957 (dynLambda!13068 lambda!98751 (h!35922 (dropList!942 v!6381 from!862))))))

(declare-fun b!2633713 () Bool)

(assert (=> b!2633713 (= e!1661804 (forall!6385 (t!216475 (dropList!942 v!6381 from!862)) lambda!98751))))

(assert (= (and d!747354 (not res!1108956)) b!2633712))

(assert (= (and b!2633712 res!1108957) b!2633713))

(declare-fun b_lambda!79303 () Bool)

(assert (=> (not b_lambda!79303) (not b!2633712)))

(declare-fun m!2977563 () Bool)

(assert (=> b!2633712 m!2977563))

(declare-fun m!2977565 () Bool)

(assert (=> b!2633713 m!2977565))

(assert (=> d!746704 d!747354))

(declare-fun d!747356 () Bool)

(assert (=> d!747356 (forall!6385 (dropList!942 v!6381 from!862) lambda!98751)))

(assert (=> d!747356 true))

(declare-fun _$83!188 () Unit!44507)

(assert (=> d!747356 (= (choose!15619 lt!926208 (dropList!942 v!6381 from!862) lambda!98751) _$83!188)))

(declare-fun bs!475951 () Bool)

(assert (= bs!475951 d!747356))

(assert (=> bs!475951 m!2975023))

(assert (=> bs!475951 m!2975439))

(assert (=> d!746704 d!747356))

(declare-fun d!747358 () Bool)

(declare-fun res!1108958 () Bool)

(declare-fun e!1661807 () Bool)

(assert (=> d!747358 (=> res!1108958 e!1661807)))

(assert (=> d!747358 (= res!1108958 ((_ is Nil!30502) lt!926208))))

(assert (=> d!747358 (= (forall!6385 lt!926208 lambda!98751) e!1661807)))

(declare-fun b!2633718 () Bool)

(declare-fun e!1661808 () Bool)

(assert (=> b!2633718 (= e!1661807 e!1661808)))

(declare-fun res!1108959 () Bool)

(assert (=> b!2633718 (=> (not res!1108959) (not e!1661808))))

(assert (=> b!2633718 (= res!1108959 (dynLambda!13068 lambda!98751 (h!35922 lt!926208)))))

(declare-fun b!2633719 () Bool)

(assert (=> b!2633719 (= e!1661808 (forall!6385 (t!216475 lt!926208) lambda!98751))))

(assert (= (and d!747358 (not res!1108958)) b!2633718))

(assert (= (and b!2633718 res!1108959) b!2633719))

(declare-fun b_lambda!79305 () Bool)

(assert (=> (not b_lambda!79305) (not b!2633718)))

(declare-fun m!2977571 () Bool)

(assert (=> b!2633718 m!2977571))

(declare-fun m!2977573 () Bool)

(assert (=> b!2633719 m!2977573))

(assert (=> d!746704 d!747358))

(declare-fun d!747362 () Bool)

(assert (=> d!747362 (= (inv!41367 (xs!12521 (c!423090 v!6381))) (<= (size!23581 (innerList!9581 (xs!12521 (c!423090 v!6381)))) 2147483647))))

(declare-fun bs!475953 () Bool)

(assert (= bs!475953 d!747362))

(declare-fun m!2977577 () Bool)

(assert (=> bs!475953 m!2977577))

(assert (=> b!2632413 d!747362))

(declare-fun b!2633727 () Bool)

(declare-fun e!1661814 () Bool)

(assert (=> b!2633727 (= e!1661814 true)))

(declare-fun b!2633726 () Bool)

(declare-fun e!1661813 () Bool)

(assert (=> b!2633726 (= e!1661813 e!1661814)))

(declare-fun b!2633725 () Bool)

(declare-fun e!1661812 () Bool)

(assert (=> b!2633725 (= e!1661812 e!1661813)))

(assert (=> b!2632084 e!1661812))

(assert (= b!2633726 b!2633727))

(assert (= b!2633725 b!2633726))

(assert (= (and b!2632084 ((_ is Cons!30501) (t!216474 rules!1726))) b!2633725))

(assert (=> b!2633727 (< (dynLambda!13064 order!16535 (toValue!6553 (transformation!4639 (h!35921 (t!216474 rules!1726))))) (dynLambda!13065 order!16537 lambda!98758))))

(assert (=> b!2633727 (< (dynLambda!13066 order!16539 (toChars!6412 (transformation!4639 (h!35921 (t!216474 rules!1726))))) (dynLambda!13065 order!16537 lambda!98758))))

(declare-fun b!2633730 () Bool)

(declare-fun b_free!74245 () Bool)

(declare-fun b_next!74949 () Bool)

(assert (=> b!2633730 (= b_free!74245 (not b_next!74949))))

(declare-fun tp!834556 () Bool)

(declare-fun b_and!192905 () Bool)

(assert (=> b!2633730 (= tp!834556 b_and!192905)))

(declare-fun b_free!74247 () Bool)

(declare-fun b_next!74951 () Bool)

(assert (=> b!2633730 (= b_free!74247 (not b_next!74951))))

(declare-fun tb!143685 () Bool)

(declare-fun t!216603 () Bool)

(assert (=> (and b!2633730 (= (toChars!6412 (transformation!4639 (h!35921 (t!216474 (t!216474 rules!1726))))) (toChars!6412 (transformation!4639 (rule!7021 call!169266)))) t!216603) tb!143685))

(declare-fun result!178580 () Bool)

(assert (= result!178580 result!178568))

(assert (=> d!747328 t!216603))

(declare-fun tb!143687 () Bool)

(declare-fun t!216605 () Bool)

(assert (=> (and b!2633730 (= (toChars!6412 (transformation!4639 (h!35921 (t!216474 (t!216474 rules!1726))))) (toChars!6412 (transformation!4639 (rule!7021 (h!35922 (Cons!30502 lt!926207 Nil!30502)))))) t!216605) tb!143687))

(declare-fun result!178582 () Bool)

(assert (= result!178582 result!178544))

(assert (=> d!747146 t!216605))

(declare-fun tb!143689 () Bool)

(declare-fun t!216607 () Bool)

(assert (=> (and b!2633730 (= (toChars!6412 (transformation!4639 (h!35921 (t!216474 (t!216474 rules!1726))))) (toChars!6412 (transformation!4639 (rule!7021 (apply!7265 v!6381 (+ 1 from!862)))))) t!216607) tb!143689))

(declare-fun result!178584 () Bool)

(assert (= result!178584 result!178538))

(assert (=> d!746980 t!216607))

(declare-fun tb!143691 () Bool)

(declare-fun t!216609 () Bool)

(assert (=> (and b!2633730 (= (toChars!6412 (transformation!4639 (h!35921 (t!216474 (t!216474 rules!1726))))) (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156)))) t!216609) tb!143691))

(declare-fun result!178586 () Bool)

(assert (= result!178586 result!178494))

(assert (=> b!2632221 t!216609))

(declare-fun tb!143693 () Bool)

(declare-fun t!216611 () Bool)

(assert (=> (and b!2633730 (= (toChars!6412 (transformation!4639 (h!35921 (t!216474 (t!216474 rules!1726))))) (toChars!6412 (transformation!4639 (rule!7021 lt!926207)))) t!216611) tb!143693))

(declare-fun result!178588 () Bool)

(assert (= result!178588 result!178482))

(assert (=> d!746676 t!216611))

(declare-fun tb!143695 () Bool)

(declare-fun t!216613 () Bool)

(assert (=> (and b!2633730 (= (toChars!6412 (transformation!4639 (h!35921 (t!216474 (t!216474 rules!1726))))) (toChars!6412 (transformation!4639 (rule!7021 (ite c!423109 call!169263 (ite c!423111 separatorToken!156 call!169266)))))) t!216613) tb!143695))

(declare-fun result!178590 () Bool)

(assert (= result!178590 result!178532))

(assert (=> d!746894 t!216613))

(declare-fun tb!143697 () Bool)

(declare-fun t!216615 () Bool)

(assert (=> (and b!2633730 (= (toChars!6412 (transformation!4639 (h!35921 (t!216474 (t!216474 rules!1726))))) (toChars!6412 (transformation!4639 (rule!7021 (apply!7265 lt!926220 0))))) t!216615) tb!143697))

(declare-fun result!178592 () Bool)

(assert (= result!178592 result!178560))

(assert (=> d!747298 t!216615))

(declare-fun b_and!192907 () Bool)

(declare-fun tp!834557 () Bool)

(assert (=> b!2633730 (= tp!834557 (and (=> t!216605 result!178582) (=> t!216607 result!178584) (=> t!216613 result!178590) (=> t!216611 result!178588) (=> t!216609 result!178586) (=> t!216615 result!178592) (=> t!216603 result!178580) b_and!192907))))

(declare-fun e!1661815 () Bool)

(assert (=> b!2633730 (= e!1661815 (and tp!834556 tp!834557))))

(declare-fun e!1661817 () Bool)

(declare-fun b!2633729 () Bool)

(declare-fun tp!834559 () Bool)

(assert (=> b!2633729 (= e!1661817 (and tp!834559 (inv!41350 (tag!5133 (h!35921 (t!216474 (t!216474 rules!1726))))) (inv!41355 (transformation!4639 (h!35921 (t!216474 (t!216474 rules!1726))))) e!1661815))))

(declare-fun b!2633728 () Bool)

(declare-fun e!1661818 () Bool)

(declare-fun tp!834558 () Bool)

(assert (=> b!2633728 (= e!1661818 (and e!1661817 tp!834558))))

(assert (=> b!2632392 (= tp!834483 e!1661818)))

(assert (= b!2633729 b!2633730))

(assert (= b!2633728 b!2633729))

(assert (= (and b!2632392 ((_ is Cons!30501) (t!216474 (t!216474 rules!1726)))) b!2633728))

(declare-fun m!2977599 () Bool)

(assert (=> b!2633729 m!2977599))

(declare-fun m!2977601 () Bool)

(assert (=> b!2633729 m!2977601))

(declare-fun b!2633741 () Bool)

(declare-fun e!1661827 () Bool)

(assert (=> b!2633741 (= e!1661827 true)))

(declare-fun b!2633740 () Bool)

(declare-fun e!1661826 () Bool)

(assert (=> b!2633740 (= e!1661826 e!1661827)))

(declare-fun b!2633739 () Bool)

(declare-fun e!1661825 () Bool)

(assert (=> b!2633739 (= e!1661825 e!1661826)))

(assert (=> b!2632381 e!1661825))

(assert (= b!2633740 b!2633741))

(assert (= b!2633739 b!2633740))

(assert (= (and b!2632381 ((_ is Cons!30501) (t!216474 (t!216474 rules!1726)))) b!2633739))

(assert (=> b!2633741 (< (dynLambda!13064 order!16535 (toValue!6553 (transformation!4639 (h!35921 (t!216474 (t!216474 rules!1726)))))) (dynLambda!13065 order!16537 lambda!98752))))

(assert (=> b!2633741 (< (dynLambda!13066 order!16539 (toChars!6412 (transformation!4639 (h!35921 (t!216474 (t!216474 rules!1726)))))) (dynLambda!13065 order!16537 lambda!98752))))

(declare-fun e!1661828 () Bool)

(assert (=> b!2632393 (= tp!834484 e!1661828)))

(declare-fun b!2633743 () Bool)

(declare-fun tp!834563 () Bool)

(declare-fun tp!834560 () Bool)

(assert (=> b!2633743 (= e!1661828 (and tp!834563 tp!834560))))

(declare-fun b!2633744 () Bool)

(declare-fun tp!834561 () Bool)

(assert (=> b!2633744 (= e!1661828 tp!834561)))

(declare-fun b!2633745 () Bool)

(declare-fun tp!834564 () Bool)

(declare-fun tp!834562 () Bool)

(assert (=> b!2633745 (= e!1661828 (and tp!834564 tp!834562))))

(declare-fun b!2633742 () Bool)

(assert (=> b!2633742 (= e!1661828 tp_is_empty!13759)))

(assert (= (and b!2632393 ((_ is ElementMatch!7783) (regex!4639 (h!35921 (t!216474 rules!1726))))) b!2633742))

(assert (= (and b!2632393 ((_ is Concat!12644) (regex!4639 (h!35921 (t!216474 rules!1726))))) b!2633743))

(assert (= (and b!2632393 ((_ is Star!7783) (regex!4639 (h!35921 (t!216474 rules!1726))))) b!2633744))

(assert (= (and b!2632393 ((_ is Union!7783) (regex!4639 (h!35921 (t!216474 rules!1726))))) b!2633745))

(declare-fun e!1661829 () Bool)

(assert (=> b!2632421 (= tp!834500 e!1661829)))

(declare-fun b!2633747 () Bool)

(declare-fun tp!834568 () Bool)

(declare-fun tp!834565 () Bool)

(assert (=> b!2633747 (= e!1661829 (and tp!834568 tp!834565))))

(declare-fun b!2633748 () Bool)

(declare-fun tp!834566 () Bool)

(assert (=> b!2633748 (= e!1661829 tp!834566)))

(declare-fun b!2633749 () Bool)

(declare-fun tp!834569 () Bool)

(declare-fun tp!834567 () Bool)

(assert (=> b!2633749 (= e!1661829 (and tp!834569 tp!834567))))

(declare-fun b!2633746 () Bool)

(assert (=> b!2633746 (= e!1661829 tp_is_empty!13759)))

(assert (= (and b!2632421 ((_ is ElementMatch!7783) (regOne!16078 (regex!4639 (h!35921 rules!1726))))) b!2633746))

(assert (= (and b!2632421 ((_ is Concat!12644) (regOne!16078 (regex!4639 (h!35921 rules!1726))))) b!2633747))

(assert (= (and b!2632421 ((_ is Star!7783) (regOne!16078 (regex!4639 (h!35921 rules!1726))))) b!2633748))

(assert (= (and b!2632421 ((_ is Union!7783) (regOne!16078 (regex!4639 (h!35921 rules!1726))))) b!2633749))

(declare-fun e!1661830 () Bool)

(assert (=> b!2632421 (= tp!834497 e!1661830)))

(declare-fun b!2633751 () Bool)

(declare-fun tp!834573 () Bool)

(declare-fun tp!834570 () Bool)

(assert (=> b!2633751 (= e!1661830 (and tp!834573 tp!834570))))

(declare-fun b!2633752 () Bool)

(declare-fun tp!834571 () Bool)

(assert (=> b!2633752 (= e!1661830 tp!834571)))

(declare-fun b!2633753 () Bool)

(declare-fun tp!834574 () Bool)

(declare-fun tp!834572 () Bool)

(assert (=> b!2633753 (= e!1661830 (and tp!834574 tp!834572))))

(declare-fun b!2633750 () Bool)

(assert (=> b!2633750 (= e!1661830 tp_is_empty!13759)))

(assert (= (and b!2632421 ((_ is ElementMatch!7783) (regTwo!16078 (regex!4639 (h!35921 rules!1726))))) b!2633750))

(assert (= (and b!2632421 ((_ is Concat!12644) (regTwo!16078 (regex!4639 (h!35921 rules!1726))))) b!2633751))

(assert (= (and b!2632421 ((_ is Star!7783) (regTwo!16078 (regex!4639 (h!35921 rules!1726))))) b!2633752))

(assert (= (and b!2632421 ((_ is Union!7783) (regTwo!16078 (regex!4639 (h!35921 rules!1726))))) b!2633753))

(declare-fun e!1661831 () Bool)

(assert (=> b!2632422 (= tp!834498 e!1661831)))

(declare-fun b!2633755 () Bool)

(declare-fun tp!834578 () Bool)

(declare-fun tp!834575 () Bool)

(assert (=> b!2633755 (= e!1661831 (and tp!834578 tp!834575))))

(declare-fun b!2633756 () Bool)

(declare-fun tp!834576 () Bool)

(assert (=> b!2633756 (= e!1661831 tp!834576)))

(declare-fun b!2633757 () Bool)

(declare-fun tp!834579 () Bool)

(declare-fun tp!834577 () Bool)

(assert (=> b!2633757 (= e!1661831 (and tp!834579 tp!834577))))

(declare-fun b!2633754 () Bool)

(assert (=> b!2633754 (= e!1661831 tp_is_empty!13759)))

(assert (= (and b!2632422 ((_ is ElementMatch!7783) (reg!8112 (regex!4639 (h!35921 rules!1726))))) b!2633754))

(assert (= (and b!2632422 ((_ is Concat!12644) (reg!8112 (regex!4639 (h!35921 rules!1726))))) b!2633755))

(assert (= (and b!2632422 ((_ is Star!7783) (reg!8112 (regex!4639 (h!35921 rules!1726))))) b!2633756))

(assert (= (and b!2632422 ((_ is Union!7783) (reg!8112 (regex!4639 (h!35921 rules!1726))))) b!2633757))

(declare-fun tp!834587 () Bool)

(declare-fun b!2633772 () Bool)

(declare-fun e!1661839 () Bool)

(declare-fun tp!834588 () Bool)

(assert (=> b!2633772 (= e!1661839 (and (inv!41359 (left!23563 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (value!149816 separatorToken!156))))) tp!834588 (inv!41359 (right!23893 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (value!149816 separatorToken!156))))) tp!834587))))

(declare-fun b!2633774 () Bool)

(declare-fun e!1661838 () Bool)

(declare-fun tp!834586 () Bool)

(assert (=> b!2633774 (= e!1661838 tp!834586)))

(declare-fun b!2633773 () Bool)

(declare-fun inv!41374 (IArray!19045) Bool)

(assert (=> b!2633773 (= e!1661839 (and (inv!41374 (xs!12520 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (value!149816 separatorToken!156))))) e!1661838))))

(assert (=> b!2632223 (= tp!834457 (and (inv!41359 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (value!149816 separatorToken!156)))) e!1661839))))

(assert (= (and b!2632223 ((_ is Node!9520) (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (value!149816 separatorToken!156))))) b!2633772))

(assert (= b!2633773 b!2633774))

(assert (= (and b!2632223 ((_ is Leaf!14580) (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (value!149816 separatorToken!156))))) b!2633773))

(declare-fun m!2977623 () Bool)

(assert (=> b!2633772 m!2977623))

(declare-fun m!2977625 () Bool)

(assert (=> b!2633772 m!2977625))

(declare-fun m!2977627 () Bool)

(assert (=> b!2633773 m!2977627))

(assert (=> b!2632223 m!2975425))

(declare-fun e!1661840 () Bool)

(assert (=> b!2632423 (= tp!834501 e!1661840)))

(declare-fun b!2633776 () Bool)

(declare-fun tp!834592 () Bool)

(declare-fun tp!834589 () Bool)

(assert (=> b!2633776 (= e!1661840 (and tp!834592 tp!834589))))

(declare-fun b!2633777 () Bool)

(declare-fun tp!834590 () Bool)

(assert (=> b!2633777 (= e!1661840 tp!834590)))

(declare-fun b!2633778 () Bool)

(declare-fun tp!834593 () Bool)

(declare-fun tp!834591 () Bool)

(assert (=> b!2633778 (= e!1661840 (and tp!834593 tp!834591))))

(declare-fun b!2633775 () Bool)

(assert (=> b!2633775 (= e!1661840 tp_is_empty!13759)))

(assert (= (and b!2632423 ((_ is ElementMatch!7783) (regOne!16079 (regex!4639 (h!35921 rules!1726))))) b!2633775))

(assert (= (and b!2632423 ((_ is Concat!12644) (regOne!16079 (regex!4639 (h!35921 rules!1726))))) b!2633776))

(assert (= (and b!2632423 ((_ is Star!7783) (regOne!16079 (regex!4639 (h!35921 rules!1726))))) b!2633777))

(assert (= (and b!2632423 ((_ is Union!7783) (regOne!16079 (regex!4639 (h!35921 rules!1726))))) b!2633778))

(declare-fun e!1661841 () Bool)

(assert (=> b!2632423 (= tp!834499 e!1661841)))

(declare-fun b!2633780 () Bool)

(declare-fun tp!834597 () Bool)

(declare-fun tp!834594 () Bool)

(assert (=> b!2633780 (= e!1661841 (and tp!834597 tp!834594))))

(declare-fun b!2633781 () Bool)

(declare-fun tp!834595 () Bool)

(assert (=> b!2633781 (= e!1661841 tp!834595)))

(declare-fun b!2633782 () Bool)

(declare-fun tp!834598 () Bool)

(declare-fun tp!834596 () Bool)

(assert (=> b!2633782 (= e!1661841 (and tp!834598 tp!834596))))

(declare-fun b!2633779 () Bool)

(assert (=> b!2633779 (= e!1661841 tp_is_empty!13759)))

(assert (= (and b!2632423 ((_ is ElementMatch!7783) (regTwo!16079 (regex!4639 (h!35921 rules!1726))))) b!2633779))

(assert (= (and b!2632423 ((_ is Concat!12644) (regTwo!16079 (regex!4639 (h!35921 rules!1726))))) b!2633780))

(assert (= (and b!2632423 ((_ is Star!7783) (regTwo!16079 (regex!4639 (h!35921 rules!1726))))) b!2633781))

(assert (= (and b!2632423 ((_ is Union!7783) (regTwo!16079 (regex!4639 (h!35921 rules!1726))))) b!2633782))

(declare-fun e!1661842 () Bool)

(assert (=> b!2632375 (= tp!834469 e!1661842)))

(declare-fun b!2633784 () Bool)

(declare-fun tp!834602 () Bool)

(declare-fun tp!834599 () Bool)

(assert (=> b!2633784 (= e!1661842 (and tp!834602 tp!834599))))

(declare-fun b!2633785 () Bool)

(declare-fun tp!834600 () Bool)

(assert (=> b!2633785 (= e!1661842 tp!834600)))

(declare-fun b!2633786 () Bool)

(declare-fun tp!834603 () Bool)

(declare-fun tp!834601 () Bool)

(assert (=> b!2633786 (= e!1661842 (and tp!834603 tp!834601))))

(declare-fun b!2633783 () Bool)

(assert (=> b!2633783 (= e!1661842 tp_is_empty!13759)))

(assert (= (and b!2632375 ((_ is ElementMatch!7783) (reg!8112 (regex!4639 (rule!7021 separatorToken!156))))) b!2633783))

(assert (= (and b!2632375 ((_ is Concat!12644) (reg!8112 (regex!4639 (rule!7021 separatorToken!156))))) b!2633784))

(assert (= (and b!2632375 ((_ is Star!7783) (reg!8112 (regex!4639 (rule!7021 separatorToken!156))))) b!2633785))

(assert (= (and b!2632375 ((_ is Union!7783) (reg!8112 (regex!4639 (rule!7021 separatorToken!156))))) b!2633786))

(declare-fun e!1661843 () Bool)

(assert (=> b!2632374 (= tp!834471 e!1661843)))

(declare-fun b!2633788 () Bool)

(declare-fun tp!834607 () Bool)

(declare-fun tp!834604 () Bool)

(assert (=> b!2633788 (= e!1661843 (and tp!834607 tp!834604))))

(declare-fun b!2633789 () Bool)

(declare-fun tp!834605 () Bool)

(assert (=> b!2633789 (= e!1661843 tp!834605)))

(declare-fun b!2633790 () Bool)

(declare-fun tp!834608 () Bool)

(declare-fun tp!834606 () Bool)

(assert (=> b!2633790 (= e!1661843 (and tp!834608 tp!834606))))

(declare-fun b!2633787 () Bool)

(assert (=> b!2633787 (= e!1661843 tp_is_empty!13759)))

(assert (= (and b!2632374 ((_ is ElementMatch!7783) (regOne!16078 (regex!4639 (rule!7021 separatorToken!156))))) b!2633787))

(assert (= (and b!2632374 ((_ is Concat!12644) (regOne!16078 (regex!4639 (rule!7021 separatorToken!156))))) b!2633788))

(assert (= (and b!2632374 ((_ is Star!7783) (regOne!16078 (regex!4639 (rule!7021 separatorToken!156))))) b!2633789))

(assert (= (and b!2632374 ((_ is Union!7783) (regOne!16078 (regex!4639 (rule!7021 separatorToken!156))))) b!2633790))

(declare-fun e!1661844 () Bool)

(assert (=> b!2632374 (= tp!834468 e!1661844)))

(declare-fun b!2633792 () Bool)

(declare-fun tp!834612 () Bool)

(declare-fun tp!834609 () Bool)

(assert (=> b!2633792 (= e!1661844 (and tp!834612 tp!834609))))

(declare-fun b!2633793 () Bool)

(declare-fun tp!834610 () Bool)

(assert (=> b!2633793 (= e!1661844 tp!834610)))

(declare-fun b!2633794 () Bool)

(declare-fun tp!834613 () Bool)

(declare-fun tp!834611 () Bool)

(assert (=> b!2633794 (= e!1661844 (and tp!834613 tp!834611))))

(declare-fun b!2633791 () Bool)

(assert (=> b!2633791 (= e!1661844 tp_is_empty!13759)))

(assert (= (and b!2632374 ((_ is ElementMatch!7783) (regTwo!16078 (regex!4639 (rule!7021 separatorToken!156))))) b!2633791))

(assert (= (and b!2632374 ((_ is Concat!12644) (regTwo!16078 (regex!4639 (rule!7021 separatorToken!156))))) b!2633792))

(assert (= (and b!2632374 ((_ is Star!7783) (regTwo!16078 (regex!4639 (rule!7021 separatorToken!156))))) b!2633793))

(assert (= (and b!2632374 ((_ is Union!7783) (regTwo!16078 (regex!4639 (rule!7021 separatorToken!156))))) b!2633794))

(declare-fun e!1661845 () Bool)

(assert (=> b!2632376 (= tp!834472 e!1661845)))

(declare-fun b!2633796 () Bool)

(declare-fun tp!834617 () Bool)

(declare-fun tp!834614 () Bool)

(assert (=> b!2633796 (= e!1661845 (and tp!834617 tp!834614))))

(declare-fun b!2633797 () Bool)

(declare-fun tp!834615 () Bool)

(assert (=> b!2633797 (= e!1661845 tp!834615)))

(declare-fun b!2633798 () Bool)

(declare-fun tp!834618 () Bool)

(declare-fun tp!834616 () Bool)

(assert (=> b!2633798 (= e!1661845 (and tp!834618 tp!834616))))

(declare-fun b!2633795 () Bool)

(assert (=> b!2633795 (= e!1661845 tp_is_empty!13759)))

(assert (= (and b!2632376 ((_ is ElementMatch!7783) (regOne!16079 (regex!4639 (rule!7021 separatorToken!156))))) b!2633795))

(assert (= (and b!2632376 ((_ is Concat!12644) (regOne!16079 (regex!4639 (rule!7021 separatorToken!156))))) b!2633796))

(assert (= (and b!2632376 ((_ is Star!7783) (regOne!16079 (regex!4639 (rule!7021 separatorToken!156))))) b!2633797))

(assert (= (and b!2632376 ((_ is Union!7783) (regOne!16079 (regex!4639 (rule!7021 separatorToken!156))))) b!2633798))

(declare-fun e!1661846 () Bool)

(assert (=> b!2632376 (= tp!834470 e!1661846)))

(declare-fun b!2633800 () Bool)

(declare-fun tp!834622 () Bool)

(declare-fun tp!834619 () Bool)

(assert (=> b!2633800 (= e!1661846 (and tp!834622 tp!834619))))

(declare-fun b!2633801 () Bool)

(declare-fun tp!834620 () Bool)

(assert (=> b!2633801 (= e!1661846 tp!834620)))

(declare-fun b!2633802 () Bool)

(declare-fun tp!834623 () Bool)

(declare-fun tp!834621 () Bool)

(assert (=> b!2633802 (= e!1661846 (and tp!834623 tp!834621))))

(declare-fun b!2633799 () Bool)

(assert (=> b!2633799 (= e!1661846 tp_is_empty!13759)))

(assert (= (and b!2632376 ((_ is ElementMatch!7783) (regTwo!16079 (regex!4639 (rule!7021 separatorToken!156))))) b!2633799))

(assert (= (and b!2632376 ((_ is Concat!12644) (regTwo!16079 (regex!4639 (rule!7021 separatorToken!156))))) b!2633800))

(assert (= (and b!2632376 ((_ is Star!7783) (regTwo!16079 (regex!4639 (rule!7021 separatorToken!156))))) b!2633801))

(assert (= (and b!2632376 ((_ is Union!7783) (regTwo!16079 (regex!4639 (rule!7021 separatorToken!156))))) b!2633802))

(declare-fun tp!834626 () Bool)

(declare-fun tp!834625 () Bool)

(declare-fun b!2633803 () Bool)

(declare-fun e!1661848 () Bool)

(assert (=> b!2633803 (= e!1661848 (and (inv!41359 (left!23563 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 lt!926207))) (value!149816 lt!926207))))) tp!834626 (inv!41359 (right!23893 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 lt!926207))) (value!149816 lt!926207))))) tp!834625))))

(declare-fun b!2633805 () Bool)

(declare-fun e!1661847 () Bool)

(declare-fun tp!834624 () Bool)

(assert (=> b!2633805 (= e!1661847 tp!834624)))

(declare-fun b!2633804 () Bool)

(assert (=> b!2633804 (= e!1661848 (and (inv!41374 (xs!12520 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 lt!926207))) (value!149816 lt!926207))))) e!1661847))))

(assert (=> b!2632091 (= tp!834453 (and (inv!41359 (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 lt!926207))) (value!149816 lt!926207)))) e!1661848))))

(assert (= (and b!2632091 ((_ is Node!9520) (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 lt!926207))) (value!149816 lt!926207))))) b!2633803))

(assert (= b!2633804 b!2633805))

(assert (= (and b!2632091 ((_ is Leaf!14580) (c!423089 (dynLambda!13067 (toChars!6412 (transformation!4639 (rule!7021 lt!926207))) (value!149816 lt!926207))))) b!2633804))

(declare-fun m!2977637 () Bool)

(assert (=> b!2633803 m!2977637))

(declare-fun m!2977639 () Bool)

(assert (=> b!2633803 m!2977639))

(declare-fun m!2977641 () Bool)

(assert (=> b!2633804 m!2977641))

(assert (=> b!2632091 m!2975237))

(declare-fun b!2633808 () Bool)

(declare-fun e!1661851 () Bool)

(assert (=> b!2633808 (= e!1661851 true)))

(declare-fun b!2633807 () Bool)

(declare-fun e!1661850 () Bool)

(assert (=> b!2633807 (= e!1661850 e!1661851)))

(declare-fun b!2633806 () Bool)

(declare-fun e!1661849 () Bool)

(assert (=> b!2633806 (= e!1661849 e!1661850)))

(assert (=> b!2632214 e!1661849))

(assert (= b!2633807 b!2633808))

(assert (= b!2633806 b!2633807))

(assert (= (and b!2632214 ((_ is Cons!30501) (t!216474 rules!1726))) b!2633806))

(assert (=> b!2633808 (< (dynLambda!13064 order!16535 (toValue!6553 (transformation!4639 (h!35921 (t!216474 rules!1726))))) (dynLambda!13065 order!16537 lambda!98769))))

(assert (=> b!2633808 (< (dynLambda!13066 order!16539 (toChars!6412 (transformation!4639 (h!35921 (t!216474 rules!1726))))) (dynLambda!13065 order!16537 lambda!98769))))

(declare-fun e!1661853 () Bool)

(declare-fun tp!834629 () Bool)

(declare-fun tp!834628 () Bool)

(declare-fun b!2633809 () Bool)

(assert (=> b!2633809 (= e!1661853 (and (inv!41356 (left!23564 (left!23564 (c!423090 v!6381)))) tp!834629 (inv!41356 (right!23894 (left!23564 (c!423090 v!6381)))) tp!834628))))

(declare-fun b!2633811 () Bool)

(declare-fun e!1661852 () Bool)

(declare-fun tp!834627 () Bool)

(assert (=> b!2633811 (= e!1661852 tp!834627)))

(declare-fun b!2633810 () Bool)

(assert (=> b!2633810 (= e!1661853 (and (inv!41367 (xs!12521 (left!23564 (c!423090 v!6381)))) e!1661852))))

(assert (=> b!2632412 (= tp!834493 (and (inv!41356 (left!23564 (c!423090 v!6381))) e!1661853))))

(assert (= (and b!2632412 ((_ is Node!9521) (left!23564 (c!423090 v!6381)))) b!2633809))

(assert (= b!2633810 b!2633811))

(assert (= (and b!2632412 ((_ is Leaf!14581) (left!23564 (c!423090 v!6381)))) b!2633810))

(declare-fun m!2977643 () Bool)

(assert (=> b!2633809 m!2977643))

(declare-fun m!2977645 () Bool)

(assert (=> b!2633809 m!2977645))

(declare-fun m!2977647 () Bool)

(assert (=> b!2633810 m!2977647))

(assert (=> b!2632412 m!2975621))

(declare-fun tp!834631 () Bool)

(declare-fun b!2633812 () Bool)

(declare-fun tp!834632 () Bool)

(declare-fun e!1661855 () Bool)

(assert (=> b!2633812 (= e!1661855 (and (inv!41356 (left!23564 (right!23894 (c!423090 v!6381)))) tp!834632 (inv!41356 (right!23894 (right!23894 (c!423090 v!6381)))) tp!834631))))

(declare-fun b!2633814 () Bool)

(declare-fun e!1661854 () Bool)

(declare-fun tp!834630 () Bool)

(assert (=> b!2633814 (= e!1661854 tp!834630)))

(declare-fun b!2633813 () Bool)

(assert (=> b!2633813 (= e!1661855 (and (inv!41367 (xs!12521 (right!23894 (c!423090 v!6381)))) e!1661854))))

(assert (=> b!2632412 (= tp!834492 (and (inv!41356 (right!23894 (c!423090 v!6381))) e!1661855))))

(assert (= (and b!2632412 ((_ is Node!9521) (right!23894 (c!423090 v!6381)))) b!2633812))

(assert (= b!2633813 b!2633814))

(assert (= (and b!2632412 ((_ is Leaf!14581) (right!23894 (c!423090 v!6381)))) b!2633813))

(declare-fun m!2977649 () Bool)

(assert (=> b!2633812 m!2977649))

(declare-fun m!2977651 () Bool)

(assert (=> b!2633812 m!2977651))

(declare-fun m!2977653 () Bool)

(assert (=> b!2633813 m!2977653))

(assert (=> b!2632412 m!2975623))

(declare-fun b!2633828 () Bool)

(declare-fun b_free!74249 () Bool)

(declare-fun b_next!74953 () Bool)

(assert (=> b!2633828 (= b_free!74249 (not b_next!74953))))

(declare-fun tp!834645 () Bool)

(declare-fun b_and!192909 () Bool)

(assert (=> b!2633828 (= tp!834645 b_and!192909)))

(declare-fun b_free!74251 () Bool)

(declare-fun b_next!74955 () Bool)

(assert (=> b!2633828 (= b_free!74251 (not b_next!74955))))

(declare-fun tb!143699 () Bool)

(declare-fun t!216617 () Bool)

(assert (=> (and b!2633828 (= (toChars!6412 (transformation!4639 (rule!7021 (h!35922 (innerList!9581 (xs!12521 (c!423090 v!6381))))))) (toChars!6412 (transformation!4639 (rule!7021 call!169266)))) t!216617) tb!143699))

(declare-fun result!178598 () Bool)

(assert (= result!178598 result!178568))

(assert (=> d!747328 t!216617))

(declare-fun tb!143701 () Bool)

(declare-fun t!216619 () Bool)

(assert (=> (and b!2633828 (= (toChars!6412 (transformation!4639 (rule!7021 (h!35922 (innerList!9581 (xs!12521 (c!423090 v!6381))))))) (toChars!6412 (transformation!4639 (rule!7021 (h!35922 (Cons!30502 lt!926207 Nil!30502)))))) t!216619) tb!143701))

(declare-fun result!178600 () Bool)

(assert (= result!178600 result!178544))

(assert (=> d!747146 t!216619))

(declare-fun tb!143703 () Bool)

(declare-fun t!216621 () Bool)

(assert (=> (and b!2633828 (= (toChars!6412 (transformation!4639 (rule!7021 (h!35922 (innerList!9581 (xs!12521 (c!423090 v!6381))))))) (toChars!6412 (transformation!4639 (rule!7021 (apply!7265 v!6381 (+ 1 from!862)))))) t!216621) tb!143703))

(declare-fun result!178602 () Bool)

(assert (= result!178602 result!178538))

(assert (=> d!746980 t!216621))

(declare-fun t!216623 () Bool)

(declare-fun tb!143705 () Bool)

(assert (=> (and b!2633828 (= (toChars!6412 (transformation!4639 (rule!7021 (h!35922 (innerList!9581 (xs!12521 (c!423090 v!6381))))))) (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156)))) t!216623) tb!143705))

(declare-fun result!178604 () Bool)

(assert (= result!178604 result!178494))

(assert (=> b!2632221 t!216623))

(declare-fun t!216625 () Bool)

(declare-fun tb!143707 () Bool)

(assert (=> (and b!2633828 (= (toChars!6412 (transformation!4639 (rule!7021 (h!35922 (innerList!9581 (xs!12521 (c!423090 v!6381))))))) (toChars!6412 (transformation!4639 (rule!7021 lt!926207)))) t!216625) tb!143707))

(declare-fun result!178606 () Bool)

(assert (= result!178606 result!178482))

(assert (=> d!746676 t!216625))

(declare-fun t!216627 () Bool)

(declare-fun tb!143709 () Bool)

(assert (=> (and b!2633828 (= (toChars!6412 (transformation!4639 (rule!7021 (h!35922 (innerList!9581 (xs!12521 (c!423090 v!6381))))))) (toChars!6412 (transformation!4639 (rule!7021 (ite c!423109 call!169263 (ite c!423111 separatorToken!156 call!169266)))))) t!216627) tb!143709))

(declare-fun result!178608 () Bool)

(assert (= result!178608 result!178532))

(assert (=> d!746894 t!216627))

(declare-fun t!216629 () Bool)

(declare-fun tb!143711 () Bool)

(assert (=> (and b!2633828 (= (toChars!6412 (transformation!4639 (rule!7021 (h!35922 (innerList!9581 (xs!12521 (c!423090 v!6381))))))) (toChars!6412 (transformation!4639 (rule!7021 (apply!7265 lt!926220 0))))) t!216629) tb!143711))

(declare-fun result!178610 () Bool)

(assert (= result!178610 result!178560))

(assert (=> d!747298 t!216629))

(declare-fun tp!834646 () Bool)

(declare-fun b_and!192911 () Bool)

(assert (=> b!2633828 (= tp!834646 (and (=> t!216627 result!178608) (=> t!216621 result!178602) (=> t!216623 result!178604) (=> t!216629 result!178610) (=> t!216619 result!178600) (=> t!216625 result!178606) (=> t!216617 result!178598) b_and!192911))))

(declare-fun e!1661870 () Bool)

(assert (=> b!2633828 (= e!1661870 (and tp!834645 tp!834646))))

(declare-fun b!2633826 () Bool)

(declare-fun e!1661871 () Bool)

(declare-fun e!1661873 () Bool)

(declare-fun tp!834643 () Bool)

(assert (=> b!2633826 (= e!1661873 (and (inv!21 (value!149816 (h!35922 (innerList!9581 (xs!12521 (c!423090 v!6381)))))) e!1661871 tp!834643))))

(declare-fun e!1661868 () Bool)

(declare-fun tp!834647 () Bool)

(declare-fun b!2633825 () Bool)

(assert (=> b!2633825 (= e!1661868 (and (inv!41357 (h!35922 (innerList!9581 (xs!12521 (c!423090 v!6381))))) e!1661873 tp!834647))))

(declare-fun b!2633827 () Bool)

(declare-fun tp!834644 () Bool)

(assert (=> b!2633827 (= e!1661871 (and tp!834644 (inv!41350 (tag!5133 (rule!7021 (h!35922 (innerList!9581 (xs!12521 (c!423090 v!6381))))))) (inv!41355 (transformation!4639 (rule!7021 (h!35922 (innerList!9581 (xs!12521 (c!423090 v!6381))))))) e!1661870))))

(assert (=> b!2632414 (= tp!834491 e!1661868)))

(assert (= b!2633827 b!2633828))

(assert (= b!2633826 b!2633827))

(assert (= b!2633825 b!2633826))

(assert (= (and b!2632414 ((_ is Cons!30502) (innerList!9581 (xs!12521 (c!423090 v!6381))))) b!2633825))

(declare-fun m!2977655 () Bool)

(assert (=> b!2633826 m!2977655))

(declare-fun m!2977657 () Bool)

(assert (=> b!2633825 m!2977657))

(declare-fun m!2977659 () Bool)

(assert (=> b!2633827 m!2977659))

(declare-fun m!2977661 () Bool)

(assert (=> b!2633827 m!2977661))

(declare-fun b!2633829 () Bool)

(declare-fun e!1661874 () Bool)

(declare-fun tp!834648 () Bool)

(assert (=> b!2633829 (= e!1661874 (and tp_is_empty!13759 tp!834648))))

(assert (=> b!2632419 (= tp!834496 e!1661874)))

(assert (= (and b!2632419 ((_ is Cons!30500) (t!216473 (originalCharacters!5405 separatorToken!156)))) b!2633829))

(declare-fun b_lambda!79307 () Bool)

(assert (= b_lambda!79269 (or d!746686 b_lambda!79307)))

(declare-fun bs!475954 () Bool)

(declare-fun d!747376 () Bool)

(assert (= bs!475954 (and d!747376 d!746686)))

(assert (=> bs!475954 (= (dynLambda!13068 lambda!98769 (h!35922 (list!11471 v!6381))) (rulesProduceIndividualToken!1948 thiss!14197 rules!1726 (h!35922 (list!11471 v!6381))))))

(assert (=> bs!475954 m!2976459))

(assert (=> b!2632856 d!747376))

(declare-fun b_lambda!79309 () Bool)

(assert (= b_lambda!79291 (or b!2631976 b_lambda!79309)))

(assert (=> d!747324 d!746778))

(declare-fun b_lambda!79311 () Bool)

(assert (= b_lambda!79305 (or b!2631978 b_lambda!79311)))

(declare-fun bs!475955 () Bool)

(declare-fun d!747378 () Bool)

(assert (= bs!475955 (and d!747378 b!2631978)))

(assert (=> bs!475955 (= (dynLambda!13068 lambda!98751 (h!35922 lt!926208)) (not (isSeparator!4639 (rule!7021 (h!35922 lt!926208)))))))

(assert (=> b!2633718 d!747378))

(declare-fun b_lambda!79313 () Bool)

(assert (= b_lambda!79293 (or b!2631976 b_lambda!79313)))

(declare-fun bs!475956 () Bool)

(declare-fun d!747380 () Bool)

(assert (= bs!475956 (and d!747380 b!2631976)))

(assert (=> bs!475956 (= (dynLambda!13068 lambda!98752 (h!35922 lt!926208)) (rulesProduceIndividualToken!1948 thiss!14197 rules!1726 (h!35922 lt!926208)))))

(declare-fun m!2977663 () Bool)

(assert (=> bs!475956 m!2977663))

(assert (=> b!2633669 d!747380))

(declare-fun b_lambda!79315 () Bool)

(assert (= b_lambda!79243 (or (and b!2631972 b_free!74231 (= (toChars!6412 (transformation!4639 (rule!7021 separatorToken!156))) (toChars!6412 (transformation!4639 (rule!7021 lt!926207))))) (and b!2632394 b_free!74239 (= (toChars!6412 (transformation!4639 (h!35921 (t!216474 rules!1726)))) (toChars!6412 (transformation!4639 (rule!7021 lt!926207))))) (and b!2633828 b_free!74251 (= (toChars!6412 (transformation!4639 (rule!7021 (h!35922 (innerList!9581 (xs!12521 (c!423090 v!6381))))))) (toChars!6412 (transformation!4639 (rule!7021 lt!926207))))) (and b!2633730 b_free!74247 (= (toChars!6412 (transformation!4639 (h!35921 (t!216474 (t!216474 rules!1726))))) (toChars!6412 (transformation!4639 (rule!7021 lt!926207))))) (and b!2631973 b_free!74235 (= (toChars!6412 (transformation!4639 (h!35921 rules!1726))) (toChars!6412 (transformation!4639 (rule!7021 lt!926207))))) b_lambda!79315)))

(declare-fun b_lambda!79317 () Bool)

(assert (= b_lambda!79265 (or b!2631978 b_lambda!79317)))

(declare-fun bs!475957 () Bool)

(declare-fun d!747382 () Bool)

(assert (= bs!475957 (and d!747382 b!2631978)))

(assert (=> bs!475957 (= (dynLambda!13068 lambda!98751 (h!35922 (list!11471 v!6381))) (not (isSeparator!4639 (rule!7021 (h!35922 (list!11471 v!6381))))))))

(assert (=> b!2632729 d!747382))

(declare-fun b_lambda!79319 () Bool)

(assert (= b_lambda!79303 (or b!2631978 b_lambda!79319)))

(declare-fun bs!475958 () Bool)

(declare-fun d!747384 () Bool)

(assert (= bs!475958 (and d!747384 b!2631978)))

(assert (=> bs!475958 (= (dynLambda!13068 lambda!98751 (h!35922 (dropList!942 v!6381 from!862))) (not (isSeparator!4639 (rule!7021 (h!35922 (dropList!942 v!6381 from!862))))))))

(assert (=> b!2633712 d!747384))

(declare-fun b_lambda!79321 () Bool)

(assert (= b_lambda!79273 (or b!2632074 b_lambda!79321)))

(declare-fun bs!475959 () Bool)

(declare-fun d!747386 () Bool)

(assert (= bs!475959 (and d!747386 b!2632074)))

(assert (=> bs!475959 (= (dynLambda!13068 lambda!98758 (apply!7265 v!6381 (+ 1 from!862))) (rulesProduceIndividualToken!1948 thiss!14197 rules!1726 (apply!7265 v!6381 (+ 1 from!862))))))

(assert (=> bs!475959 m!2975181))

(declare-fun m!2977665 () Bool)

(assert (=> bs!475959 m!2977665))

(assert (=> d!746986 d!747386))

(check-sat (not b!2632708) (not b!2633811) (not d!746942) (not tb!143649) (not b!2633713) (not b!2633145) (not d!747000) (not b!2632747) (not b!2632820) (not b!2633561) (not d!746918) (not b!2633774) (not b_next!74951) (not b!2632903) (not b!2633391) (not b!2632560) (not b!2633317) (not b!2633242) (not b!2633243) (not b_lambda!79313) (not b!2633394) (not b!2633773) (not b_next!74937) b_and!192819 (not b!2633298) (not b!2632973) (not b_lambda!79321) (not b!2632613) (not b!2632748) (not b!2633700) (not b!2632868) (not d!746982) (not b_next!74939) (not b!2632926) (not d!747350) (not b!2632695) (not b_next!74933) (not b!2632715) (not bs!475959) (not b!2632972) (not b_next!74943) (not b!2632723) (not b!2633221) (not b_lambda!79315) (not d!747320) (not b!2632975) (not bm!169439) (not b!2633796) (not b!2633146) (not bm!169330) (not b!2632617) (not b!2633745) (not b!2633697) (not d!747178) (not b!2632944) (not b!2633813) (not d!747086) (not b!2633183) (not b!2632996) (not b!2632824) (not b!2633250) (not b!2633241) (not d!746894) (not b!2632879) (not d!747194) (not bm!169382) (not b!2633318) (not b!2632618) (not bm!169335) (not tb!143665) (not b!2633354) (not b!2632971) (not b!2633245) (not d!746926) (not b!2633618) (not tb!143637) (not b!2633077) (not bm!169383) (not b!2632899) (not d!747278) (not d!747104) (not b!2632974) (not b_lambda!79319) (not b!2632610) (not b!2633670) (not d!746876) (not bm!169458) (not b!2633047) (not b!2633159) (not b!2633615) (not b!2632792) (not d!746818) (not b!2633629) (not bm!169419) (not b!2632823) (not b!2633784) (not d!746820) (not b!2633804) (not d!747322) (not b!2632742) (not b!2633805) (not d!746980) (not d!746896) (not b!2633789) (not b!2633244) (not d!747306) (not bm!169465) (not b!2633792) (not b!2633218) (not d!746930) (not d!747128) (not b!2632934) (not bm!169343) (not d!746856) (not bm!169403) (not d!746816) (not d!747042) (not b!2633788) (not d!746974) (not b!2632767) (not b!2633803) (not d!746858) (not b!2633777) (not d!746826) b_and!192839 (not d!746944) (not b_next!74941) (not b!2633390) (not b!2633291) (not b!2633584) (not b!2633240) (not b!2633725) (not d!747146) (not b_lambda!79311) (not b!2632882) (not b!2632981) (not b!2633829) (not b!2632883) (not bm!169444) (not b_lambda!79317) b_and!192907 (not b!2632910) (not b!2632818) (not b!2632929) (not b!2633232) (not b!2633158) (not b!2633246) (not b!2633219) (not bm!169379) (not b!2632939) (not b!2633743) (not b!2633086) (not d!746808) (not b!2632825) (not b_next!74949) (not b!2632637) (not b!2633657) (not b!2632968) (not b!2633393) (not d!746814) (not b!2633756) (not b!2633314) (not b!2632639) (not d!746954) (not b!2632701) (not b!2633662) (not b!2633150) (not b!2633752) (not b!2633599) (not b!2633801) (not d!746914) (not b!2632621) (not b!2633658) (not b!2633781) tp_is_empty!13759 (not b!2633638) (not b!2633753) (not b!2633797) (not b!2632611) (not b!2632769) (not d!746952) (not d!746878) b_and!192911 (not b!2633288) (not b!2632907) (not b!2633793) (not d!747098) (not b!2632740) (not b!2632874) (not b!2633234) (not b_lambda!79267) (not bm!169461) (not bs!475956) (not d!747132) (not b!2632790) (not b!2632091) (not tb!143643) (not b!2632641) (not d!747312) (not b!2632543) (not d!746884) (not b!2632793) (not bm!169334) (not d!747032) (not b_next!74935) (not b!2632977) (not bm!169380) (not b!2632542) (not d!747096) (not d!746806) (not d!747014) (not b!2633661) (not b!2632936) (not b!2632983) (not d!746932) (not b!2632822) (not b!2633814) (not d!746902) b_and!192897 (not b!2632770) (not d!746850) (not b!2632978) (not b!2633782) (not b!2632938) (not d!746992) (not d!747196) (not b!2632979) (not b!2633076) (not b!2632880) (not b!2633825) (not bm!169408) (not b!2633343) (not bm!169341) (not d!747010) (not b!2633798) (not b!2632937) (not d!747356) (not b!2632612) (not b!2633656) (not b!2632916) (not b!2633220) (not d!747040) (not b!2633786) (not b!2633810) (not b!2632904) (not d!747136) (not b!2633778) (not b_next!74953) (not b!2633083) (not b!2633074) (not d!747124) (not b!2633826) (not b!2632778) (not b!2632535) (not b!2633827) (not d!747120) (not b!2633073) (not b!2632741) (not b!2632557) (not b!2633252) (not b!2633641) (not d!746972) (not b!2633755) (not b!2632575) (not b_lambda!79253) (not b!2633392) (not b!2632919) (not b!2633287) (not b_lambda!79307) (not d!746928) (not d!746968) (not b!2633772) (not b!2632558) (not bm!169460) (not d!747198) (not d!747308) b_and!192895 (not d!746842) (not b!2633729) (not b!2633215) (not b!2632614) (not d!746912) (not d!746846) (not b!2633800) (not bm!169297) (not b_lambda!79295) (not d!747144) (not tb!143673) (not b_lambda!79255) (not b!2632556) (not b!2633794) (not d!746978) (not b!2633046) (not d!747316) (not b!2633236) (not b!2633809) (not d!747290) (not b!2633231) (not b!2633176) (not b!2633634) (not b!2633251) (not b!2633395) (not b!2632816) (not d!747094) (not b!2633744) (not b!2632827) (not b!2632693) (not b!2633366) (not b!2633625) (not b!2633785) (not d!747314) (not d!746916) (not b!2633396) (not d!746892) (not b_lambda!79271) (not b!2633790) (not bm!169294) (not b!2633295) (not b!2632885) (not b!2632777) b_and!192893 (not d!747352) (not bm!169420) (not b!2633075) (not bm!169331) (not b!2632990) (not d!746898) (not b!2633153) (not b!2633635) (not d!746882) (not b!2633247) (not d!746986) (not b!2633632) (not b!2633633) (not d!747134) (not b!2632867) (not b!2633776) (not b!2632789) (not d!747092) (not b!2632857) (not b!2633673) (not d!747298) (not b!2632615) (not d!746936) (not bm!169386) (not b!2632712) (not d!746948) b_and!192909 (not b!2633812) (not b!2633239) (not d!747122) (not b!2633802) (not b!2632412) (not bm!169445) (not b!2633315) (not d!746910) (not d!746970) (not d!747038) (not b!2633627) (not b!2632943) (not b!2633748) (not b!2633596) (not b!2632923) (not b!2632817) (not b!2633806) (not b_lambda!79309) (not d!747174) (not b!2633747) (not b!2632704) (not d!747130) (not bm!169337) (not b!2633728) (not b!2632902) (not bs!475954) (not d!747362) (not b!2632223) (not d!747282) (not b!2633749) (not b!2632969) (not b!2633645) (not d!747088) (not b!2633353) (not bm!169381) (not d!747142) (not d!746984) (not b!2633079) (not b!2632980) (not b_next!74955) (not b!2633757) (not b!2633739) (not bm!169464) (not d!747102) (not d!747036) (not b!2633751) (not d!747200) (not b!2633582) (not d!747166) (not d!746988) (not b!2633048) (not d!747310) (not b!2632730) (not b!2633780) (not d!746964) (not b!2632871) (not b!2633344) (not b!2632821) (not b_lambda!79279) (not b!2633560) (not b!2632714) (not b!2632976) (not d!747294) (not b!2632866) (not b!2632900) (not d!747138) (not d!746940) (not b!2632759) (not b!2633562) (not b!2633253) (not b_lambda!79289) b_and!192823 (not b!2633238) (not b!2633151) (not b!2633248) (not b!2633692) (not b!2633214) b_and!192905 (not d!747084) (not b!2633289) (not b!2632970) (not b!2633078) (not b!2633342) (not b!2632713) (not d!747328) (not b!2632760) (not bm!169370) (not b!2632706) (not b!2633303) (not b!2632638) (not b!2633719) (not b!2633237) (not bm!169421) (not d!747192) (not b!2632878) (not d!747100) (not b!2633235) (not b!2632561))
(check-sat (not b_next!74951) (not b_next!74933) (not b_next!74943) b_and!192907 (not b_next!74949) b_and!192911 (not b_next!74935) b_and!192897 (not b_next!74953) b_and!192895 b_and!192893 b_and!192909 (not b_next!74955) b_and!192823 b_and!192905 (not b_next!74937) b_and!192819 (not b_next!74939) b_and!192839 (not b_next!74941))

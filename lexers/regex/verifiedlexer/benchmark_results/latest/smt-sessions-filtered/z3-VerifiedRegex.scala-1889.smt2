; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92958 () Bool)

(assert start!92958)

(declare-fun res!483851 () Bool)

(declare-fun e!688498 () Bool)

(assert (=> start!92958 (=> (not res!483851) (not e!688498))))

(declare-datatypes ((List!10415 0))(
  ( (Nil!10399) (Cons!10399 (h!15800 (_ BitVec 16)) (t!101465 List!10415)) )
))
(declare-datatypes ((TokenValue!1834 0))(
  ( (FloatLiteralValue!3668 (text!13283 List!10415)) (TokenValueExt!1833 (__x!7416 Int)) (Broken!9170 (value!58315 List!10415)) (Object!1849) (End!1834) (Def!1834) (Underscore!1834) (Match!1834) (Else!1834) (Error!1834) (Case!1834) (If!1834) (Extends!1834) (Abstract!1834) (Class!1834) (Val!1834) (DelimiterValue!3668 (del!1894 List!10415)) (KeywordValue!1840 (value!58316 List!10415)) (CommentValue!3668 (value!58317 List!10415)) (WhitespaceValue!3668 (value!58318 List!10415)) (IndentationValue!1834 (value!58319 List!10415)) (String!12739) (Int32!1834) (Broken!9171 (value!58320 List!10415)) (Boolean!1835) (Unit!15784) (OperatorValue!1837 (op!1894 List!10415)) (IdentifierValue!3668 (value!58321 List!10415)) (IdentifierValue!3669 (value!58322 List!10415)) (WhitespaceValue!3669 (value!58323 List!10415)) (True!3668) (False!3668) (Broken!9172 (value!58324 List!10415)) (Broken!9173 (value!58325 List!10415)) (True!3669) (RightBrace!1834) (RightBracket!1834) (Colon!1834) (Null!1834) (Comma!1834) (LeftBracket!1834) (False!3669) (LeftBrace!1834) (ImaginaryLiteralValue!1834 (text!13284 List!10415)) (StringLiteralValue!5502 (value!58326 List!10415)) (EOFValue!1834 (value!58327 List!10415)) (IdentValue!1834 (value!58328 List!10415)) (DelimiterValue!3669 (value!58329 List!10415)) (DedentValue!1834 (value!58330 List!10415)) (NewLineValue!1834 (value!58331 List!10415)) (IntegerValue!5502 (value!58332 (_ BitVec 32)) (text!13285 List!10415)) (IntegerValue!5503 (value!58333 Int) (text!13286 List!10415)) (Times!1834) (Or!1834) (Equal!1834) (Minus!1834) (Broken!9174 (value!58334 List!10415)) (And!1834) (Div!1834) (LessEqual!1834) (Mod!1834) (Concat!4871) (Not!1834) (Plus!1834) (SpaceValue!1834 (value!58335 List!10415)) (IntegerValue!5504 (value!58336 Int) (text!13287 List!10415)) (StringLiteralValue!5503 (text!13288 List!10415)) (FloatLiteralValue!3669 (text!13289 List!10415)) (BytesLiteralValue!1834 (value!58337 List!10415)) (CommentValue!3669 (value!58338 List!10415)) (StringLiteralValue!5504 (value!58339 List!10415)) (ErrorTokenValue!1834 (msg!1895 List!10415)) )
))
(declare-datatypes ((Regex!3037 0))(
  ( (ElementMatch!3037 (c!184390 (_ BitVec 16))) (Concat!4872 (regOne!6586 Regex!3037) (regTwo!6586 Regex!3037)) (EmptyExpr!3037) (Star!3037 (reg!3366 Regex!3037)) (EmptyLang!3037) (Union!3037 (regOne!6587 Regex!3037) (regTwo!6587 Regex!3037)) )
))
(declare-datatypes ((String!12740 0))(
  ( (String!12741 (value!58340 String)) )
))
(declare-datatypes ((IArray!6267 0))(
  ( (IArray!6268 (innerList!3191 List!10415)) )
))
(declare-datatypes ((Conc!3131 0))(
  ( (Node!3131 (left!8882 Conc!3131) (right!9212 Conc!3131) (csize!6492 Int) (cheight!3342 Int)) (Leaf!5021 (xs!5824 IArray!6267) (csize!6493 Int)) (Empty!3131) )
))
(declare-datatypes ((BalanceConc!6276 0))(
  ( (BalanceConc!6277 (c!184391 Conc!3131)) )
))
(declare-datatypes ((TokenValueInjection!3368 0))(
  ( (TokenValueInjection!3369 (toValue!2845 Int) (toChars!2704 Int)) )
))
(declare-datatypes ((Rule!3336 0))(
  ( (Rule!3337 (regex!1768 Regex!3037) (tag!2030 String!12740) (isSeparator!1768 Bool) (transformation!1768 TokenValueInjection!3368)) )
))
(declare-datatypes ((Token!3202 0))(
  ( (Token!3203 (value!58341 TokenValue!1834) (rule!3191 Rule!3336) (size!8031 Int) (originalCharacters!2324 List!10415)) )
))
(declare-datatypes ((List!10416 0))(
  ( (Nil!10400) (Cons!10400 (h!15801 Token!3202) (t!101466 List!10416)) )
))
(declare-datatypes ((IArray!6269 0))(
  ( (IArray!6270 (innerList!3192 List!10416)) )
))
(declare-datatypes ((Conc!3132 0))(
  ( (Node!3132 (left!8883 Conc!3132) (right!9213 Conc!3132) (csize!6494 Int) (cheight!3343 Int)) (Leaf!5022 (xs!5825 IArray!6269) (csize!6495 Int)) (Empty!3132) )
))
(declare-datatypes ((List!10417 0))(
  ( (Nil!10401) (Cons!10401 (h!15802 Rule!3336) (t!101467 List!10417)) )
))
(declare-datatypes ((BalanceConc!6278 0))(
  ( (BalanceConc!6279 (c!184392 Conc!3132)) )
))
(declare-datatypes ((PrintableTokens!252 0))(
  ( (PrintableTokens!253 (rules!9055 List!10417) (tokens!1327 BalanceConc!6278)) )
))
(declare-datatypes ((tuple2!11662 0))(
  ( (tuple2!11663 (_1!6657 Int) (_2!6657 PrintableTokens!252)) )
))
(declare-datatypes ((List!10418 0))(
  ( (Nil!10402) (Cons!10402 (h!15803 tuple2!11662) (t!101468 List!10418)) )
))
(declare-datatypes ((IArray!6271 0))(
  ( (IArray!6272 (innerList!3193 List!10418)) )
))
(declare-datatypes ((Conc!3133 0))(
  ( (Node!3133 (left!8884 Conc!3133) (right!9214 Conc!3133) (csize!6496 Int) (cheight!3344 Int)) (Leaf!5023 (xs!5826 IArray!6271) (csize!6497 Int)) (Empty!3133) )
))
(declare-datatypes ((BalanceConc!6280 0))(
  ( (BalanceConc!6281 (c!184393 Conc!3133)) )
))
(declare-fun objs!8 () BalanceConc!6280)

(declare-fun lambda!40842 () Int)

(declare-fun forall!2291 (BalanceConc!6280 Int) Bool)

(assert (=> start!92958 (= res!483851 (forall!2291 objs!8 lambda!40842))))

(assert (=> start!92958 e!688498))

(declare-fun e!688497 () Bool)

(declare-fun inv!13306 (BalanceConc!6280) Bool)

(assert (=> start!92958 (and (inv!13306 objs!8) e!688497)))

(declare-fun b!1088342 () Bool)

(declare-fun lt!364167 () Int)

(assert (=> b!1088342 (= e!688498 (and (> lt!364167 1) (let ((bdg!39761 (ite (>= lt!364167 0) (div lt!364167 2) (- (div (- lt!364167) 2))))) (or (> 0 bdg!39761) (>= bdg!39761 lt!364167)))))))

(declare-fun size!8032 (BalanceConc!6280) Int)

(assert (=> b!1088342 (= lt!364167 (size!8032 objs!8))))

(declare-fun b!1088343 () Bool)

(declare-fun tp!326270 () Bool)

(declare-fun inv!13307 (Conc!3133) Bool)

(assert (=> b!1088343 (= e!688497 (and (inv!13307 (c!184393 objs!8)) tp!326270))))

(assert (= (and start!92958 res!483851) b!1088342))

(assert (= start!92958 b!1088343))

(declare-fun m!1238787 () Bool)

(assert (=> start!92958 m!1238787))

(declare-fun m!1238789 () Bool)

(assert (=> start!92958 m!1238789))

(declare-fun m!1238791 () Bool)

(assert (=> b!1088342 m!1238791))

(declare-fun m!1238793 () Bool)

(assert (=> b!1088343 m!1238793))

(check-sat (not start!92958) (not b!1088343) (not b!1088342))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252890 () Bool)

(assert start!252890)

(declare-fun b!2601229 () Bool)

(declare-fun b_free!72985 () Bool)

(declare-fun b_next!73689 () Bool)

(assert (=> b!2601229 (= b_free!72985 (not b_next!73689))))

(declare-fun tp!824093 () Bool)

(declare-fun b_and!190275 () Bool)

(assert (=> b!2601229 (= tp!824093 b_and!190275)))

(declare-fun b_free!72987 () Bool)

(declare-fun b_next!73691 () Bool)

(assert (=> b!2601229 (= b_free!72987 (not b_next!73691))))

(declare-fun tp!824092 () Bool)

(declare-fun b_and!190277 () Bool)

(assert (=> b!2601229 (= tp!824092 b_and!190277)))

(declare-fun b!2601234 () Bool)

(declare-fun b_free!72989 () Bool)

(declare-fun b_next!73693 () Bool)

(assert (=> b!2601234 (= b_free!72989 (not b_next!73693))))

(declare-fun tp!824089 () Bool)

(declare-fun b_and!190279 () Bool)

(assert (=> b!2601234 (= tp!824089 b_and!190279)))

(declare-fun b_free!72991 () Bool)

(declare-fun b_next!73695 () Bool)

(assert (=> b!2601234 (= b_free!72991 (not b_next!73695))))

(declare-fun tp!824090 () Bool)

(declare-fun b_and!190281 () Bool)

(assert (=> b!2601234 (= tp!824090 b_and!190281)))

(declare-fun b!2601220 () Bool)

(declare-fun res!1095846 () Bool)

(declare-fun e!1642022 () Bool)

(assert (=> b!2601220 (=> (not res!1095846) (not e!1642022))))

(declare-datatypes ((List!30122 0))(
  ( (Nil!30022) (Cons!30022 (h!35442 (_ BitVec 16)) (t!213173 List!30122)) )
))
(declare-datatypes ((C!15498 0))(
  ( (C!15499 (val!9683 Int)) )
))
(declare-datatypes ((Regex!7670 0))(
  ( (ElementMatch!7670 (c!418681 C!15498)) (Concat!12418 (regOne!15852 Regex!7670) (regTwo!15852 Regex!7670)) (EmptyExpr!7670) (Star!7670 (reg!7999 Regex!7670)) (EmptyLang!7670) (Union!7670 (regOne!15853 Regex!7670) (regTwo!15853 Regex!7670)) )
))
(declare-datatypes ((TokenValue!4748 0))(
  ( (FloatLiteralValue!9496 (text!33681 List!30122)) (TokenValueExt!4747 (__x!19329 Int)) (Broken!23740 (value!146571 List!30122)) (Object!4847) (End!4748) (Def!4748) (Underscore!4748) (Match!4748) (Else!4748) (Error!4748) (Case!4748) (If!4748) (Extends!4748) (Abstract!4748) (Class!4748) (Val!4748) (DelimiterValue!9496 (del!4808 List!30122)) (KeywordValue!4754 (value!146572 List!30122)) (CommentValue!9496 (value!146573 List!30122)) (WhitespaceValue!9496 (value!146574 List!30122)) (IndentationValue!4748 (value!146575 List!30122)) (String!33625) (Int32!4748) (Broken!23741 (value!146576 List!30122)) (Boolean!4749) (Unit!44035) (OperatorValue!4751 (op!4808 List!30122)) (IdentifierValue!9496 (value!146577 List!30122)) (IdentifierValue!9497 (value!146578 List!30122)) (WhitespaceValue!9497 (value!146579 List!30122)) (True!9496) (False!9496) (Broken!23742 (value!146580 List!30122)) (Broken!23743 (value!146581 List!30122)) (True!9497) (RightBrace!4748) (RightBracket!4748) (Colon!4748) (Null!4748) (Comma!4748) (LeftBracket!4748) (False!9497) (LeftBrace!4748) (ImaginaryLiteralValue!4748 (text!33682 List!30122)) (StringLiteralValue!14244 (value!146582 List!30122)) (EOFValue!4748 (value!146583 List!30122)) (IdentValue!4748 (value!146584 List!30122)) (DelimiterValue!9497 (value!146585 List!30122)) (DedentValue!4748 (value!146586 List!30122)) (NewLineValue!4748 (value!146587 List!30122)) (IntegerValue!14244 (value!146588 (_ BitVec 32)) (text!33683 List!30122)) (IntegerValue!14245 (value!146589 Int) (text!33684 List!30122)) (Times!4748) (Or!4748) (Equal!4748) (Minus!4748) (Broken!23744 (value!146590 List!30122)) (And!4748) (Div!4748) (LessEqual!4748) (Mod!4748) (Concat!12419) (Not!4748) (Plus!4748) (SpaceValue!4748 (value!146591 List!30122)) (IntegerValue!14246 (value!146592 Int) (text!33685 List!30122)) (StringLiteralValue!14245 (text!33686 List!30122)) (FloatLiteralValue!9497 (text!33687 List!30122)) (BytesLiteralValue!4748 (value!146593 List!30122)) (CommentValue!9497 (value!146594 List!30122)) (StringLiteralValue!14246 (value!146595 List!30122)) (ErrorTokenValue!4748 (msg!4809 List!30122)) )
))
(declare-datatypes ((List!30123 0))(
  ( (Nil!30023) (Cons!30023 (h!35443 C!15498) (t!213174 List!30123)) )
))
(declare-datatypes ((IArray!18593 0))(
  ( (IArray!18594 (innerList!9354 List!30123)) )
))
(declare-datatypes ((Conc!9294 0))(
  ( (Node!9294 (left!23089 Conc!9294) (right!23419 Conc!9294) (csize!18818 Int) (cheight!9505 Int)) (Leaf!14298 (xs!12278 IArray!18593) (csize!18819 Int)) (Empty!9294) )
))
(declare-datatypes ((BalanceConc!18202 0))(
  ( (BalanceConc!18203 (c!418682 Conc!9294)) )
))
(declare-datatypes ((TokenValueInjection!8936 0))(
  ( (TokenValueInjection!8937 (toValue!6420 Int) (toChars!6279 Int)) )
))
(declare-datatypes ((String!33626 0))(
  ( (String!33627 (value!146596 String)) )
))
(declare-datatypes ((Rule!8852 0))(
  ( (Rule!8853 (regex!4526 Regex!7670) (tag!5016 String!33626) (isSeparator!4526 Bool) (transformation!4526 TokenValueInjection!8936)) )
))
(declare-datatypes ((List!30124 0))(
  ( (Nil!30024) (Cons!30024 (h!35444 Rule!8852) (t!213175 List!30124)) )
))
(declare-fun rules!1726 () List!30124)

(declare-fun isEmpty!17169 (List!30124) Bool)

(assert (=> b!2601220 (= res!1095846 (not (isEmpty!17169 rules!1726)))))

(declare-fun b!2601222 () Bool)

(declare-fun e!1642024 () Bool)

(declare-fun e!1642029 () Bool)

(declare-fun tp!824085 () Bool)

(assert (=> b!2601222 (= e!1642024 (and e!1642029 tp!824085))))

(declare-fun b!2601223 () Bool)

(declare-fun e!1642025 () Bool)

(declare-datatypes ((Token!8522 0))(
  ( (Token!8523 (value!146597 TokenValue!4748) (rule!6896 Rule!8852) (size!23251 Int) (originalCharacters!5292 List!30123)) )
))
(declare-datatypes ((List!30125 0))(
  ( (Nil!30025) (Cons!30025 (h!35445 Token!8522) (t!213176 List!30125)) )
))
(declare-datatypes ((IArray!18595 0))(
  ( (IArray!18596 (innerList!9355 List!30125)) )
))
(declare-datatypes ((Conc!9295 0))(
  ( (Node!9295 (left!23090 Conc!9295) (right!23420 Conc!9295) (csize!18820 Int) (cheight!9506 Int)) (Leaf!14299 (xs!12279 IArray!18595) (csize!18821 Int)) (Empty!9295) )
))
(declare-datatypes ((BalanceConc!18204 0))(
  ( (BalanceConc!18205 (c!418683 Conc!9295)) )
))
(declare-fun v!6381 () BalanceConc!18204)

(declare-fun tp!824091 () Bool)

(declare-fun inv!40584 (Conc!9295) Bool)

(assert (=> b!2601223 (= e!1642025 (and (inv!40584 (c!418683 v!6381)) tp!824091))))

(declare-fun b!2601224 () Bool)

(declare-fun lt!915380 () List!30125)

(declare-fun lambda!97347 () Int)

(declare-fun forall!6193 (List!30125 Int) Bool)

(assert (=> b!2601224 (= e!1642022 (not (forall!6193 lt!915380 lambda!97347)))))

(declare-fun lt!915381 () List!30125)

(declare-fun from!862 () Int)

(declare-fun dropList!829 (BalanceConc!18204 Int) List!30125)

(assert (=> b!2601224 (= lt!915381 (dropList!829 v!6381 from!862))))

(declare-fun list!11260 (BalanceConc!18204) List!30125)

(assert (=> b!2601224 (= lt!915380 (list!11260 v!6381))))

(declare-fun b!2601225 () Bool)

(declare-fun res!1095849 () Bool)

(assert (=> b!2601225 (=> (not res!1095849) (not e!1642022))))

(declare-fun size!23252 (BalanceConc!18204) Int)

(assert (=> b!2601225 (= res!1095849 (<= from!862 (size!23252 v!6381)))))

(declare-fun b!2601226 () Bool)

(declare-fun res!1095847 () Bool)

(assert (=> b!2601226 (=> (not res!1095847) (not e!1642022))))

(declare-datatypes ((LexerInterface!4123 0))(
  ( (LexerInterfaceExt!4120 (__x!19330 Int)) (Lexer!4121) )
))
(declare-fun thiss!14197 () LexerInterface!4123)

(declare-fun rulesInvariant!3623 (LexerInterface!4123 List!30124) Bool)

(assert (=> b!2601226 (= res!1095847 (rulesInvariant!3623 thiss!14197 rules!1726))))

(declare-fun b!2601227 () Bool)

(declare-fun res!1095844 () Bool)

(assert (=> b!2601227 (=> (not res!1095844) (not e!1642022))))

(declare-fun rulesProduceEachTokenIndividually!943 (LexerInterface!4123 List!30124 BalanceConc!18204) Bool)

(assert (=> b!2601227 (= res!1095844 (rulesProduceEachTokenIndividually!943 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2601228 () Bool)

(declare-fun res!1095842 () Bool)

(assert (=> b!2601228 (=> (not res!1095842) (not e!1642022))))

(declare-fun separatorToken!156 () Token!8522)

(assert (=> b!2601228 (= res!1095842 (isSeparator!4526 (rule!6896 separatorToken!156)))))

(declare-fun e!1642026 () Bool)

(assert (=> b!2601229 (= e!1642026 (and tp!824093 tp!824092))))

(declare-fun b!2601230 () Bool)

(declare-fun res!1095843 () Bool)

(assert (=> b!2601230 (=> (not res!1095843) (not e!1642022))))

(declare-fun forall!6194 (BalanceConc!18204 Int) Bool)

(assert (=> b!2601230 (= res!1095843 (forall!6194 v!6381 lambda!97347))))

(declare-fun b!2601231 () Bool)

(declare-fun res!1095845 () Bool)

(assert (=> b!2601231 (=> (not res!1095845) (not e!1642022))))

(declare-fun sepAndNonSepRulesDisjointChars!1099 (List!30124 List!30124) Bool)

(assert (=> b!2601231 (= res!1095845 (sepAndNonSepRulesDisjointChars!1099 rules!1726 rules!1726))))

(declare-fun b!2601232 () Bool)

(declare-fun e!1642032 () Bool)

(declare-fun e!1642023 () Bool)

(declare-fun tp!824087 () Bool)

(declare-fun inv!40581 (String!33626) Bool)

(declare-fun inv!40585 (TokenValueInjection!8936) Bool)

(assert (=> b!2601232 (= e!1642032 (and tp!824087 (inv!40581 (tag!5016 (rule!6896 separatorToken!156))) (inv!40585 (transformation!4526 (rule!6896 separatorToken!156))) e!1642023))))

(declare-fun e!1642028 () Bool)

(declare-fun b!2601233 () Bool)

(declare-fun tp!824086 () Bool)

(declare-fun inv!21 (TokenValue!4748) Bool)

(assert (=> b!2601233 (= e!1642028 (and (inv!21 (value!146597 separatorToken!156)) e!1642032 tp!824086))))

(declare-fun res!1095850 () Bool)

(assert (=> start!252890 (=> (not res!1095850) (not e!1642022))))

(assert (=> start!252890 (= res!1095850 (and (is-Lexer!4121 thiss!14197) (>= from!862 0)))))

(assert (=> start!252890 e!1642022))

(assert (=> start!252890 true))

(assert (=> start!252890 e!1642024))

(declare-fun inv!40586 (Token!8522) Bool)

(assert (=> start!252890 (and (inv!40586 separatorToken!156) e!1642028)))

(declare-fun inv!40587 (BalanceConc!18204) Bool)

(assert (=> start!252890 (and (inv!40587 v!6381) e!1642025)))

(declare-fun tp!824088 () Bool)

(declare-fun b!2601221 () Bool)

(assert (=> b!2601221 (= e!1642029 (and tp!824088 (inv!40581 (tag!5016 (h!35444 rules!1726))) (inv!40585 (transformation!4526 (h!35444 rules!1726))) e!1642026))))

(assert (=> b!2601234 (= e!1642023 (and tp!824089 tp!824090))))

(declare-fun b!2601235 () Bool)

(declare-fun res!1095848 () Bool)

(assert (=> b!2601235 (=> (not res!1095848) (not e!1642022))))

(declare-fun rulesProduceIndividualToken!1835 (LexerInterface!4123 List!30124 Token!8522) Bool)

(assert (=> b!2601235 (= res!1095848 (rulesProduceIndividualToken!1835 thiss!14197 rules!1726 separatorToken!156))))

(assert (= (and start!252890 res!1095850) b!2601225))

(assert (= (and b!2601225 res!1095849) b!2601220))

(assert (= (and b!2601220 res!1095846) b!2601226))

(assert (= (and b!2601226 res!1095847) b!2601227))

(assert (= (and b!2601227 res!1095844) b!2601235))

(assert (= (and b!2601235 res!1095848) b!2601228))

(assert (= (and b!2601228 res!1095842) b!2601230))

(assert (= (and b!2601230 res!1095843) b!2601231))

(assert (= (and b!2601231 res!1095845) b!2601224))

(assert (= b!2601221 b!2601229))

(assert (= b!2601222 b!2601221))

(assert (= (and start!252890 (is-Cons!30024 rules!1726)) b!2601222))

(assert (= b!2601232 b!2601234))

(assert (= b!2601233 b!2601232))

(assert (= start!252890 b!2601233))

(assert (= start!252890 b!2601223))

(declare-fun m!2936321 () Bool)

(assert (=> b!2601231 m!2936321))

(declare-fun m!2936323 () Bool)

(assert (=> b!2601235 m!2936323))

(declare-fun m!2936325 () Bool)

(assert (=> b!2601225 m!2936325))

(declare-fun m!2936327 () Bool)

(assert (=> b!2601232 m!2936327))

(declare-fun m!2936329 () Bool)

(assert (=> b!2601232 m!2936329))

(declare-fun m!2936331 () Bool)

(assert (=> b!2601221 m!2936331))

(declare-fun m!2936333 () Bool)

(assert (=> b!2601221 m!2936333))

(declare-fun m!2936335 () Bool)

(assert (=> b!2601230 m!2936335))

(declare-fun m!2936337 () Bool)

(assert (=> b!2601223 m!2936337))

(declare-fun m!2936339 () Bool)

(assert (=> b!2601227 m!2936339))

(declare-fun m!2936341 () Bool)

(assert (=> b!2601220 m!2936341))

(declare-fun m!2936343 () Bool)

(assert (=> start!252890 m!2936343))

(declare-fun m!2936345 () Bool)

(assert (=> start!252890 m!2936345))

(declare-fun m!2936347 () Bool)

(assert (=> b!2601233 m!2936347))

(declare-fun m!2936349 () Bool)

(assert (=> b!2601226 m!2936349))

(declare-fun m!2936351 () Bool)

(assert (=> b!2601224 m!2936351))

(declare-fun m!2936353 () Bool)

(assert (=> b!2601224 m!2936353))

(declare-fun m!2936355 () Bool)

(assert (=> b!2601224 m!2936355))

(push 1)

(assert (not b_next!73695))

(assert (not b_next!73693))

(assert (not b!2601221))

(assert (not b!2601220))

(assert (not b!2601227))

(assert (not b!2601225))

(assert b_and!190281)

(assert (not b!2601232))

(assert b_and!190277)

(assert (not b!2601226))

(assert (not b!2601233))

(assert (not b_next!73691))

(assert (not b!2601231))

(assert (not b!2601224))

(assert (not b!2601223))

(assert (not b!2601230))

(assert (not b!2601222))

(assert b_and!190275)

(assert (not b_next!73689))

(assert b_and!190279)

(assert (not b!2601235))

(assert (not start!252890))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!73695))

(assert (not b_next!73693))

(assert b_and!190281)

(assert b_and!190277)

(assert b_and!190279)

(assert (not b_next!73691))

(assert b_and!190275)

(assert (not b_next!73689))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!736966 () Bool)

(declare-fun res!1095884 () Bool)

(declare-fun e!1642070 () Bool)

(assert (=> d!736966 (=> res!1095884 e!1642070)))

(assert (=> d!736966 (= res!1095884 (is-Nil!30025 lt!915380))))

(assert (=> d!736966 (= (forall!6193 lt!915380 lambda!97347) e!1642070)))

(declare-fun b!2601288 () Bool)

(declare-fun e!1642071 () Bool)

(assert (=> b!2601288 (= e!1642070 e!1642071)))

(declare-fun res!1095885 () Bool)

(assert (=> b!2601288 (=> (not res!1095885) (not e!1642071))))

(declare-fun dynLambda!12695 (Int Token!8522) Bool)

(assert (=> b!2601288 (= res!1095885 (dynLambda!12695 lambda!97347 (h!35445 lt!915380)))))

(declare-fun b!2601289 () Bool)

(assert (=> b!2601289 (= e!1642071 (forall!6193 (t!213176 lt!915380) lambda!97347))))

(assert (= (and d!736966 (not res!1095884)) b!2601288))

(assert (= (and b!2601288 res!1095885) b!2601289))

(declare-fun b_lambda!77931 () Bool)

(assert (=> (not b_lambda!77931) (not b!2601288)))

(declare-fun m!2936393 () Bool)

(assert (=> b!2601288 m!2936393))

(declare-fun m!2936395 () Bool)

(assert (=> b!2601289 m!2936395))

(assert (=> b!2601224 d!736966))

(declare-fun d!736968 () Bool)

(declare-fun drop!1529 (List!30125 Int) List!30125)

(declare-fun list!11262 (Conc!9295) List!30125)

(assert (=> d!736968 (= (dropList!829 v!6381 from!862) (drop!1529 (list!11262 (c!418683 v!6381)) from!862))))

(declare-fun bs!473231 () Bool)

(assert (= bs!473231 d!736968))

(declare-fun m!2936397 () Bool)

(assert (=> bs!473231 m!2936397))

(assert (=> bs!473231 m!2936397))

(declare-fun m!2936399 () Bool)

(assert (=> bs!473231 m!2936399))

(assert (=> b!2601224 d!736968))

(declare-fun d!736970 () Bool)

(assert (=> d!736970 (= (list!11260 v!6381) (list!11262 (c!418683 v!6381)))))

(declare-fun bs!473232 () Bool)

(assert (= bs!473232 d!736970))

(assert (=> bs!473232 m!2936397))

(assert (=> b!2601224 d!736970))

(declare-fun d!736972 () Bool)

(declare-fun lt!915392 () Bool)

(declare-fun e!1642083 () Bool)

(assert (=> d!736972 (= lt!915392 e!1642083)))

(declare-fun res!1095900 () Bool)

(assert (=> d!736972 (=> (not res!1095900) (not e!1642083))))

(declare-datatypes ((tuple2!29728 0))(
  ( (tuple2!29729 (_1!17406 BalanceConc!18204) (_2!17406 BalanceConc!18202)) )
))
(declare-fun lex!1868 (LexerInterface!4123 List!30124 BalanceConc!18202) tuple2!29728)

(declare-fun print!1590 (LexerInterface!4123 BalanceConc!18204) BalanceConc!18202)

(declare-fun singletonSeq!2007 (Token!8522) BalanceConc!18204)

(assert (=> d!736972 (= res!1095900 (= (list!11260 (_1!17406 (lex!1868 thiss!14197 rules!1726 (print!1590 thiss!14197 (singletonSeq!2007 separatorToken!156))))) (list!11260 (singletonSeq!2007 separatorToken!156))))))

(declare-fun e!1642082 () Bool)

(assert (=> d!736972 (= lt!915392 e!1642082)))

(declare-fun res!1095901 () Bool)

(assert (=> d!736972 (=> (not res!1095901) (not e!1642082))))

(declare-fun lt!915393 () tuple2!29728)

(assert (=> d!736972 (= res!1095901 (= (size!23252 (_1!17406 lt!915393)) 1))))

(assert (=> d!736972 (= lt!915393 (lex!1868 thiss!14197 rules!1726 (print!1590 thiss!14197 (singletonSeq!2007 separatorToken!156))))))

(assert (=> d!736972 (not (isEmpty!17169 rules!1726))))

(assert (=> d!736972 (= (rulesProduceIndividualToken!1835 thiss!14197 rules!1726 separatorToken!156) lt!915392)))

(declare-fun b!2601305 () Bool)

(declare-fun res!1095899 () Bool)

(assert (=> b!2601305 (=> (not res!1095899) (not e!1642082))))

(declare-fun apply!7029 (BalanceConc!18204 Int) Token!8522)

(assert (=> b!2601305 (= res!1095899 (= (apply!7029 (_1!17406 lt!915393) 0) separatorToken!156))))

(declare-fun b!2601306 () Bool)

(declare-fun isEmpty!17171 (BalanceConc!18202) Bool)

(assert (=> b!2601306 (= e!1642082 (isEmpty!17171 (_2!17406 lt!915393)))))

(declare-fun b!2601307 () Bool)

(assert (=> b!2601307 (= e!1642083 (isEmpty!17171 (_2!17406 (lex!1868 thiss!14197 rules!1726 (print!1590 thiss!14197 (singletonSeq!2007 separatorToken!156))))))))

(assert (= (and d!736972 res!1095901) b!2601305))

(assert (= (and b!2601305 res!1095899) b!2601306))

(assert (= (and d!736972 res!1095900) b!2601307))

(declare-fun m!2936405 () Bool)

(assert (=> d!736972 m!2936405))

(declare-fun m!2936407 () Bool)

(assert (=> d!736972 m!2936407))

(assert (=> d!736972 m!2936405))

(assert (=> d!736972 m!2936405))

(declare-fun m!2936409 () Bool)

(assert (=> d!736972 m!2936409))

(declare-fun m!2936411 () Bool)

(assert (=> d!736972 m!2936411))

(assert (=> d!736972 m!2936341))

(declare-fun m!2936413 () Bool)

(assert (=> d!736972 m!2936413))

(assert (=> d!736972 m!2936407))

(declare-fun m!2936415 () Bool)

(assert (=> d!736972 m!2936415))

(declare-fun m!2936417 () Bool)

(assert (=> b!2601305 m!2936417))

(declare-fun m!2936419 () Bool)

(assert (=> b!2601306 m!2936419))

(assert (=> b!2601307 m!2936405))

(assert (=> b!2601307 m!2936405))

(assert (=> b!2601307 m!2936407))

(assert (=> b!2601307 m!2936407))

(assert (=> b!2601307 m!2936415))

(declare-fun m!2936421 () Bool)

(assert (=> b!2601307 m!2936421))

(assert (=> b!2601235 d!736972))

(declare-fun d!736978 () Bool)

(declare-fun lt!915396 () Int)

(declare-fun size!23255 (List!30125) Int)

(assert (=> d!736978 (= lt!915396 (size!23255 (list!11260 v!6381)))))

(declare-fun size!23256 (Conc!9295) Int)

(assert (=> d!736978 (= lt!915396 (size!23256 (c!418683 v!6381)))))

(assert (=> d!736978 (= (size!23252 v!6381) lt!915396)))

(declare-fun bs!473233 () Bool)

(assert (= bs!473233 d!736978))

(assert (=> bs!473233 m!2936355))

(assert (=> bs!473233 m!2936355))

(declare-fun m!2936423 () Bool)

(assert (=> bs!473233 m!2936423))

(declare-fun m!2936425 () Bool)

(assert (=> bs!473233 m!2936425))

(assert (=> b!2601225 d!736978))

(declare-fun d!736980 () Bool)

(declare-fun res!1095904 () Bool)

(declare-fun e!1642086 () Bool)

(assert (=> d!736980 (=> (not res!1095904) (not e!1642086))))

(declare-fun rulesValid!1696 (LexerInterface!4123 List!30124) Bool)

(assert (=> d!736980 (= res!1095904 (rulesValid!1696 thiss!14197 rules!1726))))

(assert (=> d!736980 (= (rulesInvariant!3623 thiss!14197 rules!1726) e!1642086)))

(declare-fun b!2601310 () Bool)

(declare-datatypes ((List!30130 0))(
  ( (Nil!30030) (Cons!30030 (h!35450 String!33626) (t!213198 List!30130)) )
))
(declare-fun noDuplicateTag!1692 (LexerInterface!4123 List!30124 List!30130) Bool)

(assert (=> b!2601310 (= e!1642086 (noDuplicateTag!1692 thiss!14197 rules!1726 Nil!30030))))

(assert (= (and d!736980 res!1095904) b!2601310))

(declare-fun m!2936427 () Bool)

(assert (=> d!736980 m!2936427))

(declare-fun m!2936429 () Bool)

(assert (=> b!2601310 m!2936429))

(assert (=> b!2601226 d!736980))

(declare-fun d!736982 () Bool)

(assert (=> d!736982 (= (inv!40581 (tag!5016 (h!35444 rules!1726))) (= (mod (str.len (value!146596 (tag!5016 (h!35444 rules!1726)))) 2) 0))))

(assert (=> b!2601221 d!736982))

(declare-fun d!736984 () Bool)

(declare-fun res!1095907 () Bool)

(declare-fun e!1642089 () Bool)

(assert (=> d!736984 (=> (not res!1095907) (not e!1642089))))

(declare-fun semiInverseModEq!1891 (Int Int) Bool)

(assert (=> d!736984 (= res!1095907 (semiInverseModEq!1891 (toChars!6279 (transformation!4526 (h!35444 rules!1726))) (toValue!6420 (transformation!4526 (h!35444 rules!1726)))))))

(assert (=> d!736984 (= (inv!40585 (transformation!4526 (h!35444 rules!1726))) e!1642089)))

(declare-fun b!2601313 () Bool)

(declare-fun equivClasses!1792 (Int Int) Bool)

(assert (=> b!2601313 (= e!1642089 (equivClasses!1792 (toChars!6279 (transformation!4526 (h!35444 rules!1726))) (toValue!6420 (transformation!4526 (h!35444 rules!1726)))))))

(assert (= (and d!736984 res!1095907) b!2601313))

(declare-fun m!2936431 () Bool)

(assert (=> d!736984 m!2936431))

(declare-fun m!2936433 () Bool)

(assert (=> b!2601313 m!2936433))

(assert (=> b!2601221 d!736984))

(declare-fun d!736986 () Bool)

(assert (=> d!736986 (= (inv!40581 (tag!5016 (rule!6896 separatorToken!156))) (= (mod (str.len (value!146596 (tag!5016 (rule!6896 separatorToken!156)))) 2) 0))))

(assert (=> b!2601232 d!736986))

(declare-fun d!736988 () Bool)

(declare-fun res!1095908 () Bool)

(declare-fun e!1642090 () Bool)

(assert (=> d!736988 (=> (not res!1095908) (not e!1642090))))

(assert (=> d!736988 (= res!1095908 (semiInverseModEq!1891 (toChars!6279 (transformation!4526 (rule!6896 separatorToken!156))) (toValue!6420 (transformation!4526 (rule!6896 separatorToken!156)))))))

(assert (=> d!736988 (= (inv!40585 (transformation!4526 (rule!6896 separatorToken!156))) e!1642090)))

(declare-fun b!2601314 () Bool)

(assert (=> b!2601314 (= e!1642090 (equivClasses!1792 (toChars!6279 (transformation!4526 (rule!6896 separatorToken!156))) (toValue!6420 (transformation!4526 (rule!6896 separatorToken!156)))))))

(assert (= (and d!736988 res!1095908) b!2601314))

(declare-fun m!2936435 () Bool)

(assert (=> d!736988 m!2936435))

(declare-fun m!2936437 () Bool)

(assert (=> b!2601314 m!2936437))

(assert (=> b!2601232 d!736988))

(declare-fun b!2601325 () Bool)

(declare-fun res!1095911 () Bool)

(declare-fun e!1642099 () Bool)

(assert (=> b!2601325 (=> res!1095911 e!1642099)))

(assert (=> b!2601325 (= res!1095911 (not (is-IntegerValue!14246 (value!146597 separatorToken!156))))))

(declare-fun e!1642098 () Bool)

(assert (=> b!2601325 (= e!1642098 e!1642099)))

(declare-fun b!2601326 () Bool)

(declare-fun e!1642097 () Bool)

(assert (=> b!2601326 (= e!1642097 e!1642098)))

(declare-fun c!418694 () Bool)

(assert (=> b!2601326 (= c!418694 (is-IntegerValue!14245 (value!146597 separatorToken!156)))))

(declare-fun b!2601327 () Bool)

(declare-fun inv!15 (TokenValue!4748) Bool)

(assert (=> b!2601327 (= e!1642099 (inv!15 (value!146597 separatorToken!156)))))

(declare-fun d!736990 () Bool)

(declare-fun c!418695 () Bool)

(assert (=> d!736990 (= c!418695 (is-IntegerValue!14244 (value!146597 separatorToken!156)))))

(assert (=> d!736990 (= (inv!21 (value!146597 separatorToken!156)) e!1642097)))

(declare-fun b!2601328 () Bool)

(declare-fun inv!17 (TokenValue!4748) Bool)

(assert (=> b!2601328 (= e!1642098 (inv!17 (value!146597 separatorToken!156)))))

(declare-fun b!2601329 () Bool)

(declare-fun inv!16 (TokenValue!4748) Bool)

(assert (=> b!2601329 (= e!1642097 (inv!16 (value!146597 separatorToken!156)))))

(assert (= (and d!736990 c!418695) b!2601329))

(assert (= (and d!736990 (not c!418695)) b!2601326))

(assert (= (and b!2601326 c!418694) b!2601328))

(assert (= (and b!2601326 (not c!418694)) b!2601325))

(assert (= (and b!2601325 (not res!1095911)) b!2601327))

(declare-fun m!2936439 () Bool)

(assert (=> b!2601327 m!2936439))

(declare-fun m!2936441 () Bool)

(assert (=> b!2601328 m!2936441))

(declare-fun m!2936443 () Bool)

(assert (=> b!2601329 m!2936443))

(assert (=> b!2601233 d!736990))

(declare-fun d!736992 () Bool)

(declare-fun c!418698 () Bool)

(assert (=> d!736992 (= c!418698 (is-Node!9295 (c!418683 v!6381)))))

(declare-fun e!1642104 () Bool)

(assert (=> d!736992 (= (inv!40584 (c!418683 v!6381)) e!1642104)))

(declare-fun b!2601336 () Bool)

(declare-fun inv!40592 (Conc!9295) Bool)

(assert (=> b!2601336 (= e!1642104 (inv!40592 (c!418683 v!6381)))))

(declare-fun b!2601337 () Bool)

(declare-fun e!1642105 () Bool)

(assert (=> b!2601337 (= e!1642104 e!1642105)))

(declare-fun res!1095914 () Bool)

(assert (=> b!2601337 (= res!1095914 (not (is-Leaf!14299 (c!418683 v!6381))))))

(assert (=> b!2601337 (=> res!1095914 e!1642105)))

(declare-fun b!2601338 () Bool)

(declare-fun inv!40593 (Conc!9295) Bool)

(assert (=> b!2601338 (= e!1642105 (inv!40593 (c!418683 v!6381)))))

(assert (= (and d!736992 c!418698) b!2601336))

(assert (= (and d!736992 (not c!418698)) b!2601337))

(assert (= (and b!2601337 (not res!1095914)) b!2601338))

(declare-fun m!2936445 () Bool)

(assert (=> b!2601336 m!2936445))

(declare-fun m!2936447 () Bool)

(assert (=> b!2601338 m!2936447))

(assert (=> b!2601223 d!736992))

(declare-fun d!736994 () Bool)

(declare-fun lt!915399 () Bool)

(assert (=> d!736994 (= lt!915399 (forall!6193 (list!11260 v!6381) lambda!97347))))

(declare-fun forall!6197 (Conc!9295 Int) Bool)

(assert (=> d!736994 (= lt!915399 (forall!6197 (c!418683 v!6381) lambda!97347))))

(assert (=> d!736994 (= (forall!6194 v!6381 lambda!97347) lt!915399)))

(declare-fun bs!473234 () Bool)

(assert (= bs!473234 d!736994))

(assert (=> bs!473234 m!2936355))

(assert (=> bs!473234 m!2936355))

(declare-fun m!2936449 () Bool)

(assert (=> bs!473234 m!2936449))

(declare-fun m!2936451 () Bool)

(assert (=> bs!473234 m!2936451))

(assert (=> b!2601230 d!736994))

(declare-fun d!736996 () Bool)

(assert (=> d!736996 (= (isEmpty!17169 rules!1726) (is-Nil!30024 rules!1726))))

(assert (=> b!2601220 d!736996))

(declare-fun d!736998 () Bool)

(declare-fun res!1095919 () Bool)

(declare-fun e!1642110 () Bool)

(assert (=> d!736998 (=> res!1095919 e!1642110)))

(assert (=> d!736998 (= res!1095919 (not (is-Cons!30024 rules!1726)))))

(assert (=> d!736998 (= (sepAndNonSepRulesDisjointChars!1099 rules!1726 rules!1726) e!1642110)))

(declare-fun b!2601343 () Bool)

(declare-fun e!1642111 () Bool)

(assert (=> b!2601343 (= e!1642110 e!1642111)))

(declare-fun res!1095920 () Bool)

(assert (=> b!2601343 (=> (not res!1095920) (not e!1642111))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!498 (Rule!8852 List!30124) Bool)

(assert (=> b!2601343 (= res!1095920 (ruleDisjointCharsFromAllFromOtherType!498 (h!35444 rules!1726) rules!1726))))

(declare-fun b!2601344 () Bool)

(assert (=> b!2601344 (= e!1642111 (sepAndNonSepRulesDisjointChars!1099 rules!1726 (t!213175 rules!1726)))))

(assert (= (and d!736998 (not res!1095919)) b!2601343))

(assert (= (and b!2601343 res!1095920) b!2601344))

(declare-fun m!2936453 () Bool)

(assert (=> b!2601343 m!2936453))

(declare-fun m!2936455 () Bool)

(assert (=> b!2601344 m!2936455))

(assert (=> b!2601231 d!736998))

(declare-fun d!737000 () Bool)

(declare-fun res!1095925 () Bool)

(declare-fun e!1642114 () Bool)

(assert (=> d!737000 (=> (not res!1095925) (not e!1642114))))

(declare-fun isEmpty!17172 (List!30123) Bool)

(assert (=> d!737000 (= res!1095925 (not (isEmpty!17172 (originalCharacters!5292 separatorToken!156))))))

(assert (=> d!737000 (= (inv!40586 separatorToken!156) e!1642114)))

(declare-fun b!2601349 () Bool)

(declare-fun res!1095926 () Bool)

(assert (=> b!2601349 (=> (not res!1095926) (not e!1642114))))

(declare-fun list!11263 (BalanceConc!18202) List!30123)

(declare-fun dynLambda!12696 (Int TokenValue!4748) BalanceConc!18202)

(assert (=> b!2601349 (= res!1095926 (= (originalCharacters!5292 separatorToken!156) (list!11263 (dynLambda!12696 (toChars!6279 (transformation!4526 (rule!6896 separatorToken!156))) (value!146597 separatorToken!156)))))))

(declare-fun b!2601350 () Bool)

(declare-fun size!23257 (List!30123) Int)

(assert (=> b!2601350 (= e!1642114 (= (size!23251 separatorToken!156) (size!23257 (originalCharacters!5292 separatorToken!156))))))

(assert (= (and d!737000 res!1095925) b!2601349))

(assert (= (and b!2601349 res!1095926) b!2601350))

(declare-fun b_lambda!77933 () Bool)

(assert (=> (not b_lambda!77933) (not b!2601349)))

(declare-fun tb!141517 () Bool)

(declare-fun t!213185 () Bool)

(assert (=> (and b!2601229 (= (toChars!6279 (transformation!4526 (h!35444 rules!1726))) (toChars!6279 (transformation!4526 (rule!6896 separatorToken!156)))) t!213185) tb!141517))

(declare-fun b!2601355 () Bool)

(declare-fun e!1642117 () Bool)

(declare-fun tp!824123 () Bool)

(declare-fun inv!40594 (Conc!9294) Bool)

(assert (=> b!2601355 (= e!1642117 (and (inv!40594 (c!418682 (dynLambda!12696 (toChars!6279 (transformation!4526 (rule!6896 separatorToken!156))) (value!146597 separatorToken!156)))) tp!824123))))

(declare-fun result!176084 () Bool)

(declare-fun inv!40595 (BalanceConc!18202) Bool)

(assert (=> tb!141517 (= result!176084 (and (inv!40595 (dynLambda!12696 (toChars!6279 (transformation!4526 (rule!6896 separatorToken!156))) (value!146597 separatorToken!156))) e!1642117))))

(assert (= tb!141517 b!2601355))

(declare-fun m!2936457 () Bool)

(assert (=> b!2601355 m!2936457))

(declare-fun m!2936459 () Bool)

(assert (=> tb!141517 m!2936459))

(assert (=> b!2601349 t!213185))

(declare-fun b_and!190291 () Bool)

(assert (= b_and!190277 (and (=> t!213185 result!176084) b_and!190291)))

(declare-fun t!213187 () Bool)

(declare-fun tb!141519 () Bool)

(assert (=> (and b!2601234 (= (toChars!6279 (transformation!4526 (rule!6896 separatorToken!156))) (toChars!6279 (transformation!4526 (rule!6896 separatorToken!156)))) t!213187) tb!141519))

(declare-fun result!176088 () Bool)

(assert (= result!176088 result!176084))

(assert (=> b!2601349 t!213187))

(declare-fun b_and!190293 () Bool)

(assert (= b_and!190281 (and (=> t!213187 result!176088) b_and!190293)))

(declare-fun m!2936461 () Bool)

(assert (=> d!737000 m!2936461))

(declare-fun m!2936463 () Bool)

(assert (=> b!2601349 m!2936463))

(assert (=> b!2601349 m!2936463))

(declare-fun m!2936465 () Bool)

(assert (=> b!2601349 m!2936465))

(declare-fun m!2936467 () Bool)

(assert (=> b!2601350 m!2936467))

(assert (=> start!252890 d!737000))

(declare-fun d!737002 () Bool)

(declare-fun isBalanced!2835 (Conc!9295) Bool)

(assert (=> d!737002 (= (inv!40587 v!6381) (isBalanced!2835 (c!418683 v!6381)))))

(declare-fun bs!473235 () Bool)

(assert (= bs!473235 d!737002))

(declare-fun m!2936469 () Bool)

(assert (=> bs!473235 m!2936469))

(assert (=> start!252890 d!737002))

(declare-fun bs!473236 () Bool)

(declare-fun d!737004 () Bool)

(assert (= bs!473236 (and d!737004 b!2601230)))

(declare-fun lambda!97357 () Int)

(assert (=> bs!473236 (not (= lambda!97357 lambda!97347))))

(declare-fun b!2601369 () Bool)

(declare-fun e!1642129 () Bool)

(assert (=> b!2601369 (= e!1642129 true)))

(declare-fun b!2601368 () Bool)

(declare-fun e!1642128 () Bool)

(assert (=> b!2601368 (= e!1642128 e!1642129)))

(declare-fun b!2601367 () Bool)

(declare-fun e!1642127 () Bool)

(assert (=> b!2601367 (= e!1642127 e!1642128)))

(assert (=> d!737004 e!1642127))

(assert (= b!2601368 b!2601369))

(assert (= b!2601367 b!2601368))

(assert (= (and d!737004 (is-Cons!30024 rules!1726)) b!2601367))

(declare-fun order!15913 () Int)

(declare-fun order!15915 () Int)

(declare-fun dynLambda!12697 (Int Int) Int)

(declare-fun dynLambda!12698 (Int Int) Int)

(assert (=> b!2601369 (< (dynLambda!12697 order!15913 (toValue!6420 (transformation!4526 (h!35444 rules!1726)))) (dynLambda!12698 order!15915 lambda!97357))))

(declare-fun order!15917 () Int)

(declare-fun dynLambda!12699 (Int Int) Int)

(assert (=> b!2601369 (< (dynLambda!12699 order!15917 (toChars!6279 (transformation!4526 (h!35444 rules!1726)))) (dynLambda!12698 order!15915 lambda!97357))))

(assert (=> d!737004 true))

(declare-fun e!1642120 () Bool)

(assert (=> d!737004 e!1642120))

(declare-fun res!1095929 () Bool)

(assert (=> d!737004 (=> (not res!1095929) (not e!1642120))))

(declare-fun lt!915404 () Bool)

(assert (=> d!737004 (= res!1095929 (= lt!915404 (forall!6193 (list!11260 v!6381) lambda!97357)))))

(assert (=> d!737004 (= lt!915404 (forall!6194 v!6381 lambda!97357))))

(assert (=> d!737004 (not (isEmpty!17169 rules!1726))))

(assert (=> d!737004 (= (rulesProduceEachTokenIndividually!943 thiss!14197 rules!1726 v!6381) lt!915404)))

(declare-fun b!2601358 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1423 (LexerInterface!4123 List!30124 List!30125) Bool)

(assert (=> b!2601358 (= e!1642120 (= lt!915404 (rulesProduceEachTokenIndividuallyList!1423 thiss!14197 rules!1726 (list!11260 v!6381))))))

(assert (= (and d!737004 res!1095929) b!2601358))

(assert (=> d!737004 m!2936355))

(assert (=> d!737004 m!2936355))

(declare-fun m!2936471 () Bool)

(assert (=> d!737004 m!2936471))

(declare-fun m!2936473 () Bool)

(assert (=> d!737004 m!2936473))

(assert (=> d!737004 m!2936341))

(assert (=> b!2601358 m!2936355))

(assert (=> b!2601358 m!2936355))

(declare-fun m!2936475 () Bool)

(assert (=> b!2601358 m!2936475))

(assert (=> b!2601227 d!737004))

(declare-fun e!1642132 () Bool)

(assert (=> b!2601221 (= tp!824088 e!1642132)))

(declare-fun b!2601384 () Bool)

(declare-fun tp!824137 () Bool)

(assert (=> b!2601384 (= e!1642132 tp!824137)))

(declare-fun b!2601383 () Bool)

(declare-fun tp!824136 () Bool)

(declare-fun tp!824135 () Bool)

(assert (=> b!2601383 (= e!1642132 (and tp!824136 tp!824135))))

(declare-fun b!2601385 () Bool)

(declare-fun tp!824134 () Bool)

(declare-fun tp!824138 () Bool)

(assert (=> b!2601385 (= e!1642132 (and tp!824134 tp!824138))))

(declare-fun b!2601382 () Bool)

(declare-fun tp_is_empty!13707 () Bool)

(assert (=> b!2601382 (= e!1642132 tp_is_empty!13707)))

(assert (= (and b!2601221 (is-ElementMatch!7670 (regex!4526 (h!35444 rules!1726)))) b!2601382))

(assert (= (and b!2601221 (is-Concat!12418 (regex!4526 (h!35444 rules!1726)))) b!2601383))

(assert (= (and b!2601221 (is-Star!7670 (regex!4526 (h!35444 rules!1726)))) b!2601384))

(assert (= (and b!2601221 (is-Union!7670 (regex!4526 (h!35444 rules!1726)))) b!2601385))

(declare-fun e!1642133 () Bool)

(assert (=> b!2601232 (= tp!824087 e!1642133)))

(declare-fun b!2601388 () Bool)

(declare-fun tp!824142 () Bool)

(assert (=> b!2601388 (= e!1642133 tp!824142)))

(declare-fun b!2601387 () Bool)

(declare-fun tp!824141 () Bool)

(declare-fun tp!824140 () Bool)

(assert (=> b!2601387 (= e!1642133 (and tp!824141 tp!824140))))

(declare-fun b!2601389 () Bool)

(declare-fun tp!824139 () Bool)

(declare-fun tp!824143 () Bool)

(assert (=> b!2601389 (= e!1642133 (and tp!824139 tp!824143))))

(declare-fun b!2601386 () Bool)

(assert (=> b!2601386 (= e!1642133 tp_is_empty!13707)))

(assert (= (and b!2601232 (is-ElementMatch!7670 (regex!4526 (rule!6896 separatorToken!156)))) b!2601386))

(assert (= (and b!2601232 (is-Concat!12418 (regex!4526 (rule!6896 separatorToken!156)))) b!2601387))

(assert (= (and b!2601232 (is-Star!7670 (regex!4526 (rule!6896 separatorToken!156)))) b!2601388))

(assert (= (and b!2601232 (is-Union!7670 (regex!4526 (rule!6896 separatorToken!156)))) b!2601389))

(declare-fun b!2601400 () Bool)

(declare-fun b_free!73001 () Bool)

(declare-fun b_next!73705 () Bool)

(assert (=> b!2601400 (= b_free!73001 (not b_next!73705))))

(declare-fun tp!824152 () Bool)

(declare-fun b_and!190295 () Bool)

(assert (=> b!2601400 (= tp!824152 b_and!190295)))

(declare-fun b_free!73003 () Bool)

(declare-fun b_next!73707 () Bool)

(assert (=> b!2601400 (= b_free!73003 (not b_next!73707))))

(declare-fun tb!141521 () Bool)

(declare-fun t!213195 () Bool)

(assert (=> (and b!2601400 (= (toChars!6279 (transformation!4526 (h!35444 (t!213175 rules!1726)))) (toChars!6279 (transformation!4526 (rule!6896 separatorToken!156)))) t!213195) tb!141521))

(declare-fun result!176094 () Bool)

(assert (= result!176094 result!176084))

(assert (=> b!2601349 t!213195))

(declare-fun b_and!190297 () Bool)

(declare-fun tp!824155 () Bool)

(assert (=> b!2601400 (= tp!824155 (and (=> t!213195 result!176094) b_and!190297))))

(declare-fun e!1642144 () Bool)

(assert (=> b!2601400 (= e!1642144 (and tp!824152 tp!824155))))

(declare-fun tp!824154 () Bool)

(declare-fun b!2601399 () Bool)

(declare-fun e!1642145 () Bool)

(assert (=> b!2601399 (= e!1642145 (and tp!824154 (inv!40581 (tag!5016 (h!35444 (t!213175 rules!1726)))) (inv!40585 (transformation!4526 (h!35444 (t!213175 rules!1726)))) e!1642144))))

(declare-fun b!2601398 () Bool)

(declare-fun e!1642143 () Bool)

(declare-fun tp!824153 () Bool)

(assert (=> b!2601398 (= e!1642143 (and e!1642145 tp!824153))))

(assert (=> b!2601222 (= tp!824085 e!1642143)))

(assert (= b!2601399 b!2601400))

(assert (= b!2601398 b!2601399))

(assert (= (and b!2601222 (is-Cons!30024 (t!213175 rules!1726))) b!2601398))

(declare-fun m!2936477 () Bool)

(assert (=> b!2601399 m!2936477))

(declare-fun m!2936479 () Bool)

(assert (=> b!2601399 m!2936479))

(declare-fun b!2601405 () Bool)

(declare-fun e!1642148 () Bool)

(declare-fun tp!824158 () Bool)

(assert (=> b!2601405 (= e!1642148 (and tp_is_empty!13707 tp!824158))))

(assert (=> b!2601233 (= tp!824086 e!1642148)))

(assert (= (and b!2601233 (is-Cons!30023 (originalCharacters!5292 separatorToken!156))) b!2601405))

(declare-fun e!1642153 () Bool)

(declare-fun tp!824165 () Bool)

(declare-fun tp!824166 () Bool)

(declare-fun b!2601414 () Bool)

(assert (=> b!2601414 (= e!1642153 (and (inv!40584 (left!23090 (c!418683 v!6381))) tp!824166 (inv!40584 (right!23420 (c!418683 v!6381))) tp!824165))))

(declare-fun b!2601416 () Bool)

(declare-fun e!1642154 () Bool)

(declare-fun tp!824167 () Bool)

(assert (=> b!2601416 (= e!1642154 tp!824167)))

(declare-fun b!2601415 () Bool)

(declare-fun inv!40596 (IArray!18595) Bool)

(assert (=> b!2601415 (= e!1642153 (and (inv!40596 (xs!12279 (c!418683 v!6381))) e!1642154))))

(assert (=> b!2601223 (= tp!824091 (and (inv!40584 (c!418683 v!6381)) e!1642153))))

(assert (= (and b!2601223 (is-Node!9295 (c!418683 v!6381))) b!2601414))

(assert (= b!2601415 b!2601416))

(assert (= (and b!2601223 (is-Leaf!14299 (c!418683 v!6381))) b!2601415))

(declare-fun m!2936481 () Bool)

(assert (=> b!2601414 m!2936481))

(declare-fun m!2936483 () Bool)

(assert (=> b!2601414 m!2936483))

(declare-fun m!2936485 () Bool)

(assert (=> b!2601415 m!2936485))

(assert (=> b!2601223 m!2936337))

(declare-fun b_lambda!77935 () Bool)

(assert (= b_lambda!77931 (or b!2601230 b_lambda!77935)))

(declare-fun bs!473237 () Bool)

(declare-fun d!737006 () Bool)

(assert (= bs!473237 (and d!737006 b!2601230)))

(assert (=> bs!473237 (= (dynLambda!12695 lambda!97347 (h!35445 lt!915380)) (not (isSeparator!4526 (rule!6896 (h!35445 lt!915380)))))))

(assert (=> b!2601288 d!737006))

(declare-fun b_lambda!77937 () Bool)

(assert (= b_lambda!77933 (or (and b!2601229 b_free!72987 (= (toChars!6279 (transformation!4526 (h!35444 rules!1726))) (toChars!6279 (transformation!4526 (rule!6896 separatorToken!156))))) (and b!2601234 b_free!72991) (and b!2601400 b_free!73003 (= (toChars!6279 (transformation!4526 (h!35444 (t!213175 rules!1726)))) (toChars!6279 (transformation!4526 (rule!6896 separatorToken!156))))) b_lambda!77937)))

(push 1)

(assert (not b_lambda!77937))

(assert (not b_next!73707))

(assert (not d!737004))

(assert (not b!2601343))

(assert (not b!2601289))

(assert (not b!2601414))

(assert (not b_next!73691))

(assert (not b!2601336))

(assert (not b!2601223))

(assert (not d!737000))

(assert (not b!2601385))

(assert (not d!736994))

(assert (not b_next!73695))

(assert (not b!2601388))

(assert (not b!2601349))

(assert (not d!736978))

(assert b_and!190295)

(assert (not b!2601306))

(assert (not b!2601307))

(assert (not b_next!73693))

(assert (not b!2601416))

(assert (not d!736972))

(assert b_and!190293)

(assert (not b!2601338))

(assert (not b!2601327))

(assert (not b!2601389))

(assert (not b!2601305))

(assert (not b!2601398))

(assert (not b!2601405))

(assert (not b!2601367))

(assert (not d!736968))

(assert b_and!190275)

(assert (not b_next!73705))

(assert (not b_next!73689))

(assert (not b!2601384))

(assert (not b!2601329))

(assert (not tb!141517))

(assert (not b!2601314))

(assert b_and!190297)

(assert b_and!190279)

(assert (not b!2601387))

(assert (not b!2601399))

(assert tp_is_empty!13707)

(assert (not b!2601415))

(assert (not d!737002))

(assert (not b_lambda!77935))

(assert (not b!2601355))

(assert (not d!736984))

(assert (not d!736980))

(assert (not b!2601328))

(assert (not b!2601313))

(assert (not b!2601310))

(assert (not b!2601344))

(assert (not b!2601350))

(assert (not d!736970))

(assert (not b!2601358))

(assert (not d!736988))

(assert (not b!2601383))

(assert b_and!190291)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!73695))

(assert b_and!190295)

(assert (not b_next!73707))

(assert (not b_next!73693))

(assert b_and!190293)

(assert b_and!190297)

(assert b_and!190279)

(assert (not b_next!73691))

(assert b_and!190291)

(assert b_and!190275)

(assert (not b_next!73705))

(assert (not b_next!73689))

(check-sat)

(pop 1)


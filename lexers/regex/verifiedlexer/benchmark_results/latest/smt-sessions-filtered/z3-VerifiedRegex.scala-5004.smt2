; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252950 () Bool)

(assert start!252950)

(declare-fun b!2601617 () Bool)

(declare-fun b_free!73013 () Bool)

(declare-fun b_next!73717 () Bool)

(assert (=> b!2601617 (= b_free!73013 (not b_next!73717))))

(declare-fun tp!824261 () Bool)

(declare-fun b_and!190311 () Bool)

(assert (=> b!2601617 (= tp!824261 b_and!190311)))

(declare-fun b_free!73015 () Bool)

(declare-fun b_next!73719 () Bool)

(assert (=> b!2601617 (= b_free!73015 (not b_next!73719))))

(declare-fun tp!824260 () Bool)

(declare-fun b_and!190313 () Bool)

(assert (=> b!2601617 (= tp!824260 b_and!190313)))

(declare-fun b!2601626 () Bool)

(declare-fun b_free!73017 () Bool)

(declare-fun b_next!73721 () Bool)

(assert (=> b!2601626 (= b_free!73017 (not b_next!73721))))

(declare-fun tp!824262 () Bool)

(declare-fun b_and!190315 () Bool)

(assert (=> b!2601626 (= tp!824262 b_and!190315)))

(declare-fun b_free!73019 () Bool)

(declare-fun b_next!73723 () Bool)

(assert (=> b!2601626 (= b_free!73019 (not b_next!73723))))

(declare-fun tp!824267 () Bool)

(declare-fun b_and!190317 () Bool)

(assert (=> b!2601626 (= tp!824267 b_and!190317)))

(declare-fun b!2601610 () Bool)

(declare-fun res!1096013 () Bool)

(declare-fun e!1642290 () Bool)

(assert (=> b!2601610 (=> (not res!1096013) (not e!1642290))))

(declare-datatypes ((C!15504 0))(
  ( (C!15505 (val!9686 Int)) )
))
(declare-datatypes ((List!30135 0))(
  ( (Nil!30035) (Cons!30035 (h!35455 (_ BitVec 16)) (t!213212 List!30135)) )
))
(declare-datatypes ((TokenValue!4751 0))(
  ( (FloatLiteralValue!9502 (text!33702 List!30135)) (TokenValueExt!4750 (__x!19335 Int)) (Broken!23755 (value!146655 List!30135)) (Object!4850) (End!4751) (Def!4751) (Underscore!4751) (Match!4751) (Else!4751) (Error!4751) (Case!4751) (If!4751) (Extends!4751) (Abstract!4751) (Class!4751) (Val!4751) (DelimiterValue!9502 (del!4811 List!30135)) (KeywordValue!4757 (value!146656 List!30135)) (CommentValue!9502 (value!146657 List!30135)) (WhitespaceValue!9502 (value!146658 List!30135)) (IndentationValue!4751 (value!146659 List!30135)) (String!33638) (Int32!4751) (Broken!23756 (value!146660 List!30135)) (Boolean!4752) (Unit!44038) (OperatorValue!4754 (op!4811 List!30135)) (IdentifierValue!9502 (value!146661 List!30135)) (IdentifierValue!9503 (value!146662 List!30135)) (WhitespaceValue!9503 (value!146663 List!30135)) (True!9502) (False!9502) (Broken!23757 (value!146664 List!30135)) (Broken!23758 (value!146665 List!30135)) (True!9503) (RightBrace!4751) (RightBracket!4751) (Colon!4751) (Null!4751) (Comma!4751) (LeftBracket!4751) (False!9503) (LeftBrace!4751) (ImaginaryLiteralValue!4751 (text!33703 List!30135)) (StringLiteralValue!14253 (value!146666 List!30135)) (EOFValue!4751 (value!146667 List!30135)) (IdentValue!4751 (value!146668 List!30135)) (DelimiterValue!9503 (value!146669 List!30135)) (DedentValue!4751 (value!146670 List!30135)) (NewLineValue!4751 (value!146671 List!30135)) (IntegerValue!14253 (value!146672 (_ BitVec 32)) (text!33704 List!30135)) (IntegerValue!14254 (value!146673 Int) (text!33705 List!30135)) (Times!4751) (Or!4751) (Equal!4751) (Minus!4751) (Broken!23759 (value!146674 List!30135)) (And!4751) (Div!4751) (LessEqual!4751) (Mod!4751) (Concat!12424) (Not!4751) (Plus!4751) (SpaceValue!4751 (value!146675 List!30135)) (IntegerValue!14255 (value!146676 Int) (text!33706 List!30135)) (StringLiteralValue!14254 (text!33707 List!30135)) (FloatLiteralValue!9503 (text!33708 List!30135)) (BytesLiteralValue!4751 (value!146677 List!30135)) (CommentValue!9503 (value!146678 List!30135)) (StringLiteralValue!14255 (value!146679 List!30135)) (ErrorTokenValue!4751 (msg!4812 List!30135)) )
))
(declare-datatypes ((Regex!7673 0))(
  ( (ElementMatch!7673 (c!418708 C!15504)) (Concat!12425 (regOne!15858 Regex!7673) (regTwo!15858 Regex!7673)) (EmptyExpr!7673) (Star!7673 (reg!8002 Regex!7673)) (EmptyLang!7673) (Union!7673 (regOne!15859 Regex!7673) (regTwo!15859 Regex!7673)) )
))
(declare-datatypes ((String!33639 0))(
  ( (String!33640 (value!146680 String)) )
))
(declare-datatypes ((List!30136 0))(
  ( (Nil!30036) (Cons!30036 (h!35456 C!15504) (t!213213 List!30136)) )
))
(declare-datatypes ((IArray!18605 0))(
  ( (IArray!18606 (innerList!9360 List!30136)) )
))
(declare-datatypes ((Conc!9300 0))(
  ( (Node!9300 (left!23100 Conc!9300) (right!23430 Conc!9300) (csize!18830 Int) (cheight!9511 Int)) (Leaf!14305 (xs!12284 IArray!18605) (csize!18831 Int)) (Empty!9300) )
))
(declare-datatypes ((BalanceConc!18214 0))(
  ( (BalanceConc!18215 (c!418709 Conc!9300)) )
))
(declare-datatypes ((TokenValueInjection!8942 0))(
  ( (TokenValueInjection!8943 (toValue!6423 Int) (toChars!6282 Int)) )
))
(declare-datatypes ((Rule!8858 0))(
  ( (Rule!8859 (regex!4529 Regex!7673) (tag!5019 String!33639) (isSeparator!4529 Bool) (transformation!4529 TokenValueInjection!8942)) )
))
(declare-datatypes ((Token!8528 0))(
  ( (Token!8529 (value!146681 TokenValue!4751) (rule!6899 Rule!8858) (size!23260 Int) (originalCharacters!5295 List!30136)) )
))
(declare-datatypes ((List!30137 0))(
  ( (Nil!30037) (Cons!30037 (h!35457 Token!8528) (t!213214 List!30137)) )
))
(declare-datatypes ((IArray!18607 0))(
  ( (IArray!18608 (innerList!9361 List!30137)) )
))
(declare-datatypes ((Conc!9301 0))(
  ( (Node!9301 (left!23101 Conc!9301) (right!23431 Conc!9301) (csize!18832 Int) (cheight!9512 Int)) (Leaf!14306 (xs!12285 IArray!18607) (csize!18833 Int)) (Empty!9301) )
))
(declare-datatypes ((BalanceConc!18216 0))(
  ( (BalanceConc!18217 (c!418710 Conc!9301)) )
))
(declare-fun v!6381 () BalanceConc!18216)

(declare-fun lambda!97372 () Int)

(declare-fun forall!6200 (BalanceConc!18216 Int) Bool)

(assert (=> b!2601610 (= res!1096013 (forall!6200 v!6381 lambda!97372))))

(declare-fun b!2601611 () Bool)

(declare-fun res!1096018 () Bool)

(assert (=> b!2601611 (=> (not res!1096018) (not e!1642290))))

(declare-fun separatorToken!156 () Token!8528)

(assert (=> b!2601611 (= res!1096018 (isSeparator!4529 (rule!6899 separatorToken!156)))))

(declare-fun b!2601612 () Bool)

(declare-fun e!1642292 () Bool)

(assert (=> b!2601612 (= e!1642290 e!1642292)))

(declare-fun res!1096017 () Bool)

(assert (=> b!2601612 (=> (not res!1096017) (not e!1642292))))

(declare-fun lt!915423 () List!30137)

(declare-fun forall!6201 (List!30137 Int) Bool)

(assert (=> b!2601612 (= res!1096017 (forall!6201 lt!915423 lambda!97372))))

(declare-fun lt!915422 () List!30137)

(declare-fun from!862 () Int)

(declare-fun dropList!832 (BalanceConc!18216 Int) List!30137)

(assert (=> b!2601612 (= lt!915422 (dropList!832 v!6381 from!862))))

(declare-fun list!11265 (BalanceConc!18216) List!30137)

(assert (=> b!2601612 (= lt!915423 (list!11265 v!6381))))

(declare-fun b!2601613 () Bool)

(declare-fun res!1096022 () Bool)

(assert (=> b!2601613 (=> (not res!1096022) (not e!1642290))))

(declare-datatypes ((List!30138 0))(
  ( (Nil!30038) (Cons!30038 (h!35458 Rule!8858) (t!213215 List!30138)) )
))
(declare-fun rules!1726 () List!30138)

(declare-fun isEmpty!17174 (List!30138) Bool)

(assert (=> b!2601613 (= res!1096022 (not (isEmpty!17174 rules!1726)))))

(declare-fun res!1096021 () Bool)

(assert (=> start!252950 (=> (not res!1096021) (not e!1642290))))

(declare-datatypes ((LexerInterface!4126 0))(
  ( (LexerInterfaceExt!4123 (__x!19336 Int)) (Lexer!4124) )
))
(declare-fun thiss!14197 () LexerInterface!4126)

(get-info :version)

(assert (=> start!252950 (= res!1096021 (and ((_ is Lexer!4124) thiss!14197) (>= from!862 0)))))

(assert (=> start!252950 e!1642290))

(assert (=> start!252950 true))

(declare-fun e!1642294 () Bool)

(assert (=> start!252950 e!1642294))

(declare-fun e!1642289 () Bool)

(declare-fun inv!40604 (Token!8528) Bool)

(assert (=> start!252950 (and (inv!40604 separatorToken!156) e!1642289)))

(declare-fun e!1642296 () Bool)

(declare-fun inv!40605 (BalanceConc!18216) Bool)

(assert (=> start!252950 (and (inv!40605 v!6381) e!1642296)))

(declare-fun b!2601614 () Bool)

(declare-fun res!1096015 () Bool)

(assert (=> b!2601614 (=> (not res!1096015) (not e!1642290))))

(declare-fun sepAndNonSepRulesDisjointChars!1102 (List!30138 List!30138) Bool)

(assert (=> b!2601614 (= res!1096015 (sepAndNonSepRulesDisjointChars!1102 rules!1726 rules!1726))))

(declare-fun b!2601615 () Bool)

(declare-fun res!1096014 () Bool)

(assert (=> b!2601615 (=> (not res!1096014) (not e!1642290))))

(declare-fun rulesProduceEachTokenIndividually!946 (LexerInterface!4126 List!30138 BalanceConc!18216) Bool)

(assert (=> b!2601615 (= res!1096014 (rulesProduceEachTokenIndividually!946 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2601616 () Bool)

(declare-fun e!1642293 () Bool)

(declare-fun tp!824263 () Bool)

(assert (=> b!2601616 (= e!1642294 (and e!1642293 tp!824263))))

(declare-fun e!1642288 () Bool)

(assert (=> b!2601617 (= e!1642288 (and tp!824261 tp!824260))))

(declare-fun b!2601618 () Bool)

(declare-fun res!1096016 () Bool)

(assert (=> b!2601618 (=> (not res!1096016) (not e!1642290))))

(declare-fun rulesProduceIndividualToken!1838 (LexerInterface!4126 List!30138 Token!8528) Bool)

(assert (=> b!2601618 (= res!1096016 (rulesProduceIndividualToken!1838 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun tp!824268 () Bool)

(declare-fun b!2601619 () Bool)

(declare-fun e!1642291 () Bool)

(declare-fun inv!21 (TokenValue!4751) Bool)

(assert (=> b!2601619 (= e!1642289 (and (inv!21 (value!146681 separatorToken!156)) e!1642291 tp!824268))))

(declare-fun tp!824265 () Bool)

(declare-fun e!1642295 () Bool)

(declare-fun b!2601620 () Bool)

(declare-fun inv!40599 (String!33639) Bool)

(declare-fun inv!40606 (TokenValueInjection!8942) Bool)

(assert (=> b!2601620 (= e!1642293 (and tp!824265 (inv!40599 (tag!5019 (h!35458 rules!1726))) (inv!40606 (transformation!4529 (h!35458 rules!1726))) e!1642295))))

(declare-fun b!2601621 () Bool)

(declare-fun res!1096020 () Bool)

(assert (=> b!2601621 (=> (not res!1096020) (not e!1642290))))

(declare-fun size!23261 (BalanceConc!18216) Int)

(assert (=> b!2601621 (= res!1096020 (<= from!862 (size!23261 v!6381)))))

(declare-fun b!2601622 () Bool)

(declare-fun res!1096019 () Bool)

(assert (=> b!2601622 (=> (not res!1096019) (not e!1642290))))

(declare-fun rulesInvariant!3626 (LexerInterface!4126 List!30138) Bool)

(assert (=> b!2601622 (= res!1096019 (rulesInvariant!3626 thiss!14197 rules!1726))))

(declare-fun b!2601623 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4267 (List!30137) (InoxSet Token!8528))

(assert (=> b!2601623 (= e!1642292 (not (= ((_ map implies) (content!4267 lt!915422) (content!4267 lt!915423)) ((as const (InoxSet Token!8528)) true))))))

(declare-fun tp!824264 () Bool)

(declare-fun b!2601624 () Bool)

(assert (=> b!2601624 (= e!1642291 (and tp!824264 (inv!40599 (tag!5019 (rule!6899 separatorToken!156))) (inv!40606 (transformation!4529 (rule!6899 separatorToken!156))) e!1642288))))

(declare-fun b!2601625 () Bool)

(declare-fun tp!824266 () Bool)

(declare-fun inv!40607 (Conc!9301) Bool)

(assert (=> b!2601625 (= e!1642296 (and (inv!40607 (c!418710 v!6381)) tp!824266))))

(assert (=> b!2601626 (= e!1642295 (and tp!824262 tp!824267))))

(assert (= (and start!252950 res!1096021) b!2601621))

(assert (= (and b!2601621 res!1096020) b!2601613))

(assert (= (and b!2601613 res!1096022) b!2601622))

(assert (= (and b!2601622 res!1096019) b!2601615))

(assert (= (and b!2601615 res!1096014) b!2601618))

(assert (= (and b!2601618 res!1096016) b!2601611))

(assert (= (and b!2601611 res!1096018) b!2601610))

(assert (= (and b!2601610 res!1096013) b!2601614))

(assert (= (and b!2601614 res!1096015) b!2601612))

(assert (= (and b!2601612 res!1096017) b!2601623))

(assert (= b!2601620 b!2601626))

(assert (= b!2601616 b!2601620))

(assert (= (and start!252950 ((_ is Cons!30038) rules!1726)) b!2601616))

(assert (= b!2601624 b!2601617))

(assert (= b!2601619 b!2601624))

(assert (= start!252950 b!2601619))

(assert (= start!252950 b!2601625))

(declare-fun m!2936565 () Bool)

(assert (=> b!2601625 m!2936565))

(declare-fun m!2936567 () Bool)

(assert (=> b!2601610 m!2936567))

(declare-fun m!2936569 () Bool)

(assert (=> b!2601622 m!2936569))

(declare-fun m!2936571 () Bool)

(assert (=> b!2601624 m!2936571))

(declare-fun m!2936573 () Bool)

(assert (=> b!2601624 m!2936573))

(declare-fun m!2936575 () Bool)

(assert (=> b!2601623 m!2936575))

(declare-fun m!2936577 () Bool)

(assert (=> b!2601623 m!2936577))

(declare-fun m!2936579 () Bool)

(assert (=> b!2601614 m!2936579))

(declare-fun m!2936581 () Bool)

(assert (=> b!2601612 m!2936581))

(declare-fun m!2936583 () Bool)

(assert (=> b!2601612 m!2936583))

(declare-fun m!2936585 () Bool)

(assert (=> b!2601612 m!2936585))

(declare-fun m!2936587 () Bool)

(assert (=> b!2601620 m!2936587))

(declare-fun m!2936589 () Bool)

(assert (=> b!2601620 m!2936589))

(declare-fun m!2936591 () Bool)

(assert (=> b!2601618 m!2936591))

(declare-fun m!2936593 () Bool)

(assert (=> b!2601613 m!2936593))

(declare-fun m!2936595 () Bool)

(assert (=> start!252950 m!2936595))

(declare-fun m!2936597 () Bool)

(assert (=> start!252950 m!2936597))

(declare-fun m!2936599 () Bool)

(assert (=> b!2601619 m!2936599))

(declare-fun m!2936601 () Bool)

(assert (=> b!2601621 m!2936601))

(declare-fun m!2936603 () Bool)

(assert (=> b!2601615 m!2936603))

(check-sat b_and!190315 (not b_next!73721) (not b!2601622) (not b!2601620) (not b_next!73717) (not b!2601613) (not b!2601621) b_and!190313 (not b!2601619) (not b_next!73723) (not b!2601615) (not start!252950) (not b!2601625) (not b_next!73719) (not b!2601623) (not b!2601624) (not b!2601610) (not b!2601614) (not b!2601616) (not b!2601612) (not b!2601618) b_and!190317 b_and!190311)
(check-sat (not b_next!73719) b_and!190315 (not b_next!73721) (not b_next!73717) b_and!190313 (not b_next!73723) b_and!190317 b_and!190311)
(get-model)

(declare-fun d!737027 () Bool)

(assert (=> d!737027 (= (isEmpty!17174 rules!1726) ((_ is Nil!30038) rules!1726))))

(assert (=> b!2601613 d!737027))

(declare-fun d!737029 () Bool)

(declare-fun res!1096033 () Bool)

(declare-fun e!1642299 () Bool)

(assert (=> d!737029 (=> (not res!1096033) (not e!1642299))))

(declare-fun isEmpty!17177 (List!30136) Bool)

(assert (=> d!737029 (= res!1096033 (not (isEmpty!17177 (originalCharacters!5295 separatorToken!156))))))

(assert (=> d!737029 (= (inv!40604 separatorToken!156) e!1642299)))

(declare-fun b!2601631 () Bool)

(declare-fun res!1096034 () Bool)

(assert (=> b!2601631 (=> (not res!1096034) (not e!1642299))))

(declare-fun list!11268 (BalanceConc!18214) List!30136)

(declare-fun dynLambda!12705 (Int TokenValue!4751) BalanceConc!18214)

(assert (=> b!2601631 (= res!1096034 (= (originalCharacters!5295 separatorToken!156) (list!11268 (dynLambda!12705 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (value!146681 separatorToken!156)))))))

(declare-fun b!2601632 () Bool)

(declare-fun size!23265 (List!30136) Int)

(assert (=> b!2601632 (= e!1642299 (= (size!23260 separatorToken!156) (size!23265 (originalCharacters!5295 separatorToken!156))))))

(assert (= (and d!737029 res!1096033) b!2601631))

(assert (= (and b!2601631 res!1096034) b!2601632))

(declare-fun b_lambda!77943 () Bool)

(assert (=> (not b_lambda!77943) (not b!2601631)))

(declare-fun t!213217 () Bool)

(declare-fun tb!141527 () Bool)

(assert (=> (and b!2601617 (= (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156)))) t!213217) tb!141527))

(declare-fun b!2601637 () Bool)

(declare-fun e!1642302 () Bool)

(declare-fun tp!824271 () Bool)

(declare-fun inv!40613 (Conc!9300) Bool)

(assert (=> b!2601637 (= e!1642302 (and (inv!40613 (c!418709 (dynLambda!12705 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (value!146681 separatorToken!156)))) tp!824271))))

(declare-fun result!176114 () Bool)

(declare-fun inv!40614 (BalanceConc!18214) Bool)

(assert (=> tb!141527 (= result!176114 (and (inv!40614 (dynLambda!12705 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (value!146681 separatorToken!156))) e!1642302))))

(assert (= tb!141527 b!2601637))

(declare-fun m!2936605 () Bool)

(assert (=> b!2601637 m!2936605))

(declare-fun m!2936607 () Bool)

(assert (=> tb!141527 m!2936607))

(assert (=> b!2601631 t!213217))

(declare-fun b_and!190319 () Bool)

(assert (= b_and!190313 (and (=> t!213217 result!176114) b_and!190319)))

(declare-fun tb!141529 () Bool)

(declare-fun t!213219 () Bool)

(assert (=> (and b!2601626 (= (toChars!6282 (transformation!4529 (h!35458 rules!1726))) (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156)))) t!213219) tb!141529))

(declare-fun result!176118 () Bool)

(assert (= result!176118 result!176114))

(assert (=> b!2601631 t!213219))

(declare-fun b_and!190321 () Bool)

(assert (= b_and!190317 (and (=> t!213219 result!176118) b_and!190321)))

(declare-fun m!2936609 () Bool)

(assert (=> d!737029 m!2936609))

(declare-fun m!2936611 () Bool)

(assert (=> b!2601631 m!2936611))

(assert (=> b!2601631 m!2936611))

(declare-fun m!2936613 () Bool)

(assert (=> b!2601631 m!2936613))

(declare-fun m!2936615 () Bool)

(assert (=> b!2601632 m!2936615))

(assert (=> start!252950 d!737029))

(declare-fun d!737033 () Bool)

(declare-fun isBalanced!2837 (Conc!9301) Bool)

(assert (=> d!737033 (= (inv!40605 v!6381) (isBalanced!2837 (c!418710 v!6381)))))

(declare-fun bs!473242 () Bool)

(assert (= bs!473242 d!737033))

(declare-fun m!2936617 () Bool)

(assert (=> bs!473242 m!2936617))

(assert (=> start!252950 d!737033))

(declare-fun d!737035 () Bool)

(assert (=> d!737035 (= (inv!40599 (tag!5019 (rule!6899 separatorToken!156))) (= (mod (str.len (value!146680 (tag!5019 (rule!6899 separatorToken!156)))) 2) 0))))

(assert (=> b!2601624 d!737035))

(declare-fun d!737037 () Bool)

(declare-fun res!1096037 () Bool)

(declare-fun e!1642305 () Bool)

(assert (=> d!737037 (=> (not res!1096037) (not e!1642305))))

(declare-fun semiInverseModEq!1893 (Int Int) Bool)

(assert (=> d!737037 (= res!1096037 (semiInverseModEq!1893 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (toValue!6423 (transformation!4529 (rule!6899 separatorToken!156)))))))

(assert (=> d!737037 (= (inv!40606 (transformation!4529 (rule!6899 separatorToken!156))) e!1642305)))

(declare-fun b!2601640 () Bool)

(declare-fun equivClasses!1794 (Int Int) Bool)

(assert (=> b!2601640 (= e!1642305 (equivClasses!1794 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (toValue!6423 (transformation!4529 (rule!6899 separatorToken!156)))))))

(assert (= (and d!737037 res!1096037) b!2601640))

(declare-fun m!2936619 () Bool)

(assert (=> d!737037 m!2936619))

(declare-fun m!2936621 () Bool)

(assert (=> b!2601640 m!2936621))

(assert (=> b!2601624 d!737037))

(declare-fun d!737039 () Bool)

(declare-fun res!1096040 () Bool)

(declare-fun e!1642308 () Bool)

(assert (=> d!737039 (=> (not res!1096040) (not e!1642308))))

(declare-fun rulesValid!1698 (LexerInterface!4126 List!30138) Bool)

(assert (=> d!737039 (= res!1096040 (rulesValid!1698 thiss!14197 rules!1726))))

(assert (=> d!737039 (= (rulesInvariant!3626 thiss!14197 rules!1726) e!1642308)))

(declare-fun b!2601643 () Bool)

(declare-datatypes ((List!30140 0))(
  ( (Nil!30040) (Cons!30040 (h!35460 String!33639) (t!213239 List!30140)) )
))
(declare-fun noDuplicateTag!1694 (LexerInterface!4126 List!30138 List!30140) Bool)

(assert (=> b!2601643 (= e!1642308 (noDuplicateTag!1694 thiss!14197 rules!1726 Nil!30040))))

(assert (= (and d!737039 res!1096040) b!2601643))

(declare-fun m!2936623 () Bool)

(assert (=> d!737039 m!2936623))

(declare-fun m!2936625 () Bool)

(assert (=> b!2601643 m!2936625))

(assert (=> b!2601622 d!737039))

(declare-fun d!737041 () Bool)

(declare-fun c!418713 () Bool)

(assert (=> d!737041 (= c!418713 ((_ is Nil!30037) lt!915422))))

(declare-fun e!1642311 () (InoxSet Token!8528))

(assert (=> d!737041 (= (content!4267 lt!915422) e!1642311)))

(declare-fun b!2601648 () Bool)

(assert (=> b!2601648 (= e!1642311 ((as const (Array Token!8528 Bool)) false))))

(declare-fun b!2601649 () Bool)

(assert (=> b!2601649 (= e!1642311 ((_ map or) (store ((as const (Array Token!8528 Bool)) false) (h!35457 lt!915422) true) (content!4267 (t!213214 lt!915422))))))

(assert (= (and d!737041 c!418713) b!2601648))

(assert (= (and d!737041 (not c!418713)) b!2601649))

(declare-fun m!2936627 () Bool)

(assert (=> b!2601649 m!2936627))

(declare-fun m!2936629 () Bool)

(assert (=> b!2601649 m!2936629))

(assert (=> b!2601623 d!737041))

(declare-fun d!737043 () Bool)

(declare-fun c!418714 () Bool)

(assert (=> d!737043 (= c!418714 ((_ is Nil!30037) lt!915423))))

(declare-fun e!1642312 () (InoxSet Token!8528))

(assert (=> d!737043 (= (content!4267 lt!915423) e!1642312)))

(declare-fun b!2601650 () Bool)

(assert (=> b!2601650 (= e!1642312 ((as const (Array Token!8528 Bool)) false))))

(declare-fun b!2601651 () Bool)

(assert (=> b!2601651 (= e!1642312 ((_ map or) (store ((as const (Array Token!8528 Bool)) false) (h!35457 lt!915423) true) (content!4267 (t!213214 lt!915423))))))

(assert (= (and d!737043 c!418714) b!2601650))

(assert (= (and d!737043 (not c!418714)) b!2601651))

(declare-fun m!2936631 () Bool)

(assert (=> b!2601651 m!2936631))

(declare-fun m!2936633 () Bool)

(assert (=> b!2601651 m!2936633))

(assert (=> b!2601623 d!737043))

(declare-fun d!737045 () Bool)

(declare-fun res!1096045 () Bool)

(declare-fun e!1642317 () Bool)

(assert (=> d!737045 (=> res!1096045 e!1642317)))

(assert (=> d!737045 (= res!1096045 ((_ is Nil!30037) lt!915423))))

(assert (=> d!737045 (= (forall!6201 lt!915423 lambda!97372) e!1642317)))

(declare-fun b!2601656 () Bool)

(declare-fun e!1642318 () Bool)

(assert (=> b!2601656 (= e!1642317 e!1642318)))

(declare-fun res!1096046 () Bool)

(assert (=> b!2601656 (=> (not res!1096046) (not e!1642318))))

(declare-fun dynLambda!12706 (Int Token!8528) Bool)

(assert (=> b!2601656 (= res!1096046 (dynLambda!12706 lambda!97372 (h!35457 lt!915423)))))

(declare-fun b!2601657 () Bool)

(assert (=> b!2601657 (= e!1642318 (forall!6201 (t!213214 lt!915423) lambda!97372))))

(assert (= (and d!737045 (not res!1096045)) b!2601656))

(assert (= (and b!2601656 res!1096046) b!2601657))

(declare-fun b_lambda!77945 () Bool)

(assert (=> (not b_lambda!77945) (not b!2601656)))

(declare-fun m!2936635 () Bool)

(assert (=> b!2601656 m!2936635))

(declare-fun m!2936637 () Bool)

(assert (=> b!2601657 m!2936637))

(assert (=> b!2601612 d!737045))

(declare-fun d!737047 () Bool)

(declare-fun drop!1531 (List!30137 Int) List!30137)

(declare-fun list!11269 (Conc!9301) List!30137)

(assert (=> d!737047 (= (dropList!832 v!6381 from!862) (drop!1531 (list!11269 (c!418710 v!6381)) from!862))))

(declare-fun bs!473243 () Bool)

(assert (= bs!473243 d!737047))

(declare-fun m!2936639 () Bool)

(assert (=> bs!473243 m!2936639))

(assert (=> bs!473243 m!2936639))

(declare-fun m!2936641 () Bool)

(assert (=> bs!473243 m!2936641))

(assert (=> b!2601612 d!737047))

(declare-fun d!737049 () Bool)

(assert (=> d!737049 (= (list!11265 v!6381) (list!11269 (c!418710 v!6381)))))

(declare-fun bs!473244 () Bool)

(assert (= bs!473244 d!737049))

(assert (=> bs!473244 m!2936639))

(assert (=> b!2601612 d!737049))

(declare-fun d!737051 () Bool)

(declare-fun c!418717 () Bool)

(assert (=> d!737051 (= c!418717 ((_ is Node!9301) (c!418710 v!6381)))))

(declare-fun e!1642323 () Bool)

(assert (=> d!737051 (= (inv!40607 (c!418710 v!6381)) e!1642323)))

(declare-fun b!2601664 () Bool)

(declare-fun inv!40615 (Conc!9301) Bool)

(assert (=> b!2601664 (= e!1642323 (inv!40615 (c!418710 v!6381)))))

(declare-fun b!2601665 () Bool)

(declare-fun e!1642324 () Bool)

(assert (=> b!2601665 (= e!1642323 e!1642324)))

(declare-fun res!1096049 () Bool)

(assert (=> b!2601665 (= res!1096049 (not ((_ is Leaf!14306) (c!418710 v!6381))))))

(assert (=> b!2601665 (=> res!1096049 e!1642324)))

(declare-fun b!2601666 () Bool)

(declare-fun inv!40616 (Conc!9301) Bool)

(assert (=> b!2601666 (= e!1642324 (inv!40616 (c!418710 v!6381)))))

(assert (= (and d!737051 c!418717) b!2601664))

(assert (= (and d!737051 (not c!418717)) b!2601665))

(assert (= (and b!2601665 (not res!1096049)) b!2601666))

(declare-fun m!2936643 () Bool)

(assert (=> b!2601664 m!2936643))

(declare-fun m!2936645 () Bool)

(assert (=> b!2601666 m!2936645))

(assert (=> b!2601625 d!737051))

(declare-fun d!737053 () Bool)

(declare-fun res!1096054 () Bool)

(declare-fun e!1642329 () Bool)

(assert (=> d!737053 (=> res!1096054 e!1642329)))

(assert (=> d!737053 (= res!1096054 (not ((_ is Cons!30038) rules!1726)))))

(assert (=> d!737053 (= (sepAndNonSepRulesDisjointChars!1102 rules!1726 rules!1726) e!1642329)))

(declare-fun b!2601671 () Bool)

(declare-fun e!1642330 () Bool)

(assert (=> b!2601671 (= e!1642329 e!1642330)))

(declare-fun res!1096055 () Bool)

(assert (=> b!2601671 (=> (not res!1096055) (not e!1642330))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!500 (Rule!8858 List!30138) Bool)

(assert (=> b!2601671 (= res!1096055 (ruleDisjointCharsFromAllFromOtherType!500 (h!35458 rules!1726) rules!1726))))

(declare-fun b!2601672 () Bool)

(assert (=> b!2601672 (= e!1642330 (sepAndNonSepRulesDisjointChars!1102 rules!1726 (t!213215 rules!1726)))))

(assert (= (and d!737053 (not res!1096054)) b!2601671))

(assert (= (and b!2601671 res!1096055) b!2601672))

(declare-fun m!2936647 () Bool)

(assert (=> b!2601671 m!2936647))

(declare-fun m!2936649 () Bool)

(assert (=> b!2601672 m!2936649))

(assert (=> b!2601614 d!737053))

(declare-fun bs!473251 () Bool)

(declare-fun d!737055 () Bool)

(assert (= bs!473251 (and d!737055 b!2601610)))

(declare-fun lambda!97382 () Int)

(assert (=> bs!473251 (not (= lambda!97382 lambda!97372))))

(declare-fun b!2601802 () Bool)

(declare-fun e!1642421 () Bool)

(assert (=> b!2601802 (= e!1642421 true)))

(declare-fun b!2601801 () Bool)

(declare-fun e!1642420 () Bool)

(assert (=> b!2601801 (= e!1642420 e!1642421)))

(declare-fun b!2601800 () Bool)

(declare-fun e!1642419 () Bool)

(assert (=> b!2601800 (= e!1642419 e!1642420)))

(assert (=> d!737055 e!1642419))

(assert (= b!2601801 b!2601802))

(assert (= b!2601800 b!2601801))

(assert (= (and d!737055 ((_ is Cons!30038) rules!1726)) b!2601800))

(declare-fun order!15933 () Int)

(declare-fun order!15931 () Int)

(declare-fun dynLambda!12707 (Int Int) Int)

(declare-fun dynLambda!12708 (Int Int) Int)

(assert (=> b!2601802 (< (dynLambda!12707 order!15931 (toValue!6423 (transformation!4529 (h!35458 rules!1726)))) (dynLambda!12708 order!15933 lambda!97382))))

(declare-fun order!15935 () Int)

(declare-fun dynLambda!12709 (Int Int) Int)

(assert (=> b!2601802 (< (dynLambda!12709 order!15935 (toChars!6282 (transformation!4529 (h!35458 rules!1726)))) (dynLambda!12708 order!15933 lambda!97382))))

(assert (=> d!737055 true))

(declare-fun e!1642403 () Bool)

(assert (=> d!737055 e!1642403))

(declare-fun res!1096101 () Bool)

(assert (=> d!737055 (=> (not res!1096101) (not e!1642403))))

(declare-fun lt!915441 () Bool)

(assert (=> d!737055 (= res!1096101 (= lt!915441 (forall!6201 (list!11265 v!6381) lambda!97382)))))

(assert (=> d!737055 (= lt!915441 (forall!6200 v!6381 lambda!97382))))

(assert (=> d!737055 (not (isEmpty!17174 rules!1726))))

(assert (=> d!737055 (= (rulesProduceEachTokenIndividually!946 thiss!14197 rules!1726 v!6381) lt!915441)))

(declare-fun b!2601770 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1425 (LexerInterface!4126 List!30138 List!30137) Bool)

(assert (=> b!2601770 (= e!1642403 (= lt!915441 (rulesProduceEachTokenIndividuallyList!1425 thiss!14197 rules!1726 (list!11265 v!6381))))))

(assert (= (and d!737055 res!1096101) b!2601770))

(assert (=> d!737055 m!2936585))

(assert (=> d!737055 m!2936585))

(declare-fun m!2936743 () Bool)

(assert (=> d!737055 m!2936743))

(declare-fun m!2936745 () Bool)

(assert (=> d!737055 m!2936745))

(assert (=> d!737055 m!2936593))

(assert (=> b!2601770 m!2936585))

(assert (=> b!2601770 m!2936585))

(declare-fun m!2936747 () Bool)

(assert (=> b!2601770 m!2936747))

(assert (=> b!2601615 d!737055))

(declare-fun d!737095 () Bool)

(declare-fun lt!915447 () Bool)

(declare-fun e!1642434 () Bool)

(assert (=> d!737095 (= lt!915447 e!1642434)))

(declare-fun res!1096108 () Bool)

(assert (=> d!737095 (=> (not res!1096108) (not e!1642434))))

(declare-datatypes ((tuple2!29732 0))(
  ( (tuple2!29733 (_1!17408 BalanceConc!18216) (_2!17408 BalanceConc!18214)) )
))
(declare-fun lex!1870 (LexerInterface!4126 List!30138 BalanceConc!18214) tuple2!29732)

(declare-fun print!1592 (LexerInterface!4126 BalanceConc!18216) BalanceConc!18214)

(declare-fun singletonSeq!2009 (Token!8528) BalanceConc!18216)

(assert (=> d!737095 (= res!1096108 (= (list!11265 (_1!17408 (lex!1870 thiss!14197 rules!1726 (print!1592 thiss!14197 (singletonSeq!2009 separatorToken!156))))) (list!11265 (singletonSeq!2009 separatorToken!156))))))

(declare-fun e!1642435 () Bool)

(assert (=> d!737095 (= lt!915447 e!1642435)))

(declare-fun res!1096109 () Bool)

(assert (=> d!737095 (=> (not res!1096109) (not e!1642435))))

(declare-fun lt!915446 () tuple2!29732)

(assert (=> d!737095 (= res!1096109 (= (size!23261 (_1!17408 lt!915446)) 1))))

(assert (=> d!737095 (= lt!915446 (lex!1870 thiss!14197 rules!1726 (print!1592 thiss!14197 (singletonSeq!2009 separatorToken!156))))))

(assert (=> d!737095 (not (isEmpty!17174 rules!1726))))

(assert (=> d!737095 (= (rulesProduceIndividualToken!1838 thiss!14197 rules!1726 separatorToken!156) lt!915447)))

(declare-fun b!2601827 () Bool)

(declare-fun res!1096110 () Bool)

(assert (=> b!2601827 (=> (not res!1096110) (not e!1642435))))

(declare-fun apply!7031 (BalanceConc!18216 Int) Token!8528)

(assert (=> b!2601827 (= res!1096110 (= (apply!7031 (_1!17408 lt!915446) 0) separatorToken!156))))

(declare-fun b!2601828 () Bool)

(declare-fun isEmpty!17178 (BalanceConc!18214) Bool)

(assert (=> b!2601828 (= e!1642435 (isEmpty!17178 (_2!17408 lt!915446)))))

(declare-fun b!2601829 () Bool)

(assert (=> b!2601829 (= e!1642434 (isEmpty!17178 (_2!17408 (lex!1870 thiss!14197 rules!1726 (print!1592 thiss!14197 (singletonSeq!2009 separatorToken!156))))))))

(assert (= (and d!737095 res!1096109) b!2601827))

(assert (= (and b!2601827 res!1096110) b!2601828))

(assert (= (and d!737095 res!1096108) b!2601829))

(declare-fun m!2936755 () Bool)

(assert (=> d!737095 m!2936755))

(declare-fun m!2936757 () Bool)

(assert (=> d!737095 m!2936757))

(assert (=> d!737095 m!2936593))

(declare-fun m!2936759 () Bool)

(assert (=> d!737095 m!2936759))

(declare-fun m!2936761 () Bool)

(assert (=> d!737095 m!2936761))

(declare-fun m!2936763 () Bool)

(assert (=> d!737095 m!2936763))

(assert (=> d!737095 m!2936763))

(declare-fun m!2936765 () Bool)

(assert (=> d!737095 m!2936765))

(assert (=> d!737095 m!2936763))

(assert (=> d!737095 m!2936759))

(declare-fun m!2936767 () Bool)

(assert (=> b!2601827 m!2936767))

(declare-fun m!2936769 () Bool)

(assert (=> b!2601828 m!2936769))

(assert (=> b!2601829 m!2936763))

(assert (=> b!2601829 m!2936763))

(assert (=> b!2601829 m!2936759))

(assert (=> b!2601829 m!2936759))

(assert (=> b!2601829 m!2936761))

(declare-fun m!2936771 () Bool)

(assert (=> b!2601829 m!2936771))

(assert (=> b!2601618 d!737095))

(declare-fun b!2601840 () Bool)

(declare-fun res!1096113 () Bool)

(declare-fun e!1642443 () Bool)

(assert (=> b!2601840 (=> res!1096113 e!1642443)))

(assert (=> b!2601840 (= res!1096113 (not ((_ is IntegerValue!14255) (value!146681 separatorToken!156))))))

(declare-fun e!1642444 () Bool)

(assert (=> b!2601840 (= e!1642444 e!1642443)))

(declare-fun b!2601841 () Bool)

(declare-fun inv!15 (TokenValue!4751) Bool)

(assert (=> b!2601841 (= e!1642443 (inv!15 (value!146681 separatorToken!156)))))

(declare-fun d!737099 () Bool)

(declare-fun c!418735 () Bool)

(assert (=> d!737099 (= c!418735 ((_ is IntegerValue!14253) (value!146681 separatorToken!156)))))

(declare-fun e!1642442 () Bool)

(assert (=> d!737099 (= (inv!21 (value!146681 separatorToken!156)) e!1642442)))

(declare-fun b!2601842 () Bool)

(declare-fun inv!17 (TokenValue!4751) Bool)

(assert (=> b!2601842 (= e!1642444 (inv!17 (value!146681 separatorToken!156)))))

(declare-fun b!2601843 () Bool)

(declare-fun inv!16 (TokenValue!4751) Bool)

(assert (=> b!2601843 (= e!1642442 (inv!16 (value!146681 separatorToken!156)))))

(declare-fun b!2601844 () Bool)

(assert (=> b!2601844 (= e!1642442 e!1642444)))

(declare-fun c!418736 () Bool)

(assert (=> b!2601844 (= c!418736 ((_ is IntegerValue!14254) (value!146681 separatorToken!156)))))

(assert (= (and d!737099 c!418735) b!2601843))

(assert (= (and d!737099 (not c!418735)) b!2601844))

(assert (= (and b!2601844 c!418736) b!2601842))

(assert (= (and b!2601844 (not c!418736)) b!2601840))

(assert (= (and b!2601840 (not res!1096113)) b!2601841))

(declare-fun m!2936773 () Bool)

(assert (=> b!2601841 m!2936773))

(declare-fun m!2936775 () Bool)

(assert (=> b!2601842 m!2936775))

(declare-fun m!2936777 () Bool)

(assert (=> b!2601843 m!2936777))

(assert (=> b!2601619 d!737099))

(declare-fun d!737101 () Bool)

(declare-fun lt!915450 () Int)

(declare-fun size!23266 (List!30137) Int)

(assert (=> d!737101 (= lt!915450 (size!23266 (list!11265 v!6381)))))

(declare-fun size!23267 (Conc!9301) Int)

(assert (=> d!737101 (= lt!915450 (size!23267 (c!418710 v!6381)))))

(assert (=> d!737101 (= (size!23261 v!6381) lt!915450)))

(declare-fun bs!473253 () Bool)

(assert (= bs!473253 d!737101))

(assert (=> bs!473253 m!2936585))

(assert (=> bs!473253 m!2936585))

(declare-fun m!2936779 () Bool)

(assert (=> bs!473253 m!2936779))

(declare-fun m!2936781 () Bool)

(assert (=> bs!473253 m!2936781))

(assert (=> b!2601621 d!737101))

(declare-fun d!737103 () Bool)

(declare-fun lt!915453 () Bool)

(assert (=> d!737103 (= lt!915453 (forall!6201 (list!11265 v!6381) lambda!97372))))

(declare-fun forall!6203 (Conc!9301 Int) Bool)

(assert (=> d!737103 (= lt!915453 (forall!6203 (c!418710 v!6381) lambda!97372))))

(assert (=> d!737103 (= (forall!6200 v!6381 lambda!97372) lt!915453)))

(declare-fun bs!473254 () Bool)

(assert (= bs!473254 d!737103))

(assert (=> bs!473254 m!2936585))

(assert (=> bs!473254 m!2936585))

(declare-fun m!2936783 () Bool)

(assert (=> bs!473254 m!2936783))

(declare-fun m!2936785 () Bool)

(assert (=> bs!473254 m!2936785))

(assert (=> b!2601610 d!737103))

(declare-fun d!737105 () Bool)

(assert (=> d!737105 (= (inv!40599 (tag!5019 (h!35458 rules!1726))) (= (mod (str.len (value!146680 (tag!5019 (h!35458 rules!1726)))) 2) 0))))

(assert (=> b!2601620 d!737105))

(declare-fun d!737107 () Bool)

(declare-fun res!1096114 () Bool)

(declare-fun e!1642445 () Bool)

(assert (=> d!737107 (=> (not res!1096114) (not e!1642445))))

(assert (=> d!737107 (= res!1096114 (semiInverseModEq!1893 (toChars!6282 (transformation!4529 (h!35458 rules!1726))) (toValue!6423 (transformation!4529 (h!35458 rules!1726)))))))

(assert (=> d!737107 (= (inv!40606 (transformation!4529 (h!35458 rules!1726))) e!1642445)))

(declare-fun b!2601845 () Bool)

(assert (=> b!2601845 (= e!1642445 (equivClasses!1794 (toChars!6282 (transformation!4529 (h!35458 rules!1726))) (toValue!6423 (transformation!4529 (h!35458 rules!1726)))))))

(assert (= (and d!737107 res!1096114) b!2601845))

(declare-fun m!2936787 () Bool)

(assert (=> d!737107 m!2936787))

(declare-fun m!2936789 () Bool)

(assert (=> b!2601845 m!2936789))

(assert (=> b!2601620 d!737107))

(declare-fun b!2601850 () Bool)

(declare-fun e!1642448 () Bool)

(declare-fun tp_is_empty!13713 () Bool)

(declare-fun tp!824321 () Bool)

(assert (=> b!2601850 (= e!1642448 (and tp_is_empty!13713 tp!824321))))

(assert (=> b!2601619 (= tp!824268 e!1642448)))

(assert (= (and b!2601619 ((_ is Cons!30036) (originalCharacters!5295 separatorToken!156))) b!2601850))

(declare-fun b!2601861 () Bool)

(declare-fun e!1642451 () Bool)

(assert (=> b!2601861 (= e!1642451 tp_is_empty!13713)))

(declare-fun b!2601864 () Bool)

(declare-fun tp!824336 () Bool)

(declare-fun tp!824335 () Bool)

(assert (=> b!2601864 (= e!1642451 (and tp!824336 tp!824335))))

(declare-fun b!2601862 () Bool)

(declare-fun tp!824333 () Bool)

(declare-fun tp!824334 () Bool)

(assert (=> b!2601862 (= e!1642451 (and tp!824333 tp!824334))))

(assert (=> b!2601624 (= tp!824264 e!1642451)))

(declare-fun b!2601863 () Bool)

(declare-fun tp!824332 () Bool)

(assert (=> b!2601863 (= e!1642451 tp!824332)))

(assert (= (and b!2601624 ((_ is ElementMatch!7673) (regex!4529 (rule!6899 separatorToken!156)))) b!2601861))

(assert (= (and b!2601624 ((_ is Concat!12425) (regex!4529 (rule!6899 separatorToken!156)))) b!2601862))

(assert (= (and b!2601624 ((_ is Star!7673) (regex!4529 (rule!6899 separatorToken!156)))) b!2601863))

(assert (= (and b!2601624 ((_ is Union!7673) (regex!4529 (rule!6899 separatorToken!156)))) b!2601864))

(declare-fun b!2601875 () Bool)

(declare-fun b_free!73025 () Bool)

(declare-fun b_next!73729 () Bool)

(assert (=> b!2601875 (= b_free!73025 (not b_next!73729))))

(declare-fun tp!824348 () Bool)

(declare-fun b_and!190331 () Bool)

(assert (=> b!2601875 (= tp!824348 b_and!190331)))

(declare-fun b_free!73027 () Bool)

(declare-fun b_next!73731 () Bool)

(assert (=> b!2601875 (= b_free!73027 (not b_next!73731))))

(declare-fun tb!141537 () Bool)

(declare-fun t!213238 () Bool)

(assert (=> (and b!2601875 (= (toChars!6282 (transformation!4529 (h!35458 (t!213215 rules!1726)))) (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156)))) t!213238) tb!141537))

(declare-fun result!176142 () Bool)

(assert (= result!176142 result!176114))

(assert (=> b!2601631 t!213238))

(declare-fun b_and!190333 () Bool)

(declare-fun tp!824346 () Bool)

(assert (=> b!2601875 (= tp!824346 (and (=> t!213238 result!176142) b_and!190333))))

(declare-fun e!1642461 () Bool)

(assert (=> b!2601875 (= e!1642461 (and tp!824348 tp!824346))))

(declare-fun b!2601874 () Bool)

(declare-fun e!1642463 () Bool)

(declare-fun tp!824345 () Bool)

(assert (=> b!2601874 (= e!1642463 (and tp!824345 (inv!40599 (tag!5019 (h!35458 (t!213215 rules!1726)))) (inv!40606 (transformation!4529 (h!35458 (t!213215 rules!1726)))) e!1642461))))

(declare-fun b!2601873 () Bool)

(declare-fun e!1642462 () Bool)

(declare-fun tp!824347 () Bool)

(assert (=> b!2601873 (= e!1642462 (and e!1642463 tp!824347))))

(assert (=> b!2601616 (= tp!824263 e!1642462)))

(assert (= b!2601874 b!2601875))

(assert (= b!2601873 b!2601874))

(assert (= (and b!2601616 ((_ is Cons!30038) (t!213215 rules!1726))) b!2601873))

(declare-fun m!2936791 () Bool)

(assert (=> b!2601874 m!2936791))

(declare-fun m!2936793 () Bool)

(assert (=> b!2601874 m!2936793))

(declare-fun tp!824356 () Bool)

(declare-fun e!1642468 () Bool)

(declare-fun b!2601884 () Bool)

(declare-fun tp!824355 () Bool)

(assert (=> b!2601884 (= e!1642468 (and (inv!40607 (left!23101 (c!418710 v!6381))) tp!824355 (inv!40607 (right!23431 (c!418710 v!6381))) tp!824356))))

(declare-fun b!2601886 () Bool)

(declare-fun e!1642469 () Bool)

(declare-fun tp!824357 () Bool)

(assert (=> b!2601886 (= e!1642469 tp!824357)))

(declare-fun b!2601885 () Bool)

(declare-fun inv!40617 (IArray!18607) Bool)

(assert (=> b!2601885 (= e!1642468 (and (inv!40617 (xs!12285 (c!418710 v!6381))) e!1642469))))

(assert (=> b!2601625 (= tp!824266 (and (inv!40607 (c!418710 v!6381)) e!1642468))))

(assert (= (and b!2601625 ((_ is Node!9301) (c!418710 v!6381))) b!2601884))

(assert (= b!2601885 b!2601886))

(assert (= (and b!2601625 ((_ is Leaf!14306) (c!418710 v!6381))) b!2601885))

(declare-fun m!2936795 () Bool)

(assert (=> b!2601884 m!2936795))

(declare-fun m!2936797 () Bool)

(assert (=> b!2601884 m!2936797))

(declare-fun m!2936799 () Bool)

(assert (=> b!2601885 m!2936799))

(assert (=> b!2601625 m!2936565))

(declare-fun b!2601887 () Bool)

(declare-fun e!1642470 () Bool)

(assert (=> b!2601887 (= e!1642470 tp_is_empty!13713)))

(declare-fun b!2601890 () Bool)

(declare-fun tp!824362 () Bool)

(declare-fun tp!824361 () Bool)

(assert (=> b!2601890 (= e!1642470 (and tp!824362 tp!824361))))

(declare-fun b!2601888 () Bool)

(declare-fun tp!824359 () Bool)

(declare-fun tp!824360 () Bool)

(assert (=> b!2601888 (= e!1642470 (and tp!824359 tp!824360))))

(assert (=> b!2601620 (= tp!824265 e!1642470)))

(declare-fun b!2601889 () Bool)

(declare-fun tp!824358 () Bool)

(assert (=> b!2601889 (= e!1642470 tp!824358)))

(assert (= (and b!2601620 ((_ is ElementMatch!7673) (regex!4529 (h!35458 rules!1726)))) b!2601887))

(assert (= (and b!2601620 ((_ is Concat!12425) (regex!4529 (h!35458 rules!1726)))) b!2601888))

(assert (= (and b!2601620 ((_ is Star!7673) (regex!4529 (h!35458 rules!1726)))) b!2601889))

(assert (= (and b!2601620 ((_ is Union!7673) (regex!4529 (h!35458 rules!1726)))) b!2601890))

(declare-fun b_lambda!77955 () Bool)

(assert (= b_lambda!77943 (or (and b!2601617 b_free!73015) (and b!2601626 b_free!73019 (= (toChars!6282 (transformation!4529 (h!35458 rules!1726))) (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))))) (and b!2601875 b_free!73027 (= (toChars!6282 (transformation!4529 (h!35458 (t!213215 rules!1726)))) (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))))) b_lambda!77955)))

(declare-fun b_lambda!77957 () Bool)

(assert (= b_lambda!77945 (or b!2601610 b_lambda!77957)))

(declare-fun bs!473255 () Bool)

(declare-fun d!737109 () Bool)

(assert (= bs!473255 (and d!737109 b!2601610)))

(assert (=> bs!473255 (= (dynLambda!12706 lambda!97372 (h!35457 lt!915423)) (not (isSeparator!4529 (rule!6899 (h!35457 lt!915423)))))))

(assert (=> b!2601656 d!737109))

(check-sat (not b_lambda!77957) (not b_next!73721) (not d!737047) (not b!2601666) (not b!2601873) (not d!737029) b_and!190321 tp_is_empty!13713 (not b_next!73723) (not b!2601643) (not d!737107) (not b!2601829) (not b!2601888) (not b!2601625) (not b_next!73719) (not d!737101) b_and!190315 (not b!2601885) (not b!2601640) b_and!190319 (not d!737103) (not b!2601631) (not b!2601874) (not b_next!73717) (not b!2601637) (not b_next!73729) (not b!2601862) (not b!2601827) (not b!2601863) (not b!2601657) (not b!2601886) (not b!2601845) (not d!737095) (not b_lambda!77955) (not b!2601664) (not b!2601884) b_and!190331 b_and!190333 (not b!2601828) (not d!737033) (not b_next!73731) (not b!2601672) (not b!2601632) (not b!2601651) (not b!2601841) (not b!2601843) (not b!2601890) (not b!2601864) (not b!2601649) (not b!2601842) (not b!2601800) (not d!737039) (not b!2601770) (not b!2601850) (not d!737037) (not d!737055) (not d!737049) (not tb!141527) b_and!190311 (not b!2601671) (not b!2601889))
(check-sat (not b_next!73719) b_and!190315 (not b_next!73721) b_and!190319 b_and!190321 (not b_next!73731) (not b_next!73723) b_and!190311 (not b_next!73717) (not b_next!73729) b_and!190331 b_and!190333)
(get-model)

(declare-fun d!737111 () Bool)

(declare-fun lt!915456 () Bool)

(assert (=> d!737111 (= lt!915456 (isEmpty!17177 (list!11268 (_2!17408 lt!915446))))))

(declare-fun isEmpty!17179 (Conc!9300) Bool)

(assert (=> d!737111 (= lt!915456 (isEmpty!17179 (c!418709 (_2!17408 lt!915446))))))

(assert (=> d!737111 (= (isEmpty!17178 (_2!17408 lt!915446)) lt!915456)))

(declare-fun bs!473256 () Bool)

(assert (= bs!473256 d!737111))

(declare-fun m!2936801 () Bool)

(assert (=> bs!473256 m!2936801))

(assert (=> bs!473256 m!2936801))

(declare-fun m!2936803 () Bool)

(assert (=> bs!473256 m!2936803))

(declare-fun m!2936805 () Bool)

(assert (=> bs!473256 m!2936805))

(assert (=> b!2601828 d!737111))

(declare-fun lt!915457 () Bool)

(declare-fun d!737113 () Bool)

(assert (=> d!737113 (= lt!915457 (isEmpty!17177 (list!11268 (_2!17408 (lex!1870 thiss!14197 rules!1726 (print!1592 thiss!14197 (singletonSeq!2009 separatorToken!156)))))))))

(assert (=> d!737113 (= lt!915457 (isEmpty!17179 (c!418709 (_2!17408 (lex!1870 thiss!14197 rules!1726 (print!1592 thiss!14197 (singletonSeq!2009 separatorToken!156)))))))))

(assert (=> d!737113 (= (isEmpty!17178 (_2!17408 (lex!1870 thiss!14197 rules!1726 (print!1592 thiss!14197 (singletonSeq!2009 separatorToken!156))))) lt!915457)))

(declare-fun bs!473257 () Bool)

(assert (= bs!473257 d!737113))

(declare-fun m!2936807 () Bool)

(assert (=> bs!473257 m!2936807))

(assert (=> bs!473257 m!2936807))

(declare-fun m!2936809 () Bool)

(assert (=> bs!473257 m!2936809))

(declare-fun m!2936811 () Bool)

(assert (=> bs!473257 m!2936811))

(assert (=> b!2601829 d!737113))

(declare-fun b!2601909 () Bool)

(declare-fun e!1642483 () Bool)

(declare-fun lt!915464 () tuple2!29732)

(declare-fun isEmpty!17180 (BalanceConc!18216) Bool)

(assert (=> b!2601909 (= e!1642483 (not (isEmpty!17180 (_1!17408 lt!915464))))))

(declare-fun b!2601910 () Bool)

(declare-fun e!1642482 () Bool)

(declare-datatypes ((tuple2!29734 0))(
  ( (tuple2!29735 (_1!17409 List!30137) (_2!17409 List!30136)) )
))
(declare-fun lexList!1149 (LexerInterface!4126 List!30138 List!30136) tuple2!29734)

(assert (=> b!2601910 (= e!1642482 (= (list!11268 (_2!17408 lt!915464)) (_2!17409 (lexList!1149 thiss!14197 rules!1726 (list!11268 (print!1592 thiss!14197 (singletonSeq!2009 separatorToken!156)))))))))

(declare-fun e!1642484 () Bool)

(declare-fun b!2601911 () Bool)

(assert (=> b!2601911 (= e!1642484 (= (_2!17408 lt!915464) (print!1592 thiss!14197 (singletonSeq!2009 separatorToken!156))))))

(declare-fun b!2601912 () Bool)

(assert (=> b!2601912 (= e!1642484 e!1642483)))

(declare-fun res!1096136 () Bool)

(declare-fun size!23268 (BalanceConc!18214) Int)

(assert (=> b!2601912 (= res!1096136 (< (size!23268 (_2!17408 lt!915464)) (size!23268 (print!1592 thiss!14197 (singletonSeq!2009 separatorToken!156)))))))

(assert (=> b!2601912 (=> (not res!1096136) (not e!1642483))))

(declare-fun b!2601913 () Bool)

(declare-fun res!1096135 () Bool)

(assert (=> b!2601913 (=> (not res!1096135) (not e!1642482))))

(assert (=> b!2601913 (= res!1096135 (= (list!11265 (_1!17408 lt!915464)) (_1!17409 (lexList!1149 thiss!14197 rules!1726 (list!11268 (print!1592 thiss!14197 (singletonSeq!2009 separatorToken!156)))))))))

(declare-fun d!737115 () Bool)

(assert (=> d!737115 e!1642482))

(declare-fun res!1096134 () Bool)

(assert (=> d!737115 (=> (not res!1096134) (not e!1642482))))

(assert (=> d!737115 (= res!1096134 e!1642484)))

(declare-fun c!418740 () Bool)

(assert (=> d!737115 (= c!418740 (> (size!23261 (_1!17408 lt!915464)) 0))))

(declare-fun lexTailRecV2!824 (LexerInterface!4126 List!30138 BalanceConc!18214 BalanceConc!18214 BalanceConc!18214 BalanceConc!18216) tuple2!29732)

(assert (=> d!737115 (= lt!915464 (lexTailRecV2!824 thiss!14197 rules!1726 (print!1592 thiss!14197 (singletonSeq!2009 separatorToken!156)) (BalanceConc!18215 Empty!9300) (print!1592 thiss!14197 (singletonSeq!2009 separatorToken!156)) (BalanceConc!18217 Empty!9301)))))

(assert (=> d!737115 (= (lex!1870 thiss!14197 rules!1726 (print!1592 thiss!14197 (singletonSeq!2009 separatorToken!156))) lt!915464)))

(assert (= (and d!737115 c!418740) b!2601912))

(assert (= (and d!737115 (not c!418740)) b!2601911))

(assert (= (and b!2601912 res!1096136) b!2601909))

(assert (= (and d!737115 res!1096134) b!2601913))

(assert (= (and b!2601913 res!1096135) b!2601910))

(declare-fun m!2936833 () Bool)

(assert (=> b!2601909 m!2936833))

(declare-fun m!2936835 () Bool)

(assert (=> b!2601912 m!2936835))

(assert (=> b!2601912 m!2936759))

(declare-fun m!2936837 () Bool)

(assert (=> b!2601912 m!2936837))

(declare-fun m!2936839 () Bool)

(assert (=> d!737115 m!2936839))

(assert (=> d!737115 m!2936759))

(assert (=> d!737115 m!2936759))

(declare-fun m!2936841 () Bool)

(assert (=> d!737115 m!2936841))

(declare-fun m!2936843 () Bool)

(assert (=> b!2601913 m!2936843))

(assert (=> b!2601913 m!2936759))

(declare-fun m!2936845 () Bool)

(assert (=> b!2601913 m!2936845))

(assert (=> b!2601913 m!2936845))

(declare-fun m!2936847 () Bool)

(assert (=> b!2601913 m!2936847))

(declare-fun m!2936849 () Bool)

(assert (=> b!2601910 m!2936849))

(assert (=> b!2601910 m!2936759))

(assert (=> b!2601910 m!2936845))

(assert (=> b!2601910 m!2936845))

(assert (=> b!2601910 m!2936847))

(assert (=> b!2601829 d!737115))

(declare-fun d!737127 () Bool)

(declare-fun lt!915467 () BalanceConc!18214)

(declare-fun printList!1133 (LexerInterface!4126 List!30137) List!30136)

(assert (=> d!737127 (= (list!11268 lt!915467) (printList!1133 thiss!14197 (list!11265 (singletonSeq!2009 separatorToken!156))))))

(declare-fun printTailRec!1084 (LexerInterface!4126 BalanceConc!18216 Int BalanceConc!18214) BalanceConc!18214)

(assert (=> d!737127 (= lt!915467 (printTailRec!1084 thiss!14197 (singletonSeq!2009 separatorToken!156) 0 (BalanceConc!18215 Empty!9300)))))

(assert (=> d!737127 (= (print!1592 thiss!14197 (singletonSeq!2009 separatorToken!156)) lt!915467)))

(declare-fun bs!473260 () Bool)

(assert (= bs!473260 d!737127))

(declare-fun m!2936851 () Bool)

(assert (=> bs!473260 m!2936851))

(assert (=> bs!473260 m!2936763))

(assert (=> bs!473260 m!2936765))

(assert (=> bs!473260 m!2936765))

(declare-fun m!2936853 () Bool)

(assert (=> bs!473260 m!2936853))

(assert (=> bs!473260 m!2936763))

(declare-fun m!2936855 () Bool)

(assert (=> bs!473260 m!2936855))

(assert (=> b!2601829 d!737127))

(declare-fun d!737129 () Bool)

(declare-fun e!1642487 () Bool)

(assert (=> d!737129 e!1642487))

(declare-fun res!1096139 () Bool)

(assert (=> d!737129 (=> (not res!1096139) (not e!1642487))))

(declare-fun lt!915470 () BalanceConc!18216)

(assert (=> d!737129 (= res!1096139 (= (list!11265 lt!915470) (Cons!30037 separatorToken!156 Nil!30037)))))

(declare-fun singleton!897 (Token!8528) BalanceConc!18216)

(assert (=> d!737129 (= lt!915470 (singleton!897 separatorToken!156))))

(assert (=> d!737129 (= (singletonSeq!2009 separatorToken!156) lt!915470)))

(declare-fun b!2601916 () Bool)

(assert (=> b!2601916 (= e!1642487 (isBalanced!2837 (c!418710 lt!915470)))))

(assert (= (and d!737129 res!1096139) b!2601916))

(declare-fun m!2936857 () Bool)

(assert (=> d!737129 m!2936857))

(declare-fun m!2936859 () Bool)

(assert (=> d!737129 m!2936859))

(declare-fun m!2936861 () Bool)

(assert (=> b!2601916 m!2936861))

(assert (=> b!2601829 d!737129))

(declare-fun d!737131 () Bool)

(declare-fun lt!915473 () Int)

(assert (=> d!737131 (>= lt!915473 0)))

(declare-fun e!1642490 () Int)

(assert (=> d!737131 (= lt!915473 e!1642490)))

(declare-fun c!418743 () Bool)

(assert (=> d!737131 (= c!418743 ((_ is Nil!30037) (list!11265 v!6381)))))

(assert (=> d!737131 (= (size!23266 (list!11265 v!6381)) lt!915473)))

(declare-fun b!2601921 () Bool)

(assert (=> b!2601921 (= e!1642490 0)))

(declare-fun b!2601922 () Bool)

(assert (=> b!2601922 (= e!1642490 (+ 1 (size!23266 (t!213214 (list!11265 v!6381)))))))

(assert (= (and d!737131 c!418743) b!2601921))

(assert (= (and d!737131 (not c!418743)) b!2601922))

(declare-fun m!2936863 () Bool)

(assert (=> b!2601922 m!2936863))

(assert (=> d!737101 d!737131))

(assert (=> d!737101 d!737049))

(declare-fun d!737133 () Bool)

(declare-fun lt!915476 () Int)

(assert (=> d!737133 (= lt!915476 (size!23266 (list!11269 (c!418710 v!6381))))))

(assert (=> d!737133 (= lt!915476 (ite ((_ is Empty!9301) (c!418710 v!6381)) 0 (ite ((_ is Leaf!14306) (c!418710 v!6381)) (csize!18833 (c!418710 v!6381)) (csize!18832 (c!418710 v!6381)))))))

(assert (=> d!737133 (= (size!23267 (c!418710 v!6381)) lt!915476)))

(declare-fun bs!473261 () Bool)

(assert (= bs!473261 d!737133))

(assert (=> bs!473261 m!2936639))

(assert (=> bs!473261 m!2936639))

(declare-fun m!2936865 () Bool)

(assert (=> bs!473261 m!2936865))

(assert (=> d!737101 d!737133))

(declare-fun d!737135 () Bool)

(assert (=> d!737135 (= (inv!40599 (tag!5019 (h!35458 (t!213215 rules!1726)))) (= (mod (str.len (value!146680 (tag!5019 (h!35458 (t!213215 rules!1726))))) 2) 0))))

(assert (=> b!2601874 d!737135))

(declare-fun d!737137 () Bool)

(declare-fun res!1096140 () Bool)

(declare-fun e!1642491 () Bool)

(assert (=> d!737137 (=> (not res!1096140) (not e!1642491))))

(assert (=> d!737137 (= res!1096140 (semiInverseModEq!1893 (toChars!6282 (transformation!4529 (h!35458 (t!213215 rules!1726)))) (toValue!6423 (transformation!4529 (h!35458 (t!213215 rules!1726))))))))

(assert (=> d!737137 (= (inv!40606 (transformation!4529 (h!35458 (t!213215 rules!1726)))) e!1642491)))

(declare-fun b!2601923 () Bool)

(assert (=> b!2601923 (= e!1642491 (equivClasses!1794 (toChars!6282 (transformation!4529 (h!35458 (t!213215 rules!1726)))) (toValue!6423 (transformation!4529 (h!35458 (t!213215 rules!1726))))))))

(assert (= (and d!737137 res!1096140) b!2601923))

(declare-fun m!2936867 () Bool)

(assert (=> d!737137 m!2936867))

(declare-fun m!2936869 () Bool)

(assert (=> b!2601923 m!2936869))

(assert (=> b!2601874 d!737137))

(declare-fun d!737139 () Bool)

(assert (=> d!737139 true))

(declare-fun lt!915479 () Bool)

(declare-fun rulesValidInductive!1596 (LexerInterface!4126 List!30138) Bool)

(assert (=> d!737139 (= lt!915479 (rulesValidInductive!1596 thiss!14197 rules!1726))))

(declare-fun lambda!97385 () Int)

(declare-fun forall!6204 (List!30138 Int) Bool)

(assert (=> d!737139 (= lt!915479 (forall!6204 rules!1726 lambda!97385))))

(assert (=> d!737139 (= (rulesValid!1698 thiss!14197 rules!1726) lt!915479)))

(declare-fun bs!473262 () Bool)

(assert (= bs!473262 d!737139))

(declare-fun m!2936871 () Bool)

(assert (=> bs!473262 m!2936871))

(declare-fun m!2936873 () Bool)

(assert (=> bs!473262 m!2936873))

(assert (=> d!737039 d!737139))

(declare-fun d!737141 () Bool)

(declare-fun res!1096141 () Bool)

(declare-fun e!1642492 () Bool)

(assert (=> d!737141 (=> res!1096141 e!1642492)))

(assert (=> d!737141 (= res!1096141 (not ((_ is Cons!30038) (t!213215 rules!1726))))))

(assert (=> d!737141 (= (sepAndNonSepRulesDisjointChars!1102 rules!1726 (t!213215 rules!1726)) e!1642492)))

(declare-fun b!2601926 () Bool)

(declare-fun e!1642493 () Bool)

(assert (=> b!2601926 (= e!1642492 e!1642493)))

(declare-fun res!1096142 () Bool)

(assert (=> b!2601926 (=> (not res!1096142) (not e!1642493))))

(assert (=> b!2601926 (= res!1096142 (ruleDisjointCharsFromAllFromOtherType!500 (h!35458 (t!213215 rules!1726)) rules!1726))))

(declare-fun b!2601927 () Bool)

(assert (=> b!2601927 (= e!1642493 (sepAndNonSepRulesDisjointChars!1102 rules!1726 (t!213215 (t!213215 rules!1726))))))

(assert (= (and d!737141 (not res!1096141)) b!2601926))

(assert (= (and b!2601926 res!1096142) b!2601927))

(declare-fun m!2936875 () Bool)

(assert (=> b!2601926 m!2936875))

(declare-fun m!2936877 () Bool)

(assert (=> b!2601927 m!2936877))

(assert (=> b!2601672 d!737141))

(assert (=> b!2601625 d!737051))

(declare-fun bm!167424 () Bool)

(declare-fun call!167429 () Bool)

(assert (=> bm!167424 (= call!167429 (ruleDisjointCharsFromAllFromOtherType!500 (h!35458 rules!1726) (t!213215 rules!1726)))))

(declare-fun b!2601946 () Bool)

(declare-fun e!1642506 () Bool)

(assert (=> b!2601946 (= e!1642506 call!167429)))

(declare-fun b!2601947 () Bool)

(declare-fun e!1642508 () Bool)

(assert (=> b!2601947 (= e!1642508 e!1642506)))

(declare-fun res!1096154 () Bool)

(assert (=> b!2601947 (= res!1096154 (not ((_ is Cons!30038) rules!1726)))))

(assert (=> b!2601947 (=> res!1096154 e!1642506)))

(declare-fun b!2601948 () Bool)

(declare-fun e!1642507 () Bool)

(assert (=> b!2601948 (= e!1642507 call!167429)))

(declare-fun d!737143 () Bool)

(declare-fun c!418749 () Bool)

(assert (=> d!737143 (= c!418749 (and ((_ is Cons!30038) rules!1726) (not (= (isSeparator!4529 (h!35458 rules!1726)) (isSeparator!4529 (h!35458 rules!1726))))))))

(assert (=> d!737143 (= (ruleDisjointCharsFromAllFromOtherType!500 (h!35458 rules!1726) rules!1726) e!1642508)))

(declare-fun b!2601949 () Bool)

(assert (=> b!2601949 (= e!1642508 e!1642507)))

(declare-fun res!1096153 () Bool)

(declare-fun rulesUseDisjointChars!229 (Rule!8858 Rule!8858) Bool)

(assert (=> b!2601949 (= res!1096153 (rulesUseDisjointChars!229 (h!35458 rules!1726) (h!35458 rules!1726)))))

(assert (=> b!2601949 (=> (not res!1096153) (not e!1642507))))

(assert (= (and d!737143 c!418749) b!2601949))

(assert (= (and d!737143 (not c!418749)) b!2601947))

(assert (= (and b!2601949 res!1096153) b!2601948))

(assert (= (and b!2601947 (not res!1096154)) b!2601946))

(assert (= (or b!2601948 b!2601946) bm!167424))

(declare-fun m!2936879 () Bool)

(assert (=> bm!167424 m!2936879))

(declare-fun m!2936881 () Bool)

(assert (=> b!2601949 m!2936881))

(assert (=> b!2601671 d!737143))

(declare-fun d!737145 () Bool)

(declare-fun lt!915482 () Int)

(assert (=> d!737145 (= lt!915482 (size!23266 (list!11265 (_1!17408 lt!915446))))))

(assert (=> d!737145 (= lt!915482 (size!23267 (c!418710 (_1!17408 lt!915446))))))

(assert (=> d!737145 (= (size!23261 (_1!17408 lt!915446)) lt!915482)))

(declare-fun bs!473263 () Bool)

(assert (= bs!473263 d!737145))

(declare-fun m!2936883 () Bool)

(assert (=> bs!473263 m!2936883))

(assert (=> bs!473263 m!2936883))

(declare-fun m!2936885 () Bool)

(assert (=> bs!473263 m!2936885))

(declare-fun m!2936887 () Bool)

(assert (=> bs!473263 m!2936887))

(assert (=> d!737095 d!737145))

(assert (=> d!737095 d!737129))

(assert (=> d!737095 d!737127))

(declare-fun d!737147 () Bool)

(assert (=> d!737147 (= (list!11265 (singletonSeq!2009 separatorToken!156)) (list!11269 (c!418710 (singletonSeq!2009 separatorToken!156))))))

(declare-fun bs!473264 () Bool)

(assert (= bs!473264 d!737147))

(declare-fun m!2936889 () Bool)

(assert (=> bs!473264 m!2936889))

(assert (=> d!737095 d!737147))

(assert (=> d!737095 d!737027))

(assert (=> d!737095 d!737115))

(declare-fun d!737149 () Bool)

(assert (=> d!737149 (= (list!11265 (_1!17408 (lex!1870 thiss!14197 rules!1726 (print!1592 thiss!14197 (singletonSeq!2009 separatorToken!156))))) (list!11269 (c!418710 (_1!17408 (lex!1870 thiss!14197 rules!1726 (print!1592 thiss!14197 (singletonSeq!2009 separatorToken!156)))))))))

(declare-fun bs!473265 () Bool)

(assert (= bs!473265 d!737149))

(declare-fun m!2936891 () Bool)

(assert (=> bs!473265 m!2936891))

(assert (=> d!737095 d!737149))

(declare-fun d!737151 () Bool)

(declare-fun c!418750 () Bool)

(assert (=> d!737151 (= c!418750 ((_ is Nil!30037) (t!213214 lt!915422)))))

(declare-fun e!1642509 () (InoxSet Token!8528))

(assert (=> d!737151 (= (content!4267 (t!213214 lt!915422)) e!1642509)))

(declare-fun b!2601950 () Bool)

(assert (=> b!2601950 (= e!1642509 ((as const (Array Token!8528 Bool)) false))))

(declare-fun b!2601951 () Bool)

(assert (=> b!2601951 (= e!1642509 ((_ map or) (store ((as const (Array Token!8528 Bool)) false) (h!35457 (t!213214 lt!915422)) true) (content!4267 (t!213214 (t!213214 lt!915422)))))))

(assert (= (and d!737151 c!418750) b!2601950))

(assert (= (and d!737151 (not c!418750)) b!2601951))

(declare-fun m!2936893 () Bool)

(assert (=> b!2601951 m!2936893))

(declare-fun m!2936895 () Bool)

(assert (=> b!2601951 m!2936895))

(assert (=> b!2601649 d!737151))

(declare-fun d!737153 () Bool)

(declare-fun res!1096164 () Bool)

(declare-fun e!1642515 () Bool)

(assert (=> d!737153 (=> (not res!1096164) (not e!1642515))))

(assert (=> d!737153 (= res!1096164 (= (csize!18832 (c!418710 v!6381)) (+ (size!23267 (left!23101 (c!418710 v!6381))) (size!23267 (right!23431 (c!418710 v!6381))))))))

(assert (=> d!737153 (= (inv!40615 (c!418710 v!6381)) e!1642515)))

(declare-fun b!2601963 () Bool)

(declare-fun res!1096165 () Bool)

(assert (=> b!2601963 (=> (not res!1096165) (not e!1642515))))

(assert (=> b!2601963 (= res!1096165 (and (not (= (left!23101 (c!418710 v!6381)) Empty!9301)) (not (= (right!23431 (c!418710 v!6381)) Empty!9301))))))

(declare-fun b!2601964 () Bool)

(declare-fun res!1096166 () Bool)

(assert (=> b!2601964 (=> (not res!1096166) (not e!1642515))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1349 (Conc!9301) Int)

(assert (=> b!2601964 (= res!1096166 (= (cheight!9512 (c!418710 v!6381)) (+ (max!0 (height!1349 (left!23101 (c!418710 v!6381))) (height!1349 (right!23431 (c!418710 v!6381)))) 1)))))

(declare-fun b!2601965 () Bool)

(assert (=> b!2601965 (= e!1642515 (<= 0 (cheight!9512 (c!418710 v!6381))))))

(assert (= (and d!737153 res!1096164) b!2601963))

(assert (= (and b!2601963 res!1096165) b!2601964))

(assert (= (and b!2601964 res!1096166) b!2601965))

(declare-fun m!2936915 () Bool)

(assert (=> d!737153 m!2936915))

(declare-fun m!2936917 () Bool)

(assert (=> d!737153 m!2936917))

(declare-fun m!2936919 () Bool)

(assert (=> b!2601964 m!2936919))

(declare-fun m!2936921 () Bool)

(assert (=> b!2601964 m!2936921))

(assert (=> b!2601964 m!2936919))

(assert (=> b!2601964 m!2936921))

(declare-fun m!2936923 () Bool)

(assert (=> b!2601964 m!2936923))

(assert (=> b!2601664 d!737153))

(declare-fun d!737157 () Bool)

(declare-fun isBalanced!2838 (Conc!9300) Bool)

(assert (=> d!737157 (= (inv!40614 (dynLambda!12705 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (value!146681 separatorToken!156))) (isBalanced!2838 (c!418709 (dynLambda!12705 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (value!146681 separatorToken!156)))))))

(declare-fun bs!473266 () Bool)

(assert (= bs!473266 d!737157))

(declare-fun m!2936925 () Bool)

(assert (=> bs!473266 m!2936925))

(assert (=> tb!141527 d!737157))

(declare-fun d!737159 () Bool)

(declare-fun res!1096171 () Bool)

(declare-fun e!1642520 () Bool)

(assert (=> d!737159 (=> res!1096171 e!1642520)))

(assert (=> d!737159 (= res!1096171 ((_ is Nil!30038) rules!1726))))

(assert (=> d!737159 (= (noDuplicateTag!1694 thiss!14197 rules!1726 Nil!30040) e!1642520)))

(declare-fun b!2601970 () Bool)

(declare-fun e!1642521 () Bool)

(assert (=> b!2601970 (= e!1642520 e!1642521)))

(declare-fun res!1096172 () Bool)

(assert (=> b!2601970 (=> (not res!1096172) (not e!1642521))))

(declare-fun contains!5558 (List!30140 String!33639) Bool)

(assert (=> b!2601970 (= res!1096172 (not (contains!5558 Nil!30040 (tag!5019 (h!35458 rules!1726)))))))

(declare-fun b!2601971 () Bool)

(assert (=> b!2601971 (= e!1642521 (noDuplicateTag!1694 thiss!14197 (t!213215 rules!1726) (Cons!30040 (tag!5019 (h!35458 rules!1726)) Nil!30040)))))

(assert (= (and d!737159 (not res!1096171)) b!2601970))

(assert (= (and b!2601970 res!1096172) b!2601971))

(declare-fun m!2936927 () Bool)

(assert (=> b!2601970 m!2936927))

(declare-fun m!2936929 () Bool)

(assert (=> b!2601971 m!2936929))

(assert (=> b!2601643 d!737159))

(declare-fun d!737161 () Bool)

(declare-fun res!1096191 () Bool)

(declare-fun e!1642529 () Bool)

(assert (=> d!737161 (=> res!1096191 e!1642529)))

(assert (=> d!737161 (= res!1096191 (not ((_ is Node!9301) (c!418710 v!6381))))))

(assert (=> d!737161 (= (isBalanced!2837 (c!418710 v!6381)) e!1642529)))

(declare-fun b!2601986 () Bool)

(declare-fun e!1642528 () Bool)

(assert (=> b!2601986 (= e!1642529 e!1642528)))

(declare-fun res!1096187 () Bool)

(assert (=> b!2601986 (=> (not res!1096187) (not e!1642528))))

(assert (=> b!2601986 (= res!1096187 (<= (- 1) (- (height!1349 (left!23101 (c!418710 v!6381))) (height!1349 (right!23431 (c!418710 v!6381))))))))

(declare-fun b!2601987 () Bool)

(declare-fun isEmpty!17183 (Conc!9301) Bool)

(assert (=> b!2601987 (= e!1642528 (not (isEmpty!17183 (right!23431 (c!418710 v!6381)))))))

(declare-fun b!2601988 () Bool)

(declare-fun res!1096189 () Bool)

(assert (=> b!2601988 (=> (not res!1096189) (not e!1642528))))

(assert (=> b!2601988 (= res!1096189 (<= (- (height!1349 (left!23101 (c!418710 v!6381))) (height!1349 (right!23431 (c!418710 v!6381)))) 1))))

(declare-fun b!2601989 () Bool)

(declare-fun res!1096192 () Bool)

(assert (=> b!2601989 (=> (not res!1096192) (not e!1642528))))

(assert (=> b!2601989 (= res!1096192 (not (isEmpty!17183 (left!23101 (c!418710 v!6381)))))))

(declare-fun b!2601990 () Bool)

(declare-fun res!1096190 () Bool)

(assert (=> b!2601990 (=> (not res!1096190) (not e!1642528))))

(assert (=> b!2601990 (= res!1096190 (isBalanced!2837 (right!23431 (c!418710 v!6381))))))

(declare-fun b!2601991 () Bool)

(declare-fun res!1096188 () Bool)

(assert (=> b!2601991 (=> (not res!1096188) (not e!1642528))))

(assert (=> b!2601991 (= res!1096188 (isBalanced!2837 (left!23101 (c!418710 v!6381))))))

(assert (= (and d!737161 (not res!1096191)) b!2601986))

(assert (= (and b!2601986 res!1096187) b!2601988))

(assert (= (and b!2601988 res!1096189) b!2601991))

(assert (= (and b!2601991 res!1096188) b!2601990))

(assert (= (and b!2601990 res!1096190) b!2601989))

(assert (= (and b!2601989 res!1096192) b!2601987))

(assert (=> b!2601988 m!2936919))

(assert (=> b!2601988 m!2936921))

(declare-fun m!2936937 () Bool)

(assert (=> b!2601987 m!2936937))

(declare-fun m!2936939 () Bool)

(assert (=> b!2601991 m!2936939))

(declare-fun m!2936941 () Bool)

(assert (=> b!2601990 m!2936941))

(assert (=> b!2601986 m!2936919))

(assert (=> b!2601986 m!2936921))

(declare-fun m!2936945 () Bool)

(assert (=> b!2601989 m!2936945))

(assert (=> d!737033 d!737161))

(declare-fun d!737165 () Bool)

(assert (=> d!737165 true))

(declare-fun order!15937 () Int)

(declare-fun lambda!97388 () Int)

(declare-fun dynLambda!12710 (Int Int) Int)

(assert (=> d!737165 (< (dynLambda!12707 order!15931 (toValue!6423 (transformation!4529 (rule!6899 separatorToken!156)))) (dynLambda!12710 order!15937 lambda!97388))))

(declare-fun Forall2!768 (Int) Bool)

(assert (=> d!737165 (= (equivClasses!1794 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (toValue!6423 (transformation!4529 (rule!6899 separatorToken!156)))) (Forall2!768 lambda!97388))))

(declare-fun bs!473268 () Bool)

(assert (= bs!473268 d!737165))

(declare-fun m!2936957 () Bool)

(assert (=> bs!473268 m!2936957))

(assert (=> b!2601640 d!737165))

(declare-fun d!737169 () Bool)

(declare-fun lt!915494 () Token!8528)

(declare-fun apply!7034 (List!30137 Int) Token!8528)

(assert (=> d!737169 (= lt!915494 (apply!7034 (list!11265 (_1!17408 lt!915446)) 0))))

(declare-fun apply!7035 (Conc!9301 Int) Token!8528)

(assert (=> d!737169 (= lt!915494 (apply!7035 (c!418710 (_1!17408 lt!915446)) 0))))

(declare-fun e!1642541 () Bool)

(assert (=> d!737169 e!1642541))

(declare-fun res!1096209 () Bool)

(assert (=> d!737169 (=> (not res!1096209) (not e!1642541))))

(assert (=> d!737169 (= res!1096209 (<= 0 0))))

(assert (=> d!737169 (= (apply!7031 (_1!17408 lt!915446) 0) lt!915494)))

(declare-fun b!2602012 () Bool)

(assert (=> b!2602012 (= e!1642541 (< 0 (size!23261 (_1!17408 lt!915446))))))

(assert (= (and d!737169 res!1096209) b!2602012))

(assert (=> d!737169 m!2936883))

(assert (=> d!737169 m!2936883))

(declare-fun m!2936967 () Bool)

(assert (=> d!737169 m!2936967))

(declare-fun m!2936969 () Bool)

(assert (=> d!737169 m!2936969))

(assert (=> b!2602012 m!2936755))

(assert (=> b!2601827 d!737169))

(declare-fun b!2602046 () Bool)

(declare-fun e!1642567 () List!30137)

(assert (=> b!2602046 (= e!1642567 (list!11269 (c!418710 v!6381)))))

(declare-fun b!2602047 () Bool)

(declare-fun e!1642568 () List!30137)

(assert (=> b!2602047 (= e!1642568 e!1642567)))

(declare-fun c!418767 () Bool)

(assert (=> b!2602047 (= c!418767 (<= from!862 0))))

(declare-fun b!2602048 () Bool)

(declare-fun e!1642565 () Int)

(declare-fun e!1642564 () Int)

(assert (=> b!2602048 (= e!1642565 e!1642564)))

(declare-fun c!418764 () Bool)

(declare-fun call!167435 () Int)

(assert (=> b!2602048 (= c!418764 (>= from!862 call!167435))))

(declare-fun b!2602049 () Bool)

(assert (=> b!2602049 (= e!1642567 (drop!1531 (t!213214 (list!11269 (c!418710 v!6381))) (- from!862 1)))))

(declare-fun d!737175 () Bool)

(declare-fun e!1642566 () Bool)

(assert (=> d!737175 e!1642566))

(declare-fun res!1096221 () Bool)

(assert (=> d!737175 (=> (not res!1096221) (not e!1642566))))

(declare-fun lt!915498 () List!30137)

(assert (=> d!737175 (= res!1096221 (= ((_ map implies) (content!4267 lt!915498) (content!4267 (list!11269 (c!418710 v!6381)))) ((as const (InoxSet Token!8528)) true)))))

(assert (=> d!737175 (= lt!915498 e!1642568)))

(declare-fun c!418766 () Bool)

(assert (=> d!737175 (= c!418766 ((_ is Nil!30037) (list!11269 (c!418710 v!6381))))))

(assert (=> d!737175 (= (drop!1531 (list!11269 (c!418710 v!6381)) from!862) lt!915498)))

(declare-fun b!2602050 () Bool)

(assert (=> b!2602050 (= e!1642564 0)))

(declare-fun b!2602051 () Bool)

(assert (=> b!2602051 (= e!1642568 Nil!30037)))

(declare-fun bm!167430 () Bool)

(assert (=> bm!167430 (= call!167435 (size!23266 (list!11269 (c!418710 v!6381))))))

(declare-fun b!2602052 () Bool)

(assert (=> b!2602052 (= e!1642566 (= (size!23266 lt!915498) e!1642565))))

(declare-fun c!418765 () Bool)

(assert (=> b!2602052 (= c!418765 (<= from!862 0))))

(declare-fun b!2602053 () Bool)

(assert (=> b!2602053 (= e!1642564 (- call!167435 from!862))))

(declare-fun b!2602054 () Bool)

(assert (=> b!2602054 (= e!1642565 call!167435)))

(assert (= (and d!737175 c!418766) b!2602051))

(assert (= (and d!737175 (not c!418766)) b!2602047))

(assert (= (and b!2602047 c!418767) b!2602046))

(assert (= (and b!2602047 (not c!418767)) b!2602049))

(assert (= (and d!737175 res!1096221) b!2602052))

(assert (= (and b!2602052 c!418765) b!2602054))

(assert (= (and b!2602052 (not c!418765)) b!2602048))

(assert (= (and b!2602048 c!418764) b!2602050))

(assert (= (and b!2602048 (not c!418764)) b!2602053))

(assert (= (or b!2602054 b!2602048 b!2602053) bm!167430))

(declare-fun m!2936985 () Bool)

(assert (=> b!2602049 m!2936985))

(declare-fun m!2936987 () Bool)

(assert (=> d!737175 m!2936987))

(assert (=> d!737175 m!2936639))

(declare-fun m!2936989 () Bool)

(assert (=> d!737175 m!2936989))

(assert (=> bm!167430 m!2936639))

(assert (=> bm!167430 m!2936865))

(declare-fun m!2936991 () Bool)

(assert (=> b!2602052 m!2936991))

(assert (=> d!737047 d!737175))

(declare-fun b!2602073 () Bool)

(declare-fun e!1642580 () List!30137)

(declare-fun list!11271 (IArray!18607) List!30137)

(assert (=> b!2602073 (= e!1642580 (list!11271 (xs!12285 (c!418710 v!6381))))))

(declare-fun b!2602072 () Bool)

(declare-fun e!1642579 () List!30137)

(assert (=> b!2602072 (= e!1642579 e!1642580)))

(declare-fun c!418775 () Bool)

(assert (=> b!2602072 (= c!418775 ((_ is Leaf!14306) (c!418710 v!6381)))))

(declare-fun b!2602074 () Bool)

(declare-fun ++!7314 (List!30137 List!30137) List!30137)

(assert (=> b!2602074 (= e!1642580 (++!7314 (list!11269 (left!23101 (c!418710 v!6381))) (list!11269 (right!23431 (c!418710 v!6381)))))))

(declare-fun b!2602071 () Bool)

(assert (=> b!2602071 (= e!1642579 Nil!30037)))

(declare-fun d!737183 () Bool)

(declare-fun c!418774 () Bool)

(assert (=> d!737183 (= c!418774 ((_ is Empty!9301) (c!418710 v!6381)))))

(assert (=> d!737183 (= (list!11269 (c!418710 v!6381)) e!1642579)))

(assert (= (and d!737183 c!418774) b!2602071))

(assert (= (and d!737183 (not c!418774)) b!2602072))

(assert (= (and b!2602072 c!418775) b!2602073))

(assert (= (and b!2602072 (not c!418775)) b!2602074))

(declare-fun m!2936993 () Bool)

(assert (=> b!2602073 m!2936993))

(declare-fun m!2936995 () Bool)

(assert (=> b!2602074 m!2936995))

(declare-fun m!2936997 () Bool)

(assert (=> b!2602074 m!2936997))

(assert (=> b!2602074 m!2936995))

(assert (=> b!2602074 m!2936997))

(declare-fun m!2936999 () Bool)

(assert (=> b!2602074 m!2936999))

(assert (=> d!737047 d!737183))

(declare-fun d!737185 () Bool)

(declare-fun res!1096232 () Bool)

(declare-fun e!1642586 () Bool)

(assert (=> d!737185 (=> (not res!1096232) (not e!1642586))))

(assert (=> d!737185 (= res!1096232 (<= (size!23266 (list!11271 (xs!12285 (c!418710 v!6381)))) 512))))

(assert (=> d!737185 (= (inv!40616 (c!418710 v!6381)) e!1642586)))

(declare-fun b!2602083 () Bool)

(declare-fun res!1096233 () Bool)

(assert (=> b!2602083 (=> (not res!1096233) (not e!1642586))))

(assert (=> b!2602083 (= res!1096233 (= (csize!18833 (c!418710 v!6381)) (size!23266 (list!11271 (xs!12285 (c!418710 v!6381))))))))

(declare-fun b!2602084 () Bool)

(assert (=> b!2602084 (= e!1642586 (and (> (csize!18833 (c!418710 v!6381)) 0) (<= (csize!18833 (c!418710 v!6381)) 512)))))

(assert (= (and d!737185 res!1096232) b!2602083))

(assert (= (and b!2602083 res!1096233) b!2602084))

(assert (=> d!737185 m!2936993))

(assert (=> d!737185 m!2936993))

(declare-fun m!2937015 () Bool)

(assert (=> d!737185 m!2937015))

(assert (=> b!2602083 m!2936993))

(assert (=> b!2602083 m!2936993))

(assert (=> b!2602083 m!2937015))

(assert (=> b!2601666 d!737185))

(declare-fun d!737189 () Bool)

(declare-fun lt!915507 () Int)

(assert (=> d!737189 (>= lt!915507 0)))

(declare-fun e!1642595 () Int)

(assert (=> d!737189 (= lt!915507 e!1642595)))

(declare-fun c!418779 () Bool)

(assert (=> d!737189 (= c!418779 ((_ is Nil!30036) (originalCharacters!5295 separatorToken!156)))))

(assert (=> d!737189 (= (size!23265 (originalCharacters!5295 separatorToken!156)) lt!915507)))

(declare-fun b!2602095 () Bool)

(assert (=> b!2602095 (= e!1642595 0)))

(declare-fun b!2602096 () Bool)

(assert (=> b!2602096 (= e!1642595 (+ 1 (size!23265 (t!213213 (originalCharacters!5295 separatorToken!156)))))))

(assert (= (and d!737189 c!418779) b!2602095))

(assert (= (and d!737189 (not c!418779)) b!2602096))

(declare-fun m!2937017 () Bool)

(assert (=> b!2602096 m!2937017))

(assert (=> b!2601632 d!737189))

(declare-fun d!737191 () Bool)

(declare-fun charsToBigInt!1 (List!30135) Int)

(assert (=> d!737191 (= (inv!17 (value!146681 separatorToken!156)) (= (charsToBigInt!1 (text!33705 (value!146681 separatorToken!156))) (value!146673 (value!146681 separatorToken!156))))))

(declare-fun bs!473269 () Bool)

(assert (= bs!473269 d!737191))

(declare-fun m!2937023 () Bool)

(assert (=> bs!473269 m!2937023))

(assert (=> b!2601842 d!737191))

(declare-fun d!737195 () Bool)

(assert (=> d!737195 (= (isEmpty!17177 (originalCharacters!5295 separatorToken!156)) ((_ is Nil!30036) (originalCharacters!5295 separatorToken!156)))))

(assert (=> d!737029 d!737195))

(declare-fun d!737199 () Bool)

(declare-fun res!1096240 () Bool)

(declare-fun e!1642596 () Bool)

(assert (=> d!737199 (=> res!1096240 e!1642596)))

(assert (=> d!737199 (= res!1096240 ((_ is Nil!30037) (t!213214 lt!915423)))))

(assert (=> d!737199 (= (forall!6201 (t!213214 lt!915423) lambda!97372) e!1642596)))

(declare-fun b!2602097 () Bool)

(declare-fun e!1642597 () Bool)

(assert (=> b!2602097 (= e!1642596 e!1642597)))

(declare-fun res!1096241 () Bool)

(assert (=> b!2602097 (=> (not res!1096241) (not e!1642597))))

(assert (=> b!2602097 (= res!1096241 (dynLambda!12706 lambda!97372 (h!35457 (t!213214 lt!915423))))))

(declare-fun b!2602098 () Bool)

(assert (=> b!2602098 (= e!1642597 (forall!6201 (t!213214 (t!213214 lt!915423)) lambda!97372))))

(assert (= (and d!737199 (not res!1096240)) b!2602097))

(assert (= (and b!2602097 res!1096241) b!2602098))

(declare-fun b_lambda!77961 () Bool)

(assert (=> (not b_lambda!77961) (not b!2602097)))

(declare-fun m!2937027 () Bool)

(assert (=> b!2602097 m!2937027))

(declare-fun m!2937029 () Bool)

(assert (=> b!2602098 m!2937029))

(assert (=> b!2601657 d!737199))

(declare-fun bs!473271 () Bool)

(declare-fun d!737201 () Bool)

(assert (= bs!473271 (and d!737201 d!737165)))

(declare-fun lambda!97389 () Int)

(assert (=> bs!473271 (= (= (toValue!6423 (transformation!4529 (h!35458 rules!1726))) (toValue!6423 (transformation!4529 (rule!6899 separatorToken!156)))) (= lambda!97389 lambda!97388))))

(assert (=> d!737201 true))

(assert (=> d!737201 (< (dynLambda!12707 order!15931 (toValue!6423 (transformation!4529 (h!35458 rules!1726)))) (dynLambda!12710 order!15937 lambda!97389))))

(assert (=> d!737201 (= (equivClasses!1794 (toChars!6282 (transformation!4529 (h!35458 rules!1726))) (toValue!6423 (transformation!4529 (h!35458 rules!1726)))) (Forall2!768 lambda!97389))))

(declare-fun bs!473272 () Bool)

(assert (= bs!473272 d!737201))

(declare-fun m!2937031 () Bool)

(assert (=> bs!473272 m!2937031))

(assert (=> b!2601845 d!737201))

(declare-fun d!737203 () Bool)

(declare-fun res!1096242 () Bool)

(declare-fun e!1642600 () Bool)

(assert (=> d!737203 (=> res!1096242 e!1642600)))

(assert (=> d!737203 (= res!1096242 ((_ is Nil!30037) (list!11265 v!6381)))))

(assert (=> d!737203 (= (forall!6201 (list!11265 v!6381) lambda!97382) e!1642600)))

(declare-fun b!2602103 () Bool)

(declare-fun e!1642601 () Bool)

(assert (=> b!2602103 (= e!1642600 e!1642601)))

(declare-fun res!1096243 () Bool)

(assert (=> b!2602103 (=> (not res!1096243) (not e!1642601))))

(assert (=> b!2602103 (= res!1096243 (dynLambda!12706 lambda!97382 (h!35457 (list!11265 v!6381))))))

(declare-fun b!2602105 () Bool)

(assert (=> b!2602105 (= e!1642601 (forall!6201 (t!213214 (list!11265 v!6381)) lambda!97382))))

(assert (= (and d!737203 (not res!1096242)) b!2602103))

(assert (= (and b!2602103 res!1096243) b!2602105))

(declare-fun b_lambda!77963 () Bool)

(assert (=> (not b_lambda!77963) (not b!2602103)))

(declare-fun m!2937035 () Bool)

(assert (=> b!2602103 m!2937035))

(declare-fun m!2937037 () Bool)

(assert (=> b!2602105 m!2937037))

(assert (=> d!737055 d!737203))

(assert (=> d!737055 d!737049))

(declare-fun d!737207 () Bool)

(declare-fun lt!915511 () Bool)

(assert (=> d!737207 (= lt!915511 (forall!6201 (list!11265 v!6381) lambda!97382))))

(assert (=> d!737207 (= lt!915511 (forall!6203 (c!418710 v!6381) lambda!97382))))

(assert (=> d!737207 (= (forall!6200 v!6381 lambda!97382) lt!915511)))

(declare-fun bs!473273 () Bool)

(assert (= bs!473273 d!737207))

(assert (=> bs!473273 m!2936585))

(assert (=> bs!473273 m!2936585))

(assert (=> bs!473273 m!2936743))

(declare-fun m!2937039 () Bool)

(assert (=> bs!473273 m!2937039))

(assert (=> d!737055 d!737207))

(assert (=> d!737055 d!737027))

(assert (=> d!737049 d!737183))

(declare-fun d!737209 () Bool)

(declare-fun charsToBigInt!0 (List!30135 Int) Int)

(assert (=> d!737209 (= (inv!15 (value!146681 separatorToken!156)) (= (charsToBigInt!0 (text!33706 (value!146681 separatorToken!156)) 0) (value!146676 (value!146681 separatorToken!156))))))

(declare-fun bs!473274 () Bool)

(assert (= bs!473274 d!737209))

(declare-fun m!2937043 () Bool)

(assert (=> bs!473274 m!2937043))

(assert (=> b!2601841 d!737209))

(declare-fun d!737213 () Bool)

(declare-fun list!11273 (Conc!9300) List!30136)

(assert (=> d!737213 (= (list!11268 (dynLambda!12705 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (value!146681 separatorToken!156))) (list!11273 (c!418709 (dynLambda!12705 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (value!146681 separatorToken!156)))))))

(declare-fun bs!473275 () Bool)

(assert (= bs!473275 d!737213))

(declare-fun m!2937045 () Bool)

(assert (=> bs!473275 m!2937045))

(assert (=> b!2601631 d!737213))

(declare-fun d!737215 () Bool)

(declare-fun charsToInt!0 (List!30135) (_ BitVec 32))

(assert (=> d!737215 (= (inv!16 (value!146681 separatorToken!156)) (= (charsToInt!0 (text!33704 (value!146681 separatorToken!156))) (value!146672 (value!146681 separatorToken!156))))))

(declare-fun bs!473277 () Bool)

(assert (= bs!473277 d!737215))

(declare-fun m!2937049 () Bool)

(assert (=> bs!473277 m!2937049))

(assert (=> b!2601843 d!737215))

(declare-fun d!737219 () Bool)

(declare-fun res!1096244 () Bool)

(declare-fun e!1642606 () Bool)

(assert (=> d!737219 (=> res!1096244 e!1642606)))

(assert (=> d!737219 (= res!1096244 ((_ is Nil!30037) (list!11265 v!6381)))))

(assert (=> d!737219 (= (forall!6201 (list!11265 v!6381) lambda!97372) e!1642606)))

(declare-fun b!2602113 () Bool)

(declare-fun e!1642607 () Bool)

(assert (=> b!2602113 (= e!1642606 e!1642607)))

(declare-fun res!1096245 () Bool)

(assert (=> b!2602113 (=> (not res!1096245) (not e!1642607))))

(assert (=> b!2602113 (= res!1096245 (dynLambda!12706 lambda!97372 (h!35457 (list!11265 v!6381))))))

(declare-fun b!2602114 () Bool)

(assert (=> b!2602114 (= e!1642607 (forall!6201 (t!213214 (list!11265 v!6381)) lambda!97372))))

(assert (= (and d!737219 (not res!1096244)) b!2602113))

(assert (= (and b!2602113 res!1096245) b!2602114))

(declare-fun b_lambda!77965 () Bool)

(assert (=> (not b_lambda!77965) (not b!2602113)))

(declare-fun m!2937051 () Bool)

(assert (=> b!2602113 m!2937051))

(declare-fun m!2937053 () Bool)

(assert (=> b!2602114 m!2937053))

(assert (=> d!737103 d!737219))

(assert (=> d!737103 d!737049))

(declare-fun d!737221 () Bool)

(declare-fun lt!915525 () Bool)

(assert (=> d!737221 (= lt!915525 (forall!6201 (list!11269 (c!418710 v!6381)) lambda!97372))))

(declare-fun e!1642631 () Bool)

(assert (=> d!737221 (= lt!915525 e!1642631)))

(declare-fun res!1096253 () Bool)

(assert (=> d!737221 (=> res!1096253 e!1642631)))

(assert (=> d!737221 (= res!1096253 ((_ is Empty!9301) (c!418710 v!6381)))))

(assert (=> d!737221 (= (forall!6203 (c!418710 v!6381) lambda!97372) lt!915525)))

(declare-fun b!2602151 () Bool)

(declare-fun e!1642630 () Bool)

(declare-fun forall!6206 (IArray!18607 Int) Bool)

(assert (=> b!2602151 (= e!1642630 (forall!6206 (xs!12285 (c!418710 v!6381)) lambda!97372))))

(declare-fun b!2602152 () Bool)

(declare-fun e!1642629 () Bool)

(assert (=> b!2602152 (= e!1642630 e!1642629)))

(declare-datatypes ((Unit!44041 0))(
  ( (Unit!44042) )
))
(declare-fun lt!915526 () Unit!44041)

(declare-fun lemmaForallConcat!146 (List!30137 List!30137 Int) Unit!44041)

(assert (=> b!2602152 (= lt!915526 (lemmaForallConcat!146 (list!11269 (left!23101 (c!418710 v!6381))) (list!11269 (right!23431 (c!418710 v!6381))) lambda!97372))))

(declare-fun res!1096254 () Bool)

(assert (=> b!2602152 (= res!1096254 (forall!6203 (left!23101 (c!418710 v!6381)) lambda!97372))))

(assert (=> b!2602152 (=> (not res!1096254) (not e!1642629))))

(declare-fun b!2602150 () Bool)

(assert (=> b!2602150 (= e!1642631 e!1642630)))

(declare-fun c!418800 () Bool)

(assert (=> b!2602150 (= c!418800 ((_ is Leaf!14306) (c!418710 v!6381)))))

(declare-fun b!2602153 () Bool)

(assert (=> b!2602153 (= e!1642629 (forall!6203 (right!23431 (c!418710 v!6381)) lambda!97372))))

(assert (= (and d!737221 (not res!1096253)) b!2602150))

(assert (= (and b!2602150 c!418800) b!2602151))

(assert (= (and b!2602150 (not c!418800)) b!2602152))

(assert (= (and b!2602152 res!1096254) b!2602153))

(assert (=> d!737221 m!2936639))

(assert (=> d!737221 m!2936639))

(declare-fun m!2937063 () Bool)

(assert (=> d!737221 m!2937063))

(declare-fun m!2937065 () Bool)

(assert (=> b!2602151 m!2937065))

(assert (=> b!2602152 m!2936995))

(assert (=> b!2602152 m!2936997))

(assert (=> b!2602152 m!2936995))

(assert (=> b!2602152 m!2936997))

(declare-fun m!2937067 () Bool)

(assert (=> b!2602152 m!2937067))

(declare-fun m!2937069 () Bool)

(assert (=> b!2602152 m!2937069))

(declare-fun m!2937071 () Bool)

(assert (=> b!2602153 m!2937071))

(assert (=> d!737103 d!737221))

(declare-fun d!737225 () Bool)

(declare-fun c!418809 () Bool)

(assert (=> d!737225 (= c!418809 ((_ is Node!9300) (c!418709 (dynLambda!12705 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (value!146681 separatorToken!156)))))))

(declare-fun e!1642642 () Bool)

(assert (=> d!737225 (= (inv!40613 (c!418709 (dynLambda!12705 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (value!146681 separatorToken!156)))) e!1642642)))

(declare-fun b!2602172 () Bool)

(declare-fun inv!40618 (Conc!9300) Bool)

(assert (=> b!2602172 (= e!1642642 (inv!40618 (c!418709 (dynLambda!12705 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (value!146681 separatorToken!156)))))))

(declare-fun b!2602173 () Bool)

(declare-fun e!1642643 () Bool)

(assert (=> b!2602173 (= e!1642642 e!1642643)))

(declare-fun res!1096257 () Bool)

(assert (=> b!2602173 (= res!1096257 (not ((_ is Leaf!14305) (c!418709 (dynLambda!12705 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (value!146681 separatorToken!156))))))))

(assert (=> b!2602173 (=> res!1096257 e!1642643)))

(declare-fun b!2602174 () Bool)

(declare-fun inv!40619 (Conc!9300) Bool)

(assert (=> b!2602174 (= e!1642643 (inv!40619 (c!418709 (dynLambda!12705 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (value!146681 separatorToken!156)))))))

(assert (= (and d!737225 c!418809) b!2602172))

(assert (= (and d!737225 (not c!418809)) b!2602173))

(assert (= (and b!2602173 (not res!1096257)) b!2602174))

(declare-fun m!2937075 () Bool)

(assert (=> b!2602172 m!2937075))

(declare-fun m!2937077 () Bool)

(assert (=> b!2602174 m!2937077))

(assert (=> b!2601637 d!737225))

(declare-fun d!737229 () Bool)

(declare-fun c!418810 () Bool)

(assert (=> d!737229 (= c!418810 ((_ is Nil!30037) (t!213214 lt!915423)))))

(declare-fun e!1642644 () (InoxSet Token!8528))

(assert (=> d!737229 (= (content!4267 (t!213214 lt!915423)) e!1642644)))

(declare-fun b!2602175 () Bool)

(assert (=> b!2602175 (= e!1642644 ((as const (Array Token!8528 Bool)) false))))

(declare-fun b!2602176 () Bool)

(assert (=> b!2602176 (= e!1642644 ((_ map or) (store ((as const (Array Token!8528 Bool)) false) (h!35457 (t!213214 lt!915423)) true) (content!4267 (t!213214 (t!213214 lt!915423)))))))

(assert (= (and d!737229 c!418810) b!2602175))

(assert (= (and d!737229 (not c!418810)) b!2602176))

(declare-fun m!2937079 () Bool)

(assert (=> b!2602176 m!2937079))

(declare-fun m!2937081 () Bool)

(assert (=> b!2602176 m!2937081))

(assert (=> b!2601651 d!737229))

(declare-fun d!737231 () Bool)

(declare-fun c!418811 () Bool)

(assert (=> d!737231 (= c!418811 ((_ is Node!9301) (left!23101 (c!418710 v!6381))))))

(declare-fun e!1642645 () Bool)

(assert (=> d!737231 (= (inv!40607 (left!23101 (c!418710 v!6381))) e!1642645)))

(declare-fun b!2602177 () Bool)

(assert (=> b!2602177 (= e!1642645 (inv!40615 (left!23101 (c!418710 v!6381))))))

(declare-fun b!2602178 () Bool)

(declare-fun e!1642646 () Bool)

(assert (=> b!2602178 (= e!1642645 e!1642646)))

(declare-fun res!1096258 () Bool)

(assert (=> b!2602178 (= res!1096258 (not ((_ is Leaf!14306) (left!23101 (c!418710 v!6381)))))))

(assert (=> b!2602178 (=> res!1096258 e!1642646)))

(declare-fun b!2602179 () Bool)

(assert (=> b!2602179 (= e!1642646 (inv!40616 (left!23101 (c!418710 v!6381))))))

(assert (= (and d!737231 c!418811) b!2602177))

(assert (= (and d!737231 (not c!418811)) b!2602178))

(assert (= (and b!2602178 (not res!1096258)) b!2602179))

(declare-fun m!2937083 () Bool)

(assert (=> b!2602177 m!2937083))

(declare-fun m!2937085 () Bool)

(assert (=> b!2602179 m!2937085))

(assert (=> b!2601884 d!737231))

(declare-fun d!737233 () Bool)

(declare-fun c!418812 () Bool)

(assert (=> d!737233 (= c!418812 ((_ is Node!9301) (right!23431 (c!418710 v!6381))))))

(declare-fun e!1642647 () Bool)

(assert (=> d!737233 (= (inv!40607 (right!23431 (c!418710 v!6381))) e!1642647)))

(declare-fun b!2602180 () Bool)

(assert (=> b!2602180 (= e!1642647 (inv!40615 (right!23431 (c!418710 v!6381))))))

(declare-fun b!2602181 () Bool)

(declare-fun e!1642648 () Bool)

(assert (=> b!2602181 (= e!1642647 e!1642648)))

(declare-fun res!1096259 () Bool)

(assert (=> b!2602181 (= res!1096259 (not ((_ is Leaf!14306) (right!23431 (c!418710 v!6381)))))))

(assert (=> b!2602181 (=> res!1096259 e!1642648)))

(declare-fun b!2602182 () Bool)

(assert (=> b!2602182 (= e!1642648 (inv!40616 (right!23431 (c!418710 v!6381))))))

(assert (= (and d!737233 c!418812) b!2602180))

(assert (= (and d!737233 (not c!418812)) b!2602181))

(assert (= (and b!2602181 (not res!1096259)) b!2602182))

(declare-fun m!2937087 () Bool)

(assert (=> b!2602180 m!2937087))

(declare-fun m!2937089 () Bool)

(assert (=> b!2602182 m!2937089))

(assert (=> b!2601884 d!737233))

(declare-fun d!737235 () Bool)

(assert (=> d!737235 true))

(declare-fun lambda!97395 () Int)

(declare-fun order!15941 () Int)

(declare-fun dynLambda!12713 (Int Int) Int)

(assert (=> d!737235 (< (dynLambda!12709 order!15935 (toChars!6282 (transformation!4529 (h!35458 rules!1726)))) (dynLambda!12713 order!15941 lambda!97395))))

(assert (=> d!737235 true))

(assert (=> d!737235 (< (dynLambda!12707 order!15931 (toValue!6423 (transformation!4529 (h!35458 rules!1726)))) (dynLambda!12713 order!15941 lambda!97395))))

(declare-fun Forall!1170 (Int) Bool)

(assert (=> d!737235 (= (semiInverseModEq!1893 (toChars!6282 (transformation!4529 (h!35458 rules!1726))) (toValue!6423 (transformation!4529 (h!35458 rules!1726)))) (Forall!1170 lambda!97395))))

(declare-fun bs!473279 () Bool)

(assert (= bs!473279 d!737235))

(declare-fun m!2937097 () Bool)

(assert (=> bs!473279 m!2937097))

(assert (=> d!737107 d!737235))

(declare-fun bs!473289 () Bool)

(declare-fun d!737243 () Bool)

(assert (= bs!473289 (and d!737243 b!2601610)))

(declare-fun lambda!97405 () Int)

(assert (=> bs!473289 (not (= lambda!97405 lambda!97372))))

(declare-fun bs!473290 () Bool)

(assert (= bs!473290 (and d!737243 d!737055)))

(assert (=> bs!473290 (= lambda!97405 lambda!97382)))

(declare-fun b!2602219 () Bool)

(declare-fun e!1642669 () Bool)

(assert (=> b!2602219 (= e!1642669 true)))

(declare-fun b!2602218 () Bool)

(declare-fun e!1642668 () Bool)

(assert (=> b!2602218 (= e!1642668 e!1642669)))

(declare-fun b!2602217 () Bool)

(declare-fun e!1642667 () Bool)

(assert (=> b!2602217 (= e!1642667 e!1642668)))

(assert (=> d!737243 e!1642667))

(assert (= b!2602218 b!2602219))

(assert (= b!2602217 b!2602218))

(assert (= (and d!737243 ((_ is Cons!30038) rules!1726)) b!2602217))

(assert (=> b!2602219 (< (dynLambda!12707 order!15931 (toValue!6423 (transformation!4529 (h!35458 rules!1726)))) (dynLambda!12708 order!15933 lambda!97405))))

(assert (=> b!2602219 (< (dynLambda!12709 order!15935 (toChars!6282 (transformation!4529 (h!35458 rules!1726)))) (dynLambda!12708 order!15933 lambda!97405))))

(assert (=> d!737243 true))

(declare-fun lt!915533 () Bool)

(assert (=> d!737243 (= lt!915533 (forall!6201 (list!11265 v!6381) lambda!97405))))

(declare-fun e!1642666 () Bool)

(assert (=> d!737243 (= lt!915533 e!1642666)))

(declare-fun res!1096272 () Bool)

(assert (=> d!737243 (=> res!1096272 e!1642666)))

(assert (=> d!737243 (= res!1096272 (not ((_ is Cons!30037) (list!11265 v!6381))))))

(assert (=> d!737243 (not (isEmpty!17174 rules!1726))))

(assert (=> d!737243 (= (rulesProduceEachTokenIndividuallyList!1425 thiss!14197 rules!1726 (list!11265 v!6381)) lt!915533)))

(declare-fun b!2602215 () Bool)

(declare-fun e!1642665 () Bool)

(assert (=> b!2602215 (= e!1642666 e!1642665)))

(declare-fun res!1096273 () Bool)

(assert (=> b!2602215 (=> (not res!1096273) (not e!1642665))))

(assert (=> b!2602215 (= res!1096273 (rulesProduceIndividualToken!1838 thiss!14197 rules!1726 (h!35457 (list!11265 v!6381))))))

(declare-fun b!2602216 () Bool)

(assert (=> b!2602216 (= e!1642665 (rulesProduceEachTokenIndividuallyList!1425 thiss!14197 rules!1726 (t!213214 (list!11265 v!6381))))))

(assert (= (and d!737243 (not res!1096272)) b!2602215))

(assert (= (and b!2602215 res!1096273) b!2602216))

(assert (=> d!737243 m!2936585))

(declare-fun m!2937129 () Bool)

(assert (=> d!737243 m!2937129))

(assert (=> d!737243 m!2936593))

(declare-fun m!2937131 () Bool)

(assert (=> b!2602215 m!2937131))

(declare-fun m!2937133 () Bool)

(assert (=> b!2602216 m!2937133))

(assert (=> b!2601770 d!737243))

(assert (=> b!2601770 d!737049))

(declare-fun d!737267 () Bool)

(assert (=> d!737267 (= (inv!40617 (xs!12285 (c!418710 v!6381))) (<= (size!23266 (innerList!9361 (xs!12285 (c!418710 v!6381)))) 2147483647))))

(declare-fun bs!473291 () Bool)

(assert (= bs!473291 d!737267))

(declare-fun m!2937135 () Bool)

(assert (=> bs!473291 m!2937135))

(assert (=> b!2601885 d!737267))

(declare-fun bs!473292 () Bool)

(declare-fun d!737269 () Bool)

(assert (= bs!473292 (and d!737269 d!737235)))

(declare-fun lambda!97406 () Int)

(assert (=> bs!473292 (= (and (= (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (toChars!6282 (transformation!4529 (h!35458 rules!1726)))) (= (toValue!6423 (transformation!4529 (rule!6899 separatorToken!156))) (toValue!6423 (transformation!4529 (h!35458 rules!1726))))) (= lambda!97406 lambda!97395))))

(assert (=> d!737269 true))

(assert (=> d!737269 (< (dynLambda!12709 order!15935 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156)))) (dynLambda!12713 order!15941 lambda!97406))))

(assert (=> d!737269 true))

(assert (=> d!737269 (< (dynLambda!12707 order!15931 (toValue!6423 (transformation!4529 (rule!6899 separatorToken!156)))) (dynLambda!12713 order!15941 lambda!97406))))

(assert (=> d!737269 (= (semiInverseModEq!1893 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (toValue!6423 (transformation!4529 (rule!6899 separatorToken!156)))) (Forall!1170 lambda!97406))))

(declare-fun bs!473293 () Bool)

(assert (= bs!473293 d!737269))

(declare-fun m!2937137 () Bool)

(assert (=> bs!473293 m!2937137))

(assert (=> d!737037 d!737269))

(declare-fun b!2602220 () Bool)

(declare-fun e!1642670 () Bool)

(declare-fun tp!824363 () Bool)

(assert (=> b!2602220 (= e!1642670 (and tp_is_empty!13713 tp!824363))))

(assert (=> b!2601850 (= tp!824321 e!1642670)))

(assert (= (and b!2601850 ((_ is Cons!30036) (t!213213 (originalCharacters!5295 separatorToken!156)))) b!2602220))

(declare-fun b!2602223 () Bool)

(declare-fun b_free!73029 () Bool)

(declare-fun b_next!73733 () Bool)

(assert (=> b!2602223 (= b_free!73029 (not b_next!73733))))

(declare-fun tp!824367 () Bool)

(declare-fun b_and!190335 () Bool)

(assert (=> b!2602223 (= tp!824367 b_and!190335)))

(declare-fun b_free!73031 () Bool)

(declare-fun b_next!73735 () Bool)

(assert (=> b!2602223 (= b_free!73031 (not b_next!73735))))

(declare-fun tb!141539 () Bool)

(declare-fun t!213252 () Bool)

(assert (=> (and b!2602223 (= (toChars!6282 (transformation!4529 (h!35458 (t!213215 (t!213215 rules!1726))))) (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156)))) t!213252) tb!141539))

(declare-fun result!176146 () Bool)

(assert (= result!176146 result!176114))

(assert (=> b!2601631 t!213252))

(declare-fun tp!824365 () Bool)

(declare-fun b_and!190337 () Bool)

(assert (=> b!2602223 (= tp!824365 (and (=> t!213252 result!176146) b_and!190337))))

(declare-fun e!1642672 () Bool)

(assert (=> b!2602223 (= e!1642672 (and tp!824367 tp!824365))))

(declare-fun tp!824364 () Bool)

(declare-fun e!1642674 () Bool)

(declare-fun b!2602222 () Bool)

(assert (=> b!2602222 (= e!1642674 (and tp!824364 (inv!40599 (tag!5019 (h!35458 (t!213215 (t!213215 rules!1726))))) (inv!40606 (transformation!4529 (h!35458 (t!213215 (t!213215 rules!1726))))) e!1642672))))

(declare-fun b!2602221 () Bool)

(declare-fun e!1642673 () Bool)

(declare-fun tp!824366 () Bool)

(assert (=> b!2602221 (= e!1642673 (and e!1642674 tp!824366))))

(assert (=> b!2601873 (= tp!824347 e!1642673)))

(assert (= b!2602222 b!2602223))

(assert (= b!2602221 b!2602222))

(assert (= (and b!2601873 ((_ is Cons!30038) (t!213215 (t!213215 rules!1726)))) b!2602221))

(declare-fun m!2937139 () Bool)

(assert (=> b!2602222 m!2937139))

(declare-fun m!2937141 () Bool)

(assert (=> b!2602222 m!2937141))

(declare-fun b!2602237 () Bool)

(declare-fun b_free!73033 () Bool)

(declare-fun b_next!73737 () Bool)

(assert (=> b!2602237 (= b_free!73033 (not b_next!73737))))

(declare-fun tp!824382 () Bool)

(declare-fun b_and!190339 () Bool)

(assert (=> b!2602237 (= tp!824382 b_and!190339)))

(declare-fun b_free!73035 () Bool)

(declare-fun b_next!73739 () Bool)

(assert (=> b!2602237 (= b_free!73035 (not b_next!73739))))

(declare-fun tb!141541 () Bool)

(declare-fun t!213254 () Bool)

(assert (=> (and b!2602237 (= (toChars!6282 (transformation!4529 (rule!6899 (h!35457 (innerList!9361 (xs!12285 (c!418710 v!6381))))))) (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156)))) t!213254) tb!141541))

(declare-fun result!176150 () Bool)

(assert (= result!176150 result!176114))

(assert (=> b!2601631 t!213254))

(declare-fun tp!824380 () Bool)

(declare-fun b_and!190341 () Bool)

(assert (=> b!2602237 (= tp!824380 (and (=> t!213254 result!176150) b_and!190341))))

(declare-fun e!1642690 () Bool)

(assert (=> b!2601886 (= tp!824357 e!1642690)))

(declare-fun tp!824381 () Bool)

(declare-fun b!2602234 () Bool)

(declare-fun e!1642688 () Bool)

(assert (=> b!2602234 (= e!1642690 (and (inv!40604 (h!35457 (innerList!9361 (xs!12285 (c!418710 v!6381))))) e!1642688 tp!824381))))

(declare-fun e!1642691 () Bool)

(assert (=> b!2602237 (= e!1642691 (and tp!824382 tp!824380))))

(declare-fun e!1642687 () Bool)

(declare-fun b!2602235 () Bool)

(declare-fun tp!824378 () Bool)

(assert (=> b!2602235 (= e!1642688 (and (inv!21 (value!146681 (h!35457 (innerList!9361 (xs!12285 (c!418710 v!6381)))))) e!1642687 tp!824378))))

(declare-fun b!2602236 () Bool)

(declare-fun tp!824379 () Bool)

(assert (=> b!2602236 (= e!1642687 (and tp!824379 (inv!40599 (tag!5019 (rule!6899 (h!35457 (innerList!9361 (xs!12285 (c!418710 v!6381))))))) (inv!40606 (transformation!4529 (rule!6899 (h!35457 (innerList!9361 (xs!12285 (c!418710 v!6381))))))) e!1642691))))

(assert (= b!2602236 b!2602237))

(assert (= b!2602235 b!2602236))

(assert (= b!2602234 b!2602235))

(assert (= (and b!2601886 ((_ is Cons!30037) (innerList!9361 (xs!12285 (c!418710 v!6381))))) b!2602234))

(declare-fun m!2937143 () Bool)

(assert (=> b!2602234 m!2937143))

(declare-fun m!2937145 () Bool)

(assert (=> b!2602235 m!2937145))

(declare-fun m!2937147 () Bool)

(assert (=> b!2602236 m!2937147))

(declare-fun m!2937149 () Bool)

(assert (=> b!2602236 m!2937149))

(declare-fun b!2602238 () Bool)

(declare-fun e!1642693 () Bool)

(assert (=> b!2602238 (= e!1642693 tp_is_empty!13713)))

(declare-fun b!2602241 () Bool)

(declare-fun tp!824387 () Bool)

(declare-fun tp!824386 () Bool)

(assert (=> b!2602241 (= e!1642693 (and tp!824387 tp!824386))))

(declare-fun b!2602239 () Bool)

(declare-fun tp!824384 () Bool)

(declare-fun tp!824385 () Bool)

(assert (=> b!2602239 (= e!1642693 (and tp!824384 tp!824385))))

(assert (=> b!2601874 (= tp!824345 e!1642693)))

(declare-fun b!2602240 () Bool)

(declare-fun tp!824383 () Bool)

(assert (=> b!2602240 (= e!1642693 tp!824383)))

(assert (= (and b!2601874 ((_ is ElementMatch!7673) (regex!4529 (h!35458 (t!213215 rules!1726))))) b!2602238))

(assert (= (and b!2601874 ((_ is Concat!12425) (regex!4529 (h!35458 (t!213215 rules!1726))))) b!2602239))

(assert (= (and b!2601874 ((_ is Star!7673) (regex!4529 (h!35458 (t!213215 rules!1726))))) b!2602240))

(assert (= (and b!2601874 ((_ is Union!7673) (regex!4529 (h!35458 (t!213215 rules!1726))))) b!2602241))

(declare-fun b!2602242 () Bool)

(declare-fun e!1642694 () Bool)

(assert (=> b!2602242 (= e!1642694 tp_is_empty!13713)))

(declare-fun b!2602245 () Bool)

(declare-fun tp!824392 () Bool)

(declare-fun tp!824391 () Bool)

(assert (=> b!2602245 (= e!1642694 (and tp!824392 tp!824391))))

(declare-fun b!2602243 () Bool)

(declare-fun tp!824389 () Bool)

(declare-fun tp!824390 () Bool)

(assert (=> b!2602243 (= e!1642694 (and tp!824389 tp!824390))))

(assert (=> b!2601888 (= tp!824359 e!1642694)))

(declare-fun b!2602244 () Bool)

(declare-fun tp!824388 () Bool)

(assert (=> b!2602244 (= e!1642694 tp!824388)))

(assert (= (and b!2601888 ((_ is ElementMatch!7673) (regOne!15858 (regex!4529 (h!35458 rules!1726))))) b!2602242))

(assert (= (and b!2601888 ((_ is Concat!12425) (regOne!15858 (regex!4529 (h!35458 rules!1726))))) b!2602243))

(assert (= (and b!2601888 ((_ is Star!7673) (regOne!15858 (regex!4529 (h!35458 rules!1726))))) b!2602244))

(assert (= (and b!2601888 ((_ is Union!7673) (regOne!15858 (regex!4529 (h!35458 rules!1726))))) b!2602245))

(declare-fun b!2602246 () Bool)

(declare-fun e!1642695 () Bool)

(assert (=> b!2602246 (= e!1642695 tp_is_empty!13713)))

(declare-fun b!2602249 () Bool)

(declare-fun tp!824397 () Bool)

(declare-fun tp!824396 () Bool)

(assert (=> b!2602249 (= e!1642695 (and tp!824397 tp!824396))))

(declare-fun b!2602247 () Bool)

(declare-fun tp!824394 () Bool)

(declare-fun tp!824395 () Bool)

(assert (=> b!2602247 (= e!1642695 (and tp!824394 tp!824395))))

(assert (=> b!2601888 (= tp!824360 e!1642695)))

(declare-fun b!2602248 () Bool)

(declare-fun tp!824393 () Bool)

(assert (=> b!2602248 (= e!1642695 tp!824393)))

(assert (= (and b!2601888 ((_ is ElementMatch!7673) (regTwo!15858 (regex!4529 (h!35458 rules!1726))))) b!2602246))

(assert (= (and b!2601888 ((_ is Concat!12425) (regTwo!15858 (regex!4529 (h!35458 rules!1726))))) b!2602247))

(assert (= (and b!2601888 ((_ is Star!7673) (regTwo!15858 (regex!4529 (h!35458 rules!1726))))) b!2602248))

(assert (= (and b!2601888 ((_ is Union!7673) (regTwo!15858 (regex!4529 (h!35458 rules!1726))))) b!2602249))

(declare-fun b!2602252 () Bool)

(declare-fun e!1642698 () Bool)

(assert (=> b!2602252 (= e!1642698 true)))

(declare-fun b!2602251 () Bool)

(declare-fun e!1642697 () Bool)

(assert (=> b!2602251 (= e!1642697 e!1642698)))

(declare-fun b!2602250 () Bool)

(declare-fun e!1642696 () Bool)

(assert (=> b!2602250 (= e!1642696 e!1642697)))

(assert (=> b!2601800 e!1642696))

(assert (= b!2602251 b!2602252))

(assert (= b!2602250 b!2602251))

(assert (= (and b!2601800 ((_ is Cons!30038) (t!213215 rules!1726))) b!2602250))

(assert (=> b!2602252 (< (dynLambda!12707 order!15931 (toValue!6423 (transformation!4529 (h!35458 (t!213215 rules!1726))))) (dynLambda!12708 order!15933 lambda!97382))))

(assert (=> b!2602252 (< (dynLambda!12709 order!15935 (toChars!6282 (transformation!4529 (h!35458 (t!213215 rules!1726))))) (dynLambda!12708 order!15933 lambda!97382))))

(declare-fun b!2602253 () Bool)

(declare-fun e!1642699 () Bool)

(assert (=> b!2602253 (= e!1642699 tp_is_empty!13713)))

(declare-fun b!2602256 () Bool)

(declare-fun tp!824402 () Bool)

(declare-fun tp!824401 () Bool)

(assert (=> b!2602256 (= e!1642699 (and tp!824402 tp!824401))))

(declare-fun b!2602254 () Bool)

(declare-fun tp!824399 () Bool)

(declare-fun tp!824400 () Bool)

(assert (=> b!2602254 (= e!1642699 (and tp!824399 tp!824400))))

(assert (=> b!2601863 (= tp!824332 e!1642699)))

(declare-fun b!2602255 () Bool)

(declare-fun tp!824398 () Bool)

(assert (=> b!2602255 (= e!1642699 tp!824398)))

(assert (= (and b!2601863 ((_ is ElementMatch!7673) (reg!8002 (regex!4529 (rule!6899 separatorToken!156))))) b!2602253))

(assert (= (and b!2601863 ((_ is Concat!12425) (reg!8002 (regex!4529 (rule!6899 separatorToken!156))))) b!2602254))

(assert (= (and b!2601863 ((_ is Star!7673) (reg!8002 (regex!4529 (rule!6899 separatorToken!156))))) b!2602255))

(assert (= (and b!2601863 ((_ is Union!7673) (reg!8002 (regex!4529 (rule!6899 separatorToken!156))))) b!2602256))

(declare-fun b!2602257 () Bool)

(declare-fun e!1642700 () Bool)

(assert (=> b!2602257 (= e!1642700 tp_is_empty!13713)))

(declare-fun b!2602260 () Bool)

(declare-fun tp!824407 () Bool)

(declare-fun tp!824406 () Bool)

(assert (=> b!2602260 (= e!1642700 (and tp!824407 tp!824406))))

(declare-fun b!2602258 () Bool)

(declare-fun tp!824404 () Bool)

(declare-fun tp!824405 () Bool)

(assert (=> b!2602258 (= e!1642700 (and tp!824404 tp!824405))))

(assert (=> b!2601889 (= tp!824358 e!1642700)))

(declare-fun b!2602259 () Bool)

(declare-fun tp!824403 () Bool)

(assert (=> b!2602259 (= e!1642700 tp!824403)))

(assert (= (and b!2601889 ((_ is ElementMatch!7673) (reg!8002 (regex!4529 (h!35458 rules!1726))))) b!2602257))

(assert (= (and b!2601889 ((_ is Concat!12425) (reg!8002 (regex!4529 (h!35458 rules!1726))))) b!2602258))

(assert (= (and b!2601889 ((_ is Star!7673) (reg!8002 (regex!4529 (h!35458 rules!1726))))) b!2602259))

(assert (= (and b!2601889 ((_ is Union!7673) (reg!8002 (regex!4529 (h!35458 rules!1726))))) b!2602260))

(declare-fun tp!824415 () Bool)

(declare-fun b!2602269 () Bool)

(declare-fun e!1642706 () Bool)

(declare-fun tp!824416 () Bool)

(assert (=> b!2602269 (= e!1642706 (and (inv!40613 (left!23100 (c!418709 (dynLambda!12705 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (value!146681 separatorToken!156))))) tp!824416 (inv!40613 (right!23430 (c!418709 (dynLambda!12705 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (value!146681 separatorToken!156))))) tp!824415))))

(declare-fun b!2602271 () Bool)

(declare-fun e!1642705 () Bool)

(declare-fun tp!824414 () Bool)

(assert (=> b!2602271 (= e!1642705 tp!824414)))

(declare-fun b!2602270 () Bool)

(declare-fun inv!40622 (IArray!18605) Bool)

(assert (=> b!2602270 (= e!1642706 (and (inv!40622 (xs!12284 (c!418709 (dynLambda!12705 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (value!146681 separatorToken!156))))) e!1642705))))

(assert (=> b!2601637 (= tp!824271 (and (inv!40613 (c!418709 (dynLambda!12705 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (value!146681 separatorToken!156)))) e!1642706))))

(assert (= (and b!2601637 ((_ is Node!9300) (c!418709 (dynLambda!12705 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (value!146681 separatorToken!156))))) b!2602269))

(assert (= b!2602270 b!2602271))

(assert (= (and b!2601637 ((_ is Leaf!14305) (c!418709 (dynLambda!12705 (toChars!6282 (transformation!4529 (rule!6899 separatorToken!156))) (value!146681 separatorToken!156))))) b!2602270))

(declare-fun m!2937151 () Bool)

(assert (=> b!2602269 m!2937151))

(declare-fun m!2937153 () Bool)

(assert (=> b!2602269 m!2937153))

(declare-fun m!2937155 () Bool)

(assert (=> b!2602270 m!2937155))

(assert (=> b!2601637 m!2936605))

(declare-fun b!2602272 () Bool)

(declare-fun e!1642707 () Bool)

(assert (=> b!2602272 (= e!1642707 tp_is_empty!13713)))

(declare-fun b!2602275 () Bool)

(declare-fun tp!824421 () Bool)

(declare-fun tp!824420 () Bool)

(assert (=> b!2602275 (= e!1642707 (and tp!824421 tp!824420))))

(declare-fun b!2602273 () Bool)

(declare-fun tp!824418 () Bool)

(declare-fun tp!824419 () Bool)

(assert (=> b!2602273 (= e!1642707 (and tp!824418 tp!824419))))

(assert (=> b!2601862 (= tp!824333 e!1642707)))

(declare-fun b!2602274 () Bool)

(declare-fun tp!824417 () Bool)

(assert (=> b!2602274 (= e!1642707 tp!824417)))

(assert (= (and b!2601862 ((_ is ElementMatch!7673) (regOne!15858 (regex!4529 (rule!6899 separatorToken!156))))) b!2602272))

(assert (= (and b!2601862 ((_ is Concat!12425) (regOne!15858 (regex!4529 (rule!6899 separatorToken!156))))) b!2602273))

(assert (= (and b!2601862 ((_ is Star!7673) (regOne!15858 (regex!4529 (rule!6899 separatorToken!156))))) b!2602274))

(assert (= (and b!2601862 ((_ is Union!7673) (regOne!15858 (regex!4529 (rule!6899 separatorToken!156))))) b!2602275))

(declare-fun b!2602276 () Bool)

(declare-fun e!1642708 () Bool)

(assert (=> b!2602276 (= e!1642708 tp_is_empty!13713)))

(declare-fun b!2602279 () Bool)

(declare-fun tp!824426 () Bool)

(declare-fun tp!824425 () Bool)

(assert (=> b!2602279 (= e!1642708 (and tp!824426 tp!824425))))

(declare-fun b!2602277 () Bool)

(declare-fun tp!824423 () Bool)

(declare-fun tp!824424 () Bool)

(assert (=> b!2602277 (= e!1642708 (and tp!824423 tp!824424))))

(assert (=> b!2601862 (= tp!824334 e!1642708)))

(declare-fun b!2602278 () Bool)

(declare-fun tp!824422 () Bool)

(assert (=> b!2602278 (= e!1642708 tp!824422)))

(assert (= (and b!2601862 ((_ is ElementMatch!7673) (regTwo!15858 (regex!4529 (rule!6899 separatorToken!156))))) b!2602276))

(assert (= (and b!2601862 ((_ is Concat!12425) (regTwo!15858 (regex!4529 (rule!6899 separatorToken!156))))) b!2602277))

(assert (= (and b!2601862 ((_ is Star!7673) (regTwo!15858 (regex!4529 (rule!6899 separatorToken!156))))) b!2602278))

(assert (= (and b!2601862 ((_ is Union!7673) (regTwo!15858 (regex!4529 (rule!6899 separatorToken!156))))) b!2602279))

(declare-fun b!2602280 () Bool)

(declare-fun e!1642709 () Bool)

(assert (=> b!2602280 (= e!1642709 tp_is_empty!13713)))

(declare-fun b!2602283 () Bool)

(declare-fun tp!824431 () Bool)

(declare-fun tp!824430 () Bool)

(assert (=> b!2602283 (= e!1642709 (and tp!824431 tp!824430))))

(declare-fun b!2602281 () Bool)

(declare-fun tp!824428 () Bool)

(declare-fun tp!824429 () Bool)

(assert (=> b!2602281 (= e!1642709 (and tp!824428 tp!824429))))

(assert (=> b!2601864 (= tp!824336 e!1642709)))

(declare-fun b!2602282 () Bool)

(declare-fun tp!824427 () Bool)

(assert (=> b!2602282 (= e!1642709 tp!824427)))

(assert (= (and b!2601864 ((_ is ElementMatch!7673) (regOne!15859 (regex!4529 (rule!6899 separatorToken!156))))) b!2602280))

(assert (= (and b!2601864 ((_ is Concat!12425) (regOne!15859 (regex!4529 (rule!6899 separatorToken!156))))) b!2602281))

(assert (= (and b!2601864 ((_ is Star!7673) (regOne!15859 (regex!4529 (rule!6899 separatorToken!156))))) b!2602282))

(assert (= (and b!2601864 ((_ is Union!7673) (regOne!15859 (regex!4529 (rule!6899 separatorToken!156))))) b!2602283))

(declare-fun b!2602288 () Bool)

(declare-fun e!1642714 () Bool)

(assert (=> b!2602288 (= e!1642714 tp_is_empty!13713)))

(declare-fun b!2602291 () Bool)

(declare-fun tp!824436 () Bool)

(declare-fun tp!824435 () Bool)

(assert (=> b!2602291 (= e!1642714 (and tp!824436 tp!824435))))

(declare-fun b!2602289 () Bool)

(declare-fun tp!824433 () Bool)

(declare-fun tp!824434 () Bool)

(assert (=> b!2602289 (= e!1642714 (and tp!824433 tp!824434))))

(assert (=> b!2601864 (= tp!824335 e!1642714)))

(declare-fun b!2602290 () Bool)

(declare-fun tp!824432 () Bool)

(assert (=> b!2602290 (= e!1642714 tp!824432)))

(assert (= (and b!2601864 ((_ is ElementMatch!7673) (regTwo!15859 (regex!4529 (rule!6899 separatorToken!156))))) b!2602288))

(assert (= (and b!2601864 ((_ is Concat!12425) (regTwo!15859 (regex!4529 (rule!6899 separatorToken!156))))) b!2602289))

(assert (= (and b!2601864 ((_ is Star!7673) (regTwo!15859 (regex!4529 (rule!6899 separatorToken!156))))) b!2602290))

(assert (= (and b!2601864 ((_ is Union!7673) (regTwo!15859 (regex!4529 (rule!6899 separatorToken!156))))) b!2602291))

(declare-fun b!2602292 () Bool)

(declare-fun e!1642715 () Bool)

(assert (=> b!2602292 (= e!1642715 tp_is_empty!13713)))

(declare-fun b!2602295 () Bool)

(declare-fun tp!824441 () Bool)

(declare-fun tp!824440 () Bool)

(assert (=> b!2602295 (= e!1642715 (and tp!824441 tp!824440))))

(declare-fun b!2602293 () Bool)

(declare-fun tp!824438 () Bool)

(declare-fun tp!824439 () Bool)

(assert (=> b!2602293 (= e!1642715 (and tp!824438 tp!824439))))

(assert (=> b!2601890 (= tp!824362 e!1642715)))

(declare-fun b!2602294 () Bool)

(declare-fun tp!824437 () Bool)

(assert (=> b!2602294 (= e!1642715 tp!824437)))

(assert (= (and b!2601890 ((_ is ElementMatch!7673) (regOne!15859 (regex!4529 (h!35458 rules!1726))))) b!2602292))

(assert (= (and b!2601890 ((_ is Concat!12425) (regOne!15859 (regex!4529 (h!35458 rules!1726))))) b!2602293))

(assert (= (and b!2601890 ((_ is Star!7673) (regOne!15859 (regex!4529 (h!35458 rules!1726))))) b!2602294))

(assert (= (and b!2601890 ((_ is Union!7673) (regOne!15859 (regex!4529 (h!35458 rules!1726))))) b!2602295))

(declare-fun b!2602296 () Bool)

(declare-fun e!1642716 () Bool)

(assert (=> b!2602296 (= e!1642716 tp_is_empty!13713)))

(declare-fun b!2602299 () Bool)

(declare-fun tp!824446 () Bool)

(declare-fun tp!824445 () Bool)

(assert (=> b!2602299 (= e!1642716 (and tp!824446 tp!824445))))

(declare-fun b!2602297 () Bool)

(declare-fun tp!824443 () Bool)

(declare-fun tp!824444 () Bool)

(assert (=> b!2602297 (= e!1642716 (and tp!824443 tp!824444))))

(assert (=> b!2601890 (= tp!824361 e!1642716)))

(declare-fun b!2602298 () Bool)

(declare-fun tp!824442 () Bool)

(assert (=> b!2602298 (= e!1642716 tp!824442)))

(assert (= (and b!2601890 ((_ is ElementMatch!7673) (regTwo!15859 (regex!4529 (h!35458 rules!1726))))) b!2602296))

(assert (= (and b!2601890 ((_ is Concat!12425) (regTwo!15859 (regex!4529 (h!35458 rules!1726))))) b!2602297))

(assert (= (and b!2601890 ((_ is Star!7673) (regTwo!15859 (regex!4529 (h!35458 rules!1726))))) b!2602298))

(assert (= (and b!2601890 ((_ is Union!7673) (regTwo!15859 (regex!4529 (h!35458 rules!1726))))) b!2602299))

(declare-fun b!2602300 () Bool)

(declare-fun tp!824448 () Bool)

(declare-fun tp!824447 () Bool)

(declare-fun e!1642717 () Bool)

(assert (=> b!2602300 (= e!1642717 (and (inv!40607 (left!23101 (left!23101 (c!418710 v!6381)))) tp!824447 (inv!40607 (right!23431 (left!23101 (c!418710 v!6381)))) tp!824448))))

(declare-fun b!2602302 () Bool)

(declare-fun e!1642718 () Bool)

(declare-fun tp!824449 () Bool)

(assert (=> b!2602302 (= e!1642718 tp!824449)))

(declare-fun b!2602301 () Bool)

(assert (=> b!2602301 (= e!1642717 (and (inv!40617 (xs!12285 (left!23101 (c!418710 v!6381)))) e!1642718))))

(assert (=> b!2601884 (= tp!824355 (and (inv!40607 (left!23101 (c!418710 v!6381))) e!1642717))))

(assert (= (and b!2601884 ((_ is Node!9301) (left!23101 (c!418710 v!6381)))) b!2602300))

(assert (= b!2602301 b!2602302))

(assert (= (and b!2601884 ((_ is Leaf!14306) (left!23101 (c!418710 v!6381)))) b!2602301))

(declare-fun m!2937157 () Bool)

(assert (=> b!2602300 m!2937157))

(declare-fun m!2937159 () Bool)

(assert (=> b!2602300 m!2937159))

(declare-fun m!2937161 () Bool)

(assert (=> b!2602301 m!2937161))

(assert (=> b!2601884 m!2936795))

(declare-fun tp!824450 () Bool)

(declare-fun tp!824451 () Bool)

(declare-fun e!1642719 () Bool)

(declare-fun b!2602303 () Bool)

(assert (=> b!2602303 (= e!1642719 (and (inv!40607 (left!23101 (right!23431 (c!418710 v!6381)))) tp!824450 (inv!40607 (right!23431 (right!23431 (c!418710 v!6381)))) tp!824451))))

(declare-fun b!2602305 () Bool)

(declare-fun e!1642720 () Bool)

(declare-fun tp!824452 () Bool)

(assert (=> b!2602305 (= e!1642720 tp!824452)))

(declare-fun b!2602304 () Bool)

(assert (=> b!2602304 (= e!1642719 (and (inv!40617 (xs!12285 (right!23431 (c!418710 v!6381)))) e!1642720))))

(assert (=> b!2601884 (= tp!824356 (and (inv!40607 (right!23431 (c!418710 v!6381))) e!1642719))))

(assert (= (and b!2601884 ((_ is Node!9301) (right!23431 (c!418710 v!6381)))) b!2602303))

(assert (= b!2602304 b!2602305))

(assert (= (and b!2601884 ((_ is Leaf!14306) (right!23431 (c!418710 v!6381)))) b!2602304))

(declare-fun m!2937163 () Bool)

(assert (=> b!2602303 m!2937163))

(declare-fun m!2937165 () Bool)

(assert (=> b!2602303 m!2937165))

(declare-fun m!2937167 () Bool)

(assert (=> b!2602304 m!2937167))

(assert (=> b!2601884 m!2936797))

(declare-fun b_lambda!77969 () Bool)

(assert (= b_lambda!77965 (or b!2601610 b_lambda!77969)))

(declare-fun bs!473294 () Bool)

(declare-fun d!737271 () Bool)

(assert (= bs!473294 (and d!737271 b!2601610)))

(assert (=> bs!473294 (= (dynLambda!12706 lambda!97372 (h!35457 (list!11265 v!6381))) (not (isSeparator!4529 (rule!6899 (h!35457 (list!11265 v!6381))))))))

(assert (=> b!2602113 d!737271))

(declare-fun b_lambda!77971 () Bool)

(assert (= b_lambda!77963 (or d!737055 b_lambda!77971)))

(declare-fun bs!473295 () Bool)

(declare-fun d!737273 () Bool)

(assert (= bs!473295 (and d!737273 d!737055)))

(assert (=> bs!473295 (= (dynLambda!12706 lambda!97382 (h!35457 (list!11265 v!6381))) (rulesProduceIndividualToken!1838 thiss!14197 rules!1726 (h!35457 (list!11265 v!6381))))))

(assert (=> bs!473295 m!2937131))

(assert (=> b!2602103 d!737273))

(declare-fun b_lambda!77973 () Bool)

(assert (= b_lambda!77961 (or b!2601610 b_lambda!77973)))

(declare-fun bs!473296 () Bool)

(declare-fun d!737275 () Bool)

(assert (= bs!473296 (and d!737275 b!2601610)))

(assert (=> bs!473296 (= (dynLambda!12706 lambda!97372 (h!35457 (t!213214 lt!915423))) (not (isSeparator!4529 (rule!6899 (h!35457 (t!213214 lt!915423))))))))

(assert (=> b!2602097 d!737275))

(check-sat (not d!737169) b_and!190321 (not d!737213) (not d!737269) (not b!2602294) (not d!737215) (not b!2602248) (not b!2602304) (not b!2602279) (not d!737165) (not b!2602239) (not b_lambda!77957) (not b_next!73733) (not d!737147) (not b!2602247) (not b!2602256) (not b!2602245) (not d!737209) (not b!2602243) (not b!2602250) (not d!737221) (not b_lambda!77973) (not d!737129) (not b!2602271) (not b!2602259) (not b!2602222) (not b!2601951) (not bs!473295) (not b_lambda!77971) (not b!2602291) (not b_next!73719) (not b!2602305) (not b!2601949) (not b!2602174) (not b!2601926) (not b!2602273) (not d!737191) b_and!190315 (not b!2602098) (not b!2602269) (not bm!167424) (not b!2602221) (not d!737201) (not b!2602255) (not b_next!73721) (not b!2602049) (not b!2601922) (not b!2602177) (not d!737175) (not b!2602275) (not b!2601927) (not d!737235) (not b!2602293) (not b!2602172) (not b!2602215) b_and!190319 (not b!2601988) (not b!2601987) (not b!2602270) (not b!2602235) (not b_next!73717) (not b!2602278) (not b!2602074) (not b_next!73737) (not b!2601637) (not b_next!73729) (not b_next!73735) (not b!2602096) (not b!2602260) (not b_lambda!77969) (not b!2602249) (not b!2601909) (not b!2601991) (not b!2602277) (not b!2602281) (not b!2602254) (not b!2602105) (not d!737137) (not b!2601913) (not d!737139) (not b!2602302) (not b!2602282) (not d!737127) (not d!737153) (not b!2601970) (not b_lambda!77955) (not b!2601990) (not b!2602301) (not b!2601884) b_and!190341 b_and!190333 (not b!2602151) (not b!2602012) (not b!2602236) b_and!190331 (not b!2602216) (not b_next!73731) (not b!2602176) (not b!2602298) (not b!2602180) (not b!2602234) b_and!190337 (not d!737113) (not b!2602244) (not b!2602052) (not b!2602152) (not d!737133) (not b!2602241) (not d!737207) (not b!2602153) (not b!2602300) b_and!190335 (not b!2601964) (not b!2602299) (not b!2602297) (not d!737157) (not bm!167430) tp_is_empty!13713 (not b!2601916) (not b!2602303) (not b_next!73723) (not b!2602220) (not b!2602179) (not d!737267) (not b!2602295) (not d!737149) (not b!2602290) (not d!737145) (not b!2602274) (not b!2601971) (not b!2601912) (not b!2602182) (not d!737243) (not d!737185) (not b!2602083) (not b!2602114) (not b!2602073) (not b!2602258) (not d!737111) (not b!2602289) (not b!2601989) (not b!2602283) (not b!2602217) b_and!190339 (not b!2601923) (not b!2601910) (not b!2601986) (not b_next!73739) (not b!2602240) b_and!190311 (not d!737115))
(check-sat (not b_next!73733) (not b_next!73719) b_and!190315 (not b_next!73721) b_and!190319 b_and!190341 b_and!190321 (not b_next!73731) b_and!190337 b_and!190335 (not b_next!73723) b_and!190339 (not b_next!73717) (not b_next!73737) (not b_next!73729) (not b_next!73735) b_and!190331 b_and!190333 (not b_next!73739) b_and!190311)

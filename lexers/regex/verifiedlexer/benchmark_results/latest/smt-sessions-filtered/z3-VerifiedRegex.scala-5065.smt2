; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!257614 () Bool)

(assert start!257614)

(declare-fun b!2647189 () Bool)

(declare-fun b_free!74509 () Bool)

(declare-fun b_next!75213 () Bool)

(assert (=> b!2647189 (= b_free!74509 (not b_next!75213))))

(declare-fun tp!839631 () Bool)

(declare-fun b_and!194507 () Bool)

(assert (=> b!2647189 (= tp!839631 b_and!194507)))

(declare-fun b_free!74511 () Bool)

(declare-fun b_next!75215 () Bool)

(assert (=> b!2647189 (= b_free!74511 (not b_next!75215))))

(declare-fun tp!839638 () Bool)

(declare-fun b_and!194509 () Bool)

(assert (=> b!2647189 (= tp!839638 b_and!194509)))

(declare-fun b!2647190 () Bool)

(declare-fun b_free!74513 () Bool)

(declare-fun b_next!75217 () Bool)

(assert (=> b!2647190 (= b_free!74513 (not b_next!75217))))

(declare-fun tp!839636 () Bool)

(declare-fun b_and!194511 () Bool)

(assert (=> b!2647190 (= tp!839636 b_and!194511)))

(declare-fun b_free!74515 () Bool)

(declare-fun b_next!75219 () Bool)

(assert (=> b!2647190 (= b_free!74515 (not b_next!75219))))

(declare-fun tp!839632 () Bool)

(declare-fun b_and!194513 () Bool)

(assert (=> b!2647190 (= tp!839632 b_and!194513)))

(declare-fun b!2647178 () Bool)

(declare-fun res!1113429 () Bool)

(declare-fun e!1669112 () Bool)

(assert (=> b!2647178 (=> (not res!1113429) (not e!1669112))))

(declare-datatypes ((LexerInterface!4248 0))(
  ( (LexerInterfaceExt!4245 (__x!19579 Int)) (Lexer!4246) )
))
(declare-fun thiss!14197 () LexerInterface!4248)

(declare-datatypes ((List!30657 0))(
  ( (Nil!30557) (Cons!30557 (h!35977 (_ BitVec 16)) (t!219498 List!30657)) )
))
(declare-datatypes ((C!15748 0))(
  ( (C!15749 (val!9808 Int)) )
))
(declare-datatypes ((Regex!7795 0))(
  ( (ElementMatch!7795 (c!425783 C!15748)) (Concat!12668 (regOne!16102 Regex!7795) (regTwo!16102 Regex!7795)) (EmptyExpr!7795) (Star!7795 (reg!8124 Regex!7795)) (EmptyLang!7795) (Union!7795 (regOne!16103 Regex!7795) (regTwo!16103 Regex!7795)) )
))
(declare-datatypes ((TokenValue!4873 0))(
  ( (FloatLiteralValue!9746 (text!34556 List!30657)) (TokenValueExt!4872 (__x!19580 Int)) (Broken!24365 (value!150132 List!30657)) (Object!4972) (End!4873) (Def!4873) (Underscore!4873) (Match!4873) (Else!4873) (Error!4873) (Case!4873) (If!4873) (Extends!4873) (Abstract!4873) (Class!4873) (Val!4873) (DelimiterValue!9746 (del!4933 List!30657)) (KeywordValue!4879 (value!150133 List!30657)) (CommentValue!9746 (value!150134 List!30657)) (WhitespaceValue!9746 (value!150135 List!30657)) (IndentationValue!4873 (value!150136 List!30657)) (String!34248) (Int32!4873) (Broken!24366 (value!150137 List!30657)) (Boolean!4874) (Unit!44628) (OperatorValue!4876 (op!4933 List!30657)) (IdentifierValue!9746 (value!150138 List!30657)) (IdentifierValue!9747 (value!150139 List!30657)) (WhitespaceValue!9747 (value!150140 List!30657)) (True!9746) (False!9746) (Broken!24367 (value!150141 List!30657)) (Broken!24368 (value!150142 List!30657)) (True!9747) (RightBrace!4873) (RightBracket!4873) (Colon!4873) (Null!4873) (Comma!4873) (LeftBracket!4873) (False!9747) (LeftBrace!4873) (ImaginaryLiteralValue!4873 (text!34557 List!30657)) (StringLiteralValue!14619 (value!150143 List!30657)) (EOFValue!4873 (value!150144 List!30657)) (IdentValue!4873 (value!150145 List!30657)) (DelimiterValue!9747 (value!150146 List!30657)) (DedentValue!4873 (value!150147 List!30657)) (NewLineValue!4873 (value!150148 List!30657)) (IntegerValue!14619 (value!150149 (_ BitVec 32)) (text!34558 List!30657)) (IntegerValue!14620 (value!150150 Int) (text!34559 List!30657)) (Times!4873) (Or!4873) (Equal!4873) (Minus!4873) (Broken!24369 (value!150151 List!30657)) (And!4873) (Div!4873) (LessEqual!4873) (Mod!4873) (Concat!12669) (Not!4873) (Plus!4873) (SpaceValue!4873 (value!150152 List!30657)) (IntegerValue!14621 (value!150153 Int) (text!34560 List!30657)) (StringLiteralValue!14620 (text!34561 List!30657)) (FloatLiteralValue!9747 (text!34562 List!30657)) (BytesLiteralValue!4873 (value!150154 List!30657)) (CommentValue!9747 (value!150155 List!30657)) (StringLiteralValue!14621 (value!150156 List!30657)) (ErrorTokenValue!4873 (msg!4934 List!30657)) )
))
(declare-datatypes ((List!30658 0))(
  ( (Nil!30558) (Cons!30558 (h!35978 C!15748) (t!219499 List!30658)) )
))
(declare-datatypes ((IArray!19093 0))(
  ( (IArray!19094 (innerList!9604 List!30658)) )
))
(declare-datatypes ((Conc!9544 0))(
  ( (Node!9544 (left!23609 Conc!9544) (right!23939 Conc!9544) (csize!19318 Int) (cheight!9755 Int)) (Leaf!14610 (xs!12556 IArray!19093) (csize!19319 Int)) (Empty!9544) )
))
(declare-datatypes ((BalanceConc!18702 0))(
  ( (BalanceConc!18703 (c!425784 Conc!9544)) )
))
(declare-datatypes ((TokenValueInjection!9186 0))(
  ( (TokenValueInjection!9187 (toValue!6577 Int) (toChars!6436 Int)) )
))
(declare-datatypes ((String!34249 0))(
  ( (String!34250 (value!150157 String)) )
))
(declare-datatypes ((Rule!9102 0))(
  ( (Rule!9103 (regex!4651 Regex!7795) (tag!5147 String!34249) (isSeparator!4651 Bool) (transformation!4651 TokenValueInjection!9186)) )
))
(declare-datatypes ((List!30659 0))(
  ( (Nil!30559) (Cons!30559 (h!35979 Rule!9102) (t!219500 List!30659)) )
))
(declare-fun rules!1726 () List!30659)

(declare-datatypes ((Token!8772 0))(
  ( (Token!8773 (value!150158 TokenValue!4873) (rule!7039 Rule!9102) (size!23645 Int) (originalCharacters!5417 List!30658)) )
))
(declare-fun separatorToken!156 () Token!8772)

(declare-fun rulesProduceIndividualToken!1960 (LexerInterface!4248 List!30659 Token!8772) Bool)

(assert (=> b!2647178 (= res!1113429 (rulesProduceIndividualToken!1960 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2647179 () Bool)

(declare-fun res!1113437 () Bool)

(assert (=> b!2647179 (=> (not res!1113437) (not e!1669112))))

(declare-datatypes ((List!30660 0))(
  ( (Nil!30560) (Cons!30560 (h!35980 Token!8772) (t!219501 List!30660)) )
))
(declare-datatypes ((IArray!19095 0))(
  ( (IArray!19096 (innerList!9605 List!30660)) )
))
(declare-datatypes ((Conc!9545 0))(
  ( (Node!9545 (left!23610 Conc!9545) (right!23940 Conc!9545) (csize!19320 Int) (cheight!9756 Int)) (Leaf!14611 (xs!12557 IArray!19095) (csize!19321 Int)) (Empty!9545) )
))
(declare-datatypes ((BalanceConc!18704 0))(
  ( (BalanceConc!18705 (c!425785 Conc!9545)) )
))
(declare-fun v!6381 () BalanceConc!18704)

(declare-fun lambda!99104 () Int)

(declare-fun forall!6430 (BalanceConc!18704 Int) Bool)

(assert (=> b!2647179 (= res!1113437 (forall!6430 v!6381 lambda!99104))))

(declare-fun b!2647180 () Bool)

(declare-fun e!1669115 () Bool)

(declare-fun e!1669106 () Bool)

(declare-fun tp!839635 () Bool)

(assert (=> b!2647180 (= e!1669115 (and e!1669106 tp!839635))))

(declare-fun b!2647181 () Bool)

(declare-fun e!1669104 () Bool)

(declare-fun from!862 () Int)

(declare-fun lt!931493 () List!30660)

(declare-fun size!23646 (List!30660) Int)

(assert (=> b!2647181 (= e!1669104 (not (< from!862 (size!23646 lt!931493))))))

(declare-fun head!6051 (List!30660) Token!8772)

(declare-fun drop!1647 (List!30660 Int) List!30660)

(declare-fun apply!7302 (List!30660 Int) Token!8772)

(assert (=> b!2647181 (= (head!6051 (drop!1647 lt!931493 from!862)) (apply!7302 lt!931493 from!862))))

(declare-datatypes ((Unit!44629 0))(
  ( (Unit!44630) )
))
(declare-fun lt!931495 () Unit!44629)

(declare-fun lemmaDropApply!858 (List!30660 Int) Unit!44629)

(assert (=> b!2647181 (= lt!931495 (lemmaDropApply!858 lt!931493 from!862))))

(declare-fun res!1113435 () Bool)

(declare-fun e!1669107 () Bool)

(assert (=> start!257614 (=> (not res!1113435) (not e!1669107))))

(get-info :version)

(assert (=> start!257614 (= res!1113435 (and ((_ is Lexer!4246) thiss!14197) (>= from!862 0)))))

(assert (=> start!257614 e!1669107))

(assert (=> start!257614 true))

(assert (=> start!257614 e!1669115))

(declare-fun e!1669109 () Bool)

(declare-fun inv!41488 (Token!8772) Bool)

(assert (=> start!257614 (and (inv!41488 separatorToken!156) e!1669109)))

(declare-fun e!1669105 () Bool)

(declare-fun inv!41489 (BalanceConc!18704) Bool)

(assert (=> start!257614 (and (inv!41489 v!6381) e!1669105)))

(declare-fun b!2647182 () Bool)

(declare-fun res!1113431 () Bool)

(assert (=> b!2647182 (=> (not res!1113431) (not e!1669112))))

(declare-fun sepAndNonSepRulesDisjointChars!1224 (List!30659 List!30659) Bool)

(assert (=> b!2647182 (= res!1113431 (sepAndNonSepRulesDisjointChars!1224 rules!1726 rules!1726))))

(declare-fun e!1669103 () Bool)

(declare-fun b!2647183 () Bool)

(declare-fun tp!839633 () Bool)

(declare-fun inv!41483 (String!34249) Bool)

(declare-fun inv!41490 (TokenValueInjection!9186) Bool)

(assert (=> b!2647183 (= e!1669106 (and tp!839633 (inv!41483 (tag!5147 (h!35979 rules!1726))) (inv!41490 (transformation!4651 (h!35979 rules!1726))) e!1669103))))

(declare-fun b!2647184 () Bool)

(declare-fun tp!839637 () Bool)

(declare-fun inv!41491 (Conc!9545) Bool)

(assert (=> b!2647184 (= e!1669105 (and (inv!41491 (c!425785 v!6381)) tp!839637))))

(declare-fun b!2647185 () Bool)

(declare-fun tp!839634 () Bool)

(declare-fun e!1669111 () Bool)

(declare-fun inv!21 (TokenValue!4873) Bool)

(assert (=> b!2647185 (= e!1669109 (and (inv!21 (value!150158 separatorToken!156)) e!1669111 tp!839634))))

(declare-fun b!2647186 () Bool)

(assert (=> b!2647186 (= e!1669107 e!1669112)))

(declare-fun res!1113430 () Bool)

(assert (=> b!2647186 (=> (not res!1113430) (not e!1669112))))

(declare-fun lt!931494 () Int)

(assert (=> b!2647186 (= res!1113430 (<= from!862 lt!931494))))

(declare-fun size!23647 (BalanceConc!18704) Int)

(assert (=> b!2647186 (= lt!931494 (size!23647 v!6381))))

(declare-fun b!2647187 () Bool)

(declare-fun res!1113434 () Bool)

(assert (=> b!2647187 (=> (not res!1113434) (not e!1669112))))

(assert (=> b!2647187 (= res!1113434 (isSeparator!4651 (rule!7039 separatorToken!156)))))

(declare-fun tp!839630 () Bool)

(declare-fun b!2647188 () Bool)

(declare-fun e!1669110 () Bool)

(assert (=> b!2647188 (= e!1669111 (and tp!839630 (inv!41483 (tag!5147 (rule!7039 separatorToken!156))) (inv!41490 (transformation!4651 (rule!7039 separatorToken!156))) e!1669110))))

(assert (=> b!2647189 (= e!1669110 (and tp!839631 tp!839638))))

(assert (=> b!2647190 (= e!1669103 (and tp!839636 tp!839632))))

(declare-fun b!2647191 () Bool)

(declare-fun res!1113433 () Bool)

(assert (=> b!2647191 (=> (not res!1113433) (not e!1669112))))

(declare-fun isEmpty!17455 (List!30659) Bool)

(assert (=> b!2647191 (= res!1113433 (not (isEmpty!17455 rules!1726)))))

(declare-fun b!2647192 () Bool)

(declare-fun res!1113438 () Bool)

(assert (=> b!2647192 (=> (not res!1113438) (not e!1669112))))

(declare-fun rulesInvariant!3748 (LexerInterface!4248 List!30659) Bool)

(assert (=> b!2647192 (= res!1113438 (rulesInvariant!3748 thiss!14197 rules!1726))))

(declare-fun b!2647193 () Bool)

(assert (=> b!2647193 (= e!1669112 e!1669104)))

(declare-fun res!1113432 () Bool)

(assert (=> b!2647193 (=> (not res!1113432) (not e!1669104))))

(assert (=> b!2647193 (= res!1113432 (< from!862 lt!931494))))

(declare-fun lt!931492 () Unit!44629)

(declare-fun lemmaContentSubsetPreservesForall!318 (List!30660 List!30660 Int) Unit!44629)

(declare-fun dropList!952 (BalanceConc!18704 Int) List!30660)

(assert (=> b!2647193 (= lt!931492 (lemmaContentSubsetPreservesForall!318 lt!931493 (dropList!952 v!6381 from!862) lambda!99104))))

(declare-fun list!11519 (BalanceConc!18704) List!30660)

(assert (=> b!2647193 (= lt!931493 (list!11519 v!6381))))

(declare-fun b!2647194 () Bool)

(declare-fun res!1113436 () Bool)

(assert (=> b!2647194 (=> (not res!1113436) (not e!1669112))))

(declare-fun rulesProduceEachTokenIndividually!1068 (LexerInterface!4248 List!30659 BalanceConc!18704) Bool)

(assert (=> b!2647194 (= res!1113436 (rulesProduceEachTokenIndividually!1068 thiss!14197 rules!1726 v!6381))))

(assert (= (and start!257614 res!1113435) b!2647186))

(assert (= (and b!2647186 res!1113430) b!2647191))

(assert (= (and b!2647191 res!1113433) b!2647192))

(assert (= (and b!2647192 res!1113438) b!2647194))

(assert (= (and b!2647194 res!1113436) b!2647178))

(assert (= (and b!2647178 res!1113429) b!2647187))

(assert (= (and b!2647187 res!1113434) b!2647179))

(assert (= (and b!2647179 res!1113437) b!2647182))

(assert (= (and b!2647182 res!1113431) b!2647193))

(assert (= (and b!2647193 res!1113432) b!2647181))

(assert (= b!2647183 b!2647190))

(assert (= b!2647180 b!2647183))

(assert (= (and start!257614 ((_ is Cons!30559) rules!1726)) b!2647180))

(assert (= b!2647188 b!2647189))

(assert (= b!2647185 b!2647188))

(assert (= start!257614 b!2647185))

(assert (= start!257614 b!2647184))

(declare-fun m!2995993 () Bool)

(assert (=> b!2647194 m!2995993))

(declare-fun m!2995995 () Bool)

(assert (=> b!2647184 m!2995995))

(declare-fun m!2995997 () Bool)

(assert (=> b!2647183 m!2995997))

(declare-fun m!2995999 () Bool)

(assert (=> b!2647183 m!2995999))

(declare-fun m!2996001 () Bool)

(assert (=> b!2647179 m!2996001))

(declare-fun m!2996003 () Bool)

(assert (=> start!257614 m!2996003))

(declare-fun m!2996005 () Bool)

(assert (=> start!257614 m!2996005))

(declare-fun m!2996007 () Bool)

(assert (=> b!2647185 m!2996007))

(declare-fun m!2996009 () Bool)

(assert (=> b!2647182 m!2996009))

(declare-fun m!2996011 () Bool)

(assert (=> b!2647192 m!2996011))

(declare-fun m!2996013 () Bool)

(assert (=> b!2647188 m!2996013))

(declare-fun m!2996015 () Bool)

(assert (=> b!2647188 m!2996015))

(declare-fun m!2996017 () Bool)

(assert (=> b!2647193 m!2996017))

(assert (=> b!2647193 m!2996017))

(declare-fun m!2996019 () Bool)

(assert (=> b!2647193 m!2996019))

(declare-fun m!2996021 () Bool)

(assert (=> b!2647193 m!2996021))

(declare-fun m!2996023 () Bool)

(assert (=> b!2647181 m!2996023))

(declare-fun m!2996025 () Bool)

(assert (=> b!2647181 m!2996025))

(declare-fun m!2996027 () Bool)

(assert (=> b!2647181 m!2996027))

(declare-fun m!2996029 () Bool)

(assert (=> b!2647181 m!2996029))

(declare-fun m!2996031 () Bool)

(assert (=> b!2647181 m!2996031))

(assert (=> b!2647181 m!2996027))

(declare-fun m!2996033 () Bool)

(assert (=> b!2647186 m!2996033))

(declare-fun m!2996035 () Bool)

(assert (=> b!2647178 m!2996035))

(declare-fun m!2996037 () Bool)

(assert (=> b!2647191 m!2996037))

(check-sat (not b!2647178) b_and!194513 (not b!2647192) (not b_next!75219) (not b_next!75217) (not start!257614) (not b!2647183) (not b!2647186) (not b!2647185) b_and!194511 (not b!2647193) (not b!2647194) (not b!2647188) (not b_next!75215) (not b!2647181) (not b!2647182) b_and!194509 (not b!2647191) b_and!194507 (not b_next!75213) (not b!2647179) (not b!2647184) (not b!2647180))
(check-sat b_and!194513 (not b_next!75219) (not b_next!75217) (not b_next!75215) b_and!194509 b_and!194511 b_and!194507 (not b_next!75213))
(get-model)

(declare-fun d!752814 () Bool)

(declare-fun lt!931498 () Int)

(assert (=> d!752814 (= lt!931498 (size!23646 (list!11519 v!6381)))))

(declare-fun size!23650 (Conc!9545) Int)

(assert (=> d!752814 (= lt!931498 (size!23650 (c!425785 v!6381)))))

(assert (=> d!752814 (= (size!23647 v!6381) lt!931498)))

(declare-fun bs!477014 () Bool)

(assert (= bs!477014 d!752814))

(assert (=> bs!477014 m!2996021))

(assert (=> bs!477014 m!2996021))

(declare-fun m!2996039 () Bool)

(assert (=> bs!477014 m!2996039))

(declare-fun m!2996041 () Bool)

(assert (=> bs!477014 m!2996041))

(assert (=> b!2647186 d!752814))

(declare-fun d!752816 () Bool)

(assert (=> d!752816 (= (inv!41483 (tag!5147 (rule!7039 separatorToken!156))) (= (mod (str.len (value!150157 (tag!5147 (rule!7039 separatorToken!156)))) 2) 0))))

(assert (=> b!2647188 d!752816))

(declare-fun d!752818 () Bool)

(declare-fun res!1113446 () Bool)

(declare-fun e!1669118 () Bool)

(assert (=> d!752818 (=> (not res!1113446) (not e!1669118))))

(declare-fun semiInverseModEq!1926 (Int Int) Bool)

(assert (=> d!752818 (= res!1113446 (semiInverseModEq!1926 (toChars!6436 (transformation!4651 (rule!7039 separatorToken!156))) (toValue!6577 (transformation!4651 (rule!7039 separatorToken!156)))))))

(assert (=> d!752818 (= (inv!41490 (transformation!4651 (rule!7039 separatorToken!156))) e!1669118)))

(declare-fun b!2647197 () Bool)

(declare-fun equivClasses!1827 (Int Int) Bool)

(assert (=> b!2647197 (= e!1669118 (equivClasses!1827 (toChars!6436 (transformation!4651 (rule!7039 separatorToken!156))) (toValue!6577 (transformation!4651 (rule!7039 separatorToken!156)))))))

(assert (= (and d!752818 res!1113446) b!2647197))

(declare-fun m!2996043 () Bool)

(assert (=> d!752818 m!2996043))

(declare-fun m!2996045 () Bool)

(assert (=> b!2647197 m!2996045))

(assert (=> b!2647188 d!752818))

(declare-fun d!752822 () Bool)

(declare-fun c!425788 () Bool)

(assert (=> d!752822 (= c!425788 ((_ is Node!9545) (c!425785 v!6381)))))

(declare-fun e!1669129 () Bool)

(assert (=> d!752822 (= (inv!41491 (c!425785 v!6381)) e!1669129)))

(declare-fun b!2647215 () Bool)

(declare-fun inv!41496 (Conc!9545) Bool)

(assert (=> b!2647215 (= e!1669129 (inv!41496 (c!425785 v!6381)))))

(declare-fun b!2647216 () Bool)

(declare-fun e!1669130 () Bool)

(assert (=> b!2647216 (= e!1669129 e!1669130)))

(declare-fun res!1113455 () Bool)

(assert (=> b!2647216 (= res!1113455 (not ((_ is Leaf!14611) (c!425785 v!6381))))))

(assert (=> b!2647216 (=> res!1113455 e!1669130)))

(declare-fun b!2647217 () Bool)

(declare-fun inv!41497 (Conc!9545) Bool)

(assert (=> b!2647217 (= e!1669130 (inv!41497 (c!425785 v!6381)))))

(assert (= (and d!752822 c!425788) b!2647215))

(assert (= (and d!752822 (not c!425788)) b!2647216))

(assert (= (and b!2647216 (not res!1113455)) b!2647217))

(declare-fun m!2996055 () Bool)

(assert (=> b!2647215 m!2996055))

(declare-fun m!2996057 () Bool)

(assert (=> b!2647217 m!2996057))

(assert (=> b!2647184 d!752822))

(declare-fun bs!477021 () Bool)

(declare-fun d!752824 () Bool)

(assert (= bs!477021 (and d!752824 b!2647179)))

(declare-fun lambda!99114 () Int)

(assert (=> bs!477021 (not (= lambda!99114 lambda!99104))))

(declare-fun b!2647274 () Bool)

(declare-fun e!1669175 () Bool)

(assert (=> b!2647274 (= e!1669175 true)))

(declare-fun b!2647273 () Bool)

(declare-fun e!1669174 () Bool)

(assert (=> b!2647273 (= e!1669174 e!1669175)))

(declare-fun b!2647272 () Bool)

(declare-fun e!1669173 () Bool)

(assert (=> b!2647272 (= e!1669173 e!1669174)))

(assert (=> d!752824 e!1669173))

(assert (= b!2647273 b!2647274))

(assert (= b!2647272 b!2647273))

(assert (= (and d!752824 ((_ is Cons!30559) rules!1726)) b!2647272))

(declare-fun order!16623 () Int)

(declare-fun order!16625 () Int)

(declare-fun dynLambda!13133 (Int Int) Int)

(declare-fun dynLambda!13134 (Int Int) Int)

(assert (=> b!2647274 (< (dynLambda!13133 order!16623 (toValue!6577 (transformation!4651 (h!35979 rules!1726)))) (dynLambda!13134 order!16625 lambda!99114))))

(declare-fun order!16627 () Int)

(declare-fun dynLambda!13135 (Int Int) Int)

(assert (=> b!2647274 (< (dynLambda!13135 order!16627 (toChars!6436 (transformation!4651 (h!35979 rules!1726)))) (dynLambda!13134 order!16625 lambda!99114))))

(assert (=> d!752824 true))

(declare-fun e!1669166 () Bool)

(assert (=> d!752824 e!1669166))

(declare-fun res!1113476 () Bool)

(assert (=> d!752824 (=> (not res!1113476) (not e!1669166))))

(declare-fun lt!931510 () Bool)

(declare-fun forall!6432 (List!30660 Int) Bool)

(assert (=> d!752824 (= res!1113476 (= lt!931510 (forall!6432 (list!11519 v!6381) lambda!99114)))))

(assert (=> d!752824 (= lt!931510 (forall!6430 v!6381 lambda!99114))))

(assert (=> d!752824 (not (isEmpty!17455 rules!1726))))

(assert (=> d!752824 (= (rulesProduceEachTokenIndividually!1068 thiss!14197 rules!1726 v!6381) lt!931510)))

(declare-fun b!2647263 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1478 (LexerInterface!4248 List!30659 List!30660) Bool)

(assert (=> b!2647263 (= e!1669166 (= lt!931510 (rulesProduceEachTokenIndividuallyList!1478 thiss!14197 rules!1726 (list!11519 v!6381))))))

(assert (= (and d!752824 res!1113476) b!2647263))

(assert (=> d!752824 m!2996021))

(assert (=> d!752824 m!2996021))

(declare-fun m!2996103 () Bool)

(assert (=> d!752824 m!2996103))

(declare-fun m!2996105 () Bool)

(assert (=> d!752824 m!2996105))

(assert (=> d!752824 m!2996037))

(assert (=> b!2647263 m!2996021))

(assert (=> b!2647263 m!2996021))

(declare-fun m!2996107 () Bool)

(assert (=> b!2647263 m!2996107))

(assert (=> b!2647194 d!752824))

(declare-fun d!752852 () Bool)

(assert (=> d!752852 (= (inv!41483 (tag!5147 (h!35979 rules!1726))) (= (mod (str.len (value!150157 (tag!5147 (h!35979 rules!1726)))) 2) 0))))

(assert (=> b!2647183 d!752852))

(declare-fun d!752854 () Bool)

(declare-fun res!1113477 () Bool)

(declare-fun e!1669176 () Bool)

(assert (=> d!752854 (=> (not res!1113477) (not e!1669176))))

(assert (=> d!752854 (= res!1113477 (semiInverseModEq!1926 (toChars!6436 (transformation!4651 (h!35979 rules!1726))) (toValue!6577 (transformation!4651 (h!35979 rules!1726)))))))

(assert (=> d!752854 (= (inv!41490 (transformation!4651 (h!35979 rules!1726))) e!1669176)))

(declare-fun b!2647277 () Bool)

(assert (=> b!2647277 (= e!1669176 (equivClasses!1827 (toChars!6436 (transformation!4651 (h!35979 rules!1726))) (toValue!6577 (transformation!4651 (h!35979 rules!1726)))))))

(assert (= (and d!752854 res!1113477) b!2647277))

(declare-fun m!2996109 () Bool)

(assert (=> d!752854 m!2996109))

(declare-fun m!2996111 () Bool)

(assert (=> b!2647277 m!2996111))

(assert (=> b!2647183 d!752854))

(declare-fun d!752856 () Bool)

(declare-fun res!1113482 () Bool)

(declare-fun e!1669179 () Bool)

(assert (=> d!752856 (=> (not res!1113482) (not e!1669179))))

(declare-fun isEmpty!17458 (List!30658) Bool)

(assert (=> d!752856 (= res!1113482 (not (isEmpty!17458 (originalCharacters!5417 separatorToken!156))))))

(assert (=> d!752856 (= (inv!41488 separatorToken!156) e!1669179)))

(declare-fun b!2647282 () Bool)

(declare-fun res!1113483 () Bool)

(assert (=> b!2647282 (=> (not res!1113483) (not e!1669179))))

(declare-fun list!11522 (BalanceConc!18702) List!30658)

(declare-fun dynLambda!13136 (Int TokenValue!4873) BalanceConc!18702)

(assert (=> b!2647282 (= res!1113483 (= (originalCharacters!5417 separatorToken!156) (list!11522 (dynLambda!13136 (toChars!6436 (transformation!4651 (rule!7039 separatorToken!156))) (value!150158 separatorToken!156)))))))

(declare-fun b!2647283 () Bool)

(declare-fun size!23651 (List!30658) Int)

(assert (=> b!2647283 (= e!1669179 (= (size!23645 separatorToken!156) (size!23651 (originalCharacters!5417 separatorToken!156))))))

(assert (= (and d!752856 res!1113482) b!2647282))

(assert (= (and b!2647282 res!1113483) b!2647283))

(declare-fun b_lambda!79969 () Bool)

(assert (=> (not b_lambda!79969) (not b!2647282)))

(declare-fun t!219515 () Bool)

(declare-fun tb!146375 () Bool)

(assert (=> (and b!2647189 (= (toChars!6436 (transformation!4651 (rule!7039 separatorToken!156))) (toChars!6436 (transformation!4651 (rule!7039 separatorToken!156)))) t!219515) tb!146375))

(declare-fun b!2647288 () Bool)

(declare-fun e!1669182 () Bool)

(declare-fun tp!839644 () Bool)

(declare-fun inv!41498 (Conc!9544) Bool)

(assert (=> b!2647288 (= e!1669182 (and (inv!41498 (c!425784 (dynLambda!13136 (toChars!6436 (transformation!4651 (rule!7039 separatorToken!156))) (value!150158 separatorToken!156)))) tp!839644))))

(declare-fun result!181380 () Bool)

(declare-fun inv!41499 (BalanceConc!18702) Bool)

(assert (=> tb!146375 (= result!181380 (and (inv!41499 (dynLambda!13136 (toChars!6436 (transformation!4651 (rule!7039 separatorToken!156))) (value!150158 separatorToken!156))) e!1669182))))

(assert (= tb!146375 b!2647288))

(declare-fun m!2996113 () Bool)

(assert (=> b!2647288 m!2996113))

(declare-fun m!2996115 () Bool)

(assert (=> tb!146375 m!2996115))

(assert (=> b!2647282 t!219515))

(declare-fun b_and!194519 () Bool)

(assert (= b_and!194509 (and (=> t!219515 result!181380) b_and!194519)))

(declare-fun tb!146377 () Bool)

(declare-fun t!219517 () Bool)

(assert (=> (and b!2647190 (= (toChars!6436 (transformation!4651 (h!35979 rules!1726))) (toChars!6436 (transformation!4651 (rule!7039 separatorToken!156)))) t!219517) tb!146377))

(declare-fun result!181384 () Bool)

(assert (= result!181384 result!181380))

(assert (=> b!2647282 t!219517))

(declare-fun b_and!194521 () Bool)

(assert (= b_and!194513 (and (=> t!219517 result!181384) b_and!194521)))

(declare-fun m!2996117 () Bool)

(assert (=> d!752856 m!2996117))

(declare-fun m!2996119 () Bool)

(assert (=> b!2647282 m!2996119))

(assert (=> b!2647282 m!2996119))

(declare-fun m!2996121 () Bool)

(assert (=> b!2647282 m!2996121))

(declare-fun m!2996123 () Bool)

(assert (=> b!2647283 m!2996123))

(assert (=> start!257614 d!752856))

(declare-fun d!752858 () Bool)

(declare-fun isBalanced!2895 (Conc!9545) Bool)

(assert (=> d!752858 (= (inv!41489 v!6381) (isBalanced!2895 (c!425785 v!6381)))))

(declare-fun bs!477022 () Bool)

(assert (= bs!477022 d!752858))

(declare-fun m!2996125 () Bool)

(assert (=> bs!477022 m!2996125))

(assert (=> start!257614 d!752858))

(declare-fun b!2647299 () Bool)

(declare-fun res!1113486 () Bool)

(declare-fun e!1669190 () Bool)

(assert (=> b!2647299 (=> res!1113486 e!1669190)))

(assert (=> b!2647299 (= res!1113486 (not ((_ is IntegerValue!14621) (value!150158 separatorToken!156))))))

(declare-fun e!1669191 () Bool)

(assert (=> b!2647299 (= e!1669191 e!1669190)))

(declare-fun b!2647300 () Bool)

(declare-fun e!1669189 () Bool)

(assert (=> b!2647300 (= e!1669189 e!1669191)))

(declare-fun c!425800 () Bool)

(assert (=> b!2647300 (= c!425800 ((_ is IntegerValue!14620) (value!150158 separatorToken!156)))))

(declare-fun b!2647301 () Bool)

(declare-fun inv!16 (TokenValue!4873) Bool)

(assert (=> b!2647301 (= e!1669189 (inv!16 (value!150158 separatorToken!156)))))

(declare-fun d!752860 () Bool)

(declare-fun c!425799 () Bool)

(assert (=> d!752860 (= c!425799 ((_ is IntegerValue!14619) (value!150158 separatorToken!156)))))

(assert (=> d!752860 (= (inv!21 (value!150158 separatorToken!156)) e!1669189)))

(declare-fun b!2647302 () Bool)

(declare-fun inv!17 (TokenValue!4873) Bool)

(assert (=> b!2647302 (= e!1669191 (inv!17 (value!150158 separatorToken!156)))))

(declare-fun b!2647303 () Bool)

(declare-fun inv!15 (TokenValue!4873) Bool)

(assert (=> b!2647303 (= e!1669190 (inv!15 (value!150158 separatorToken!156)))))

(assert (= (and d!752860 c!425799) b!2647301))

(assert (= (and d!752860 (not c!425799)) b!2647300))

(assert (= (and b!2647300 c!425800) b!2647302))

(assert (= (and b!2647300 (not c!425800)) b!2647299))

(assert (= (and b!2647299 (not res!1113486)) b!2647303))

(declare-fun m!2996127 () Bool)

(assert (=> b!2647301 m!2996127))

(declare-fun m!2996129 () Bool)

(assert (=> b!2647302 m!2996129))

(declare-fun m!2996131 () Bool)

(assert (=> b!2647303 m!2996131))

(assert (=> b!2647185 d!752860))

(declare-fun d!752862 () Bool)

(declare-fun res!1113489 () Bool)

(declare-fun e!1669194 () Bool)

(assert (=> d!752862 (=> (not res!1113489) (not e!1669194))))

(declare-fun rulesValid!1732 (LexerInterface!4248 List!30659) Bool)

(assert (=> d!752862 (= res!1113489 (rulesValid!1732 thiss!14197 rules!1726))))

(assert (=> d!752862 (= (rulesInvariant!3748 thiss!14197 rules!1726) e!1669194)))

(declare-fun b!2647306 () Bool)

(declare-datatypes ((List!30662 0))(
  ( (Nil!30562) (Cons!30562 (h!35982 String!34249) (t!219525 List!30662)) )
))
(declare-fun noDuplicateTag!1728 (LexerInterface!4248 List!30659 List!30662) Bool)

(assert (=> b!2647306 (= e!1669194 (noDuplicateTag!1728 thiss!14197 rules!1726 Nil!30562))))

(assert (= (and d!752862 res!1113489) b!2647306))

(declare-fun m!2996133 () Bool)

(assert (=> d!752862 m!2996133))

(declare-fun m!2996135 () Bool)

(assert (=> b!2647306 m!2996135))

(assert (=> b!2647192 d!752862))

(declare-fun d!752864 () Bool)

(assert (=> d!752864 (= (head!6051 (drop!1647 lt!931493 from!862)) (apply!7302 lt!931493 from!862))))

(declare-fun lt!931513 () Unit!44629)

(declare-fun choose!15696 (List!30660 Int) Unit!44629)

(assert (=> d!752864 (= lt!931513 (choose!15696 lt!931493 from!862))))

(declare-fun e!1669197 () Bool)

(assert (=> d!752864 e!1669197))

(declare-fun res!1113492 () Bool)

(assert (=> d!752864 (=> (not res!1113492) (not e!1669197))))

(assert (=> d!752864 (= res!1113492 (>= from!862 0))))

(assert (=> d!752864 (= (lemmaDropApply!858 lt!931493 from!862) lt!931513)))

(declare-fun b!2647309 () Bool)

(assert (=> b!2647309 (= e!1669197 (< from!862 (size!23646 lt!931493)))))

(assert (= (and d!752864 res!1113492) b!2647309))

(assert (=> d!752864 m!2996027))

(assert (=> d!752864 m!2996027))

(assert (=> d!752864 m!2996029))

(assert (=> d!752864 m!2996031))

(declare-fun m!2996137 () Bool)

(assert (=> d!752864 m!2996137))

(assert (=> b!2647309 m!2996025))

(assert (=> b!2647181 d!752864))

(declare-fun d!752866 () Bool)

(declare-fun lt!931516 () Token!8772)

(declare-fun contains!5821 (List!30660 Token!8772) Bool)

(assert (=> d!752866 (contains!5821 lt!931493 lt!931516)))

(declare-fun e!1669203 () Token!8772)

(assert (=> d!752866 (= lt!931516 e!1669203)))

(declare-fun c!425803 () Bool)

(assert (=> d!752866 (= c!425803 (= from!862 0))))

(declare-fun e!1669202 () Bool)

(assert (=> d!752866 e!1669202))

(declare-fun res!1113495 () Bool)

(assert (=> d!752866 (=> (not res!1113495) (not e!1669202))))

(assert (=> d!752866 (= res!1113495 (<= 0 from!862))))

(assert (=> d!752866 (= (apply!7302 lt!931493 from!862) lt!931516)))

(declare-fun b!2647316 () Bool)

(assert (=> b!2647316 (= e!1669202 (< from!862 (size!23646 lt!931493)))))

(declare-fun b!2647317 () Bool)

(assert (=> b!2647317 (= e!1669203 (head!6051 lt!931493))))

(declare-fun b!2647318 () Bool)

(declare-fun tail!4289 (List!30660) List!30660)

(assert (=> b!2647318 (= e!1669203 (apply!7302 (tail!4289 lt!931493) (- from!862 1)))))

(assert (= (and d!752866 res!1113495) b!2647316))

(assert (= (and d!752866 c!425803) b!2647317))

(assert (= (and d!752866 (not c!425803)) b!2647318))

(declare-fun m!2996139 () Bool)

(assert (=> d!752866 m!2996139))

(assert (=> b!2647316 m!2996025))

(declare-fun m!2996141 () Bool)

(assert (=> b!2647317 m!2996141))

(declare-fun m!2996143 () Bool)

(assert (=> b!2647318 m!2996143))

(assert (=> b!2647318 m!2996143))

(declare-fun m!2996145 () Bool)

(assert (=> b!2647318 m!2996145))

(assert (=> b!2647181 d!752866))

(declare-fun b!2647343 () Bool)

(declare-fun e!1669222 () Int)

(declare-fun call!170223 () Int)

(assert (=> b!2647343 (= e!1669222 (- call!170223 from!862))))

(declare-fun b!2647344 () Bool)

(declare-fun e!1669221 () List!30660)

(assert (=> b!2647344 (= e!1669221 Nil!30560)))

(declare-fun b!2647345 () Bool)

(declare-fun e!1669220 () Int)

(assert (=> b!2647345 (= e!1669220 call!170223)))

(declare-fun b!2647346 () Bool)

(declare-fun e!1669219 () List!30660)

(assert (=> b!2647346 (= e!1669219 lt!931493)))

(declare-fun b!2647348 () Bool)

(assert (=> b!2647348 (= e!1669222 0)))

(declare-fun b!2647349 () Bool)

(assert (=> b!2647349 (= e!1669220 e!1669222)))

(declare-fun c!425812 () Bool)

(assert (=> b!2647349 (= c!425812 (>= from!862 call!170223))))

(declare-fun bm!170218 () Bool)

(assert (=> bm!170218 (= call!170223 (size!23646 lt!931493))))

(declare-fun b!2647350 () Bool)

(assert (=> b!2647350 (= e!1669221 e!1669219)))

(declare-fun c!425813 () Bool)

(assert (=> b!2647350 (= c!425813 (<= from!862 0))))

(declare-fun b!2647351 () Bool)

(assert (=> b!2647351 (= e!1669219 (drop!1647 (t!219501 lt!931493) (- from!862 1)))))

(declare-fun b!2647347 () Bool)

(declare-fun e!1669218 () Bool)

(declare-fun lt!931523 () List!30660)

(assert (=> b!2647347 (= e!1669218 (= (size!23646 lt!931523) e!1669220))))

(declare-fun c!425815 () Bool)

(assert (=> b!2647347 (= c!425815 (<= from!862 0))))

(declare-fun d!752868 () Bool)

(assert (=> d!752868 e!1669218))

(declare-fun res!1113504 () Bool)

(assert (=> d!752868 (=> (not res!1113504) (not e!1669218))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4325 (List!30660) (InoxSet Token!8772))

(assert (=> d!752868 (= res!1113504 (= ((_ map implies) (content!4325 lt!931523) (content!4325 lt!931493)) ((as const (InoxSet Token!8772)) true)))))

(assert (=> d!752868 (= lt!931523 e!1669221)))

(declare-fun c!425814 () Bool)

(assert (=> d!752868 (= c!425814 ((_ is Nil!30560) lt!931493))))

(assert (=> d!752868 (= (drop!1647 lt!931493 from!862) lt!931523)))

(assert (= (and d!752868 c!425814) b!2647344))

(assert (= (and d!752868 (not c!425814)) b!2647350))

(assert (= (and b!2647350 c!425813) b!2647346))

(assert (= (and b!2647350 (not c!425813)) b!2647351))

(assert (= (and d!752868 res!1113504) b!2647347))

(assert (= (and b!2647347 c!425815) b!2647345))

(assert (= (and b!2647347 (not c!425815)) b!2647349))

(assert (= (and b!2647349 c!425812) b!2647348))

(assert (= (and b!2647349 (not c!425812)) b!2647343))

(assert (= (or b!2647345 b!2647349 b!2647343) bm!170218))

(assert (=> bm!170218 m!2996025))

(declare-fun m!2996147 () Bool)

(assert (=> b!2647351 m!2996147))

(declare-fun m!2996149 () Bool)

(assert (=> b!2647347 m!2996149))

(declare-fun m!2996151 () Bool)

(assert (=> d!752868 m!2996151))

(declare-fun m!2996153 () Bool)

(assert (=> d!752868 m!2996153))

(assert (=> b!2647181 d!752868))

(declare-fun d!752870 () Bool)

(declare-fun lt!931526 () Int)

(assert (=> d!752870 (>= lt!931526 0)))

(declare-fun e!1669225 () Int)

(assert (=> d!752870 (= lt!931526 e!1669225)))

(declare-fun c!425818 () Bool)

(assert (=> d!752870 (= c!425818 ((_ is Nil!30560) lt!931493))))

(assert (=> d!752870 (= (size!23646 lt!931493) lt!931526)))

(declare-fun b!2647356 () Bool)

(assert (=> b!2647356 (= e!1669225 0)))

(declare-fun b!2647357 () Bool)

(assert (=> b!2647357 (= e!1669225 (+ 1 (size!23646 (t!219501 lt!931493))))))

(assert (= (and d!752870 c!425818) b!2647356))

(assert (= (and d!752870 (not c!425818)) b!2647357))

(declare-fun m!2996155 () Bool)

(assert (=> b!2647357 m!2996155))

(assert (=> b!2647181 d!752870))

(declare-fun d!752872 () Bool)

(assert (=> d!752872 (= (head!6051 (drop!1647 lt!931493 from!862)) (h!35980 (drop!1647 lt!931493 from!862)))))

(assert (=> b!2647181 d!752872))

(declare-fun d!752874 () Bool)

(assert (=> d!752874 (= (isEmpty!17455 rules!1726) ((_ is Nil!30559) rules!1726))))

(assert (=> b!2647191 d!752874))

(declare-fun d!752876 () Bool)

(assert (=> d!752876 (forall!6432 (dropList!952 v!6381 from!862) lambda!99104)))

(declare-fun lt!931531 () Unit!44629)

(declare-fun choose!15697 (List!30660 List!30660 Int) Unit!44629)

(assert (=> d!752876 (= lt!931531 (choose!15697 lt!931493 (dropList!952 v!6381 from!862) lambda!99104))))

(assert (=> d!752876 (forall!6432 lt!931493 lambda!99104)))

(assert (=> d!752876 (= (lemmaContentSubsetPreservesForall!318 lt!931493 (dropList!952 v!6381 from!862) lambda!99104) lt!931531)))

(declare-fun bs!477023 () Bool)

(assert (= bs!477023 d!752876))

(assert (=> bs!477023 m!2996017))

(declare-fun m!2996179 () Bool)

(assert (=> bs!477023 m!2996179))

(assert (=> bs!477023 m!2996017))

(declare-fun m!2996181 () Bool)

(assert (=> bs!477023 m!2996181))

(declare-fun m!2996183 () Bool)

(assert (=> bs!477023 m!2996183))

(assert (=> b!2647193 d!752876))

(declare-fun d!752884 () Bool)

(declare-fun list!11523 (Conc!9545) List!30660)

(assert (=> d!752884 (= (dropList!952 v!6381 from!862) (drop!1647 (list!11523 (c!425785 v!6381)) from!862))))

(declare-fun bs!477024 () Bool)

(assert (= bs!477024 d!752884))

(declare-fun m!2996185 () Bool)

(assert (=> bs!477024 m!2996185))

(assert (=> bs!477024 m!2996185))

(declare-fun m!2996187 () Bool)

(assert (=> bs!477024 m!2996187))

(assert (=> b!2647193 d!752884))

(declare-fun d!752886 () Bool)

(assert (=> d!752886 (= (list!11519 v!6381) (list!11523 (c!425785 v!6381)))))

(declare-fun bs!477025 () Bool)

(assert (= bs!477025 d!752886))

(assert (=> bs!477025 m!2996185))

(assert (=> b!2647193 d!752886))

(declare-fun d!752888 () Bool)

(declare-fun res!1113518 () Bool)

(declare-fun e!1669241 () Bool)

(assert (=> d!752888 (=> res!1113518 e!1669241)))

(assert (=> d!752888 (= res!1113518 (not ((_ is Cons!30559) rules!1726)))))

(assert (=> d!752888 (= (sepAndNonSepRulesDisjointChars!1224 rules!1726 rules!1726) e!1669241)))

(declare-fun b!2647375 () Bool)

(declare-fun e!1669242 () Bool)

(assert (=> b!2647375 (= e!1669241 e!1669242)))

(declare-fun res!1113519 () Bool)

(assert (=> b!2647375 (=> (not res!1113519) (not e!1669242))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!533 (Rule!9102 List!30659) Bool)

(assert (=> b!2647375 (= res!1113519 (ruleDisjointCharsFromAllFromOtherType!533 (h!35979 rules!1726) rules!1726))))

(declare-fun b!2647376 () Bool)

(assert (=> b!2647376 (= e!1669242 (sepAndNonSepRulesDisjointChars!1224 rules!1726 (t!219500 rules!1726)))))

(assert (= (and d!752888 (not res!1113518)) b!2647375))

(assert (= (and b!2647375 res!1113519) b!2647376))

(declare-fun m!2996193 () Bool)

(assert (=> b!2647375 m!2996193))

(declare-fun m!2996195 () Bool)

(assert (=> b!2647376 m!2996195))

(assert (=> b!2647182 d!752888))

(declare-fun d!752894 () Bool)

(declare-fun lt!931552 () Bool)

(declare-fun e!1669298 () Bool)

(assert (=> d!752894 (= lt!931552 e!1669298)))

(declare-fun res!1113535 () Bool)

(assert (=> d!752894 (=> (not res!1113535) (not e!1669298))))

(declare-datatypes ((tuple2!30074 0))(
  ( (tuple2!30075 (_1!17579 BalanceConc!18704) (_2!17579 BalanceConc!18702)) )
))
(declare-fun lex!1909 (LexerInterface!4248 List!30659 BalanceConc!18702) tuple2!30074)

(declare-fun print!1647 (LexerInterface!4248 BalanceConc!18704) BalanceConc!18702)

(declare-fun singletonSeq!2066 (Token!8772) BalanceConc!18704)

(assert (=> d!752894 (= res!1113535 (= (list!11519 (_1!17579 (lex!1909 thiss!14197 rules!1726 (print!1647 thiss!14197 (singletonSeq!2066 separatorToken!156))))) (list!11519 (singletonSeq!2066 separatorToken!156))))))

(declare-fun e!1669297 () Bool)

(assert (=> d!752894 (= lt!931552 e!1669297)))

(declare-fun res!1113533 () Bool)

(assert (=> d!752894 (=> (not res!1113533) (not e!1669297))))

(declare-fun lt!931551 () tuple2!30074)

(assert (=> d!752894 (= res!1113533 (= (size!23647 (_1!17579 lt!931551)) 1))))

(assert (=> d!752894 (= lt!931551 (lex!1909 thiss!14197 rules!1726 (print!1647 thiss!14197 (singletonSeq!2066 separatorToken!156))))))

(assert (=> d!752894 (not (isEmpty!17455 rules!1726))))

(assert (=> d!752894 (= (rulesProduceIndividualToken!1960 thiss!14197 rules!1726 separatorToken!156) lt!931552)))

(declare-fun b!2647473 () Bool)

(declare-fun res!1113534 () Bool)

(assert (=> b!2647473 (=> (not res!1113534) (not e!1669297))))

(declare-fun apply!7304 (BalanceConc!18704 Int) Token!8772)

(assert (=> b!2647473 (= res!1113534 (= (apply!7304 (_1!17579 lt!931551) 0) separatorToken!156))))

(declare-fun b!2647474 () Bool)

(declare-fun isEmpty!17459 (BalanceConc!18702) Bool)

(assert (=> b!2647474 (= e!1669297 (isEmpty!17459 (_2!17579 lt!931551)))))

(declare-fun b!2647475 () Bool)

(assert (=> b!2647475 (= e!1669298 (isEmpty!17459 (_2!17579 (lex!1909 thiss!14197 rules!1726 (print!1647 thiss!14197 (singletonSeq!2066 separatorToken!156))))))))

(assert (= (and d!752894 res!1113533) b!2647473))

(assert (= (and b!2647473 res!1113534) b!2647474))

(assert (= (and d!752894 res!1113535) b!2647475))

(declare-fun m!2996231 () Bool)

(assert (=> d!752894 m!2996231))

(declare-fun m!2996233 () Bool)

(assert (=> d!752894 m!2996233))

(assert (=> d!752894 m!2996231))

(declare-fun m!2996235 () Bool)

(assert (=> d!752894 m!2996235))

(assert (=> d!752894 m!2996231))

(declare-fun m!2996237 () Bool)

(assert (=> d!752894 m!2996237))

(declare-fun m!2996239 () Bool)

(assert (=> d!752894 m!2996239))

(assert (=> d!752894 m!2996237))

(declare-fun m!2996241 () Bool)

(assert (=> d!752894 m!2996241))

(assert (=> d!752894 m!2996037))

(declare-fun m!2996243 () Bool)

(assert (=> b!2647473 m!2996243))

(declare-fun m!2996245 () Bool)

(assert (=> b!2647474 m!2996245))

(assert (=> b!2647475 m!2996231))

(assert (=> b!2647475 m!2996231))

(assert (=> b!2647475 m!2996237))

(assert (=> b!2647475 m!2996237))

(assert (=> b!2647475 m!2996241))

(declare-fun m!2996247 () Bool)

(assert (=> b!2647475 m!2996247))

(assert (=> b!2647178 d!752894))

(declare-fun d!752904 () Bool)

(declare-fun lt!931555 () Bool)

(assert (=> d!752904 (= lt!931555 (forall!6432 (list!11519 v!6381) lambda!99104))))

(declare-fun forall!6434 (Conc!9545 Int) Bool)

(assert (=> d!752904 (= lt!931555 (forall!6434 (c!425785 v!6381) lambda!99104))))

(assert (=> d!752904 (= (forall!6430 v!6381 lambda!99104) lt!931555)))

(declare-fun bs!477027 () Bool)

(assert (= bs!477027 d!752904))

(assert (=> bs!477027 m!2996021))

(assert (=> bs!477027 m!2996021))

(declare-fun m!2996249 () Bool)

(assert (=> bs!477027 m!2996249))

(declare-fun m!2996251 () Bool)

(assert (=> bs!477027 m!2996251))

(assert (=> b!2647179 d!752904))

(declare-fun b!2647486 () Bool)

(declare-fun e!1669301 () Bool)

(declare-fun tp_is_empty!13781 () Bool)

(assert (=> b!2647486 (= e!1669301 tp_is_empty!13781)))

(assert (=> b!2647188 (= tp!839630 e!1669301)))

(declare-fun b!2647489 () Bool)

(declare-fun tp!839702 () Bool)

(declare-fun tp!839703 () Bool)

(assert (=> b!2647489 (= e!1669301 (and tp!839702 tp!839703))))

(declare-fun b!2647487 () Bool)

(declare-fun tp!839701 () Bool)

(declare-fun tp!839699 () Bool)

(assert (=> b!2647487 (= e!1669301 (and tp!839701 tp!839699))))

(declare-fun b!2647488 () Bool)

(declare-fun tp!839700 () Bool)

(assert (=> b!2647488 (= e!1669301 tp!839700)))

(assert (= (and b!2647188 ((_ is ElementMatch!7795) (regex!4651 (rule!7039 separatorToken!156)))) b!2647486))

(assert (= (and b!2647188 ((_ is Concat!12668) (regex!4651 (rule!7039 separatorToken!156)))) b!2647487))

(assert (= (and b!2647188 ((_ is Star!7795) (regex!4651 (rule!7039 separatorToken!156)))) b!2647488))

(assert (= (and b!2647188 ((_ is Union!7795) (regex!4651 (rule!7039 separatorToken!156)))) b!2647489))

(declare-fun e!1669307 () Bool)

(declare-fun tp!839712 () Bool)

(declare-fun b!2647498 () Bool)

(declare-fun tp!839711 () Bool)

(assert (=> b!2647498 (= e!1669307 (and (inv!41491 (left!23610 (c!425785 v!6381))) tp!839711 (inv!41491 (right!23940 (c!425785 v!6381))) tp!839712))))

(declare-fun b!2647500 () Bool)

(declare-fun e!1669306 () Bool)

(declare-fun tp!839710 () Bool)

(assert (=> b!2647500 (= e!1669306 tp!839710)))

(declare-fun b!2647499 () Bool)

(declare-fun inv!41501 (IArray!19095) Bool)

(assert (=> b!2647499 (= e!1669307 (and (inv!41501 (xs!12557 (c!425785 v!6381))) e!1669306))))

(assert (=> b!2647184 (= tp!839637 (and (inv!41491 (c!425785 v!6381)) e!1669307))))

(assert (= (and b!2647184 ((_ is Node!9545) (c!425785 v!6381))) b!2647498))

(assert (= b!2647499 b!2647500))

(assert (= (and b!2647184 ((_ is Leaf!14611) (c!425785 v!6381))) b!2647499))

(declare-fun m!2996253 () Bool)

(assert (=> b!2647498 m!2996253))

(declare-fun m!2996255 () Bool)

(assert (=> b!2647498 m!2996255))

(declare-fun m!2996257 () Bool)

(assert (=> b!2647499 m!2996257))

(assert (=> b!2647184 m!2995995))

(declare-fun b!2647501 () Bool)

(declare-fun e!1669308 () Bool)

(assert (=> b!2647501 (= e!1669308 tp_is_empty!13781)))

(assert (=> b!2647183 (= tp!839633 e!1669308)))

(declare-fun b!2647504 () Bool)

(declare-fun tp!839716 () Bool)

(declare-fun tp!839717 () Bool)

(assert (=> b!2647504 (= e!1669308 (and tp!839716 tp!839717))))

(declare-fun b!2647502 () Bool)

(declare-fun tp!839715 () Bool)

(declare-fun tp!839713 () Bool)

(assert (=> b!2647502 (= e!1669308 (and tp!839715 tp!839713))))

(declare-fun b!2647503 () Bool)

(declare-fun tp!839714 () Bool)

(assert (=> b!2647503 (= e!1669308 tp!839714)))

(assert (= (and b!2647183 ((_ is ElementMatch!7795) (regex!4651 (h!35979 rules!1726)))) b!2647501))

(assert (= (and b!2647183 ((_ is Concat!12668) (regex!4651 (h!35979 rules!1726)))) b!2647502))

(assert (= (and b!2647183 ((_ is Star!7795) (regex!4651 (h!35979 rules!1726)))) b!2647503))

(assert (= (and b!2647183 ((_ is Union!7795) (regex!4651 (h!35979 rules!1726)))) b!2647504))

(declare-fun b!2647515 () Bool)

(declare-fun b_free!74521 () Bool)

(declare-fun b_next!75225 () Bool)

(assert (=> b!2647515 (= b_free!74521 (not b_next!75225))))

(declare-fun tp!839728 () Bool)

(declare-fun b_and!194527 () Bool)

(assert (=> b!2647515 (= tp!839728 b_and!194527)))

(declare-fun b_free!74523 () Bool)

(declare-fun b_next!75227 () Bool)

(assert (=> b!2647515 (= b_free!74523 (not b_next!75227))))

(declare-fun t!219524 () Bool)

(declare-fun tb!146381 () Bool)

(assert (=> (and b!2647515 (= (toChars!6436 (transformation!4651 (h!35979 (t!219500 rules!1726)))) (toChars!6436 (transformation!4651 (rule!7039 separatorToken!156)))) t!219524) tb!146381))

(declare-fun result!181402 () Bool)

(assert (= result!181402 result!181380))

(assert (=> b!2647282 t!219524))

(declare-fun b_and!194529 () Bool)

(declare-fun tp!839726 () Bool)

(assert (=> b!2647515 (= tp!839726 (and (=> t!219524 result!181402) b_and!194529))))

(declare-fun e!1669317 () Bool)

(assert (=> b!2647515 (= e!1669317 (and tp!839728 tp!839726))))

(declare-fun b!2647514 () Bool)

(declare-fun e!1669318 () Bool)

(declare-fun tp!839727 () Bool)

(assert (=> b!2647514 (= e!1669318 (and tp!839727 (inv!41483 (tag!5147 (h!35979 (t!219500 rules!1726)))) (inv!41490 (transformation!4651 (h!35979 (t!219500 rules!1726)))) e!1669317))))

(declare-fun b!2647513 () Bool)

(declare-fun e!1669319 () Bool)

(declare-fun tp!839729 () Bool)

(assert (=> b!2647513 (= e!1669319 (and e!1669318 tp!839729))))

(assert (=> b!2647180 (= tp!839635 e!1669319)))

(assert (= b!2647514 b!2647515))

(assert (= b!2647513 b!2647514))

(assert (= (and b!2647180 ((_ is Cons!30559) (t!219500 rules!1726))) b!2647513))

(declare-fun m!2996259 () Bool)

(assert (=> b!2647514 m!2996259))

(declare-fun m!2996261 () Bool)

(assert (=> b!2647514 m!2996261))

(declare-fun b!2647520 () Bool)

(declare-fun e!1669323 () Bool)

(declare-fun tp!839732 () Bool)

(assert (=> b!2647520 (= e!1669323 (and tp_is_empty!13781 tp!839732))))

(assert (=> b!2647185 (= tp!839634 e!1669323)))

(assert (= (and b!2647185 ((_ is Cons!30558) (originalCharacters!5417 separatorToken!156))) b!2647520))

(declare-fun b_lambda!79973 () Bool)

(assert (= b_lambda!79969 (or (and b!2647189 b_free!74511) (and b!2647190 b_free!74515 (= (toChars!6436 (transformation!4651 (h!35979 rules!1726))) (toChars!6436 (transformation!4651 (rule!7039 separatorToken!156))))) (and b!2647515 b_free!74523 (= (toChars!6436 (transformation!4651 (h!35979 (t!219500 rules!1726)))) (toChars!6436 (transformation!4651 (rule!7039 separatorToken!156))))) b_lambda!79973)))

(check-sat (not b!2647503) (not b!2647351) (not b!2647316) (not tb!146375) (not b!2647488) (not d!752904) (not d!752894) (not b!2647215) (not b!2647184) (not d!752868) (not b_lambda!79973) (not b!2647277) (not b!2647357) (not d!752818) b_and!194521 (not b!2647301) (not d!752814) b_and!194527 (not d!752824) (not b!2647302) (not d!752876) (not b!2647197) (not b!2647498) (not b!2647263) (not b!2647489) (not b!2647347) (not b!2647502) (not b_next!75219) (not b!2647375) (not d!752854) (not b!2647317) (not b_next!75217) (not d!752856) (not b_next!75215) (not b!2647288) b_and!194529 (not bm!170218) (not b!2647376) (not b!2647306) (not b!2647282) (not b!2647272) (not b!2647520) (not b!2647513) (not d!752884) (not b_next!75225) (not b!2647504) (not b!2647473) (not b!2647318) (not d!752864) (not b_next!75227) b_and!194519 tp_is_empty!13781 (not b!2647487) (not b!2647217) (not d!752862) (not b!2647499) (not b!2647474) (not d!752866) (not b!2647303) (not b!2647309) (not b!2647514) b_and!194511 (not d!752886) b_and!194507 (not b!2647475) (not b_next!75213) (not d!752858) (not b!2647500) (not b!2647283))
(check-sat b_and!194521 b_and!194527 (not b_next!75219) (not b_next!75217) (not b_next!75215) b_and!194529 (not b_next!75225) b_and!194511 (not b_next!75227) b_and!194519 b_and!194507 (not b_next!75213))

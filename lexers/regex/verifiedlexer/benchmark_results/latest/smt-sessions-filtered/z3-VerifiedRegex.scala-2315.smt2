; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114386 () Bool)

(assert start!114386)

(declare-fun b!1297686 () Bool)

(declare-fun b_free!30779 () Bool)

(declare-fun b_next!31483 () Bool)

(assert (=> b!1297686 (= b_free!30779 (not b_next!31483))))

(declare-fun tp!378690 () Bool)

(declare-fun b_and!86487 () Bool)

(assert (=> b!1297686 (= tp!378690 b_and!86487)))

(declare-fun b_free!30781 () Bool)

(declare-fun b_next!31485 () Bool)

(assert (=> b!1297686 (= b_free!30781 (not b_next!31485))))

(declare-fun tp!378682 () Bool)

(declare-fun b_and!86489 () Bool)

(assert (=> b!1297686 (= tp!378682 b_and!86489)))

(declare-fun b!1297691 () Bool)

(declare-fun b_free!30783 () Bool)

(declare-fun b_next!31487 () Bool)

(assert (=> b!1297691 (= b_free!30783 (not b_next!31487))))

(declare-fun tp!378691 () Bool)

(declare-fun b_and!86491 () Bool)

(assert (=> b!1297691 (= tp!378691 b_and!86491)))

(declare-fun b_free!30785 () Bool)

(declare-fun b_next!31489 () Bool)

(assert (=> b!1297691 (= b_free!30785 (not b_next!31489))))

(declare-fun tp!378685 () Bool)

(declare-fun b_and!86493 () Bool)

(assert (=> b!1297691 (= tp!378685 b_and!86493)))

(declare-fun b!1297704 () Bool)

(declare-fun b_free!30787 () Bool)

(declare-fun b_next!31491 () Bool)

(assert (=> b!1297704 (= b_free!30787 (not b_next!31491))))

(declare-fun tp!378684 () Bool)

(declare-fun b_and!86495 () Bool)

(assert (=> b!1297704 (= tp!378684 b_and!86495)))

(declare-fun b_free!30789 () Bool)

(declare-fun b_next!31493 () Bool)

(assert (=> b!1297704 (= b_free!30789 (not b_next!31493))))

(declare-fun tp!378688 () Bool)

(declare-fun b_and!86497 () Bool)

(assert (=> b!1297704 (= tp!378688 b_and!86497)))

(declare-fun b!1297692 () Bool)

(assert (=> b!1297692 true))

(assert (=> b!1297692 true))

(declare-fun b!1297681 () Bool)

(declare-fun res!581167 () Bool)

(declare-fun e!832002 () Bool)

(assert (=> b!1297681 (=> res!581167 e!832002)))

(declare-datatypes ((C!7396 0))(
  ( (C!7397 (val!4258 Int)) )
))
(declare-datatypes ((List!13050 0))(
  ( (Nil!12984) (Cons!12984 (h!18385 C!7396) (t!117473 List!13050)) )
))
(declare-fun lt!426845 () List!13050)

(declare-fun lt!426848 () C!7396)

(declare-fun contains!2175 (List!13050 C!7396) Bool)

(assert (=> b!1297681 (= res!581167 (not (contains!2175 lt!426845 lt!426848)))))

(declare-fun b!1297682 () Bool)

(declare-fun e!832005 () Bool)

(declare-fun e!832006 () Bool)

(declare-fun tp!378692 () Bool)

(assert (=> b!1297682 (= e!832005 (and e!832006 tp!378692))))

(declare-fun b!1297683 () Bool)

(declare-fun e!831997 () Bool)

(declare-fun tp!378687 () Bool)

(declare-fun e!832013 () Bool)

(declare-datatypes ((List!13051 0))(
  ( (Nil!12985) (Cons!12985 (h!18386 (_ BitVec 16)) (t!117474 List!13051)) )
))
(declare-datatypes ((TokenValue!2329 0))(
  ( (FloatLiteralValue!4658 (text!16748 List!13051)) (TokenValueExt!2328 (__x!8487 Int)) (Broken!11645 (value!73418 List!13051)) (Object!2394) (End!2329) (Def!2329) (Underscore!2329) (Match!2329) (Else!2329) (Error!2329) (Case!2329) (If!2329) (Extends!2329) (Abstract!2329) (Class!2329) (Val!2329) (DelimiterValue!4658 (del!2389 List!13051)) (KeywordValue!2335 (value!73419 List!13051)) (CommentValue!4658 (value!73420 List!13051)) (WhitespaceValue!4658 (value!73421 List!13051)) (IndentationValue!2329 (value!73422 List!13051)) (String!15880) (Int32!2329) (Broken!11646 (value!73423 List!13051)) (Boolean!2330) (Unit!19129) (OperatorValue!2332 (op!2389 List!13051)) (IdentifierValue!4658 (value!73424 List!13051)) (IdentifierValue!4659 (value!73425 List!13051)) (WhitespaceValue!4659 (value!73426 List!13051)) (True!4658) (False!4658) (Broken!11647 (value!73427 List!13051)) (Broken!11648 (value!73428 List!13051)) (True!4659) (RightBrace!2329) (RightBracket!2329) (Colon!2329) (Null!2329) (Comma!2329) (LeftBracket!2329) (False!4659) (LeftBrace!2329) (ImaginaryLiteralValue!2329 (text!16749 List!13051)) (StringLiteralValue!6987 (value!73429 List!13051)) (EOFValue!2329 (value!73430 List!13051)) (IdentValue!2329 (value!73431 List!13051)) (DelimiterValue!4659 (value!73432 List!13051)) (DedentValue!2329 (value!73433 List!13051)) (NewLineValue!2329 (value!73434 List!13051)) (IntegerValue!6987 (value!73435 (_ BitVec 32)) (text!16750 List!13051)) (IntegerValue!6988 (value!73436 Int) (text!16751 List!13051)) (Times!2329) (Or!2329) (Equal!2329) (Minus!2329) (Broken!11649 (value!73437 List!13051)) (And!2329) (Div!2329) (LessEqual!2329) (Mod!2329) (Concat!5882) (Not!2329) (Plus!2329) (SpaceValue!2329 (value!73438 List!13051)) (IntegerValue!6989 (value!73439 Int) (text!16752 List!13051)) (StringLiteralValue!6988 (text!16753 List!13051)) (FloatLiteralValue!4659 (text!16754 List!13051)) (BytesLiteralValue!2329 (value!73440 List!13051)) (CommentValue!4659 (value!73441 List!13051)) (StringLiteralValue!6989 (value!73442 List!13051)) (ErrorTokenValue!2329 (msg!2390 List!13051)) )
))
(declare-datatypes ((IArray!8535 0))(
  ( (IArray!8536 (innerList!4325 List!13050)) )
))
(declare-datatypes ((Conc!4265 0))(
  ( (Node!4265 (left!11170 Conc!4265) (right!11500 Conc!4265) (csize!8760 Int) (cheight!4476 Int)) (Leaf!6581 (xs!6980 IArray!8535) (csize!8761 Int)) (Empty!4265) )
))
(declare-datatypes ((BalanceConc!8470 0))(
  ( (BalanceConc!8471 (c!213611 Conc!4265)) )
))
(declare-datatypes ((String!15881 0))(
  ( (String!15882 (value!73443 String)) )
))
(declare-datatypes ((Regex!3553 0))(
  ( (ElementMatch!3553 (c!213612 C!7396)) (Concat!5883 (regOne!7618 Regex!3553) (regTwo!7618 Regex!3553)) (EmptyExpr!3553) (Star!3553 (reg!3882 Regex!3553)) (EmptyLang!3553) (Union!3553 (regOne!7619 Regex!3553) (regTwo!7619 Regex!3553)) )
))
(declare-datatypes ((TokenValueInjection!4318 0))(
  ( (TokenValueInjection!4319 (toValue!3446 Int) (toChars!3305 Int)) )
))
(declare-datatypes ((Rule!4278 0))(
  ( (Rule!4279 (regex!2239 Regex!3553) (tag!2501 String!15881) (isSeparator!2239 Bool) (transformation!2239 TokenValueInjection!4318)) )
))
(declare-datatypes ((Token!4140 0))(
  ( (Token!4141 (value!73444 TokenValue!2329) (rule!3978 Rule!4278) (size!10610 Int) (originalCharacters!3101 List!13050)) )
))
(declare-fun t2!34 () Token!4140)

(declare-fun inv!17410 (String!15881) Bool)

(declare-fun inv!17413 (TokenValueInjection!4318) Bool)

(assert (=> b!1297683 (= e!832013 (and tp!378687 (inv!17410 (tag!2501 (rule!3978 t2!34))) (inv!17413 (transformation!2239 (rule!3978 t2!34))) e!831997))))

(declare-fun b!1297684 () Bool)

(declare-fun res!581156 () Bool)

(declare-fun e!832001 () Bool)

(assert (=> b!1297684 (=> (not res!581156) (not e!832001))))

(declare-fun t1!34 () Token!4140)

(declare-datatypes ((LexerInterface!1934 0))(
  ( (LexerInterfaceExt!1931 (__x!8488 Int)) (Lexer!1932) )
))
(declare-fun thiss!19762 () LexerInterface!1934)

(declare-datatypes ((List!13052 0))(
  ( (Nil!12986) (Cons!12986 (h!18387 Rule!4278) (t!117475 List!13052)) )
))
(declare-fun rules!2550 () List!13052)

(declare-fun separableTokensPredicate!217 (LexerInterface!1934 Token!4140 Token!4140 List!13052) Bool)

(assert (=> b!1297684 (= res!581156 (not (separableTokensPredicate!217 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1297685 () Bool)

(declare-fun res!581153 () Bool)

(declare-fun e!832014 () Bool)

(assert (=> b!1297685 (=> (not res!581153) (not e!832014))))

(declare-fun isEmpty!7713 (List!13052) Bool)

(assert (=> b!1297685 (= res!581153 (not (isEmpty!7713 rules!2550)))))

(declare-fun e!832010 () Bool)

(assert (=> b!1297686 (= e!832010 (and tp!378690 tp!378682))))

(declare-fun b!1297687 () Bool)

(declare-fun e!832011 () Bool)

(assert (=> b!1297687 (= e!832001 e!832011)))

(declare-fun res!581163 () Bool)

(assert (=> b!1297687 (=> (not res!581163) (not e!832011))))

(declare-fun lt!426849 () Regex!3553)

(declare-fun prefixMatch!66 (Regex!3553 List!13050) Bool)

(assert (=> b!1297687 (= res!581163 (prefixMatch!66 lt!426849 lt!426845))))

(declare-fun rulesRegex!124 (LexerInterface!1934 List!13052) Regex!3553)

(assert (=> b!1297687 (= lt!426849 (rulesRegex!124 thiss!19762 rules!2550))))

(declare-fun lt!426846 () List!13050)

(declare-fun ++!3300 (List!13050 List!13050) List!13050)

(assert (=> b!1297687 (= lt!426845 (++!3300 lt!426846 (Cons!12984 lt!426848 Nil!12984)))))

(declare-fun lt!426850 () BalanceConc!8470)

(declare-fun apply!2875 (BalanceConc!8470 Int) C!7396)

(assert (=> b!1297687 (= lt!426848 (apply!2875 lt!426850 0))))

(declare-fun lt!426852 () BalanceConc!8470)

(declare-fun list!4861 (BalanceConc!8470) List!13050)

(assert (=> b!1297687 (= lt!426846 (list!4861 lt!426852))))

(declare-fun charsOf!1211 (Token!4140) BalanceConc!8470)

(assert (=> b!1297687 (= lt!426852 (charsOf!1211 t1!34))))

(declare-fun e!832004 () Bool)

(declare-fun tp!378686 () Bool)

(declare-fun b!1297688 () Bool)

(assert (=> b!1297688 (= e!832004 (and tp!378686 (inv!17410 (tag!2501 (rule!3978 t1!34))) (inv!17413 (transformation!2239 (rule!3978 t1!34))) e!832010))))

(declare-fun b!1297689 () Bool)

(declare-fun rulesValidInductive!708 (LexerInterface!1934 List!13052) Bool)

(assert (=> b!1297689 (= e!832002 (rulesValidInductive!708 thiss!19762 rules!2550))))

(declare-fun b!1297690 () Bool)

(declare-fun res!581162 () Bool)

(assert (=> b!1297690 (=> (not res!581162) (not e!832014))))

(declare-fun rulesInvariant!1804 (LexerInterface!1934 List!13052) Bool)

(assert (=> b!1297690 (= res!581162 (rulesInvariant!1804 thiss!19762 rules!2550))))

(declare-fun e!831995 () Bool)

(assert (=> b!1297691 (= e!831995 (and tp!378691 tp!378685))))

(declare-fun b!1297693 () Bool)

(declare-fun e!832003 () Bool)

(declare-fun tp!378689 () Bool)

(declare-fun inv!21 (TokenValue!2329) Bool)

(assert (=> b!1297693 (= e!832003 (and (inv!21 (value!73444 t1!34)) e!832004 tp!378689))))

(declare-fun b!1297694 () Bool)

(declare-fun res!581157 () Bool)

(assert (=> b!1297694 (=> (not res!581157) (not e!832001))))

(declare-fun sepAndNonSepRulesDisjointChars!612 (List!13052 List!13052) Bool)

(assert (=> b!1297694 (= res!581157 (sepAndNonSepRulesDisjointChars!612 rules!2550 rules!2550))))

(declare-fun b!1297695 () Bool)

(declare-fun e!831998 () Bool)

(assert (=> b!1297695 (= e!831998 e!832002)))

(declare-fun res!581168 () Bool)

(assert (=> b!1297695 (=> res!581168 e!832002)))

(declare-fun lt!426851 () C!7396)

(assert (=> b!1297695 (= res!581168 (not (contains!2175 lt!426845 lt!426851)))))

(assert (=> b!1297695 (= lt!426851 (apply!2875 lt!426852 0))))

(declare-fun tp!378681 () Bool)

(declare-fun b!1297696 () Bool)

(assert (=> b!1297696 (= e!832006 (and tp!378681 (inv!17410 (tag!2501 (h!18387 rules!2550))) (inv!17413 (transformation!2239 (h!18387 rules!2550))) e!831995))))

(declare-fun b!1297697 () Bool)

(declare-fun res!581155 () Bool)

(assert (=> b!1297697 (=> (not res!581155) (not e!832014))))

(declare-fun rulesProduceIndividualToken!903 (LexerInterface!1934 List!13052 Token!4140) Bool)

(assert (=> b!1297697 (= res!581155 (rulesProduceIndividualToken!903 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1297698 () Bool)

(declare-fun res!581159 () Bool)

(assert (=> b!1297698 (=> res!581159 e!832002)))

(declare-fun lt!426847 () List!13050)

(assert (=> b!1297698 (= res!581159 (not (contains!2175 lt!426847 lt!426851)))))

(declare-fun b!1297699 () Bool)

(declare-fun res!581158 () Bool)

(assert (=> b!1297699 (=> res!581158 e!832002)))

(assert (=> b!1297699 (= res!581158 (not (contains!2175 lt!426847 lt!426848)))))

(declare-fun b!1297700 () Bool)

(declare-fun res!581160 () Bool)

(assert (=> b!1297700 (=> (not res!581160) (not e!832014))))

(assert (=> b!1297700 (= res!581160 (rulesProduceIndividualToken!903 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1297701 () Bool)

(declare-fun e!832009 () Bool)

(assert (=> b!1297701 (= e!832009 e!831998)))

(declare-fun res!581165 () Bool)

(assert (=> b!1297701 (=> res!581165 e!831998)))

(declare-fun getSuffix!409 (List!13050 List!13050) List!13050)

(assert (=> b!1297701 (= res!581165 (not (= lt!426847 (++!3300 lt!426845 (getSuffix!409 lt!426847 lt!426845)))))))

(declare-fun lambda!51023 () Int)

(declare-fun pickWitness!16 (Int) List!13050)

(assert (=> b!1297701 (= lt!426847 (pickWitness!16 lambda!51023))))

(declare-fun b!1297702 () Bool)

(declare-fun res!581164 () Bool)

(assert (=> b!1297702 (=> (not res!581164) (not e!832014))))

(assert (=> b!1297702 (= res!581164 (not (= (isSeparator!2239 (rule!3978 t1!34)) (isSeparator!2239 (rule!3978 t2!34)))))))

(declare-fun b!1297703 () Bool)

(assert (=> b!1297703 (= e!832014 e!832001)))

(declare-fun res!581166 () Bool)

(assert (=> b!1297703 (=> (not res!581166) (not e!832001))))

(declare-fun size!10611 (BalanceConc!8470) Int)

(assert (=> b!1297703 (= res!581166 (> (size!10611 lt!426850) 0))))

(assert (=> b!1297703 (= lt!426850 (charsOf!1211 t2!34))))

(assert (=> b!1297704 (= e!831997 (and tp!378684 tp!378688))))

(declare-fun e!832008 () Bool)

(declare-fun b!1297705 () Bool)

(declare-fun tp!378683 () Bool)

(assert (=> b!1297705 (= e!832008 (and (inv!21 (value!73444 t2!34)) e!832013 tp!378683))))

(declare-fun res!581154 () Bool)

(assert (=> start!114386 (=> (not res!581154) (not e!832014))))

(get-info :version)

(assert (=> start!114386 (= res!581154 ((_ is Lexer!1932) thiss!19762))))

(assert (=> start!114386 e!832014))

(assert (=> start!114386 true))

(assert (=> start!114386 e!832005))

(declare-fun inv!17414 (Token!4140) Bool)

(assert (=> start!114386 (and (inv!17414 t1!34) e!832003)))

(assert (=> start!114386 (and (inv!17414 t2!34) e!832008)))

(assert (=> b!1297692 (= e!832011 (not e!832009))))

(declare-fun res!581161 () Bool)

(assert (=> b!1297692 (=> res!581161 e!832009)))

(declare-fun Exists!711 (Int) Bool)

(assert (=> b!1297692 (= res!581161 (not (Exists!711 lambda!51023)))))

(assert (=> b!1297692 (Exists!711 lambda!51023)))

(declare-datatypes ((Unit!19130 0))(
  ( (Unit!19131) )
))
(declare-fun lt!426844 () Unit!19130)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!29 (Regex!3553 List!13050) Unit!19130)

(assert (=> b!1297692 (= lt!426844 (lemmaPrefixMatchThenExistsStringThatMatches!29 lt!426849 lt!426845))))

(assert (= (and start!114386 res!581154) b!1297685))

(assert (= (and b!1297685 res!581153) b!1297690))

(assert (= (and b!1297690 res!581162) b!1297697))

(assert (= (and b!1297697 res!581155) b!1297700))

(assert (= (and b!1297700 res!581160) b!1297702))

(assert (= (and b!1297702 res!581164) b!1297703))

(assert (= (and b!1297703 res!581166) b!1297694))

(assert (= (and b!1297694 res!581157) b!1297684))

(assert (= (and b!1297684 res!581156) b!1297687))

(assert (= (and b!1297687 res!581163) b!1297692))

(assert (= (and b!1297692 (not res!581161)) b!1297701))

(assert (= (and b!1297701 (not res!581165)) b!1297695))

(assert (= (and b!1297695 (not res!581168)) b!1297698))

(assert (= (and b!1297698 (not res!581159)) b!1297681))

(assert (= (and b!1297681 (not res!581167)) b!1297699))

(assert (= (and b!1297699 (not res!581158)) b!1297689))

(assert (= b!1297696 b!1297691))

(assert (= b!1297682 b!1297696))

(assert (= (and start!114386 ((_ is Cons!12986) rules!2550)) b!1297682))

(assert (= b!1297688 b!1297686))

(assert (= b!1297693 b!1297688))

(assert (= start!114386 b!1297693))

(assert (= b!1297683 b!1297704))

(assert (= b!1297705 b!1297683))

(assert (= start!114386 b!1297705))

(declare-fun m!1449041 () Bool)

(assert (=> b!1297692 m!1449041))

(assert (=> b!1297692 m!1449041))

(declare-fun m!1449043 () Bool)

(assert (=> b!1297692 m!1449043))

(declare-fun m!1449045 () Bool)

(assert (=> b!1297698 m!1449045))

(declare-fun m!1449047 () Bool)

(assert (=> b!1297700 m!1449047))

(declare-fun m!1449049 () Bool)

(assert (=> b!1297688 m!1449049))

(declare-fun m!1449051 () Bool)

(assert (=> b!1297688 m!1449051))

(declare-fun m!1449053 () Bool)

(assert (=> b!1297693 m!1449053))

(declare-fun m!1449055 () Bool)

(assert (=> b!1297696 m!1449055))

(declare-fun m!1449057 () Bool)

(assert (=> b!1297696 m!1449057))

(declare-fun m!1449059 () Bool)

(assert (=> b!1297695 m!1449059))

(declare-fun m!1449061 () Bool)

(assert (=> b!1297695 m!1449061))

(declare-fun m!1449063 () Bool)

(assert (=> b!1297684 m!1449063))

(declare-fun m!1449065 () Bool)

(assert (=> b!1297681 m!1449065))

(declare-fun m!1449067 () Bool)

(assert (=> b!1297705 m!1449067))

(declare-fun m!1449069 () Bool)

(assert (=> b!1297699 m!1449069))

(declare-fun m!1449071 () Bool)

(assert (=> b!1297687 m!1449071))

(declare-fun m!1449073 () Bool)

(assert (=> b!1297687 m!1449073))

(declare-fun m!1449075 () Bool)

(assert (=> b!1297687 m!1449075))

(declare-fun m!1449077 () Bool)

(assert (=> b!1297687 m!1449077))

(declare-fun m!1449079 () Bool)

(assert (=> b!1297687 m!1449079))

(declare-fun m!1449081 () Bool)

(assert (=> b!1297687 m!1449081))

(declare-fun m!1449083 () Bool)

(assert (=> start!114386 m!1449083))

(declare-fun m!1449085 () Bool)

(assert (=> start!114386 m!1449085))

(declare-fun m!1449087 () Bool)

(assert (=> b!1297690 m!1449087))

(declare-fun m!1449089 () Bool)

(assert (=> b!1297685 m!1449089))

(declare-fun m!1449091 () Bool)

(assert (=> b!1297703 m!1449091))

(declare-fun m!1449093 () Bool)

(assert (=> b!1297703 m!1449093))

(declare-fun m!1449095 () Bool)

(assert (=> b!1297697 m!1449095))

(declare-fun m!1449097 () Bool)

(assert (=> b!1297689 m!1449097))

(declare-fun m!1449099 () Bool)

(assert (=> b!1297701 m!1449099))

(assert (=> b!1297701 m!1449099))

(declare-fun m!1449101 () Bool)

(assert (=> b!1297701 m!1449101))

(declare-fun m!1449103 () Bool)

(assert (=> b!1297701 m!1449103))

(declare-fun m!1449105 () Bool)

(assert (=> b!1297694 m!1449105))

(declare-fun m!1449107 () Bool)

(assert (=> b!1297683 m!1449107))

(declare-fun m!1449109 () Bool)

(assert (=> b!1297683 m!1449109))

(check-sat (not b_next!31485) b_and!86493 (not b!1297692) (not b!1297684) (not b!1297699) (not b!1297681) (not b!1297685) (not b!1297705) (not b!1297698) (not b_next!31493) (not start!114386) b_and!86487 (not b!1297683) (not b!1297690) (not b!1297689) (not b!1297697) (not b!1297693) (not b_next!31483) b_and!86497 (not b!1297688) (not b!1297703) (not b!1297682) (not b!1297700) (not b!1297701) (not b!1297687) (not b_next!31489) b_and!86491 (not b!1297694) b_and!86489 (not b_next!31487) b_and!86495 (not b_next!31491) (not b!1297696) (not b!1297695))
(check-sat (not b_next!31485) b_and!86493 (not b_next!31489) (not b_next!31493) b_and!86487 b_and!86491 (not b_next!31483) b_and!86497 b_and!86489 (not b_next!31487) b_and!86495 (not b_next!31491))
(get-model)

(declare-fun d!366224 () Bool)

(declare-fun choose!7965 (Int) Bool)

(assert (=> d!366224 (= (Exists!711 lambda!51023) (choose!7965 lambda!51023))))

(declare-fun bs!329019 () Bool)

(assert (= bs!329019 d!366224))

(declare-fun m!1449111 () Bool)

(assert (=> bs!329019 m!1449111))

(assert (=> b!1297692 d!366224))

(declare-fun bs!329020 () Bool)

(declare-fun d!366226 () Bool)

(assert (= bs!329020 (and d!366226 b!1297692)))

(declare-fun lambda!51026 () Int)

(assert (=> bs!329020 (= lambda!51026 lambda!51023)))

(assert (=> d!366226 true))

(assert (=> d!366226 true))

(assert (=> d!366226 (Exists!711 lambda!51026)))

(declare-fun lt!426855 () Unit!19130)

(declare-fun choose!7966 (Regex!3553 List!13050) Unit!19130)

(assert (=> d!366226 (= lt!426855 (choose!7966 lt!426849 lt!426845))))

(declare-fun validRegex!1532 (Regex!3553) Bool)

(assert (=> d!366226 (validRegex!1532 lt!426849)))

(assert (=> d!366226 (= (lemmaPrefixMatchThenExistsStringThatMatches!29 lt!426849 lt!426845) lt!426855)))

(declare-fun bs!329021 () Bool)

(assert (= bs!329021 d!366226))

(declare-fun m!1449141 () Bool)

(assert (=> bs!329021 m!1449141))

(declare-fun m!1449143 () Bool)

(assert (=> bs!329021 m!1449143))

(declare-fun m!1449145 () Bool)

(assert (=> bs!329021 m!1449145))

(assert (=> b!1297692 d!366226))

(declare-fun d!366240 () Bool)

(declare-fun lt!426863 () Int)

(declare-fun size!10614 (List!13050) Int)

(assert (=> d!366240 (= lt!426863 (size!10614 (list!4861 lt!426850)))))

(declare-fun size!10615 (Conc!4265) Int)

(assert (=> d!366240 (= lt!426863 (size!10615 (c!213611 lt!426850)))))

(assert (=> d!366240 (= (size!10611 lt!426850) lt!426863)))

(declare-fun bs!329022 () Bool)

(assert (= bs!329022 d!366240))

(declare-fun m!1449153 () Bool)

(assert (=> bs!329022 m!1449153))

(assert (=> bs!329022 m!1449153))

(declare-fun m!1449155 () Bool)

(assert (=> bs!329022 m!1449155))

(declare-fun m!1449157 () Bool)

(assert (=> bs!329022 m!1449157))

(assert (=> b!1297703 d!366240))

(declare-fun d!366244 () Bool)

(declare-fun lt!426867 () BalanceConc!8470)

(assert (=> d!366244 (= (list!4861 lt!426867) (originalCharacters!3101 t2!34))))

(declare-fun dynLambda!5678 (Int TokenValue!2329) BalanceConc!8470)

(assert (=> d!366244 (= lt!426867 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (value!73444 t2!34)))))

(assert (=> d!366244 (= (charsOf!1211 t2!34) lt!426867)))

(declare-fun b_lambda!37147 () Bool)

(assert (=> (not b_lambda!37147) (not d!366244)))

(declare-fun t!117489 () Bool)

(declare-fun tb!69517 () Bool)

(assert (=> (and b!1297686 (= (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (toChars!3305 (transformation!2239 (rule!3978 t2!34)))) t!117489) tb!69517))

(declare-fun b!1297747 () Bool)

(declare-fun e!832042 () Bool)

(declare-fun tp!378699 () Bool)

(declare-fun inv!17417 (Conc!4265) Bool)

(assert (=> b!1297747 (= e!832042 (and (inv!17417 (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (value!73444 t2!34)))) tp!378699))))

(declare-fun result!84288 () Bool)

(declare-fun inv!17418 (BalanceConc!8470) Bool)

(assert (=> tb!69517 (= result!84288 (and (inv!17418 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (value!73444 t2!34))) e!832042))))

(assert (= tb!69517 b!1297747))

(declare-fun m!1449165 () Bool)

(assert (=> b!1297747 m!1449165))

(declare-fun m!1449167 () Bool)

(assert (=> tb!69517 m!1449167))

(assert (=> d!366244 t!117489))

(declare-fun b_and!86511 () Bool)

(assert (= b_and!86489 (and (=> t!117489 result!84288) b_and!86511)))

(declare-fun tb!69519 () Bool)

(declare-fun t!117491 () Bool)

(assert (=> (and b!1297691 (= (toChars!3305 (transformation!2239 (h!18387 rules!2550))) (toChars!3305 (transformation!2239 (rule!3978 t2!34)))) t!117491) tb!69519))

(declare-fun result!84292 () Bool)

(assert (= result!84292 result!84288))

(assert (=> d!366244 t!117491))

(declare-fun b_and!86513 () Bool)

(assert (= b_and!86493 (and (=> t!117491 result!84292) b_and!86513)))

(declare-fun t!117493 () Bool)

(declare-fun tb!69521 () Bool)

(assert (=> (and b!1297704 (= (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (toChars!3305 (transformation!2239 (rule!3978 t2!34)))) t!117493) tb!69521))

(declare-fun result!84294 () Bool)

(assert (= result!84294 result!84288))

(assert (=> d!366244 t!117493))

(declare-fun b_and!86515 () Bool)

(assert (= b_and!86497 (and (=> t!117493 result!84294) b_and!86515)))

(declare-fun m!1449169 () Bool)

(assert (=> d!366244 m!1449169))

(declare-fun m!1449171 () Bool)

(assert (=> d!366244 m!1449171))

(assert (=> b!1297703 d!366244))

(declare-fun b!1297758 () Bool)

(declare-fun e!832051 () Bool)

(declare-fun inv!15 (TokenValue!2329) Bool)

(assert (=> b!1297758 (= e!832051 (inv!15 (value!73444 t1!34)))))

(declare-fun b!1297759 () Bool)

(declare-fun e!832050 () Bool)

(declare-fun inv!16 (TokenValue!2329) Bool)

(assert (=> b!1297759 (= e!832050 (inv!16 (value!73444 t1!34)))))

(declare-fun d!366248 () Bool)

(declare-fun c!213617 () Bool)

(assert (=> d!366248 (= c!213617 ((_ is IntegerValue!6987) (value!73444 t1!34)))))

(assert (=> d!366248 (= (inv!21 (value!73444 t1!34)) e!832050)))

(declare-fun b!1297760 () Bool)

(declare-fun res!581204 () Bool)

(assert (=> b!1297760 (=> res!581204 e!832051)))

(assert (=> b!1297760 (= res!581204 (not ((_ is IntegerValue!6989) (value!73444 t1!34))))))

(declare-fun e!832049 () Bool)

(assert (=> b!1297760 (= e!832049 e!832051)))

(declare-fun b!1297761 () Bool)

(declare-fun inv!17 (TokenValue!2329) Bool)

(assert (=> b!1297761 (= e!832049 (inv!17 (value!73444 t1!34)))))

(declare-fun b!1297762 () Bool)

(assert (=> b!1297762 (= e!832050 e!832049)))

(declare-fun c!213618 () Bool)

(assert (=> b!1297762 (= c!213618 ((_ is IntegerValue!6988) (value!73444 t1!34)))))

(assert (= (and d!366248 c!213617) b!1297759))

(assert (= (and d!366248 (not c!213617)) b!1297762))

(assert (= (and b!1297762 c!213618) b!1297761))

(assert (= (and b!1297762 (not c!213618)) b!1297760))

(assert (= (and b!1297760 (not res!581204)) b!1297758))

(declare-fun m!1449173 () Bool)

(assert (=> b!1297758 m!1449173))

(declare-fun m!1449175 () Bool)

(assert (=> b!1297759 m!1449175))

(declare-fun m!1449177 () Bool)

(assert (=> b!1297761 m!1449177))

(assert (=> b!1297693 d!366248))

(declare-fun d!366250 () Bool)

(assert (=> d!366250 (= (inv!17410 (tag!2501 (rule!3978 t2!34))) (= (mod (str.len (value!73443 (tag!2501 (rule!3978 t2!34)))) 2) 0))))

(assert (=> b!1297683 d!366250))

(declare-fun d!366252 () Bool)

(declare-fun res!581207 () Bool)

(declare-fun e!832054 () Bool)

(assert (=> d!366252 (=> (not res!581207) (not e!832054))))

(declare-fun semiInverseModEq!852 (Int Int) Bool)

(assert (=> d!366252 (= res!581207 (semiInverseModEq!852 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (toValue!3446 (transformation!2239 (rule!3978 t2!34)))))))

(assert (=> d!366252 (= (inv!17413 (transformation!2239 (rule!3978 t2!34))) e!832054)))

(declare-fun b!1297765 () Bool)

(declare-fun equivClasses!811 (Int Int) Bool)

(assert (=> b!1297765 (= e!832054 (equivClasses!811 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (toValue!3446 (transformation!2239 (rule!3978 t2!34)))))))

(assert (= (and d!366252 res!581207) b!1297765))

(declare-fun m!1449179 () Bool)

(assert (=> d!366252 m!1449179))

(declare-fun m!1449181 () Bool)

(assert (=> b!1297765 m!1449181))

(assert (=> b!1297683 d!366252))

(declare-fun d!366254 () Bool)

(declare-fun res!581212 () Bool)

(declare-fun e!832059 () Bool)

(assert (=> d!366254 (=> res!581212 e!832059)))

(assert (=> d!366254 (= res!581212 (not ((_ is Cons!12986) rules!2550)))))

(assert (=> d!366254 (= (sepAndNonSepRulesDisjointChars!612 rules!2550 rules!2550) e!832059)))

(declare-fun b!1297770 () Bool)

(declare-fun e!832060 () Bool)

(assert (=> b!1297770 (= e!832059 e!832060)))

(declare-fun res!581213 () Bool)

(assert (=> b!1297770 (=> (not res!581213) (not e!832060))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!295 (Rule!4278 List!13052) Bool)

(assert (=> b!1297770 (= res!581213 (ruleDisjointCharsFromAllFromOtherType!295 (h!18387 rules!2550) rules!2550))))

(declare-fun b!1297771 () Bool)

(assert (=> b!1297771 (= e!832060 (sepAndNonSepRulesDisjointChars!612 rules!2550 (t!117475 rules!2550)))))

(assert (= (and d!366254 (not res!581212)) b!1297770))

(assert (= (and b!1297770 res!581213) b!1297771))

(declare-fun m!1449183 () Bool)

(assert (=> b!1297770 m!1449183))

(declare-fun m!1449185 () Bool)

(assert (=> b!1297771 m!1449185))

(assert (=> b!1297694 d!366254))

(declare-fun b!1297772 () Bool)

(declare-fun e!832063 () Bool)

(assert (=> b!1297772 (= e!832063 (inv!15 (value!73444 t2!34)))))

(declare-fun b!1297773 () Bool)

(declare-fun e!832062 () Bool)

(assert (=> b!1297773 (= e!832062 (inv!16 (value!73444 t2!34)))))

(declare-fun d!366256 () Bool)

(declare-fun c!213619 () Bool)

(assert (=> d!366256 (= c!213619 ((_ is IntegerValue!6987) (value!73444 t2!34)))))

(assert (=> d!366256 (= (inv!21 (value!73444 t2!34)) e!832062)))

(declare-fun b!1297774 () Bool)

(declare-fun res!581214 () Bool)

(assert (=> b!1297774 (=> res!581214 e!832063)))

(assert (=> b!1297774 (= res!581214 (not ((_ is IntegerValue!6989) (value!73444 t2!34))))))

(declare-fun e!832061 () Bool)

(assert (=> b!1297774 (= e!832061 e!832063)))

(declare-fun b!1297775 () Bool)

(assert (=> b!1297775 (= e!832061 (inv!17 (value!73444 t2!34)))))

(declare-fun b!1297776 () Bool)

(assert (=> b!1297776 (= e!832062 e!832061)))

(declare-fun c!213620 () Bool)

(assert (=> b!1297776 (= c!213620 ((_ is IntegerValue!6988) (value!73444 t2!34)))))

(assert (= (and d!366256 c!213619) b!1297773))

(assert (= (and d!366256 (not c!213619)) b!1297776))

(assert (= (and b!1297776 c!213620) b!1297775))

(assert (= (and b!1297776 (not c!213620)) b!1297774))

(assert (= (and b!1297774 (not res!581214)) b!1297772))

(declare-fun m!1449187 () Bool)

(assert (=> b!1297772 m!1449187))

(declare-fun m!1449189 () Bool)

(assert (=> b!1297773 m!1449189))

(declare-fun m!1449191 () Bool)

(assert (=> b!1297775 m!1449191))

(assert (=> b!1297705 d!366256))

(declare-fun d!366258 () Bool)

(declare-fun prefixMatchZipperSequence!151 (Regex!3553 BalanceConc!8470) Bool)

(declare-fun ++!3301 (BalanceConc!8470 BalanceConc!8470) BalanceConc!8470)

(declare-fun singletonSeq!820 (C!7396) BalanceConc!8470)

(assert (=> d!366258 (= (separableTokensPredicate!217 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!151 (rulesRegex!124 thiss!19762 rules!2550) (++!3301 (charsOf!1211 t1!34) (singletonSeq!820 (apply!2875 (charsOf!1211 t2!34) 0))))))))

(declare-fun bs!329023 () Bool)

(assert (= bs!329023 d!366258))

(assert (=> bs!329023 m!1449093))

(declare-fun m!1449193 () Bool)

(assert (=> bs!329023 m!1449193))

(assert (=> bs!329023 m!1449093))

(assert (=> bs!329023 m!1449193))

(declare-fun m!1449195 () Bool)

(assert (=> bs!329023 m!1449195))

(assert (=> bs!329023 m!1449081))

(assert (=> bs!329023 m!1449081))

(assert (=> bs!329023 m!1449195))

(declare-fun m!1449197 () Bool)

(assert (=> bs!329023 m!1449197))

(assert (=> bs!329023 m!1449075))

(assert (=> bs!329023 m!1449197))

(declare-fun m!1449199 () Bool)

(assert (=> bs!329023 m!1449199))

(assert (=> bs!329023 m!1449075))

(assert (=> b!1297684 d!366258))

(declare-fun d!366260 () Bool)

(declare-fun lt!426877 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1837 (List!13050) (InoxSet C!7396))

(assert (=> d!366260 (= lt!426877 (select (content!1837 lt!426845) lt!426851))))

(declare-fun e!832077 () Bool)

(assert (=> d!366260 (= lt!426877 e!832077)))

(declare-fun res!581232 () Bool)

(assert (=> d!366260 (=> (not res!581232) (not e!832077))))

(assert (=> d!366260 (= res!581232 ((_ is Cons!12984) lt!426845))))

(assert (=> d!366260 (= (contains!2175 lt!426845 lt!426851) lt!426877)))

(declare-fun b!1297793 () Bool)

(declare-fun e!832078 () Bool)

(assert (=> b!1297793 (= e!832077 e!832078)))

(declare-fun res!581231 () Bool)

(assert (=> b!1297793 (=> res!581231 e!832078)))

(assert (=> b!1297793 (= res!581231 (= (h!18385 lt!426845) lt!426851))))

(declare-fun b!1297794 () Bool)

(assert (=> b!1297794 (= e!832078 (contains!2175 (t!117473 lt!426845) lt!426851))))

(assert (= (and d!366260 res!581232) b!1297793))

(assert (= (and b!1297793 (not res!581231)) b!1297794))

(declare-fun m!1449227 () Bool)

(assert (=> d!366260 m!1449227))

(declare-fun m!1449229 () Bool)

(assert (=> d!366260 m!1449229))

(declare-fun m!1449231 () Bool)

(assert (=> b!1297794 m!1449231))

(assert (=> b!1297695 d!366260))

(declare-fun d!366270 () Bool)

(declare-fun lt!426885 () C!7396)

(declare-fun apply!2879 (List!13050 Int) C!7396)

(assert (=> d!366270 (= lt!426885 (apply!2879 (list!4861 lt!426852) 0))))

(declare-fun apply!2880 (Conc!4265 Int) C!7396)

(assert (=> d!366270 (= lt!426885 (apply!2880 (c!213611 lt!426852) 0))))

(declare-fun e!832102 () Bool)

(assert (=> d!366270 e!832102))

(declare-fun res!581248 () Bool)

(assert (=> d!366270 (=> (not res!581248) (not e!832102))))

(assert (=> d!366270 (= res!581248 (<= 0 0))))

(assert (=> d!366270 (= (apply!2875 lt!426852 0) lt!426885)))

(declare-fun b!1297826 () Bool)

(assert (=> b!1297826 (= e!832102 (< 0 (size!10611 lt!426852)))))

(assert (= (and d!366270 res!581248) b!1297826))

(assert (=> d!366270 m!1449077))

(assert (=> d!366270 m!1449077))

(declare-fun m!1449261 () Bool)

(assert (=> d!366270 m!1449261))

(declare-fun m!1449263 () Bool)

(assert (=> d!366270 m!1449263))

(declare-fun m!1449265 () Bool)

(assert (=> b!1297826 m!1449265))

(assert (=> b!1297695 d!366270))

(declare-fun d!366282 () Bool)

(assert (=> d!366282 (= (isEmpty!7713 rules!2550) ((_ is Nil!12986) rules!2550))))

(assert (=> b!1297685 d!366282))

(declare-fun d!366288 () Bool)

(assert (=> d!366288 (= (inv!17410 (tag!2501 (h!18387 rules!2550))) (= (mod (str.len (value!73443 (tag!2501 (h!18387 rules!2550)))) 2) 0))))

(assert (=> b!1297696 d!366288))

(declare-fun d!366290 () Bool)

(declare-fun res!581251 () Bool)

(declare-fun e!832105 () Bool)

(assert (=> d!366290 (=> (not res!581251) (not e!832105))))

(assert (=> d!366290 (= res!581251 (semiInverseModEq!852 (toChars!3305 (transformation!2239 (h!18387 rules!2550))) (toValue!3446 (transformation!2239 (h!18387 rules!2550)))))))

(assert (=> d!366290 (= (inv!17413 (transformation!2239 (h!18387 rules!2550))) e!832105)))

(declare-fun b!1297829 () Bool)

(assert (=> b!1297829 (= e!832105 (equivClasses!811 (toChars!3305 (transformation!2239 (h!18387 rules!2550))) (toValue!3446 (transformation!2239 (h!18387 rules!2550)))))))

(assert (= (and d!366290 res!581251) b!1297829))

(declare-fun m!1449277 () Bool)

(assert (=> d!366290 m!1449277))

(declare-fun m!1449279 () Bool)

(assert (=> b!1297829 m!1449279))

(assert (=> b!1297696 d!366290))

(declare-fun d!366292 () Bool)

(declare-fun res!581262 () Bool)

(declare-fun e!832114 () Bool)

(assert (=> d!366292 (=> (not res!581262) (not e!832114))))

(declare-fun isEmpty!7716 (List!13050) Bool)

(assert (=> d!366292 (= res!581262 (not (isEmpty!7716 (originalCharacters!3101 t1!34))))))

(assert (=> d!366292 (= (inv!17414 t1!34) e!832114)))

(declare-fun b!1297846 () Bool)

(declare-fun res!581263 () Bool)

(assert (=> b!1297846 (=> (not res!581263) (not e!832114))))

(assert (=> b!1297846 (= res!581263 (= (originalCharacters!3101 t1!34) (list!4861 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (value!73444 t1!34)))))))

(declare-fun b!1297847 () Bool)

(assert (=> b!1297847 (= e!832114 (= (size!10610 t1!34) (size!10614 (originalCharacters!3101 t1!34))))))

(assert (= (and d!366292 res!581262) b!1297846))

(assert (= (and b!1297846 res!581263) b!1297847))

(declare-fun b_lambda!37149 () Bool)

(assert (=> (not b_lambda!37149) (not b!1297846)))

(declare-fun t!117496 () Bool)

(declare-fun tb!69523 () Bool)

(assert (=> (and b!1297686 (= (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (toChars!3305 (transformation!2239 (rule!3978 t1!34)))) t!117496) tb!69523))

(declare-fun b!1297852 () Bool)

(declare-fun e!832117 () Bool)

(declare-fun tp!378700 () Bool)

(assert (=> b!1297852 (= e!832117 (and (inv!17417 (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (value!73444 t1!34)))) tp!378700))))

(declare-fun result!84296 () Bool)

(assert (=> tb!69523 (= result!84296 (and (inv!17418 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (value!73444 t1!34))) e!832117))))

(assert (= tb!69523 b!1297852))

(declare-fun m!1449295 () Bool)

(assert (=> b!1297852 m!1449295))

(declare-fun m!1449297 () Bool)

(assert (=> tb!69523 m!1449297))

(assert (=> b!1297846 t!117496))

(declare-fun b_and!86517 () Bool)

(assert (= b_and!86511 (and (=> t!117496 result!84296) b_and!86517)))

(declare-fun tb!69525 () Bool)

(declare-fun t!117498 () Bool)

(assert (=> (and b!1297691 (= (toChars!3305 (transformation!2239 (h!18387 rules!2550))) (toChars!3305 (transformation!2239 (rule!3978 t1!34)))) t!117498) tb!69525))

(declare-fun result!84298 () Bool)

(assert (= result!84298 result!84296))

(assert (=> b!1297846 t!117498))

(declare-fun b_and!86519 () Bool)

(assert (= b_and!86513 (and (=> t!117498 result!84298) b_and!86519)))

(declare-fun tb!69527 () Bool)

(declare-fun t!117500 () Bool)

(assert (=> (and b!1297704 (= (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (toChars!3305 (transformation!2239 (rule!3978 t1!34)))) t!117500) tb!69527))

(declare-fun result!84300 () Bool)

(assert (= result!84300 result!84296))

(assert (=> b!1297846 t!117500))

(declare-fun b_and!86521 () Bool)

(assert (= b_and!86515 (and (=> t!117500 result!84300) b_and!86521)))

(declare-fun m!1449299 () Bool)

(assert (=> d!366292 m!1449299))

(declare-fun m!1449301 () Bool)

(assert (=> b!1297846 m!1449301))

(assert (=> b!1297846 m!1449301))

(declare-fun m!1449303 () Bool)

(assert (=> b!1297846 m!1449303))

(declare-fun m!1449305 () Bool)

(assert (=> b!1297847 m!1449305))

(assert (=> start!114386 d!366292))

(declare-fun d!366296 () Bool)

(declare-fun res!581264 () Bool)

(declare-fun e!832119 () Bool)

(assert (=> d!366296 (=> (not res!581264) (not e!832119))))

(assert (=> d!366296 (= res!581264 (not (isEmpty!7716 (originalCharacters!3101 t2!34))))))

(assert (=> d!366296 (= (inv!17414 t2!34) e!832119)))

(declare-fun b!1297855 () Bool)

(declare-fun res!581265 () Bool)

(assert (=> b!1297855 (=> (not res!581265) (not e!832119))))

(assert (=> b!1297855 (= res!581265 (= (originalCharacters!3101 t2!34) (list!4861 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (value!73444 t2!34)))))))

(declare-fun b!1297856 () Bool)

(assert (=> b!1297856 (= e!832119 (= (size!10610 t2!34) (size!10614 (originalCharacters!3101 t2!34))))))

(assert (= (and d!366296 res!581264) b!1297855))

(assert (= (and b!1297855 res!581265) b!1297856))

(declare-fun b_lambda!37151 () Bool)

(assert (=> (not b_lambda!37151) (not b!1297855)))

(assert (=> b!1297855 t!117489))

(declare-fun b_and!86523 () Bool)

(assert (= b_and!86517 (and (=> t!117489 result!84288) b_and!86523)))

(assert (=> b!1297855 t!117491))

(declare-fun b_and!86525 () Bool)

(assert (= b_and!86519 (and (=> t!117491 result!84292) b_and!86525)))

(assert (=> b!1297855 t!117493))

(declare-fun b_and!86527 () Bool)

(assert (= b_and!86521 (and (=> t!117493 result!84294) b_and!86527)))

(declare-fun m!1449319 () Bool)

(assert (=> d!366296 m!1449319))

(assert (=> b!1297855 m!1449171))

(assert (=> b!1297855 m!1449171))

(declare-fun m!1449321 () Bool)

(assert (=> b!1297855 m!1449321))

(declare-fun m!1449323 () Bool)

(assert (=> b!1297856 m!1449323))

(assert (=> start!114386 d!366296))

(declare-fun d!366300 () Bool)

(declare-fun lt!426917 () Bool)

(declare-fun e!832163 () Bool)

(assert (=> d!366300 (= lt!426917 e!832163)))

(declare-fun res!581287 () Bool)

(assert (=> d!366300 (=> (not res!581287) (not e!832163))))

(declare-datatypes ((List!13056 0))(
  ( (Nil!12990) (Cons!12990 (h!18391 Token!4140) (t!117513 List!13056)) )
))
(declare-datatypes ((IArray!8539 0))(
  ( (IArray!8540 (innerList!4327 List!13056)) )
))
(declare-datatypes ((Conc!4267 0))(
  ( (Node!4267 (left!11172 Conc!4267) (right!11502 Conc!4267) (csize!8764 Int) (cheight!4478 Int)) (Leaf!6583 (xs!6982 IArray!8539) (csize!8765 Int)) (Empty!4267) )
))
(declare-datatypes ((BalanceConc!8474 0))(
  ( (BalanceConc!8475 (c!213650 Conc!4267)) )
))
(declare-fun list!4864 (BalanceConc!8474) List!13056)

(declare-datatypes ((tuple2!12702 0))(
  ( (tuple2!12703 (_1!7237 BalanceConc!8474) (_2!7237 BalanceConc!8470)) )
))
(declare-fun lex!791 (LexerInterface!1934 List!13052 BalanceConc!8470) tuple2!12702)

(declare-fun print!728 (LexerInterface!1934 BalanceConc!8474) BalanceConc!8470)

(declare-fun singletonSeq!822 (Token!4140) BalanceConc!8474)

(assert (=> d!366300 (= res!581287 (= (list!4864 (_1!7237 (lex!791 thiss!19762 rules!2550 (print!728 thiss!19762 (singletonSeq!822 t1!34))))) (list!4864 (singletonSeq!822 t1!34))))))

(declare-fun e!832162 () Bool)

(assert (=> d!366300 (= lt!426917 e!832162)))

(declare-fun res!581289 () Bool)

(assert (=> d!366300 (=> (not res!581289) (not e!832162))))

(declare-fun lt!426916 () tuple2!12702)

(declare-fun size!10617 (BalanceConc!8474) Int)

(assert (=> d!366300 (= res!581289 (= (size!10617 (_1!7237 lt!426916)) 1))))

(assert (=> d!366300 (= lt!426916 (lex!791 thiss!19762 rules!2550 (print!728 thiss!19762 (singletonSeq!822 t1!34))))))

(assert (=> d!366300 (not (isEmpty!7713 rules!2550))))

(assert (=> d!366300 (= (rulesProduceIndividualToken!903 thiss!19762 rules!2550 t1!34) lt!426917)))

(declare-fun b!1297925 () Bool)

(declare-fun res!581288 () Bool)

(assert (=> b!1297925 (=> (not res!581288) (not e!832162))))

(declare-fun apply!2881 (BalanceConc!8474 Int) Token!4140)

(assert (=> b!1297925 (= res!581288 (= (apply!2881 (_1!7237 lt!426916) 0) t1!34))))

(declare-fun b!1297926 () Bool)

(declare-fun isEmpty!7717 (BalanceConc!8470) Bool)

(assert (=> b!1297926 (= e!832162 (isEmpty!7717 (_2!7237 lt!426916)))))

(declare-fun b!1297927 () Bool)

(assert (=> b!1297927 (= e!832163 (isEmpty!7717 (_2!7237 (lex!791 thiss!19762 rules!2550 (print!728 thiss!19762 (singletonSeq!822 t1!34))))))))

(assert (= (and d!366300 res!581289) b!1297925))

(assert (= (and b!1297925 res!581288) b!1297926))

(assert (= (and d!366300 res!581287) b!1297927))

(declare-fun m!1449415 () Bool)

(assert (=> d!366300 m!1449415))

(declare-fun m!1449417 () Bool)

(assert (=> d!366300 m!1449417))

(assert (=> d!366300 m!1449415))

(declare-fun m!1449419 () Bool)

(assert (=> d!366300 m!1449419))

(assert (=> d!366300 m!1449415))

(assert (=> d!366300 m!1449419))

(declare-fun m!1449421 () Bool)

(assert (=> d!366300 m!1449421))

(declare-fun m!1449423 () Bool)

(assert (=> d!366300 m!1449423))

(declare-fun m!1449425 () Bool)

(assert (=> d!366300 m!1449425))

(assert (=> d!366300 m!1449089))

(declare-fun m!1449427 () Bool)

(assert (=> b!1297925 m!1449427))

(declare-fun m!1449429 () Bool)

(assert (=> b!1297926 m!1449429))

(assert (=> b!1297927 m!1449415))

(assert (=> b!1297927 m!1449415))

(assert (=> b!1297927 m!1449419))

(assert (=> b!1297927 m!1449419))

(assert (=> b!1297927 m!1449421))

(declare-fun m!1449431 () Bool)

(assert (=> b!1297927 m!1449431))

(assert (=> b!1297697 d!366300))

(declare-fun d!366332 () Bool)

(declare-fun list!4865 (Conc!4265) List!13050)

(assert (=> d!366332 (= (list!4861 lt!426852) (list!4865 (c!213611 lt!426852)))))

(declare-fun bs!329033 () Bool)

(assert (= bs!329033 d!366332))

(declare-fun m!1449433 () Bool)

(assert (=> bs!329033 m!1449433))

(assert (=> b!1297687 d!366332))

(declare-fun d!366334 () Bool)

(declare-fun lt!426918 () C!7396)

(assert (=> d!366334 (= lt!426918 (apply!2879 (list!4861 lt!426850) 0))))

(assert (=> d!366334 (= lt!426918 (apply!2880 (c!213611 lt!426850) 0))))

(declare-fun e!832164 () Bool)

(assert (=> d!366334 e!832164))

(declare-fun res!581290 () Bool)

(assert (=> d!366334 (=> (not res!581290) (not e!832164))))

(assert (=> d!366334 (= res!581290 (<= 0 0))))

(assert (=> d!366334 (= (apply!2875 lt!426850 0) lt!426918)))

(declare-fun b!1297928 () Bool)

(assert (=> b!1297928 (= e!832164 (< 0 (size!10611 lt!426850)))))

(assert (= (and d!366334 res!581290) b!1297928))

(assert (=> d!366334 m!1449153))

(assert (=> d!366334 m!1449153))

(declare-fun m!1449435 () Bool)

(assert (=> d!366334 m!1449435))

(declare-fun m!1449437 () Bool)

(assert (=> d!366334 m!1449437))

(assert (=> b!1297928 m!1449091))

(assert (=> b!1297687 d!366334))

(declare-fun b!1297939 () Bool)

(declare-fun res!581295 () Bool)

(declare-fun e!832169 () Bool)

(assert (=> b!1297939 (=> (not res!581295) (not e!832169))))

(declare-fun lt!426921 () List!13050)

(assert (=> b!1297939 (= res!581295 (= (size!10614 lt!426921) (+ (size!10614 lt!426846) (size!10614 (Cons!12984 lt!426848 Nil!12984)))))))

(declare-fun b!1297940 () Bool)

(assert (=> b!1297940 (= e!832169 (or (not (= (Cons!12984 lt!426848 Nil!12984) Nil!12984)) (= lt!426921 lt!426846)))))

(declare-fun b!1297937 () Bool)

(declare-fun e!832170 () List!13050)

(assert (=> b!1297937 (= e!832170 (Cons!12984 lt!426848 Nil!12984))))

(declare-fun b!1297938 () Bool)

(assert (=> b!1297938 (= e!832170 (Cons!12984 (h!18385 lt!426846) (++!3300 (t!117473 lt!426846) (Cons!12984 lt!426848 Nil!12984))))))

(declare-fun d!366336 () Bool)

(assert (=> d!366336 e!832169))

(declare-fun res!581296 () Bool)

(assert (=> d!366336 (=> (not res!581296) (not e!832169))))

(assert (=> d!366336 (= res!581296 (= (content!1837 lt!426921) ((_ map or) (content!1837 lt!426846) (content!1837 (Cons!12984 lt!426848 Nil!12984)))))))

(assert (=> d!366336 (= lt!426921 e!832170)))

(declare-fun c!213642 () Bool)

(assert (=> d!366336 (= c!213642 ((_ is Nil!12984) lt!426846))))

(assert (=> d!366336 (= (++!3300 lt!426846 (Cons!12984 lt!426848 Nil!12984)) lt!426921)))

(assert (= (and d!366336 c!213642) b!1297937))

(assert (= (and d!366336 (not c!213642)) b!1297938))

(assert (= (and d!366336 res!581296) b!1297939))

(assert (= (and b!1297939 res!581295) b!1297940))

(declare-fun m!1449439 () Bool)

(assert (=> b!1297939 m!1449439))

(declare-fun m!1449441 () Bool)

(assert (=> b!1297939 m!1449441))

(declare-fun m!1449443 () Bool)

(assert (=> b!1297939 m!1449443))

(declare-fun m!1449445 () Bool)

(assert (=> b!1297938 m!1449445))

(declare-fun m!1449447 () Bool)

(assert (=> d!366336 m!1449447))

(declare-fun m!1449449 () Bool)

(assert (=> d!366336 m!1449449))

(declare-fun m!1449451 () Bool)

(assert (=> d!366336 m!1449451))

(assert (=> b!1297687 d!366336))

(declare-fun d!366338 () Bool)

(declare-fun lt!426922 () BalanceConc!8470)

(assert (=> d!366338 (= (list!4861 lt!426922) (originalCharacters!3101 t1!34))))

(assert (=> d!366338 (= lt!426922 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (value!73444 t1!34)))))

(assert (=> d!366338 (= (charsOf!1211 t1!34) lt!426922)))

(declare-fun b_lambda!37169 () Bool)

(assert (=> (not b_lambda!37169) (not d!366338)))

(assert (=> d!366338 t!117496))

(declare-fun b_and!86545 () Bool)

(assert (= b_and!86523 (and (=> t!117496 result!84296) b_and!86545)))

(assert (=> d!366338 t!117498))

(declare-fun b_and!86547 () Bool)

(assert (= b_and!86525 (and (=> t!117498 result!84298) b_and!86547)))

(assert (=> d!366338 t!117500))

(declare-fun b_and!86549 () Bool)

(assert (= b_and!86527 (and (=> t!117500 result!84300) b_and!86549)))

(declare-fun m!1449453 () Bool)

(assert (=> d!366338 m!1449453))

(assert (=> d!366338 m!1449301))

(assert (=> b!1297687 d!366338))

(declare-fun d!366340 () Bool)

(declare-fun c!213645 () Bool)

(assert (=> d!366340 (= c!213645 (isEmpty!7716 lt!426845))))

(declare-fun e!832173 () Bool)

(assert (=> d!366340 (= (prefixMatch!66 lt!426849 lt!426845) e!832173)))

(declare-fun b!1297945 () Bool)

(declare-fun lostCause!260 (Regex!3553) Bool)

(assert (=> b!1297945 (= e!832173 (not (lostCause!260 lt!426849)))))

(declare-fun b!1297946 () Bool)

(declare-fun derivativeStep!883 (Regex!3553 C!7396) Regex!3553)

(declare-fun head!2228 (List!13050) C!7396)

(declare-fun tail!1856 (List!13050) List!13050)

(assert (=> b!1297946 (= e!832173 (prefixMatch!66 (derivativeStep!883 lt!426849 (head!2228 lt!426845)) (tail!1856 lt!426845)))))

(assert (= (and d!366340 c!213645) b!1297945))

(assert (= (and d!366340 (not c!213645)) b!1297946))

(declare-fun m!1449455 () Bool)

(assert (=> d!366340 m!1449455))

(declare-fun m!1449457 () Bool)

(assert (=> b!1297945 m!1449457))

(declare-fun m!1449459 () Bool)

(assert (=> b!1297946 m!1449459))

(assert (=> b!1297946 m!1449459))

(declare-fun m!1449461 () Bool)

(assert (=> b!1297946 m!1449461))

(declare-fun m!1449463 () Bool)

(assert (=> b!1297946 m!1449463))

(assert (=> b!1297946 m!1449461))

(assert (=> b!1297946 m!1449463))

(declare-fun m!1449465 () Bool)

(assert (=> b!1297946 m!1449465))

(assert (=> b!1297687 d!366340))

(declare-fun d!366342 () Bool)

(declare-fun lt!426925 () Unit!19130)

(declare-fun lemma!54 (List!13052 LexerInterface!1934 List!13052) Unit!19130)

(assert (=> d!366342 (= lt!426925 (lemma!54 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!51038 () Int)

(declare-datatypes ((List!13057 0))(
  ( (Nil!12991) (Cons!12991 (h!18392 Regex!3553) (t!117514 List!13057)) )
))
(declare-fun generalisedUnion!58 (List!13057) Regex!3553)

(declare-fun map!2827 (List!13052 Int) List!13057)

(assert (=> d!366342 (= (rulesRegex!124 thiss!19762 rules!2550) (generalisedUnion!58 (map!2827 rules!2550 lambda!51038)))))

(declare-fun bs!329034 () Bool)

(assert (= bs!329034 d!366342))

(declare-fun m!1449467 () Bool)

(assert (=> bs!329034 m!1449467))

(declare-fun m!1449469 () Bool)

(assert (=> bs!329034 m!1449469))

(assert (=> bs!329034 m!1449469))

(declare-fun m!1449471 () Bool)

(assert (=> bs!329034 m!1449471))

(assert (=> b!1297687 d!366342))

(declare-fun d!366344 () Bool)

(declare-fun lt!426926 () Bool)

(assert (=> d!366344 (= lt!426926 (select (content!1837 lt!426847) lt!426851))))

(declare-fun e!832174 () Bool)

(assert (=> d!366344 (= lt!426926 e!832174)))

(declare-fun res!581298 () Bool)

(assert (=> d!366344 (=> (not res!581298) (not e!832174))))

(assert (=> d!366344 (= res!581298 ((_ is Cons!12984) lt!426847))))

(assert (=> d!366344 (= (contains!2175 lt!426847 lt!426851) lt!426926)))

(declare-fun b!1297947 () Bool)

(declare-fun e!832175 () Bool)

(assert (=> b!1297947 (= e!832174 e!832175)))

(declare-fun res!581297 () Bool)

(assert (=> b!1297947 (=> res!581297 e!832175)))

(assert (=> b!1297947 (= res!581297 (= (h!18385 lt!426847) lt!426851))))

(declare-fun b!1297948 () Bool)

(assert (=> b!1297948 (= e!832175 (contains!2175 (t!117473 lt!426847) lt!426851))))

(assert (= (and d!366344 res!581298) b!1297947))

(assert (= (and b!1297947 (not res!581297)) b!1297948))

(declare-fun m!1449473 () Bool)

(assert (=> d!366344 m!1449473))

(declare-fun m!1449475 () Bool)

(assert (=> d!366344 m!1449475))

(declare-fun m!1449477 () Bool)

(assert (=> b!1297948 m!1449477))

(assert (=> b!1297698 d!366344))

(declare-fun d!366346 () Bool)

(assert (=> d!366346 (= (inv!17410 (tag!2501 (rule!3978 t1!34))) (= (mod (str.len (value!73443 (tag!2501 (rule!3978 t1!34)))) 2) 0))))

(assert (=> b!1297688 d!366346))

(declare-fun d!366348 () Bool)

(declare-fun res!581299 () Bool)

(declare-fun e!832176 () Bool)

(assert (=> d!366348 (=> (not res!581299) (not e!832176))))

(assert (=> d!366348 (= res!581299 (semiInverseModEq!852 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (toValue!3446 (transformation!2239 (rule!3978 t1!34)))))))

(assert (=> d!366348 (= (inv!17413 (transformation!2239 (rule!3978 t1!34))) e!832176)))

(declare-fun b!1297949 () Bool)

(assert (=> b!1297949 (= e!832176 (equivClasses!811 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (toValue!3446 (transformation!2239 (rule!3978 t1!34)))))))

(assert (= (and d!366348 res!581299) b!1297949))

(declare-fun m!1449479 () Bool)

(assert (=> d!366348 m!1449479))

(declare-fun m!1449481 () Bool)

(assert (=> b!1297949 m!1449481))

(assert (=> b!1297688 d!366348))

(declare-fun d!366350 () Bool)

(declare-fun lt!426927 () Bool)

(assert (=> d!366350 (= lt!426927 (select (content!1837 lt!426847) lt!426848))))

(declare-fun e!832177 () Bool)

(assert (=> d!366350 (= lt!426927 e!832177)))

(declare-fun res!581301 () Bool)

(assert (=> d!366350 (=> (not res!581301) (not e!832177))))

(assert (=> d!366350 (= res!581301 ((_ is Cons!12984) lt!426847))))

(assert (=> d!366350 (= (contains!2175 lt!426847 lt!426848) lt!426927)))

(declare-fun b!1297950 () Bool)

(declare-fun e!832178 () Bool)

(assert (=> b!1297950 (= e!832177 e!832178)))

(declare-fun res!581300 () Bool)

(assert (=> b!1297950 (=> res!581300 e!832178)))

(assert (=> b!1297950 (= res!581300 (= (h!18385 lt!426847) lt!426848))))

(declare-fun b!1297951 () Bool)

(assert (=> b!1297951 (= e!832178 (contains!2175 (t!117473 lt!426847) lt!426848))))

(assert (= (and d!366350 res!581301) b!1297950))

(assert (= (and b!1297950 (not res!581300)) b!1297951))

(assert (=> d!366350 m!1449473))

(declare-fun m!1449483 () Bool)

(assert (=> d!366350 m!1449483))

(declare-fun m!1449485 () Bool)

(assert (=> b!1297951 m!1449485))

(assert (=> b!1297699 d!366350))

(declare-fun d!366352 () Bool)

(assert (=> d!366352 true))

(declare-fun lt!426930 () Bool)

(declare-fun lambda!51041 () Int)

(declare-fun forall!3260 (List!13052 Int) Bool)

(assert (=> d!366352 (= lt!426930 (forall!3260 rules!2550 lambda!51041))))

(declare-fun e!832183 () Bool)

(assert (=> d!366352 (= lt!426930 e!832183)))

(declare-fun res!581306 () Bool)

(assert (=> d!366352 (=> res!581306 e!832183)))

(assert (=> d!366352 (= res!581306 (not ((_ is Cons!12986) rules!2550)))))

(assert (=> d!366352 (= (rulesValidInductive!708 thiss!19762 rules!2550) lt!426930)))

(declare-fun b!1297956 () Bool)

(declare-fun e!832184 () Bool)

(assert (=> b!1297956 (= e!832183 e!832184)))

(declare-fun res!581307 () Bool)

(assert (=> b!1297956 (=> (not res!581307) (not e!832184))))

(declare-fun ruleValid!549 (LexerInterface!1934 Rule!4278) Bool)

(assert (=> b!1297956 (= res!581307 (ruleValid!549 thiss!19762 (h!18387 rules!2550)))))

(declare-fun b!1297957 () Bool)

(assert (=> b!1297957 (= e!832184 (rulesValidInductive!708 thiss!19762 (t!117475 rules!2550)))))

(assert (= (and d!366352 (not res!581306)) b!1297956))

(assert (= (and b!1297956 res!581307) b!1297957))

(declare-fun m!1449487 () Bool)

(assert (=> d!366352 m!1449487))

(declare-fun m!1449489 () Bool)

(assert (=> b!1297956 m!1449489))

(declare-fun m!1449491 () Bool)

(assert (=> b!1297957 m!1449491))

(assert (=> b!1297689 d!366352))

(declare-fun d!366354 () Bool)

(declare-fun lt!426932 () Bool)

(declare-fun e!832186 () Bool)

(assert (=> d!366354 (= lt!426932 e!832186)))

(declare-fun res!581308 () Bool)

(assert (=> d!366354 (=> (not res!581308) (not e!832186))))

(assert (=> d!366354 (= res!581308 (= (list!4864 (_1!7237 (lex!791 thiss!19762 rules!2550 (print!728 thiss!19762 (singletonSeq!822 t2!34))))) (list!4864 (singletonSeq!822 t2!34))))))

(declare-fun e!832185 () Bool)

(assert (=> d!366354 (= lt!426932 e!832185)))

(declare-fun res!581310 () Bool)

(assert (=> d!366354 (=> (not res!581310) (not e!832185))))

(declare-fun lt!426931 () tuple2!12702)

(assert (=> d!366354 (= res!581310 (= (size!10617 (_1!7237 lt!426931)) 1))))

(assert (=> d!366354 (= lt!426931 (lex!791 thiss!19762 rules!2550 (print!728 thiss!19762 (singletonSeq!822 t2!34))))))

(assert (=> d!366354 (not (isEmpty!7713 rules!2550))))

(assert (=> d!366354 (= (rulesProduceIndividualToken!903 thiss!19762 rules!2550 t2!34) lt!426932)))

(declare-fun b!1297960 () Bool)

(declare-fun res!581309 () Bool)

(assert (=> b!1297960 (=> (not res!581309) (not e!832185))))

(assert (=> b!1297960 (= res!581309 (= (apply!2881 (_1!7237 lt!426931) 0) t2!34))))

(declare-fun b!1297961 () Bool)

(assert (=> b!1297961 (= e!832185 (isEmpty!7717 (_2!7237 lt!426931)))))

(declare-fun b!1297962 () Bool)

(assert (=> b!1297962 (= e!832186 (isEmpty!7717 (_2!7237 (lex!791 thiss!19762 rules!2550 (print!728 thiss!19762 (singletonSeq!822 t2!34))))))))

(assert (= (and d!366354 res!581310) b!1297960))

(assert (= (and b!1297960 res!581309) b!1297961))

(assert (= (and d!366354 res!581308) b!1297962))

(declare-fun m!1449493 () Bool)

(assert (=> d!366354 m!1449493))

(declare-fun m!1449495 () Bool)

(assert (=> d!366354 m!1449495))

(assert (=> d!366354 m!1449493))

(declare-fun m!1449497 () Bool)

(assert (=> d!366354 m!1449497))

(assert (=> d!366354 m!1449493))

(assert (=> d!366354 m!1449497))

(declare-fun m!1449499 () Bool)

(assert (=> d!366354 m!1449499))

(declare-fun m!1449501 () Bool)

(assert (=> d!366354 m!1449501))

(declare-fun m!1449503 () Bool)

(assert (=> d!366354 m!1449503))

(assert (=> d!366354 m!1449089))

(declare-fun m!1449505 () Bool)

(assert (=> b!1297960 m!1449505))

(declare-fun m!1449507 () Bool)

(assert (=> b!1297961 m!1449507))

(assert (=> b!1297962 m!1449493))

(assert (=> b!1297962 m!1449493))

(assert (=> b!1297962 m!1449497))

(assert (=> b!1297962 m!1449497))

(assert (=> b!1297962 m!1449499))

(declare-fun m!1449509 () Bool)

(assert (=> b!1297962 m!1449509))

(assert (=> b!1297700 d!366354))

(declare-fun d!366356 () Bool)

(declare-fun res!581313 () Bool)

(declare-fun e!832189 () Bool)

(assert (=> d!366356 (=> (not res!581313) (not e!832189))))

(declare-fun rulesValid!821 (LexerInterface!1934 List!13052) Bool)

(assert (=> d!366356 (= res!581313 (rulesValid!821 thiss!19762 rules!2550))))

(assert (=> d!366356 (= (rulesInvariant!1804 thiss!19762 rules!2550) e!832189)))

(declare-fun b!1297965 () Bool)

(declare-datatypes ((List!13058 0))(
  ( (Nil!12992) (Cons!12992 (h!18393 String!15881) (t!117515 List!13058)) )
))
(declare-fun noDuplicateTag!821 (LexerInterface!1934 List!13052 List!13058) Bool)

(assert (=> b!1297965 (= e!832189 (noDuplicateTag!821 thiss!19762 rules!2550 Nil!12992))))

(assert (= (and d!366356 res!581313) b!1297965))

(declare-fun m!1449511 () Bool)

(assert (=> d!366356 m!1449511))

(declare-fun m!1449513 () Bool)

(assert (=> b!1297965 m!1449513))

(assert (=> b!1297690 d!366356))

(declare-fun b!1297968 () Bool)

(declare-fun res!581314 () Bool)

(declare-fun e!832190 () Bool)

(assert (=> b!1297968 (=> (not res!581314) (not e!832190))))

(declare-fun lt!426933 () List!13050)

(assert (=> b!1297968 (= res!581314 (= (size!10614 lt!426933) (+ (size!10614 lt!426845) (size!10614 (getSuffix!409 lt!426847 lt!426845)))))))

(declare-fun b!1297969 () Bool)

(assert (=> b!1297969 (= e!832190 (or (not (= (getSuffix!409 lt!426847 lt!426845) Nil!12984)) (= lt!426933 lt!426845)))))

(declare-fun b!1297966 () Bool)

(declare-fun e!832191 () List!13050)

(assert (=> b!1297966 (= e!832191 (getSuffix!409 lt!426847 lt!426845))))

(declare-fun b!1297967 () Bool)

(assert (=> b!1297967 (= e!832191 (Cons!12984 (h!18385 lt!426845) (++!3300 (t!117473 lt!426845) (getSuffix!409 lt!426847 lt!426845))))))

(declare-fun d!366358 () Bool)

(assert (=> d!366358 e!832190))

(declare-fun res!581315 () Bool)

(assert (=> d!366358 (=> (not res!581315) (not e!832190))))

(assert (=> d!366358 (= res!581315 (= (content!1837 lt!426933) ((_ map or) (content!1837 lt!426845) (content!1837 (getSuffix!409 lt!426847 lt!426845)))))))

(assert (=> d!366358 (= lt!426933 e!832191)))

(declare-fun c!213646 () Bool)

(assert (=> d!366358 (= c!213646 ((_ is Nil!12984) lt!426845))))

(assert (=> d!366358 (= (++!3300 lt!426845 (getSuffix!409 lt!426847 lt!426845)) lt!426933)))

(assert (= (and d!366358 c!213646) b!1297966))

(assert (= (and d!366358 (not c!213646)) b!1297967))

(assert (= (and d!366358 res!581315) b!1297968))

(assert (= (and b!1297968 res!581314) b!1297969))

(declare-fun m!1449515 () Bool)

(assert (=> b!1297968 m!1449515))

(declare-fun m!1449517 () Bool)

(assert (=> b!1297968 m!1449517))

(assert (=> b!1297968 m!1449099))

(declare-fun m!1449519 () Bool)

(assert (=> b!1297968 m!1449519))

(assert (=> b!1297967 m!1449099))

(declare-fun m!1449521 () Bool)

(assert (=> b!1297967 m!1449521))

(declare-fun m!1449523 () Bool)

(assert (=> d!366358 m!1449523))

(assert (=> d!366358 m!1449227))

(assert (=> d!366358 m!1449099))

(declare-fun m!1449525 () Bool)

(assert (=> d!366358 m!1449525))

(assert (=> b!1297701 d!366358))

(declare-fun d!366360 () Bool)

(declare-fun lt!426936 () List!13050)

(assert (=> d!366360 (= (++!3300 lt!426845 lt!426936) lt!426847)))

(declare-fun e!832194 () List!13050)

(assert (=> d!366360 (= lt!426936 e!832194)))

(declare-fun c!213649 () Bool)

(assert (=> d!366360 (= c!213649 ((_ is Cons!12984) lt!426845))))

(assert (=> d!366360 (>= (size!10614 lt!426847) (size!10614 lt!426845))))

(assert (=> d!366360 (= (getSuffix!409 lt!426847 lt!426845) lt!426936)))

(declare-fun b!1297974 () Bool)

(assert (=> b!1297974 (= e!832194 (getSuffix!409 (tail!1856 lt!426847) (t!117473 lt!426845)))))

(declare-fun b!1297975 () Bool)

(assert (=> b!1297975 (= e!832194 lt!426847)))

(assert (= (and d!366360 c!213649) b!1297974))

(assert (= (and d!366360 (not c!213649)) b!1297975))

(declare-fun m!1449527 () Bool)

(assert (=> d!366360 m!1449527))

(declare-fun m!1449529 () Bool)

(assert (=> d!366360 m!1449529))

(assert (=> d!366360 m!1449517))

(declare-fun m!1449531 () Bool)

(assert (=> b!1297974 m!1449531))

(assert (=> b!1297974 m!1449531))

(declare-fun m!1449533 () Bool)

(assert (=> b!1297974 m!1449533))

(assert (=> b!1297701 d!366360))

(declare-fun d!366362 () Bool)

(declare-fun lt!426939 () List!13050)

(declare-fun dynLambda!5680 (Int List!13050) Bool)

(assert (=> d!366362 (dynLambda!5680 lambda!51023 lt!426939)))

(declare-fun choose!7970 (Int) List!13050)

(assert (=> d!366362 (= lt!426939 (choose!7970 lambda!51023))))

(assert (=> d!366362 (Exists!711 lambda!51023)))

(assert (=> d!366362 (= (pickWitness!16 lambda!51023) lt!426939)))

(declare-fun b_lambda!37171 () Bool)

(assert (=> (not b_lambda!37171) (not d!366362)))

(declare-fun bs!329035 () Bool)

(assert (= bs!329035 d!366362))

(declare-fun m!1449535 () Bool)

(assert (=> bs!329035 m!1449535))

(declare-fun m!1449537 () Bool)

(assert (=> bs!329035 m!1449537))

(assert (=> bs!329035 m!1449041))

(assert (=> b!1297701 d!366362))

(declare-fun d!366364 () Bool)

(declare-fun lt!426940 () Bool)

(assert (=> d!366364 (= lt!426940 (select (content!1837 lt!426845) lt!426848))))

(declare-fun e!832195 () Bool)

(assert (=> d!366364 (= lt!426940 e!832195)))

(declare-fun res!581317 () Bool)

(assert (=> d!366364 (=> (not res!581317) (not e!832195))))

(assert (=> d!366364 (= res!581317 ((_ is Cons!12984) lt!426845))))

(assert (=> d!366364 (= (contains!2175 lt!426845 lt!426848) lt!426940)))

(declare-fun b!1297976 () Bool)

(declare-fun e!832196 () Bool)

(assert (=> b!1297976 (= e!832195 e!832196)))

(declare-fun res!581316 () Bool)

(assert (=> b!1297976 (=> res!581316 e!832196)))

(assert (=> b!1297976 (= res!581316 (= (h!18385 lt!426845) lt!426848))))

(declare-fun b!1297977 () Bool)

(assert (=> b!1297977 (= e!832196 (contains!2175 (t!117473 lt!426845) lt!426848))))

(assert (= (and d!366364 res!581317) b!1297976))

(assert (= (and b!1297976 (not res!581316)) b!1297977))

(assert (=> d!366364 m!1449227))

(declare-fun m!1449539 () Bool)

(assert (=> d!366364 m!1449539))

(declare-fun m!1449541 () Bool)

(assert (=> b!1297977 m!1449541))

(assert (=> b!1297681 d!366364))

(declare-fun b!1297988 () Bool)

(declare-fun b_free!30795 () Bool)

(declare-fun b_next!31499 () Bool)

(assert (=> b!1297988 (= b_free!30795 (not b_next!31499))))

(declare-fun tp!378753 () Bool)

(declare-fun b_and!86551 () Bool)

(assert (=> b!1297988 (= tp!378753 b_and!86551)))

(declare-fun b_free!30797 () Bool)

(declare-fun b_next!31501 () Bool)

(assert (=> b!1297988 (= b_free!30797 (not b_next!31501))))

(declare-fun tb!69533 () Bool)

(declare-fun t!117509 () Bool)

(assert (=> (and b!1297988 (= (toChars!3305 (transformation!2239 (h!18387 (t!117475 rules!2550)))) (toChars!3305 (transformation!2239 (rule!3978 t2!34)))) t!117509) tb!69533))

(declare-fun result!84314 () Bool)

(assert (= result!84314 result!84288))

(assert (=> d!366244 t!117509))

(declare-fun tb!69535 () Bool)

(declare-fun t!117511 () Bool)

(assert (=> (and b!1297988 (= (toChars!3305 (transformation!2239 (h!18387 (t!117475 rules!2550)))) (toChars!3305 (transformation!2239 (rule!3978 t1!34)))) t!117511) tb!69535))

(declare-fun result!84316 () Bool)

(assert (= result!84316 result!84296))

(assert (=> b!1297846 t!117511))

(assert (=> b!1297855 t!117509))

(assert (=> d!366338 t!117511))

(declare-fun b_and!86553 () Bool)

(declare-fun tp!378750 () Bool)

(assert (=> b!1297988 (= tp!378750 (and (=> t!117509 result!84314) (=> t!117511 result!84316) b_and!86553))))

(declare-fun e!832206 () Bool)

(assert (=> b!1297988 (= e!832206 (and tp!378753 tp!378750))))

(declare-fun b!1297987 () Bool)

(declare-fun tp!378751 () Bool)

(declare-fun e!832207 () Bool)

(assert (=> b!1297987 (= e!832207 (and tp!378751 (inv!17410 (tag!2501 (h!18387 (t!117475 rules!2550)))) (inv!17413 (transformation!2239 (h!18387 (t!117475 rules!2550)))) e!832206))))

(declare-fun b!1297986 () Bool)

(declare-fun e!832205 () Bool)

(declare-fun tp!378752 () Bool)

(assert (=> b!1297986 (= e!832205 (and e!832207 tp!378752))))

(assert (=> b!1297682 (= tp!378692 e!832205)))

(assert (= b!1297987 b!1297988))

(assert (= b!1297986 b!1297987))

(assert (= (and b!1297682 ((_ is Cons!12986) (t!117475 rules!2550))) b!1297986))

(declare-fun m!1449543 () Bool)

(assert (=> b!1297987 m!1449543))

(declare-fun m!1449545 () Bool)

(assert (=> b!1297987 m!1449545))

(declare-fun b!1297993 () Bool)

(declare-fun e!832211 () Bool)

(declare-fun tp_is_empty!6587 () Bool)

(declare-fun tp!378756 () Bool)

(assert (=> b!1297993 (= e!832211 (and tp_is_empty!6587 tp!378756))))

(assert (=> b!1297693 (= tp!378689 e!832211)))

(assert (= (and b!1297693 ((_ is Cons!12984) (originalCharacters!3101 t1!34))) b!1297993))

(declare-fun e!832214 () Bool)

(assert (=> b!1297688 (= tp!378686 e!832214)))

(declare-fun b!1298006 () Bool)

(declare-fun tp!378770 () Bool)

(assert (=> b!1298006 (= e!832214 tp!378770)))

(declare-fun b!1298005 () Bool)

(declare-fun tp!378769 () Bool)

(declare-fun tp!378768 () Bool)

(assert (=> b!1298005 (= e!832214 (and tp!378769 tp!378768))))

(declare-fun b!1298007 () Bool)

(declare-fun tp!378771 () Bool)

(declare-fun tp!378767 () Bool)

(assert (=> b!1298007 (= e!832214 (and tp!378771 tp!378767))))

(declare-fun b!1298004 () Bool)

(assert (=> b!1298004 (= e!832214 tp_is_empty!6587)))

(assert (= (and b!1297688 ((_ is ElementMatch!3553) (regex!2239 (rule!3978 t1!34)))) b!1298004))

(assert (= (and b!1297688 ((_ is Concat!5883) (regex!2239 (rule!3978 t1!34)))) b!1298005))

(assert (= (and b!1297688 ((_ is Star!3553) (regex!2239 (rule!3978 t1!34)))) b!1298006))

(assert (= (and b!1297688 ((_ is Union!3553) (regex!2239 (rule!3978 t1!34)))) b!1298007))

(declare-fun e!832215 () Bool)

(assert (=> b!1297683 (= tp!378687 e!832215)))

(declare-fun b!1298010 () Bool)

(declare-fun tp!378775 () Bool)

(assert (=> b!1298010 (= e!832215 tp!378775)))

(declare-fun b!1298009 () Bool)

(declare-fun tp!378774 () Bool)

(declare-fun tp!378773 () Bool)

(assert (=> b!1298009 (= e!832215 (and tp!378774 tp!378773))))

(declare-fun b!1298011 () Bool)

(declare-fun tp!378776 () Bool)

(declare-fun tp!378772 () Bool)

(assert (=> b!1298011 (= e!832215 (and tp!378776 tp!378772))))

(declare-fun b!1298008 () Bool)

(assert (=> b!1298008 (= e!832215 tp_is_empty!6587)))

(assert (= (and b!1297683 ((_ is ElementMatch!3553) (regex!2239 (rule!3978 t2!34)))) b!1298008))

(assert (= (and b!1297683 ((_ is Concat!5883) (regex!2239 (rule!3978 t2!34)))) b!1298009))

(assert (= (and b!1297683 ((_ is Star!3553) (regex!2239 (rule!3978 t2!34)))) b!1298010))

(assert (= (and b!1297683 ((_ is Union!3553) (regex!2239 (rule!3978 t2!34)))) b!1298011))

(declare-fun b!1298012 () Bool)

(declare-fun e!832216 () Bool)

(declare-fun tp!378777 () Bool)

(assert (=> b!1298012 (= e!832216 (and tp_is_empty!6587 tp!378777))))

(assert (=> b!1297705 (= tp!378683 e!832216)))

(assert (= (and b!1297705 ((_ is Cons!12984) (originalCharacters!3101 t2!34))) b!1298012))

(declare-fun e!832217 () Bool)

(assert (=> b!1297696 (= tp!378681 e!832217)))

(declare-fun b!1298015 () Bool)

(declare-fun tp!378781 () Bool)

(assert (=> b!1298015 (= e!832217 tp!378781)))

(declare-fun b!1298014 () Bool)

(declare-fun tp!378780 () Bool)

(declare-fun tp!378779 () Bool)

(assert (=> b!1298014 (= e!832217 (and tp!378780 tp!378779))))

(declare-fun b!1298016 () Bool)

(declare-fun tp!378782 () Bool)

(declare-fun tp!378778 () Bool)

(assert (=> b!1298016 (= e!832217 (and tp!378782 tp!378778))))

(declare-fun b!1298013 () Bool)

(assert (=> b!1298013 (= e!832217 tp_is_empty!6587)))

(assert (= (and b!1297696 ((_ is ElementMatch!3553) (regex!2239 (h!18387 rules!2550)))) b!1298013))

(assert (= (and b!1297696 ((_ is Concat!5883) (regex!2239 (h!18387 rules!2550)))) b!1298014))

(assert (= (and b!1297696 ((_ is Star!3553) (regex!2239 (h!18387 rules!2550)))) b!1298015))

(assert (= (and b!1297696 ((_ is Union!3553) (regex!2239 (h!18387 rules!2550)))) b!1298016))

(declare-fun b_lambda!37173 () Bool)

(assert (= b_lambda!37147 (or (and b!1297686 b_free!30781 (= (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (toChars!3305 (transformation!2239 (rule!3978 t2!34))))) (and b!1297691 b_free!30785 (= (toChars!3305 (transformation!2239 (h!18387 rules!2550))) (toChars!3305 (transformation!2239 (rule!3978 t2!34))))) (and b!1297704 b_free!30789) (and b!1297988 b_free!30797 (= (toChars!3305 (transformation!2239 (h!18387 (t!117475 rules!2550)))) (toChars!3305 (transformation!2239 (rule!3978 t2!34))))) b_lambda!37173)))

(declare-fun b_lambda!37175 () Bool)

(assert (= b_lambda!37169 (or (and b!1297686 b_free!30781) (and b!1297691 b_free!30785 (= (toChars!3305 (transformation!2239 (h!18387 rules!2550))) (toChars!3305 (transformation!2239 (rule!3978 t1!34))))) (and b!1297704 b_free!30789 (= (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (toChars!3305 (transformation!2239 (rule!3978 t1!34))))) (and b!1297988 b_free!30797 (= (toChars!3305 (transformation!2239 (h!18387 (t!117475 rules!2550)))) (toChars!3305 (transformation!2239 (rule!3978 t1!34))))) b_lambda!37175)))

(declare-fun b_lambda!37177 () Bool)

(assert (= b_lambda!37151 (or (and b!1297686 b_free!30781 (= (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (toChars!3305 (transformation!2239 (rule!3978 t2!34))))) (and b!1297691 b_free!30785 (= (toChars!3305 (transformation!2239 (h!18387 rules!2550))) (toChars!3305 (transformation!2239 (rule!3978 t2!34))))) (and b!1297704 b_free!30789) (and b!1297988 b_free!30797 (= (toChars!3305 (transformation!2239 (h!18387 (t!117475 rules!2550)))) (toChars!3305 (transformation!2239 (rule!3978 t2!34))))) b_lambda!37177)))

(declare-fun b_lambda!37179 () Bool)

(assert (= b_lambda!37149 (or (and b!1297686 b_free!30781) (and b!1297691 b_free!30785 (= (toChars!3305 (transformation!2239 (h!18387 rules!2550))) (toChars!3305 (transformation!2239 (rule!3978 t1!34))))) (and b!1297704 b_free!30789 (= (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (toChars!3305 (transformation!2239 (rule!3978 t1!34))))) (and b!1297988 b_free!30797 (= (toChars!3305 (transformation!2239 (h!18387 (t!117475 rules!2550)))) (toChars!3305 (transformation!2239 (rule!3978 t1!34))))) b_lambda!37179)))

(declare-fun b_lambda!37181 () Bool)

(assert (= b_lambda!37171 (or b!1297692 b_lambda!37181)))

(declare-fun bs!329036 () Bool)

(declare-fun d!366366 () Bool)

(assert (= bs!329036 (and d!366366 b!1297692)))

(declare-fun res!581318 () Bool)

(declare-fun e!832218 () Bool)

(assert (=> bs!329036 (=> (not res!581318) (not e!832218))))

(declare-fun matchR!1555 (Regex!3553 List!13050) Bool)

(assert (=> bs!329036 (= res!581318 (matchR!1555 lt!426849 lt!426939))))

(assert (=> bs!329036 (= (dynLambda!5680 lambda!51023 lt!426939) e!832218)))

(declare-fun b!1298017 () Bool)

(declare-fun isPrefix!1058 (List!13050 List!13050) Bool)

(assert (=> b!1298017 (= e!832218 (isPrefix!1058 lt!426845 lt!426939))))

(assert (= (and bs!329036 res!581318) b!1298017))

(declare-fun m!1449547 () Bool)

(assert (=> bs!329036 m!1449547))

(declare-fun m!1449549 () Bool)

(assert (=> b!1298017 m!1449549))

(assert (=> d!366362 d!366366))

(check-sat (not b!1297826) (not d!366226) (not b!1297856) (not d!366296) (not b!1297928) (not d!366290) (not b_next!31485) (not d!366300) (not b!1297956) (not d!366340) (not b!1297829) (not tb!69523) (not b_lambda!37175) (not d!366342) (not b!1297946) (not b!1298007) (not b!1298005) (not d!366352) (not d!366364) (not b!1297948) (not b_next!31483) (not b!1297961) (not d!366354) b_and!86553 (not b!1297993) (not b!1297939) (not b!1297925) (not d!366338) (not b_next!31501) (not b!1297987) (not b!1297773) (not b_lambda!37173) (not b!1297962) (not b_lambda!37177) (not b!1297974) (not b!1298014) (not b!1297960) tp_is_empty!6587 (not b!1298009) (not b!1297977) (not b!1298012) b_and!86549 (not b!1297968) (not b_next!31489) (not d!366350) (not b!1298016) (not d!366244) (not b!1297951) (not b!1297761) (not d!366270) (not d!366258) (not b!1297938) (not b!1297846) (not b!1297957) (not b_next!31493) (not d!366362) (not b!1297927) (not b_next!31499) (not b!1297926) (not d!366336) (not d!366358) (not d!366292) (not d!366348) (not d!366224) (not b!1298017) (not b_lambda!37179) (not b!1297775) (not b_lambda!37181) (not b!1297771) b_and!86545 (not b!1297794) (not d!366344) (not d!366356) (not b!1297770) (not b!1297847) (not b!1297747) (not b!1297765) (not bs!329036) b_and!86487 (not b!1298015) (not b!1297949) (not b!1297967) b_and!86491 (not b!1297945) (not d!366334) (not b!1297965) (not b!1298011) (not d!366360) (not d!366240) b_and!86551 (not b!1297758) (not b!1297772) (not d!366252) (not b_next!31487) b_and!86495 (not d!366332) b_and!86547 (not b_next!31491) (not b!1297759) (not b!1298006) (not tb!69517) (not b!1298010) (not b!1297855) (not d!366260) (not b!1297986) (not b!1297852))
(check-sat (not b_next!31485) (not b_next!31483) b_and!86553 (not b_next!31501) b_and!86545 b_and!86487 b_and!86491 b_and!86551 b_and!86549 (not b_next!31489) (not b_next!31493) (not b_next!31499) (not b_next!31487) b_and!86495 b_and!86547 (not b_next!31491))
(get-model)

(declare-fun d!366380 () Bool)

(assert (=> d!366380 true))

(assert (=> d!366380 true))

(declare-fun res!581331 () Bool)

(assert (=> d!366380 (= (choose!7965 lambda!51023) res!581331)))

(assert (=> d!366224 d!366380))

(declare-fun d!366382 () Bool)

(declare-fun lostCauseFct!103 (Regex!3553) Bool)

(assert (=> d!366382 (= (lostCause!260 lt!426849) (lostCauseFct!103 lt!426849))))

(declare-fun bs!329040 () Bool)

(assert (= bs!329040 d!366382))

(declare-fun m!1449569 () Bool)

(assert (=> bs!329040 m!1449569))

(assert (=> b!1297945 d!366382))

(declare-fun d!366384 () Bool)

(declare-fun isBalanced!1253 (Conc!4265) Bool)

(assert (=> d!366384 (= (inv!17418 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (value!73444 t2!34))) (isBalanced!1253 (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (value!73444 t2!34)))))))

(declare-fun bs!329041 () Bool)

(assert (= bs!329041 d!366384))

(declare-fun m!1449571 () Bool)

(assert (=> bs!329041 m!1449571))

(assert (=> tb!69517 d!366384))

(declare-fun d!366386 () Bool)

(declare-fun c!213656 () Bool)

(assert (=> d!366386 (= c!213656 ((_ is Nil!12984) lt!426847))))

(declare-fun e!832231 () (InoxSet C!7396))

(assert (=> d!366386 (= (content!1837 lt!426847) e!832231)))

(declare-fun b!1298041 () Bool)

(assert (=> b!1298041 (= e!832231 ((as const (Array C!7396 Bool)) false))))

(declare-fun b!1298042 () Bool)

(assert (=> b!1298042 (= e!832231 ((_ map or) (store ((as const (Array C!7396 Bool)) false) (h!18385 lt!426847) true) (content!1837 (t!117473 lt!426847))))))

(assert (= (and d!366386 c!213656) b!1298041))

(assert (= (and d!366386 (not c!213656)) b!1298042))

(declare-fun m!1449575 () Bool)

(assert (=> b!1298042 m!1449575))

(declare-fun m!1449577 () Bool)

(assert (=> b!1298042 m!1449577))

(assert (=> d!366344 d!366386))

(declare-fun d!366390 () Bool)

(assert (=> d!366390 true))

(declare-fun lambda!51050 () Int)

(declare-fun order!7905 () Int)

(declare-fun order!7903 () Int)

(declare-fun dynLambda!5681 (Int Int) Int)

(declare-fun dynLambda!5682 (Int Int) Int)

(assert (=> d!366390 (< (dynLambda!5681 order!7903 (toValue!3446 (transformation!2239 (h!18387 rules!2550)))) (dynLambda!5682 order!7905 lambda!51050))))

(declare-fun Forall2!410 (Int) Bool)

(assert (=> d!366390 (= (equivClasses!811 (toChars!3305 (transformation!2239 (h!18387 rules!2550))) (toValue!3446 (transformation!2239 (h!18387 rules!2550)))) (Forall2!410 lambda!51050))))

(declare-fun bs!329045 () Bool)

(assert (= bs!329045 d!366390))

(declare-fun m!1449583 () Bool)

(assert (=> bs!329045 m!1449583))

(assert (=> b!1297829 d!366390))

(declare-fun d!366396 () Bool)

(declare-fun c!213659 () Bool)

(assert (=> d!366396 (= c!213659 ((_ is Nil!12984) lt!426845))))

(declare-fun e!832236 () (InoxSet C!7396))

(assert (=> d!366396 (= (content!1837 lt!426845) e!832236)))

(declare-fun b!1298051 () Bool)

(assert (=> b!1298051 (= e!832236 ((as const (Array C!7396 Bool)) false))))

(declare-fun b!1298052 () Bool)

(assert (=> b!1298052 (= e!832236 ((_ map or) (store ((as const (Array C!7396 Bool)) false) (h!18385 lt!426845) true) (content!1837 (t!117473 lt!426845))))))

(assert (= (and d!366396 c!213659) b!1298051))

(assert (= (and d!366396 (not c!213659)) b!1298052))

(declare-fun m!1449585 () Bool)

(assert (=> b!1298052 m!1449585))

(declare-fun m!1449587 () Bool)

(assert (=> b!1298052 m!1449587))

(assert (=> d!366364 d!366396))

(declare-fun b!1298066 () Bool)

(declare-fun e!832244 () Bool)

(assert (=> b!1298066 (= e!832244 (>= (size!10614 lt!426939) (size!10614 lt!426845)))))

(declare-fun b!1298063 () Bool)

(declare-fun e!832245 () Bool)

(declare-fun e!832246 () Bool)

(assert (=> b!1298063 (= e!832245 e!832246)))

(declare-fun res!581347 () Bool)

(assert (=> b!1298063 (=> (not res!581347) (not e!832246))))

(assert (=> b!1298063 (= res!581347 (not ((_ is Nil!12984) lt!426939)))))

(declare-fun d!366398 () Bool)

(assert (=> d!366398 e!832244))

(declare-fun res!581344 () Bool)

(assert (=> d!366398 (=> res!581344 e!832244)))

(declare-fun lt!426945 () Bool)

(assert (=> d!366398 (= res!581344 (not lt!426945))))

(assert (=> d!366398 (= lt!426945 e!832245)))

(declare-fun res!581346 () Bool)

(assert (=> d!366398 (=> res!581346 e!832245)))

(assert (=> d!366398 (= res!581346 ((_ is Nil!12984) lt!426845))))

(assert (=> d!366398 (= (isPrefix!1058 lt!426845 lt!426939) lt!426945)))

(declare-fun b!1298065 () Bool)

(assert (=> b!1298065 (= e!832246 (isPrefix!1058 (tail!1856 lt!426845) (tail!1856 lt!426939)))))

(declare-fun b!1298064 () Bool)

(declare-fun res!581345 () Bool)

(assert (=> b!1298064 (=> (not res!581345) (not e!832246))))

(assert (=> b!1298064 (= res!581345 (= (head!2228 lt!426845) (head!2228 lt!426939)))))

(assert (= (and d!366398 (not res!581346)) b!1298063))

(assert (= (and b!1298063 res!581347) b!1298064))

(assert (= (and b!1298064 res!581345) b!1298065))

(assert (= (and d!366398 (not res!581344)) b!1298066))

(declare-fun m!1449593 () Bool)

(assert (=> b!1298066 m!1449593))

(assert (=> b!1298066 m!1449517))

(assert (=> b!1298065 m!1449463))

(declare-fun m!1449595 () Bool)

(assert (=> b!1298065 m!1449595))

(assert (=> b!1298065 m!1449463))

(assert (=> b!1298065 m!1449595))

(declare-fun m!1449597 () Bool)

(assert (=> b!1298065 m!1449597))

(assert (=> b!1298064 m!1449459))

(declare-fun m!1449599 () Bool)

(assert (=> b!1298064 m!1449599))

(assert (=> b!1298017 d!366398))

(declare-fun d!366404 () Bool)

(declare-fun lt!426948 () C!7396)

(assert (=> d!366404 (contains!2175 (list!4861 lt!426850) lt!426948)))

(declare-fun e!832254 () C!7396)

(assert (=> d!366404 (= lt!426948 e!832254)))

(declare-fun c!213663 () Bool)

(assert (=> d!366404 (= c!213663 (= 0 0))))

(declare-fun e!832253 () Bool)

(assert (=> d!366404 e!832253))

(declare-fun res!581352 () Bool)

(assert (=> d!366404 (=> (not res!581352) (not e!832253))))

(assert (=> d!366404 (= res!581352 (<= 0 0))))

(assert (=> d!366404 (= (apply!2879 (list!4861 lt!426850) 0) lt!426948)))

(declare-fun b!1298075 () Bool)

(assert (=> b!1298075 (= e!832253 (< 0 (size!10614 (list!4861 lt!426850))))))

(declare-fun b!1298076 () Bool)

(assert (=> b!1298076 (= e!832254 (head!2228 (list!4861 lt!426850)))))

(declare-fun b!1298077 () Bool)

(assert (=> b!1298077 (= e!832254 (apply!2879 (tail!1856 (list!4861 lt!426850)) (- 0 1)))))

(assert (= (and d!366404 res!581352) b!1298075))

(assert (= (and d!366404 c!213663) b!1298076))

(assert (= (and d!366404 (not c!213663)) b!1298077))

(assert (=> d!366404 m!1449153))

(declare-fun m!1449603 () Bool)

(assert (=> d!366404 m!1449603))

(assert (=> b!1298075 m!1449153))

(assert (=> b!1298075 m!1449155))

(assert (=> b!1298076 m!1449153))

(declare-fun m!1449605 () Bool)

(assert (=> b!1298076 m!1449605))

(assert (=> b!1298077 m!1449153))

(declare-fun m!1449607 () Bool)

(assert (=> b!1298077 m!1449607))

(assert (=> b!1298077 m!1449607))

(declare-fun m!1449609 () Bool)

(assert (=> b!1298077 m!1449609))

(assert (=> d!366334 d!366404))

(declare-fun d!366408 () Bool)

(assert (=> d!366408 (= (list!4861 lt!426850) (list!4865 (c!213611 lt!426850)))))

(declare-fun bs!329050 () Bool)

(assert (= bs!329050 d!366408))

(declare-fun m!1449611 () Bool)

(assert (=> bs!329050 m!1449611))

(assert (=> d!366334 d!366408))

(declare-fun b!1298110 () Bool)

(declare-fun e!832277 () Bool)

(assert (=> b!1298110 (= e!832277 (< 0 (size!10615 (c!213611 lt!426850))))))

(declare-fun b!1298111 () Bool)

(declare-fun e!832278 () C!7396)

(declare-fun e!832279 () C!7396)

(assert (=> b!1298111 (= e!832278 e!832279)))

(declare-fun lt!426954 () Bool)

(declare-fun appendIndex!132 (List!13050 List!13050 Int) Bool)

(assert (=> b!1298111 (= lt!426954 (appendIndex!132 (list!4865 (left!11170 (c!213611 lt!426850))) (list!4865 (right!11500 (c!213611 lt!426850))) 0))))

(declare-fun c!213675 () Bool)

(assert (=> b!1298111 (= c!213675 (< 0 (size!10615 (left!11170 (c!213611 lt!426850)))))))

(declare-fun b!1298112 () Bool)

(declare-fun call!88992 () C!7396)

(assert (=> b!1298112 (= e!832279 call!88992)))

(declare-fun b!1298113 () Bool)

(declare-fun e!832280 () Int)

(assert (=> b!1298113 (= e!832280 (- 0 (size!10615 (left!11170 (c!213611 lt!426850)))))))

(declare-fun b!1298114 () Bool)

(assert (=> b!1298114 (= e!832280 0)))

(declare-fun b!1298115 () Bool)

(declare-fun apply!2882 (IArray!8535 Int) C!7396)

(assert (=> b!1298115 (= e!832278 (apply!2882 (xs!6980 (c!213611 lt!426850)) 0))))

(declare-fun b!1298116 () Bool)

(assert (=> b!1298116 (= e!832279 call!88992)))

(declare-fun bm!88987 () Bool)

(declare-fun c!213674 () Bool)

(assert (=> bm!88987 (= c!213674 c!213675)))

(assert (=> bm!88987 (= call!88992 (apply!2880 (ite c!213675 (left!11170 (c!213611 lt!426850)) (right!11500 (c!213611 lt!426850))) e!832280))))

(declare-fun d!366410 () Bool)

(declare-fun lt!426953 () C!7396)

(assert (=> d!366410 (= lt!426953 (apply!2879 (list!4865 (c!213611 lt!426850)) 0))))

(assert (=> d!366410 (= lt!426953 e!832278)))

(declare-fun c!213676 () Bool)

(assert (=> d!366410 (= c!213676 ((_ is Leaf!6581) (c!213611 lt!426850)))))

(assert (=> d!366410 e!832277))

(declare-fun res!581365 () Bool)

(assert (=> d!366410 (=> (not res!581365) (not e!832277))))

(assert (=> d!366410 (= res!581365 (<= 0 0))))

(assert (=> d!366410 (= (apply!2880 (c!213611 lt!426850) 0) lt!426953)))

(assert (= (and d!366410 res!581365) b!1298110))

(assert (= (and d!366410 c!213676) b!1298115))

(assert (= (and d!366410 (not c!213676)) b!1298111))

(assert (= (and b!1298111 c!213675) b!1298116))

(assert (= (and b!1298111 (not c!213675)) b!1298112))

(assert (= (or b!1298116 b!1298112) bm!88987))

(assert (= (and bm!88987 c!213674) b!1298114))

(assert (= (and bm!88987 (not c!213674)) b!1298113))

(assert (=> d!366410 m!1449611))

(assert (=> d!366410 m!1449611))

(declare-fun m!1449613 () Bool)

(assert (=> d!366410 m!1449613))

(assert (=> b!1298110 m!1449157))

(declare-fun m!1449615 () Bool)

(assert (=> bm!88987 m!1449615))

(declare-fun m!1449617 () Bool)

(assert (=> b!1298115 m!1449617))

(declare-fun m!1449619 () Bool)

(assert (=> b!1298111 m!1449619))

(declare-fun m!1449621 () Bool)

(assert (=> b!1298111 m!1449621))

(assert (=> b!1298111 m!1449619))

(assert (=> b!1298111 m!1449621))

(declare-fun m!1449623 () Bool)

(assert (=> b!1298111 m!1449623))

(declare-fun m!1449625 () Bool)

(assert (=> b!1298111 m!1449625))

(assert (=> b!1298113 m!1449625))

(assert (=> d!366334 d!366410))

(declare-fun d!366412 () Bool)

(declare-fun lt!426957 () Int)

(assert (=> d!366412 (>= lt!426957 0)))

(declare-fun e!832290 () Int)

(assert (=> d!366412 (= lt!426957 e!832290)))

(declare-fun c!213681 () Bool)

(assert (=> d!366412 (= c!213681 ((_ is Nil!12984) (list!4861 lt!426850)))))

(assert (=> d!366412 (= (size!10614 (list!4861 lt!426850)) lt!426957)))

(declare-fun b!1298130 () Bool)

(assert (=> b!1298130 (= e!832290 0)))

(declare-fun b!1298131 () Bool)

(assert (=> b!1298131 (= e!832290 (+ 1 (size!10614 (t!117473 (list!4861 lt!426850)))))))

(assert (= (and d!366412 c!213681) b!1298130))

(assert (= (and d!366412 (not c!213681)) b!1298131))

(declare-fun m!1449633 () Bool)

(assert (=> b!1298131 m!1449633))

(assert (=> d!366240 d!366412))

(assert (=> d!366240 d!366408))

(declare-fun d!366416 () Bool)

(declare-fun lt!426960 () Int)

(assert (=> d!366416 (= lt!426960 (size!10614 (list!4865 (c!213611 lt!426850))))))

(assert (=> d!366416 (= lt!426960 (ite ((_ is Empty!4265) (c!213611 lt!426850)) 0 (ite ((_ is Leaf!6581) (c!213611 lt!426850)) (csize!8761 (c!213611 lt!426850)) (csize!8760 (c!213611 lt!426850)))))))

(assert (=> d!366416 (= (size!10615 (c!213611 lt!426850)) lt!426960)))

(declare-fun bs!329052 () Bool)

(assert (= bs!329052 d!366416))

(assert (=> bs!329052 m!1449611))

(assert (=> bs!329052 m!1449611))

(declare-fun m!1449637 () Bool)

(assert (=> bs!329052 m!1449637))

(assert (=> d!366240 d!366416))

(declare-fun d!366422 () Bool)

(declare-fun charsToBigInt!0 (List!13051 Int) Int)

(assert (=> d!366422 (= (inv!15 (value!73444 t2!34)) (= (charsToBigInt!0 (text!16752 (value!73444 t2!34)) 0) (value!73439 (value!73444 t2!34))))))

(declare-fun bs!329053 () Bool)

(assert (= bs!329053 d!366422))

(declare-fun m!1449641 () Bool)

(assert (=> bs!329053 m!1449641))

(assert (=> b!1297772 d!366422))

(declare-fun b!1298140 () Bool)

(declare-fun res!581371 () Bool)

(declare-fun e!832294 () Bool)

(assert (=> b!1298140 (=> (not res!581371) (not e!832294))))

(declare-fun lt!426964 () List!13050)

(assert (=> b!1298140 (= res!581371 (= (size!10614 lt!426964) (+ (size!10614 (t!117473 lt!426846)) (size!10614 (Cons!12984 lt!426848 Nil!12984)))))))

(declare-fun b!1298141 () Bool)

(assert (=> b!1298141 (= e!832294 (or (not (= (Cons!12984 lt!426848 Nil!12984) Nil!12984)) (= lt!426964 (t!117473 lt!426846))))))

(declare-fun b!1298138 () Bool)

(declare-fun e!832295 () List!13050)

(assert (=> b!1298138 (= e!832295 (Cons!12984 lt!426848 Nil!12984))))

(declare-fun b!1298139 () Bool)

(assert (=> b!1298139 (= e!832295 (Cons!12984 (h!18385 (t!117473 lt!426846)) (++!3300 (t!117473 (t!117473 lt!426846)) (Cons!12984 lt!426848 Nil!12984))))))

(declare-fun d!366426 () Bool)

(assert (=> d!366426 e!832294))

(declare-fun res!581372 () Bool)

(assert (=> d!366426 (=> (not res!581372) (not e!832294))))

(assert (=> d!366426 (= res!581372 (= (content!1837 lt!426964) ((_ map or) (content!1837 (t!117473 lt!426846)) (content!1837 (Cons!12984 lt!426848 Nil!12984)))))))

(assert (=> d!366426 (= lt!426964 e!832295)))

(declare-fun c!213685 () Bool)

(assert (=> d!366426 (= c!213685 ((_ is Nil!12984) (t!117473 lt!426846)))))

(assert (=> d!366426 (= (++!3300 (t!117473 lt!426846) (Cons!12984 lt!426848 Nil!12984)) lt!426964)))

(assert (= (and d!366426 c!213685) b!1298138))

(assert (= (and d!366426 (not c!213685)) b!1298139))

(assert (= (and d!366426 res!581372) b!1298140))

(assert (= (and b!1298140 res!581371) b!1298141))

(declare-fun m!1449645 () Bool)

(assert (=> b!1298140 m!1449645))

(declare-fun m!1449647 () Bool)

(assert (=> b!1298140 m!1449647))

(assert (=> b!1298140 m!1449443))

(declare-fun m!1449649 () Bool)

(assert (=> b!1298139 m!1449649))

(declare-fun m!1449651 () Bool)

(assert (=> d!366426 m!1449651))

(declare-fun m!1449653 () Bool)

(assert (=> d!366426 m!1449653))

(assert (=> d!366426 m!1449451))

(assert (=> b!1297938 d!366426))

(declare-fun b!1298144 () Bool)

(declare-fun res!581373 () Bool)

(declare-fun e!832296 () Bool)

(assert (=> b!1298144 (=> (not res!581373) (not e!832296))))

(declare-fun lt!426965 () List!13050)

(assert (=> b!1298144 (= res!581373 (= (size!10614 lt!426965) (+ (size!10614 lt!426845) (size!10614 lt!426936))))))

(declare-fun b!1298145 () Bool)

(assert (=> b!1298145 (= e!832296 (or (not (= lt!426936 Nil!12984)) (= lt!426965 lt!426845)))))

(declare-fun b!1298142 () Bool)

(declare-fun e!832297 () List!13050)

(assert (=> b!1298142 (= e!832297 lt!426936)))

(declare-fun b!1298143 () Bool)

(assert (=> b!1298143 (= e!832297 (Cons!12984 (h!18385 lt!426845) (++!3300 (t!117473 lt!426845) lt!426936)))))

(declare-fun d!366430 () Bool)

(assert (=> d!366430 e!832296))

(declare-fun res!581374 () Bool)

(assert (=> d!366430 (=> (not res!581374) (not e!832296))))

(assert (=> d!366430 (= res!581374 (= (content!1837 lt!426965) ((_ map or) (content!1837 lt!426845) (content!1837 lt!426936))))))

(assert (=> d!366430 (= lt!426965 e!832297)))

(declare-fun c!213686 () Bool)

(assert (=> d!366430 (= c!213686 ((_ is Nil!12984) lt!426845))))

(assert (=> d!366430 (= (++!3300 lt!426845 lt!426936) lt!426965)))

(assert (= (and d!366430 c!213686) b!1298142))

(assert (= (and d!366430 (not c!213686)) b!1298143))

(assert (= (and d!366430 res!581374) b!1298144))

(assert (= (and b!1298144 res!581373) b!1298145))

(declare-fun m!1449655 () Bool)

(assert (=> b!1298144 m!1449655))

(assert (=> b!1298144 m!1449517))

(declare-fun m!1449657 () Bool)

(assert (=> b!1298144 m!1449657))

(declare-fun m!1449659 () Bool)

(assert (=> b!1298143 m!1449659))

(declare-fun m!1449661 () Bool)

(assert (=> d!366430 m!1449661))

(assert (=> d!366430 m!1449227))

(declare-fun m!1449663 () Bool)

(assert (=> d!366430 m!1449663))

(assert (=> d!366360 d!366430))

(declare-fun d!366432 () Bool)

(declare-fun lt!426966 () Int)

(assert (=> d!366432 (>= lt!426966 0)))

(declare-fun e!832298 () Int)

(assert (=> d!366432 (= lt!426966 e!832298)))

(declare-fun c!213687 () Bool)

(assert (=> d!366432 (= c!213687 ((_ is Nil!12984) lt!426847))))

(assert (=> d!366432 (= (size!10614 lt!426847) lt!426966)))

(declare-fun b!1298146 () Bool)

(assert (=> b!1298146 (= e!832298 0)))

(declare-fun b!1298147 () Bool)

(assert (=> b!1298147 (= e!832298 (+ 1 (size!10614 (t!117473 lt!426847))))))

(assert (= (and d!366432 c!213687) b!1298146))

(assert (= (and d!366432 (not c!213687)) b!1298147))

(declare-fun m!1449665 () Bool)

(assert (=> b!1298147 m!1449665))

(assert (=> d!366360 d!366432))

(declare-fun d!366434 () Bool)

(declare-fun lt!426967 () Int)

(assert (=> d!366434 (>= lt!426967 0)))

(declare-fun e!832299 () Int)

(assert (=> d!366434 (= lt!426967 e!832299)))

(declare-fun c!213688 () Bool)

(assert (=> d!366434 (= c!213688 ((_ is Nil!12984) lt!426845))))

(assert (=> d!366434 (= (size!10614 lt!426845) lt!426967)))

(declare-fun b!1298148 () Bool)

(assert (=> b!1298148 (= e!832299 0)))

(declare-fun b!1298149 () Bool)

(assert (=> b!1298149 (= e!832299 (+ 1 (size!10614 (t!117473 lt!426845))))))

(assert (= (and d!366434 c!213688) b!1298148))

(assert (= (and d!366434 (not c!213688)) b!1298149))

(declare-fun m!1449667 () Bool)

(assert (=> b!1298149 m!1449667))

(assert (=> d!366360 d!366434))

(declare-fun d!366436 () Bool)

(assert (=> d!366436 (= (isEmpty!7716 lt!426845) ((_ is Nil!12984) lt!426845))))

(assert (=> d!366340 d!366436))

(declare-fun d!366438 () Bool)

(declare-fun res!581375 () Bool)

(declare-fun e!832300 () Bool)

(assert (=> d!366438 (=> res!581375 e!832300)))

(assert (=> d!366438 (= res!581375 (not ((_ is Cons!12986) (t!117475 rules!2550))))))

(assert (=> d!366438 (= (sepAndNonSepRulesDisjointChars!612 rules!2550 (t!117475 rules!2550)) e!832300)))

(declare-fun b!1298150 () Bool)

(declare-fun e!832301 () Bool)

(assert (=> b!1298150 (= e!832300 e!832301)))

(declare-fun res!581376 () Bool)

(assert (=> b!1298150 (=> (not res!581376) (not e!832301))))

(assert (=> b!1298150 (= res!581376 (ruleDisjointCharsFromAllFromOtherType!295 (h!18387 (t!117475 rules!2550)) rules!2550))))

(declare-fun b!1298151 () Bool)

(assert (=> b!1298151 (= e!832301 (sepAndNonSepRulesDisjointChars!612 rules!2550 (t!117475 (t!117475 rules!2550))))))

(assert (= (and d!366438 (not res!581375)) b!1298150))

(assert (= (and b!1298150 res!581376) b!1298151))

(declare-fun m!1449669 () Bool)

(assert (=> b!1298150 m!1449669))

(declare-fun m!1449671 () Bool)

(assert (=> b!1298151 m!1449671))

(assert (=> b!1297771 d!366438))

(assert (=> d!366260 d!366396))

(declare-fun d!366440 () Bool)

(assert (=> d!366440 (= (isEmpty!7716 (originalCharacters!3101 t1!34)) ((_ is Nil!12984) (originalCharacters!3101 t1!34)))))

(assert (=> d!366292 d!366440))

(declare-fun d!366442 () Bool)

(declare-fun res!581379 () List!13050)

(assert (=> d!366442 (dynLambda!5680 lambda!51023 res!581379)))

(declare-fun e!832304 () Bool)

(assert (=> d!366442 e!832304))

(assert (=> d!366442 (= (choose!7970 lambda!51023) res!581379)))

(declare-fun b!1298154 () Bool)

(declare-fun tp!378785 () Bool)

(assert (=> b!1298154 (= e!832304 (and tp_is_empty!6587 tp!378785))))

(assert (= (and d!366442 ((_ is Cons!12984) res!581379)) b!1298154))

(declare-fun b_lambda!37183 () Bool)

(assert (=> (not b_lambda!37183) (not d!366442)))

(declare-fun m!1449673 () Bool)

(assert (=> d!366442 m!1449673))

(assert (=> d!366362 d!366442))

(assert (=> d!366362 d!366224))

(declare-fun d!366444 () Bool)

(declare-fun lt!426968 () Int)

(assert (=> d!366444 (>= lt!426968 0)))

(declare-fun e!832305 () Int)

(assert (=> d!366444 (= lt!426968 e!832305)))

(declare-fun c!213689 () Bool)

(assert (=> d!366444 (= c!213689 ((_ is Nil!12984) lt!426933))))

(assert (=> d!366444 (= (size!10614 lt!426933) lt!426968)))

(declare-fun b!1298155 () Bool)

(assert (=> b!1298155 (= e!832305 0)))

(declare-fun b!1298156 () Bool)

(assert (=> b!1298156 (= e!832305 (+ 1 (size!10614 (t!117473 lt!426933))))))

(assert (= (and d!366444 c!213689) b!1298155))

(assert (= (and d!366444 (not c!213689)) b!1298156))

(declare-fun m!1449675 () Bool)

(assert (=> b!1298156 m!1449675))

(assert (=> b!1297968 d!366444))

(assert (=> b!1297968 d!366434))

(declare-fun d!366446 () Bool)

(declare-fun lt!426969 () Int)

(assert (=> d!366446 (>= lt!426969 0)))

(declare-fun e!832306 () Int)

(assert (=> d!366446 (= lt!426969 e!832306)))

(declare-fun c!213690 () Bool)

(assert (=> d!366446 (= c!213690 ((_ is Nil!12984) (getSuffix!409 lt!426847 lt!426845)))))

(assert (=> d!366446 (= (size!10614 (getSuffix!409 lt!426847 lt!426845)) lt!426969)))

(declare-fun b!1298157 () Bool)

(assert (=> b!1298157 (= e!832306 0)))

(declare-fun b!1298158 () Bool)

(assert (=> b!1298158 (= e!832306 (+ 1 (size!10614 (t!117473 (getSuffix!409 lt!426847 lt!426845)))))))

(assert (= (and d!366446 c!213690) b!1298157))

(assert (= (and d!366446 (not c!213690)) b!1298158))

(declare-fun m!1449677 () Bool)

(assert (=> b!1298158 m!1449677))

(assert (=> b!1297968 d!366446))

(declare-fun d!366448 () Bool)

(declare-fun list!4866 (Conc!4267) List!13056)

(assert (=> d!366448 (= (list!4864 (_1!7237 (lex!791 thiss!19762 rules!2550 (print!728 thiss!19762 (singletonSeq!822 t2!34))))) (list!4866 (c!213650 (_1!7237 (lex!791 thiss!19762 rules!2550 (print!728 thiss!19762 (singletonSeq!822 t2!34)))))))))

(declare-fun bs!329055 () Bool)

(assert (= bs!329055 d!366448))

(declare-fun m!1449679 () Bool)

(assert (=> bs!329055 m!1449679))

(assert (=> d!366354 d!366448))

(declare-fun d!366450 () Bool)

(declare-fun lt!426972 () Int)

(declare-fun size!10618 (List!13056) Int)

(assert (=> d!366450 (= lt!426972 (size!10618 (list!4864 (_1!7237 lt!426931))))))

(declare-fun size!10619 (Conc!4267) Int)

(assert (=> d!366450 (= lt!426972 (size!10619 (c!213650 (_1!7237 lt!426931))))))

(assert (=> d!366450 (= (size!10617 (_1!7237 lt!426931)) lt!426972)))

(declare-fun bs!329056 () Bool)

(assert (= bs!329056 d!366450))

(declare-fun m!1449681 () Bool)

(assert (=> bs!329056 m!1449681))

(assert (=> bs!329056 m!1449681))

(declare-fun m!1449683 () Bool)

(assert (=> bs!329056 m!1449683))

(declare-fun m!1449685 () Bool)

(assert (=> bs!329056 m!1449685))

(assert (=> d!366354 d!366450))

(declare-fun d!366452 () Bool)

(declare-fun lt!426978 () BalanceConc!8470)

(declare-fun printList!545 (LexerInterface!1934 List!13056) List!13050)

(assert (=> d!366452 (= (list!4861 lt!426978) (printList!545 thiss!19762 (list!4864 (singletonSeq!822 t2!34))))))

(declare-fun printTailRec!527 (LexerInterface!1934 BalanceConc!8474 Int BalanceConc!8470) BalanceConc!8470)

(assert (=> d!366452 (= lt!426978 (printTailRec!527 thiss!19762 (singletonSeq!822 t2!34) 0 (BalanceConc!8471 Empty!4265)))))

(assert (=> d!366452 (= (print!728 thiss!19762 (singletonSeq!822 t2!34)) lt!426978)))

(declare-fun bs!329057 () Bool)

(assert (= bs!329057 d!366452))

(declare-fun m!1449709 () Bool)

(assert (=> bs!329057 m!1449709))

(assert (=> bs!329057 m!1449493))

(assert (=> bs!329057 m!1449495))

(assert (=> bs!329057 m!1449495))

(declare-fun m!1449711 () Bool)

(assert (=> bs!329057 m!1449711))

(assert (=> bs!329057 m!1449493))

(declare-fun m!1449713 () Bool)

(assert (=> bs!329057 m!1449713))

(assert (=> d!366354 d!366452))

(declare-fun d!366456 () Bool)

(declare-fun e!832312 () Bool)

(assert (=> d!366456 e!832312))

(declare-fun res!581394 () Bool)

(assert (=> d!366456 (=> (not res!581394) (not e!832312))))

(declare-fun lt!426981 () BalanceConc!8474)

(assert (=> d!366456 (= res!581394 (= (list!4864 lt!426981) (Cons!12990 t2!34 Nil!12990)))))

(declare-fun singleton!360 (Token!4140) BalanceConc!8474)

(assert (=> d!366456 (= lt!426981 (singleton!360 t2!34))))

(assert (=> d!366456 (= (singletonSeq!822 t2!34) lt!426981)))

(declare-fun b!1298173 () Bool)

(declare-fun isBalanced!1255 (Conc!4267) Bool)

(assert (=> b!1298173 (= e!832312 (isBalanced!1255 (c!213650 lt!426981)))))

(assert (= (and d!366456 res!581394) b!1298173))

(declare-fun m!1449715 () Bool)

(assert (=> d!366456 m!1449715))

(declare-fun m!1449717 () Bool)

(assert (=> d!366456 m!1449717))

(declare-fun m!1449719 () Bool)

(assert (=> b!1298173 m!1449719))

(assert (=> d!366354 d!366456))

(assert (=> d!366354 d!366282))

(declare-fun b!1298196 () Bool)

(declare-fun e!832332 () Bool)

(declare-fun lt!427022 () tuple2!12702)

(declare-fun isEmpty!7718 (BalanceConc!8474) Bool)

(assert (=> b!1298196 (= e!832332 (not (isEmpty!7718 (_1!7237 lt!427022))))))

(declare-fun b!1298197 () Bool)

(declare-fun e!832331 () Bool)

(assert (=> b!1298197 (= e!832331 (= (_2!7237 lt!427022) (print!728 thiss!19762 (singletonSeq!822 t2!34))))))

(declare-fun b!1298198 () Bool)

(declare-fun e!832333 () Bool)

(declare-datatypes ((tuple2!12704 0))(
  ( (tuple2!12705 (_1!7238 List!13056) (_2!7238 List!13050)) )
))
(declare-fun lexList!501 (LexerInterface!1934 List!13052 List!13050) tuple2!12704)

(assert (=> b!1298198 (= e!832333 (= (list!4861 (_2!7237 lt!427022)) (_2!7238 (lexList!501 thiss!19762 rules!2550 (list!4861 (print!728 thiss!19762 (singletonSeq!822 t2!34)))))))))

(declare-fun b!1298199 () Bool)

(declare-fun res!581415 () Bool)

(assert (=> b!1298199 (=> (not res!581415) (not e!832333))))

(assert (=> b!1298199 (= res!581415 (= (list!4864 (_1!7237 lt!427022)) (_1!7238 (lexList!501 thiss!19762 rules!2550 (list!4861 (print!728 thiss!19762 (singletonSeq!822 t2!34)))))))))

(declare-fun b!1298200 () Bool)

(assert (=> b!1298200 (= e!832331 e!832332)))

(declare-fun res!581413 () Bool)

(assert (=> b!1298200 (= res!581413 (< (size!10611 (_2!7237 lt!427022)) (size!10611 (print!728 thiss!19762 (singletonSeq!822 t2!34)))))))

(assert (=> b!1298200 (=> (not res!581413) (not e!832332))))

(declare-fun d!366458 () Bool)

(assert (=> d!366458 e!832333))

(declare-fun res!581414 () Bool)

(assert (=> d!366458 (=> (not res!581414) (not e!832333))))

(assert (=> d!366458 (= res!581414 e!832331)))

(declare-fun c!213697 () Bool)

(assert (=> d!366458 (= c!213697 (> (size!10617 (_1!7237 lt!427022)) 0))))

(declare-fun lexTailRecV2!350 (LexerInterface!1934 List!13052 BalanceConc!8470 BalanceConc!8470 BalanceConc!8470 BalanceConc!8474) tuple2!12702)

(assert (=> d!366458 (= lt!427022 (lexTailRecV2!350 thiss!19762 rules!2550 (print!728 thiss!19762 (singletonSeq!822 t2!34)) (BalanceConc!8471 Empty!4265) (print!728 thiss!19762 (singletonSeq!822 t2!34)) (BalanceConc!8475 Empty!4267)))))

(assert (=> d!366458 (= (lex!791 thiss!19762 rules!2550 (print!728 thiss!19762 (singletonSeq!822 t2!34))) lt!427022)))

(assert (= (and d!366458 c!213697) b!1298200))

(assert (= (and d!366458 (not c!213697)) b!1298197))

(assert (= (and b!1298200 res!581413) b!1298196))

(assert (= (and d!366458 res!581414) b!1298199))

(assert (= (and b!1298199 res!581415) b!1298198))

(declare-fun m!1449779 () Bool)

(assert (=> b!1298196 m!1449779))

(declare-fun m!1449781 () Bool)

(assert (=> d!366458 m!1449781))

(assert (=> d!366458 m!1449497))

(assert (=> d!366458 m!1449497))

(declare-fun m!1449783 () Bool)

(assert (=> d!366458 m!1449783))

(declare-fun m!1449785 () Bool)

(assert (=> b!1298199 m!1449785))

(assert (=> b!1298199 m!1449497))

(declare-fun m!1449787 () Bool)

(assert (=> b!1298199 m!1449787))

(assert (=> b!1298199 m!1449787))

(declare-fun m!1449789 () Bool)

(assert (=> b!1298199 m!1449789))

(declare-fun m!1449791 () Bool)

(assert (=> b!1298198 m!1449791))

(assert (=> b!1298198 m!1449497))

(assert (=> b!1298198 m!1449787))

(assert (=> b!1298198 m!1449787))

(assert (=> b!1298198 m!1449789))

(declare-fun m!1449793 () Bool)

(assert (=> b!1298200 m!1449793))

(assert (=> b!1298200 m!1449497))

(declare-fun m!1449795 () Bool)

(assert (=> b!1298200 m!1449795))

(assert (=> d!366354 d!366458))

(declare-fun d!366480 () Bool)

(assert (=> d!366480 (= (list!4864 (singletonSeq!822 t2!34)) (list!4866 (c!213650 (singletonSeq!822 t2!34))))))

(declare-fun bs!329065 () Bool)

(assert (= bs!329065 d!366480))

(declare-fun m!1449797 () Bool)

(assert (=> bs!329065 m!1449797))

(assert (=> d!366354 d!366480))

(assert (=> b!1297928 d!366240))

(declare-fun d!366482 () Bool)

(declare-fun lt!427023 () Bool)

(assert (=> d!366482 (= lt!427023 (select (content!1837 (t!117473 lt!426847)) lt!426848))))

(declare-fun e!832334 () Bool)

(assert (=> d!366482 (= lt!427023 e!832334)))

(declare-fun res!581417 () Bool)

(assert (=> d!366482 (=> (not res!581417) (not e!832334))))

(assert (=> d!366482 (= res!581417 ((_ is Cons!12984) (t!117473 lt!426847)))))

(assert (=> d!366482 (= (contains!2175 (t!117473 lt!426847) lt!426848) lt!427023)))

(declare-fun b!1298201 () Bool)

(declare-fun e!832335 () Bool)

(assert (=> b!1298201 (= e!832334 e!832335)))

(declare-fun res!581416 () Bool)

(assert (=> b!1298201 (=> res!581416 e!832335)))

(assert (=> b!1298201 (= res!581416 (= (h!18385 (t!117473 lt!426847)) lt!426848))))

(declare-fun b!1298202 () Bool)

(assert (=> b!1298202 (= e!832335 (contains!2175 (t!117473 (t!117473 lt!426847)) lt!426848))))

(assert (= (and d!366482 res!581417) b!1298201))

(assert (= (and b!1298201 (not res!581416)) b!1298202))

(assert (=> d!366482 m!1449577))

(declare-fun m!1449799 () Bool)

(assert (=> d!366482 m!1449799))

(declare-fun m!1449801 () Bool)

(assert (=> b!1298202 m!1449801))

(assert (=> b!1297951 d!366482))

(declare-fun d!366484 () Bool)

(declare-fun lt!427026 () Token!4140)

(declare-fun apply!2883 (List!13056 Int) Token!4140)

(assert (=> d!366484 (= lt!427026 (apply!2883 (list!4864 (_1!7237 lt!426916)) 0))))

(declare-fun apply!2884 (Conc!4267 Int) Token!4140)

(assert (=> d!366484 (= lt!427026 (apply!2884 (c!213650 (_1!7237 lt!426916)) 0))))

(declare-fun e!832338 () Bool)

(assert (=> d!366484 e!832338))

(declare-fun res!581420 () Bool)

(assert (=> d!366484 (=> (not res!581420) (not e!832338))))

(assert (=> d!366484 (= res!581420 (<= 0 0))))

(assert (=> d!366484 (= (apply!2881 (_1!7237 lt!426916) 0) lt!427026)))

(declare-fun b!1298205 () Bool)

(assert (=> b!1298205 (= e!832338 (< 0 (size!10617 (_1!7237 lt!426916))))))

(assert (= (and d!366484 res!581420) b!1298205))

(declare-fun m!1449803 () Bool)

(assert (=> d!366484 m!1449803))

(assert (=> d!366484 m!1449803))

(declare-fun m!1449805 () Bool)

(assert (=> d!366484 m!1449805))

(declare-fun m!1449807 () Bool)

(assert (=> d!366484 m!1449807))

(assert (=> b!1298205 m!1449423))

(assert (=> b!1297925 d!366484))

(declare-fun d!366486 () Bool)

(declare-fun lt!427027 () Token!4140)

(assert (=> d!366486 (= lt!427027 (apply!2883 (list!4864 (_1!7237 lt!426931)) 0))))

(assert (=> d!366486 (= lt!427027 (apply!2884 (c!213650 (_1!7237 lt!426931)) 0))))

(declare-fun e!832339 () Bool)

(assert (=> d!366486 e!832339))

(declare-fun res!581421 () Bool)

(assert (=> d!366486 (=> (not res!581421) (not e!832339))))

(assert (=> d!366486 (= res!581421 (<= 0 0))))

(assert (=> d!366486 (= (apply!2881 (_1!7237 lt!426931) 0) lt!427027)))

(declare-fun b!1298206 () Bool)

(assert (=> b!1298206 (= e!832339 (< 0 (size!10617 (_1!7237 lt!426931))))))

(assert (= (and d!366486 res!581421) b!1298206))

(assert (=> d!366486 m!1449681))

(assert (=> d!366486 m!1449681))

(declare-fun m!1449809 () Bool)

(assert (=> d!366486 m!1449809))

(declare-fun m!1449811 () Bool)

(assert (=> d!366486 m!1449811))

(assert (=> b!1298206 m!1449501))

(assert (=> b!1297960 d!366486))

(declare-fun b!1298215 () Bool)

(declare-fun res!581430 () Bool)

(declare-fun e!832342 () Bool)

(assert (=> b!1298215 (=> (not res!581430) (not e!832342))))

(declare-fun ++!3304 (Conc!4265 Conc!4265) Conc!4265)

(assert (=> b!1298215 (= res!581430 (isBalanced!1253 (++!3304 (c!213611 (charsOf!1211 t1!34)) (c!213611 (singletonSeq!820 (apply!2875 (charsOf!1211 t2!34) 0))))))))

(declare-fun b!1298217 () Bool)

(declare-fun res!581431 () Bool)

(assert (=> b!1298217 (=> (not res!581431) (not e!832342))))

(declare-fun height!613 (Conc!4265) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1298217 (= res!581431 (>= (height!613 (++!3304 (c!213611 (charsOf!1211 t1!34)) (c!213611 (singletonSeq!820 (apply!2875 (charsOf!1211 t2!34) 0))))) (max!0 (height!613 (c!213611 (charsOf!1211 t1!34))) (height!613 (c!213611 (singletonSeq!820 (apply!2875 (charsOf!1211 t2!34) 0)))))))))

(declare-fun b!1298216 () Bool)

(declare-fun res!581432 () Bool)

(assert (=> b!1298216 (=> (not res!581432) (not e!832342))))

(assert (=> b!1298216 (= res!581432 (<= (height!613 (++!3304 (c!213611 (charsOf!1211 t1!34)) (c!213611 (singletonSeq!820 (apply!2875 (charsOf!1211 t2!34) 0))))) (+ (max!0 (height!613 (c!213611 (charsOf!1211 t1!34))) (height!613 (c!213611 (singletonSeq!820 (apply!2875 (charsOf!1211 t2!34) 0))))) 1)))))

(declare-fun b!1298218 () Bool)

(declare-fun lt!427030 () BalanceConc!8470)

(assert (=> b!1298218 (= e!832342 (= (list!4861 lt!427030) (++!3300 (list!4861 (charsOf!1211 t1!34)) (list!4861 (singletonSeq!820 (apply!2875 (charsOf!1211 t2!34) 0))))))))

(declare-fun d!366488 () Bool)

(assert (=> d!366488 e!832342))

(declare-fun res!581433 () Bool)

(assert (=> d!366488 (=> (not res!581433) (not e!832342))))

(declare-fun appendAssocInst!251 (Conc!4265 Conc!4265) Bool)

(assert (=> d!366488 (= res!581433 (appendAssocInst!251 (c!213611 (charsOf!1211 t1!34)) (c!213611 (singletonSeq!820 (apply!2875 (charsOf!1211 t2!34) 0)))))))

(assert (=> d!366488 (= lt!427030 (BalanceConc!8471 (++!3304 (c!213611 (charsOf!1211 t1!34)) (c!213611 (singletonSeq!820 (apply!2875 (charsOf!1211 t2!34) 0))))))))

(assert (=> d!366488 (= (++!3301 (charsOf!1211 t1!34) (singletonSeq!820 (apply!2875 (charsOf!1211 t2!34) 0))) lt!427030)))

(assert (= (and d!366488 res!581433) b!1298215))

(assert (= (and b!1298215 res!581430) b!1298216))

(assert (= (and b!1298216 res!581432) b!1298217))

(assert (= (and b!1298217 res!581431) b!1298218))

(declare-fun m!1449813 () Bool)

(assert (=> d!366488 m!1449813))

(declare-fun m!1449815 () Bool)

(assert (=> d!366488 m!1449815))

(assert (=> b!1298215 m!1449815))

(assert (=> b!1298215 m!1449815))

(declare-fun m!1449817 () Bool)

(assert (=> b!1298215 m!1449817))

(assert (=> b!1298216 m!1449815))

(declare-fun m!1449819 () Bool)

(assert (=> b!1298216 m!1449819))

(declare-fun m!1449821 () Bool)

(assert (=> b!1298216 m!1449821))

(declare-fun m!1449823 () Bool)

(assert (=> b!1298216 m!1449823))

(declare-fun m!1449825 () Bool)

(assert (=> b!1298216 m!1449825))

(assert (=> b!1298216 m!1449823))

(assert (=> b!1298216 m!1449815))

(assert (=> b!1298216 m!1449821))

(declare-fun m!1449827 () Bool)

(assert (=> b!1298218 m!1449827))

(assert (=> b!1298218 m!1449081))

(declare-fun m!1449829 () Bool)

(assert (=> b!1298218 m!1449829))

(assert (=> b!1298218 m!1449195))

(declare-fun m!1449831 () Bool)

(assert (=> b!1298218 m!1449831))

(assert (=> b!1298218 m!1449829))

(assert (=> b!1298218 m!1449831))

(declare-fun m!1449833 () Bool)

(assert (=> b!1298218 m!1449833))

(assert (=> b!1298217 m!1449815))

(assert (=> b!1298217 m!1449819))

(assert (=> b!1298217 m!1449821))

(assert (=> b!1298217 m!1449823))

(assert (=> b!1298217 m!1449825))

(assert (=> b!1298217 m!1449823))

(assert (=> b!1298217 m!1449815))

(assert (=> b!1298217 m!1449821))

(assert (=> d!366258 d!366488))

(declare-fun d!366490 () Bool)

(declare-fun lt!427067 () Bool)

(assert (=> d!366490 (= lt!427067 (prefixMatch!66 (rulesRegex!124 thiss!19762 rules!2550) (list!4861 (++!3301 (charsOf!1211 t1!34) (singletonSeq!820 (apply!2875 (charsOf!1211 t2!34) 0))))))))

(declare-datatypes ((Context!1146 0))(
  ( (Context!1147 (exprs!1073 List!13057)) )
))
(declare-fun prefixMatchZipperSequence!154 ((InoxSet Context!1146) BalanceConc!8470 Int) Bool)

(declare-fun focus!64 (Regex!3553) (InoxSet Context!1146))

(assert (=> d!366490 (= lt!427067 (prefixMatchZipperSequence!154 (focus!64 (rulesRegex!124 thiss!19762 rules!2550)) (++!3301 (charsOf!1211 t1!34) (singletonSeq!820 (apply!2875 (charsOf!1211 t2!34) 0))) 0))))

(declare-fun lt!427060 () Unit!19130)

(declare-fun lt!427062 () Unit!19130)

(assert (=> d!366490 (= lt!427060 lt!427062)))

(declare-fun lt!427064 () (InoxSet Context!1146))

(declare-fun lt!427068 () List!13050)

(declare-fun prefixMatchZipper!44 ((InoxSet Context!1146) List!13050) Bool)

(assert (=> d!366490 (= (prefixMatch!66 (rulesRegex!124 thiss!19762 rules!2550) lt!427068) (prefixMatchZipper!44 lt!427064 lt!427068))))

(declare-datatypes ((List!13060 0))(
  ( (Nil!12994) (Cons!12994 (h!18395 Context!1146) (t!117535 List!13060)) )
))
(declare-fun lt!427063 () List!13060)

(declare-fun prefixMatchZipperRegexEquiv!44 ((InoxSet Context!1146) List!13060 Regex!3553 List!13050) Unit!19130)

(assert (=> d!366490 (= lt!427062 (prefixMatchZipperRegexEquiv!44 lt!427064 lt!427063 (rulesRegex!124 thiss!19762 rules!2550) lt!427068))))

(assert (=> d!366490 (= lt!427068 (list!4861 (++!3301 (charsOf!1211 t1!34) (singletonSeq!820 (apply!2875 (charsOf!1211 t2!34) 0)))))))

(declare-fun toList!728 ((InoxSet Context!1146)) List!13060)

(assert (=> d!366490 (= lt!427063 (toList!728 (focus!64 (rulesRegex!124 thiss!19762 rules!2550))))))

(assert (=> d!366490 (= lt!427064 (focus!64 (rulesRegex!124 thiss!19762 rules!2550)))))

(declare-fun lt!427066 () Unit!19130)

(declare-fun lt!427065 () Unit!19130)

(assert (=> d!366490 (= lt!427066 lt!427065)))

(declare-fun lt!427061 () Int)

(declare-fun lt!427069 () (InoxSet Context!1146))

(declare-fun dropList!356 (BalanceConc!8470 Int) List!13050)

(assert (=> d!366490 (= (prefixMatchZipper!44 lt!427069 (dropList!356 (++!3301 (charsOf!1211 t1!34) (singletonSeq!820 (apply!2875 (charsOf!1211 t2!34) 0))) lt!427061)) (prefixMatchZipperSequence!154 lt!427069 (++!3301 (charsOf!1211 t1!34) (singletonSeq!820 (apply!2875 (charsOf!1211 t2!34) 0))) lt!427061))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!44 ((InoxSet Context!1146) BalanceConc!8470 Int) Unit!19130)

(assert (=> d!366490 (= lt!427065 (lemmaprefixMatchZipperSequenceEquivalent!44 lt!427069 (++!3301 (charsOf!1211 t1!34) (singletonSeq!820 (apply!2875 (charsOf!1211 t2!34) 0))) lt!427061))))

(assert (=> d!366490 (= lt!427061 0)))

(assert (=> d!366490 (= lt!427069 (focus!64 (rulesRegex!124 thiss!19762 rules!2550)))))

(assert (=> d!366490 (validRegex!1532 (rulesRegex!124 thiss!19762 rules!2550))))

(assert (=> d!366490 (= (prefixMatchZipperSequence!151 (rulesRegex!124 thiss!19762 rules!2550) (++!3301 (charsOf!1211 t1!34) (singletonSeq!820 (apply!2875 (charsOf!1211 t2!34) 0)))) lt!427067)))

(declare-fun bs!329068 () Bool)

(assert (= bs!329068 d!366490))

(assert (=> bs!329068 m!1449197))

(declare-fun m!1449865 () Bool)

(assert (=> bs!329068 m!1449865))

(assert (=> bs!329068 m!1449197))

(declare-fun m!1449867 () Bool)

(assert (=> bs!329068 m!1449867))

(assert (=> bs!329068 m!1449075))

(declare-fun m!1449869 () Bool)

(assert (=> bs!329068 m!1449869))

(declare-fun m!1449871 () Bool)

(assert (=> bs!329068 m!1449871))

(declare-fun m!1449873 () Bool)

(assert (=> bs!329068 m!1449873))

(assert (=> bs!329068 m!1449075))

(declare-fun m!1449875 () Bool)

(assert (=> bs!329068 m!1449875))

(assert (=> bs!329068 m!1449075))

(assert (=> bs!329068 m!1449871))

(assert (=> bs!329068 m!1449075))

(declare-fun m!1449877 () Bool)

(assert (=> bs!329068 m!1449877))

(declare-fun m!1449879 () Bool)

(assert (=> bs!329068 m!1449879))

(assert (=> bs!329068 m!1449197))

(assert (=> bs!329068 m!1449877))

(assert (=> bs!329068 m!1449871))

(assert (=> bs!329068 m!1449197))

(declare-fun m!1449881 () Bool)

(assert (=> bs!329068 m!1449881))

(assert (=> bs!329068 m!1449867))

(declare-fun m!1449883 () Bool)

(assert (=> bs!329068 m!1449883))

(declare-fun m!1449885 () Bool)

(assert (=> bs!329068 m!1449885))

(assert (=> bs!329068 m!1449197))

(declare-fun m!1449887 () Bool)

(assert (=> bs!329068 m!1449887))

(assert (=> bs!329068 m!1449075))

(declare-fun m!1449891 () Bool)

(assert (=> bs!329068 m!1449891))

(assert (=> d!366258 d!366490))

(declare-fun d!366498 () Bool)

(declare-fun e!832364 () Bool)

(assert (=> d!366498 e!832364))

(declare-fun res!581452 () Bool)

(assert (=> d!366498 (=> (not res!581452) (not e!832364))))

(declare-fun lt!427078 () BalanceConc!8470)

(assert (=> d!366498 (= res!581452 (= (list!4861 lt!427078) (Cons!12984 (apply!2875 (charsOf!1211 t2!34) 0) Nil!12984)))))

(declare-fun singleton!362 (C!7396) BalanceConc!8470)

(assert (=> d!366498 (= lt!427078 (singleton!362 (apply!2875 (charsOf!1211 t2!34) 0)))))

(assert (=> d!366498 (= (singletonSeq!820 (apply!2875 (charsOf!1211 t2!34) 0)) lt!427078)))

(declare-fun b!1298249 () Bool)

(assert (=> b!1298249 (= e!832364 (isBalanced!1253 (c!213611 lt!427078)))))

(assert (= (and d!366498 res!581452) b!1298249))

(declare-fun m!1449907 () Bool)

(assert (=> d!366498 m!1449907))

(assert (=> d!366498 m!1449193))

(declare-fun m!1449909 () Bool)

(assert (=> d!366498 m!1449909))

(declare-fun m!1449911 () Bool)

(assert (=> b!1298249 m!1449911))

(assert (=> d!366258 d!366498))

(assert (=> d!366258 d!366342))

(declare-fun d!366512 () Bool)

(declare-fun lt!427079 () C!7396)

(assert (=> d!366512 (= lt!427079 (apply!2879 (list!4861 (charsOf!1211 t2!34)) 0))))

(assert (=> d!366512 (= lt!427079 (apply!2880 (c!213611 (charsOf!1211 t2!34)) 0))))

(declare-fun e!832365 () Bool)

(assert (=> d!366512 e!832365))

(declare-fun res!581453 () Bool)

(assert (=> d!366512 (=> (not res!581453) (not e!832365))))

(assert (=> d!366512 (= res!581453 (<= 0 0))))

(assert (=> d!366512 (= (apply!2875 (charsOf!1211 t2!34) 0) lt!427079)))

(declare-fun b!1298250 () Bool)

(assert (=> b!1298250 (= e!832365 (< 0 (size!10611 (charsOf!1211 t2!34))))))

(assert (= (and d!366512 res!581453) b!1298250))

(assert (=> d!366512 m!1449093))

(declare-fun m!1449913 () Bool)

(assert (=> d!366512 m!1449913))

(assert (=> d!366512 m!1449913))

(declare-fun m!1449915 () Bool)

(assert (=> d!366512 m!1449915))

(declare-fun m!1449917 () Bool)

(assert (=> d!366512 m!1449917))

(assert (=> b!1298250 m!1449093))

(declare-fun m!1449919 () Bool)

(assert (=> b!1298250 m!1449919))

(assert (=> d!366258 d!366512))

(assert (=> d!366258 d!366338))

(assert (=> d!366258 d!366244))

(declare-fun d!366514 () Bool)

(assert (=> d!366514 (= (Exists!711 lambda!51026) (choose!7965 lambda!51026))))

(declare-fun bs!329071 () Bool)

(assert (= bs!329071 d!366514))

(declare-fun m!1449921 () Bool)

(assert (=> bs!329071 m!1449921))

(assert (=> d!366226 d!366514))

(declare-fun bs!329072 () Bool)

(declare-fun d!366516 () Bool)

(assert (= bs!329072 (and d!366516 b!1297692)))

(declare-fun lambda!51060 () Int)

(assert (=> bs!329072 (= lambda!51060 lambda!51023)))

(declare-fun bs!329073 () Bool)

(assert (= bs!329073 (and d!366516 d!366226)))

(assert (=> bs!329073 (= lambda!51060 lambda!51026)))

(assert (=> d!366516 true))

(assert (=> d!366516 true))

(assert (=> d!366516 (Exists!711 lambda!51060)))

(assert (=> d!366516 true))

(declare-fun _$103!53 () Unit!19130)

(assert (=> d!366516 (= (choose!7966 lt!426849 lt!426845) _$103!53)))

(declare-fun bs!329074 () Bool)

(assert (= bs!329074 d!366516))

(declare-fun m!1449941 () Bool)

(assert (=> bs!329074 m!1449941))

(assert (=> d!366226 d!366516))

(declare-fun b!1298292 () Bool)

(declare-fun res!581482 () Bool)

(declare-fun e!832401 () Bool)

(assert (=> b!1298292 (=> (not res!581482) (not e!832401))))

(declare-fun call!89002 () Bool)

(assert (=> b!1298292 (= res!581482 call!89002)))

(declare-fun e!832395 () Bool)

(assert (=> b!1298292 (= e!832395 e!832401)))

(declare-fun c!213717 () Bool)

(declare-fun bm!88997 () Bool)

(declare-fun c!213716 () Bool)

(declare-fun call!89004 () Bool)

(assert (=> bm!88997 (= call!89004 (validRegex!1532 (ite c!213716 (reg!3882 lt!426849) (ite c!213717 (regOne!7619 lt!426849) (regOne!7618 lt!426849)))))))

(declare-fun b!1298293 () Bool)

(declare-fun res!581481 () Bool)

(declare-fun e!832400 () Bool)

(assert (=> b!1298293 (=> res!581481 e!832400)))

(assert (=> b!1298293 (= res!581481 (not ((_ is Concat!5883) lt!426849)))))

(assert (=> b!1298293 (= e!832395 e!832400)))

(declare-fun b!1298294 () Bool)

(declare-fun call!89003 () Bool)

(assert (=> b!1298294 (= e!832401 call!89003)))

(declare-fun d!366526 () Bool)

(declare-fun res!581479 () Bool)

(declare-fun e!832396 () Bool)

(assert (=> d!366526 (=> res!581479 e!832396)))

(assert (=> d!366526 (= res!581479 ((_ is ElementMatch!3553) lt!426849))))

(assert (=> d!366526 (= (validRegex!1532 lt!426849) e!832396)))

(declare-fun b!1298295 () Bool)

(declare-fun e!832399 () Bool)

(assert (=> b!1298295 (= e!832399 call!89004)))

(declare-fun b!1298296 () Bool)

(declare-fun e!832397 () Bool)

(assert (=> b!1298296 (= e!832397 e!832395)))

(assert (=> b!1298296 (= c!213717 ((_ is Union!3553) lt!426849))))

(declare-fun b!1298297 () Bool)

(declare-fun e!832398 () Bool)

(assert (=> b!1298297 (= e!832398 call!89003)))

(declare-fun b!1298298 () Bool)

(assert (=> b!1298298 (= e!832400 e!832398)))

(declare-fun res!581483 () Bool)

(assert (=> b!1298298 (=> (not res!581483) (not e!832398))))

(assert (=> b!1298298 (= res!581483 call!89002)))

(declare-fun b!1298299 () Bool)

(assert (=> b!1298299 (= e!832396 e!832397)))

(assert (=> b!1298299 (= c!213716 ((_ is Star!3553) lt!426849))))

(declare-fun b!1298300 () Bool)

(assert (=> b!1298300 (= e!832397 e!832399)))

(declare-fun res!581480 () Bool)

(declare-fun nullable!1131 (Regex!3553) Bool)

(assert (=> b!1298300 (= res!581480 (not (nullable!1131 (reg!3882 lt!426849))))))

(assert (=> b!1298300 (=> (not res!581480) (not e!832399))))

(declare-fun bm!88998 () Bool)

(assert (=> bm!88998 (= call!89002 call!89004)))

(declare-fun bm!88999 () Bool)

(assert (=> bm!88999 (= call!89003 (validRegex!1532 (ite c!213717 (regTwo!7619 lt!426849) (regTwo!7618 lt!426849))))))

(assert (= (and d!366526 (not res!581479)) b!1298299))

(assert (= (and b!1298299 c!213716) b!1298300))

(assert (= (and b!1298299 (not c!213716)) b!1298296))

(assert (= (and b!1298300 res!581480) b!1298295))

(assert (= (and b!1298296 c!213717) b!1298292))

(assert (= (and b!1298296 (not c!213717)) b!1298293))

(assert (= (and b!1298292 res!581482) b!1298294))

(assert (= (and b!1298293 (not res!581481)) b!1298298))

(assert (= (and b!1298298 res!581483) b!1298297))

(assert (= (or b!1298292 b!1298298) bm!88998))

(assert (= (or b!1298294 b!1298297) bm!88999))

(assert (= (or b!1298295 bm!88998) bm!88997))

(declare-fun m!1449955 () Bool)

(assert (=> bm!88997 m!1449955))

(declare-fun m!1449957 () Bool)

(assert (=> b!1298300 m!1449957))

(declare-fun m!1449959 () Bool)

(assert (=> bm!88999 m!1449959))

(assert (=> d!366226 d!366526))

(declare-fun d!366536 () Bool)

(assert (=> d!366536 (= (list!4861 lt!426867) (list!4865 (c!213611 lt!426867)))))

(declare-fun bs!329078 () Bool)

(assert (= bs!329078 d!366536))

(declare-fun m!1449961 () Bool)

(assert (=> bs!329078 m!1449961))

(assert (=> d!366244 d!366536))

(declare-fun d!366538 () Bool)

(assert (=> d!366538 true))

(declare-fun lambda!51064 () Int)

(declare-fun order!7909 () Int)

(declare-fun order!7907 () Int)

(declare-fun dynLambda!5688 (Int Int) Int)

(declare-fun dynLambda!5689 (Int Int) Int)

(assert (=> d!366538 (< (dynLambda!5688 order!7907 (toChars!3305 (transformation!2239 (rule!3978 t2!34)))) (dynLambda!5689 order!7909 lambda!51064))))

(assert (=> d!366538 true))

(assert (=> d!366538 (< (dynLambda!5681 order!7903 (toValue!3446 (transformation!2239 (rule!3978 t2!34)))) (dynLambda!5689 order!7909 lambda!51064))))

(declare-fun Forall!509 (Int) Bool)

(assert (=> d!366538 (= (semiInverseModEq!852 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (toValue!3446 (transformation!2239 (rule!3978 t2!34)))) (Forall!509 lambda!51064))))

(declare-fun bs!329080 () Bool)

(assert (= bs!329080 d!366538))

(declare-fun m!1449971 () Bool)

(assert (=> bs!329080 m!1449971))

(assert (=> d!366252 d!366538))

(declare-fun d!366544 () Bool)

(declare-fun lt!427089 () Int)

(assert (=> d!366544 (>= lt!427089 0)))

(declare-fun e!832405 () Int)

(assert (=> d!366544 (= lt!427089 e!832405)))

(declare-fun c!213718 () Bool)

(assert (=> d!366544 (= c!213718 ((_ is Nil!12984) (originalCharacters!3101 t2!34)))))

(assert (=> d!366544 (= (size!10614 (originalCharacters!3101 t2!34)) lt!427089)))

(declare-fun b!1298308 () Bool)

(assert (=> b!1298308 (= e!832405 0)))

(declare-fun b!1298309 () Bool)

(assert (=> b!1298309 (= e!832405 (+ 1 (size!10614 (t!117473 (originalCharacters!3101 t2!34)))))))

(assert (= (and d!366544 c!213718) b!1298308))

(assert (= (and d!366544 (not c!213718)) b!1298309))

(declare-fun m!1449973 () Bool)

(assert (=> b!1298309 m!1449973))

(assert (=> b!1297856 d!366544))

(declare-fun bs!329081 () Bool)

(declare-fun d!366546 () Bool)

(assert (= bs!329081 (and d!366546 d!366352)))

(declare-fun lambda!51065 () Int)

(assert (=> bs!329081 (= lambda!51065 lambda!51041)))

(assert (=> d!366546 true))

(declare-fun lt!427090 () Bool)

(assert (=> d!366546 (= lt!427090 (forall!3260 (t!117475 rules!2550) lambda!51065))))

(declare-fun e!832406 () Bool)

(assert (=> d!366546 (= lt!427090 e!832406)))

(declare-fun res!581487 () Bool)

(assert (=> d!366546 (=> res!581487 e!832406)))

(assert (=> d!366546 (= res!581487 (not ((_ is Cons!12986) (t!117475 rules!2550))))))

(assert (=> d!366546 (= (rulesValidInductive!708 thiss!19762 (t!117475 rules!2550)) lt!427090)))

(declare-fun b!1298310 () Bool)

(declare-fun e!832407 () Bool)

(assert (=> b!1298310 (= e!832406 e!832407)))

(declare-fun res!581488 () Bool)

(assert (=> b!1298310 (=> (not res!581488) (not e!832407))))

(assert (=> b!1298310 (= res!581488 (ruleValid!549 thiss!19762 (h!18387 (t!117475 rules!2550))))))

(declare-fun b!1298311 () Bool)

(assert (=> b!1298311 (= e!832407 (rulesValidInductive!708 thiss!19762 (t!117475 (t!117475 rules!2550))))))

(assert (= (and d!366546 (not res!581487)) b!1298310))

(assert (= (and b!1298310 res!581488) b!1298311))

(declare-fun m!1449975 () Bool)

(assert (=> d!366546 m!1449975))

(declare-fun m!1449977 () Bool)

(assert (=> b!1298310 m!1449977))

(declare-fun m!1449979 () Bool)

(assert (=> b!1298311 m!1449979))

(assert (=> b!1297957 d!366546))

(declare-fun d!366548 () Bool)

(declare-fun c!213719 () Bool)

(assert (=> d!366548 (= c!213719 ((_ is Nil!12984) lt!426921))))

(declare-fun e!832408 () (InoxSet C!7396))

(assert (=> d!366548 (= (content!1837 lt!426921) e!832408)))

(declare-fun b!1298312 () Bool)

(assert (=> b!1298312 (= e!832408 ((as const (Array C!7396 Bool)) false))))

(declare-fun b!1298313 () Bool)

(assert (=> b!1298313 (= e!832408 ((_ map or) (store ((as const (Array C!7396 Bool)) false) (h!18385 lt!426921) true) (content!1837 (t!117473 lt!426921))))))

(assert (= (and d!366548 c!213719) b!1298312))

(assert (= (and d!366548 (not c!213719)) b!1298313))

(declare-fun m!1449981 () Bool)

(assert (=> b!1298313 m!1449981))

(declare-fun m!1449983 () Bool)

(assert (=> b!1298313 m!1449983))

(assert (=> d!366336 d!366548))

(declare-fun d!366550 () Bool)

(declare-fun c!213720 () Bool)

(assert (=> d!366550 (= c!213720 ((_ is Nil!12984) lt!426846))))

(declare-fun e!832409 () (InoxSet C!7396))

(assert (=> d!366550 (= (content!1837 lt!426846) e!832409)))

(declare-fun b!1298314 () Bool)

(assert (=> b!1298314 (= e!832409 ((as const (Array C!7396 Bool)) false))))

(declare-fun b!1298315 () Bool)

(assert (=> b!1298315 (= e!832409 ((_ map or) (store ((as const (Array C!7396 Bool)) false) (h!18385 lt!426846) true) (content!1837 (t!117473 lt!426846))))))

(assert (= (and d!366550 c!213720) b!1298314))

(assert (= (and d!366550 (not c!213720)) b!1298315))

(declare-fun m!1449985 () Bool)

(assert (=> b!1298315 m!1449985))

(assert (=> b!1298315 m!1449653))

(assert (=> d!366336 d!366550))

(declare-fun d!366552 () Bool)

(declare-fun c!213721 () Bool)

(assert (=> d!366552 (= c!213721 ((_ is Nil!12984) (Cons!12984 lt!426848 Nil!12984)))))

(declare-fun e!832410 () (InoxSet C!7396))

(assert (=> d!366552 (= (content!1837 (Cons!12984 lt!426848 Nil!12984)) e!832410)))

(declare-fun b!1298316 () Bool)

(assert (=> b!1298316 (= e!832410 ((as const (Array C!7396 Bool)) false))))

(declare-fun b!1298317 () Bool)

(assert (=> b!1298317 (= e!832410 ((_ map or) (store ((as const (Array C!7396 Bool)) false) (h!18385 (Cons!12984 lt!426848 Nil!12984)) true) (content!1837 (t!117473 (Cons!12984 lt!426848 Nil!12984)))))))

(assert (= (and d!366552 c!213721) b!1298316))

(assert (= (and d!366552 (not c!213721)) b!1298317))

(declare-fun m!1449987 () Bool)

(assert (=> b!1298317 m!1449987))

(declare-fun m!1449989 () Bool)

(assert (=> b!1298317 m!1449989))

(assert (=> d!366336 d!366552))

(declare-fun d!366554 () Bool)

(assert (=> d!366554 (= (list!4861 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (value!73444 t1!34))) (list!4865 (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (value!73444 t1!34)))))))

(declare-fun bs!329082 () Bool)

(assert (= bs!329082 d!366554))

(declare-fun m!1449991 () Bool)

(assert (=> bs!329082 m!1449991))

(assert (=> b!1297846 d!366554))

(declare-fun bs!329083 () Bool)

(declare-fun d!366556 () Bool)

(assert (= bs!329083 (and d!366556 d!366538)))

(declare-fun lambda!51066 () Int)

(assert (=> bs!329083 (= (and (= (toChars!3305 (transformation!2239 (h!18387 rules!2550))) (toChars!3305 (transformation!2239 (rule!3978 t2!34)))) (= (toValue!3446 (transformation!2239 (h!18387 rules!2550))) (toValue!3446 (transformation!2239 (rule!3978 t2!34))))) (= lambda!51066 lambda!51064))))

(assert (=> d!366556 true))

(assert (=> d!366556 (< (dynLambda!5688 order!7907 (toChars!3305 (transformation!2239 (h!18387 rules!2550)))) (dynLambda!5689 order!7909 lambda!51066))))

(assert (=> d!366556 true))

(assert (=> d!366556 (< (dynLambda!5681 order!7903 (toValue!3446 (transformation!2239 (h!18387 rules!2550)))) (dynLambda!5689 order!7909 lambda!51066))))

(assert (=> d!366556 (= (semiInverseModEq!852 (toChars!3305 (transformation!2239 (h!18387 rules!2550))) (toValue!3446 (transformation!2239 (h!18387 rules!2550)))) (Forall!509 lambda!51066))))

(declare-fun bs!329084 () Bool)

(assert (= bs!329084 d!366556))

(declare-fun m!1449993 () Bool)

(assert (=> bs!329084 m!1449993))

(assert (=> d!366290 d!366556))

(declare-fun d!366558 () Bool)

(declare-fun res!581509 () Bool)

(declare-fun e!832429 () Bool)

(assert (=> d!366558 (=> res!581509 e!832429)))

(assert (=> d!366558 (= res!581509 ((_ is Nil!12986) rules!2550))))

(assert (=> d!366558 (= (forall!3260 rules!2550 lambda!51041) e!832429)))

(declare-fun b!1298350 () Bool)

(declare-fun e!832430 () Bool)

(assert (=> b!1298350 (= e!832429 e!832430)))

(declare-fun res!581510 () Bool)

(assert (=> b!1298350 (=> (not res!581510) (not e!832430))))

(declare-fun dynLambda!5690 (Int Rule!4278) Bool)

(assert (=> b!1298350 (= res!581510 (dynLambda!5690 lambda!51041 (h!18387 rules!2550)))))

(declare-fun b!1298351 () Bool)

(assert (=> b!1298351 (= e!832430 (forall!3260 (t!117475 rules!2550) lambda!51041))))

(assert (= (and d!366558 (not res!581509)) b!1298350))

(assert (= (and b!1298350 res!581510) b!1298351))

(declare-fun b_lambda!37189 () Bool)

(assert (=> (not b_lambda!37189) (not b!1298350)))

(declare-fun m!1449995 () Bool)

(assert (=> b!1298350 m!1449995))

(declare-fun m!1449997 () Bool)

(assert (=> b!1298351 m!1449997))

(assert (=> d!366352 d!366558))

(declare-fun bs!329085 () Bool)

(declare-fun d!366560 () Bool)

(assert (= bs!329085 (and d!366560 d!366342)))

(declare-fun lambda!51071 () Int)

(assert (=> bs!329085 (= lambda!51071 lambda!51038)))

(declare-fun lambda!51072 () Int)

(declare-fun forall!3261 (List!13057 Int) Bool)

(assert (=> d!366560 (forall!3261 (map!2827 rules!2550 lambda!51071) lambda!51072)))

(declare-fun lt!427098 () Unit!19130)

(declare-fun e!832440 () Unit!19130)

(assert (=> d!366560 (= lt!427098 e!832440)))

(declare-fun c!213733 () Bool)

(assert (=> d!366560 (= c!213733 ((_ is Nil!12986) rules!2550))))

(assert (=> d!366560 (rulesValidInductive!708 thiss!19762 rules!2550)))

(assert (=> d!366560 (= (lemma!54 rules!2550 thiss!19762 rules!2550) lt!427098)))

(declare-fun b!1298370 () Bool)

(declare-fun Unit!19132 () Unit!19130)

(assert (=> b!1298370 (= e!832440 Unit!19132)))

(declare-fun b!1298371 () Bool)

(declare-fun Unit!19133 () Unit!19130)

(assert (=> b!1298371 (= e!832440 Unit!19133)))

(declare-fun lt!427099 () Unit!19130)

(assert (=> b!1298371 (= lt!427099 (lemma!54 rules!2550 thiss!19762 (t!117475 rules!2550)))))

(assert (= (and d!366560 c!213733) b!1298370))

(assert (= (and d!366560 (not c!213733)) b!1298371))

(declare-fun m!1450017 () Bool)

(assert (=> d!366560 m!1450017))

(assert (=> d!366560 m!1450017))

(declare-fun m!1450021 () Bool)

(assert (=> d!366560 m!1450021))

(assert (=> d!366560 m!1449097))

(declare-fun m!1450023 () Bool)

(assert (=> b!1298371 m!1450023))

(assert (=> d!366342 d!366560))

(declare-fun bs!329087 () Bool)

(declare-fun d!366568 () Bool)

(assert (= bs!329087 (and d!366568 d!366560)))

(declare-fun lambda!51079 () Int)

(assert (=> bs!329087 (= lambda!51079 lambda!51072)))

(declare-fun e!832469 () Bool)

(declare-fun lt!427108 () Regex!3553)

(declare-fun b!1298415 () Bool)

(declare-fun head!2229 (List!13057) Regex!3553)

(assert (=> b!1298415 (= e!832469 (= lt!427108 (head!2229 (map!2827 rules!2550 lambda!51038))))))

(declare-fun e!832467 () Bool)

(assert (=> d!366568 e!832467))

(declare-fun res!581527 () Bool)

(assert (=> d!366568 (=> (not res!581527) (not e!832467))))

(assert (=> d!366568 (= res!581527 (validRegex!1532 lt!427108))))

(declare-fun e!832466 () Regex!3553)

(assert (=> d!366568 (= lt!427108 e!832466)))

(declare-fun c!213754 () Bool)

(declare-fun e!832468 () Bool)

(assert (=> d!366568 (= c!213754 e!832468)))

(declare-fun res!581526 () Bool)

(assert (=> d!366568 (=> (not res!581526) (not e!832468))))

(assert (=> d!366568 (= res!581526 ((_ is Cons!12991) (map!2827 rules!2550 lambda!51038)))))

(assert (=> d!366568 (forall!3261 (map!2827 rules!2550 lambda!51038) lambda!51079)))

(assert (=> d!366568 (= (generalisedUnion!58 (map!2827 rules!2550 lambda!51038)) lt!427108)))

(declare-fun b!1298416 () Bool)

(declare-fun isUnion!14 (Regex!3553) Bool)

(assert (=> b!1298416 (= e!832469 (isUnion!14 lt!427108))))

(declare-fun b!1298417 () Bool)

(assert (=> b!1298417 (= e!832466 (h!18392 (map!2827 rules!2550 lambda!51038)))))

(declare-fun b!1298418 () Bool)

(declare-fun e!832470 () Regex!3553)

(assert (=> b!1298418 (= e!832466 e!832470)))

(declare-fun c!213755 () Bool)

(assert (=> b!1298418 (= c!213755 ((_ is Cons!12991) (map!2827 rules!2550 lambda!51038)))))

(declare-fun b!1298419 () Bool)

(declare-fun e!832471 () Bool)

(declare-fun isEmptyLang!14 (Regex!3553) Bool)

(assert (=> b!1298419 (= e!832471 (isEmptyLang!14 lt!427108))))

(declare-fun b!1298420 () Bool)

(assert (=> b!1298420 (= e!832470 (Union!3553 (h!18392 (map!2827 rules!2550 lambda!51038)) (generalisedUnion!58 (t!117514 (map!2827 rules!2550 lambda!51038)))))))

(declare-fun b!1298421 () Bool)

(assert (=> b!1298421 (= e!832471 e!832469)))

(declare-fun c!213752 () Bool)

(declare-fun isEmpty!7721 (List!13057) Bool)

(declare-fun tail!1857 (List!13057) List!13057)

(assert (=> b!1298421 (= c!213752 (isEmpty!7721 (tail!1857 (map!2827 rules!2550 lambda!51038))))))

(declare-fun b!1298422 () Bool)

(assert (=> b!1298422 (= e!832470 EmptyLang!3553)))

(declare-fun b!1298423 () Bool)

(assert (=> b!1298423 (= e!832468 (isEmpty!7721 (t!117514 (map!2827 rules!2550 lambda!51038))))))

(declare-fun b!1298424 () Bool)

(assert (=> b!1298424 (= e!832467 e!832471)))

(declare-fun c!213753 () Bool)

(assert (=> b!1298424 (= c!213753 (isEmpty!7721 (map!2827 rules!2550 lambda!51038)))))

(assert (= (and d!366568 res!581526) b!1298423))

(assert (= (and d!366568 c!213754) b!1298417))

(assert (= (and d!366568 (not c!213754)) b!1298418))

(assert (= (and b!1298418 c!213755) b!1298420))

(assert (= (and b!1298418 (not c!213755)) b!1298422))

(assert (= (and d!366568 res!581527) b!1298424))

(assert (= (and b!1298424 c!213753) b!1298419))

(assert (= (and b!1298424 (not c!213753)) b!1298421))

(assert (= (and b!1298421 c!213752) b!1298415))

(assert (= (and b!1298421 (not c!213752)) b!1298416))

(assert (=> b!1298424 m!1449469))

(declare-fun m!1450041 () Bool)

(assert (=> b!1298424 m!1450041))

(declare-fun m!1450043 () Bool)

(assert (=> d!366568 m!1450043))

(assert (=> d!366568 m!1449469))

(declare-fun m!1450045 () Bool)

(assert (=> d!366568 m!1450045))

(declare-fun m!1450047 () Bool)

(assert (=> b!1298419 m!1450047))

(declare-fun m!1450049 () Bool)

(assert (=> b!1298420 m!1450049))

(declare-fun m!1450051 () Bool)

(assert (=> b!1298423 m!1450051))

(declare-fun m!1450053 () Bool)

(assert (=> b!1298416 m!1450053))

(assert (=> b!1298421 m!1449469))

(declare-fun m!1450055 () Bool)

(assert (=> b!1298421 m!1450055))

(assert (=> b!1298421 m!1450055))

(declare-fun m!1450057 () Bool)

(assert (=> b!1298421 m!1450057))

(assert (=> b!1298415 m!1449469))

(declare-fun m!1450061 () Bool)

(assert (=> b!1298415 m!1450061))

(assert (=> d!366342 d!366568))

(declare-fun d!366580 () Bool)

(declare-fun lt!427113 () List!13057)

(declare-fun size!10622 (List!13057) Int)

(declare-fun size!10623 (List!13052) Int)

(assert (=> d!366580 (= (size!10622 lt!427113) (size!10623 rules!2550))))

(declare-fun e!832475 () List!13057)

(assert (=> d!366580 (= lt!427113 e!832475)))

(declare-fun c!213759 () Bool)

(assert (=> d!366580 (= c!213759 ((_ is Nil!12986) rules!2550))))

(assert (=> d!366580 (= (map!2827 rules!2550 lambda!51038) lt!427113)))

(declare-fun b!1298431 () Bool)

(assert (=> b!1298431 (= e!832475 Nil!12991)))

(declare-fun b!1298432 () Bool)

(declare-fun $colon$colon!136 (List!13057 Regex!3553) List!13057)

(declare-fun dynLambda!5691 (Int Rule!4278) Regex!3553)

(assert (=> b!1298432 (= e!832475 ($colon$colon!136 (map!2827 (t!117475 rules!2550) lambda!51038) (dynLambda!5691 lambda!51038 (h!18387 rules!2550))))))

(assert (= (and d!366580 c!213759) b!1298431))

(assert (= (and d!366580 (not c!213759)) b!1298432))

(declare-fun b_lambda!37191 () Bool)

(assert (=> (not b_lambda!37191) (not b!1298432)))

(declare-fun m!1450067 () Bool)

(assert (=> d!366580 m!1450067))

(declare-fun m!1450069 () Bool)

(assert (=> d!366580 m!1450069))

(declare-fun m!1450071 () Bool)

(assert (=> b!1298432 m!1450071))

(declare-fun m!1450073 () Bool)

(assert (=> b!1298432 m!1450073))

(assert (=> b!1298432 m!1450071))

(assert (=> b!1298432 m!1450073))

(declare-fun m!1450075 () Bool)

(assert (=> b!1298432 m!1450075))

(assert (=> d!366342 d!366580))

(declare-fun d!366584 () Bool)

(declare-fun c!213760 () Bool)

(assert (=> d!366584 (= c!213760 ((_ is Nil!12984) lt!426933))))

(declare-fun e!832476 () (InoxSet C!7396))

(assert (=> d!366584 (= (content!1837 lt!426933) e!832476)))

(declare-fun b!1298433 () Bool)

(assert (=> b!1298433 (= e!832476 ((as const (Array C!7396 Bool)) false))))

(declare-fun b!1298434 () Bool)

(assert (=> b!1298434 (= e!832476 ((_ map or) (store ((as const (Array C!7396 Bool)) false) (h!18385 lt!426933) true) (content!1837 (t!117473 lt!426933))))))

(assert (= (and d!366584 c!213760) b!1298433))

(assert (= (and d!366584 (not c!213760)) b!1298434))

(declare-fun m!1450077 () Bool)

(assert (=> b!1298434 m!1450077))

(declare-fun m!1450079 () Bool)

(assert (=> b!1298434 m!1450079))

(assert (=> d!366358 d!366584))

(assert (=> d!366358 d!366396))

(declare-fun d!366586 () Bool)

(declare-fun c!213761 () Bool)

(assert (=> d!366586 (= c!213761 ((_ is Nil!12984) (getSuffix!409 lt!426847 lt!426845)))))

(declare-fun e!832477 () (InoxSet C!7396))

(assert (=> d!366586 (= (content!1837 (getSuffix!409 lt!426847 lt!426845)) e!832477)))

(declare-fun b!1298435 () Bool)

(assert (=> b!1298435 (= e!832477 ((as const (Array C!7396 Bool)) false))))

(declare-fun b!1298436 () Bool)

(assert (=> b!1298436 (= e!832477 ((_ map or) (store ((as const (Array C!7396 Bool)) false) (h!18385 (getSuffix!409 lt!426847 lt!426845)) true) (content!1837 (t!117473 (getSuffix!409 lt!426847 lt!426845)))))))

(assert (= (and d!366586 c!213761) b!1298435))

(assert (= (and d!366586 (not c!213761)) b!1298436))

(declare-fun m!1450081 () Bool)

(assert (=> b!1298436 m!1450081))

(declare-fun m!1450083 () Bool)

(assert (=> b!1298436 m!1450083))

(assert (=> d!366358 d!366586))

(declare-fun d!366588 () Bool)

(assert (=> d!366588 (= (list!4861 lt!426922) (list!4865 (c!213611 lt!426922)))))

(declare-fun bs!329089 () Bool)

(assert (= bs!329089 d!366588))

(declare-fun m!1450085 () Bool)

(assert (=> bs!329089 m!1450085))

(assert (=> d!366338 d!366588))

(declare-fun d!366590 () Bool)

(declare-fun lt!427114 () List!13050)

(assert (=> d!366590 (= (++!3300 (t!117473 lt!426845) lt!427114) (tail!1856 lt!426847))))

(declare-fun e!832478 () List!13050)

(assert (=> d!366590 (= lt!427114 e!832478)))

(declare-fun c!213762 () Bool)

(assert (=> d!366590 (= c!213762 ((_ is Cons!12984) (t!117473 lt!426845)))))

(assert (=> d!366590 (>= (size!10614 (tail!1856 lt!426847)) (size!10614 (t!117473 lt!426845)))))

(assert (=> d!366590 (= (getSuffix!409 (tail!1856 lt!426847) (t!117473 lt!426845)) lt!427114)))

(declare-fun b!1298437 () Bool)

(assert (=> b!1298437 (= e!832478 (getSuffix!409 (tail!1856 (tail!1856 lt!426847)) (t!117473 (t!117473 lt!426845))))))

(declare-fun b!1298438 () Bool)

(assert (=> b!1298438 (= e!832478 (tail!1856 lt!426847))))

(assert (= (and d!366590 c!213762) b!1298437))

(assert (= (and d!366590 (not c!213762)) b!1298438))

(declare-fun m!1450087 () Bool)

(assert (=> d!366590 m!1450087))

(assert (=> d!366590 m!1449531))

(declare-fun m!1450089 () Bool)

(assert (=> d!366590 m!1450089))

(assert (=> d!366590 m!1449667))

(assert (=> b!1298437 m!1449531))

(declare-fun m!1450091 () Bool)

(assert (=> b!1298437 m!1450091))

(assert (=> b!1298437 m!1450091))

(declare-fun m!1450093 () Bool)

(assert (=> b!1298437 m!1450093))

(assert (=> b!1297974 d!366590))

(declare-fun d!366592 () Bool)

(assert (=> d!366592 (= (tail!1856 lt!426847) (t!117473 lt!426847))))

(assert (=> b!1297974 d!366592))

(declare-fun b!1298503 () Bool)

(declare-fun e!832515 () Bool)

(assert (=> b!1298503 (= e!832515 (not (= (head!2228 lt!426939) (c!213612 lt!426849))))))

(declare-fun b!1298504 () Bool)

(declare-fun res!581555 () Bool)

(declare-fun e!832519 () Bool)

(assert (=> b!1298504 (=> (not res!581555) (not e!832519))))

(assert (=> b!1298504 (= res!581555 (isEmpty!7716 (tail!1856 lt!426939)))))

(declare-fun b!1298505 () Bool)

(declare-fun res!581551 () Bool)

(assert (=> b!1298505 (=> res!581551 e!832515)))

(assert (=> b!1298505 (= res!581551 (not (isEmpty!7716 (tail!1856 lt!426939))))))

(declare-fun b!1298506 () Bool)

(assert (=> b!1298506 (= e!832519 (= (head!2228 lt!426939) (c!213612 lt!426849)))))

(declare-fun b!1298507 () Bool)

(declare-fun e!832520 () Bool)

(declare-fun lt!427123 () Bool)

(declare-fun call!89010 () Bool)

(assert (=> b!1298507 (= e!832520 (= lt!427123 call!89010))))

(declare-fun b!1298509 () Bool)

(declare-fun e!832517 () Bool)

(assert (=> b!1298509 (= e!832517 e!832515)))

(declare-fun res!581556 () Bool)

(assert (=> b!1298509 (=> res!581556 e!832515)))

(assert (=> b!1298509 (= res!581556 call!89010)))

(declare-fun b!1298510 () Bool)

(declare-fun res!581557 () Bool)

(declare-fun e!832518 () Bool)

(assert (=> b!1298510 (=> res!581557 e!832518)))

(assert (=> b!1298510 (= res!581557 e!832519)))

(declare-fun res!581550 () Bool)

(assert (=> b!1298510 (=> (not res!581550) (not e!832519))))

(assert (=> b!1298510 (= res!581550 lt!427123)))

(declare-fun b!1298511 () Bool)

(declare-fun e!832514 () Bool)

(assert (=> b!1298511 (= e!832514 (not lt!427123))))

(declare-fun b!1298512 () Bool)

(declare-fun res!581552 () Bool)

(assert (=> b!1298512 (=> (not res!581552) (not e!832519))))

(assert (=> b!1298512 (= res!581552 (not call!89010))))

(declare-fun b!1298513 () Bool)

(assert (=> b!1298513 (= e!832520 e!832514)))

(declare-fun c!213784 () Bool)

(assert (=> b!1298513 (= c!213784 ((_ is EmptyLang!3553) lt!426849))))

(declare-fun b!1298514 () Bool)

(declare-fun res!581553 () Bool)

(assert (=> b!1298514 (=> res!581553 e!832518)))

(assert (=> b!1298514 (= res!581553 (not ((_ is ElementMatch!3553) lt!426849)))))

(assert (=> b!1298514 (= e!832514 e!832518)))

(declare-fun b!1298515 () Bool)

(declare-fun e!832516 () Bool)

(assert (=> b!1298515 (= e!832516 (nullable!1131 lt!426849))))

(declare-fun b!1298508 () Bool)

(assert (=> b!1298508 (= e!832516 (matchR!1555 (derivativeStep!883 lt!426849 (head!2228 lt!426939)) (tail!1856 lt!426939)))))

(declare-fun d!366594 () Bool)

(assert (=> d!366594 e!832520))

(declare-fun c!213786 () Bool)

(assert (=> d!366594 (= c!213786 ((_ is EmptyExpr!3553) lt!426849))))

(assert (=> d!366594 (= lt!427123 e!832516)))

(declare-fun c!213785 () Bool)

(assert (=> d!366594 (= c!213785 (isEmpty!7716 lt!426939))))

(assert (=> d!366594 (validRegex!1532 lt!426849)))

(assert (=> d!366594 (= (matchR!1555 lt!426849 lt!426939) lt!427123)))

(declare-fun bm!89005 () Bool)

(assert (=> bm!89005 (= call!89010 (isEmpty!7716 lt!426939))))

(declare-fun b!1298516 () Bool)

(assert (=> b!1298516 (= e!832518 e!832517)))

(declare-fun res!581554 () Bool)

(assert (=> b!1298516 (=> (not res!581554) (not e!832517))))

(assert (=> b!1298516 (= res!581554 (not lt!427123))))

(assert (= (and d!366594 c!213785) b!1298515))

(assert (= (and d!366594 (not c!213785)) b!1298508))

(assert (= (and d!366594 c!213786) b!1298507))

(assert (= (and d!366594 (not c!213786)) b!1298513))

(assert (= (and b!1298513 c!213784) b!1298511))

(assert (= (and b!1298513 (not c!213784)) b!1298514))

(assert (= (and b!1298514 (not res!581553)) b!1298510))

(assert (= (and b!1298510 res!581550) b!1298512))

(assert (= (and b!1298512 res!581552) b!1298504))

(assert (= (and b!1298504 res!581555) b!1298506))

(assert (= (and b!1298510 (not res!581557)) b!1298516))

(assert (= (and b!1298516 res!581554) b!1298509))

(assert (= (and b!1298509 (not res!581556)) b!1298505))

(assert (= (and b!1298505 (not res!581551)) b!1298503))

(assert (= (or b!1298507 b!1298509 b!1298512) bm!89005))

(assert (=> b!1298504 m!1449595))

(assert (=> b!1298504 m!1449595))

(declare-fun m!1450127 () Bool)

(assert (=> b!1298504 m!1450127))

(assert (=> b!1298505 m!1449595))

(assert (=> b!1298505 m!1449595))

(assert (=> b!1298505 m!1450127))

(assert (=> b!1298508 m!1449599))

(assert (=> b!1298508 m!1449599))

(declare-fun m!1450129 () Bool)

(assert (=> b!1298508 m!1450129))

(assert (=> b!1298508 m!1449595))

(assert (=> b!1298508 m!1450129))

(assert (=> b!1298508 m!1449595))

(declare-fun m!1450131 () Bool)

(assert (=> b!1298508 m!1450131))

(declare-fun m!1450133 () Bool)

(assert (=> bm!89005 m!1450133))

(assert (=> b!1298503 m!1449599))

(assert (=> d!366594 m!1450133))

(assert (=> d!366594 m!1449145))

(declare-fun m!1450135 () Bool)

(assert (=> b!1298515 m!1450135))

(assert (=> b!1298506 m!1449599))

(assert (=> bs!329036 d!366594))

(declare-fun d!366604 () Bool)

(assert (=> d!366604 (= (inv!15 (value!73444 t1!34)) (= (charsToBigInt!0 (text!16752 (value!73444 t1!34)) 0) (value!73439 (value!73444 t1!34))))))

(declare-fun bs!329092 () Bool)

(assert (= bs!329092 d!366604))

(declare-fun m!1450137 () Bool)

(assert (=> bs!329092 m!1450137))

(assert (=> b!1297758 d!366604))

(declare-fun lt!427129 () Bool)

(declare-fun d!366606 () Bool)

(assert (=> d!366606 (= lt!427129 (isEmpty!7716 (list!4861 (_2!7237 (lex!791 thiss!19762 rules!2550 (print!728 thiss!19762 (singletonSeq!822 t1!34)))))))))

(declare-fun isEmpty!7723 (Conc!4265) Bool)

(assert (=> d!366606 (= lt!427129 (isEmpty!7723 (c!213611 (_2!7237 (lex!791 thiss!19762 rules!2550 (print!728 thiss!19762 (singletonSeq!822 t1!34)))))))))

(assert (=> d!366606 (= (isEmpty!7717 (_2!7237 (lex!791 thiss!19762 rules!2550 (print!728 thiss!19762 (singletonSeq!822 t1!34))))) lt!427129)))

(declare-fun bs!329094 () Bool)

(assert (= bs!329094 d!366606))

(declare-fun m!1450149 () Bool)

(assert (=> bs!329094 m!1450149))

(assert (=> bs!329094 m!1450149))

(declare-fun m!1450151 () Bool)

(assert (=> bs!329094 m!1450151))

(declare-fun m!1450153 () Bool)

(assert (=> bs!329094 m!1450153))

(assert (=> b!1297927 d!366606))

(declare-fun b!1298526 () Bool)

(declare-fun e!832528 () Bool)

(declare-fun lt!427130 () tuple2!12702)

(assert (=> b!1298526 (= e!832528 (not (isEmpty!7718 (_1!7237 lt!427130))))))

(declare-fun e!832527 () Bool)

(declare-fun b!1298527 () Bool)

(assert (=> b!1298527 (= e!832527 (= (_2!7237 lt!427130) (print!728 thiss!19762 (singletonSeq!822 t1!34))))))

(declare-fun b!1298528 () Bool)

(declare-fun e!832529 () Bool)

(assert (=> b!1298528 (= e!832529 (= (list!4861 (_2!7237 lt!427130)) (_2!7238 (lexList!501 thiss!19762 rules!2550 (list!4861 (print!728 thiss!19762 (singletonSeq!822 t1!34)))))))))

(declare-fun b!1298529 () Bool)

(declare-fun res!581563 () Bool)

(assert (=> b!1298529 (=> (not res!581563) (not e!832529))))

(assert (=> b!1298529 (= res!581563 (= (list!4864 (_1!7237 lt!427130)) (_1!7238 (lexList!501 thiss!19762 rules!2550 (list!4861 (print!728 thiss!19762 (singletonSeq!822 t1!34)))))))))

(declare-fun b!1298530 () Bool)

(assert (=> b!1298530 (= e!832527 e!832528)))

(declare-fun res!581561 () Bool)

(assert (=> b!1298530 (= res!581561 (< (size!10611 (_2!7237 lt!427130)) (size!10611 (print!728 thiss!19762 (singletonSeq!822 t1!34)))))))

(assert (=> b!1298530 (=> (not res!581561) (not e!832528))))

(declare-fun d!366612 () Bool)

(assert (=> d!366612 e!832529))

(declare-fun res!581562 () Bool)

(assert (=> d!366612 (=> (not res!581562) (not e!832529))))

(assert (=> d!366612 (= res!581562 e!832527)))

(declare-fun c!213790 () Bool)

(assert (=> d!366612 (= c!213790 (> (size!10617 (_1!7237 lt!427130)) 0))))

(assert (=> d!366612 (= lt!427130 (lexTailRecV2!350 thiss!19762 rules!2550 (print!728 thiss!19762 (singletonSeq!822 t1!34)) (BalanceConc!8471 Empty!4265) (print!728 thiss!19762 (singletonSeq!822 t1!34)) (BalanceConc!8475 Empty!4267)))))

(assert (=> d!366612 (= (lex!791 thiss!19762 rules!2550 (print!728 thiss!19762 (singletonSeq!822 t1!34))) lt!427130)))

(assert (= (and d!366612 c!213790) b!1298530))

(assert (= (and d!366612 (not c!213790)) b!1298527))

(assert (= (and b!1298530 res!581561) b!1298526))

(assert (= (and d!366612 res!581562) b!1298529))

(assert (= (and b!1298529 res!581563) b!1298528))

(declare-fun m!1450155 () Bool)

(assert (=> b!1298526 m!1450155))

(declare-fun m!1450157 () Bool)

(assert (=> d!366612 m!1450157))

(assert (=> d!366612 m!1449419))

(assert (=> d!366612 m!1449419))

(declare-fun m!1450159 () Bool)

(assert (=> d!366612 m!1450159))

(declare-fun m!1450161 () Bool)

(assert (=> b!1298529 m!1450161))

(assert (=> b!1298529 m!1449419))

(declare-fun m!1450163 () Bool)

(assert (=> b!1298529 m!1450163))

(assert (=> b!1298529 m!1450163))

(declare-fun m!1450165 () Bool)

(assert (=> b!1298529 m!1450165))

(declare-fun m!1450167 () Bool)

(assert (=> b!1298528 m!1450167))

(assert (=> b!1298528 m!1449419))

(assert (=> b!1298528 m!1450163))

(assert (=> b!1298528 m!1450163))

(assert (=> b!1298528 m!1450165))

(declare-fun m!1450169 () Bool)

(assert (=> b!1298530 m!1450169))

(assert (=> b!1298530 m!1449419))

(declare-fun m!1450171 () Bool)

(assert (=> b!1298530 m!1450171))

(assert (=> b!1297927 d!366612))

(declare-fun d!366614 () Bool)

(declare-fun lt!427131 () BalanceConc!8470)

(assert (=> d!366614 (= (list!4861 lt!427131) (printList!545 thiss!19762 (list!4864 (singletonSeq!822 t1!34))))))

(assert (=> d!366614 (= lt!427131 (printTailRec!527 thiss!19762 (singletonSeq!822 t1!34) 0 (BalanceConc!8471 Empty!4265)))))

(assert (=> d!366614 (= (print!728 thiss!19762 (singletonSeq!822 t1!34)) lt!427131)))

(declare-fun bs!329095 () Bool)

(assert (= bs!329095 d!366614))

(declare-fun m!1450173 () Bool)

(assert (=> bs!329095 m!1450173))

(assert (=> bs!329095 m!1449415))

(assert (=> bs!329095 m!1449417))

(assert (=> bs!329095 m!1449417))

(declare-fun m!1450175 () Bool)

(assert (=> bs!329095 m!1450175))

(assert (=> bs!329095 m!1449415))

(declare-fun m!1450177 () Bool)

(assert (=> bs!329095 m!1450177))

(assert (=> b!1297927 d!366614))

(declare-fun d!366616 () Bool)

(declare-fun e!832530 () Bool)

(assert (=> d!366616 e!832530))

(declare-fun res!581564 () Bool)

(assert (=> d!366616 (=> (not res!581564) (not e!832530))))

(declare-fun lt!427132 () BalanceConc!8474)

(assert (=> d!366616 (= res!581564 (= (list!4864 lt!427132) (Cons!12990 t1!34 Nil!12990)))))

(assert (=> d!366616 (= lt!427132 (singleton!360 t1!34))))

(assert (=> d!366616 (= (singletonSeq!822 t1!34) lt!427132)))

(declare-fun b!1298531 () Bool)

(assert (=> b!1298531 (= e!832530 (isBalanced!1255 (c!213650 lt!427132)))))

(assert (= (and d!366616 res!581564) b!1298531))

(declare-fun m!1450179 () Bool)

(assert (=> d!366616 m!1450179))

(declare-fun m!1450181 () Bool)

(assert (=> d!366616 m!1450181))

(declare-fun m!1450183 () Bool)

(assert (=> b!1298531 m!1450183))

(assert (=> b!1297927 d!366616))

(declare-fun d!366618 () Bool)

(declare-fun lt!427133 () Bool)

(assert (=> d!366618 (= lt!427133 (isEmpty!7716 (list!4861 (_2!7237 (lex!791 thiss!19762 rules!2550 (print!728 thiss!19762 (singletonSeq!822 t2!34)))))))))

(assert (=> d!366618 (= lt!427133 (isEmpty!7723 (c!213611 (_2!7237 (lex!791 thiss!19762 rules!2550 (print!728 thiss!19762 (singletonSeq!822 t2!34)))))))))

(assert (=> d!366618 (= (isEmpty!7717 (_2!7237 (lex!791 thiss!19762 rules!2550 (print!728 thiss!19762 (singletonSeq!822 t2!34))))) lt!427133)))

(declare-fun bs!329096 () Bool)

(assert (= bs!329096 d!366618))

(declare-fun m!1450185 () Bool)

(assert (=> bs!329096 m!1450185))

(assert (=> bs!329096 m!1450185))

(declare-fun m!1450187 () Bool)

(assert (=> bs!329096 m!1450187))

(declare-fun m!1450189 () Bool)

(assert (=> bs!329096 m!1450189))

(assert (=> b!1297962 d!366618))

(assert (=> b!1297962 d!366458))

(assert (=> b!1297962 d!366452))

(assert (=> b!1297962 d!366456))

(declare-fun d!366620 () Bool)

(declare-fun c!213791 () Bool)

(assert (=> d!366620 (= c!213791 (isEmpty!7716 (tail!1856 lt!426845)))))

(declare-fun e!832531 () Bool)

(assert (=> d!366620 (= (prefixMatch!66 (derivativeStep!883 lt!426849 (head!2228 lt!426845)) (tail!1856 lt!426845)) e!832531)))

(declare-fun b!1298532 () Bool)

(assert (=> b!1298532 (= e!832531 (not (lostCause!260 (derivativeStep!883 lt!426849 (head!2228 lt!426845)))))))

(declare-fun b!1298533 () Bool)

(assert (=> b!1298533 (= e!832531 (prefixMatch!66 (derivativeStep!883 (derivativeStep!883 lt!426849 (head!2228 lt!426845)) (head!2228 (tail!1856 lt!426845))) (tail!1856 (tail!1856 lt!426845))))))

(assert (= (and d!366620 c!213791) b!1298532))

(assert (= (and d!366620 (not c!213791)) b!1298533))

(assert (=> d!366620 m!1449463))

(declare-fun m!1450191 () Bool)

(assert (=> d!366620 m!1450191))

(assert (=> b!1298532 m!1449461))

(declare-fun m!1450193 () Bool)

(assert (=> b!1298532 m!1450193))

(assert (=> b!1298533 m!1449463))

(declare-fun m!1450195 () Bool)

(assert (=> b!1298533 m!1450195))

(assert (=> b!1298533 m!1449461))

(assert (=> b!1298533 m!1450195))

(declare-fun m!1450197 () Bool)

(assert (=> b!1298533 m!1450197))

(assert (=> b!1298533 m!1449463))

(declare-fun m!1450199 () Bool)

(assert (=> b!1298533 m!1450199))

(assert (=> b!1298533 m!1450197))

(assert (=> b!1298533 m!1450199))

(declare-fun m!1450201 () Bool)

(assert (=> b!1298533 m!1450201))

(assert (=> b!1297946 d!366620))

(declare-fun bm!89017 () Bool)

(declare-fun c!213812 () Bool)

(declare-fun call!89022 () Regex!3553)

(declare-fun c!213813 () Bool)

(assert (=> bm!89017 (= call!89022 (derivativeStep!883 (ite c!213812 (regTwo!7619 lt!426849) (ite c!213813 (reg!3882 lt!426849) (regOne!7618 lt!426849))) (head!2228 lt!426845)))))

(declare-fun b!1298578 () Bool)

(declare-fun e!832556 () Regex!3553)

(declare-fun call!89025 () Regex!3553)

(assert (=> b!1298578 (= e!832556 (Union!3553 call!89025 call!89022))))

(declare-fun bm!89018 () Bool)

(declare-fun call!89024 () Regex!3553)

(assert (=> bm!89018 (= call!89024 call!89022)))

(declare-fun b!1298579 () Bool)

(assert (=> b!1298579 (= c!213812 ((_ is Union!3553) lt!426849))))

(declare-fun e!832555 () Regex!3553)

(assert (=> b!1298579 (= e!832555 e!832556)))

(declare-fun b!1298580 () Bool)

(assert (=> b!1298580 (= e!832555 (ite (= (head!2228 lt!426845) (c!213612 lt!426849)) EmptyExpr!3553 EmptyLang!3553))))

(declare-fun bm!89019 () Bool)

(declare-fun call!89023 () Regex!3553)

(assert (=> bm!89019 (= call!89023 call!89025)))

(declare-fun b!1298581 () Bool)

(declare-fun e!832559 () Regex!3553)

(assert (=> b!1298581 (= e!832559 (Union!3553 (Concat!5883 call!89023 (regTwo!7618 lt!426849)) EmptyLang!3553))))

(declare-fun c!213814 () Bool)

(declare-fun bm!89020 () Bool)

(assert (=> bm!89020 (= call!89025 (derivativeStep!883 (ite c!213812 (regOne!7619 lt!426849) (ite c!213814 (regTwo!7618 lt!426849) (regOne!7618 lt!426849))) (head!2228 lt!426845)))))

(declare-fun b!1298577 () Bool)

(declare-fun e!832557 () Regex!3553)

(assert (=> b!1298577 (= e!832557 e!832555)))

(declare-fun c!213816 () Bool)

(assert (=> b!1298577 (= c!213816 ((_ is ElementMatch!3553) lt!426849))))

(declare-fun d!366622 () Bool)

(declare-fun lt!427142 () Regex!3553)

(assert (=> d!366622 (validRegex!1532 lt!427142)))

(assert (=> d!366622 (= lt!427142 e!832557)))

(declare-fun c!213815 () Bool)

(assert (=> d!366622 (= c!213815 (or ((_ is EmptyExpr!3553) lt!426849) ((_ is EmptyLang!3553) lt!426849)))))

(assert (=> d!366622 (validRegex!1532 lt!426849)))

(assert (=> d!366622 (= (derivativeStep!883 lt!426849 (head!2228 lt!426845)) lt!427142)))

(declare-fun b!1298582 () Bool)

(declare-fun e!832558 () Regex!3553)

(assert (=> b!1298582 (= e!832556 e!832558)))

(assert (=> b!1298582 (= c!213813 ((_ is Star!3553) lt!426849))))

(declare-fun b!1298583 () Bool)

(assert (=> b!1298583 (= e!832558 (Concat!5883 call!89024 lt!426849))))

(declare-fun b!1298584 () Bool)

(assert (=> b!1298584 (= e!832557 EmptyLang!3553)))

(declare-fun b!1298585 () Bool)

(assert (=> b!1298585 (= e!832559 (Union!3553 (Concat!5883 call!89024 (regTwo!7618 lt!426849)) call!89023))))

(declare-fun b!1298586 () Bool)

(assert (=> b!1298586 (= c!213814 (nullable!1131 (regOne!7618 lt!426849)))))

(assert (=> b!1298586 (= e!832558 e!832559)))

(assert (= (and d!366622 c!213815) b!1298584))

(assert (= (and d!366622 (not c!213815)) b!1298577))

(assert (= (and b!1298577 c!213816) b!1298580))

(assert (= (and b!1298577 (not c!213816)) b!1298579))

(assert (= (and b!1298579 c!213812) b!1298578))

(assert (= (and b!1298579 (not c!213812)) b!1298582))

(assert (= (and b!1298582 c!213813) b!1298583))

(assert (= (and b!1298582 (not c!213813)) b!1298586))

(assert (= (and b!1298586 c!213814) b!1298585))

(assert (= (and b!1298586 (not c!213814)) b!1298581))

(assert (= (or b!1298585 b!1298581) bm!89019))

(assert (= (or b!1298583 b!1298585) bm!89018))

(assert (= (or b!1298578 bm!89019) bm!89020))

(assert (= (or b!1298578 bm!89018) bm!89017))

(assert (=> bm!89017 m!1449459))

(declare-fun m!1450229 () Bool)

(assert (=> bm!89017 m!1450229))

(assert (=> bm!89020 m!1449459))

(declare-fun m!1450231 () Bool)

(assert (=> bm!89020 m!1450231))

(declare-fun m!1450233 () Bool)

(assert (=> d!366622 m!1450233))

(assert (=> d!366622 m!1449145))

(declare-fun m!1450235 () Bool)

(assert (=> b!1298586 m!1450235))

(assert (=> b!1297946 d!366622))

(declare-fun d!366628 () Bool)

(assert (=> d!366628 (= (head!2228 lt!426845) (h!18385 lt!426845))))

(assert (=> b!1297946 d!366628))

(declare-fun d!366630 () Bool)

(assert (=> d!366630 (= (tail!1856 lt!426845) (t!117473 lt!426845))))

(assert (=> b!1297946 d!366630))

(declare-fun d!366632 () Bool)

(declare-fun charsToBigInt!1 (List!13051) Int)

(assert (=> d!366632 (= (inv!17 (value!73444 t2!34)) (= (charsToBigInt!1 (text!16751 (value!73444 t2!34))) (value!73436 (value!73444 t2!34))))))

(declare-fun bs!329097 () Bool)

(assert (= bs!329097 d!366632))

(declare-fun m!1450237 () Bool)

(assert (=> bs!329097 m!1450237))

(assert (=> b!1297775 d!366632))

(declare-fun bs!329098 () Bool)

(declare-fun d!366634 () Bool)

(assert (= bs!329098 (and d!366634 d!366390)))

(declare-fun lambda!51085 () Int)

(assert (=> bs!329098 (= (= (toValue!3446 (transformation!2239 (rule!3978 t2!34))) (toValue!3446 (transformation!2239 (h!18387 rules!2550)))) (= lambda!51085 lambda!51050))))

(assert (=> d!366634 true))

(assert (=> d!366634 (< (dynLambda!5681 order!7903 (toValue!3446 (transformation!2239 (rule!3978 t2!34)))) (dynLambda!5682 order!7905 lambda!51085))))

(assert (=> d!366634 (= (equivClasses!811 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (toValue!3446 (transformation!2239 (rule!3978 t2!34)))) (Forall2!410 lambda!51085))))

(declare-fun bs!329099 () Bool)

(assert (= bs!329099 d!366634))

(declare-fun m!1450239 () Bool)

(assert (=> bs!329099 m!1450239))

(assert (=> b!1297765 d!366634))

(assert (=> d!366300 d!366612))

(assert (=> d!366300 d!366614))

(declare-fun d!366636 () Bool)

(declare-fun lt!427145 () Int)

(assert (=> d!366636 (= lt!427145 (size!10618 (list!4864 (_1!7237 lt!426916))))))

(assert (=> d!366636 (= lt!427145 (size!10619 (c!213650 (_1!7237 lt!426916))))))

(assert (=> d!366636 (= (size!10617 (_1!7237 lt!426916)) lt!427145)))

(declare-fun bs!329100 () Bool)

(assert (= bs!329100 d!366636))

(assert (=> bs!329100 m!1449803))

(assert (=> bs!329100 m!1449803))

(declare-fun m!1450241 () Bool)

(assert (=> bs!329100 m!1450241))

(declare-fun m!1450243 () Bool)

(assert (=> bs!329100 m!1450243))

(assert (=> d!366300 d!366636))

(assert (=> d!366300 d!366616))

(declare-fun d!366638 () Bool)

(assert (=> d!366638 (= (list!4864 (_1!7237 (lex!791 thiss!19762 rules!2550 (print!728 thiss!19762 (singletonSeq!822 t1!34))))) (list!4866 (c!213650 (_1!7237 (lex!791 thiss!19762 rules!2550 (print!728 thiss!19762 (singletonSeq!822 t1!34)))))))))

(declare-fun bs!329101 () Bool)

(assert (= bs!329101 d!366638))

(declare-fun m!1450245 () Bool)

(assert (=> bs!329101 m!1450245))

(assert (=> d!366300 d!366638))

(declare-fun d!366640 () Bool)

(assert (=> d!366640 (= (list!4864 (singletonSeq!822 t1!34)) (list!4866 (c!213650 (singletonSeq!822 t1!34))))))

(declare-fun bs!329102 () Bool)

(assert (= bs!329102 d!366640))

(declare-fun m!1450247 () Bool)

(assert (=> bs!329102 m!1450247))

(assert (=> d!366300 d!366640))

(assert (=> d!366300 d!366282))

(declare-fun d!366642 () Bool)

(declare-fun charsToInt!0 (List!13051) (_ BitVec 32))

(assert (=> d!366642 (= (inv!16 (value!73444 t2!34)) (= (charsToInt!0 (text!16750 (value!73444 t2!34))) (value!73435 (value!73444 t2!34))))))

(declare-fun bs!329103 () Bool)

(assert (= bs!329103 d!366642))

(declare-fun m!1450249 () Bool)

(assert (=> bs!329103 m!1450249))

(assert (=> b!1297773 d!366642))

(declare-fun bs!329104 () Bool)

(declare-fun d!366644 () Bool)

(assert (= bs!329104 (and d!366644 d!366390)))

(declare-fun lambda!51086 () Int)

(assert (=> bs!329104 (= (= (toValue!3446 (transformation!2239 (rule!3978 t1!34))) (toValue!3446 (transformation!2239 (h!18387 rules!2550)))) (= lambda!51086 lambda!51050))))

(declare-fun bs!329105 () Bool)

(assert (= bs!329105 (and d!366644 d!366634)))

(assert (=> bs!329105 (= (= (toValue!3446 (transformation!2239 (rule!3978 t1!34))) (toValue!3446 (transformation!2239 (rule!3978 t2!34)))) (= lambda!51086 lambda!51085))))

(assert (=> d!366644 true))

(assert (=> d!366644 (< (dynLambda!5681 order!7903 (toValue!3446 (transformation!2239 (rule!3978 t1!34)))) (dynLambda!5682 order!7905 lambda!51086))))

(assert (=> d!366644 (= (equivClasses!811 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (toValue!3446 (transformation!2239 (rule!3978 t1!34)))) (Forall2!410 lambda!51086))))

(declare-fun bs!329106 () Bool)

(assert (= bs!329106 d!366644))

(declare-fun m!1450251 () Bool)

(assert (=> bs!329106 m!1450251))

(assert (=> b!1297949 d!366644))

(declare-fun d!366646 () Bool)

(declare-fun lt!427146 () Int)

(assert (=> d!366646 (>= lt!427146 0)))

(declare-fun e!832570 () Int)

(assert (=> d!366646 (= lt!427146 e!832570)))

(declare-fun c!213827 () Bool)

(assert (=> d!366646 (= c!213827 ((_ is Nil!12984) lt!426921))))

(assert (=> d!366646 (= (size!10614 lt!426921) lt!427146)))

(declare-fun b!1298607 () Bool)

(assert (=> b!1298607 (= e!832570 0)))

(declare-fun b!1298608 () Bool)

(assert (=> b!1298608 (= e!832570 (+ 1 (size!10614 (t!117473 lt!426921))))))

(assert (= (and d!366646 c!213827) b!1298607))

(assert (= (and d!366646 (not c!213827)) b!1298608))

(declare-fun m!1450253 () Bool)

(assert (=> b!1298608 m!1450253))

(assert (=> b!1297939 d!366646))

(declare-fun d!366648 () Bool)

(declare-fun lt!427147 () Int)

(assert (=> d!366648 (>= lt!427147 0)))

(declare-fun e!832571 () Int)

(assert (=> d!366648 (= lt!427147 e!832571)))

(declare-fun c!213828 () Bool)

(assert (=> d!366648 (= c!213828 ((_ is Nil!12984) lt!426846))))

(assert (=> d!366648 (= (size!10614 lt!426846) lt!427147)))

(declare-fun b!1298609 () Bool)

(assert (=> b!1298609 (= e!832571 0)))

(declare-fun b!1298610 () Bool)

(assert (=> b!1298610 (= e!832571 (+ 1 (size!10614 (t!117473 lt!426846))))))

(assert (= (and d!366648 c!213828) b!1298609))

(assert (= (and d!366648 (not c!213828)) b!1298610))

(assert (=> b!1298610 m!1449647))

(assert (=> b!1297939 d!366648))

(declare-fun d!366650 () Bool)

(declare-fun lt!427148 () Int)

(assert (=> d!366650 (>= lt!427148 0)))

(declare-fun e!832572 () Int)

(assert (=> d!366650 (= lt!427148 e!832572)))

(declare-fun c!213829 () Bool)

(assert (=> d!366650 (= c!213829 ((_ is Nil!12984) (Cons!12984 lt!426848 Nil!12984)))))

(assert (=> d!366650 (= (size!10614 (Cons!12984 lt!426848 Nil!12984)) lt!427148)))

(declare-fun b!1298611 () Bool)

(assert (=> b!1298611 (= e!832572 0)))

(declare-fun b!1298612 () Bool)

(assert (=> b!1298612 (= e!832572 (+ 1 (size!10614 (t!117473 (Cons!12984 lt!426848 Nil!12984)))))))

(assert (= (and d!366650 c!213829) b!1298611))

(assert (= (and d!366650 (not c!213829)) b!1298612))

(declare-fun m!1450255 () Bool)

(assert (=> b!1298612 m!1450255))

(assert (=> b!1297939 d!366650))

(declare-fun d!366652 () Bool)

(declare-fun lt!427149 () Bool)

(assert (=> d!366652 (= lt!427149 (select (content!1837 (t!117473 lt!426845)) lt!426851))))

(declare-fun e!832573 () Bool)

(assert (=> d!366652 (= lt!427149 e!832573)))

(declare-fun res!581569 () Bool)

(assert (=> d!366652 (=> (not res!581569) (not e!832573))))

(assert (=> d!366652 (= res!581569 ((_ is Cons!12984) (t!117473 lt!426845)))))

(assert (=> d!366652 (= (contains!2175 (t!117473 lt!426845) lt!426851) lt!427149)))

(declare-fun b!1298613 () Bool)

(declare-fun e!832574 () Bool)

(assert (=> b!1298613 (= e!832573 e!832574)))

(declare-fun res!581568 () Bool)

(assert (=> b!1298613 (=> res!581568 e!832574)))

(assert (=> b!1298613 (= res!581568 (= (h!18385 (t!117473 lt!426845)) lt!426851))))

(declare-fun b!1298614 () Bool)

(assert (=> b!1298614 (= e!832574 (contains!2175 (t!117473 (t!117473 lt!426845)) lt!426851))))

(assert (= (and d!366652 res!581569) b!1298613))

(assert (= (and b!1298613 (not res!581568)) b!1298614))

(assert (=> d!366652 m!1449587))

(declare-fun m!1450257 () Bool)

(assert (=> d!366652 m!1450257))

(declare-fun m!1450259 () Bool)

(assert (=> b!1298614 m!1450259))

(assert (=> b!1297794 d!366652))

(declare-fun d!366654 () Bool)

(declare-fun lt!427150 () Bool)

(assert (=> d!366654 (= lt!427150 (select (content!1837 (t!117473 lt!426847)) lt!426851))))

(declare-fun e!832575 () Bool)

(assert (=> d!366654 (= lt!427150 e!832575)))

(declare-fun res!581571 () Bool)

(assert (=> d!366654 (=> (not res!581571) (not e!832575))))

(assert (=> d!366654 (= res!581571 ((_ is Cons!12984) (t!117473 lt!426847)))))

(assert (=> d!366654 (= (contains!2175 (t!117473 lt!426847) lt!426851) lt!427150)))

(declare-fun b!1298615 () Bool)

(declare-fun e!832576 () Bool)

(assert (=> b!1298615 (= e!832575 e!832576)))

(declare-fun res!581570 () Bool)

(assert (=> b!1298615 (=> res!581570 e!832576)))

(assert (=> b!1298615 (= res!581570 (= (h!18385 (t!117473 lt!426847)) lt!426851))))

(declare-fun b!1298616 () Bool)

(assert (=> b!1298616 (= e!832576 (contains!2175 (t!117473 (t!117473 lt!426847)) lt!426851))))

(assert (= (and d!366654 res!581571) b!1298615))

(assert (= (and b!1298615 (not res!581570)) b!1298616))

(assert (=> d!366654 m!1449577))

(declare-fun m!1450261 () Bool)

(assert (=> d!366654 m!1450261))

(declare-fun m!1450263 () Bool)

(assert (=> b!1298616 m!1450263))

(assert (=> b!1297948 d!366654))

(declare-fun b!1298639 () Bool)

(declare-fun e!832591 () Bool)

(declare-fun call!89040 () Bool)

(assert (=> b!1298639 (= e!832591 call!89040)))

(declare-fun b!1298640 () Bool)

(declare-fun e!832593 () Bool)

(declare-fun e!832592 () Bool)

(assert (=> b!1298640 (= e!832593 e!832592)))

(declare-fun res!581578 () Bool)

(declare-fun rulesUseDisjointChars!151 (Rule!4278 Rule!4278) Bool)

(assert (=> b!1298640 (= res!581578 (rulesUseDisjointChars!151 (h!18387 rules!2550) (h!18387 rules!2550)))))

(assert (=> b!1298640 (=> (not res!581578) (not e!832592))))

(declare-fun bm!89035 () Bool)

(assert (=> bm!89035 (= call!89040 (ruleDisjointCharsFromAllFromOtherType!295 (h!18387 rules!2550) (t!117475 rules!2550)))))

(declare-fun b!1298642 () Bool)

(assert (=> b!1298642 (= e!832592 call!89040)))

(declare-fun d!366656 () Bool)

(declare-fun c!213838 () Bool)

(assert (=> d!366656 (= c!213838 (and ((_ is Cons!12986) rules!2550) (not (= (isSeparator!2239 (h!18387 rules!2550)) (isSeparator!2239 (h!18387 rules!2550))))))))

(assert (=> d!366656 (= (ruleDisjointCharsFromAllFromOtherType!295 (h!18387 rules!2550) rules!2550) e!832593)))

(declare-fun b!1298641 () Bool)

(assert (=> b!1298641 (= e!832593 e!832591)))

(declare-fun res!581579 () Bool)

(assert (=> b!1298641 (= res!581579 (not ((_ is Cons!12986) rules!2550)))))

(assert (=> b!1298641 (=> res!581579 e!832591)))

(assert (= (and d!366656 c!213838) b!1298640))

(assert (= (and d!366656 (not c!213838)) b!1298641))

(assert (= (and b!1298640 res!581578) b!1298642))

(assert (= (and b!1298641 (not res!581579)) b!1298639))

(assert (= (or b!1298642 b!1298639) bm!89035))

(declare-fun m!1450281 () Bool)

(assert (=> b!1298640 m!1450281))

(declare-fun m!1450283 () Bool)

(assert (=> bm!89035 m!1450283))

(assert (=> b!1297770 d!366656))

(declare-fun d!366670 () Bool)

(declare-fun lt!427158 () Bool)

(assert (=> d!366670 (= lt!427158 (select (content!1837 (t!117473 lt!426845)) lt!426848))))

(declare-fun e!832594 () Bool)

(assert (=> d!366670 (= lt!427158 e!832594)))

(declare-fun res!581581 () Bool)

(assert (=> d!366670 (=> (not res!581581) (not e!832594))))

(assert (=> d!366670 (= res!581581 ((_ is Cons!12984) (t!117473 lt!426845)))))

(assert (=> d!366670 (= (contains!2175 (t!117473 lt!426845) lt!426848) lt!427158)))

(declare-fun b!1298643 () Bool)

(declare-fun e!832595 () Bool)

(assert (=> b!1298643 (= e!832594 e!832595)))

(declare-fun res!581580 () Bool)

(assert (=> b!1298643 (=> res!581580 e!832595)))

(assert (=> b!1298643 (= res!581580 (= (h!18385 (t!117473 lt!426845)) lt!426848))))

(declare-fun b!1298644 () Bool)

(assert (=> b!1298644 (= e!832595 (contains!2175 (t!117473 (t!117473 lt!426845)) lt!426848))))

(assert (= (and d!366670 res!581581) b!1298643))

(assert (= (and b!1298643 (not res!581580)) b!1298644))

(assert (=> d!366670 m!1449587))

(declare-fun m!1450291 () Bool)

(assert (=> d!366670 m!1450291))

(declare-fun m!1450293 () Bool)

(assert (=> b!1298644 m!1450293))

(assert (=> b!1297977 d!366670))

(assert (=> d!366350 d!366386))

(declare-fun d!366674 () Bool)

(declare-fun res!581588 () Bool)

(declare-fun e!832609 () Bool)

(assert (=> d!366674 (=> res!581588 e!832609)))

(assert (=> d!366674 (= res!581588 ((_ is Nil!12986) rules!2550))))

(assert (=> d!366674 (= (noDuplicateTag!821 thiss!19762 rules!2550 Nil!12992) e!832609)))

(declare-fun b!1298665 () Bool)

(declare-fun e!832610 () Bool)

(assert (=> b!1298665 (= e!832609 e!832610)))

(declare-fun res!581589 () Bool)

(assert (=> b!1298665 (=> (not res!581589) (not e!832610))))

(declare-fun contains!2177 (List!13058 String!15881) Bool)

(assert (=> b!1298665 (= res!581589 (not (contains!2177 Nil!12992 (tag!2501 (h!18387 rules!2550)))))))

(declare-fun b!1298666 () Bool)

(assert (=> b!1298666 (= e!832610 (noDuplicateTag!821 thiss!19762 (t!117475 rules!2550) (Cons!12992 (tag!2501 (h!18387 rules!2550)) Nil!12992)))))

(assert (= (and d!366674 (not res!581588)) b!1298665))

(assert (= (and b!1298665 res!581589) b!1298666))

(declare-fun m!1450331 () Bool)

(assert (=> b!1298665 m!1450331))

(declare-fun m!1450333 () Bool)

(assert (=> b!1298666 m!1450333))

(assert (=> b!1297965 d!366674))

(declare-fun d!366690 () Bool)

(assert (=> d!366690 (= (inv!17410 (tag!2501 (h!18387 (t!117475 rules!2550)))) (= (mod (str.len (value!73443 (tag!2501 (h!18387 (t!117475 rules!2550))))) 2) 0))))

(assert (=> b!1297987 d!366690))

(declare-fun d!366692 () Bool)

(declare-fun res!581590 () Bool)

(declare-fun e!832611 () Bool)

(assert (=> d!366692 (=> (not res!581590) (not e!832611))))

(assert (=> d!366692 (= res!581590 (semiInverseModEq!852 (toChars!3305 (transformation!2239 (h!18387 (t!117475 rules!2550)))) (toValue!3446 (transformation!2239 (h!18387 (t!117475 rules!2550))))))))

(assert (=> d!366692 (= (inv!17413 (transformation!2239 (h!18387 (t!117475 rules!2550)))) e!832611)))

(declare-fun b!1298667 () Bool)

(assert (=> b!1298667 (= e!832611 (equivClasses!811 (toChars!3305 (transformation!2239 (h!18387 (t!117475 rules!2550)))) (toValue!3446 (transformation!2239 (h!18387 (t!117475 rules!2550))))))))

(assert (= (and d!366692 res!581590) b!1298667))

(declare-fun m!1450337 () Bool)

(assert (=> d!366692 m!1450337))

(declare-fun m!1450339 () Bool)

(assert (=> b!1298667 m!1450339))

(assert (=> b!1297987 d!366692))

(declare-fun d!366696 () Bool)

(assert (=> d!366696 (= (isEmpty!7716 (originalCharacters!3101 t2!34)) ((_ is Nil!12984) (originalCharacters!3101 t2!34)))))

(assert (=> d!366296 d!366696))

(declare-fun b!1298670 () Bool)

(declare-fun res!581591 () Bool)

(declare-fun e!832612 () Bool)

(assert (=> b!1298670 (=> (not res!581591) (not e!832612))))

(declare-fun lt!427163 () List!13050)

(assert (=> b!1298670 (= res!581591 (= (size!10614 lt!427163) (+ (size!10614 (t!117473 lt!426845)) (size!10614 (getSuffix!409 lt!426847 lt!426845)))))))

(declare-fun b!1298671 () Bool)

(assert (=> b!1298671 (= e!832612 (or (not (= (getSuffix!409 lt!426847 lt!426845) Nil!12984)) (= lt!427163 (t!117473 lt!426845))))))

(declare-fun b!1298668 () Bool)

(declare-fun e!832613 () List!13050)

(assert (=> b!1298668 (= e!832613 (getSuffix!409 lt!426847 lt!426845))))

(declare-fun b!1298669 () Bool)

(assert (=> b!1298669 (= e!832613 (Cons!12984 (h!18385 (t!117473 lt!426845)) (++!3300 (t!117473 (t!117473 lt!426845)) (getSuffix!409 lt!426847 lt!426845))))))

(declare-fun d!366698 () Bool)

(assert (=> d!366698 e!832612))

(declare-fun res!581592 () Bool)

(assert (=> d!366698 (=> (not res!581592) (not e!832612))))

(assert (=> d!366698 (= res!581592 (= (content!1837 lt!427163) ((_ map or) (content!1837 (t!117473 lt!426845)) (content!1837 (getSuffix!409 lt!426847 lt!426845)))))))

(assert (=> d!366698 (= lt!427163 e!832613)))

(declare-fun c!213846 () Bool)

(assert (=> d!366698 (= c!213846 ((_ is Nil!12984) (t!117473 lt!426845)))))

(assert (=> d!366698 (= (++!3300 (t!117473 lt!426845) (getSuffix!409 lt!426847 lt!426845)) lt!427163)))

(assert (= (and d!366698 c!213846) b!1298668))

(assert (= (and d!366698 (not c!213846)) b!1298669))

(assert (= (and d!366698 res!581592) b!1298670))

(assert (= (and b!1298670 res!581591) b!1298671))

(declare-fun m!1450341 () Bool)

(assert (=> b!1298670 m!1450341))

(assert (=> b!1298670 m!1449667))

(assert (=> b!1298670 m!1449099))

(assert (=> b!1298670 m!1449519))

(assert (=> b!1298669 m!1449099))

(declare-fun m!1450343 () Bool)

(assert (=> b!1298669 m!1450343))

(declare-fun m!1450347 () Bool)

(assert (=> d!366698 m!1450347))

(assert (=> d!366698 m!1449587))

(assert (=> d!366698 m!1449099))

(assert (=> d!366698 m!1449525))

(assert (=> b!1297967 d!366698))

(declare-fun d!366702 () Bool)

(declare-fun lt!427164 () Int)

(assert (=> d!366702 (= lt!427164 (size!10614 (list!4861 lt!426852)))))

(assert (=> d!366702 (= lt!427164 (size!10615 (c!213611 lt!426852)))))

(assert (=> d!366702 (= (size!10611 lt!426852) lt!427164)))

(declare-fun bs!329116 () Bool)

(assert (= bs!329116 d!366702))

(assert (=> bs!329116 m!1449077))

(assert (=> bs!329116 m!1449077))

(declare-fun m!1450351 () Bool)

(assert (=> bs!329116 m!1450351))

(declare-fun m!1450353 () Bool)

(assert (=> bs!329116 m!1450353))

(assert (=> b!1297826 d!366702))

(declare-fun b!1298690 () Bool)

(declare-fun e!832625 () List!13050)

(declare-fun list!4869 (IArray!8535) List!13050)

(assert (=> b!1298690 (= e!832625 (list!4869 (xs!6980 (c!213611 lt!426852))))))

(declare-fun b!1298689 () Bool)

(declare-fun e!832624 () List!13050)

(assert (=> b!1298689 (= e!832624 e!832625)))

(declare-fun c!213854 () Bool)

(assert (=> b!1298689 (= c!213854 ((_ is Leaf!6581) (c!213611 lt!426852)))))

(declare-fun d!366706 () Bool)

(declare-fun c!213853 () Bool)

(assert (=> d!366706 (= c!213853 ((_ is Empty!4265) (c!213611 lt!426852)))))

(assert (=> d!366706 (= (list!4865 (c!213611 lt!426852)) e!832624)))

(declare-fun b!1298688 () Bool)

(assert (=> b!1298688 (= e!832624 Nil!12984)))

(declare-fun b!1298691 () Bool)

(assert (=> b!1298691 (= e!832625 (++!3300 (list!4865 (left!11170 (c!213611 lt!426852))) (list!4865 (right!11500 (c!213611 lt!426852)))))))

(assert (= (and d!366706 c!213853) b!1298688))

(assert (= (and d!366706 (not c!213853)) b!1298689))

(assert (= (and b!1298689 c!213854) b!1298690))

(assert (= (and b!1298689 (not c!213854)) b!1298691))

(declare-fun m!1450355 () Bool)

(assert (=> b!1298690 m!1450355))

(declare-fun m!1450357 () Bool)

(assert (=> b!1298691 m!1450357))

(declare-fun m!1450359 () Bool)

(assert (=> b!1298691 m!1450359))

(assert (=> b!1298691 m!1450357))

(assert (=> b!1298691 m!1450359))

(declare-fun m!1450361 () Bool)

(assert (=> b!1298691 m!1450361))

(assert (=> d!366332 d!366706))

(declare-fun bs!329117 () Bool)

(declare-fun d!366708 () Bool)

(assert (= bs!329117 (and d!366708 d!366352)))

(declare-fun lambda!51091 () Int)

(assert (=> bs!329117 (= lambda!51091 lambda!51041)))

(declare-fun bs!329118 () Bool)

(assert (= bs!329118 (and d!366708 d!366546)))

(assert (=> bs!329118 (= lambda!51091 lambda!51065)))

(assert (=> d!366708 true))

(declare-fun lt!427168 () Bool)

(assert (=> d!366708 (= lt!427168 (rulesValidInductive!708 thiss!19762 rules!2550))))

(assert (=> d!366708 (= lt!427168 (forall!3260 rules!2550 lambda!51091))))

(assert (=> d!366708 (= (rulesValid!821 thiss!19762 rules!2550) lt!427168)))

(declare-fun bs!329119 () Bool)

(assert (= bs!329119 d!366708))

(assert (=> bs!329119 m!1449097))

(declare-fun m!1450385 () Bool)

(assert (=> bs!329119 m!1450385))

(assert (=> d!366356 d!366708))

(declare-fun d!366722 () Bool)

(declare-fun lt!427170 () Bool)

(assert (=> d!366722 (= lt!427170 (isEmpty!7716 (list!4861 (_2!7237 lt!426916))))))

(assert (=> d!366722 (= lt!427170 (isEmpty!7723 (c!213611 (_2!7237 lt!426916))))))

(assert (=> d!366722 (= (isEmpty!7717 (_2!7237 lt!426916)) lt!427170)))

(declare-fun bs!329122 () Bool)

(assert (= bs!329122 d!366722))

(declare-fun m!1450391 () Bool)

(assert (=> bs!329122 m!1450391))

(assert (=> bs!329122 m!1450391))

(declare-fun m!1450395 () Bool)

(assert (=> bs!329122 m!1450395))

(declare-fun m!1450397 () Bool)

(assert (=> bs!329122 m!1450397))

(assert (=> b!1297926 d!366722))

(declare-fun d!366726 () Bool)

(declare-fun lt!427172 () Bool)

(assert (=> d!366726 (= lt!427172 (isEmpty!7716 (list!4861 (_2!7237 lt!426931))))))

(assert (=> d!366726 (= lt!427172 (isEmpty!7723 (c!213611 (_2!7237 lt!426931))))))

(assert (=> d!366726 (= (isEmpty!7717 (_2!7237 lt!426931)) lt!427172)))

(declare-fun bs!329123 () Bool)

(assert (= bs!329123 d!366726))

(declare-fun m!1450399 () Bool)

(assert (=> bs!329123 m!1450399))

(assert (=> bs!329123 m!1450399))

(declare-fun m!1450403 () Bool)

(assert (=> bs!329123 m!1450403))

(declare-fun m!1450405 () Bool)

(assert (=> bs!329123 m!1450405))

(assert (=> b!1297961 d!366726))

(declare-fun d!366728 () Bool)

(declare-fun lt!427174 () C!7396)

(assert (=> d!366728 (contains!2175 (list!4861 lt!426852) lt!427174)))

(declare-fun e!832635 () C!7396)

(assert (=> d!366728 (= lt!427174 e!832635)))

(declare-fun c!213859 () Bool)

(assert (=> d!366728 (= c!213859 (= 0 0))))

(declare-fun e!832634 () Bool)

(assert (=> d!366728 e!832634))

(declare-fun res!581601 () Bool)

(assert (=> d!366728 (=> (not res!581601) (not e!832634))))

(assert (=> d!366728 (= res!581601 (<= 0 0))))

(assert (=> d!366728 (= (apply!2879 (list!4861 lt!426852) 0) lt!427174)))

(declare-fun b!1298704 () Bool)

(assert (=> b!1298704 (= e!832634 (< 0 (size!10614 (list!4861 lt!426852))))))

(declare-fun b!1298706 () Bool)

(assert (=> b!1298706 (= e!832635 (head!2228 (list!4861 lt!426852)))))

(declare-fun b!1298707 () Bool)

(assert (=> b!1298707 (= e!832635 (apply!2879 (tail!1856 (list!4861 lt!426852)) (- 0 1)))))

(assert (= (and d!366728 res!581601) b!1298704))

(assert (= (and d!366728 c!213859) b!1298706))

(assert (= (and d!366728 (not c!213859)) b!1298707))

(assert (=> d!366728 m!1449077))

(declare-fun m!1450417 () Bool)

(assert (=> d!366728 m!1450417))

(assert (=> b!1298704 m!1449077))

(assert (=> b!1298704 m!1450351))

(assert (=> b!1298706 m!1449077))

(declare-fun m!1450419 () Bool)

(assert (=> b!1298706 m!1450419))

(assert (=> b!1298707 m!1449077))

(declare-fun m!1450421 () Bool)

(assert (=> b!1298707 m!1450421))

(assert (=> b!1298707 m!1450421))

(declare-fun m!1450423 () Bool)

(assert (=> b!1298707 m!1450423))

(assert (=> d!366270 d!366728))

(assert (=> d!366270 d!366332))

(declare-fun b!1298713 () Bool)

(declare-fun e!832640 () Bool)

(assert (=> b!1298713 (= e!832640 (< 0 (size!10615 (c!213611 lt!426852))))))

(declare-fun b!1298714 () Bool)

(declare-fun e!832641 () C!7396)

(declare-fun e!832642 () C!7396)

(assert (=> b!1298714 (= e!832641 e!832642)))

(declare-fun lt!427177 () Bool)

(assert (=> b!1298714 (= lt!427177 (appendIndex!132 (list!4865 (left!11170 (c!213611 lt!426852))) (list!4865 (right!11500 (c!213611 lt!426852))) 0))))

(declare-fun c!213862 () Bool)

(assert (=> b!1298714 (= c!213862 (< 0 (size!10615 (left!11170 (c!213611 lt!426852)))))))

(declare-fun b!1298715 () Bool)

(declare-fun call!89045 () C!7396)

(assert (=> b!1298715 (= e!832642 call!89045)))

(declare-fun b!1298716 () Bool)

(declare-fun e!832643 () Int)

(assert (=> b!1298716 (= e!832643 (- 0 (size!10615 (left!11170 (c!213611 lt!426852)))))))

(declare-fun b!1298717 () Bool)

(assert (=> b!1298717 (= e!832643 0)))

(declare-fun b!1298718 () Bool)

(assert (=> b!1298718 (= e!832641 (apply!2882 (xs!6980 (c!213611 lt!426852)) 0))))

(declare-fun b!1298719 () Bool)

(assert (=> b!1298719 (= e!832642 call!89045)))

(declare-fun bm!89040 () Bool)

(declare-fun c!213861 () Bool)

(assert (=> bm!89040 (= c!213861 c!213862)))

(assert (=> bm!89040 (= call!89045 (apply!2880 (ite c!213862 (left!11170 (c!213611 lt!426852)) (right!11500 (c!213611 lt!426852))) e!832643))))

(declare-fun d!366734 () Bool)

(declare-fun lt!427176 () C!7396)

(assert (=> d!366734 (= lt!427176 (apply!2879 (list!4865 (c!213611 lt!426852)) 0))))

(assert (=> d!366734 (= lt!427176 e!832641)))

(declare-fun c!213863 () Bool)

(assert (=> d!366734 (= c!213863 ((_ is Leaf!6581) (c!213611 lt!426852)))))

(assert (=> d!366734 e!832640))

(declare-fun res!581606 () Bool)

(assert (=> d!366734 (=> (not res!581606) (not e!832640))))

(assert (=> d!366734 (= res!581606 (<= 0 0))))

(assert (=> d!366734 (= (apply!2880 (c!213611 lt!426852) 0) lt!427176)))

(assert (= (and d!366734 res!581606) b!1298713))

(assert (= (and d!366734 c!213863) b!1298718))

(assert (= (and d!366734 (not c!213863)) b!1298714))

(assert (= (and b!1298714 c!213862) b!1298719))

(assert (= (and b!1298714 (not c!213862)) b!1298715))

(assert (= (or b!1298719 b!1298715) bm!89040))

(assert (= (and bm!89040 c!213861) b!1298717))

(assert (= (and bm!89040 (not c!213861)) b!1298716))

(assert (=> d!366734 m!1449433))

(assert (=> d!366734 m!1449433))

(declare-fun m!1450437 () Bool)

(assert (=> d!366734 m!1450437))

(assert (=> b!1298713 m!1450353))

(declare-fun m!1450441 () Bool)

(assert (=> bm!89040 m!1450441))

(declare-fun m!1450445 () Bool)

(assert (=> b!1298718 m!1450445))

(assert (=> b!1298714 m!1450357))

(assert (=> b!1298714 m!1450359))

(assert (=> b!1298714 m!1450357))

(assert (=> b!1298714 m!1450359))

(declare-fun m!1450449 () Bool)

(assert (=> b!1298714 m!1450449))

(declare-fun m!1450451 () Bool)

(assert (=> b!1298714 m!1450451))

(assert (=> b!1298716 m!1450451))

(assert (=> d!366270 d!366734))

(declare-fun d!366738 () Bool)

(declare-fun c!213869 () Bool)

(assert (=> d!366738 (= c!213869 ((_ is Node!4265) (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (value!73444 t1!34)))))))

(declare-fun e!832653 () Bool)

(assert (=> d!366738 (= (inv!17417 (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (value!73444 t1!34)))) e!832653)))

(declare-fun b!1298735 () Bool)

(declare-fun inv!17421 (Conc!4265) Bool)

(assert (=> b!1298735 (= e!832653 (inv!17421 (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (value!73444 t1!34)))))))

(declare-fun b!1298736 () Bool)

(declare-fun e!832654 () Bool)

(assert (=> b!1298736 (= e!832653 e!832654)))

(declare-fun res!581615 () Bool)

(assert (=> b!1298736 (= res!581615 (not ((_ is Leaf!6581) (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (value!73444 t1!34))))))))

(assert (=> b!1298736 (=> res!581615 e!832654)))

(declare-fun b!1298737 () Bool)

(declare-fun inv!17422 (Conc!4265) Bool)

(assert (=> b!1298737 (= e!832654 (inv!17422 (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (value!73444 t1!34)))))))

(assert (= (and d!366738 c!213869) b!1298735))

(assert (= (and d!366738 (not c!213869)) b!1298736))

(assert (= (and b!1298736 (not res!581615)) b!1298737))

(declare-fun m!1450473 () Bool)

(assert (=> b!1298735 m!1450473))

(declare-fun m!1450475 () Bool)

(assert (=> b!1298737 m!1450475))

(assert (=> b!1297852 d!366738))

(declare-fun d!366752 () Bool)

(declare-fun lt!427181 () Int)

(assert (=> d!366752 (>= lt!427181 0)))

(declare-fun e!832655 () Int)

(assert (=> d!366752 (= lt!427181 e!832655)))

(declare-fun c!213870 () Bool)

(assert (=> d!366752 (= c!213870 ((_ is Nil!12984) (originalCharacters!3101 t1!34)))))

(assert (=> d!366752 (= (size!10614 (originalCharacters!3101 t1!34)) lt!427181)))

(declare-fun b!1298738 () Bool)

(assert (=> b!1298738 (= e!832655 0)))

(declare-fun b!1298739 () Bool)

(assert (=> b!1298739 (= e!832655 (+ 1 (size!10614 (t!117473 (originalCharacters!3101 t1!34)))))))

(assert (= (and d!366752 c!213870) b!1298738))

(assert (= (and d!366752 (not c!213870)) b!1298739))

(declare-fun m!1450477 () Bool)

(assert (=> b!1298739 m!1450477))

(assert (=> b!1297847 d!366752))

(declare-fun d!366754 () Bool)

(assert (=> d!366754 (= (list!4861 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (value!73444 t2!34))) (list!4865 (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (value!73444 t2!34)))))))

(declare-fun bs!329128 () Bool)

(assert (= bs!329128 d!366754))

(declare-fun m!1450481 () Bool)

(assert (=> bs!329128 m!1450481))

(assert (=> b!1297855 d!366754))

(declare-fun d!366758 () Bool)

(declare-fun res!581620 () Bool)

(declare-fun e!832658 () Bool)

(assert (=> d!366758 (=> (not res!581620) (not e!832658))))

(assert (=> d!366758 (= res!581620 (validRegex!1532 (regex!2239 (h!18387 rules!2550))))))

(assert (=> d!366758 (= (ruleValid!549 thiss!19762 (h!18387 rules!2550)) e!832658)))

(declare-fun b!1298744 () Bool)

(declare-fun res!581621 () Bool)

(assert (=> b!1298744 (=> (not res!581621) (not e!832658))))

(assert (=> b!1298744 (= res!581621 (not (nullable!1131 (regex!2239 (h!18387 rules!2550)))))))

(declare-fun b!1298745 () Bool)

(assert (=> b!1298745 (= e!832658 (not (= (tag!2501 (h!18387 rules!2550)) (String!15882 ""))))))

(assert (= (and d!366758 res!581620) b!1298744))

(assert (= (and b!1298744 res!581621) b!1298745))

(declare-fun m!1450483 () Bool)

(assert (=> d!366758 m!1450483))

(declare-fun m!1450485 () Bool)

(assert (=> b!1298744 m!1450485))

(assert (=> b!1297956 d!366758))

(declare-fun d!366760 () Bool)

(declare-fun c!213871 () Bool)

(assert (=> d!366760 (= c!213871 ((_ is Node!4265) (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (value!73444 t2!34)))))))

(declare-fun e!832659 () Bool)

(assert (=> d!366760 (= (inv!17417 (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (value!73444 t2!34)))) e!832659)))

(declare-fun b!1298746 () Bool)

(assert (=> b!1298746 (= e!832659 (inv!17421 (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (value!73444 t2!34)))))))

(declare-fun b!1298747 () Bool)

(declare-fun e!832660 () Bool)

(assert (=> b!1298747 (= e!832659 e!832660)))

(declare-fun res!581622 () Bool)

(assert (=> b!1298747 (= res!581622 (not ((_ is Leaf!6581) (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (value!73444 t2!34))))))))

(assert (=> b!1298747 (=> res!581622 e!832660)))

(declare-fun b!1298748 () Bool)

(assert (=> b!1298748 (= e!832660 (inv!17422 (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (value!73444 t2!34)))))))

(assert (= (and d!366760 c!213871) b!1298746))

(assert (= (and d!366760 (not c!213871)) b!1298747))

(assert (= (and b!1298747 (not res!581622)) b!1298748))

(declare-fun m!1450487 () Bool)

(assert (=> b!1298746 m!1450487))

(declare-fun m!1450489 () Bool)

(assert (=> b!1298748 m!1450489))

(assert (=> b!1297747 d!366760))

(declare-fun d!366762 () Bool)

(assert (=> d!366762 (= (inv!17418 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (value!73444 t1!34))) (isBalanced!1253 (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (value!73444 t1!34)))))))

(declare-fun bs!329129 () Bool)

(assert (= bs!329129 d!366762))

(declare-fun m!1450491 () Bool)

(assert (=> bs!329129 m!1450491))

(assert (=> tb!69523 d!366762))

(declare-fun bs!329130 () Bool)

(declare-fun d!366764 () Bool)

(assert (= bs!329130 (and d!366764 d!366538)))

(declare-fun lambda!51092 () Int)

(assert (=> bs!329130 (= (and (= (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (toChars!3305 (transformation!2239 (rule!3978 t2!34)))) (= (toValue!3446 (transformation!2239 (rule!3978 t1!34))) (toValue!3446 (transformation!2239 (rule!3978 t2!34))))) (= lambda!51092 lambda!51064))))

(declare-fun bs!329131 () Bool)

(assert (= bs!329131 (and d!366764 d!366556)))

(assert (=> bs!329131 (= (and (= (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (toChars!3305 (transformation!2239 (h!18387 rules!2550)))) (= (toValue!3446 (transformation!2239 (rule!3978 t1!34))) (toValue!3446 (transformation!2239 (h!18387 rules!2550))))) (= lambda!51092 lambda!51066))))

(assert (=> d!366764 true))

(assert (=> d!366764 (< (dynLambda!5688 order!7907 (toChars!3305 (transformation!2239 (rule!3978 t1!34)))) (dynLambda!5689 order!7909 lambda!51092))))

(assert (=> d!366764 true))

(assert (=> d!366764 (< (dynLambda!5681 order!7903 (toValue!3446 (transformation!2239 (rule!3978 t1!34)))) (dynLambda!5689 order!7909 lambda!51092))))

(assert (=> d!366764 (= (semiInverseModEq!852 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (toValue!3446 (transformation!2239 (rule!3978 t1!34)))) (Forall!509 lambda!51092))))

(declare-fun bs!329132 () Bool)

(assert (= bs!329132 d!366764))

(declare-fun m!1450493 () Bool)

(assert (=> bs!329132 m!1450493))

(assert (=> d!366348 d!366764))

(declare-fun d!366766 () Bool)

(assert (=> d!366766 (= (inv!17 (value!73444 t1!34)) (= (charsToBigInt!1 (text!16751 (value!73444 t1!34))) (value!73436 (value!73444 t1!34))))))

(declare-fun bs!329133 () Bool)

(assert (= bs!329133 d!366766))

(declare-fun m!1450495 () Bool)

(assert (=> bs!329133 m!1450495))

(assert (=> b!1297761 d!366766))

(declare-fun d!366768 () Bool)

(assert (=> d!366768 (= (inv!16 (value!73444 t1!34)) (= (charsToInt!0 (text!16750 (value!73444 t1!34))) (value!73435 (value!73444 t1!34))))))

(declare-fun bs!329134 () Bool)

(assert (= bs!329134 d!366768))

(declare-fun m!1450497 () Bool)

(assert (=> bs!329134 m!1450497))

(assert (=> b!1297759 d!366768))

(declare-fun e!832670 () Bool)

(assert (=> b!1298007 (= tp!378771 e!832670)))

(declare-fun b!1298763 () Bool)

(declare-fun tp!378792 () Bool)

(assert (=> b!1298763 (= e!832670 tp!378792)))

(declare-fun b!1298762 () Bool)

(declare-fun tp!378791 () Bool)

(declare-fun tp!378790 () Bool)

(assert (=> b!1298762 (= e!832670 (and tp!378791 tp!378790))))

(declare-fun b!1298764 () Bool)

(declare-fun tp!378793 () Bool)

(declare-fun tp!378789 () Bool)

(assert (=> b!1298764 (= e!832670 (and tp!378793 tp!378789))))

(declare-fun b!1298761 () Bool)

(assert (=> b!1298761 (= e!832670 tp_is_empty!6587)))

(assert (= (and b!1298007 ((_ is ElementMatch!3553) (regOne!7619 (regex!2239 (rule!3978 t1!34))))) b!1298761))

(assert (= (and b!1298007 ((_ is Concat!5883) (regOne!7619 (regex!2239 (rule!3978 t1!34))))) b!1298762))

(assert (= (and b!1298007 ((_ is Star!3553) (regOne!7619 (regex!2239 (rule!3978 t1!34))))) b!1298763))

(assert (= (and b!1298007 ((_ is Union!3553) (regOne!7619 (regex!2239 (rule!3978 t1!34))))) b!1298764))

(declare-fun e!832671 () Bool)

(assert (=> b!1298007 (= tp!378767 e!832671)))

(declare-fun b!1298767 () Bool)

(declare-fun tp!378797 () Bool)

(assert (=> b!1298767 (= e!832671 tp!378797)))

(declare-fun b!1298766 () Bool)

(declare-fun tp!378796 () Bool)

(declare-fun tp!378795 () Bool)

(assert (=> b!1298766 (= e!832671 (and tp!378796 tp!378795))))

(declare-fun b!1298768 () Bool)

(declare-fun tp!378798 () Bool)

(declare-fun tp!378794 () Bool)

(assert (=> b!1298768 (= e!832671 (and tp!378798 tp!378794))))

(declare-fun b!1298765 () Bool)

(assert (=> b!1298765 (= e!832671 tp_is_empty!6587)))

(assert (= (and b!1298007 ((_ is ElementMatch!3553) (regTwo!7619 (regex!2239 (rule!3978 t1!34))))) b!1298765))

(assert (= (and b!1298007 ((_ is Concat!5883) (regTwo!7619 (regex!2239 (rule!3978 t1!34))))) b!1298766))

(assert (= (and b!1298007 ((_ is Star!3553) (regTwo!7619 (regex!2239 (rule!3978 t1!34))))) b!1298767))

(assert (= (and b!1298007 ((_ is Union!3553) (regTwo!7619 (regex!2239 (rule!3978 t1!34))))) b!1298768))

(declare-fun e!832674 () Bool)

(assert (=> b!1298006 (= tp!378770 e!832674)))

(declare-fun b!1298773 () Bool)

(declare-fun tp!378802 () Bool)

(assert (=> b!1298773 (= e!832674 tp!378802)))

(declare-fun b!1298772 () Bool)

(declare-fun tp!378801 () Bool)

(declare-fun tp!378800 () Bool)

(assert (=> b!1298772 (= e!832674 (and tp!378801 tp!378800))))

(declare-fun b!1298774 () Bool)

(declare-fun tp!378803 () Bool)

(declare-fun tp!378799 () Bool)

(assert (=> b!1298774 (= e!832674 (and tp!378803 tp!378799))))

(declare-fun b!1298771 () Bool)

(assert (=> b!1298771 (= e!832674 tp_is_empty!6587)))

(assert (= (and b!1298006 ((_ is ElementMatch!3553) (reg!3882 (regex!2239 (rule!3978 t1!34))))) b!1298771))

(assert (= (and b!1298006 ((_ is Concat!5883) (reg!3882 (regex!2239 (rule!3978 t1!34))))) b!1298772))

(assert (= (and b!1298006 ((_ is Star!3553) (reg!3882 (regex!2239 (rule!3978 t1!34))))) b!1298773))

(assert (= (and b!1298006 ((_ is Union!3553) (reg!3882 (regex!2239 (rule!3978 t1!34))))) b!1298774))

(declare-fun e!832675 () Bool)

(assert (=> b!1298011 (= tp!378776 e!832675)))

(declare-fun b!1298777 () Bool)

(declare-fun tp!378807 () Bool)

(assert (=> b!1298777 (= e!832675 tp!378807)))

(declare-fun b!1298776 () Bool)

(declare-fun tp!378806 () Bool)

(declare-fun tp!378805 () Bool)

(assert (=> b!1298776 (= e!832675 (and tp!378806 tp!378805))))

(declare-fun b!1298778 () Bool)

(declare-fun tp!378808 () Bool)

(declare-fun tp!378804 () Bool)

(assert (=> b!1298778 (= e!832675 (and tp!378808 tp!378804))))

(declare-fun b!1298775 () Bool)

(assert (=> b!1298775 (= e!832675 tp_is_empty!6587)))

(assert (= (and b!1298011 ((_ is ElementMatch!3553) (regOne!7619 (regex!2239 (rule!3978 t2!34))))) b!1298775))

(assert (= (and b!1298011 ((_ is Concat!5883) (regOne!7619 (regex!2239 (rule!3978 t2!34))))) b!1298776))

(assert (= (and b!1298011 ((_ is Star!3553) (regOne!7619 (regex!2239 (rule!3978 t2!34))))) b!1298777))

(assert (= (and b!1298011 ((_ is Union!3553) (regOne!7619 (regex!2239 (rule!3978 t2!34))))) b!1298778))

(declare-fun e!832676 () Bool)

(assert (=> b!1298011 (= tp!378772 e!832676)))

(declare-fun b!1298781 () Bool)

(declare-fun tp!378812 () Bool)

(assert (=> b!1298781 (= e!832676 tp!378812)))

(declare-fun b!1298780 () Bool)

(declare-fun tp!378811 () Bool)

(declare-fun tp!378810 () Bool)

(assert (=> b!1298780 (= e!832676 (and tp!378811 tp!378810))))

(declare-fun b!1298782 () Bool)

(declare-fun tp!378813 () Bool)

(declare-fun tp!378809 () Bool)

(assert (=> b!1298782 (= e!832676 (and tp!378813 tp!378809))))

(declare-fun b!1298779 () Bool)

(assert (=> b!1298779 (= e!832676 tp_is_empty!6587)))

(assert (= (and b!1298011 ((_ is ElementMatch!3553) (regTwo!7619 (regex!2239 (rule!3978 t2!34))))) b!1298779))

(assert (= (and b!1298011 ((_ is Concat!5883) (regTwo!7619 (regex!2239 (rule!3978 t2!34))))) b!1298780))

(assert (= (and b!1298011 ((_ is Star!3553) (regTwo!7619 (regex!2239 (rule!3978 t2!34))))) b!1298781))

(assert (= (and b!1298011 ((_ is Union!3553) (regTwo!7619 (regex!2239 (rule!3978 t2!34))))) b!1298782))

(declare-fun e!832677 () Bool)

(assert (=> b!1298014 (= tp!378780 e!832677)))

(declare-fun b!1298785 () Bool)

(declare-fun tp!378817 () Bool)

(assert (=> b!1298785 (= e!832677 tp!378817)))

(declare-fun b!1298784 () Bool)

(declare-fun tp!378816 () Bool)

(declare-fun tp!378815 () Bool)

(assert (=> b!1298784 (= e!832677 (and tp!378816 tp!378815))))

(declare-fun b!1298786 () Bool)

(declare-fun tp!378818 () Bool)

(declare-fun tp!378814 () Bool)

(assert (=> b!1298786 (= e!832677 (and tp!378818 tp!378814))))

(declare-fun b!1298783 () Bool)

(assert (=> b!1298783 (= e!832677 tp_is_empty!6587)))

(assert (= (and b!1298014 ((_ is ElementMatch!3553) (regOne!7618 (regex!2239 (h!18387 rules!2550))))) b!1298783))

(assert (= (and b!1298014 ((_ is Concat!5883) (regOne!7618 (regex!2239 (h!18387 rules!2550))))) b!1298784))

(assert (= (and b!1298014 ((_ is Star!3553) (regOne!7618 (regex!2239 (h!18387 rules!2550))))) b!1298785))

(assert (= (and b!1298014 ((_ is Union!3553) (regOne!7618 (regex!2239 (h!18387 rules!2550))))) b!1298786))

(declare-fun e!832678 () Bool)

(assert (=> b!1298014 (= tp!378779 e!832678)))

(declare-fun b!1298789 () Bool)

(declare-fun tp!378822 () Bool)

(assert (=> b!1298789 (= e!832678 tp!378822)))

(declare-fun b!1298788 () Bool)

(declare-fun tp!378821 () Bool)

(declare-fun tp!378820 () Bool)

(assert (=> b!1298788 (= e!832678 (and tp!378821 tp!378820))))

(declare-fun b!1298790 () Bool)

(declare-fun tp!378823 () Bool)

(declare-fun tp!378819 () Bool)

(assert (=> b!1298790 (= e!832678 (and tp!378823 tp!378819))))

(declare-fun b!1298787 () Bool)

(assert (=> b!1298787 (= e!832678 tp_is_empty!6587)))

(assert (= (and b!1298014 ((_ is ElementMatch!3553) (regTwo!7618 (regex!2239 (h!18387 rules!2550))))) b!1298787))

(assert (= (and b!1298014 ((_ is Concat!5883) (regTwo!7618 (regex!2239 (h!18387 rules!2550))))) b!1298788))

(assert (= (and b!1298014 ((_ is Star!3553) (regTwo!7618 (regex!2239 (h!18387 rules!2550))))) b!1298789))

(assert (= (and b!1298014 ((_ is Union!3553) (regTwo!7618 (regex!2239 (h!18387 rules!2550))))) b!1298790))

(declare-fun e!832679 () Bool)

(assert (=> b!1298010 (= tp!378775 e!832679)))

(declare-fun b!1298793 () Bool)

(declare-fun tp!378827 () Bool)

(assert (=> b!1298793 (= e!832679 tp!378827)))

(declare-fun b!1298792 () Bool)

(declare-fun tp!378826 () Bool)

(declare-fun tp!378825 () Bool)

(assert (=> b!1298792 (= e!832679 (and tp!378826 tp!378825))))

(declare-fun b!1298794 () Bool)

(declare-fun tp!378828 () Bool)

(declare-fun tp!378824 () Bool)

(assert (=> b!1298794 (= e!832679 (and tp!378828 tp!378824))))

(declare-fun b!1298791 () Bool)

(assert (=> b!1298791 (= e!832679 tp_is_empty!6587)))

(assert (= (and b!1298010 ((_ is ElementMatch!3553) (reg!3882 (regex!2239 (rule!3978 t2!34))))) b!1298791))

(assert (= (and b!1298010 ((_ is Concat!5883) (reg!3882 (regex!2239 (rule!3978 t2!34))))) b!1298792))

(assert (= (and b!1298010 ((_ is Star!3553) (reg!3882 (regex!2239 (rule!3978 t2!34))))) b!1298793))

(assert (= (and b!1298010 ((_ is Union!3553) (reg!3882 (regex!2239 (rule!3978 t2!34))))) b!1298794))

(declare-fun tp!378835 () Bool)

(declare-fun tp!378836 () Bool)

(declare-fun b!1298808 () Bool)

(declare-fun e!832687 () Bool)

(assert (=> b!1298808 (= e!832687 (and (inv!17417 (left!11170 (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (value!73444 t1!34))))) tp!378836 (inv!17417 (right!11500 (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (value!73444 t1!34))))) tp!378835))))

(declare-fun b!1298810 () Bool)

(declare-fun e!832688 () Bool)

(declare-fun tp!378837 () Bool)

(assert (=> b!1298810 (= e!832688 tp!378837)))

(declare-fun b!1298809 () Bool)

(declare-fun inv!17423 (IArray!8535) Bool)

(assert (=> b!1298809 (= e!832687 (and (inv!17423 (xs!6980 (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (value!73444 t1!34))))) e!832688))))

(assert (=> b!1297852 (= tp!378700 (and (inv!17417 (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (value!73444 t1!34)))) e!832687))))

(assert (= (and b!1297852 ((_ is Node!4265) (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (value!73444 t1!34))))) b!1298808))

(assert (= b!1298809 b!1298810))

(assert (= (and b!1297852 ((_ is Leaf!6581) (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t1!34))) (value!73444 t1!34))))) b!1298809))

(declare-fun m!1450527 () Bool)

(assert (=> b!1298808 m!1450527))

(declare-fun m!1450529 () Bool)

(assert (=> b!1298808 m!1450529))

(declare-fun m!1450531 () Bool)

(assert (=> b!1298809 m!1450531))

(assert (=> b!1297852 m!1449295))

(declare-fun e!832693 () Bool)

(assert (=> b!1298005 (= tp!378769 e!832693)))

(declare-fun b!1298816 () Bool)

(declare-fun tp!378845 () Bool)

(assert (=> b!1298816 (= e!832693 tp!378845)))

(declare-fun b!1298815 () Bool)

(declare-fun tp!378844 () Bool)

(declare-fun tp!378843 () Bool)

(assert (=> b!1298815 (= e!832693 (and tp!378844 tp!378843))))

(declare-fun b!1298817 () Bool)

(declare-fun tp!378846 () Bool)

(declare-fun tp!378842 () Bool)

(assert (=> b!1298817 (= e!832693 (and tp!378846 tp!378842))))

(declare-fun b!1298814 () Bool)

(assert (=> b!1298814 (= e!832693 tp_is_empty!6587)))

(assert (= (and b!1298005 ((_ is ElementMatch!3553) (regOne!7618 (regex!2239 (rule!3978 t1!34))))) b!1298814))

(assert (= (and b!1298005 ((_ is Concat!5883) (regOne!7618 (regex!2239 (rule!3978 t1!34))))) b!1298815))

(assert (= (and b!1298005 ((_ is Star!3553) (regOne!7618 (regex!2239 (rule!3978 t1!34))))) b!1298816))

(assert (= (and b!1298005 ((_ is Union!3553) (regOne!7618 (regex!2239 (rule!3978 t1!34))))) b!1298817))

(declare-fun e!832694 () Bool)

(assert (=> b!1298005 (= tp!378768 e!832694)))

(declare-fun b!1298820 () Bool)

(declare-fun tp!378850 () Bool)

(assert (=> b!1298820 (= e!832694 tp!378850)))

(declare-fun b!1298819 () Bool)

(declare-fun tp!378849 () Bool)

(declare-fun tp!378848 () Bool)

(assert (=> b!1298819 (= e!832694 (and tp!378849 tp!378848))))

(declare-fun b!1298821 () Bool)

(declare-fun tp!378851 () Bool)

(declare-fun tp!378847 () Bool)

(assert (=> b!1298821 (= e!832694 (and tp!378851 tp!378847))))

(declare-fun b!1298818 () Bool)

(assert (=> b!1298818 (= e!832694 tp_is_empty!6587)))

(assert (= (and b!1298005 ((_ is ElementMatch!3553) (regTwo!7618 (regex!2239 (rule!3978 t1!34))))) b!1298818))

(assert (= (and b!1298005 ((_ is Concat!5883) (regTwo!7618 (regex!2239 (rule!3978 t1!34))))) b!1298819))

(assert (= (and b!1298005 ((_ is Star!3553) (regTwo!7618 (regex!2239 (rule!3978 t1!34))))) b!1298820))

(assert (= (and b!1298005 ((_ is Union!3553) (regTwo!7618 (regex!2239 (rule!3978 t1!34))))) b!1298821))

(declare-fun e!832695 () Bool)

(assert (=> b!1298009 (= tp!378774 e!832695)))

(declare-fun b!1298824 () Bool)

(declare-fun tp!378855 () Bool)

(assert (=> b!1298824 (= e!832695 tp!378855)))

(declare-fun b!1298823 () Bool)

(declare-fun tp!378854 () Bool)

(declare-fun tp!378853 () Bool)

(assert (=> b!1298823 (= e!832695 (and tp!378854 tp!378853))))

(declare-fun b!1298825 () Bool)

(declare-fun tp!378856 () Bool)

(declare-fun tp!378852 () Bool)

(assert (=> b!1298825 (= e!832695 (and tp!378856 tp!378852))))

(declare-fun b!1298822 () Bool)

(assert (=> b!1298822 (= e!832695 tp_is_empty!6587)))

(assert (= (and b!1298009 ((_ is ElementMatch!3553) (regOne!7618 (regex!2239 (rule!3978 t2!34))))) b!1298822))

(assert (= (and b!1298009 ((_ is Concat!5883) (regOne!7618 (regex!2239 (rule!3978 t2!34))))) b!1298823))

(assert (= (and b!1298009 ((_ is Star!3553) (regOne!7618 (regex!2239 (rule!3978 t2!34))))) b!1298824))

(assert (= (and b!1298009 ((_ is Union!3553) (regOne!7618 (regex!2239 (rule!3978 t2!34))))) b!1298825))

(declare-fun e!832696 () Bool)

(assert (=> b!1298009 (= tp!378773 e!832696)))

(declare-fun b!1298830 () Bool)

(declare-fun tp!378860 () Bool)

(assert (=> b!1298830 (= e!832696 tp!378860)))

(declare-fun b!1298829 () Bool)

(declare-fun tp!378859 () Bool)

(declare-fun tp!378858 () Bool)

(assert (=> b!1298829 (= e!832696 (and tp!378859 tp!378858))))

(declare-fun b!1298832 () Bool)

(declare-fun tp!378861 () Bool)

(declare-fun tp!378857 () Bool)

(assert (=> b!1298832 (= e!832696 (and tp!378861 tp!378857))))

(declare-fun b!1298828 () Bool)

(assert (=> b!1298828 (= e!832696 tp_is_empty!6587)))

(assert (= (and b!1298009 ((_ is ElementMatch!3553) (regTwo!7618 (regex!2239 (rule!3978 t2!34))))) b!1298828))

(assert (= (and b!1298009 ((_ is Concat!5883) (regTwo!7618 (regex!2239 (rule!3978 t2!34))))) b!1298829))

(assert (= (and b!1298009 ((_ is Star!3553) (regTwo!7618 (regex!2239 (rule!3978 t2!34))))) b!1298830))

(assert (= (and b!1298009 ((_ is Union!3553) (regTwo!7618 (regex!2239 (rule!3978 t2!34))))) b!1298832))

(declare-fun b!1298834 () Bool)

(declare-fun e!832699 () Bool)

(declare-fun tp!378866 () Bool)

(assert (=> b!1298834 (= e!832699 (and tp_is_empty!6587 tp!378866))))

(assert (=> b!1297993 (= tp!378756 e!832699)))

(assert (= (and b!1297993 ((_ is Cons!12984) (t!117473 (originalCharacters!3101 t1!34)))) b!1298834))

(declare-fun e!832700 () Bool)

(declare-fun b!1298839 () Bool)

(declare-fun tp!378867 () Bool)

(declare-fun tp!378868 () Bool)

(assert (=> b!1298839 (= e!832700 (and (inv!17417 (left!11170 (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (value!73444 t2!34))))) tp!378868 (inv!17417 (right!11500 (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (value!73444 t2!34))))) tp!378867))))

(declare-fun b!1298841 () Bool)

(declare-fun e!832701 () Bool)

(declare-fun tp!378869 () Bool)

(assert (=> b!1298841 (= e!832701 tp!378869)))

(declare-fun b!1298840 () Bool)

(assert (=> b!1298840 (= e!832700 (and (inv!17423 (xs!6980 (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (value!73444 t2!34))))) e!832701))))

(assert (=> b!1297747 (= tp!378699 (and (inv!17417 (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (value!73444 t2!34)))) e!832700))))

(assert (= (and b!1297747 ((_ is Node!4265) (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (value!73444 t2!34))))) b!1298839))

(assert (= b!1298840 b!1298841))

(assert (= (and b!1297747 ((_ is Leaf!6581) (c!213611 (dynLambda!5678 (toChars!3305 (transformation!2239 (rule!3978 t2!34))) (value!73444 t2!34))))) b!1298840))

(declare-fun m!1450537 () Bool)

(assert (=> b!1298839 m!1450537))

(declare-fun m!1450539 () Bool)

(assert (=> b!1298839 m!1450539))

(declare-fun m!1450541 () Bool)

(assert (=> b!1298840 m!1450541))

(assert (=> b!1297747 m!1449165))

(declare-fun e!832704 () Bool)

(assert (=> b!1297987 (= tp!378751 e!832704)))

(declare-fun b!1298844 () Bool)

(declare-fun tp!378875 () Bool)

(assert (=> b!1298844 (= e!832704 tp!378875)))

(declare-fun b!1298843 () Bool)

(declare-fun tp!378874 () Bool)

(declare-fun tp!378873 () Bool)

(assert (=> b!1298843 (= e!832704 (and tp!378874 tp!378873))))

(declare-fun b!1298845 () Bool)

(declare-fun tp!378876 () Bool)

(declare-fun tp!378872 () Bool)

(assert (=> b!1298845 (= e!832704 (and tp!378876 tp!378872))))

(declare-fun b!1298842 () Bool)

(assert (=> b!1298842 (= e!832704 tp_is_empty!6587)))

(assert (= (and b!1297987 ((_ is ElementMatch!3553) (regex!2239 (h!18387 (t!117475 rules!2550))))) b!1298842))

(assert (= (and b!1297987 ((_ is Concat!5883) (regex!2239 (h!18387 (t!117475 rules!2550))))) b!1298843))

(assert (= (and b!1297987 ((_ is Star!3553) (regex!2239 (h!18387 (t!117475 rules!2550))))) b!1298844))

(assert (= (and b!1297987 ((_ is Union!3553) (regex!2239 (h!18387 (t!117475 rules!2550))))) b!1298845))

(declare-fun b!1298848 () Bool)

(declare-fun b_free!30803 () Bool)

(declare-fun b_next!31507 () Bool)

(assert (=> b!1298848 (= b_free!30803 (not b_next!31507))))

(declare-fun tp!378880 () Bool)

(declare-fun b_and!86559 () Bool)

(assert (=> b!1298848 (= tp!378880 b_and!86559)))

(declare-fun b_free!30805 () Bool)

(declare-fun b_next!31509 () Bool)

(assert (=> b!1298848 (= b_free!30805 (not b_next!31509))))

(declare-fun tb!69541 () Bool)

(declare-fun t!117531 () Bool)

(assert (=> (and b!1298848 (= (toChars!3305 (transformation!2239 (h!18387 (t!117475 (t!117475 rules!2550))))) (toChars!3305 (transformation!2239 (rule!3978 t2!34)))) t!117531) tb!69541))

(declare-fun result!84330 () Bool)

(assert (= result!84330 result!84288))

(assert (=> d!366244 t!117531))

(declare-fun t!117533 () Bool)

(declare-fun tb!69543 () Bool)

(assert (=> (and b!1298848 (= (toChars!3305 (transformation!2239 (h!18387 (t!117475 (t!117475 rules!2550))))) (toChars!3305 (transformation!2239 (rule!3978 t1!34)))) t!117533) tb!69543))

(declare-fun result!84332 () Bool)

(assert (= result!84332 result!84296))

(assert (=> b!1297846 t!117533))

(assert (=> b!1297855 t!117531))

(assert (=> d!366338 t!117533))

(declare-fun b_and!86561 () Bool)

(declare-fun tp!378877 () Bool)

(assert (=> b!1298848 (= tp!378877 (and (=> t!117531 result!84330) (=> t!117533 result!84332) b_and!86561))))

(declare-fun e!832706 () Bool)

(assert (=> b!1298848 (= e!832706 (and tp!378880 tp!378877))))

(declare-fun b!1298847 () Bool)

(declare-fun e!832707 () Bool)

(declare-fun tp!378878 () Bool)

(assert (=> b!1298847 (= e!832707 (and tp!378878 (inv!17410 (tag!2501 (h!18387 (t!117475 (t!117475 rules!2550))))) (inv!17413 (transformation!2239 (h!18387 (t!117475 (t!117475 rules!2550))))) e!832706))))

(declare-fun b!1298846 () Bool)

(declare-fun e!832705 () Bool)

(declare-fun tp!378879 () Bool)

(assert (=> b!1298846 (= e!832705 (and e!832707 tp!378879))))

(assert (=> b!1297986 (= tp!378752 e!832705)))

(assert (= b!1298847 b!1298848))

(assert (= b!1298846 b!1298847))

(assert (= (and b!1297986 ((_ is Cons!12986) (t!117475 (t!117475 rules!2550)))) b!1298846))

(declare-fun m!1450543 () Bool)

(assert (=> b!1298847 m!1450543))

(declare-fun m!1450545 () Bool)

(assert (=> b!1298847 m!1450545))

(declare-fun b!1298852 () Bool)

(declare-fun e!832711 () Bool)

(declare-fun tp!378884 () Bool)

(assert (=> b!1298852 (= e!832711 (and tp_is_empty!6587 tp!378884))))

(assert (=> b!1298012 (= tp!378777 e!832711)))

(assert (= (and b!1298012 ((_ is Cons!12984) (t!117473 (originalCharacters!3101 t2!34)))) b!1298852))

(declare-fun e!832713 () Bool)

(assert (=> b!1298016 (= tp!378782 e!832713)))

(declare-fun b!1298856 () Bool)

(declare-fun tp!378889 () Bool)

(assert (=> b!1298856 (= e!832713 tp!378889)))

(declare-fun b!1298855 () Bool)

(declare-fun tp!378887 () Bool)

(declare-fun tp!378886 () Bool)

(assert (=> b!1298855 (= e!832713 (and tp!378887 tp!378886))))

(declare-fun b!1298857 () Bool)

(declare-fun tp!378890 () Bool)

(declare-fun tp!378885 () Bool)

(assert (=> b!1298857 (= e!832713 (and tp!378890 tp!378885))))

(declare-fun b!1298854 () Bool)

(assert (=> b!1298854 (= e!832713 tp_is_empty!6587)))

(assert (= (and b!1298016 ((_ is ElementMatch!3553) (regOne!7619 (regex!2239 (h!18387 rules!2550))))) b!1298854))

(assert (= (and b!1298016 ((_ is Concat!5883) (regOne!7619 (regex!2239 (h!18387 rules!2550))))) b!1298855))

(assert (= (and b!1298016 ((_ is Star!3553) (regOne!7619 (regex!2239 (h!18387 rules!2550))))) b!1298856))

(assert (= (and b!1298016 ((_ is Union!3553) (regOne!7619 (regex!2239 (h!18387 rules!2550))))) b!1298857))

(declare-fun e!832715 () Bool)

(assert (=> b!1298016 (= tp!378778 e!832715)))

(declare-fun b!1298864 () Bool)

(declare-fun tp!378899 () Bool)

(assert (=> b!1298864 (= e!832715 tp!378899)))

(declare-fun b!1298863 () Bool)

(declare-fun tp!378898 () Bool)

(declare-fun tp!378897 () Bool)

(assert (=> b!1298863 (= e!832715 (and tp!378898 tp!378897))))

(declare-fun b!1298865 () Bool)

(declare-fun tp!378900 () Bool)

(declare-fun tp!378896 () Bool)

(assert (=> b!1298865 (= e!832715 (and tp!378900 tp!378896))))

(declare-fun b!1298862 () Bool)

(assert (=> b!1298862 (= e!832715 tp_is_empty!6587)))

(assert (= (and b!1298016 ((_ is ElementMatch!3553) (regTwo!7619 (regex!2239 (h!18387 rules!2550))))) b!1298862))

(assert (= (and b!1298016 ((_ is Concat!5883) (regTwo!7619 (regex!2239 (h!18387 rules!2550))))) b!1298863))

(assert (= (and b!1298016 ((_ is Star!3553) (regTwo!7619 (regex!2239 (h!18387 rules!2550))))) b!1298864))

(assert (= (and b!1298016 ((_ is Union!3553) (regTwo!7619 (regex!2239 (h!18387 rules!2550))))) b!1298865))

(declare-fun e!832717 () Bool)

(assert (=> b!1298015 (= tp!378781 e!832717)))

(declare-fun b!1298872 () Bool)

(declare-fun tp!378909 () Bool)

(assert (=> b!1298872 (= e!832717 tp!378909)))

(declare-fun b!1298871 () Bool)

(declare-fun tp!378908 () Bool)

(declare-fun tp!378907 () Bool)

(assert (=> b!1298871 (= e!832717 (and tp!378908 tp!378907))))

(declare-fun b!1298873 () Bool)

(declare-fun tp!378910 () Bool)

(declare-fun tp!378906 () Bool)

(assert (=> b!1298873 (= e!832717 (and tp!378910 tp!378906))))

(declare-fun b!1298870 () Bool)

(assert (=> b!1298870 (= e!832717 tp_is_empty!6587)))

(assert (= (and b!1298015 ((_ is ElementMatch!3553) (reg!3882 (regex!2239 (h!18387 rules!2550))))) b!1298870))

(assert (= (and b!1298015 ((_ is Concat!5883) (reg!3882 (regex!2239 (h!18387 rules!2550))))) b!1298871))

(assert (= (and b!1298015 ((_ is Star!3553) (reg!3882 (regex!2239 (h!18387 rules!2550))))) b!1298872))

(assert (= (and b!1298015 ((_ is Union!3553) (reg!3882 (regex!2239 (h!18387 rules!2550))))) b!1298873))

(declare-fun b_lambda!37195 () Bool)

(assert (= b_lambda!37183 (or b!1297692 b_lambda!37195)))

(declare-fun bs!329139 () Bool)

(declare-fun d!366780 () Bool)

(assert (= bs!329139 (and d!366780 b!1297692)))

(declare-fun res!581640 () Bool)

(declare-fun e!832720 () Bool)

(assert (=> bs!329139 (=> (not res!581640) (not e!832720))))

(assert (=> bs!329139 (= res!581640 (matchR!1555 lt!426849 res!581379))))

(assert (=> bs!329139 (= (dynLambda!5680 lambda!51023 res!581379) e!832720)))

(declare-fun b!1298882 () Bool)

(assert (=> b!1298882 (= e!832720 (isPrefix!1058 lt!426845 res!581379))))

(assert (= (and bs!329139 res!581640) b!1298882))

(declare-fun m!1450553 () Bool)

(assert (=> bs!329139 m!1450553))

(declare-fun m!1450555 () Bool)

(assert (=> b!1298882 m!1450555))

(assert (=> d!366442 d!366780))

(declare-fun b_lambda!37197 () Bool)

(assert (= b_lambda!37191 (or d!366342 b_lambda!37197)))

(declare-fun bs!329140 () Bool)

(declare-fun d!366782 () Bool)

(assert (= bs!329140 (and d!366782 d!366342)))

(assert (=> bs!329140 (= (dynLambda!5691 lambda!51038 (h!18387 rules!2550)) (regex!2239 (h!18387 rules!2550)))))

(assert (=> b!1298432 d!366782))

(declare-fun b_lambda!37199 () Bool)

(assert (= b_lambda!37189 (or d!366352 b_lambda!37199)))

(declare-fun bs!329141 () Bool)

(declare-fun d!366784 () Bool)

(assert (= bs!329141 (and d!366784 d!366352)))

(assert (=> bs!329141 (= (dynLambda!5690 lambda!51041 (h!18387 rules!2550)) (ruleValid!549 thiss!19762 (h!18387 rules!2550)))))

(assert (=> bs!329141 m!1449489))

(assert (=> b!1298350 d!366784))

(check-sat (not b!1298829) (not b!1298317) (not b!1298528) (not b!1298817) (not d!366762) (not b!1298644) (not bm!89017) (not b!1298115) (not b!1298863) (not b!1298792) (not b!1298830) b_and!86561 (not b!1298789) (not d!366604) (not b_next!31485) (not b!1298821) (not b!1298526) (not b!1298531) (not b!1298421) (not b!1298790) (not d!366430) (not d!366644) (not b!1298416) (not b!1298764) (not d!366620) (not b!1298111) (not d!366726) (not b!1298420) (not b!1298819) (not b!1298825) (not b_lambda!37175) (not b!1298423) (not b_next!31483) (not b!1298793) (not d!366606) (not b!1298415) (not b!1298766) (not b!1298066) (not d!366614) (not b!1298140) (not b!1298820) (not bm!88999) (not b_lambda!37199) b_and!86553 (not b!1298586) (not b!1298776) (not b!1298832) (not b!1298065) (not b!1298810) (not b!1298669) (not d!366456) (not b!1298351) (not d!366612) (not d!366618) (not b!1298309) (not d!366728) (not b!1298864) (not b!1298714) (not b!1298763) (not b!1298840) (not d!366390) (not b!1298718) (not b!1298075) (not d!366554) (not d!366580) (not b!1298147) (not b!1298777) (not b!1298503) (not b!1298151) (not b!1298200) (not b!1298768) (not b!1298173) (not b_next!31501) (not d!366422) (not b!1298202) (not b!1298815) (not d!366590) (not b_lambda!37173) (not b!1298690) (not b!1298196) (not bm!88987) (not b!1298144) (not b!1298707) (not d!366764) (not bs!329139) (not b!1298782) (not b!1298110) (not b!1298371) (not d!366410) (not b!1298250) (not d!366514) (not b!1298872) (not b!1298419) (not b!1298150) (not b!1298834) (not b_lambda!37177) (not b!1298505) b_and!86559 (not b!1298778) (not d!366490) (not b!1298839) (not b!1298608) (not b!1298077) (not b!1298434) (not b!1298052) (not b!1298205) tp_is_empty!6587 (not b!1298704) (not b!1298640) (not d!366692) (not d!366416) (not bm!89020) (not d!366498) (not b!1298816) (not b!1298504) (not b!1298786) b_and!86549 (not b!1298784) (not d!366408) (not d!366404) (not b!1298249) (not b!1298852) (not b_next!31489) (not b!1298610) (not bs!329141) (not b!1298841) (not b!1298670) (not b!1298616) (not bm!89005) (not b!1298198) (not d!366640) (not b!1298843) (not b!1298666) (not d!366734) (not b!1298773) (not b_lambda!37195) (not b!1298530) (not b!1298865) (not d!366480) (not d!366484) (not b!1298706) (not d!366636) (not b!1298216) (not d!366546) (not b!1298206) (not b!1298131) (not b!1298313) (not b!1298113) (not b!1298612) (not d!366452) (not b!1298154) (not b_next!31507) (not b_next!31493) (not b!1298506) (not b!1298746) (not b_next!31499) (not b!1298508) (not b!1298882) (not b!1298139) (not b!1298780) (not d!366536) (not d!366652) (not d!366560) (not b!1298871) (not d!366512) (not b!1298614) (not b!1298064) (not b!1298437) (not b!1298667) (not d!366594) (not b!1298218) (not d!366588) (not bm!89040) (not d!366384) (not b!1298737) (not b!1298844) (not b!1298217) (not d!366708) (not d!366642) (not b!1298846) (not b!1298716) (not b_lambda!37179) (not b_next!31509) (not d!366766) (not d!366654) (not b_lambda!37181) (not d!366632) (not d!366556) b_and!86545 (not b!1298149) (not b_lambda!37197) (not d!366722) (not b!1298857) (not d!366448) (not b!1298199) (not d!366638) (not b!1298808) (not d!366382) (not d!366458) (not bm!88997) (not b!1298529) (not b!1298315) (not b!1298824) (not b!1298143) (not b!1298767) b_and!86487 (not b!1297747) (not d!366758) (not b!1298691) (not b!1298310) (not d!366486) (not b!1298845) (not d!366754) (not b!1298855) (not bm!89035) (not b!1298847) (not b!1298762) (not d!366450) (not b!1298823) (not b!1298809) (not b!1298744) b_and!86491 (not b!1298076) (not b!1298432) (not b!1298665) (not d!366768) (not b!1298158) (not b!1298311) (not b!1298042) (not b!1298781) (not b!1298873) (not d!366622) b_and!86551 (not b!1298774) (not b!1298748) (not d!366568) (not d!366516) (not b!1298533) b_and!86547 (not b_next!31491) (not b_next!31487) (not b!1298713) b_and!86495 (not b!1298785) (not b!1298300) (not b!1298794) (not b!1298739) (not b!1298424) (not d!366538) (not d!366426) (not d!366670) (not b!1298532) (not b!1298156) (not b!1298772) (not b!1298856) (not d!366634) (not d!366702) (not d!366616) (not d!366482) (not b!1298515) (not d!366698) (not b!1297852) (not d!366488) (not b!1298436) (not b!1298735) (not b!1298788) (not b!1298215))
(check-sat (not b_next!31483) b_and!86553 (not b_next!31501) b_and!86559 b_and!86487 b_and!86491 b_and!86551 b_and!86561 (not b_next!31485) b_and!86549 (not b_next!31489) (not b_next!31507) (not b_next!31493) (not b_next!31499) (not b_next!31509) b_and!86545 (not b_next!31487) b_and!86495 b_and!86547 (not b_next!31491))
